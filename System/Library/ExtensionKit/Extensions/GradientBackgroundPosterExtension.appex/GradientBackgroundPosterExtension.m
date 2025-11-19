double __vfx_script_Gradient_graph_12()
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  v3 = *(arguments_buffer + 40);
  v2 = *(arguments_buffer + 48);
  v4 = **(arguments_buffer + 8);
  v155 = **(arguments_buffer + 16);
  v5 = **(arguments_buffer + 32);
  vfx_script_clock_time();
  *&v6 = v6;
  v7 = sinf(*&v6 * 4.0);
  v8 = vrsqrteq_f32(xmmword_100043A10);
  v9 = vmulq_f32(v8, vrsqrtsq_f32(xmmword_100043A10, vmulq_f32(v8, v8)));
  v149 = vmulq_f32(vmulq_f32(v9, vrsqrtsq_f32(xmmword_100043A10, vmulq_f32(v9, v9))), xmmword_100043A20);
  v10 = __sincosf_stret((((v7 * 180.0) * 3.1416) / 180.0) * 0.5);
  v11 = vmulq_n_f32(v149, v10.__sinval);
  v11.i32[3] = LODWORD(v10.__cosval);
  if (v4)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  v13 = vbslq_s8(vdupq_n_s32(v12), v11, v155);
  v14 = *v1;
  v15 = vmulq_f32(*v1, v13);
  v150 = *v1;
  v156 = v13;
  if (vaddv_f32(vadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL))) >= 0.0)
  {
    v38 = vsubq_f32(v13, v14);
    v39 = vmulq_f32(v38, v38);
    v40 = vaddq_f32(v14, v13);
    v41 = vmulq_f32(v40, v40);
    v42 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL)))));
    v43 = v42 + v42;
    v44 = 1.0;
    _ZF = (v42 + v42) == 0.0;
    v45 = 1.0;
    if (!_ZF)
    {
      v45 = sinf(v43) / v43;
    }

    v46 = v45;
    v47 = vrecpe_f32(LODWORD(v45));
    v48 = vmul_f32(v47, vrecps_f32(LODWORD(v46), v47));
    LODWORD(v49) = vmul_f32(v48, vrecps_f32(LODWORD(v46), v48)).u32[0];
    if ((v43 * 0.05) != 0.0)
    {
      v142 = v49;
      v48.f32[0] = sinf(v43 * 0.05);
      v49 = v142;
      v44 = v48.f32[0] / (v43 * 0.05);
    }

    v48.f32[0] = (v49 * v44) * 0.05;
    v50 = vdupq_lane_s32(v48, 0);
    v51 = v43 * 0.95;
    v52 = 1.0;
    if (v51 != 0.0)
    {
      v137 = v50;
      v143 = v49;
      v53 = sinf(v51);
      v50 = v137;
      v49 = v143;
      v52 = v53 / v51;
    }

    v36 = v156;
    v37 = vmlaq_f32(vmulq_n_f32(v150, (v49 * v52) * 0.95), v156, v50);
  }

  else
  {
    v16 = vaddq_f32(v14, v13);
    v17 = vmulq_f32(v16, v16);
    v18 = vsubq_f32(v13, v14);
    v19 = vmulq_f32(v18, v18);
    v20 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)))));
    v21 = v20 + v20;
    v22 = 1.0;
    _ZF = (v20 + v20) == 0.0;
    v24 = 1.0;
    if (!_ZF)
    {
      v24 = sinf(v21) / v21;
    }

    v25 = v24;
    v26 = vrecpe_f32(LODWORD(v24));
    v27 = vmul_f32(v26, vrecps_f32(LODWORD(v25), v26));
    LODWORD(v28) = vmul_f32(v27, vrecps_f32(LODWORD(v25), v27)).u32[0];
    if ((v21 * 0.05) != 0.0)
    {
      v140 = v28;
      v29 = sinf(v21 * 0.05);
      v28 = v140;
      v22 = v29 / (v21 * 0.05);
    }

    v30.i32[1] = v150.i32[1];
    v31 = vnegq_f32(v150);
    *v30.i32 = (v28 * v22) * 0.05;
    v32 = vdupq_lane_s32(v30, 0);
    v33 = v21 * 0.95;
    v34 = 1.0;
    if (v33 != 0.0)
    {
      v141 = v28;
      v151 = v31;
      v136 = v32;
      v35 = sinf(v33);
      v32 = v136;
      v28 = v141;
      v31 = v151;
      v34 = v35 / v33;
    }

    v36 = v156;
    v37 = vmlaq_f32(vmulq_n_f32(v31, (v28 * v34) * 0.95), v156, v32);
  }

  v54 = vmulq_f32(v37, v37);
  *v54.i8 = vadd_f32(*v54.i8, *&vextq_s8(v54, v54, 8uLL));
  v55 = vdupq_lane_s32(vadd_f32(*v54.i8, vdup_lane_s32(*v54.i8, 1)), 0);
  v56 = vrsqrteq_f32(v55);
  v57 = vmulq_f32(v56, vrsqrtsq_f32(v55, vmulq_f32(v56, v56)));
  _Q1 = vbslq_s8(vceqzq_f32(v55), v37, vmulq_f32(vmulq_f32(v57, vrsqrtsq_f32(v55, vmulq_f32(v57, v57))), v37));
  *v1 = _Q1;
  _Q2 = vmulq_f32(v36, v36);
  *_Q2.i8 = vadd_f32(*_Q2.i8, *&vextq_s8(_Q2, _Q2, 8uLL));
  _Q0 = vdivq_f32(vmulq_f32(v36, xmmword_100043A30), vdupq_lane_s32(vadd_f32(*_Q2.i8, vdup_lane_s32(*_Q2.i8, 1)), 0));
  _Q2.i32[0] = _Q0.i32[3];
  v61 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL), vnegq_f32(_Q1)), _Q0, vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL));
  v62 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(_Q1, _Q0, 3), _Q0, _Q1, 3), vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL));
  __asm { FMLA            S0, S2, V1.S[3]; float }

  v66 = v62;
  v66.i32[3] = _Q0.i32[0];
  v152 = v62;
  v157 = v66;
  v67 = acosf(_Q0.f32[0]);
  v68 = v67 + v67;
  v69 = fminf(v68, (v5 * 3.1416) / 180.0) * 0.5;
  v70 = sinf(v68 * 0.5);
  v71 = 0.0;
  if (v70 >= 0.000001)
  {
    v71 = sinf(v69) / v70;
  }

  v144 = v71;
  v72 = cosf(v69);
  *v73.i8 = vmul_n_f32(*v152.f32, v144);
  v73.i64[1] = __PAIR64__(LODWORD(v72), COERCE_UNSIGNED_INT(vmuls_lane_f32(v144, v152, 2)));
  v74 = vbslq_s8(vdupq_n_s32(0), v157, v73);
  v75 = *v3;
  v76 = vmulq_f32(*v3, v74);
  v153 = *v3;
  v158 = v74;
  if (vaddv_f32(vadd_f32(*v76.i8, *&vextq_s8(v76, v76, 8uLL))) >= 0.0)
  {
    v97 = vsubq_f32(v74, v75);
    v98 = vmulq_f32(v97, v97);
    v99 = vaddq_f32(v75, v74);
    v100 = vmulq_f32(v99, v99);
    v101 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v98.i8, *&vextq_s8(v98, v98, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v100.i8, *&vextq_s8(v100, v100, 8uLL)))));
    v102 = v101 + v101;
    v103 = 1.0;
    _ZF = (v101 + v101) == 0.0;
    v104 = 1.0;
    if (!_ZF)
    {
      v104 = sinf(v102) / v102;
    }

    v105 = v104;
    v106 = vrecpe_f32(LODWORD(v104));
    v107 = vmul_f32(v106, vrecps_f32(LODWORD(v105), v106));
    LODWORD(v108) = vmul_f32(v107, vrecps_f32(LODWORD(v105), v107)).u32[0];
    if ((v102 * 0.05) != 0.0)
    {
      v147 = v108;
      v107.f32[0] = sinf(v102 * 0.05);
      v108 = v147;
      v103 = v107.f32[0] / (v102 * 0.05);
    }

    v107.f32[0] = (v108 * v103) * 0.05;
    v109 = vdupq_lane_s32(v107, 0);
    v110 = v102 * 0.95;
    v111 = 1.0;
    if (v110 != 0.0)
    {
      v139 = v109;
      v148 = v108;
      v112 = sinf(v110);
      v109 = v139;
      v108 = v148;
      v111 = v112 / v110;
    }

    v96 = vmlaq_f32(vmulq_n_f32(v153, (v108 * v111) * 0.95), v158, v109);
  }

  else
  {
    v77 = vaddq_f32(v75, v74);
    v78 = vmulq_f32(v77, v77);
    v79 = vsubq_f32(v74, v75);
    v80 = vmulq_f32(v79, v79);
    v81 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v78.i8, *&vextq_s8(v78, v78, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v80.i8, *&vextq_s8(v80, v80, 8uLL)))));
    v82 = v81 + v81;
    v83 = 1.0;
    _ZF = (v81 + v81) == 0.0;
    v84 = 1.0;
    if (!_ZF)
    {
      v84 = sinf(v82) / v82;
    }

    v85 = v84;
    v86 = vrecpe_f32(LODWORD(v84));
    v87 = vmul_f32(v86, vrecps_f32(LODWORD(v85), v86));
    LODWORD(v88) = vmul_f32(v87, vrecps_f32(LODWORD(v85), v87)).u32[0];
    if ((v82 * 0.05) != 0.0)
    {
      v145 = v88;
      v89 = sinf(v82 * 0.05);
      v88 = v145;
      v83 = v89 / (v82 * 0.05);
    }

    v90.i32[1] = v153.i32[1];
    v91 = vnegq_f32(v153);
    *v90.i32 = (v88 * v83) * 0.05;
    v92 = vdupq_lane_s32(v90, 0);
    v93 = v82 * 0.95;
    v94 = 1.0;
    if (v93 != 0.0)
    {
      v146 = v88;
      v154 = v91;
      v138 = v92;
      v95 = sinf(v93);
      v92 = v138;
      v88 = v146;
      v91 = v154;
      v94 = v95 / v93;
    }

    v96 = vmlaq_f32(vmulq_n_f32(v91, (v88 * v94) * 0.95), v158, v92);
  }

  v113 = vmulq_f32(v96, v96);
  v114 = 0;
  *v113.i8 = vadd_f32(*v113.i8, *&vextq_s8(v113, v113, 8uLL));
  _Q1 = vdupq_lane_s32(vadd_f32(*v113.i8, vdup_lane_s32(*v113.i8, 1)), 0);
  v115 = vrsqrteq_f32(_Q1);
  v116 = vmulq_f32(v115, vrsqrtsq_f32(_Q1, vmulq_f32(v115, v115)));
  _Q2 = vbslq_s8(vceqzq_f32(_Q1), v96, vmulq_f32(vmulq_f32(v116, vrsqrtsq_f32(_Q1, vmulq_f32(v116, v116))), v96));
  _S3 = _Q2.i32[1];
  _S5 = _Q2.i32[2];
  __asm { FMLS            S1, S5, V2.S[2] }

  _S6 = _Q2.i32[3];
  __asm { FMLA            S1, S6, V2.S[3] }

  v121 = vmuls_lane_f32(_Q2.f32[2], _Q2, 3);
  v122.f32[0] = vmuls_lane_f32(_Q2.f32[1], _Q2, 3);
  v123.i32[3] = 0;
  v123.i32[0] = _Q1.i32[0];
  v123.f32[1] = (v121 + (_Q2.f32[0] * _Q2.f32[1])) + (v121 + (_Q2.f32[0] * _Q2.f32[1]));
  _Q1.i32[3] = 0;
  v123.f32[2] = -(v122.f32[0] - (_Q2.f32[0] * _Q2.f32[2])) - (v122.f32[0] - (_Q2.f32[0] * _Q2.f32[2]));
  __asm
  {
    FMLA            S4, S3, V2.S[1]
    FMLA            S4, S6, V2.S[3]
    FMLA            S16, S5, V2.S[1]
  }

  _Q1.f32[0] = -(v121 - (_Q2.f32[0] * _Q2.f32[1])) - (v121 - (_Q2.f32[0] * _Q2.f32[1]));
  _Q1.f32[1] = _S4 - (_Q2.f32[0] * _Q2.f32[0]);
  *v3 = _Q2;
  v122.f32[1] = -(_Q2.f32[0] * _Q2.f32[3]);
  v128 = vmla_laneq_f32(v122, *_Q2.f32, _Q2, 2);
  *v131.f32 = vadd_f32(v128, v128);
  __asm
  {
    FMLA            S6, S5, V2.S[2]
    FMLS            S5, S3, V2.S[1]
  }

  v131.i64[1] = _S5;
  v159[0] = xmmword_100043A20;
  v159[1] = xmmword_100043A40;
  v159[2] = xmmword_100043A50;
  v159[3] = xmmword_100043A60;
  do
  {
    _Q1.f32[2] = _S16 + _S16;
    v160[v114] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v123, COERCE_FLOAT(v159[v114])), _Q1, *&v159[v114], 1), v131, v159[v114], 2), xmmword_100043A70, v159[v114], 3);
    ++v114;
  }

  while (v114 != 4);
  result = *v160;
  v133 = v160[1];
  v134 = v160[2];
  v135 = v160[3];
  *v2 = v160[0];
  v2[1] = v133;
  v2[2] = v134;
  v2[3] = v135;
  return result;
}

float __vfx_script_Gradient_graph_13()
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  v30 = *(arguments_buffer + 72);
  v31 = *(arguments_buffer + 48);
  v29 = *(arguments_buffer + 88);
  v28 = *(arguments_buffer + 104);
  v27 = *(arguments_buffer + 120);
  v2 = *(arguments_buffer + 136);
  v3 = *(arguments_buffer + 152);
  v4 = *(arguments_buffer + 168);
  v5 = *(arguments_buffer + 176);
  v6 = *(arguments_buffer + 192);
  v7 = *(arguments_buffer + 200);
  v8 = *(arguments_buffer + 216);
  v9 = *(arguments_buffer + 224);
  v10 = **(arguments_buffer + 8);
  v11 = **(arguments_buffer + 16);
  v12 = **(arguments_buffer + 24);
  v13 = **(arguments_buffer + 40);
  v23 = **(arguments_buffer + 56);
  v25 = **(arguments_buffer + 80);
  v26 = **(arguments_buffer + 64);
  v24 = **(arguments_buffer + 96);
  v22 = **(arguments_buffer + 112);
  v14 = **(arguments_buffer + 128);
  v15 = **(arguments_buffer + 144);
  v16 = **(arguments_buffer + 160);
  v21 = **(arguments_buffer + 184);
  v17 = **(arguments_buffer + 208);
  vfx_script_clock_time();
  *&v18 = v18;
  *&v18 = fmaxf(*&v18 - v12, 0.0);
  *v1 = v10 + ((v11 - v10) * (1.0 - (1.0 / ((((*&v18 / 3.0) * (*&v18 / 3.0)) * 16.0) + 1.0))));
  vfx_script_clock_time();
  *&v19 = v19;
  *v9 = LODWORD(v19);
  *v8 = v13 + v17;
  *v7 = *v1;
  *v6 = v21;
  *v5 = v23;
  *v4 = v16;
  *v3 = v15;
  *v2 = v14;
  *v27 = v22;
  *v28 = v24;
  *v29 = v25;
  result = v26;
  *v30 = v26;
  *v31 = v13;
  return result;
}

__n128 __vfx_script_Gradient_graph_14()
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 8);
  result = **arguments_buffer;
  **(arguments_buffer + 24) = **(arguments_buffer + 16);
  *v1 = result;
  return result;
}

__n128 __vfx_script_Gradient_graph_17()
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[1];
  v1 = arguments_buffer[2];
  v3 = arguments_buffer[3];
  v4 = arguments_buffer[4];
  [vfx_script_get_world_renderer() qword_10005F9F8];
  *v2 = vbsl_s8(vcgt_f32(vabd_f32(v5, *v2), vdup_n_s32(0x42480000u)), v5, *v2);
  [vfx_script_get_world_renderer() qword_10005F9F0];
  *v7.i32 = v6 * 1.5;
  *v8.i8 = vdiv_f32(*v2, vdup_lane_s32(v7, 0));
  v17 = vandq_s8(v8, vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmvn_s8(vceqz_f32(v7)), 0)), 0x1FuLL)));
  *v4 = *&v17.i32[1];
  [vfx_script_get_world_renderer() qword_10005F9F8];
  v9.f32[0] = vdiv_f32(v9, vdup_lane_s32(v9, 1)).f32[0];
  v9.f32[1] = 1.0 / v9.f32[0];
  __asm { FMOV            V1.2S, #1.0 }

  v15 = vminnm_f32(v9, _D1);
  *v3 = vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(vadd_f32(v15, v15)), vdupq_n_s64(0x3FF199999999999AuLL)));
  result = v17;
  *v1 = *v17.i32;
  return result;
}

float __vfx_script_Gradient_graph_18()
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 8);
  v2 = *(arguments_buffer + 16);
  v3 = **(arguments_buffer + 24);
  vfx_script_clock_delta_time();
  v5 = v3 * v4;
  *v2 = v5;
  result = v5 + *v1;
  *v1 = result;
  return result;
}

void *__vfx_script_Gradient_graph_25()
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  result = vfx_script_get_arguments_buffer();
  v1 = result[1];
  v2 = *result[3];
  if (*&v2 == 0.0 || *(&v2 + 1) == 0.0 || *(&v2 + 2) == 0.0 || (v3 = *result[2], *&v3 == 1.0) || *(&v3 + 1) == 1.0 || *(&v3 + 2) == 1.0)
  {
    vfx_script_tick();
    vfx_script_string_create();
    [v1 qword_10005F9E8];

    return vfx_script_string_destroy();
  }

  return result;
}

uint64_t __vfx_script_Gradient_trigger_15()
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 8);
  v2 = vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  v3 = *(arguments_buffer + 40);
  v6 = *v2;
  [vfx_script_get_world_renderer() qword_10005F9F8];
  *v3 = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(1.0 - COERCE_FLOAT(vdiv_f32(v6, v4).i32[1]), v4, 1)), v6.u32[0]);
  vfx_script_string_create();
  [v1 qword_10005F9E8];
  vfx_script_clock_time();
  vfx_script_graph_log();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Gradient_trigger_16()
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  v0 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_get_call_parameter();
  v1 = vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  *(v1 + 4);
  vfx_script_string_create();
  [v0 qword_10005F9E8];
  vfx_script_string_destroy();
  return vfx_script_graph_log();
}

