float32x4_t *composite_pixelmask<(CGCompositeOperation)10,_rgbaf_t>(float32x4_t *result, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, char a15)
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
          v32 = vaddq_f32(result[1], vmlsq_laneq_f32(vmlsq_laneq_f32(a3[1], a3[1], result[1], 3), result[1], a3[1], 3));
          *result = vaddq_f32(*result, vmlsq_laneq_f32(vmlsq_laneq_f32(*a3, *a3, *result, 3), *result, *a3, 3));
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
        v41 = vmlaq_f32(*(result + v39 + 16), vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v25)) & 0xFF00FF00FF00FFLL))), v22), vmlsq_laneq_f32(vmlsq_laneq_f32(*(a3 + v39 + 16), *(a3 + v39 + 16), *(result + v39 + 16), 3), *(result + v39 + 16), *(a3 + v39 + 16), 3));
        *v40 = vmlaq_f32(*(result + v39), vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v25) & 0xFF00FF00FF00FFLL))), v22), vmlsq_laneq_f32(vmlsq_laneq_f32(*(a3 + v39), *(a3 + v39), *(result + v39), 3), *(result + v39), *(a3 + v39), 3));
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
          *result = vmlaq_f32(*result, vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v22), vmlsq_laneq_f32(vmlsq_laneq_f32(*a3, *a3, *result, 3), *result, *a3, 3));
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
        *result = vrev32q_s8(vaddq_f32(vmlsq_laneq_f32(vmlsq_laneq_f32(v62, v62, v64, 3), v64, v62, 3), v64));
        result[1] = vrev32q_s8(vaddq_f32(vmlsq_laneq_f32(vmlsq_laneq_f32(v61, v61, v63, 3), v63, v61, 3), v63));
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
      *v72 = vrev32q_s8(vmlaq_f32(v76, vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v54) & 0xFF00FF00FF00FFLL))), v51), vmlsq_laneq_f32(vmlsq_laneq_f32(v74, v74, v76, 3), v76, v74, 3)));
      v72[1] = vrev32q_s8(vmlaq_f32(v75, vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v54)) & 0xFF00FF00FF00FFLL))), v51), vmlsq_laneq_f32(vmlsq_laneq_f32(v73, v73, v75, 3), v75, v73, 3)));
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
        *result = vrev32q_s8(vmlaq_f32(v78, vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v51), vmlsq_laneq_f32(vmlsq_laneq_f32(v79, v79, v78, 3), v78, v79, 3)));
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

int8x16_t *composite_pixelmask<(CGCompositeOperation)11,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  v20.i64[0] = 0;
  v20.i32[2] = 0;
  v21.i64[0] = 0;
  v21.i32[2] = 0;
  v21.i32[3] = v19;
  v22 = vmvnq_s8(v21);
  v23 = vandq_s8(vdupq_n_s32(v19), xmmword_18439CB00);
  if (a15)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v20.i32[3] = v24;
  v25 = vmvnq_s8(v20);
  v26 = vandq_s8(vdupq_n_s32(v24), xmmword_18439CB00);
  v27 = 2 * a14;
  v28 = -(a6 * a4);
  v29 = 16 * v27;
  v30 = 16 * a14;
  __asm { FMOV            V5.4S, #1.0 }

  if ((a17 & 0x30) != 0)
  {
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v37 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v38 = (a8 - a3) >> 4;
      if (v38 >= a12)
      {
        v38 = a12;
      }

      v39 = v38;
      if (v38 < 2)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v40 = *a10;
        if (!*a10)
        {
          v55 = &a10[v39];
          v56 = a10;
          do
          {
            v57 = v56++;
          }

          while (v56 <= v55 && (vminvq_u8(vceqzq_s8(*v57)) & 0x80) != 0);
          do
          {
            v58 = v57;
            v57 = (v57 + 4);
          }

          while (v57 <= v55 && !v58->i32[0]);
          if (v58 < v55)
          {
            while (!v58->i8[0])
            {
              v58 = (v58 + 1);
              if (v58 >= v55)
              {
                v58 = &a10[v39];
                break;
              }
            }
          }

          v59 = v58 - a10;
          v60 = (v58 - a10) * a14;
          a3 += v60;
          result += v60;
          a10 += v60;
          v39 -= v59;
          goto LABEL_40;
        }

        if (v40 != 0xFFFF)
        {
          break;
        }

        v41 = &a10[v39];
        v42 = a10;
        do
        {
          v43 = v42++;
        }

        while (v42 <= v41 && (vminvq_u8(vceqq_s8(*v43, v36)) & 0x80) != 0);
        do
        {
          v44 = v43;
          v43 = (v43 + 4);
        }

        while (v43 <= v41 && v44->i32[0] == -1);
        if (v44 < v41)
        {
          while (v44->u8[0] == 255)
          {
            v44 = (v44 + 1);
            if (v44 >= v41)
            {
              v44 = &a10[v39];
              break;
            }
          }
        }

        v45 = v44 - a10;
        v46 = v44 - a10;
        do
        {
          v47 = vorrq_s8(vandq_s8(a3[1], v22), v23);
          v48 = vorrq_s8(vandq_s8(*a3, v22), v23);
          v49 = vorrq_s8(vandq_s8(result[1], v25), v26);
          v50 = vdupq_laneq_s32(v48, 3);
          v51 = vdupq_laneq_s32(v47, 3);
          v52 = vorrq_s8(vandq_s8(*result, v25), v26);
          v53 = vdupq_laneq_s32(v52, 3);
          v54 = vdupq_laneq_s32(v49, 3);
          *result = vsubq_f32(vminnmq_f32(vaddq_f32(v50, v53), _Q5), vaddq_f32(vsubq_f32(v50, v48), vsubq_f32(v53, v52)));
          result[1] = vsubq_f32(vminnmq_f32(vaddq_f32(v51, v54), _Q5), vaddq_f32(vsubq_f32(v51, v47), vsubq_f32(v54, v49)));
          a10 += v27;
          v46 -= 2;
          result = (result + v29);
          a3 = (a3 + v29);
        }

        while (v46 > 1);
        v39 = v39 - v45 + v46;
LABEL_40:
        if (v39 <= 1)
        {
          goto LABEL_43;
        }
      }

      v61 = 0;
      while (1)
      {
        v62 = (result + v61);
        v63 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v40) & 0xFF00FF00FF00FFLL))), v37);
        v64 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v40)) & 0xFF00FF00FF00FFLL))), v37);
        v65 = vorrq_s8(vandq_s8(*(a3 + v61), v22), v23);
        v66 = vorrq_s8(vandq_s8(*(&a3[1] + v61), v22), v23);
        v67 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v64)), _Q5, *(&result[1] + v61));
        v68 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v63)), _Q5, *(result + v61));
        v69 = vdupq_laneq_s32(v68, 3);
        v70 = vdupq_laneq_s32(v67, 3);
        *v62 = vbslq_s8(vceqzq_f32(v63), v68, vsubq_f32(vminnmq_f32(vmlaq_laneq_f32(v69, v63, v65, 3), _Q5), vmlaq_f32(vsubq_f32(v69, v68), v63, vsubq_f32(vdupq_laneq_s32(v65, 3), v65))));
        v62[1] = vbslq_s8(vceqzq_f32(v64), v67, vsubq_f32(vminnmq_f32(vmlaq_laneq_f32(v70, v64, v66, 3), _Q5), vmlaq_f32(vsubq_f32(v70, v67), v64, vsubq_f32(vdupq_laneq_s32(v66, 3), v66))));
        a10 += v27;
        v39 -= 2;
        if (v39 < 2)
        {
          break;
        }

        LOWORD(v40) = *a10;
        v61 += v29;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v61);
          a3 = (a3 + v61);
          goto LABEL_40;
        }
      }

      result = (result + v29 + v61);
      a3 = (a3 + v29 + v61);
LABEL_43:
      for (i = a12 - v38 + v39; i; --i)
      {
        if (*a10)
        {
          v72 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v37);
          v73 = vorrq_s8(vandq_s8(*a3, v22), v23);
          v74 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v72)), _Q5, *result);
          v75 = vdupq_laneq_s32(v74, 3);
          *result = vbslq_s8(vceqzq_f32(v72), v74, vsubq_f32(vminnmq_f32(vmlaq_laneq_f32(v75, v72, v73, 3), _Q5), vmlaq_f32(vsubq_f32(v75, v74), v72, vsubq_f32(vdupq_laneq_s32(v73, 3), v73))));
        }

        v76 = &a3[a14];
        a10 += a14;
        if (v76 >= a8)
        {
          v77 = -a7;
        }

        else
        {
          v77 = 0;
        }

        a3 = &v76[v77];
        result = (result + v30);
      }

      a10 += a11;
      result += a2;
      v78 = &a5[a4];
      if (v78 >= a9)
      {
        v79 = v28;
      }

      else
      {
        v79 = 0;
      }

      v80 = &v78[v79];
      v81 = a8 + 16 * v79 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v80;
        a8 = v81;
        a5 = v80;
      }

      _VF = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ _VF | (a13 == 0))
      {
        return result;
      }
    }
  }

  v82.i64[0] = -1;
  v82.i64[1] = -1;
  v83 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v84 = (a8 - a3) >> 4;
    if (v84 >= a12)
    {
      v84 = a12;
    }

    v85 = v84;
    if (v84 < 2)
    {
      goto LABEL_93;
    }

    while (1)
    {
      v86 = *a10;
      if (!*a10)
      {
        v101 = &a10[v85];
        v102 = a10;
        do
        {
          v103 = v102++;
        }

        while (v102 <= v101 && (vminvq_u8(vceqzq_s8(*v103)) & 0x80) != 0);
        do
        {
          v104 = v103;
          v103 = (v103 + 4);
        }

        while (v103 <= v101 && !v104->i32[0]);
        if (v104 < v101)
        {
          while (!v104->i8[0])
          {
            v104 = (v104 + 1);
            if (v104 >= v101)
            {
              v104 = &a10[v85];
              break;
            }
          }
        }

        v105 = v104 - a10;
        v106 = (v104 - a10) * a14;
        a3 += v106;
        result += v106;
        a10 += v106;
        v85 -= v105;
        goto LABEL_90;
      }

      if (v86 != 0xFFFF)
      {
        break;
      }

      v87 = &a10[v85];
      v88 = a10;
      do
      {
        v89 = v88++;
      }

      while (v88 <= v87 && (vminvq_u8(vceqq_s8(*v89, v82)) & 0x80) != 0);
      do
      {
        v90 = v89;
        v89 = (v89 + 4);
      }

      while (v89 <= v87 && v90->i32[0] == -1);
      if (v90 < v87)
      {
        while (v90->u8[0] == 255)
        {
          v90 = (v90 + 1);
          if (v90 >= v87)
          {
            v90 = &a10[v85];
            break;
          }
        }
      }

      v91 = v90 - a10;
      v92 = v90 - a10;
      do
      {
        v93 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v22), v23);
        v94 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23);
        v95 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v25), v26);
        v96 = vdupq_laneq_s32(v94, 3);
        v97 = vdupq_laneq_s32(v93, 3);
        v98 = vdupq_laneq_s32(v95, 3);
        v99 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v25), v26);
        v100 = vdupq_laneq_s32(v99, 3);
        *result = vrev32q_s8(vsubq_f32(vminnmq_f32(vaddq_f32(v96, v98), _Q5), vaddq_f32(vsubq_f32(v96, v94), vsubq_f32(v98, v95))));
        result[1] = vrev32q_s8(vsubq_f32(vminnmq_f32(vaddq_f32(v97, v100), _Q5), vaddq_f32(vsubq_f32(v97, v93), vsubq_f32(v100, v99))));
        a10 += v27;
        v92 -= 2;
        result = (result + v29);
        a3 = (a3 + v29);
      }

      while (v92 > 1);
      v85 = v85 - v91 + v92;
LABEL_90:
      if (v85 <= 1)
      {
        goto LABEL_93;
      }
    }

    v107 = 0;
    while (1)
    {
      v108 = (result + v107);
      v109 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v86) & 0xFF00FF00FF00FFLL))), v83);
      v110 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v86)) & 0xFF00FF00FF00FFLL))), v83);
      v111 = vorrq_s8(vandq_s8(vrev32q_s8(*(&a3[1] + v107)), v22), v23);
      v112 = vorrq_s8(vandq_s8(vrev32q_s8(*(a3 + v107)), v22), v23);
      v113 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v110)), _Q5, vrev32q_s8(*(&result[1] + v107)));
      v114 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v109)), _Q5, vrev32q_s8(*(result + v107)));
      v115 = vdupq_laneq_s32(v114, 3);
      v116 = vdupq_laneq_s32(v113, 3);
      *v108 = vrev32q_s8(vbslq_s8(vceqzq_f32(v109), v114, vsubq_f32(vminnmq_f32(vmlaq_laneq_f32(v115, v109, v112, 3), _Q5), vmlaq_f32(vsubq_f32(v115, v114), v109, vsubq_f32(vdupq_laneq_s32(v112, 3), v112)))));
      v108[1] = vrev32q_s8(vbslq_s8(vceqzq_f32(v110), v113, vsubq_f32(vminnmq_f32(vmlaq_laneq_f32(v116, v110, v111, 3), _Q5), vmlaq_f32(vsubq_f32(v116, v113), v110, vsubq_f32(vdupq_laneq_s32(v111, 3), v111)))));
      a10 += v27;
      v85 -= 2;
      if (v85 < 2)
      {
        break;
      }

      LOWORD(v86) = *a10;
      v107 += v29;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v107);
        a3 = (a3 + v107);
        goto LABEL_90;
      }
    }

    result = (result + v29 + v107);
    a3 = (a3 + v29 + v107);
LABEL_93:
    for (j = a12 - v84 + v85; j; --j)
    {
      if (*a10)
      {
        v118 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v83);
        v119 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23);
        v120 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v118)), _Q5, vrev32q_s8(*result));
        v121 = vdupq_laneq_s32(v120, 3);
        *result = vrev32q_s8(vbslq_s8(vceqzq_f32(v118), v120, vsubq_f32(vminnmq_f32(vmlaq_laneq_f32(v121, v118, v119, 3), _Q5), vmlaq_f32(vsubq_f32(v121, v120), v118, vsubq_f32(vdupq_laneq_s32(v119, 3), v119)))));
      }

      v122 = &a3[a14];
      a10 += a14;
      if (v122 >= a8)
      {
        v123 = -a7;
      }

      else
      {
        v123 = 0;
      }

      a3 = &v122[v123];
      result = (result + v30);
    }

    a10 += a11;
    result += a2;
    v124 = &a5[a4];
    if (v124 >= a9)
    {
      v125 = v28;
    }

    else
    {
      v125 = 0;
    }

    v126 = &v124[v125];
    v127 = a8 + 16 * v125 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v126;
      a8 = v127;
      a5 = v126;
    }

    _VF = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ _VF | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

float32x4_t *composite_pixelmask<(CGCompositeOperation)12,_rgbaf_t>(float32x4_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, char a16)
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
          v37 = vminnmq_f32(vaddq_f32(result[1], vorrq_s8(vandq_s8(a3[1], v20), v21)), xmmword_18439C4B0);
          *result = vminnmq_f32(vaddq_f32(*result, vorrq_s8(vandq_s8(*a3, v20), v21)), xmmword_18439C4B0);
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
        v46 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v30)) & 0xFF00FF00FF00FFLL))), v27);
        v47 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v30) & 0xFF00FF00FF00FFLL))), v27);
        v48 = vbslq_s8(vcgtzq_f32(v46), vminnmq_f32(vmlaq_f32(*(result + v44 + 16), v46, vorrq_s8(vandq_s8(*(&a3[1] + v44), v20), v21)), xmmword_18439C4B0), *(&result[1] + v44));
        *v45 = vbslq_s8(vcgtzq_f32(v47), vminnmq_f32(vmlaq_f32(*(result + v44), v47, vorrq_s8(vandq_s8(*(a3 + v44), v20), v21)), xmmword_18439C4B0), *(result + v44));
        v45[1] = v48;
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
          v50 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v27);
          *result = vbslq_s8(vcgtzq_f32(v50), vminnmq_f32(vmlaq_f32(*result, v50, vorrq_s8(vandq_s8(*a3, v20), v21)), xmmword_18439C4B0), *result);
        }

        v51 = &a3[a14];
        a10 += a14;
        if (v51 >= a8)
        {
          v52 = -a7;
        }

        else
        {
          v52 = 0;
        }

        a3 = &v51[v52];
        result = (result + v25);
      }

      a10 += a11;
      result += a2;
      v53 = &a5[a4];
      if (v53 >= a9)
      {
        v54 = v23;
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

      v57 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v57 | (a13 == 0))
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
      goto LABEL_90;
    }

    while (1)
    {
      v62 = *a10;
      if (!*a10)
      {
        v70 = &a10[v61];
        v71 = a10;
        do
        {
          v72 = v71++;
        }

        while (v71 <= v70 && (vminvq_u8(vceqzq_s8(*v72)) & 0x80) != 0);
        do
        {
          v73 = v72;
          v72 = (v72 + 4);
        }

        while (v72 <= v70 && !v73->i32[0]);
        if (v73 < v70)
        {
          while (!v73->i8[0])
          {
            v73 = (v73 + 1);
            if (v73 >= v70)
            {
              v73 = &a10[v61];
              break;
            }
          }
        }

        v74 = v73 - a10;
        v75 = (v73 - a10) * a14;
        a3 += v75;
        result += v75;
        a10 += v75;
        v61 -= v74;
        goto LABEL_87;
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
        v69 = vrev32q_s8(vminnmq_f32(vaddq_f32(vrev32q_s8(result[1]), vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v20), v21)), xmmword_18439C4B0));
        *result = vrev32q_s8(vminnmq_f32(vaddq_f32(vrev32q_s8(*result), vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v21)), xmmword_18439C4B0));
        result[1] = v69;
        a10 += v22;
        v68 -= 2;
        result = (result + v24);
        a3 = (a3 + v24);
      }

      while (v68 > 1);
      v61 = v61 - v67 + v68;
LABEL_87:
      if (v61 <= 1)
      {
        goto LABEL_90;
      }
    }

    v76 = 0;
    while (1)
    {
      v77 = (result + v76);
      v78 = vrev32q_s8(*(result + v76));
      v79 = vrev32q_s8(*(&result[1] + v76));
      v80 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v62) & 0xFF00FF00FF00FFLL))), v59);
      v81 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v62)) & 0xFF00FF00FF00FFLL))), v59);
      v82 = vrev32q_s8(vbslq_s8(vcgtzq_f32(v81), vminnmq_f32(vmlaq_f32(v79, v81, vorrq_s8(vandq_s8(vrev32q_s8(*(&a3[1] + v76)), v20), v21)), xmmword_18439C4B0), v79));
      *v77 = vrev32q_s8(vbslq_s8(vcgtzq_f32(v80), vminnmq_f32(vmlaq_f32(v78, v80, vorrq_s8(vandq_s8(vrev32q_s8(*(a3 + v76)), v20), v21)), xmmword_18439C4B0), v78));
      v77[1] = v82;
      a10 += v22;
      v61 -= 2;
      if (v61 < 2)
      {
        break;
      }

      LOWORD(v62) = *a10;
      v76 += v24;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v76);
        a3 = (a3 + v76);
        goto LABEL_87;
      }
    }

    result = (result + v24 + v76);
    a3 = (a3 + v24 + v76);
LABEL_90:
    for (j = a12 - v60 + v61; j; --j)
    {
      if (*a10)
      {
        v84 = vrev32q_s8(*result);
        v85 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v59);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(v85), vminnmq_f32(vmlaq_f32(v84, v85, vorrq_s8(vandq_s8(vrev32q_s8(*a3), v20), v21)), xmmword_18439C4B0), v84));
      }

      v86 = &a3[a14];
      a10 += a14;
      if (v86 >= a8)
      {
        v87 = -a7;
      }

      else
      {
        v87 = 0;
      }

      a3 = &v86[v87];
      result = (result + v25);
    }

    a10 += a11;
    result += a2;
    v88 = &a5[a4];
    if (v88 >= a9)
    {
      v89 = v23;
    }

    else
    {
      v89 = 0;
    }

    v90 = &v88[v89];
    v91 = a8 + 16 * v89 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v90;
      a8 = v91;
      a5 = v90;
    }

    v57 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v57 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)13,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  v20.i64[0] = 0;
  v20.i32[2] = 0;
  v21.i64[0] = 0;
  v21.i32[2] = 0;
  v21.i32[3] = v19;
  v22 = vmvnq_s8(v21);
  v23 = vandq_s8(vdupq_n_s32(v19), xmmword_18439CB00);
  if (a15)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v20.i32[3] = v24;
  v25 = vmvnq_s8(v20);
  v26 = vandq_s8(vdupq_n_s32(v24), xmmword_18439CB00);
  v27 = 2 * a14;
  v28 = -(a6 * a4);
  v29 = 16 * v27;
  v30 = 16 * a14;
  __asm { FMOV            V5.4S, #1.0 }

  if ((a17 & 0x30) != 0)
  {
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v37 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v38 = (a8 - a3) >> 4;
      if (v38 >= a12)
      {
        v38 = a12;
      }

      v39 = v38;
      if (v38 < 2)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v40 = *a10;
        if (!*a10)
        {
          v51 = &a10[v39];
          v52 = a10;
          do
          {
            v53 = v52++;
          }

          while (v52 <= v51 && (vminvq_u8(vceqzq_s8(*v53)) & 0x80) != 0);
          do
          {
            v54 = v53;
            v53 = (v53 + 4);
          }

          while (v53 <= v51 && !v54->i32[0]);
          if (v54 < v51)
          {
            while (!v54->i8[0])
            {
              v54 = (v54 + 1);
              if (v54 >= v51)
              {
                v54 = &a10[v39];
                break;
              }
            }
          }

          v55 = v54 - a10;
          v56 = (v54 - a10) * a14;
          a3 += v56;
          result += v56;
          a10 += v56;
          v39 -= v55;
          goto LABEL_40;
        }

        if (v40 != 0xFFFF)
        {
          break;
        }

        v41 = &a10[v39];
        v42 = a10;
        do
        {
          v43 = v42++;
        }

        while (v42 <= v41 && (vminvq_u8(vceqq_s8(*v43, v36)) & 0x80) != 0);
        do
        {
          v44 = v43;
          v43 = (v43 + 4);
        }

        while (v43 <= v41 && v44->i32[0] == -1);
        if (v44 < v41)
        {
          while (v44->u8[0] == 255)
          {
            v44 = (v44 + 1);
            if (v44 >= v41)
            {
              v44 = &a10[v39];
              break;
            }
          }
        }

        v45 = v44 - a10;
        v46 = v44 - a10;
        do
        {
          v47 = vorrq_s8(vandq_s8(*a3, v22), v23);
          v48 = vorrq_s8(vandq_s8(a3[1], v22), v23);
          v49 = vorrq_s8(vandq_s8(result[1], v25), v26);
          v50 = vorrq_s8(vandq_s8(*result, v25), v26);
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v47, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v50, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v50, v50, v47, 3), vmlsq_laneq_f32(v47, v47, v50, 3)), v47, v50), v47), v50);
          result[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v48, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v49, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v49, v49, v48, 3), vmlsq_laneq_f32(v48, v48, v49, 3)), v48, v49), v48), v49);
          a10 += v27;
          v46 -= 2;
          result = (result + v29);
          a3 = (a3 + v29);
        }

        while (v46 > 1);
        v39 = v39 - v45 + v46;
LABEL_40:
        if (v39 <= 1)
        {
          goto LABEL_43;
        }
      }

      v57 = 0;
      while (1)
      {
        v58 = (result + v57);
        v59 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v40) & 0xFF00FF00FF00FFLL))), v37);
        v60 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v40)) & 0xFF00FF00FF00FFLL))), v37);
        v61 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v60)), _Q5, *(&result[1] + v57));
        v62 = vmulq_f32(v59, vorrq_s8(vandq_s8(*(a3 + v57), v22), v23));
        v63 = vmulq_f32(v60, vorrq_s8(vandq_s8(*(&a3[1] + v57), v22), v23));
        v64 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v59)), _Q5, *(result + v57));
        *v58 = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v62, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v64, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v64, v64, v62, 3), vmlsq_laneq_f32(v62, v62, v64, 3)), v62, v64), v62), v64);
        v58[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v63, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v61, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v61, v61, v63, 3), vmlsq_laneq_f32(v63, v63, v61, 3)), v63, v61), v63), v61);
        a10 += v27;
        v39 -= 2;
        if (v39 < 2)
        {
          break;
        }

        LOWORD(v40) = *a10;
        v57 += v29;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v57);
          a3 = (a3 + v57);
          goto LABEL_40;
        }
      }

      result = (result + v29 + v57);
      a3 = (a3 + v29 + v57);
LABEL_43:
      for (i = a12 - v38 + v39; i; --i)
      {
        if (*a10)
        {
          v66 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v37);
          v67 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v66)), _Q5, *result);
          v68 = vmulq_f32(v66, vorrq_s8(vandq_s8(*a3, v22), v23));
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v68, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v67, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v68, v68, v67, 3), vmlsq_laneq_f32(v67, v67, v68, 3)), v68, v67), v68), v67);
        }

        v69 = &a3[a14];
        a10 += a14;
        if (v69 >= a8)
        {
          v70 = -a7;
        }

        else
        {
          v70 = 0;
        }

        a3 = &v69[v70];
        result = (result + v30);
      }

      a10 += a11;
      result += a2;
      v71 = &a5[a4];
      if (v71 >= a9)
      {
        v72 = v28;
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

      _VF = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ _VF | (a13 == 0))
      {
        return result;
      }
    }
  }

  v75.i64[0] = -1;
  v75.i64[1] = -1;
  v76 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v77 = (a8 - a3) >> 4;
    if (v77 >= a12)
    {
      v77 = a12;
    }

    v78 = v77;
    if (v77 < 2)
    {
      goto LABEL_93;
    }

    while (1)
    {
      v79 = *a10;
      if (!*a10)
      {
        v90 = &a10[v78];
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
              v93 = &a10[v78];
              break;
            }
          }
        }

        v94 = v93 - a10;
        v95 = (v93 - a10) * a14;
        a3 += v95;
        result += v95;
        a10 += v95;
        v78 -= v94;
        goto LABEL_90;
      }

      if (v79 != 0xFFFF)
      {
        break;
      }

      v80 = &a10[v78];
      v81 = a10;
      do
      {
        v82 = v81++;
      }

      while (v81 <= v80 && (vminvq_u8(vceqq_s8(*v82, v75)) & 0x80) != 0);
      do
      {
        v83 = v82;
        v82 = (v82 + 4);
      }

      while (v82 <= v80 && v83->i32[0] == -1);
      if (v83 < v80)
      {
        while (v83->u8[0] == 255)
        {
          v83 = (v83 + 1);
          if (v83 >= v80)
          {
            v83 = &a10[v78];
            break;
          }
        }
      }

      v84 = v83 - a10;
      v85 = v83 - a10;
      do
      {
        v86 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v22), v23);
        v87 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23);
        v88 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v25), v26);
        v89 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v25), v26);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v87, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v88, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v88, v88, v87, 3), vmlsq_laneq_f32(v87, v87, v88, 3)), v87, v88), v87), v88));
        result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v86, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v89, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v89, v89, v86, 3), vmlsq_laneq_f32(v86, v86, v89, 3)), v86, v89), v86), v89));
        a10 += v27;
        v85 -= 2;
        result = (result + v29);
        a3 = (a3 + v29);
      }

      while (v85 > 1);
      v78 = v78 - v84 + v85;
LABEL_90:
      if (v78 <= 1)
      {
        goto LABEL_93;
      }
    }

    v96 = 0;
    while (1)
    {
      v97 = (result + v96);
      v98 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v79)) & 0xFF00FF00FF00FFLL))), v76);
      v99 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v79) & 0xFF00FF00FF00FFLL))), v76);
      v100 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v98)), _Q5, vrev32q_s8(*(&result[1] + v96)));
      v101 = vmulq_f32(v98, vorrq_s8(vandq_s8(vrev32q_s8(*(&a3[1] + v96)), v22), v23));
      v102 = vmulq_f32(v99, vorrq_s8(vandq_s8(vrev32q_s8(*(a3 + v96)), v22), v23));
      v103 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v99)), _Q5, vrev32q_s8(*(result + v96)));
      *v97 = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v102, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v103, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v103, v103, v102, 3), vmlsq_laneq_f32(v102, v102, v103, 3)), v102, v103), v102), v103));
      v97[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v101, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v100, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v100, v100, v101, 3), vmlsq_laneq_f32(v101, v101, v100, 3)), v101, v100), v101), v100));
      a10 += v27;
      v78 -= 2;
      if (v78 < 2)
      {
        break;
      }

      LOWORD(v79) = *a10;
      v96 += v29;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v96);
        a3 = (a3 + v96);
        goto LABEL_90;
      }
    }

    result = (result + v29 + v96);
    a3 = (a3 + v29 + v96);
LABEL_93:
    for (j = a12 - v77 + v78; j; --j)
    {
      if (*a10)
      {
        v105 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v76);
        v106 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v105)), _Q5, vrev32q_s8(*result));
        v107 = vmulq_f32(v105, vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23));
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v107, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v106, 3)), vmlaq_f32(vaddq_f32(vmlsq_laneq_f32(v107, v107, v106, 3), vmlsq_laneq_f32(v106, v106, v107, 3)), v107, v106), v107), v106));
      }

      v108 = &a3[a14];
      a10 += a14;
      if (v108 >= a8)
      {
        v109 = -a7;
      }

      else
      {
        v109 = 0;
      }

      a3 = &v108[v109];
      result = (result + v30);
    }

    a10 += a11;
    result += a2;
    v110 = &a5[a4];
    if (v110 >= a9)
    {
      v111 = v28;
    }

    else
    {
      v111 = 0;
    }

    v112 = &v110[v111];
    v113 = a8 + 16 * v111 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v112;
      a8 = v113;
      a5 = v112;
    }

    _VF = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ _VF | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)14,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  v20.i64[0] = 0;
  v20.i32[2] = 0;
  v20.i32[3] = v19;
  v21 = vmvnq_s8(v20);
  v22 = vandq_s8(vdupq_n_s32(v19), xmmword_18439CB00);
  if (a15)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24.i64[0] = 0;
  v24.i32[2] = 0;
  v24.i32[3] = v23;
  v25 = vmvnq_s8(v24);
  v26 = vandq_s8(vdupq_n_s32(v23), xmmword_18439CB00);
  v27 = 2 * a14;
  v28 = -(a6 * a4);
  v29 = 16 * v27;
  v30 = 16 * a14;
  __asm { FMOV            V6.4S, #1.0 }

  if ((a17 & 0x30) != 0)
  {
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v37 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v38 = (a8 - a3) >> 4;
      if (v38 >= a12)
      {
        v38 = a12;
      }

      v39 = v38;
      if (v38 < 2)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v40 = *a10;
        if (!*a10)
        {
          v51 = &a10[v39];
          v52 = a10;
          do
          {
            v53 = v52++;
          }

          while (v52 <= v51 && (vminvq_u8(vceqzq_s8(*v53)) & 0x80) != 0);
          do
          {
            v54 = v53;
            v53 = (v53 + 4);
          }

          while (v53 <= v51 && !v54->i32[0]);
          if (v54 < v51)
          {
            while (!v54->i8[0])
            {
              v54 = (v54 + 1);
              if (v54 >= v51)
              {
                v54 = &a10[v39];
                break;
              }
            }
          }

          v55 = v54 - a10;
          v56 = (v54 - a10) * a14;
          a3 += v56;
          result += v56;
          a10 += v56;
          v39 -= v55;
          goto LABEL_40;
        }

        if (v40 != 0xFFFF)
        {
          break;
        }

        v41 = &a10[v39];
        v42 = a10;
        do
        {
          v43 = v42++;
        }

        while (v42 <= v41 && (vminvq_u8(vceqq_s8(*v43, v36)) & 0x80) != 0);
        do
        {
          v44 = v43;
          v43 = (v43 + 4);
        }

        while (v43 <= v41 && v44->i32[0] == -1);
        if (v44 < v41)
        {
          while (v44->u8[0] == 255)
          {
            v44 = (v44 + 1);
            if (v44 >= v41)
            {
              v44 = &a10[v39];
              break;
            }
          }
        }

        v45 = v44 - a10;
        v46 = v44 - a10;
        do
        {
          v47 = vorrq_s8(vandq_s8(a3[1], v21), v22);
          v48 = vorrq_s8(vandq_s8(*a3, v21), v22);
          v49 = vorrq_s8(vandq_s8(*result, v25), v26);
          v50 = vorrq_s8(vandq_s8(result[1], v25), v26);
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v48, 3)), vbslq_s8(vcgtzq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(v49, 3), _Q6), 0)), vaddq_f32(vmlsq_f32(v48, v49, v48), v49), v48), v49);
          result[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v47, 3)), vbslq_s8(vcgtzq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(v50, 3), _Q6), 0)), vaddq_f32(vmlsq_f32(v47, v50, v47), v50), v47), v50);
          a10 += v27;
          v46 -= 2;
          result = (result + v29);
          a3 = (a3 + v29);
        }

        while (v46 > 1);
        v39 = v39 - v45 + v46;
