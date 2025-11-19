uint64_t __vfx_script_Glitter_graph_39()
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[1];
  v2 = arguments_buffer[2];
  v3 = arguments_buffer[3];
  v4 = arguments_buffer[4];
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_clock_delta_time();
  vfx_script_set_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_clock_time();
  *&v5 = v5;
  v6 = *&v5 * 0.1;
  sinf(*&v5 * 0.1);
  cosf(v6 + 0.3453);
  __asm
  {
    FMOV            V0.2S, #1.0
    FMOV            V3.2S, #-1.0
  }

  vfx_script_set_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_set_world_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_clock_delta_time();
  vfx_script_set_ecs_value();
  [vfx_script_get_world_renderer() qword_1000710E8];
  v15 = v13;
  [vfx_script_get_world_renderer() qword_1000710A8];
  [vfx_script_get_world_renderer() qword_1000710B0];
  return vfx_script_set_ecs_value();
}

uint64_t __vfx_script_Glitter_graph_42(uint64_t a1)
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v3 = arguments_buffer[1];
  v4 = arguments_buffer[2];
  v5 = arguments_buffer[3];
  LOBYTE(v9) = 0;
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  LOBYTE(v9) = 0;
  vfx_script_get_ecs_value();
  if (LOBYTE(v9) == 1)
  {
    v11 = 0.0;
    vfx_script_graph_log();
    vfx_script_set_ecs_value();
    vfx_script_string_create();
    [v4 qword_1000710D8];
    vfx_script_string_create();
    [v3 qword_1000710D8];
    v10 = 0.0;
    sub_100003E18(a1, v3, &v10);
    vfx_script_set_ecs_value();
    vfx_script_string_destroy();
    vfx_script_string_destroy();
  }

  LOBYTE(v9) = 0;
  vfx_script_get_ecs_value();
  if (LOBYTE(v9) == 1)
  {
    v11 = 0.0;
    vfx_script_graph_log();
    vfx_script_set_ecs_value();
    vfx_script_string_create();
    [v4 qword_1000710D8];
    vfx_script_string_create();
    [v3 qword_1000710D8];
    v10 = 0.0;
    sub_100003E18(a1, v3, &v10);
    vfx_script_set_ecs_value();
    vfx_script_string_destroy();
    vfx_script_string_destroy();
  }

  v11 = 0.0;
  vfx_script_get_ecs_value();
  vfx_script_clock_delta_time();
  v10 = fmaxf(v11 - v6, 0.0);
  vfx_script_set_ecs_value();
  v9 = 0.0;
  vfx_script_get_ecs_value();
  v7 = v9;
  result = vfx_script_get_ecs_value();
  if (v7 <= 0.0)
  {
    return vfx_script_get_ecs_value();
  }

  return result;
}

float __vfx_script_Glitter_graph_45()
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[1];
  v2 = arguments_buffer[2];
  v3 = arguments_buffer[3];
  v4 = arguments_buffer[4];
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  *v4 = 0.0 * 0.7;
  vfx_script_get_ecs_value();
  result = 0.0;
  *v2 = 0;
  return result;
}

float __vfx_script_Glitter_graph_46()
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[1];
  v1 = arguments_buffer[2];
  v3 = arguments_buffer[3];
  v4 = arguments_buffer[4];
  v5 = arguments_buffer[5];
  v6 = arguments_buffer[6];
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  x = COERCE_UNSIGNED_INT(((0.0 * 3.1416) / 180.0) * 0.5);
  v18 = _simd_cos_f4(x);
  v7 = _simd_sin_f4(x);
  v8 = vextq_s8(v18, v18, 4uLL);
  v9 = vmulq_f32(vzip1q_s32(vrev64q_s32(v18), v18), vextq_s8(vzip1q_s32(v8, v7), v8, 8uLL));
  v10 = vzip2q_s32(vzip1q_s32(v18, v7), v7);
  v10.f32[3] = -v7.f32[0];
  v11 = vextq_s8(v7, v7, 8uLL);
  v12 = vtrn1q_s32(v7, vextq_s8(v18, v18, 8uLL));
  v7.i32[3] = v7.i32[1];
  v13 = vtrn1q_s32(v11, v18);
  v13.f32[1] = -v18.f32[0];
  *v6 = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v7, v10), v13)), v12, v9);
  vfx_script_get_ecs_value();
  v14 = *v5;
  *(&v14 + 1) = (0.0 * 2.5) + -1.2;
  *(v5 + 2) = 0;
  *v5 = v14;
  vfx_script_texture_sample1d();
  v18.i32[0] = v15;
  vfx_script_get_ecs_value();
  result = 0.0 * v18.f32[0];
  *v4 = 0.0 * v18.f32[0];
  return result;
}

int8x8_t __vfx_script_Glitter_graph_47()
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[1];
  v2 = arguments_buffer[2];
  v3 = arguments_buffer[3];
  v4 = arguments_buffer[4];
  v5 = arguments_buffer[5];
  v6 = arguments_buffer[6];
  v7 = arguments_buffer[7];
  v21 = 0;
  vfx_script_get_ecs_value();
  v20 = 0;
  vfx_script_get_ecs_value();
  v19 = 0;
  vfx_script_get_ecs_value();
  v8 = vdup_n_s32(0);
  *v7 = v8;
  *v6 = v8;
  v18 = 0uLL;
  vfx_script_get_ecs_value();
  *v5 = 0uLL;
  __asm { FMOV            V0.4S, #2.5 }

  DWORD1(_Q0) = *(v4 + 4);
  *v4 = _Q0;
  *(v4 + 8) = 1075838976;
  *v3 = 1075838976;
  v17 = 0;
  vfx_script_get_ecs_value();
  v16[1] = 0.0;
  vfx_script_get_ecs_value();
  v16[0] = 0.0;
  vfx_script_get_ecs_value();
  v14 = vld1_dup_f32(v16);
  result = vbsl_s8(vdup_n_s32(0), vmul_n_f32(0x3F99999A3F4CCCCDLL, 0.0), v14);
  *v2 = result;
  return result;
}

uint64_t __vfx_script_Glitter_graph_50()
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  v0 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_clock_delta_time();
  vfx_script_get_ecs_value();
  vfx_script_set_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  return vfx_script_set_ecs_value();
}

float __vfx_script_Glitter_graph_51()
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[1];
  v1 = arguments_buffer[2];
  v47 = arguments_buffer[4];
  v48 = arguments_buffer[3];
  v46 = arguments_buffer[5];
  v44 = arguments_buffer[6];
  v3 = arguments_buffer[8];
  x = arguments_buffer[7];
  v5 = arguments_buffer[9];
  v4 = arguments_buffer[10];
  v6 = arguments_buffer[11];
  v7 = arguments_buffer[12];
  v55 = 0;
  vfx_script_get_ecs_value();
  v54 = 0;
  vfx_script_get_ecs_value();
  v53 = 0;
  vfx_script_get_ecs_value();
  *v7 = 0;
  v52 = 0;
  vfx_script_get_ecs_value();
  *v6 = 0;
  v51 = 0;
  vfx_script_get_ecs_value();
  v50 = 0u;
  vfx_script_get_ecs_value();
  v49 = 0u;
  vfx_script_get_ecs_value();
  *v4 = 0u;
  vfx_script_get_ecs_value();
  *v5 = 0;
  vfx_script_get_ecs_value();
  *v3 = 0;
  vfx_script_get_ecs_value();
  *x = 0;
  vfx_script_get_ecs_value();
  LOBYTE(v8) = 0;
  *v44 = v8;
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  *v9.f32 = vmul_n_f32(0, 0.0);
  v9.i32[2] = 0;
  v10.i64[0] = 0x3F0000003F000000;
  v10.i64[1] = 0x3F0000003F000000;
  v11 = vmulq_f32(v9, v10);
  v11.i32[3] = 0;
  xa = v11;
  v45 = _simd_cos_f4(v11);
  _Q0 = _simd_sin_f4(xa);
  _Q7 = v45;
  v14 = vmuls_lane_f32(v45.f32[1], v45, 2);
  v15 = vmuls_lane_f32(_Q0.f32[1], _Q0, 2);
  v16 = (_Q0.f32[0] * v14) - (v45.f32[0] * v15);
  _S4 = vmuls_lane_f32(v45.f32[0], *_Q0.f32, 1);
  __asm { FMLA            S5, S4, V7.S[2] }

  _S4 = vmuls_lane_f32(_Q7.f32[0], *_Q7.f32, 1);
  __asm { FMLA            S6, S4, V0.S[2] }

  _Q0.f32[0] = v15 * _Q0.f32[0];
  v25.i64[0] = __PAIR64__(LODWORD(_S5), LODWORD(v16));
  _Q0.f32[0] = _Q0.f32[0] + (v45.f32[0] * v14);
  v25.i64[1] = __PAIR64__(_Q0.u32[0], LODWORD(_S6));
  v26 = vmulq_f32(v25, xmmword_10004F4F0);
  v27 = vnegq_f32(v26);
  v28 = vtrn2q_s32(v26, vtrn1q_s32(v26, v27));
  v29 = vmlaq_f32(vmulq_f32(vextq_s8(v26, v27, 8uLL), 0), 0, vextq_s8(v28, v28, 8uLL));
  v30 = vrev64q_s32(v26);
  v30.i32[0] = v27.i32[1];
  v30.i32[3] = v27.i32[2];
  v31 = vaddq_f32(v30, v29);
  v32 = vnegq_f32(v31);
  v33 = vtrn2q_s32(v31, vtrn1q_s32(v31, v32));
  v34 = vrev64q_s32(v31);
  v34.i32[0] = v32.i32[1];
  v34.i32[3] = v32.i32[2];
  v35 = vaddq_f32(vmlaq_n_f32(vmulq_n_f32(v31, _Q0.f32[0]), v34, _S6), vmlaq_n_f32(vmulq_n_f32(vextq_s8(v31, v32, 8uLL), _S5), vextq_s8(v33, v33, 8uLL), v16));
  v36 = vmulq_f32(v35, v35);
  v36.f32[0] = v36.f32[2] + vaddv_f32(*v36.f32);
  v37 = vdupq_lane_s32(*v36.f32, 0);
  v37.i32[3] = 0;
  v38 = vrsqrteq_f32(v37);
  v39 = vmulq_f32(v38, vrsqrtsq_f32(v37, vmulq_f32(v38, v38)));
  v40 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v36.f32[0] != 0.0)), 0x1FuLL));
  v40.i32[3] = 0;
  *v46 = vbslq_s8(vcltzq_s32(v40), vmulq_f32(vmulq_f32(v39, vrsqrtsq_f32(v37, vmulq_f32(v39, v39))), v35), v35);
  vfx_script_get_ecs_value();
  *v47 = 0;
  vfx_script_get_ecs_value();
  result = 0.0;
  *v48 = 0;
  return result;
}

float32x2_t __vfx_script_Glitter_graph_52()
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[1];
  v2 = arguments_buffer[2];
  v3 = arguments_buffer[3];
  v4 = arguments_buffer[4];
  v5 = arguments_buffer[5];
  v10 = 0;
  vfx_script_get_ecs_value();
  v9 = 0u;
  vfx_script_get_ecs_value();
  v8 = 0u;
  vfx_script_get_ecs_value();
  *v5 = 0u;
  vfx_script_get_ecs_value();
  *v4 = 0;
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  *v6.i32 = (0.0 * 0.0) * 0.1;
  result = vadd_f32(vmul_f32(0, 0x3F0000003F000000), vdup_lane_s32(v6, 0));
  *v2 = result;
  return result;
}

float __vfx_script_Glitter_graph_53()
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 8);
  v2 = *(arguments_buffer + 16);
  vfx_script_get_ecs_value();
  result = (fminf(fmaxf(0.0, 0.0), 1.0) * 0.95) + -1.4;
  v4 = *v2;
  *(&v4 + 1) = result;
  *(v2 + 2) = 1056964608;
  *v2 = v4;
  return result;
}

uint64_t __vfx_script_Glitter_graph_54()
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  result = vfx_script_get_arguments_buffer();
  v1 = *result;
  **(result + 8) = 1075838976;
  *v1 = 1075838976;
  return result;
}

float32x2_t __vfx_script_Glitter_graph_55()
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[1];
  v2 = arguments_buffer[2];
  v3 = arguments_buffer[3];
  v4 = arguments_buffer[4];
  v5 = arguments_buffer[5];
  v6 = arguments_buffer[6];
  vfx_script_get_ecs_value();
  *v6 = 0;
  *v5 = 0;
  vfx_script_get_ecs_value();
  *v4 = 1051126137;
  vfx_script_get_ecs_value();
  vfx_script_clock_time();
  v8 = v7;
  v10 = cosf(v8 + 0.0);
  result = vmul_f32(__PAIR64__(COERCE_UNSIGNED_INT(sinf((v8 + 0.0) + 0.0)), LODWORD(v10)), vdup_n_s32(0x3BC49BA6u));
  *v2 = result;
  return result;
}

uint64_t __vfx_script_Glitter_trigger_40()
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  v0 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_graph_log();
  return vfx_script_set_ecs_value();
}

uint64_t __vfx_script_Glitter_trigger_41()
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  v0 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_graph_log();
  return vfx_script_set_ecs_value();
}

uint64_t __vfx_script_Glitter_trigger_43()
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  v0 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_string_create();
  [v0 qword_1000710D8];

  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Glitter_particleUpdate_44()
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

void sub_1000038B4(id a1)
{
  qword_100070F58 = sel_registerName("setValue:forKeyPath:");
  qword_100070F60 = sel_registerName("valueForKeyPath:");
  qword_100070F68 = objc_lookUpClass("NSString");
  qword_100070F70 = sel_registerName("stringWithUTF8String:");
  qword_100070F78 = objc_lookUpClass("VFXTransaction");
  qword_100070F80 = sel_registerName("begin");
  qword_100070F88 = sel_registerName("setAnimationDurationAsFloat:");
  qword_100070F90 = sel_registerName("commit");
  qword_100070F98 = objc_lookUpClass("NSDictionary");
  qword_100070FA0 = objc_lookUpClass("NSMutableDictionary");
  qword_100070FA8 = sel_registerName("dictionary");
  qword_100070FB0 = sel_registerName("setValue:forKey:");
  qword_100070FB8 = sel_registerName("setObject:forKey:");
  qword_100070FC0 = objc_lookUpClass("NSValue");
  qword_100070FC8 = objc_lookUpClass("NSNumber");
  qword_100070FD0 = sel_registerName("numberWithBool:");
  qword_100070FD8 = sel_registerName("numberWithFloat:");
  qword_100070FE0 = sel_registerName("numberWithUnsignedInteger:");
  qword_100070FE8 = sel_registerName("firstObject");
  qword_100070FF0 = sel_registerName("count");
  qword_100070FF8 = objc_lookUpClass("VFXNode");
  qword_100071000 = sel_registerName("addAnimationAsset:forKey:");
  qword_100071008 = sel_registerName("removeAllAnimations");
  qword_100071010 = sel_registerName("removeAnimationForKey:");
  qword_100071018 = sel_registerName("script_rootNode");
  qword_100071020 = sel_registerName("clone");
  qword_100071028 = sel_registerName("parentNode");
  qword_100071030 = sel_registerName("addChildNode:");
  qword_100071038 = sel_registerName("childNodes");
  qword_100071040 = sel_registerName("deepClone");
  qword_100071048 = sel_registerName("insertChildNode:atIndex:");
  qword_100071050 = sel_registerName("removeFromParentNode");
  qword_100071058 = sel_registerName("childNodeWithName:");
  qword_100071060 = sel_registerName("convertPosition:fromNode:");
  qword_100071068 = sel_registerName("convertVector:fromNode:");
  qword_100071070 = sel_registerName("convertTransform:fromNode:");
  qword_100071078 = sel_registerName("convertPosition:toNode:");
  qword_100071080 = sel_registerName("convertVector:toNode:");
  qword_100071088 = sel_registerName("convertTransform:toNode:");
  qword_100071090 = sel_registerName("localTranslateBy:");
  qword_100071098 = sel_registerName("localRotateBy:");
  qword_1000710A0 = sel_registerName("rotateBy:aroundTarget:");
  qword_1000710A8 = sel_registerName("projectPoint:");
  qword_1000710B0 = sel_registerName("unprojectPoint:");
  qword_1000710B8 = sel_registerName("script_hitTest:options:");
  qword_1000710C0 = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  qword_1000710C8 = sel_registerName("node");
  qword_1000710D0 = sel_registerName("setState:");
  qword_1000710D8 = sel_registerName("setStateNamed:");
  qword_1000710E0 = sel_registerName("_contentsScaleFactor");
  qword_1000710E8 = sel_registerName("_screenSize");
  qword_1000710F0 = sel_registerName("physicsBody");
  qword_1000710F8 = sel_registerName("script_instantiate:");
  qword_100071100 = sel_registerName("geometryIndex");
  qword_100071108 = sel_registerName("faceIndex");
  qword_100071110 = sel_registerName("localCoordinates");
  qword_100071118 = sel_registerName("worldCoordinates");
  qword_100071120 = sel_registerName("localNormal");
  qword_100071128 = sel_registerName("worldNormal");
  qword_100071130 = sel_registerName("modelTransform");
  qword_100071138 = sel_registerName("boneNode");
  qword_100071140 = sel_registerName("uv0");
  qword_100071148 = sel_registerName("presentationBoneNode");
  qword_100071150 = sel_registerName("presentationNode");
  qword_100071158 = sel_registerName("applyForce:impulse:");
  qword_100071160 = sel_registerName("applyForce:atPosition:impulse:");
  qword_100071168 = sel_registerName("applyTorque:impulse:");
  qword_100071170 = sel_registerName("presentationObject");
}

float sub_100003E18(uint64_t a1, uint64_t a2, float *a3)
{
  vfx_script_set_ecs_value();
  vfx_script_get_ecs_value();
  result = fmaxf(0.0, 10.0);
  *a3 = result;
  return result;
}

unsigned int **__vfx_script_clouds_graph_54()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  result = vfx_script_get_arguments_buffer();
  v1 = result[1];
  v2 = result[2];
  v3 = result[3];
  v4 = result[4];
  v5 = result[5];
  v6 = result[6];
  v7 = result[7];
  v8 = **result;
  v30 = xmmword_10004F500;
  v31 = 0x3FACCCCD3FE00000;
  if (v8 > 5)
  {
    *v7 = 0;
    v28 = xmmword_10004F510;
    __asm { FMOV            V0.2S, #1.0 }

    v29 = _D0;
    v14 = 0;
  }

  else
  {
    *v7 = *(&v30 + v8);
    v28 = xmmword_10004F510;
    __asm { FMOV            V0.2S, #1.0 }

    v29 = _D0;
    v14 = *(&v28 + v8);
  }

  *v6 = v14;
  v26 = xmmword_10004F520;
  v27 = 0;
  if (v8 > 5)
  {
    *v5 = 0;
    v22 = 1036831949;
    v24 = 0;
    v23 = 0;
    v16 = 0;
    v25 = 0;
  }

  else
  {
    *v5 = *(&v26 + v8);
    v22 = 1036831949;
    v24 = 0;
    v23 = 0;
    v25 = 0;
    v16 = *(&v22 + v8);
  }

  *v4 = v16;
  memset(v21, 0, sizeof(v21));
  if (v8 > 5)
  {
    v17 = 0;
    *v3 = 0;
    v18 = 1;
    v19 = 0;
    v20 = 1;
  }

  else
  {
    *v3 = *(v21 + v8);
    v18 = 1;
    v19 = 0;
    v20 = 1;
    v17 = *(&v18 + v8);
  }

  *v2 = v17 & 1;
  *v1 = v17 & 1;
  return result;
}

unsigned int **__vfx_script_clouds_graph_57()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  result = vfx_script_get_arguments_buffer();
  v1 = result[2];
  v2 = result[3];
  v3 = **result;
  v4 = *result[1];
  v6[0] = 0x300000002;
  v6[1] = 0x200000001;
  v6[2] = 0x200000001;
  v6[3] = 0x300000002;
  v6[4] = 0x300000002;
  v6[5] = 0x200000001;
  if (v3 > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = v6[v3];
  }

  *v2 = v5;
  *v1 = v4;
  return result;
}

unsigned int **__vfx_script_clouds_graph_58()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  result = vfx_script_get_arguments_buffer();
  v1 = result[2];
  v2 = result[3];
  v3 = result[4];
  v4 = result[5];
  v5 = **result;
  v6 = *result[1];
  v8[0] = 0x500000003;
  v8[1] = 0x500000002;
  v8[2] = 0x200000002;
  v8[3] = 0x200000002;
  v8[4] = 0x200000001;
  v8[5] = 0x200000001;
  if (v5 > 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v8[v5];
  }

  *v4 = v7;
  *v3 = v5 == 3;
  *v2 = v5 == 4;
  *v1 = v6;
  return result;
}

unsigned int **__vfx_script_clouds_graph_63()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  result = vfx_script_get_arguments_buffer();
  v1 = result[2];
  v2 = result[3];
  v3 = result[4];
  v4 = result[5];
  v5 = **result;
  v6 = *result[1];
  v8[0] = 0;
  v8[1] = 0x300000002;
  v8[2] = 0x100000001;
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = 0x300000002;
  if (v5 > 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v8[v5];
  }

  *v4 = v7;
  *v3 = v5 == 1;
  *v2 = v5 != 1;
  *v1 = v6;
  return result;
}