uint64_t __vfx_script_Gradient_trigger_19()
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 8);
  v2 = *(arguments_buffer + 16);
  v3 = *(arguments_buffer + 32);
  v4 = *(arguments_buffer + 40);
  v5 = **(arguments_buffer + 24);
  vfx_script_string_create();
  [v4 qword_10005F9E8];
  *v3 = v5;
  *v2 = -1097229926;
  vfx_script_clock_time();
  *&v6 = v6;
  *v1 = LODWORD(v6);
  vfx_script_tick();
  vfx_script_clock_time();
  vfx_script_graph_log();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Gradient_trigger_20()
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 8);
  v2 = *(arguments_buffer + 16);
  v3 = *(arguments_buffer + 32);
  v4 = *(arguments_buffer + 40);
  v5 = **(arguments_buffer + 24);
  vfx_script_string_create();
  [v4 qword_10005F9E8];
  *v3 = v5;
  *v2 = -1082130432;
  vfx_script_clock_time();
  *&v6 = v6;
  *v1 = LODWORD(v6);
  vfx_script_tick();
  vfx_script_clock_time();
  vfx_script_graph_log();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Gradient_trigger_21()
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  v0 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_string_create();
  [v0 qword_10005F9E8];

  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Gradient_trigger_22()
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[1];
  v2 = arguments_buffer[3];
  v3 = arguments_buffer[4];
  v4 = arguments_buffer[6];
  v54 = arguments_buffer[2];
  v55 = arguments_buffer[5];
  v6 = arguments_buffer[7];
  v5 = arguments_buffer[8];
  v8 = arguments_buffer[9];
  v7 = arguments_buffer[10];
  v9 = arguments_buffer[12];
  v56 = *arguments_buffer[11];
  vfx_script_string_create();
  [v9 qword_10005F9E8];
  *v2 = v56;
  v11 = *v1;
  if (*v1 > 1)
  {
    if (v11 == 2)
    {
      *v42.i32 = *&v56 + *(&v56 + 2);
      v42.i32[1] = DWORD1(v56);
      v10.i32[0] = 1120403456;
      v43 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v56, v10), 0), *&v56, v42);
      [vfx_script_get_world_renderer() qword_10005F9F8];
      v45 = vbic_s8(vdiv_f32(v43, v44), vceqz_f32(v44));
      v44.f32[0] = vdiv_f32(v44, vdup_lane_s32(v44, 1)).f32[0];
      v44.f32[1] = 1.0 / v44.f32[0];
      __asm
      {
        FMOV            V2.2S, #1.0
        FMOV            V3.2S, #-1.0
      }

      v48 = vmul_f32(vminnm_f32(v44, _D2), vmla_f32(_D3, 0x4000000040000000, v45));
      v48.i32[1] = vneg_f32(v48).i32[1];
      *v5 = v48;
      vfx_script_clock_time();
      *&v49 = v49;
      *v6 = LODWORD(v49);
    }

    else
    {
      if (v11 != 3)
      {
        return vfx_script_string_destroy();
      }

      *v26.i32 = *&v56 + *(&v56 + 2);
      v26.i32[1] = DWORD1(v56);
      v10.i32[0] = 1120403456;
      v27 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v56, v10), 0), *&v56, v26);
      [vfx_script_get_world_renderer() qword_10005F9F8];
      v29 = vbic_s8(vdiv_f32(v27, v28), vceqz_f32(v28));
      v28.f32[0] = vdiv_f32(v28, vdup_lane_s32(v28, 1)).f32[0];
      v28.f32[1] = 1.0 / v28.f32[0];
      __asm
      {
        FMOV            V2.2S, #1.0
        FMOV            V3.2S, #-1.0
      }

      v32 = vmul_f32(vminnm_f32(v28, _D2), vmla_f32(_D3, 0x4000000040000000, v29));
      v32.i32[1] = vneg_f32(v32).i32[1];
      *v7 = v32;
      vfx_script_clock_time();
      *&v33 = v33;
      *v8 = LODWORD(v33);
    }
  }

  else
  {
    if (v11)
    {
      if (v11 != 1)
      {
        return vfx_script_string_destroy();
      }

      *v12.i32 = *&v56 + *(&v56 + 2);
      v12.i32[1] = DWORD1(v56);
      v10.i32[0] = 1120403456;
      v13 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v56, v10), 0), *&v56, v12);
      [vfx_script_get_world_renderer() qword_10005F9F8];
      v15 = vbic_s8(vdiv_f32(v13, v14), vceqz_f32(v14));
      v14.f32[0] = vdiv_f32(v14, vdup_lane_s32(v14, 1)).f32[0];
      v14.f32[1] = 1.0 / v14.f32[0];
      __asm
      {
        FMOV            V2.2S, #1.0
        FMOV            V3.2S, #-1.0
      }

      v22 = vmul_f32(vminnm_f32(v14, _D2), vmla_f32(_D3, 0x4000000040000000, v15));
      v22.i32[1] = vneg_f32(v22).i32[1];
      *v4 = v22;
      vfx_script_clock_time();
      v24 = v23;
      v25 = v55;
    }

    else
    {
      *v34.i32 = *&v56 + *(&v56 + 2);
      v34.i32[1] = DWORD1(v56);
      v10.i32[0] = 1120403456;
      v35 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v56, v10), 0), *&v56, v34);
      [vfx_script_get_world_renderer() qword_10005F9F8];
      v37 = vbic_s8(vdiv_f32(v35, v36), vceqz_f32(v36));
      v36.f32[0] = vdiv_f32(v36, vdup_lane_s32(v36, 1)).f32[0];
      v36.f32[1] = 1.0 / v36.f32[0];
      __asm
      {
        FMOV            V2.2S, #1.0
        FMOV            V3.2S, #-1.0
      }

      v40 = vmul_f32(vminnm_f32(v36, _D2), vmla_f32(_D3, 0x4000000040000000, v37));
      v40.i32[1] = vneg_f32(v40).i32[1];
      *v3 = v40;
      vfx_script_clock_time();
      v24 = v41;
      v25 = v54;
    }

    *v25 = v24;
  }

  v50 = *v1 + 1;
  _NF = -v50 < 0;
  v51 = -v50 & 3;
  v52 = v50 & 3;
  if (!_NF)
  {
    v52 = -v51;
  }

  *v1 = v52;
  vfx_script_tick();
  vfx_script_clock_time();
  vfx_script_graph_log();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Gradient_trigger_23()
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[1];
  v2 = arguments_buffer[2];
  v3 = arguments_buffer[4];
  v5 = arguments_buffer[5];
  v4 = arguments_buffer[6];
  v6 = arguments_buffer[8];
  v54 = arguments_buffer[7];
  v55 = arguments_buffer[3];
  v8 = arguments_buffer[9];
  v7 = arguments_buffer[10];
  v9 = arguments_buffer[12];
  v56 = *arguments_buffer[11];
  vfx_script_string_create();
  [v9 qword_10005F9E8];
  *v2 = v56;
  v11 = *v1;
  if (*v1 > 1)
  {
    if (v11 == 2)
    {
      *v42.i32 = *&v56 + *(&v56 + 2);
      v42.i32[1] = DWORD1(v56);
      v10.i32[0] = 1120403456;
      v43 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v56, v10), 0), *&v56, v42);
      [vfx_script_get_world_renderer() qword_10005F9F8];
      v45 = vbic_s8(vdiv_f32(v43, v44), vceqz_f32(v44));
      v44.f32[0] = vdiv_f32(v44, vdup_lane_s32(v44, 1)).f32[0];
      v44.f32[1] = 1.0 / v44.f32[0];
      __asm
      {
        FMOV            V2.2S, #1.0
        FMOV            V3.2S, #-1.0
      }

      v48 = vmul_f32(vminnm_f32(v44, _D2), vmla_f32(_D3, 0x4000000040000000, v45));
      v48.i32[1] = vneg_f32(v48).i32[1];
      *v4 = v48;
      vfx_script_clock_time();
      *&v49 = v49;
      *v5 = LODWORD(v49);
      goto LABEL_13;
    }

    if (v11 != 3)
    {
      return vfx_script_string_destroy();
    }

    *v26.i32 = *&v56 + *(&v56 + 2);
    v26.i32[1] = DWORD1(v56);
    v10.i32[0] = 1120403456;
    v27 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v56, v10), 0), *&v56, v26);
    [vfx_script_get_world_renderer() qword_10005F9F8];
    v29 = vbic_s8(vdiv_f32(v27, v28), vceqz_f32(v28));
    v28.f32[0] = vdiv_f32(v28, vdup_lane_s32(v28, 1)).f32[0];
    v28.f32[1] = 1.0 / v28.f32[0];
    __asm
    {
      FMOV            V2.2S, #1.0
      FMOV            V3.2S, #-1.0
    }

    v32 = vmul_f32(vminnm_f32(v28, _D2), vmla_f32(_D3, 0x4000000040000000, v29));
    v32.i32[1] = vneg_f32(v32).i32[1];
    *v3 = v32;
    vfx_script_clock_time();
    v24 = v33;
    v25 = v55;
  }

  else
  {
    if (!v11)
    {
      *v34.i32 = *&v56 + *(&v56 + 2);
      v34.i32[1] = DWORD1(v56);
      v10.i32[0] = 1120403456;
      v35 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v56, v10), 0), *&v56, v34);
      [vfx_script_get_world_renderer() qword_10005F9F8];
      v37 = vbic_s8(vdiv_f32(v35, v36), vceqz_f32(v36));
      v36.f32[0] = vdiv_f32(v36, vdup_lane_s32(v36, 1)).f32[0];
      v36.f32[1] = 1.0 / v36.f32[0];
      __asm
      {
        FMOV            V2.2S, #1.0
        FMOV            V3.2S, #-1.0
      }

      v40 = vmul_f32(vminnm_f32(v36, _D2), vmla_f32(_D3, 0x4000000040000000, v37));
      v40.i32[1] = vneg_f32(v40).i32[1];
      *v7 = v40;
      vfx_script_clock_time();
      *&v41 = v41;
      *v8 = LODWORD(v41);
      goto LABEL_13;
    }

    if (v11 != 1)
    {
      return vfx_script_string_destroy();
    }

    *v12.i32 = *&v56 + *(&v56 + 2);
    v12.i32[1] = DWORD1(v56);
    v10.i32[0] = 1120403456;
    v13 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v56, v10), 0), *&v56, v12);
    [vfx_script_get_world_renderer() qword_10005F9F8];
    v15 = vbic_s8(vdiv_f32(v13, v14), vceqz_f32(v14));
    v14.f32[0] = vdiv_f32(v14, vdup_lane_s32(v14, 1)).f32[0];
    v14.f32[1] = 1.0 / v14.f32[0];
    __asm
    {
      FMOV            V2.2S, #1.0
      FMOV            V3.2S, #-1.0
    }

    v22 = vmul_f32(vminnm_f32(v14, _D2), vmla_f32(_D3, 0x4000000040000000, v15));
    v22.i32[1] = vneg_f32(v22).i32[1];
    *v6 = v22;
    vfx_script_clock_time();
    v24 = v23;
    v25 = v54;
  }

  *v25 = v24;
LABEL_13:
  v50 = *v1 + 1;
  _NF = -v50 < 0;
  v51 = -v50 & 3;
  v52 = v50 & 3;
  if (!_NF)
  {
    v52 = -v51;
  }

  *v1 = v52;
  vfx_script_tick();
  vfx_script_clock_time();
  vfx_script_graph_log();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Gradient_trigger_24()
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  v0 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_string_create();
  [v0 qword_10005F9E8];
  vfx_script_tick();

  return vfx_script_string_destroy();
}

void sub_1000036A4(id a1)
{
  qword_10005F868 = sel_registerName("setValue:forKeyPath:");
  qword_10005F870 = sel_registerName("valueForKeyPath:");
  qword_10005F878 = objc_lookUpClass("NSString");
  qword_10005F880 = sel_registerName("stringWithUTF8String:");
  qword_10005F888 = objc_lookUpClass("VFXTransaction");
  qword_10005F890 = sel_registerName("begin");
  qword_10005F898 = sel_registerName("setAnimationDurationAsFloat:");
  qword_10005F8A0 = sel_registerName("commit");
  qword_10005F8A8 = objc_lookUpClass("NSDictionary");
  qword_10005F8B0 = objc_lookUpClass("NSMutableDictionary");
  qword_10005F8B8 = sel_registerName("dictionary");
  qword_10005F8C0 = sel_registerName("setValue:forKey:");
  qword_10005F8C8 = sel_registerName("setObject:forKey:");
  qword_10005F8D0 = objc_lookUpClass("NSValue");
  qword_10005F8D8 = objc_lookUpClass("NSNumber");
  qword_10005F8E0 = sel_registerName("numberWithBool:");
  qword_10005F8E8 = sel_registerName("numberWithFloat:");
  qword_10005F8F0 = sel_registerName("numberWithUnsignedInteger:");
  qword_10005F8F8 = sel_registerName("firstObject");
  qword_10005F900 = sel_registerName("count");
  qword_10005F908 = objc_lookUpClass("VFXNode");
  qword_10005F910 = sel_registerName("addAnimationAsset:forKey:");
  qword_10005F918 = sel_registerName("removeAllAnimations");
  qword_10005F920 = sel_registerName("removeAnimationForKey:");
  qword_10005F928 = sel_registerName("script_rootNode");
  qword_10005F930 = sel_registerName("clone");
  qword_10005F938 = sel_registerName("parentNode");
  qword_10005F940 = sel_registerName("addChildNode:");
  qword_10005F948 = sel_registerName("childNodes");
  qword_10005F950 = sel_registerName("deepClone");
  qword_10005F958 = sel_registerName("insertChildNode:atIndex:");
  qword_10005F960 = sel_registerName("removeFromParentNode");
  qword_10005F968 = sel_registerName("childNodeWithName:");
  qword_10005F970 = sel_registerName("convertPosition:fromNode:");
  qword_10005F978 = sel_registerName("convertVector:fromNode:");
  qword_10005F980 = sel_registerName("convertTransform:fromNode:");
  qword_10005F988 = sel_registerName("convertPosition:toNode:");
  qword_10005F990 = sel_registerName("convertVector:toNode:");
  qword_10005F998 = sel_registerName("convertTransform:toNode:");
  qword_10005F9A0 = sel_registerName("localTranslateBy:");
  qword_10005F9A8 = sel_registerName("localRotateBy:");
  qword_10005F9B0 = sel_registerName("rotateBy:aroundTarget:");
  qword_10005F9B8 = sel_registerName("projectPoint:");
  qword_10005F9C0 = sel_registerName("unprojectPoint:");
  qword_10005F9C8 = sel_registerName("script_hitTest:options:");
  qword_10005F9D0 = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  qword_10005F9D8 = sel_registerName("node");
  qword_10005F9E0 = sel_registerName("setState:");
  qword_10005F9E8 = sel_registerName("setStateNamed:");
  qword_10005F9F0 = sel_registerName("_contentsScaleFactor");
  qword_10005F9F8 = sel_registerName("_screenSize");
  qword_10005FA00 = sel_registerName("physicsBody");
  qword_10005FA08 = sel_registerName("script_instantiate:");
  qword_10005FA10 = sel_registerName("geometryIndex");
  qword_10005FA18 = sel_registerName("faceIndex");
  qword_10005FA20 = sel_registerName("localCoordinates");
  qword_10005FA28 = sel_registerName("worldCoordinates");
  qword_10005FA30 = sel_registerName("localNormal");
  qword_10005FA38 = sel_registerName("worldNormal");
  qword_10005FA40 = sel_registerName("modelTransform");
  qword_10005FA48 = sel_registerName("boneNode");
  qword_10005FA50 = sel_registerName("uv0");
  qword_10005FA58 = sel_registerName("presentationBoneNode");
  qword_10005FA60 = sel_registerName("presentationNode");
  qword_10005FA68 = sel_registerName("applyForce:impulse:");
  qword_10005FA70 = sel_registerName("applyForce:atPosition:impulse:");
  qword_10005FA78 = sel_registerName("applyTorque:impulse:");
  qword_10005FA80 = sel_registerName("presentationObject");
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

void sub_100003CD4()
{
  v1 = v0;
  [v0 bounds];
  v6 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation;
  if ((*&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation] - 3) <= 1)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  if ((*&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation] - 3) <= 1)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  if ((*&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation] - 3) <= 1)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4;
  }

  if ((*&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation] - 3) <= 1)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  sub_1000054B8(&qword_10005F300, &qword_100043C98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100043A80;
  v12 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_contentView];
  *(inited + 32) = v12;
  v70 = inited + 32;
  v13 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_label];
  *(inited + 40) = v13;
  v73 = *&CGAffineTransformIdentity.c;
  v74 = *&CGAffineTransformIdentity.a;
  v72 = *&CGAffineTransformIdentity.tx;
  v14 = inited & 0xC000000000000001;
  v71 = inited;
  v67 = &v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_configuration];
  v15 = v12;
  v16 = v13;
  v17 = 0;
  v18 = 0;
  v19 = &stru_10005A000;
  v20 = &stru_10005A000;
  *&v21 = 136315138;
  v66 = v21;
  v68 = v6;
  v69 = v15;
  do
  {
    v22 = v17;
    if (v14)
    {
      v23 = sub_100041D3C();
    }

    else
    {
      v23 = *(v70 + 8 * v18);
    }

    v24 = v23;
    offs = v19[119].offs;
    *&v75.a = v74;
    *&v75.c = v73;
    *&v75.tx = v72;
    [v23 offs];
    [v24 setBounds:{v7, v8, v9, v10}];
    v76.origin.x = v7;
    v76.origin.y = v8;
    v76.size.width = v9;
    v76.size.height = v10;
    MidX = CGRectGetMidX(v76);
    v77.origin.x = v7;
    v77.origin.y = v8;
    v77.size.width = v9;
    v77.size.height = v10;
    [v24 v20[119].type];
    v27 = *&v1[v6];
    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v49 = v1;
        v50 = sub_10004164C();
        v51 = sub_100041AAC();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *&v75.a = v53;
          *v52 = v66;
          v54 = *(v67 + 4);
          v55 = *(v67 + 5);

          v56 = sub_10000B1E4(v54, v55, &v75);
          v19 = &stru_10005A000;

          *(v52 + 4) = v56;
          v15 = v69;
          _os_log_impl(&_mh_execute_header, v50, v51, "#%s updateLayout right", v52, 0xCu);
          sub_100005500(v53);
          v6 = v68;
        }

        v20 = &stru_10005A000;
        v80.origin.x = v7;
        v80.origin.y = v8;
        v80.size.width = v9;
        v80.size.height = v10;
        MidY = CGRectGetMidY(v80);
        v81.origin.x = v7;
        v81.origin.y = v8;
        v81.size.width = v9;
        v81.size.height = v10;
        [v24 setCenter:{MidY, CGRectGetMidX(v81)}];
        v48 = 1.57079633;
        goto LABEL_33;
      }

      if (v27 == 4)
      {
        v36 = v1;
        v37 = sub_10004164C();
        v38 = sub_100041AAC();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *&v75.a = v40;
          *v39 = v66;
          v42 = *(v67 + 4);
          v41 = *(v67 + 5);

          v43 = sub_10000B1E4(v42, v41, &v75);
          v20 = &stru_10005A000;

          *(v39 + 4) = v43;
          v6 = v68;
          _os_log_impl(&_mh_execute_header, v37, v38, "#%s updateLayout left", v39, 0xCu);
          sub_100005500(v40);
          v15 = v69;
        }

        v78.origin.x = v7;
        v78.origin.y = v8;
        v78.size.width = v9;
        v78.size.height = v10;
        v44 = CGRectGetMidY(v78);
        v79.origin.x = v7;
        v79.origin.y = v8;
        v79.size.width = v9;
        v79.size.height = v10;
        [v24 v20[119].type];
        CGAffineTransformMakeRotation(&v75, -1.57079633);
        v45 = *&v75.a;
        v46 = *&v75.c;
        v47 = *&v75.tx;
        v19 = &stru_10005A000;
        goto LABEL_34;
      }