LABEL_40:
        if (v39 <= 1)
        {
          goto LABEL_43;
        }
      }

      v57 = 0;
      while (1)
      {
        v58 = (result + v57);
        v59 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v40) & 0xFF00FF00FF00FFLL))), v37);
        v60 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v40)) & 0xFF00FF00FF00FFLL))), v37);
        v61 = vbslq_s8(vandq_s8(v24, vcgtzq_f32(v60)), _Q6, *(&result[1] + v57));
        v62 = vbslq_s8(vandq_s8(v24, vcgtzq_f32(v59)), _Q6, *(result + v57));
        v63 = vmulq_f32(v60, vorrq_s8(vandq_s8(*(&a3[1] + v57), v21), v22));
        v64 = vmulq_f32(v59, vorrq_s8(vandq_s8(*(a3 + v57), v21), v22));
        *v58 = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v64, 3)), vbslq_s8(vcgtzq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(v62, 3), _Q6), 0)), vaddq_f32(vmlsq_f32(v64, v62, v64), v62), v64), v62);
        v58[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v63, 3)), vbslq_s8(vcgtzq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(v61, 3), _Q6), 0)), vaddq_f32(vmlsq_f32(v63, v61, v63), v61), v63), v61);
        a10 += v27;
        v39 -= 2;
        if (v39 < 2)
        {
          break;
        }

        LOWORD(v40) = *a10;
        v57 += v29;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v57);
          a3 = (a3 + v57);
          goto LABEL_40;
        }
      }

      result = (result + v29 + v57);
      a3 = (a3 + v29 + v57);
LABEL_43:
      for (i = a12 - v38 + v39; i; --i)
      {
        if (*a10)
        {
          v66 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v37);
          v67 = vbslq_s8(vandq_s8(v24, vcgtzq_f32(v66)), _Q6, *result);
          v68 = vmulq_f32(v66, vorrq_s8(vandq_s8(*a3, v21), v22));
          *result = vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtzq_f32(v68)), 3)), vbslq_s8(vcgtzq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(v67, 3), _Q6), 0)), vaddq_f32(vmlsq_f32(v68, v67, v68), v67), v68), v67);
        }

        v69 = &a3[a14];
        a10 += a14;
        if (v69 >= a8)
        {
          v70 = -a7;
        }

        else
        {
          v70 = 0;
        }

        a3 = &v69[v70];
        result = (result + v30);
      }

      a10 += a11;
      result += a2;
      v71 = &a5[a4];
      if (v71 >= a9)
      {
        v72 = v28;
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

      _VF = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ _VF | (a13 == 0))
      {
        return result;
      }
    }
  }

  v75.i64[0] = -1;
  v75.i64[1] = -1;
  v76 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v77 = (a8 - a3) >> 4;
    if (v77 >= a12)
    {
      v77 = a12;
    }

    v78 = v77;
    if (v77 < 2)
    {
      goto LABEL_93;
    }

    while (1)
    {
      v79 = *a10;
      if (!*a10)
      {
        v90 = &a10[v78];
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
              v93 = &a10[v78];
              break;
            }
          }
        }

        v94 = v93 - a10;
        v95 = (v93 - a10) * a14;
        a3 += v95;
        result += v95;
        a10 += v95;
        v78 -= v94;
        goto LABEL_90;
      }

      if (v79 != 0xFFFF)
      {
        break;
      }

      v80 = &a10[v78];
      v81 = a10;
      do
      {
        v82 = v81++;
      }

      while (v81 <= v80 && (vminvq_u8(vceqq_s8(*v82, v75)) & 0x80) != 0);
      do
      {
        v83 = v82;
        v82 = (v82 + 4);
      }

      while (v82 <= v80 && v83->i32[0] == -1);
      if (v83 < v80)
      {
        while (v83->u8[0] == 255)
        {
          v83 = (v83 + 1);
          if (v83 >= v80)
          {
            v83 = &a10[v78];
            break;
          }
        }
      }

      v84 = v83 - a10;
      v85 = v83 - a10;
      do
      {
        v86 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v21), v22);
        v87 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v21), v22);
        v88 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v25), v26);
        v89 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v25), v26);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v87, 3)), vbslq_s8(vcgtzq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(v88, 3), _Q6), 0)), vaddq_f32(vmlsq_f32(v87, v88, v87), v88), v87), v88));
        result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v86, 3)), vbslq_s8(vcgtzq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(v89, 3), _Q6), 0)), vaddq_f32(vmlsq_f32(v86, v89, v86), v89), v86), v89));
        a10 += v27;
        v85 -= 2;
        result = (result + v29);
        a3 = (a3 + v29);
      }

      while (v85 > 1);
      v78 = v78 - v84 + v85;
LABEL_90:
      if (v78 <= 1)
      {
        goto LABEL_93;
      }
    }

    v96 = 0;
    while (1)
    {
      v97 = (result + v96);
      v98 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v79) & 0xFF00FF00FF00FFLL))), v76);
      v99 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v79)) & 0xFF00FF00FF00FFLL))), v76);
      v100 = vbslq_s8(vandq_s8(v24, vcgtzq_f32(v99)), _Q6, vrev32q_s8(*(&result[1] + v96)));
      v101 = vmulq_f32(v99, vorrq_s8(vandq_s8(vrev32q_s8(*(&a3[1] + v96)), v21), v22));
      v102 = vmulq_f32(v98, vorrq_s8(vandq_s8(vrev32q_s8(*(a3 + v96)), v21), v22));
      v103 = vbslq_s8(vandq_s8(v24, vcgtzq_f32(v98)), _Q6, vrev32q_s8(*(result + v96)));
      *v97 = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v102, 3)), vbslq_s8(vcgtzq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(v103, 3), _Q6), 0)), vaddq_f32(vmlsq_f32(v102, v103, v102), v103), v102), v103));
      v97[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v101, 3)), vbslq_s8(vcgtzq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(v100, 3), _Q6), 0)), vaddq_f32(vmlsq_f32(v101, v100, v101), v100), v101), v100));
      a10 += v27;
      v78 -= 2;
      if (v78 < 2)
      {
        break;
      }

      LOWORD(v79) = *a10;
      v96 += v29;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v96);
        a3 = (a3 + v96);
        goto LABEL_90;
      }
    }

    result = (result + v29 + v96);
    a3 = (a3 + v29 + v96);
LABEL_93:
    for (j = a12 - v77 + v78; j; --j)
    {
      if (*a10)
      {
        v105 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v76);
        v106 = vbslq_s8(vandq_s8(v24, vcgtzq_f32(v105)), _Q6, vrev32q_s8(*result));
        v107 = vmulq_f32(v105, vorrq_s8(vandq_s8(vrev32q_s8(*a3), v21), v22));
        *result = vrev32q_s8(vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtzq_f32(v107)), 3)), vbslq_s8(vcgtzq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(v106, 3), _Q6), 0)), vaddq_f32(vmlsq_f32(v107, v106, v107), v106), v107), v106));
      }

      v108 = &a3[a14];
      a10 += a14;
      if (v108 >= a8)
      {
        v109 = -a7;
      }

      else
      {
        v109 = 0;
      }

      a3 = &v108[v109];
      result = (result + v30);
    }

    a10 += a11;
    result += a2;
    v110 = &a5[a4];
    if (v110 >= a9)
    {
      v111 = v28;
    }

    else
    {
      v111 = 0;
    }

    v112 = &v110[v111];
    v113 = a8 + 16 * v111 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v112;
      a8 = v113;
      a5 = v112;
    }

    _VF = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ _VF | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)15,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  v20.i64[0] = 0;
  v20.i32[2] = 0;
  v21.i64[0] = 0;
  v21.i32[2] = 0;
  v21.i32[3] = v19;
  v22 = vmvnq_s8(v21);
  v23 = vandq_s8(vdupq_n_s32(v19), xmmword_18439CB00);
  if (a15)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v20.i32[3] = v24;
  v25 = vmvnq_s8(v20);
  v26 = vandq_s8(vdupq_n_s32(v24), xmmword_18439CB00);
  v27 = 2 * a14;
  v28 = -(a6 * a4);
  v29 = 16 * v27;
  v30 = 16 * a14;
  __asm { FMOV            V5.4S, #1.0 }

  if ((a17 & 0x30) != 0)
  {
    v36.i64[0] = 0x3F0000003F000000;
    v36.i64[1] = 0x3F0000003F000000;
    v37.i64[0] = 0x8000000080000000;
    v37.i64[1] = 0x8000000080000000;
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    v39 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v40 = (a8 - a3) >> 4;
      if (v40 >= a12)
      {
        v40 = a12;
      }

      v41 = v40;
      if (v40 < 2)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v42 = *a10;
        if (!*a10)
        {
          v61 = &a10[v41];
          v62 = a10;
          do
          {
            v63 = v62++;
          }

          while (v62 <= v61 && (vminvq_u8(vceqzq_s8(*v63)) & 0x80) != 0);
          do
          {
            v64 = v63;
            v63 = (v63 + 4);
          }

          while (v63 <= v61 && !v64->i32[0]);
          if (v64 < v61)
          {
            while (!v64->i8[0])
            {
              v64 = (v64 + 1);
              if (v64 >= v61)
              {
                v64 = &a10[v41];
                break;
              }
            }
          }

          v65 = v64 - a10;
          v66 = (v64 - a10) * a14;
          a3 += v66;
          result += v66;
          a10 += v66;
          v41 -= v65;
          goto LABEL_40;
        }

        if (v42 != 0xFFFF)
        {
          break;
        }

        v43 = &a10[v41];
        v44 = a10;
        do
        {
          v45 = v44++;
        }

        while (v44 <= v43 && (vminvq_u8(vceqq_s8(*v45, v38)) & 0x80) != 0);
        do
        {
          v46 = v45;
          v45 = (v45 + 4);
        }

        while (v45 <= v43 && v46->i32[0] == -1);
        if (v46 < v43)
        {
          while (v46->u8[0] == 255)
          {
            v46 = (v46 + 1);
            if (v46 >= v43)
            {
              v46 = &a10[v41];
              break;
            }
          }
        }

        v47 = v46 - a10;
        v48 = v46 - a10;
        do
        {
          v49 = vorrq_s8(vandq_s8(*a3, v22), v23);
          v50 = vorrq_s8(vandq_s8(a3[1], v22), v23);
          v51 = vorrq_s8(vandq_s8(*result, v25), v26);
          v52 = vdupq_laneq_s32(v50, 3);
          v53 = vdupq_laneq_s32(v49, 3);
          v54 = vdupq_laneq_s32(v51, 3);
          v55 = vorrq_s8(vandq_s8(result[1], v25), v26);
          v56 = vdupq_laneq_s32(v55, 3);
          v57 = vcgtq_f32(vmulq_laneq_f32(v36, v51, 3), v51);
          v58 = vcgtq_f32(vmulq_laneq_f32(v36, v55, 3), v55);
          v59 = vandq_s8(v58, v37);
          v60 = vandq_s8(v57, v37);
          *result = vbslq_s8(vcgtzq_f32(v53), vbslq_s8(vcgtzq_f32(v54), vsubq_f32(vaddq_f32(vmlaq_f32(v49, veorq_s8(v60, vsubq_f32(v54, v51)), v49), vmlaq_f32(v51, veorq_s8(v60, vsubq_f32(v53, v49)), v51)), vbslq_s8(v57, v37, vmulq_laneq_f32(v53, v51, 3))), v49), v51);
          result[1] = vbslq_s8(vcgtzq_f32(v52), vbslq_s8(vcgtzq_f32(v56), vsubq_f32(vaddq_f32(vmlaq_f32(v50, veorq_s8(v59, vsubq_f32(v56, v55)), v50), vmlaq_f32(v55, veorq_s8(v59, vsubq_f32(v52, v50)), v55)), vbslq_s8(v58, v37, vmulq_laneq_f32(v52, v55, 3))), v50), v55);
          a10 += v27;
          v48 -= 2;
          result = (result + v29);
          a3 = (a3 + v29);
        }

        while (v48 > 1);
        v41 = v41 - v47 + v48;
LABEL_40:
        if (v41 <= 1)
        {
          goto LABEL_43;
        }
      }

      v67 = 0;
      while (1)
      {
        v68 = (result + v67);
        v69 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v42) & 0xFF00FF00FF00FFLL))), v39);
        v70 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v42)) & 0xFF00FF00FF00FFLL))), v39);
        v71 = vandq_s8(v20, vcgtzq_f32(v69));
        v72 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v70)), _Q5, *(&result[1] + v67));
        v73 = vmulq_f32(v69, vorrq_s8(vandq_s8(*(a3 + v67), v22), v23));
        v74 = vmulq_f32(v70, vorrq_s8(vandq_s8(*(&a3[1] + v67), v22), v23));
        v75 = vdupq_laneq_s32(v74, 3);
        v76 = vdupq_laneq_s32(v73, 3);
        v77 = vbslq_s8(v71, _Q5, *(result + v67));
        v78 = vdupq_laneq_s32(v77, 3);
        v79 = vdupq_laneq_s32(v72, 3);
        v80 = vcgtq_f32(vmulq_laneq_f32(v36, v77, 3), v77);
        v81 = vcgtq_f32(vmulq_laneq_f32(v36, v72, 3), v72);
        v82 = vandq_s8(v81, v37);
        v83 = vandq_s8(v80, v37);
        *v68 = vbslq_s8(vcgtzq_f32(v76), vbslq_s8(vcgtzq_f32(v78), vsubq_f32(vaddq_f32(vmlaq_f32(v73, veorq_s8(v83, vsubq_f32(v78, v77)), v73), vmlaq_f32(v77, veorq_s8(v83, vsubq_f32(v76, v73)), v77)), vbslq_s8(v80, v37, vmulq_laneq_f32(v76, v77, 3))), v73), v77);
        v68[1] = vbslq_s8(vcgtzq_f32(v75), vbslq_s8(vcgtzq_f32(v79), vsubq_f32(vaddq_f32(vmlaq_f32(v74, veorq_s8(v82, vsubq_f32(v79, v72)), v74), vmlaq_f32(v72, veorq_s8(v82, vsubq_f32(v75, v74)), v72)), vbslq_s8(v81, v37, vmulq_laneq_f32(v75, v72, 3))), v74), v72);
        a10 += v27;
        v41 -= 2;
        if (v41 < 2)
        {
          break;
        }

        LOWORD(v42) = *a10;
        v67 += v29;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v67);
          a3 = (a3 + v67);
          goto LABEL_40;
        }
      }

      result = (result + v29 + v67);
      a3 = (a3 + v29 + v67);
LABEL_43:
      for (i = a12 - v40 + v41; i; --i)
      {
        if (*a10)
        {
          v85 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v39);
          v86 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v85)), _Q5, *result);
          v87 = vmulq_f32(v85, vorrq_s8(vandq_s8(*a3, v22), v23));
          v88 = vdupq_laneq_s32(v87, 3);
          v89 = vdupq_laneq_s32(v86, 3);
          v90 = vcgtq_f32(vmulq_laneq_f32(v36, v86, 3), v86);
          v91 = vandq_s8(v90, v37);
          *result = vbslq_s8(vcgtzq_f32(v88), vbslq_s8(vcgtzq_f32(v89), vsubq_f32(vaddq_f32(vmlaq_f32(v87, veorq_s8(v91, vsubq_f32(v89, v86)), v87), vmlaq_f32(v86, veorq_s8(v91, vsubq_f32(v88, v87)), v86)), vbslq_s8(v90, v37, vmulq_laneq_f32(v89, v87, 3))), v87), v86);
        }

        v92 = &a3[a14];
        a10 += a14;
        if (v92 >= a8)
        {
          v93 = -a7;
        }

        else
        {
          v93 = 0;
        }

        a3 = &v92[v93];
        result = (result + v30);
      }

      a10 += a11;
      result += a2;
      v94 = &a5[a4];
      if (v94 >= a9)
      {
        v95 = v28;
      }

      else
      {
        v95 = 0;
      }

      v96 = &v94[v95];
      v97 = a8 + 16 * v95 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v96;
        a8 = v97;
        a5 = v96;
      }

      _VF = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ _VF | (a13 == 0))
      {
        return result;
      }
    }
  }

  v98.i64[0] = 0x3F0000003F000000;
  v98.i64[1] = 0x3F0000003F000000;
  v99.i64[0] = 0x8000000080000000;
  v99.i64[1] = 0x8000000080000000;
  v100.i64[0] = -1;
  v100.i64[1] = -1;
  v101 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v102 = (a8 - a3) >> 4;
    if (v102 >= a12)
    {
      v102 = a12;
    }

    v103 = v102;
    if (v102 < 2)
    {
      goto LABEL_93;
    }

    while (1)
    {
      v104 = *a10;
      if (!*a10)
      {
        v123 = &a10[v103];
        v124 = a10;
        do
        {
          v125 = v124++;
        }

        while (v124 <= v123 && (vminvq_u8(vceqzq_s8(*v125)) & 0x80) != 0);
        do
        {
          v126 = v125;
          v125 = (v125 + 4);
        }

        while (v125 <= v123 && !v126->i32[0]);
        if (v126 < v123)
        {
          while (!v126->i8[0])
          {
            v126 = (v126 + 1);
            if (v126 >= v123)
            {
              v126 = &a10[v103];
              break;
            }
          }
        }

        v127 = v126 - a10;
        v128 = (v126 - a10) * a14;
        a3 += v128;
        result += v128;
        a10 += v128;
        v103 -= v127;
        goto LABEL_90;
      }

      if (v104 != 0xFFFF)
      {
        break;
      }

      v105 = &a10[v103];
      v106 = a10;
      do
      {
        v107 = v106++;
      }

      while (v106 <= v105 && (vminvq_u8(vceqq_s8(*v107, v100)) & 0x80) != 0);
      do
      {
        v108 = v107;
        v107 = (v107 + 4);
      }

      while (v107 <= v105 && v108->i32[0] == -1);
      if (v108 < v105)
      {
        while (v108->u8[0] == 255)
        {
          v108 = (v108 + 1);
          if (v108 >= v105)
          {
            v108 = &a10[v103];
            break;
          }
        }
      }

      v109 = v108 - a10;
      v110 = v108 - a10;
      do
      {
        v111 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v22), v23);
        v112 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23);
        v113 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v25), v26);
        v114 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v25), v26);
        v115 = vdupq_laneq_s32(v112, 3);
        v116 = vdupq_laneq_s32(v111, 3);
        v117 = vdupq_laneq_s32(v114, 3);
        v118 = vdupq_laneq_s32(v113, 3);
        v119 = vcgtq_f32(vmulq_laneq_f32(v98, v114, 3), v114);
        v120 = vcgtq_f32(vmulq_laneq_f32(v98, v113, 3), v113);
        v121 = vandq_s8(v120, v99);
        v122 = vandq_s8(v119, v99);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(v115), vbslq_s8(vcgtzq_f32(v118), vsubq_f32(vaddq_f32(vmlaq_f32(v112, veorq_s8(v121, vsubq_f32(v118, v113)), v112), vmlaq_f32(v113, veorq_s8(v121, vsubq_f32(v115, v112)), v113)), vbslq_s8(v120, v99, vmulq_laneq_f32(v115, v113, 3))), v112), v113));
        result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(v116), vbslq_s8(vcgtzq_f32(v117), vsubq_f32(vaddq_f32(vmlaq_f32(v111, veorq_s8(v122, vsubq_f32(v117, v114)), v111), vmlaq_f32(v114, veorq_s8(v122, vsubq_f32(v116, v111)), v114)), vbslq_s8(v119, v99, vmulq_laneq_f32(v116, v114, 3))), v111), v114));
        a10 += v27;
        v110 -= 2;
        result = (result + v29);
        a3 = (a3 + v29);
      }

      while (v110 > 1);
      v103 = v103 - v109 + v110;
LABEL_90:
      if (v103 <= 1)
      {
        goto LABEL_93;
      }
    }

    v129 = 0;
    while (1)
    {
      v130 = (result + v129);
      v131 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v104)) & 0xFF00FF00FF00FFLL))), v101);
      v132 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v104) & 0xFF00FF00FF00FFLL))), v101);
      v133 = vandq_s8(v20, vcgtzq_f32(v132));
      v134 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v131)), _Q5, vrev32q_s8(*(&result[1] + v129)));
      v135 = vmulq_f32(v131, vorrq_s8(vandq_s8(vrev32q_s8(*(&a3[1] + v129)), v22), v23));
      v136 = vmulq_f32(v132, vorrq_s8(vandq_s8(vrev32q_s8(*(a3 + v129)), v22), v23));
      v137 = vdupq_laneq_s32(v136, 3);
      v138 = vdupq_laneq_s32(v135, 3);
      v139 = vdupq_laneq_s32(v134, 3);
      v140 = vbslq_s8(v133, _Q5, vrev32q_s8(*(result + v129)));
      v141 = vdupq_laneq_s32(v140, 3);
      v142 = vcgtq_f32(vmulq_laneq_f32(v98, v134, 3), v134);
      v143 = vcgtq_f32(vmulq_laneq_f32(v98, v140, 3), v140);
      v144 = vandq_s8(v143, v99);
      v145 = vandq_s8(v142, v99);
      *v130 = vrev32q_s8(vbslq_s8(vcgtzq_f32(v137), vbslq_s8(vcgtzq_f32(v141), vsubq_f32(vaddq_f32(vmlaq_f32(v136, veorq_s8(v144, vsubq_f32(v141, v140)), v136), vmlaq_f32(v140, veorq_s8(v144, vsubq_f32(v137, v136)), v140)), vbslq_s8(v143, v99, vmulq_laneq_f32(v137, v140, 3))), v136), v140));
      v130[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(v138), vbslq_s8(vcgtzq_f32(v139), vsubq_f32(vaddq_f32(vmlaq_f32(v135, veorq_s8(v145, vsubq_f32(v139, v134)), v135), vmlaq_f32(v134, veorq_s8(v145, vsubq_f32(v138, v135)), v134)), vbslq_s8(v142, v99, vmulq_laneq_f32(v138, v134, 3))), v135), v134));
      a10 += v27;
      v103 -= 2;
      if (v103 < 2)
      {
        break;
      }

      LOWORD(v104) = *a10;
      v129 += v29;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v129);
        a3 = (a3 + v129);
        goto LABEL_90;
      }
    }

    result = (result + v29 + v129);
    a3 = (a3 + v29 + v129);
LABEL_93:
    for (j = a12 - v102 + v103; j; --j)
    {
      if (*a10)
      {
        v147 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v101);
        v148 = vandq_s8(v20, vcgtzq_f32(v147));
        v149 = vmulq_f32(v147, vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23));
        v150 = vdupq_laneq_s32(v149, 3);
        v151 = vbslq_s8(v148, _Q5, vrev32q_s8(*result));
        v152 = vdupq_laneq_s32(v151, 3);
        v153 = vcgtq_f32(vmulq_laneq_f32(v98, v151, 3), v151);
        v154 = vandq_s8(v153, v99);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(v150), vbslq_s8(vcgtzq_f32(v152), vsubq_f32(vaddq_f32(vmlaq_f32(v149, veorq_s8(v154, vsubq_f32(v152, v151)), v149), vmlaq_f32(v151, veorq_s8(v154, vsubq_f32(v150, v149)), v151)), vbslq_s8(v153, v99, vmulq_laneq_f32(v152, v149, 3))), v149), v151));
      }

      v155 = &a3[a14];
      a10 += a14;
      if (v155 >= a8)
      {
        v156 = -a7;
      }

      else
      {
        v156 = 0;
      }

      a3 = &v155[v156];
      result = (result + v30);
    }

    a10 += a11;
    result += a2;
    v157 = &a5[a4];
    if (v157 >= a9)
    {
      v158 = v28;
    }

    else
    {
      v158 = 0;
    }

    v159 = &v157[v158];
    v160 = a8 + 16 * v158 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v159;
      a8 = v160;
      a5 = v159;
    }

    _VF = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ _VF | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)17,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  v20.i64[0] = 0;
  v20.i32[2] = 0;
  v21.i64[0] = 0;
  v21.i32[2] = 0;
  v21.i32[3] = v19;
  v22 = vmvnq_s8(v21);
  v23 = vandq_s8(vdupq_n_s32(v19), xmmword_18439CB00);
  if (a15)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v20.i32[3] = v24;
  v25 = vmvnq_s8(v20);
  v26 = vandq_s8(vdupq_n_s32(v24), xmmword_18439CB00);
  v27 = 2 * a14;
  v28 = -(a6 * a4);
  v29 = 16 * v27;
  v30 = 16 * a14;
  __asm { FMOV            V5.4S, #1.0 }

  if ((a17 & 0x30) != 0)
  {
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v37 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v38 = (a8 - a3) >> 4;
      if (v38 >= a12)
      {
        v38 = a12;
      }

      v39 = v38;
      if (v38 < 2)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v40 = *a10;
        if (!*a10)
        {
          v51 = &a10[v39];
          v52 = a10;
          do
          {
            v53 = v52++;
          }

          while (v52 <= v51 && (vminvq_u8(vceqzq_s8(*v53)) & 0x80) != 0);
          do
          {
            v54 = v53;
            v53 = (v53 + 4);
          }

          while (v53 <= v51 && !v54->i32[0]);
          if (v54 < v51)
          {
            while (!v54->i8[0])
            {
              v54 = (v54 + 1);
              if (v54 >= v51)
              {
                v54 = &a10[v39];
                break;
              }
            }
          }

          v55 = v54 - a10;
          v56 = (v54 - a10) * a14;
          a3 += v56;
          result += v56;
          a10 += v56;
          v39 -= v55;
          goto LABEL_40;
        }

        if (v40 != 0xFFFF)
        {
          break;
        }

        v41 = &a10[v39];
        v42 = a10;
        do
        {
          v43 = v42++;
        }

        while (v42 <= v41 && (vminvq_u8(vceqq_s8(*v43, v36)) & 0x80) != 0);
        do
        {
          v44 = v43;
          v43 = (v43 + 4);
        }

        while (v43 <= v41 && v44->i32[0] == -1);
        if (v44 < v41)
        {
          while (v44->u8[0] == 255)
          {
            v44 = (v44 + 1);
            if (v44 >= v41)
            {
              v44 = &a10[v39];
              break;
            }
          }
        }

        v45 = v44 - a10;
        v46 = v44 - a10;
        do
        {
          v47 = vorrq_s8(vandq_s8(result[1], v25), v26);
          v48 = vorrq_s8(vandq_s8(*result, v25), v26);
          v49 = vorrq_s8(vandq_s8(*a3, v22), v23);
          v50 = vorrq_s8(vandq_s8(a3[1], v22), v23);
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v49, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v48, 3)), vaddq_f32(vmlsq_laneq_f32(v49, v49, v48, 3), vaddq_f32(vmaxnmq_f32(vmulq_laneq_f32(v48, v49, 3), vmulq_laneq_f32(v49, v48, 3)), vmlsq_laneq_f32(v48, v48, v49, 3))), v49), v48);
          result[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v50, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v47, 3)), vaddq_f32(vmlsq_laneq_f32(v50, v50, v47, 3), vaddq_f32(vmaxnmq_f32(vmulq_laneq_f32(v47, v50, 3), vmulq_laneq_f32(v50, v47, 3)), vmlsq_laneq_f32(v47, v47, v50, 3))), v50), v47);
          a10 += v27;
          v46 -= 2;
          result = (result + v29);
          a3 = (a3 + v29);
        }

        while (v46 > 1);
        v39 = v39 - v45 + v46;
LABEL_40:
        if (v39 <= 1)
        {
          goto LABEL_43;
        }
      }

      v57 = 0;
      while (1)
      {
        v58 = (result + v57);
        v59 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v40) & 0xFF00FF00FF00FFLL))), v37);
        v60 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v40)) & 0xFF00FF00FF00FFLL))), v37);
        v61 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v60)), _Q5, *(&result[1] + v57));
        v62 = vmulq_f32(v59, vorrq_s8(vandq_s8(*(a3 + v57), v22), v23));
        v63 = vmulq_f32(v60, vorrq_s8(vandq_s8(*(&a3[1] + v57), v22), v23));
        v64 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v59)), _Q5, *(result + v57));
        *v58 = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v62, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v64, 3)), vaddq_f32(vmlsq_laneq_f32(v62, v62, v64, 3), vaddq_f32(vmaxnmq_f32(vmulq_laneq_f32(v64, v62, 3), vmulq_laneq_f32(v62, v64, 3)), vmlsq_laneq_f32(v64, v64, v62, 3))), v62), v64);
        v58[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v63, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v61, 3)), vaddq_f32(vmlsq_laneq_f32(v63, v63, v61, 3), vaddq_f32(vmaxnmq_f32(vmulq_laneq_f32(v61, v63, 3), vmulq_laneq_f32(v63, v61, 3)), vmlsq_laneq_f32(v61, v61, v63, 3))), v63), v61);
        a10 += v27;
        v39 -= 2;
        if (v39 < 2)
        {
          break;
        }

        LOWORD(v40) = *a10;
        v57 += v29;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v57);
          a3 = (a3 + v57);
          goto LABEL_40;
        }
      }

      result = (result + v29 + v57);
      a3 = (a3 + v29 + v57);