void __vfx_script_clouds_graph_64()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *arguments_buffer;
  v1 = *(arguments_buffer + 8);
  v3 = *(arguments_buffer + 16);
  v4 = *(arguments_buffer + 24);
  v5 = *(arguments_buffer + 32);
  v6 = *(arguments_buffer + 40);
  v7 = *(arguments_buffer + 48);
  v8 = *(arguments_buffer + 56);
  v10 = *(arguments_buffer + 64);
  v9 = *(arguments_buffer + 72);
  v11 = *(arguments_buffer + 80);
  v12 = *(arguments_buffer + 88);
  v13 = *(arguments_buffer + 96);
  v14 = *(arguments_buffer + 104);
  v15 = *(arguments_buffer + 112);
  v16 = *(arguments_buffer + 120);
  v17 = *(arguments_buffer + 128);
  v18 = *(arguments_buffer + 136);
  v19 = *(arguments_buffer + 144);
  v20 = *(arguments_buffer + 152);
  v21 = *(arguments_buffer + 160);
  v22 = *(arguments_buffer + 168);
  v23 = *(arguments_buffer + 176);
  v24 = *(arguments_buffer + 184);
  v25 = *(arguments_buffer + 192);
  v26 = *v2;
  *&v96 = 0;
  *(&v96 + 1) = 0x3F94DD2FBEE7EF9ELL;
  v97 = 0x3F94DD2FBEE7EF9ELL;
  v98 = 0x3F6FDF3B3D4CCCCDLL;
  v27 = 0;
  v28 = 0;
  v99 = 0;
  v100 = 0;
  if (v26 <= 5)
  {
    v28 = *(&v96 + v26);
  }

  *v9 = v28;
  *v92 = 0;
  *&v92[8] = 0xBF55C28FBF9D9168;
  *&v92[16] = 0xBF55C28FBF9D9168;
  v93 = 0xBF55C28FC0000000;
  v94 = 0;
  v95 = 0;
  if (v26 <= 5)
  {
    v27 = *&v92[8 * v26];
  }

  *v10 = v27;
  v86 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v87 = -_D0;
  v88 = -_D0;
  v89 = 0xBF8000003FC00000;
  v90 = 0xBF8000003F333333;
  v91 = 0;
  if (v26 > 5)
  {
    *v8 = 0;
    *&v85[4] = xmmword_10004F530;
    *v85 = 0;
    *&v85[20] = 0;
    v34 = 0;
  }

  else
  {
    *v8 = *(&v86 + v26);
    *&v85[4] = xmmword_10004F530;
    *v85 = 0;
    *&v85[20] = 0;
    v34 = *&v85[4 * v26];
  }

  *v7 = v34;
  *&v84[4] = xmmword_10004F540;
  *v84 = 0;
  *&v84[20] = 0;
  if (v26 > 5)
  {
    *v6 = 0;
    *&v83[4] = xmmword_10004F550;
    *v83 = 0;
    *&v83[20] = 0;
    v35 = 0;
  }

  else
  {
    *v6 = *&v84[4 * v26];
    *&v83[4] = xmmword_10004F550;
    *v83 = 0;
    *&v83[20] = 0;
    v35 = *&v83[4 * v26];
  }

  *v5 = v35;
  v77 = 0uLL;
  v36 = 0uLL;
  v78 = xmmword_10004F560;
  v79 = 0u;
  v80 = xmmword_10004F570;
  v81 = xmmword_10004F580;
  v82 = 0u;
  v37 = 0uLL;
  if (v26 <= 5)
  {
    v37 = *(&v77 + v26);
  }

  *v4 = v37;
  v71 = 0uLL;
  v72 = xmmword_10004F590;
  v73 = 0uLL;
  v74 = xmmword_10004F5A0;
  v75 = 0uLL;
  v76 = 0uLL;
  if (v26 <= 5)
  {
    v36 = *(&v71 + v26);
  }

  *v3 = v36;
  v64 = 0.0;
  v65 = 0;
  v66 = xmmword_10004F5B0;
  v67 = xmmword_10004F5C0;
  v68 = xmmword_10004F5D0;
  v69 = xmmword_10004F5E0;
  v38 = 0uLL;
  v70 = 0u;
  if (v26 <= 5)
  {
    v38 = *(&v64 + v26);
  }

  *v1 = v38;
  *&v92[4] = xmmword_10004F5F0;
  *v92 = 0;
  *&v92[20] = 1041865114;
  v39 = 0;
  if (v26 <= 5)
  {
    v39 = *&v92[4 * v26];
  }

  *v25 = v39;
  v64 = _D0;
  v65 = 0x3F8000003F000000;
  *&v66 = _D0;
  *(&v66 + 1) = 0x3F8000003F000000;
  *&v67 = 0x3F8000003F000000;
  *(&v67 + 1) = 0x3F8000003F000000;
  if (v26 > 5)
  {
    v40 = 0;
    *v24 = 0;
    v86 = 0;
    v87 = 0.0;
    v88 = 0.0;
  }

  else
  {
    *v24 = *(&v64 + v26);
    v86 = 0;
    v87 = 0.0;
    v88 = 0.0;
    v40 = *(&v86 + v26);
  }

  *v23 = v40;
  *v85 = xmmword_10004F600;
  *&v85[16] = vdup_n_s32(0x3F333333u);
  v41 = 0;
  if (v26 <= 5)
  {
    v41 = *&v85[4 * v26];
  }

  *v22 = v41;
  v96 = 0u;
  v97 = 0x3E800000BE19999ALL;
  v98 = 0xBDCCCCCD00000000;
  v42 = 0;
  v99 = 0;
  v100 = 0xBDCCCCCD00000000;
  if (v26 <= 5)
  {
    v42 = *(&v96 + v26);
  }

  *v21 = v42;
  v77 = xmmword_10004F610;
  v78 = xmmword_10004F620;
  v79 = xmmword_10004F630;
  v80 = xmmword_10004F640;
  v81 = xmmword_10004F650;
  v82 = 0uLL;
  if (v26 > 5)
  {
    *v20 = 0;
    v20[1] = 0;
    *v84 = xmmword_10004F660;
    *&v84[16] = 0x41C0000041400000;
    v43 = 0;
  }

  else
  {
    *v20 = *(&v77 + v26);
    *v84 = xmmword_10004F660;
    *&v84[16] = 0x41C0000041400000;
    v43 = *&v84[4 * v26];
  }

  *v19 = v43;
  *v83 = xmmword_10004F670;
  *&v83[16] = 0x3F4CCCCD3DCCCCCDLL;
  if (v26 > 5)
  {
    *v18 = 0;
    v62 = xmmword_10004F680;
    v63 = 0x43020000C2B40000;
    v44 = 0;
  }

  else
  {
    *v18 = *&v83[4 * v26];
    v62 = xmmword_10004F680;
    v63 = 0x43020000C2B40000;
    v44 = *(&v62 + v26);
  }

  *v17 = v44;
  __asm { FMOV            V2.4S, #1.0 }

  v60 = _Q2;
  v61 = _D0;
  v46 = 0;
  if (v26 <= 5)
  {
    v46 = *(&v60 + v26);
  }

  *v16 = v46;
  v71 = xmmword_10004F690;
  v72 = xmmword_10004F6A0;
  v73 = xmmword_10004F6B0;
  v74 = xmmword_10004F6C0;
  v75 = xmmword_10004F6C0;
  v76 = xmmword_10004F6D0;
  if (v26 > 5)
  {
    *v15 = 0;
    v15[1] = 0;
    v57 = 0;
    v58 = _Q2;
    v47 = 0;
    v59 = 0;
  }

  else
  {
    *v15 = *(&v71 + v26);
    v57 = 0;
    v58 = _Q2;
    v59 = 0;
    v47 = *(&v57 + v26);
  }

  *v14 = v47;
  v55 = xmmword_10004F6E0;
  v56 = vdup_n_s32(0x3CA3D70Au);
  v50 = _Q2;
  if (v26 > 5)
  {
    *v13 = 0;
    v53 = xmmword_10004F6F0;
    v54 = vdup_n_s32(0x42B40000u);
    v48 = 0.0;
  }

  else
  {
    *v13 = *(&v55 + v26);
    v53 = xmmword_10004F6F0;
    v54 = vdup_n_s32(0x42B40000u);
    v48 = *(&v53 + v26) * 0.017453;
  }

  *v12 = __sincosf_stret(v48);
  v51 = v50;
  v52 = 0x3F8000003F733333;
  v49 = 0;
  if (v26 <= 5)
  {
    v49 = *(&v51 + v26);
  }

  *v11 = v49;
}

float __vfx_script_clouds_graph_65()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 48);
  v4 = *(arguments_buffer + 56);
  v5 = **(arguments_buffer + 8);
  v6 = **(arguments_buffer + 16);
  v7.i32[0] = **(arguments_buffer + 40);
  *v46 = 0;
  *&v46[8] = 0x3F4CCCCDBE4CCCCDLL;
  *&v46[16] = 0x3DCCCCCD3F800000;
  v47 = 0x3EB3333300000000;
  v48 = 0x3EB33333BF800000;
  v49 = 0x3EB3333300000000;
  if (v5 > 5)
  {
    *v1 = vadd_f32(v6, 0);
    *v46 = 0;
    *&v46[4] = xmmword_10004F700;
    *&v46[20] = 1045220557;
    v8 = -0.25;
  }

  else
  {
    *v1 = vadd_f32(v6, *&v46[8 * v5]);
    *v46 = 0;
    *&v46[4] = xmmword_10004F700;
    *&v46[20] = 1045220557;
    v8 = *&v46[4 * v5] + -0.25;
  }

  *v7.i32 = *v7.i32 * 0.25;
  v9 = vdupq_lane_s32(v7, 0);
  v10 = v9;
  v10.i32[3] = 0;
  v11 = vrndmq_f32(v10);
  v12 = vsubq_f32(v9, v11);
  v12.i32[3] = 0;
  v13 = vminnmq_f32(v12, xmmword_10004F710);
  _Q4.i64[0] = 0xC0000000C0000000;
  _Q4.i64[1] = 0xC0000000C0000000;
  __asm { FMOV            V5.4S, #3.0 }

  _Q2 = vmulq_f32(vmulq_f32(v13, v13), vmlaq_f32(_Q5, _Q4, v13));
  v21 = vaddq_f32(v11, 0);
  v22 = vaddq_f32(v11, xmmword_10004F720);
  v23 = vaddq_f32(v11, xmmword_10004F730);
  _Q3 = vaddq_f32(v11, xmmword_10004F740);
  v25 = vaddq_f32(v11, xmmword_10004F750);
  *_Q4.f32 = vdup_n_s32(0x3EA2F984u);
  *_Q5.f32 = vdup_n_s32(0x3DCCCCCDu);
  v26 = vmla_f32(*_Q5.f32, *_Q4.f32, vzip1_s32(*v25.i8, *v21.i8));
  v27 = vmla_f32(*_Q5.f32, *_Q4.f32, vzip2_s32(*v25.i8, *v21.i8));
  v28 = vaddq_f32(v11, xmmword_10004F760);
  v29 = vmla_f32(*_Q5.f32, *_Q4.f32, vzip1_s32(*v28.i8, *v22.i8));
  v30 = vmla_f32(*_Q5.f32, *_Q4.f32, vzip2_s32(*v28.i8, *v22.i8));
  v31 = vaddq_f32(v11, xmmword_10004F770);
  v32 = vmla_f32(*_Q5.f32, *_Q4.f32, vzip1_s32(*v31.i8, *v23.i8));
  v33 = vmla_f32(*_Q5.f32, *_Q4.f32, vzip2_s32(*v31.i8, *v23.i8));
  __asm { FMOV            V17.4S, #1.0 }

  v35 = vaddq_f32(v11, _Q17);
  v36 = vmla_f32(*_Q5.f32, *_Q4.f32, vzip1_s32(*v35.i8, *_Q3.i8));
  v37 = vmla_f32(*_Q5.f32, *_Q4.f32, vzip2_s32(*v35.i8, *_Q3.i8));
  *v11.f32 = vdup_n_s32(0x3F7FFFFFu);
  v38 = vminnm_f32(vsub_f32(v26, vrndm_f32(v26)), *v11.f32);
  __asm { FMOV            V18.2S, #17.0 }

  v40 = vmul_f32(v38, _D18);
  v41 = vmul_f32(vminnm_f32(vsub_f32(v27, vrndm_f32(v27)), *v11.f32), _D18);
  *v25.i8 = vmla_f32(*_Q5.f32, *_Q4.f32, *&vzip2q_s32(v25, v21));
  *v21.i8 = vmul_f32(vminnm_f32(vsub_f32(*v25.i8, vrndm_f32(*v25.i8)), *v11.f32), _D18);
  *v21.i8 = vmul_f32(vmul_f32(*v21.i8, vmul_f32(v40, v41)), vadd_f32(*v21.i8, vadd_f32(v40, v41)));
  *v21.i8 = vminnm_f32(vsub_f32(*v21.i8, vrndm_f32(*v21.i8)), *v11.f32);
  *v25.i8 = vmul_f32(vminnm_f32(vsub_f32(v29, vrndm_f32(v29)), *v11.f32), _D18);
  v42 = vmul_f32(vminnm_f32(vsub_f32(v30, vrndm_f32(v30)), *v11.f32), _D18);
  *v28.i8 = vmla_f32(*_Q5.f32, *_Q4.f32, *&vzip2q_s32(v28, v22));
  *v22.i8 = vmul_f32(vminnm_f32(vsub_f32(*v28.i8, vrndm_f32(*v28.i8)), *v11.f32), _D18);
  *v22.i8 = vmul_f32(vmul_f32(*v22.i8, vmul_f32(*v25.i8, v42)), vadd_f32(*v22.i8, vadd_f32(*v25.i8, v42)));
  *v21.i8 = vmla_n_f32(*v21.i8, vsub_f32(vminnm_f32(vsub_f32(*v22.i8, vrndm_f32(*v22.i8)), *v11.f32), *v21.i8), _Q2.f32[0]);
  *v22.i8 = vmul_f32(vminnm_f32(vsub_f32(v32, vrndm_f32(v32)), *v11.f32), _D18);
  v43 = vmul_f32(vminnm_f32(vsub_f32(v33, vrndm_f32(v33)), *v11.f32), _D18);
  *v31.i8 = vmla_f32(*_Q5.f32, *_Q4.f32, *&vzip2q_s32(v31, v23));
  *v23.i8 = vmul_f32(vminnm_f32(vsub_f32(*v31.i8, vrndm_f32(*v31.i8)), *v11.f32), _D18);
  *v23.i8 = vmul_f32(vmul_f32(*v23.i8, vmul_f32(*v22.i8, v43)), vadd_f32(*v23.i8, vadd_f32(*v22.i8, v43)));
  *v23.i8 = vminnm_f32(vsub_f32(*v23.i8, vrndm_f32(*v23.i8)), *v11.f32);
  *v22.i8 = vmul_f32(vminnm_f32(vsub_f32(v36, vrndm_f32(v36)), *v11.f32), _D18);
  *v31.i8 = vmul_f32(vminnm_f32(vsub_f32(v37, vrndm_f32(v37)), *v11.f32), _D18);
  *_Q5.f32 = vmla_f32(*_Q5.f32, *_Q4.f32, *&vzip2q_s32(v35, _Q3));
  *_Q3.i8 = vmul_f32(vminnm_f32(vsub_f32(*_Q5.f32, vrndm_f32(*_Q5.f32)), *v11.f32), _D18);
  *_Q3.i8 = vmul_f32(vmul_f32(*_Q3.i8, vmul_f32(*v22.i8, *v31.i8)), vadd_f32(*_Q3.i8, vadd_f32(*v22.i8, *v31.i8)));
  *v21.i8 = vmla_lane_f32(*v21.i8, vsub_f32(vmla_n_f32(*v23.i8, vsub_f32(vminnm_f32(vsub_f32(*_Q3.i8, vrndm_f32(*_Q3.i8)), *v11.f32), *v23.i8), _Q2.f32[0]), *v21.i8), *_Q2.f32, 1);
  _Q4.f32[0] = *v21.i32 - *&v21.i32[1];
  __asm { FMLA            S3, S4, V2.S[2] }

  _Q2.f32[0] = fminf(fmaxf(*_Q3.i32, 0.0), 1.0);
  *v4 = (v8 * _Q2.f32[0]) + 0.25;
  *v3 = (_Q2.f32[0] * 0.7) + 0.5;
  vfx_script_clock_time();
  result = v44;
  *v2 = result;
  return result;
}

uint64_t __vfx_script_clouds_graph_66()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  v0 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_clock_delta_time();
  [v0 qword_100071398];
  vfx_script_get_ecs_value();
  vfx_script_set_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  return vfx_script_set_ecs_value();
}

uint64_t __vfx_script_clouds_graph_67()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  [*(vfx_script_get_arguments_buffer() + 8) qword_100071398];
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  return vfx_script_get_ecs_value();
}

uint64_t __vfx_script_clouds_graph_72()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 8);
  v1 = *(arguments_buffer + 16);
  v3 = *(arguments_buffer + 24);
  v4 = **(arguments_buffer + 32);
  result = vfx_script_clock_delta_time();
  v7 = fmaxf(*v3 - v6, 0.0);
  *v3 = v7;
  if (v7 <= 0.0 && (v4 & 1) == 0 && *v2 == 1)
  {
    vfx_script_string_create();
    [v1 qword_100071300];
    *v2 = 0;
    vfx_script_graph_log();
    return vfx_script_string_destroy();
  }

  return result;
}

void __vfx_script_clouds_graph_75()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[3];
  v22 = arguments_buffer[2];
  v23 = arguments_buffer[1];
  v21 = arguments_buffer[5];
  v2 = arguments_buffer[6];
  v3 = arguments_buffer[7];
  v4 = arguments_buffer[8];
  v5 = arguments_buffer[9];
  v7 = arguments_buffer[10];
  v6 = arguments_buffer[11];
  v8 = arguments_buffer[12];
  v9 = arguments_buffer[13];
  v10 = arguments_buffer[14];
  v11 = **arguments_buffer;
  v12 = *arguments_buffer[4];
  v42 = xmmword_10004F780;
  v43 = 0x42C80000C2B40000;
  if (v11 > 5)
  {
    *v10 = 0;
    v40 = xmmword_10004F790;
    v41 = vdup_n_s32(0x42B40000u);
    v13 = 0.0;
  }

  else
  {
    *v10 = *(&v42 + v11);
    v40 = xmmword_10004F790;
    v41 = vdup_n_s32(0x42B40000u);
    v13 = *(&v40 + v11) * 0.017453;
  }

  *v9 = __sincosf_stret(v13);
  v39[0] = 0x3F00000000000000;
  v39[1] = 0x3F8000003DCCCCCDLL;
  v39[2] = 0x3F8000003DCCCCCDLL;
  v39[3] = 0x3F8000003E800000;
  v39[4] = 0x3F80000000000000;
  v39[5] = 0x3F80000000000000;
  if (v11 > 5)
  {
    *v8 = 0;
    v37 = xmmword_10004F7A0;
    v38 = 1036831949;
    v14 = 0;
  }

  else
  {
    *v8 = v39[v11];
    v37 = xmmword_10004F7A0;
    v38 = 1036831949;
    v14 = *(&v37 + v11);
  }

  *v6 = v14;
  v36[0] = 0x4000000000000000;
  v36[1] = 0x4000000000000000;
  v36[2] = 0x4000000000000000;
  v36[3] = 0x4000000000000000;
  v36[4] = 0x4000000000000000;
  v36[5] = 0x4000000000000000;
  if (v11 > 5)
  {
    *v7 = 0;
    *&v17 = 0x4000000040000000;
    *(&v17 + 1) = 0x4000000040000000;
    v34 = v17;
    v35 = 0x4000000040000000;
    v16 = 0;
  }

  else
  {
    *v7 = v36[v11];
    *&v15 = 0x4000000040000000;
    *(&v15 + 1) = 0x4000000040000000;
    v34 = v15;
    v35 = 0x4000000040000000;
    v16 = *(&v34 + v11);
  }

  *v5 = v16;
  *v4 = v11;
  v33[0] = 0x3ECCCCCD00000000;
  v33[1] = 0x3ECCCCCD00000000;
  v33[2] = 0;
  v33[3] = 0x3ECCCCCD00000000;
  v33[4] = 0;
  v33[5] = 0;
  if (v11 > 5)
  {
    *v3 = 0;
    v31 = xmmword_10004F7B0;
    v32 = vdup_n_s32(0x3D0F5C29u);
    v18 = 0;
  }

  else
  {
    *v3 = v33[v11];
    v31 = xmmword_10004F7B0;
    v32 = vdup_n_s32(0x3D0F5C29u);
    v18 = *(&v31 + v11);
  }

  *v2 = v18;
  *v21 = v12;
  v30[0] = 0xBE19999A00000000;
  v30[1] = 0xBE19999A00000000;
  v30[2] = 0;
  v30[3] = 0xBE19999A00000000;
  v30[4] = 0;
  v30[5] = 0;
  if (v11 > 5)
  {
    *v1 = 0;
    v26 = -1130113270;
    v28 = 0;
    v27 = 0;
    v19 = 0;
    v29 = 1050320830;
  }

  else
  {
    *v1 = v30[v11];
    v26 = -1130113270;
    v28 = 0;
    v27 = 0;
    v29 = 1050320830;
    v19 = *(&v26 + v11);
  }

  *v22 = v19;
  v24 = xmmword_10004F7C0;
  v25 = 0x3F0000003F59999ALL;
  v20 = 0;
  if (v11 <= 5)
  {
    v20 = *(&v24 + v11);
  }

  *v23 = v20;
}

void __vfx_script_clouds_graph_76()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[2];
  v22 = v1;
  v23 = arguments_buffer[1];
  v21 = arguments_buffer[3];
  v20 = arguments_buffer[5];
  v2 = arguments_buffer[6];
  v3 = arguments_buffer[7];
  v4 = arguments_buffer[8];
  v5 = arguments_buffer[9];
  v7 = arguments_buffer[10];
  v6 = arguments_buffer[11];
  v8 = arguments_buffer[12];
  v9 = arguments_buffer[13];
  v11 = arguments_buffer[14];
  v10 = arguments_buffer[15];
  v12 = **arguments_buffer;
  v13 = *arguments_buffer[4];
  v44 = xmmword_10004F7D0;
  v45 = 0xC270000042B40000;
  if (v12 > 5)
  {
    *v10 = 0;
    v42 = xmmword_10004F790;
    v43 = vdup_n_s32(0x42B40000u);
    v14 = 0.0;
  }

  else
  {
    *v10 = *(&v44 + v12);
    v42 = xmmword_10004F790;
    v43 = vdup_n_s32(0x42B40000u);
    v14 = *(&v42 + v12) * 0.017453;
  }

  *v11 = __sincosf_stret(v14);
  v41[0] = 0x3F8000003E4CCCCDLL;
  v41[1] = 0x3F8000003E4CCCCDLL;
  v41[2] = 0x3F8000003DCCCCCDLL;
  v41[3] = 0x3F8000003E99999ALL;
  v41[4] = 0x3F66666600000000;
  v41[5] = 0x3F40000000000000;
  if (v12 > 5)
  {
    *v9 = 0;
    v39 = xmmword_10004F7E0;
    v40 = 1036831949;
    v15 = 0;
  }

  else
  {
    *v9 = v41[v12];
    v39 = xmmword_10004F7E0;
    v40 = 1036831949;
    v15 = *(&v39 + v12);
  }

  *v8 = v15;
  v38[0] = 0x4000000000000000;
  v38[1] = 0x4000000000000000;
  v38[2] = 0x4000000000000000;
  v38[3] = 0x4000000000000000;
  v38[4] = 0x4000000000000000;
  v38[5] = 0x4000000000000000;
  if (v12 > 5)
  {
    *v6 = 0;
    v36 = xmmword_10004F7F0;
    v37 = 0x4000000040000000;
    v16 = 0;
  }

  else
  {
    *v6 = v38[v12];
    v36 = xmmword_10004F7F0;
    v37 = 0x4000000040000000;
    v16 = *(&v36 + v12);
  }

  *v7 = v16;
  *v5 = v12;
  v35[0] = 0x3ECCCCCD00000000;
  v35[1] = 0x3ECCCCCD00000000;
  v35[2] = 0x3F19999A00000000;
  v35[3] = 0x3F19999A00000000;
  v35[4] = 0x3F80000000000000;
  v35[5] = 0x3F80000000000000;
  v17 = 0;
  if (v12 <= 5)
  {
    v17 = v35[v12];
  }

  *v4 = v17;
  v34[0] = 0x3D4CCCCDBD4CCCCDLL;
  v34[1] = 0x3D4CCCCDBD4CCCCDLL;
  v34[2] = 0x3C23D70ABC23D70ALL;
  v34[3] = 0x3CCCCCCDBCCCCCCDLL;
  v34[4] = 0x3C23D70ABC23D70ALL;
  v34[5] = 0x3C23D70ABC23D70ALL;
  if (v12 > 5)
  {
    v18 = 0;
    *v3 = 0;
    v33 = vdup_n_s32(0x3C23D70Au);
    *v2 = 0;
    *v20 = v13;
    v28 = 0xBE19999A00000000;
    v29 = 0xBE19999A00000000;
    v30 = 0u;
    v31 = 0u;
    v32 = xmmword_10004F7B0;
  }

  else
  {
    *v3 = v34[v12];
    v32 = xmmword_10004F7B0;
    v33 = vdup_n_s32(0x3C23D70Au);
    *v2 = *(&v32 + v12);
    *v20 = v13;
    v28 = 0xBE19999A00000000;
    v29 = 0xBE19999A00000000;
    v30 = 0u;
    v31 = 0u;
    v18 = *(&v28 + v12);
  }

  *v21 = v18;
  v26 = xmmword_10004F800;
  v27 = 0x3F19999A3E99999ALL;
  if (v12 > 5)
  {
    *v22 = 0;
    v24 = xmmword_10004F810;
    v25 = 0x3E99999A3ECCCCCDLL;
    v19 = 0;
  }

  else
  {
    *v22 = *(&v26 + v12);
    v24 = xmmword_10004F810;
    v25 = 0x3E99999A3ECCCCCDLL;
    v19 = *(&v24 + v12);
  }

  *v23 = v19;
}