LABEL_35:

      goto LABEL_15;
    }

    if (v27 >= 2)
    {
      if (v27 == 2)
      {
        v48 = 3.14159265;
LABEL_33:
        CGAffineTransformMakeRotation(&v75, v48);
        v45 = *&v75.a;
        v46 = *&v75.c;
        v47 = *&v75.tx;
LABEL_34:
        v58 = v19[119].offs;
        *&v75.a = v45;
        *&v75.c = v46;
        *&v75.tx = v47;
        [v24 v58];
        goto LABEL_35;
      }

      goto LABEL_35;
    }

    v28 = v1;
    v29 = sub_10004164C();
    v30 = sub_100041AAC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v75.a = v32;
      *v31 = v66;
      v33 = *(v67 + 4);
      v34 = *(v67 + 5);

      v35 = sub_10000B1E4(v33, v34, &v75);
      v19 = &stru_10005A000;

      *(v31 + 4) = v35;
      v15 = v69;
      _os_log_impl(&_mh_execute_header, v29, v30, "#%s updateLayout portrait", v31, 0xCu);
      sub_100005500(v32);
      v6 = v68;
    }

    v20 = &stru_10005A000;
LABEL_15:
    v17 = 1;
    v18 = 1;
  }

  while ((v22 & 1) == 0);
  swift_setDeallocating();
  v59 = *(v71 + 16);
  swift_arrayDestroy();
  v60 = [v15 subviews];
  sub_10000554C();
  v61 = sub_10004198C();

  if (v61 >> 62)
  {
    v62 = sub_100041DDC();
    if (!v62)
    {
      goto LABEL_45;
    }

LABEL_38:
    if (v62 >= 1)
    {
      v63 = 0;
      do
      {
        if ((v61 & 0xC000000000000001) != 0)
        {
          v64 = sub_100041D3C();
        }

        else
        {
          v64 = *(v61 + 8 * v63 + 32);
        }

        v65 = v64;
        ++v63;
        [v15 bounds];
        [v65 setFrame:?];
      }

      while (v62 != v63);
      goto LABEL_45;
    }

    __break(1u);
  }

  else
  {
    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v62)
    {
      goto LABEL_38;
    }

LABEL_45:
  }
}

void sub_1000043C4(void *a1, _BYTE *a2)
{
  v3 = v2;
  v6 = [a1 superview];
  v7 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_contentView];
  if (!v6 || (v8 = v6, sub_10000554C(), v9 = v7, v10 = sub_100041C3C(), v8, v9, (v10 & 1) == 0))
  {
    v11 = v3;
    v12 = a1;
    v13 = sub_10004164C();
    v14 = sub_100041AAC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v15 = 136315650;
      v18 = &v11[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_configuration];
      v19 = *&v11[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_configuration + 32];
      v20 = *(v18 + 5);

      v21 = sub_10000B1E4(v19, v20, &v24);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2112;
      *(v15 + 14) = v12;
      *(v15 + 22) = 2112;
      *(v15 + 24) = v7;
      *v16 = v12;
      v16[1] = v7;
      v22 = v7;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "#%s PlaceholderView add%@ to contentView %@", v15, 0x20u);
      sub_1000054B8(&qword_10005E240, &qword_100043C90);
      swift_arrayDestroy();

      sub_100005500(v17);
    }

    *a2 = 1;
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    [v7 addSubview:v12];
  }
}

id sub_10000476C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PlaceholderView()
{
  result = qword_10005CDC0;
  if (!qword_10005CDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000048CC()
{
  result = sub_10004166C();
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

uint64_t sub_100004998(uint64_t a1, int a2)
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

uint64_t sub_1000049B8(uint64_t result, int a2, int a3)
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

__n128 sub_100004A44(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004A50(uint64_t a1, int a2)
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

uint64_t sub_100004A70(uint64_t result, int a2, int a3)
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

uint64_t sub_100004AD8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1000415DC();
}

uint64_t sub_100004B24()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1000415CC();
}

Swift::Int sub_100004B7C()
{
  sub_100041F1C();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1000415CC();
  return sub_100041F3C();
}

uint64_t sub_100004BF4(uint64_t a1, id *a2)
{
  result = sub_1000417DC();
  *a2 = 0;
  return result;
}

uint64_t sub_100004C70(uint64_t a1, id *a2)
{
  v3 = sub_1000417EC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100004CF4@<X0>(void *a1@<X8>)
{
  sub_1000417FC();
  v2 = sub_1000417CC();

  *a1 = v2;
  return result;
}

uint64_t sub_100004D3C()
{
  v1 = *v0;
  sub_1000417FC();
  v2 = sub_10004193C();

  return v2;
}

uint64_t sub_100004D7C()
{
  v1 = *v0;
  sub_1000417FC();
  sub_1000418BC();
}

Swift::Int sub_100004DD4()
{
  v1 = *v0;
  sub_1000417FC();
  sub_100041F1C();
  sub_1000418BC();
  v2 = sub_100041F3C();

  return v2;
}

void *sub_100004E48@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004E64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1000415BC();
}

uint64_t sub_100004ED0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000417FC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100004EFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1000417FC();
  v6 = v5;
  if (v4 == sub_1000417FC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100041EEC();
  }

  return v9 & 1;
}

uint64_t sub_100004F84(uint64_t a1)
{
  v2 = sub_1000056E0(&qword_10005CFA8, type metadata accessor for CIImageRepresentationOption);
  v3 = sub_1000056E0(&qword_10005CFB0, type metadata accessor for CIImageRepresentationOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100005044@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1000417CC();

  *a2 = v5;
  return result;
}

uint64_t sub_10000508C(uint64_t a1)
{
  v2 = sub_1000056E0(&qword_10005CFB8, type metadata accessor for VFXWorldLoaderOption);
  v3 = sub_1000056E0(&qword_10005CFC0, type metadata accessor for VFXWorldLoaderOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

char *sub_100005148(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10004166C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_label;
  *&v3[v11] = [objc_allocWithZone(UILabel) init];
  *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation] = 0;
  v12 = *(v7 + 16);
  v12(v10, a1, v6);
  objc_allocWithZone(type metadata accessor for SnapshotView());
  sub_100005408(a2, v30);
  v13 = sub_100006EA4(a2, v10);
  sub_100005464(a2);
  *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_snapshotView] = v13;
  v14 = &v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_configuration];
  v15 = *(a2 + 104);
  v16 = *(a2 + 112);
  v17 = *(a2 + 80);
  *(v14 + 4) = *(a2 + 64);
  *(v14 + 5) = v17;
  *(v14 + 6) = *(a2 + 96);
  *(v14 + 110) = *(a2 + 110);
  v18 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 1) = v18;
  v19 = *(a2 + 48);
  *(v14 + 2) = *(a2 + 32);
  *(v14 + 3) = v19;
  v12(&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_logger], a1, v6);
  v20 = objc_allocWithZone(UIView);
  sub_100005408(a2, v30);
  v21 = [v20 initWithFrame:{0.0, 0.0, v15, v16}];
  *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_contentView] = v21;
  v22 = type metadata accessor for PlaceholderView();
  v29.receiver = v3;
  v29.super_class = v22;
  v23 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, v15, v16);
  v24 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_contentView;
  v25 = *&v23[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_contentView];
  v26 = v23;
  [v25 setAutoresizesSubviews:0];
  [*&v23[v24] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v26 addSubview:*&v23[v24]];
  sub_100003CD4();
  v27 = *&v26[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_snapshotView];
  sub_1000043C4(v27, v30);

  sub_100003CD4();
  (*(v7 + 8))(a1, v6);
  return v26;
}

uint64_t sub_1000054B8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100005500(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_10000554C()
{
  result = qword_10005CF30;
  if (!qword_10005CF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005CF30);
  }

  return result;
}

__n128 sub_1000055D4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000055F4(uint64_t a1, int a2)
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

uint64_t sub_100005614(uint64_t result, int a2, int a3)
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

uint64_t sub_1000056E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100005900(uint64_t a1, unint64_t *a2)
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

void sub_10000597C(uint64_t a1)
{
  v3 = v1;
  sub_100005408(a1, v10);
  v4 = sub_10004164C();
  v5 = sub_100041AAC();

  sub_100005464(a1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v10[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
    v8 = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

    v9 = sub_10000B1E4(v7, v8, v10);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_10000B1E4(*(a1 + 32), *(a1 + 40), v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "#%s snapshot: viewConfiguration updated old tagId: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000611C();
}

id sub_100005AF0@<X0>(uint64_t a1@<X8>)
{
  v3 = &v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration];
  if (v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_shouldUsizeFromLayout] != 1)
  {
    v18 = *(v3 + 5);
    v27[4] = *(v3 + 4);
    v27[5] = v18;
    v28[0] = *(v3 + 6);
    *(v28 + 14) = *(v3 + 110);
    v19 = *(v3 + 1);
    v27[0] = *v3;
    v27[1] = v19;
    v20 = *(v3 + 3);
    v27[2] = *(v3 + 2);
    v27[3] = v20;
    sub_100005408(v27, v21);
    sub_10001A9FC(v21);
    result = sub_100005464(v27);
    v17 = v26;
    v13 = v25;
    v11 = v23;
    v12 = v24;
    v6 = v22;
    v5 = v21[2];
    v4 = v21[3];
    v14 = v21[0];
    v16 = v21[1];
    goto LABEL_10;
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  v6 = *(v3 + 25);

  result = [v1 frame];
  v9 = v8;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = [v1 frame];
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10 < 9.22337204e18)
  {
    v11 = v9;
    v12 = v10;
    v13 = *(v3 + 30);

    v14 = sub_100021E98();
    v16 = v15;

    v17 = 0;
LABEL_10:
    *a1 = v14;
    *(a1 + 8) = v16;
    *(a1 + 16) = v5;
    *(a1 + 24) = v4;
    *(a1 + 32) = v6;
    *(a1 + 40) = v11;
    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
    *(a1 + 60) = v17;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_100005CC0()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_100007410;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10000F91C;
  v6[3] = &unk_1000559D8;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:1 repeats:v3 block:0.0166666667];
  _Block_release(v3);
  v5 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_timer);
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_timer) = v4;
}

void sub_100005DD8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100023628();
    [v1 setBackgroundColor:v2];
  }
}

id sub_100005E48(uint64_t a1)
{
  v3 = sub_10004163C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000F51C(0);
  sub_100041BEC();
  v9 = *(v8 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog);
  v10 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v4 + 16))(v7, v8 + v10, v3);
  v11 = v9;
  sub_10004161C();

  (*(v4 + 8))(v7, v3);
  v12 = v1;
  v13 = sub_10004164C();
  v14 = sub_100041AAC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v15 = 136315394;
    v18 = *&v12[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
    v19 = *&v12[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

    v20 = sub_10000B1E4(v18, v19, &v25);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = *&v12[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_imageView];
    *(v15 + 14) = v21;
    *v16 = v21;
    v22 = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "#%s snapshot: imageView %@", v15, 0x16u);
    sub_1000073A8(v16);

    sub_100005500(v17);
  }

  v23 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_imageView;
  [*&v12[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_imageView] setAlpha:1.0];
  return [*&v12[v23] setImage:a1];
}

void sub_10000611C()
{
  v1 = v0;
  v2 = sub_10004166C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotManagerSet;
  if (v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotManagerSet] != 1)
  {
    goto LABEL_7;
  }

  v50 = v3;
  v8 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 80];
  v60[4] = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 64];
  v60[5] = v8;
  v61[0] = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 96];
  *(v61 + 14) = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 110];
  v9 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 16];
  v60[0] = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration];
  v60[1] = v9;
  v10 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 48];
  v60[2] = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
  v60[3] = v10;
  sub_100005408(v60, v56);
  sub_10001A9FC(v52);
  sub_100005464(v60);
  v11 = sub_10001AB00();
  v13 = v12;
  sub_100007314(v52);
  v14 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotReader];
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = (v14 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration);
  v17 = v15[1];
  v16 = v15[2];
  v18 = *v15;
  *(v59 + 13) = *(v15 + 45);
  v58[1] = v17;
  v59[0] = v16;
  v58[0] = v18;
  sub_1000072B8(v58, v56);
  v19 = sub_10001AB00();
  v21 = v20;
  sub_100007314(v58);
  if (v11 == v19 && v13 == v21)
  {

    return;
  }

  v22 = sub_100041EEC();

  v3 = v50;
  if ((v22 & 1) == 0)
  {
LABEL_7:
    sub_100005AF0(v53);
    v23 = v54;
    if (v54)
    {
      [*&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_imageView] setAlpha:0.0];
      v24 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_logger;
      sub_1000072B8(v53, v56);
      v25 = v1;
      v49 = v24;
      v26 = sub_10004164C();
      v27 = sub_100041AAC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v50 = v3;
        v29 = v28;
        v30 = swift_slowAlloc();
        v48 = v7;
        v46 = v30;
        *&v56[0] = v30;
        *v29 = 136315650;
        v47 = v6;
        v31 = v2;
        v33 = *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
        v32 = *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

        v34 = sub_10000B1E4(v33, v32, v56);
        v2 = v31;

        *(v29 + 4) = v34;
        v6 = v47;
        *(v29 + 12) = 2048;
        *(v29 + 14) = v23;
        *(v29 + 22) = 2048;
        sub_100007314(v53);
        *(v29 + 24) = v55;
        sub_100007314(v53);
        _os_log_impl(&_mh_execute_header, v26, v27, "#%s snapshot: update manager for size %ldx%ld", v29, 0x20u);
        sub_100005500(v46);
        v7 = v48;

        v3 = v50;
      }

      else
      {
        sub_100007314(v53);
        sub_100007314(v53);
      }

      v35 = *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 48];
      v37 = *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration];
      v36 = *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 16];
      v56[2] = *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
      v56[3] = v35;
      v56[0] = v37;
      v56[1] = v36;
      v39 = *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 80];
      v38 = *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 96];
      v40 = *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 64];
      *(v57 + 14) = *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 110];
      v56[5] = v39;
      v57[0] = v38;
      v56[4] = v40;
      (*(v3 + 16))(v6, &v1[v49], v2);
      v41 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v42 = objc_allocWithZone(type metadata accessor for SnapshotReader());
      sub_100005408(v56, &v51);
      v43 = sub_1000086E8(v56, v6, sub_1000073A0, v41);

      sub_100005464(v56);
      v44 = *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotReader];
      *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotReader] = v43;

      v1[v7] = 1;
    }

    else
    {
      sub_100007314(v53);
    }
  }
}

void sub_1000065A8(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_10004164C();
    v7 = sub_100041AAC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
      v10 = *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

      v11 = sub_10000B1E4(v9, v10, &v15);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      if (a2)
      {
        v12 = 1953066601;
      }

      else
      {
        v12 = 0x6163696669746F6ELL;
      }

      if (a2)
      {
        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xEC0000006E6F6974;
      }

      v14 = sub_10000B1E4(v12, v13, &v15);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "#%s snapshot: image updated from %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    sub_100005E48(a1);
  }
}