LABEL_43:
      for (i = a12 - v38 + v39; i; --i)
      {
        if (*a10)
        {
          v66 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v37);
          v67 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v66)), _Q5, *result);
          v68 = vmulq_f32(v66, vorrq_s8(vandq_s8(*a3, v22), v23));
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v68, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v67, 3)), vaddq_f32(vmlsq_laneq_f32(v68, v68, v67, 3), vaddq_f32(vmaxnmq_f32(vmulq_laneq_f32(v67, v68, 3), vmulq_laneq_f32(v68, v67, 3)), vmlsq_laneq_f32(v67, v67, v68, 3))), v68), v67);
        }

        v69 = &a3[a14];
        a10 += a14;
        if (v69 >= a8)
        {
          v70 = -a7;
        }

        else
        {
          v70 = 0;
        }

        a3 = &v69[v70];
        result = (result + v30);
      }

      a10 += a11;
      result += a2;
      v71 = &a5[a4];
      if (v71 >= a9)
      {
        v72 = v28;
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

      _VF = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ _VF | (a13 == 0))
      {
        return result;
      }
    }
  }

  v75.i64[0] = -1;
  v75.i64[1] = -1;
  v76 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v77 = (a8 - a3) >> 4;
    if (v77 >= a12)
    {
      v77 = a12;
    }

    v78 = v77;
    if (v77 < 2)
    {
      goto LABEL_93;
    }

    while (1)
    {
      v79 = *a10;
      if (!*a10)
      {
        v90 = &a10[v78];
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
              v93 = &a10[v78];
              break;
            }
          }
        }

        v94 = v93 - a10;
        v95 = (v93 - a10) * a14;
        a3 += v95;
        result += v95;
        a10 += v95;
        v78 -= v94;
        goto LABEL_90;
      }

      if (v79 != 0xFFFF)
      {
        break;
      }

      v80 = &a10[v78];
      v81 = a10;
      do
      {
        v82 = v81++;
      }

      while (v81 <= v80 && (vminvq_u8(vceqq_s8(*v82, v75)) & 0x80) != 0);
      do
      {
        v83 = v82;
        v82 = (v82 + 4);
      }

      while (v82 <= v80 && v83->i32[0] == -1);
      if (v83 < v80)
      {
        while (v83->u8[0] == 255)
        {
          v83 = (v83 + 1);
          if (v83 >= v80)
          {
            v83 = &a10[v78];
            break;
          }
        }
      }

      v84 = v83 - a10;
      v85 = v83 - a10;
      do
      {
        v86 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v25), v26);
        v87 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v25), v26);
        v88 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v22), v23);
        v89 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v89, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v86, 3)), vaddq_f32(vmlsq_laneq_f32(v89, v89, v86, 3), vaddq_f32(vmaxnmq_f32(vmulq_laneq_f32(v86, v89, 3), vmulq_laneq_f32(v89, v86, 3)), vmlsq_laneq_f32(v86, v86, v89, 3))), v89), v86));
        result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v88, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v87, 3)), vaddq_f32(vmlsq_laneq_f32(v88, v88, v87, 3), vaddq_f32(vmaxnmq_f32(vmulq_laneq_f32(v87, v88, 3), vmulq_laneq_f32(v88, v87, 3)), vmlsq_laneq_f32(v87, v87, v88, 3))), v88), v87));
        a10 += v27;
        v85 -= 2;
        result = (result + v29);
        a3 = (a3 + v29);
      }

      while (v85 > 1);
      v78 = v78 - v84 + v85;
LABEL_90:
      if (v78 <= 1)
      {
        goto LABEL_93;
      }
    }

    v96 = 0;
    while (1)
    {
      v97 = (result + v96);
      v98 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v79)) & 0xFF00FF00FF00FFLL))), v76);
      v99 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v79) & 0xFF00FF00FF00FFLL))), v76);
      v100 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v98)), _Q5, vrev32q_s8(*(&result[1] + v96)));
      v101 = vmulq_f32(v98, vorrq_s8(vandq_s8(vrev32q_s8(*(&a3[1] + v96)), v22), v23));
      v102 = vmulq_f32(v99, vorrq_s8(vandq_s8(vrev32q_s8(*(a3 + v96)), v22), v23));
      v103 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v99)), _Q5, vrev32q_s8(*(result + v96)));
      *v97 = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v102, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v103, 3)), vaddq_f32(vmlsq_laneq_f32(v102, v102, v103, 3), vaddq_f32(vmaxnmq_f32(vmulq_laneq_f32(v103, v102, 3), vmulq_laneq_f32(v102, v103, 3)), vmlsq_laneq_f32(v103, v103, v102, 3))), v102), v103));
      v97[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v101, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v100, 3)), vaddq_f32(vmlsq_laneq_f32(v101, v101, v100, 3), vaddq_f32(vmaxnmq_f32(vmulq_laneq_f32(v100, v101, 3), vmulq_laneq_f32(v101, v100, 3)), vmlsq_laneq_f32(v100, v100, v101, 3))), v101), v100));
      a10 += v27;
      v78 -= 2;
      if (v78 < 2)
      {
        break;
      }

      LOWORD(v79) = *a10;
      v96 += v29;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v96);
        a3 = (a3 + v96);
        goto LABEL_90;
      }
    }

    result = (result + v29 + v96);
    a3 = (a3 + v29 + v96);
LABEL_93:
    for (j = a12 - v77 + v78; j; --j)
    {
      if (*a10)
      {
        v105 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v76);
        v106 = vmulq_f32(v105, vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23));
        v107 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v105)), _Q5, vrev32q_s8(*result));
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v106, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v107, 3)), vaddq_f32(vmlsq_laneq_f32(v106, v106, v107, 3), vaddq_f32(vmaxnmq_f32(vmulq_laneq_f32(v107, v106, 3), vmulq_laneq_f32(v106, v107, 3)), vmlsq_laneq_f32(v107, v107, v106, 3))), v106), v107));
      }

      v108 = &a3[a14];
      a10 += a14;
      if (v108 >= a8)
      {
        v109 = -a7;
      }

      else
      {
        v109 = 0;
      }

      a3 = &v108[v109];
      result = (result + v30);
    }

    a10 += a11;
    result += a2;
    v110 = &a5[a4];
    if (v110 >= a9)
    {
      v111 = v28;
    }

    else
    {
      v111 = 0;
    }

    v112 = &v110[v111];
    v113 = a8 + 16 * v111 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v112;
      a8 = v113;
      a5 = v112;
    }

    _VF = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ _VF | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)16,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  v20.i64[0] = 0;
  v20.i32[2] = 0;
  v21.i64[0] = 0;
  v21.i32[2] = 0;
  v21.i32[3] = v19;
  v22 = vmvnq_s8(v21);
  v23 = vandq_s8(vdupq_n_s32(v19), xmmword_18439CB00);
  if (a15)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v20.i32[3] = v24;
  v25 = vmvnq_s8(v20);
  v26 = vandq_s8(vdupq_n_s32(v24), xmmword_18439CB00);
  v27 = 2 * a14;
  v28 = -(a6 * a4);
  v29 = 16 * v27;
  v30 = 16 * a14;
  __asm { FMOV            V5.4S, #1.0 }

  if ((a17 & 0x30) != 0)
  {
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v37 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v38 = (a8 - a3) >> 4;
      if (v38 >= a12)
      {
        v38 = a12;
      }

      v39 = v38;
      if (v38 < 2)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v40 = *a10;
        if (!*a10)
        {
          v51 = &a10[v39];
          v52 = a10;
          do
          {
            v53 = v52++;
          }

          while (v52 <= v51 && (vminvq_u8(vceqzq_s8(*v53)) & 0x80) != 0);
          do
          {
            v54 = v53;
            v53 = (v53 + 4);
          }

          while (v53 <= v51 && !v54->i32[0]);
          if (v54 < v51)
          {
            while (!v54->i8[0])
            {
              v54 = (v54 + 1);
              if (v54 >= v51)
              {
                v54 = &a10[v39];
                break;
              }
            }
          }

          v55 = v54 - a10;
          v56 = (v54 - a10) * a14;
          a3 += v56;
          result += v56;
          a10 += v56;
          v39 -= v55;
          goto LABEL_40;
        }

        if (v40 != 0xFFFF)
        {
          break;
        }

        v41 = &a10[v39];
        v42 = a10;
        do
        {
          v43 = v42++;
        }

        while (v42 <= v41 && (vminvq_u8(vceqq_s8(*v43, v36)) & 0x80) != 0);
        do
        {
          v44 = v43;
          v43 = (v43 + 4);
        }

        while (v43 <= v41 && v44->i32[0] == -1);
        if (v44 < v41)
        {
          while (v44->u8[0] == 255)
          {
            v44 = (v44 + 1);
            if (v44 >= v41)
            {
              v44 = &a10[v39];
              break;
            }
          }
        }

        v45 = v44 - a10;
        v46 = v44 - a10;
        do
        {
          v47 = vorrq_s8(vandq_s8(result[1], v25), v26);
          v48 = vorrq_s8(vandq_s8(*result, v25), v26);
          v49 = vorrq_s8(vandq_s8(*a3, v22), v23);
          v50 = vorrq_s8(vandq_s8(a3[1], v22), v23);
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v49, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v48, 3)), vaddq_f32(vmlsq_laneq_f32(v49, v49, v48, 3), vaddq_f32(vminnmq_f32(vmulq_laneq_f32(v48, v49, 3), vmulq_laneq_f32(v49, v48, 3)), vmlsq_laneq_f32(v48, v48, v49, 3))), v49), v48);
          result[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v50, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v47, 3)), vaddq_f32(vmlsq_laneq_f32(v50, v50, v47, 3), vaddq_f32(vminnmq_f32(vmulq_laneq_f32(v47, v50, 3), vmulq_laneq_f32(v50, v47, 3)), vmlsq_laneq_f32(v47, v47, v50, 3))), v50), v47);
          a10 += v27;
          v46 -= 2;
          result = (result + v29);
          a3 = (a3 + v29);
        }

        while (v46 > 1);
        v39 = v39 - v45 + v46;
LABEL_40:
        if (v39 <= 1)
        {
          goto LABEL_43;
        }
      }

      v57 = 0;
      while (1)
      {
        v58 = (result + v57);
        v59 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v40) & 0xFF00FF00FF00FFLL))), v37);
        v60 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v40)) & 0xFF00FF00FF00FFLL))), v37);
        v61 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v60)), _Q5, *(&result[1] + v57));
        v62 = vmulq_f32(v59, vorrq_s8(vandq_s8(*(a3 + v57), v22), v23));
        v63 = vmulq_f32(v60, vorrq_s8(vandq_s8(*(&a3[1] + v57), v22), v23));
        v64 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v59)), _Q5, *(result + v57));
        *v58 = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v62, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v64, 3)), vaddq_f32(vmlsq_laneq_f32(v62, v62, v64, 3), vaddq_f32(vminnmq_f32(vmulq_laneq_f32(v64, v62, 3), vmulq_laneq_f32(v62, v64, 3)), vmlsq_laneq_f32(v64, v64, v62, 3))), v62), v64);
        v58[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v63, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v61, 3)), vaddq_f32(vmlsq_laneq_f32(v63, v63, v61, 3), vaddq_f32(vminnmq_f32(vmulq_laneq_f32(v61, v63, 3), vmulq_laneq_f32(v63, v61, 3)), vmlsq_laneq_f32(v61, v61, v63, 3))), v63), v61);
        a10 += v27;
        v39 -= 2;
        if (v39 < 2)
        {
          break;
        }

        LOWORD(v40) = *a10;
        v57 += v29;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v57);
          a3 = (a3 + v57);
          goto LABEL_40;
        }
      }

      result = (result + v29 + v57);
      a3 = (a3 + v29 + v57);
LABEL_43:
      for (i = a12 - v38 + v39; i; --i)
      {
        if (*a10)
        {
          v66 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v37);
          v67 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v66)), _Q5, *result);
          v68 = vmulq_f32(v66, vorrq_s8(vandq_s8(*a3, v22), v23));
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v68, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v67, 3)), vaddq_f32(vmlsq_laneq_f32(v68, v68, v67, 3), vaddq_f32(vminnmq_f32(vmulq_laneq_f32(v67, v68, 3), vmulq_laneq_f32(v68, v67, 3)), vmlsq_laneq_f32(v67, v67, v68, 3))), v68), v67);
        }

        v69 = &a3[a14];
        a10 += a14;
        if (v69 >= a8)
        {
          v70 = -a7;
        }

        else
        {
          v70 = 0;
        }

        a3 = &v69[v70];
        result = (result + v30);
      }

      a10 += a11;
      result += a2;
      v71 = &a5[a4];
      if (v71 >= a9)
      {
        v72 = v28;
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

      _VF = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ _VF | (a13 == 0))
      {
        return result;
      }
    }
  }

  v75.i64[0] = -1;
  v75.i64[1] = -1;
  v76 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v77 = (a8 - a3) >> 4;
    if (v77 >= a12)
    {
      v77 = a12;
    }

    v78 = v77;
    if (v77 < 2)
    {
      goto LABEL_93;
    }

    while (1)
    {
      v79 = *a10;
      if (!*a10)
      {
        v90 = &a10[v78];
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
              v93 = &a10[v78];
              break;
            }
          }
        }

        v94 = v93 - a10;
        v95 = (v93 - a10) * a14;
        a3 += v95;
        result += v95;
        a10 += v95;
        v78 -= v94;
        goto LABEL_90;
      }

      if (v79 != 0xFFFF)
      {
        break;
      }

      v80 = &a10[v78];
      v81 = a10;
      do
      {
        v82 = v81++;
      }

      while (v81 <= v80 && (vminvq_u8(vceqq_s8(*v82, v75)) & 0x80) != 0);
      do
      {
        v83 = v82;
        v82 = (v82 + 4);
      }

      while (v82 <= v80 && v83->i32[0] == -1);
      if (v83 < v80)
      {
        while (v83->u8[0] == 255)
        {
          v83 = (v83 + 1);
          if (v83 >= v80)
          {
            v83 = &a10[v78];
            break;
          }
        }
      }

      v84 = v83 - a10;
      v85 = v83 - a10;
      do
      {
        v86 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v25), v26);
        v87 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v25), v26);
        v88 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v22), v23);
        v89 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v89, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v86, 3)), vaddq_f32(vmlsq_laneq_f32(v89, v89, v86, 3), vaddq_f32(vminnmq_f32(vmulq_laneq_f32(v86, v89, 3), vmulq_laneq_f32(v89, v86, 3)), vmlsq_laneq_f32(v86, v86, v89, 3))), v89), v86));
        result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v88, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v87, 3)), vaddq_f32(vmlsq_laneq_f32(v88, v88, v87, 3), vaddq_f32(vminnmq_f32(vmulq_laneq_f32(v87, v88, 3), vmulq_laneq_f32(v88, v87, 3)), vmlsq_laneq_f32(v87, v87, v88, 3))), v88), v87));
        a10 += v27;
        v85 -= 2;
        result = (result + v29);
        a3 = (a3 + v29);
      }

      while (v85 > 1);
      v78 = v78 - v84 + v85;
LABEL_90:
      if (v78 <= 1)
      {
        goto LABEL_93;
      }
    }

    v96 = 0;
    while (1)
    {
      v97 = (result + v96);
      v98 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v79)) & 0xFF00FF00FF00FFLL))), v76);
      v99 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v79) & 0xFF00FF00FF00FFLL))), v76);
      v100 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v98)), _Q5, vrev32q_s8(*(&result[1] + v96)));
      v101 = vmulq_f32(v98, vorrq_s8(vandq_s8(vrev32q_s8(*(&a3[1] + v96)), v22), v23));
      v102 = vmulq_f32(v99, vorrq_s8(vandq_s8(vrev32q_s8(*(a3 + v96)), v22), v23));
      v103 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v99)), _Q5, vrev32q_s8(*(result + v96)));
      *v97 = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v102, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v103, 3)), vaddq_f32(vmlsq_laneq_f32(v102, v102, v103, 3), vaddq_f32(vminnmq_f32(vmulq_laneq_f32(v103, v102, 3), vmulq_laneq_f32(v102, v103, 3)), vmlsq_laneq_f32(v103, v103, v102, 3))), v102), v103));
      v97[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v101, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v100, 3)), vaddq_f32(vmlsq_laneq_f32(v101, v101, v100, 3), vaddq_f32(vminnmq_f32(vmulq_laneq_f32(v100, v101, 3), vmulq_laneq_f32(v101, v100, 3)), vmlsq_laneq_f32(v100, v100, v101, 3))), v101), v100));
      a10 += v27;
      v78 -= 2;
      if (v78 < 2)
      {
        break;
      }

      LOWORD(v79) = *a10;
      v96 += v29;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v96);
        a3 = (a3 + v96);
        goto LABEL_90;
      }
    }

    result = (result + v29 + v96);
    a3 = (a3 + v29 + v96);
LABEL_93:
    for (j = a12 - v77 + v78; j; --j)
    {
      if (*a10)
      {
        v105 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v76);
        v106 = vmulq_f32(v105, vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23));
        v107 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v105)), _Q5, vrev32q_s8(*result));
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v106, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v107, 3)), vaddq_f32(vmlsq_laneq_f32(v106, v106, v107, 3), vaddq_f32(vminnmq_f32(vmulq_laneq_f32(v107, v106, 3), vmulq_laneq_f32(v106, v107, 3)), vmlsq_laneq_f32(v107, v107, v106, 3))), v106), v107));
      }

      v108 = &a3[a14];
      a10 += a14;
      if (v108 >= a8)
      {
        v109 = -a7;
      }

      else
      {
        v109 = 0;
      }

      a3 = &v108[v109];
      result = (result + v30);
    }

    a10 += a11;
    result += a2;
    v110 = &a5[a4];
    if (v110 >= a9)
    {
      v111 = v28;
    }

    else
    {
      v111 = 0;
    }

    v112 = &v110[v111];
    v113 = a8 + 16 * v111 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v112;
      a8 = v113;
      a5 = v112;
    }

    _VF = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ _VF | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)18,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  v20.i64[0] = 0;
  v20.i32[2] = 0;
  v21.i64[0] = 0;
  v21.i32[2] = 0;
  v21.i32[3] = v19;
  v22 = vmvnq_s8(v21);
  v23 = vandq_s8(vdupq_n_s32(v19), xmmword_18439CB00);
  if (a15)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v20.i32[3] = v24;
  v25 = vmvnq_s8(v20);
  v26 = vandq_s8(vdupq_n_s32(v24), xmmword_18439CB00);
  v27 = 2 * a14;
  v28 = -(a6 * a4);
  v29 = 16 * v27;
  v30 = 16 * a14;
  __asm { FMOV            V5.4S, #1.0 }

  if ((a17 & 0x30) != 0)
  {
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v37 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v38 = (a8 - a3) >> 4;
      if (v38 >= a12)
      {
        v38 = a12;
      }

      v39 = v38;
      if (v38 < 2)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v40 = *a10;
        if (!*a10)
        {
          v64 = &a10[v39];
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
                v67 = &a10[v39];
                break;
              }
            }
          }

          v68 = v67 - a10;
          v69 = (v67 - a10) * a14;
          a3 += v69;
          result += v69;
          a10 += v69;
          v39 -= v68;
          goto LABEL_40;
        }

        if (v40 != 0xFFFF)
        {
          break;
        }

        v41 = &a10[v39];
        v42 = a10;
        do
        {
          v43 = v42++;
        }

        while (v42 <= v41 && (vminvq_u8(vceqq_s8(*v43, v36)) & 0x80) != 0);
        do
        {
          v44 = v43;
          v43 = (v43 + 4);
        }

        while (v43 <= v41 && v44->i32[0] == -1);
        if (v44 < v41)
        {
          while (v44->u8[0] == 255)
          {
            v44 = (v44 + 1);
            if (v44 >= v41)
            {
              v44 = &a10[v39];
              break;
            }
          }
        }

        v45 = v44 - a10;
        v46 = v44 - a10;
        do
        {
          v47 = vorrq_s8(vandq_s8(result[1], v25), v26);
          v48 = vdupq_laneq_s32(v47, 3);
          v49 = vcgtzq_f32(v48);
          v50 = vorrq_s8(vandq_s8(*result, v25), v26);
          v51 = vdupq_laneq_s32(v50, 3);
          v52 = vorrq_s8(vandq_s8(*a3, v22), v23);
          v53 = vdupq_laneq_s32(v52, 3);
          v54 = vorrq_s8(vandq_s8(a3[1], v22), v23);
          v55 = vdupq_laneq_s32(v54, 3);
          v56 = vcgtzq_f32(v53);
          v57 = vcgtzq_f32(v55);
          v58 = vaddq_f32(vmlsq_laneq_f32(v54, v54, v47, 3), vaddq_f32(vmlsq_laneq_f32(v47, v47, v54, 3), vbslq_s8(vceqq_f32(v55, v54), _Q5, vdivq_f32(vmulq_laneq_f32(v47, vmulq_f32(v54, v54), 3), vsubq_f32(v55, v54)))));
          v59 = vaddq_f32(vmlsq_laneq_f32(v52, v52, v50, 3), vaddq_f32(vmlsq_laneq_f32(v50, v50, v52, 3), vbslq_s8(vceqq_f32(v53, v52), _Q5, vdivq_f32(vmulq_laneq_f32(v50, vmulq_f32(v52, v52), 3), vsubq_f32(v53, v52)))));
          v60 = vaddq_f32(v48, vmlsq_laneq_f32(v55, v48, v54, 3));
          v61 = vaddq_f32(v51, vmlsq_laneq_f32(v53, v51, v52, 3));
          v62 = vminnmq_f32(v59, v61);
          v63 = vminnmq_f32(v58, v60);
          v63.i32[3] = v60.i32[3];
          v62.i32[3] = v61.i32[3];
          *result = vbslq_s8(v56, vbslq_s8(vcgtzq_f32(v51), v62, v52), v50);
          result[1] = vbslq_s8(v57, vbslq_s8(v49, v63, v54), v47);
          a10 += v27;
          v46 -= 2;
          result = (result + v29);
          a3 = (a3 + v29);
        }

        while (v46 > 1);
        v39 = v39 - v45 + v46;
LABEL_40:
        if (v39 <= 1)
        {
          goto LABEL_43;
        }
      }

      v70 = 0;
      while (1)
      {
        v71 = (result + v70);
        v72 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v40) & 0xFF00FF00FF00FFLL))), v37);
        v73 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v40)) & 0xFF00FF00FF00FFLL))), v37);
        v74 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v73)), _Q5, *(&result[1] + v70));
        v75 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v72)), _Q5, *(result + v70));
        v76 = vmulq_f32(v72, vorrq_s8(vandq_s8(*(a3 + v70), v22), v23));
        v77 = vmulq_f32(v73, vorrq_s8(vandq_s8(*(&a3[1] + v70), v22), v23));
        v78 = vdupq_laneq_s32(v77, 3);
        v79 = vdupq_laneq_s32(v76, 3);
        v80 = vdupq_laneq_s32(v75, 3);
        v81 = vdupq_laneq_s32(v74, 3);
        v82 = vcgtzq_f32(v80);
        v83 = vcgtzq_f32(v79);
        v84 = vcgtzq_f32(v78);
        v85 = vaddq_f32(vmlsq_laneq_f32(v77, v77, v74, 3), vaddq_f32(vmlsq_laneq_f32(v74, v74, v77, 3), vbslq_s8(vceqq_f32(v78, v77), _Q5, vdivq_f32(vmulq_laneq_f32(v74, vmulq_f32(v77, v77), 3), vsubq_f32(v78, v77)))));
        v86 = vaddq_f32(vmlsq_laneq_f32(v76, v76, v75, 3), vaddq_f32(vmlsq_laneq_f32(v75, v75, v76, 3), vbslq_s8(vceqq_f32(v79, v76), _Q5, vdivq_f32(vmulq_laneq_f32(v75, vmulq_f32(v76, v76), 3), vsubq_f32(v79, v76)))));
        v87 = vaddq_f32(v81, vmlsq_laneq_f32(v78, v81, v77, 3));
        v88 = vaddq_f32(v80, vmlsq_laneq_f32(v79, v80, v76, 3));
        v89 = vminnmq_f32(v85, v87);
        v89.i32[3] = v87.i32[3];
        v90 = vminnmq_f32(v86, v88);
        v90.i32[3] = v88.i32[3];
        *v71 = vbslq_s8(v83, vbslq_s8(v82, v90, v76), v75);
        v71[1] = vbslq_s8(v84, vbslq_s8(vcgtzq_f32(v81), v89, v77), v74);
        a10 += v27;
        v39 -= 2;
        if (v39 < 2)
        {
          break;
        }

        LOWORD(v40) = *a10;
        v70 += v29;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v70);
          a3 = (a3 + v70);
          goto LABEL_40;
        }
      }

      result = (result + v29 + v70);
      a3 = (a3 + v29 + v70);
LABEL_43:
      for (i = a12 - v38 + v39; i; --i)
      {
        if (*a10)
        {
          v92 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v37);
          v93 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v92)), _Q5, *result);
          v94 = vmulq_f32(v92, vorrq_s8(vandq_s8(*a3, v22), v23));
          v95 = vdupq_laneq_s32(v94, 3);
          v96 = vdupq_laneq_s32(v93, 3);
          v97 = vcgtzq_f32(v96);
          v98 = vcgtzq_f32(v95);
          v99 = vaddq_f32(vmlsq_laneq_f32(v94, v94, v93, 3), vaddq_f32(vmlsq_laneq_f32(v93, v93, v94, 3), vbslq_s8(vceqq_f32(v95, v94), _Q5, vdivq_f32(vmulq_laneq_f32(v93, vmulq_f32(v94, v94), 3), vsubq_f32(v95, v94)))));
          v100 = vaddq_f32(v96, vmlsq_laneq_f32(v95, v96, v94, 3));
          v101 = vminnmq_f32(v99, v100);
          v101.i32[3] = v100.i32[3];
          *result = vbslq_s8(v98, vbslq_s8(v97, v101, v94), v93);
        }

        v102 = &a3[a14];
        a10 += a14;
        if (v102 >= a8)
        {
          v103 = -a7;
        }

        else
        {
          v103 = 0;
        }

        a3 = &v102[v103];
        result = (result + v30);
      }

      a10 += a11;
      result += a2;
      v104 = &a5[a4];
      if (v104 >= a9)
      {
        v105 = v28;
      }

      else
      {
        v105 = 0;
      }

      v106 = &v104[v105];
      v107 = a8 + 16 * v105 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v106;
        a8 = v107;
        a5 = v106;
      }

      _VF = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ _VF | (a13 == 0))
      {
        return result;
      }
    }
  }

  v108.i64[0] = -1;
  v108.i64[1] = -1;
  v109 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v110 = (a8 - a3) >> 4;
    if (v110 >= a12)
    {
      v110 = a12;
    }

    v111 = v110;
    if (v110 < 2)
    {
      goto LABEL_93;
    }

    while (1)
    {
      v112 = *a10;
      if (!*a10)
      {
        v136 = &a10[v111];
        v137 = a10;
        do
        {
          v138 = v137++;
        }

        while (v137 <= v136 && (vminvq_u8(vceqzq_s8(*v138)) & 0x80) != 0);
        do
        {
          v139 = v138;
          v138 = (v138 + 4);
        }

        while (v138 <= v136 && !v139->i32[0]);
        if (v139 < v136)
        {
          while (!v139->i8[0])
          {
            v139 = (v139 + 1);
            if (v139 >= v136)
            {
              v139 = &a10[v111];
              break;
            }
          }
        }

        v140 = v139 - a10;
        v141 = (v139 - a10) * a14;
        a3 += v141;
        result += v141;
        a10 += v141;
        v111 -= v140;
        goto LABEL_90;
      }

      if (v112 != 0xFFFF)
      {
        break;
      }

      v113 = &a10[v111];
      v114 = a10;
      do
      {
        v115 = v114++;
      }

      while (v114 <= v113 && (vminvq_u8(vceqq_s8(*v115, v108)) & 0x80) != 0);
      do
      {
        v116 = v115;
        v115 = (v115 + 4);
      }

      while (v115 <= v113 && v116->i32[0] == -1);
      if (v116 < v113)
      {
        while (v116->u8[0] == 255)
        {
          v116 = (v116 + 1);
          if (v116 >= v113)
          {
            v116 = &a10[v111];
            break;
          }
        }
      }

      v117 = v116 - a10;
      v118 = v116 - a10;
      do
      {
        v119 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v25), v26);
        v120 = vdupq_laneq_s32(v119, 3);
        v121 = vcgtzq_f32(v120);
        v122 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v25), v26);
        v123 = vdupq_laneq_s32(v122, 3);
        v124 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v22), v23);
        v125 = vdupq_laneq_s32(v124, 3);
        v126 = vcgtzq_f32(v123);
        v127 = vcgtzq_f32(v125);
        v128 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23);
        v129 = vdupq_laneq_s32(v128, 3);
        v130 = vcgtzq_f32(v129);
        v131 = vaddq_f32(vmlsq_laneq_f32(v124, v124, v122, 3), vaddq_f32(vmlsq_laneq_f32(v122, v122, v124, 3), vbslq_s8(vceqq_f32(v125, v124), _Q5, vdivq_f32(vmulq_laneq_f32(v122, vmulq_f32(v124, v124), 3), vsubq_f32(v125, v124)))));
        v132 = vaddq_f32(v123, vmlsq_laneq_f32(v125, v123, v124, 3));
        v133 = vaddq_f32(v120, vmlsq_laneq_f32(v129, v120, v128, 3));
        v134 = vminnmq_f32(vaddq_f32(vmlsq_laneq_f32(v128, v128, v119, 3), vaddq_f32(vmlsq_laneq_f32(v119, v119, v128, 3), vbslq_s8(vceqq_f32(v129, v128), _Q5, vdivq_f32(vmulq_laneq_f32(v119, vmulq_f32(v128, v128), 3), vsubq_f32(v129, v128))))), v133);
        v135 = vminnmq_f32(v131, v132);
        v134.i32[3] = v133.i32[3];
        v135.i32[3] = v132.i32[3];
        *result = vrev32q_s8(vbslq_s8(v130, vbslq_s8(v121, v134, v128), v119));
        result[1] = vrev32q_s8(vbslq_s8(v127, vbslq_s8(v126, v135, v124), v122));
        a10 += v27;
        v118 -= 2;
        result = (result + v29);
        a3 = (a3 + v29);
      }

      while (v118 > 1);
      v111 = v111 - v117 + v118;
LABEL_90:
      if (v111 <= 1)
      {
        goto LABEL_93;
      }
    }

    v142 = 0;
    while (1)
    {
      v143 = (result + v142);
      v144 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v112)) & 0xFF00FF00FF00FFLL))), v109);
      v145 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v112) & 0xFF00FF00FF00FFLL))), v109);
      v146 = vandq_s8(v20, vcgtzq_f32(v144));
      v147 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v145)), _Q5, vrev32q_s8(*(result + v142)));
      v148 = vmulq_f32(v144, vorrq_s8(vandq_s8(vrev32q_s8(*(&a3[1] + v142)), v22), v23));
      v149 = vmulq_f32(v145, vorrq_s8(vandq_s8(vrev32q_s8(*(a3 + v142)), v22), v23));
      v150 = vdupq_laneq_s32(v149, 3);
      v151 = vdupq_laneq_s32(v148, 3);
      v152 = vbslq_s8(v146, _Q5, vrev32q_s8(*(&result[1] + v142)));
      v153 = vdupq_laneq_s32(v152, 3);
      v154 = vdupq_laneq_s32(v147, 3);
      v155 = vcgtzq_f32(v154);
      v156 = vcgtzq_f32(v151);
      v157 = vcgtzq_f32(v150);
      v158 = vaddq_f32(vmlsq_laneq_f32(v148, v148, v152, 3), vaddq_f32(vmlsq_laneq_f32(v152, v152, v148, 3), vbslq_s8(vceqq_f32(v151, v148), _Q5, vdivq_f32(vmulq_laneq_f32(v152, vmulq_f32(v148, v148), 3), vsubq_f32(v151, v148)))));
      v159 = vaddq_f32(vmlsq_laneq_f32(v149, v149, v147, 3), vaddq_f32(vmlsq_laneq_f32(v147, v147, v149, 3), vbslq_s8(vceqq_f32(v150, v149), _Q5, vdivq_f32(vmulq_laneq_f32(v147, vmulq_f32(v149, v149), 3), vsubq_f32(v150, v149)))));
      v160 = vaddq_f32(v153, vmlsq_laneq_f32(v151, v153, v148, 3));
      v161 = vaddq_f32(v154, vmlsq_laneq_f32(v150, v154, v149, 3));
      v162 = vminnmq_f32(v159, v161);
      v163 = vminnmq_f32(v158, v160);
      v162.i32[3] = v161.i32[3];
      v163.i32[3] = v160.i32[3];
      *v143 = vrev32q_s8(vbslq_s8(v157, vbslq_s8(v155, v162, v149), v147));
      v143[1] = vrev32q_s8(vbslq_s8(v156, vbslq_s8(vcgtzq_f32(v153), v163, v148), v152));
      a10 += v27;
      v111 -= 2;
      if (v111 < 2)
      {
        break;
      }

      LOWORD(v112) = *a10;
      v142 += v29;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v142);
        a3 = (a3 + v142);
        goto LABEL_90;
      }
    }

    result = (result + v29 + v142);
    a3 = (a3 + v29 + v142);
