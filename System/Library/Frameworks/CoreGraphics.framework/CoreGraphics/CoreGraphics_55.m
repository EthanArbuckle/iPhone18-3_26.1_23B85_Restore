int8x16_t *composite_pixelshape<(CGCompositeOperation)14,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13, int a14, char a15)
{
  if (a14)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  v16.i64[0] = 0;
  v16.i32[2] = 0;
  v16.i32[3] = v15;
  v17 = vdupq_n_s32(v15);
  v19 = vmvnq_s8(v16);
  if (a13)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  v21.i64[0] = 0;
  v21.i32[2] = 0;
  v21.i32[3] = v20;
  v22 = vandq_s8(v17, xmmword_18439CB00);
  v23 = vmvnq_s8(v21);
  v24 = vandq_s8(vdupq_n_s32(v20), xmmword_18439CB00);
  v25 = 32 * a12;
  if ((a15 & 0x30) != 0)
  {
    __asm { FMOV            V5.4S, #1.0 }

    do
    {
      v31 = (a8 - a3) >> 4;
      if (v31 >= a10)
      {
        v31 = a10;
      }

      v32 = v31;
      if (v31 >= 2)
      {
        do
        {
          v33 = vorrq_s8(vandq_s8(*a3, v19), v22);
          v34 = vorrq_s8(vandq_s8(a3[1], v19), v22);
          v35 = vorrq_s8(vandq_s8(*result, v23), v24);
          v36 = vorrq_s8(vandq_s8(result[1], v23), v24);
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v33, 3)), vbslq_s8(vcgtzq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(v35, 3), _Q5), 0)), vaddq_f32(vmlsq_f32(v33, v35, v33), v35), v33), v35);
          result[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v34, 3)), vbslq_s8(vcgtzq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(v36, 3), _Q5), 0)), vaddq_f32(vmlsq_f32(v34, v36, v34), v36), v34), v36);
          v32 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v32 > 1);
      }

      for (i = v32 + a10 - v31; i; --i)
      {
        v38 = vorrq_s8(vandq_s8(*a3, v19), v22);
        v39 = vorrq_s8(vandq_s8(*result, v23), v24);
        *result = vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtzq_f32(v38)), 3)), vbslq_s8(vcgtzq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(v39, 3), _Q5), 0)), vaddq_f32(vmlsq_f32(v38, v39, v38), v39), v38), v39);
        v40 = &a3[a12];
        if (v40 >= a8)
        {
          v41 = -a7;
        }

        else
        {
          v41 = 0;
        }

        a3 = &v40[v41];
        result += a12;
      }

      result += a2;
      v42 = &a5[a4];
      if (v42 >= a9)
      {
        v43 = -(a6 * a4);
      }

      else
      {
        v43 = 0;
      }

      v44 = &v42[v43];
      v45 = a8 + 16 * v43 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v44;
        a8 = v45;
        a5 = v44;
      }

      _VF = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ _VF | (a11 == 0)));
  }

  else
  {
    __asm { FMOV            V5.4S, #1.0 }

    do
    {
      v47 = (a8 - a3) >> 4;
      if (v47 >= a10)
      {
        v47 = a10;
      }

      v48 = v47;
      if (v47 >= 2)
      {
        do
        {
          v49 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v19), v22);
          v50 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v19), v22);
          v51 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
          v52 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v23), v24);
          *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v50, 3)), vbslq_s8(vcgtzq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(v51, 3), _Q5), 0)), vaddq_f32(vmlsq_f32(v50, v51, v50), v51), v50), v51));
          result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v49, 3)), vbslq_s8(vcgtzq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(v52, 3), _Q5), 0)), vaddq_f32(vmlsq_f32(v49, v52, v49), v52), v49), v52));
          v48 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v48 > 1);
      }

      for (j = v48 + a10 - v47; j; --j)
      {
        v54 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v19), v22);
        v55 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
        *result = vrev32q_s8(vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtzq_f32(v54)), 3)), vbslq_s8(vcgtzq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(v55, 3), _Q5), 0)), vaddq_f32(vmlsq_f32(v54, v55, v54), v55), v54), v55));
        v56 = &a3[a12];
        if (v56 >= a8)
        {
          v57 = -a7;
        }

        else
        {
          v57 = 0;
        }

        a3 = &v56[v57];
        result += a12;
      }

      result += a2;
      v58 = &a5[a4];
      if (v58 >= a9)
      {
        v59 = -(a6 * a4);
      }

      else
      {
        v59 = 0;
      }

      v60 = &v58[v59];
      v61 = a8 + 16 * v59 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v60;
        a8 = v61;
        a5 = v60;
      }

      _VF = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ _VF | (a11 == 0)));
  }

  return result;
}

int8x16_t *composite_pixelshape<(CGCompositeOperation)15,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13, int a14, char a15)
{
  if (a14)
  {
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  v17.i64[0] = 0;
  v17.i32[2] = 0;
  v17.i32[3] = v16;
  v18 = vdupq_n_s32(v16);
  v19.i64[0] = 0;
  v19.i32[2] = 0;
  v20 = vmvnq_s8(v17);
  if (a13)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v19.i32[3] = v21;
  v22 = vandq_s8(v18, xmmword_18439CB00);
  v23 = vmvnq_s8(v19);
  v24 = vandq_s8(vdupq_n_s32(v21), xmmword_18439CB00);
  v25 = 32 * a12;
  if ((a15 & 0x30) != 0)
  {
    v26.i64[0] = 0x3F0000003F000000;
    v26.i64[1] = 0x3F0000003F000000;
    v27.i64[0] = 0x8000000080000000;
    v27.i64[1] = 0x8000000080000000;
    do
    {
      v28 = (a8 - a3) >> 4;
      if (v28 >= a10)
      {
        v28 = a10;
      }

      v29 = v28;
      if (v28 >= 2)
      {
        do
        {
          v30 = vorrq_s8(vandq_s8(*a3, v20), v22);
          v31 = vorrq_s8(vandq_s8(a3[1], v20), v22);
          v32 = vorrq_s8(vandq_s8(result[1], v23), v24);
          v33 = vorrq_s8(vandq_s8(*result, v23), v24);
          v34 = vdupq_laneq_s32(v31, 3);
          v35 = vdupq_laneq_s32(v30, 3);
          v36 = vdupq_laneq_s32(v33, 3);
          v37 = vdupq_laneq_s32(v32, 3);
          v38 = vcgtq_f32(vmulq_laneq_f32(v26, v33, 3), v33);
          v39 = vcgtq_f32(vmulq_laneq_f32(v26, v32, 3), v32);
          v40 = vandq_s8(v39, v27);
          v41 = vandq_s8(v38, v27);
          *result = vbslq_s8(vcgtzq_f32(v35), vbslq_s8(vcgtzq_f32(v36), vsubq_f32(vaddq_f32(vmlaq_f32(v33, veorq_s8(v41, vsubq_f32(v35, v30)), v33), vmlaq_f32(v30, veorq_s8(v41, vsubq_f32(v36, v33)), v30)), vbslq_s8(v38, v27, vmulq_laneq_f32(v35, v33, 3))), v30), v33);
          result[1] = vbslq_s8(vcgtzq_f32(v34), vbslq_s8(vcgtzq_f32(v37), vsubq_f32(vaddq_f32(vmlaq_f32(v32, veorq_s8(v40, vsubq_f32(v34, v31)), v32), vmlaq_f32(v31, veorq_s8(v40, vsubq_f32(v37, v32)), v31)), vbslq_s8(v39, v27, vmulq_laneq_f32(v34, v32, 3))), v31), v32);
          v29 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v29 > 1);
      }

      for (i = v29 + a10 - v28; i; --i)
      {
        v43 = vorrq_s8(vandq_s8(*a3, v20), v22);
        v44 = vorrq_s8(vandq_s8(*result, v23), v24);
        v45 = vdupq_laneq_s32(v43, 3);
        v46 = vdupq_laneq_s32(v44, 3);
        v47 = vcgtq_f32(vmulq_laneq_f32(v26, v44, 3), v44);
        v48 = vandq_s8(v47, v27);
        *result = vbslq_s8(vcgtzq_f32(v45), vbslq_s8(vcgtzq_f32(v46), vsubq_f32(vaddq_f32(vmlaq_f32(v44, veorq_s8(v48, vsubq_f32(v45, v43)), v44), vmlaq_f32(v43, veorq_s8(v48, vsubq_f32(v46, v44)), v43)), vbslq_s8(v47, v27, vmulq_laneq_f32(v45, v44, 3))), v43), v44);
        v49 = &a3[a12];
        if (v49 >= a8)
        {
          v50 = -a7;
        }

        else
        {
          v50 = 0;
        }

        a3 = &v49[v50];
        result += a12;
      }

      result += a2;
      v51 = &a5[a4];
      if (v51 >= a9)
      {
        v52 = -(a6 * a4);
      }

      else
      {
        v52 = 0;
      }

      v53 = &v51[v52];
      v54 = a8 + 16 * v52 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v53;
        a8 = v54;
        a5 = v53;
      }

      v55 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v55 | (a11 == 0)));
  }

  else
  {
    v56.i64[0] = 0x3F0000003F000000;
    v56.i64[1] = 0x3F0000003F000000;
    v57.i64[0] = 0x8000000080000000;
    v57.i64[1] = 0x8000000080000000;
    do
    {
      v58 = (a8 - a3) >> 4;
      if (v58 >= a10)
      {
        v58 = a10;
      }

      v59 = v58;
      if (v58 >= 2)
      {
        do
        {
          v60 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v20), v22);
          v61 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v22);
          v62 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
          v63 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v23), v24);
          v64 = vdupq_laneq_s32(v61, 3);
          v65 = vdupq_laneq_s32(v60, 3);
          v66 = vdupq_laneq_s32(v63, 3);
          v67 = vdupq_laneq_s32(v62, 3);
          v68 = vcgtq_f32(vmulq_laneq_f32(v56, v63, 3), v63);
          v69 = vcgtq_f32(vmulq_laneq_f32(v56, v62, 3), v62);
          v70 = vandq_s8(v69, v57);
          v71 = vandq_s8(v68, v57);
          *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(v64), vbslq_s8(vcgtzq_f32(v67), vsubq_f32(vaddq_f32(vmlaq_f32(v62, veorq_s8(v70, vsubq_f32(v64, v61)), v62), vmlaq_f32(v61, veorq_s8(v70, vsubq_f32(v67, v62)), v61)), vbslq_s8(v69, v57, vmulq_laneq_f32(v64, v62, 3))), v61), v62));
          result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(v65), vbslq_s8(vcgtzq_f32(v66), vsubq_f32(vaddq_f32(vmlaq_f32(v63, veorq_s8(v71, vsubq_f32(v65, v60)), v63), vmlaq_f32(v60, veorq_s8(v71, vsubq_f32(v66, v63)), v60)), vbslq_s8(v68, v57, vmulq_laneq_f32(v65, v63, 3))), v60), v63));
          v59 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v59 > 1);
      }

      for (j = v59 + a10 - v58; j; --j)
      {
        v73 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v22);
        v74 = vdupq_laneq_s32(v73, 3);
        v75 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
        v76 = vdupq_laneq_s32(v75, 3);
        v77 = vcgtq_f32(vmulq_laneq_f32(v56, v75, 3), v75);
        v78 = vandq_s8(v77, v57);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(v74), vbslq_s8(vcgtzq_f32(v76), vsubq_f32(vaddq_f32(vmlaq_f32(v75, veorq_s8(v78, vsubq_f32(v74, v73)), v75), vmlaq_f32(v73, veorq_s8(v78, vsubq_f32(v76, v75)), v73)), vbslq_s8(v77, v57, vmulq_laneq_f32(v74, v75, 3))), v73), v75));
        v79 = &a3[a12];
        if (v79 >= a8)
        {
          v80 = -a7;
        }

        else
        {
          v80 = 0;
        }

        a3 = &v79[v80];
        result += a12;
      }

      result += a2;
      v81 = &a5[a4];
      if (v81 >= a9)
      {
        v82 = -(a6 * a4);
      }

      else
      {
        v82 = 0;
      }

      v83 = &v81[v82];
      v84 = a8 + 16 * v82 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v83;
        a8 = v84;
        a5 = v83;
      }

      v55 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v55 | (a11 == 0)));
  }

  return result;
}

int8x16_t *composite_pixelshape<(CGCompositeOperation)17,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13, int a14, char a15)
{
  if (a14)
  {
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  v17.i64[0] = 0;
  v17.i32[2] = 0;
  v17.i32[3] = v16;
  v18 = vdupq_n_s32(v16);
  v19.i64[0] = 0;
  v19.i32[2] = 0;
  v20 = vmvnq_s8(v17);
  if (a13)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v19.i32[3] = v21;
  v22 = vandq_s8(v18, xmmword_18439CB00);
  v23 = vmvnq_s8(v19);
  v24 = vandq_s8(vdupq_n_s32(v21), xmmword_18439CB00);
  v25 = 32 * a12;
  if ((a15 & 0x30) != 0)
  {
    do
    {
      v26 = (a8 - a3) >> 4;
      if (v26 >= a10)
      {
        v26 = a10;
      }

      v27 = v26;
      if (v26 >= 2)
      {
        do
        {
          v28 = vorrq_s8(vandq_s8(result[1], v23), v24);
          v29 = vorrq_s8(vandq_s8(*result, v23), v24);
          v30 = vorrq_s8(vandq_s8(*a3, v20), v22);
          v31 = vorrq_s8(vandq_s8(a3[1], v20), v22);
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v30, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v29, 3)), vaddq_f32(vmlsq_laneq_f32(v30, v30, v29, 3), vaddq_f32(vmaxnmq_f32(vmulq_laneq_f32(v29, v30, 3), vmulq_laneq_f32(v30, v29, 3)), vmlsq_laneq_f32(v29, v29, v30, 3))), v30), v29);
          result[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v31, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v28, 3)), vaddq_f32(vmlsq_laneq_f32(v31, v31, v28, 3), vaddq_f32(vmaxnmq_f32(vmulq_laneq_f32(v28, v31, 3), vmulq_laneq_f32(v31, v28, 3)), vmlsq_laneq_f32(v28, v28, v31, 3))), v31), v28);
          v27 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v27 > 1);
      }

      for (i = v27 + a10 - v26; i; --i)
      {
        v33 = vorrq_s8(vandq_s8(*a3, v20), v22);
        v34 = vorrq_s8(vandq_s8(*result, v23), v24);
        *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v33, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v34, 3)), vaddq_f32(vmlsq_laneq_f32(v33, v33, v34, 3), vaddq_f32(vmaxnmq_f32(vmulq_laneq_f32(v34, v33, 3), vmulq_laneq_f32(v33, v34, 3)), vmlsq_laneq_f32(v34, v34, v33, 3))), v33), v34);
        v35 = &a3[a12];
        if (v35 >= a8)
        {
          v36 = -a7;
        }

        else
        {
          v36 = 0;
        }

        a3 = &v35[v36];
        result += a12;
      }

      result += a2;
      v37 = &a5[a4];
      if (v37 >= a9)
      {
        v38 = -(a6 * a4);
      }

      else
      {
        v38 = 0;
      }

      v39 = &v37[v38];
      v40 = a8 + 16 * v38 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v39;
        a8 = v40;
        a5 = v39;
      }

      v41 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v41 | (a11 == 0)));
  }

  else
  {
    do
    {
      v42 = (a8 - a3) >> 4;
      if (v42 >= a10)
      {
        v42 = a10;
      }

      v43 = v42;
      if (v42 >= 2)
      {
        do
        {
          v44 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
          v45 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v23), v24);
          v46 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v20), v22);
          v47 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v22);
          *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v47, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v44, 3)), vaddq_f32(vmlsq_laneq_f32(v47, v47, v44, 3), vaddq_f32(vmaxnmq_f32(vmulq_laneq_f32(v44, v47, 3), vmulq_laneq_f32(v47, v44, 3)), vmlsq_laneq_f32(v44, v44, v47, 3))), v47), v44));
          result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v46, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v45, 3)), vaddq_f32(vmlsq_laneq_f32(v46, v46, v45, 3), vaddq_f32(vmaxnmq_f32(vmulq_laneq_f32(v45, v46, 3), vmulq_laneq_f32(v46, v45, 3)), vmlsq_laneq_f32(v45, v45, v46, 3))), v46), v45));
          v43 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v43 > 1);
      }

      for (j = v43 + a10 - v42; j; --j)
      {
        v49 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v22);
        v50 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v49, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v50, 3)), vaddq_f32(vmlsq_laneq_f32(v49, v49, v50, 3), vaddq_f32(vmaxnmq_f32(vmulq_laneq_f32(v50, v49, 3), vmulq_laneq_f32(v49, v50, 3)), vmlsq_laneq_f32(v50, v50, v49, 3))), v49), v50));
        v51 = &a3[a12];
        if (v51 >= a8)
        {
          v52 = -a7;
        }

        else
        {
          v52 = 0;
        }

        a3 = &v51[v52];
        result += a12;
      }

      result += a2;
      v53 = &a5[a4];
      if (v53 >= a9)
      {
        v54 = -(a6 * a4);
      }

      else
      {
        v54 = 0;
      }

      v55 = &v53[v54];
      v56 = a8 + 16 * v54 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v55;
        a8 = v56;
        a5 = v55;
      }

      v41 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v41 | (a11 == 0)));
  }

  return result;
}

int8x16_t *composite_pixelshape<(CGCompositeOperation)16,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13, int a14, char a15)
{
  if (a14)
  {
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  v17.i64[0] = 0;
  v17.i32[2] = 0;
  v17.i32[3] = v16;
  v18 = vdupq_n_s32(v16);
  v19.i64[0] = 0;
  v19.i32[2] = 0;
  v20 = vmvnq_s8(v17);
  if (a13)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v19.i32[3] = v21;
  v22 = vandq_s8(v18, xmmword_18439CB00);
  v23 = vmvnq_s8(v19);
  v24 = vandq_s8(vdupq_n_s32(v21), xmmword_18439CB00);
  v25 = 32 * a12;
  if ((a15 & 0x30) != 0)
  {
    do
    {
      v26 = (a8 - a3) >> 4;
      if (v26 >= a10)
      {
        v26 = a10;
      }

      v27 = v26;
      if (v26 >= 2)
      {
        do
        {
          v28 = vorrq_s8(vandq_s8(result[1], v23), v24);
          v29 = vorrq_s8(vandq_s8(*result, v23), v24);
          v30 = vorrq_s8(vandq_s8(*a3, v20), v22);
          v31 = vorrq_s8(vandq_s8(a3[1], v20), v22);
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v30, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v29, 3)), vaddq_f32(vmlsq_laneq_f32(v30, v30, v29, 3), vaddq_f32(vminnmq_f32(vmulq_laneq_f32(v29, v30, 3), vmulq_laneq_f32(v30, v29, 3)), vmlsq_laneq_f32(v29, v29, v30, 3))), v30), v29);
          result[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v31, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v28, 3)), vaddq_f32(vmlsq_laneq_f32(v31, v31, v28, 3), vaddq_f32(vminnmq_f32(vmulq_laneq_f32(v28, v31, 3), vmulq_laneq_f32(v31, v28, 3)), vmlsq_laneq_f32(v28, v28, v31, 3))), v31), v28);
          v27 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v27 > 1);
      }

      for (i = v27 + a10 - v26; i; --i)
      {
        v33 = vorrq_s8(vandq_s8(*a3, v20), v22);
        v34 = vorrq_s8(vandq_s8(*result, v23), v24);
        *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v33, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v34, 3)), vaddq_f32(vmlsq_laneq_f32(v33, v33, v34, 3), vaddq_f32(vminnmq_f32(vmulq_laneq_f32(v34, v33, 3), vmulq_laneq_f32(v33, v34, 3)), vmlsq_laneq_f32(v34, v34, v33, 3))), v33), v34);
        v35 = &a3[a12];
        if (v35 >= a8)
        {
          v36 = -a7;
        }

        else
        {
          v36 = 0;
        }

        a3 = &v35[v36];
        result += a12;
      }

      result += a2;
      v37 = &a5[a4];
      if (v37 >= a9)
      {
        v38 = -(a6 * a4);
      }

      else
      {
        v38 = 0;
      }

      v39 = &v37[v38];
      v40 = a8 + 16 * v38 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v39;
        a8 = v40;
        a5 = v39;
      }

      v41 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v41 | (a11 == 0)));
  }

  else
  {
    do
    {
      v42 = (a8 - a3) >> 4;
      if (v42 >= a10)
      {
        v42 = a10;
      }

      v43 = v42;
      if (v42 >= 2)
      {
        do
        {
          v44 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
          v45 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v23), v24);
          v46 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v20), v22);
          v47 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v22);
          *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v47, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v44, 3)), vaddq_f32(vmlsq_laneq_f32(v47, v47, v44, 3), vaddq_f32(vminnmq_f32(vmulq_laneq_f32(v44, v47, 3), vmulq_laneq_f32(v47, v44, 3)), vmlsq_laneq_f32(v44, v44, v47, 3))), v47), v44));
          result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v46, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v45, 3)), vaddq_f32(vmlsq_laneq_f32(v46, v46, v45, 3), vaddq_f32(vminnmq_f32(vmulq_laneq_f32(v45, v46, 3), vmulq_laneq_f32(v46, v45, 3)), vmlsq_laneq_f32(v45, v45, v46, 3))), v46), v45));
          v43 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v43 > 1);
      }

      for (j = v43 + a10 - v42; j; --j)
      {
        v49 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v22);
        v50 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v49, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v50, 3)), vaddq_f32(vmlsq_laneq_f32(v49, v49, v50, 3), vaddq_f32(vminnmq_f32(vmulq_laneq_f32(v50, v49, 3), vmulq_laneq_f32(v49, v50, 3)), vmlsq_laneq_f32(v50, v50, v49, 3))), v49), v50));
        v51 = &a3[a12];
        if (v51 >= a8)
        {
          v52 = -a7;
        }

        else
        {
          v52 = 0;
        }

        a3 = &v51[v52];
        result += a12;
      }

      result += a2;
      v53 = &a5[a4];
      if (v53 >= a9)
      {
        v54 = -(a6 * a4);
      }

      else
      {
        v54 = 0;
      }

      v55 = &v53[v54];
      v56 = a8 + 16 * v54 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v55;
        a8 = v56;
        a5 = v55;
      }

      v41 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v41 | (a11 == 0)));
  }

  return result;
}

int8x16_t *composite_pixelshape<(CGCompositeOperation)18,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13, int a14, char a15)
{
  v16 = 2 * a12;
  if (a14)
  {
    v17 = 0;
  }

  else
  {
    v17 = -1;
  }

  v18.i64[0] = 0;
  v18.i32[2] = 0;
  v19.i64[0] = 0;
  v19.i32[2] = 0;
  v19.i32[3] = v17;
  v20 = vmvnq_s8(v19);
  v21 = vandq_s8(vdupq_n_s32(v17), xmmword_18439CB00);
  if (a13)
  {
    v22 = 0;
  }

  else
  {
    v22 = -1;
  }

  v18.i32[3] = v22;
  v23 = vmvnq_s8(v18);
  v24 = vandq_s8(vdupq_n_s32(v22), xmmword_18439CB00);
  if ((a15 & 0x30) != 0)
  {
    v25 = 16 * v16;
    __asm { FMOV            V4.4S, #1.0 }

    do
    {
      v31 = (a8 - a3) >> 4;
      if (v31 >= a10)
      {
        v31 = a10;
      }

      v32 = v31;
      if (v31 >= 2)
      {
        do
        {
          v33 = vorrq_s8(vandq_s8(result[1], v23), v24);
          v34 = vdupq_laneq_s32(v33, 3);
          v35 = vcgtzq_f32(v34);
          v36 = vorrq_s8(vandq_s8(*result, v23), v24);
          v37 = vdupq_laneq_s32(v36, 3);
          v38 = vcgtzq_f32(v37);
          v39 = vorrq_s8(vandq_s8(*a3, v20), v21);
          v40 = vdupq_laneq_s32(v39, 3);
          v41 = vcgtzq_f32(v40);
          v42 = vorrq_s8(vandq_s8(a3[1], v20), v21);
          v43 = vdupq_laneq_s32(v42, 3);
          v44 = vcgtzq_f32(v43);
          v45 = vaddq_f32(v34, vmlsq_laneq_f32(v43, v34, v42, 3));
          v46 = vaddq_f32(v37, vmlsq_laneq_f32(v40, v37, v39, 3));
          v47 = vminnmq_f32(vaddq_f32(vmlsq_laneq_f32(v39, v39, v36, 3), vaddq_f32(vmlsq_laneq_f32(v36, v36, v39, 3), vbslq_s8(vceqq_f32(v40, v39), _Q4, vdivq_f32(vmulq_laneq_f32(v36, vmulq_f32(v39, v39), 3), vsubq_f32(v40, v39))))), v46);
          v48 = vminnmq_f32(vaddq_f32(vmlsq_laneq_f32(v42, v42, v33, 3), vaddq_f32(vmlsq_laneq_f32(v33, v33, v42, 3), vbslq_s8(vceqq_f32(v43, v42), _Q4, vdivq_f32(vmulq_laneq_f32(v33, vmulq_f32(v42, v42), 3), vsubq_f32(v43, v42))))), v45);
          v48.i32[3] = v45.i32[3];
          v47.i32[3] = v46.i32[3];
          *result = vbslq_s8(v41, vbslq_s8(v38, v47, v39), v36);
          result[1] = vbslq_s8(v44, vbslq_s8(v35, v48, v42), v33);
          v32 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v32 > 1);
      }

      for (i = v32 + a10 - v31; i; --i)
      {
        v50 = vorrq_s8(vandq_s8(*a3, v20), v21);
        v51 = vorrq_s8(vandq_s8(*result, v23), v24);
        v52 = vdupq_laneq_s32(v50, 3);
        v53 = vdupq_laneq_s32(v51, 3);
        v54 = vcgtzq_f32(v53);
        v55 = vcgtzq_f32(v52);
        v56 = vaddq_f32(vmlsq_laneq_f32(v50, v50, v51, 3), vaddq_f32(vmlsq_laneq_f32(v51, v51, v50, 3), vbslq_s8(vceqq_f32(v52, v50), _Q4, vdivq_f32(vmulq_laneq_f32(v51, vmulq_f32(v50, v50), 3), vsubq_f32(v52, v50)))));
        v57 = vaddq_f32(v53, vmlsq_laneq_f32(v52, v53, v50, 3));
        v58 = vminnmq_f32(v56, v57);
        v58.i32[3] = v57.i32[3];
        *result = vbslq_s8(v55, vbslq_s8(v54, v58, v50), v51);
        v59 = &a3[a12];
        if (v59 >= a8)
        {
          v60 = -a7;
        }

        else
        {
          v60 = 0;
        }

        a3 = &v59[v60];
        result += a12;
      }

      result += a2;
      v61 = &a5[a4];
      if (v61 >= a9)
      {
        v62 = -(a6 * a4);
      }

      else
      {
        v62 = 0;
      }

      v63 = &v61[v62];
      v64 = a8 + 16 * v62 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v63;
        a8 = v64;
        a5 = v63;
      }

      _VF = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ _VF | (a11 == 0)));
  }

  else
  {
    v65 = 16 * v16;
    __asm { FMOV            V4.4S, #1.0 }

    do
    {
      v67 = (a8 - a3) >> 4;
      if (v67 >= a10)
      {
        v67 = a10;
      }

      v68 = v67;
      if (v67 >= 2)
      {
        do
        {
          v69 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
          v70 = vdupq_laneq_s32(v69, 3);
          v71 = vcgtzq_f32(v70);
          v72 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v23), v24);
          v73 = vdupq_laneq_s32(v72, 3);
          v74 = vcgtzq_f32(v73);
          v75 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v20), v21);
          v76 = vdupq_laneq_s32(v75, 3);
          v77 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v21);
          v78 = vdupq_laneq_s32(v77, 3);
          v79 = vcgtzq_f32(v76);
          v80 = vcgtzq_f32(v78);
          v81 = vaddq_f32(vmlsq_laneq_f32(v75, v75, v72, 3), vaddq_f32(vmlsq_laneq_f32(v72, v72, v75, 3), vbslq_s8(vceqq_f32(v76, v75), _Q4, vdivq_f32(vmulq_laneq_f32(v72, vmulq_f32(v75, v75), 3), vsubq_f32(v76, v75)))));
          v82 = vaddq_f32(v73, vmlsq_laneq_f32(v76, v73, v75, 3));
          v83 = vaddq_f32(v70, vmlsq_laneq_f32(v78, v70, v77, 3));
          v84 = vminnmq_f32(vaddq_f32(vmlsq_laneq_f32(v77, v77, v69, 3), vaddq_f32(vmlsq_laneq_f32(v69, v69, v77, 3), vbslq_s8(vceqq_f32(v78, v77), _Q4, vdivq_f32(vmulq_laneq_f32(v69, vmulq_f32(v77, v77), 3), vsubq_f32(v78, v77))))), v83);
          v85 = vminnmq_f32(v81, v82);
          v84.i32[3] = v83.i32[3];
          v85.i32[3] = v82.i32[3];
          *result = vrev32q_s8(vbslq_s8(v80, vbslq_s8(v71, v84, v77), v69));
          result[1] = vrev32q_s8(vbslq_s8(v79, vbslq_s8(v74, v85, v75), v72));
          v68 -= 2;
          a3 = (a3 + v65);
          result = (result + v65);
        }

        while (v68 > 1);
      }

      for (j = v68 + a10 - v67; j; --j)
      {
        v87 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v21);
        v88 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
        v89 = vdupq_laneq_s32(v87, 3);
        v90 = vdupq_laneq_s32(v88, 3);
        v91 = vcgtzq_f32(v90);
        v92 = vcgtzq_f32(v89);
        v93 = vaddq_f32(vmlsq_laneq_f32(v87, v87, v88, 3), vaddq_f32(vmlsq_laneq_f32(v88, v88, v87, 3), vbslq_s8(vceqq_f32(v89, v87), _Q4, vdivq_f32(vmulq_laneq_f32(v88, vmulq_f32(v87, v87), 3), vsubq_f32(v89, v87)))));
        v94 = vaddq_f32(v90, vmlsq_laneq_f32(v89, v90, v87, 3));
        v95 = vminnmq_f32(v93, v94);
        v95.i32[3] = v94.i32[3];
        *result = vrev32q_s8(vbslq_s8(v92, vbslq_s8(v91, v95, v87), v88));
        v96 = &a3[a12];
        if (v96 >= a8)
        {
          v97 = -a7;
        }

        else
        {
          v97 = 0;
        }

        a3 = &v96[v97];
        result += a12;
      }

      result += a2;
      v98 = &a5[a4];
      if (v98 >= a9)
      {
        v99 = -(a6 * a4);
      }

      else
      {
        v99 = 0;
      }

      v100 = &v98[v99];
      v101 = a8 + 16 * v99 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v100;
        a8 = v101;
        a5 = v100;
      }

      _VF = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ _VF | (a11 == 0)));
  }

  return result;
}