id sub_100006784()
{
  v66.receiver = v0;
  v66.super_class = type metadata accessor for SnapshotView();
  objc_msgSendSuper2(&v66, "layoutSubviews");
  v1 = v0;
  v2 = sub_10004164C();
  v3 = sub_100041AAC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v67[0] = v5;
    *v4 = 136315650;
    v6 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
    v7 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

    v8 = sub_10000B1E4(v6, v7, v67);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2048;
    [v1 bounds];
    *(v4 + 14) = v9;
    *(v4 + 22) = 2048;
    [v1 bounds];
    *(v4 + 24) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "#%s snapshotView layoutsubview %fx%f", v4, 0x20u);
    sub_100005500(v5);
  }

  result = [v1 bounds];
  if (v12 != 0.0)
  {
    v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_shouldUsizeFromLayout] = 1;
    v13 = &v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration];
    v14 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 48];
    v16 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration];
    v15 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 16];
    v54 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
    v55 = v14;
    v52 = v16;
    v53 = v15;
    v18 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 80];
    v17 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 96];
    v19 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 64];
    *&v58[14] = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 110];
    v57 = v18;
    *v58 = v17;
    v56 = v19;
    sub_100005408(&v52, v67);
    [v1 bounds];
    v21 = v20;
    v23 = v22;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v50 = v55;
    v27 = BYTE8(v55);
    v28 = v56;
    v48 = BYTE9(v56);
    v49 = BYTE8(v56);
    v46 = *(&v57 + 1);
    v47 = v57;
    v29 = v56;

    sub_100005464(&v52);
    v59[0] = v24;
    v59[1] = v25;
    v59[2] = v26;
    *&v60 = v50;
    BYTE8(v60) = v27;
    *&v61 = v28;
    BYTE8(v61) = v49;
    BYTE9(v61) = v48;
    *&v62 = v47;
    *(&v62 + 1) = v46;
    *v63 = *v58;
    v63[2] = v58[2];
    *&v63[4] = *&v58[4];
    *&v63[8] = v21;
    *&v63[16] = v23;
    *&v63[24] = *&v58[24];
    v63[28] = v58[28];
    v63[29] = v58[29];
    v30 = *v13;
    v31 = *(v13 + 1);
    v32 = *(v13 + 3);
    v67[2] = *(v13 + 2);
    v67[3] = v32;
    v67[0] = v30;
    v67[1] = v31;
    v33 = *(v13 + 4);
    v34 = *(v13 + 5);
    v35 = *(v13 + 6);
    *(v68 + 14) = *(v13 + 110);
    v67[5] = v34;
    v68[0] = v35;
    v67[4] = v33;
    v37 = *(v13 + 5);
    v36 = *(v13 + 6);
    v38 = *(v13 + 4);
    *(v65 + 14) = *(v13 + 110);
    v64[5] = v37;
    v65[0] = v36;
    v64[4] = v38;
    v39 = *v13;
    v40 = *(v13 + 1);
    v41 = *(v13 + 3);
    v64[2] = *(v13 + 2);
    v64[3] = v41;
    v64[0] = v39;
    v64[1] = v40;
    v42 = v60;
    *(v13 + 2) = v26;
    *(v13 + 3) = v42;
    *v13 = v24;
    *(v13 + 1) = v25;
    v43 = v61;
    v44 = v62;
    v45 = *v63;
    *(v13 + 110) = *&v63[14];
    *(v13 + 5) = v44;
    *(v13 + 6) = v45;
    *(v13 + 4) = v43;
    sub_100005408(v67, v51);
    sub_100005408(v59, v51);
    sub_100005464(v64);
    sub_10000597C(v67);
    sub_100005464(v67);
    return sub_100005464(v59);
  }

  return result;
}

id sub_100006C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnapshotView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SnapshotView()
{
  result = qword_10005D210;
  if (!qword_10005D210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006DE4()
{
  result = sub_10004166C();
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

id sub_100006EA4(uint64_t a1, uint64_t a2)
{
  v5 = sub_10004163C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotManagerSet] = 0;
  *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotReader] = 0;
  v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_shouldUsizeFromLayout] = 0;
  *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_timer] = 0;
  v10 = sub_10000F51C(0);
  sub_100041BEC();
  v11 = *(v10 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog);
  v12 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v6 + 16))(v9, v10 + v12, v5);
  v13 = v11;
  sub_10004161C();

  (*(v6 + 8))(v9, v5);
  v14 = &v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration];
  v15 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v15;
  v14[6] = *(a1 + 96);
  *(v14 + 110) = *(a1 + 110);
  v16 = *(a1 + 16);
  *v14 = *a1;
  v14[1] = v16;
  v17 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v17;
  v18 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_logger;
  v19 = sub_10004166C();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v2[v18], a2, v19);
  v21 = objc_allocWithZone(UIImage);
  sub_100005408(a1, v34);
  v22 = [v21 init];
  v23 = [objc_allocWithZone(UIImageView) initWithImage:v22];

  *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_imageView] = v23;
  v24 = *(a1 + 104);
  v25 = *(a1 + 112);
  v26 = type metadata accessor for SnapshotView();
  v33.receiver = v2;
  v33.super_class = v26;
  v27 = v23;
  v28 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, v24, v25);
  v29 = v27;
  v30 = v28;
  [v30 bounds];
  [v29 setFrame:?];
  [v29 setAutoresizingMask:18];
  [v30 addSubview:v29];
  [v29 setContentMode:0];

  v31 = [objc_opt_self() blackColor];
  [v30 setBackgroundColor:v31];

  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  if ([qword_1000611A0 nullMode])
  {
    sub_100005CC0();
  }

  else
  {
    sub_10000611C();
  }

  (*(v20 + 8))(a2, v19);
  return v30;
}

uint64_t sub_100007368()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000073A8(uint64_t a1)
{
  v2 = sub_1000054B8(&qword_10005E240, &qword_100043C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100007430()
{
  if (qword_10005CD38 != -1)
  {
    swift_once();
  }

  v1 = qword_100061130;
  v2 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 16];
  v7[0] = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration];
  v7[1] = v2;
  v8[0] = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 32];
  *(v8 + 13) = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 45];
  v3 = v0;
  sub_1000072B8(v7, v6);
  sub_100008230(v3, v7, v1);
  sub_100007314(v7);

  v5.receiver = v3;
  v5.super_class = type metadata accessor for SnapshotReader();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for SnapshotReader()
{
  result = qword_10005D270;
  if (!qword_10005D270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000770C(char a1)
{
  v2 = v1;
  if (qword_10005CD38 != -1)
  {
    swift_once();
  }

  v4 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 16);
  v41[0] = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration);
  v41[1] = v4;
  v42[0] = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 32);
  *(v42 + 13) = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 45);
  sub_10001D094(v41, &v31);
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
    v7 = sub_10001AB00();
    v9 = v8;
    v10 = (v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration);
    v11 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration + 16);
    v29[0] = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration);
    v29[1] = v11;
    v30[0] = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration + 32);
    *(v30 + 13) = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration + 45);
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
      sub_1000072B8(&v24, v23);
      v15 = sub_10001AB00();
      v17 = v16;
      sub_100007D6C(v29);
      if (v12 == v15 && v9 == v17)
      {

LABEL_10:
        sub_100007D6C(&v31);
        return;
      }

      v18 = sub_100041EEC();

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
    sub_1000072B8(v35, v23);
    sub_100007D6C(&v24);
    v21 = sub_100007960();
    sub_100007D6C(&v31);
    if (v21)
    {
      v22 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_updateBlock + 8);
      (*(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_updateBlock))(v21, a1 & 1);
    }
  }
}

id sub_100007960()
{
  v1 = v0;
  v2 = sub_1000414BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005CD40 != -1)
  {
    swift_once();
  }

  sub_100007D34(v2, qword_100061138);
  v20[0] = sub_10001AD94();
  v20[1] = v7;
  v21._countAndFlagsBits = 0x636965682ELL;
  v21._object = 0xE500000000000000;
  sub_1000418CC(v21);
  sub_10004146C();

  v8 = sub_10004140C();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v11 = objc_allocWithZone(UIImage);
  v12 = sub_1000417CC();
  v13 = [v11 initWithContentsOfFile:v12];

  if (v13)
  {
  }

  else
  {
    v14 = v1;

    v15 = sub_10004164C();
    v16 = sub_100041ABC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_10000B1E4(*&v14[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_tagID], *&v14[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_tagID + 8], v20);
      *(v17 + 12) = 2080;
      v18 = sub_10000B1E4(v8, v10, v20);

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

uint64_t sub_100007C70()
{
  result = sub_10004166C();
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

uint64_t sub_100007D34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100007D6C(uint64_t a1)
{
  v2 = sub_1000054B8(&qword_10005D280, &unk_100044DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007DD4(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  v7 = sub_100008058(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_100041DDC();
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
      if (v10 == sub_100041DDC())
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
      v12 = sub_100041D3C();
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
    v14 = sub_100041D3C();
    v15 = sub_100041D3C();
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
    v6 = sub_10003980C(v6);
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

  v6 = sub_10003980C(v6);
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
  return sub_100041DDC();
}

uint64_t sub_100008058(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_100041DDC();
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
      v8 = sub_100041D3C();
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

uint64_t sub_100008174(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_100041DDC();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_100041D4C();
    *v1 = result;
  }

  return result;
}

void sub_100008230(uint64_t a1, float *a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  os_unfair_lock_lock(v6);
  v7 = swift_beginAccess();
  v8 = *(a3 + 24);
  if (*(v8 + 16))
  {
    v9 = *(a3 + 24);

    v10 = sub_10002C50C(a2);
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
  v19[3] = &off_100055A00;
  v13 = sub_100007DD4(sub_100008400, v19);
  if (v21 >> 62)
  {
    v18 = v13;
    v14 = sub_100041DDC();
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
      sub_1000085CC(v13, v14);
      v15 = v21;
      swift_beginAccess();
      sub_1000072B8(a2, v20);
      v16 = *(a3 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20[0] = *(a3 + 24);
      *(a3 + 24) = 0x8000000000000000;
      sub_10002DCE0(v15, a2, isUniquelyReferenced_nonNull_native);
      sub_100007314(a2);
      *(a3 + 24) = v20[0];
      swift_endAccess();
      os_unfair_lock_unlock(v6);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_100008400(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10001B698(a1) & 1;
}

void sub_100008420(uint64_t a1, float *a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v6 = *(a3 + 24);
  if (*(v6 + 16))
  {
    v7 = *(a3 + 24);

    v8 = sub_10002C50C(a2);
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
  *(v11 + 24) = &off_100055A00;
  swift_unknownObjectWeakAssign();
  sub_10004196C();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1000419AC();
  }

  sub_1000419CC();
  v12 = v17;
  swift_beginAccess();
  sub_1000072B8(a2, v16);
  v13 = *(a3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[0] = *(a3 + 24);
  *(a3 + 24) = 0x8000000000000000;
  sub_10002DCE0(v12, a2, isUniquelyReferenced_nonNull_native);
  sub_100007314(a2);
  *(a3 + 24) = v16[0];
  swift_endAccess();
  os_unfair_lock_unlock(v5);
}

uint64_t sub_1000085CC(uint64_t a1, uint64_t a2)
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

  result = sub_100041DDC();
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
    v9 = sub_100041DDC();
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

  sub_100008174(result);

  return sub_100039898(v4, v2, 0);
}

uint64_t sub_1000086A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

char *sub_1000086E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = &v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration];
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  *(v10 + 45) = 0u;
  v11 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_logger;
  v12 = sub_10004166C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v5[v11], a2, v12);
  v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_isSnapshotMode] = *(a1 + 96);
  sub_10001A9FC(v26);
  v14 = &v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration];
  v15 = v26[1];
  *v14 = v26[0];
  v14[1] = v15;
  v14[2] = v27[0];
  *(v14 + 45) = *(v27 + 13);
  v16 = *(a1 + 32);
  *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_tagID] = v16;
  v28 = v16;
  v17 = &v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_updateBlock];
  *v17 = a3;
  v17[1] = a4;
  sub_1000088F8(&v28, v29);
  v25.receiver = v5;
  v25.super_class = type metadata accessor for SnapshotReader();

  v18 = objc_msgSendSuper2(&v25, "init");
  sub_10000770C(1);
  if (qword_10005CD38 != -1)
  {
    swift_once();
  }

  v19 = qword_100061130;
  v21 = *&v18[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 16];
  v20 = *&v18[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 32];
  v22 = *&v18[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration];
  *&v30[13] = *&v18[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 45];
  v29[1] = v21;
  *v30 = v20;
  v29[0] = v22;
  sub_1000072B8(v29, &v24);
  sub_100008420(v18, v29, v19);
  sub_100007314(v29);

  (*(v13 + 8))(a2, v12);
  return v18;
}

void sub_100008954(void *a1, __n128 a2, __n128 a3)
{
  v30 = a2;
  v31 = a3;
  v4 = sub_10004166C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 rootNode];
  v10 = sub_1000417CC();
  v32 = [v9 childNodeWithName:v10 recursively:1];

  if (v32)
  {
    v11 = objc_opt_self();
    [v11 begin];
    v12 = [v32 parameters];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_opt_self() valueWithVFXFloat3:v30.n128_f64[0]];
      v15 = sub_1000417CC();
      [v13 setObject:v14 forKeyedSubscript:v15];
      swift_unknownObjectRelease();
    }

    v16 = [v32 parameters];
    if (v16)
    {
      v17 = v16;
      v18 = [objc_opt_self() valueWithVFXFloat4:v31.n128_f64[0]];
      v19 = sub_1000417CC();
      [v17 setObject:v18 forKeyedSubscript:v19];
      swift_unknownObjectRelease();
    }

    v20 = [v32 parameters];
    if (v20)
    {
      v21 = v20;
      isa = sub_100041A2C().super.super.isa;
      v23 = sub_1000417CC();
      [v21 setObject:isa forKeyedSubscript:v23];
      swift_unknownObjectRelease();
    }

    [v11 commit];
    v24 = v32;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      (*(v5 + 16))(v8, Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger, v4);

      v27 = sub_10004164C();
      v28 = sub_100041A9C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Could not find parametersNode", v29, 2u);
      }

      (*(v5 + 8))(v8, v4);
    }
  }
}

id sub_100008D48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 deviceMotionRotation];
  v4 = sub_100041B3C();
  sub_100008E70(v19, v4, &v16);
  v11 = v16;
  v5 = v17;
  [a1 deviceMotionRotation];
  v13 = v16.f64[0];
  [a1 deviceMotionRotation];
  v14 = __PAIR128__(*&v16.f64[1], *&v13);
  [a1 deviceMotionRotation];
  v10 = v17;
  [a1 deviceMotionRotation];
  v15 = vcvt_hight_f32_f64(vcvt_f32_f64(v14), __PAIR128__(v18, *&v10));
  *&v6 = vcvt_f32_f64(v11);
  *&v7 = v5;
  *(&v6 + 1) = v7;
  v12 = v6;
  result = [a1 deviceMotionUpdateInterval];
  *a2 = v12;
  *(a2 + 16) = v15;
  *(a2 + 32) = v9;
  *(a2 + 40) = 0;
  return result;
}

void sub_100008E70(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  _Q1 = *a1;
  if (a2 == 2)
  {
    v6 = *a1;
    _Q1.i64[0] = *(a1 + 16);
  }

  else if (a2 == 1)
  {
    v6 = vextq_s8(_Q1, *(a1 + 16), 8uLL);
  }

  else
  {
    v6 = 0uLL;
    _Q1.i64[0] = 0;
  }

  v7 = *(a1 + 24);
  v26 = v6;
  _D9 = v6.f64[1];
  _V4.D[1] = v7;
  v25 = *(a1 + 32);
  __asm { FMLA            D0, D1, V4.D[1] }

  v27 = *_Q1.i64;
  *&v15 = atan2(_D0 + _D0, (vmulq_f64(v6, v6).f64[0] + *_Q1.i64 * *_Q1.i64) * -2.0 + 1.0);
  v24 = v15;
  v16 = v7 * v26.f64[0] - _D9 * v27 + v7 * v26.f64[0] - _D9 * v27;
  if (v16 > 1.0)
  {
    v16 = 1.0;
  }

  if (v16 < -1.0)
  {
    v16 = -1.0;
  }

  v23 = asin(v16);
  _V2.D[1] = v26.f64[1];
  _V4.D[1] = v25;
  __asm { FMLA            D0, D9, V4.D[1] }

  *&_D0 = _D0 + _D0;
  __asm { FMLA            D1, D9, V2.D[1] }

  *&_D1 = _D1 * -2.0 + 1.0;
  *&v21 = atan2f(*&_D0, *&_D1);
  if (a2 == 2)
  {
    *v22.i64 = v23;
    v22.i64[1] = v21;
    v21 = v24;
  }

  else if (a2 == 1)
  {
    v22.i64[0] = v24;
    *&v22.i64[1] = v23;
  }

  else
  {
    v22 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v21 = 0x7FF8000000000000;
  }

  *a3 = v22;
  *(a3 + 16) = v21;
  *(a3 + 32) = a2;
}