LABEL_93:
    for (j = a12 - v110 + v111; j; --j)
    {
      if (*a10)
      {
        v165 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v109);
        v166 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v165)), _Q5, vrev32q_s8(*result));
        v167 = vmulq_f32(v165, vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23));
        v168 = vdupq_laneq_s32(v167, 3);
        v169 = vdupq_laneq_s32(v166, 3);
        v170 = vcgtzq_f32(v169);
        v171 = vcgtzq_f32(v168);
        v172 = vaddq_f32(vmlsq_laneq_f32(v167, v167, v166, 3), vaddq_f32(vmlsq_laneq_f32(v166, v166, v167, 3), vbslq_s8(vceqq_f32(v168, v167), _Q5, vdivq_f32(vmulq_laneq_f32(v166, vmulq_f32(v167, v167), 3), vsubq_f32(v168, v167)))));
        v173 = vaddq_f32(v169, vmlsq_laneq_f32(v168, v169, v167, 3));
        v174 = vminnmq_f32(v172, v173);
        v174.i32[3] = v173.i32[3];
        *result = vrev32q_s8(vbslq_s8(v171, vbslq_s8(v170, v174, v167), v166));
      }

      v175 = &a3[a14];
      a10 += a14;
      if (v175 >= a8)
      {
        v176 = -a7;
      }

      else
      {
        v176 = 0;
      }

      a3 = &v175[v176];
      result = (result + v30);
    }

    a10 += a11;
    result += a2;
    v177 = &a5[a4];
    if (v177 >= a9)
    {
      v178 = v28;
    }

    else
    {
      v178 = 0;
    }

    v179 = &v177[v178];
    v180 = a8 + 16 * v178 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v179;
      a8 = v180;
      a5 = v179;
    }

    _VF = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ _VF | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)19,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  v20.i64[0] = 0;
  v20.i32[2] = 0;
  v20.i32[3] = v19;
  v21 = vmvnq_s8(v20);
  v22 = vandq_s8(vdupq_n_s32(v19), xmmword_18439CB00);
  if (a15)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24.i64[0] = 0;
  v24.i32[2] = 0;
  v24.i32[3] = v23;
  v25 = vmvnq_s8(v24);
  v26 = vandq_s8(vdupq_n_s32(v23), xmmword_18439CB00);
  v27 = 2 * a14;
  v28 = -(a6 * a4);
  v29 = 16 * v27;
  v30 = 16 * a14;
  __asm { FMOV            V6.4S, #1.0 }

  if ((a17 & 0x30) != 0)
  {
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v37 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v38 = (a8 - a3) >> 4;
      if (v38 >= a12)
      {
        v38 = a12;
      }

      v39 = v38;
      if (v38 < 2)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v40 = *a10;
        if (!*a10)
        {
          v57 = &a10[v39];
          v58 = a10;
          do
          {
            v59 = v58++;
          }

          while (v58 <= v57 && (vminvq_u8(vceqzq_s8(*v59)) & 0x80) != 0);
          do
          {
            v60 = v59;
            v59 = (v59 + 4);
          }

          while (v59 <= v57 && !v60->i32[0]);
          if (v60 < v57)
          {
            while (!v60->i8[0])
            {
              v60 = (v60 + 1);
              if (v60 >= v57)
              {
                v60 = &a10[v39];
                break;
              }
            }
          }

          v61 = v60 - a10;
          v62 = (v60 - a10) * a14;
          a3 += v62;
          result += v62;
          a10 += v62;
          v39 -= v61;
          goto LABEL_40;
        }

        if (v40 != 0xFFFF)
        {
          break;
        }

        v41 = &a10[v39];
        v42 = a10;
        do
        {
          v43 = v42++;
        }

        while (v42 <= v41 && (vminvq_u8(vceqq_s8(*v43, v36)) & 0x80) != 0);
        do
        {
          v44 = v43;
          v43 = (v43 + 4);
        }

        while (v43 <= v41 && v44->i32[0] == -1);
        if (v44 < v41)
        {
          while (v44->u8[0] == 255)
          {
            v44 = (v44 + 1);
            if (v44 >= v41)
            {
              v44 = &a10[v39];
              break;
            }
          }
        }

        v45 = v44 - a10;
        v46 = v44 - a10;
        do
        {
          v47 = vorrq_s8(vandq_s8(*result, v25), v26);
          v48 = vcgtzq_f32(vdupq_laneq_s32(v47, 3));
          v49 = vorrq_s8(vandq_s8(result[1], v25), v26);
          v50 = vorrq_s8(vandq_s8(*a3, v21), v22);
          v51 = vdupq_laneq_s32(v50, 3);
          v52 = vcgtzq_f32(vdupq_laneq_s32(v49, 3));
          v53 = vorrq_s8(vandq_s8(a3[1], v21), v22);
          v54 = vdupq_laneq_s32(v53, 3);
          v55 = vdivq_f32(vdupq_laneq_s32(vmulq_f32(v53, v53), 3), v53);
          v56 = vdivq_f32(vdupq_laneq_s32(vmulq_f32(v50, v50), 3), v50);
          *result = vbslq_s8(vcgtzq_f32(v51), vorrq_s8(vandq_s8(vmaxnmq_f32(vmlaq_f32(vmlsq_laneq_f32(vaddq_f32(vmlsq_laneq_f32(v50, v50, v47, 3), vaddq_f32(vmulq_laneq_f32(v51, v47, 3), vmlsq_laneq_f32(v47, v47, v50, 3))), v56, v47, 3), v47, v56), 0), vbicq_s8(v48, vceqzq_f32(v50))), vbicq_s8(v50, v48)), v47);
          result[1] = vbslq_s8(vcgtzq_f32(v54), vorrq_s8(vandq_s8(vmaxnmq_f32(vmlaq_f32(vmlsq_laneq_f32(vaddq_f32(vmlsq_laneq_f32(v53, v53, v49, 3), vaddq_f32(vmulq_laneq_f32(v54, v49, 3), vmlsq_laneq_f32(v49, v49, v53, 3))), v55, v49, 3), v49, v55), 0), vbicq_s8(v52, vceqzq_f32(v53))), vbicq_s8(v53, v52)), v49);
          a10 += v27;
          v46 -= 2;
          result = (result + v29);
          a3 = (a3 + v29);
        }

        while (v46 > 1);
        v39 = v39 - v45 + v46;
LABEL_40:
        if (v39 <= 1)
        {
          goto LABEL_43;
        }
      }

      v63 = 0;
      while (1)
      {
        v64 = (result + v63);
        v65 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v40)) & 0xFF00FF00FF00FFLL))), v37);
        v66 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v40) & 0xFF00FF00FF00FFLL))), v37);
        v67 = vbslq_s8(vandq_s8(v24, vcgtzq_f32(v66)), _Q6, *(result + v63));
        v68 = vbslq_s8(vandq_s8(v24, vcgtzq_f32(v65)), _Q6, *(&result[1] + v63));
        v69 = vmulq_f32(v65, vorrq_s8(vandq_s8(*(&a3[1] + v63), v21), v22));
        v70 = vmulq_f32(v66, vorrq_s8(vandq_s8(*(a3 + v63), v21), v22));
        v71 = vcgtzq_f32(vdupq_laneq_s32(v67, 3));
        v72 = vdupq_laneq_s32(v70, 3);
        v73 = vdupq_laneq_s32(v69, 3);
        v74 = vcgtzq_f32(vdupq_laneq_s32(v68, 3));
        v75 = vdivq_f32(vdupq_laneq_s32(vmulq_f32(v69, v69), 3), v69);
        v76 = vdivq_f32(vdupq_laneq_s32(vmulq_f32(v70, v70), 3), v70);
        *v64 = vbslq_s8(vcgtzq_f32(v72), vorrq_s8(vandq_s8(vmaxnmq_f32(vmlaq_f32(vmlsq_laneq_f32(vaddq_f32(vmlsq_laneq_f32(v70, v70, v67, 3), vaddq_f32(vmulq_laneq_f32(v72, v67, 3), vmlsq_laneq_f32(v67, v67, v70, 3))), v76, v67, 3), v67, v76), 0), vbicq_s8(v71, vceqzq_f32(v70))), vbicq_s8(v70, v71)), v67);
        v64[1] = vbslq_s8(vcgtzq_f32(v73), vorrq_s8(vandq_s8(vmaxnmq_f32(vmlaq_f32(vmlsq_laneq_f32(vaddq_f32(vmlsq_laneq_f32(v69, v69, v68, 3), vaddq_f32(vmulq_laneq_f32(v73, v68, 3), vmlsq_laneq_f32(v68, v68, v69, 3))), v75, v68, 3), v68, v75), 0), vbicq_s8(v74, vceqzq_f32(v69))), vbicq_s8(v69, v74)), v68);
        a10 += v27;
        v39 -= 2;
        if (v39 < 2)
        {
          break;
        }

        LOWORD(v40) = *a10;
        v63 += v29;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v63);
          a3 = (a3 + v63);
          goto LABEL_40;
        }
      }

      result = (result + v29 + v63);
      a3 = (a3 + v29 + v63);
LABEL_43:
      for (i = a12 - v38 + v39; i; --i)
      {
        if (*a10)
        {
          v78 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v37);
          v79 = vbslq_s8(vandq_s8(v24, vcgtzq_f32(v78)), _Q6, *result);
          v80 = vmulq_f32(v78, vorrq_s8(vandq_s8(*a3, v21), v22));
          v81 = vdupq_laneq_s32(v79, 3);
          v82 = vcgtzq_f32(v81);
          v83 = vdivq_f32(vdupq_laneq_s32(vmulq_f32(v80, v80), 3), v80);
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v80, 3)), vorrq_s8(vandq_s8(vmaxnmq_f32(vmlaq_f32(vmlsq_laneq_f32(vaddq_f32(vmlsq_laneq_f32(v80, v80, v79, 3), vaddq_f32(vmlsq_laneq_f32(v79, v79, v80, 3), vmulq_laneq_f32(v81, v80, 3))), v83, v79, 3), v79, v83), 0), vbicq_s8(v82, vceqzq_f32(v80))), vbicq_s8(v80, v82)), v79);
        }

        v84 = &a3[a14];
        a10 += a14;
        if (v84 >= a8)
        {
          v85 = -a7;
        }

        else
        {
          v85 = 0;
        }

        a3 = &v84[v85];
        result = (result + v30);
      }

      a10 += a11;
      result += a2;
      v86 = &a5[a4];
      if (v86 >= a9)
      {
        v87 = v28;
      }

      else
      {
        v87 = 0;
      }

      v88 = &v86[v87];
      v89 = a8 + 16 * v87 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v88;
        a8 = v89;
        a5 = v88;
      }

      _VF = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ _VF | (a13 == 0))
      {
        return result;
      }
    }
  }

  v90.i64[0] = -1;
  v90.i64[1] = -1;
  v91 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v92 = (a8 - a3) >> 4;
    if (v92 >= a12)
    {
      v92 = a12;
    }

    v93 = v92;
    if (v92 < 2)
    {
      goto LABEL_93;
    }

    while (1)
    {
      v94 = *a10;
      if (!*a10)
      {
        v111 = &a10[v93];
        v112 = a10;
        do
        {
          v113 = v112++;
        }

        while (v112 <= v111 && (vminvq_u8(vceqzq_s8(*v113)) & 0x80) != 0);
        do
        {
          v114 = v113;
          v113 = (v113 + 4);
        }

        while (v113 <= v111 && !v114->i32[0]);
        if (v114 < v111)
        {
          while (!v114->i8[0])
          {
            v114 = (v114 + 1);
            if (v114 >= v111)
            {
              v114 = &a10[v93];
              break;
            }
          }
        }

        v115 = v114 - a10;
        v116 = (v114 - a10) * a14;
        a3 += v116;
        result += v116;
        a10 += v116;
        v93 -= v115;
        goto LABEL_90;
      }

      if (v94 != 0xFFFF)
      {
        break;
      }

      v95 = &a10[v93];
      v96 = a10;
      do
      {
        v97 = v96++;
      }

      while (v96 <= v95 && (vminvq_u8(vceqq_s8(*v97, v90)) & 0x80) != 0);
      do
      {
        v98 = v97;
        v97 = (v97 + 4);
      }

      while (v97 <= v95 && v98->i32[0] == -1);
      if (v98 < v95)
      {
        while (v98->u8[0] == 255)
        {
          v98 = (v98 + 1);
          if (v98 >= v95)
          {
            v98 = &a10[v93];
            break;
          }
        }
      }

      v99 = v98 - a10;
      v100 = v98 - a10;
      do
      {
        v101 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v25), v26);
        v102 = vcgtzq_f32(vdupq_laneq_s32(v101, 3));
        v103 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v25), v26);
        v104 = vcgtzq_f32(vdupq_laneq_s32(v103, 3));
        v105 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v21), v22);
        v106 = vdupq_laneq_s32(v105, 3);
        v107 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v21), v22);
        v108 = vdupq_laneq_s32(v107, 3);
        v109 = vdivq_f32(vdupq_laneq_s32(vmulq_f32(v105, v105), 3), v105);
        v110 = vdivq_f32(vdupq_laneq_s32(vmulq_f32(v107, v107), 3), v107);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(v108), vorrq_s8(vandq_s8(vmaxnmq_f32(vmlaq_f32(vmlsq_laneq_f32(vaddq_f32(vmlsq_laneq_f32(v107, v107, v103, 3), vaddq_f32(vmulq_laneq_f32(v108, v103, 3), vmlsq_laneq_f32(v103, v103, v107, 3))), v110, v103, 3), v103, v110), 0), vbicq_s8(v104, vceqzq_f32(v107))), vbicq_s8(v107, v104)), v103));
        result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(v106), vorrq_s8(vandq_s8(vmaxnmq_f32(vmlaq_f32(vmlsq_laneq_f32(vaddq_f32(vmlsq_laneq_f32(v105, v105, v101, 3), vaddq_f32(vmulq_laneq_f32(v106, v101, 3), vmlsq_laneq_f32(v101, v101, v105, 3))), v109, v101, 3), v101, v109), 0), vbicq_s8(v102, vceqzq_f32(v105))), vbicq_s8(v105, v102)), v101));
        a10 += v27;
        v100 -= 2;
        result = (result + v29);
        a3 = (a3 + v29);
      }

      while (v100 > 1);
      v93 = v93 - v99 + v100;
LABEL_90:
      if (v93 <= 1)
      {
        goto LABEL_93;
      }
    }

    v117 = 0;
    while (1)
    {
      v118 = (result + v117);
      v119 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v94) & 0xFF00FF00FF00FFLL))), v91);
      v120 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v94)) & 0xFF00FF00FF00FFLL))), v91);
      v121 = vbslq_s8(vandq_s8(v24, vcgtzq_f32(v120)), _Q6, vrev32q_s8(*(&result[1] + v117)));
      v122 = vbslq_s8(vandq_s8(v24, vcgtzq_f32(v119)), _Q6, vrev32q_s8(*(result + v117)));
      v123 = vmulq_f32(v119, vorrq_s8(vandq_s8(vrev32q_s8(*(a3 + v117)), v21), v22));
      v124 = vmulq_f32(v120, vorrq_s8(vandq_s8(vrev32q_s8(*(&a3[1] + v117)), v21), v22));
      v125 = vcgtzq_f32(vdupq_laneq_s32(v121, 3));
      v126 = vcgtzq_f32(vdupq_laneq_s32(v122, 3));
      v127 = vdupq_laneq_s32(v124, 3);
      v128 = vdupq_laneq_s32(v123, 3);
      v129 = vdivq_f32(vdupq_laneq_s32(vmulq_f32(v124, v124), 3), v124);
      v130 = vdivq_f32(vdupq_laneq_s32(vmulq_f32(v123, v123), 3), v123);
      *v118 = vrev32q_s8(vbslq_s8(vcgtzq_f32(v128), vorrq_s8(vandq_s8(vmaxnmq_f32(vmlaq_f32(vmlsq_laneq_f32(vaddq_f32(vmlsq_laneq_f32(v123, v123, v122, 3), vaddq_f32(vmulq_laneq_f32(v128, v122, 3), vmlsq_laneq_f32(v122, v122, v123, 3))), v130, v122, 3), v122, v130), 0), vbicq_s8(v126, vceqzq_f32(v123))), vbicq_s8(v123, v126)), v122));
      v118[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(v127), vorrq_s8(vandq_s8(vmaxnmq_f32(vmlaq_f32(vmlsq_laneq_f32(vaddq_f32(vmlsq_laneq_f32(v124, v124, v121, 3), vaddq_f32(vmulq_laneq_f32(v127, v121, 3), vmlsq_laneq_f32(v121, v121, v124, 3))), v129, v121, 3), v121, v129), 0), vbicq_s8(v125, vceqzq_f32(v124))), vbicq_s8(v124, v125)), v121));
      a10 += v27;
      v93 -= 2;
      if (v93 < 2)
      {
        break;
      }

      LOWORD(v94) = *a10;
      v117 += v29;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v117);
        a3 = (a3 + v117);
        goto LABEL_90;
      }
    }

    result = (result + v29 + v117);
    a3 = (a3 + v29 + v117);
LABEL_93:
    for (j = a12 - v92 + v93; j; --j)
    {
      if (*a10)
      {
        v132 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v91);
        v133 = vbslq_s8(vandq_s8(v24, vcgtzq_f32(v132)), _Q6, vrev32q_s8(*result));
        v134 = vmulq_f32(v132, vorrq_s8(vandq_s8(vrev32q_s8(*a3), v21), v22));
        v135 = vdupq_laneq_s32(v133, 3);
        v136 = vcgtzq_f32(v135);
        v137 = vdivq_f32(vdupq_laneq_s32(vmulq_f32(v134, v134), 3), v134);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v134, 3)), vorrq_s8(vandq_s8(vmaxnmq_f32(vmlaq_f32(vmlsq_laneq_f32(vaddq_f32(vmlsq_laneq_f32(v134, v134, v133, 3), vaddq_f32(vmlsq_laneq_f32(v133, v133, v134, 3), vmulq_laneq_f32(v135, v134, 3))), v137, v133, 3), v133, v137), 0), vbicq_s8(v136, vceqzq_f32(v134))), vbicq_s8(v134, v136)), v133));
      }

      v138 = &a3[a14];
      a10 += a14;
      if (v138 >= a8)
      {
        v139 = -a7;
      }

      else
      {
        v139 = 0;
      }

      a3 = &v138[v139];
      result = (result + v30);
    }

    a10 += a11;
    result += a2;
    v140 = &a5[a4];
    if (v140 >= a9)
    {
      v141 = v28;
    }

    else
    {
      v141 = 0;
    }

    v142 = &v140[v141];
    v143 = a8 + 16 * v141 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v142;
      a8 = v143;
      a5 = v142;
    }

    _VF = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ _VF | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)21,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  v20.i64[0] = 0;
  v20.i32[2] = 0;
  v21.i64[0] = 0;
  v21.i32[2] = 0;
  v21.i32[3] = v19;
  v22 = vmvnq_s8(v21);
  v23 = vandq_s8(vdupq_n_s32(v19), xmmword_18439CB00);
  if (a15)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v20.i32[3] = v24;
  v25 = vmvnq_s8(v20);
  v26 = vandq_s8(vdupq_n_s32(v24), xmmword_18439CB00);
  v27 = 2 * a14;
  v28 = -(a6 * a4);
  v29 = 16 * v27;
  v30 = 16 * a14;
  __asm { FMOV            V5.4S, #1.0 }

  if ((a17 & 0x30) != 0)
  {
    v36.i64[0] = 0x3F0000003F000000;
    v36.i64[1] = 0x3F0000003F000000;
    v37.i64[0] = 0x8000000080000000;
    v37.i64[1] = 0x8000000080000000;
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    while (1)
    {
      v39 = (a8 - a3) >> 4;
      if (v39 >= a12)
      {
        v39 = a12;
      }

      v40 = vdupq_n_s32(0x3B808081u);
      v41 = v39;
      if (v39 < 2)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v42 = *a10;
        if (!*a10)
        {
          v70 = &a10[v41];
          v71 = a10;
          do
          {
            v72 = v71++;
          }

          while (v71 <= v70 && (vminvq_u8(vceqzq_s8(*v72)) & 0x80) != 0);
          do
          {
            v73 = v72;
            v72 = (v72 + 4);
          }

          while (v72 <= v70 && !v73->i32[0]);
          if (v73 < v70)
          {
            while (!v73->i8[0])
            {
              v73 = (v73 + 1);
              if (v73 >= v70)
              {
                v73 = &a10[v41];
                break;
              }
            }
          }

          v74 = v73 - a10;
          v75 = (v73 - a10) * a14;
          a3 += v75;
          result += v75;
          a10 += v75;
          v41 -= v74;
          goto LABEL_40;
        }

        if (v42 != 0xFFFF)
        {
          break;
        }

        v43 = &a10[v41];
        v44 = a10;
        do
        {
          v45 = v44++;
        }

        while (v44 <= v43 && (vminvq_u8(vceqq_s8(*v45, v38)) & 0x80) != 0);
        do
        {
          v46 = v45;
          v45 = (v45 + 4);
        }

        while (v45 <= v43 && v46->i32[0] == -1);
        if (v46 < v43)
        {
          while (v46->u8[0] == 255)
          {
            v46 = (v46 + 1);
            if (v46 >= v43)
            {
              v46 = &a10[v41];
              break;
            }
          }
        }

        v47 = v46 - a10;
        v48 = v46 - a10;
        do
        {
          v49 = vorrq_s8(vandq_s8(*a3, v22), v23);
          v50 = vorrq_s8(vandq_s8(a3[1], v22), v23);
          v51 = vorrq_s8(vandq_s8(*result, v25), v26);
          v52 = vdupq_laneq_s32(v50, 3);
          v53 = vdupq_laneq_s32(v49, 3);
          v54 = vdupq_laneq_s32(v51, 3);
          v55 = vorrq_s8(vandq_s8(result[1], v25), v26);
          v56 = vdupq_laneq_s32(v55, 3);
          v57 = vcgtzq_f32(v54);
          v58 = vcgtzq_f32(v53);
          v59 = vcgtzq_f32(v52);
          v60 = vmulq_laneq_f32(v52, v55, 3);
          v61 = vmulq_laneq_f32(v53, v51, 3);
          v62 = vcgtq_f32(v50, vmulq_laneq_f32(v36, v50, 3));
          v63 = vcgtq_f32(v49, vmulq_laneq_f32(v36, v49, 3));
          v64 = vbicq_s8(v37, v63);
          v65 = vbicq_s8(v37, v62);
          v66 = veorq_s8(v64, vsubq_f32(v54, v51));
          v67 = vmlaq_f32(v51, veorq_s8(v64, vsubq_f32(v53, v49)), v51);
          v68 = vaddq_f32(vmlaq_f32(v55, veorq_s8(v65, vsubq_f32(v52, v50)), v55), vmlaq_f32(v50, veorq_s8(v65, vsubq_f32(v56, v55)), v50));
          v69 = vaddq_f32(v67, vmlaq_f32(v49, v66, v49));
          *result = vbslq_s8(v58, vbslq_s8(v57, vbslq_s8(v63, vsubq_f32(v69, v61), v69), v49), v51);
          result[1] = vbslq_s8(v59, vbslq_s8(vcgtzq_f32(v56), vbslq_s8(v62, vsubq_f32(v68, v60), v68), v50), v55);
          a10 += v27;
          v48 -= 2;
          result = (result + v29);
          a3 = (a3 + v29);
        }

        while (v48 > 1);
        v41 = v41 - v47 + v48;
LABEL_40:
        if (v41 <= 1)
        {
          goto LABEL_43;
        }
      }

      v76 = 0;
      while (1)
      {
        v77 = (result + v76);
        v78 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v42) & 0xFF00FF00FF00FFLL))), v40);
        v79 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v42)) & 0xFF00FF00FF00FFLL))), v40);
        v80 = vandq_s8(v20, vcgtzq_f32(v78));
        v81 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v79)), _Q5, *(&result[1] + v76));
        v82 = vmulq_f32(v78, vorrq_s8(vandq_s8(*(a3 + v76), v22), v23));
        v83 = vmulq_f32(v79, vorrq_s8(vandq_s8(*(&a3[1] + v76), v22), v23));
        v84 = vdupq_laneq_s32(v83, 3);
        v85 = vdupq_laneq_s32(v82, 3);
        v86 = vbslq_s8(v80, _Q5, *(result + v76));
        v87 = vdupq_laneq_s32(v86, 3);
        v88 = vdupq_laneq_s32(v81, 3);
        v89 = vcgtzq_f32(v87);
        v90 = vcgtzq_f32(v85);
        v91 = vcgtzq_f32(v84);
        v92 = vmulq_laneq_f32(v84, v81, 3);
        v93 = vmulq_laneq_f32(v85, v86, 3);
        v94 = vcgtq_f32(v83, vmulq_laneq_f32(v36, v83, 3));
        v95 = vcgtq_f32(v82, vmulq_laneq_f32(v36, v82, 3));
        v96 = vbicq_s8(v37, v95);
        v97 = vbicq_s8(v37, v94);
        v98 = veorq_s8(v96, vsubq_f32(v87, v86));
        v99 = vmlaq_f32(v86, veorq_s8(v96, vsubq_f32(v85, v82)), v86);
        v100 = vaddq_f32(vmlaq_f32(v81, veorq_s8(v97, vsubq_f32(v84, v83)), v81), vmlaq_f32(v83, veorq_s8(v97, vsubq_f32(v88, v81)), v83));
        v101 = vaddq_f32(v99, vmlaq_f32(v82, v98, v82));
        *v77 = vbslq_s8(v90, vbslq_s8(v89, vbslq_s8(v95, vsubq_f32(v101, v93), v101), v82), v86);
        v77[1] = vbslq_s8(v91, vbslq_s8(vcgtzq_f32(v88), vbslq_s8(v94, vsubq_f32(v100, v92), v100), v83), v81);
        a10 += v27;
        v41 -= 2;
        if (v41 < 2)
        {
          break;
        }

        LOWORD(v42) = *a10;
        v76 += v29;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v76);
          a3 = (a3 + v76);
          goto LABEL_40;
        }
      }

      result = (result + v29 + v76);
      a3 = (a3 + v29 + v76);
LABEL_43:
      for (i = a12 - v39 + v41; i; --i)
      {
        if (*a10)
        {
          v103 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v40);
          v104 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v103)), _Q5, *result);
          v105 = vmulq_f32(v103, vorrq_s8(vandq_s8(*a3, v22), v23));
          v106 = vdupq_laneq_s32(v105, 3);
          v107 = vdupq_laneq_s32(v104, 3);
          v108 = vcgtzq_f32(v106);
          v109 = vcgtq_f32(v105, vmulq_laneq_f32(v36, v105, 3));
          v110 = vbicq_s8(v37, v109);
          v111 = vaddq_f32(vmlaq_f32(v104, veorq_s8(v110, vsubq_f32(v106, v105)), v104), vmlaq_f32(v105, veorq_s8(v110, vsubq_f32(v107, v104)), v105));
          *result = vbslq_s8(v108, vbslq_s8(vcgtzq_f32(v107), vbslq_s8(v109, vsubq_f32(v111, vmulq_laneq_f32(v107, v105, 3)), v111), v105), v104);
        }

        v112 = &a3[a14];
        a10 += a14;
        if (v112 >= a8)
        {
          v113 = -a7;
        }

        else
        {
          v113 = 0;
        }

        a3 = &v112[v113];
        result = (result + v30);
      }

      a10 += a11;
      result += a2;
      v114 = &a5[a4];
      if (v114 >= a9)
      {
        v115 = v28;
      }

      else
      {
        v115 = 0;
      }

      v116 = &v114[v115];
      v117 = a8 + 16 * v115 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v116;
        a8 = v117;
        a5 = v116;
      }

      _VF = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ _VF | (a13 == 0))
      {
        return result;
      }
    }
  }

  v118.i64[0] = 0x3F0000003F000000;
  v118.i64[1] = 0x3F0000003F000000;
  v119.i64[0] = 0x8000000080000000;
  v119.i64[1] = 0x8000000080000000;
  v120.i64[0] = -1;
  v120.i64[1] = -1;
  while (2)
  {
    v121 = (a8 - a3) >> 4;
    if (v121 >= a12)
    {
      v121 = a12;
    }

    v122 = vdupq_n_s32(0x3B808081u);
    v123 = v121;
    if (v121 < 2)
    {
      goto LABEL_93;
    }

    while (1)
    {
      v124 = *a10;
      if (!*a10)
      {
        v152 = &a10[v123];
        v153 = a10;
        do
        {
          v154 = v153++;
        }

        while (v153 <= v152 && (vminvq_u8(vceqzq_s8(*v154)) & 0x80) != 0);
        do
        {
          v155 = v154;
          v154 = (v154 + 4);
        }

        while (v154 <= v152 && !v155->i32[0]);
        if (v155 < v152)
        {
          while (!v155->i8[0])
          {
            v155 = (v155 + 1);
            if (v155 >= v152)
            {
              v155 = &a10[v123];
              break;
            }
          }
        }

        v156 = v155 - a10;
        v157 = (v155 - a10) * a14;
        a3 += v157;
        result += v157;
        a10 += v157;
        v123 -= v156;
        goto LABEL_90;
      }

      if (v124 != 0xFFFF)
      {
        break;
      }

      v125 = &a10[v123];
      v126 = a10;
      do
      {
        v127 = v126++;
      }

      while (v126 <= v125 && (vminvq_u8(vceqq_s8(*v127, v120)) & 0x80) != 0);
      do
      {
        v128 = v127;
        v127 = (v127 + 4);
      }

      while (v127 <= v125 && v128->i32[0] == -1);
      if (v128 < v125)
      {
        while (v128->u8[0] == 255)
        {
          v128 = (v128 + 1);
          if (v128 >= v125)
          {
            v128 = &a10[v123];
            break;
          }
        }
      }

      v129 = v128 - a10;
      v130 = v128 - a10;
      do
      {
        v131 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v22), v23);
        v132 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23);
        v133 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v25), v26);
        v134 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v25), v26);
        v135 = vdupq_laneq_s32(v132, 3);
        v136 = vdupq_laneq_s32(v131, 3);
        v137 = vdupq_laneq_s32(v134, 3);
        v138 = vdupq_laneq_s32(v133, 3);
        v139 = vcgtzq_f32(v137);
        v140 = vcgtzq_f32(v136);
        v141 = vcgtzq_f32(v135);
        v142 = vmulq_laneq_f32(v135, v133, 3);
        v143 = vmulq_laneq_f32(v136, v134, 3);
        v144 = vcgtq_f32(v132, vmulq_laneq_f32(v118, v132, 3));
        v145 = vcgtq_f32(v131, vmulq_laneq_f32(v118, v131, 3));
        v146 = vbicq_s8(v119, v145);
        v147 = vbicq_s8(v119, v144);
        v148 = veorq_s8(v146, vsubq_f32(v137, v134));
        v149 = vmlaq_f32(v134, veorq_s8(v146, vsubq_f32(v136, v131)), v134);
        v150 = vaddq_f32(vmlaq_f32(v133, veorq_s8(v147, vsubq_f32(v135, v132)), v133), vmlaq_f32(v132, veorq_s8(v147, vsubq_f32(v138, v133)), v132));
        v151 = vaddq_f32(v149, vmlaq_f32(v131, v148, v131));
        *result = vrev32q_s8(vbslq_s8(v141, vbslq_s8(vcgtzq_f32(v138), vbslq_s8(v144, vsubq_f32(v150, v142), v150), v132), v133));
        result[1] = vrev32q_s8(vbslq_s8(v140, vbslq_s8(v139, vbslq_s8(v145, vsubq_f32(v151, v143), v151), v131), v134));
        a10 += v27;
        v130 -= 2;
        result = (result + v29);
        a3 = (a3 + v29);
      }

      while (v130 > 1);
      v123 = v123 - v129 + v130;