int8x16_t *composite_pixelshape<(CGCompositeOperation)19,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13, int a14, char a15)
{
  v16 = 2 * a12;
  if (a14)
  {
    v17 = 0;
  }

  else
  {
    v17 = -1;
  }

  v18.i64[0] = 0;
  v18.i32[2] = 0;
  v18.i32[3] = v17;
  v19 = vmvnq_s8(v18);
  v20 = vandq_s8(vdupq_n_s32(v17), xmmword_18439CB00);
  if (a13)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v22.i64[0] = 0;
  v22.i32[2] = 0;
  v22.i32[3] = v21;
  v23 = vmvnq_s8(v22);
  v24 = vandq_s8(vdupq_n_s32(v21), xmmword_18439CB00);
  if ((a15 & 0x30) != 0)
  {
    v25 = 16 * v16;
    do
    {
      v26 = (a8 - a3) >> 4;
      if (v26 >= a10)
      {
        v26 = a10;
      }

      v27 = v26;
      if (v26 >= 2)
      {
        do
        {
          v28 = vorrq_s8(vandq_s8(*result, v23), v24);
          v29 = vcgtzq_f32(vdupq_laneq_s32(v28, 3));
          v30 = vorrq_s8(vandq_s8(result[1], v23), v24);
          v31 = vcgtzq_f32(vdupq_laneq_s32(v30, 3));
          v32 = vorrq_s8(vandq_s8(*a3, v19), v20);
          v33 = vdupq_laneq_s32(v32, 3);
          v34 = vorrq_s8(vandq_s8(a3[1], v19), v20);
          v35 = vdupq_laneq_s32(v34, 3);
          v36 = vdivq_f32(vdupq_laneq_s32(vmulq_f32(v34, v34), 3), v34);
          v37 = vdivq_f32(vdupq_laneq_s32(vmulq_f32(v32, v32), 3), v32);
          *result = vbslq_s8(vcgtzq_f32(v33), vorrq_s8(vandq_s8(vmaxnmq_f32(vmlaq_f32(vmlsq_laneq_f32(vaddq_f32(vmlsq_laneq_f32(v32, v32, v28, 3), vaddq_f32(vmulq_laneq_f32(v33, v28, 3), vmlsq_laneq_f32(v28, v28, v32, 3))), v37, v28, 3), v28, v37), 0), vbicq_s8(v29, vceqzq_f32(v32))), vbicq_s8(v32, v29)), v28);
          result[1] = vbslq_s8(vcgtzq_f32(v35), vorrq_s8(vandq_s8(vmaxnmq_f32(vmlaq_f32(vmlsq_laneq_f32(vaddq_f32(vmlsq_laneq_f32(v34, v34, v30, 3), vaddq_f32(vmulq_laneq_f32(v35, v30, 3), vmlsq_laneq_f32(v30, v30, v34, 3))), v36, v30, 3), v30, v36), 0), vbicq_s8(v31, vceqzq_f32(v34))), vbicq_s8(v34, v31)), v30);
          v27 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v27 > 1);
      }

      for (i = v27 + a10 - v26; i; --i)
      {
        v39 = vorrq_s8(vandq_s8(*a3, v19), v20);
        v40 = vorrq_s8(vandq_s8(*result, v23), v24);
        v41 = vdupq_laneq_s32(v39, 3);
        v42 = vcgtzq_f32(vdupq_laneq_s32(v40, 3));
        v43 = vdivq_f32(vdupq_laneq_s32(vmulq_f32(v39, v39), 3), v39);
        *result = vbslq_s8(vcgtzq_f32(v41), vorrq_s8(vandq_s8(vmaxnmq_f32(vmlaq_f32(vmlsq_laneq_f32(vaddq_f32(vmlsq_laneq_f32(v39, v39, v40, 3), vaddq_f32(vmlsq_laneq_f32(v40, v40, v39, 3), vmulq_laneq_f32(v41, v40, 3))), v43, v40, 3), v40, v43), 0), vbicq_s8(v42, vceqzq_f32(v39))), vbicq_s8(v39, v42)), v40);
        v44 = &a3[a12];
        if (v44 >= a8)
        {
          v45 = -a7;
        }

        else
        {
          v45 = 0;
        }

        a3 = &v44[v45];
        result += a12;
      }

      result += a2;
      v46 = &a5[a4];
      if (v46 >= a9)
      {
        v47 = -(a6 * a4);
      }

      else
      {
        v47 = 0;
      }

      v48 = &v46[v47];
      v49 = a8 + 16 * v47 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v48;
        a8 = v49;
        a5 = v48;
      }

      v50 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v50 | (a11 == 0)));
  }

  else
  {
    v51 = 16 * v16;
    do
    {
      v52 = (a8 - a3) >> 4;
      if (v52 >= a10)
      {
        v52 = a10;
      }

      v53 = v52;
      if (v52 >= 2)
      {
        do
        {
          v54 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v23), v24);
          v55 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
          v56 = vcgtzq_f32(vdupq_laneq_s32(v54, 3));
          v57 = vcgtzq_f32(vdupq_laneq_s32(v55, 3));
          v58 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v19), v20);
          v59 = vdupq_laneq_s32(v58, 3);
          v60 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v19), v20);
          v61 = vdupq_laneq_s32(v60, 3);
          v62 = vdivq_f32(vdupq_laneq_s32(vmulq_f32(v58, v58), 3), v58);
          v63 = vdivq_f32(vdupq_laneq_s32(vmulq_f32(v60, v60), 3), v60);
          *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(v61), vorrq_s8(vandq_s8(vmaxnmq_f32(vmlaq_f32(vmlsq_laneq_f32(vaddq_f32(vmlsq_laneq_f32(v60, v60, v55, 3), vaddq_f32(vmulq_laneq_f32(v61, v55, 3), vmlsq_laneq_f32(v55, v55, v60, 3))), v63, v55, 3), v55, v63), 0), vbicq_s8(v57, vceqzq_f32(v60))), vbicq_s8(v60, v57)), v55));
          result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(v59), vorrq_s8(vandq_s8(vmaxnmq_f32(vmlaq_f32(vmlsq_laneq_f32(vaddq_f32(vmlsq_laneq_f32(v58, v58, v54, 3), vaddq_f32(vmulq_laneq_f32(v59, v54, 3), vmlsq_laneq_f32(v54, v54, v58, 3))), v62, v54, 3), v54, v62), 0), vbicq_s8(v56, vceqzq_f32(v58))), vbicq_s8(v58, v56)), v54));
          v53 -= 2;
          a3 = (a3 + v51);
          result = (result + v51);
        }

        while (v53 > 1);
      }

      for (j = v53 + a10 - v52; j; --j)
      {
        v65 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v19), v20);
        v66 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
        v67 = vdupq_laneq_s32(v65, 3);
        v68 = vcgtzq_f32(vdupq_laneq_s32(v66, 3));
        v69 = vdivq_f32(vdupq_laneq_s32(vmulq_f32(v65, v65), 3), v65);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(v67), vorrq_s8(vandq_s8(vmaxnmq_f32(vmlaq_f32(vmlsq_laneq_f32(vaddq_f32(vmlsq_laneq_f32(v65, v65, v66, 3), vaddq_f32(vmlsq_laneq_f32(v66, v66, v65, 3), vmulq_laneq_f32(v67, v66, 3))), v69, v66, 3), v66, v69), 0), vbicq_s8(v68, vceqzq_f32(v65))), vbicq_s8(v65, v68)), v66));
        v70 = &a3[a12];
        if (v70 >= a8)
        {
          v71 = -a7;
        }

        else
        {
          v71 = 0;
        }

        a3 = &v70[v71];
        result += a12;
      }

      result += a2;
      v72 = &a5[a4];
      if (v72 >= a9)
      {
        v73 = -(a6 * a4);
      }

      else
      {
        v73 = 0;
      }

      v74 = &v72[v73];
      v75 = a8 + 16 * v73 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v74;
        a8 = v75;
        a5 = v74;
      }

      v50 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v50 | (a11 == 0)));
  }

  return result;
}

int8x16_t *composite_pixelshape<(CGCompositeOperation)21,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13, int a14, char a15)
{
  if (a14)
  {
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  v17.i64[0] = 0;
  v17.i32[2] = 0;
  v17.i32[3] = v16;
  v18 = vdupq_n_s32(v16);
  v19.i64[0] = 0;
  v19.i32[2] = 0;
  v20 = vmvnq_s8(v17);
  if (a13)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v19.i32[3] = v21;
  v22 = vandq_s8(v18, xmmword_18439CB00);
  v23 = vmvnq_s8(v19);
  v24 = vandq_s8(vdupq_n_s32(v21), xmmword_18439CB00);
  v25 = 32 * a12;
  if ((a15 & 0x30) != 0)
  {
    v26.i64[0] = 0x3F0000003F000000;
    v26.i64[1] = 0x3F0000003F000000;
    v27.i64[0] = 0x8000000080000000;
    v27.i64[1] = 0x8000000080000000;
    do
    {
      v28 = (a8 - a3) >> 4;
      if (v28 >= a10)
      {
        v28 = a10;
      }

      v29 = v28;
      if (v28 >= 2)
      {
        do
        {
          v30 = vorrq_s8(vandq_s8(*a3, v20), v22);
          v31 = vorrq_s8(vandq_s8(a3[1], v20), v22);
          v32 = vorrq_s8(vandq_s8(result[1], v23), v24);
          v33 = vorrq_s8(vandq_s8(*result, v23), v24);
          v34 = vdupq_laneq_s32(v31, 3);
          v35 = vdupq_laneq_s32(v30, 3);
          v36 = vdupq_laneq_s32(v33, 3);
          v37 = vdupq_laneq_s32(v32, 3);
          v38 = vcgtzq_f32(v36);
          v39 = vcgtzq_f32(v35);
          v40 = vcgtzq_f32(v34);
          v41 = vmulq_laneq_f32(v34, v32, 3);
          v42 = vmulq_laneq_f32(v35, v33, 3);
          v43 = vcgtq_f32(v31, vmulq_laneq_f32(v26, v31, 3));
          v44 = vcgtq_f32(v30, vmulq_laneq_f32(v26, v30, 3));
          v45 = vbicq_s8(v27, v44);
          v46 = vbicq_s8(v27, v43);
          v47 = veorq_s8(v45, vsubq_f32(v36, v33));
          v48 = vmlaq_f32(v33, veorq_s8(v45, vsubq_f32(v35, v30)), v33);
          v49 = vaddq_f32(vmlaq_f32(v32, veorq_s8(v46, vsubq_f32(v34, v31)), v32), vmlaq_f32(v31, veorq_s8(v46, vsubq_f32(v37, v32)), v31));
          v50 = vaddq_f32(v48, vmlaq_f32(v30, v47, v30));
          *result = vbslq_s8(v39, vbslq_s8(v38, vbslq_s8(v44, vsubq_f32(v50, v42), v50), v30), v33);
          result[1] = vbslq_s8(v40, vbslq_s8(vcgtzq_f32(v37), vbslq_s8(v43, vsubq_f32(v49, v41), v49), v31), v32);
          v29 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v29 > 1);
      }

      for (i = v29 + a10 - v28; i; --i)
      {
        v52 = vorrq_s8(vandq_s8(*a3, v20), v22);
        v53 = vorrq_s8(vandq_s8(*result, v23), v24);
        v54 = vdupq_laneq_s32(v52, 3);
        v55 = vdupq_laneq_s32(v53, 3);
        v56 = vcgtzq_f32(v54);
        v57 = vmulq_laneq_f32(v54, v53, 3);
        v58 = vcgtq_f32(v52, vmulq_laneq_f32(v26, v52, 3));
        v59 = vbicq_s8(v27, v58);
        v60 = vaddq_f32(vmlaq_f32(v53, veorq_s8(v59, vsubq_f32(v54, v52)), v53), vmlaq_f32(v52, veorq_s8(v59, vsubq_f32(v55, v53)), v52));
        *result = vbslq_s8(v56, vbslq_s8(vcgtzq_f32(v55), vbslq_s8(v58, vsubq_f32(v60, v57), v60), v52), v53);
        v61 = &a3[a12];
        if (v61 >= a8)
        {
          v62 = -a7;
        }

        else
        {
          v62 = 0;
        }

        a3 = &v61[v62];
        result += a12;
      }

      result += a2;
      v63 = &a5[a4];
      if (v63 >= a9)
      {
        v64 = -(a6 * a4);
      }

      else
      {
        v64 = 0;
      }

      v65 = &v63[v64];
      v66 = a8 + 16 * v64 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v65;
        a8 = v66;
        a5 = v65;
      }

      v67 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v67 | (a11 == 0)));
  }

  else
  {
    v68.i64[0] = 0x3F0000003F000000;
    v68.i64[1] = 0x3F0000003F000000;
    v69.i64[0] = 0x8000000080000000;
    v69.i64[1] = 0x8000000080000000;
    do
    {
      v70 = (a8 - a3) >> 4;
      if (v70 >= a10)
      {
        v70 = a10;
      }

      v71 = v70;
      if (v70 >= 2)
      {
        do
        {
          v72 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v20), v22);
          v73 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v22);
          v74 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
          v75 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v23), v24);
          v76 = vdupq_laneq_s32(v73, 3);
          v77 = vdupq_laneq_s32(v72, 3);
          v78 = vdupq_laneq_s32(v75, 3);
          v79 = vdupq_laneq_s32(v74, 3);
          v80 = vcgtzq_f32(v78);
          v81 = vcgtzq_f32(v77);
          v82 = vcgtzq_f32(v76);
          v83 = vmulq_laneq_f32(v76, v74, 3);
          v84 = vmulq_laneq_f32(v77, v75, 3);
          v85 = vcgtq_f32(v73, vmulq_laneq_f32(v68, v73, 3));
          v86 = vcgtq_f32(v72, vmulq_laneq_f32(v68, v72, 3));
          v87 = vbicq_s8(v69, v86);
          v88 = vbicq_s8(v69, v85);
          v89 = veorq_s8(v87, vsubq_f32(v78, v75));
          v90 = vmlaq_f32(v75, veorq_s8(v87, vsubq_f32(v77, v72)), v75);
          v91 = vaddq_f32(vmlaq_f32(v74, veorq_s8(v88, vsubq_f32(v76, v73)), v74), vmlaq_f32(v73, veorq_s8(v88, vsubq_f32(v79, v74)), v73));
          v92 = vaddq_f32(v90, vmlaq_f32(v72, v89, v72));
          *result = vrev32q_s8(vbslq_s8(v82, vbslq_s8(vcgtzq_f32(v79), vbslq_s8(v85, vsubq_f32(v91, v83), v91), v73), v74));
          result[1] = vrev32q_s8(vbslq_s8(v81, vbslq_s8(v80, vbslq_s8(v86, vsubq_f32(v92, v84), v92), v72), v75));
          v71 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v71 > 1);
      }

      for (j = v71 + a10 - v70; j; --j)
      {
        v94 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v22);
        v95 = vdupq_laneq_s32(v94, 3);
        v96 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
        v97 = vdupq_laneq_s32(v96, 3);
        v98 = vcgtzq_f32(v95);
        v99 = vmulq_laneq_f32(v95, v96, 3);
        v100 = vcgtq_f32(v94, vmulq_laneq_f32(v68, v94, 3));
        v101 = vbicq_s8(v69, v100);
        v102 = vaddq_f32(vmlaq_f32(v96, veorq_s8(v101, vsubq_f32(v95, v94)), v96), vmlaq_f32(v94, veorq_s8(v101, vsubq_f32(v97, v96)), v94));
        *result = vrev32q_s8(vbslq_s8(v98, vbslq_s8(vcgtzq_f32(v97), vbslq_s8(v100, vsubq_f32(v102, v99), v102), v94), v96));
        v103 = &a3[a12];
        if (v103 >= a8)
        {
          v104 = -a7;
        }

        else
        {
          v104 = 0;
        }

        a3 = &v103[v104];
        result += a12;
      }

      result += a2;
      v105 = &a5[a4];
      if (v105 >= a9)
      {
        v106 = -(a6 * a4);
      }

      else
      {
        v106 = 0;
      }

      v107 = &v105[v106];
      v108 = a8 + 16 * v106 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v107;
        a8 = v108;
        a5 = v107;
      }

      v67 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v67 | (a11 == 0)));
  }

  return result;
}

int8x16_t *composite_pixelshape<(CGCompositeOperation)20,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13, int a14, char a15)
{
  v16 = 2 * a12;
  if (a14)
  {
    v17 = 0;
  }

  else
  {
    v17 = -1;
  }

  v18.i64[0] = 0;
  v18.i32[2] = 0;
  v19.i64[0] = 0;
  v19.i32[2] = 0;
  v19.i32[3] = v17;
  v20 = vmvnq_s8(v19);
  v21 = vandq_s8(vdupq_n_s32(v17), xmmword_18439CB00);
  if (a13)
  {
    v22 = 0;
  }

  else
  {
    v22 = -1;
  }

  v18.i32[3] = v22;
  v23 = vmvnq_s8(v18);
  v24 = vandq_s8(vdupq_n_s32(v22), xmmword_18439CB00);
  if ((a15 & 0x30) != 0)
  {
    v25 = 16 * v16;
    do
    {
      v26 = (a8 - a3) >> 4;
      if (v26 >= a10)
      {
        v26 = a10;
      }

      v27 = v26;
      if (v26 >= 2)
      {
        do
        {
          v28 = vorrq_s8(vandq_s8(result[1], v23), v24);
          v29 = vdupq_laneq_s32(v28, 3);
          v30 = vcgtzq_f32(v29);
          v31 = vorrq_s8(vandq_s8(*result, v23), v24);
          v32 = vdupq_laneq_s32(v31, 3);
          v33 = vcgtzq_f32(v32);
          v34 = vorrq_s8(vandq_s8(*a3, v20), v21);
          v35 = vorrq_s8(vandq_s8(a3[1], v20), v21);
          v36 = vceqzq_f32(v29);
          v37 = vceqzq_f32(v32);
          v38 = vdivq_f32(v28, v29);
          v39 = vdivq_f32(v31, v32);
          v40 = vaddq_f32(v35, v35);
          v41 = vaddq_f32(v34, v34);
          v42 = vmlaq_laneq_f32(vmlsq_f32(v40, v38, v40), v38, v35, 3);
          v43 = vmulq_f32(vmlaq_laneq_f32(vmlsq_f32(v41, v39, v41), v39, v34, 3), v31);
          v44 = vmulq_f32(v42, v28);
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v34, 3)), vbslq_s8(v33, vaddq_f32(vmlsq_laneq_f32(v34, v34, v31, 3), vaddq_f32(vmlsq_laneq_f32(v31, v31, v34, 3), vandq_s8(v43, vbicq_s8(vcgezq_f32(v43), v37)))), v34), v31);
          result[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v35, 3)), vbslq_s8(v30, vaddq_f32(vmlsq_laneq_f32(v35, v35, v28, 3), vaddq_f32(vmlsq_laneq_f32(v28, v28, v35, 3), vandq_s8(v44, vbicq_s8(vcgezq_f32(v44), v36)))), v35), v28);
          v27 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v27 > 1);
      }

      for (i = v27 + a10 - v26; i; --i)
      {
        v46 = vorrq_s8(vandq_s8(*a3, v20), v21);
        v47 = vorrq_s8(vandq_s8(*result, v23), v24);
        v48 = vdupq_laneq_s32(v47, 3);
        v49 = vcgtzq_f32(v48);
        v50 = vceqzq_f32(v48);
        v51 = vdivq_f32(v47, v48);
        v52 = vaddq_f32(v46, v46);
        v53 = vmulq_f32(vmlaq_laneq_f32(vmlsq_f32(v52, v51, v52), v51, v46, 3), v47);
        *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v46, 3)), vbslq_s8(v49, vaddq_f32(vmlsq_laneq_f32(v46, v46, v47, 3), vaddq_f32(vmlsq_laneq_f32(v47, v47, v46, 3), vandq_s8(v53, vbicq_s8(vcgezq_f32(v53), v50)))), v46), v47);
        v54 = &a3[a12];
        if (v54 >= a8)
        {
          v55 = -a7;
        }

        else
        {
          v55 = 0;
        }

        a3 = &v54[v55];
        result += a12;
      }

      result += a2;
      v56 = &a5[a4];
      if (v56 >= a9)
      {
        v57 = -(a6 * a4);
      }

      else
      {
        v57 = 0;
      }

      v58 = &v56[v57];
      v59 = a8 + 16 * v57 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v58;
        a8 = v59;
        a5 = v58;
      }

      v60 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v60 | (a11 == 0)));
  }

  else
  {
    v61 = 16 * v16;
    do
    {
      v62 = (a8 - a3) >> 4;
      if (v62 >= a10)
      {
        v62 = a10;
      }

      v63 = v62;
      if (v62 >= 2)
      {
        do
        {
          v64 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
          v65 = vdupq_laneq_s32(v64, 3);
          v66 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v23), v24);
          v67 = vdupq_laneq_s32(v66, 3);
          v68 = vcgtzq_f32(v65);
          v69 = vcgtzq_f32(v67);
          v70 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v20), v21);
          v71 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v21);
          v72 = vceqzq_f32(v65);
          v73 = vceqzq_f32(v67);
          v74 = vdivq_f32(v64, v65);
          v75 = vdivq_f32(v66, v67);
          v76 = vaddq_f32(v71, v71);
          v77 = vaddq_f32(v70, v70);
          v78 = vmlaq_laneq_f32(vmlsq_f32(v76, v74, v76), v74, v71, 3);
          v79 = vmulq_f32(vmlaq_laneq_f32(vmlsq_f32(v77, v75, v77), v75, v70, 3), v66);
          v80 = vmulq_f32(v78, v64);
          *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v71, 3)), vbslq_s8(v68, vaddq_f32(vmlsq_laneq_f32(v71, v71, v64, 3), vaddq_f32(vmlsq_laneq_f32(v64, v64, v71, 3), vandq_s8(v80, vbicq_s8(vcgezq_f32(v80), v72)))), v71), v64));
          result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v70, 3)), vbslq_s8(v69, vaddq_f32(vmlsq_laneq_f32(v70, v70, v66, 3), vaddq_f32(vmlsq_laneq_f32(v66, v66, v70, 3), vandq_s8(v79, vbicq_s8(vcgezq_f32(v79), v73)))), v70), v66));
          v63 -= 2;
          a3 = (a3 + v61);
          result = (result + v61);
        }

        while (v63 > 1);
      }

      for (j = v63 + a10 - v62; j; --j)
      {
        v82 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v21);
        v83 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
        v84 = vdupq_laneq_s32(v83, 3);
        v85 = vcgtzq_f32(v84);
        v86 = vceqzq_f32(v84);
        v87 = vdivq_f32(v83, v84);
        v88 = vaddq_f32(v82, v82);
        v89 = vmulq_f32(vmlaq_laneq_f32(vmlsq_f32(v88, v87, v88), v87, v82, 3), v83);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v82, 3)), vbslq_s8(v85, vaddq_f32(vmlsq_laneq_f32(v82, v82, v83, 3), vaddq_f32(vmlsq_laneq_f32(v83, v83, v82, 3), vandq_s8(v89, vbicq_s8(vcgezq_f32(v89), v86)))), v82), v83));
        v90 = &a3[a12];
        if (v90 >= a8)
        {
          v91 = -a7;
        }

        else
        {
          v91 = 0;
        }

        a3 = &v90[v91];
        result += a12;
      }

      result += a2;
      v92 = &a5[a4];
      if (v92 >= a9)
      {
        v93 = -(a6 * a4);
      }

      else
      {
        v93 = 0;
      }

      v94 = &v92[v93];
      v95 = a8 + 16 * v93 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v94;
        a8 = v95;
        a5 = v94;
      }

      v60 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v60 | (a11 == 0)));
  }

  return result;
}

int8x16_t *composite_pixelshape<(CGCompositeOperation)22,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13, int a14, char a15)
{
  if (a14)
  {
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  v17.i64[0] = 0;
  v17.i32[2] = 0;
  v17.i32[3] = v16;
  v18 = vdupq_n_s32(v16);
  v19.i64[0] = 0;
  v19.i32[2] = 0;
  v20 = vmvnq_s8(v17);
  if (a13)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v19.i32[3] = v21;
  v22 = vandq_s8(v18, xmmword_18439CB00);
  v23 = vmvnq_s8(v19);
  v24 = vandq_s8(vdupq_n_s32(v21), xmmword_18439CB00);
  v25 = 32 * a12;
  if ((a15 & 0x30) != 0)
  {
    do
    {
      v26 = (a8 - a3) >> 4;
      if (v26 >= a10)
      {
        v26 = a10;
      }

      v27 = v26;
      if (v26 >= 2)
      {
        do
        {
          v28 = vorrq_s8(vandq_s8(result[1], v23), v24);
          v29 = vdupq_laneq_s32(v28, 3);
          v30 = vorrq_s8(vandq_s8(*result, v23), v24);
          v31 = vdupq_laneq_s32(v30, 3);
          v32 = vorrq_s8(vandq_s8(*a3, v20), v22);
          v33 = vdupq_laneq_s32(v32, 3);
          v34 = vorrq_s8(vandq_s8(a3[1], v20), v22);
          v35 = vdupq_laneq_s32(v34, 3);
          v36 = vaddq_f32(vabdq_f32(vmulq_laneq_f32(v30, v32, 3), vmulq_laneq_f32(v32, v30, 3)), vaddq_f32(vmlsq_laneq_f32(v30, v30, v32, 3), vmlsq_laneq_f32(v32, v32, v30, 3)));
          v37 = vaddq_f32(vabdq_f32(vmulq_laneq_f32(v28, v34, 3), vmulq_laneq_f32(v34, v28, 3)), vaddq_f32(vmlsq_laneq_f32(v28, v28, v34, 3), vmlsq_laneq_f32(v34, v34, v28, 3)));
          v37.i32[3] = vaddq_f32(v34, vmlsq_laneq_f32(v29, v35, v28, 3)).i32[3];
          v36.i32[3] = vaddq_f32(v32, vmlsq_laneq_f32(v31, v33, v30, 3)).i32[3];
          *result = vbslq_s8(vcgtzq_f32(v33), vbslq_s8(vcgtzq_f32(v31), v36, v32), v30);
          result[1] = vbslq_s8(vcgtzq_f32(v35), vbslq_s8(vcgtzq_f32(v29), v37, v34), v28);
          v27 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v27 > 1);
      }

      for (i = v27 + a10 - v26; i; --i)
      {
        v39 = vorrq_s8(vandq_s8(*a3, v20), v22);
        v40 = vorrq_s8(vandq_s8(*result, v23), v24);
        v41 = vdupq_laneq_s32(v39, 3);
        v42 = vdupq_laneq_s32(v40, 3);
        v43 = vaddq_f32(vaddq_f32(vmlsq_laneq_f32(v40, v40, v39, 3), vmlsq_laneq_f32(v39, v39, v40, 3)), vabdq_f32(vmulq_laneq_f32(v40, v39, 3), vmulq_laneq_f32(v39, v40, 3)));
        v43.i32[3] = vaddq_f32(v39, vmlsq_laneq_f32(v42, v41, v40, 3)).i32[3];
        *result = vbslq_s8(vcgtzq_f32(v41), vbslq_s8(vcgtzq_f32(v42), v43, v39), v40);
        v44 = &a3[a12];
        if (v44 >= a8)
        {
          v45 = -a7;
        }

        else
        {
          v45 = 0;
        }

        a3 = &v44[v45];
        result += a12;
      }

      result += a2;
      v46 = &a5[a4];
      if (v46 >= a9)
      {
        v47 = -(a6 * a4);
      }

      else
      {
        v47 = 0;
      }

      v48 = &v46[v47];
      v49 = a8 + 16 * v47 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v48;
        a8 = v49;
        a5 = v48;
      }

      v50 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v50 | (a11 == 0)));
  }

  else
  {
    do
    {
      v51 = (a8 - a3) >> 4;
      if (v51 >= a10)
      {
        v51 = a10;
      }

      v52 = v51;
      if (v51 >= 2)
      {
        do
        {
          v53 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
          v54 = vdupq_laneq_s32(v53, 3);
          v55 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v23), v24);
          v56 = vdupq_laneq_s32(v55, 3);
          v57 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v20), v22);
          v58 = vdupq_laneq_s32(v57, 3);
          v59 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v22);
          v60 = vdupq_laneq_s32(v59, 3);
          v61 = vaddq_f32(vabdq_f32(vmulq_laneq_f32(v55, v57, 3), vmulq_laneq_f32(v57, v55, 3)), vaddq_f32(vmlsq_laneq_f32(v55, v55, v57, 3), vmlsq_laneq_f32(v57, v57, v55, 3)));
          v62 = vaddq_f32(vabdq_f32(vmulq_laneq_f32(v53, v59, 3), vmulq_laneq_f32(v59, v53, 3)), vaddq_f32(vmlsq_laneq_f32(v53, v53, v59, 3), vmlsq_laneq_f32(v59, v59, v53, 3)));
          v62.i32[3] = vaddq_f32(v59, vmlsq_laneq_f32(v54, v60, v53, 3)).i32[3];
          v61.i32[3] = vaddq_f32(v57, vmlsq_laneq_f32(v56, v58, v55, 3)).i32[3];
          *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(v60), vbslq_s8(vcgtzq_f32(v54), v62, v59), v53));
          result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(v58), vbslq_s8(vcgtzq_f32(v56), v61, v57), v55));
          v52 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v52 > 1);
      }

      for (j = v52 + a10 - v51; j; --j)
      {
        v64 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v22);
        v65 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
        v66 = vdupq_laneq_s32(v64, 3);
        v67 = vdupq_laneq_s32(v65, 3);
        v68 = vaddq_f32(vaddq_f32(vmlsq_laneq_f32(v65, v65, v64, 3), vmlsq_laneq_f32(v64, v64, v65, 3)), vabdq_f32(vmulq_laneq_f32(v65, v64, 3), vmulq_laneq_f32(v64, v65, 3)));
        v68.i32[3] = vaddq_f32(v64, vmlsq_laneq_f32(v67, v66, v65, 3)).i32[3];
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(v66), vbslq_s8(vcgtzq_f32(v67), v68, v64), v65));
        v69 = &a3[a12];
        if (v69 >= a8)
        {
          v70 = -a7;
        }

        else
        {
          v70 = 0;
        }

        a3 = &v69[v70];
        result += a12;
      }

      result += a2;
      v71 = &a5[a4];
      if (v71 >= a9)
      {
        v72 = -(a6 * a4);
      }

      else
      {
        v72 = 0;
      }

      v73 = &v71[v72];
      v74 = a8 + 16 * v72 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v73;
        a8 = v74;
        a5 = v73;
      }

      v50 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v50 | (a11 == 0)));
  }

  return result;
}