uint64_t sub_100008FBC()
{
  sub_100009678();

  v1 = *(v0 + 24);

  sub_1000097B0(v0 + 32);
  v2 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_logger;
  v3 = sub_10004166C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SimulationSpeedManager()
{
  result = qword_10005D2B8;
  if (!qword_10005D2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000090C8()
{
  result = sub_10004166C();
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

uint64_t sub_100009184()
{
  v1 = v0;
  v2 = sub_10004155C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v10 = aBlock - v9;
  if (!*(v0 + 16))
  {
    v11 = sub_10004164C();
    v12 = sub_100041A9C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Start monitoring VFXWorld simulation speed", v13, 2u);
    }

    sub_10004154C();
    sub_10004151C();
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = objc_allocWithZone(NSTimer);

    isa = sub_10004152C().super.isa;
    aBlock[4] = sub_100009790;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F91C;
    aBlock[3] = &unk_100055A38;
    v17 = _Block_copy(aBlock);
    v18 = [v15 initWithFireDate:isa interval:1 repeats:v17 block:0.333333333];
    _Block_release(v17);

    v19 = *(v1 + 16);
    *(v1 + 16) = v18;
    v20 = v18;

    if (v20)
    {
      v21 = [objc_opt_self() mainRunLoop];
      [v21 addTimer:v20 forMode:NSRunLoopCommonModes];
    }

    v22 = *(v3 + 8);
    v22(v7, v2);
    return (v22)(v10, v2);
  }

  return result;
}

uint64_t sub_10000948C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    v3 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

    os_unfair_lock_lock(v3);
    v4 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
    v5 = sub_100016BEC();

    os_unfair_lock_unlock(v3);

    v6 = v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed;
    v7 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed + 4);
    if ((v5 & 0x100000000) != 0)
    {
      if ((*(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed + 4) & 1) == 0)
      {
        v8 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed);
        goto LABEL_7;
      }
    }

    else
    {
      if (*(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed + 4))
      {
        goto LABEL_15;
      }

      v8 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed);
      if (*&v5 != v8)
      {
LABEL_7:
        if (v8 > 0.0)
        {
          if ((v5 & 0x100000000) == 0 && *&v5 > 0.0)
          {
          }

          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_19;
          }

          result = swift_unknownObjectWeakLoadStrong();
          if (result)
          {
            v9 = result;
            v10 = *(result + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
            if (!v10)
            {
              __break(1u);
              return result;
            }

            v11 = *(v10 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
            v12 = *(result + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);

            os_unfair_lock_lock(v11);
            v13 = *(v10 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
            sub_10003FC50(v13, 0, v9, 0xD000000000000012, 0x8000000100046460);

            os_unfair_lock_unlock(v11);
            swift_unknownObjectRelease();
          }

LABEL_18:
          swift_unknownObjectRelease();
LABEL_19:
          *v6 = v5;
          *(v6 + 4) = BYTE4(v5) & 1;
        }

LABEL_15:
        if ((v5 & 0x100000000) != 0 || *&v5 <= 0.0)
        {
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_100009678()
{
  if (*(v0 + 16))
  {
    v1 = v0;
    v2 = sub_10004164C();
    v3 = sub_100041A9C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Stop monitoring VFXWorld simulation speed", v4, 2u);
    }

    [*(v1 + 16) invalidate];
    v5 = *(v1 + 16);
    *(v1 + 16) = 0;
  }
}

uint64_t sub_100009758()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009798(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000097D8(uint64_t a1)
{
  v2 = v1;
  sub_100041CFC();
  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v4 = sub_10002C594(v11);
  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_10000B78C(*(a1 + 56) + 32 * v4, v12);
  sub_10000BAB0(v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_100041CFC();
  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v6 = sub_10002C594(v11);
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_10000B78C(*(a1 + 56) + 32 * v6, v12);
  sub_10000BAB0(v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:

    goto LABEL_12;
  }

  sub_100041CFC();
  if (!*(a1 + 16) || (v8 = sub_10002C594(v11), (v9 & 1) == 0))
  {
LABEL_11:

    sub_10000BAB0(v11);
    goto LABEL_12;
  }

  sub_10000B78C(*(a1 + 56) + 32 * v8, v12);
  sub_10000BAB0(v11);

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

void sub_1000099FC(void *a1)
{
  v3 = [a1 parameters];
  if (v3)
  {
    v4 = v3;
    v5 = *(v1 + 16);
    isa = sub_1000419DC().super.super.isa;
    v7 = sub_1000417CC();
    [v4 setObject:isa forKeyedSubscript:v7];
    swift_unknownObjectRelease();
  }

  v8 = [a1 parameters];
  if (v8)
  {
    v9 = v8;
    v10 = *(v1 + 20);
    v11 = sub_100041A2C().super.super.isa;
    v12 = sub_1000417CC();
    [v9 setObject:v11 forKeyedSubscript:v12];
    swift_unknownObjectRelease();
  }

  v13 = [a1 parameters];
  if (v13)
  {
    v14 = v13;
    v15 = *(v1 + 24);
    v16 = sub_100041A5C().super.super.isa;
    v17 = sub_1000417CC();
    [v14 setObject:v16 forKeyedSubscript:v17];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100009BF0(uint64_t a1)
{
  v2 = v1;
  sub_100041CFC();
  if (*(a1 + 16) && (v4 = sub_10002C594(v15), (v5 & 1) != 0))
  {
    sub_10000B78C(*(a1 + 56) + 32 * v4, v16);
    sub_10000BAB0(v15);
    sub_10000BB04(0, &qword_10005D658, NSValue_ptr);
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
      return sub_1000097D8(a1);
    }
  }

  else
  {

    sub_10000BAB0(v15);
  }

  type metadata accessor for KeyboardFrameDidChangeDataUpdate();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_100009D80(uint64_t a1)
{
  v2 = v1;
  sub_100041CFC();
  if (*(a1 + 16))
  {
    v4 = sub_10002C594(v25);
    if (v5)
    {
      sub_10000B78C(*(a1 + 56) + 32 * v4, v26);
      sub_10000BAB0(v25);
      sub_10000BB04(0, &qword_10005D658, NSValue_ptr);
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

      sub_100041CFC();
      if (*(a1 + 16))
      {
        v14 = sub_10002C594(v25);
        if (v15)
        {
          sub_10000B78C(*(a1 + 56) + 32 * v14, v26);
          sub_10000BAB0(v25);
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
            return sub_1000097D8(a1);
          }

          goto LABEL_10;
        }
      }
    }
  }

  sub_10000BAB0(v25);
LABEL_9:
  type metadata accessor for KeyboardVisibilityDataUpdate();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_100009FA8(void *a1)
{
  sub_1000099FC(a1);
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
      isa = sub_100041C2C().super.isa;
    }

    v10 = sub_1000417CC();
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
      v20 = sub_100041C2C().super.isa;
    }

    v25 = sub_1000417CC();
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
    v17 = sub_100041C2C().super.isa;
    v25 = sub_1000417CC();
    [v16 setObject:v17 forKeyedSubscript:?];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10000A228(uint64_t a1)
{
  v2 = sub_10004168C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000416DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
  v12 = sub_100041B0C();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = sub_10000B864;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028728;
  aBlock[3] = &unk_100055AB0;
  v15 = _Block_copy(aBlock);

  sub_1000416AC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000B884();
  sub_1000054B8(&unk_10005D640, "B|");
  sub_10000B8DC();
  sub_100041CAC();
  sub_100041B1C();
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10000A4E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    type metadata accessor for TranscriptBackgroundEventHandlerFactory();
    v5 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger;
    v6 = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
    v8 = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
    v7 = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 16];
    v35[2] = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v35[3] = v6;
    v35[0] = v8;
    v35[1] = v7;
    v10 = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80];
    v9 = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 96];
    v11 = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 64];
    *(v36 + 14) = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 110];
    v35[5] = v10;
    v36[0] = v9;
    v35[4] = v11;
    v12 = v4;
    sub_100005408(v35, v29);
    sub_100016FD4(&v4[v5], v4, a2, v35, &v30);
    sub_100005464(v35);

    if (!v31)
    {

      return sub_10000B988(&v30);
    }

    sub_10000B9F0(&v30, v32);
    v13 = *&v12[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder];
    if (*(v13 + 24) == 1)
    {
      v14 = v33;
      v15 = v34;
      result = sub_10000BA6C(v32, v33);
      if (!*&v12[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor])
      {
        __break(1u);
        return result;
      }

      v16 = *(v15 + 8);
      v17 = *&v12[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];

      v16(v18, v14, v15);
    }

    else
    {
      v19 = *(v13 + 16);
      v20 = *&v12[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder];

      os_unfair_lock_lock(v19);
      sub_10000BA08(v32, v29);
      swift_beginAccess();
      v21 = *(v13 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v13 + 32) = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_10003914C(0, v21[2] + 1, 1, v21);
        *(v13 + 32) = v21;
      }

      v23 = v21[2];
      v24 = v21[3];
      v25 = v23 + 1;
      if (v23 >= v24 >> 1)
      {
        v26 = v21;
        v27 = v21[2];
        v28 = sub_10003914C((v24 > 1), v23 + 1, 1, v26);
        v23 = v27;
        v21 = v28;
      }

      v21[2] = v25;
      sub_10000B9F0(v29, &v21[5 * v23 + 4]);
      *(v13 + 32) = v21;
      swift_endAccess();
      os_unfair_lock_unlock(v19);
    }

    return sub_100005500(v32);
  }

  return result;
}

void sub_10000A758(unsigned __int8 a1, void (*a2)(id))
{
  v44 = 0;
  v3 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor;
  v4 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
  if (!v4)
  {
    __break(1u);
    goto LABEL_59;
  }

  v7 = *(v4 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
  v8 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);

  os_unfair_lock_lock(v7);
  v9 = *(v4 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
  sub_10000AD90(v9, v2, &v44, a1);

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
      v10 = 0x8000000100046590;
      v11 = 0x6C6C6F7263537349;
      if (a1 == 5)
      {
        v11 = 0xD000000000000010;
      }

      else
      {
        v10 = 0xEB00000000676E69;
      }

      v12 = 0x80000001000465D0;
      v13 = 0xD000000000000016;
      if (a1 != 3)
      {
        v13 = 0xD000000000000010;
        v12 = 0x80000001000465B0;
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
    v28 = sub_100039FB8(v14, v15);

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
        v32 = *(v31 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
        v33 = *(v27 + v3);

        os_unfair_lock_lock(v32);
        v34 = *(v31 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
        v35 = [v34 rootNode];
        v36 = sub_1000417CC();
        v37 = [v35 childNodeWithName:v36 recursively:1];

        if (v37)
        {
          v41 = sub_1000417CC();

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
    oslog = sub_10004164C();
    v16 = sub_100041A9C();
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
        v19 = 0x8000000100046590;
        v20 = 0x6C6C6F7263537349;
        if (a1 == 5)
        {
          v20 = 0xD000000000000010;
        }

        else
        {
          v19 = 0xEB00000000676E69;
        }

        v21 = 0x80000001000465D0;
        v22 = 0xD000000000000016;
        if (a1 != 3)
        {
          v22 = 0xD000000000000010;
          v21 = 0x80000001000465B0;
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

      v40 = sub_10000B1E4(v23, v24, &v43);

      *(v17 + 4) = v40;
      _os_log_impl(&_mh_execute_header, oslog, v16, "State %s does not exist for this effect, ignoring.", v17, 0xCu);
      sub_100005500(v18);
    }

    else
    {
    }
  }
}

void sub_10000AD90(void *a1, uint64_t a2, char *a3, char a4)
{
  LOBYTE(v4) = a4;
  v6 = [a1 rootNode];
  v7 = sub_1000417CC();
  v8 = [v6 childNodeWithName:v7 recursively:1];

  if (v8)
  {
    v9 = [v8 states];
    if (v9)
    {
      v10 = v9;
      sub_1000054B8(&qword_10005D628, &unk_100044340);
      v11 = sub_10004198C();

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
            v4 = sub_100041D3C();
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
              v18 = sub_1000417FC();
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

            v23 = 0x80000001000465B0;
            v22 = 0x8000000100046590;
            if (v14 != 5)
            {
              v22 = 0xEB00000000676E69;
            }

            v24 = 0xD000000000000016;
            if (v14 == 3)
            {
              v23 = 0x80000001000465D0;
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

              v29 = sub_100041EEC();

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
          v12 = sub_100041DDC();
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
    oslog = sub_10004164C();
    v30 = sub_100041A9C();
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v30, "No states node", v31, 2u);
    }
  }
}

uint64_t sub_10000B1E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000B2B0(v11, 0, 0, 1, a1, a2);
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
    sub_10000B78C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005500(v11);
  return v7;
}

unint64_t sub_10000B2B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000B3BC(a5, a6);
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
    result = sub_100041D5C();
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

char *sub_10000B3BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000B408(a1, a2);
  sub_10000B538(&off_1000554A8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000B408(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000B624(v5, 0);
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

  result = sub_100041D5C();
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
        v10 = sub_1000418DC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000B624(v10, 0);
        result = sub_100041D0C();
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

uint64_t sub_10000B538(uint64_t result)
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

  result = sub_10000B698(result, v12, 1, v3);
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

void *sub_10000B624(uint64_t a1, uint64_t a2)
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

  sub_1000054B8(&qword_10005D620, &unk_100044330);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000B698(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054B8(&qword_10005D620, &unk_100044330);
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

uint64_t sub_10000B78C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000B7EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B824()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B86C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000B884()
{
  result = qword_10005F830;
  if (!qword_10005F830)
  {
    sub_10004168C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F830);
  }

  return result;
}

unint64_t sub_10000B8DC()
{
  result = qword_10005F840;
  if (!qword_10005F840)
  {
    sub_10000B940(&unk_10005D640, "B|");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F840);
  }

  return result;
}

uint64_t sub_10000B940(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000B988(uint64_t a1)
{
  v2 = sub_1000054B8(&qword_10005D650, &qword_100044350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B9F0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000BA08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000BA6C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000BB04(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000BB4C()
{
  sub_100005500((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_10000BB8C(uint64_t a1, double a2)
{
  if (a2 == 0.0)
  {
    if (*(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) != a1)
    {
      *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) = a1;
      v4 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
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
        v14 = *&v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation];
        *&v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation] = a1;
        if (v14 != a1)
        {
          v15 = v13;
          sub_100003CD4();
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
    v20[4] = sub_10000CC30;
    v20[5] = v18;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_100028728;
    v20[3] = &unk_100055B00;
    v19 = _Block_copy(v20);

    [v17 animateWithDuration:v19 animations:a2];
    _Block_release(v19);
  }
}

void sub_10000BD98(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) != a2)
  {
    *(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) = a2;
    v3 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
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
      v14 = *&v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation];
      *&v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation] = a2;
      if (v14 != a2)
      {
        v15 = v13;
        sub_100003CD4();
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

uint64_t sub_10000BED0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect);
  swift_beginAccess();
  v7 = sub_10000BA6C(v6, v6[3]);
  v27 = *v7;
  v28 = v7[1];
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100044360;
  v9 = sub_1000229F4(v27);
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_10000CBA4();
  *(v8 + 64) = v12;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  v13 = sub_1000229F4(v28);
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 72) = v13;
  *(v8 + 80) = v14;
  v15 = sub_10004181C();
  v17 = v16;
  v18 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
  swift_beginAccess();
  v19 = *(v3 + v18);
  if (*(v19 + 16) && (v20 = *(v3 + v18), , v21 = sub_10002C494(v15, v17), v23 = v22, , (v23 & 1) != 0))
  {
    v24 = *(*(v19 + 56) + 8 * v21);
    v25 = v24;
  }

  else
  {

    v24 = 0;
  }

  swift_beginAccess();

  sub_100027F74(v24, a1, a2);
  return swift_endAccess();
}

uint64_t sub_10000C08C(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_10000BA6C(a3, a3[3]);
    v10 = v7[1];
    v11 = *v7;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      sub_100033608(a1, Strong, v11, v10, 1.0);
      if ((sub_10002F4C4(v6, v11, v10) & 1) == 0)
      {
        sub_10000C14C(1.0);
      }
    }
  }

  return result;
}

void sub_10000C14C(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_10002C494(0xD000000000000011, 0x80000001000467B0);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      if (qword_10005CD70 != -1)
      {
        swift_once();
      }

      if ([qword_1000611A0 posterKitEditor])
      {
      }

      else
      {
        [*(v8 + 16) setAlpha:1.0];

        v9 = sub_10004164C();
        v10 = sub_100041ACC();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v50 = v48;
          *v11 = 134218242;
          *(v11 + 4) = 0x3FF0000000000000;
          *(v11 + 12) = 2080;
          swift_beginAccess();
          v12 = sub_10000BA6C((v8 + 24), *(v8 + 48));
          v45 = v12[1];
          v46 = *v12;
          sub_1000054B8(&unk_10005D9B0, &unk_100044760);
          v13 = swift_allocObject();
          *(v13 + 16) = xmmword_100044360;
          v14 = sub_1000229F4(v46);
          v16 = v15;
          *(v13 + 56) = &type metadata for String;
          v17 = sub_10000CBA4();
          *(v13 + 64) = v17;
          *(v13 + 32) = v14;
          *(v13 + 40) = v16;
          v18 = sub_1000229F4(v45);
          *(v13 + 96) = &type metadata for String;
          *(v13 + 104) = v17;
          *(v13 + 72) = v18;
          *(v13 + 80) = v19;
          v20 = sub_10004181C();
          v22 = sub_10000B1E4(v20, v21, &v50);

          *(v11 + 14) = v22;
          _os_log_impl(&_mh_execute_header, v9, v10, "current view alpha %f %s", v11, 0x16u);
          sub_100005500(v48);
        }
      }
    }

    else
    {
    }
  }

  v23 = *(v2 + v4);
  if (*(v23 + 16))
  {
    v24 = *(v2 + v4);

    v25 = sub_10002C494(0xD000000000000010, 0x80000001000467D0);
    if (v26)
    {
      v27 = *(*(v23 + 56) + 8 * v25);

      if (qword_10005CD70 != -1)
      {
        swift_once();
      }

      if ([qword_1000611A0 posterKitEditor])
      {
      }

      else
      {
        [*(v27 + 16) setAlpha:a1];
        v28 = [*(v27 + 16) superview];
        if (v28)
        {
          v29 = v28;
          [v28 bringSubviewToFront:*(v27 + 16)];
        }

        v30 = sub_10004164C();
        v31 = sub_100041ACC();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v51 = v33;
          *v32 = 134218242;
          *(v32 + 4) = a1;
          *(v32 + 12) = 2080;
          swift_beginAccess();
          v34 = sub_10000BA6C((v27 + 24), *(v27 + 48));
          v47 = *v34;
          v49 = v34[1];
          sub_1000054B8(&unk_10005D9B0, &unk_100044760);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_100044360;
          v36 = sub_1000229F4(v47);
          v38 = v37;
          *(v35 + 56) = &type metadata for String;
          v39 = sub_10000CBA4();
          *(v35 + 64) = v39;
          *(v35 + 32) = v36;
          *(v35 + 40) = v38;
          v40 = sub_1000229F4(v49);
          *(v35 + 96) = &type metadata for String;
          *(v35 + 104) = v39;
          *(v35 + 72) = v40;
          *(v35 + 80) = v41;
          v42 = sub_10004181C();
          v44 = sub_10000B1E4(v42, v43, &v51);

          *(v32 + 14) = v44;
          _os_log_impl(&_mh_execute_header, v30, v31, "target view alpha %f %s", v32, 0x16u);
          sub_100005500(v33);
        }
      }
    }

    else
    {
    }
  }
}

id sub_10000C6B4()
{
  v1 = v0;
  v2 = sub_10004164C();
  v3 = sub_100041ACC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v29 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000B1E4(0xD000000000000018, 0x8000000100046790, &v29);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100005500(v5);
  }

  v6 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_effectViewByEffect;
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

  v18 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
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

uint64_t sub_10000C97C()
{
  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_logger;
  v2 = sub_10004166C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000097B0(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_delegate);
  sub_100005500((v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_factory));
  v3 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_effectViewByEffect);

  v4 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_placeholderViewByEffect);

  sub_100005500((v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ViewsManager()
{
  result = qword_10005D690;
  if (!qword_10005D690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CABC()
{
  result = sub_10004166C();
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

unint64_t sub_10000CBA4()
{
  result = qword_10005F260;
  if (!qword_10005F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F260);
  }

  return result;
}

uint64_t sub_10000CBF8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CC38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CC50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000054B8(&unk_10005D9C0, &unk_1000444A0);
    v2 = sub_100041E0C();
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
    sub_10000B78C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000E988(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000E988(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000E988(v31, v32);
    result = sub_100041CDC(v2[5]);
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
    result = sub_10000E988(v32, (v2[7] + 32 * v10));
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

uint64_t sub_10000D0A8(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a2;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_10000D180;

  return sub_10000E1B4(v7);
}

uint64_t sub_10000D180()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_1000413DC();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_10000E93C();
    isa = sub_10004197C().super.isa;

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

id sub_10000D35C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientTranscriptBackgroundPosterDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GradientTranscriptBackgroundPosterDelegate()
{
  result = qword_10005D990;
  if (!qword_10005D990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000D454()
{
  result = sub_10004166C();
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

uint64_t sub_10000D4E4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000D534()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000D5F4;

  return sub_10000D0A8(v2, v3, v5, v4);
}

uint64_t sub_10000D5F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000D6E8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000E9A0;

  return v7();
}

uint64_t sub_10000D7D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000E9A0;

  return sub_10000D6E8(v2, v3, v5);
}

uint64_t sub_10000D890(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000D5F4;

  return v8();
}

uint64_t sub_10000D97C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000D9BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000E9A0;

  return sub_10000D890(a1, v4, v5, v7);
}

uint64_t sub_10000DA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000054B8(&qword_10005D9A0, &qword_100044440);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10000DD44(a3, v25 - v11);
  v13 = sub_100041A0C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000DDB4(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000419FC();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1000419EC();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_10004188C() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_10000DDB4(a3);

    return v23;
  }

LABEL_8:
  sub_10000DDB4(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000DD44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000054B8(&qword_10005D9A0, &qword_100044440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DDB4(uint64_t a1)
{
  v2 = sub_1000054B8(&qword_10005D9A0, &qword_100044440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000DE1C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000DF14;

  return v7(a1);
}

uint64_t sub_10000DF14()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000E00C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E044(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000E9A0;

  return sub_10000DE1C(a1, v5);
}

uint64_t sub_10000E0FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000D5F4;

  return sub_10000DE1C(a1, v5);
}

uint64_t sub_10000E1B4(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;

  return _swift_task_switch(sub_10000E244, 0, 0);
}

uint64_t sub_10000E244()
{
  v59 = v0;
  v1 = [*(v0 + 112) context];
  if (v1)
  {
    v2 = v1;
    v54 = sub_10004178C();
  }

  else
  {
    v54 = 0;
  }

  sub_10002583C();
  v4 = v3;
  v53 = v3[1].i64[0];
  if (v53)
  {
    v50 = *(v0 + 120);
    v52 = objc_opt_self();
    v5 = 0;
    v51 = PRPosterRoleBackdrop;
    v6 = v4 + 3;
    do
    {
      v56 = v6[-1];
      v55 = v6;
      v57 = *v6;
      sub_1000054B8(&unk_10005D9B0, &unk_100044760);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100044360;
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100044400;
      *(v8 + 56) = &type metadata for Float;
      *(v8 + 64) = &protocol witness table for Float;
      *(v8 + 32) = v56.i32[0];
      *(v8 + 96) = &type metadata for Float;
      *(v8 + 104) = &protocol witness table for Float;
      *(v8 + 72) = v56.i32[1];
      *(v8 + 112) = v56.i32[2];
      *(v8 + 136) = &type metadata for Float;
      *(v8 + 144) = &protocol witness table for Float;
      *(v8 + 176) = &type metadata for Float;
      *(v8 + 184) = &protocol witness table for Float;
      *(v8 + 152) = v56.i32[3];
      v9 = sub_10004181C();
      v11 = v10;
      *(v7 + 56) = &type metadata for String;
      v12 = sub_10000CBA4();
      *(v7 + 64) = v12;
      *(v7 + 32) = v9;
      *(v7 + 40) = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100044400;
      *(v13 + 56) = &type metadata for Float;
      *(v13 + 64) = &protocol witness table for Float;
      *(v13 + 32) = v57.i32[0];
      *(v13 + 96) = &type metadata for Float;
      *(v13 + 104) = &protocol witness table for Float;
      *(v13 + 72) = v57.i32[1];
      *(v13 + 112) = v57.i32[2];
      *(v13 + 136) = &type metadata for Float;
      *(v13 + 144) = &protocol witness table for Float;
      *(v13 + 176) = &type metadata for Float;
      *(v13 + 184) = &protocol witness table for Float;
      *(v13 + 152) = v57.i32[3];
      v14 = sub_10004181C();
      *(v7 + 96) = &type metadata for String;
      *(v7 + 104) = v12;
      *(v7 + 72) = v14;
      *(v7 + 80) = v15;
      v16 = sub_10004181C();
      v18 = v17;
      v19 = sub_10002806C(v56, v57);
      v21 = v20;
      v22 = sub_1000417CC();
      v23 = [v52 mutableDescriptorWithIdentifier:v22 role:v51];

      if (v54)
      {
        *(v0 + 40) = &type metadata for Int;
        *(v0 + 16) = v5;
        sub_10000E988((v0 + 16), (v0 + 48));

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58[0] = v54;
        sub_10002E150((v0 + 48), 0x6564724F74726F73, 0xE900000000000072, isUniquelyReferenced_nonNull_native);
        v25 = v58[0];
        *(v0 + 40) = &type metadata for String;
        *(v0 + 16) = 0xD000000000000012;
        *(v0 + 24) = 0x8000000100046940;
        sub_10000E988((v0 + 16), (v0 + 48));
        v26 = swift_isUniquelyReferenced_nonNull_native();
        v58[0] = v25;
        sub_10002E150((v0 + 48), 0xD000000000000010, 0x8000000100046920, v26);
        v27 = v58[0];
        *(v0 + 40) = &type metadata for String;
        *(v0 + 16) = v16;
        *(v0 + 24) = v18;
        sub_10000E988((v0 + 16), (v0 + 48));
        v28 = swift_isUniquelyReferenced_nonNull_native();
        v58[0] = v27;
        sub_10002E150((v0 + 48), 0x6D6F74737563, 0xE600000000000000, v28);
        v29 = v58[0];
        *(v0 + 40) = &type metadata for String;
        *(v0 + 16) = v19;
        *(v0 + 24) = v21;
        sub_10000E988((v0 + 16), (v0 + 48));
        v30 = swift_isUniquelyReferenced_nonNull_native();
        v58[0] = v29;
        sub_10002E150((v0 + 48), 0xD000000000000012, 0x8000000100046960, v30);
        sub_10000CC50(v58[0]);

        isa = sub_10004177C().super.isa;

        *(v0 + 16) = 0;
        v32 = [v23 storeUserInfo:isa error:v0 + 16];

        v33 = *(v0 + 16);
        if (v32)
        {
          v34 = v33;
        }

        else
        {
          v35 = v33;
          sub_1000413EC();

          swift_willThrow();
          swift_errorRetain();
          v36 = sub_10004164C();
          v37 = sub_100041ABC();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v58[0] = v39;
            *v38 = 136315138;
            swift_getErrorValue();
            v41 = *(v0 + 80);
            v40 = *(v0 + 88);
            v42 = *(v0 + 96);
            v43 = sub_100041F0C();
            v45 = sub_10000B1E4(v43, v44, v58);

            *(v38 + 4) = v45;
            _os_log_impl(&_mh_execute_header, v36, v37, "error while storing user info : %s", v38, 0xCu);
            sub_100005500(v39);
          }

          else
          {
          }
        }
      }

      else
      {
      }

      v46 = v23;
      sub_10004196C();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v47 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000419AC();
      }

      ++v5;
      sub_1000419CC();

      v6 = v55 + 2;
    }

    while (v53 != v5);
  }

  else
  {
  }

  v48 = *(v0 + 8);

  return v48(&_swiftEmptyArrayStorage);
}

unint64_t sub_10000E93C()
{
  result = qword_10005D9A8;
  if (!qword_10005D9A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005D9A8);
  }

  return result;
}

_OWORD *sub_10000E988(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_10000E9D8()
{
  type metadata accessor for Localization();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100061088 = result;
  return result;
}

void sub_10000EA2C()
{
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  if ([qword_1000611A0 metalCapture])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      sub_10000EAC8();
    }
  }
}

uint64_t sub_10000EAC8()
{
  v45 = sub_10004141C();
  v42 = *(v45 - 8);
  v0 = v42;
  v1 = *(v42 + 64);
  __chkstk_darwin(v45);
  v3 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000054B8(&qword_10005DAD0, &unk_1000444C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v41 - v6;
  v8 = sub_1000414BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v44 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v41 - v14;
  __chkstk_darwin(v13);
  v17 = v41 - v16;
  v43 = 0x80000001000469F0;
  v18 = NSTemporaryDirectory();
  v19 = sub_1000417FC();
  v41[1] = v20;
  v41[2] = v19;

  (*(v9 + 56))(v7, 1, 1, v8);
  v21 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v22 = *(v0 + 104);
  v23 = v45;
  v22(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v45);
  sub_10004149C();
  v46[0] = 0xD000000000000014;
  v46[1] = v43;
  v24 = v21;
  v25 = v8;
  v22(v3, v24, v23);
  sub_10000EF68();
  sub_1000414AC();
  (*(v42 + 8))(v3, v23);
  v26 = *(v9 + 8);
  v26(v15, v8);
  v27 = *(v9 + 16);
  v28 = v44;
  v45 = v17;
  v27();
  v29 = sub_10004164C();
  v30 = sub_100041A9C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v26;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v46[0] = v33;
    *v32 = 136315138;
    sub_10000EFBC();
    v34 = sub_100041EDC();
    v35 = v25;
    v37 = v36;
    v31(v28, v35);
    v38 = sub_10000B1E4(v34, v37, v46);

    *(v32 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "triggerProgrammaticCapture at %s", v32, 0xCu);
    sub_100005500(v33);

    v25 = v35;
    v39 = v31;
  }

  else
  {

    v26(v28, v25);
    v39 = v26;
  }

  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  [qword_1000611A0 setMetalCapture:0];
  return v39(v45, v25);
}

unint64_t sub_10000EF68()
{
  result = qword_10005DAD8;
  if (!qword_10005DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DAD8);
  }

  return result;
}

unint64_t sub_10000EFBC()
{
  result = qword_10005DAE0;
  if (!qword_10005DAE0)
  {
    sub_1000414BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DAE0);
  }

  return result;
}

uint64_t sub_10000F014(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746E656964617247;
  }

  else
  {
    v4 = 0x63696D616E7944;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x746E656964617247;
  }

  else
  {
    v6 = 0x63696D616E7944;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100041EEC();
  }

  return v9 & 1;
}

