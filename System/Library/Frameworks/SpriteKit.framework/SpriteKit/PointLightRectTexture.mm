@interface PointLightRectTexture
@end

@implementation PointLightRectTexture

void __PointLightRectTexture_fsh_block_invoke()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"uniform lowp int u_num_lights uniform lowp vec4 u_ambient_color; uniform highp vec3 u_light_position[8]; uniform lowp float u_light_decay[8]; uniform lowp vec3 u_light_color[8]; uniform lowp float u_specular; uniform lowp float u_diffuse; uniform lowp float u_ambient; uniform lowp float u_rotation_sin; uniform lowp float u_rotation_cos; uniform lowp %@ u_texture; uniform lowp %@ u_texture2; uniform lowp vec2 u_aspect; varying highp vec2 v_tex_coord; varying highp vec2 v_tex_coord_normals; varying lowp vec3 v_position; varying lowp vec4 v_color_mix; void main() { lowp vec4 rgba = v_color_mix * %@ (u_texture, v_tex_coord); if (rgba.a < 0.05) { gl_FragColor = rgba; } else { lowp vec3 rgb = vec3(rgba); lowp vec3 fragColor = u_ambient * u_ambient_color.rgb * rgb; lowp vec3 norm = normalize(%@ (u_texture2, v_tex_coord_normals).xyz * 1.99 - 1.0); lowp vec3 n = vec3(norm.x * u_rotation_cos - norm.y * u_rotation_sin, norm.x * u_rotation_sin + norm.y * u_rotation_cos, norm.z); int lightCount = u_num_lights; for (lowp int i = 0; i < lightCount; i++) { lowp vec3 light_vec = u_light_position[i] - v_position; light_vec = vec3(light_vec.xy * u_aspect, light_vec.z); highp float light_vec_length = length(light_vec); lowp float dist = u_light_decay[i] * light_vec_length; lowp float decay = min(1.0, 1.0 / (dist * dist)); lowp vec3 lightColor = u_light_color[i]; lowp vec3 l = light_vec / light_vec_length; lowp float n_dot_l = dot(n, l); if (n_dot_l > 0.0) { fragColor += rgb * n_dot_l * decay * u_diffuse * lightColor; highp float specular = max(0.0, 1.99 * n_dot_l * n.z - l.z); specular = pow(specular, 16.0); fragColor += specular * decay * u_specular; } } gl_FragColor = vec4(fragColor, rgba.a); } }", @"sampler2DRect", @"sampler2D", @"texture2DRect", @"texture2D"];;
  v1 = PointLightRectTexture_fsh::shader;
  PointLightRectTexture_fsh::shader = v0;
}

@end