int8x16_t *composite_pixelshape<(CGCompositeOperation)23,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13, int a14, char a15)
{
  if (a14)
  {
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  v17.i64[0] = 0;
  v17.i32[2] = 0;
  v17.i32[3] = v16;
  v18 = vdupq_n_s32(v16);
  v19.i64[0] = 0;
  v19.i32[2] = 0;
  v20 = vmvnq_s8(v17);
  if (a13)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v19.i32[3] = v21;
  v22 = vandq_s8(v18, xmmword_18439CB00);
  v23 = vmvnq_s8(v19);
  v24 = vandq_s8(vdupq_n_s32(v21), xmmword_18439CB00);
  v25 = 32 * a12;
  if ((a15 & 0x30) != 0)
  {
    do
    {
      v26 = (a8 - a3) >> 4;
      if (v26 >= a10)
      {
        v26 = a10;
      }

      v27 = v26;
      if (v26 >= 2)
      {
        do
        {
          v28 = vorrq_s8(vandq_s8(*a3, v20), v22);
          v29 = vorrq_s8(vandq_s8(a3[1], v20), v22);
          v30 = vorrq_s8(vandq_s8(result[1], v23), v24);
          v31 = vorrq_s8(vandq_s8(*result, v23), v24);
          v32 = vmlsq_f32(v29, v30, v29);
          v33 = vmlsq_f32(v28, v31, v28);
          v33.i32[3] = v28.i32[3];
          v32.i32[3] = v29.i32[3];
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v28, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v31, 3)), vaddq_f32(vmlsq_f32(v31, v28, v31), v33), v28), v31);
          result[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v29, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v30, 3)), vaddq_f32(vmlsq_f32(v30, v29, v30), v32), v29), v30);
          v27 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v27 > 1);
      }

      for (i = v27 + a10 - v26; i; --i)
      {
        v35 = vorrq_s8(vandq_s8(*a3, v20), v22);
        v36 = vorrq_s8(vandq_s8(*result, v23), v24);
        v37 = vmlsq_f32(v35, v36, v35);
        v37.i32[3] = v35.i32[3];
        *result = vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtzq_f32(v35)), 3)), vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtzq_f32(v36)), 3)), vaddq_f32(vmlsq_f32(v36, v35, v36), v37), v35), v36);
        v38 = &a3[a12];
        if (v38 >= a8)
        {
          v39 = -a7;
        }

        else
        {
          v39 = 0;
        }

        a3 = &v38[v39];
        result += a12;
      }

      result += a2;
      v40 = &a5[a4];
      if (v40 >= a9)
      {
        v41 = -(a6 * a4);
      }

      else
      {
        v41 = 0;
      }

      v42 = &v40[v41];
      v43 = a8 + 16 * v41 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v42;
        a8 = v43;
        a5 = v42;
      }

      v44 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v44 | (a11 == 0)));
  }

  else
  {
    do
    {
      v45 = (a8 - a3) >> 4;
      if (v45 >= a10)
      {
        v45 = a10;
      }

      v46 = v45;
      if (v45 >= 2)
      {
        do
        {
          v47 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v20), v22);
          v48 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v22);
          v49 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
          v50 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v23), v24);
          v51 = vmlsq_f32(v48, v49, v48);
          v52 = vmlsq_f32(v47, v50, v47);
          v52.i32[3] = v47.i32[3];
          v51.i32[3] = v48.i32[3];
          *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v48, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v49, 3)), vaddq_f32(vmlsq_f32(v49, v48, v49), v51), v48), v49));
          result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v47, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v50, 3)), vaddq_f32(vmlsq_f32(v50, v47, v50), v52), v47), v50));
          v46 -= 2;
          a3 = (a3 + v25);
          result = (result + v25);
        }

        while (v46 > 1);
      }

      for (j = v46 + a10 - v45; j; --j)
      {
        v54 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v23), v24);
        v55 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v22);
        v56 = vmlsq_f32(v55, v54, v55);
        v56.i32[3] = v55.i32[3];
        *result = vrev32q_s8(vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtzq_f32(v55)), 3)), vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtzq_f32(v54)), 3)), vaddq_f32(vmlsq_f32(v54, v55, v54), v56), v55), v54));
        v57 = &a3[a12];
        if (v57 >= a8)
        {
          v58 = -a7;
        }

        else
        {
          v58 = 0;
        }

        a3 = &v57[v58];
        result += a12;
      }

      result += a2;
      v59 = &a5[a4];
      if (v59 >= a9)
      {
        v60 = -(a6 * a4);
      }

      else
      {
        v60 = 0;
      }

      v61 = &v59[v60];
      v62 = a8 + 16 * v60 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v61;
        a8 = v62;
        a5 = v61;
      }

      v44 = __OFSUB__(a11--, 1);
    }

    while (!((a11 < 0) ^ v44 | (a11 == 0)));
  }

  return result;
}