Swift::Int sub_10000F0BC()
{
  v1 = *v0;
  sub_100041F1C();
  sub_1000418BC();

  return sub_100041F3C();
}

uint64_t sub_10000F140()
{
  *v0;
  sub_1000418BC();
}

Swift::Int sub_10000F1B0()
{
  v1 = *v0;
  sub_100041F1C();
  sub_1000418BC();

  return sub_100041F3C();
}

uint64_t sub_10000F230@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000554F8;
  v8._object = v3;
  v5 = sub_100041E2C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10000F290(uint64_t *a1@<X8>)
{
  v2 = 0x63696D616E7944;
  if (*v1)
  {
    v2 = 0x746E656964617247;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10000F2D0()
{
  sub_10000F704();
  v0 = sub_100041C5C();
  v1 = type metadata accessor for Signpost();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v5 = v0;
  result = sub_10004162C();
  *(v4 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog) = v5;
  qword_100061090 = v4;
  return result;
}

uint64_t sub_10000F380()
{
  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
  v2 = sub_10004163C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Signpost()
{
  result = qword_10005DB28;
  if (!qword_10005DB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F480()
{
  result = sub_10004163C();
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

uint64_t sub_10000F51C(char a1)
{
  v2 = sub_10004163C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005CD28 != -1)
  {
    swift_once();
  }

  v7 = qword_100061090;
  sub_10000F704();
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  v14 = a1 & 1;

  sub_100041DBC();
  v15._countAndFlagsBits = 0x6F69736E65747845;
  v15._object = 0xE90000000000006ELL;
  sub_1000418CC(v15);
  v8 = sub_100041C5C();
  v9 = *(v7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog);
  *(v7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog) = v8;
  v10 = v8;

  sub_10004162C();
  v11 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v3 + 40))(v7 + v11, v6, v2);
  swift_endAccess();
  return v7;
}

unint64_t sub_10000F704()
{
  result = qword_10005DBF0;
  if (!qword_10005DBF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005DBF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Signpost.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Signpost.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000F8C8()
{
  result = qword_10005DBF8;
  if (!qword_10005DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DBF8);
  }

  return result;
}

void sub_10000F91C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_10000F984(size_t a1, int64_t a2, int64_t a3)
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

  v14 = sub_10004164C();
  v15 = sub_100041ACC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = a1;
    *(v16 + 12) = 2048;
    *(v16 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v14, v15, "create surface %ldx%ld", v16, 0x16u);
  }

  sub_1000054B8(&qword_10005DE70, &qword_100044630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000445A0;
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
  sub_1000331F4(v18);
  swift_setDeallocating();
  sub_1000054B8(&qword_10005DE78, &qword_100044638);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_100011598(&unk_10005DE80, type metadata accessor for CFString);
  isa = sub_10004177C().super.isa;

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
    v37 = sub_1000115E0(BaseAddress, a1, a2, a3, DeviceGray);
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

uint64_t sub_10000FDF8(CGContext *a1, uint64_t a2, void *a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v17 = sub_10004158C();
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
      sub_1000114A0(a3);
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
  sub_100041A8C();
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_100010130(uint64_t result, double a2, double a3)
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
  sub_10000F984(v4, a3, v4);
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
  sub_1000054B8(&qword_10005DE68, "f~");
  v14._rawValue = swift_allocObject();
  *(v14._rawValue + 1) = xmmword_1000445B0;
  *(v14._rawValue + 4) = 0;
  *(v14._rawValue + 5) = 0;
  *(v14._rawValue + 6) = v8;
  *(v14._rawValue + 7) = v7;
  sub_100041A7C(v14);

  if (v6)
  {
    v6(v11, v8);
  }

  CGContextFlush(v11);

  v15 = *(v5 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_100010354()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  v2 = OBJC_IVAR____TtC33GradientBackgroundPosterExtensionP33_77D8BCAD73742E8786BBD6C6E080525512MaskProvider_logger;
  v3 = sub_10004166C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100010430()
{
  result = sub_10004166C();
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

uint64_t sub_1000104D0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_timer) = 0;
  v5 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_logger;
  v6 = sub_10004166C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_asset) = a2;
  v8 = type metadata accessor for MaskProvider(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = 0;
  (*(v7 + 32))(v11 + OBJC_IVAR____TtC33GradientBackgroundPosterExtensionP33_77D8BCAD73742E8786BBD6C6E080525512MaskProvider_logger, a1, v6);
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_provider) = v11;
  return v2;
}

uint64_t sub_1000105CC(double a1, double a2, double a3)
{
  v6 = sub_10004168C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000416DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004164C();
  v17 = sub_100041A9C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v16, v17, "Starting timer to clear mask after %fs", v18, 0xCu);
  }

  sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
  v19 = sub_100041B0C();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = a1;
  *(v21 + 32) = a2;
  *(v21 + 40) = a3;
  aBlock[4] = sub_100011544;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028728;
  aBlock[3] = &unk_100055CF8;
  v22 = _Block_copy(aBlock);

  sub_1000416AC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100011598(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000054B8(&unk_10005D640, "B|");
  sub_10000B8DC();
  sub_100041CAC();
  sub_100041B1C();
  _Block_release(v22);

  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v11);
}

void sub_100010954(double a1, double a2, double a3)
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
    v14[4] = sub_10001158C;
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10000F91C;
    v14[3] = &unk_100055D48;
    v11 = _Block_copy(v14);

    v12 = [v8 scheduledTimerWithTimeInterval:0 repeats:v11 block:a1];
    _Block_release(v11);
    v13 = *(v7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_timer);
    *(v7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_timer) = v12;
  }
}

void sub_100010AF4(void *a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_timer;
    v9 = *(Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_timer);
    if (v9 && (sub_10000BB04(0, &qword_10005DE60, NSTimer_ptr), v10 = v9, v11 = a1, v12 = sub_100041C3C(), v10, v11, (v12 & 1) != 0))
    {
      v13 = sub_10004164C();
      v14 = sub_100041AAC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Timer fired to clear mask", v15, 2u);
      }

      v16 = *(v7 + v8);
      *(v7 + v8) = 0;

      sub_1000111C0(a2, a3);
    }

    else
    {
      v17 = sub_10004164C();
      v18 = sub_100041A9C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Not the right taimer bailing out", v19, 2u);
      }
    }
  }
}

uint64_t sub_100010CE0()
{
  v0 = sub_10004168C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000416DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
  v10 = sub_100041B0C();
  v11 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000114EC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028728;
  aBlock[3] = &unk_100055CA8;
  v12 = _Block_copy(aBlock);

  sub_1000416AC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100011598(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000054B8(&unk_10005D640, "B|");
  sub_10000B8DC();
  sub_100041CAC();
  sub_100041B1C();
  _Block_release(v12);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

void sub_100010FA8()
{
  v0 = sub_10004166C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v1 + 16))(v4, Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_logger, v0);

    v6 = sub_10004164C();
    v7 = sub_100041AAC();
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
    v10 = *(v9 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_timer);

    [v10 invalidate];
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_timer);
    *(v11 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_timer) = 0;
  }
}

id sub_1000111C0(double a1, double a2)
{
  v3 = v2;
  v6 = sub_10004164C();
  v7 = sub_100041AAC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Clearing mask", v8, 2u);
  }

  v9 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_asset);
  v10 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_provider);
  sub_100010130(0, a1, a2);
  swift_unknownObjectRelease();
  v11 = *(v10 + 24);

  return [v9 setTexture:v11];
}