void __vfx_script_clouds_graph_77()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v30 = arguments_buffer[2];
  v31 = arguments_buffer[1];
  v29 = arguments_buffer[3];
  v1 = arguments_buffer[4];
  v2 = arguments_buffer[7];
  v27 = arguments_buffer[6];
  v28 = arguments_buffer[5];
  v3 = arguments_buffer[8];
  v4 = arguments_buffer[9];
  v6 = arguments_buffer[10];
  v5 = arguments_buffer[11];
  v7 = arguments_buffer[12];
  v8 = arguments_buffer[13];
  v9 = arguments_buffer[14];
  v10 = arguments_buffer[15];
  v11 = arguments_buffer[16];
  v12 = **arguments_buffer;
  v53 = xmmword_10004F820;
  v54 = vdup_n_s32(0xC2B40000);
  v13 = 0.0;
  v14 = 0;
  v15 = *v1;
  if (v12 <= 5)
  {
    v14 = *(&v53 + v12);
  }

  *v11 = v14;
  v51 = xmmword_10004F790;
  v52 = 1119092736;
  if (v12 <= 4)
  {
    v13 = *(&v51 + v12) * 0.017453;
  }

  *v10 = __sincosf_stret(v13);
  v50[0] = 0x3F8000003E4CCCCDLL;
  v50[1] = 0x3F8000003E4CCCCDLL;
  v50[2] = 0x3F80000000000000;
  v50[3] = 0x3F8000003E99999ALL;
  v50[4] = 0x3F66666600000000;
  v50[5] = 0x3F4CCCCD3E4CCCCDLL;
  if (v12 > 5)
  {
    *v9 = 0;
    v48 = xmmword_10004F7A0;
    v49 = 1036831949;
    v16 = 0;
  }

  else
  {
    *v9 = v50[v12];
    v48 = xmmword_10004F7A0;
    v49 = 1036831949;
    v16 = *(&v48 + v12);
  }

  *v8 = v16;
  v47[0] = 0x4000000000000000;
  v47[1] = 0x4000000000000000;
  v47[2] = 0x4000000000000000;
  v47[3] = 0x4000000000000000;
  v47[4] = 0x4080000000000000;
  v47[5] = 0x4000000000000000;
  if (v12 > 5)
  {
    *v7 = 0;
    v45 = xmmword_10004F7F0;
    v46 = 0x4000000040000000;
    v17 = 0;
  }

  else
  {
    *v7 = v47[v12];
    v45 = xmmword_10004F7F0;
    v46 = 0x4000000040000000;
    v17 = *(&v45 + v12);
  }

  *v5 = v17;
  *v6 = v12;
  __asm { FMOV            V1.4S, #1.0 }

  v44[0] = _Q1;
  v44[1] = _Q1;
  v44[2] = _Q1;
  v44[3] = _Q1;
  v44[4] = _Q1;
  v44[5] = xmmword_10004F830;
  v23 = 0uLL;
  if (v12 <= 5)
  {
    v23 = v44[v12];
  }

  *v4 = v23;
  v43[0] = 0x3ECCCCCD00000000;
  v43[1] = 0x3ECCCCCD00000000;
  v43[2] = 0x3F19999A00000000;
  v43[3] = 0x3F19999A00000000;
  v43[4] = 0x3F80000000000000;
  v43[5] = 0x3F00000000000000;
  v24 = 0;
  if (v12 <= 5)
  {
    v24 = v43[v12];
  }

  *v3 = v24;
  v42[0] = vdup_n_s32(0x3CCCCCCDu);
  v42[1] = v42[0];
  v42[2] = vdup_n_s32(0x3C23D70Au);
  v42[3] = 0x3CCCCCCDBCCCCCCDLL;
  v42[4] = 0x3C23D70ABC23D70ALL;
  v42[5] = 0x3C23D70ABC23D70ALL;
  if (v12 > 5)
  {
    v25 = 0;
    *v2 = 0;
    v41 = 0x3D0F5C293DCCCCCDLL;
    *v27 = 0;
    *v28 = v15;
    v36 = 0xBE19999A00000000;
    v37 = 0xBE19999A00000000;
    v38 = 0u;
    v39 = 0u;
    v40 = xmmword_10004F7B0;
  }

  else
  {
    *v2 = v42[v12];
    v40 = xmmword_10004F7B0;
    v41 = 0x3D0F5C293DCCCCCDLL;
    *v27 = *(&v40 + v12);
    *v28 = v15;
    v36 = 0xBE19999A00000000;
    v37 = 0xBE19999A00000000;
    v38 = 0u;
    v39 = 0u;
    v25 = *(&v36 + v12);
  }

  *v29 = v25;
  v34 = xmmword_10004F840;
  v35 = 0xBDCCCCCDBECCCCCDLL;
  if (v12 > 5)
  {
    *v30 = 0;
    v32 = xmmword_10004F810;
    v33 = 0x3F3AE1483E99999ALL;
    v26 = 0;
  }

  else
  {
    *v30 = *(&v34 + v12);
    v32 = xmmword_10004F810;
    v33 = 0x3F3AE1483E99999ALL;
    v26 = *(&v32 + v12);
  }

  *v31 = v26;
}

void __vfx_script_clouds_graph_78()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[3];
  v22 = arguments_buffer[2];
  v23 = arguments_buffer[1];
  v2 = arguments_buffer[5];
  v3 = arguments_buffer[6];
  v4 = arguments_buffer[7];
  v5 = arguments_buffer[8];
  v6 = arguments_buffer[9];
  v8 = arguments_buffer[10];
  v7 = arguments_buffer[11];
  v10 = arguments_buffer[12];
  v9 = arguments_buffer[13];
  v11 = **arguments_buffer;
  v12 = *arguments_buffer[4];
  v36[0] = xmmword_10004F7D0;
  if (v11 > 3)
  {
    v13 = 0;
    v14 = 0.0;
  }

  else
  {
    v13 = *(v36 + v11);
    v35 = xmmword_10004F790;
    v14 = *(&v36[-1] + v11) * 0.017453;
  }

  *v9 = v13;
  *v10 = __sincosf_stret(v14);
  v34[0] = 0x3F8000003E4CCCCDLL;
  v34[1] = 0x3F8000003E4CCCCDLL;
  v34[2] = 0x3F8000003DCCCCCDLL;
  v34[3] = 0x3F80000000000000;
  if (v11 > 3)
  {
    v16 = 0;
    v15 = 0;
  }

  else
  {
    v15 = v34[v11];
    v33 = xmmword_10004F7F0;
    v16 = *(&v34[-2] + v11);
  }

  *v7 = v15;
  *v8 = v16;
  *v6 = v11;
  v32[0] = 0x3ECCCCCD00000000;
  v32[1] = 0x3ECCCCCD00000000;
  v32[2] = 0x3F19999A00000000;
  v32[3] = 0x3F19999A00000000;
  if (v11 > 3)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v17 = v32[v11];
    v31[0] = 0x3D4CCCCDBD4CCCCDLL;
    v31[1] = 0x3D4CCCCDBD4CCCCDLL;
    v31[2] = 0x3CCCCCCDBCCCCCCDLL;
    v31[3] = 0x3CCCCCCDBCCCCCCDLL;
    v18 = v31[v11];
  }

  *v5 = v17;
  *v4 = v18;
  v30 = xmmword_10004F7B0;
  if (v11 > 3)
  {
    *v3 = 0;
    *v2 = v12;
    v26 = 0xBE19999A00000000;
    v27 = 0xBE19999A00000000;
    v28 = 0;
    v29 = 0;
    v20 = 0;
    v19 = 0;
  }

  else
  {
    *v3 = *(&v31[-2] + v11);
    *v2 = v12;
    v26 = 0xBE19999A00000000;
    v27 = 0xBE19999A00000000;
    v28 = 0;
    v29 = 0;
    v19 = *(&v26 + v11);
    v25 = xmmword_10004F850;
    v20 = *(&v25 + v11);
  }

  *v1 = v19;
  *v22 = v20;
  v24 = xmmword_10004F810;
  v21 = 0;
  if (v11 <= 3)
  {
    v21 = *(&v24 + v11);
  }

  *v23 = v21;
}

void __vfx_script_clouds_graph_79()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[2];
  v30 = v1;
  v31 = arguments_buffer[1];
  v29 = arguments_buffer[3];
  v2 = arguments_buffer[4];
  v28 = arguments_buffer[5];
  v3 = arguments_buffer[6];
  v4 = arguments_buffer[7];
  v5 = arguments_buffer[8];
  v6 = arguments_buffer[9];
  v8 = arguments_buffer[10];
  v7 = arguments_buffer[11];
  v9 = arguments_buffer[12];
  v10 = arguments_buffer[13];
  v12 = arguments_buffer[14];
  v11 = arguments_buffer[15];
  v13 = **arguments_buffer;
  v51 = xmmword_10004F820;
  v52 = vdup_n_s32(0xC2B40000);
  v14 = 0.0;
  v15 = 0;
  v16 = *v2;
  if (v13 <= 5)
  {
    v15 = *(&v51 + v13);
  }

  *v11 = v15;
  v49 = xmmword_10004F790;
  v50 = 1119092736;
  if (v13 <= 4)
  {
    v14 = *(&v49 + v13) * 0.017453;
  }

  *v12 = __sincosf_stret(v14);
  v48[0] = 0x3F8000003E4CCCCDLL;
  v48[1] = 0x3F8000003E4CCCCDLL;
  v48[2] = 0x3F80000000000000;
  v48[3] = 0x3F8000003E99999ALL;
  v48[4] = 0x3F6666663E99999ALL;
  v48[5] = 0x3F4CCCCD3E4CCCCDLL;
  v17 = 0;
  if (v13 <= 5)
  {
    v17 = v48[v13];
  }

  *v10 = v17;
  v47[0] = 0x4000000000000000;
  v47[1] = 0x4000000000000000;
  v47[2] = 0x4000000000000000;
  v47[3] = 0x4000000000000000;
  v47[4] = 0x4080000000000000;
  v47[5] = 0x4000000000000000;
  if (v13 > 5)
  {
    *v9 = 0;
    v45 = xmmword_10004F7F0;
    v46 = 0x4000000040000000;
    v18 = 0;
  }

  else
  {
    *v9 = v47[v13];
    v45 = xmmword_10004F7F0;
    v46 = 0x4000000040000000;
    v18 = *(&v45 + v13);
  }

  *v7 = v18;
  *v8 = v13;
  __asm { FMOV            V1.4S, #1.0 }

  v44[0] = _Q1;
  v44[1] = _Q1;
  v44[2] = _Q1;
  v44[3] = _Q1;
  v44[4] = xmmword_10004F860;
  v44[5] = _Q1;
  v24 = 0uLL;
  if (v13 <= 5)
  {
    v24 = v44[v13];
  }

  *v6 = v24;
  v43[0] = 0x3ECCCCCD00000000;
  v43[1] = 0x3ECCCCCD00000000;
  v43[2] = 0x3F19999A00000000;
  v43[3] = 0x3F19999A00000000;
  v43[4] = 0x3F80000000000000;
  v43[5] = 0x3F00000000000000;
  v25 = 0;
  if (v13 <= 5)
  {
    v25 = v43[v13];
  }

  *v5 = v25;
  v42[0] = vdup_n_s32(0x3CCCCCCDu);
  v42[1] = v42[0];
  v42[2] = vdup_n_s32(0x3C23D70Au);
  v42[3] = 0x3CCCCCCDBCCCCCCDLL;
  v42[4] = 0x3C23D70ABC23D70ALL;
  v42[5] = 0x3C23D70ABC23D70ALL;
  if (v13 > 5)
  {
    v26 = 0;
    *v4 = 0;
    v41 = 0x3D0F5C293DCCCCCDLL;
    *v3 = 0;
    *v28 = v16;
    v36 = 0xBE19999A00000000;
    v37 = 0xBE19999A00000000;
    v38 = 0u;
    v39 = 0u;
    v40 = xmmword_10004F7B0;
  }

  else
  {
    *v4 = v42[v13];
    v40 = xmmword_10004F7B0;
    v41 = 0x3D0F5C293DCCCCCDLL;
    *v3 = *(&v40 + v13);
    *v28 = v16;
    v36 = 0xBE19999A00000000;
    v37 = 0xBE19999A00000000;
    v38 = 0u;
    v39 = 0u;
    v26 = *(&v36 + v13);
  }

  *v29 = v26;
  v34 = xmmword_10004F840;
  v35 = 0xBDCCCCCDBECCCCCDLL;
  if (v13 > 5)
  {
    *v30 = 0;
    v32 = xmmword_10004F810;
    v33 = 0x3F3AE1483E99999ALL;
    v27 = 0;
  }

  else
  {
    *v30 = *(&v34 + v13);
    v32 = xmmword_10004F810;
    v33 = 0x3F3AE1483E99999ALL;
    v27 = *(&v32 + v13);
  }

  *v31 = v27;
}

void __vfx_script_clouds_graph_80()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[2];
  v30 = v1;
  v31 = arguments_buffer[1];
  v29 = arguments_buffer[3];
  v2 = arguments_buffer[4];
  v28 = arguments_buffer[5];
  v3 = arguments_buffer[6];
  v4 = arguments_buffer[7];
  v5 = arguments_buffer[8];
  v6 = arguments_buffer[9];
  v8 = arguments_buffer[10];
  v7 = arguments_buffer[11];
  v9 = arguments_buffer[12];
  v10 = arguments_buffer[13];
  v12 = arguments_buffer[14];
  v11 = arguments_buffer[15];
  v13 = **arguments_buffer;
  v51 = xmmword_10004F820;
  v52 = vdup_n_s32(0xC2B40000);
  v14 = 0.0;
  v15 = 0;
  v16 = *v2;
  if (v13 <= 5)
  {
    v15 = *(&v51 + v13);
  }

  *v11 = v15;
  v49 = xmmword_10004F790;
  v50 = 1119092736;
  if (v13 <= 4)
  {
    v14 = *(&v49 + v13) * 0.017453;
  }

  *v12 = __sincosf_stret(v14);
  v48[0] = 0x3F8000003E4CCCCDLL;
  v48[1] = 0x3F8000003E4CCCCDLL;
  v48[2] = 0x3F80000000000000;
  v48[3] = 0x3F8000003E99999ALL;
  v48[4] = 0x3F66666600000000;
  v48[5] = 0x3F4CCCCD3E4CCCCDLL;
  v17 = 0;
  if (v13 <= 5)
  {
    v17 = v48[v13];
  }

  *v10 = v17;
  v47[0] = 0x4000000000000000;
  v47[1] = 0x4000000000000000;
  v47[2] = 0x4000000000000000;
  v47[3] = 0x4000000000000000;
  v47[4] = 0x4080000000000000;
  v47[5] = 0x4000000000000000;
  if (v13 > 5)
  {
    *v9 = 0;
    v45 = xmmword_10004F7F0;
    v46 = 0x4000000040000000;
    v18 = 0;
  }

  else
  {
    *v9 = v47[v13];
    v45 = xmmword_10004F7F0;
    v46 = 0x4000000040000000;
    v18 = *(&v45 + v13);
  }

  *v7 = v18;
  *v8 = v13;
  __asm { FMOV            V1.4S, #1.0 }

  v44[0] = _Q1;
  v44[1] = _Q1;
  v44[2] = _Q1;
  v44[3] = _Q1;
  v44[4] = _Q1;
  v44[5] = xmmword_10004F830;
  v24 = 0uLL;
  if (v13 <= 5)
  {
    v24 = v44[v13];
  }

  *v6 = v24;
  v43[0] = 0x3ECCCCCD00000000;
  v43[1] = 0x3ECCCCCD00000000;
  v43[2] = 0x3F19999A00000000;
  v43[3] = 0x3F19999A00000000;
  v43[4] = 0x3F80000000000000;
  v43[5] = 0x3F00000000000000;
  v25 = 0;
  if (v13 <= 5)
  {
    v25 = v43[v13];
  }

  *v5 = v25;
  v42[0] = vdup_n_s32(0x3CCCCCCDu);
  v42[1] = v42[0];
  v42[2] = vdup_n_s32(0x3C23D70Au);
  v42[3] = 0x3CCCCCCDBCCCCCCDLL;
  v42[4] = 0x3C23D70ABC23D70ALL;
  v42[5] = 0x3C23D70ABC23D70ALL;
  if (v13 > 5)
  {
    v26 = 0;
    *v4 = 0;
    v41 = 0x3D0F5C293DCCCCCDLL;
    *v3 = 0;
    *v28 = v16;
    v36 = 0xBE19999A00000000;
    v37 = 0xBE19999A00000000;
    v38 = 0u;
    v39 = 0u;
    v40 = xmmword_10004F7B0;
  }

  else
  {
    *v4 = v42[v13];
    v40 = xmmword_10004F7B0;
    v41 = 0x3D0F5C293DCCCCCDLL;
    *v3 = *(&v40 + v13);
    *v28 = v16;
    v36 = 0xBE19999A00000000;
    v37 = 0xBE19999A00000000;
    v38 = 0u;
    v39 = 0u;
    v26 = *(&v36 + v13);
  }

  *v29 = v26;
  v34 = xmmword_10004F840;
  v35 = 0xBDCCCCCDBECCCCCDLL;
  if (v13 > 5)
  {
    *v30 = 0;
    v32 = xmmword_10004F810;
    v33 = 0x3F3AE1483E99999ALL;
    v27 = 0;
  }

  else
  {
    *v30 = *(&v34 + v13);
    v32 = xmmword_10004F810;
    v33 = 0x3F3AE1483E99999ALL;
    v27 = *(&v32 + v13);
  }

  *v31 = v27;
}

uint64_t __vfx_script_clouds_trigger_68()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  v0 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  v1 = vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  *v1;
  vfx_script_string_create();
  [v0 qword_100071300];

  return vfx_script_string_destroy();
}

uint64_t __vfx_script_clouds_trigger_69()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 16);
  v2 = *(arguments_buffer + 24);
  v3 = *(arguments_buffer + 32);
  v4 = *(arguments_buffer + 48);
  v5 = **(arguments_buffer + 8);
  result = vfx_script_graph_log();
  if (v5 <= 5)
  {
    v7 = (&off_100065548)[v5];
    vfx_script_string_create();
    [v4 qword_100071300];
    *v3 = 1;
    *v2 = fmaxf(*v2, 5.0);
    vfx_script_string_create();
    [v1 qword_100071300];
    vfx_script_tick();
    vfx_script_string_destroy();
    return vfx_script_string_destroy();
  }

  return result;
}

uint64_t __vfx_script_clouds_trigger_70()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 8);
  v1 = *(arguments_buffer + 16);
  **(arguments_buffer + 24) = 1;
  *v1 = fmaxf(*v1, 5.0);
  vfx_script_string_create();
  [v2 qword_100071300];
  vfx_script_graph_log();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_clouds_trigger_71()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 16);
  v2 = *(result + 24);
  v3 = *(result + 32);
  v4 = *(result + 40);
  v5 = **(result + 8);
  if (v5 <= 2)
  {
    if (v5 > 2)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v5 == 3 || v5 == 4 || v5 == 5)
  {
LABEL_9:
    vfx_script_string_create();
    [v4 qword_100071300];
    vfx_script_clock_time();
    vfx_script_graph_log();
    *v3 = 1;
    *v2 = fmaxf(*v2, 5.0);
    vfx_script_string_create();
    [v1 qword_100071300];
    vfx_script_string_destroy();
    return vfx_script_string_destroy();
  }

  return result;
}

uint64_t __vfx_script_clouds_trigger_73()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[1];
  v2 = arguments_buffer[2];
  v4 = arguments_buffer[3];
  v3 = arguments_buffer[4];
  vfx_script_string_create();
  [v3 qword_100071300];
  vfx_script_clock_time();
  vfx_script_graph_log();
  *v4 = 1;
  *v2 = fmaxf(*v2, 5.0);
  vfx_script_string_create();
  [v1 qword_100071300];
  vfx_script_string_destroy();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_clouds_trigger_74()
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  v0 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_string_create();
  [v0 qword_100071300];

  return vfx_script_string_destroy();
}

void sub_100006AE4(id a1)
{
  qword_100071180 = sel_registerName("setValue:forKeyPath:");
  qword_100071188 = sel_registerName("valueForKeyPath:");
  qword_100071190 = objc_lookUpClass("NSString");
  qword_100071198 = sel_registerName("stringWithUTF8String:");
  qword_1000711A0 = objc_lookUpClass("VFXTransaction");
  qword_1000711A8 = sel_registerName("begin");
  qword_1000711B0 = sel_registerName("setAnimationDurationAsFloat:");
  qword_1000711B8 = sel_registerName("commit");
  qword_1000711C0 = objc_lookUpClass("NSDictionary");
  qword_1000711C8 = objc_lookUpClass("NSMutableDictionary");
  qword_1000711D0 = sel_registerName("dictionary");
  qword_1000711D8 = sel_registerName("setValue:forKey:");
  qword_1000711E0 = sel_registerName("setObject:forKey:");
  qword_1000711E8 = objc_lookUpClass("NSValue");
  qword_1000711F0 = objc_lookUpClass("NSNumber");
  qword_1000711F8 = sel_registerName("numberWithBool:");
  qword_100071200 = sel_registerName("numberWithFloat:");
  qword_100071208 = sel_registerName("numberWithUnsignedInteger:");
  qword_100071210 = sel_registerName("firstObject");
  qword_100071218 = sel_registerName("count");
  qword_100071220 = objc_lookUpClass("VFXNode");
  qword_100071228 = sel_registerName("addAnimationAsset:forKey:");
  qword_100071230 = sel_registerName("removeAllAnimations");
  qword_100071238 = sel_registerName("removeAnimationForKey:");
  qword_100071240 = sel_registerName("script_rootNode");
  qword_100071248 = sel_registerName("clone");
  qword_100071250 = sel_registerName("parentNode");
  qword_100071258 = sel_registerName("addChildNode:");
  qword_100071260 = sel_registerName("childNodes");
  qword_100071268 = sel_registerName("deepClone");
  qword_100071270 = sel_registerName("insertChildNode:atIndex:");
  qword_100071278 = sel_registerName("removeFromParentNode");
  qword_100071280 = sel_registerName("childNodeWithName:");
  qword_100071288 = sel_registerName("convertPosition:fromNode:");
  qword_100071290 = sel_registerName("convertVector:fromNode:");
  qword_100071298 = sel_registerName("convertTransform:fromNode:");
  qword_1000712A0 = sel_registerName("convertPosition:toNode:");
  qword_1000712A8 = sel_registerName("convertVector:toNode:");
  qword_1000712B0 = sel_registerName("convertTransform:toNode:");
  qword_1000712B8 = sel_registerName("localTranslateBy:");
  qword_1000712C0 = sel_registerName("localRotateBy:");
  qword_1000712C8 = sel_registerName("rotateBy:aroundTarget:");
  qword_1000712D0 = sel_registerName("projectPoint:");
  qword_1000712D8 = sel_registerName("unprojectPoint:");
  qword_1000712E0 = sel_registerName("script_hitTest:options:");
  qword_1000712E8 = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  qword_1000712F0 = sel_registerName("node");
  qword_1000712F8 = sel_registerName("setState:");
  qword_100071300 = sel_registerName("setStateNamed:");
  qword_100071308 = sel_registerName("_contentsScaleFactor");
  qword_100071310 = sel_registerName("_screenSize");
  qword_100071318 = sel_registerName("physicsBody");
  qword_100071320 = sel_registerName("script_instantiate:");
  qword_100071328 = sel_registerName("geometryIndex");
  qword_100071330 = sel_registerName("faceIndex");
  qword_100071338 = sel_registerName("localCoordinates");
  qword_100071340 = sel_registerName("worldCoordinates");
  qword_100071348 = sel_registerName("localNormal");
  qword_100071350 = sel_registerName("worldNormal");
  qword_100071358 = sel_registerName("modelTransform");
  qword_100071360 = sel_registerName("boneNode");
  qword_100071368 = sel_registerName("uv0");
  qword_100071370 = sel_registerName("presentationBoneNode");
  qword_100071378 = sel_registerName("presentationNode");
  qword_100071380 = sel_registerName("applyForce:impulse:");
  qword_100071388 = sel_registerName("applyForce:atPosition:impulse:");
  qword_100071390 = sel_registerName("applyTorque:impulse:");
  qword_100071398 = sel_registerName("presentationObject");
}