LABEL_90:
      if (v123 <= 1)
      {
        goto LABEL_93;
      }
    }

    v158 = 0;
    while (1)
    {
      v159 = (result + v158);
      v160 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v124)) & 0xFF00FF00FF00FFLL))), v122);
      v161 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v124) & 0xFF00FF00FF00FFLL))), v122);
      v162 = vandq_s8(v20, vcgtzq_f32(v161));
      v163 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v160)), _Q5, vrev32q_s8(*(&result[1] + v158)));
      v164 = vmulq_f32(v160, vorrq_s8(vandq_s8(vrev32q_s8(*(&a3[1] + v158)), v22), v23));
      v165 = vmulq_f32(v161, vorrq_s8(vandq_s8(vrev32q_s8(*(a3 + v158)), v22), v23));
      v166 = vdupq_laneq_s32(v165, 3);
      v167 = vdupq_laneq_s32(v164, 3);
      v168 = vdupq_laneq_s32(v163, 3);
      v169 = vbslq_s8(v162, _Q5, vrev32q_s8(*(result + v158)));
      v170 = vdupq_laneq_s32(v169, 3);
      v171 = vcgtzq_f32(v168);
      v172 = vcgtzq_f32(v167);
      v173 = vcgtzq_f32(v166);
      v174 = vmulq_laneq_f32(v166, v169, 3);
      v175 = vmulq_laneq_f32(v167, v163, 3);
      v176 = vcgtq_f32(v165, vmulq_laneq_f32(v118, v165, 3));
      v177 = vcgtq_f32(v164, vmulq_laneq_f32(v118, v164, 3));
      v178 = vbicq_s8(v119, v177);
      v179 = vbicq_s8(v119, v176);
      v180 = veorq_s8(v178, vsubq_f32(v168, v163));
      v181 = vmlaq_f32(v163, veorq_s8(v178, vsubq_f32(v167, v164)), v163);
      v182 = vaddq_f32(vmlaq_f32(v169, veorq_s8(v179, vsubq_f32(v166, v165)), v169), vmlaq_f32(v165, veorq_s8(v179, vsubq_f32(v170, v169)), v165));
      v183 = vaddq_f32(v181, vmlaq_f32(v164, v180, v164));
      *v159 = vrev32q_s8(vbslq_s8(v173, vbslq_s8(vcgtzq_f32(v170), vbslq_s8(v176, vsubq_f32(v182, v174), v182), v165), v169));
      v159[1] = vrev32q_s8(vbslq_s8(v172, vbslq_s8(v171, vbslq_s8(v177, vsubq_f32(v183, v175), v183), v164), v163));
      a10 += v27;
      v123 -= 2;
      if (v123 < 2)
      {
        break;
      }

      LOWORD(v124) = *a10;
      v158 += v29;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v158);
        a3 = (a3 + v158);
        goto LABEL_90;
      }
    }

    result = (result + v29 + v158);
    a3 = (a3 + v29 + v158);
LABEL_93:
    for (j = a12 - v121 + v123; j; --j)
    {
      if (*a10)
      {
        v185 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v122);
        v186 = vandq_s8(v20, vcgtzq_f32(v185));
        v187 = vmulq_f32(v185, vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23));
        v188 = vdupq_laneq_s32(v187, 3);
        v189 = vbslq_s8(v186, _Q5, vrev32q_s8(*result));
        v190 = vdupq_laneq_s32(v189, 3);
        v191 = vcgtzq_f32(v188);
        v192 = vcgtq_f32(v187, vmulq_laneq_f32(v118, v187, 3));
        v193 = vbicq_s8(v119, v192);
        v194 = vaddq_f32(vmlaq_f32(v189, veorq_s8(v193, vsubq_f32(v188, v187)), v189), vmlaq_f32(v187, veorq_s8(v193, vsubq_f32(v190, v189)), v187));
        *result = vrev32q_s8(vbslq_s8(v191, vbslq_s8(vcgtzq_f32(v190), vbslq_s8(v192, vsubq_f32(v194, vmulq_laneq_f32(v190, v187, 3)), v194), v187), v189));
      }

      v195 = &a3[a14];
      a10 += a14;
      if (v195 >= a8)
      {
        v196 = -a7;
      }

      else
      {
        v196 = 0;
      }

      a3 = &v195[v196];
      result = (result + v30);
    }

    a10 += a11;
    result += a2;
    v197 = &a5[a4];
    if (v197 >= a9)
    {
      v198 = v28;
    }

    else
    {
      v198 = 0;
    }

    v199 = &v197[v198];
    v200 = a8 + 16 * v198 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v199;
      a8 = v200;
      a5 = v199;
    }

    _VF = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ _VF | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)20,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  v20.i64[0] = 0;
  v20.i32[2] = 0;
  v21.i64[0] = 0;
  v21.i32[2] = 0;
  v21.i32[3] = v19;
  v22 = vmvnq_s8(v21);
  v23 = vandq_s8(vdupq_n_s32(v19), xmmword_18439CB00);
  if (a15)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v20.i32[3] = v24;
  v25 = vmvnq_s8(v20);
  v26 = vandq_s8(vdupq_n_s32(v24), xmmword_18439CB00);
  v27 = 2 * a14;
  v28 = -(a6 * a4);
  v29 = 16 * v27;
  v30 = 16 * a14;
  __asm { FMOV            V5.4S, #1.0 }

  if ((a17 & 0x30) != 0)
  {
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v37 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v38 = (a8 - a3) >> 4;
      if (v38 >= a12)
      {
        v38 = a12;
      }

      v39 = v38;
      if (v38 < 2)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v40 = *a10;
        if (!*a10)
        {
          v64 = &a10[v39];
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
                v67 = &a10[v39];
                break;
              }
            }
          }

          v68 = v67 - a10;
          v69 = (v67 - a10) * a14;
          a3 += v69;
          result += v69;
          a10 += v69;
          v39 -= v68;
          goto LABEL_40;
        }

        if (v40 != 0xFFFF)
        {
          break;
        }

        v41 = &a10[v39];
        v42 = a10;
        do
        {
          v43 = v42++;
        }

        while (v42 <= v41 && (vminvq_u8(vceqq_s8(*v43, v36)) & 0x80) != 0);
        do
        {
          v44 = v43;
          v43 = (v43 + 4);
        }

        while (v43 <= v41 && v44->i32[0] == -1);
        if (v44 < v41)
        {
          while (v44->u8[0] == 255)
          {
            v44 = (v44 + 1);
            if (v44 >= v41)
            {
              v44 = &a10[v39];
              break;
            }
          }
        }

        v45 = v44 - a10;
        v46 = v44 - a10;
        do
        {
          v47 = vorrq_s8(vandq_s8(result[1], v25), v26);
          v48 = vdupq_laneq_s32(v47, 3);
          v49 = vcgtzq_f32(v48);
          v50 = vorrq_s8(vandq_s8(*result, v25), v26);
          v51 = vdupq_laneq_s32(v50, 3);
          v52 = vorrq_s8(vandq_s8(*a3, v22), v23);
          v53 = vcgtzq_f32(v51);
          v54 = vorrq_s8(vandq_s8(a3[1], v22), v23);
          v55 = vceqzq_f32(v48);
          v56 = vceqzq_f32(v51);
          v57 = vdivq_f32(v47, v48);
          v58 = vdivq_f32(v50, v51);
          v59 = vaddq_f32(v54, v54);
          v60 = vaddq_f32(v52, v52);
          v61 = vmlaq_laneq_f32(vmlsq_f32(v59, v57, v59), v57, v54, 3);
          v62 = vmulq_f32(vmlaq_laneq_f32(vmlsq_f32(v60, v58, v60), v58, v52, 3), v50);
          v63 = vmulq_f32(v61, v47);
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v52, 3)), vbslq_s8(v53, vaddq_f32(vmlsq_laneq_f32(v52, v52, v50, 3), vaddq_f32(vmlsq_laneq_f32(v50, v50, v52, 3), vandq_s8(v62, vbicq_s8(vcgezq_f32(v62), v56)))), v52), v50);
          result[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v54, 3)), vbslq_s8(v49, vaddq_f32(vmlsq_laneq_f32(v54, v54, v47, 3), vaddq_f32(vmlsq_laneq_f32(v47, v47, v54, 3), vandq_s8(v63, vbicq_s8(vcgezq_f32(v63), v55)))), v54), v47);
          a10 += v27;
          v46 -= 2;
          result = (result + v29);
          a3 = (a3 + v29);
        }

        while (v46 > 1);
        v39 = v39 - v45 + v46;
LABEL_40:
        if (v39 <= 1)
        {
          goto LABEL_43;
        }
      }

      v70 = 0;
      while (1)
      {
        v71 = (result + v70);
        v72 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v40) & 0xFF00FF00FF00FFLL))), v37);
        v73 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v40)) & 0xFF00FF00FF00FFLL))), v37);
        v74 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v73)), _Q5, *(&result[1] + v70));
        v75 = vmulq_f32(v72, vorrq_s8(vandq_s8(*(a3 + v70), v22), v23));
        v76 = vmulq_f32(v73, vorrq_s8(vandq_s8(*(&a3[1] + v70), v22), v23));
        v77 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v72)), _Q5, *(result + v70));
        v78 = vdupq_laneq_s32(v77, 3);
        v79 = vdupq_laneq_s32(v74, 3);
        v80 = vcgtzq_f32(v79);
        v81 = vcgtzq_f32(v78);
        v82 = vceqzq_f32(v79);
        v83 = vceqzq_f32(v78);
        v84 = vdivq_f32(v74, v79);
        v85 = vdivq_f32(v77, v78);
        v86 = vaddq_f32(v76, v76);
        v87 = vaddq_f32(v75, v75);
        v88 = vmulq_f32(vmlaq_laneq_f32(vmlsq_f32(v87, v85, v87), v85, v75, 3), v77);
        v89 = vmulq_f32(vmlaq_laneq_f32(vmlsq_f32(v86, v84, v86), v84, v76, 3), v74);
        *v71 = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v75, 3)), vbslq_s8(v81, vaddq_f32(vmlsq_laneq_f32(v75, v75, v77, 3), vaddq_f32(vmlsq_laneq_f32(v77, v77, v75, 3), vandq_s8(v88, vbicq_s8(vcgezq_f32(v88), v83)))), v75), v77);
        v71[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v76, 3)), vbslq_s8(v80, vaddq_f32(vmlsq_laneq_f32(v76, v76, v74, 3), vaddq_f32(vmlsq_laneq_f32(v74, v74, v76, 3), vandq_s8(v89, vbicq_s8(vcgezq_f32(v89), v82)))), v76), v74);
        a10 += v27;
        v39 -= 2;
        if (v39 < 2)
        {
          break;
        }

        LOWORD(v40) = *a10;
        v70 += v29;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v70);
          a3 = (a3 + v70);
          goto LABEL_40;
        }
      }

      result = (result + v29 + v70);
      a3 = (a3 + v29 + v70);
LABEL_43:
      for (i = a12 - v38 + v39; i; --i)
      {
        if (*a10)
        {
          v91 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v37);
          v92 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v91)), _Q5, *result);
          v93 = vmulq_f32(v91, vorrq_s8(vandq_s8(*a3, v22), v23));
          v94 = vdupq_laneq_s32(v92, 3);
          v95 = vcgtzq_f32(v94);
          v96 = vceqzq_f32(v94);
          v97 = vdivq_f32(v92, v94);
          v98 = vaddq_f32(v93, v93);
          v99 = vmulq_f32(vmlaq_laneq_f32(vmlsq_f32(v98, v97, v98), v97, v93, 3), v92);
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v93, 3)), vbslq_s8(v95, vaddq_f32(vmlsq_laneq_f32(v93, v93, v92, 3), vaddq_f32(vmlsq_laneq_f32(v92, v92, v93, 3), vandq_s8(v99, vbicq_s8(vcgezq_f32(v99), v96)))), v93), v92);
        }

        v100 = &a3[a14];
        a10 += a14;
        if (v100 >= a8)
        {
          v101 = -a7;
        }

        else
        {
          v101 = 0;
        }

        a3 = &v100[v101];
        result = (result + v30);
      }

      a10 += a11;
      result += a2;
      v102 = &a5[a4];
      if (v102 >= a9)
      {
        v103 = v28;
      }

      else
      {
        v103 = 0;
      }

      v104 = &v102[v103];
      v105 = a8 + 16 * v103 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v104;
        a8 = v105;
        a5 = v104;
      }

      _VF = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ _VF | (a13 == 0))
      {
        return result;
      }
    }
  }

  v106.i64[0] = -1;
  v106.i64[1] = -1;
  v107 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v108 = (a8 - a3) >> 4;
    if (v108 >= a12)
    {
      v108 = a12;
    }

    v109 = v108;
    if (v108 < 2)
    {
      goto LABEL_93;
    }

    while (1)
    {
      v110 = *a10;
      if (!*a10)
      {
        v134 = &a10[v109];
        v135 = a10;
        do
        {
          v136 = v135++;
        }

        while (v135 <= v134 && (vminvq_u8(vceqzq_s8(*v136)) & 0x80) != 0);
        do
        {
          v137 = v136;
          v136 = (v136 + 4);
        }

        while (v136 <= v134 && !v137->i32[0]);
        if (v137 < v134)
        {
          while (!v137->i8[0])
          {
            v137 = (v137 + 1);
            if (v137 >= v134)
            {
              v137 = &a10[v109];
              break;
            }
          }
        }

        v138 = v137 - a10;
        v139 = (v137 - a10) * a14;
        a3 += v139;
        result += v139;
        a10 += v139;
        v109 -= v138;
        goto LABEL_90;
      }

      if (v110 != 0xFFFF)
      {
        break;
      }

      v111 = &a10[v109];
      v112 = a10;
      do
      {
        v113 = v112++;
      }

      while (v112 <= v111 && (vminvq_u8(vceqq_s8(*v113, v106)) & 0x80) != 0);
      do
      {
        v114 = v113;
        v113 = (v113 + 4);
      }

      while (v113 <= v111 && v114->i32[0] == -1);
      if (v114 < v111)
      {
        while (v114->u8[0] == 255)
        {
          v114 = (v114 + 1);
          if (v114 >= v111)
          {
            v114 = &a10[v109];
            break;
          }
        }
      }

      v115 = v114 - a10;
      v116 = v114 - a10;
      do
      {
        v117 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v25), v26);
        v118 = vdupq_laneq_s32(v117, 3);
        v119 = vcgtzq_f32(v118);
        v120 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v25), v26);
        v121 = vdupq_laneq_s32(v120, 3);
        v122 = vcgtzq_f32(v121);
        v123 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v22), v23);
        v124 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23);
        v125 = vceqzq_f32(v118);
        v126 = vceqzq_f32(v121);
        v127 = vdivq_f32(v117, v118);
        v128 = vdivq_f32(v120, v121);
        v129 = vaddq_f32(v124, v124);
        v130 = vaddq_f32(v123, v123);
        v131 = vmlaq_laneq_f32(vmlsq_f32(v129, v127, v129), v127, v124, 3);
        v132 = vmulq_f32(vmlaq_laneq_f32(vmlsq_f32(v130, v128, v130), v128, v123, 3), v120);
        v133 = vmulq_f32(v131, v117);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v124, 3)), vbslq_s8(v119, vaddq_f32(vmlsq_laneq_f32(v124, v124, v117, 3), vaddq_f32(vmlsq_laneq_f32(v117, v117, v124, 3), vandq_s8(v133, vbicq_s8(vcgezq_f32(v133), v125)))), v124), v117));
        result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v123, 3)), vbslq_s8(v122, vaddq_f32(vmlsq_laneq_f32(v123, v123, v120, 3), vaddq_f32(vmlsq_laneq_f32(v120, v120, v123, 3), vandq_s8(v132, vbicq_s8(vcgezq_f32(v132), v126)))), v123), v120));
        a10 += v27;
        v116 -= 2;
        result = (result + v29);
        a3 = (a3 + v29);
      }

      while (v116 > 1);
      v109 = v109 - v115 + v116;
LABEL_90:
      if (v109 <= 1)
      {
        goto LABEL_93;
      }
    }

    v140 = 0;
    while (1)
    {
      v141 = (result + v140);
      v142 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v110)) & 0xFF00FF00FF00FFLL))), v107);
      v143 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v110) & 0xFF00FF00FF00FFLL))), v107);
      v144 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v142)), _Q5, vrev32q_s8(*(&result[1] + v140)));
      v145 = vmulq_f32(v142, vorrq_s8(vandq_s8(vrev32q_s8(*(&a3[1] + v140)), v22), v23));
      v146 = vmulq_f32(v143, vorrq_s8(vandq_s8(vrev32q_s8(*(a3 + v140)), v22), v23));
      v147 = vdupq_laneq_s32(v144, 3);
      v148 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v143)), _Q5, vrev32q_s8(*(result + v140)));
      v149 = vdupq_laneq_s32(v148, 3);
      v150 = vcgtzq_f32(v149);
      v151 = vcgtzq_f32(v147);
      v152 = vceqzq_f32(v149);
      v153 = vceqzq_f32(v147);
      v154 = vdivq_f32(v148, v149);
      v155 = vdivq_f32(v144, v147);
      v156 = vaddq_f32(v146, v146);
      v157 = vaddq_f32(v145, v145);
      v158 = vmlaq_laneq_f32(vmlsq_f32(v156, v154, v156), v154, v146, 3);
      v159 = vmulq_f32(vmlaq_laneq_f32(vmlsq_f32(v157, v155, v157), v155, v145, 3), v144);
      v160 = vmulq_f32(v158, v148);
      *v141 = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v146, 3)), vbslq_s8(v150, vaddq_f32(vmlsq_laneq_f32(v146, v146, v148, 3), vaddq_f32(vmlsq_laneq_f32(v148, v148, v146, 3), vandq_s8(v160, vbicq_s8(vcgezq_f32(v160), v152)))), v146), v148));
      v141[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v145, 3)), vbslq_s8(v151, vaddq_f32(vmlsq_laneq_f32(v145, v145, v144, 3), vaddq_f32(vmlsq_laneq_f32(v144, v144, v145, 3), vandq_s8(v159, vbicq_s8(vcgezq_f32(v159), v153)))), v145), v144));
      a10 += v27;
      v109 -= 2;
      if (v109 < 2)
      {
        break;
      }

      LOWORD(v110) = *a10;
      v140 += v29;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v140);
        a3 = (a3 + v140);
        goto LABEL_90;
      }
    }

    result = (result + v29 + v140);
    a3 = (a3 + v29 + v140);
LABEL_93:
    for (j = a12 - v108 + v109; j; --j)
    {
      if (*a10)
      {
        v162 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v107);
        v163 = vmulq_f32(v162, vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23));
        v164 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v162)), _Q5, vrev32q_s8(*result));
        v165 = vdupq_laneq_s32(v164, 3);
        v166 = vcgtzq_f32(v165);
        v167 = vceqzq_f32(v165);
        v168 = vdivq_f32(v164, v165);
        v169 = vaddq_f32(v163, v163);
        v170 = vmulq_f32(vmlaq_laneq_f32(vmlsq_f32(v169, v168, v169), v168, v163, 3), v164);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v163, 3)), vbslq_s8(v166, vaddq_f32(vmlsq_laneq_f32(v163, v163, v164, 3), vaddq_f32(vmlsq_laneq_f32(v164, v164, v163, 3), vandq_s8(v170, vbicq_s8(vcgezq_f32(v170), v167)))), v163), v164));
      }

      v171 = &a3[a14];
      a10 += a14;
      if (v171 >= a8)
      {
        v172 = -a7;
      }

      else
      {
        v172 = 0;
      }

      a3 = &v171[v172];
      result = (result + v30);
    }

    a10 += a11;
    result += a2;
    v173 = &a5[a4];
    if (v173 >= a9)
    {
      v174 = v28;
    }

    else
    {
      v174 = 0;
    }

    v175 = &v173[v174];
    v176 = a8 + 16 * v174 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v175;
      a8 = v176;
      a5 = v175;
    }

    _VF = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ _VF | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)22,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  v20.i64[0] = 0;
  v20.i32[2] = 0;
  v21.i64[0] = 0;
  v21.i32[2] = 0;
  v21.i32[3] = v19;
  v22 = vmvnq_s8(v21);
  v23 = vandq_s8(vdupq_n_s32(v19), xmmword_18439CB00);
  if (a15)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v20.i32[3] = v24;
  v25 = vmvnq_s8(v20);
  v26 = vandq_s8(vdupq_n_s32(v24), xmmword_18439CB00);
  v27 = 2 * a14;
  v28 = -(a6 * a4);
  v29 = 16 * v27;
  v30 = 16 * a14;
  __asm { FMOV            V5.4S, #1.0 }

  if ((a17 & 0x30) != 0)
  {
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v37 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v38 = (a8 - a3) >> 4;
      if (v38 >= a12)
      {
        v38 = a12;
      }

      v39 = v38;
      if (v38 < 2)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v40 = *a10;
        if (!*a10)
        {
          v57 = &a10[v39];
          v58 = a10;
          do
          {
            v59 = v58++;
          }

          while (v58 <= v57 && (vminvq_u8(vceqzq_s8(*v59)) & 0x80) != 0);
          do
          {
            v60 = v59;
            v59 = (v59 + 4);
          }

          while (v59 <= v57 && !v60->i32[0]);
          if (v60 < v57)
          {
            while (!v60->i8[0])
            {
              v60 = (v60 + 1);
              if (v60 >= v57)
              {
                v60 = &a10[v39];
                break;
              }
            }
          }

          v61 = v60 - a10;
          v62 = (v60 - a10) * a14;
          a3 += v62;
          result += v62;
          a10 += v62;
          v39 -= v61;
          goto LABEL_40;
        }

        if (v40 != 0xFFFF)
        {
          break;
        }

        v41 = &a10[v39];
        v42 = a10;
        do
        {
          v43 = v42++;
        }

        while (v42 <= v41 && (vminvq_u8(vceqq_s8(*v43, v36)) & 0x80) != 0);
        do
        {
          v44 = v43;
          v43 = (v43 + 4);
        }

        while (v43 <= v41 && v44->i32[0] == -1);
        if (v44 < v41)
        {
          while (v44->u8[0] == 255)
          {
            v44 = (v44 + 1);
            if (v44 >= v41)
            {
              v44 = &a10[v39];
              break;
            }
          }
        }

        v45 = v44 - a10;
        v46 = v44 - a10;
        do
        {
          v47 = vorrq_s8(vandq_s8(result[1], v25), v26);
          v48 = vdupq_laneq_s32(v47, 3);
          v49 = vorrq_s8(vandq_s8(*result, v25), v26);
          v50 = vdupq_laneq_s32(v49, 3);
          v51 = vorrq_s8(vandq_s8(*a3, v22), v23);
          v52 = vdupq_laneq_s32(v51, 3);
          v53 = vorrq_s8(vandq_s8(a3[1], v22), v23);
          v54 = vdupq_laneq_s32(v53, 3);
          v55 = vaddq_f32(vabdq_f32(vmulq_laneq_f32(v49, v51, 3), vmulq_laneq_f32(v51, v49, 3)), vaddq_f32(vmlsq_laneq_f32(v49, v49, v51, 3), vmlsq_laneq_f32(v51, v51, v49, 3)));
          v56 = vaddq_f32(vabdq_f32(vmulq_laneq_f32(v47, v53, 3), vmulq_laneq_f32(v53, v47, 3)), vaddq_f32(vmlsq_laneq_f32(v47, v47, v53, 3), vmlsq_laneq_f32(v53, v53, v47, 3)));
          v56.i32[3] = vaddq_f32(v53, vmlsq_laneq_f32(v48, v54, v47, 3)).i32[3];
          v55.i32[3] = vaddq_f32(v51, vmlsq_laneq_f32(v50, v52, v49, 3)).i32[3];
          *result = vbslq_s8(vcgtzq_f32(v52), vbslq_s8(vcgtzq_f32(v50), v55, v51), v49);
          result[1] = vbslq_s8(vcgtzq_f32(v54), vbslq_s8(vcgtzq_f32(v48), v56, v53), v47);
          a10 += v27;
          v46 -= 2;
          result = (result + v29);
          a3 = (a3 + v29);
        }

        while (v46 > 1);
        v39 = v39 - v45 + v46;
LABEL_40:
        if (v39 <= 1)
        {
          goto LABEL_43;
        }
      }

      v63 = 0;
      while (1)
      {
        v64 = (result + v63);
        v65 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v40) & 0xFF00FF00FF00FFLL))), v37);
        v66 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v40)) & 0xFF00FF00FF00FFLL))), v37);
        v67 = vandq_s8(v20, vcgtzq_f32(v66));
        v68 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v65)), _Q5, *(result + v63));
        v69 = vmulq_f32(v65, vorrq_s8(vandq_s8(*(a3 + v63), v22), v23));
        v70 = vmulq_f32(v66, vorrq_s8(vandq_s8(*(&a3[1] + v63), v22), v23));
        v71 = vdupq_laneq_s32(v70, 3);
        v72 = vdupq_laneq_s32(v69, 3);
        v73 = vdupq_laneq_s32(v68, 3);
        v74 = vbslq_s8(v67, _Q5, *(&result[1] + v63));
        v75 = vdupq_laneq_s32(v74, 3);
        v76 = vaddq_f32(vabdq_f32(vmulq_laneq_f32(v68, v69, 3), vmulq_laneq_f32(v69, v68, 3)), vaddq_f32(vmlsq_laneq_f32(v68, v68, v69, 3), vmlsq_laneq_f32(v69, v69, v68, 3)));
        v77 = vaddq_f32(vabdq_f32(vmulq_laneq_f32(v74, v70, 3), vmulq_laneq_f32(v70, v74, 3)), vaddq_f32(vmlsq_laneq_f32(v74, v74, v70, 3), vmlsq_laneq_f32(v70, v70, v74, 3)));
        v77.i32[3] = vaddq_f32(v70, vmlsq_laneq_f32(v75, v71, v74, 3)).i32[3];
        v76.i32[3] = vaddq_f32(v69, vmlsq_laneq_f32(v73, v72, v68, 3)).i32[3];
        *v64 = vbslq_s8(vcgtzq_f32(v72), vbslq_s8(vcgtzq_f32(v73), v76, v69), v68);
        v64[1] = vbslq_s8(vcgtzq_f32(v71), vbslq_s8(vcgtzq_f32(v75), v77, v70), v74);
        a10 += v27;
        v39 -= 2;
        if (v39 < 2)
        {
          break;
        }

        LOWORD(v40) = *a10;
        v63 += v29;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v63);
          a3 = (a3 + v63);
          goto LABEL_40;
        }
      }

      result = (result + v29 + v63);
      a3 = (a3 + v29 + v63);
LABEL_43:
      for (i = a12 - v38 + v39; i; --i)
      {
        if (*a10)
        {
          v79 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v37);
          v80 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v79)), _Q5, *result);
          v81 = vmulq_f32(v79, vorrq_s8(vandq_s8(*a3, v22), v23));
          v82 = vdupq_laneq_s32(v81, 3);
          v83 = vdupq_laneq_s32(v80, 3);
          v84 = vaddq_f32(vaddq_f32(vmlsq_laneq_f32(v81, v81, v80, 3), vmlsq_laneq_f32(v80, v80, v81, 3)), vabdq_f32(vmulq_laneq_f32(v80, v81, 3), vmulq_laneq_f32(v81, v80, 3)));
          v84.i32[3] = vaddq_f32(v81, vmlsq_laneq_f32(v83, v82, v80, 3)).i32[3];
          *result = vbslq_s8(vcgtzq_f32(v82), vbslq_s8(vcgtzq_f32(v83), v84, v81), v80);
        }

        v85 = &a3[a14];
        a10 += a14;
        if (v85 >= a8)
        {
          v86 = -a7;
        }

        else
        {
          v86 = 0;
        }

        a3 = &v85[v86];
        result = (result + v30);
      }

      a10 += a11;
      result += a2;
      v87 = &a5[a4];
      if (v87 >= a9)
      {
        v88 = v28;
      }

      else
      {
        v88 = 0;
      }

      v89 = &v87[v88];
      v90 = a8 + 16 * v88 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v89;
        a8 = v90;
        a5 = v89;
      }

      _VF = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ _VF | (a13 == 0))
      {
        return result;
      }
    }
  }

  v91.i64[0] = -1;
  v91.i64[1] = -1;
  v92 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v93 = (a8 - a3) >> 4;
    if (v93 >= a12)
    {
      v93 = a12;
    }

    v94 = v93;
    if (v93 < 2)
    {
      goto LABEL_93;
    }

    while (1)
    {
      v95 = *a10;
      if (!*a10)
      {
        v112 = &a10[v94];
        v113 = a10;
        do
        {
          v114 = v113++;
        }

        while (v113 <= v112 && (vminvq_u8(vceqzq_s8(*v114)) & 0x80) != 0);
        do
        {
          v115 = v114;
          v114 = (v114 + 4);
        }

        while (v114 <= v112 && !v115->i32[0]);
        if (v115 < v112)
        {
          while (!v115->i8[0])
          {
            v115 = (v115 + 1);
            if (v115 >= v112)
            {
              v115 = &a10[v94];
              break;
            }
          }
        }

        v116 = v115 - a10;
        v117 = (v115 - a10) * a14;
        a3 += v117;
        result += v117;
        a10 += v117;
        v94 -= v116;
        goto LABEL_90;
      }

      if (v95 != 0xFFFF)
      {
        break;
      }

      v96 = &a10[v94];
      v97 = a10;
      do
      {
        v98 = v97++;
      }

      while (v97 <= v96 && (vminvq_u8(vceqq_s8(*v98, v91)) & 0x80) != 0);
      do
      {
        v99 = v98;
        v98 = (v98 + 4);
      }

      while (v98 <= v96 && v99->i32[0] == -1);
      if (v99 < v96)
      {
        while (v99->u8[0] == 255)
        {
          v99 = (v99 + 1);
          if (v99 >= v96)
          {
            v99 = &a10[v94];
            break;
          }
        }
      }

      v100 = v99 - a10;
      v101 = v99 - a10;
      do
      {
        v102 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v25), v26);
        v103 = vdupq_laneq_s32(v102, 3);
        v104 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v25), v26);
        v105 = vdupq_laneq_s32(v104, 3);
        v106 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v22), v23);
        v107 = vdupq_laneq_s32(v106, 3);
        v108 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23);
        v109 = vdupq_laneq_s32(v108, 3);
        v110 = vaddq_f32(vabdq_f32(vmulq_laneq_f32(v104, v106, 3), vmulq_laneq_f32(v106, v104, 3)), vaddq_f32(vmlsq_laneq_f32(v104, v104, v106, 3), vmlsq_laneq_f32(v106, v106, v104, 3)));
        v111 = vaddq_f32(vabdq_f32(vmulq_laneq_f32(v102, v108, 3), vmulq_laneq_f32(v108, v102, 3)), vaddq_f32(vmlsq_laneq_f32(v102, v102, v108, 3), vmlsq_laneq_f32(v108, v108, v102, 3)));
        v111.i32[3] = vaddq_f32(v108, vmlsq_laneq_f32(v103, v109, v102, 3)).i32[3];
        v110.i32[3] = vaddq_f32(v106, vmlsq_laneq_f32(v105, v107, v104, 3)).i32[3];
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(v109), vbslq_s8(vcgtzq_f32(v103), v111, v108), v102));
        result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(v107), vbslq_s8(vcgtzq_f32(v105), v110, v106), v104));
        a10 += v27;
        v101 -= 2;
        result = (result + v29);
        a3 = (a3 + v29);
      }

      while (v101 > 1);
      v94 = v94 - v100 + v101;