uint64_t sub_1000112C0()
{
  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_logger;
  v2 = sub_10004166C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_provider);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000113B4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000113EC()
{
  result = sub_10004166C();
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

void sub_1000114A0(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

uint64_t sub_1000114B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000114F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001150C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100011554()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100011598(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_100011618()
{
  v1 = *v0;
  sub_100041F1C();
  sub_100041F2C(v1);
  return sub_100041F3C();
}

Swift::Int sub_10001168C()
{
  v1 = *v0;
  sub_100041F1C();
  sub_100041F2C(v1);
  return sub_100041F3C();
}

uint64_t sub_1000116D0()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 0x76696C4177656976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6580592;
  }
}

uint64_t sub_100011720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000150E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100011760(uint64_t a1)
{
  v2 = sub_1000153D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001179C(uint64_t a1)
{
  v2 = sub_1000153D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000117D8(void *a1)
{
  v3 = sub_1000054B8(&qword_10005E268, &qword_100044800);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10000BA6C(a1, a1[3]);
  sub_1000153D0();
  sub_100041F5C();
  v10[15] = 0;
  sub_100041ECC();
  if (!v1)
  {
    v10[14] = 1;
    sub_100041E9C();
    v10[13] = 2;
    sub_100041EBC();
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_100011990(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_100015204(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
  }
}

uint64_t sub_1000119C4(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  return sub_1000117D8(a1);
}

uint64_t sub_1000119E8()
{
  v0 = type metadata accessor for PIDObserver(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_logger;
  v5 = sub_10004166C();
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v7 = v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_pid;
  *v7 = 0;
  *(v7 + 4) = 1;
  *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_shouldRunAsSnapshot) = 0;
  qword_1000610A0 = v3;
  return result;
}

uint64_t sub_100011A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10004155C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v38 - v15;
  v17 = sub_10004166C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v19 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_logger;
  swift_beginAccess();
  sub_100014FA4(v16, v4 + v19);
  swift_endAccess();
  v20 = *(v4 + 24);
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;

  v21 = [objc_opt_self() processInfo];
  v22 = [v21 processIdentifier];

  v23 = v4 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_pid;
  *v23 = v22;
  *(v23 + 4) = 0;
  sub_10004154C();
  sub_10004153C();
  v25 = v24;
  (*(v9 + 8))(v12, v8);
  v26 = sub_10004164C();
  v27 = sub_100041A9C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    v39 = v22;
    v40 = v25;
    v41 = 0;
    v30 = sub_10004186C();
    v32 = sub_10000B1E4(v30, v31, &v38);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "pid: %s", v28, 0xCu);
    sub_100005500(v29);
  }

  v33 = sub_100012B10();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_100039030(0, *(v33 + 2) + 1, 1, v33);
  }

  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = sub_100039030((v34 > 1), v35 + 1, 1, v33);
  }

  *(v33 + 2) = v35 + 1;
  v36 = &v33[24 * v35];
  *(v36 + 8) = v22;
  *(v36 + 5) = v25;
  *(v36 + 6) = 0;
  sub_10001257C(v33);

  return sub_100011E5C();
}

uint64_t sub_100011E5C()
{
  v1 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - v3;
  sub_100012B10();
  v5 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_logger;
  swift_beginAccess();
  sub_100014E14(v0 + v5, v4);
  v6 = sub_10004166C();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v4, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_10004164C();
    v10 = sub_100041A9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = sub_10004199C();
      v15 = v14;

      v16 = sub_10000B1E4(v13, v15, &v17);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "pidList: %s", v11, 0xCu);
      sub_100005500(v12);
    }

    else
    {
    }

    return (*(v7 + 8))(v4, v6);
  }

  return result;
}

uint64_t sub_100012084()
{
  v1 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_pid);
  v2 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_pid + 4);
  sub_100011E5C();
  v3 = sub_100012B10();
  v4 = v3;
  v5 = *(v3 + 2);
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = v3 + 48;
  v7 = *(v3 + 2);
  while (1)
  {
    v8 = *(v6 - 4) == v1 ? v2 : 1;
    if ((v8 & 1) == 0)
    {
      break;
    }

    v6 += 3;
    if (!--v7)
    {
      goto LABEL_29;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = *(v6 - 1);
  v12 = *v6;
  while (*&v3[v9 + 32] != v1)
  {
    ++v10;
    v9 += 24;
    if (v5 == v10)
    {
      v10 = *(v3 + 2);
      goto LABEL_19;
    }
  }

  v13 = (v10 + 1);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_15;
  }

  v4 = sub_100039870(v4);
LABEL_15:
  v5 = *(v4 + 2);
  if (v13 != v5)
  {
    v14 = (v4 + 32);
    v19 = &v4[v9 + 72];
    while (v13 < v5)
    {
      v20 = *(v19 - 4);
      if (v20 != v1)
      {
        if (v13 != v10)
        {
          if (v10 >= v5)
          {
            goto LABEL_41;
          }

          v21 = v14 + 24 * v10;
          v22 = *v21;
          v23 = *(v21 + 8);
          v24 = *(v21 + 16);
          v25 = *(v19 - 1);
          v26 = *v19;
          *v21 = v20;
          *(v21 + 8) = v25;
          *(v21 + 16) = v26;
          *(v19 - 4) = v22;
          *(v19 - 1) = v23;
          *v19 = v24;
          v5 = *(v4 + 2);
        }

        ++v10;
      }

      v13 = (v13 + 1);
      v19 += 24;
      if (v13 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = v10 + 1;
LABEL_17:
  if (v5 < v10)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v10 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_19:
  v14 = v10 - v5;
  v13 = v10;
  if (__OFADD__(v5, v10 - v5))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v4;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v4 + 3) >> 1)
  {
    if (v5 <= v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = v5;
    }

    v4 = sub_100039030(isUniquelyReferenced_nonNull_native, v16, 1, v4);
    v27 = v4;
  }

  v13 = &v27;
  sub_100039998(v10, v5, 0);
  v10 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    goto LABEL_45;
  }

  v5 = *(v4 + 2);
  v14 = *(v4 + 3);
  v13 = (v5 + 1);
  if (v5 < v14 >> 1)
  {
    goto LABEL_28;
  }

LABEL_46:
  v4 = sub_100039030((v14 > 1), v13, 1, v4);
LABEL_28:
  *(v4 + 2) = v13;
  v17 = &v4[24 * v5];
  *(v17 + 8) = v1;
  *(v17 + 5) = v11;
  *(v17 + 6) = v10;
  sub_10001257C(v4);
LABEL_29:

  return sub_100011E5C();
}

uint64_t sub_100012300()
{
  v1 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_pid);
  v2 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_pid + 4);
  sub_100011E5C();
  v3 = sub_100012B10();
  v4 = v3;
  v5 = *(v3 + 2);
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = v3 + 48;
  v7 = *(v3 + 2);
  while (1)
  {
    v8 = *(v6 - 4) == v1 ? v2 : 1;
    if ((v8 & 1) == 0)
    {
      break;
    }

    v6 += 3;
    if (!--v7)
    {
      goto LABEL_29;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = *(v6 - 1);
  v12 = *v6;
  while (*&v3[v9 + 32] != v1)
  {
    ++v10;
    v9 += 24;
    if (v5 == v10)
    {
      v10 = *(v3 + 2);
      goto LABEL_19;
    }
  }

  v13 = (v10 + 1);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_15;
  }

  v4 = sub_100039870(v4);
LABEL_15:
  v5 = *(v4 + 2);
  if (v13 != v5)
  {
    v14 = (v4 + 32);
    v19 = &v4[v9 + 72];
    while (v13 < v5)
    {
      v20 = *(v19 - 4);
      if (v20 != v1)
      {
        if (v13 != v10)
        {
          if (v10 >= v5)
          {
            goto LABEL_41;
          }

          v21 = v14 + 24 * v10;
          v22 = *v21;
          v23 = *(v21 + 8);
          v24 = *(v21 + 16);
          v25 = *(v19 - 1);
          v26 = *v19;
          *v21 = v20;
          *(v21 + 8) = v25;
          *(v21 + 16) = v26;
          *(v19 - 4) = v22;
          *(v19 - 1) = v23;
          *v19 = v24;
          v5 = *(v4 + 2);
        }

        ++v10;
      }

      v13 = (v13 + 1);
      v19 += 24;
      if (v13 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = v10 + 1;
LABEL_17:
  if (v5 < v10)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v10 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_19:
  v14 = v10 - v5;
  v13 = v10;
  if (__OFADD__(v5, v10 - v5))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v4;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v4 + 3) >> 1)
  {
    if (v5 <= v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = v5;
    }

    v4 = sub_100039030(isUniquelyReferenced_nonNull_native, v16, 1, v4);
    v27 = v4;
  }

  v13 = &v27;
  sub_100039998(v10, v5, 0);
  v10 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    goto LABEL_45;
  }

  v5 = *(v4 + 2);
  v14 = *(v4 + 3);
  v13 = (v5 + 1);
  if (v5 < v14 >> 1)
  {
    goto LABEL_28;
  }

LABEL_46:
  v4 = sub_100039030((v14 > 1), v13, 1, v4);
LABEL_28:
  *(v4 + 2) = v13;
  v17 = &v4[24 * v5];
  *(v17 + 8) = v1;
  *(v17 + 5) = v11;
  *(v17 + 6) = v10;
  sub_10001257C(v4);
LABEL_29:

  return sub_100011E5C();
}

NSData sub_10001257C(uint64_t a1)
{
  v2 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v34 = &v34 - v4;
  v5 = sub_10004155C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004133C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v36 = sub_10004132C();
  sub_10004154C();
  sub_10004153C();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = (a1 + 48);
    v17 = &_swiftEmptyArrayStorage;
    do
    {
      v21 = *(v16 - 1);
      if (v14 - v21 < 60.0)
      {
        v22 = *(v16 - 4);
        v23 = *v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100022DAC(0, v17[2] + 1, 1);
          v17 = v37;
        }

        v19 = v17[2];
        v18 = v17[3];
        if (v19 >= v18 >> 1)
        {
          sub_100022DAC((v18 > 1), v19 + 1, 1);
          v17 = v37;
        }

        v17[2] = v19 + 1;
        v20 = &v17[3 * v19];
        *(v20 + 8) = v22;
        *(v20 + 5) = v21;
        *(v20 + 6) = v23;
      }

      v16 += 3;
      --v15;
    }

    while (v15);
  }

  else
  {
    v17 = &_swiftEmptyArrayStorage;
  }

  v37 = v17;
  sub_1000054B8(&qword_10005E228, &unk_100044778);
  sub_100014ED8(&qword_10005E248, sub_100014F50);
  v25 = sub_10004131C();
  v27 = v26;
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  v28 = qword_1000611A0;
  result.super.isa = sub_1000414EC().super.isa;
  if (*(v35 + 24))
  {
    isa = result.super.isa;
    v31 = *(v35 + 16);
    v32 = *(v35 + 24);

    v33 = sub_1000417CC();

    [v28 setObject:isa forKey:v33];

    return sub_100014E84(v25, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100012B10()
{
  v1 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  v2 = *(*(v1 - 8) + 64);
  result = __chkstk_darwin(v1 - 8);
  if (qword_10005CD70 != -1)
  {
    result = swift_once();
    if (*(v0 + 24))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    __break(1u);
    return result;
  }

  if (!*(v0 + 24))
  {
    goto LABEL_13;
  }

LABEL_3:
  v4 = *(v0 + 16);
  v5 = qword_1000611A0;

  v6 = sub_1000417CC();

  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    sub_100041C9C();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    if (swift_dynamicCast())
    {
      v8 = sub_10004130C();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      sub_1000412FC();
      sub_1000054B8(&qword_10005E228, &unk_100044778);
      sub_100014ED8(&qword_10005E230, sub_100014DC0);
      sub_1000412EC();

      sub_100014E84(v11, v12);
      return *&v15[0];
    }
  }

  else
  {
    sub_100015014(v15, &qword_10005E220, &qword_100044770);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100012F30()
{
  v1 = v0[3];

  sub_100015014(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_logger, &qword_10005E218, &qword_100045260);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100012FD4()
{
  sub_100013084();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100013084()
{
  if (!qword_10005DED8)
  {
    sub_10004166C();
    v0 = sub_100041C6C();
    if (!v1)
    {
      atomic_store(v0, &qword_10005DED8);
    }
  }
}

uint64_t sub_1000130DC()
{
  sub_100014310();
  sub_1000097B0(v0 + 32);
  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_logger;
  v2 = sub_10004166C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_memoryPressureSource);
  swift_unknownObjectRelease();

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1000131CC()
{
  v0 = sub_10004168C();
  v41 = *(v0 - 8);
  v42 = v0;
  v1 = *(v41 + 64);
  __chkstk_darwin(v0);
  v40 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100041B8C();
  v33 = *(v36 - 8);
  v34 = v33;
  v3 = *(v33 + 64);
  __chkstk_darwin(v36);
  v35 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100041AFC();
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v32);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100041BFC();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = sub_1000416DC();
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = *(v37 + 64);
  __chkstk_darwin(v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000BB04(0, &unk_10005E1C0, OS_dispatch_queue_serial_ptr);
  v31[0] = "Thermal state changed ";
  v31[1] = v15;
  sub_1000416CC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100014D78(&unk_10005F2D0, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_1000054B8(&unk_10005E1D0, ">~");
  sub_100014D24(&qword_10005F2E0, &unk_10005E1D0, ">~");
  sub_100041CAC();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v32);
  v16 = sub_100041C0C();
  sub_10000BB04(0, &qword_10005E1E0, OS_dispatch_source_ptr);
  sub_1000054B8(&qword_10005E1E8, "@~");
  v17 = v34;
  v18 = *(v33 + 72);
  v19 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000445B0;
  sub_100041B4C();
  aBlock[0] = v20;
  sub_100014D78(&qword_10005E1F0, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent);
  sub_1000054B8(&qword_10005E1F8, &unk_100044750);
  sub_100014D24(&qword_10005E200, &qword_10005E1F8, &unk_100044750);
  v21 = v35;
  v22 = v36;
  sub_100041CAC();
  v23 = v16;
  v24 = sub_100041B9C();

  (*(v17 + 8))(v21, v22);
  swift_getObjectType();
  v25 = swift_allocObject();
  v26 = v39;
  swift_weakInit();
  aBlock[4] = sub_100014D04;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028728;
  aBlock[3] = &unk_100055D98;
  v27 = _Block_copy(aBlock);

  sub_1000416AC();
  v28 = v40;
  sub_1000140B4();
  sub_100041BAC();
  _Block_release(v27);
  (*(v41 + 8))(v28, v42);
  (*(v37 + 8))(v14, v38);

  sub_100041BBC();
  v29 = *(v26 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_memoryPressureSource);
  *(v26 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_memoryPressureSource) = v24;
  swift_unknownObjectRelease();
  v30 = *(v26 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_memoryPressureQueue);
  *(v26 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_memoryPressureQueue) = v16;
}

uint64_t sub_1000137E0()
{
  v0 = sub_100041B8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v59 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v59 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v59 - v13;
  __chkstk_darwin(v12);
  v16 = &v59 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!*(result + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_memoryPressureSource))
    {
    }

    v62 = v5;
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_100041C1C();
    swift_unknownObjectRelease();
    (*(v1 + 32))(v16, v14, v0);
    sub_1000149EC();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100044650;
    *(v24 + 56) = &type metadata for Float;
    *(v24 + 64) = &protocol witness table for Float;
    *(v24 + 32) = v19;
    *(v24 + 96) = &type metadata for Float;
    *(v24 + 104) = &protocol witness table for Float;
    *(v24 + 72) = v21;
    *(v24 + 136) = &type metadata for Float;
    *(v24 + 144) = &protocol witness table for Float;
    *(v24 + 112) = v23;
    v63 = sub_10004181C();
    v26 = v25;
    v27 = *(v1 + 16);
    v64 = v16;
    v61 = v27;
    (v27)(v11);
    sub_100041B5C();
    sub_100014D78(&qword_10005E208, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent);
    v28 = sub_1000417BC();
    v29 = *(v1 + 8);
    v29(v8, v0);
    if (v28)
    {
      v29(v11, v0);

      v30 = sub_10004164C();
      v31 = sub_100041A9C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v65 = v33;
        *v32 = 136315138;
        v34 = sub_10000B1E4(v63, v26, &v65);

        *(v32 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v30, v31, "MemoryFootprint: normal %s", v32, 0xCu);
        sub_100005500(v33);

LABEL_10:

        return (v29)(v64, v0);
      }

      goto LABEL_15;
    }

    sub_100041B6C();
    v35 = sub_1000417BC();
    v29(v8, v0);
    if (v35)
    {
      v29(v11, v0);

      v30 = sub_10004164C();
      v36 = sub_100041A9C();

      if (os_log_type_enabled(v30, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v65 = v38;
        *v37 = 136315138;
        v39 = sub_10000B1E4(v63, v26, &v65);

        *(v37 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v30, v36, "MemoryFootprint: warning %s", v37, 0xCu);
        sub_100005500(v38);

        goto LABEL_10;
      }

LABEL_15:

      return (v29)(v64, v0);
    }

    sub_100041B7C();
    v40 = sub_1000417BC();
    v29(v8, v0);
    v29(v11, v0);
    if (v40)
    {

      v30 = sub_10004164C();
      v41 = sub_100041A9C();

      if (os_log_type_enabled(v30, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v65 = v43;
        *v42 = 136315138;
        v44 = sub_10000B1E4(v63, v26, &v65);

        *(v42 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v30, v41, "MemoryFootprint: critical %s", v42, 0xCu);
        sub_100005500(v43);

        return (v29)(v64, v0);
      }

      goto LABEL_15;
    }

    v60 = v29;
    v45 = v62;
    v46 = v64;
    (v61)(v62, v64, v0);

    v47 = sub_10004164C();
    v48 = sub_100041A9C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v65 = v61;
      *v49 = 136315394;
      sub_100014D78(&qword_10005E210, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent);
      v50 = sub_100041EDC();
      v52 = v51;
      v53 = v45;
      v54 = v60;
      v60(v53, v0);
      v55 = sub_10000B1E4(v50, v52, &v65);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2080;
      v56 = sub_10000B1E4(v63, v26, &v65);

      *(v49 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v47, v48, "MemoryFootprint: state %s %s", v49, 0x16u);
      swift_arrayDestroy();

      return v54(v64, v0);
    }

    else
    {

      v57 = v45;
      v58 = v60;
      v60(v57, v0);
      return v58(v46, v0);
    }
  }

  return result;
}

uint64_t sub_1000140B4()
{
  sub_10004168C();
  sub_100014D78(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000054B8(&unk_10005D640, "B|");
  sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
  return sub_100041CAC();
}

void sub_10001418C()
{
  if ((*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_isMonitoring) & 1) == 0)
  {
    v1 = v0;
    *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_isMonitoring) = 1;
    v2 = sub_10004164C();
    v3 = sub_100041A9C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Start monitoring lower power and thermal state.", v4, 2u);
    }

    v5 = objc_opt_self();
    v6 = [v5 defaultCenter];
    [v6 addObserver:v1 selector:"thermalStateDidChangeWithNotification:" name:NSProcessInfoThermalStateDidChangeNotification object:0];

    v7 = [v5 defaultCenter];
    [v7 addObserver:v1 selector:"lowPowerModeStateDidChangeWithNotification:" name:NSProcessInfoPowerStateDidChangeNotification object:0];
  }
}

void sub_100014310()
{
  if (*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_isMonitoring) == 1)
  {
    v1 = v0;
    *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_isMonitoring) = 0;
    v2 = sub_10004164C();
    v3 = sub_100041A9C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Stop monitoring lower power and thermal state.", v4, 2u);
    }

    v5 = [objc_opt_self() defaultCenter];
    [v5 removeObserver:v1];
  }
}