void RGBAf_mark_constmask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16)
{
  v17 = *(a1 + 136);
  if (v17)
  {
    v19 = *(a1 + 4);
    v18 = *(a1 + 8);
    v20 = *(a1 + 48);
    v21 = **(a1 + 88);
    v22 = *(a1 + 28) >> 4;
    v23 = (*(a1 + 40) + 16 * v22 * *(a1 + 16) + 16 * *(a1 + 12));
    v24 = *(a1 + 124);
    v25 = v17 + *(a1 + 108) * v24 + *(a1 + 104);
    v26 = v24 - v19;
    v27 = v22 - v19;
    v218 = v21;
    switch(a2)
    {
      case 0:
        do
        {
          v28 = v19;
          do
          {
            v29 = *v25;
            if (*v25)
            {
              if (v29 == 255)
              {
                *v23 = 0;
                v23[1] = 0;
              }

              else
              {
                *v23->f32 = vmulq_n_f32(*v23->f32, (v29 ^ 0xFFu) * 0.0039216);
              }
            }

            ++v25;
            v23 += 2;
            --v28;
          }

          while (v28);
          v25 += v26;
          v23 += 2 * v27;
          --v18;
        }

        while (v18);
        return;
      case 1:
        v120 = -1;
        v121 = v25 & 3;
        if ((v25 & 3) != 0)
        {
          v19 += v121;
          v120 = -1 << (8 * v121);
          v122 = v25 & 3;
          v25 &= 0xFFFFFFFFFFFFFFFCLL;
          v23 -= 2 * v122;
        }

        v123 = (v19 + v25) & 3;
        if (((v19 + v25) & 3) != 0)
        {
          v124 = 4 - v123;
          v121 += v124;
          v125 = 0xFFFFFFFF >> (8 * v124);
          if (v19 >= 4)
          {
            v123 = 0xFFFFFFFF >> (8 * v124);
          }

          else
          {
            v123 = 0;
          }

          if (v19 >= 4)
          {
            v125 = -1;
          }

          v120 &= v125;
        }

        v126 = v26 - v121;
        v127 = v27 - v121;
        do
        {
          v128 = *v25 & v120;
          v129 = v19 >> 2;
          v130 = v123;
          if (!v128)
          {
            goto LABEL_177;
          }

LABEL_175:
          if (v128 == -1)
          {
            *v23->f32 = v21;
            *v23[2].f32 = v21;
            *v23[4].f32 = v21;
LABEL_195:
            *v23[6].f32 = v21;
            goto LABEL_177;
          }

          while (1)
          {
            if (v128)
            {
              v132 = v21;
              if (v128 != 255)
              {
                v132 = vmlaq_n_f32(vmulq_n_f32(v21, v128 * 0.0039216), *v23->f32, 1.0 - (v128 * 0.0039216));
              }

              *v23->f32 = v132;
            }

            if (BYTE1(v128))
            {
              v133 = v21;
              if (BYTE1(v128) != 255)
              {
                v133 = vmlaq_n_f32(vmulq_n_f32(v21, BYTE1(v128) * 0.0039216), *v23[2].f32, 1.0 - (BYTE1(v128) * 0.0039216));
              }

              *v23[2].f32 = v133;
            }

            if (BYTE2(v128))
            {
              v134 = v21;
              if (BYTE2(v128) != 255)
              {
                v134 = vmlaq_n_f32(vmulq_n_f32(v21, BYTE2(v128) * 0.0039216), *v23[4].f32, 1.0 - (BYTE2(v128) * 0.0039216));
              }

              *v23[4].f32 = v134;
            }

            v135 = HIBYTE(v128);
            if (v135 == 255)
            {
              goto LABEL_195;
            }

            if (v135)
            {
              *v23[6].f32 = vmlaq_n_f32(vmulq_n_f32(v21, v135 * 0.0039216), *v23[6].f32, 1.0 - (v135 * 0.0039216));
            }

LABEL_177:
            while (1)
            {
              v131 = v129;
              v23 += 8;
              --v129;
              v25 += 4;
              if (v131 < 2)
              {
                break;
              }

              v128 = *v25;
              if (*v25)
              {
                goto LABEL_175;
              }
            }

            if (!v130)
            {
              break;
            }

            v130 = 0;
            v128 = *v25 & v123;
          }

          v25 += v126;
          v23 += 2 * v127;
          --v18;
        }

        while (v18);
        return;
      case 2:
        v87 = -1;
        v88 = v25 & 3;
        if ((v25 & 3) != 0)
        {
          v19 += v88;
          v87 = -1 << (8 * v88);
          v89 = v25 & 3;
          v25 &= 0xFFFFFFFFFFFFFFFCLL;
          v23 -= 2 * v89;
        }

        v90 = (v19 + v25) & 3;
        if (((v19 + v25) & 3) != 0)
        {
          v91 = 4 - v90;
          v88 += v91;
          v92 = 0xFFFFFFFF >> (8 * v91);
          if (v19 >= 4)
          {
            v90 = 0xFFFFFFFF >> (8 * v91);
          }

          else
          {
            v90 = 0;
          }

          if (v19 >= 4)
          {
            v92 = -1;
          }

          v87 &= v92;
        }

        v93 = v26 - v88;
        *&a9 = 1.0 - v21.f32[3];
        v94 = vdupq_lane_s32(*&a9, 0);
        v95 = v27 - v88;
        do
        {
          v96 = *v25 & v87;
          v97 = v19 >> 2;
          v98 = v90;
          if (!v96)
          {
            goto LABEL_119;
          }

LABEL_117:
          if (v96 == -1)
          {
            v99 = vmlaq_f32(v21, v94, *v23[2].f32);
            *v23->f32 = vmlaq_f32(v21, v94, *v23->f32);
            *v23[2].f32 = v99;
            v100 = vmlaq_f32(v21, v94, *v23[6].f32);
            *v23[4].f32 = vmlaq_f32(v21, v94, *v23[4].f32);
            *v23[6].f32 = v100;
            goto LABEL_119;
          }

          while (1)
          {
            if (v96)
            {
              v102 = vmulq_n_f32(v21, v96 * 0.0039216);
              *v23->f32 = vmlaq_n_f32(v102, *v23->f32, 1.0 - v102.f32[3]);
            }

            if ((v96 & 0xFF00) != 0)
            {
              v103 = vmulq_n_f32(v21, BYTE1(v96) * 0.0039216);
              *v23[2].f32 = vmlaq_n_f32(v103, *v23[2].f32, 1.0 - v103.f32[3]);
            }

            if ((v96 & 0xFF0000) != 0)
            {
              v104 = vmulq_n_f32(v21, BYTE2(v96) * 0.0039216);
              *v23[4].f32 = vmlaq_n_f32(v104, *v23[4].f32, 1.0 - v104.f32[3]);
            }

            v105 = HIBYTE(v96);
            if (v105)
            {
              v106 = vmulq_n_f32(v21, v105 * 0.0039216);
              *v23[6].f32 = vmlaq_n_f32(v106, *v23[6].f32, 1.0 - v106.f32[3]);
            }

LABEL_119:
            while (1)
            {
              v101 = v97;
              v23 += 8;
              --v97;
              v25 += 4;
              if (v101 < 2)
              {
                break;
              }

              v96 = *v25;
              if (*v25)
              {
                goto LABEL_117;
              }
            }

            if (!v98)
            {
              break;
            }

            v98 = 0;
            v96 = *v25 & v90;
          }

          v25 += v93;
          v23 += 2 * v95;
          --v18;
        }

        while (v18);
        return;
      case 3:
        do
        {
          v113 = v19;
          do
          {
            v114 = *v25;
            if (*v25)
            {
              if (v114 == 255)
              {
                v115 = vmulq_n_f32(v21, v23[1].f32[1]);
              }

              else
              {
                v115 = vmlaq_n_f32(vmulq_n_f32(v21, vmuls_lane_f32(v114 * 0.0039216, *v23->f32, 3)), *v23->f32, 1.0 - (v114 * 0.0039216));
              }

              *v23->f32 = v115;
            }

            ++v25;
            v23 += 2;
            --v113;
          }

          while (v113);
          v25 += v26;
          v23 += 2 * v27;
          --v18;
        }

        while (v18);
        return;
      case 4:
        do
        {
          v59 = v19;
          do
          {
            v60 = *v25;
            if (*v25)
            {
              if (v60 == 255)
              {
                v61 = vmulq_n_f32(v21, 1.0 - v23[1].f32[1]);
              }

              else
              {
                v61 = vmlaq_n_f32(vmulq_n_f32(v21, (v60 * 0.0039216) * (1.0 - COERCE_FLOAT(HIDWORD(*v23->f32)))), *v23->f32, 1.0 - (v60 * 0.0039216));
              }

              *v23->f32 = v61;
            }

            ++v25;
            v23 += 2;
            --v59;
          }

          while (v59);
          v25 += v26;
          v23 += 2 * v27;
          --v18;
        }

        while (v18);
        return;
      case 5:
        do
        {
          v148 = v19;
          do
          {
            if (*v25)
            {
              v149 = vmulq_n_f32(v21, *v25 * 0.0039216);
              *v23->f32 = vmlaq_laneq_f32(vmulq_n_f32(*v23->f32, 1.0 - v149.f32[3]), v149, *v23->f32, 3);
            }

            ++v25;
            v23 += 2;
            --v148;
          }

          while (v148);
          v25 += v26;
          v23 += 2 * v27;
          --v18;
        }

        while (v18);
        return;
      case 6:
        while (1)
        {
          v162 = v19;
          do
          {
            v163 = *v25;
            if (!*v25)
            {
              goto LABEL_261;
            }

            v164 = v23[1].f32[1];
            v165 = 1.0 - v164;
            if ((1.0 - v164) >= 1.0)
            {
              v168 = v163 * 0.0039216;
              v167 = v21.f32[3] * v168;
              *v23 = vmul_n_f32(*v21.f32, v168);
              v23[1].f32[0] = v21.f32[2] * v168;
            }

            else
            {
              if (v165 <= 0.0)
              {
                goto LABEL_261;
              }

              v166 = v163 * 0.0039216;
              *v23 = vmla_n_f32(*v23, vmul_n_f32(*v21.f32, v166), v165);
              v23[1].f32[0] = v23[1].f32[0] + ((v21.f32[2] * v166) * v165);
              v167 = v164 + ((v21.f32[3] * v166) * v165);
            }

            v23[1].f32[1] = v167;
LABEL_261:
            ++v25;
            v23 += 2;
            --v162;
          }

          while (v162);
          v25 += v26;
          v23 += 2 * v27;
          if (!--v18)
          {
            return;
          }
        }

      case 7:
        do
        {
          v116 = v19;
          do
          {
            v117 = *v25;
            if (*v25)
            {
              if (v117 == 255)
              {
                v118 = v21.f32[3] * v23->f32[0];
                v119 = v21.f32[3];
              }

              else
              {
                v119 = (v21.f32[3] * (v117 * 0.0039216)) + (1.0 - (v117 * 0.0039216));
                v118 = v119 * v23->f32[0];
              }

              v23->f32[0] = v118;
              *(v23 + 4) = vmul_n_f32(*(v23 + 4), v119);
              v23[1].f32[1] = v119 * v23[1].f32[1];
            }

            ++v25;
            v23 += 2;
            --v116;
          }

          while (v116);
          v25 += v26;
          v23 += 2 * v27;
          --v18;
        }

        while (v18);
        return;
      case 8:
        do
        {
          v177 = v19;
          do
          {
            v178 = *v25;
            if (*v25)
            {
              if (v178 == 255)
              {
                v179 = (1.0 - v21.f32[3]) * v23->f32[0];
                v180 = 1.0 - v21.f32[3];
              }

              else
              {
                v180 = (v21.f32[3] * (v178 * -0.0039216)) + 1.0;
                v179 = v180 * v23->f32[0];
              }

              v23->f32[0] = v179;
              *(v23 + 4) = vmul_n_f32(*(v23 + 4), v180);
              v23[1].f32[1] = v180 * v23[1].f32[1];
            }

            ++v25;
            v23 += 2;
            --v177;
          }

          while (v177);
          v25 += v26;
          v23 += 2 * v27;
          --v18;
        }

        while (v18);
        return;
      case 9:
        do
        {
          v67 = v19;
          do
          {
            if (*v25)
            {
              v68 = *v25 * 0.0039216;
              v69 = 1.0 - v68;
              v70 = vmulq_n_f32(v21, v68);
              *v23->f32 = vmlaq_n_f32(vmulq_n_f32(*v23->f32, v69 + v70.f32[3]), v70, 1.0 - COERCE_FLOAT(HIDWORD(*v23->f32)));
            }

            ++v25;
            v23 += 2;
            --v67;
          }

          while (v67);
          v25 += v26;
          v23 += 2 * v27;
          --v18;
        }

        while (v18);
        return;
      case 10:
        do
        {
          v175 = v19;
          do
          {
            if (*v25)
            {
              v176 = vmulq_n_f32(v21, *v25 * 0.0039216);
              *v23->f32 = vmlaq_n_f32(vmulq_n_f32(*v23->f32, 1.0 - v176.f32[3]), v176, 1.0 - COERCE_FLOAT(HIDWORD(*v23->f32)));
            }

            ++v25;
            v23 += 2;
            --v175;
          }

          while (v175);
          v25 += v26;
          v23 += 2 * v27;
          --v18;
        }

        while (v18);
        return;
      case 11:
        do
        {
          v54 = v19;
          do
          {
            if (*v25)
            {
              if (v20)
              {
                LODWORD(a13) = v23[1].i32[1];
              }

              else
              {
                LODWORD(a13) = 1.0;
              }

              *&a14 = *v25 * 0.0039216;
              v55 = vmul_n_f32(*v21.f32, *&a14);
              v56 = v21.f32[2] * *&a14;
              *&a14 = v21.f32[3] * *&a14;
              *v16.i32 = *&a14 + *&a13;
              v57 = vsub_f32(vdup_lane_s32(*&a14, 0), v55);
              if ((*&a14 + *&a13) > 1.0)
              {
                *v16.i32 = 1.0;
              }

              v58 = (*&a14 - v56) + (*&a13 - v23[1].f32[0]);
              a13 = COERCE_DOUBLE(vsub_f32(vdup_lane_s32(v16, 0), vadd_f32(v57, vsub_f32(vdup_lane_s32(*&a13, 0), *v23))));
              *v23 = a13;
              v23[1].f32[0] = *v16.i32 - v58;
              v23[1].i32[1] = v16.i32[0];
            }

            ++v25;
            v23 += 2;
            --v54;
          }

          while (v54);
          v25 += v26;
          v23 += 2 * v27;
          --v18;
        }

        while (v18);
        return;
      case 12:
        do
        {
          v62 = v19;
          do
          {
            if (*v25)
            {
              v63 = *v25 * 0.0039216;
              v64 = v21.f32[2] * v63;
              *v23 = vadd_f32(vmul_n_f32(*v21.f32, v63), *v23);
              v65 = (v21.f32[3] * v63) + v23[1].f32[1];
              v66 = v64 + v23[1].f32[0];
              if (v65 > 1.0)
              {
                v65 = 1.0;
              }

              v23[1].f32[0] = v66;
              v23[1].f32[1] = v65;
            }

            ++v25;
            v23 += 2;
            --v62;
          }

          while (v62);
          v25 += v26;
          v23 += 2 * v27;
          --v18;
        }

        while (v18);
        return;
      case 13:
        while (1)
        {
          v156 = v19;
          do
          {
            if (*v25)
            {
              v157 = vmulq_n_f32(v21, *v25 * 0.0039216);
              v158 = v157.i32[3];
              if (*&v157.i32[3] > 0.0)
              {
                LODWORD(a14) = v23[1].i32[1];
                if (v20)
                {
                  v159 = v23[1].f32[1];
                  if (*&a14 <= 0.0)
                  {
                    *v23 = *v157.i8;
                    v23[1].i32[0] = v157.i32[2];
LABEL_250:
                    v23[1].i32[1] = v158;
                    goto LABEL_251;
                  }
                }

                else
                {
                  v159 = 1.0;
                }

                LODWORD(a10) = v23->i32[1];
                LODWORD(a11) = v23[1].i32[0];
                v160 = vextq_s8(v157, v157, 4uLL);
                v160.i32[0] = v23[1].i32[1];
                v161 = PDAmultiplyPDA(v23->f32[0], a10, a11, *v160.i64, v159, a14, *v157.i64, a16, *v157.i32, COERCE_DOUBLE(__PAIR64__(v157.u32[3], v160.u32[1])), *&v157.i32[3]);
                v21 = v218;
                v23->f32[0] = v161;
                v23->i32[1] = LODWORD(a10);
                v23[1].i32[0] = LODWORD(a11);
                goto LABEL_250;
              }
            }

LABEL_251:
            ++v25;
            v23 += 2;
            --v156;
          }

          while (v156);
          v25 += v26;
          v23 += 2 * v27;
          if (!--v18)
          {
            return;
          }
        }

      case 14:
        __asm { FMOV            V1.2S, #1.0 }

        while (1)
        {
          v49 = v19;
          do
          {
            if (*v25)
            {
              v50 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (v50.f32[3] > 0.0)
              {
                if (v20)
                {
                  v51 = v23[1].f32[1];
                  if (v51 <= 0.0)
                  {
                    goto LABEL_44;
                  }
                }

                else
                {
                  v51 = 1.0;
                }

                *v52.f32 = *v23;
                *v53.f32 = vsub_f32(_D1, *v23);
                v53.f32[2] = 1.0 - v23[1].f32[0];
                v53.f32[3] = -v51;
                v52.i32[2] = v23[1].i32[0];
                v52.f32[3] = v50.f32[3] + v51;
                v50 = vmlaq_f32(v52, v50, v53);
LABEL_44:
                *v23->f32 = v50;
              }
            }

            ++v25;
            v23 += 2;
            --v49;
          }

          while (v49);
          v25 += v26;
          v23 += 2 * v27;
          if (!--v18)
          {
            return;
          }
        }

      case 15:
        while (1)
        {
          v107 = v19;
          do
          {
            if (*v25)
            {
              v108 = vmulq_n_f32(v21, *v25 * 0.0039216);
              v109 = v108.i32[3];
              if (*&v108.i32[3] > 0.0)
              {
                LODWORD(a14) = v23[1].i32[1];
                if (v20)
                {
                  v110 = v23[1].f32[1];
                  if (*&a14 <= 0.0)
                  {
                    *v23 = *v108.i8;
                    v23[1].i32[0] = v108.i32[2];
LABEL_142:
                    v23[1].i32[1] = v109;
                    goto LABEL_143;
                  }
                }

                else
                {
                  v110 = 1.0;
                }

                LODWORD(a10) = v23->i32[1];
                LODWORD(a11) = v23[1].i32[0];
                v111 = vextq_s8(v108, v108, 4uLL);
                v111.i32[0] = v23[1].i32[1];
                v112 = PDAoverlayPDA(v23->f32[0], a10, a11, *v111.i64, v110, a14, *v108.i64, a16, *v108.i32, COERCE_DOUBLE(__PAIR64__(v108.u32[3], v111.u32[1])), *&v108.i32[3]);
                v21 = v218;
                v23->f32[0] = v112;
                v23->i32[1] = LODWORD(a10);
                v23[1].i32[0] = LODWORD(a11);
                goto LABEL_142;
              }
            }

LABEL_143:
            ++v25;
            v23 += 2;
            --v107;
          }

          while (v107);
          v25 += v26;
          v23 += 2 * v27;
          if (!--v18)
          {
            return;
          }
        }

      case 16:
        while (1)
        {
          v38 = v19;
          do
          {
            if (*v25)
            {
              v39 = vmulq_n_f32(v21, *v25 * 0.0039216);
              v40 = v39.i32[3];
              if (*&v39.i32[3] > 0.0)
              {
                LODWORD(a14) = v23[1].i32[1];
                if (v20)
                {
                  v41 = v23[1].f32[1];
                  if (*&a14 <= 0.0)
                  {
                    *v23 = *v39.i8;
                    v23[1].i32[0] = v39.i32[2];
LABEL_31:
                    v23[1].i32[1] = v40;
                    goto LABEL_32;
                  }
                }

                else
                {
                  v41 = 1.0;
                }

                LODWORD(a10) = v23->i32[1];
                LODWORD(a11) = v23[1].i32[0];
                v42 = vextq_s8(v39, v39, 4uLL);
                v42.i32[0] = v23[1].i32[1];
                v43 = PDAdarkenPDA(v23->f32[0], a10, a11, *v42.i64, v41, a14, *v39.i64, a16, *v39.i32, COERCE_DOUBLE(__PAIR64__(v39.u32[3], v42.u32[1])), *&v39.i32[3]);
                v21 = v218;
                v23->f32[0] = v43;
                v23->i32[1] = LODWORD(a10);
                v23[1].i32[0] = LODWORD(a11);
                goto LABEL_31;
              }
            }

LABEL_32:
            ++v25;
            v23 += 2;
            --v38;
          }

          while (v38);
          v25 += v26;
          v23 += 2 * v27;
          if (!--v18)
          {
            return;
          }
        }

      case 17:
        while (1)
        {
          v136 = v19;
          do
          {
            if (*v25)
            {
              v137 = vmulq_n_f32(v21, *v25 * 0.0039216);
              v138 = v137.i32[3];
              if (*&v137.i32[3] > 0.0)
              {
                LODWORD(a14) = v23[1].i32[1];
                if (v20)
                {
                  v139 = v23[1].f32[1];
                  if (*&a14 <= 0.0)
                  {
                    *v23 = *v137.i8;
                    v23[1].i32[0] = v137.i32[2];
LABEL_208:
                    v23[1].i32[1] = v138;
                    goto LABEL_209;
                  }
                }

                else
                {
                  v139 = 1.0;
                }

                LODWORD(a10) = v23->i32[1];
                LODWORD(a11) = v23[1].i32[0];
                v140 = vextq_s8(v137, v137, 4uLL);
                v140.i32[0] = v23[1].i32[1];
                v141 = PDAlightenPDA(v23->f32[0], a10, a11, *v140.i64, v139, a14, *v137.i64, a16, *v137.i32, COERCE_DOUBLE(__PAIR64__(v137.u32[3], v140.u32[1])), *&v137.i32[3]);
                v21 = v218;
                v23->f32[0] = v141;
                v23->i32[1] = LODWORD(a10);
                v23[1].i32[0] = LODWORD(a11);
                goto LABEL_208;
              }
            }

LABEL_209:
            ++v25;
            v23 += 2;
            --v136;
          }

          while (v136);
          v25 += v26;
          v23 += 2 * v27;
          if (!--v18)
          {
            return;
          }
        }

      case 18:
        while (1)
        {
          v169 = v19;
          do
          {
            if (*v25)
            {
              v170 = vmulq_n_f32(v21, *v25 * 0.0039216);
              v171 = v170.i32[3];
              if (*&v170.i32[3] > 0.0)
              {
                LODWORD(a14) = v23[1].i32[1];
                if (v20)
                {
                  v172 = v23[1].f32[1];
                  if (*&a14 <= 0.0)
                  {
                    *v23 = *v170.i8;
                    v23[1].i32[0] = v170.i32[2];
LABEL_272:
                    v23[1].i32[1] = v171;
                    goto LABEL_273;
                  }
                }

                else
                {
                  v172 = 1.0;
                }

                LODWORD(a10) = v23->i32[1];
                LODWORD(a11) = v23[1].i32[0];
                v173 = vextq_s8(v170, v170, 4uLL);
                v173.i32[0] = v23[1].i32[1];
                v174 = PDAcolordodgePDA(v23->f32[0], a10, a11, *v173.i64, v172, a14, *v170.i64, a16, *v170.i32, COERCE_DOUBLE(__PAIR64__(v170.u32[3], v173.u32[1])), *&v170.i32[3]);
                v21 = v218;
                v23->f32[0] = v174;
                v23->i32[1] = LODWORD(a10);
                v23[1].i32[0] = LODWORD(a11);
                goto LABEL_272;
              }
            }

LABEL_273:
            ++v25;
            v23 += 2;
            --v169;
          }

          while (v169);
          v25 += v26;
          v23 += 2 * v27;
          if (!--v18)
          {
            return;
          }
        }

      case 19:
        while (1)
        {
          v196 = v19;
          do
          {
            if (*v25)
            {
              v197 = vmulq_n_f32(v21, *v25 * 0.0039216);
              v198 = v197.i32[3];
              if (*&v197.i32[3] > 0.0)
              {
                LODWORD(a14) = v23[1].i32[1];
                if (v20)
                {
                  v199 = v23[1].f32[1];
                  if (*&a14 <= 0.0)
                  {
                    *v23 = *v197.i8;
                    v23[1].i32[0] = v197.i32[2];
LABEL_313:
                    v23[1].i32[1] = v198;
                    goto LABEL_314;
                  }
                }

                else
                {
                  v199 = 1.0;
                }

                LODWORD(a10) = v23->i32[1];
                LODWORD(a11) = v23[1].i32[0];
                v200 = vextq_s8(v197, v197, 4uLL);
                v200.i32[0] = v23[1].i32[1];
                v201 = PDAcolorburnPDA(v23->f32[0], a10, a11, *v200.i64, v199, a14, *v197.i64, a16, *v197.i32, COERCE_DOUBLE(__PAIR64__(v197.u32[3], v200.u32[1])), *&v197.i32[3]);
                v21 = v218;
                v23->f32[0] = v201;
                v23->i32[1] = LODWORD(a10);
                v23[1].i32[0] = LODWORD(a11);
                goto LABEL_313;
              }
            }

LABEL_314:
            ++v25;
            v23 += 2;
            --v196;
          }

          while (v196);
          v25 += v26;
          v23 += 2 * v27;
          if (!--v18)
          {
            return;
          }
        }

      case 20:
        while (1)
        {
          v142 = v19;
          do
          {
            if (*v25)
            {
              v143 = vmulq_n_f32(v21, *v25 * 0.0039216);
              v144 = v143.i32[3];
              if (*&v143.i32[3] > 0.0)
              {
                LODWORD(a14) = v23[1].i32[1];
                if (v20)
                {
                  LODWORD(a13) = v23[1].i32[1];
                  if (*&a14 <= 0.0)
                  {
                    *v23 = *v143.i8;
                    v23[1].i32[0] = v143.i32[2];
LABEL_220:
                    v23[1].i32[1] = v144;
                    goto LABEL_221;
                  }
                }

                else
                {
                  LODWORD(a13) = 1.0;
                }

                LODWORD(a11) = v23[1].i32[0];
                DWORD2(v217) = v143.i32[3];
                v145 = vextq_s8(v143, v143, 4uLL).u64[0];
                *&v217 = v145;
                v145.i32[0] = v23[1].i32[1];
                v146 = PDAsoftlightPDA(v23->f32[0], v23->f32[1], a11, v145, a13, a14, *v143.i64, a16, a1, a2, a3, a4, a5, a6, a7, a8, *v143.i32, v217, *(&v217 + 4), *&v143.i32[3]);
                v21 = v218;
                v23->f32[0] = v146;
                v23->i32[1] = v147;
                v23[1].i32[0] = LODWORD(a11);
                goto LABEL_220;
              }
            }

LABEL_221:
            ++v25;
            v23 += 2;
            --v142;
          }

          while (v142);
          v25 += v26;
          v23 += 2 * v27;
          if (!--v18)
          {
            return;
          }
        }

      case 21:
        while (1)
        {
          v150 = v19;
          do
          {
            if (*v25)
            {
              v151 = vmulq_n_f32(v21, *v25 * 0.0039216);
              v152 = v151.i32[3];
              if (*&v151.i32[3] > 0.0)
              {
                LODWORD(a14) = v23[1].i32[1];
                if (v20)
                {
                  v153 = v23[1].f32[1];
                  if (*&a14 <= 0.0)
                  {
                    *v23 = *v151.i8;
                    v23[1].i32[0] = v151.i32[2];
LABEL_238:
                    v23[1].i32[1] = v152;
                    goto LABEL_239;
                  }
                }

                else
                {
                  v153 = 1.0;
                }

                LODWORD(a10) = v23->i32[1];
                LODWORD(a11) = v23[1].i32[0];
                v154 = vextq_s8(v151, v151, 4uLL);
                v154.i32[0] = v23[1].i32[1];
                v155 = PDAhardlightPDA(v23->f32[0], a10, a11, *v154.i64, v153, a14, *v151.i64, a16, *v151.i32, COERCE_DOUBLE(__PAIR64__(v151.u32[3], v154.u32[1])), *&v151.i32[3]);
                v21 = v218;
                v23->f32[0] = v155;
                v23->i32[1] = LODWORD(a10);
                v23[1].i32[0] = LODWORD(a11);
                goto LABEL_238;
              }
            }

LABEL_239:
            ++v25;
            v23 += 2;
            --v150;
          }

          while (v150);
          v25 += v26;
          v23 += 2 * v27;
          if (!--v18)
          {
            return;
          }
        }

      case 22:
        while (1)
        {
          v181 = v19;
          do
          {
            if (*v25)
            {
              v182 = vmulq_n_f32(v21, *v25 * 0.0039216);
              v183 = v182.f32[3];
              if (v182.f32[3] > 0.0)
              {
                if (v20)
                {
                  v184 = v23[1].f32[1];
                  if (v184 <= 0.0)
                  {
                    *v23 = *v182.f32;
                    v23[1].i32[0] = v182.i32[2];
LABEL_301:
                    v23[1].f32[1] = v183;
                    goto LABEL_302;
                  }
                }

                else
                {
                  v184 = 1.0;
                }

                v185 = v23[1].f32[0];
                v186 = vmul_laneq_f32(*v23, v182, 3);
                v187 = vmul_n_f32(*v182.f32, v184);
                v188 = vsub_f32(vadd_f32(*v23, *v182.f32), v186);
                v189 = vsub_f32(v186, v187);
                v190 = vadd_f32(vsub_f32(v188, v187), vbsl_s8(vcltz_f32(v189), vneg_f32(v189), v189));
                v191 = v185 + v182.f32[2];
                v192 = v185 * v182.f32[3];
                v193 = vmuls_lane_f32(v184, v182, 2);
                v194 = v191 - v192;
                v195 = v192 - v193;
                v182.f32[0] = v194 - v193;
                if (v195 < 0.0)
                {
                  v195 = -v195;
                }

                v183 = (v184 + v182.f32[3]) - (v184 * v182.f32[3]);
                *v23 = v190;
                v23[1].f32[0] = v182.f32[0] + v195;
                goto LABEL_301;
              }
            }

LABEL_302:
            ++v25;
            v23 += 2;
            --v181;
          }

          while (v181);
          v25 += v26;
          v23 += 2 * v27;
          if (!--v18)
          {
            return;
          }
        }

      case 23:
        while (1)
        {
          v202 = v19;
          do
          {
            if (*v25)
            {
              v203 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (v203.f32[3] > 0.0)
              {
                if (v20)
                {
                  v204 = v23[1].f32[1];
                  if (v204 <= 0.0)
                  {
                    goto LABEL_325;
                  }
                }

                else
                {
                  v204 = 1.0;
                }

                *v205.f32 = *v23;
                *v206.f32 = vmul_f32(*v203.f32, vneg_f32(*v23));
                *&v207 = -v204;
                v205.i32[2] = v23[1].i32[0];
                v205.f32[3] = v204;
                v208.i64[0] = 0x4000000040000000;
                v208.i32[2] = 0x40000000;
                v208.i32[3] = v203.i32[3];
                v206.i64[1] = __PAIR64__(v207, COERCE_UNSIGNED_INT(vmuls_lane_f32(-v205.f32[2], v203, 2)));
                v203 = vmlaq_f32(vaddq_f32(v203, v205), v208, v206);
LABEL_325:
                *v23->f32 = v203;
              }
            }

            ++v25;
            v23 += 2;
            --v202;
          }

          while (v202);
          v25 += v26;
          v23 += 2 * v27;
          if (!--v18)
          {
            return;
          }
        }

      case 24:
        while (1)
        {
          v79 = v19;
          do
          {
            if (*v25)
            {
              v80 = vmulq_n_f32(v21, *v25 * 0.0039216);
              v81 = v80.i32[3];
              if (*&v80.i32[3] > 0.0)
              {
                LODWORD(a14) = v23[1].i32[1];
                if (v20)
                {
                  v82 = v23[1].f32[1];
                  if (*&a14 <= 0.0)
                  {
                    *v23 = *v80.i8;
                    v23[1].i32[0] = v80.i32[2];
LABEL_102:
                    v23[1].i32[1] = v81;
                    goto LABEL_103;
                  }
                }

                else
                {
                  v82 = 1.0;
                }

                *&v83 = vextq_s8(v80, v80, 4uLL).u64[0];
                v216 = v83;
                LODWORD(v83) = v23[1].i32[1];
                v84 = PDAhuePDA(v23->f32[0], v23->f32[1], v23[1].f32[0], v83, v82, a14, *v80.i64, a16, *v80.i32, *&v216, *(&v216 + 1), *&v80.i32[3], *&v80.i32[3]);
                v21 = v218;
                v23->f32[0] = v84;
                v23->i32[1] = v85;
                v23[1].i32[0] = v86;
                goto LABEL_102;
              }
            }

LABEL_103:
            ++v25;
            v23 += 2;
            --v79;
          }

          while (v79);
          v25 += v26;
          v23 += 2 * v27;
          if (!--v18)
          {
            return;
          }
        }

      case 25:
        while (1)
        {
          v71 = v19;
          do
          {
            if (*v25)
            {
              v72 = vmulq_n_f32(v21, *v25 * 0.0039216);
              v73 = v72.i32[3];
              if (*&v72.i32[3] > 0.0)
              {
                LODWORD(a14) = v23[1].i32[1];
                if (v20)
                {
                  v74 = v23[1].f32[1];
                  if (*&a14 <= 0.0)
                  {
                    *v23 = *v72.i8;
                    v23[1].i32[0] = v72.i32[2];
LABEL_90:
                    v23[1].i32[1] = v73;
                    goto LABEL_91;
                  }
                }

                else
                {
                  v74 = 1.0;
                }

                *&v75 = vextq_s8(v72, v72, 4uLL).u64[0];
                v215 = v75;
                LODWORD(v75) = v23[1].i32[1];
                v76 = PDAsaturationPDA(v23->f32[0], v23->f32[1], v23[1].f32[0], v75, v74, a14, *v72.i64, a16, *v72.i32, *&v215, *(&v215 + 1), *&v72.i32[3], *&v72.i32[3]);
                v21 = v218;
                v23->f32[0] = v76;
                v23->i32[1] = v77;
                v23[1].i32[0] = v78;
                goto LABEL_90;
              }
            }

LABEL_91:
            ++v25;
            v23 += 2;
            --v71;
          }

          while (v71);
          v25 += v26;
          v23 += 2 * v27;
          if (!--v18)
          {
            return;
          }
        }

      case 26:
        while (1)
        {
          v209 = v19;
          do
          {
            if (*v25)
            {
              v210 = vmulq_n_f32(v21, *v25 * 0.0039216);
              LODWORD(a12) = v210.i32[3];
              if (v210.f32[3] > 0.0)
              {
                if (v20)
                {
                  LODWORD(a14) = v23[1].i32[1];
                  if (*&a14 <= 0.0)
                  {
                    *v23 = *v210.f32;
                    v23[1].i32[0] = v210.i32[2];
LABEL_337:
                    v23[1].i32[1] = LODWORD(a12);
                    goto LABEL_338;
                  }
                }

                else
                {
                  LODWORD(a14) = 1.0;
                }

                LODWORD(a15) = v23[1].i32[0];
                v211 = PDAluminosityPDA(v210.f32[0], v210.f32[1], v210.f32[2], a12, v210.f32[3], a14, a15, a16, COERCE_FLOAT(*v23), COERCE_FLOAT(HIDWORD(*v23)), *&a15, v23[1].f32[1], *&a14);
                v21 = v218;
                v23->f32[0] = v211;
                v23->i32[1] = v212;
                v23[1].i32[0] = v213;
                goto LABEL_337;
              }
            }

LABEL_338:
            ++v25;
            v23 += 2;
            --v209;
          }

          while (v209);
          v25 += v26;
          v23 += 2 * v27;
          if (!--v18)
          {
            return;
          }
        }

      case 27:
        break;
      default:
        return;
    }

LABEL_11:
    v30 = v19;
    while (1)
    {
      if (!*v25)
      {
        goto LABEL_20;
      }

      v31 = vmulq_n_f32(v21, *v25 * 0.0039216);
      v32 = v31.i32[3];
      if (*&v31.i32[3] <= 0.0)
      {
        goto LABEL_20;
      }

      LODWORD(a14) = v23[1].i32[1];
      if (!v20)
      {
        break;
      }

      v33 = v23[1].f32[1];
      if (*&a14 > 0.0)
      {
        goto LABEL_18;
      }

      *v23 = *v31.i8;
      v23[1].i32[0] = v31.i32[2];
LABEL_19:
      v23[1].i32[1] = v32;
LABEL_20:
      ++v25;
      v23 += 2;
      if (!--v30)
      {
        v25 += v26;
        v23 += 2 * v27;
        if (!--v18)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    v33 = 1.0;
LABEL_18:
    *&v34 = vextq_s8(v31, v31, 4uLL).u64[0];
    v214 = v34;
    LODWORD(v34) = v23[1].i32[1];
    v35 = PDAluminosityPDA(v23->f32[0], v23->f32[1], v23[1].f32[0], v34, v33, a14, *v31.i64, a16, *v31.i32, *&v214, *(&v214 + 1), *&v31.i32[3], *&v31.i32[3]);
    v21 = v218;
    v23->f32[0] = v35;
    v23->i32[1] = v36;
    v23[1].i32[0] = v37;
    goto LABEL_19;
  }
}

void RGBAf_mark_pixelmask(_DWORD *a1, int *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = a1;
  v513 = a2[2];
  v18 = a2[7];
  v20 = *(a2 + 5);
  v19 = *(a2 + 6);
  v21 = *(a2 + 11);
  v22 = *(a2 + 12);
  v23 = *(a2 + 17);
  v24 = *a2;
  v25 = a2[1];
  v514 = v19;
  if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::onceToken != -1)
  {
    v480 = a3;
    dispatch_once(&CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::onceToken, &__block_literal_global_9_13911);
    a3 = v480;
    v17 = a1;
    v19 = v514;
  }

  v26 = v19 != 0;
  if (!v23)
  {
    return;
  }

  v27 = v18 >> 4;
  v28 = (v20 + 16 * (v18 >> 4) * a2[4] + 16 * a2[3]);
  v29 = a2[31];
  v30 = (v23 + a2[27] * v29 + a2[26]);
  v31 = a2[14];
  v32 = a2[15];
  v33 = a2[19];
  if ((v24 & 0xFF00) == 0x100)
  {
    v34 = v33 >> 4;
    v35 = (v21 + 16 * (v33 >> 4) * v32 + 16 * v31);
    if (v33 >> 4 != v27)
    {
      v39 = 1;
LABEL_14:
      v42 = 0;
      v43 = 0;
      v41 = 0;
      v21 = -1;
      v40 = v34;
      goto LABEL_15;
    }

    v36 = v28 - v35;
    if (v36 >= 1)
    {
      if (v36 <= v25)
      {
        v28 += v25 - 1;
        v35 += v25 - 1;
        v30 += v25 - 1;
        v39 = -1;
        goto LABEL_13;
      }

      v37 = v513 - 1;
      v38 = &v35[v27 * v37];
      if (v28 <= &v38[v25 - 1])
      {
        v28 += v27 * v37;
        v34 = -v27;
        v30 += v29 * v37;
        v29 = -v29;
        v39 = 1;
        v35 = v38;
        v27 = -v27;
        goto LABEL_14;
      }
    }

    v39 = 1;
LABEL_13:
    v34 = v18 >> 4;
    goto LABEL_14;
  }

  v40 = a2[16];
  v41 = a2[17];
  v34 = v33 >> 4;
  v42 = v21 + 16 * (v33 >> 4) * v41;
  v39 = 1;
  v43 = v21;
  v35 = v21;
LABEL_15:
  v44 = v22 != 0;
  v45 = v39 * v25;
  v508 = v42;
  if (v42)
  {
    v509 = v34;
    v46 = &v35[v34 * (v32 % v41)];
    v35 = &v46[v31 % v40];
    v21 = &v46[v40];
    v512 = v35;
  }

  else
  {
    v512 = v43;
    v509 = v34 - v45;
  }

  v510 = v29 - v45;
  v511 = v27 - v45;
  v507 = v25;
  switch(a3)
  {
    case 0:
      do
      {
        v47 = v25;
        do
        {
          v48 = *v30;
          if (*v30)
          {
            if (v48 == 255)
            {
              v28->i64[0] = 0;
              v28->i64[1] = 0;
            }

            else
            {
              *v28 = vmulq_n_f32(*v28, (v48 * -0.0039216) + 1.0);
            }
          }

          v30 += v39;
          v28 += v39;
          --v47;
        }

        while (v47);
        v30 += v510;
        v28 += v511;
        --v513;
      }

      while (v513);
      return;
    case 1:
      if (!v19 || v22)
      {
        do
        {
          v469 = v25;
          v470 = v512;
          do
          {
            v471 = *v30;
            if (*v30)
            {
              if (v471 == 255)
              {
                v472 = *v35;
              }

              else
              {
                v472 = vmlaq_n_f32(vmulq_n_f32(*v28, 1.0 - (v471 * 0.0039216)), *v35, v471 * 0.0039216);
              }

              *v28 = v472;
            }

            v30 += v39;
            v473 = &v35[v39];
            if (v473 >= v21)
            {
              v474 = -v40;
            }

            else
            {
              v474 = 0;
            }

            v35 = &v473[v474];
            v28 += v39;
            --v469;
          }

          while (v469);
          v30 += v510;
          v28 += v511;
          v475 = &v512[v509];
          if (v475 >= v42)
          {
            v476 = -(v509 * v41);
          }

          else
          {
            v476 = 0;
          }

          v477 = &v475[v476];
          v478 = v21 + 16 * v476 + 16 * v509;
          if (v42)
          {
            v21 = v478;
            v470 = v477;
            v35 = v477;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v470;
          --v513;
        }

        while (!_ZF);
      }

      else
      {
        do
        {
          v104 = v25;
          v105 = v512;
          do
          {
            v106 = *v30;
            if (*v30)
            {
              if (v106 == 255)
              {
                v28->i64[0] = v35->i64[0];
                v28->i32[2] = v35->i32[2];
                v28->i32[3] = 1065353216;
              }

              else
              {
                v107 = v106 * 0.0039216;
                *v108.f32 = vmul_n_f32(*v35->f32, v107);
                v108.f32[2] = v107 * v35->f32[2];
                v108.f32[3] = v107;
                *v28 = vmlaq_n_f32(v108, *v28, 1.0 - v107);
              }
            }

            v30 += v39;
            v109 = &v35[v39];
            if (v109 >= v21)
            {
              v110 = -v40;
            }

            else
            {
              v110 = 0;
            }

            v35 = &v109[v110];
            v28 += v39;
            --v104;
          }

          while (v104);
          v30 += v510;
          v28 += v511;
          v111 = &v512[v509];
          if (v111 >= v42)
          {
            v112 = -(v509 * v41);
          }

          else
          {
            v112 = 0;
          }

          v113 = &v111[v112];
          v114 = v21 + 16 * v112 + 16 * v509;
          if (v42)
          {
            v21 = v114;
            v105 = v113;
            v35 = v113;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v105;
          --v513;
        }

        while (!_ZF);
      }

      return;
    case 2:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)2,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, *v17);
        return;
      }

LABEL_341:
      v222 = v25;
      v223 = v512;
      while (1)
      {
        v224 = *v30;
        if (*v30)
        {
          if (v224 == 255)
          {
            v225 = v35->f32[3];
            if (v225 >= 1.0)
            {
              v28->i64[0] = v35->i64[0];
              v28->i32[2] = v35->i32[2];
              v28->f32[3] = v225;
            }

            else if (v225 > 0.0)
            {
              *v28 = vmlaq_n_f32(*v35, *v28, 1.0 - v225);
            }

            goto LABEL_352;
          }

          v226 = vmulq_n_f32(*v35, v224 * 0.0039216);
          if (v226.f32[3] >= 1.0)
          {
            goto LABEL_350;
          }

          if (v226.f32[3] > 0.0)
          {
            break;
          }
        }

LABEL_352:
        v30 += v39;
        v227 = &v35[v39];
        if (v227 >= v21)
        {
          v228 = -v40;
        }

        else
        {
          v228 = 0;
        }

        v35 = &v227[v228];
        v28 += v39;
        if (!--v222)
        {
          v30 += v510;
          v28 += v511;
          v229 = &v512[v509];
          if (v229 >= v42)
          {
            v230 = -(v509 * v41);
          }

          else
          {
            v230 = 0;
          }

          v231 = &v229[v230];
          v232 = v21 + 16 * v230 + 16 * v509;
          if (v42)
          {
            v21 = v232;
            v223 = v231;
            v35 = v231;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v223;
          --v513;
          if (_ZF)
          {
            return;
          }

          goto LABEL_341;
        }
      }

      v226 = vmlaq_n_f32(v226, *v28, 1.0 - v226.f32[3]);
LABEL_350:
      *v28 = v226;
      goto LABEL_352;
    case 3:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)3,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, v44, *v17);
      }

      else
      {
        do
        {
          v251 = v25;
          v252 = v512;
          do
          {
            v253 = *v30;
            if (*v30)
            {
              if (v253 == 255)
              {
                v254 = v28->f32[3];
                *v28->f32 = vmul_n_f32(*v35->f32, v254);
                v28->f32[2] = v254 * v35->f32[2];
                if (v22)
                {
                  v255 = v35->f32[3];
                }

                else
                {
                  v255 = 1.0;
                }

                v262 = v254 * v255;
              }

              else
              {
                v256 = v253 * 0.0039216;
                v257 = 1.0;
                v258 = 1.0 - v256;
                v260 = v28->f32[2];
                v259 = v28->f32[3];
                v261 = v256 * v259;
                *v28->f32 = vmla_n_f32(vmul_n_f32(*v35->f32, v261), *v28->f32, v258);
                v28->f32[2] = (v261 * v35->f32[2]) + (v260 * v258);
                if (v22)
                {
                  v257 = v35->f32[3];
                }

                v262 = (v261 * v257) + (v259 * v258);
              }

              v28->f32[3] = v262;
            }

            v30 += v39;
            v263 = &v35[v39];
            if (v263 >= v21)
            {
              v264 = -v40;
            }

            else
            {
              v264 = 0;
            }

            v35 = &v263[v264];
            v28 += v39;
            --v251;
          }

          while (v251);
          v30 += v510;
          v28 += v511;
          v265 = &v512[v509];
          if (v265 >= v42)
          {
            v266 = -(v509 * v41);
          }

          else
          {
            v266 = 0;
          }

          v267 = &v265[v266];
          v268 = v21 + 16 * v266 + 16 * v509;
          if (v42)
          {
            v21 = v268;
            v252 = v267;
            v35 = v267;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v252;
          --v513;
        }

        while (!_ZF);
      }

      return;
    case 4:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)4,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, v44, *v17);
      }

      else
      {
        do
        {
          v180 = v25;
          v181 = v512;
          do
          {
            v182 = *v30;
            if (*v30)
            {
              if (v182 == 255)
              {
                v183 = 1.0;
                v184 = 1.0 - v28->f32[3];
                *v28->f32 = vmul_n_f32(*v35->f32, v184);
                v28->f32[2] = v184 * v35->f32[2];
                if (v22)
                {
                  v183 = v35->f32[3];
                }

                v185 = v184 * v183;
              }

              else
              {
                v186 = v182 * 0.0039216;
                v187 = 1.0;
                v188 = 1.0 - v186;
                v190 = v28->f32[2];
                v189 = v28->f32[3];
                v191 = v186 * (1.0 - v189);
                *v28->f32 = vmla_n_f32(vmul_n_f32(*v35->f32, v191), *v28->f32, v188);
                v28->f32[2] = (v191 * v35->f32[2]) + (v190 * v188);
                if (v22)
                {
                  v187 = v35->f32[3];
                }

                v185 = (v191 * v187) + (v189 * v188);
              }

              v28->f32[3] = v185;
            }

            v30 += v39;
            v192 = &v35[v39];
            if (v192 >= v21)
            {
              v193 = -v40;
            }

            else
            {
              v193 = 0;
            }

            v35 = &v192[v193];
            v28 += v39;
            --v180;
          }

          while (v180);
          v30 += v510;
          v28 += v511;
          v194 = &v512[v509];
          if (v194 >= v42)
          {
            v195 = -(v509 * v41);
          }

          else
          {
            v195 = 0;
          }

          v196 = &v194[v195];
          v197 = v21 + 16 * v195 + 16 * v509;
          if (v42)
          {
            v21 = v197;
            v181 = v196;
            v35 = v196;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v181;
          --v513;
        }

        while (!_ZF);
      }

      return;
    case 5:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)5,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, *v17);
      }

      else
      {
        do
        {
          v313 = v25;
          v314 = v512;
          do
          {
            if (*v30)
            {
              v315 = vmulq_n_f32(*v35, *v30 * 0.0039216);
              *v28 = vmlaq_laneq_f32(vmulq_n_f32(*v28, 1.0 - v315.f32[3]), v315, *v28, 3);
            }

            v30 += v39;
            v316 = &v35[v39];
            if (v316 >= v21)
            {
              v317 = -v40;
            }

            else
            {
              v317 = 0;
            }

            v35 = &v316[v317];
            v28 += v39;
            --v313;
          }

          while (v313);
          v30 += v510;
          v28 += v511;
          v318 = &v512[v509];
          if (v318 >= v42)
          {
            v319 = -(v509 * v41);
          }

          else
          {
            v319 = 0;
          }

          v320 = &v318[v319];
          v321 = v21 + 16 * v319 + 16 * v509;
          if (v42)
          {
            v21 = v321;
            v314 = v320;
            v35 = v320;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v314;
          --v513;
        }

        while (!_ZF);
      }

      return;
    case 6:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)6,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, v44, *v17);
        return;
      }

      while (2)
      {
        v358 = v25;
        v359 = v512;
        do
        {
          v360 = *v30;
          if (!*v30)
          {
            goto LABEL_557;
          }

          v361 = v28->f32[3];
          v362 = 1.0 - v361;
          if ((1.0 - v361) >= 1.0)
          {
            v365 = v360 * 0.0039216;
            *v28->f32 = vmul_n_f32(*v35->f32, v365);
            v28->f32[2] = v365 * v35->f32[2];
            if (v22)
            {
              v366 = v35->f32[3];
            }

            else
            {
              v366 = 1.0;
            }

            v367 = v365 * v366;
          }

          else
          {
            if (v362 <= 0.0)
            {
              goto LABEL_557;
            }

            v363 = (v360 * 0.0039216) * v362;
            *v28->f32 = vmla_n_f32(*v28->f32, *v35->f32, v363);
            v28->f32[2] = v28->f32[2] + (v35->f32[2] * v363);
            if (v22)
            {
              v364 = v35->f32[3];
            }

            else
            {
              v364 = 1.0;
            }

            v367 = v361 + (v364 * v363);
          }

          v28->f32[3] = v367;
LABEL_557:
          v30 += v39;
          v368 = &v35[v39];
          if (v368 >= v21)
          {
            v369 = -v40;
          }

          else
          {
            v369 = 0;
          }

          v35 = &v368[v369];
          v28 += v39;
          --v358;
        }

        while (v358);
        v30 += v510;
        v28 += v511;
        v370 = &v512[v509];
        if (v370 >= v42)
        {
          v371 = -(v509 * v41);
        }

        else
        {
          v371 = 0;
        }

        v372 = &v370[v371];
        v373 = v21 + 16 * v371 + 16 * v509;
        if (v42)
        {
          v21 = v373;
          v359 = v372;
          v35 = v372;
        }

        else
        {
          v35 += v509;
        }

        _ZF = v513 == 1;
        v512 = v359;
        --v513;
        if (!_ZF)
        {
          continue;
        }

        return;
      }

    case 7:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)7,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, *v17);
      }

      else
      {
        do
        {
          v269 = v25;
          v270 = v512;
          do
          {
            v271 = *v30;
            if (*v30)
            {
              if (v271 == 255)
              {
                v272 = vmulq_n_f32(*v28, v35->f32[3]);
              }

              else
              {
                v272 = vmlaq_n_f32(vmulq_n_f32(*v28, 1.0 - (v271 * 0.0039216)), *v28, (v271 * 0.0039216) * v35->f32[3]);
              }

              *v28 = v272;
            }

            v30 += v39;
            v273 = &v35[v39];
            if (v273 >= v21)
            {
              v274 = -v40;
            }

            else
            {
              v274 = 0;
            }

            v35 = &v273[v274];
            v28 += v39;
            --v269;
          }

          while (v269);
          v30 += v510;
          v28 += v511;
          v275 = &v512[v509];
          if (v275 >= v42)
          {
            v276 = -(v509 * v41);
          }

          else
          {
            v276 = 0;
          }

          v277 = &v275[v276];
          v278 = v21 + 16 * v276 + 16 * v509;
          if (v42)
          {
            v21 = v278;
            v270 = v277;
            v35 = v277;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v270;
          --v513;
        }

        while (!_ZF);
      }

      return;
    case 8:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)8,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, *v17);
      }

      else
      {
        do
        {
          v401 = v25;
          v402 = v512;
          do
          {
            v403 = *v30;
            if (*v30)
            {
              if (v403 == 255)
              {
                v404 = v35->f32[3];
              }

              else
              {
                v404 = (v403 * 0.0039216) * v35->f32[3];
              }

              v405 = 1.0 - v404;
              v406 = vmul_n_f32(*v28->f32, v405);
              v407 = vmul_n_f32(*&v28->u32[2], v405);
              *v28->f32 = v406;
              *&v28->u32[2] = v407;
            }

            v30 += v39;
            v408 = &v35[v39];
            if (v408 >= v21)
            {
              v409 = -v40;
            }

            else
            {
              v409 = 0;
            }

            v35 = &v408[v409];
            v28 += v39;
            --v401;
          }

          while (v401);
          v30 += v510;
          v28 += v511;
          v410 = &v512[v509];
          if (v410 >= v42)
          {
            v411 = -(v509 * v41);
          }

          else
          {
            v411 = 0;
          }

          v412 = &v410[v411];
          v413 = v21 + 16 * v411 + 16 * v509;
          if (v42)
          {
            v21 = v413;
            v402 = v412;
            v35 = v412;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v402;
          --v513;
        }

        while (!_ZF);
      }

      return;
    case 9:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)9,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, *v17);
      }

      else
      {
        do
        {
          v211 = v25;
          v212 = v512;
          do
          {
            if (*v30)
            {
              v213 = *v30 * 0.0039216;
              v214 = 1.0 - v213;
              v215 = vmulq_n_f32(*v35, v213);
              *v28 = vmlaq_n_f32(vmulq_n_f32(*v28, v214 + v215.f32[3]), v215, 1.0 - COERCE_FLOAT(HIDWORD(*v28)));
            }

            v30 += v39;
            v216 = &v35[v39];
            if (v216 >= v21)
            {
              v217 = -v40;
            }

            else
            {
              v217 = 0;
            }

            v35 = &v216[v217];
            v28 += v39;
            --v211;
          }

          while (v211);
          v30 += v510;
          v28 += v511;
          v218 = &v512[v509];
          if (v218 >= v42)
          {
            v219 = -(v509 * v41);
          }

          else
          {
            v219 = 0;
          }

          v220 = &v218[v219];
          v221 = v21 + 16 * v219 + 16 * v509;
          if (v42)
          {
            v21 = v221;
            v212 = v220;
            v35 = v220;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v212;
          --v513;
        }

        while (!_ZF);
      }

      return;
    case 10:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)10,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, *v17);
      }

      else
      {
        do
        {
          v392 = v25;
          v393 = v512;
          do
          {
            if (*v30)
            {
              v394 = vmulq_n_f32(*v35, *v30 * 0.0039216);
              *v28 = vmlaq_n_f32(vmulq_n_f32(*v28, 1.0 - v394.f32[3]), v394, 1.0 - COERCE_FLOAT(HIDWORD(*v28)));
            }

            v30 += v39;
            v395 = &v35[v39];
            if (v395 >= v21)
            {
              v396 = -v40;
            }

            else
            {
              v396 = 0;
            }

            v35 = &v395[v396];
            v28 += v39;
            --v392;
          }

          while (v392);
          v30 += v510;
          v28 += v511;
          v397 = &v512[v509];
          if (v397 >= v42)
          {
            v398 = -(v509 * v41);
          }

          else
          {
            v398 = 0;
          }

          v399 = &v397[v398];
          v400 = v21 + 16 * v398 + 16 * v509;
          if (v42)
          {
            v21 = v400;
            v393 = v399;
            v35 = v399;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v393;
          --v513;
        }

        while (!_ZF);
      }

      return;
    case 11:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)11,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, v26, v44, *v17);
      }

      else
      {
        do
        {
          v167 = v25;
          v168 = v512;
          do
          {
            if (*v30)
            {
              if (v19)
              {
                LODWORD(a6) = v28->i32[3];
              }

              else
              {
                LODWORD(a6) = 1.0;
              }

              v169 = *v30 * 0.0039216;
              v170 = vmul_n_f32(*v35->f32, v169);
              v171 = v35->f32[3];
              v172 = v169 * v35->f32[2];
              if (!v22)
              {
                v171 = 1.0;
              }

              *&a7 = v169 * v171;
              *&a10 = *&a7 + *&a6;
              if ((*&a7 + *&a6) > 1.0)
              {
                *&a10 = 1.0;
              }

              v173 = (*&a7 - v172) + (*&a6 - v28->f32[2]);
              a7 = COERCE_DOUBLE(vsub_f32(vdup_lane_s32(*&a7, 0), v170));
              a6 = COERCE_DOUBLE(vsub_f32(vdup_lane_s32(*&a10, 0), vadd_f32(*&a7, vsub_f32(vdup_lane_s32(*&a6, 0), *v28->f32))));
              *v28->i64 = a6;
              v28->f32[2] = *&a10 - v173;
              v28->i32[3] = LODWORD(a10);
            }

            v30 += v39;
            v174 = &v35[v39];
            if (v174 >= v21)
            {
              v175 = -v40;
            }

            else
            {
              v175 = 0;
            }

            v35 = &v174[v175];
            v28 += v39;
            --v167;
          }

          while (v167);
          v30 += v510;
          v28 += v511;
          v176 = &v512[v509];
          if (v176 >= v42)
          {
            v177 = -(v509 * v41);
          }

          else
          {
            v177 = 0;
          }

          v178 = &v176[v177];
          v179 = v21 + 16 * v177 + 16 * v509;
          if (v42)
          {
            v21 = v179;
            v168 = v178;
            v35 = v178;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v168;
          --v513;
        }

        while (!_ZF);
      }

      return;
    case 12:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)12,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, v44, *v17);
      }

      else
      {
        do
        {
          v198 = v25;
          v199 = v512;
          do
          {
            if (*v30)
            {
              v200 = *v30 * 0.0039216;
              v201 = v35->f32[3];
              v202 = v200 * v35->f32[2];
              *v28->f32 = vadd_f32(vmul_n_f32(*v35->f32, v200), *v28->f32);
              if (!v22)
              {
                v201 = 1.0;
              }

              v203 = (v200 * v201) + v28->f32[3];
              v204 = v202 + v28->f32[2];
              if (v203 > 1.0)
              {
                v203 = 1.0;
              }

              v28->f32[2] = v204;
              v28->f32[3] = v203;
            }

            v30 += v39;
            v205 = &v35[v39];
            if (v205 >= v21)
            {
              v206 = -v40;
            }

            else
            {
              v206 = 0;
            }

            v35 = &v205[v206];
            v28 += v39;
            --v198;
          }

          while (v198);
          v30 += v510;
          v28 += v511;
          v207 = &v512[v509];
          if (v207 >= v42)
          {
            v208 = -(v509 * v41);
          }

          else
          {
            v208 = 0;
          }

          v209 = &v207[v208];
          v210 = v21 + 16 * v208 + 16 * v509;
          if (v42)
          {
            v21 = v210;
            v199 = v209;
            v35 = v209;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v199;
          --v513;
        }

        while (!_ZF);
      }

      return;
    case 13:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)13,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, v26, v44, *v17);
        return;
      }

      v340 = v39;
      v341 = -v40;
      v504 = -(v509 * v41);
      v342 = 16 * v39;
      while (1)
      {
        v343 = *v30;
        if (*v30)
        {
          v344 = *v35;
          v345 = vmulq_n_f32(*v35, v343 * 0.0039216);
          LODWORD(a11) = v345.i32[3];
          v346 = v22 ? *&v345.i32[3] : v343 * 0.0039216;
          if (v346 > 0.0)
          {
            break;
          }
        }

LABEL_532:
        v30 += v340;
        v351 = &v35[v340];
        if (v351 >= v21)
        {
          v352 = v341;
        }

        else
        {
          v352 = 0;
        }

        v35 = &v351[v352];
        v28 = (v28 + v342);
        if (!--v25)
        {
          v30 += v510;
          v28 += v511;
          v353 = v512;
          v354 = &v512[v509];
          v355 = v504;
          v25 = v507;
          if (v354 < v508)
          {
            v355 = 0;
          }

          v356 = &v354[v355];
          v357 = v21 + 16 * v355 + 16 * v509;
          if (v508)
          {
            v21 = v357;
            v353 = v356;
            v35 = v356;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v353;
          --v513;
          if (_ZF)
          {
            return;
          }
        }
      }

      LODWORD(a9) = v28->i32[3];
      if (v19)
      {
        v347 = v28->f32[3];
        if (*&a9 <= 0.0)
        {
          v28->i64[0] = v345.i64[0];
          v28->i32[2] = v345.i32[2];
LABEL_531:
          v28->f32[3] = v346;
          goto LABEL_532;
        }
      }

      else
      {
        v347 = 1.0;
      }

      v344.i32[0] = v28->i32[1];
      LODWORD(a6) = v28->i32[2];
      v492 = v346;
      v348 = vextq_s8(v345, v345, 4uLL);
      v348.i32[0] = v28->i32[3];
      v349 = PDAmultiplyPDA(v28->f32[0], *v344.i64, a6, *v348.i64, v347, a9, *v345.i64, a11, *v345.i32, COERCE_DOUBLE(__PAIR64__(v345.u32[3], v348.u32[1])), v492);
      v19 = v514;
      v28->f32[0] = v349;
      v28->i32[1] = v350;
      v28->i32[2] = LODWORD(a6);
      goto LABEL_531;
    case 14:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)14,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, v26, v44, *v17);
        return;
      }

      __asm { FMOV            V2.2S, #1.0 }

      while (1)
      {
        v153 = v25;
        v154 = v512;
        do
        {
          if (*v30)
          {
            v155 = *v30 * 0.0039216;
            v156 = v35->f32[3];
            if (!v22)
            {
              v156 = 1.0;
            }

            v157 = v155 * v156;
            if (v157 > 0.0)
            {
              v158 = vmul_n_f32(*v35->f32, v155);
              v159 = v155 * v35->f32[2];
              if (v19)
              {
                v160 = v28->f32[3];
                if (v160 <= 0.0)
                {
                  *v28->f32 = v158;
LABEL_245:
                  v28->f32[2] = v159;
                  v28->f32[3] = v157;
                  goto LABEL_246;
                }
              }

              else
              {
                v160 = 1.0;
              }

              v159 = v28->f32[2] + (v159 * (1.0 - v28->f32[2]));
              *v28->f32 = vmla_f32(*v28->f32, vsub_f32(_D2, *v28->f32), v158);
              v157 = (v157 + v160) - (v160 * v157);
              goto LABEL_245;
            }
          }

LABEL_246:
          v30 += v39;
          v161 = &v35[v39];
          if (v161 >= v21)
          {
            v162 = -v40;
          }

          else
          {
            v162 = 0;
          }

          v35 = &v161[v162];
          v28 += v39;
          --v153;
        }

        while (v153);
        v30 += v510;
        v28 += v511;
        v163 = &v512[v509];
        if (v163 >= v42)
        {
          v164 = -(v509 * v41);
        }

        else
        {
          v164 = 0;
        }

        v165 = &v163[v164];
        v166 = v21 + 16 * v164 + 16 * v509;
        if (v42)
        {
          v21 = v166;
          v154 = v165;
          v35 = v165;
        }

        else
        {
          v35 += v509;
        }

        _ZF = v513 == 1;
        v512 = v154;
        --v513;
        if (_ZF)
        {
          return;
        }
      }

    case 15:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)15,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, v26, v44, *v17);
        return;
      }

      v233 = v39;
      v234 = -v40;
      v500 = -(v509 * v41);
      v235 = 16 * v39;
      while (1)
      {
        v236 = *v30;
        if (*v30)
        {
          v237 = *v35;
          v238 = vmulq_n_f32(*v35, v236 * 0.0039216);
          LODWORD(a11) = v238.i32[3];
          v239 = v22 ? *&v238.i32[3] : v236 * 0.0039216;
          if (v239 > 0.0)
          {
            break;
          }
        }

LABEL_377:
        v30 += v233;
        v244 = &v35[v233];
        if (v244 >= v21)
        {
          v245 = v234;
        }

        else
        {
          v245 = 0;
        }

        v35 = &v244[v245];
        v28 = (v28 + v235);
        if (!--v25)
        {
          v30 += v510;
          v28 += v511;
          v246 = v512;
          v247 = &v512[v509];
          v248 = v500;
          v25 = v507;
          if (v247 < v508)
          {
            v248 = 0;
          }

          v249 = &v247[v248];
          v250 = v21 + 16 * v248 + 16 * v509;
          if (v508)
          {
            v21 = v250;
            v246 = v249;
            v35 = v249;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v246;
          --v513;
          if (_ZF)
          {
            return;
          }
        }
      }

      LODWORD(a9) = v28->i32[3];
      if (v19)
      {
        v240 = v28->f32[3];
        if (*&a9 <= 0.0)
        {
          v28->i64[0] = v238.i64[0];
          v28->i32[2] = v238.i32[2];
LABEL_376:
          v28->f32[3] = v239;
          goto LABEL_377;
        }
      }

      else
      {
        v240 = 1.0;
      }

      v237.i32[0] = v28->i32[1];
      LODWORD(a6) = v28->i32[2];
      v489 = v239;
      v241 = vextq_s8(v238, v238, 4uLL);
      v241.i32[0] = v28->i32[3];
      v242 = PDAoverlayPDA(v28->f32[0], *v237.i64, a6, *v241.i64, v240, a9, *v238.i64, a11, *v238.i32, COERCE_DOUBLE(__PAIR64__(v238.u32[3], v241.u32[1])), v489);
      v19 = v514;
      v28->f32[0] = v242;
      v28->i32[1] = v243;
      v28->i32[2] = LODWORD(a6);
      goto LABEL_376;
    case 16:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)16,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, v26, v44, *v17);
        return;
      }

      v131 = v39;
      v132 = -v40;
      v499 = -(v509 * v41);
      v133 = 16 * v39;
      while (1)
      {
        v134 = *v30;
        if (*v30)
        {
          v135 = *v35;
          v136 = vmulq_n_f32(*v35, v134 * 0.0039216);
          LODWORD(a11) = v136.i32[3];
          v137 = v22 ? *&v136.i32[3] : v134 * 0.0039216;
          if (v137 > 0.0)
          {
            break;
          }
        }

LABEL_222:
        v30 += v131;
        v142 = &v35[v131];
        if (v142 >= v21)
        {
          v143 = v132;
        }

        else
        {
          v143 = 0;
        }

        v35 = &v142[v143];
        v28 = (v28 + v133);
        if (!--v25)
        {
          v30 += v510;
          v28 += v511;
          v144 = v512;
          v145 = &v512[v509];
          v146 = v499;
          v25 = v507;
          if (v145 < v508)
          {
            v146 = 0;
          }

          v147 = &v145[v146];
          v148 = v21 + 16 * v146 + 16 * v509;
          if (v508)
          {
            v21 = v148;
            v144 = v147;
            v35 = v147;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v144;
          --v513;
          if (_ZF)
          {
            return;
          }
        }
      }

      LODWORD(a9) = v28->i32[3];
      if (v19)
      {
        v138 = v28->f32[3];
        if (*&a9 <= 0.0)
        {
          v28->i64[0] = v136.i64[0];
          v28->i32[2] = v136.i32[2];
LABEL_221:
          v28->f32[3] = v137;
          goto LABEL_222;
        }
      }

      else
      {
        v138 = 1.0;
      }

      v135.i32[0] = v28->i32[1];
      LODWORD(a6) = v28->i32[2];
      v488 = v137;
      v139 = vextq_s8(v136, v136, 4uLL);
      v139.i32[0] = v28->i32[3];
      v140 = PDAdarkenPDA(v28->f32[0], *v135.i64, a6, *v139.i64, v138, a9, *v136.i64, a11, *v136.i32, COERCE_DOUBLE(__PAIR64__(v136.u32[3], v139.u32[1])), v488);
      v19 = v514;
      v28->f32[0] = v140;
      v28->i32[1] = v141;
      v28->i32[2] = LODWORD(a6);
      goto LABEL_221;
    case 17:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)17,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, v26, v44, *v17);
        return;
      }

      v279 = v39;
      v280 = -v40;
      v501 = -(v509 * v41);
      v281 = 16 * v39;
      while (1)
      {
        v282 = *v30;
        if (*v30)
        {
          v283 = *v35;
          v284 = vmulq_n_f32(*v35, v282 * 0.0039216);
          LODWORD(a11) = v284.i32[3];
          v285 = v22 ? *&v284.i32[3] : v282 * 0.0039216;
          if (v285 > 0.0)
          {
            break;
          }
        }

LABEL_444:
        v30 += v279;
        v290 = &v35[v279];
        if (v290 >= v21)
        {
          v291 = v280;
        }

        else
        {
          v291 = 0;
        }

        v35 = &v290[v291];
        v28 = (v28 + v281);
        if (!--v25)
        {
          v30 += v510;
          v28 += v511;
          v292 = v512;
          v293 = &v512[v509];
          v294 = v501;
          v25 = v507;
          if (v293 < v508)
          {
            v294 = 0;
          }

          v295 = &v293[v294];
          v296 = v21 + 16 * v294 + 16 * v509;
          if (v508)
          {
            v21 = v296;
            v292 = v295;
            v35 = v295;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v292;
          --v513;
          if (_ZF)
          {
            return;
          }
        }
      }

      LODWORD(a9) = v28->i32[3];
      if (v19)
      {
        v286 = v28->f32[3];
        if (*&a9 <= 0.0)
        {
          v28->i64[0] = v284.i64[0];
          v28->i32[2] = v284.i32[2];
LABEL_443:
          v28->f32[3] = v285;
          goto LABEL_444;
        }
      }

      else
      {
        v286 = 1.0;
      }

      v283.i32[0] = v28->i32[1];
      LODWORD(a6) = v28->i32[2];
      v490 = v285;
      v287 = vextq_s8(v284, v284, 4uLL);
      v287.i32[0] = v28->i32[3];
      v288 = PDAlightenPDA(v28->f32[0], *v283.i64, a6, *v287.i64, v286, a9, *v284.i64, a11, *v284.i32, COERCE_DOUBLE(__PAIR64__(v284.u32[3], v287.u32[1])), v490);
      v19 = v514;
      v28->f32[0] = v288;
      v28->i32[1] = v289;
      v28->i32[2] = LODWORD(a6);
      goto LABEL_443;
    case 18:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)18,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, v26, v44, *v17);
        return;
      }

      v374 = v39;
      v375 = -v40;
      v505 = -(v509 * v41);
      v376 = 16 * v39;
      while (1)
      {
        v377 = *v30;
        if (*v30)
        {
          v378 = *v35;
          v379 = vmulq_n_f32(*v35, v377 * 0.0039216);
          LODWORD(a11) = v379.i32[3];
          v380 = v22 ? *&v379.i32[3] : v377 * 0.0039216;
          if (v380 > 0.0)
          {
            break;
          }
        }

LABEL_582:
        v30 += v374;
        v385 = &v35[v374];
        if (v385 >= v21)
        {
          v386 = v375;
        }

        else
        {
          v386 = 0;
        }

        v35 = &v385[v386];
        v28 = (v28 + v376);
        if (!--v25)
        {
          v30 += v510;
          v28 += v511;
          v387 = v512;
          v388 = &v512[v509];
          v389 = v505;
          v25 = v507;
          if (v388 < v508)
          {
            v389 = 0;
          }

          v390 = &v388[v389];
          v391 = v21 + 16 * v389 + 16 * v509;
          if (v508)
          {
            v21 = v391;
            v387 = v390;
            v35 = v390;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v387;
          --v513;
          if (_ZF)
          {
            return;
          }
        }
      }

      LODWORD(a9) = v28->i32[3];
      if (v19)
      {
        v381 = v28->f32[3];
        if (*&a9 <= 0.0)
        {
          v28->i64[0] = v379.i64[0];
          v28->i32[2] = v379.i32[2];
LABEL_581:
          v28->f32[3] = v380;
          goto LABEL_582;
        }
      }

      else
      {
        v381 = 1.0;
      }

      v378.i32[0] = v28->i32[1];
      LODWORD(a6) = v28->i32[2];
      v493 = v380;
      v382 = vextq_s8(v379, v379, 4uLL);
      v382.i32[0] = v28->i32[3];
      v383 = PDAcolordodgePDA(v28->f32[0], *v378.i64, a6, *v382.i64, v381, a9, *v379.i64, a11, *v379.i32, COERCE_DOUBLE(__PAIR64__(v379.u32[3], v382.u32[1])), v493);
      v19 = v514;
      v28->f32[0] = v383;
      v28->i32[1] = v384;
      v28->i32[2] = LODWORD(a6);
      goto LABEL_581;
    case 19:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)19,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, v26, v44, *v17);
        return;
      }

      v437 = v39;
      v438 = -v40;
      v506 = -(v509 * v41);
      v439 = 16 * v39;
      while (1)
      {
        v440 = *v30;
        if (*v30)
        {
          v441 = *v35;
          v442 = vmulq_n_f32(*v35, v440 * 0.0039216);
          LODWORD(a11) = v442.i32[3];
          v443 = v22 ? *&v442.i32[3] : v440 * 0.0039216;
          if (v443 > 0.0)
          {
            break;
          }
        }

LABEL_667:
        v30 += v437;
        v448 = &v35[v437];
        if (v448 >= v21)
        {
          v449 = v438;
        }

        else
        {
          v449 = 0;
        }

        v35 = &v448[v449];
        v28 = (v28 + v439);
        if (!--v25)
        {
          v30 += v510;
          v28 += v511;
          v450 = v512;
          v451 = &v512[v509];
          v452 = v506;
          v25 = v507;
          if (v451 < v508)
          {
            v452 = 0;
          }

          v453 = &v451[v452];
          v454 = v21 + 16 * v452 + 16 * v509;
          if (v508)
          {
            v21 = v454;
            v450 = v453;
            v35 = v453;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v450;
          --v513;
          if (_ZF)
          {
            return;
          }
        }
      }

      LODWORD(a9) = v28->i32[3];
      if (v19)
      {
        v444 = v28->f32[3];
        if (*&a9 <= 0.0)
        {
          v28->i64[0] = v442.i64[0];
          v28->i32[2] = v442.i32[2];
LABEL_666:
          v28->f32[3] = v443;
          goto LABEL_667;
        }
      }

      else
      {
        v444 = 1.0;
      }

      v441.i32[0] = v28->i32[1];
      LODWORD(a6) = v28->i32[2];
      v494 = v443;
      v445 = vextq_s8(v442, v442, 4uLL);
      v445.i32[0] = v28->i32[3];
      v446 = PDAcolorburnPDA(v28->f32[0], *v441.i64, a6, *v445.i64, v444, a9, *v442.i64, a11, *v442.i32, COERCE_DOUBLE(__PAIR64__(v442.u32[3], v445.u32[1])), v494);
      v19 = v514;
      v28->f32[0] = v446;
      v28->i32[1] = v447;
      v28->i32[2] = LODWORD(a6);
      goto LABEL_666;
    case 20:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)20,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, v26, v44, *v17);
        return;
      }

      v297 = v39;
      v298 = -v40;
      v502 = -(v509 * v41);
      v299 = 16 * v39;
      while (1)
      {
        v300 = *v30;
        if (*v30)
        {
          v301 = vmulq_n_f32(*v35, v300 * 0.0039216);
          LODWORD(a11) = v301.i32[3];
          v302 = v22 ? *&v301.i32[3] : v300 * 0.0039216;
          if (v302 > 0.0)
          {
            break;
          }
        }

LABEL_468:
        v30 += v297;
        v306 = &v35[v297];
        if (v306 >= v21)
        {
          v307 = v298;
        }

        else
        {
          v307 = 0;
        }

        v35 = &v306[v307];
        v28 = (v28 + v299);
        if (!--v25)
        {
          v30 += v510;
          v28 += v511;
          v308 = v512;
          v309 = &v512[v509];
          v310 = v502;
          v25 = v507;
          if (v309 < v508)
          {
            v310 = 0;
          }

          v311 = &v309[v310];
          v312 = v21 + 16 * v310 + 16 * v509;
          if (v508)
          {
            v21 = v312;
            v308 = v311;
            v35 = v311;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v308;
          --v513;
          if (_ZF)
          {
            return;
          }
        }
      }

      LODWORD(a9) = v28->i32[3];
      if (v19)
      {
        LODWORD(a8) = v28->i32[3];
        if (*&a9 <= 0.0)
        {
          v28->i64[0] = v301.i64[0];
          v28->i32[2] = v301.i32[2];
LABEL_467:
          v28->f32[3] = v302;
          goto LABEL_468;
        }
      }

      else
      {
        LODWORD(a8) = 1.0;
      }

      LODWORD(a6) = v28->i32[2];
      *&v484[8] = __PAIR64__(LODWORD(v302), v301.u32[3]);
      v303 = vextq_s8(v301, v301, 4uLL).u64[0];
      *v484 = v303;
      v303.i32[0] = v28->i32[3];
      v304 = PDAsoftlightPDA(v28->f32[0], v28->f32[1], a6, v303, a8, a9, *v301.i64, a11, v42, v19, a3, v17, a13, v41, v40, a16, *v301.i32, *v484, *&v484[4], *&v484[12]);
      v19 = v514;
      v28->f32[0] = v304;
      v28->i32[1] = v305;
      v28->i32[2] = LODWORD(a6);
      goto LABEL_467;
    case 21:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)21,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, v26, v44, *v17);
        return;
      }

      v322 = v39;
      v323 = -v40;
      v503 = -(v509 * v41);
      v324 = 16 * v39;
      while (1)
      {
        v325 = *v30;
        if (*v30)
        {
          v326 = *v35;
          v327 = vmulq_n_f32(*v35, v325 * 0.0039216);
          LODWORD(a11) = v327.i32[3];
          v328 = v22 ? *&v327.i32[3] : v325 * 0.0039216;
          if (v328 > 0.0)
          {
            break;
          }
        }

LABEL_508:
        v30 += v322;
        v333 = &v35[v322];
        if (v333 >= v21)
        {
          v334 = v323;
        }

        else
        {
          v334 = 0;
        }

        v35 = &v333[v334];
        v28 = (v28 + v324);
        if (!--v25)
        {
          v30 += v510;
          v28 += v511;
          v335 = v512;
          v336 = &v512[v509];
          v337 = v503;
          v25 = v507;
          if (v336 < v508)
          {
            v337 = 0;
          }

          v338 = &v336[v337];
          v339 = v21 + 16 * v337 + 16 * v509;
          if (v508)
          {
            v21 = v339;
            v335 = v338;
            v35 = v338;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v335;
          --v513;
          if (_ZF)
          {
            return;
          }
        }
      }

      LODWORD(a9) = v28->i32[3];
      if (v19)
      {
        v329 = v28->f32[3];
        if (*&a9 <= 0.0)
        {
          v28->i64[0] = v327.i64[0];
          v28->i32[2] = v327.i32[2];
LABEL_507:
          v28->f32[3] = v328;
          goto LABEL_508;
        }
      }

      else
      {
        v329 = 1.0;
      }

      v326.i32[0] = v28->i32[1];
      LODWORD(a6) = v28->i32[2];
      v491 = v328;
      v330 = vextq_s8(v327, v327, 4uLL);
      v330.i32[0] = v28->i32[3];
      v331 = PDAhardlightPDA(v28->f32[0], *v326.i64, a6, *v330.i64, v329, a9, *v327.i64, a11, *v327.i32, COERCE_DOUBLE(__PAIR64__(v327.u32[3], v330.u32[1])), v491);
      v19 = v514;
      v28->f32[0] = v331;
      v28->i32[1] = v332;
      v28->i32[2] = LODWORD(a6);
      goto LABEL_507;
    case 22:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)22,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, v26, v44, *v17);
        return;
      }

      while (1)
      {
        v414 = v25;
        v415 = v512;
        do
        {
          if (*v30)
          {
            v416 = *v30 * 0.0039216;
            v417 = vmulq_n_f32(*v35, v416);
            if (v22)
            {
              v416 = v417.f32[3];
            }

            if (v416 > 0.0)
            {
              if (v19)
              {
                v418 = v28->f32[3];
                if (v418 <= 0.0)
                {
                  v28->i64[0] = v417.i64[0];
                  v28->i32[2] = v417.i32[2];
LABEL_641:
                  v28->f32[3] = v416;
                  goto LABEL_642;
                }
              }

              else
              {
                v418 = 1.0;
              }

              v419 = v28->f32[2];
              v420 = vmul_n_f32(*v28->f32, v416);
              v421 = vmul_n_f32(*v417.f32, v418);
              v422 = vsub_f32(vadd_f32(*v28->f32, *v417.f32), v420);
              v423 = vsub_f32(v420, v421);
              v424 = vadd_f32(vsub_f32(v422, v421), vbsl_s8(vcltz_f32(v423), vneg_f32(v423), v423));
              v425 = v419 + v417.f32[2];
              v426 = v419 * v416;
              v427 = vmuls_lane_f32(v418, v417, 2);
              v428 = v425 - v426;
              v429 = v426 - v427;
              v430 = v428 - v427;
              if (v429 < 0.0)
              {
                v429 = -v429;
              }

              v416 = (v418 + v416) - (v418 * v416);
              *v28->f32 = v424;
              v28->f32[2] = v430 + v429;
              goto LABEL_641;
            }
          }

LABEL_642:
          v30 += v39;
          v431 = &v35[v39];
          if (v431 >= v21)
          {
            v432 = -v40;
          }

          else
          {
            v432 = 0;
          }

          v35 = &v431[v432];
          v28 += v39;
          --v414;
        }

        while (v414);
        v30 += v510;
        v28 += v511;
        v433 = &v512[v509];
        if (v433 >= v42)
        {
          v434 = -(v509 * v41);
        }

        else
        {
          v434 = 0;
        }

        v435 = &v433[v434];
        v436 = v21 + 16 * v434 + 16 * v509;
        if (v42)
        {
          v21 = v436;
          v415 = v435;
          v35 = v435;
        }

        else
        {
          v35 += v509;
        }

        _ZF = v513 == 1;
        v512 = v415;
        --v513;
        if (_ZF)
        {
          return;
        }
      }

    case 23:
      if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodFP>(void)::result && a2[33])
      {
        composite_pixelmask<(CGCompositeOperation)23,_rgbaf_t>(v28, v511, v35, v509, v512, v41, v40, v21, v42, v30, v510, v25, v513, v39, v26, v44, *v17);
        return;
      }

      while (1)
      {
        v455 = v25;
        v456 = v512;
        do
        {
          if (*v30)
          {
            v457 = *v30 * 0.0039216;
            v458 = v35->f32[3];
            if (!v22)
            {
              v458 = 1.0;
            }

            v459 = v457 * v458;
            if (v459 > 0.0)
            {
              v460 = vmul_n_f32(*v35->f32, v457);
              v461 = v457 * v35->f32[2];
              if (v19)
              {
                v462 = v28->f32[3];
                if (v462 <= 0.0)
                {
                  *v28->f32 = v460;
LABEL_689:
                  v28->f32[2] = v461;
                  v28->f32[3] = v459;
                  goto LABEL_690;
                }
              }

              else
              {
                v462 = 1.0;
              }

              v461 = (v461 + v28->f32[2]) + ((v461 * v28->f32[2]) * -2.0);
              *v28->f32 = vmla_f32(vadd_f32(v460, *v28->f32), 0xC0000000C0000000, vmul_f32(v460, *v28->f32));
              v459 = (v459 + v462) - (v462 * v459);
              goto LABEL_689;
            }
          }

LABEL_690:
          v30 += v39;
          v463 = &v35[v39];
          if (v463 >= v21)
          {
            v464 = -v40;
          }

          else
          {
            v464 = 0;
          }

          v35 = &v463[v464];
          v28 += v39;
          --v455;
        }

        while (v455);
        v30 += v510;
        v28 += v511;
        v465 = &v512[v509];
        if (v465 >= v42)
        {
          v466 = -(v509 * v41);
        }

        else
        {
          v466 = 0;
        }

        v467 = &v465[v466];
        v468 = v21 + 16 * v466 + 16 * v509;
        if (v42)
        {
          v21 = v468;
          v456 = v467;
          v35 = v467;
        }

        else
        {
          v35 += v509;
        }

        _ZF = v513 == 1;
        v512 = v456;
        --v513;
        if (_ZF)
        {
          return;
        }
      }

    case 24:
      v86 = v39;
      v87 = -v40;
      v497 = -(v509 * v41);
      v88 = 16 * v39;
      while (1)
      {
        v89 = *v30;
        if (*v30)
        {
          v90 = vmulq_n_f32(*v35, v89 * 0.0039216);
          LODWORD(a11) = v90.i32[3];
          v91 = v22 ? *&v90.i32[3] : v89 * 0.0039216;
          if (v91 > 0.0)
          {
            break;
          }
        }

LABEL_106:
        v30 += v86;
        v97 = &v35[v86];
        if (v97 >= v21)
        {
          v98 = v87;
        }

        else
        {
          v98 = 0;
        }

        v35 = &v97[v98];
        v28 = (v28 + v88);
        if (!--v25)
        {
          v30 += v510;
          v28 += v511;
          v99 = v512;
          v100 = &v512[v509];
          v101 = v497;
          v25 = v507;
          if (v100 < v508)
          {
            v101 = 0;
          }

          v102 = &v100[v101];
          v103 = v21 + 16 * v101 + 16 * v509;
          if (v508)
          {
            v21 = v103;
            v99 = v102;
            v35 = v102;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v99;
          --v513;
          if (_ZF)
          {
            return;
          }
        }
      }

      LODWORD(a9) = v28->i32[3];
      if (v19)
      {
        v92 = v28->f32[3];
        if (*&a9 <= 0.0)
        {
          v28->i64[0] = v90.i64[0];
          v28->i32[2] = v90.i32[2];
LABEL_105:
          v28->f32[3] = v91;
          goto LABEL_106;
        }
      }

      else
      {
        v92 = 1.0;
      }

      v487 = v91;
      *&v93 = vextq_s8(v90, v90, 4uLL).u64[0];
      v483 = v93;
      LODWORD(v93) = v28->i32[3];
      v94 = PDAhuePDA(v28->f32[0], v28->f32[1], v28->f32[2], v93, v92, a9, *v90.i64, a11, *v90.i32, *&v483, *(&v483 + 1), *&v90.i32[3], v487);
      v19 = v514;
      v28->f32[0] = v94;
      v28->i32[1] = v95;
      v28->i32[2] = v96;
      goto LABEL_105;
    case 25:
      v68 = v39;
      v69 = -v40;
      v496 = -(v509 * v41);
      v70 = 16 * v39;
      while (1)
      {
        v71 = *v30;
        if (*v30)
        {
          v72 = vmulq_n_f32(*v35, v71 * 0.0039216);
          LODWORD(a11) = v72.i32[3];
          v73 = v22 ? *&v72.i32[3] : v71 * 0.0039216;
          if (v73 > 0.0)
          {
            break;
          }
        }

LABEL_82:
        v30 += v68;
        v79 = &v35[v68];
        if (v79 >= v21)
        {
          v80 = v69;
        }

        else
        {
          v80 = 0;
        }

        v35 = &v79[v80];
        v28 = (v28 + v70);
        if (!--v25)
        {
          v30 += v510;
          v28 += v511;
          v81 = v512;
          v82 = &v512[v509];
          v83 = v496;
          v25 = v507;
          if (v82 < v508)
          {
            v83 = 0;
          }

          v84 = &v82[v83];
          v85 = v21 + 16 * v83 + 16 * v509;
          if (v508)
          {
            v21 = v85;
            v81 = v84;
            v35 = v84;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v81;
          --v513;
          if (_ZF)
          {
            return;
          }
        }
      }

      LODWORD(a9) = v28->i32[3];
      if (v19)
      {
        v74 = v28->f32[3];
        if (*&a9 <= 0.0)
        {
          v28->i64[0] = v72.i64[0];
          v28->i32[2] = v72.i32[2];
LABEL_81:
          v28->f32[3] = v73;
          goto LABEL_82;
        }
      }

      else
      {
        v74 = 1.0;
      }

      v486 = v73;
      *&v75 = vextq_s8(v72, v72, 4uLL).u64[0];
      v482 = v75;
      LODWORD(v75) = v28->i32[3];
      v76 = PDAsaturationPDA(v28->f32[0], v28->f32[1], v28->f32[2], v75, v74, a9, *v72.i64, a11, *v72.i32, *&v482, *(&v482 + 1), *&v72.i32[3], v486);
      v19 = v514;
      v28->f32[0] = v76;
      v28->i32[1] = v77;
      v28->i32[2] = v78;
      goto LABEL_81;
    case 26:
      v115 = v39;
      v116 = -v40;
      v498 = -(v509 * v41);
      v117 = 16 * v39;
      while (1)
      {
        v118 = *v30;
        if (*v30)
        {
          v119 = vmulq_n_f32(*v35, v118 * 0.0039216);
          LODWORD(a7) = v119.i32[3];
          v120 = v22 ? v119.f32[3] : v118 * 0.0039216;
          if (v120 > 0.0)
          {
            break;
          }
        }

LABEL_198:
        v30 += v115;
        v124 = &v35[v115];
        if (v124 >= v21)
        {
          v125 = v116;
        }

        else
        {
          v125 = 0;
        }

        v35 = &v124[v125];
        v28 = (v28 + v117);
        if (!--v25)
        {
          v30 += v510;
          v28 += v511;
          v126 = v512;
          v127 = &v512[v509];
          v128 = v498;
          v25 = v507;
          if (v127 < v508)
          {
            v128 = 0;
          }

          v129 = &v127[v128];
          v130 = v21 + 16 * v128 + 16 * v509;
          if (v508)
          {
            v21 = v130;
            v126 = v129;
            v35 = v129;
          }

          else
          {
            v35 += v509;
          }

          _ZF = v513 == 1;
          v512 = v126;
          --v513;
          if (_ZF)
          {
            return;
          }
        }
      }

      LODWORD(a9) = v28->i32[3];
      if (v19)
      {
        LODWORD(a10) = v28->i32[3];
        if (*&a9 <= 0.0)
        {
          v28->i64[0] = v119.i64[0];
          v28->i32[2] = v119.i32[2];
LABEL_197:
          v28->f32[3] = v120;
          goto LABEL_198;
        }
      }

      else
      {
        LODWORD(a10) = 1.0;
      }

      LODWORD(a11) = v28->i32[2];
      v121 = PDAluminosityPDA(v119.f32[0], v119.f32[1], v119.f32[2], a7, v120, a9, a10, a11, COERCE_FLOAT(v28->i64[0]), COERCE_FLOAT(HIDWORD(v28->i64[0])), *&a11, v28->f32[3], *&a10);
      v19 = v514;
      v120 = *&a7;
      v28->f32[0] = v121;
      v28->i32[1] = v122;
      v28->i32[2] = v123;
      goto LABEL_197;
    case 27:
      v49 = v39;
      v50 = -v40;
      v495 = -(v509 * v41);
      v51 = 16 * v39;
      break;
    default:
      return;
  }

  while (1)
  {
    v52 = *v30;
    if (*v30)
    {
      v53 = vmulq_n_f32(*v35, v52 * 0.0039216);
      LODWORD(a11) = v53.i32[3];
      v54 = v22 ? *&v53.i32[3] : v52 * 0.0039216;
      if (v54 > 0.0)
      {
        break;
      }
    }

LABEL_40:
    v30 += v49;
    v60 = &v35[v49];
    if (v60 >= v21)
    {
      v61 = v50;
    }

    else
    {
      v61 = 0;
    }

    v35 = &v60[v61];
    v28 = (v28 + v51);
    if (!--v25)
    {
      v30 += v510;
      v28 += v511;
      v62 = v512;
      v63 = &v512[v509];
      v64 = v495;
      v25 = v507;
      if (v63 < v508)
      {
        v64 = 0;
      }

      v65 = &v63[v64];
      v66 = v21 + 16 * v64 + 16 * v509;
      if (v508)
      {
        v21 = v66;
        v62 = v65;
        v35 = v65;
      }

      else
      {
        v35 += v509;
      }

      _ZF = v513 == 1;
      v512 = v62;
      --v513;
      if (_ZF)
      {
        return;
      }
    }
  }

  LODWORD(a9) = v28->i32[3];
  if (v19)
  {
    v55 = v28->f32[3];
    if (*&a9 <= 0.0)
    {
      v28->i64[0] = v53.i64[0];
      v28->i32[2] = v53.i32[2];
LABEL_39:
      v28->f32[3] = v54;
      goto LABEL_40;
    }
  }

  else
  {
    v55 = 1.0;
  }

  v485 = v54;
  *&v56 = vextq_s8(v53, v53, 4uLL).u64[0];
  v481 = v56;
  LODWORD(v56) = v28->i32[3];
  v57 = PDAluminosityPDA(v28->f32[0], v28->f32[1], v28->f32[2], v56, v55, a9, *v53.i64, a11, *v53.i32, *&v481, *(&v481 + 1), *&v53.i32[3], v485);
  v19 = v514;
  v28->f32[0] = v57;
  v28->i32[1] = v58;
  v28->i32[2] = v59;
  goto LABEL_39;
}