LABEL_90:
      if (v94 <= 1)
      {
        goto LABEL_93;
      }
    }

    v118 = 0;
    while (1)
    {
      v119 = (result + v118);
      v120 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v95)) & 0xFF00FF00FF00FFLL))), v92);
      v121 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v95) & 0xFF00FF00FF00FFLL))), v92);
      v122 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v121)), _Q5, vrev32q_s8(*(result + v118)));
      v123 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v120)), _Q5, vrev32q_s8(*(&result[1] + v118)));
      v124 = vmulq_f32(v120, vorrq_s8(vandq_s8(vrev32q_s8(*(&a3[1] + v118)), v22), v23));
      v125 = vmulq_f32(v121, vorrq_s8(vandq_s8(vrev32q_s8(*(a3 + v118)), v22), v23));
      v126 = vdupq_laneq_s32(v125, 3);
      v127 = vdupq_laneq_s32(v124, 3);
      v128 = vdupq_laneq_s32(v123, 3);
      v129 = vdupq_laneq_s32(v122, 3);
      v130 = vaddq_f32(vabdq_f32(vmulq_laneq_f32(v123, v124, 3), vmulq_laneq_f32(v124, v123, 3)), vaddq_f32(vmlsq_laneq_f32(v123, v123, v124, 3), vmlsq_laneq_f32(v124, v124, v123, 3)));
      v131 = vaddq_f32(vabdq_f32(vmulq_laneq_f32(v122, v125, 3), vmulq_laneq_f32(v125, v122, 3)), vaddq_f32(vmlsq_laneq_f32(v122, v122, v125, 3), vmlsq_laneq_f32(v125, v125, v122, 3)));
      v131.i32[3] = vaddq_f32(v125, vmlsq_laneq_f32(v129, v126, v122, 3)).i32[3];
      v130.i32[3] = vaddq_f32(v124, vmlsq_laneq_f32(v128, v127, v123, 3)).i32[3];
      *v119 = vrev32q_s8(vbslq_s8(vcgtzq_f32(v126), vbslq_s8(vcgtzq_f32(v129), v131, v125), v122));
      v119[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(v127), vbslq_s8(vcgtzq_f32(v128), v130, v124), v123));
      a10 += v27;
      v94 -= 2;
      if (v94 < 2)
      {
        break;
      }

      LOWORD(v95) = *a10;
      v118 += v29;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v118);
        a3 = (a3 + v118);
        goto LABEL_90;
      }
    }

    result = (result + v29 + v118);
    a3 = (a3 + v29 + v118);
LABEL_93:
    for (j = a12 - v93 + v94; j; --j)
    {
      if (*a10)
      {
        v133 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v92);
        v134 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v133)), _Q5, vrev32q_s8(*result));
        v135 = vmulq_f32(v133, vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23));
        v136 = vdupq_laneq_s32(v135, 3);
        v137 = vdupq_laneq_s32(v134, 3);
        v138 = vaddq_f32(vaddq_f32(vmlsq_laneq_f32(v135, v135, v134, 3), vmlsq_laneq_f32(v134, v134, v135, 3)), vabdq_f32(vmulq_laneq_f32(v134, v135, 3), vmulq_laneq_f32(v135, v134, 3)));
        v138.i32[3] = vaddq_f32(v135, vmlsq_laneq_f32(v137, v136, v134, 3)).i32[3];
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(v136), vbslq_s8(vcgtzq_f32(v137), v138, v135), v134));
      }

      v139 = &a3[a14];
      a10 += a14;
      if (v139 >= a8)
      {
        v140 = -a7;
      }

      else
      {
        v140 = 0;
      }

      a3 = &v139[v140];
      result = (result + v30);
    }

    a10 += a11;
    result += a2;
    v141 = &a5[a4];
    if (v141 >= a9)
    {
      v142 = v28;
    }

    else
    {
      v142 = 0;
    }

    v143 = &v141[v142];
    v144 = a8 + 16 * v142 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v143;
      a8 = v144;
      a5 = v143;
    }

    _VF = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ _VF | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)23,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  v20.i64[0] = 0;
  v20.i32[2] = 0;
  v21.i64[0] = 0;
  v21.i32[2] = 0;
  v21.i32[3] = v19;
  v22 = vmvnq_s8(v21);
  v23 = vandq_s8(vdupq_n_s32(v19), xmmword_18439CB00);
  if (a15)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v20.i32[3] = v24;
  v25 = vmvnq_s8(v20);
  v26 = vandq_s8(vdupq_n_s32(v24), xmmword_18439CB00);
  v27 = 2 * a14;
  v28 = -(a6 * a4);
  v29 = 16 * v27;
  v30 = 16 * a14;
  __asm { FMOV            V5.4S, #1.0 }

  if ((a17 & 0x30) != 0)
  {
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v37 = vdupq_n_s32(0x3B808081u);
    while (1)
    {
      v38 = (a8 - a3) >> 4;
      if (v38 >= a12)
      {
        v38 = a12;
      }

      v39 = v38;
      if (v38 < 2)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v40 = *a10;
        if (!*a10)
        {
          v53 = &a10[v39];
          v54 = a10;
          do
          {
            v55 = v54++;
          }

          while (v54 <= v53 && (vminvq_u8(vceqzq_s8(*v55)) & 0x80) != 0);
          do
          {
            v56 = v55;
            v55 = (v55 + 4);
          }

          while (v55 <= v53 && !v56->i32[0]);
          if (v56 < v53)
          {
            while (!v56->i8[0])
            {
              v56 = (v56 + 1);
              if (v56 >= v53)
              {
                v56 = &a10[v39];
                break;
              }
            }
          }

          v57 = v56 - a10;
          v58 = (v56 - a10) * a14;
          a3 += v58;
          result += v58;
          a10 += v58;
          v39 -= v57;
          goto LABEL_40;
        }

        if (v40 != 0xFFFF)
        {
          break;
        }

        v41 = &a10[v39];
        v42 = a10;
        do
        {
          v43 = v42++;
        }

        while (v42 <= v41 && (vminvq_u8(vceqq_s8(*v43, v36)) & 0x80) != 0);
        do
        {
          v44 = v43;
          v43 = (v43 + 4);
        }

        while (v43 <= v41 && v44->i32[0] == -1);
        if (v44 < v41)
        {
          while (v44->u8[0] == 255)
          {
            v44 = (v44 + 1);
            if (v44 >= v41)
            {
              v44 = &a10[v39];
              break;
            }
          }
        }

        v45 = v44 - a10;
        v46 = v44 - a10;
        do
        {
          v47 = vorrq_s8(vandq_s8(*a3, v22), v23);
          v48 = vorrq_s8(vandq_s8(a3[1], v22), v23);
          v49 = vorrq_s8(vandq_s8(result[1], v25), v26);
          v50 = vorrq_s8(vandq_s8(*result, v25), v26);
          v51 = vmlsq_f32(v48, v49, v48);
          v52 = vmlsq_f32(v47, v50, v47);
          v52.i32[3] = v47.i32[3];
          v51.i32[3] = v48.i32[3];
          *result = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v47, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v50, 3)), vaddq_f32(vmlsq_f32(v50, v47, v50), v52), v47), v50);
          result[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v48, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v49, 3)), vaddq_f32(vmlsq_f32(v49, v48, v49), v51), v48), v49);
          a10 += v27;
          v46 -= 2;
          result = (result + v29);
          a3 = (a3 + v29);
        }

        while (v46 > 1);
        v39 = v39 - v45 + v46;
LABEL_40:
        if (v39 <= 1)
        {
          goto LABEL_43;
        }
      }

      v59 = 0;
      while (1)
      {
        v60 = (result + v59);
        v61 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v40) & 0xFF00FF00FF00FFLL))), v37);
        v62 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v40)) & 0xFF00FF00FF00FFLL))), v37);
        v63 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v61)), _Q5, *(result + v59));
        v64 = vmulq_f32(v61, vorrq_s8(vandq_s8(*(a3 + v59), v22), v23));
        v65 = vmulq_f32(v62, vorrq_s8(vandq_s8(*(&a3[1] + v59), v22), v23));
        v66 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v62)), _Q5, *(&result[1] + v59));
        v67 = vmlsq_f32(v65, v66, v65);
        v68 = vmlsq_f32(v64, v63, v64);
        v68.i32[3] = v64.i32[3];
        v67.i32[3] = v65.i32[3];
        *v60 = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v64, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v63, 3)), vaddq_f32(v68, vmlsq_f32(v63, v64, v63)), v64), v63);
        v60[1] = vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v65, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v66, 3)), vaddq_f32(v67, vmlsq_f32(v66, v65, v66)), v65), v66);
        a10 += v27;
        v39 -= 2;
        if (v39 < 2)
        {
          break;
        }

        LOWORD(v40) = *a10;
        v59 += v29;
        if ((*a10 - 1) >= 0xFFFEu)
        {
          result = (result + v59);
          a3 = (a3 + v59);
          goto LABEL_40;
        }
      }

      result = (result + v29 + v59);
      a3 = (a3 + v29 + v59);
LABEL_43:
      for (i = a12 - v38 + v39; i; --i)
      {
        if (*a10)
        {
          v70 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v37);
          v71 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v70)), _Q5, *result);
          v72 = vmulq_f32(v70, vorrq_s8(vandq_s8(*a3, v22), v23));
          v73 = vmlsq_f32(v72, v71, v72);
          v73.i32[3] = v72.i32[3];
          *result = vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtzq_f32(v72)), 3)), vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtzq_f32(v71)), 3)), vaddq_f32(v73, vmlsq_f32(v71, v72, v71)), v72), v71);
        }

        v74 = &a3[a14];
        a10 += a14;
        if (v74 >= a8)
        {
          v75 = -a7;
        }

        else
        {
          v75 = 0;
        }

        a3 = &v74[v75];
        result = (result + v30);
      }

      a10 += a11;
      result += a2;
      v76 = &a5[a4];
      if (v76 >= a9)
      {
        v77 = v28;
      }

      else
      {
        v77 = 0;
      }

      v78 = &v76[v77];
      v79 = a8 + 16 * v77 + 16 * a4;
      a3 += a4;
      if (a9)
      {
        a3 = v78;
        a8 = v79;
        a5 = v78;
      }

      _VF = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ _VF | (a13 == 0))
      {
        return result;
      }
    }
  }

  v80.i64[0] = -1;
  v80.i64[1] = -1;
  v81 = vdupq_n_s32(0x3B808081u);
  while (2)
  {
    v82 = (a8 - a3) >> 4;
    if (v82 >= a12)
    {
      v82 = a12;
    }

    v83 = v82;
    if (v82 < 2)
    {
      goto LABEL_93;
    }

    while (1)
    {
      v84 = *a10;
      if (!*a10)
      {
        v97 = &a10[v83];
        v98 = a10;
        do
        {
          v99 = v98++;
        }

        while (v98 <= v97 && (vminvq_u8(vceqzq_s8(*v99)) & 0x80) != 0);
        do
        {
          v100 = v99;
          v99 = (v99 + 4);
        }

        while (v99 <= v97 && !v100->i32[0]);
        if (v100 < v97)
        {
          while (!v100->i8[0])
          {
            v100 = (v100 + 1);
            if (v100 >= v97)
            {
              v100 = &a10[v83];
              break;
            }
          }
        }

        v101 = v100 - a10;
        v102 = (v100 - a10) * a14;
        a3 += v102;
        result += v102;
        a10 += v102;
        v83 -= v101;
        goto LABEL_90;
      }

      if (v84 != 0xFFFF)
      {
        break;
      }

      v85 = &a10[v83];
      v86 = a10;
      do
      {
        v87 = v86++;
      }

      while (v86 <= v85 && (vminvq_u8(vceqq_s8(*v87, v80)) & 0x80) != 0);
      do
      {
        v88 = v87;
        v87 = (v87 + 4);
      }

      while (v87 <= v85 && v88->i32[0] == -1);
      if (v88 < v85)
      {
        while (v88->u8[0] == 255)
        {
          v88 = (v88 + 1);
          if (v88 >= v85)
          {
            v88 = &a10[v83];
            break;
          }
        }
      }

      v89 = v88 - a10;
      v90 = v88 - a10;
      do
      {
        v91 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v22), v23);
        v92 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23);
        v93 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v25), v26);
        v94 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v25), v26);
        v95 = vmlsq_f32(v91, v94, v91);
        v95.i32[3] = v91.i32[3];
        v96 = vmlsq_f32(v92, v93, v92);
        v96.i32[3] = v92.i32[3];
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v92, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v93, 3)), vaddq_f32(vmlsq_f32(v93, v92, v93), v96), v92), v93));
        result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v91, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v94, 3)), vaddq_f32(vmlsq_f32(v94, v91, v94), v95), v91), v94));
        a10 += v27;
        v90 -= 2;
        result = (result + v29);
        a3 = (a3 + v29);
      }

      while (v90 > 1);
      v83 = v83 - v89 + v90;
LABEL_90:
      if (v83 <= 1)
      {
        goto LABEL_93;
      }
    }

    v103 = 0;
    while (1)
    {
      v104 = (result + v103);
      v105 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(BYTE1(v84)) & 0xFF00FF00FF00FFLL))), v81);
      v106 = vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v84) & 0xFF00FF00FF00FFLL))), v81);
      v107 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v106)), _Q5, vrev32q_s8(*(result + v103)));
      v108 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v105)), _Q5, vrev32q_s8(*(&result[1] + v103)));
      v109 = vmulq_f32(v105, vorrq_s8(vandq_s8(vrev32q_s8(*(&a3[1] + v103)), v22), v23));
      v110 = vmulq_f32(v106, vorrq_s8(vandq_s8(vrev32q_s8(*(a3 + v103)), v22), v23));
      v111 = vmlsq_f32(v110, v107, v110);
      v112 = vmlsq_f32(v109, v108, v109);
      v112.i32[3] = v109.i32[3];
      v111.i32[3] = v110.i32[3];
      *v104 = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v110, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v107, 3)), vaddq_f32(v111, vmlsq_f32(v107, v110, v107)), v110), v107));
      v104[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v109, 3)), vbslq_s8(vcgtzq_f32(vdupq_laneq_s32(v108, 3)), vaddq_f32(v112, vmlsq_f32(v108, v109, v108)), v109), v108));
      a10 += v27;
      v83 -= 2;
      if (v83 < 2)
      {
        break;
      }

      LOWORD(v84) = *a10;
      v103 += v29;
      if ((*a10 - 1) >= 0xFFFEu)
      {
        result = (result + v103);
        a3 = (a3 + v103);
        goto LABEL_90;
      }
    }

    result = (result + v29 + v103);
    a3 = (a3 + v29 + v103);
LABEL_93:
    for (j = a12 - v82 + v83; j; --j)
    {
      if (*a10)
      {
        v114 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vdup_n_s16(*a10))), v81);
        v115 = vbslq_s8(vandq_s8(v20, vcgtzq_f32(v114)), _Q5, vrev32q_s8(*result));
        v116 = vmulq_f32(v114, vorrq_s8(vandq_s8(vrev32q_s8(*a3), v22), v23));
        v117 = vmlsq_f32(v116, v115, v116);
        v117.i32[3] = v116.i32[3];
        *result = vrev32q_s8(vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtzq_f32(v116)), 3)), vbslq_s8(vmovl_s16(vdup_lane_s16(vmovn_s32(vcgtzq_f32(v115)), 3)), vaddq_f32(v117, vmlsq_f32(v115, v116, v115)), v116), v115));
      }

      v118 = &a3[a14];
      a10 += a14;
      if (v118 >= a8)
      {
        v119 = -a7;
      }

      else
      {
        v119 = 0;
      }

      a3 = &v118[v119];
      result = (result + v30);
    }

    a10 += a11;
    result += a2;
    v120 = &a5[a4];
    if (v120 >= a9)
    {
      v121 = v28;
    }

    else
    {
      v121 = 0;
    }

    v122 = &v120[v121];
    v123 = a8 + 16 * v121 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v122;
      a8 = v123;
      a5 = v122;
    }

    _VF = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ _VF | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

uint64_t RGBAf_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  memset(v39, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 8) >= 1.0;
  }

  v8 = *(*(v6 + 56) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v33, v39) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = *v6;
  v19 = *a3;
  v34 = v19;
  v35 = v18;
  if (v19 == 538981289)
  {
    if (!v38 && (~v37 & 0xC3) == 0)
    {
      v17.n128_u32[0] = *(a3 + 8);
      if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
      {
        if ((v37 & 4) != 0)
        {
          v17.n128_u64[0] = *(a3 + 32);
          *(a2 + 8) = v17.n128_u64[0];
        }

        RGBAf_mark_inner(*a1, v17);
        return 1;
      }
    }

    v33 = RGBAf_sample_RGBAf_inner;
    goto LABEL_38;
  }

  v20 = SAMPLEINDEX(v19, v10, v11, v12, v13, v14, v15, v16);
  if (!v20)
  {
    return 0xFFFFFFFFLL;
  }

  if (v20 > 0xB)
  {
    goto LABEL_28;
  }

  if (v20 > 6)
  {
    switch(v20)
    {
      case 7:
        v21 = 0;
        v22 = 32;
        break;
      case 9:
        v21 = 0;
        v22 = 40;
        break;
      case 8:
        v21 = 0;
        v22 = 8;
        goto LABEL_29;
      default:
        goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v20 == 2)
  {
    if (!*(a2 + 12))
    {
      v21 = 0;
      v22 = 16;
      goto LABEL_29;
    }

LABEL_28:
    v22 = 255;
    v21 = 1;
    goto LABEL_29;
  }

  if (v20 != 5)
  {
    if (v20 == 6)
    {
      v21 = 0;
      v22 = 0;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v21 = 0;
  v22 = 24;
LABEL_29:
  v23 = RGBF_image_sample;
  v33 = *&RGBF_image_sample[2 * v20 + 2];
  if (v33)
  {
    goto LABEL_37;
  }

  if ((HIWORD(*a3) & 0x3Fu) > 8)
  {
    if ((*a3 & 0x3F0000u) >> 16 > 0x10)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_34;
  }

  v23 = RGB8_image_sample;
  v33 = *&RGB8_image_sample[2 * v20 + 2];
  if (!v33)
  {
LABEL_34:
    v23 = RGB16_image_sample;
    v33 = *&RGB16_image_sample[2 * v20 + 2];
    if (v33)
    {
      v24 = 8;
      goto LABEL_36;
    }

    return 0xFFFFFFFFLL;
  }

  v24 = 4;
LABEL_36:
  v36 = v24;
LABEL_37:
  v34 = *v23;
  if ((v21 & 1) != 0 || (v8 - 1) > 1 || (v37 & 7) != 3 || a2[2] != 5 && a2[2] || v20 > 0xB)
  {
    goto LABEL_38;
  }

  HIDWORD(v26) = v22;
  LODWORD(v26) = v22;
  v25 = v26 >> 3;
  if (v25 > 2)
  {
    if (v25 == 3)
    {
      v34 = *a3;
      v27 = RGBAf_image_mark_RGB24;
      goto LABEL_67;
    }

    if (v25 == 4)
    {
      v34 = *a3;
      v27 = RGBAf_image_mark_rgb32;
      goto LABEL_67;
    }

    if (v25 != 5)
    {
      goto LABEL_38;
    }

    v34 = *a3;
    v28 = RGBAf_image_mark_rgb32;
LABEL_65:
    v29 = v28;
    v30 = a2;
    v31 = v8;
    v32 = 8;
LABEL_68:
    RGBAf_image_mark_image(v30, &v33, v31, v32, v29);
    return 1;
  }

  switch(v25)
  {
    case 0:
      v34 = *a3;
      v27 = RGBAf_image_mark_RGB32;
      goto LABEL_67;
    case 1:
      v34 = *a3;
      v28 = RGBAf_image_mark_RGB32;
      goto LABEL_65;
    case 2:
      v34 = *a3;
      v27 = RGBAf_image_mark_W8;
LABEL_67:
      v29 = v27;
      v30 = a2;
      v31 = v8;
      v32 = 0;
      goto LABEL_68;
  }

LABEL_38:
  RGBAf_image_mark(a2, &v33, v8, v17);
  return 1;
}

void RGBAf_image_mark_image(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(uint64_t, _DWORD *))
{
  v50[0] = a3;
  v50[1] = a4;
  v50[2] = *(a2 + 184);
  v8 = *(a1 + 28) >> 4;
  v52 = v8;
  v9 = *(a2 + 120);
  v10 = *(a2 + 20);
  v11 = HIBYTE(v10);
  v12 = BYTE2(v10);
  if (v9)
  {
    v13 = *(a2 + 24);
    v14 = (a2 + 104);
    v15 = (a2 + 72);
    v16 = (a2 + 88);
    v17 = v11;
  }

  else
  {
    v13 = *(a2 + 8) >> 25;
    v14 = (a2 + 96);
    v15 = (a2 + 64);
    v16 = (a2 + 80);
    v9 = *(a2 + 112);
    v17 = v12;
  }

  v18 = *v16;
  v19 = *v15;
  v20 = *v14;
  v21 = v17;
  v55 = v17;
  v53 = v20;
  v63 = v13;
  v49 = v18;
  v61 = v18;
  v59 = v19;
  v57 = v9;
  v22 = *(a2 + 128);
  if (v22)
  {
    v23 = *(a2 + 8) >> 25;
    v24 = (a2 + 96);
    v25 = (a2 + 64);
    v26 = (a2 + 80);
    v11 = v12;
  }

  else
  {
    v23 = *(a2 + 24);
    v24 = (a2 + 104);
    v25 = (a2 + 72);
    v26 = (a2 + 88);
    v22 = *(a2 + 136);
  }

  v27 = *v26;
  v28 = *v25;
  v29 = *v24;
  v56 = v11;
  v54 = v29;
  v64 = v23;
  v62 = v27;
  v60 = v28;
  v58 = v22;
  v30 = *(a1 + 4);
  if ((v30 & 0x80000000) == 0)
  {
    v31 = malloc_type_malloc(16 * v30, 0x23554AE0uLL);
    v65 = v31;
    if (v31)
    {
      if (*(a2 + 176))
      {
        if (v30)
        {
          v33 = v31 + 1;
          v34 = v49 - v20;
          do
          {
            if (((v20 - v19) | v34) < 0)
            {
              v38 = 0;
            }

            else
            {
              v35 = ((v20 & ~(-1 << v21)) >> (v21 - 4)) & 0xF;
              v36 = weights_21890[v35];
              if (v35 - 7 >= 9)
              {
                v37 = -v13;
              }

              else
              {
                v37 = v13;
              }

              v38 = v36 & 0xF | (16 * v37);
            }

            *(v33 - 1) = v13 * (v20 >> v21);
            *v33 = v38;
            v33 += 2;
            v20 += v9;
            v34 -= v9;
            --v30;
          }

          while (v30);
        }
      }

      else if (v30)
      {
        v39 = v31 + 1;
        do
        {
          *(v39 - 1) = v13 * (v20 >> v21);
          *v39 = 0;
          v39 += 2;
          v20 += v9;
          --v30;
        }

        while (v30);
      }

      v40 = v31;
      v41 = *(a1 + 4);
      v42 = *(a1 + 8);
      v66 = v42;
      v67 = v41;
      v43 = *(a1 + 136);
      if (v43)
      {
        v44 = *(a1 + 104);
        v68[0] = *(a1 + 108);
        v68[1] = v44;
        shape_enum_clip_alloc(v31, v32, v43, 1, 1, 1, v44, v68[0], v41, v42);
        v46 = v45;
        if (v45)
        {
          goto LABEL_27;
        }
      }

      v47 = 0;
      v48 = 0;
      v46 = 0;
      *v68 = 0;
      while (1)
      {
        v51 = *(a1 + 40) + 16 * v8 * (*(a1 + 16) + v48) + 16 * (v47 + *(a1 + 12));
        a5(a2, v50);
        if (!v46)
        {
          break;
        }

LABEL_27:
        if (!shape_enum_clip_next(v46, &v68[1], v68, &v67, &v66))
        {
          free(v46);
          break;
        }

        v48 = v68[0];
        v47 = v68[1];
        v8 = v52;
      }

      free(v40);
    }
  }
}

void RGBAf_image_mark(uint64_t a1, uint64_t a2, unsigned int a3, __n128 a4)
{
  v325 = a3;
  v336 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4);
  v5 = (v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v5 > 0x1FFFFFF)
  {
    return;
  }

  v8 = *(a1 + 28);
  v9 = *(a1 + 40);
  v335 = *(a1 + 48);
  a4.n128_u32[0] = *(a2 + 184);
  v331 = a4;
  v10 = *(a1 + 136);
  v332 = v9;
  v333 = v10;
  v11 = *(a2 + 104);
  v327 = *(a2 + 96);
  v330 = v11;
  v13 = *(a1 + 12);
  v12 = *(a1 + 16);
  v334 = *(a1 + 8);
  v14 = *(a2 + 16);
  v15 = (v14 + 18) * v5;
  if (v15 > 65439)
  {
    v18 = malloc_type_calloc(1uLL, v15 + 96, 0x7D6E1F9CuLL);
    v17 = v18;
    v20 = v18;
    if (!v18)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a4);
    v17 = &v319 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v16);
    v20 = 0;
  }

  v322 = v20;
  v21 = v8 >> 4;
  v22 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v22 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v14)
  {
    v24 = 16 * v5;
  }

  else
  {
    v24 = 0;
  }

  v25 = v23 + v24;
  *(a2 + 144) = v22;
  *(a2 + 152) = v23 + v24;
  *(a2 + 160) = v23;
  v26 = &v332[16 * v21 * v12 + 16 * v13];
  v320 = v8 >> 4;
  v321 = v4;
  v329 = v21 - v4;
  v27 = *(a1 + 104);
  v28 = *(a1 + 108);
  v29 = *(a1 + 2);
  if (v29 == 6 || v29 == 1)
  {
    v30 = v327;
    if (!v333)
    {
      goto LABEL_430;
    }

    v31 = 0;
    v32 = 0;
    v33 = *(a1 + 124);
    v34 = v333 + v33 * v28 + v27;
    v35 = v321;
    v326 = v33 - v321;
    v36 = v325;
  }

  else
  {
    if (v333)
    {
      shape_enum_clip_alloc(v18, v19, v333, 1, 1, 1, v27, v28, v4, v334);
      if (!v37)
      {
        goto LABEL_430;
      }

      v38 = ((v14 * v5 + 15) & 0xFFFFFFF0);
      if (!v14)
      {
        v38 = 16 * v5;
      }

      v39 = v25 + v38;
      v32 = 0;
      v35 = v321;
      v326 = -v321;
      v34 = (v39 + 16);
      v36 = v325;
      v30 = v327;
      v31 = v37;
      while (1)
      {
LABEL_433:
        v313 = *(v34 - 4);
        v314 = v313 - v32;
        if (v313 > v32)
        {
          v334 -= v314;
          if (v334 < 1)
          {
            goto LABEL_429;
          }

          v30 += *(a2 + 128) * v314;
          v330 += *(a2 + 136) * v314;
          v26 += v320 * v314;
          v32 = v313;
        }

        else
        {
          if (v32 < *(v34 - 3) + v313)
          {
            goto LABEL_18;
          }

          if (!shape_enum_clip_scan(v31, v34 - 4))
          {
LABEL_429:
            free(v31);
            goto LABEL_430;
          }
        }
      }
    }

    v326 = 0;
    v31 = 0;
    v34 = 0;
    v32 = 0;
    v36 = v325;
    v35 = v321;
    v30 = v327;
  }