float __vfx_script_Aurora_graph_20()
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *arguments_buffer;
  v2 = *(arguments_buffer + 8);
  v4 = *(arguments_buffer + 16);
  v3 = *(arguments_buffer + 24);
  v5 = *(arguments_buffer + 32);
  v6 = *(arguments_buffer + 40);
  v7 = *(arguments_buffer + 48);
  v8 = *(arguments_buffer + 56);
  v9 = *(arguments_buffer + 64);
  v10 = *(arguments_buffer + 72);
  v11 = *(arguments_buffer + 80);
  v12 = *v1;
  v13 = *v4;
  v14 = *v5;
  v15 = *v8;
  v16.f32[0] = *v4 + -0.5;
  v16.f32[1] = *v4;
  __asm { FMOV            V5.2S, #1.0 }

  v22 = vminnm_f32(vmaxnm_f32(vadd_f32(v16, v16), 0), _D5);
  __asm { FMOV            V7.2S, #3.0 }

  v24 = vmul_f32(vmul_f32(v22, v22), vmla_f32(_D7, 0xC0000000C0000000, v22));
  v25 = vmla_f32(0x3C23D70A3E19999ALL, 0x3E0F5C293EB33333, v24);
  v26 = 0.0;
  if (*v4 >= 0.5)
  {
    v26 = 1.0;
  }

  v27 = *v2;
  *v11 = v25.f32[1] + ((v25.f32[0] - v25.f32[1]) * v26);
  *v10 = v13;
  *v9 = v15;
  *v7 = v12 + v27;
  *v6 = v14;
  v28 = vmla_f32(0x401841893FE00000, 0xBF210624BFE00000, v24);
  result = v28.f32[1] + ((v28.f32[0] - v28.f32[1]) * v26);
  *v3 = result;
  return result;
}

float __vfx_script_Aurora_graph_21()
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 8);
  v2 = *(arguments_buffer + 16);
  v3 = *(arguments_buffer + 24);
  v4 = **arguments_buffer;
  v5 = 1.0;
  if (v4 < 0.5)
  {
    v5 = 0.0;
  }

  v6.i32[1] = **arguments_buffer;
  v6.f32[0] = v4 + -0.5;
  v7 = vmaxnm_f32(vadd_f32(v6, v6), 0);
  __asm { FMOV            V3.2S, #1.0 }

  v13 = vminnm_f32(v7, _D3);
  __asm { FMOV            V5.2S, #3.0 }

  _D2 = vmul_f32(vmul_f32(v13, v13), vmla_f32(_D5, 0xC0000000C0000000, v13));
  _Q4 = vmlaq_lane_f32(xmmword_10004FA80, xmmword_10004FA70, _D2, 1);
  **(arguments_buffer + 32) = vmlaq_n_f32(_Q4, vsubq_f32(vmlaq_n_f32(xmmword_10004FAA0, xmmword_10004FA90, _D2.f32[0]), _Q4), v5);
  *_Q4.f32 = vmla_f32(0x3FB333333F99999ALL, 0xBE4CCCC8BDCCCCD0, _D2);
  *v3 = _Q4.f32[1] + ((_Q4.f32[0] - _Q4.f32[1]) * v5);
  _D3.i32[0] = 1036831936;
  __asm { FMLA            S4, S3, V2.S[1] }

  *v2 = _Q4.f32[0] + ((((_D2.f32[0] * 0.0) + 1.3) - _Q4.f32[0]) * v5);
  _D3.i32[0] = 0;
  __asm { FMLA            S3, S3, V2.S[1] }

  result = _D3.f32[0] + ((((_D2.f32[0] * 0.187) + 0.0) - _D3.f32[0]) * v5);
  *v1 = result;
  return result;
}

float __vfx_script_Aurora_graph_24()
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v4 = *(arguments_buffer + 56);
  v5 = *(arguments_buffer + 64);
  v6 = *(arguments_buffer + 72);
  v7 = *(arguments_buffer + 80);
  v9 = *(arguments_buffer + 88);
  v8 = *(arguments_buffer + 96);
  v10 = *(arguments_buffer + 112);
  v11 = *(arguments_buffer + 120);
  v12 = *(arguments_buffer + 128);
  v13 = **(arguments_buffer + 48);
  v14 = **(arguments_buffer + 104);
  if (**(arguments_buffer + 40) == 1)
  {
    v74 = *(arguments_buffer + 16);
    v75 = *(arguments_buffer + 120);
    v15 = **(arguments_buffer + 8);
    v16 = *(arguments_buffer + 32);
    v17 = **(arguments_buffer + 24);
    vfx_script_clock_time();
    *&v18 = v18;
    v19 = fmaxf(*&v18 - v15, 0.0);
    *&v18 = fabsf((v19 / 2.625) + -0.5);
    v20 = powf(*&v18 + *&v18, 1.25);
    v21 = expf((v20 * v20) * -8.0) * 0.5;
    vfx_script_clock_delta_time();
    v11 = v75;
    *v16 = *v16 + (v22 * v21);
    v23 = (1.0 - 1.0 / (((v19 / 3.5) * (v19 / 3.5)) * 4.0 + 1.0)) * 1.25;
    v24 = 1.0 - fminf(fmaxf(v23, 0.0), 1.0);
    if (v17 >= 100.0)
    {
      v23 = v24;
    }

    *v74 = v23;
  }

  v25 = fminf(fmaxf(v13 + v13, 0.0), 1.0);
  *v1.i32 = (v25 * v25) * ((v25 * -2.0) + 3.0);
  v26 = vdupq_lane_s32(v1, 0).u64[0];
  *v2.i32 = fminf(fmaxf((v13 + -0.5) + (v13 + -0.5), 0.0), 1.0);
  *v2.i32 = (*v2.i32 * *v2.i32) * ((*v2.i32 * -2.0) + 3.0);
  v27 = vdupq_lane_s32(v2, 0).u64[0];
  v28 = vmlaq_n_f32(xmmword_10004FAC0, xmmword_10004FAB0, *v1.i32);
  v29 = vmlaq_n_f32(xmmword_10004FAE0, xmmword_10004FAD0, *v2.i32);
  if (v13 < 0.5)
  {
    *v3.i32 = 0.0;
  }

  else
  {
    *v3.i32 = 1.0;
  }

  v30 = vdupq_lane_s32(v3, 0).u64[0];
  *v8 = vmlaq_n_f32(v28, vsubq_f32(v29, v28), *v3.i32);
  v31 = vmlaq_n_f32(xmmword_10004FB00, xmmword_10004FAF0, *v1.i32);
  *v9 = vmlaq_n_f32(v31, vsubq_f32(vmlaq_n_f32(xmmword_10004FB20, xmmword_10004FB10, *v2.i32), v31), *v3.i32);
  v32 = vmlaq_n_f32(xmmword_10004FB40, xmmword_10004FB30, *v1.i32);
  *v7 = vmlaq_n_f32(v32, vsubq_f32(vmlaq_n_f32(xmmword_10004FB60, xmmword_10004FB50, *v2.i32), v32), *v3.i32);
  v33 = vmla_f32(0xBF43D70A3F800000, 0, v26);
  *v6 = vmla_f32(v33, v30, vsub_f32(vmla_f32(0xBF43D70A3F800000, 0x3F43D70ABF800000, v27), v33));
  v34 = vmla_f32(0x3FA000003F12B021, 0, v26);
  *v5 = vmla_f32(v34, v30, vsub_f32(vmla_f32(0x3FA000003F12B021, 0x3E0CCCD03D244A60, v27), v34));
  v35 = vmla_f32(0x3CA3D70A3F256042, 0x3DF9DB24BF92B021, v26);
  v36 = vsub_f32(vmla_f32(0x3E116873BF000000, 0xBE1168733F000000, v27), v35);
  *v4 = vmla_f32(v35, v30, v36);
  v36.f32[0] = *v10 * 0.5;
  v37 = vdupq_lane_s32(v36, 0);
  v38 = v37;
  v38.i32[3] = 0;
  v39 = vrndmq_f32(v38);
  v40 = vsubq_f32(v37, v39);
  v40.i32[3] = 0;
  v41 = vminnmq_f32(v40, xmmword_10004F710);
  _Q5.i64[0] = 0xC0000000C0000000;
  _Q5.i64[1] = 0xC0000000C0000000;
  __asm { FMOV            V6.4S, #3.0 }

  _Q3 = vmulq_f32(vmulq_f32(v41, v41), vmlaq_f32(_Q6, _Q5, v41));
  v49 = vaddq_f32(v39, 0);
  v50 = vaddq_f32(v39, xmmword_10004F720);
  v51 = vaddq_f32(v39, xmmword_10004F730);
  _Q4 = vaddq_f32(v39, xmmword_10004F740);
  v53 = vaddq_f32(v39, xmmword_10004F750);
  *_Q5.f32 = vdup_n_s32(0x3EA2F984u);
  *_Q6.f32 = vdup_n_s32(0x3DCCCCCDu);
  v54 = vmla_f32(*_Q6.f32, *_Q5.f32, vzip1_s32(*v53.i8, *v49.i8));
  v55 = vmla_f32(*_Q6.f32, *_Q5.f32, vzip2_s32(*v53.i8, *v49.i8));
  v56 = vaddq_f32(v39, xmmword_10004F760);
  v57 = vmla_f32(*_Q6.f32, *_Q5.f32, vzip1_s32(*v56.i8, *v50.i8));
  v58 = vmla_f32(*_Q6.f32, *_Q5.f32, vzip2_s32(*v56.i8, *v50.i8));
  v59 = vaddq_f32(v39, xmmword_10004F770);
  v60 = vmla_f32(*_Q6.f32, *_Q5.f32, vzip1_s32(*v59.i8, *v51.i8));
  v61 = vmla_f32(*_Q6.f32, *_Q5.f32, vzip2_s32(*v59.i8, *v51.i8));
  __asm { FMOV            V18.4S, #1.0 }

  v63 = vaddq_f32(v39, _Q18);
  v64 = vmla_f32(*_Q6.f32, *_Q5.f32, vzip1_s32(*v63.i8, *_Q4.i8));
  v65 = vmla_f32(*_Q6.f32, *_Q5.f32, vzip2_s32(*v63.i8, *_Q4.i8));
  *v39.f32 = vdup_n_s32(0x3F7FFFFFu);
  v66 = vminnm_f32(vsub_f32(v54, vrndm_f32(v54)), *v39.f32);
  __asm { FMOV            V19.2S, #17.0 }

  v68 = vmul_f32(v66, _D19);
  v69 = vmul_f32(vminnm_f32(vsub_f32(v55, vrndm_f32(v55)), *v39.f32), _D19);
  *v53.i8 = vmla_f32(*_Q6.f32, *_Q5.f32, *&vzip2q_s32(v53, v49));
  *v49.i8 = vmul_f32(vminnm_f32(vsub_f32(*v53.i8, vrndm_f32(*v53.i8)), *v39.f32), _D19);
  *v49.i8 = vmul_f32(vmul_f32(*v49.i8, vmul_f32(v68, v69)), vadd_f32(*v49.i8, vadd_f32(v68, v69)));
  *v49.i8 = vminnm_f32(vsub_f32(*v49.i8, vrndm_f32(*v49.i8)), *v39.f32);
  *v53.i8 = vmul_f32(vminnm_f32(vsub_f32(v57, vrndm_f32(v57)), *v39.f32), _D19);
  v70 = vmul_f32(vminnm_f32(vsub_f32(v58, vrndm_f32(v58)), *v39.f32), _D19);
  *v56.i8 = vmla_f32(*_Q6.f32, *_Q5.f32, *&vzip2q_s32(v56, v50));
  *v50.i8 = vmul_f32(vminnm_f32(vsub_f32(*v56.i8, vrndm_f32(*v56.i8)), *v39.f32), _D19);
  *v50.i8 = vmul_f32(vmul_f32(*v50.i8, vmul_f32(*v53.i8, v70)), vadd_f32(*v50.i8, vadd_f32(*v53.i8, v70)));
  *v49.i8 = vmla_n_f32(*v49.i8, vsub_f32(vminnm_f32(vsub_f32(*v50.i8, vrndm_f32(*v50.i8)), *v39.f32), *v49.i8), _Q3.f32[0]);
  *v50.i8 = vmul_f32(vminnm_f32(vsub_f32(v60, vrndm_f32(v60)), *v39.f32), _D19);
  v71 = vmul_f32(vminnm_f32(vsub_f32(v61, vrndm_f32(v61)), *v39.f32), _D19);
  *v59.i8 = vmla_f32(*_Q6.f32, *_Q5.f32, *&vzip2q_s32(v59, v51));
  *v51.i8 = vmul_f32(vminnm_f32(vsub_f32(*v59.i8, vrndm_f32(*v59.i8)), *v39.f32), _D19);
  *v51.i8 = vmul_f32(vmul_f32(*v51.i8, vmul_f32(*v50.i8, v71)), vadd_f32(*v51.i8, vadd_f32(*v50.i8, v71)));
  *v51.i8 = vminnm_f32(vsub_f32(*v51.i8, vrndm_f32(*v51.i8)), *v39.f32);
  *v50.i8 = vmul_f32(vminnm_f32(vsub_f32(v64, vrndm_f32(v64)), *v39.f32), _D19);
  *v59.i8 = vmul_f32(vminnm_f32(vsub_f32(v65, vrndm_f32(v65)), *v39.f32), _D19);
  *_Q6.f32 = vmla_f32(*_Q6.f32, *_Q5.f32, *&vzip2q_s32(v63, _Q4));
  *_Q4.i8 = vmul_f32(vminnm_f32(vsub_f32(*_Q6.f32, vrndm_f32(*_Q6.f32)), *v39.f32), _D19);
  *_Q4.i8 = vmul_f32(vmul_f32(*_Q4.i8, vmul_f32(*v50.i8, *v59.i8)), vadd_f32(*_Q4.i8, vadd_f32(*v50.i8, *v59.i8)));
  *v49.i8 = vmla_lane_f32(*v49.i8, vsub_f32(vmla_n_f32(*v51.i8, vsub_f32(vminnm_f32(vsub_f32(*_Q4.i8, vrndm_f32(*_Q4.i8)), *v39.f32), *v51.i8), _Q3.f32[0]), *v49.i8), *_Q3.f32, 1);
  _Q5.f32[0] = *v49.i32 - *&v49.i32[1];
  __asm { FMLA            S4, S5, V3.S[2] }

  v72 = fminf(fmaxf((*_Q4.i32 + 1.0) * 0.5, 0.0), 1.0);
  *v12 = (v72 * 0.2) + 0.15;
  result = (v72 * 0.5) + 0.25;
  *v11 = result;
  *v10 = v14;
  return result;
}

uint64_t __vfx_script_Aurora_graph_25()
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  v0 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_clock_delta_time();
  [v0 qword_1000715C0];
  vfx_script_get_ecs_value();
  vfx_script_set_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  return vfx_script_set_ecs_value();
}

uint64_t __vfx_script_Aurora_graph_26()
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  [*(vfx_script_get_arguments_buffer() + 8) qword_1000715C0];
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  return vfx_script_get_ecs_value();
}

uint64_t __vfx_script_Aurora_graph_29()
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 8);
  v1 = *(arguments_buffer + 16);
  v3 = *(arguments_buffer + 24);
  v4 = **(arguments_buffer + 32);
  result = vfx_script_clock_delta_time();
  v7 = fmaxf(*v3 - v6, 0.0);
  *v3 = v7;
  if (v7 <= 0.0 && (v4 & 1) == 0 && *v2 == 1)
  {
    vfx_script_string_create();
    [v1 qword_100071528];
    *v2 = 0;
    vfx_script_graph_log();
    return vfx_script_string_destroy();
  }

  return result;
}

_DWORD **__vfx_script_Aurora_trigger_22()
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  result = vfx_script_get_arguments_buffer();
  **result = 1;
  return result;
}

_DWORD **__vfx_script_Aurora_trigger_23()
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  result = vfx_script_get_arguments_buffer();
  **result = 1;
  return result;
}

uint64_t __vfx_script_Aurora_trigger_27()
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 8);
  v1 = *(arguments_buffer + 16);
  **(arguments_buffer + 24) = 1;
  *v1 = fmaxf(*v1, 5.0);
  vfx_script_string_create();
  [v2 qword_100071528];
  vfx_script_graph_log();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Aurora_trigger_28()
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[1];
  v2 = arguments_buffer[2];
  v4 = arguments_buffer[3];
  v3 = arguments_buffer[4];
  vfx_script_string_create();
  [v3 qword_100071528];
  vfx_script_clock_time();
  vfx_script_graph_log();
  *v4 = 1;
  *v2 = fmaxf(*v2, 5.0);
  vfx_script_string_create();
  [v1 qword_100071528];
  vfx_script_string_destroy();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Aurora_trigger_30()
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[1];
  v2 = arguments_buffer[2];
  v3 = arguments_buffer[3];
  v4 = arguments_buffer[5];
  *arguments_buffer[7] = *arguments_buffer[6];
  vfx_script_clock_time();
  *&v5 = v5;
  *v4 = LODWORD(v5);
  vfx_script_graph_log();
  *v3 = 1;
  *v2 = fmaxf(*v2, 5.0);
  vfx_script_string_create();
  [v1 qword_100071528];
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Aurora_trigger_31()
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[1];
  v2 = arguments_buffer[2];
  v4 = arguments_buffer[3];
  v3 = arguments_buffer[4];
  vfx_script_string_create();
  [v3 qword_100071528];
  vfx_script_clock_time();
  vfx_script_graph_log();
  *v4 = 1;
  *v2 = fmaxf(*v2, 5.0);
  vfx_script_string_create();
  [v1 qword_100071528];
  vfx_script_string_destroy();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Aurora_trigger_32()
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  v0 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  v1 = vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  *v1;
  vfx_script_string_create();
  [v0 qword_100071528];

  return vfx_script_string_destroy();
}

void sub_100008204(id a1)
{
  qword_1000713A8 = sel_registerName("setValue:forKeyPath:");
  qword_1000713B0 = sel_registerName("valueForKeyPath:");
  qword_1000713B8 = objc_lookUpClass("NSString");
  qword_1000713C0 = sel_registerName("stringWithUTF8String:");
  qword_1000713C8 = objc_lookUpClass("VFXTransaction");
  qword_1000713D0 = sel_registerName("begin");
  qword_1000713D8 = sel_registerName("setAnimationDurationAsFloat:");
  qword_1000713E0 = sel_registerName("commit");
  qword_1000713E8 = objc_lookUpClass("NSDictionary");
  qword_1000713F0 = objc_lookUpClass("NSMutableDictionary");
  qword_1000713F8 = sel_registerName("dictionary");
  qword_100071400 = sel_registerName("setValue:forKey:");
  qword_100071408 = sel_registerName("setObject:forKey:");
  qword_100071410 = objc_lookUpClass("NSValue");
  qword_100071418 = objc_lookUpClass("NSNumber");
  qword_100071420 = sel_registerName("numberWithBool:");
  qword_100071428 = sel_registerName("numberWithFloat:");
  qword_100071430 = sel_registerName("numberWithUnsignedInteger:");
  qword_100071438 = sel_registerName("firstObject");
  qword_100071440 = sel_registerName("count");
  qword_100071448 = objc_lookUpClass("VFXNode");
  qword_100071450 = sel_registerName("addAnimationAsset:forKey:");
  qword_100071458 = sel_registerName("removeAllAnimations");
  qword_100071460 = sel_registerName("removeAnimationForKey:");
  qword_100071468 = sel_registerName("script_rootNode");
  qword_100071470 = sel_registerName("clone");
  qword_100071478 = sel_registerName("parentNode");
  qword_100071480 = sel_registerName("addChildNode:");
  qword_100071488 = sel_registerName("childNodes");
  qword_100071490 = sel_registerName("deepClone");
  qword_100071498 = sel_registerName("insertChildNode:atIndex:");
  qword_1000714A0 = sel_registerName("removeFromParentNode");
  qword_1000714A8 = sel_registerName("childNodeWithName:");
  qword_1000714B0 = sel_registerName("convertPosition:fromNode:");
  qword_1000714B8 = sel_registerName("convertVector:fromNode:");
  qword_1000714C0 = sel_registerName("convertTransform:fromNode:");
  qword_1000714C8 = sel_registerName("convertPosition:toNode:");
  qword_1000714D0 = sel_registerName("convertVector:toNode:");
  qword_1000714D8 = sel_registerName("convertTransform:toNode:");
  qword_1000714E0 = sel_registerName("localTranslateBy:");
  qword_1000714E8 = sel_registerName("localRotateBy:");
  qword_1000714F0 = sel_registerName("rotateBy:aroundTarget:");
  qword_1000714F8 = sel_registerName("projectPoint:");
  qword_100071500 = sel_registerName("unprojectPoint:");
  qword_100071508 = sel_registerName("script_hitTest:options:");
  qword_100071510 = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  qword_100071518 = sel_registerName("node");
  qword_100071520 = sel_registerName("setState:");
  qword_100071528 = sel_registerName("setStateNamed:");
  qword_100071530 = sel_registerName("_contentsScaleFactor");
  qword_100071538 = sel_registerName("_screenSize");
  qword_100071540 = sel_registerName("physicsBody");
  qword_100071548 = sel_registerName("script_instantiate:");
  qword_100071550 = sel_registerName("geometryIndex");
  qword_100071558 = sel_registerName("faceIndex");
  qword_100071560 = sel_registerName("localCoordinates");
  qword_100071568 = sel_registerName("worldCoordinates");
  qword_100071570 = sel_registerName("localNormal");
  qword_100071578 = sel_registerName("worldNormal");
  qword_100071580 = sel_registerName("modelTransform");
  qword_100071588 = sel_registerName("boneNode");
  qword_100071590 = sel_registerName("uv0");
  qword_100071598 = sel_registerName("presentationBoneNode");
  qword_1000715A0 = sel_registerName("presentationNode");
  qword_1000715A8 = sel_registerName("applyForce:impulse:");
  qword_1000715B0 = sel_registerName("applyForce:atPosition:impulse:");
  qword_1000715B8 = sel_registerName("applyTorque:impulse:");
  qword_1000715C0 = sel_registerName("presentationObject");
}

id convert(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 color];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

float __vfx_script_Ocean_graph_48()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 8);
  v2 = *(arguments_buffer + 16);
  v3 = **arguments_buffer;
  **(arguments_buffer + 24) = vmlaq_n_f32(xmmword_10004FBA0, xmmword_10004FB90, v3);
  *v2 = vmlaq_n_f32(xmmword_10004FBC0, xmmword_10004FBB0, v3);
  result = (v3 * 40.0) + 100.0;
  *v1 = result;
  return result;
}

float __vfx_script_Ocean_graph_49()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 16);
  v2 = **(arguments_buffer + 8);
  **(arguments_buffer + 24) = **arguments_buffer;
  result = v2 + 1.0;
  *v1 = v2 + 1.0;
  return result;
}

float __vfx_script_Ocean_graph_53()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  result = **arguments_buffer;
  *arguments_buffer[1] = result;
  return result;
}

int8x16_t __vfx_script_Ocean_graph_54()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 8);
  v2 = **arguments_buffer;
  **(arguments_buffer + 16) = (v2 * -2000.0) + 2500.0;
  v3 = 1.0;
  v4 = (1.0 - v2) * 0.48812;
  v5 = 1.0;
  if (v4 != 0.0)
  {
    v5 = sinf((1.0 - v2) * 0.48812) / v4;
  }

  if ((v2 * 0.48812) != 0.0)
  {
    v3 = sinf(v2 * 0.48812) / (v2 * 0.48812);
  }

  v6 = vrecpe_f32(1064694885);
  v7 = vmul_f32(v6, vrecps_f32(1064694885, v6));
  v8 = vmul_f32(v7, vrecps_f32(1064694885, v7)).f32[0];
  v9 = vmlaq_n_f32(vmulq_n_f32(xmmword_10004FBD0, v2 * (v3 * v8)), xmmword_10004FBE0, (1.0 - v2) * (v5 * v8));
  v10 = vmulq_f32(v9, v9);
  *v10.i8 = vadd_f32(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
  v11 = vdupq_lane_s32(vadd_f32(*v10.i8, vdup_lane_s32(*v10.i8, 1)), 0);
  v12 = vrsqrteq_f32(v11);
  v13 = vmulq_f32(v12, vrsqrtsq_f32(v11, vmulq_f32(v12, v12)));
  result = vbslq_s8(vceqzq_f32(v11), v9, vmulq_f32(vmulq_f32(v13, vrsqrtsq_f32(v11, vmulq_f32(v13, v13))), v9));
  *v1 = result;
  return result;
}

float __vfx_script_Ocean_graph_55()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  result = **arguments_buffer;
  **(arguments_buffer + 8) = vmlaq_n_f32(xmmword_10004FC00, xmmword_10004FBF0, result);
  return result;
}

float __vfx_script_Ocean_graph_56()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 8);
  v2 = **arguments_buffer;
  **(arguments_buffer + 24) = (**(arguments_buffer + 16) * -0.1) + 0.15;
  result = v2 * 0.1;
  *v1 = result;
  return result;
}

double __vfx_script_Ocean_graph_57()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 16);
  v2 = *(arguments_buffer + 24);
  v3 = *(arguments_buffer + 32);
  v4 = **(arguments_buffer + 8);
  **(arguments_buffer + 40) = **arguments_buffer * 0.5;
  *v3 = (v4 * -0.048) + 1.2;
  result = 0.00304074818;
  *v2 = xmmword_10004FC10;
  *v1 = v4;
  return result;
}