float32x4_t *composite_pixelmask<(CGCompositeOperation)2,_rgbaf_t>(float32x4_t *result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, char a15)
{
  v17 = 2 * a14;
  v18 = -(a6 * a4);
  v19 = 16 * v17;
  v20 = 16 * a14;
  __asm { FMOV            V0.4S, #1.0 }

  if ((a15 & 0x30) != 0)
  {
    v26.i64[0] = -1;
    v26.i64[1] = -1;
    v27 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v28 = (a8 - a3) >> 4;
      if (v28 >= a12)
      {
        v28 = a12;
      }

      v29 = v28;
      if (v28 < 2)
      {
        goto LABEL_37;
      }

      while (1)
      {
        v30 = *a10;
        if (!*a10)
        {
          v41 = &a10[v29];
          v42 = a10;
          do
          {
            v43 = v42++;
          }

          while (v42 <= v41 && (vminvq_u8(vceqzq_s8(*v43)) & 0x80) != 0);
          do
          {
            v44 = v43;
            v43 = (v43 + 4);
          }

          while (v43 <= v41 && !v44->i32[0]);
          if (v44 < v41)
          {
            while (!v44->i8[0])
            {
              v44 = (v44 + 1);
              if (v44 >= v41)
              {
                v44 = &a10[v29];
                break;
              }
            }
          }

          v45 = v44 - a10;
          v46 = (v44 - a10) * a14;
          a3 += 16 * v46;
          result += v46;
          a10 += v46;
          v29 -= v45;
          goto LABEL_34;
        }

        if (v30 != 0xFFFF)
        {
          break;
        }

        v31 = &a10[v29];
        v32 = a10;
        do
        {
          v33 = v32++;
        }

        while (v32 <= v31 && (vminvq_u8(vceqq_s8(*v33, v26)) & 0x80) != 0);
        do
        {
          v34 = v33;
          v33 = (v33 + 4);
        }

        while (v33 <= v31 && v34->i32[0] == -1);
        if (v34 < v31)
        {
          while (v34->u8[0] == 255)
          {
            v34 = (v34 + 1);
            if (v34 >= v31)
            {
              v34 = &a10[v29];
              break;
            }
          }
        }

        v35 = v34 - a10;
        v36 = v34 - a10;
        do
        {
          v37 = *(a3 + 16);
          v38 = vdupq_laneq_s32(v37, 3);
          v39 = vdupq_laneq_s32(*a3, 3);
          v40 = vbslq_s8(vcgtzq_f32(v38), vaddq_f32(v37, vmlsq_f32(result[1], vmaxnmq_f32(vminnmq_f32(v38, _Q0), 0), result[1])), result[1]);
          *result = vbslq_s8(vcgtzq_f32(v39), vaddq_f32(*a3, vmlsq_f32(*result, vmaxnmq_f32(vminnmq_f32(v39, _Q0), 0), *result)), *result);
          result[1] = v40;
          a10 += v17;
          v36 -= 2;
          result = (result + v19);
          a3 += v19;
        }

        while (v36 > 1);
        v29 = v29 - v35 + v36;
LABEL_34:
        if (v29 <= 1)
        {
          goto LABEL_37;
        }
      }

      v47 = 0;
      while (1)
      {
        v48 = (result + v47);
        v49 = vmulq_f32(*(a3 + v47), vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v30) & 0xFF00FF00FF00FFLL))), v27));
        v50 = vmulq_f32(*(a3 + v47 + 16), vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v30)) & 0xFF00FF00FF00FFLL))), v27));
        v51 = vdupq_laneq_s32(v50, 3);
        v52 = vdupq_laneq_s32(v49, 3);
        v53 = vbslq_s8(vcgtzq_f32(v51), vaddq_f32(v50, vmlsq_f32(*(result + v47 + 16), vmaxnmq_f32(vminnmq_f32(v51, _Q0), 0), *(result + v47 + 16))), *(&result[1] + v47));
        *v48 = vbslq_s8(vcgtzq_f32(v52), vaddq_f32(v49, vmlsq_f32(*(result + v47), vmaxnmq_f32(vminnmq_f32(v52, _Q0), 0), *(result + v47))), *(result + v47));
        v48[1] = v53;
        a10 += v17;
        v29 -= 2;
        if (v29 < 2)
        {
          break;
        }

        LOWORD(v30) = *a10;
        v47 += v19;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v47);
          a3 += v47;
          goto LABEL_34;
        }
      }

      result = (result + v19 + v47);
      a3 += v19 + v47;