LABEL_18:
  LODWORD(v333) = v32;
  v324 = (v4 - 1);
  v323 = -v35;
  v328 = v36;
  v40 = v31;
  v41 = v330;
  while (2)
  {
    v332 = v40;
    v42 = (*a2)(a2, v30, v41, v4);
    v58 = *(a2 + 160);
    v59 = *(a2 + 144);
    v60 = *(a2 + 8);
    if (v60 == *(a2 + 12))
    {
      v51 = v331.n128_u64[0];
      if (v331.n128_f32[0] < 1.0)
      {
        v61 = v4;
        v62 = *(a2 + 144);
        do
        {
          if (*v62)
          {
            v50 = vmulq_n_f32(*v58, *v51.i32);
            *v58 = v50;
          }

          ++v62;
          ++v58;
          --v61;
        }

        while (v61);
        v58 += v323;
        v59 += v324 + v323 + 1;
      }
    }

    else
    {
      v63 = *(a2 + 152);
      v64 = HIWORD(v60) & 0x3F;
      v52 = v331.n128_f64[0];
      if (v64 == 16)
      {
        v66 = 0;
        v67 = &v58->f32[2];
        if (v331.n128_f32[0] >= 1.0)
        {
          do
          {
            if (v59[v66])
            {
              v69 = *(v63 + 8 * v66);
              *(v67 - 2) = *&_blt_float[v69 + 256] + *&_blt_float[BYTE1(v69) + 512];
              *(v67 - 1) = *&_blt_float[BYTE2(v69) + 256] + *&_blt_float[BYTE3(v69) | 0x200];
              *v67 = *&_blt_float[BYTE4(v69) + 256] + *&_blt_float[BYTE5(v69) + 512];
              v67[1] = *&_blt_float[BYTE6(v69) + 256] + *&_blt_float[HIBYTE(v69) + 512];
            }

            ++v66;
            v67 += 4;
          }

          while (v4 != v66);
        }

        else
        {
          do
          {
            if (v59[v66])
            {
              v68 = *(v63 + 8 * v66);
              *(v67 - 2) = *&v52 * (*&_blt_float[v68 + 256] + *&_blt_float[BYTE1(v68) + 512]);
              *(v67 - 1) = *&v52 * (*&_blt_float[BYTE2(v68) + 256] + *&_blt_float[BYTE3(v68) | 0x200]);
              *v67 = *&v52 * (*&_blt_float[BYTE4(v68) + 256] + *&_blt_float[BYTE5(v68) + 512]);
              v67[1] = *&v52 * (*&_blt_float[BYTE6(v68) + 256] + *&_blt_float[HIBYTE(v68) + 512]);
            }

            ++v66;
            v67 += 4;
          }

          while (v4 != v66);
        }
      }

      else if (v64 == 32)
      {
        v65 = 0;
        if (v331.n128_f32[0] >= 1.0)
        {
          do
          {
            if (v59[v65])
            {
              v50 = *(v63 + 16 * v65);
              v58[v65] = v50;
            }

            ++v65;
          }

          while (v4 != v65);
        }

        else
        {
          do
          {
            if (v59[v65])
            {
              v50 = vmulq_n_f32(*(v63 + 16 * v65), *&v52);
              v58[v65] = v50;
            }

            ++v65;
          }

          while (v4 != v65);
        }
      }

      else
      {
        v70 = 0;
        if (v331.n128_f32[0] >= 1.0)
        {
          v73 = &v58->i32[2];
          do
          {
            if (v59[v70])
            {
              v74 = *(v63 + 4 * v70);
              *(v73 - 2) = *(_blt_float + ((v74 >> 22) & 0x3FC));
              *(v73 - 1) = _blt_float[BYTE2(v74)];
              *v73 = _blt_float[BYTE1(v74)];
              v73[1] = _blt_float[v74];
            }

            ++v70;
            v73 += 4;
          }

          while (v4 != v70);
        }

        else
        {
          do
          {
            if (v59[v70])
            {
              v71 = *(v63 + 4 * v70);
              v72.i32[0] = *(_blt_float + ((v71 >> 22) & 0x3FC));
              v72.i32[1] = _blt_float[BYTE2(v71)];
              v72.i32[2] = _blt_float[BYTE1(v71)];
              v72.i32[3] = _blt_float[v71];
              v50 = vmulq_n_f32(v72, *&v52);
              v58[v70] = v50;
            }

            ++v70;
          }

          while (v4 != v70);
        }
      }
    }

    switch(v36)
    {
      case 0u:
        v75 = v4;
        v76 = v34;
        v31 = v332;
        do
        {
          v77 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v77 = (*v76 * v77 + ((*v76 * v77) >> 8) + 1) >> 8;
            }

            if (v77)
            {
              if (v77 == 255)
              {
                v26->i64[0] = 0;
                v26->i64[1] = 0;
              }

              else
              {
                *v26 = vmulq_n_f32(*v26, (v77 * -0.0039216) + 1.0);
              }
            }
          }

          ++v59;
          v76 += v34 != 0;
          ++v26;
          --v75;
        }

        while (v75);
        v34 = &v76[v326];
        goto LABEL_343;
      case 1u:
        v187 = *v59;
        v188 = v59 + 1;
        v189 = v26 - 1;
        v190 = v4;
        if (v34)
        {
          v159 = v334;
          do
          {
            if (v187)
            {
              v191 = ((*v34 * v187 + ((*v34 * v187) >> 8) + 1) >> 8);
              if (v191)
              {
                if (v191 == 255)
                {
                  v192 = *v58;
                }

                else
                {
                  v192 = vmlaq_n_f32(vmulq_n_f32(v189[1], 1.0 - (v191 * 0.0039216)), *v58, v191 * 0.0039216);
                }

                v189[1] = v192;
              }
            }

            v193 = *v188++;
            v187 = v193;
            ++v58;
            ++v34;
            ++v189;
            --v190;
          }

          while (v190);
          v34 += v326;
        }

        else
        {
          v159 = v334;
          do
          {
            if (v187)
            {
              if (v187 == 255)
              {
                v311 = *v58;
              }

              else
              {
                v311 = vmlaq_n_f32(vmulq_n_f32(v189[1], 1.0 - (v187 * 0.0039216)), *v58, v187 * 0.0039216);
              }

              v189[1] = v311;
            }

            v312 = *v188++;
            v187 = v312;
            ++v58;
            ++v189;
            --v190;
          }

          while (v190);
          v34 = 0;
        }

        v26 = &v189[v329 + 1];
        goto LABEL_403;
      case 2u:
        v155 = *v59;
        if (v34)
        {
          v156 = 0;
          v157 = v59 + 1;
          v158 = v4;
          v159 = v334;
          do
          {
            if (v155)
            {
              v160 = ((*v34 * v155 + ((*v34 * v155) >> 8) + 1) >> 8);
              if ((*v34 * v155 + ((*v34 * v155) >> 8) + 1) >> 8)
              {
                if (v160 == 255)
                {
                  v161 = &v58[v156];
                  v162 = v58[v156].f32[3];
                  if (v162 >= 1.0)
                  {
                    v168 = &v26[v156];
                    v168->i64[0] = v161->i64[0];
                    v168->i32[2] = v161->i32[2];
                    v168->f32[3] = v162;
                  }

                  else if (v162 > 0.0)
                  {
                    v26[v156] = vmlaq_n_f32(v58[v156], v26[v156], 1.0 - v162);
                  }
                }

                else
                {
                  v163 = v160 * 0.0039216;
                  v164 = &v58[v156];
                  v165 = v163 * v58[v156].f32[3];
                  if (v165 > 0.0)
                  {
                    *&v166 = v163 * v164[1].f32[0];
                    *v167.f32 = vmul_n_f32(*v164, v163);
                    v167.i64[1] = __PAIR64__(LODWORD(v165), v166);
                    v26[v156] = vmlaq_n_f32(v167, v26[v156], 1.0 - v165);
                  }
                }
              }
            }

            v169 = *v157++;
            v155 = v169;
            ++v34;
            ++v156;
            --v158;
          }

          while (v158);
          v170 = &v26[v156 - 1];
          v34 += v326;
          v31 = v332;
        }

        else
        {
          v302 = &v58->i64[1];
          v170 = v26 - 1;
          v303 = v59 + 1;
          v304 = v4;
          v159 = v334;
          v31 = v332;
          do
          {
            if (v155)
            {
              if (v155 == 255)
              {
                v305 = *(v302 + 1);
                if (v305 >= 1.0)
                {
                  v170[1].i64[0] = *(v302 - 1);
                  v170[1].i32[2] = *v302;
                  v170[1].f32[3] = v305;
                }

                else if (v305 > 0.0)
                {
                  v170[1] = vmlaq_n_f32(*(v302 - 1), v170[1], 1.0 - v305);
                }
              }

              else
              {
                v306 = v155 * 0.0039216;
                v307 = v306 * *(v302 + 1);
                if (v307 > 0.0)
                {
                  *&v308 = v306 * *v302;
                  *v309.f32 = vmul_n_f32(*(v302 - 1), v306);
                  v309.i64[1] = __PAIR64__(LODWORD(v307), v308);
                  v170[1] = vmlaq_n_f32(v309, v170[1], 1.0 - v307);
                }
              }
            }

            v310 = *v303++;
            v155 = v310;
            v302 += 2;
            ++v170;
            --v304;
          }

          while (v304);
          v34 = 0;
        }

        v26 = &v170[v329 + 1];
        goto LABEL_404;
      case 3u:
        v180 = v4;
        v98 = v34;
        do
        {
          v181 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v181 = (*v98 * v181 + ((*v98 * v181) >> 8) + 1) >> 8;
            }

            if (v181)
            {
              if (v181 == 255)
              {
                v182 = vmulq_n_f32(*v58, v26->f32[3]);
              }

              else
              {
                v182 = vmlaq_n_f32(vmulq_n_f32(*v26, 1.0 - (v181 * 0.0039216)), *v58, vmuls_lane_f32(v181 * 0.0039216, *v26, 3));
              }

              *v26 = v182;
            }
          }

          ++v59;
          ++v58;
          v98 += v34 != 0;
          ++v26;
          --v180;
        }

        while (v180);
        goto LABEL_387;
      case 4u:
        v119 = v4;
        v98 = v34;
        do
        {
          v120 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v120 = (*v98 * v120 + ((*v98 * v120) >> 8) + 1) >> 8;
            }

            if (v120)
            {
              if (v120 == 255)
              {
                v121 = vmulq_n_f32(*v58, 1.0 - v26->f32[3]);
              }

              else
              {
                v121 = vmlaq_n_f32(vmulq_n_f32(*v26, 1.0 - (v120 * 0.0039216)), *v58, (v120 * 0.0039216) * (1.0 - COERCE_FLOAT(HIDWORD(*v26))));
              }

              *v26 = v121;
            }
          }

          ++v59;
          ++v58;
          v98 += v34 != 0;
          ++v26;
          --v119;
        }

        while (v119);
        goto LABEL_387;
      case 5u:
        v210 = v4;
        v98 = v34;
        while (1)
        {
          v211 = *v59;
          if (*v59)
          {
            if (!v34)
            {
              goto LABEL_267;
            }

            v212 = *v98 * v211 + ((*v98 * v211) >> 8) + 1;
            if (v212 >= 0x100)
            {
              break;
            }
          }

LABEL_268:
          ++v59;
          ++v58;
          v98 += v34 != 0;
          ++v26;
          if (!--v210)
          {
            goto LABEL_387;
          }
        }

        v211 = v212 >> 8;
LABEL_267:
        v213 = vmulq_n_f32(*v58, v211 * 0.0039216);
        *v26 = vmlaq_laneq_f32(vmulq_n_f32(*v26, 1.0 - v213.f32[3]), v213, *v26, 3);
        goto LABEL_268;
      case 6u:
        v232 = &v58->f32[2];
        v233 = v4;
        v112 = v34;
        v31 = v332;
        while (1)
        {
          v234 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v235 = *v112 * v234 + ((*v112 * v234) >> 8) + 1;
              if (v235 < 0x100)
              {
                goto LABEL_308;
              }

              v234 = v235 >> 8;
            }

            v236 = v26->f32[3];
            v237 = 1.0 - v236;
            if ((1.0 - v236) >= 1.0)
            {
              v241 = v234 * 0.0039216;
              *v26->f32 = vmul_n_f32(*(v232 - 2), v241);
              v242 = v232[1];
              v26->f32[2] = v241 * *v232;
              v240 = v241 * v242;
              goto LABEL_307;
            }

            if (v237 > 0.0)
            {
              v238 = v237 * (v234 * 0.0039216);
              *v26->f32 = vmla_n_f32(*v26->f32, *(v232 - 2), v238);
              v239 = v232[1];
              v26->f32[2] = v26->f32[2] + (*v232 * v238);
              v240 = v236 + (v239 * v238);
LABEL_307:
              v26->f32[3] = v240;
            }
          }

LABEL_308:
          ++v59;
          v112 += v34 != 0;
          ++v26;
          v232 += 4;
          if (!--v233)
          {
            goto LABEL_342;
          }
        }

      case 7u:
        v183 = &v58->f32[3];
        v184 = v4;
        v112 = v34;
        v31 = v332;
        do
        {
          v185 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v185 = (*v112 * v185 + ((*v112 * v185) >> 8) + 1) >> 8;
            }

            if (v185)
            {
              if (v185 == 255)
              {
                v186 = vmulq_n_f32(*v26, *v183);
              }

              else
              {
                v186 = vmlaq_n_f32(vmulq_n_f32(*v26, 1.0 - (v185 * 0.0039216)), *v26, (v185 * 0.0039216) * *v183);
              }

              *v26 = v186;
            }
          }

          ++v59;
          v112 += v34 != 0;
          ++v26;
          v183 += 4;
          --v184;
        }

        while (v184);
        goto LABEL_342;
      case 8u:
        v256 = &v58->f32[3];
        v257 = v4;
        v112 = v34;
        v31 = v332;
        do
        {
          v258 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v258 = (*v112 * v258 + ((*v112 * v258) >> 8) + 1) >> 8;
            }

            if (v258)
            {
              if (v258 == 255)
              {
                v259 = vmulq_n_f32(*v26, 1.0 - *v256);
              }

              else
              {
                v259 = vmlaq_n_f32(vmulq_n_f32(*v26, 1.0 - (v258 * 0.0039216)), *v26, (v258 * 0.0039216) * (1.0 - *v256));
              }

              *v26 = v259;
            }
          }

          ++v59;
          v112 += v34 != 0;
          ++v26;
          v256 += 4;
          --v257;
        }

        while (v257);
        goto LABEL_342;
      case 9u:
        v131 = v4;
        v98 = v34;
        while (1)
        {
          v132 = *v59;
          if (*v59)
          {
            if (!v34)
            {
              goto LABEL_144;
            }

            v133 = *v98 * v132 + ((*v98 * v132) >> 8) + 1;
            if (v133 >= 0x100)
            {
              break;
            }
          }

LABEL_145:
          ++v59;
          ++v58;
          v98 += v34 != 0;
          ++v26;
          if (!--v131)
          {
            goto LABEL_387;
          }
        }

        v132 = v133 >> 8;
LABEL_144:
        v134 = v132 * 0.0039216;
        v135 = 1.0 - v134;
        v136 = vmulq_n_f32(*v58, v134);
        *v26 = vmlaq_n_f32(vmulq_n_f32(*v26, v135 + v136.f32[3]), v136, 1.0 - COERCE_FLOAT(HIDWORD(*v26)));
        goto LABEL_145;
      case 0xAu:
        v252 = v4;
        v98 = v34;
        while (1)
        {
          v253 = *v59;
          if (*v59)
          {
            if (!v34)
            {
              goto LABEL_329;
            }

            v254 = *v98 * v253 + ((*v98 * v253) >> 8) + 1;
            if (v254 >= 0x100)
            {
              break;
            }
          }

LABEL_330:
          ++v59;
          ++v58;
          v98 += v34 != 0;
          ++v26;
          if (!--v252)
          {
            goto LABEL_387;
          }
        }

        v253 = v254 >> 8;
LABEL_329:
        v255 = vmulq_n_f32(*v58, v253 * 0.0039216);
        *v26 = vmlaq_n_f32(vmulq_n_f32(*v26, 1.0 - v255.f32[3]), v255, 1.0 - COERCE_FLOAT(HIDWORD(*v26)));
        goto LABEL_330;
      case 0xBu:
        v110 = &v58->f32[2];
        v111 = v4;
        v112 = v34;
        v31 = v332;
        while (1)
        {
          v113 = *v59;
          if (*v59)
          {
            if (!v34)
            {
              goto LABEL_111;
            }

            v114 = *v112 * v113 + ((*v112 * v113) >> 8) + 1;
            if (v114 >= 0x100)
            {
              break;
            }
          }

LABEL_116:
          ++v59;
          v112 += v34 != 0;
          ++v26;
          v110 += 4;
          if (!--v111)
          {
            goto LABEL_342;
          }
        }

        v113 = v114 >> 8;
LABEL_111:
        v51.i32[0] = 1.0;
        v50.i32[0] = 1.0;
        if (v335)
        {
          v50.i32[0] = v26->i32[3];
        }

        *&v52 = v113 * 0.0039216;
        v115 = vmul_n_f32(*(v110 - 2), *&v52);
        v116 = *&v52 * *v110;
        *&v52 = *&v52 * v110[1];
        v117 = vsub_f32(vdup_lane_s32(*&v52, 0), v115);
        if ((*&v52 + v50.f32[0]) <= 1.0)
        {
          *v51.i32 = *&v52 + v50.f32[0];
        }

        v118 = (*&v52 - v116) + (v50.f32[0] - v26->f32[2]);
        *v50.f32 = vsub_f32(vdup_lane_s32(v51, 0), vadd_f32(v117, vsub_f32(vdup_lane_s32(*v50.f32, 0), *v26->f32)));
        v26->i64[0] = v50.i64[0];
        v26->f32[2] = *v51.i32 - v118;
        v26->i32[3] = v51.i32[0];
        goto LABEL_116;
      case 0xCu:
        v122 = &v58->f32[3];
        v123 = v4;
        v112 = v34;
        v31 = v332;
        while (1)
        {
          v124 = *v59;
          if (*v59)
          {
            if (!v34)
            {
              goto LABEL_134;
            }

            v125 = *v112 * v124 + ((*v112 * v124) >> 8) + 1;
            if (v125 >= 0x100)
            {
              break;
            }
          }

LABEL_137:
          ++v59;
          v112 += v34 != 0;
          ++v26;
          v122 += 4;
          if (!--v123)
          {
LABEL_342:
            v34 = &v112[v326];
LABEL_343:
            v26 += v329;
            v159 = v334;
            goto LABEL_404;
          }
        }

        v124 = v125 >> 8;
LABEL_134:
        v126 = v124 * 0.0039216;
        v127 = v126 * *(v122 - 1);
        v128 = v126 * *v122;
        *v26->f32 = vadd_f32(vmul_n_f32(*(v122 - 3), v126), *v26->f32);
        v129 = v128 + v26->f32[3];
        v130 = v127 + v26->f32[2];
        if (v129 > 1.0)
        {
          v129 = 1.0;
        }

        v26->f32[2] = v130;
        v26->f32[3] = v129;
        goto LABEL_137;
      case 0xDu:
        v330 = v41;
        v327 = v30;
        v223 = v4;
        v79 = v34;
        while (1)
        {
          v224 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v225 = *v79 * v224 + ((*v79 * v224) >> 8) + 1;
              if (v225 < 0x100)
              {
                goto LABEL_296;
              }

              v224 = v225 >> 8;
            }

            v226 = *v58;
            v227 = vmulq_n_f32(*v58, v224 * 0.0039216);
            v228 = v227.i32[3];
            if (*&v227.i32[3] > 0.0)
            {
              LODWORD(v55) = v26->i32[3];
              if (v335)
              {
                v229 = v26->f32[3];
                if (*&v55 <= 0.0)
                {
                  v26->i64[0] = v227.i64[0];
                  v26->i32[2] = v227.i32[2];
LABEL_295:
                  v26->i32[3] = v228;
                  goto LABEL_296;
                }
              }

              else
              {
                v229 = 1.0;
              }

              v226.i32[0] = v26->i32[1];
              LODWORD(v52) = v26->i32[2];
              v230 = vextq_s8(v227, v227, 4uLL);
              v230.i32[0] = v26->i32[3];
              v26->f32[0] = PDAmultiplyPDA(v26->f32[0], *v226.i64, v52, *v230.i64, v229, v55, *v227.i64, v57, *v227.i32, COERCE_DOUBLE(__PAIR64__(v227.u32[3], v230.u32[1])), *&v227.i32[3]);
              v26->i32[1] = v231;
              v26->i32[2] = LODWORD(v52);
              goto LABEL_295;
            }
          }

LABEL_296:
          ++v59;
          ++v58;
          v79 += v34 != 0;
          ++v26;
          if (!--v223)
          {
            goto LABEL_401;
          }
        }

      case 0xEu:
        v97 = v4;
        v98 = v34;
        while (1)
        {
          v99 = *v59;
          if (*v59)
          {
            if (!v34)
            {
              goto LABEL_99;
            }

            v100 = *v98 * v99 + ((*v98 * v99) >> 8) + 1;
            if (v100 >= 0x100)
            {
              break;
            }
          }

LABEL_104:
          ++v59;
          ++v58;
          v98 += v34 != 0;
          ++v26;
          if (!--v97)
          {
            goto LABEL_387;
          }
        }

        v99 = v100 >> 8;
LABEL_99:
        v101 = vmulq_n_f32(*v58, v99 * 0.0039216);
        if (v101.f32[3] > 0.0)
        {
          v102 = 1.0;
          if (!v335 || (v102 = v26->f32[3], v102 > 0.0))
          {
            v103.i64[0] = v26->i64[0];
            __asm { FMOV            V6.2S, #1.0 }

            *v109.f32 = vsub_f32(_D6, *v26->f32);
            v109.i64[1] = __PAIR64__(-v102, 1.0 - v26->f32[2]);
            v103.i32[2] = v26->i32[2];
            v103.f32[3] = v101.f32[3] + v102;
            v101 = vmlaq_f32(v103, v101, v109);
          }

          *v26 = v101;
        }

        goto LABEL_104;
      case 0xFu:
        v330 = v41;
        v327 = v30;
        v171 = v4;
        v79 = v34;
        while (1)
        {
          v172 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v173 = *v79 * v172 + ((*v79 * v172) >> 8) + 1;
              if (v173 < 0x100)
              {
                goto LABEL_200;
              }

              v172 = v173 >> 8;
            }

            v174 = *v58;
            v175 = vmulq_n_f32(*v58, v172 * 0.0039216);
            v176 = v175.i32[3];
            if (*&v175.i32[3] > 0.0)
            {
              LODWORD(v55) = v26->i32[3];
              if (v335)
              {
                v177 = v26->f32[3];
                if (*&v55 <= 0.0)
                {
                  v26->i64[0] = v175.i64[0];
                  v26->i32[2] = v175.i32[2];
LABEL_199:
                  v26->i32[3] = v176;
                  goto LABEL_200;
                }
              }

              else
              {
                v177 = 1.0;
              }

              v174.i32[0] = v26->i32[1];
              LODWORD(v52) = v26->i32[2];
              v178 = vextq_s8(v175, v175, 4uLL);
              v178.i32[0] = v26->i32[3];
              v26->f32[0] = PDAoverlayPDA(v26->f32[0], *v174.i64, v52, *v178.i64, v177, v55, *v175.i64, v57, *v175.i32, COERCE_DOUBLE(__PAIR64__(v175.u32[3], v178.u32[1])), *&v175.i32[3]);
              v26->i32[1] = v179;
              v26->i32[2] = LODWORD(v52);
              goto LABEL_199;
            }
          }

LABEL_200:
          ++v59;
          ++v58;
          v79 += v34 != 0;
          ++v26;
          if (!--v171)
          {
            goto LABEL_401;
          }
        }

      case 0x10u:
        v330 = v41;
        v327 = v30;
        v88 = v4;
        v79 = v34;
        while (1)
        {
          v89 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v90 = *v79 * v89 + ((*v79 * v89) >> 8) + 1;
              if (v90 < 0x100)
              {
                goto LABEL_92;
              }

              v89 = v90 >> 8;
            }

            v91 = *v58;
            v92 = vmulq_n_f32(*v58, v89 * 0.0039216);
            v93 = v92.i32[3];
            if (*&v92.i32[3] > 0.0)
            {
              LODWORD(v55) = v26->i32[3];
              if (v335)
              {
                v94 = v26->f32[3];
                if (*&v55 <= 0.0)
                {
                  v26->i64[0] = v92.i64[0];
                  v26->i32[2] = v92.i32[2];
LABEL_91:
                  v26->i32[3] = v93;
                  goto LABEL_92;
                }
              }

              else
              {
                v94 = 1.0;
              }

              v91.i32[0] = v26->i32[1];
              LODWORD(v52) = v26->i32[2];
              v95 = vextq_s8(v92, v92, 4uLL);
              v95.i32[0] = v26->i32[3];
              v26->f32[0] = PDAdarkenPDA(v26->f32[0], *v91.i64, v52, *v95.i64, v94, v55, *v92.i64, v57, *v92.i32, COERCE_DOUBLE(__PAIR64__(v92.u32[3], v95.u32[1])), *&v92.i32[3]);
              v26->i32[1] = v96;
              v26->i32[2] = LODWORD(v52);
              goto LABEL_91;
            }
          }

LABEL_92:
          ++v59;
          ++v58;
          v79 += v34 != 0;
          ++v26;
          if (!--v88)
          {
            goto LABEL_401;
          }
        }

      case 0x11u:
        v330 = v41;
        v327 = v30;
        v194 = v4;
        v79 = v34;
        while (1)
        {
          v195 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v196 = *v79 * v195 + ((*v79 * v195) >> 8) + 1;
              if (v196 < 0x100)
              {
                goto LABEL_246;
              }

              v195 = v196 >> 8;
            }

            v197 = *v58;
            v198 = vmulq_n_f32(*v58, v195 * 0.0039216);
            v199 = v198.i32[3];
            if (*&v198.i32[3] > 0.0)
            {
              LODWORD(v55) = v26->i32[3];
              if (v335)
              {
                v200 = v26->f32[3];
                if (*&v55 <= 0.0)
                {
                  v26->i64[0] = v198.i64[0];
                  v26->i32[2] = v198.i32[2];
LABEL_245:
                  v26->i32[3] = v199;
                  goto LABEL_246;
                }
              }

              else
              {
                v200 = 1.0;
              }

              v197.i32[0] = v26->i32[1];
              LODWORD(v52) = v26->i32[2];
              v201 = vextq_s8(v198, v198, 4uLL);
              v201.i32[0] = v26->i32[3];
              v26->f32[0] = PDAlightenPDA(v26->f32[0], *v197.i64, v52, *v201.i64, v200, v55, *v198.i64, v57, *v198.i32, COERCE_DOUBLE(__PAIR64__(v198.u32[3], v201.u32[1])), *&v198.i32[3]);
              v26->i32[1] = v202;
              v26->i32[2] = LODWORD(v52);
              goto LABEL_245;
            }
          }

LABEL_246:
          ++v59;
          ++v58;
          v79 += v34 != 0;
          ++v26;
          if (!--v194)
          {
            goto LABEL_401;
          }
        }

      case 0x12u:
        v330 = v41;
        v327 = v30;
        v243 = v4;
        v79 = v34;
        while (1)
        {
          v244 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v245 = *v79 * v244 + ((*v79 * v244) >> 8) + 1;
              if (v245 < 0x100)
              {
                goto LABEL_322;
              }

              v244 = v245 >> 8;
            }

            v246 = *v58;
            v247 = vmulq_n_f32(*v58, v244 * 0.0039216);
            v248 = v247.i32[3];
            if (*&v247.i32[3] > 0.0)
            {
              LODWORD(v55) = v26->i32[3];
              if (v335)
              {
                v249 = v26->f32[3];
                if (*&v55 <= 0.0)
                {
                  v26->i64[0] = v247.i64[0];
                  v26->i32[2] = v247.i32[2];
LABEL_321:
                  v26->i32[3] = v248;
                  goto LABEL_322;
                }
              }

              else
              {
                v249 = 1.0;
              }

              v246.i32[0] = v26->i32[1];
              LODWORD(v52) = v26->i32[2];
              v250 = vextq_s8(v247, v247, 4uLL);
              v250.i32[0] = v26->i32[3];
              v26->f32[0] = PDAcolordodgePDA(v26->f32[0], *v246.i64, v52, *v250.i64, v249, v55, *v247.i64, v57, *v247.i32, COERCE_DOUBLE(__PAIR64__(v247.u32[3], v250.u32[1])), *&v247.i32[3]);
              v26->i32[1] = v251;
              v26->i32[2] = LODWORD(v52);
              goto LABEL_321;
            }
          }

LABEL_322:
          ++v59;
          ++v58;
          v79 += v34 != 0;
          ++v26;
          if (!--v243)
          {
            goto LABEL_401;
          }
        }

      case 0x13u:
        v330 = v41;
        v327 = v30;
        v277 = v4;
        v79 = v34;
        while (1)
        {
          v278 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v279 = *v79 * v278 + ((*v79 * v278) >> 8) + 1;
              if (v279 < 0x100)
              {
                goto LABEL_372;
              }

              v278 = v279 >> 8;
            }

            v280 = *v58;
            v281 = vmulq_n_f32(*v58, v278 * 0.0039216);
            v282 = v281.i32[3];
            if (*&v281.i32[3] > 0.0)
            {
              LODWORD(v55) = v26->i32[3];
              if (v335)
              {
                v283 = v26->f32[3];
                if (*&v55 <= 0.0)
                {
                  v26->i64[0] = v281.i64[0];
                  v26->i32[2] = v281.i32[2];
LABEL_371:
                  v26->i32[3] = v282;
                  goto LABEL_372;
                }
              }

              else
              {
                v283 = 1.0;
              }

              v280.i32[0] = v26->i32[1];
              LODWORD(v52) = v26->i32[2];
              v284 = vextq_s8(v281, v281, 4uLL);
              v284.i32[0] = v26->i32[3];
              v26->f32[0] = PDAcolorburnPDA(v26->f32[0], *v280.i64, v52, *v284.i64, v283, v55, *v281.i64, v57, *v281.i32, COERCE_DOUBLE(__PAIR64__(v281.u32[3], v284.u32[1])), *&v281.i32[3]);
              v26->i32[1] = v285;
              v26->i32[2] = LODWORD(v52);
              goto LABEL_371;
            }
          }

LABEL_372:
          ++v59;
          ++v58;
          v79 += v34 != 0;
          ++v26;
          if (!--v277)
          {
            goto LABEL_401;
          }
        }

      case 0x14u:
        v330 = v41;
        v327 = v30;
        v203 = v4;
        v79 = v34;
        while (1)
        {
          v204 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v205 = *v79 * v204 + ((*v79 * v204) >> 8) + 1;
              if (v205 < 0x100)
              {
                goto LABEL_260;
              }

              v204 = v205 >> 8;
            }

            v206 = vmulq_n_f32(*v58, v204 * 0.0039216);
            v207 = v206.i32[3];
            if (*&v206.i32[3] > 0.0)
            {
              LODWORD(v55) = v26->i32[3];
              if (v335)
              {
                LODWORD(v54) = v26->i32[3];
                if (*&v55 <= 0.0)
                {
                  v26->i64[0] = v206.i64[0];
                  v26->i32[2] = v206.i32[2];
LABEL_259:
                  v26->i32[3] = v207;
                  goto LABEL_260;
                }
              }

              else
              {
                LODWORD(v54) = 1.0;
              }

              LODWORD(v52) = v26->i32[2];
              DWORD2(v318) = v206.i32[3];
              v208 = vextq_s8(v206, v206, 4uLL).u64[0];
              *&v318 = v208;
              v208.i32[0] = v26->i32[3];
              v26->f32[0] = PDAsoftlightPDA(v26->f32[0], v26->f32[1], v52, v208, v54, v55, *v206.i64, v57, v42, v43, v44, v45, v46, v47, v48, v49, *v206.i32, v318, *(&v318 + 4), *&v206.i32[3]);
              v26->i32[1] = v209;
              v26->i32[2] = LODWORD(v52);
              goto LABEL_259;
            }
          }

LABEL_260:
          ++v59;
          ++v58;
          v79 += v34 != 0;
          ++v26;
          if (!--v203)
          {
            goto LABEL_401;
          }
        }

      case 0x15u:
        v330 = v41;
        v327 = v30;
        v214 = v4;
        v79 = v34;
        while (1)
        {
          v215 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v216 = *v79 * v215 + ((*v79 * v215) >> 8) + 1;
              if (v216 < 0x100)
              {
                goto LABEL_282;
              }

              v215 = v216 >> 8;
            }

            v217 = *v58;
            v218 = vmulq_n_f32(*v58, v215 * 0.0039216);
            v219 = v218.i32[3];
            if (*&v218.i32[3] > 0.0)
            {
              LODWORD(v55) = v26->i32[3];
              if (v335)
              {
                v220 = v26->f32[3];
                if (*&v55 <= 0.0)
                {
                  v26->i64[0] = v218.i64[0];
                  v26->i32[2] = v218.i32[2];
LABEL_281:
                  v26->i32[3] = v219;
                  goto LABEL_282;
                }
              }

              else
              {
                v220 = 1.0;
              }

              v217.i32[0] = v26->i32[1];
              LODWORD(v52) = v26->i32[2];
              v221 = vextq_s8(v218, v218, 4uLL);
              v221.i32[0] = v26->i32[3];
              v26->f32[0] = PDAhardlightPDA(v26->f32[0], *v217.i64, v52, *v221.i64, v220, v55, *v218.i64, v57, *v218.i32, COERCE_DOUBLE(__PAIR64__(v218.u32[3], v221.u32[1])), *&v218.i32[3]);
              v26->i32[1] = v222;
              v26->i32[2] = LODWORD(v52);
              goto LABEL_281;
            }
          }