uint64_t __vfx_script_Ocean_graph_58()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  v0 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_clock_delta_time();
  [v0 qword_1000717E8];
  vfx_script_get_ecs_value();
  vfx_script_set_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_set_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  return vfx_script_set_ecs_value();
}

uint64_t __vfx_script_Ocean_graph_59()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 8);
  if (**(result + 56) & 1) != 0 || (v2 = *(result + 24), **(result + 40), *v2, (((**(result + 48) | **(result + 40)) | **(result + 32))) || (*v2 & 1) != 0 || (**(result + 16))
  {
    vfx_script_tick();
    vfx_script_string_create();
    [v1 qword_100071750];

    return vfx_script_string_destroy();
  }

  return result;
}

uint64_t __vfx_script_Ocean_graph_64()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 8);
  v1 = *(arguments_buffer + 16);
  v3 = *(arguments_buffer + 24);
  v4 = **(arguments_buffer + 32);
  result = vfx_script_clock_delta_time();
  v7 = fmaxf(*v3 - v6, 0.0);
  *v3 = v7;
  if (v7 <= 0.0 && (v4 & 1) == 0 && *v2 == 1)
  {
    vfx_script_string_create();
    [v1 qword_100071750];
    *v2 = 0;
    vfx_script_graph_log();
    return vfx_script_string_destroy();
  }

  return result;
}

int8x8_t __vfx_script_Ocean_graph_68()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 48);
  v2 = *(arguments_buffer + 56);
  if (**(arguments_buffer + 40) == 1)
  {
    v3 = *(arguments_buffer + 32);
    v4 = **(arguments_buffer + 24);
    v5 = *(arguments_buffer + 16);
    v6 = **(arguments_buffer + 8);
    vfx_script_clock_time();
    *&v7 = v7;
    *&v7 = fmaxf(*&v7 - v4, 0.0);
    *&v7 = (1.0 - 1.0 / (((*&v7 / 1.8) * (*&v7 / 1.8)) * 4.0 + 1.0)) * 1.25;
    *v3 = (*&v7 * 2.5) + 0.75;
    vfx_script_clock_time();
    *&v8 = v8;
    *&v8 = fminf(fmaxf(*&v8 - v6, 0.0) * 0.5, 1.0);
    *v5 = (sqrtf(1.0 - ((*&v8 + -1.0) * (*&v8 + -1.0))) * 2.5) + 0.75;
  }

  __asm { FMOV            V0.2S, #-10.0 }

  *v2 = -_D0;
  [vfx_script_get_world_renderer() qword_100071760];
  __asm { FMOV            V1.2S, #1.0 }

  result = vbic_s8(vdiv_f32(_D1, v15), vceqz_f32(v15));
  *v1 = result;
  return result;
}

float __vfx_script_Ocean_graph_70()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 16);
  v2 = *(arguments_buffer + 24);
  v3 = *(arguments_buffer + 32);
  v4 = *(arguments_buffer + 40);
  v5 = *(arguments_buffer + 48);
  v6 = *(arguments_buffer + 56);
  v7 = *(arguments_buffer + 64);
  v8 = *(arguments_buffer + 72);
  v9 = *(arguments_buffer + 80);
  v15 = **(arguments_buffer + 8);
  **(arguments_buffer + 88) = (v15 * 0.31) + 1.1;
  [vfx_script_get_world_renderer() qword_100071760];
  v12 = v10 / v11;
  if (v11 == 0.0)
  {
    v12 = 0.0;
  }

  if (v12 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 1.0 / v12;
  }

  *v9 = (fminf(v13, 1.0) * 63.0) + 35.0;
  *v8 = (v15 * -0.008) + 0.108;
  *v7 = vmlaq_n_f32(xmmword_10004FC30, xmmword_10004FC20, v15);
  *v6 = vmlaq_n_f32(xmmword_10004FC50, xmmword_10004FC40, v15);
  *v5 = (v15 * -0.064) + 1.2;
  *v4 = (v15 * -1.5) + 5.0;
  *v3 = (v15 * -0.267) + 0.0;
  *v2 = (v15 * -0.075) + 0.175;
  result = (v15 * 0.5) + 0.5;
  *v1 = result;
  return result;
}

uint64_t __vfx_script_Ocean_trigger_60()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[1];
  v2 = arguments_buffer[2];
  v3 = vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  v4 = arguments_buffer[7];
  *&v5 = *v3;
  __asm { FMOV            V1.2S, #10.0 }

  *&v11 = *v3;
  *(&v11 + 1) = _D1;
  *arguments_buffer[8] = v11;
  *(&v5 + 1) = 0x41A0000042480000;
  *v4 = v5;
  [vfx_script_get_world_renderer() qword_100071760];
  *&v12 = 0;
  *(&v12 + 1) = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(0.35, v13, 1)), v13.u32[0]);
  *v2 = v12;
  vfx_script_string_create();
  [v1 qword_100071750];

  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Ocean_trigger_61()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[1];
  v2 = arguments_buffer[2];
  v3 = arguments_buffer[3];
  v4 = arguments_buffer[5];
  v5 = arguments_buffer[6];
  v6 = arguments_buffer[7];
  vfx_script_string_create();
  [v6 qword_100071750];
  vfx_script_clock_time();
  *&v7 = v7;
  *v5 = LODWORD(v7);
  vfx_script_string_create();
  [v4 qword_100071750];
  vfx_script_string_create();
  [v4 qword_100071750];
  *v3 = 1;
  *v2 = fmaxf(*v2, 5.0);
  vfx_script_string_create();
  [v1 qword_100071750];
  vfx_script_string_destroy();
  vfx_script_string_destroy();
  vfx_script_string_destroy();

  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Ocean_trigger_62()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 8);
  v1 = *(arguments_buffer + 16);
  **(arguments_buffer + 24) = 1;
  *v1 = fmaxf(*v1, 5.0);
  vfx_script_string_create();
  [v2 qword_100071750];
  vfx_script_graph_log();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Ocean_trigger_63()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[1];
  v2 = arguments_buffer[2];
  v3 = arguments_buffer[3];
  v4 = arguments_buffer[6];
  v5 = *arguments_buffer[5];
  __asm { FMOV            V1.4S, #1.0 }

  *arguments_buffer[7] = _Q1;
  *v4 = v5;
  vfx_script_graph_log();
  *v3 = 1;
  *v2 = fmaxf(*v2, 5.0);
  vfx_script_string_create();
  [v1 qword_100071750];
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Ocean_trigger_65()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[1];
  v2 = arguments_buffer[2];
  v3 = arguments_buffer[3];
  v4 = arguments_buffer[5];
  v5 = arguments_buffer[6];
  v6 = arguments_buffer[7];
  vfx_script_string_create();
  [v6 qword_100071750];
  vfx_script_clock_time();
  *&v7 = v7;
  *v5 = LODWORD(v7);
  vfx_script_string_create();
  [v4 qword_100071750];
  vfx_script_string_create();
  [v4 qword_100071750];
  *v3 = 1;
  *v2 = fmaxf(*v2, 5.0);
  vfx_script_string_create();
  [v1 qword_100071750];
  vfx_script_string_destroy();
  vfx_script_string_destroy();
  vfx_script_string_destroy();

  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Ocean_trigger_66()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[1];
  v2 = arguments_buffer[2];
  v3 = arguments_buffer[3];
  v4 = arguments_buffer[6];
  v5 = *arguments_buffer[5];
  __asm { FMOV            V1.4S, #1.0 }

  *arguments_buffer[7] = _Q1;
  *v4 = v5;
  vfx_script_graph_log();
  *v3 = 1;
  *v2 = fmaxf(*v2, 5.0);
  vfx_script_string_create();
  [v1 qword_100071750];
  return vfx_script_string_destroy();
}

_DWORD **__vfx_script_Ocean_trigger_67()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  result = vfx_script_get_arguments_buffer();
  **result = 1;
  return result;
}

_DWORD **__vfx_script_Ocean_trigger_69()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  result = vfx_script_get_arguments_buffer();
  **result = 1;
  return result;
}

uint64_t __vfx_script_Ocean_particleInit_50()
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

void sub_100009DFC(id a1)
{
  qword_1000715D0 = sel_registerName("setValue:forKeyPath:");
  qword_1000715D8 = sel_registerName("valueForKeyPath:");
  qword_1000715E0 = objc_lookUpClass("NSString");
  qword_1000715E8 = sel_registerName("stringWithUTF8String:");
  qword_1000715F0 = objc_lookUpClass("VFXTransaction");
  qword_1000715F8 = sel_registerName("begin");
  qword_100071600 = sel_registerName("setAnimationDurationAsFloat:");
  qword_100071608 = sel_registerName("commit");
  qword_100071610 = objc_lookUpClass("NSDictionary");
  qword_100071618 = objc_lookUpClass("NSMutableDictionary");
  qword_100071620 = sel_registerName("dictionary");
  qword_100071628 = sel_registerName("setValue:forKey:");
  qword_100071630 = sel_registerName("setObject:forKey:");
  qword_100071638 = objc_lookUpClass("NSValue");
  qword_100071640 = objc_lookUpClass("NSNumber");
  qword_100071648 = sel_registerName("numberWithBool:");
  qword_100071650 = sel_registerName("numberWithFloat:");
  qword_100071658 = sel_registerName("numberWithUnsignedInteger:");
  qword_100071660 = sel_registerName("firstObject");
  qword_100071668 = sel_registerName("count");
  qword_100071670 = objc_lookUpClass("VFXNode");
  qword_100071678 = sel_registerName("addAnimationAsset:forKey:");
  qword_100071680 = sel_registerName("removeAllAnimations");
  qword_100071688 = sel_registerName("removeAnimationForKey:");
  qword_100071690 = sel_registerName("script_rootNode");
  qword_100071698 = sel_registerName("clone");
  qword_1000716A0 = sel_registerName("parentNode");
  qword_1000716A8 = sel_registerName("addChildNode:");
  qword_1000716B0 = sel_registerName("childNodes");
  qword_1000716B8 = sel_registerName("deepClone");
  qword_1000716C0 = sel_registerName("insertChildNode:atIndex:");
  qword_1000716C8 = sel_registerName("removeFromParentNode");
  qword_1000716D0 = sel_registerName("childNodeWithName:");
  qword_1000716D8 = sel_registerName("convertPosition:fromNode:");
  qword_1000716E0 = sel_registerName("convertVector:fromNode:");
  qword_1000716E8 = sel_registerName("convertTransform:fromNode:");
  qword_1000716F0 = sel_registerName("convertPosition:toNode:");
  qword_1000716F8 = sel_registerName("convertVector:toNode:");
  qword_100071700 = sel_registerName("convertTransform:toNode:");
  qword_100071708 = sel_registerName("localTranslateBy:");
  qword_100071710 = sel_registerName("localRotateBy:");
  qword_100071718 = sel_registerName("rotateBy:aroundTarget:");
  qword_100071720 = sel_registerName("projectPoint:");
  qword_100071728 = sel_registerName("unprojectPoint:");
  qword_100071730 = sel_registerName("script_hitTest:options:");
  qword_100071738 = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  qword_100071740 = sel_registerName("node");
  qword_100071748 = sel_registerName("setState:");
  qword_100071750 = sel_registerName("setStateNamed:");
  qword_100071758 = sel_registerName("_contentsScaleFactor");
  qword_100071760 = sel_registerName("_screenSize");
  qword_100071768 = sel_registerName("physicsBody");
  qword_100071770 = sel_registerName("script_instantiate:");
  qword_100071778 = sel_registerName("geometryIndex");
  qword_100071780 = sel_registerName("faceIndex");
  qword_100071788 = sel_registerName("localCoordinates");
  qword_100071790 = sel_registerName("worldCoordinates");
  qword_100071798 = sel_registerName("localNormal");
  qword_1000717A0 = sel_registerName("worldNormal");
  qword_1000717A8 = sel_registerName("modelTransform");
  qword_1000717B0 = sel_registerName("boneNode");
  qword_1000717B8 = sel_registerName("uv0");
  qword_1000717C0 = sel_registerName("presentationBoneNode");
  qword_1000717C8 = sel_registerName("presentationNode");
  qword_1000717D0 = sel_registerName("applyForce:impulse:");
  qword_1000717D8 = sel_registerName("applyForce:atPosition:impulse:");
  qword_1000717E0 = sel_registerName("applyTorque:impulse:");
  qword_1000717E8 = sel_registerName("presentationObject");
}

uint64_t sub_10000A360(uint64_t a1)
{
  v2 = v1;
  sub_10004D5EC();
  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v4 = sub_1000330C8(v11);
  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_10000C7F0(*(a1 + 56) + 32 * v4, v12);
  sub_10000CFD0(v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_10004D5EC();
  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v6 = sub_1000330C8(v11);
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_10000C7F0(*(a1 + 56) + 32 * v6, v12);
  sub_10000CFD0(v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:

    goto LABEL_12;
  }

  sub_10004D5EC();
  if (!*(a1 + 16) || (v8 = sub_1000330C8(v11), (v9 & 1) == 0))
  {
LABEL_11:

    sub_10000CFD0(v11);
    goto LABEL_12;
  }

  sub_10000C7F0(*(a1 + 56) + 32 * v8, v12);
  sub_10000CFD0(v11);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    type metadata accessor for KeyboardDataUpdate();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v2 + 16) = 105;
  strcpy((v2 + 20), "duracurve");
  *(v2 + 30) = 0;
  return v2;
}

void sub_10000A584(void *a1)
{
  v3 = [a1 parameters];
  if (v3)
  {
    v4 = v3;
    v5 = *(v1 + 16);
    isa = sub_10004D28C().super.super.isa;
    v7 = sub_10004D05C();
    [v4 setObject:isa forKeyedSubscript:v7];
    swift_unknownObjectRelease();
  }

  v8 = [a1 parameters];
  if (v8)
  {
    v9 = v8;
    v10 = *(v1 + 20);
    v11 = sub_10004D2DC().super.super.isa;
    v12 = sub_10004D05C();
    [v9 setObject:v11 forKeyedSubscript:v12];
    swift_unknownObjectRelease();
  }

  v13 = [a1 parameters];
  if (v13)
  {
    v14 = v13;
    v15 = *(v1 + 24);
    v16 = sub_10004D32C().super.super.isa;
    v17 = sub_10004D05C();
    [v14 setObject:v16 forKeyedSubscript:v17];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10000A778(uint64_t a1)
{
  v2 = v1;
  sub_10004D5EC();
  if (*(a1 + 16) && (v4 = sub_1000330C8(v15), (v5 & 1) != 0))
  {
    sub_10000C7F0(*(a1 + 56) + 32 * v4, v16);
    sub_10000CFD0(v15);
    sub_10000D024(0, &qword_10006E448, NSValue_ptr);
    if (swift_dynamicCast())
    {
      [0xD000000000000016 CGRectValue];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v2[4] = v7;
      v2[5] = v9;
      v2[6] = v11;
      v2[7] = v13;
      return sub_10000A360(a1);
    }
  }

  else
  {

    sub_10000CFD0(v15);
  }

  type metadata accessor for KeyboardFrameDidChangeDataUpdate();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_10000A908(uint64_t a1)
{
  v2 = v1;
  sub_10004D5EC();
  if (*(a1 + 16))
  {
    v4 = sub_1000330C8(v25);
    if (v5)
    {
      sub_10000C7F0(*(a1 + 56) + 32 * v4, v26);
      sub_10000CFD0(v25);
      sub_10000D024(0, &qword_10006E448, NSValue_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_10:

        goto LABEL_9;
      }

      [0x6D6172466D6F7266 CGRectValue];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      sub_10004D5EC();
      if (*(a1 + 16))
      {
        v14 = sub_1000330C8(v25);
        if (v15)
        {
          sub_10000C7F0(*(a1 + 56) + 32 * v14, v26);
          sub_10000CFD0(v25);
          if (swift_dynamicCast())
          {
            [0x656D6172466F74 CGRectValue];
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v23 = v22;

            *(v2 + 32) = v7;
            *(v2 + 40) = v9;
            *(v2 + 48) = v11;
            *(v2 + 56) = v13;
            *(v2 + 64) = 0;
            *(v2 + 72) = v17;
            *(v2 + 80) = v19;
            *(v2 + 88) = v21;
            *(v2 + 96) = v23;
            *(v2 + 104) = 0;
            return sub_10000A360(a1);
          }

          goto LABEL_10;
        }
      }
    }
  }

  sub_10000CFD0(v25);
LABEL_9:
  type metadata accessor for KeyboardVisibilityDataUpdate();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_10000AB30(void *a1)
{
  sub_10000A584(a1);
  v3 = [a1 parameters];
  if (v3)
  {
    v4 = v3;
    if (*(v1 + 64))
    {
      isa = 0;
    }

    else
    {
      v6 = *(v1 + 48);
      v7 = *(v1 + 56);
      v8 = *(v1 + 32);
      v9 = *(v1 + 40);
      isa = sub_10004D4FC().super.isa;
    }

    v10 = sub_10004D05C();
    [v4 setObject:isa forKeyedSubscript:v10];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (*(v1 + 64))
  {
    goto LABEL_11;
  }

  if (*(v1 + 104))
  {
    goto LABEL_11;
  }

  v12 = *(v1 + 48);
  v11 = *(v1 + 56);
  v13 = *(v1 + 32);
  v14 = *(v1 + 40);
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = 0.0;
  v27.size.height = 0.0;
  if (!CGRectEqualToRect(*(v1 + 72), v27))
  {
LABEL_11:
    v18 = [a1 parameters];
    if (!v18)
    {
      return;
    }

    v19 = v18;
    if (*(v1 + 104))
    {
      v20 = 0;
    }

    else
    {
      v21 = *(v1 + 88);
      v22 = *(v1 + 96);
      v23 = *(v1 + 72);
      v24 = *(v1 + 80);
      v20 = sub_10004D4FC().super.isa;
    }

    v25 = sub_10004D05C();
    [v19 setObject:v20 forKeyedSubscript:?];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = [a1 parameters];
    if (!v15)
    {
      return;
    }

    v16 = v15;
    v17 = sub_10004D4FC().super.isa;
    v25 = sub_10004D05C();
    [v16 setObject:v17 forKeyedSubscript:?];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10000ADC0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000ADE0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 sub_10000AE80(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000AE8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000AEAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_10000AEEC(uint64_t a1)
{
  v2 = sub_10004CF1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004CF6C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
  v12 = sub_10004D3DC();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = sub_10000CCE0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002FBD0;
  aBlock[3] = &unk_100065B68;
  v15 = _Block_copy(aBlock);

  sub_10004CF3C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000D194(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
  sub_10000CD00();
  sub_10004D57C();
  sub_10004D3EC();
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10000B1DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    type metadata accessor for TranscriptBackgroundEventHandlerFactory();
    v5 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger;
    v6 = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
    v8 = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
    v7 = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 16];
    v35[2] = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v35[3] = v6;
    v35[0] = v8;
    v35[1] = v7;
    v10 = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80];
    v9 = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 96];
    v11 = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 64];
    *(v36 + 14) = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 110];
    v35[5] = v10;
    v36[0] = v9;
    v35[4] = v11;
    v12 = v4;
    sub_10000CDAC(v35, v29);
    sub_100014340(&v4[v5], v4, a2, v35, &v30);
    sub_10000CE08(v35);

    if (!v31)
    {

      return sub_10000CE5C(&v30);
    }

    sub_10000CEC4(&v30, v32);
    v13 = *&v12[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder];
    if (*(v13 + 24) == 1)
    {
      v14 = v33;
      v15 = v34;
      result = sub_10000CF8C(v32, v33);
      if (!*&v12[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor])
      {
        __break(1u);
        return result;
      }

      v16 = *(v15 + 8);
      v17 = *&v12[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];

      v16(v18, v14, v15);
    }

    else
    {
      v19 = *(v13 + 16);
      v20 = *&v12[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder];

      os_unfair_lock_lock(v19);
      sub_10000CEDC(v32, v29);
      swift_beginAccess();
      v21 = *(v13 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v13 + 32) = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_100048000(0, v21[2] + 1, 1, v21);
        *(v13 + 32) = v21;
      }

      v23 = v21[2];
      v24 = v21[3];
      v25 = v23 + 1;
      if (v23 >= v24 >> 1)
      {
        v26 = v21;
        v27 = v21[2];
        v28 = sub_100048000((v24 > 1), v23 + 1, 1, v26);
        v23 = v27;
        v21 = v28;
      }

      v21[2] = v25;
      sub_10000CEC4(v29, &v21[5 * v23 + 4]);
      *(v13 + 32) = v21;
      swift_endAccess();
      os_unfair_lock_unlock(v19);
    }

    return sub_10000CF40(v32);
  }

  return result;
}

void sub_10000B44C(unsigned __int8 a1, void (*a2)(id))
{
  v44 = 0;
  v3 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor;
  v4 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
  if (!v4)
  {
    __break(1u);
    goto LABEL_59;
  }

  v7 = *(v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
  v8 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);

  os_unfair_lock_lock(v7);
  v9 = *(v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
  sub_10000BA84(v9, v2, &v44, a1);

  os_unfair_lock_unlock(v7);

  if (v44 == 1)
  {
    if (a1 <= 2u)
    {
      v25 = 0x416B636162706154;
      v26 = 0xEC00000064656464;
      if (a1 != 1)
      {
        v25 = 0x526B636162706154;
        v26 = 0xEE006465766F6D65;
      }

      if (a1)
      {
        v14 = v25;
      }

      else
      {
        v14 = 0x7265746E45646944;
      }

      if (a1)
      {
        v15 = v26;
      }

      else
      {
        v15 = 0xEC00000074616843;
      }
    }

    else
    {
      v10 = 0x8000000100053110;
      v11 = 0x6C6C6F7263537349;
      if (a1 == 5)
      {
        v11 = 0xD000000000000010;
      }

      else
      {
        v10 = 0xEB00000000676E69;
      }

      v12 = 0x8000000100053150;
      v13 = 0xD000000000000016;
      if (a1 != 3)
      {
        v13 = 0xD000000000000010;
        v12 = 0x8000000100053130;
      }

      if (a1 <= 4u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v11;
      }

      if (a1 <= 4u)
      {
        v15 = v12;
      }

      else
      {
        v15 = v10;
      }
    }

    v27 = v2;
    v28 = sub_100028560(v14, v15);

    if (v28)
    {
      v29 = objc_opt_self();
      v30 = [v29 begin];
      if (a2)
      {
        a2(v30);
      }

      v31 = *(v27 + v3);
      if (v31)
      {
        v32 = *(v31 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
        v33 = *(v27 + v3);

        os_unfair_lock_lock(v32);
        v34 = *(v31 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
        v35 = [v34 rootNode];
        v36 = sub_10004D05C();
        v37 = [v35 childNodeWithName:v36 recursively:1];

        if (v37)
        {
          v41 = sub_10004D05C();

          [v37 setStateNamed:v41];
        }

        os_unfair_lock_unlock(v32);

        [v29 commit];
        return;
      }

LABEL_59:
      __break(1u);
    }
  }

  else
  {
    oslog = sub_10004CEDC();
    v16 = sub_10004D36C();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43 = v18;
      *v17 = 136315138;
      if (a1 <= 2u)
      {
        v38 = 0x416B636162706154;
        v39 = 0xEC00000064656464;
        if (a1 != 1)
        {
          v38 = 0x526B636162706154;
          v39 = 0xEE006465766F6D65;
        }

        if (a1)
        {
          v23 = v38;
        }

        else
        {
          v23 = 0x7265746E45646944;
        }

        if (a1)
        {
          v24 = v39;
        }

        else
        {
          v24 = 0xEC00000074616843;
        }
      }

      else
      {
        v19 = 0x8000000100053110;
        v20 = 0x6C6C6F7263537349;
        if (a1 == 5)
        {
          v20 = 0xD000000000000010;
        }

        else
        {
          v19 = 0xEB00000000676E69;
        }

        v21 = 0x8000000100053150;
        v22 = 0xD000000000000016;
        if (a1 != 3)
        {
          v22 = 0xD000000000000010;
          v21 = 0x8000000100053130;
        }

        if (a1 <= 4u)
        {
          v23 = v22;
        }

        else
        {
          v23 = v20;
        }

        if (a1 <= 4u)
        {
          v24 = v21;
        }

        else
        {
          v24 = v19;
        }
      }

      v40 = sub_10000C618(v23, v24, &v43);

      *(v17 + 4) = v40;
      _os_log_impl(&_mh_execute_header, oslog, v16, "State %s does not exist for this effect, ignoring.", v17, 0xCu);
      sub_10000CF40(v18);
    }

    else
    {
    }
  }
}

void sub_10000BA84(void *a1, uint64_t a2, char *a3, char a4)
{
  LOBYTE(v4) = a4;
  v6 = [a1 rootNode];
  v7 = sub_10004D05C();
  v8 = [v6 childNodeWithName:v7 recursively:1];

  if (v8)
  {
    v9 = [v8 states];
    if (v9)
    {
      v10 = v9;
      sub_10000CC1C(&qword_10006E3B8, &unk_10004FF70);
      v11 = sub_10004D23C();

      v33 = v8;
      v34 = a3;
      if (v11 >> 62)
      {
        goto LABEL_52;
      }

      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        while (1)
        {
          v13 = 0;
          v14 = v4;
          while ((v11 & 0xC000000000000001) != 0)
          {
            v4 = sub_10004D62C();
            v15 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

LABEL_11:
            v16 = [v4 name];
            if (v16)
            {
              v17 = v16;
              v18 = sub_10004D08C();
              v20 = v19;
            }

            else
            {
              v18 = 0;
              v20 = 0;
            }

            v21 = 0x6C6C6F7263537349;
            if (v14 == 5)
            {
              v21 = 0xD000000000000010;
            }

            v23 = 0x8000000100053130;
            v22 = 0x8000000100053110;
            if (v14 != 5)
            {
              v22 = 0xEB00000000676E69;
            }

            v24 = 0xD000000000000016;
            if (v14 == 3)
            {
              v23 = 0x8000000100053150;
            }

            else
            {
              v24 = 0xD000000000000010;
            }

            if (v14 <= 4)
            {
              v21 = v24;
              v22 = v23;
            }

            v25 = 0x416B636162706154;
            if (v14 != 1)
            {
              v25 = 0x526B636162706154;
            }

            v26 = 0xEC00000064656464;
            if (v14 != 1)
            {
              v26 = 0xEE006465766F6D65;
            }

            if (!v14)
            {
              v25 = 0x7265746E45646944;
              v26 = 0xEC00000074616843;
            }

            if (v14 <= 2)
            {
              v27 = v25;
            }

            else
            {
              v27 = v21;
            }

            if (v14 <= 2)
            {
              v28 = v26;
            }

            else
            {
              v28 = v22;
            }

            if (v20)
            {
              if (v18 == v27 && v20 == v28)
              {

                swift_unknownObjectRelease();
                goto LABEL_50;
              }

              v29 = sub_10004D74C();

              swift_unknownObjectRelease();
              if (v29)
              {

LABEL_50:
                v32 = 1;
                goto LABEL_54;
              }
            }

            else
            {

              swift_unknownObjectRelease();
            }

            ++v13;
            if (v15 == v12)
            {
              goto LABEL_53;
            }
          }

          if (v13 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_52:
          v12 = sub_10004D67C();
          if (!v12)
          {
            goto LABEL_53;
          }
        }

        v4 = *(v11 + 8 * v13 + 32);
        swift_unknownObjectRetain();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_42;
        }

        goto LABEL_11;
      }

LABEL_53:

      v32 = 0;
LABEL_54:
      a3 = v34;
    }

    else
    {

      v32 = 0;
    }

    *a3 = v32;
  }

  else
  {
LABEL_43:
    oslog = sub_10004CEDC();
    v30 = sub_10004D36C();
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v30, "No states node", v31, 2u);
    }
  }
}

uint64_t sub_10000BED8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_10004CE6C();
}