LABEL_37:
      for (i = a12 - v28 + v29; i; --i)
      {
        if (*a10)
        {
          v55 = vmulq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v27), *a3);
          v56 = vdupq_laneq_s32(v55, 3);
          *result = vbslq_s8(vcgtzq_f32(v56), vaddq_f32(v55, vmlsq_f32(*result, vmaxnmq_f32(vminnmq_f32(v56, _Q0), 0), *result)), *result);
        }

        v57 = a3 + 16 * a14;
        a10 += a14;
        if (v57 >= a8)
        {
          v58 = -a7;
        }

        else
        {
          v58 = 0;
        }

        a3 = v57 + 16 * v58;
        result = (result + v20);
      }

      a10 += a11;
      result += a2;
      v59 = a5 + 16 * a4;
      if (v59 >= a9)
      {
        v60 = v18;
      }

      else
      {
        v60 = 0;
      }

      v61 = v59 + 16 * v60;
      v62 = a8 + 16 * v60 + 16 * a4;
      a3 += 16 * a4;
      if (a9)
      {
        a3 = v61;
        a8 = v62;
        a5 = v61;
      }

      _VF = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ _VF | (a13 == 0))
      {
        return result;
      }
    }
  }

  v63.i64[0] = -1;
  v63.i64[1] = -1;
  v64 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v65 = (a8 - a3) >> 4;
    if (v65 >= a12)
    {
      v65 = a12;
    }

    v66 = v65;
    if (v65 < 2)
    {
      goto LABEL_87;
    }

    while (1)
    {
      v67 = *a10;
      if (!*a10)
      {
        v80 = &a10[v66];
        v81 = a10;
        do
        {
          v82 = v81++;
        }

        while (v81 <= v80 && (vminvq_u8(vceqzq_s8(*v82)) & 0x80) != 0);
        do
        {
          v83 = v82;
          v82 = (v82 + 4);
        }

        while (v82 <= v80 && !v83->i32[0]);
        if (v83 < v80)
        {
          while (!v83->i8[0])
          {
            v83 = (v83 + 1);
            if (v83 >= v80)
            {
              v83 = &a10[v66];
              break;
            }
          }
        }

        v84 = v83 - a10;
        v85 = (v83 - a10) * a14;
        a3 += 16 * v85;
        result += v85;
        a10 += v85;
        v66 -= v84;
        goto LABEL_84;
      }

      if (v67 != 0xFFFF)
      {
        break;
      }

      v68 = &a10[v66];
      v69 = a10;
      do
      {
        v70 = v69++;
      }

      while (v69 <= v68 && (vminvq_u8(vceqq_s8(*v70, v63)) & 0x80) != 0);
      do
      {
        v71 = v70;
        v70 = (v70 + 4);
      }

      while (v70 <= v68 && v71->i32[0] == -1);
      if (v71 < v68)
      {
        while (v71->u8[0] == 255)
        {
          v71 = (v71 + 1);
          if (v71 >= v68)
          {
            v71 = &a10[v66];
            break;
          }
        }
      }

      v72 = v71 - a10;
      v73 = v71 - a10;
      do
      {
        v74 = vrev32q_s8(*(a3 + 16));
        v75 = vrev32q_s8(*a3);
        v76 = vrev32q_s8(result[1]);
        v77 = vdupq_laneq_s32(v75, 3);
        v78 = vdupq_laneq_s32(v74, 3);
        v79 = vrev32q_s8(*result);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(v77), vaddq_f32(vmlsq_f32(v79, vmaxnmq_f32(vminnmq_f32(v77, _Q0), 0), v79), v75), v79));
        result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(v78), vaddq_f32(vmlsq_f32(v76, vmaxnmq_f32(vminnmq_f32(v78, _Q0), 0), v76), v74), v76));
        a10 += v17;
        v73 -= 2;
        result = (result + v19);
        a3 += v19;
      }

      while (v73 > 1);
      v66 = v66 - v72 + v73;
LABEL_84:
      if (v66 <= 1)
      {
        goto LABEL_87;
      }
    }

    v86 = 0;
    while (1)
    {
      v87 = (result + v86);
      v88 = vrev32q_s8(*(&result[1] + v86));
      v89 = vrev32q_s8(*(result + v86));
      v90 = vmulq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v67) & 0xFF00FF00FF00FFLL))), v64), vrev32q_s8(*(a3 + v86)));
      v91 = vdupq_laneq_s32(v90, 3);
      v92 = vmulq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v67)) & 0xFF00FF00FF00FFLL))), v64), vrev32q_s8(*(a3 + v86 + 16)));
      v93 = vdupq_laneq_s32(v92, 3);
      *v87 = vrev32q_s8(vbslq_s8(vcgtzq_f32(v91), vaddq_f32(v90, vmlsq_f32(v89, vmaxnmq_f32(vminnmq_f32(v91, _Q0), 0), v89)), v89));
      v87[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(v93), vaddq_f32(v92, vmlsq_f32(v88, vmaxnmq_f32(vminnmq_f32(v93, _Q0), 0), v88)), v88));
      a10 += v17;
      v66 -= 2;
      if (v66 < 2)
      {
        break;
      }

      LOWORD(v67) = *a10;
      v86 += v19;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v86);
        a3 += v86;
        goto LABEL_84;
      }
    }

    result = (result + v19 + v86);
    a3 += v19 + v86;
LABEL_87:
    for (j = a12 - v65 + v66; j; --j)
    {
      if (*a10)
      {
        v95 = vrev32q_s8(*result);
        v96 = vmulq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v64), vrev32q_s8(*a3));
        v97 = vdupq_laneq_s32(v96, 3);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(v97), vaddq_f32(v96, vmlsq_f32(v95, vmaxnmq_f32(vminnmq_f32(v97, _Q0), 0), v95)), v95));
      }

      v98 = a3 + 16 * a14;
      a10 += a14;
      if (v98 >= a8)
      {
        v99 = -a7;
      }

      else
      {
        v99 = 0;
      }

      a3 = v98 + 16 * v99;
      result = (result + v20);
    }

    a10 += a11;
    result += a2;
    v100 = a5 + 16 * a4;
    if (v100 >= a9)
    {
      v101 = v18;
    }

    else
    {
      v101 = 0;
    }

    v102 = v100 + 16 * v101;
    v103 = a8 + 16 * v101 + 16 * a4;
    a3 += 16 * a4;
    if (a9)
    {
      a3 = v102;
      a8 = v103;
      a5 = v102;
    }

    _VF = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ _VF | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int32x4_t *composite_pixelmask<(CGCompositeOperation)6,_rgbaf_t>(int32x4_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, char a16)
{
  if (a15)
  {
    v18 = 0;
  }

  else
  {
    v18 = -1;
  }

  v19.i64[0] = 0;
  v19.i32[2] = 0;
  v19.i32[3] = v18;
  v20 = vmvnq_s8(v19);
  v21 = vandq_s8(vdupq_n_s32(v18), xmmword_18439CB00);
  v22 = 2 * a14;
  v23 = -(a6 * a4);
  v24 = 16 * v22;
  v25 = 16 * a14;
  __asm { FMOV            V3.4S, #1.0 }

  if ((a16 & 0x30) != 0)
  {
    v31.i64[0] = -1;
    v31.i64[1] = -1;
    v32 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v33 = (a8 - a3) >> 4;
      if (v33 >= a12)
      {
        v33 = a12;
      }

      v34 = v33;
      if (v33 < 2)
      {
        goto LABEL_40;
      }

      while (1)
      {
        v35 = *a10;
        if (!*a10)
        {
          v47 = &a10[v34];
          v48 = a10;
          do
          {
            v49 = v48++;
          }

          while (v48 <= v47 && (vminvq_u8(vceqzq_s8(*v49)) & 0x80) != 0);
          do
          {
            v50 = v49;
            v49 = (v49 + 4);
          }

          while (v49 <= v47 && !v50->i32[0]);
          if (v50 < v47)
          {
            while (!v50->i8[0])
            {
              v50 = (v50 + 1);
              if (v50 >= v47)
              {
                v50 = &a10[v34];
                break;
              }
            }
          }

          v51 = v50 - a10;
          v52 = (v50 - a10) * a14;
          a3 += v52;
          result += v52;
          a10 += v52;
          v34 -= v51;
          goto LABEL_37;
        }

        if (v35 != 0xFFFF)
        {
          break;
        }

        v36 = &a10[v34];
        v37 = a10;
        do
        {
          v38 = v37++;
        }

        while (v37 <= v36 && (vminvq_u8(vceqq_s8(*v38, v31)) & 0x80) != 0);
        do
        {
          v39 = v38;
          v38 = (v38 + 4);
        }

        while (v38 <= v36 && v39->i32[0] == -1);
        if (v39 < v36)
        {
          while (v39->u8[0] == 255)
          {
            v39 = (v39 + 1);
            if (v39 >= v36)
            {
              v39 = &a10[v34];
              break;
            }
          }
        }

        v40 = v39 - a10;
        v41 = v39 - a10;
        do
        {
          v42 = result[1];
          v43 = vorrq_s8(vandq_s8(*a3, v20), v21);
          v44 = vdupq_laneq_s32(v42, 3);
          v45 = vorrq_s8(vandq_s8(a3[1], v20), v21);
          v46 = vdupq_laneq_s32(*result, 3);
          *result = vbslq_s8(vcgtq_f32(v46, _Q3), *result, vaddq_f32(vandq_s8(*result, vcgtzq_f32(v46)), vmlsq_f32(v43, vmaxnmq_f32(v46, 0), v43)));
          result[1] = vbslq_s8(vcgtq_f32(v44, _Q3), v42, vaddq_f32(vandq_s8(v42, vcgtzq_f32(v44)), vmlsq_f32(v45, vmaxnmq_f32(v44, 0), v45)));
          a10 += v22;
          v41 -= 2;
          result = (result + v24);
          a3 = (a3 + v24);
        }

        while (v41 > 1);
        v34 = v34 - v40 + v41;
LABEL_37:
        if (v34 <= 1)
        {
          goto LABEL_40;
        }
      }

      v53 = 0;
      while (1)
      {
        v54 = &result->i8[v53];
        v55 = *(result + v53);
        v56 = *(&result[1] + v53);
        v57 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v35) & 0xFF00FF00FF00FFLL))), v32);
        v58 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v35)) & 0xFF00FF00FF00FFLL))), v32);
        v59 = vorrq_s8(vandq_s8(*(a3 + v53), v20), v21);
        v60 = vorrq_s8(vandq_s8(*(&a3[1] + v53), v20), v21);
        v61 = vdupq_laneq_s32(v56, 3);
        v62 = vdupq_laneq_s32(v55, 3);
        *v54 = vbslq_s8(vorrq_s8(vceqzq_f32(v57), vcgtq_f32(v62, _Q3)), v55, vmlaq_f32(vandq_s8(v55, vcgtzq_f32(v62)), v57, vmlsq_f32(v59, vmaxnmq_f32(v62, 0), v59)));
        v54[1] = vbslq_s8(vorrq_s8(vceqzq_f32(v58), vcgtq_f32(v61, _Q3)), v56, vmlaq_f32(vandq_s8(v56, vcgtzq_f32(v61)), v58, vmlsq_f32(v60, vmaxnmq_f32(v61, 0), v60)));
        a10 += v22;
        v34 -= 2;
        if (v34 < 2)
        {
          break;
        }

        LOWORD(v35) = *a10;
        v53 += v24;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v53);
          a3 = (a3 + v53);
          goto LABEL_37;
        }
      }

      result = (result + v24 + v53);
      a3 = (a3 + v24 + v53);
LABEL_40:
      for (i = a12 - v33 + v34; i; --i)
      {
        if (*a10)
        {
          v64 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v32);
          v65 = vorrq_s8(vandq_s8(*a3, v20), v21);
          v66 = vdupq_laneq_s32(*result, 3);
          *result = vbslq_s8(vorrq_s8(vcgtq_f32(v66, _Q3), vceqzq_f32(v64)), *result, vmlaq_f32(vandq_s8(*result, vcgtzq_f32(v66)), v64, vmlsq_f32(v65, vmaxnmq_f32(v66, 0), v65)));
        }

        v67 = &a3[a14];
        a10 += a14;
        if (v67 >= a8)
        {
          v68 = -a7;
        }

        else
        {
          v68 = 0;
        }

        a3 = &v67[v68];
        result = (result + v25);
      }

      a10 += a11;
      result += a2;
      v69 = &a5[a4];
      if (v69 >= a9)
      {
        v70 = v23;
      }

      else
      {
        v70 = 0;
      }

      v71 = &v69[v70];
      v72 = a8 + 16 * v70 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v71;
        a8 = v72;
        a5 = v71;
      }

      _VF = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ _VF | (a13 == 0))
      {
        return result;
      }
    }
  }

  v73.i64[0] = -1;
  v73.i64[1] = -1;
  v74 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v75 = (a8 - a3) >> 4;
    if (v75 >= a12)
    {
      v75 = a12;
    }

    v76 = v75;
    if (v75 < 2)
    {
      goto LABEL_90;
    }

    while (1)
    {
      v77 = *a10;
      if (!*a10)
      {
        v90 = &a10[v76];
        v91 = a10;
        do
        {
          v92 = v91++;
        }

        while (v91 <= v90 && (vminvq_u8(vceqzq_s8(*v92)) & 0x80) != 0);
        do
        {
          v93 = v92;
          v92 = (v92 + 4);
        }

        while (v92 <= v90 && !v93->i32[0]);
        if (v93 < v90)
        {
          while (!v93->i8[0])
          {
            v93 = (v93 + 1);
            if (v93 >= v90)
            {
              v93 = &a10[v76];
              break;
            }
          }
        }

        v94 = v93 - a10;
        v95 = (v93 - a10) * a14;
        a3 += v95;
        result += v95;
        a10 += v95;
        v76 -= v94;
        goto LABEL_87;
      }

      if (v77 != 0xFFFF)
      {
        break;
      }

      v78 = &a10[v76];
      v79 = a10;
      do
      {
        v80 = v79++;
      }

      while (v79 <= v78 && (vminvq_u8(vceqq_s8(*v80, v73)) & 0x80) != 0);
      do
      {
        v81 = v80;
        v80 = (v80 + 4);
      }

      while (v80 <= v78 && v81->i32[0] == -1);
      if (v81 < v78)
      {
        while (v81->u8[0] == 255)
        {
          v81 = (v81 + 1);
          if (v81 >= v78)
          {
            v81 = &a10[v76];
            break;
          }
        }
      }

      v82 = v81 - a10;
      v83 = v81 - a10;
      do
      {
        v84 = vrev32q_s8(result[1]);
        v85 = vrev32q_s8(*result);
        v86 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v20), v21);
        v87 = vdupq_laneq_s32(v85, 3);
        v88 = vdupq_laneq_s32(v84, 3);
        v89 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v21);
        *result = vrev32q_s8(vbslq_s8(vcgtq_f32(v87, _Q3), v85, vaddq_f32(vandq_s8(v85, vcgtzq_f32(v87)), vmlsq_f32(v89, vmaxnmq_f32(v87, 0), v89))));
        result[1] = vrev32q_s8(vbslq_s8(vcgtq_f32(v88, _Q3), v84, vaddq_f32(vandq_s8(v84, vcgtzq_f32(v88)), vmlsq_f32(v86, vmaxnmq_f32(v88, 0), v86))));
        a10 += v22;
        v83 -= 2;
        result = (result + v24);
        a3 = (a3 + v24);
      }

      while (v83 > 1);
      v76 = v76 - v82 + v83;
