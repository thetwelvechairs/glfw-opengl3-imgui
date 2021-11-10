#version 410

in vec4 varyingColor;

in vec3 tc;
out vec4 color;
uniform mat4 mv_matrix;
uniform mat4 proj_matrix;

vec3 checkerboard(vec3 tc) {
    float tileScale = 64.0;
    float tile = mod(floor(tc.x * tileScale) + floor(tc.y * tileScale), 2.0);
    return tile * vec3(1,1,1);
}
void main(void) {
    color = vec4(checkerboard(tc), 1.0);
}