uint64_t sub_10000BF24()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_10004CE5C();
}

Swift::Int sub_10000BF7C()
{
  sub_10004D7BC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_10004CE5C();
  return sub_10004D7DC();
}

void *sub_10000C01C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000C038(uint64_t a1, id *a2)
{
  result = sub_10004D06C();
  *a2 = 0;
  return result;
}

uint64_t sub_10000C0B0(uint64_t a1, id *a2)
{
  v3 = sub_10004D07C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000C130@<X0>(void *a1@<X8>)
{
  sub_10004D08C();
  v2 = sub_10004D05C();

  *a1 = v2;
  return result;
}

uint64_t sub_10000C174(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_10004CE4C();
}

uint64_t sub_10000C1E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10004D08C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000C210(uint64_t a1)
{
  v2 = sub_10000D194(&qword_10006E4E0, type metadata accessor for VFXWorldLoaderOption);
  v3 = sub_10000D194(&qword_10006E4E8, type metadata accessor for VFXWorldLoaderOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000C2CC(uint64_t a1)
{
  v2 = sub_10000D194(&qword_10006E4F0, type metadata accessor for PRRenderingTransitionType);
  v3 = sub_10000D194(&qword_10006E4F8, type metadata accessor for PRRenderingTransitionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000C388@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10004D05C();

  *a2 = v5;
  return result;
}

uint64_t sub_10000C3D0(uint64_t a1)
{
  v2 = sub_10000D194(&qword_10006E500, type metadata accessor for CIImageRepresentationOption);
  v3 = sub_10000D194(&qword_10006E508, type metadata accessor for CIImageRepresentationOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000C48C()
{
  v1 = *v0;
  sub_10004D08C();
  v2 = sub_10004D1EC();

  return v2;
}

uint64_t sub_10000C4C8()
{
  v1 = *v0;
  sub_10004D08C();
  sub_10004D14C();
}

Swift::Int sub_10000C51C()
{
  v1 = *v0;
  sub_10004D08C();
  sub_10004D7BC();
  sub_10004D14C();
  v2 = sub_10004D7DC();

  return v2;
}

uint64_t sub_10000C590(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_10004D08C();
  v6 = v5;
  if (v4 == sub_10004D08C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10004D74C();
  }

  return v9 & 1;
}

uint64_t sub_10000C618(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000C6E4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000C7F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000CF40(v11);
  return v7;
}

unint64_t sub_10000C6E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000C84C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10004D64C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_10000C7F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_10000C84C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000C898(a1, a2);
  sub_10000C9C8(&off_1000656D0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000C898(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000CAB4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10004D64C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10004D18C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000CAB4(v10, 0);
        result = sub_10004D5FC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000C9C8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000CB28(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000CAB4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000CC1C(&qword_10006E350, &unk_10004FF60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000CB28(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000CC1C(&qword_10006E350, &unk_10004FF60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10000CC1C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000CC68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CCA0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CCE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000CD00()
{
  result = qword_1000708B0;
  if (!qword_1000708B0)
  {
    sub_10000CD64(&unk_10006E3D0, &qword_100050620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000708B0);
  }

  return result;
}

uint64_t sub_10000CD64(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000CE5C(uint64_t a1)
{
  v2 = sub_10000CC1C(&qword_10006E3E0, &unk_10004FF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000CEC4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000CEDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000CF40(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_10000CF8C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000D024(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 sub_10000D0D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000D0DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D0FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10000D194(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000D4D4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_10000D550(size_t a1, int64_t a2, int64_t a3)
{
  v4 = v3;
  v8 = v3[2];
  if (v8)
  {
    v9 = v8;
    if (IOSurfaceGetWidth(v9) != a1)
    {
      Height = IOSurfaceGetHeight(v9);

      if (Height == a2)
      {
        goto LABEL_6;
      }

      v11 = v4[2];
      v4[2] = 0;

      v12 = v4[3];
      v4[3] = 0;
      swift_unknownObjectRelease();
      v9 = v4[4];
      v4[4] = 0;
    }

LABEL_6:
    v13 = v4[2];
    if (v13)
    {
      goto LABEL_11;
    }
  }

  v14 = sub_10004CEDC();
  v15 = sub_10004D39C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = a1;
    *(v16 + 12) = 2048;
    *(v16 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v14, v15, "create surface %ldx%ld", v16, 0x16u);
  }

  sub_10000CC1C(&qword_10006E9D0, &qword_100050630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000505A0;
  *(inited + 32) = kIOSurfaceWidth;
  *(inited + 40) = a1;
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = kIOSurfaceHeight;
  *(inited + 80) = a2;
  *(inited + 104) = &type metadata for Int;
  *(inited + 112) = kIOSurfaceBytesPerElement;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Int;
  *(inited + 152) = kIOSurfaceBytesPerRow;
  *(inited + 160) = a3;
  *(inited + 184) = &type metadata for Int;
  *(inited + 192) = kIOSurfaceAllocSize;
  if ((a3 * a2) >> 64 != (a3 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_24;
  }

  *(inited + 200) = a3 * a2;
  *(inited + 224) = &type metadata for Int;
  *(inited + 232) = kIOSurfacePixelFormat;
  *(inited + 264) = &type metadata for UInt32;
  *(inited + 240) = 1278226488;
  v18 = inited;
  v19 = kIOSurfaceWidth;
  v20 = kIOSurfaceHeight;
  v21 = kIOSurfaceBytesPerElement;
  v22 = kIOSurfaceBytesPerRow;
  v23 = kIOSurfaceAllocSize;
  v24 = kIOSurfacePixelFormat;
  sub_100039EE0(v18);
  swift_setDeallocating();
  sub_10000CC1C(&qword_10006E9D8, &unk_100050638);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_10000F164(&qword_10006E4C0, type metadata accessor for CFString);
  isa = sub_10004D00C().super.isa;

  v26 = IOSurfaceCreate(isa);

  v27 = v4[2];
  v4[2] = v26;

  v13 = v4[2];
  if (!v13)
  {
    return;
  }

LABEL_11:
  if (v4[3])
  {
    v28 = v13;
    if (!v4[4])
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v29 = objc_allocWithZone(MTLTextureDescriptor);
  v30 = v13;
  v31 = [v29 init];
  [v31 setPixelFormat:10];
  [v31 setWidth:a3];
  [v31 setHeight:a2];
  v32 = MTLCreateSystemDefaultDevice();
  if (!v32)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v33 = [v32 newTextureWithDescriptor:v31 iosurface:v30 plane:0];

  swift_unknownObjectRelease();
  v34 = v4[3];
  v4[3] = v33;
  swift_unknownObjectRelease();
  if (!v4[4])
  {
LABEL_16:
    DeviceGray = CGColorSpaceCreateDeviceGray();
    BaseAddress = IOSurfaceGetBaseAddress(v13);
    v37 = sub_10000F1AC(BaseAddress, a1, a2, a3, DeviceGray);
    v38 = v4[4];
    v4[4] = v37;
    v39 = v37;

    if (v39)
    {
      CGContextScaleCTM(v39, 1.0, -1.0);
    }

    v40 = v4[4];
    if (v40)
    {
      v41 = -a2;
      v42 = v40;
      CGContextTranslateCTM(v42, 0.0, v41);
    }

    v13 = DeviceGray;
  }

LABEL_21:
}

uint64_t sub_10000D9C4(CGContext *a1, uint64_t a2, void *a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v17 = sub_10004CE0C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextBeginPath(a1);
  CGAffineTransformMakeScale(&v40, a2 / a4, 1.0);
  v41.origin.x = a6;
  v41.origin.y = a7;
  v41.size.width = a8;
  v41.size.height = a9;
  v42 = CGRectApplyAffineTransform(v41, &v40);
  if (a3 == 2)
  {
    v32 = CGPathCreateWithRoundedRect(v42, 15.0, 15.0, 0);
    CGContextAddPath(a1, v32);

    v31 = 0x3F80101010101010;
  }

  else if (a3 == 1)
  {
    x = v42.origin.x;
    y = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;
    v27 = CGRectGetWidth(v42);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v28 = CGRectGetHeight(v43);
    if (v28 < v27)
    {
      v27 = v28;
    }

    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v29 = x - (v27 - CGRectGetWidth(v44)) * 0.5;
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v46.origin.y = y - (v27 - CGRectGetHeight(v45)) * 0.5;
    v46.origin.x = v29;
    v46.size.width = v27;
    v46.size.height = v27;
    v30 = CGPathCreateWithEllipseInRect(v46, 0);
    CGContextAddPath(a1, v30);

    v31 = 0x3F88181818181818;
  }

  else
  {
    if (a3)
    {
      v33 = v42.origin.y;
      v34 = v42.origin.x;
      v35 = a3;
      CGContextSaveGState(a1);
      CGContextTranslateCTM(a1, v34, v33);
      CGContextAddPath(a1, v35);
      CGContextRestoreGState(a1);
      sub_10000F06C(a3);
    }

    else
    {
      v22 = CGPathCreateWithRoundedRect(v42, 15.0, 15.0, 0);
      CGContextAddPath(a1, v22);
    }

    v31 = 0x3F70101010101010;
  }

  v36 = *&v31;
  CGContextClosePath(a1);
  v37 = [objc_allocWithZone(UIColor) initWithWhite:v36 alpha:1.0];
  v38 = [v37 CGColor];

  CGContextSetFillColorWithColor(a1, v38);
  (*(v18 + 104))(v21, enum case for CGPathFillRule.winding(_:), v17);
  sub_10004D35C();
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_10000DCFC(uint64_t result, double a2, double a3)
{
  if (a2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = ceilf(vcvts_n_f32_s64(a2, 4uLL)) * 16.0;
  if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v4 <= -9.2234e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 >= 9.2234e18)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v5 = v3;
  v6 = result;
  v7 = a3;
  v8 = v4;
  sub_10000D550(v4, a3, v4);
  v9 = *(v3 + 32);
  if (!v9 || !*(v3 + 16))
  {
    return 0;
  }

  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 blackColor];
  v13 = [v12 CGColor];

  CGContextSetFillColorWithColor(v11, v13);
  sub_10000CC1C(&qword_10006E9C8, &qword_100050628);
  v14._rawValue = swift_allocObject();
  *(v14._rawValue + 1) = xmmword_1000505B0;
  *(v14._rawValue + 4) = 0;
  *(v14._rawValue + 5) = 0;
  *(v14._rawValue + 6) = v8;
  *(v14._rawValue + 7) = v7;
  sub_10004D34C(v14);

  if (v6)
  {
    v6(v11, v8);
  }

  CGContextFlush(v11);

  v15 = *(v5 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_10000DF20()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtensionP33_42E2A78A8128FB2B9E40E7284CB2B7BC12MaskProvider_logger;
  v3 = sub_10004CEFC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10000DFFC()
{
  result = sub_10004CEFC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000E09C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_timer) = 0;
  v5 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_logger;
  v6 = sub_10004CEFC();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_asset) = a2;
  v8 = type metadata accessor for MaskProvider(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = 0;
  (*(v7 + 32))(v11 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtensionP33_42E2A78A8128FB2B9E40E7284CB2B7BC12MaskProvider_logger, a1, v6);
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_provider) = v11;
  return v2;
}

uint64_t sub_10000E198(double a1, double a2, double a3)
{
  v6 = sub_10004CF1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004CF6C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004CEDC();
  v17 = sub_10004D36C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v16, v17, "Starting timer to clear mask after %fs", v18, 0xCu);
  }

  sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
  v19 = sub_10004D3DC();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = a1;
  *(v21 + 32) = a2;
  *(v21 + 40) = a3;
  aBlock[4] = sub_10000F110;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002FBD0;
  aBlock[3] = &unk_100065E20;
  v22 = _Block_copy(aBlock);

  sub_10004CF3C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000F164(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
  sub_10000CD00();
  sub_10004D57C();
  sub_10004D3EC();
  _Block_release(v22);

  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v11);
}

void sub_10000E520(double a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = a2;
    *(v10 + 32) = a3;
    v14[4] = sub_10000F158;
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10001BB08;
    v14[3] = &unk_100065E70;
    v11 = _Block_copy(v14);

    v12 = [v8 scheduledTimerWithTimeInterval:0 repeats:v11 block:a1];
    _Block_release(v11);
    v13 = *(v7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_timer);
    *(v7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_timer) = v12;
  }
}

void sub_10000E6C0(void *a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_timer;
    v9 = *(Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_timer);
    if (v9 && (sub_10000D024(0, &qword_10006E9C0, NSTimer_ptr), v10 = v9, v11 = a1, v12 = sub_10004D50C(), v10, v11, (v12 & 1) != 0))
    {
      v13 = sub_10004CEDC();
      v14 = sub_10004D37C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Timer fired to clear mask", v15, 2u);
      }

      v16 = *(v7 + v8);
      *(v7 + v8) = 0;

      sub_10000ED8C(a2, a3);
    }

    else
    {
      v17 = sub_10004CEDC();
      v18 = sub_10004D36C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Not the right taimer bailing out", v19, 2u);
      }
    }
  }
}

uint64_t sub_10000E8AC()
{
  v0 = sub_10004CF1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004CF6C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
  v10 = sub_10004D3DC();
  v11 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10000F0B8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002FBD0;
  aBlock[3] = &unk_100065DD0;
  v12 = _Block_copy(aBlock);

  sub_10004CF3C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000F164(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
  sub_10000CD00();
  sub_10004D57C();
  sub_10004D3EC();
  _Block_release(v12);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

void sub_10000EB74()
{
  v0 = sub_10004CEFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v1 + 16))(v4, Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_logger, v0);

    v6 = sub_10004CEDC();
    v7 = sub_10004D37C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Invalidating timer to clear mask", v8, 2u);
    }

    (*(v1 + 8))(v4, v0);
  }

  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_timer);

    [v10 invalidate];
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_timer);
    *(v11 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_timer) = 0;
  }
}

id sub_10000ED8C(double a1, double a2)
{
  v3 = v2;
  v6 = sub_10004CEDC();
  v7 = sub_10004D37C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Clearing mask", v8, 2u);
  }

  v9 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_asset);
  v10 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_provider);
  sub_10000DCFC(0, a1, a2);
  swift_unknownObjectRelease();
  v11 = *(v10 + 24);

  return [v9 setTexture:v11];
}

uint64_t sub_10000EE8C()
{
  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_provider);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10000EF80(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000EFB8()
{
  result = sub_10004CEFC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10000F06C(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

uint64_t sub_10000F080()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F0C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F0D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F120()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F164(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10000F1D0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    [a1 setDeviceMotionEventsRequested:1];
    [a1 setSupportedMotionEffectsMode:2];
    v4 = "setPreferredDeviceMotionUpdateInterval:";
    v5 = 0.0333;
    v6 = a1;
  }

  else
  {
    [a1 setDeviceMotionEventsRequested:0];
    v4 = "setSupportedMotionEffectsMode:";
    v6 = a1;
  }

  return [v6 v4];
}

uint64_t sub_10000F270(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000CC1C(&unk_10006EA90, &qword_1000506D8);
    v2 = sub_10004D6AC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000C7F0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100010F88(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100010F88(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100010F88(v31, v32);
    result = sub_10004D5CC(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100010F88(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10000F6C8(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a2;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_10000F7A0;

  return sub_1000107D4(v7);
}

uint64_t sub_10000F7A0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_10004CC5C();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_100010EBC();
    isa = sub_10004D22C().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id sub_10000F97C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTranscriptBackgroundPosterDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DynamicTranscriptBackgroundPosterDelegate()
{
  result = qword_10006EA70;
  if (!qword_10006EA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000FA74()
{
  result = sub_10004CEFC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000FB04()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000FB54()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000FC14;

  return sub_10000F6C8(v2, v3, v5, v4);
}

uint64_t sub_10000FC14()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000FD08(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100010FA0;

  return v7();
}

uint64_t sub_10000FDF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100010FA0;

  return sub_10000FD08(v2, v3, v5);
}

uint64_t sub_10000FEB0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000FC14;

  return v8();
}

uint64_t sub_10000FF9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000FFDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100010FA0;

  return sub_10000FEB0(a1, v4, v5, v7);
}

uint64_t sub_1000100A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10000CC1C(&qword_10006EA80, &qword_100050680) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_100010364(a3, v24 - v10);
  v12 = sub_10004D2BC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000103D4(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10004D2AC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_10004D29C();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_10004D11C() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_1000103D4(a3);

    return v22;
  }

LABEL_8:
  sub_1000103D4(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100010364(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CC1C(&qword_10006EA80, &qword_100050680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000103D4(uint64_t a1)
{
  v2 = sub_10000CC1C(&qword_10006EA80, &qword_100050680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001043C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100010534;

  return v7(a1);
}

uint64_t sub_100010534()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001062C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010664(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100010FA0;

  return sub_10001043C(a1, v5);
}

uint64_t sub_10001071C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000FC14;

  return sub_10001043C(a1, v5);
}

uint64_t sub_1000107D4(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;

  return _swift_task_switch(sub_100010864, 0, 0);
}

uint64_t sub_100010864()
{
  v60 = v0;
  v1 = [*(v0 + 112) context];
  if (v1)
  {
    v2 = v1;
    v55 = sub_10004D01C();
  }

  else
  {
    v55 = 0;
  }

  v47 = *(v0 + 120);
  v3 = sub_100041324();
  v50 = *(v3 + 16);
  if (v50)
  {
    v4 = 0;
    v48 = PRPosterRoleBackdrop;
    v5 = (v3 + 56);
    v49 = v3;
    while (1)
    {
      if (v4 >= *(v3 + 16))
      {
        __break(1u);
      }

      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      if (v9 <= 1)
      {
        break;
      }

      if (v9 == 2)
      {
        v11 = 0x61726F727561;
        goto LABEL_13;
      }

      v58 = 0x5F72657474696C67;
      v59 = 0xE800000000000000;
      v12 = v8;
LABEL_16:

      v62._countAndFlagsBits = v7;
      v62._object = v6;
      sub_10004D16C(v62);
      v14 = v58;
      v13 = v59;
      v57 = v8;
      v56 = v9;
      v53 = sub_10003EB10(v7, v6, v8, v9);
      v16 = v15;
      v17 = sub_10004D05C();
      v18 = [objc_opt_self() mutableDescriptorWithIdentifier:v17 role:v48];

      if (v55)
      {
        v51 = v6;
        v52 = v7;
        *(v0 + 40) = &type metadata for Int;
        *(v0 + 16) = v4;
        sub_100010F88((v0 + 16), (v0 + 48));

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v55;
        sub_100034764((v0 + 48), 0x6564724F74726F73, 0xE900000000000072, isUniquelyReferenced_nonNull_native);
        v20 = v58;
        *(v0 + 40) = &type metadata for String;
        *(v0 + 16) = 0xD000000000000012;
        *(v0 + 24) = 0x8000000100053440;
        sub_100010F88((v0 + 16), (v0 + 48));
        v21 = swift_isUniquelyReferenced_nonNull_native();
        v58 = v20;
        sub_100034764((v0 + 48), 0xD000000000000010, 0x8000000100053420, v21);
        v22 = v58;
        *(v0 + 40) = &type metadata for String;
        *(v0 + 16) = v14;
        *(v0 + 24) = v13;
        sub_100010F88((v0 + 16), (v0 + 48));
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v58 = v22;
        sub_100034764((v0 + 48), 0x696669746E656469, 0xEA00000000007265, v23);
        v24 = v58;
        *(v0 + 40) = &type metadata for String;
        *(v0 + 16) = v53;
        *(v0 + 24) = v16;
        sub_100010F88((v0 + 16), (v0 + 48));
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v58 = v24;
        sub_100034764((v0 + 48), 0xD000000000000012, 0x8000000100053460, v25);
        sub_10000F270(v58);

        isa = sub_10004D00C().super.isa;

        *(v0 + 16) = 0;
        v27 = [v18 storeUserInfo:isa error:v0 + 16];

        v28 = *(v0 + 16);
        if ((v27 & 1) == 0)
        {
          v54 = v18;
          v31 = v28;
          sub_10004CC6C();

          swift_willThrow();
          swift_errorRetain();
          v32 = sub_10004CEDC();
          v33 = sub_10004D38C();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v58 = v35;
            *v34 = 136315138;
            swift_getErrorValue();
            v37 = *(v0 + 80);
            v36 = *(v0 + 88);
            v38 = *(v0 + 96);
            v39 = sub_10004D76C();
            v41 = sub_10000C618(v39, v40, &v58);

            *(v34 + 4) = v41;
            _os_log_impl(&_mh_execute_header, v32, v33, "error while storing user info : %s", v34, 0xCu);
            sub_10000CF40(v35);
          }

          else
          {
          }

          v6 = v51;
          v7 = v52;
          v30 = v56;
          v18 = v54;
          goto LABEL_25;
        }

        v29 = v28;
      }

      else
      {
      }

      v30 = v56;
LABEL_25:
      v42 = v18;
      sub_10004D21C();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v43 = v6;
        v44 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10004D25C();
        v6 = v43;
      }

      ++v4;
      sub_10004D27C();
      sub_100010F08(v7, v6, v57, v30);

      v5 += 32;
      v3 = v49;
      if (v50 == v4)
      {
        goto LABEL_28;
      }
    }

    if (*v5)
    {
      v11 = 0x7364756F6C63;
LABEL_13:
      v58 = v11 & 0xFFFFFFFFFFFFLL | 0x5F000000000000;
      v10 = 0xE700000000000000;
    }

    else
    {
      v58 = 0x5F6E6165636FLL;
      v10 = 0xE600000000000000;
    }

    v59 = v10;
    goto LABEL_16;
  }

LABEL_28:

  v45 = *(v0 + 8);

  return v45(&_swiftEmptyArrayStorage);
}

unint64_t sub_100010EBC()
{
  result = qword_10006EA88;
  if (!qword_10006EA88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006EA88);
  }

  return result;
}

void sub_100010F08(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4 >= 2u)
    {
      return;
    }

    goto LABEL_9;
  }

  if (a4 == 2)
  {
LABEL_9:

    return;
  }

  if (a4 == 3)
  {
  }
}

_OWORD *sub_100010F88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100010FA4()
{
  sub_10000CF40((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_100010FE4(uint64_t a1, double a2)
{
  if (a2 == 0.0)
  {
    if (*(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) != a1)
    {
      *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) = a1;
      v4 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
      swift_beginAccess();
      v5 = *(v2 + v4);
      v6 = 1 << *(v5 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(v5 + 64);
      v9 = (v6 + 63) >> 6;

      v10 = 0;
      while (v8)
      {
LABEL_11:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = *(*(v5 + 56) + ((v10 << 9) | (8 * v12)));
        v14 = *&v13[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation];
        *&v13[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation] = a1;
        if (v14 != a1)
        {
          v15 = v13;
          sub_10001E314();
        }
      }

      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {

          return;
        }

        v8 = *(v5 + 64 + 8 * v11);
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v18 + 24) = a1;
    v20[4] = sub_100011DAC;
    v20[5] = v18;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_10002FBD0;
    v20[3] = &unk_100065F88;
    v19 = _Block_copy(v20);

    [v17 animateWithDuration:v19 animations:a2];
    _Block_release(v19);
  }
}

void sub_1000111F0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) != a2)
  {
    *(a1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) = a2;
    v3 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
    swift_beginAccess();
    v5 = *(a1 + v3);
    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    while (v8)
    {
LABEL_10:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = *(*(v5 + 56) + ((v10 << 9) | (8 * v12)));
      v14 = *&v13[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation];
      *&v13[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation] = a2;
      if (v14 != a2)
      {
        v15 = v13;
        sub_10001E314();
      }
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        return;
      }

      v8 = *(v5 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100011328(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_10000CF8C(a3, a3[3]);
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = *(v7 + 24);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      sub_100035FE8(a1, v8, v9, v10, v11, 0, Strong, 1.0);
      if (!sub_100035D90(v8, v9, v10, v11, v6))
      {
        sub_100011418(1.0);
      }
    }
  }

  return result;
}

void sub_100011418(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_10003310C(0xD000000000000011, 0x80000001000535A0);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      if (qword_10006E0A8 != -1)
      {
        swift_once();
      }

      if ([qword_1000730A8 posterKitEditor])
      {
      }

      else
      {
        [*(v8 + 16) setAlpha:1.0];

        v9 = sub_10004CEDC();
        v10 = sub_10004D39C();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v32 = v12;
          *v11 = 134218242;
          *(v11 + 4) = 0x3FF0000000000000;
          *(v11 + 12) = 2080;
          swift_beginAccess();
          v13 = sub_10000CF8C((v8 + 24), *(v8 + 48));
          v14 = sub_10003EA74(*v13, v13[2], *(v13 + 24));
          v16 = sub_10000C618(v14, v15, &v32);

          *(v11 + 14) = v16;
          _os_log_impl(&_mh_execute_header, v9, v10, "current view alpha %f %s", v11, 0x16u);
          sub_10000CF40(v12);
        }
      }
    }

    else
    {
    }
  }

  v17 = *(v2 + v4);
  if (*(v17 + 16))
  {
    v18 = *(v2 + v4);

    v19 = sub_10003310C(0xD000000000000010, 0x80000001000535C0);
    if (v20)
    {
      v21 = *(*(v17 + 56) + 8 * v19);

      if (qword_10006E0A8 != -1)
      {
        swift_once();
      }

      if ([qword_1000730A8 posterKitEditor])
      {
      }

      else
      {
        [*(v21 + 16) setAlpha:a1];
        v22 = [*(v21 + 16) superview];
        if (v22)
        {
          v23 = v22;
          [v22 bringSubviewToFront:*(v21 + 16)];
        }

        v24 = sub_10004CEDC();
        v25 = sub_10004D39C();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v33 = v27;
          *v26 = 134218242;
          *(v26 + 4) = a1;
          *(v26 + 12) = 2080;
          swift_beginAccess();
          v28 = sub_10000CF8C((v21 + 24), *(v21 + 48));
          v29 = sub_10003EA74(*v28, v28[2], *(v28 + 24));
          v31 = sub_10000C618(v29, v30, &v33);

          *(v26 + 14) = v31;
          _os_log_impl(&_mh_execute_header, v24, v25, "target view alpha %f %s", v26, 0x16u);
          sub_10000CF40(v27);
        }
      }
    }

    else
    {
    }
  }
}

id sub_100011884()
{
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D39C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v29 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000C618(0xD000000000000018, 0x8000000100053580, &v29);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000CF40(v5);
  }

  v6 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = *(v1 + v6);

  v14 = 0;
  if (v10)
  {
    while (1)
    {
      v15 = v14;
LABEL_11:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      result = [*(*(*(v7 + 56) + ((v15 << 9) | (8 * v16))) + 16) removeFromSuperview];
      if (!v10)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v15 >= v11)
    {
      break;
    }

    v10 = *(v7 + 64 + 8 * v15);
    ++v14;
    if (v10)
    {
      v14 = v15;
      goto LABEL_11;
    }
  }

  v17 = *(v1 + v6);
  *(v1 + v6) = &_swiftEmptyDictionarySingleton;

  v18 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = 1 << *(v19 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v19 + 64);
  v23 = (v20 + 63) >> 6;
  v24 = *(v1 + v18);

  for (i = 0; v22; result = [*(*(v19 + 56) + ((v26 << 9) | (8 * v27))) removeFromSuperview])
  {
    v26 = i;
LABEL_21:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
  }

  while (1)
  {
    v26 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v26 >= v23)
    {

      v28 = *(v1 + v18);
      *(v1 + v18) = &_swiftEmptyDictionarySingleton;
    }

    v22 = *(v19 + 64 + 8 * v26);
    ++i;
    if (v22)
    {
      i = v26;
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100011B4C()
{
  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100011DCC(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_delegate);
  sub_10000CF40((v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_factory));
  v3 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_effectViewByEffect);

  v4 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_placeholderViewByEffect);

  sub_10000CF40((v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ViewsManager()
{
  result = qword_10006EAD0;
  if (!qword_10006EAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100011C8C()
{
  result = sub_10004CEFC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100011D74()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100011DF4()
{
  if (qword_10006E0B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100073150;
  v2 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 16];
  v7[0] = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration];
  v7[1] = v2;
  v8[0] = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 32];
  *(v8 + 13) = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 45];
  v3 = v0;
  sub_1000131F8(v7, v6);
  sub_100012B38(v3, v7, v1);
  sub_100013254(v7);

  v5.receiver = v3;
  v5.super_class = type metadata accessor for SnapshotReader();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for SnapshotReader()
{
  result = qword_10006ED90;
  if (!qword_10006ED90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000120D0(char a1)
{
  v2 = v1;
  if (qword_10006E0B8 != -1)
  {
    swift_once();
  }

  v4 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 16);
  v41[0] = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration);
  v41[1] = v4;
  v42[0] = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 32);
  *(v42 + 13) = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 45);
  sub_100044D30(v41, &v31);
  v5 = v32;
  if (v32)
  {
    v6 = v31;
    v35[0] = v31;
    v35[1] = v32;
    v36 = v33;
    v37[0] = v34[0];
    *(v37 + 13) = *(v34 + 13);
    v27 = v33;
    v28[0] = v34[0];
    *(v28 + 13) = *(v34 + 13);
    v7 = sub_100042698();
    v9 = v8;
    v10 = (v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration);
    v11 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration + 16);
    v29[0] = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration);
    v29[1] = v11;
    v30[0] = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration + 32);
    *(v30 + 13) = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration + 45);
    if (*(&v29[0] + 1))
    {
      v12 = v7;
      v13 = v10[1];
      v38 = *v10;
      v39 = v13;
      v40[0] = v10[2];
      v14 = v40[0];
      *(v40 + 13) = *(v10 + 45);
      v24 = v38;
      v25 = v13;
      v26[0] = v14;
      *(v26 + 13) = *(v40 + 13);
      sub_1000131F8(&v24, v23);
      v15 = sub_100042698();
      v17 = v16;
      sub_1000132E0(v29);
      if (v12 == v15 && v9 == v17)
      {

LABEL_10:
        sub_1000132E0(&v31);
        return;
      }

      v18 = sub_10004D74C();

      if (v18)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v19 = v10[1];
    v24 = *v10;
    v25 = v19;
    v26[0] = v10[2];
    *(v26 + 13) = *(v10 + 45);
    *v10 = v6;
    *(v10 + 1) = v5;
    v20 = v28[0];
    v10[1] = v27;
    v10[2] = v20;
    *(v10 + 45) = *(v28 + 13);
    sub_1000131F8(v35, v23);
    sub_1000132E0(&v24);
    v21 = sub_100012324();
    sub_1000132E0(&v31);
    if (v21)
    {
      v22 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_updateBlock + 8);
      (*(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_updateBlock))(v21, a1 & 1);
    }
  }
}

id sub_100012324()
{
  v1 = v0;
  v2 = sub_10004CD3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006E0C0 != -1)
  {
    swift_once();
  }

  sub_1000132A8(v2, qword_100073158);
  v20[0] = sub_100042A30();
  v20[1] = v7;
  v21._countAndFlagsBits = 0x636965682ELL;
  v21._object = 0xE500000000000000;
  sub_10004D16C(v21);
  sub_10004CCEC();

  v8 = sub_10004CC8C();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v11 = objc_allocWithZone(UIImage);
  v12 = sub_10004D05C();
  v13 = [v11 initWithContentsOfFile:v12];

  if (v13)
  {
  }

  else
  {
    v14 = v1;

    v15 = sub_10004CEDC();
    v16 = sub_10004D38C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_10000C618(*&v14[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_tagID], *&v14[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_tagID + 8], v20);
      *(v17 + 12) = 2080;
      v18 = sub_10000C618(v8, v10, v20);

      *(v17 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "#%s snapshotReader: loading failed at path %s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  return v13;
}

uint64_t sub_100012634()
{
  result = sub_10004CEFC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000126F8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_10004D67C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_10004D63C();
  *v1 = result;
  return result;
}

uint64_t sub_100012798(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  v7 = sub_100012A1C(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_10004D67C();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_10004D67C())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = sub_10004D62C();
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v22 = v12;
    v13 = a1(&v22);

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = sub_10004D62C();
    v15 = sub_10004D62C();
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v14 = *(v6 + 32 + 8 * v2);
    v15 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_100024C3C(v6);
    v17 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  v19 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v15;

  if ((v6 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_100024C3C(v6);
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v18 + 16))
    {
      goto LABEL_44;
    }

    v20 = v18 + 8 * v10;
    v21 = *(v20 + 32);
    *(v20 + 32) = v14;

    *v3 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_10004D67C();
}

uint64_t sub_100012A1C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_10004D67C();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = sub_10004D62C();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

void sub_100012B38(uint64_t a1, float *a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  os_unfair_lock_lock(v6);
  v7 = swift_beginAccess();
  v8 = *(a3 + 24);
  if (*(v8 + 16))
  {
    v9 = *(a3 + 24);

    v10 = sub_100033238(a2);
    if (v11)
    {
      v12 = *(*(v8 + 56) + 8 * v10);
    }

    else
    {
      v12 = &_swiftEmptyArrayStorage;
    }
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v21 = v12;
  __chkstk_darwin(v7);
  v19[2] = a1;
  v19[3] = &off_100065FB0;
  v13 = sub_100012798(sub_100013348, v19);
  if (v21 >> 62)
  {
    v18 = v13;
    v14 = sub_10004D67C();
    v13 = v18;
    if (v14 >= v18)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 >= v13)
    {
LABEL_9:
      sub_100012EB4(v13, v14);
      v15 = v21;
      swift_beginAccess();
      sub_1000131F8(a2, v20);
      v16 = *(a3 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20[0] = *(a3 + 24);
      *(a3 + 24) = 0x8000000000000000;
      sub_1000348B4(v15, a2, isUniquelyReferenced_nonNull_native);
      sub_100013254(a2);
      *(a3 + 24) = v20[0];
      swift_endAccess();
      os_unfair_lock_unlock(v6);
      return;
    }
  }

  __break(1u);
}

void sub_100012D08(uint64_t a1, float *a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v6 = *(a3 + 24);
  if (*(v6 + 16))
  {
    v7 = *(a3 + 24);

    v8 = sub_100033238(a2);
    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v8);
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
    }
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v17 = v10;
  type metadata accessor for SnapshotManager.WeakObserver();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 24) = &off_100065FB0;
  swift_unknownObjectWeakAssign();
  sub_10004D21C();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_10004D25C();
  }

  sub_10004D27C();
  v12 = v17;
  swift_beginAccess();
  sub_1000131F8(a2, v16);
  v13 = *(a3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[0] = *(a3 + 24);
  *(a3 + 24) = 0x8000000000000000;
  sub_1000348B4(v12, a2, isUniquelyReferenced_nonNull_native);
  sub_100013254(a2);
  *(a3 + 24) = v16[0];
  swift_endAccess();
  os_unfair_lock_unlock(v5);
}

uint64_t sub_100012EB4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_10004D67C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_10004D67C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1000126F8(result);

  return sub_100024E28(v4, v2, 0);
}

char *sub_100012F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = &v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration];
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  *(v10 + 45) = 0u;
  v11 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_logger;
  v12 = sub_10004CEFC();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v5[v11], a2, v12);
  v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_isSnapshotMode] = *(a1 + 96);
  sub_1000427C8(v26);
  v14 = &v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration];
  v15 = v26[1];
  *v14 = v26[0];
  v14[1] = v15;
  v14[2] = v27[0];
  *(v14 + 45) = *(v27 + 13);
  v16 = *(a1 + 32);
  *&v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_tagID] = v16;
  v28 = v16;
  v17 = &v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_updateBlock];
  *v17 = a3;
  v17[1] = a4;
  sub_10001319C(&v28, v29);
  v25.receiver = v5;
  v25.super_class = type metadata accessor for SnapshotReader();

  v18 = objc_msgSendSuper2(&v25, "init");
  sub_1000120D0(1);
  if (qword_10006E0B8 != -1)
  {
    swift_once();
  }

  v19 = qword_100073150;
  v21 = *&v18[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 16];
  v20 = *&v18[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 32];
  v22 = *&v18[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration];
  *&v30[13] = *&v18[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 45];
  v29[1] = v21;
  *v30 = v20;
  v29[0] = v22;
  sub_1000131F8(v29, &v24);
  sub_100012D08(v18, v29, v19);
  sub_100013254(v29);

  (*(v13 + 8))(a2, v12);
  return v18;
}