LABEL_282:
          ++v59;
          ++v58;
          v79 += v34 != 0;
          ++v26;
          if (!--v214)
          {
            goto LABEL_401;
          }
        }

      case 0x16u:
        v260 = v4;
        v98 = v34;
        while (1)
        {
          v261 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v262 = *v98 * v261 + ((*v98 * v261) >> 8) + 1;
              if (v262 < 0x100)
              {
                goto LABEL_358;
              }

              v261 = v262 >> 8;
            }

            v263 = vmulq_n_f32(*v58, v261 * 0.0039216);
            v264 = v263.f32[3];
            if (v263.f32[3] > 0.0)
            {
              if (v335)
              {
                v265 = v26->f32[3];
                if (v265 <= 0.0)
                {
                  v26->i64[0] = v263.i64[0];
                  v26->i32[2] = v263.i32[2];
LABEL_357:
                  v26->f32[3] = v264;
                  goto LABEL_358;
                }
              }

              else
              {
                v265 = 1.0;
              }

              v266 = v26->f32[2];
              v267 = vmul_laneq_f32(*v26->f32, v263, 3);
              v268 = vmul_n_f32(*v263.f32, v265);
              v269 = vsub_f32(vadd_f32(*v26->f32, *v263.f32), v267);
              v270 = vsub_f32(v267, v268);
              v271 = vadd_f32(vsub_f32(v269, v268), vbsl_s8(vcltz_f32(v270), vneg_f32(v270), v270));
              v272 = v266 + v263.f32[2];
              v273 = v266 * v263.f32[3];
              v274 = vmuls_lane_f32(v265, v263, 2);
              v275 = v272 - v273;
              v276 = v273 - v274;
              v263.f32[0] = v275 - v274;
              if (v276 < 0.0)
              {
                v276 = -v276;
              }

              v264 = (v265 + v263.f32[3]) - (v265 * v263.f32[3]);
              *v26->f32 = v271;
              v26->f32[2] = v263.f32[0] + v276;
              goto LABEL_357;
            }
          }

LABEL_358:
          ++v59;
          ++v58;
          v98 += v34 != 0;
          ++v26;
          if (!--v260)
          {
            goto LABEL_387;
          }
        }

      case 0x17u:
        v286 = v4;
        v98 = v34;
        while (1)
        {
          v287 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v288 = *v98 * v287 + ((*v98 * v287) >> 8) + 1;
              if (v288 < 0x100)
              {
                goto LABEL_386;
              }

              v287 = v288 >> 8;
            }

            v289 = vmulq_n_f32(*v58, v287 * 0.0039216);
            if (v289.f32[3] > 0.0)
            {
              if (v335)
              {
                v290 = v26->f32[3];
                if (v290 <= 0.0)
                {
                  goto LABEL_385;
                }
              }

              else
              {
                v290 = 1.0;
              }

              v291.i64[0] = v26->i64[0];
              *v292.f32 = vmul_f32(*v289.f32, vneg_f32(*v26->f32));
              *&v293 = -v290;
              v291.i32[2] = v26->i32[2];
              v291.f32[3] = v290;
              v294.i64[0] = 0x4000000040000000;
              v294.i32[2] = 0x40000000;
              v294.i32[3] = v289.i32[3];
              v292.i64[1] = __PAIR64__(v293, COERCE_UNSIGNED_INT(vmuls_lane_f32(-v291.f32[2], v289, 2)));
              v289 = vmlaq_f32(vaddq_f32(v289, v291), v294, v292);
LABEL_385:
              *v26 = v289;
            }
          }

LABEL_386:
          ++v59;
          ++v58;
          v98 += v34 != 0;
          ++v26;
          if (!--v286)
          {
LABEL_387:
            v34 = &v98[v326];
            v26 += v329;
            goto LABEL_402;
          }
        }

      case 0x18u:
        v330 = v41;
        v327 = v30;
        v146 = v4;
        v79 = v34;
        while (1)
        {
          v147 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v148 = *v79 * v147 + ((*v79 * v147) >> 8) + 1;
              if (v148 < 0x100)
              {
                goto LABEL_173;
              }

              v147 = v148 >> 8;
            }

            v149 = vmulq_n_f32(*v58, v147 * 0.0039216);
            v150 = v149.i32[3];
            if (*&v149.i32[3] > 0.0)
            {
              LODWORD(v55) = v26->i32[3];
              if (v335)
              {
                v151 = v26->f32[3];
                if (*&v55 <= 0.0)
                {
                  v26->i64[0] = v149.i64[0];
                  v26->i32[2] = v149.i32[2];
LABEL_172:
                  v26->i32[3] = v150;
                  goto LABEL_173;
                }
              }

              else
              {
                v151 = 1.0;
              }

              *&v152 = vextq_s8(v149, v149, 4uLL).u64[0];
              v317 = v152;
              LODWORD(v152) = v26->i32[3];
              v26->f32[0] = PDAhuePDA(v26->f32[0], v26->f32[1], v26->f32[2], v152, v151, v55, *v149.i64, v57, *v149.i32, *&v317, *(&v317 + 1), *&v149.i32[3], *&v149.i32[3]);
              v26->i32[1] = v153;
              v26->i32[2] = v154;
              goto LABEL_172;
            }
          }

LABEL_173:
          ++v59;
          ++v58;
          v79 += v34 != 0;
          ++v26;
          if (!--v146)
          {
            goto LABEL_401;
          }
        }

      case 0x19u:
        v330 = v41;
        v327 = v30;
        v137 = v4;
        v79 = v34;
        while (1)
        {
          v138 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v139 = *v79 * v138 + ((*v79 * v138) >> 8) + 1;
              if (v139 < 0x100)
              {
                goto LABEL_159;
              }

              v138 = v139 >> 8;
            }

            v140 = vmulq_n_f32(*v58, v138 * 0.0039216);
            v141 = v140.i32[3];
            if (*&v140.i32[3] > 0.0)
            {
              LODWORD(v55) = v26->i32[3];
              if (v335)
              {
                v142 = v26->f32[3];
                if (*&v55 <= 0.0)
                {
                  v26->i64[0] = v140.i64[0];
                  v26->i32[2] = v140.i32[2];
LABEL_158:
                  v26->i32[3] = v141;
                  goto LABEL_159;
                }
              }

              else
              {
                v142 = 1.0;
              }

              *&v143 = vextq_s8(v140, v140, 4uLL).u64[0];
              v316 = v143;
              LODWORD(v143) = v26->i32[3];
              v26->f32[0] = PDAsaturationPDA(v26->f32[0], v26->f32[1], v26->f32[2], v143, v142, v55, *v140.i64, v57, *v140.i32, *&v316, *(&v316 + 1), *&v140.i32[3], *&v140.i32[3]);
              v26->i32[1] = v144;
              v26->i32[2] = v145;
              goto LABEL_158;
            }
          }

LABEL_159:
          ++v59;
          ++v58;
          v79 += v34 != 0;
          ++v26;
          if (!--v137)
          {
            goto LABEL_401;
          }
        }

      case 0x1Au:
        v330 = v41;
        v327 = v30;
        v295 = v4;
        v79 = v34;
        while (1)
        {
          v296 = *v59;
          if (*v59)
          {
            if (v34)
            {
              v297 = *v79 * v296 + ((*v79 * v296) >> 8) + 1;
              if (v297 < 0x100)
              {
                goto LABEL_400;
              }

              v296 = v297 >> 8;
            }

            v298 = vmulq_n_f32(*v58, v296 * 0.0039216);
            LODWORD(v53) = v298.i32[3];
            if (v298.f32[3] > 0.0)
            {
              if (v335)
              {
                LODWORD(v55) = v26->i32[3];
                if (*&v55 <= 0.0)
                {
                  v26->i64[0] = v298.i64[0];
                  v26->i32[2] = v298.i32[2];
LABEL_399:
                  v26->i32[3] = LODWORD(v53);
                  goto LABEL_400;
                }
              }

              else
              {
                LODWORD(v55) = 1.0;
              }

              LODWORD(v56) = v26->i32[2];
              v26->f32[0] = PDAluminosityPDA(v298.f32[0], v298.f32[1], v298.f32[2], v53, v298.f32[3], v55, v56, v57, COERCE_FLOAT(v26->i64[0]), COERCE_FLOAT(HIDWORD(v26->i64[0])), *&v56, v26->f32[3], *&v55);
              v26->i32[1] = v299;
              v26->i32[2] = v300;
              goto LABEL_399;
            }
          }

LABEL_400:
          ++v59;
          ++v58;
          v79 += v34 != 0;
          ++v26;
          if (!--v295)
          {
            goto LABEL_401;
          }
        }

      case 0x1Bu:
        v330 = v41;
        v327 = v30;
        v78 = v4;
        v79 = v34;
        break;
      default:
        goto LABEL_402;
    }

    do
    {
      v80 = *v59;
      if (!*v59)
      {
        goto LABEL_78;
      }

      if (v34)
      {
        v81 = *v79 * v80 + ((*v79 * v80) >> 8) + 1;
        if (v81 < 0x100)
        {
          goto LABEL_78;
        }

        v80 = v81 >> 8;
      }

      v82 = vmulq_n_f32(*v58, v80 * 0.0039216);
      v83 = v82.i32[3];
      if (*&v82.i32[3] > 0.0)
      {
        LODWORD(v55) = v26->i32[3];
        if (v335)
        {
          v84 = v26->f32[3];
          if (*&v55 <= 0.0)
          {
            v26->i64[0] = v82.i64[0];
            v26->i32[2] = v82.i32[2];
LABEL_77:
            v26->i32[3] = v83;
            goto LABEL_78;
          }
        }

        else
        {
          v84 = 1.0;
        }

        *&v85 = vextq_s8(v82, v82, 4uLL).u64[0];
        v315 = v85;
        LODWORD(v85) = v26->i32[3];
        v26->f32[0] = PDAluminosityPDA(v26->f32[0], v26->f32[1], v26->f32[2], v85, v84, v55, *v82.i64, v57, *v82.i32, *&v315, *(&v315 + 1), *&v82.i32[3], *&v82.i32[3]);
        v26->i32[1] = v86;
        v26->i32[2] = v87;
        goto LABEL_77;
      }

LABEL_78:
      ++v59;
      ++v58;
      v79 += v34 != 0;
      ++v26;
      --v78;
    }

    while (v78);
LABEL_401:
    v34 = &v79[v326];
    v41 = v330;
    v26 += v329;
    v36 = v325;
    v30 = v327;
LABEL_402:
    v159 = v334;
LABEL_403:
    v31 = v332;
LABEL_404:
    v301 = v159 - 1;
    if (v301)
    {
      v334 = v301;
      v40 = 0;
      LODWORD(v333) = v333 + 1;
      v30 += *(a2 + 128);
      v41 += *(a2 + 136);
      if (v31)
      {
        v330 = v41;
        v35 = v321;
        v32 = v333;
        goto LABEL_433;
      }

      continue;
    }

    break;
  }

  if (v31)
  {
    goto LABEL_429;
  }

LABEL_430:
  if (v322)
  {
    free(v322);
  }
}

uint64_t RGBAf_image_mark_rgb32(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 2);
  v7 = a2[1];
  v91 = *a2;
  v8 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  v10 = *(a2 + 2);
  v11 = *(a2 + 3) - a5;
  v13 = *(a2 + 15);
  v12 = *(a2 + 16);
  v14 = *(a2 + 7);
  v15 = *(a2 + 9);
  v16 = *(a2 + 5) + v15 * a4;
  v17 = (v8 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * (*(a1 + 256) - 1)) >> 3));
  if (*(a1 + 176))
  {
    v90 = *(a2 + 11);
    v18 = *(a2 + 13);
    v89 = v12 + 16 * a3 + 8;
    do
    {
      if (((v18 - v16) | (v16 - v90)) < 0)
      {
        v21 = 0;
        v20 = 0;
      }

      else
      {
        v19 = ((v16 & ~(-1 << v14)) >> (v14 - 4)) & 0xF;
        if (v19 - 7 >= 9)
        {
          v20 = -v13;
        }

        else
        {
          v20 = v13;
        }

        v21 = weights_21890[v19] & 0xF;
      }

      result = v16 >> v14;
      v23 = v8 + (v16 >> v14) * v13;
      if (LODWORD(v91) == 1)
      {
        if (a5 >= 1)
        {
          v24 = v89;
          v25 = a5;
          do
          {
            v26 = *(v24 - 1);
            v27 = *v24;
            v28 = &v23[v26];
            if (v17 >= &v23[v26])
            {
              v29 = &v23[v26];
            }

            else
            {
              v29 = v17;
            }

            if (v8 > v29)
            {
              v29 = v8;
            }

            v30 = *v29;
            if ((v27 & 0xF) != 0)
            {
              v31 = &v28[v27 >> 4];
              if (v17 < v31)
              {
                v31 = v17;
              }

              if (v8 > v31)
              {
                v31 = v8;
              }

              v32 = *v31;
              if (v21)
              {
                v33 = &v28[v20];
                if (v17 >= v33)
                {
                  v34 = v33;
                }

                else
                {
                  v34 = v17;
                }

                if (v8 > v34)
                {
                  v34 = v8;
                }

                v35 = *v34;
                v36 = (v33 + (v27 >> 4));
                if (v17 < v36)
                {
                  v36 = v17;
                }

                if (v8 > v36)
                {
                  v36 = v8;
                }

                v37 = BLEND8_21892[v21];
                v30 = v30 - ((v37 & v30) >> v21) + ((v37 & v35) >> v21);
                v32 = v32 - ((v37 & v32) >> v21) + ((v37 & *v36) >> v21);
              }

              v30 = v30 - ((BLEND8_21892[*v24 & 0xF] & v30) >> (*v24 & 0xF)) + ((BLEND8_21892[*v24 & 0xF] & v32) >> (*v24 & 0xF));
            }

            else if (v21)
            {
              v38 = &v28[v20];
              if (v17 < &v28[v20])
              {
                v38 = v17;
              }

              if (v8 > v38)
              {
                v38 = v8;
              }

              v30 = v30 - ((BLEND8_21892[v21] & v30) >> v21) + ((BLEND8_21892[v21] & *v38) >> v21);
            }

            v39 = __ROL4__(v30, v7);
            v40 = *&_blt_float[HIBYTE(v39)];
            result = BYTE1(v39);
            if (v6 >= 1.0)
            {
              v41 = *&_blt_float[BYTE2(v39)];
              v42 = *&_blt_float[BYTE1(v39)];
              v43 = *&_blt_float[(v39 | v9)];
            }

            else
            {
              v40 = v6 * v40;
              v41 = v6 * *&_blt_float[BYTE2(v39)];
              v42 = v6 * *&_blt_float[BYTE1(v39)];
              v43 = v6 * *&_blt_float[(v39 | v9)];
            }

            v24 += 2;
            *v10 = v40;
            v10[1] = v41;
            v10[2] = v42;
            v10[3] = v43;
            v10 += 4;
            --v25;
          }

          while (v25);
        }
      }

      else if (a5 >= 1)
      {
        v44 = v89;
        v45 = a5;
        do
        {
          v47 = *(v44 - 1);
          v46 = *v44;
          v48 = &v23[v47];
          if (v17 >= &v23[v47])
          {
            v49 = &v23[v47];
          }

          else
          {
            v49 = v17;
          }

          if (v8 > v49)
          {
            v49 = v8;
          }

          v50 = *v49;
          if ((v46 & 0xF) != 0)
          {
            v51 = &v48[v46 >> 4];
            if (v17 < v51)
            {
              v51 = v17;
            }

            if (v8 > v51)
            {
              v51 = v8;
            }

            v52 = *v51;
            if (v21)
            {
              if (v17 >= &v48[v20])
              {
                v53 = &v48[v20];
              }

              else
              {
                v53 = v17;
              }

              if (v8 > v53)
              {
                v53 = v8;
              }

              v54 = *v53;
              v55 = &v48[v20 + (v46 >> 4)];
              if (v17 < v55)
              {
                v55 = v17;
              }

              if (v8 > v55)
              {
                v55 = v8;
              }

              v56 = BLEND8_21892[v21];
              v50 = v50 - ((v56 & v50) >> v21) + ((v56 & v54) >> v21);
              v52 = v52 - ((v56 & v52) >> v21) + ((v56 & *v55) >> v21);
            }

            v50 = v50 - ((BLEND8_21892[*v44 & 0xF] & v50) >> (*v44 & 0xF)) + ((BLEND8_21892[*v44 & 0xF] & v52) >> (*v44 & 0xF));
          }

          else if (v21)
          {
            v57 = &v48[v20];
            if (v17 < &v48[v20])
            {
              v57 = v17;
            }

            if (v8 > v57)
            {
              v57 = v8;
            }

            v50 = v50 - ((BLEND8_21892[v21] & v50) >> v21) + ((BLEND8_21892[v21] & *v57) >> v21);
          }

          v58 = __ROL4__(v50, v7);
          v59 = *&_blt_float[HIBYTE(v58)];
          result = BYTE1(v58);
          if (v6 >= 1.0)
          {
            v60 = *&_blt_float[BYTE2(v58)];
            v61 = *&_blt_float[BYTE1(v58)];
            v62 = *&_blt_float[(v58 | v9)];
          }

          else
          {
            v59 = v6 * v59;
            v60 = v6 * *&_blt_float[BYTE2(v58)];
            v61 = v6 * *&_blt_float[BYTE1(v58)];
            v62 = v6 * *&_blt_float[(v58 | v9)];
          }

          if (v62 >= 1.0)
          {
            *v10 = v59;
            v10[1] = v60;
            v10[2] = v61;
            v10[3] = v62;
          }

          else if (v62 > 0.0)
          {
            v63 = v10[1];
            *v10 = v59 + (*v10 * (1.0 - v62));
            v10[1] = v60 + (v63 * (1.0 - v62));
            v64 = v61 + (v10[2] * (1.0 - v62));
            v65 = v62 + (v10[3] * (1.0 - v62));
            v10[2] = v64;
            v10[3] = v65;
          }

          v44 += 2;
          v10 += 4;
          --v45;
        }

        while (v45);
      }

      v10 += 4 * v11;
      v16 += v15;
      --a6;
    }

    while (a6);
  }

  else
  {
    v66 = (v12 + 16 * a3);
    result = 32;
    do
    {
      v67 = v8 + (v16 >> v14) * v13;
      if (LODWORD(v91) == 1)
      {
        if (a5 >= 1)
        {
          v68 = v66;
          v69 = a5;
          do
          {
            v70 = *v68;
            v68 += 2;
            v71 = &v67[v70];
            if (v17 < &v67[v70])
            {
              v71 = v17;
            }

            if (v8 > v71)
            {
              v71 = v8;
            }

            v72 = __ROL4__(*v71, v7);
            v73 = *&_blt_float[HIBYTE(v72)];
            result = BYTE1(v72);
            if (v6 >= 1.0)
            {
              v74 = *&_blt_float[BYTE2(v72)];
              v75 = *&_blt_float[BYTE1(v72)];
              v76 = *&_blt_float[(v72 | v9)];
            }

            else
            {
              v73 = v6 * v73;
              v74 = v6 * *&_blt_float[BYTE2(v72)];
              v75 = v6 * *&_blt_float[BYTE1(v72)];
              v76 = v6 * *&_blt_float[(v72 | v9)];
            }

            *v10 = v73;
            v10[1] = v74;
            v10[2] = v75;
            v10[3] = v76;
            v10 += 4;
            --v69;
          }

          while (v69);
        }
      }

      else
      {
        v77 = v66;
        v78 = a5;
        if (a5 >= 1)
        {
          do
          {
            v79 = *v77;
            v77 += 2;
            v80 = &v67[v79];
            if (v17 < &v67[v79])
            {
              v80 = v17;
            }

            if (v8 > v80)
            {
              v80 = v8;
            }

            v81 = __ROL4__(*v80, v7);
            v82 = *&_blt_float[HIBYTE(v81)];
            result = BYTE1(v81);
            if (v6 >= 1.0)
            {
              v83 = *&_blt_float[BYTE2(v81)];
              v84 = *&_blt_float[BYTE1(v81)];
              v85 = *&_blt_float[(v81 | v9)];
            }

            else
            {
              v82 = v6 * v82;
              v83 = v6 * *&_blt_float[BYTE2(v81)];
              v84 = v6 * *&_blt_float[BYTE1(v81)];
              v85 = v6 * *&_blt_float[(v81 | v9)];
            }

            if (v85 >= 1.0)
            {
              *v10 = v82;
              v10[1] = v83;
              v10[2] = v84;
              v10[3] = v85;
            }

            else if (v85 > 0.0)
            {
              v86 = v10[1];
              *v10 = v82 + (*v10 * (1.0 - v85));
              v10[1] = v83 + (v86 * (1.0 - v85));
              v87 = v84 + (v10[2] * (1.0 - v85));
              v88 = v85 + (v10[3] * (1.0 - v85));
              v10[2] = v87;
              v10[3] = v88;
            }

            v10 += 4;
            --v78;
          }

          while (v78);
        }
      }

      v10 += 4 * v11;
      v16 += v15;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t RGBAf_image_mark_RGB32(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 2);
  v7 = a2[1];
  v91 = *a2;
  v8 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  v10 = *(a2 + 2);
  v11 = *(a2 + 3) - a5;
  v13 = *(a2 + 15);
  v12 = *(a2 + 16);
  v14 = *(a2 + 7);
  v15 = *(a2 + 9);
  v16 = *(a2 + 5) + v15 * a4;
  v17 = (v8 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * (*(a1 + 256) - 1)) >> 3));
  if (*(a1 + 176))
  {
    v90 = *(a2 + 11);
    v18 = *(a2 + 13);
    v89 = v12 + 16 * a3 + 8;
    do
    {
      if (((v18 - v16) | (v16 - v90)) < 0)
      {
        v21 = 0;
        v20 = 0;
      }

      else
      {
        v19 = ((v16 & ~(-1 << v14)) >> (v14 - 4)) & 0xF;
        if (v19 - 7 >= 9)
        {
          v20 = -v13;
        }

        else
        {
          v20 = v13;
        }

        v21 = weights_21890[v19] & 0xF;
      }

      result = v16 >> v14;
      v23 = v8 + (v16 >> v14) * v13;
      if (LODWORD(v91) == 1)
      {
        if (a5 >= 1)
        {
          v24 = v89;
          v25 = a5;
          do
          {
            v26 = *(v24 - 1);
            v27 = *v24;
            v28 = &v23[v26];
            if (v17 >= &v23[v26])
            {
              v29 = &v23[v26];
            }

            else
            {
              v29 = v17;
            }

            if (v8 > v29)
            {
              v29 = v8;
            }

            v30 = bswap32(*v29);
            if ((v27 & 0xF) != 0)
            {
              v31 = &v28[v27 >> 4];
              if (v17 < v31)
              {
                v31 = v17;
              }

              if (v8 > v31)
              {
                v31 = v8;
              }

              v32 = bswap32(*v31);
              if (v21)
              {
                v33 = &v28[v20];
                if (v17 >= v33)
                {
                  v34 = v33;
                }

                else
                {
                  v34 = v17;
                }

                if (v8 > v34)
                {
                  v34 = v8;
                }

                v35 = bswap32(*v34);
                v36 = (v33 + (v27 >> 4));
                if (v17 < v36)
                {
                  v36 = v17;
                }

                if (v8 > v36)
                {
                  v36 = v8;
                }

                v37 = BLEND8_21892[v21];
                v30 = v30 - ((v37 & v30) >> v21) + ((v37 & v35) >> v21);
                v32 = v32 - ((v37 & v32) >> v21) + ((bswap32(*v36) & v37) >> v21);
              }

              v30 = v30 - ((BLEND8_21892[*v24 & 0xF] & v30) >> (*v24 & 0xF)) + ((BLEND8_21892[*v24 & 0xF] & v32) >> (*v24 & 0xF));
            }

            else if (v21)
            {
              v38 = &v28[v20];
              if (v17 < &v28[v20])
              {
                v38 = v17;
              }

              if (v8 > v38)
              {
                v38 = v8;
              }

              v30 = v30 - ((BLEND8_21892[v21] & v30) >> v21) + ((bswap32(*v38) & BLEND8_21892[v21]) >> v21);
            }

            v39 = __ROL4__(v30, v7);
            v40 = *&_blt_float[HIBYTE(v39)];
            result = BYTE1(v39);
            if (v6 >= 1.0)
            {
              v41 = *&_blt_float[BYTE2(v39)];
              v42 = *&_blt_float[BYTE1(v39)];
              v43 = *&_blt_float[(v39 | v9)];
            }

            else
            {
              v40 = v6 * v40;
              v41 = v6 * *&_blt_float[BYTE2(v39)];
              v42 = v6 * *&_blt_float[BYTE1(v39)];
              v43 = v6 * *&_blt_float[(v39 | v9)];
            }

            v24 += 2;
            *v10 = v40;
            v10[1] = v41;
            v10[2] = v42;
            v10[3] = v43;
            v10 += 4;
            --v25;
          }

          while (v25);
        }
      }

      else if (a5 >= 1)
      {
        v44 = v89;
        v45 = a5;
        do
        {
          v47 = *(v44 - 1);
          v46 = *v44;
          v48 = &v23[v47];
          if (v17 >= &v23[v47])
          {
            v49 = &v23[v47];
          }

          else
          {
            v49 = v17;
          }

          if (v8 > v49)
          {
            v49 = v8;
          }

          v50 = bswap32(*v49);
          if ((v46 & 0xF) != 0)
          {
            v51 = &v48[v46 >> 4];
            if (v17 < v51)
            {
              v51 = v17;
            }

            if (v8 > v51)
            {
              v51 = v8;
            }

            v52 = bswap32(*v51);
            if (v21)
            {
              if (v17 >= &v48[v20])
              {
                v53 = &v48[v20];
              }

              else
              {
                v53 = v17;
              }

              if (v8 > v53)
              {
                v53 = v8;
              }

              v54 = bswap32(*v53);
              v55 = &v48[v20 + (v46 >> 4)];
              if (v17 < v55)
              {
                v55 = v17;
              }

              if (v8 > v55)
              {
                v55 = v8;
              }

              v56 = BLEND8_21892[v21];
              v50 = v50 - ((v56 & v50) >> v21) + ((v56 & v54) >> v21);
              v52 = v52 - ((v56 & v52) >> v21) + ((bswap32(*v55) & v56) >> v21);
            }

            v50 = v50 - ((BLEND8_21892[*v44 & 0xF] & v50) >> (*v44 & 0xF)) + ((BLEND8_21892[*v44 & 0xF] & v52) >> (*v44 & 0xF));
          }

          else if (v21)
          {
            v57 = &v48[v20];
            if (v17 < &v48[v20])
            {
              v57 = v17;
            }

            if (v8 > v57)
            {
              v57 = v8;
            }

            v50 = v50 - ((BLEND8_21892[v21] & v50) >> v21) + ((bswap32(*v57) & BLEND8_21892[v21]) >> v21);
          }

          v58 = __ROL4__(v50, v7);
          v59 = *&_blt_float[HIBYTE(v58)];
          result = BYTE1(v58);
          if (v6 >= 1.0)
          {
            v60 = *&_blt_float[BYTE2(v58)];
            v61 = *&_blt_float[BYTE1(v58)];
            v62 = *&_blt_float[(v58 | v9)];
          }

          else
          {
            v59 = v6 * v59;
            v60 = v6 * *&_blt_float[BYTE2(v58)];
            v61 = v6 * *&_blt_float[BYTE1(v58)];
            v62 = v6 * *&_blt_float[(v58 | v9)];
          }

          if (v62 >= 1.0)
          {
            *v10 = v59;
            v10[1] = v60;
            v10[2] = v61;
            v10[3] = v62;
          }

          else if (v62 > 0.0)
          {
            v63 = v10[1];
            *v10 = v59 + (*v10 * (1.0 - v62));
            v10[1] = v60 + (v63 * (1.0 - v62));
            v64 = v61 + (v10[2] * (1.0 - v62));
            v65 = v62 + (v10[3] * (1.0 - v62));
            v10[2] = v64;
            v10[3] = v65;
          }

          v44 += 2;
          v10 += 4;
          --v45;
        }

        while (v45);
      }

      v10 += 4 * v11;
      v16 += v15;
      --a6;
    }

    while (a6);
  }

  else
  {
    v66 = (v12 + 16 * a3);
    result = 32;
    do
    {
      v67 = v8 + (v16 >> v14) * v13;
      if (LODWORD(v91) == 1)
      {
        if (a5 >= 1)
        {
          v68 = v66;
          v69 = a5;
          do
          {
            v70 = *v68;
            v68 += 2;
            v71 = &v67[v70];
            if (v17 < &v67[v70])
            {
              v71 = v17;
            }

            if (v8 > v71)
            {
              v71 = v8;
            }

            v72 = __ROL4__(bswap32(*v71), v7);
            v73 = *&_blt_float[HIBYTE(v72)];
            result = BYTE1(v72);
            if (v6 >= 1.0)
            {
              v74 = *&_blt_float[BYTE2(v72)];
              v75 = *&_blt_float[BYTE1(v72)];
              v76 = *&_blt_float[(v72 | v9)];
            }

            else
            {
              v73 = v6 * v73;
              v74 = v6 * *&_blt_float[BYTE2(v72)];
              v75 = v6 * *&_blt_float[BYTE1(v72)];
              v76 = v6 * *&_blt_float[(v72 | v9)];
            }

            *v10 = v73;
            v10[1] = v74;
            v10[2] = v75;
            v10[3] = v76;
            v10 += 4;
            --v69;
          }

          while (v69);
        }
      }

      else
      {
        v77 = v66;
        v78 = a5;
        if (a5 >= 1)
        {
          do
          {
            v79 = *v77;
            v77 += 2;
            v80 = &v67[v79];
            if (v17 < &v67[v79])
            {
              v80 = v17;
            }

            if (v8 > v80)
            {
              v80 = v8;
            }

            v81 = __ROL4__(bswap32(*v80), v7);
            v82 = *&_blt_float[HIBYTE(v81)];
            result = BYTE1(v81);
            if (v6 >= 1.0)
            {
              v83 = *&_blt_float[BYTE2(v81)];
              v84 = *&_blt_float[BYTE1(v81)];
              v85 = *&_blt_float[(v81 | v9)];
            }

            else
            {
              v82 = v6 * v82;
              v83 = v6 * *&_blt_float[BYTE2(v81)];
              v84 = v6 * *&_blt_float[BYTE1(v81)];
              v85 = v6 * *&_blt_float[(v81 | v9)];
            }

            if (v85 >= 1.0)
            {
              *v10 = v82;
              v10[1] = v83;
              v10[2] = v84;
              v10[3] = v85;
            }

            else if (v85 > 0.0)
            {
              v86 = v10[1];
              *v10 = v82 + (*v10 * (1.0 - v85));
              v10[1] = v83 + (v86 * (1.0 - v85));
              v87 = v84 + (v10[2] * (1.0 - v85));
              v88 = v85 + (v10[3] * (1.0 - v85));
              v10[2] = v87;
              v10[3] = v88;
            }

            v10 += 4;
            --v78;
          }

          while (v78);
        }
      }

      v10 += 4 * v11;
      v16 += v15;
      --a6;
    }

    while (a6);
  }

  return result;
}