void sub_10001442C()
{
  if (*(v0 + 16))
  {
    v1 = 0;
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = v4 > 3;
    LOBYTE(v4) = v4 & 0xF;
    v6 = 8u >> v4;
    v7 = 4u >> v4;
    v8 = 3u >> v4;
    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v3 = v6;
    }

    if (v5)
    {
      v1 = 0;
    }

    else
    {
      v1 = v7;
    }

    if (v5)
    {
      v2 = 1;
    }

    else
    {
      v2 = v8;
    }
  }

  v9 = [objc_opt_self() processInfo];
  v10 = [v9 thermalState];

  *(v0 + 24) = v10;
  if (*(v0 + 16))
  {
LABEL_13:
    if (v3)
    {
      return;
    }

    goto LABEL_21;
  }

  if (v10 < 2)
  {
    goto LABEL_18;
  }

  if (v10 != 2)
  {
    if (v10 == 3)
    {
      goto LABEL_13;
    }

LABEL_18:
    if (v2)
    {
      return;
    }

    goto LABEL_21;
  }

  if (v1)
  {
    return;
  }

LABEL_21:
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  sub_100041D2C(24);

  v11 = *(v0 + 24);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = 0xE700000000000000;
      v13._countAndFlagsBits = 0x73756F69726573;
      goto LABEL_33;
    }

    if (v11 == 3)
    {
      v12 = 0xE800000000000000;
      v13._countAndFlagsBits = 0x6C61636974697263;
      goto LABEL_33;
    }

LABEL_30:
    v12 = 0xE600000000000000;
    v13._countAndFlagsBits = 0x6E776F6B6E75;
    goto LABEL_33;
  }

  if (!v11)
  {
    v12 = 0xE700000000000000;
    v13._countAndFlagsBits = 0x6C616E696D6F6ELL;
    goto LABEL_33;
  }

  if (v11 != 1)
  {
    goto LABEL_30;
  }

  v12 = 0xE400000000000000;
  v13._countAndFlagsBits = 1919508838;
LABEL_33:
  v13._object = v12;
  sub_1000418CC(v13);

  sub_100027780(0xD000000000000016, 0x8000000100046CC0);

  swift_unknownObjectRelease();
}

void sub_100014664()
{
  if (*(v0 + 16))
  {
    v1 = 0;
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = v4 > 3;
    LOBYTE(v4) = v4 & 0xF;
    v6 = 8u >> v4;
    v7 = 4u >> v4;
    v8 = 3u >> v4;
    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v3 = v6;
    }

    if (v5)
    {
      v1 = 0;
    }

    else
    {
      v1 = v7;
    }

    if (v5)
    {
      v2 = 1;
    }

    else
    {
      v2 = v8;
    }
  }

  v9 = [objc_opt_self() processInfo];
  v10 = [v9 isLowPowerModeEnabled];

  *(v0 + 16) = v10;
  if (v10)
  {
LABEL_13:
    if (v3)
    {
      return;
    }

    goto LABEL_21;
  }

  v11 = *(v0 + 24);
  if (v11 < 2)
  {
LABEL_18:
    if (v2)
    {
      return;
    }

    goto LABEL_21;
  }

  if (v11 != 2)
  {
    if (v11 == 3)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (v1)
  {
    return;
  }

LABEL_21:
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100041D2C(21);

    if (*(v0 + 16))
    {
      v12._countAndFlagsBits = 1702195828;
    }

    else
    {
      v12._countAndFlagsBits = 0x65736C6166;
    }

    if (*(v0 + 16))
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v12._object = v13;
    sub_1000418CC(v12);

    sub_100027780(0xD000000000000013, 0x8000000100046CA0);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100014838(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_10004135C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004134C();

  a4(v10);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10001492C()
{
  result = sub_10004166C();
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

void sub_1000149EC()
{
  v0 = sub_10004185C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  memset(v13, 0, 372);
  v12 = 93;
  v2 = task_info(mach_task_self_, 0x16u, v13, &v12);
  if (v2)
  {
    if (mach_error_string(v2))
    {
      sub_10004184C();
      v4 = sub_10004182C();
      v5 = v3;
      if (v3)
      {
        v6 = v3;
      }

      else
      {
        v6 = 0xED0000726F727245;
      }

      v7 = sub_10004164C();
      v8 = sub_100041ABC();

      if (os_log_type_enabled(v7, v8))
      {
        if (!v5)
        {
          v4 = 0x206E776F6E6B6E55;
        }

        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v14 = v10;
        *v9 = 136315138;
        v11 = sub_10000B1E4(v4, v6, &v14);

        *(v9 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v7, v8, "Error with task_info() in memoryUsageInMBytes: %s", v9, 0xCu);
        sub_100005500(v10);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100014CCC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014D0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014D24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B940(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014D78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100014DC0()
{
  result = qword_10005E238;
  if (!qword_10005E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E238);
  }

  return result;
}

uint64_t sub_100014E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014E84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100014ED8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B940(&qword_10005E228, &unk_100044778);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100014F50()
{
  result = qword_10005E250;
  if (!qword_10005E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E250);
  }

  return result;
}

uint64_t sub_100014FA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015014(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000054B8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 initializeBufferWithCopyOfBuffer for PIDObserver.PidData(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PIDObserver.PidData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PIDObserver.PidData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1000150E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580592 && a2 == 0xE300000000000000;
  if (v3 || (sub_100041EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_100041EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x76696C4177656976 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_100041EEC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_100015204(uint64_t *a1)
{
  v2 = sub_1000054B8(&qword_10005E258, &qword_1000447F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v7 = a1[4];
  sub_10000BA6C(a1, a1[3]);
  sub_1000153D0();
  sub_100041F4C();
  v14 = 0;
  sub_100041E7C();
  v13 = 1;
  sub_100041E4C();
  v10 = v9;
  v12 = 2;
  sub_100041E6C();
  (*(v3 + 8))(v6, v2);
  sub_100005500(a1);
  return v10;
}

unint64_t sub_1000153D0()
{
  result = qword_10005E260;
  if (!qword_10005E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E260);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PIDObserver.PidData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PIDObserver.PidData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100015580()
{
  result = qword_10005E270;
  if (!qword_10005E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E270);
  }

  return result;
}

unint64_t sub_1000155D8()
{
  result = qword_10005E278;
  if (!qword_10005E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E278);
  }

  return result;
}

unint64_t sub_100015630()
{
  result = qword_10005E280;
  if (!qword_10005E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E280);
  }

  return result;
}

uint64_t sub_100015684(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *(v6 + 45) = 0u;
  v7 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_logger;
  v8 = sub_10004166C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3 + v7, a2, v8);
  *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_isSnapshotMode) = *(a1 + 96);
  sub_10001A9FC(v20);
  v10 = (v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
  v11 = v20[1];
  *v10 = v20[0];
  v10[1] = v11;
  v10[2] = v21[0];
  *(v10 + 45) = *(v21 + 13);
  v12 = *(a1 + 40);
  v13 = (v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID);
  *v13 = *(a1 + 32);
  v13[1] = v12;
  v14 = qword_10005CD38;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 16);
  v24[0] = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
  v24[1] = v15;
  v25[0] = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 32);
  *(v25 + 13) = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 45);
  sub_10001D094(v24, v22);
  sub_100005464(a1);
  (*(v9 + 8))(a2, v8);
  v16 = (v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  v17 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 16);
  v26[0] = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  v26[1] = v17;
  v27[0] = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 32);
  *(v27 + 13) = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 45);
  v18 = v22[1];
  *v16 = v22[0];
  v16[1] = v18;
  v16[2] = v23[0];
  *(v16 + 45) = *(v23 + 13);
  sub_100007D6C(v26);
  return v3;
}

BOOL sub_100015870()
{
  v1 = v0;
  if (qword_10005CD30 != -1)
  {
    swift_once();
  }

  if (*(qword_1000610A0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_shouldRunAsSnapshot) == 1)
  {

    v2 = sub_10004164C();
    v3 = sub_100041A9C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *&v23 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_10000B1E4(*(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID), *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID + 8), &v23);
      _os_log_impl(&_mh_execute_header, v2, v3, "#%s PIDObserver: shouldRunAsSnapshot", v4, 0xCu);
      sub_100005500(v5);
    }

    return 0;
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_isSnapshotMode) != 1)
    {
      return 1;
    }

    v7 = (v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
    v8 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 16);
    v19[0] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
    v19[1] = v8;
    v20[0] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 32);
    *(v20 + 13) = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 45);
    if (!*(&v19[0] + 1))
    {
      return 1;
    }

    v23 = v19[0];
    v9 = v7[2];
    v10 = *v7;
    v24 = v7[1];
    v25[0] = v9;
    *(v25 + 13) = *(v7 + 45);
    v17[0] = v10;
    v17[1] = v24;
    v18[0] = v9;
    *(v18 + 13) = *(v25 + 13);
    sub_1000072B8(v17, v21);
    v11 = sub_10001AB00();
    v13 = v12;
    sub_100007D6C(v19);
    v14 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 16);
    v21[0] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
    v21[1] = v14;
    v22[0] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 32);
    *(v22 + 13) = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 45);
    if (v11 == sub_10001AB00() && v13 == v15)
    {

      return 0;
    }

    v16 = sub_100041EEC();

    return (v16 & 1) == 0;
  }
}

void sub_100015AFC(id a1, void (*a2)(uint64_t), void *a3)
{
  v5 = v3;
  v7 = (v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  v8 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 16);
  v99[0] = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  v99[1] = v8;
  v100[0] = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 32);
  *(v100 + 13) = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 45);
  if (*(&v99[0] + 1))
  {
    v96[2] = v99[0];
    v9 = v7[2];
    v10 = *v7;
    v97 = v7[1];
    v98[0] = v9;
    *(v98 + 13) = *(v7 + 45);
    aBlock = v10;
    v90 = v97;
    v91[0] = v9;
    *(v91 + 13) = *(v98 + 13);
    sub_1000072B8(&aBlock, v95);
    v11 = sub_10001AB00();
    v13 = v12;
    sub_100007D6C(v99);
    v4 = (v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
    v14 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 16);
    v95[0] = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
    v95[1] = v14;
    v96[0] = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 32);
    *(v96 + 13) = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 45);
    if (v11 == sub_10001AB00() && v13 == v15)
    {

LABEL_6:

      v17 = sub_10004164C();
      v18 = sub_100041ACC();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *&v87[0] = swift_slowAlloc();
        *v19 = 136315394;
        *(v19 + 4) = sub_10000B1E4(*(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID), *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID + 8), v87);
        *(v19 + 12) = 2080;
        v20 = v4[1];
        v92 = *v4;
        v93 = v20;
        v94[0] = v4[2];
        *(v94 + 13) = *(v4 + 45);
        v21 = sub_10001AC30();
        v23 = sub_10000B1E4(v21, v22, v87);

        *(v19 + 14) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "#%s snapshot: exist for %s", v19, 0x16u);
        swift_arrayDestroy();
      }

      if (a2)
      {
        a2(1);
      }

      return;
    }

    v16 = sub_100041EEC();

    if (v16)
    {
      goto LABEL_6;
    }
  }

  [a1 bounds];
  x = v102.origin.x;
  y = v102.origin.y;
  width = v102.size.width;
  height = v102.size.height;
  v28 = CGRectGetWidth(v102);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v28 < 9.22337204e18)
  {
    v80 = a1;
    v4 = (v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
    if (*(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 40) != v28)
    {
LABEL_19:

      v30 = sub_10004164C();
      v31 = sub_100041AAC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v32 = 136315906;
        *(v32 + 4) = sub_10000B1E4(*(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID), *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID + 8), &aBlock);
        *(v32 + 12) = 2080;
        v33 = v4[1];
        v92 = *v4;
        v93 = v33;
        v94[0] = v4[2];
        *(v94 + 13) = *(v4 + 45);
        v34 = sub_10001AC30();
        v36 = sub_10000B1E4(v34, v35, &aBlock);

        *(v32 + 14) = v36;
        *(v32 + 22) = 2048;
        *(v32 + 24) = width;
        *(v32 + 32) = 2048;
        *(v32 + 34) = height;
        _os_log_impl(&_mh_execute_header, v30, v31, "#%s snapshot: size are not matching %s vs %fx%f", v32, 0x2Au);
        swift_arrayDestroy();
      }

LABEL_22:
      if (qword_10005CD70 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_54;
    }

    v103.origin.x = x;
    v103.origin.y = y;
    v103.size.width = width;
    v103.size.height = height;
    v29 = CGRectGetHeight(v103);
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        if (*(v4 + 6) == v29)
        {
          goto LABEL_22;
        }

        goto LABEL_19;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  swift_once();
LABEL_23:
  v37 = [qword_1000611A0 useVFXSnapshot];
  v38 = [qword_1000611A0 useCASnapshot];
  if (v37)
  {

    v39 = sub_10004164C();
    v40 = sub_100041AAC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&aBlock = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_10000B1E4(*(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID), *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID + 8), &aBlock);
      _os_log_impl(&_mh_execute_header, v39, v40, "#%s snapshot: from vfxview", v41, 0xCu);
      sub_100005500(v42);
    }

    v43 = [v80 snapshot];
    goto LABEL_27;
  }

  if ((v38 & 1) == 0)
  {
    v48 = v4;
    v49 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{width, height}];
    v50 = swift_allocObject();
    *(v50 + 2) = v80;
    v50[3] = x;
    v50[4] = y;
    v50[5] = width;
    v50[6] = height;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1000169E8;
    *(v51 + 24) = v50;
    *&v91[0] = sub_100016A14;
    *(&v91[0] + 1) = v51;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v90 = sub_1000283DC;
    *(&v90 + 1) = &unk_100055F28;
    v52 = _Block_copy(&aBlock);
    v53 = v80;

    v43 = [v49 imageWithActions:v52];

    _Block_release(v52);
    LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

    if ((v49 & 1) == 0)
    {
      v4 = v48;
      v44 = sub_1000169E8;
      goto LABEL_34;
    }

LABEL_58:
    __break(1u);
    return;
  }

  v101.width = width;
  v101.height = height;
  UIGraphicsBeginImageContext(v101);
  v45 = UIGraphicsGetCurrentContext();
  if (v45)
  {
    v46 = v45;
    v47 = [v80 layer];
    [v47 renderInContext:v46];

    v43 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if (v43)
    {

LABEL_27:
      v44 = 0;
LABEL_34:

      v54 = v43;
      v55 = sub_10004164C();
      v56 = sub_100041ACC();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = v44;
        v58 = v4;
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&aBlock = v60;
        *v59 = 136315138;
        *(v59 + 4) = sub_10000B1E4(*(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID), *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID + 8), &aBlock);
        _os_log_impl(&_mh_execute_header, v55, v56, "#%s snapshot: generated", v59, 0xCu);
        sub_100005500(v60);

        v4 = v58;
        v44 = v57;
      }

      if (qword_10005CD38 != -1)
      {
        swift_once();
      }

      v61 = v4[1];
      aBlock = *v4;
      v90 = v61;
      v91[0] = v4[2];
      *(v91 + 13) = *(v4 + 45);
      v62 = sub_10001E8F0(v54, &aBlock, a2, a3);

      if (v62)
      {
        v63 = v4[1];
        v87[0] = *v4;
        v87[1] = v63;
        v88[0] = v4[2];
        *(v88 + 13) = *(v4 + 45);
        sub_10001D094(v87, v85);

        v64 = v7[1];
        v83[0] = *v7;
        v83[1] = v64;
        v84[0] = v7[2];
        *(v84 + 13) = *(v7 + 45);
        v65 = v85[1];
        *v7 = v85[0];
        v7[1] = v65;
        v7[2] = v86[0];
        *(v7 + 45) = *(v86 + 13);
        sub_100007D6C(v83);
        sub_100016A34(v44);
      }

      else
      {

        sub_100016A34(v44);
      }

      return;
    }

    v73 = sub_10004164C();
    v74 = sub_100041AAC();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *&v87[0] = swift_slowAlloc();
      *v75 = 136315394;
      *(v75 + 4) = sub_10000B1E4(*(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID), *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID + 8), v87);
      *(v75 + 12) = 2080;
      v76 = v4[1];
      aBlock = *v4;
      v90 = v76;
      v91[0] = v4[2];
      *(v91 + 13) = *(v4 + 45);
      v77 = sub_10001AC30();
      v79 = sub_10000B1E4(v77, v78, v87);

      *(v75 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v73, v74, "#%s snapshot: cannot create image for %s", v75, 0x16u);
      swift_arrayDestroy();
    }

    if (a2)
    {
      a2(0);
    }
  }

  else
  {

    v66 = sub_10004164C();
    v67 = sub_100041AAC();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *&v87[0] = swift_slowAlloc();
      *v68 = 136315394;
      *(v68 + 4) = sub_10000B1E4(*(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID), *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID + 8), v87);
      *(v68 + 12) = 2080;
      v69 = v4[1];
      aBlock = *v4;
      v90 = v69;
      v91[0] = v4[2];
      *(v91 + 13) = *(v4 + 45);
      v70 = sub_10001AC30();
      v72 = sub_10000B1E4(v70, v71, v87);

      *(v68 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v66, v67, "#%s snapshot: cannot create context for %s", v68, 0x16u);
      swift_arrayDestroy();
    }

    if (a2)
    {
      a2(0);
    }
  }
}