LABEL_87:
      if (v76 <= 1)
      {
        goto LABEL_90;
      }
    }

    v96 = 0;
    while (1)
    {
      v97 = &result->i8[v96];
      v98 = vrev32q_s8(*(&result[1] + v96));
      v99 = vrev32q_s8(*(result + v96));
      v100 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v77)) & 0xFF00FF00FF00FFLL))), v74);
      v101 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v77) & 0xFF00FF00FF00FFLL))), v74);
      v102 = vorrq_s8(vandq_s8(vrev32q_s8(*(&a3[1] + v96)), v20), v21);
      v103 = vorrq_s8(vandq_s8(vrev32q_s8(*(a3 + v96)), v20), v21);
      v104 = vdupq_laneq_s32(v99, 3);
      v105 = vdupq_laneq_s32(v98, 3);
      *v97 = vrev32q_s8(vbslq_s8(vorrq_s8(vceqzq_f32(v101), vcgtq_f32(v104, _Q3)), v99, vmlaq_f32(vandq_s8(v99, vcgtzq_f32(v104)), v101, vmlsq_f32(v103, vmaxnmq_f32(v104, 0), v103))));
      v97[1] = vrev32q_s8(vbslq_s8(vorrq_s8(vceqzq_f32(v100), vcgtq_f32(v105, _Q3)), v98, vmlaq_f32(vandq_s8(v98, vcgtzq_f32(v105)), v100, vmlsq_f32(v102, vmaxnmq_f32(v105, 0), v102))));
      a10 += v22;
      v76 -= 2;
      if (v76 < 2)
      {
        break;
      }

      LOWORD(v77) = *a10;
      v96 += v24;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v96);
        a3 = (a3 + v96);
        goto LABEL_87;
      }
    }

    result = (result + v24 + v96);
    a3 = (a3 + v24 + v96);
LABEL_90:
    for (j = a12 - v75 + v76; j; --j)
    {
      if (*a10)
      {
        v107 = vrev32q_s8(*result);
        v108 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v74);
        v109 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v21);
        v110 = vdupq_laneq_s32(v107, 3);
        *result = vrev32q_s8(vbslq_s8(vorrq_s8(vcgtq_f32(v110, _Q3), vceqzq_f32(v108)), v107, vmlaq_f32(vandq_s8(v107, vcgtzq_f32(v110)), v108, vmlsq_f32(v109, vmaxnmq_f32(v110, 0), v109))));
      }

      v111 = &a3[a14];
      a10 += a14;
      if (v111 >= a8)
      {
        v112 = -a7;
      }

      else
      {
        v112 = 0;
      }

      a3 = &v111[v112];
      result = (result + v25);
    }

    a10 += a11;
    result += a2;
    v113 = &a5[a4];
    if (v113 >= a9)
    {
      v114 = v23;
    }

    else
    {
      v114 = 0;
    }

    v115 = &v113[v114];
    v116 = a8 + 16 * v114 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v115;
      a8 = v116;
      a5 = v115;
    }

    _VF = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ _VF | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

float32x4_t *composite_pixelmask<(CGCompositeOperation)3,_rgbaf_t>(float32x4_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, char a16)
{
  if (a15)
  {
    v18 = 0;
  }

  else
  {
    v18 = -1;
  }

  v19.i64[0] = 0;
  v19.i32[2] = 0;
  v19.i32[3] = v18;
  v20 = vmvnq_s8(v19);
  v21 = vandq_s8(vdupq_n_s32(v18), xmmword_18439CB00);
  v22 = 2 * a14;
  v23 = -(a6 * a4);
  v24 = 16 * v22;
  v25 = 16 * a14;
  if ((a16 & 0x30) != 0)
  {
    v26.i64[0] = -1;
    v26.i64[1] = -1;
    v27 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v28 = (a8 - a3) >> 4;
      if (v28 >= a12)
      {
        v28 = a12;
      }

      v29 = v28;
      if (v28 < 2)
      {
        goto LABEL_40;
      }

      while (1)
      {
        v30 = *a10;
        if (!*a10)
        {
          v38 = &a10[v29];
          v39 = a10;
          do
          {
            v40 = v39++;
          }

          while (v39 <= v38 && (vminvq_u8(vceqzq_s8(*v40)) & 0x80) != 0);
          do
          {
            v41 = v40;
            v40 = (v40 + 4);
          }

          while (v40 <= v38 && !v41->i32[0]);
          if (v41 < v38)
          {
            while (!v41->i8[0])
            {
              v41 = (v41 + 1);
              if (v41 >= v38)
              {
                v41 = &a10[v29];
                break;
              }
            }
          }

          v42 = v41 - a10;
          v43 = (v41 - a10) * a14;
          a3 += v43;
          result += v43;
          a10 += v43;
          v29 -= v42;
          goto LABEL_37;
        }

        if (v30 != 0xFFFF)
        {
          break;
        }

        v31 = &a10[v29];
        v32 = a10;
        do
        {
          v33 = v32++;
        }

        while (v32 <= v31 && (vminvq_u8(vceqq_s8(*v33, v26)) & 0x80) != 0);
        do
        {
          v34 = v33;
          v33 = (v33 + 4);
        }

        while (v33 <= v31 && v34->i32[0] == -1);
        if (v34 < v31)
        {
          while (v34->u8[0] == 255)
          {
            v34 = (v34 + 1);
            if (v34 >= v31)
            {
              v34 = &a10[v29];
              break;
            }
          }
        }

        v35 = v34 - a10;
        v36 = v34 - a10;
        do
        {
          v37 = vmlaq_laneq_f32(vsubq_f32(result[1], result[1]), vorrq_s8(vandq_s8(a3[1], v20), v21), result[1], 3);
          *result = vmlaq_laneq_f32(vsubq_f32(*result, *result), vorrq_s8(vandq_s8(*a3, v20), v21), *result, 3);
          result[1] = v37;
          a10 += v22;
          v36 -= 2;
          result = (result + v24);
          a3 = (a3 + v24);
        }

        while (v36 > 1);
        v29 = v29 - v35 + v36;
LABEL_37:
        if (v29 <= 1)
        {
          goto LABEL_40;
        }
      }

      v44 = 0;
      while (1)
      {
        v45 = (result + v44);
        v46 = *(result + v44);
        v47 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v30)) & 0xFF00FF00FF00FFLL))), v27);
        v48 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v30) & 0xFF00FF00FF00FFLL))), v27);
        v49 = vmulq_f32(v48, vorrq_s8(vandq_s8(*(a3 + v44), v20), v21));
        v50 = vmlsq_f32(v46, v48, v46);
        v51 = vmlaq_laneq_f32(vmlsq_f32(*(result + v44 + 16), v47, *(result + v44 + 16)), vmulq_f32(v47, vorrq_s8(vandq_s8(*(&a3[1] + v44), v20), v21)), *(result + v44 + 16), 3);
        *v45 = vmlaq_laneq_f32(v50, v49, v46, 3);
        v45[1] = v51;
        a10 += v22;
        v29 -= 2;
        if (v29 < 2)
        {
          break;
        }

        LOWORD(v30) = *a10;
        v44 += v24;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v44);
          a3 = (a3 + v44);
          goto LABEL_37;
        }
      }

      result = (result + v24 + v44);
      a3 = (a3 + v24 + v44);
LABEL_40:
      for (i = a12 - v28 + v29; i; --i)
      {
        if (*a10)
        {
          v53 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v27);
          *result = vmlaq_laneq_f32(vmlsq_f32(*result, v53, *result), vmulq_f32(v53, vorrq_s8(vandq_s8(*a3, v20), v21)), *result, 3);
        }

        v54 = &a3[a14];
        a10 += a14;
        if (v54 >= a8)
        {
          v55 = -a7;
        }

        else
        {
          v55 = 0;
        }

        a3 = &v54[v55];
        result = (result + v25);
      }

      a10 += a11;
      result += a2;
      v56 = &a5[a4];
      if (v56 >= a9)
      {
        v57 = v23;
      }

      else
      {
        v57 = 0;
      }

      v58 = &v56[v57];
      v59 = a8 + 16 * v57 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v58;
        a8 = v59;
        a5 = v58;
      }

      v60 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v60 | (a13 == 0))
      {
        return result;
      }
    }
  }

  v61.i64[0] = -1;
  v61.i64[1] = -1;
  v62 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v63 = (a8 - a3) >> 4;
    if (v63 >= a12)
    {
      v63 = a12;
    }

    v64 = v63;
    if (v63 < 2)
    {
      goto LABEL_90;
    }

    while (1)
    {
      v65 = *a10;
      if (!*a10)
      {
        v75 = &a10[v64];
        v76 = a10;
        do
        {
          v77 = v76++;
        }

        while (v76 <= v75 && (vminvq_u8(vceqzq_s8(*v77)) & 0x80) != 0);
        do
        {
          v78 = v77;
          v77 = (v77 + 4);
        }

        while (v77 <= v75 && !v78->i32[0]);
        if (v78 < v75)
        {
          while (!v78->i8[0])
          {
            v78 = (v78 + 1);
            if (v78 >= v75)
            {
              v78 = &a10[v64];
              break;
            }
          }
        }

        v79 = v78 - a10;
        v80 = (v78 - a10) * a14;
        a3 += v80;
        result += v80;
        a10 += v80;
        v64 -= v79;
        goto LABEL_87;
      }

      if (v65 != 0xFFFF)
      {
        break;
      }

      v66 = &a10[v64];
      v67 = a10;
      do
      {
        v68 = v67++;
      }

      while (v67 <= v66 && (vminvq_u8(vceqq_s8(*v68, v61)) & 0x80) != 0);
      do
      {
        v69 = v68;
        v68 = (v68 + 4);
      }

      while (v68 <= v66 && v69->i32[0] == -1);
      if (v69 < v66)
      {
        while (v69->u8[0] == 255)
        {
          v69 = (v69 + 1);
          if (v69 >= v66)
          {
            v69 = &a10[v64];
            break;
          }
        }
      }

      v70 = v69 - a10;
      v71 = v69 - a10;
      do
      {
        v72 = vrev32q_s8(*result);
        v73 = vrev32q_s8(result[1]);
        v74 = vrev32q_s8(vmlaq_laneq_f32(vsubq_f32(v73, v73), vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v20), v21), v73, 3));
        *result = vrev32q_s8(vmlaq_laneq_f32(vsubq_f32(v72, v72), vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v21), v72, 3));
        result[1] = v74;
        a10 += v22;
        v71 -= 2;
        result = (result + v24);
        a3 = (a3 + v24);
      }

      while (v71 > 1);
      v64 = v64 - v70 + v71;
LABEL_87:
      if (v64 <= 1)
      {
        goto LABEL_90;
      }
    }

    v81 = 0;
    while (1)
    {
      v82 = (result + v81);
      v83 = vrev32q_s8(*(result + v81));
      v84 = vrev32q_s8(*(&result[1] + v81));
      v85 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v65) & 0xFF00FF00FF00FFLL))), v62);
      v86 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v65)) & 0xFF00FF00FF00FFLL))), v62);
      v87 = vmulq_f32(v86, vorrq_s8(vandq_s8(vrev32q_s8(*(&a3[1] + v81)), v20), v21));
      *v82 = vrev32q_s8(vmlaq_laneq_f32(vmlsq_f32(v83, v85, v83), vmulq_f32(v85, vorrq_s8(vandq_s8(vrev32q_s8(*(a3 + v81)), v20), v21)), v83, 3));
      v82[1] = vrev32q_s8(vmlaq_laneq_f32(vmlsq_f32(v84, v86, v84), v87, v84, 3));
      a10 += v22;
      v64 -= 2;
      if (v64 < 2)
      {
        break;
      }

      LOWORD(v65) = *a10;
      v81 += v24;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v81);
        a3 = (a3 + v81);
        goto LABEL_87;
      }
    }

    result = (result + v24 + v81);
    a3 = (a3 + v24 + v81);
LABEL_90:
    for (j = a12 - v63 + v64; j; --j)
    {
      if (*a10)
      {
        v89 = vrev32q_s8(*result);
        v90 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v62);
        *result = vrev32q_s8(vmlaq_laneq_f32(vmlsq_f32(v89, v90, v89), vmulq_f32(v90, vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v21)), v89, 3));
      }

      v91 = &a3[a14];
      a10 += a14;
      if (v91 >= a8)
      {
        v92 = -a7;
      }

      else
      {
        v92 = 0;
      }

      a3 = &v91[v92];
      result = (result + v25);
    }

    a10 += a11;
    result += a2;
    v93 = &a5[a4];
    if (v93 >= a9)
    {
      v94 = v23;
    }

    else
    {
      v94 = 0;
    }

    v95 = &v93[v94];
    v96 = a8 + 16 * v94 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v95;
      a8 = v96;
      a5 = v95;
    }

    v60 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v60 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

float32x4_t *composite_pixelmask<(CGCompositeOperation)7,_rgbaf_t>(float32x4_t *result, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, char a15)
{
  v17 = 2 * a14;
  v18 = -(a6 * a4);
  v19 = 16 * v17;
  v20 = 16 * a14;
  __asm
  {
    FMOV            V0.4S, #-1.0
    FMOV            V1.4S, #1.0
  }

  if ((a15 & 0x30) != 0)
  {
    v27.i64[0] = -1;
    v27.i64[1] = -1;
    v28 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v29 = (a8 - a3) >> 4;
      if (v29 >= a12)
      {
        v29 = a12;
      }

      v30 = v29;
      if (v29 < 2)
      {
        goto LABEL_37;
      }

      while (1)
      {
        v31 = *a10;
        if (!*a10)
        {
          v39 = &a10[v30];
          v40 = a10;
          do
          {
            v41 = v40++;
          }

          while (v40 <= v39 && (vminvq_u8(vceqzq_s8(*v41)) & 0x80) != 0);
          do
          {
            v42 = v41;
            v41 = (v41 + 4);
          }

          while (v41 <= v39 && !v42->i32[0]);
          if (v42 < v39)
          {
            while (!v42->i8[0])
            {
              v42 = (v42 + 1);
              if (v42 >= v39)
              {
                v42 = &a10[v30];
                break;
              }
            }
          }

          v43 = v42 - a10;
          v44 = (v42 - a10) * a14;
          a3 += v44;
          result += v44;
          a10 += v44;
          v30 -= v43;
          goto LABEL_34;
        }

        if (v31 != 0xFFFF)
        {
          break;
        }

        v32 = &a10[v30];
        v33 = a10;
        do
        {
          v34 = v33++;
        }

        while (v33 <= v32 && (vminvq_u8(vceqq_s8(*v34, v27)) & 0x80) != 0);
        do
        {
          v35 = v34;
          v34 = (v34 + 4);
        }

        while (v34 <= v32 && v35->i32[0] == -1);
        if (v35 < v32)
        {
          while (v35->u8[0] == 255)
          {
            v35 = (v35 + 1);
            if (v35 >= v32)
            {
              v35 = &a10[v30];
              break;
            }
          }
        }

        v36 = v35 - a10;
        v37 = v35 - a10;
        do
        {
          v38 = vmlsq_f32(result[1], vmlaq_laneq_f32(_Q1, _Q0, a3[1], 3), result[1]);
          *result = vmlsq_f32(*result, vmlaq_laneq_f32(_Q1, _Q0, *a3, 3), *result);
          result[1] = v38;
          a10 += v17;
          v37 -= 2;
          result = (result + v19);
          a3 = (a3 + v19);
        }

        while (v37 > 1);
        v30 = v30 - v36 + v37;
LABEL_34:
        if (v30 <= 1)
        {
          goto LABEL_37;
        }
      }

      v45 = 0;
      while (1)
      {
        v46 = (result + v45);
        v47 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v31)) & 0xFF00FF00FF00FFLL))), v28);
        v48 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v31) & 0xFF00FF00FF00FFLL))), v28);
        v49 = vmlsq_f32(*(result + v45 + 16), vmlsq_laneq_f32(v47, v47, *(a3 + v45 + 16), 3), *(result + v45 + 16));
        *v46 = vmlsq_f32(*(result + v45), vmlsq_laneq_f32(v48, v48, *(a3 + v45), 3), *(result + v45));
        v46[1] = v49;
        a10 += v17;
        v30 -= 2;
        if (v30 < 2)
        {
          break;
        }

        LOWORD(v31) = *a10;
        v45 += v19;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v45);
          a3 = (a3 + v45);
          goto LABEL_34;
        }
      }

      result = (result + v19 + v45);
      a3 = (a3 + v19 + v45);
LABEL_37:
      for (i = a12 - v29 + v30; i; --i)
      {
        if (*a10)
        {
          v51 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v28);
          *result = vmlsq_f32(*result, vmlsq_laneq_f32(v51, v51, *a3, 3), *result);
        }

        v52 = &a3[a14];
        a10 += a14;
        if (v52 >= a8)
        {
          v53 = -a7;
        }

        else
        {
          v53 = 0;
        }

        a3 = &v52[v53];
        result = (result + v20);
      }

      a10 += a11;
      result += a2;
      v54 = &a5[a4];
      if (v54 >= a9)
      {
        v55 = v18;
      }

      else
      {
        v55 = 0;
      }

      v56 = &v54[v55];
      v57 = a8 + 16 * v55 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v56;
        a8 = v57;
        a5 = v56;
      }

      _VF = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ _VF | (a13 == 0))
      {
        return result;
      }
    }
  }

  v58.i64[0] = -1;
  v58.i64[1] = -1;
  v59 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v60 = (a8 - a3) >> 4;
    if (v60 >= a12)
    {
      v60 = a12;
    }

    v61 = v60;
    if (v60 < 2)
    {
      goto LABEL_87;
    }

    while (1)
    {
      v62 = *a10;
      if (!*a10)
      {
        v72 = &a10[v61];
        v73 = a10;
        do
        {
          v74 = v73++;
        }

        while (v73 <= v72 && (vminvq_u8(vceqzq_s8(*v74)) & 0x80) != 0);
        do
        {
          v75 = v74;
          v74 = (v74 + 4);
        }

        while (v74 <= v72 && !v75->i32[0]);
        if (v75 < v72)
        {
          while (!v75->i8[0])
          {
            v75 = (v75 + 1);
            if (v75 >= v72)
            {
              v75 = &a10[v61];
              break;
            }
          }
        }

        v76 = v75 - a10;
        v77 = (v75 - a10) * a14;
        a3 += v77;
        result += v77;
        a10 += v77;
        v61 -= v76;
        goto LABEL_84;
      }

      if (v62 != 0xFFFF)
      {
        break;
      }

      v63 = &a10[v61];
      v64 = a10;
      do
      {
        v65 = v64++;
      }

      while (v64 <= v63 && (vminvq_u8(vceqq_s8(*v65, v58)) & 0x80) != 0);
      do
      {
        v66 = v65;
        v65 = (v65 + 4);
      }

      while (v65 <= v63 && v66->i32[0] == -1);
      if (v66 < v63)
      {
        while (v66->u8[0] == 255)
        {
          v66 = (v66 + 1);
          if (v66 >= v63)
          {
            v66 = &a10[v61];
            break;
          }
        }
      }

      v67 = v66 - a10;
      v68 = v66 - a10;
      do
      {
        v69 = vrev32q_s8(result[1]);
        v70 = vrev32q_s8(*result);
        v71 = vrev32q_s8(vmlsq_f32(v69, vmlaq_laneq_f32(_Q1, _Q0, vrev32q_s8(a3[1]), 3), v69));
        *result = vrev32q_s8(vmlsq_f32(v70, vmlaq_laneq_f32(_Q1, _Q0, vrev32q_s8(*a3), 3), v70));
        result[1] = v71;
        a10 += v17;
        v68 -= 2;
        result = (result + v19);
        a3 = (a3 + v19);
      }

      while (v68 > 1);
      v61 = v61 - v67 + v68;
LABEL_84:
      if (v61 <= 1)
      {
        goto LABEL_87;
      }
    }

    v78 = 0;
    while (1)
    {
      v79 = (result + v78);
      v80 = vrev32q_s8(*(&result[1] + v78));
      v81 = vrev32q_s8(*(result + v78));
      v82 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v62)) & 0xFF00FF00FF00FFLL))), v59);
      v83 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v62) & 0xFF00FF00FF00FFLL))), v59);
      v84 = vrev32q_s8(vmlsq_f32(v80, vmlsq_laneq_f32(v82, v82, vrev32q_s8(*(&a3[1] + v78)), 3), v80));
      *v79 = vrev32q_s8(vmlsq_f32(v81, vmlsq_laneq_f32(v83, v83, vrev32q_s8(*(a3 + v78)), 3), v81));
      v79[1] = v84;
      a10 += v17;
      v61 -= 2;
      if (v61 < 2)
      {
        break;
      }

      LOWORD(v62) = *a10;
      v78 += v19;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v78);
        a3 = (a3 + v78);
        goto LABEL_84;
      }
    }

    result = (result + v19 + v78);
    a3 = (a3 + v19 + v78);
LABEL_87:
    for (j = a12 - v60 + v61; j; --j)
    {
      if (*a10)
      {
        v86 = vrev32q_s8(*result);
        v87 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v59);
        *result = vrev32q_s8(vmlsq_f32(v86, vmlsq_laneq_f32(v87, v87, vrev32q_s8(*a3), 3), v86));
      }

      v88 = &a3[a14];
      a10 += a14;
      if (v88 >= a8)
      {
        v89 = -a7;
      }

      else
      {
        v89 = 0;
      }

      a3 = &v88[v89];
      result = (result + v20);
    }

    a10 += a11;
    result += a2;
    v90 = &a5[a4];
    if (v90 >= a9)
    {
      v91 = v18;
    }

    else
    {
      v91 = 0;
    }

    v92 = &v90[v91];
    v93 = a8 + 16 * v91 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v92;
      a8 = v93;
      a5 = v92;
    }

    _VF = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ _VF | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

float32x4_t *composite_pixelmask<(CGCompositeOperation)4,_rgbaf_t>(float32x4_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, char a16)
{
  if (a15)
  {
    v18 = 0;
  }

  else
  {
    v18 = -1;
  }

  v19.i64[0] = 0;
  v19.i32[2] = 0;
  v19.i32[3] = v18;
  v20 = vmvnq_s8(v19);
  v21 = vandq_s8(vdupq_n_s32(v18), xmmword_18439CB00);
  v22 = 2 * a14;
  v23 = -(a6 * a4);
  v24 = 16 * v22;
  v25 = 16 * a14;
  if ((a16 & 0x30) != 0)
  {
    v26.i64[0] = -1;
    v26.i64[1] = -1;
    v27 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v28 = (a8 - a3) >> 4;
      if (v28 >= a12)
      {
        v28 = a12;
      }

      v29 = v28;
      if (v28 < 2)
      {
        goto LABEL_40;
      }

      while (1)
      {
        v30 = *a10;
        if (!*a10)
        {
          v40 = &a10[v29];
          v41 = a10;
          do
          {
            v42 = v41++;
          }

          while (v41 <= v40 && (vminvq_u8(vceqzq_s8(*v42)) & 0x80) != 0);
          do
          {
            v43 = v42;
            v42 = (v42 + 4);
          }

          while (v42 <= v40 && !v43->i32[0]);
          if (v43 < v40)
          {
            while (!v43->i8[0])
            {
              v43 = (v43 + 1);
              if (v43 >= v40)
              {
                v43 = &a10[v29];
                break;
              }
            }
          }

          v44 = v43 - a10;
          v45 = (v43 - a10) * a14;
          a3 += v45;
          result += v45;
          a10 += v45;
          v29 -= v44;
          goto LABEL_37;
        }

        if (v30 != 0xFFFF)
        {
          break;
        }

        v31 = &a10[v29];
        v32 = a10;
        do
        {
          v33 = v32++;
        }

        while (v32 <= v31 && (vminvq_u8(vceqq_s8(*v33, v26)) & 0x80) != 0);
        do
        {
          v34 = v33;
          v33 = (v33 + 4);
        }

        while (v33 <= v31 && v34->i32[0] == -1);
        if (v34 < v31)
        {
          while (v34->u8[0] == 255)
          {
            v34 = (v34 + 1);
            if (v34 >= v31)
            {
              v34 = &a10[v29];
              break;
            }
          }
        }

        v35 = v34 - a10;
        v36 = v34 - a10;
        do
        {
          v37 = vorrq_s8(vandq_s8(*a3, v20), v21);
          v38 = vorrq_s8(vandq_s8(a3[1], v20), v21);
          v39 = vaddq_f32(vsubq_f32(result[1], result[1]), vmlsq_laneq_f32(v38, v38, result[1], 3));
          *result = vaddq_f32(vsubq_f32(*result, *result), vmlsq_laneq_f32(v37, v37, *result, 3));
          result[1] = v39;
          a10 += v22;
          v36 -= 2;
          result = (result + v24);
          a3 = (a3 + v24);
        }

        while (v36 > 1);
        v29 = v29 - v35 + v36;
LABEL_37:
        if (v29 <= 1)
        {
          goto LABEL_40;
        }
      }

      v46 = 0;
      while (1)
      {
        v47 = (result + v46);
        v48 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v30)) & 0xFF00FF00FF00FFLL))), v27);
        v49 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v30) & 0xFF00FF00FF00FFLL))), v27);
        v50 = vorrq_s8(vandq_s8(*(a3 + v46), v20), v21);
        v51 = vorrq_s8(vandq_s8(*(&a3[1] + v46), v20), v21);
        v52 = vmlaq_f32(vmlsq_f32(*(result + v46 + 16), v48, *(result + v46 + 16)), v48, vmlsq_laneq_f32(v51, v51, *(result + v46 + 16), 3));
        *v47 = vmlaq_f32(vmlsq_f32(*(result + v46), v49, *(result + v46)), v49, vmlsq_laneq_f32(v50, v50, *(result + v46), 3));
        v47[1] = v52;
        a10 += v22;
        v29 -= 2;
        if (v29 < 2)
        {
          break;
        }

        LOWORD(v30) = *a10;
        v46 += v24;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v46);
          a3 = (a3 + v46);
          goto LABEL_37;
        }
      }

      result = (result + v24 + v46);
      a3 = (a3 + v24 + v46);
LABEL_40:
      for (i = a12 - v28 + v29; i; --i)
      {
        if (*a10)
        {
          v54 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v27);
          v55 = vorrq_s8(vandq_s8(*a3, v20), v21);
          *result = vmlaq_f32(vmlsq_f32(*result, v54, *result), v54, vmlsq_laneq_f32(v55, v55, *result, 3));
        }

        v56 = &a3[a14];
        a10 += a14;
        if (v56 >= a8)
        {
          v57 = -a7;
        }

        else
        {
          v57 = 0;
        }

        a3 = &v56[v57];
        result = (result + v25);
      }

      a10 += a11;
      result += a2;
      v58 = &a5[a4];
      if (v58 >= a9)
      {
        v59 = v23;
      }

      else
      {
        v59 = 0;
      }

      v60 = &v58[v59];
      v61 = a8 + 16 * v59 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v60;
        a8 = v61;
        a5 = v60;
      }

      v62 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v62 | (a13 == 0))
      {
        return result;
      }
    }
  }

  v63.i64[0] = -1;
  v63.i64[1] = -1;
  v64 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v65 = (a8 - a3) >> 4;
    if (v65 >= a12)
    {
      v65 = a12;
    }

    v66 = v65;
    if (v65 < 2)
    {
      goto LABEL_90;
    }

    while (1)
    {
      v67 = *a10;
      if (!*a10)
      {
        v78 = &a10[v66];
        v79 = a10;
        do
        {
          v80 = v79++;
        }

        while (v79 <= v78 && (vminvq_u8(vceqzq_s8(*v80)) & 0x80) != 0);
        do
        {
          v81 = v80;
          v80 = (v80 + 4);
        }

        while (v80 <= v78 && !v81->i32[0]);
        if (v81 < v78)
        {
          while (!v81->i8[0])
          {
            v81 = (v81 + 1);
            if (v81 >= v78)
            {
              v81 = &a10[v66];
              break;
            }
          }
        }

        v82 = v81 - a10;
        v83 = (v81 - a10) * a14;
        a3 += v83;
        result += v83;
        a10 += v83;
        v66 -= v82;
        goto LABEL_87;
      }

      if (v67 != 0xFFFF)
      {
        break;
      }

      v68 = &a10[v66];
      v69 = a10;
      do
      {
        v70 = v69++;
      }

      while (v69 <= v68 && (vminvq_u8(vceqq_s8(*v70, v63)) & 0x80) != 0);
      do
      {
        v71 = v70;
        v70 = (v70 + 4);
      }

      while (v70 <= v68 && v71->i32[0] == -1);
      if (v71 < v68)
      {
        while (v71->u8[0] == 255)
        {
          v71 = (v71 + 1);
          if (v71 >= v68)
          {
            v71 = &a10[v66];
            break;
          }
        }
      }

      v72 = v71 - a10;
      v73 = v71 - a10;
      do
      {
        v74 = vrev32q_s8(result[1]);
        v75 = vrev32q_s8(*result);
        v76 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v21);
        v77 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v20), v21);
        *result = vrev32q_s8(vaddq_f32(vsubq_f32(v75, v75), vmlsq_laneq_f32(v76, v76, v75, 3)));
        result[1] = vrev32q_s8(vaddq_f32(vsubq_f32(v74, v74), vmlsq_laneq_f32(v77, v77, v74, 3)));
        a10 += v22;
        v73 -= 2;
        result = (result + v24);
        a3 = (a3 + v24);
      }

      while (v73 > 1);
      v66 = v66 - v72 + v73;