uint64_t sub_1000132A8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000132E0(uint64_t a1)
{
  v2 = sub_10000CC1C(&qword_10006EDA0, &unk_100050800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013348(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100043334(a1) & 1;
}

uint64_t sub_100013368(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BackgroundEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100013520()
{
  result = qword_10006EDA8;
  if (!qword_10006EDA8)
  {
    sub_10000CD64(&qword_10006EDB0, qword_100050828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EDA8);
  }

  return result;
}

uint64_t sub_100013590(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064656464;
  v3 = 0x416B636162706174;
  v4 = a1;
  v5 = 0xEB00000000676E69;
  if (a1 == 5)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x6C6C6F7263537369;
  }

  if (a1 == 5)
  {
    v5 = 0x8000000100052FD0;
  }

  v7 = 0x8000000100052F90;
  if (a1 != 3)
  {
    v7 = 0x8000000100052FB0;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  v8 = 0x526B636162706174;
  v9 = 0xEE006465766F6D65;
  if (a1 != 1)
  {
    v8 = 0xD000000000000016;
    v9 = 0x8000000100052F70;
  }

  if (!a1)
  {
    v8 = 0x416B636162706174;
    v9 = 0xEC00000064656464;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE006465766F6D65;
        if (v10 != 0x526B636162706174)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0x8000000100052F70;
        if (v10 != 0xD000000000000016)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x8000000100052FD0;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0xEB00000000676E69;
        if (v10 != 0x6C6C6F7263537369)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

    if (a2 == 3)
    {
      v2 = 0x8000000100052F90;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v2 = 0x8000000100052FB0;
    v3 = 0xD000000000000010;
  }

  if (v10 != v3)
  {
LABEL_40:
    v12 = sub_10004D74C();
    goto LABEL_41;
  }

LABEL_37:
  if (v11 != v2)
  {
    goto LABEL_40;
  }

  v12 = 1;
LABEL_41:

  return v12 & 1;
}

uint64_t sub_1000137B8()
{
  *v0;
  sub_10004D14C();
}

Swift::Int sub_100013904()
{
  sub_10004D7BC();
  sub_10004D14C();

  return sub_10004D7DC();
}

uint64_t sub_100013A5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100013DFC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100013A8C(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v7 = 0xEC00000064656464;
    v8 = 0xEE006465766F6D65;
    v9 = 0x526B636162706174;
    if (v2 != 1)
    {
      v9 = 0xD000000000000016;
      v8 = 0x8000000100052F70;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0x416B636162706174;
    }

    if (!v10)
    {
      v7 = v8;
    }

    *a1 = v11;
    a1[1] = v7;
  }

  else
  {
    v3 = 0x8000000100052FD0;
    v4 = 0xD000000000000011;
    if (v2 != 5)
    {
      v4 = 0x6C6C6F7263537369;
      v3 = 0xEB00000000676E69;
    }

    v5 = 0x8000000100052F90;
    if (v2 != 3)
    {
      v5 = 0x8000000100052FB0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v6;
    a1[1] = v3;
  }
}

unint64_t sub_100013BB8()
{
  result = qword_10006EDB8;
  if (!qword_10006EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EDB8);
  }

  return result;
}

uint64_t sub_100013C0C()
{
  v0 = 0;
  while (1)
  {
    v1 = *(&off_1000656F8 + v0 + 32);
    v2 = sub_10004D10C();
    v4 = v3;

    if (v2 == sub_10004D10C() && v4 == v5)
    {
      break;
    }

    v6 = sub_10004D74C();

    if (v6)
    {
      return v1;
    }

    if (++v0 == 7)
    {
      return 7;
    }
  }

  return v1;
}

uint64_t sub_100013DFC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100065830;
  v6._object = a2;
  v4 = sub_10004D6CC(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100013E48()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger;
  v3 = sub_10004CEFC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AuroraEffect()
{
  result = qword_10006EDE8;
  if (!qword_10006EDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013F84(void *a1, uint64_t a2, unint64_t a3, void *a4, char a5)
{
  v10 = [a1 rootNode];
  v11 = sub_10004D05C();
  v12 = [v10 childNodeWithName:v11];

  if (!v12)
  {
    return;
  }

  if (__OFSUB__(sub_10003F3A8(a2, a3, a4, a5), 1))
  {
    __break(1u);
  }

  else if (qword_10006E0A8 == -1)
  {
    goto LABEL_4;
  }

  swift_once();
LABEL_4:
  if (([qword_1000730A8 posterKitEditor] & 1) == 0)
  {
    v13 = *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
    v14 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
    swift_beginAccess();
    sub_10000CEDC(v13 + v14, v30);
    sub_10000CC1C(&qword_100070A40, &unk_100050920);
    if (swift_dynamicCast())
    {
      v15 = sub_10003F3A8(v26, v27, v28, v29);
      sub_100010F08(v26, v27, v28, v29);
      if (__OFSUB__(v15, 1))
      {
        __break(1u);
      }

      else if (!__OFSUB__(sub_10003F3A8(a2, a3, a4, a5), 1))
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    sub_10004D66C();
    __break(1u);
    return;
  }

LABEL_8:
  v16 = [v12 parameters];
  if (v16)
  {
    v17 = v16;
    isa = sub_10004D2DC().super.super.isa;
    v19 = sub_10004D05C();
    [v17 setObject:isa forKeyedSubscript:v19];
    swift_unknownObjectRelease();
  }

  v20 = [v12 parameters];
  if (v20)
  {
    v21 = v20;
    if (*(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor) || (v22 = sub_10003F3A8(a2, a3, a4, a5) - 1, v22 > 2))
    {
      v24.super.super.isa = 0;
    }

    else
    {
      v23 = qword_100050930[v22];
      v24.super.super.isa = sub_10004D32C().super.super.isa;
    }

    v25 = sub_10004D05C();
    [v21 setObject:v24.super.super.isa forKeyedSubscript:v25];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void sub_100014340(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v145 = a4;
  v148 = sub_10004CEFC();
  v147 = *(v148 - 8);
  v9 = *(v147 + 64);
  v10 = __chkstk_darwin(v148);
  *&v142 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  *&v146 = &v141 - v13;
  v14 = __chkstk_darwin(v12);
  *&v144 = &v141 - v15;
  __chkstk_darwin(v14);
  *&v143 = &v141 - v16;

  v17 = sub_10004CEDC();
  v18 = sub_10004D39C();

  if (!os_log_type_enabled(v17, v18))
  {
    v21 = a3;

    if (a2)
    {
      goto LABEL_3;
    }

LABEL_10:
    v36 = sub_10004CEDC();
    v37 = sub_10004D38C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "synthesizeEvent: Unable to find backing view", v38, 2u);
    }

    goto LABEL_19;
  }

  v19 = swift_slowAlloc();
  *&v141 = a1;
  v20 = v19;
  v149[0] = swift_slowAlloc();
  *v20 = 136315394;
  *(v20 + 4) = sub_10000C618(0xD00000000000003BLL, 0x8000000100053A40, v149);
  *(v20 + 12) = 2080;
  v21 = a3;
  v22 = sub_10004D02C();
  v24 = sub_10000C618(v22, v23, v149);

  *(v20 + 14) = v24;
  _os_log_impl(&_mh_execute_header, v17, v18, "%s %s", v20, 0x16u);
  swift_arrayDestroy();

  a1 = v141;

  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_3:
  v153 = 1701869940;
  v154 = 0xE400000000000000;
  v25 = a2;
  sub_10004D5EC();
  if (!*(v21 + 16) || (v26 = v21, v27 = sub_1000330C8(v149), (v28 & 1) == 0))
  {
    sub_10000CFD0(v149);
LABEL_14:
    v32 = sub_10004CEDC();
    v33 = sub_10004D38C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "synthesizeEvent: No event type name received";
      goto LABEL_16;
    }

LABEL_17:

LABEL_18:
LABEL_19:
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  sub_10000C7F0(*(v21 + 56) + 32 * v27, v152);
  sub_10000CFD0(v149);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v29 = v153;
  v30 = v154;
  v31 = sub_100013C0C();
  if (v31 == 7)
  {

    v32 = sub_10004CEDC();
    v33 = sub_10004D38C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "synthesizeEvent: Unable to parse event type";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v32, v33, v35, v34, 2u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  LODWORD(v39) = v31;

  v40 = sub_10004CEDC();
  v41 = sub_10004D39C();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    LODWORD(v141) = v39;
    v39 = a1;
    v43 = v42;
    v149[0] = swift_slowAlloc();
    *v43 = 136315394;
    v44 = sub_10000C618(v29, v30, v149);

    *(v43 + 4) = v44;
    *(v43 + 12) = 2080;
    v45 = sub_10004D02C();
    v47 = sub_10000C618(v45, v46, v149);

    *(v43 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v40, v41, "synthesizeEvent: Event Received: %s, %s", v43, 0x16u);
    swift_arrayDestroy();

    a1 = v39;
    LOBYTE(v39) = v141;
  }

  else
  {
  }

  if (v39 == 1)
  {

    goto LABEL_32;
  }

  v48 = sub_10004D74C();

  if (v48)
  {
LABEL_32:

    v60 = sub_10004CEDC();
    v61 = sub_10004D37C();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v149[0] = v63;
      *v62 = 136315138;
      v64 = sub_10004D02C();
      v66 = sub_10000C618(v64, v65, v149);

      *(v62 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v60, v61, "synthesizeEvent: Ignoring event: %s", v62, 0xCu);
      sub_10000CF40(v63);
    }

    goto LABEL_18;
  }

  if (v39 <= 1u)
  {
    v67 = a1;
    v68 = v26;
    if (!v39)
    {
      (*(v147 + 16))(v143, v67, v148);
      v69 = type metadata accessor for TranscriptBackgroundTapbackEventHandler(0);
      v70 = *(v69 + 48);
      v71 = *(v69 + 52);
      v72 = v25;
      v73 = swift_allocObject();
      *(v73 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_tapbackAdded) = 1;
      v150 = 0x656D617266;
      v151 = 0xE500000000000000;

      v74 = v72;
      sub_10000CDAC(v145, v149);
      sub_10004D5EC();
      if (*(v68 + 16) && (v75 = sub_1000330C8(v152), (v76 & 1) != 0))
      {
        sub_10000C7F0(*(v68 + 56) + 32 * v75, &v153);
        sub_10000CFD0(v152);
        sub_10000D024(0, &qword_10006E448, NSValue_ptr);
        if (swift_dynamicCast())
        {
          v77 = v149[0];
          [v149[0] CGRectValue];
          v142 = v78;
          v144 = v79;
          v141 = v80;
          v146 = v81;

          *&v84 = v141;
          *&v83 = v142;
          v82 = 0;
          *(&v83 + 1) = v144;
          *(&v84 + 1) = v146;
LABEL_62:
          v119 = v73 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_frame;
          *v119 = v83;
          *(v119 + 16) = v84;
          *(v119 + 32) = v82;
          v153 = 0x6F6C6C6142736168;
          v154 = 0xEF65706168536E6FLL;
          sub_10004D5EC();
          if (*(v68 + 16) && (v120 = sub_1000330C8(v149), (v121 & 1) != 0))
          {
            sub_10000C7F0(*(v68 + 56) + 32 * v120, v152);
            sub_10000CFD0(v149);
            sub_10000D024(0, &qword_10006F3B0, NSNumber_ptr);
            if (swift_dynamicCast())
            {
              v122 = v153;
              v123 = [v153 BOOLValue];

LABEL_74:
              *(v73 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_hasBalloonShape) = v123;
              v129 = v143;
              *(v73 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_bubblePath) = sub_100017794(v68);
              v130 = (v73 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration);
              v131 = v145;
              v132 = v145[5];
              v130[4] = v145[4];
              v130[5] = v132;
              v130[6] = v131[6];
              *(v130 + 110) = *(v131 + 110);
              v133 = v131[1];
              *v130 = *v131;
              v130[1] = v133;
              v134 = v131[3];
              v130[2] = v131[2];
              v130[3] = v134;
              (*(v147 + 32))(v73 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v129, v148);
              *(v73 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v68;
              *(v73 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v74;
              *(a5 + 24) = v69;
              *(a5 + 32) = &off_100066080;

              *a5 = v73;
              return;
            }
          }

          else
          {
            sub_10000CFD0(v149);
          }

          v123 = 2;
          goto LABEL_74;
        }
      }

      else
      {
        sub_10000CFD0(v152);
      }

      v83 = 0uLL;
      v82 = 1;
      v84 = 0uLL;
      goto LABEL_62;
    }

    v49 = a5;
    (*(v147 + 16))(v144, v67, v148);
    v97 = type metadata accessor for TranscriptBackgroundTapbackEventHandler(0);
    v98 = *(v97 + 48);
    v99 = *(v97 + 52);
    v54 = swift_allocObject();
    *(v54 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_tapbackAdded) = 0;
    v150 = 0x656D617266;
    v151 = 0xE500000000000000;

    v55 = v25;
    sub_10000CDAC(v145, v149);
    sub_10004D5EC();
    if (*(v68 + 16) && (v100 = sub_1000330C8(v152), (v101 & 1) != 0))
    {
      sub_10000C7F0(*(v68 + 56) + 32 * v100, &v153);
      sub_10000CFD0(v152);
      sub_10000D024(0, &qword_10006E448, NSValue_ptr);
      if (swift_dynamicCast())
      {
        v102 = v149[0];
        [v149[0] CGRectValue];
        v142 = v103;
        v143 = v104;
        v141 = v105;
        v146 = v106;

        *&v109 = v141;
        *&v108 = v142;
        v107 = 0;
        *(&v108 + 1) = v143;
        *(&v109 + 1) = v146;
LABEL_68:
        v124 = v54 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_frame;
        *v124 = v108;
        *(v124 + 16) = v109;
        *(v124 + 32) = v107;
        v153 = 0x6F6C6C6142736168;
        v154 = 0xEF65706168536E6FLL;
        sub_10004D5EC();
        if (*(v68 + 16) && (v125 = sub_1000330C8(v149), (v126 & 1) != 0))
        {
          sub_10000C7F0(*(v68 + 56) + 32 * v125, v152);
          sub_10000CFD0(v149);
          sub_10000D024(0, &qword_10006F3B0, NSNumber_ptr);
          if (swift_dynamicCast())
          {
            v127 = v153;
            v128 = [v153 BOOLValue];

LABEL_77:
            *(v54 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_hasBalloonShape) = v128;
            v135 = v144;
            *(v54 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_bubblePath) = sub_100017794(v68);
            v136 = (v54 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration);
            v137 = v145;
            v138 = v145[5];
            v136[4] = v145[4];
            v136[5] = v138;
            v136[6] = v137[6];
            *(v136 + 110) = *(v137 + 110);
            v139 = v137[1];
            *v136 = *v137;
            v136[1] = v139;
            v140 = v137[3];
            v136[2] = v137[2];
            v136[3] = v140;
            (*(v147 + 32))(v54 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v135, v148);
            *(v54 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v68;
            *(v54 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v55;
            v49[3] = v97;
            v49[4] = &off_100066080;
            goto LABEL_78;
          }
        }

        else
        {
          sub_10000CFD0(v149);
        }

        v128 = 2;
        goto LABEL_77;
      }
    }

    else
    {
      sub_10000CFD0(v152);
    }

    v108 = 0uLL;
    v107 = 1;
    v109 = 0uLL;
    goto LABEL_68;
  }

  if (v39 - 2 >= 3)
  {
    if (v39 == 5)
    {
      v153 = 0x657669746361;
      v154 = 0xE600000000000000;
      sub_10004D5EC();
      if (*(v26 + 16))
      {
        v85 = sub_1000330C8(v149);
        if (v86)
        {
          sub_10000C7F0(*(v26 + 56) + 32 * v85, v152);
          sub_10000CFD0(v149);
          if (swift_dynamicCast())
          {
            v87 = v153;
            v88 = v147;
            v89 = v142;
            v90 = a1;
            v91 = v148;
            (*(v147 + 16))(v142, v90, v148);
            updated = type metadata accessor for TranscriptBackgroundUpdateActiveStateEventHandler(0);
            v93 = *(updated + 48);
            v94 = *(updated + 52);
            v95 = swift_allocObject();
            *(v95 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension49TranscriptBackgroundUpdateActiveStateEventHandler_active) = v87;
            (*(v88 + 32))(v95 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v89, v91);
            *(v95 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v26;
            *(v95 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v25;
            v96 = &off_100066060;
LABEL_56:
            *(a5 + 24) = updated;
            *(a5 + 32) = v96;
            *a5 = v95;

            return;
          }

          goto LABEL_58;
        }
      }
    }

    else
    {
      v153 = 0x6C6C6F7263537369;
      v154 = 0xEB00000000676E69;
      sub_10004D5EC();
      if (*(v26 + 16))
      {
        v110 = sub_1000330C8(v149);
        if (v111)
        {
          sub_10000C7F0(*(v26 + 56) + 32 * v110, v152);
          sub_10000CFD0(v149);
          if (swift_dynamicCast())
          {
            v112 = v153;
            v113 = v147;
            v114 = v142;
            v115 = a1;
            v116 = v148;
            (*(v147 + 16))(v142, v115, v148);
            updated = type metadata accessor for TranscriptBackgroundIsScrollingEventHandler(0);
            v117 = *(updated + 48);
            v118 = *(updated + 52);
            v95 = swift_allocObject();
            *(v95 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43TranscriptBackgroundIsScrollingEventHandler_isScrolling) = v112;
            (*(v113 + 32))(v95 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v114, v116);
            *(v95 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v26;
            *(v95 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v25;
            v96 = &off_100066050;
            goto LABEL_56;
          }

LABEL_58:
          v32 = sub_10004CEDC();
          v33 = sub_10004D38C();
          if (!os_log_type_enabled(v32, v33))
          {
            goto LABEL_17;
          }

          v34 = swift_slowAlloc();
          *v34 = 0;
          v35 = "Expected active state";
          goto LABEL_16;
        }
      }
    }

    sub_10000CFD0(v149);
    goto LABEL_58;
  }

  v49 = a5;
  (*(v147 + 16))(v146, a1, v148);
  v50 = v25;
  v51 = type metadata accessor for TranscriptBackgroundKeyboardEventHandler(0);
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  v54 = swift_allocObject();
  *(v54 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType) = v39;
  v153 = 0xD000000000000012;
  v154 = 0x8000000100053950;
  v55 = v50;
  sub_10004D5EC();
  if (!*(v26 + 16) || (v56 = sub_1000330C8(v149), (v57 & 1) == 0))
  {
    sub_10000CFD0(v149);
    goto LABEL_36;
  }

  sub_10000C7F0(*(v26 + 56) + 32 * v56, v152);
  sub_10000CFD0(v149);
  sub_10000D024(0, &qword_10006F3B0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v59 = 0;
    goto LABEL_37;
  }

  v58 = v153;
  v59 = [v153 BOOLValue];

LABEL_37:
  *(v54 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_fromTapbackContext) = v59;
  (*(v147 + 32))(v54 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v146, v148);
  *(v54 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v26;
  *(v54 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v55;
  v49[3] = v51;
  v49[4] = &off_100066070;

LABEL_78:

  *v49 = v54;
}

uint64_t sub_1000156C8()
{
  result = sub_10004CEFC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000157A8(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_frame);
  if (*(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_frame + 32))
  {
    oslog = sub_10004CEDC();
    v3 = sub_10004D38C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Unable to determine frame of message bubble";
LABEL_7:
      _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v6 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_hasBalloonShape);
  if (v6 == 2)
  {
    oslog = sub_10004CEDC();
    v3 = sub_10004D38C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Unable to determine look of message";
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  v7 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
  v8 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_tapbackAdded);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = *v2;
  *(v10 + 40) = v2[1];
  *(v10 + 24) = v11;
  *(v10 + 56) = v6 & 1;
  *(v10 + 64) = a1;

  if (v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  sub_10000B44C(v12, sub_100017F6C);
}

void sub_1000159A8(uint64_t a1, char a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v14 = *(a1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
  v15 = *(v14 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect);
  if (v15)
  {
    v16 = *(*v15 + 144);
    v17 = *(v14 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect);

    v16(0);
  }

  sub_100015CDC(a2 & 1, *(a1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_bubblePath), a4, a5, a6, a7);
  v18 = *(a3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v18);
  v19 = *(a3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
  sub_100015AD8(v19, a1);

  os_unfair_lock_unlock(v18);
}

void sub_100015AD8(void *a1, uint64_t a2)
{
  v3 = [a1 rootNode];
  v4 = sub_10004D05C();
  v11 = [v3 childNodeWithName:v4 recursively:1];

  if (v11)
  {
    *(a2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_tapbackAdded);
    v5 = [v11 parameters];
    if (v5)
    {
      v6 = v5;
      isa = sub_10004D4FC().super.isa;
      v8 = sub_10004D05C();

      [v6 setObject:isa forKeyedSubscript:v8];
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v11 = sub_10004CEDC();
    v9 = sub_10004D38C();
    if (os_log_type_enabled(v11, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v11, v9, "Unable to find parameter node", v10, 2u);
    }
  }
}

void sub_100015CDC(char a1, void *a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v8 = *(v6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
  v9 = *&v8[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager];
  if (v9)
  {
    v16 = *&v8[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager];

    v17 = sub_10004CEDC();
    v18 = sub_10004D37C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10000C618(*(v7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 32), *(v7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 40), &v34);
      _os_log_impl(&_mh_execute_header, v17, v18, "#%s provideMaskIfNeeded", v19, 0xCu);
      sub_10000CF40(v20);
    }

    [v8 bounds];
    v22 = v21;
    v24 = v23;
    sub_10000E8AC();
    v25 = *(v9 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_asset);
    v26 = *(v9 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_provider);
    if (a1)
    {
      v27 = swift_allocObject();
      *(v27 + 16) = v22;
      *(v27 + 24) = v24;
      *(v27 + 32) = a3;
      *(v27 + 40) = a4;
      *(v27 + 48) = a5;
      *(v27 + 56) = a6;
      *(v27 + 64) = a2;
      v28 = a2;
    }

    else
    {
      v32 = swift_allocObject();
      *(v32 + 16) = v22;
      *(v32 + 24) = v24;
      *(v32 + 32) = a3;
      *(v32 + 40) = a4;
      *(v32 + 48) = a5;
      *(v32 + 56) = a6;
      *(v32 + 64) = 1;
    }

    v29 = sub_10000DCFC(sub_100017F9C, v22, v24);

    [v25 setTexture:v29];
    swift_unknownObjectRelease();
    sub_10000E198(0.2, v22, v24);
  }

  else
  {
    oslog = sub_10004CEDC();
    v30 = sub_10004D38C();
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v30, "Unable to find mask manager", v31, 2u);
    }
  }
}

uint64_t sub_100016048()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 80);
  v5[4] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 64);
  v5[5] = v1;
  v6[0] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 96);
  *(v6 + 14) = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 110);
  v2 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 16);
  v5[0] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration);
  v5[1] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 48);
  v5[2] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 32);
  v5[3] = v3;
  return sub_10000CE08(v5);
}

uint64_t sub_1000160B0()
{
  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata);

  v4 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_bubblePath);

  v5 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 64);
  v11[5] = v5;
  v12[0] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 96);
  *(v12 + 14) = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 110);
  v6 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 32);
  v11[3] = v7;
  sub_10000CE08(v11);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

void sub_10001627C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType);
  switch(v5)
  {
    case 4:
      v14 = "keyboardWillShow";
      break;
    case 3:
      v14 = "keyboardFrameDidChange";
      break;
    case 2:
      v6 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata);
      type metadata accessor for KeyboardFrameDidChangeDataUpdate();
      swift_allocObject();

      v8 = sub_10000A778(v7);
      if (v8)
      {
        v9 = v8;
        v10 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
        v11 = swift_allocObject();
        v11[2] = v2;
        v11[3] = v9;
        v11[4] = a1;
        v11[5] = v4;

        v12 = sub_100017DC8;
        v13 = 3;
LABEL_32:
        sub_10000B44C(v13, v12);

        return;
      }

      goto LABEL_36;
    default:
      return;
  }

  if ((v14 | 0x8000000000000000) == 0x8000000100052F90)
  {
  }

  else
  {
    v15 = sub_10004D74C();

    if ((v15 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v16 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
  v17 = *(v16 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect);
  if (v17)
  {
    v18 = *(*v17 + 144);
    v19 = *(v16 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect);

    v18(0);
  }

  *(v16 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp) = 1;
LABEL_14:
  if (v5 == 4)
  {
    v20 = 0x8000000100052FB0;
  }

  else
  {
    v20 = 0x8000000100052F90;
  }

  if (0x8000000100052FB0 == v20)
  {
  }

  else
  {
    v21 = sub_10004D74C();

    if ((v21 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  *(*(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp) = 0;
LABEL_21:

  v22 = sub_10004CEDC();
  v23 = sub_10004D39C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_fromTapbackContext);

    _os_log_impl(&_mh_execute_header, v22, v23, "from tapback? %{BOOL}d", v24, 8u);
  }

  else
  {
  }

  if (*(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_fromTapbackContext) != 1)
  {
    v28 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata);
    type metadata accessor for KeyboardVisibilityDataUpdate();
    swift_allocObject();

    v30 = sub_10000A908(v29);
    if (v30)
    {
      v31 = v30;
      v32 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
      v33 = swift_allocObject();
      v33[2] = v2;
      v33[3] = a1;
      v33[4] = v31;
      v33[5] = v4;

      if (v5 == 4)
      {
        v13 = 5;
      }

      else
      {
        v13 = 4;
      }

      v12 = sub_100017D74;
      goto LABEL_32;
    }

LABEL_36:
    oslog = sub_10004CEDC();
    v25 = sub_10004D38C();
    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "Missing data for keyboard update";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  oslog = sub_10004CEDC();
  v25 = sub_10004D39C();
  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Ignoring keyboard will show since it was from a tapback context menu";
LABEL_38:
    _os_log_impl(&_mh_execute_header, oslog, v25, v27, v26, 2u);
  }

LABEL_39:
}

void sub_100016794(uint64_t a1, double *a2, uint64_t a3)
{
  sub_100017334(a2[4], a2[5], a2[6], a2[7]);
  v4 = *(a3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v4);
  v5 = *(a3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
  v6 = [v5 rootNode];
  v7 = sub_10004D05C();
  v8 = [v6 childNodeWithName:v7 recursively:1];

  if (v8)
  {
    sub_10000A584(v8);
    v9 = [v8 parameters];
    if (v9)
    {
      v10 = v9;
      isa = sub_10004D4FC().super.isa;
      v12 = sub_10004D05C();
      [v10 setObject:isa forKeyedSubscript:v12];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = v5;
  }

  os_unfair_lock_unlock(v4);
}

void sub_100016940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v7 = sub_10004CF1C();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  __chkstk_darwin(v7);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10004CF6C();
  v56 = *(v58 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v58);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004CF0C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10004CF8C();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v49 - v23;
  v25 = *(a1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType);
  v61 = v22;
  v54 = v26;
  if (v25 <= 2 || v25 > 4)
  {
    goto LABEL_7;
  }

  v27 = "keyboardFrameDidChange";
  if (v25 != 3)
  {
    v27 = "keyboardWillShow";
  }

  if (0x8000000100052F90 == (v27 | 0x8000000000000000))
  {
  }

  else
  {
LABEL_7:
    v28 = sub_10004D74C();

    if ((v28 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v29 = *(a1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata);
  type metadata accessor for KeyboardVisibilityDataUpdate();
  swift_allocObject();

  v31 = sub_10000A908(v30);
  if (v31)
  {
    v32 = v31;
    if (*(v31 + 104))
    {

      goto LABEL_15;
    }

    v33 = *(v31 + 20) * 1000.0;
    if (COERCE_INT(fabs(v33)) > 2139095039)
    {
      __break(1u);
    }

    else if (v33 > -9.2234e18)
    {
      v52 = a3;
      if (v33 < 9.2234e18)
      {
        v34 = *(v31 + 72);
        v49 = *(v31 + 88);
        v50 = v34;
        v35 = v33;
        sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
        v51 = sub_10004D3DC();
        sub_10004CF7C();
        *v16 = v35;
        (*(v13 + 104))(v16, enum case for DispatchTimeInterval.milliseconds(_:), v12);
        sub_10004CF9C();
        (*(v13 + 8))(v16, v12);
        v54 = *(v54 + 8);
        (v54)(v21, v61);
        v36 = swift_allocObject();
        swift_weakInit();
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
        v38 = v50;
        *(v37 + 40) = v49;
        *(v37 + 24) = v38;
        *(v37 + 56) = v32;
        *(v37 + 64) = a2;
        *(v37 + 72) = v53;
        aBlock[4] = sub_100017E10;
        aBlock[5] = v37;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002FBD0;
        aBlock[3] = &unk_100066158;
        v39 = _Block_copy(aBlock);

        v40 = v55;
        sub_10004CF3C();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_100017E40();
        sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
        sub_10000CD00();
        v41 = v57;
        v42 = v60;
        sub_10004D57C();
        v43 = v51;
        sub_10004D3BC();
        _Block_release(v39);

        (*(v59 + 8))(v41, v42);
        (*(v56 + 8))(v40, v58);
        (v54)(v24, v61);
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  v44 = *(a2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v44);
  v45 = *(a2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
  v46 = [v45 rootNode];
  v47 = sub_10004D05C();
  v48 = [v46 childNodeWithName:v47 recursively:1];

  if (v48)
  {
    sub_10000AB30(v48);
  }

  os_unfair_lock_unlock(v44);
}

uint64_t sub_10001708C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);

    v17 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a1;
    *(v18 + 32) = a2;
    *(v18 + 40) = a3;
    *(v18 + 48) = a4;
    *(v18 + 56) = a6;
    *(v18 + 64) = a7;
    *(v18 + 72) = a8;

    sub_10000B44C(3u, sub_100017EE0);
  }

  return result;
}

void sub_1000171E8(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100017334(a1, a2, a3, a4);
  }

  v12 = *(a7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v12);
  v13 = *(a7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
  v14 = [v13 rootNode];
  v15 = sub_10004D05C();
  v16 = [v14 childNodeWithName:v15 recursively:1];

  if (v16)
  {
    sub_10000AB30(v16);
  }

  os_unfair_lock_unlock(v12);
}

void sub_100017334(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
  v6 = *&v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager];
  if (v6)
  {
    v11 = *&v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager];

    [v5 frame];
    v13 = v12;
    v15 = v14;
    sub_10000E8AC();
    v16 = *(v6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_asset);
    v17 = *(v6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_provider);
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = v15;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;
    *(v18 + 48) = a3;
    *(v18 + 56) = a4;
    *(v18 + 64) = 2;
    v19 = sub_10000DCFC(sub_100017D6C, v13, v15);

    [v16 setTexture:v19];
    swift_unknownObjectRelease();
    sub_10000E198(0.2, v13, v15);
  }

  else
  {
    oslog = sub_10004CEDC();
    v20 = sub_10004D38C();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v20, "Unable to retrieve mask manager", v21, 2u);
    }
  }
}

uint64_t sub_10001761C()
{
  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_100017794(uint64_t a1)
{
  sub_10004D5EC();
  if (!*(a1 + 16) || (v2 = sub_1000330C8(v17), (v3 & 1) == 0))
  {
    sub_10000CFD0(v17);
LABEL_6:
    v4 = sub_10004CEDC();
    v9 = sub_10004D38C();
    if (os_log_type_enabled(v4, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v9, "Unable to find bubble path from metadata, returning default path", v10, 2u);
    }

    goto LABEL_8;
  }

  sub_10000C7F0(*(a1 + 56) + 32 * v2, v18);
  sub_10000CFD0(v17);
  sub_10000D024(0, &qword_10006F3B8, NSData_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = 0x6150656C62627562;
  sub_10000D024(0, &qword_10006F3C0, NSKeyedUnarchiver_ptr);
  sub_10000D024(0, &qword_10006F3C8, UIBezierPath_ptr);
  v5 = sub_10004CD5C();
  v7 = v6;
  v8 = sub_10004D3AC();
  sub_100017C6C(v5, v7);
  v12 = sub_10004CEDC();
  v13 = sub_10004D39C();
  if (os_log_type_enabled(v12, v13))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Found bubble path, returning corresponding cgPath", v15, 2u);
  }

  if (v8)
  {
    v16 = [v8 CGPath];

    return v16;
  }

LABEL_8:

  return 0;
}

void sub_100017AF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension49TranscriptBackgroundUpdateActiveStateEventHandler_active);
  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView;
  if ((v1 & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
    v4 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect);
    if (v4)
    {
      v5 = *(*v4 + 144);
      v6 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect);

      v5(1);

      v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView;
    }
  }

  v7 = *(*(v0 + v2) + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager);
  if (v7)
  {
    *(v7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_hostAllowsRunning) = v1;
    if (v1)
    {
      v8 = 0x657669746361;
    }

    else
    {
      v8 = 0x6576697463616E69;
    }

    if (v1)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = 0xE800000000000000;
    }

    v10._countAndFlagsBits = v8;
    v10._object = v9;
    sub_10004D16C(v10);

    sub_100020A98(0x2074736F48, 0xE500000000000000);
  }

  if (v1)
  {
    sub_10000B44C(0, 0);
  }
}