LABEL_87:
      if (v66 <= 1)
      {
        goto LABEL_90;
      }
    }

    v84 = 0;
    while (1)
    {
      v85 = (result + v84);
      v86 = vrev32q_s8(*(&result[1] + v84));
      v87 = vrev32q_s8(*(result + v84));
      v88 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v67) & 0xFF00FF00FF00FFLL))), v64);
      v89 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v67)) & 0xFF00FF00FF00FFLL))), v64);
      v90 = vorrq_s8(vandq_s8(vrev32q_s8(*(a3 + v84)), v20), v21);
      v91 = vorrq_s8(vandq_s8(vrev32q_s8(*(&a3[1] + v84)), v20), v21);
      *v85 = vrev32q_s8(vmlaq_f32(vmlsq_f32(v87, v88, v87), v88, vmlsq_laneq_f32(v90, v90, v87, 3)));
      v85[1] = vrev32q_s8(vmlaq_f32(vmlsq_f32(v86, v89, v86), v89, vmlsq_laneq_f32(v91, v91, v86, 3)));
      a10 += v22;
      v66 -= 2;
      if (v66 < 2)
      {
        break;
      }

      LOWORD(v67) = *a10;
      v84 += v24;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v84);
        a3 = (a3 + v84);
        goto LABEL_87;
      }
    }

    result = (result + v24 + v84);
    a3 = (a3 + v24 + v84);
LABEL_90:
    for (j = a12 - v65 + v66; j; --j)
    {
      if (*a10)
      {
        v93 = vrev32q_s8(*result);
        v94 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v64);
        v95 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v21);
        *result = vrev32q_s8(vmlaq_f32(vmlsq_f32(v93, v94, v93), v94, vmlsq_laneq_f32(v95, v95, v93, 3)));
      }

      v96 = &a3[a14];
      a10 += a14;
      if (v96 >= a8)
      {
        v97 = -a7;
      }

      else
      {
        v97 = 0;
      }

      a3 = &v96[v97];
      result = (result + v25);
    }

    a10 += a11;
    result += a2;
    v98 = &a5[a4];
    if (v98 >= a9)
    {
      v99 = v23;
    }

    else
    {
      v99 = 0;
    }

    v100 = &v98[v99];
    v101 = a8 + 16 * v99 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v100;
      a8 = v101;
      a5 = v100;
    }

    v62 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v62 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

float32x4_t *composite_pixelmask<(CGCompositeOperation)8,_rgbaf_t>(float32x4_t *result, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, char a15)
{
  v17 = 2 * a14;
  v18 = -(a6 * a4);
  v19 = 16 * v17;
  v20 = 16 * a14;
  if ((a15 & 0x30) != 0)
  {
    v21.i64[0] = -1;
    v21.i64[1] = -1;
    v22 = vdupq_n_s32(0xBB808081);
    while (1)
    {
      v23 = (a8 - a3) >> 4;
      if (v23 >= a12)
      {
        v23 = a12;
      }

      v24 = v23;
      if (v23 < 2)
      {
        goto LABEL_37;
      }

      while (1)
      {
        v25 = *a10;
        if (!*a10)
        {
          v33 = &a10[v24];
          v34 = a10;
          do
          {
            v35 = v34++;
          }

          while (v34 <= v33 && (vminvq_u8(vceqzq_s8(*v35)) & 0x80) != 0);
          do
          {
            v36 = v35;
            v35 = (v35 + 4);
          }

          while (v35 <= v33 && !v36->i32[0]);
          if (v36 < v33)
          {
            while (!v36->i8[0])
            {
              v36 = (v36 + 1);
              if (v36 >= v33)
              {
                v36 = &a10[v24];
                break;
              }
            }
          }

          v37 = v36 - a10;
          v38 = (v36 - a10) * a14;
          a3 += v38;
          result += v38;
          a10 += v38;
          v24 -= v37;
          goto LABEL_34;
        }

        if (v25 != 0xFFFF)
        {
          break;
        }

        v26 = &a10[v24];
        v27 = a10;
        do
        {
          v28 = v27++;
        }

        while (v27 <= v26 && (vminvq_u8(vceqq_s8(*v28, v21)) & 0x80) != 0);
        do
        {
          v29 = v28;
          v28 = (v28 + 4);
        }

        while (v28 <= v26 && v29->i32[0] == -1);
        if (v29 < v26)
        {
          while (v29->u8[0] == 255)
          {
            v29 = (v29 + 1);
            if (v29 >= v26)
            {
              v29 = &a10[v24];
              break;
            }
          }
        }

        v30 = v29 - a10;
        v31 = v29 - a10;
        do
        {
          v32 = vmlsq_laneq_f32(result[1], result[1], a3[1], 3);
          *result = vmlsq_laneq_f32(*result, *result, *a3, 3);
          result[1] = v32;
          a10 += v17;
          v31 -= 2;
          result = (result + v19);
          a3 = (a3 + v19);
        }

        while (v31 > 1);
        v24 = v24 - v30 + v31;
LABEL_34:
        if (v24 <= 1)
        {
          goto LABEL_37;
        }
      }

      v39 = 0;
      while (1)
      {
        v40 = (result + v39);
        v41 = vmlaq_f32(*(result + v39 + 16), vmulq_laneq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v25)) & 0xFF00FF00FF00FFLL))), v22), *(a3 + v39 + 16), 3), *(result + v39 + 16));
        *v40 = vmlaq_f32(*(result + v39), vmulq_laneq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v25) & 0xFF00FF00FF00FFLL))), v22), *(a3 + v39), 3), *(result + v39));
        v40[1] = v41;
        a10 += v17;
        v24 -= 2;
        if (v24 < 2)
        {
          break;
        }

        LOWORD(v25) = *a10;
        v39 += v19;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v39);
          a3 = (a3 + v39);
          goto LABEL_34;
        }
      }

      result = (result + v19 + v39);
      a3 = (a3 + v19 + v39);
LABEL_37:
      for (i = a12 - v23 + v24; i; --i)
      {
        if (*a10)
        {
          *result = vmlaq_f32(*result, vmulq_laneq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v22), *a3, 3), *result);
        }

        v43 = &a3[a14];
        a10 += a14;
        if (v43 >= a8)
        {
          v44 = -a7;
        }

        else
        {
          v44 = 0;
        }

        a3 = &v43[v44];
        result = (result + v20);
      }

      a10 += a11;
      result += a2;
      v45 = &a5[a4];
      if (v45 >= a9)
      {
        v46 = v18;
      }

      else
      {
        v46 = 0;
      }

      v47 = &v45[v46];
      v48 = a8 + 16 * v46 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v47;
        a8 = v48;
        a5 = v47;
      }

      v49 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v49 | (a13 == 0))
      {
        return result;
      }
    }
  }

  v50.i64[0] = -1;
  v50.i64[1] = -1;
  v51 = vdupq_n_s32(0xBB808081);
  while (2)
  {
    v52 = (a8 - a3) >> 4;
    if (v52 >= a12)
    {
      v52 = a12;
    }

    v53 = v52;
    if (v52 < 2)
    {
      goto LABEL_87;
    }

    while (1)
    {
      v54 = *a10;
      if (!*a10)
      {
        v64 = &a10[v53];
        v65 = a10;
        do
        {
          v66 = v65++;
        }

        while (v65 <= v64 && (vminvq_u8(vceqzq_s8(*v66)) & 0x80) != 0);
        do
        {
          v67 = v66;
          v66 = (v66 + 4);
        }

        while (v66 <= v64 && !v67->i32[0]);
        if (v67 < v64)
        {
          while (!v67->i8[0])
          {
            v67 = (v67 + 1);
            if (v67 >= v64)
            {
              v67 = &a10[v53];
              break;
            }
          }
        }

        v68 = v67 - a10;
        v69 = (v67 - a10) * a14;
        a3 += v69;
        result += v69;
        a10 += v69;
        v53 -= v68;
        goto LABEL_84;
      }

      if (v54 != 0xFFFF)
      {
        break;
      }

      v55 = &a10[v53];
      v56 = a10;
      do
      {
        v57 = v56++;
      }

      while (v56 <= v55 && (vminvq_u8(vceqq_s8(*v57, v50)) & 0x80) != 0);
      do
      {
        v58 = v57;
        v57 = (v57 + 4);
      }

      while (v57 <= v55 && v58->i32[0] == -1);
      if (v58 < v55)
      {
        while (v58->u8[0] == 255)
        {
          v58 = (v58 + 1);
          if (v58 >= v55)
          {
            v58 = &a10[v53];
            break;
          }
        }
      }

      v59 = v58 - a10;
      v60 = v58 - a10;
      do
      {
        v61 = vrev32q_s8(result[1]);
        v62 = vrev32q_s8(*result);
        v63 = vrev32q_s8(vmlsq_laneq_f32(v61, v61, vrev32q_s8(a3[1]), 3));
        *result = vrev32q_s8(vmlsq_laneq_f32(v62, v62, vrev32q_s8(*a3), 3));
        result[1] = v63;
        a10 += v17;
        v60 -= 2;
        result = (result + v19);
        a3 = (a3 + v19);
      }

      while (v60 > 1);
      v53 = v53 - v59 + v60;
LABEL_84:
      if (v53 <= 1)
      {
        goto LABEL_87;
      }
    }

    v70 = 0;
    while (1)
    {
      v71 = (result + v70);
      v72 = vrev32q_s8(*(&result[1] + v70));
      v73 = vrev32q_s8(*(result + v70));
      v74 = vrev32q_s8(vmlaq_f32(v72, vmulq_laneq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v54)) & 0xFF00FF00FF00FFLL))), v51), vrev32q_s8(*(&a3[1] + v70)), 3), v72));
      *v71 = vrev32q_s8(vmlaq_f32(v73, vmulq_laneq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v54) & 0xFF00FF00FF00FFLL))), v51), vrev32q_s8(*(a3 + v70)), 3), v73));
      v71[1] = v74;
      a10 += v17;
      v53 -= 2;
      if (v53 < 2)
      {
        break;
      }

      LOWORD(v54) = *a10;
      v70 += v19;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v70);
        a3 = (a3 + v70);
        goto LABEL_84;
      }
    }

    result = (result + v19 + v70);
    a3 = (a3 + v19 + v70);
LABEL_87:
    for (j = a12 - v52 + v53; j; --j)
    {
      if (*a10)
      {
        v76 = vrev32q_s8(*result);
        *result = vrev32q_s8(vmlaq_f32(v76, vmulq_laneq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v51), vrev32q_s8(*a3), 3), v76));
      }

      v77 = &a3[a14];
      a10 += a14;
      if (v77 >= a8)
      {
        v78 = -a7;
      }

      else
      {
        v78 = 0;
      }

      a3 = &v77[v78];
      result = (result + v20);
    }

    a10 += a11;
    result += a2;
    v79 = &a5[a4];
    if (v79 >= a9)
    {
      v80 = v18;
    }

    else
    {
      v80 = 0;
    }

    v81 = &v79[v80];
    v82 = a8 + 16 * v80 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v81;
      a8 = v82;
      a5 = v81;
    }

    v49 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v49 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

float32x4_t *composite_pixelmask<(CGCompositeOperation)5,_rgbaf_t>(float32x4_t *result, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, char a15)
{
  v17 = 2 * a14;
  v18 = -(a6 * a4);
  v19 = 16 * v17;
  v20 = 16 * a14;
  if ((a15 & 0x30) != 0)
  {
    v21.i64[0] = -1;
    v21.i64[1] = -1;
    v22 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v23 = (a8 - a3) >> 4;
      if (v23 >= a12)
      {
        v23 = a12;
      }

      v24 = v23;
      if (v23 < 2)
      {
        goto LABEL_37;
      }

      while (1)
      {
        v25 = *a10;
        if (!*a10)
        {
          v33 = &a10[v24];
          v34 = a10;
          do
          {
            v35 = v34++;
          }

          while (v34 <= v33 && (vminvq_u8(vceqzq_s8(*v35)) & 0x80) != 0);
          do
          {
            v36 = v35;
            v35 = (v35 + 4);
          }

          while (v35 <= v33 && !v36->i32[0]);
          if (v36 < v33)
          {
            while (!v36->i8[0])
            {
              v36 = (v36 + 1);
              if (v36 >= v33)
              {
                v36 = &a10[v24];
                break;
              }
            }
          }

          v37 = v36 - a10;
          v38 = (v36 - a10) * a14;
          a3 += v38;
          result += v38;
          a10 += v38;
          v24 -= v37;
          goto LABEL_34;
        }

        if (v25 != 0xFFFF)
        {
          break;
        }

        v26 = &a10[v24];
        v27 = a10;
        do
        {
          v28 = v27++;
        }

        while (v27 <= v26 && (vminvq_u8(vceqq_s8(*v28, v21)) & 0x80) != 0);
        do
        {
          v29 = v28;
          v28 = (v28 + 4);
        }

        while (v28 <= v26 && v29->i32[0] == -1);
        if (v29 < v26)
        {
          while (v29->u8[0] == 255)
          {
            v29 = (v29 + 1);
            if (v29 >= v26)
            {
              v29 = &a10[v24];
              break;
            }
          }
        }

        v30 = v29 - a10;
        v31 = v29 - a10;
        do
        {
          v32 = vmlaq_laneq_f32(vmlsq_laneq_f32(result[1], result[1], a3[1], 3), a3[1], result[1], 3);
          *result = vmlaq_laneq_f32(vmlsq_laneq_f32(*result, *result, *a3, 3), *a3, *result, 3);
          result[1] = v32;
          a10 += v17;
          v31 -= 2;
          result = (result + v19);
          a3 = (a3 + v19);
        }

        while (v31 > 1);
        v24 = v24 - v30 + v31;
LABEL_34:
        if (v24 <= 1)
        {
          goto LABEL_37;
        }
      }

      v39 = 0;
      while (1)
      {
        v40 = (result + v39);
        v41 = vmulq_f32(*(a3 + v39 + 16), vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v25)) & 0xFF00FF00FF00FFLL))), v22));
        v42 = vmulq_f32(*(a3 + v39), vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v25) & 0xFF00FF00FF00FFLL))), v22));
        v43 = vmlaq_laneq_f32(vmlsq_laneq_f32(*(result + v39 + 16), *(result + v39 + 16), v41, 3), v41, *(result + v39 + 16), 3);
        *v40 = vmlaq_laneq_f32(vmlsq_laneq_f32(*(result + v39), *(result + v39), v42, 3), v42, *(result + v39), 3);
        v40[1] = v43;
        a10 += v17;
        v24 -= 2;
        if (v24 < 2)
        {
          break;
        }

        LOWORD(v25) = *a10;
        v39 += v19;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v39);
          a3 = (a3 + v39);
          goto LABEL_34;
        }
      }

      result = (result + v19 + v39);
      a3 = (a3 + v19 + v39);
LABEL_37:
      for (i = a12 - v23 + v24; i; --i)
      {
        if (*a10)
        {
          v45 = vmulq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v22), *a3);
          *result = vmlaq_laneq_f32(vmlsq_laneq_f32(*result, *result, v45, 3), v45, *result, 3);
        }

        v46 = &a3[a14];
        a10 += a14;
        if (v46 >= a8)
        {
          v47 = -a7;
        }

        else
        {
          v47 = 0;
        }

        a3 = &v46[v47];
        result = (result + v20);
      }

      a10 += a11;
      result += a2;
      v48 = &a5[a4];
      if (v48 >= a9)
      {
        v49 = v18;
      }

      else
      {
        v49 = 0;
      }

      v50 = &v48[v49];
      v51 = a8 + 16 * v49 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v50;
        a8 = v51;
        a5 = v50;
      }

      v52 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v52 | (a13 == 0))
      {
        return result;
      }
    }
  }

  v53.i64[0] = -1;
  v53.i64[1] = -1;
  v54 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v55 = (a8 - a3) >> 4;
    if (v55 >= a12)
    {
      v55 = a12;
    }

    v56 = v55;
    if (v55 < 2)
    {
      goto LABEL_87;
    }

    while (1)
    {
      v57 = *a10;
      if (!*a10)
      {
        v68 = &a10[v56];
        v69 = a10;
        do
        {
          v70 = v69++;
        }

        while (v69 <= v68 && (vminvq_u8(vceqzq_s8(*v70)) & 0x80) != 0);
        do
        {
          v71 = v70;
          v70 = (v70 + 4);
        }

        while (v70 <= v68 && !v71->i32[0]);
        if (v71 < v68)
        {
          while (!v71->i8[0])
          {
            v71 = (v71 + 1);
            if (v71 >= v68)
            {
              v71 = &a10[v56];
              break;
            }
          }
        }

        v72 = v71 - a10;
        v73 = (v71 - a10) * a14;
        a3 += v73;
        result += v73;
        a10 += v73;
        v56 -= v72;
        goto LABEL_84;
      }

      if (v57 != 0xFFFF)
      {
        break;
      }

      v58 = &a10[v56];
      v59 = a10;
      do
      {
        v60 = v59++;
      }

      while (v59 <= v58 && (vminvq_u8(vceqq_s8(*v60, v53)) & 0x80) != 0);
      do
      {
        v61 = v60;
        v60 = (v60 + 4);
      }

      while (v60 <= v58 && v61->i32[0] == -1);
      if (v61 < v58)
      {
        while (v61->u8[0] == 255)
        {
          v61 = (v61 + 1);
          if (v61 >= v58)
          {
            v61 = &a10[v56];
            break;
          }
        }
      }

      v62 = v61 - a10;
      v63 = v61 - a10;
      do
      {
        v64 = vrev32q_s8(a3[1]);
        v65 = vrev32q_s8(*a3);
        v66 = vrev32q_s8(result[1]);
        v67 = vrev32q_s8(*result);
        *result = vrev32q_s8(vmlaq_laneq_f32(vmlsq_laneq_f32(v67, v67, v65, 3), v65, v67, 3));
        result[1] = vrev32q_s8(vmlaq_laneq_f32(vmlsq_laneq_f32(v66, v66, v64, 3), v64, v66, 3));
        a10 += v17;
        v63 -= 2;
        result = (result + v19);
        a3 = (a3 + v19);
      }

      while (v63 > 1);
      v56 = v56 - v62 + v63;
LABEL_84:
      if (v56 <= 1)
      {
        goto LABEL_87;
      }
    }

    v74 = 0;
    while (1)
    {
      v75 = (result + v74);
      v76 = vrev32q_s8(*(&result[1] + v74));
      v77 = vrev32q_s8(*(result + v74));
      v78 = vmulq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v57)) & 0xFF00FF00FF00FFLL))), v54), vrev32q_s8(*(&a3[1] + v74)));
      v79 = vmulq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v57) & 0xFF00FF00FF00FFLL))), v54), vrev32q_s8(*(a3 + v74)));
      *v75 = vrev32q_s8(vmlaq_laneq_f32(vmlsq_laneq_f32(v77, v77, v79, 3), v79, v77, 3));
      v75[1] = vrev32q_s8(vmlaq_laneq_f32(vmlsq_laneq_f32(v76, v76, v78, 3), v78, v76, 3));
      a10 += v17;
      v56 -= 2;
      if (v56 < 2)
      {
        break;
      }

      LOWORD(v57) = *a10;
      v74 += v19;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v74);
        a3 = (a3 + v74);
        goto LABEL_84;
      }
    }

    result = (result + v19 + v74);
    a3 = (a3 + v19 + v74);
LABEL_87:
    for (j = a12 - v55 + v56; j; --j)
    {
      if (*a10)
      {
        v81 = vrev32q_s8(*result);
        v82 = vmulq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v54), vrev32q_s8(*a3));
        *result = vrev32q_s8(vmlaq_laneq_f32(vmlsq_laneq_f32(v81, v81, v82, 3), v82, v81, 3));
      }

      v83 = &a3[a14];
      a10 += a14;
      if (v83 >= a8)
      {
        v84 = -a7;
      }

      else
      {
        v84 = 0;
      }

      a3 = &v83[v84];
      result = (result + v20);
    }

    a10 += a11;
    result += a2;
    v85 = &a5[a4];
    if (v85 >= a9)
    {
      v86 = v18;
    }

    else
    {
      v86 = 0;
    }

    v87 = &v85[v86];
    v88 = a8 + 16 * v86 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v87;
      a8 = v88;
      a5 = v87;
    }

    v52 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v52 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

float32x4_t *composite_pixelmask<(CGCompositeOperation)9,_rgbaf_t>(float32x4_t *result, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, char a15)
{
  v17 = 2 * a14;
  v18 = -(a6 * a4);
  v19 = 16 * v17;
  v20 = 16 * a14;
  if ((a15 & 0x30) != 0)
  {
    v21.i64[0] = -1;
    v21.i64[1] = -1;
    v22 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v23 = (a8 - a3) >> 4;
      if (v23 >= a12)
      {
        v23 = a12;
      }

      v24 = v23;
      if (v23 < 2)
      {
        goto LABEL_37;
      }

      while (1)
      {
        v25 = *a10;
        if (!*a10)
        {
          v33 = &a10[v24];
          v34 = a10;
          do
          {
            v35 = v34++;
          }

          while (v34 <= v33 && (vminvq_u8(vceqzq_s8(*v35)) & 0x80) != 0);
          do
          {
            v36 = v35;
            v35 = (v35 + 4);
          }

          while (v35 <= v33 && !v36->i32[0]);
          if (v36 < v33)
          {
            while (!v36->i8[0])
            {
              v36 = (v36 + 1);
              if (v36 >= v33)
              {
                v36 = &a10[v24];
                break;
              }
            }
          }

          v37 = v36 - a10;
          v38 = (v36 - a10) * a14;
          a3 += v38;
          result += v38;
          a10 += v38;
          v24 -= v37;
          goto LABEL_34;
        }

        if (v25 != 0xFFFF)
        {
          break;
        }

        v26 = &a10[v24];
        v27 = a10;
        do
        {
          v28 = v27++;
        }

        while (v27 <= v26 && (vminvq_u8(vceqq_s8(*v28, v21)) & 0x80) != 0);
        do
        {
          v29 = v28;
          v28 = (v28 + 4);
        }

        while (v28 <= v26 && v29->i32[0] == -1);
        if (v29 < v26)
        {
          while (v29->u8[0] == 255)
          {
            v29 = (v29 + 1);
            if (v29 >= v26)
            {
              v29 = &a10[v24];
              break;
            }
          }
        }

        v30 = v29 - a10;
        v31 = v29 - a10;
        do
        {
          v32 = vaddq_f32(result[1], vsubq_f32(vmlsq_laneq_f32(a3[1], a3[1], result[1], 3), vmlsq_laneq_f32(result[1], result[1], a3[1], 3)));
          *result = vaddq_f32(*result, vsubq_f32(vmlsq_laneq_f32(*a3, *a3, *result, 3), vmlsq_laneq_f32(*result, *result, *a3, 3)));
          result[1] = v32;
          a10 += v17;
          v31 -= 2;
          result = (result + v19);
          a3 = (a3 + v19);
        }

        while (v31 > 1);
        v24 = v24 - v30 + v31;
LABEL_34:
        if (v24 <= 1)
        {
          goto LABEL_37;
        }
      }

      v39 = 0;
      while (1)
      {
        v40 = (result + v39);
        v41 = vmlaq_f32(*(result + v39 + 16), vsubq_f32(vmlsq_laneq_f32(*(a3 + v39 + 16), *(a3 + v39 + 16), *(result + v39 + 16), 3), vmlsq_laneq_f32(*(result + v39 + 16), *(result + v39 + 16), *(a3 + v39 + 16), 3)), vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v25)) & 0xFF00FF00FF00FFLL))), v22));
        *v40 = vmlaq_f32(*(result + v39), vsubq_f32(vmlsq_laneq_f32(*(a3 + v39), *(a3 + v39), *(result + v39), 3), vmlsq_laneq_f32(*(result + v39), *(result + v39), *(a3 + v39), 3)), vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v25) & 0xFF00FF00FF00FFLL))), v22));
        v40[1] = v41;
        a10 += v17;
        v24 -= 2;
        if (v24 < 2)
        {
          break;
        }

        LOWORD(v25) = *a10;
        v39 += v19;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v39);
          a3 = (a3 + v39);
          goto LABEL_34;
        }
      }

      result = (result + v19 + v39);
      a3 = (a3 + v19 + v39);
LABEL_37:
      for (i = a12 - v23 + v24; i; --i)
      {
        if (*a10)
        {
          *result = vmlaq_f32(*result, vsubq_f32(vmlsq_laneq_f32(*a3, *a3, *result, 3), vmlsq_laneq_f32(*result, *result, *a3, 3)), vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v22));
        }

        v43 = &a3[a14];
        a10 += a14;
        if (v43 >= a8)
        {
          v44 = -a7;
        }

        else
        {
          v44 = 0;
        }

        a3 = &v43[v44];
        result = (result + v20);
      }

      a10 += a11;
      result += a2;
      v45 = &a5[a4];
      if (v45 >= a9)
      {
        v46 = v18;
      }

      else
      {
        v46 = 0;
      }

      v47 = &v45[v46];
      v48 = a8 + 16 * v46 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v47;
        a8 = v48;
        a5 = v47;
      }

      v49 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v49 | (a13 == 0))
      {
        return result;
      }
    }
  }

  v50.i64[0] = -1;
  v50.i64[1] = -1;
  v51 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v52 = (a8 - a3) >> 4;
    if (v52 >= a12)
    {
      v52 = a12;
    }

    v53 = v52;
    if (v52 < 2)
    {
      goto LABEL_87;
    }

    while (1)
    {
      v54 = *a10;
      if (!*a10)
      {
        v65 = &a10[v53];
        v66 = a10;
        do
        {
          v67 = v66++;
        }

        while (v66 <= v65 && (vminvq_u8(vceqzq_s8(*v67)) & 0x80) != 0);
        do
        {
          v68 = v67;
          v67 = (v67 + 4);
        }

        while (v67 <= v65 && !v68->i32[0]);
        if (v68 < v65)
        {
          while (!v68->i8[0])
          {
            v68 = (v68 + 1);
            if (v68 >= v65)
            {
              v68 = &a10[v53];
              break;
            }
          }
        }

        v69 = v68 - a10;
        v70 = (v68 - a10) * a14;
        a3 += v70;
        result += v70;
        a10 += v70;
        v53 -= v69;
        goto LABEL_84;
      }

      if (v54 != 0xFFFF)
      {
        break;
      }

      v55 = &a10[v53];
      v56 = a10;
      do
      {
        v57 = v56++;
      }

      while (v56 <= v55 && (vminvq_u8(vceqq_s8(*v57, v50)) & 0x80) != 0);
      do
      {
        v58 = v57;
        v57 = (v57 + 4);
      }

      while (v57 <= v55 && v58->i32[0] == -1);
      if (v58 < v55)
      {
        while (v58->u8[0] == 255)
        {
          v58 = (v58 + 1);
          if (v58 >= v55)
          {
            v58 = &a10[v53];
            break;
          }
        }
      }

      v59 = v58 - a10;
      v60 = v58 - a10;
      do
      {
        v61 = vrev32q_s8(a3[1]);
        v62 = vrev32q_s8(*a3);
        v63 = vrev32q_s8(result[1]);
        v64 = vrev32q_s8(*result);
        *result = vrev32q_s8(vaddq_f32(vsubq_f32(vmlsq_laneq_f32(v62, v62, v64, 3), vmlsq_laneq_f32(v64, v64, v62, 3)), v64));
        result[1] = vrev32q_s8(vaddq_f32(vsubq_f32(vmlsq_laneq_f32(v61, v61, v63, 3), vmlsq_laneq_f32(v63, v63, v61, 3)), v63));
        a10 += v17;
        v60 -= 2;
        result = (result + v19);
        a3 = (a3 + v19);
      }

      while (v60 > 1);
      v53 = v53 - v59 + v60;
LABEL_84:
      if (v53 <= 1)
      {
        goto LABEL_87;
      }
    }

    v71 = 0;
    while (1)
    {
      v72 = (result + v71);
      v73 = vrev32q_s8(*(&a3[1] + v71));
      v74 = vrev32q_s8(*(a3 + v71));
      v75 = vrev32q_s8(*(&result[1] + v71));
      v76 = vrev32q_s8(*(result + v71));
      *v72 = vrev32q_s8(vmlaq_f32(v76, vsubq_f32(vmlsq_laneq_f32(v74, v74, v76, 3), vmlsq_laneq_f32(v76, v76, v74, 3)), vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v54) & 0xFF00FF00FF00FFLL))), v51)));
      v72[1] = vrev32q_s8(vmlaq_f32(v75, vsubq_f32(vmlsq_laneq_f32(v73, v73, v75, 3), vmlsq_laneq_f32(v75, v75, v73, 3)), vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v54)) & 0xFF00FF00FF00FFLL))), v51)));
      a10 += v17;
      v53 -= 2;
      if (v53 < 2)
      {
        break;
      }

      LOWORD(v54) = *a10;
      v71 += v19;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v71);
        a3 = (a3 + v71);
        goto LABEL_84;
      }
    }

    result = (result + v19 + v71);
    a3 = (a3 + v19 + v71);
LABEL_87:
    for (j = a12 - v52 + v53; j; --j)
    {
      if (*a10)
      {
        v78 = vrev32q_s8(*result);
        v79 = vrev32q_s8(*a3);
        *result = vrev32q_s8(vmlaq_f32(v78, vsubq_f32(vmlsq_laneq_f32(v79, v79, v78, 3), vmlsq_laneq_f32(v78, v78, v79, 3)), vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v51)));
      }

      v80 = &a3[a14];
      a10 += a14;
      if (v80 >= a8)
      {
        v81 = -a7;
      }

      else
      {
        v81 = 0;
      }

      a3 = &v80[v81];
      result = (result + v20);
    }

    a10 += a11;
    result += a2;
    v82 = &a5[a4];
    if (v82 >= a9)
    {
      v83 = v18;
    }

    else
    {
      v83 = 0;
    }

    v84 = &v82[v83];
    v85 = a8 + 16 * v83 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v84;
      a8 = v85;
      a5 = v84;
    }

    v49 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v49 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}