float16x8_t *composite_pixelmask<(CGCompositeOperation)12,_rgbaf16_t>(float16x8_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, char a16)
{
  if (a15)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  v20 = vdupq_n_s16(v19);
  v21.i64[0] = 0xFFFF000000000000;
  v21.i64[1] = 0xFFFF000000000000;
  v22 = vmvnq_s8(vandq_s8(v20, v21));
  v23 = vandq_s8(v20, xmmword_18439CFA0);
  v24 = 4 * a14;
  v25 = 0;
  v25.i16[3] = v19;
  v26 = vmvn_s8(v25);
  v27 = vand_s8(*v20.i8, 0x3C00000000000000);
  v28 = -a7;
  v29 = -(a6 * a4);
  v30 = 8 * v24;
  v31 = 8 * a14;
  v32.i64[0] = -1;
  v32.i64[1] = -1;
  v33 = vdupq_n_s16(0x1C04u);
  v34 = vdup_n_s16(0x1C04u);
  if ((a16 & 0x30) != 0)
  {
    while (1)
    {
      v35 = (a8 - a3) >> 3;
      if (v35 >= a12)
      {
        v35 = a12;
      }

      v36 = v35;
      if (v35 < 4)
      {
        goto LABEL_39;
      }

      while (1)
      {
        v37 = *a10;
        if (*a10 == -1)
        {
          v44 = &a10[v36];
          v45 = a10;
          do
          {
            v46 = v45++;
          }

          while (v45 <= v44 && (vminvq_u8(vceqq_s8(*v46, v32)) & 0x80) != 0);
          do
          {
            v47 = v46;
            v46 = (v46 + 4);
          }

          while (v46 <= v44 && v47->i32[0] == -1);
          if (v47 < v44)
          {
            while (v47->u8[0] == 255)
            {
              v47 = (v47 + 1);
              if (v47 >= v44)
              {
                v47 = &a10[v36];
                break;
              }
            }
          }

          v48 = v47 - a10;
          v49 = v47 - a10;
          do
          {
            v50 = vminnmq_f16(vaddq_f16(result[1], vorrq_s8(vandq_s8(a3[1], v22), v23)), xmmword_18439CFB0);
            *result = vminnmq_f16(vaddq_f16(*result, vorrq_s8(vandq_s8(*a3, v22), v23)), xmmword_18439CFB0);
            result[1] = v50;
            a10 += v24;
            v49 -= 4;
            result = (result + v30);
            a3 = (a3 + v30);
          }

          while (v49 > 3);
          v36 = v36 - v48 + v49;
          goto LABEL_36;
        }

        if (v37)
        {
          break;
        }

        v38 = &a10[v36];
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
              v41 = &a10[v36];
              break;
            }
          }
        }

        v42 = v41 - a10;
        v43 = (v41 - a10) * a14;
        a3 = (a3 + 8 * v43);
        result = (result + 8 * v43);
        a10 += v43;
        v36 -= v42;
LABEL_36:
        if (v36 <= 3)
        {
          goto LABEL_39;
        }
      }

      v51 = 0;
      while (1)
      {
        v52 = &result->i8[v51];
        v16.i32[0] = v37;
        v53 = vqtbl1q_s8(v16, xmmword_18439C7A0);
        v54 = vcvtq_f16_u16(vmovl_high_u8(v53));
        v16 = vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v53.i8)), v33);
        v55 = vmulq_f16(v54, v33);
        v56 = vbslq_s8(vcgtzq_f16(v55), vminnmq_f16(vmlaq_f16(*(&result[1] + v51), v55, vorrq_s8(vandq_s8(*(&a3[1] + v51), v22), v23)), xmmword_18439CFB0), *(&result[1] + v51));
        *v52 = vbslq_s8(vcgtzq_f16(v16), vminnmq_f16(vmlaq_f16(*(result + v51), v16, vorrq_s8(vandq_s8(*(a3 + v51), v22), v23)), xmmword_18439CFB0), *(result + v51));
        v52[1] = v56;
        a10 += v24;
        v36 -= 4;
        if (v36 < 4)
        {
          break;
        }

        v37 = *a10;
        v51 += v30;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v51);
          a3 = (a3 + v51);
          goto LABEL_36;
        }
      }

      result = (result + v30 + v51);
      a3 = (a3 + v30 + v51);
LABEL_39:
      for (i = a12 - v35 + v36; i; --i)
      {
        if (*a10)
        {
          v58 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v34);
          *v16.i8 = vmla_f16(*result->i8, v58, vorr_s8(vand_s8(*a3->i8, v26), v27));
          *result->i8 = vbsl_s8(vcgtz_f16(v58), vminnm_f16(*v16.i8, 0x3C007BFF7BFF7BFFLL), *result->i8);
        }

        v59 = &a3->i8[8 * a14];
        a10 += a14;
        if (v59 >= a8)
        {
          v60 = v28;
        }

        else
        {
          v60 = 0;
        }

        a3 = &v59[8 * v60];
        result = (result + v31);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v61 = &a5->i64[a4];
      if (v61 >= a9)
      {
        v62 = v29;
      }

      else
      {
        v62 = 0;
      }

      v63 = &v61[v62];
      v64 = a8 + 8 * v62 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v63;
        a8 = v64;
        a5 = v63;
      }

      v65 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v65 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v66 = (a8 - a3) >> 3;
    if (v66 >= a12)
    {
      v66 = a12;
    }

    v67 = v66;
    if (v66 < 4)
    {
      goto LABEL_88;
    }

    while (1)
    {
      v68 = *a10;
      if (*a10 == -1)
      {
        v75 = &a10[v67];
        v76 = a10;
        do
        {
          v77 = v76++;
        }

        while (v76 <= v75 && (vminvq_u8(vceqq_s8(*v77, v32)) & 0x80) != 0);
        do
        {
          v78 = v77;
          v77 = (v77 + 4);
        }

        while (v77 <= v75 && v78->i32[0] == -1);
        if (v78 < v75)
        {
          while (v78->u8[0] == 255)
          {
            v78 = (v78 + 1);
            if (v78 >= v75)
            {
              v78 = &a10[v67];
              break;
            }
          }
        }

        v79 = v78 - a10;
        v80 = v78 - a10;
        do
        {
          v81 = vrev16q_s8(vminnmq_f16(vaddq_f16(vrev16q_s8(result[1]), vorrq_s8(vandq_s8(vrev16q_s8(a3[1]), v22), v23)), xmmword_18439CFB0));
          *result = vrev16q_s8(vminnmq_f16(vaddq_f16(vrev16q_s8(*result), vorrq_s8(vandq_s8(vrev16q_s8(*a3), v22), v23)), xmmword_18439CFB0));
          result[1] = v81;
          a10 += v24;
          v80 -= 4;
          result = (result + v30);
          a3 = (a3 + v30);
        }

        while (v80 > 3);
        v67 = v67 - v79 + v80;
        goto LABEL_85;
      }

      if (v68)
      {
        break;
      }

      v69 = &a10[v67];
      v70 = a10;
      do
      {
        v71 = v70++;
      }

      while (v70 <= v69 && (vminvq_u8(vceqzq_s8(*v71)) & 0x80) != 0);
      do
      {
        v72 = v71;
        v71 = (v71 + 4);
      }

      while (v71 <= v69 && !v72->i32[0]);
      if (v72 < v69)
      {
        while (!v72->i8[0])
        {
          v72 = (v72 + 1);
          if (v72 >= v69)
          {
            v72 = &a10[v67];
            break;
          }
        }
      }

      v73 = v72 - a10;
      v74 = (v72 - a10) * a14;
      a3 = (a3 + 8 * v74);
      result = (result + 8 * v74);
      a10 += v74;
      v67 -= v73;
LABEL_85:
      if (v67 <= 3)
      {
        goto LABEL_88;
      }
    }

    v82 = 0;
    while (1)
    {
      v83 = &result->i8[v82];
      v84 = vrev16q_s8(*(result + v82));
      v85 = vrev16q_s8(*(&result[1] + v82));
      v16.i32[0] = v68;
      v86 = vqtbl1q_s8(v16, xmmword_18439C7A0);
      v87 = vcvtq_f16_u16(vmovl_u8(*v86.i8));
      v16 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v86)), v33);
      v88 = vmulq_f16(v87, v33);
      v89 = vrev16q_s8(vbslq_s8(vcgtzq_f16(v16), vminnmq_f16(vmlaq_f16(v85, v16, vorrq_s8(vandq_s8(vrev16q_s8(*(&a3[1] + v82)), v22), v23)), xmmword_18439CFB0), v85));
      *v83 = vrev16q_s8(vbslq_s8(vcgtzq_f16(v88), vminnmq_f16(vmlaq_f16(v84, v88, vorrq_s8(vandq_s8(vrev16q_s8(*(a3 + v82)), v22), v23)), xmmword_18439CFB0), v84));
      v83[1] = v89;
      a10 += v24;
      v67 -= 4;
      if (v67 < 4)
      {
        break;
      }

      v68 = *a10;
      v82 += v30;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v82);
        a3 = (a3 + v82);
        goto LABEL_85;
      }
    }

    result = (result + v30 + v82);
    a3 = (a3 + v30 + v82);
LABEL_88:
    for (j = a12 - v66 + v67; j; --j)
    {
      if (*a10)
      {
        v91 = vrev16_s8(*result->i8);
        v92 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), v34);
        *v16.i8 = vmla_f16(v91, v92, vorr_s8(vand_s8(vrev16_s8(*a3->i8), v26), v27));
        *result->i8 = vrev16_s8(vbsl_s8(vcgtz_f16(v92), vminnm_f16(*v16.i8, 0x3C007BFF7BFF7BFFLL), v91));
      }

      v93 = &a3->i8[8 * a14];
      a10 += a14;
      if (v93 >= a8)
      {
        v94 = v28;
      }

      else
      {
        v94 = 0;
      }

      a3 = &v93[8 * v94];
      result = (result + v31);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v95 = &a5->i64[a4];
    if (v95 >= a9)
    {
      v96 = v29;
    }

    else
    {
      v96 = 0;
    }

    v97 = &v95[v96];
    v98 = a8 + 8 * v96 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v97;
      a8 = v98;
      a5 = v97;
    }

    v65 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v65 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)13,_rgbaf16_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  v21 = vdupq_n_s16(v20);
  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vmvnq_s8(vandq_s8(v21, v22));
  v24 = vandq_s8(v21, xmmword_18439CFA0);
  if (a15)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vdupq_n_s16(v25);
  v27 = vandq_s8(v26, v22);
  v28 = vmvnq_s8(v27);
  v29 = vandq_s8(v26, xmmword_18439CFA0);
  v30 = 4 * a14;
  v34 = 0;
  v31 = 0;
  v31.i16[3] = v20;
  v32 = vmvn_s8(v31);
  v33 = vand_s8(*v21.i8, 0x3C00000000000000);
  v34.i16[3] = v25;
  v35 = -(a6 * a4);
  v36 = 8 * v30;
  v37 = 8 * a14;
  v38.i64[0] = -1;
  v38.i64[1] = -1;
  v39 = vdupq_n_s16(0x1C04u);
  v40.i64[0] = 0x3C003C003C003C00;
  v40.i64[1] = 0x3C003C003C003C00;
  if ((a17 & 0x30) != 0)
  {
    while (1)
    {
      v41 = (a8 - a3) >> 3;
      if (v41 >= a12)
      {
        v41 = a12;
      }

      v42 = v41;
      if (v41 < 4)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v43 = *a10;
        if (*a10 == -1)
        {
          v50 = &a10[v42];
          v51 = a10;
          do
          {
            v52 = v51++;
          }

          while (v51 <= v50 && (vminvq_u8(vceqq_s8(*v52, v38)) & 0x80) != 0);
          do
          {
            v53 = v52;
            v52 = (v52 + 4);
          }

          while (v52 <= v50 && v53->i32[0] == -1);
          if (v53 < v50)
          {
            while (v53->u8[0] == 255)
            {
              v53 = (v53 + 1);
              if (v53 >= v50)
              {
                v53 = &a10[v42];
                break;
              }
            }
          }

          v54 = v53 - a10;
          v55 = v53 - a10;
          do
          {
            v56 = vorrq_s8(vandq_s8(a3[1], v23), v24);
            v57 = vqtbl1q_s8(v56, xmmword_18439C6E0);
            v58 = vorrq_s8(vandq_s8(*a3, v23), v24);
            v59 = vqtbl1q_s8(v58, xmmword_18439C6E0);
            v60 = vorrq_s8(vandq_s8(*result, v28), v29);
            v61 = vqtbl1q_s8(v60, xmmword_18439C6E0);
            v62 = vorrq_s8(vandq_s8(result[1], v28), v29);
            v63 = vqtbl1q_s8(v62, xmmword_18439C6E0);
            v64 = vcgtzq_f16(v59);
            v65 = vcgtzq_f16(v57);
            v66 = vmlsq_f16(v60, v59, v60);
            v67 = vmlsq_f16(v62, v57, v62);
            v17 = vmlaq_f16(vaddq_f16(v66, vmlsq_f16(v58, v61, v58)), v58, v60);
            *result = vbslq_s8(v64, vbslq_s8(vcgtzq_f16(v61), v17, v58), v60);
            result[1] = vbslq_s8(v65, vbslq_s8(vcgtzq_f16(v63), vmlaq_f16(vaddq_f16(v67, vmlsq_f16(v56, v63, v56)), v56, v62), v56), v62);
            a10 += v30;
            v55 -= 4;
            result = (result + v36);
            a3 = (a3 + v36);
          }

          while (v55 > 3);
          v42 = v42 - v54 + v55;
          goto LABEL_39;
        }

        if (v43)
        {
          break;
        }

        v44 = &a10[v42];
        v45 = a10;
        do
        {
          v46 = v45++;
        }

        while (v45 <= v44 && (vminvq_u8(vceqzq_s8(*v46)) & 0x80) != 0);
        do
        {
          v47 = v46;
          v46 = (v46 + 4);
        }

        while (v46 <= v44 && !v47->i32[0]);
        if (v47 < v44)
        {
          while (!v47->i8[0])
          {
            v47 = (v47 + 1);
            if (v47 >= v44)
            {
              v47 = &a10[v42];
              break;
            }
          }
        }

        v48 = v47 - a10;
        v49 = (v47 - a10) * a14;
        a3 = (a3 + 8 * v49);
        result = (result + 8 * v49);
        a10 += v49;
        v42 -= v48;
LABEL_39:
        if (v42 <= 3)
        {
          goto LABEL_42;
        }
      }

      v68 = 0;
      while (1)
      {
        v69 = (result + v68);
        v17.i32[0] = v43;
        v70 = vqtbl1q_s8(v17, xmmword_18439C7A0);
        v71 = vcvtq_f16_u16(vmovl_u8(*v70.i8));
        v72 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v70)), v39);
        v73 = vmulq_f16(v71, v39);
        v74 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v73)), v40, *(result + v68));
        v75 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v72)), v40, *(&result[1] + v68));
        v76 = vmulq_f16(v72, vorrq_s8(vandq_s8(*(&a3[1] + v68), v23), v24));
        v77 = vmulq_f16(v73, vorrq_s8(vandq_s8(*(a3 + v68), v23), v24));
        v78 = vqtbl1q_s8(v77, xmmword_18439C6E0);
        v79 = vqtbl1q_s8(v76, xmmword_18439C6E0);
        v80 = vqtbl1q_s8(v75, xmmword_18439C6E0);
        v81 = vqtbl1q_s8(v74, xmmword_18439C6E0);
        v82 = vcgtzq_f16(v78);
        v83 = vmlsq_f16(v74, v78, v74);
        v17 = vmlaq_f16(vaddq_f16(vmlsq_f16(v75, v79, v75), vmlsq_f16(v76, v80, v76)), v76, v75);
        *v69 = vbslq_s8(v82, vbslq_s8(vcgtzq_f16(v81), vmlaq_f16(vaddq_f16(v83, vmlsq_f16(v77, v81, v77)), v77, v74), v77), v74);
        v69[1] = vbslq_s8(vcgtzq_f16(v79), vbslq_s8(vcgtzq_f16(v80), v17, v76), v75);
        a10 += v30;
        v42 -= 4;
        if (v42 < 4)
        {
          break;
        }

        v43 = *a10;
        v68 += v36;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v68);
          a3 = (a3 + v68);
          goto LABEL_39;
        }
      }

      result = (result + v36 + v68);
      a3 = (a3 + v36 + v68);
LABEL_42:
      for (i = a12 - v41 + v42; i; --i)
      {
        if (*a10)
        {
          v85 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
          v86 = vbsl_s8(vand_s8(v34, vcgtz_f16(v85)), 0x3C003C003C003C00, *result->i8);
          v87 = vmul_f16(v85, vorr_s8(vand_s8(*a3->i8, v32), v33));
          *result->i8 = vbsl_s8(vcgtz_f16(vdup_lane_s16(v87, 3)), vbsl_s8(vcgtz_f16(vdup_lane_s16(v86, 3)), vmla_f16(vadd_f16(vmls_lane_f16(v87, v87, v86, 3), vmls_lane_f16(v86, v86, v87, 3)), v87, v86), v87), v86);
        }

        v88 = &a3->i8[8 * a14];
        a10 += a14;
        if (v88 >= a8)
        {
          v89 = -a7;
        }

        else
        {
          v89 = 0;
        }

        a3 = &v88[8 * v89];
        result = (result + v37);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v90 = &a5->i64[a4];
      if (v90 >= a9)
      {
        v91 = v35;
      }

      else
      {
        v91 = 0;
      }

      v92 = &v90[v91];
      v93 = a8 + 8 * v91 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v92;
        a8 = v93;
        a5 = v92;
      }

      v94 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v94 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v95 = (a8 - a3) >> 3;
    if (v95 >= a12)
    {
      v95 = a12;
    }

    v96 = v95;
    if (v95 < 4)
    {
      goto LABEL_91;
    }

    while (1)
    {
      v97 = *a10;
      if (*a10 == -1)
      {
        v104 = &a10[v96];
        v105 = a10;
        do
        {
          v106 = v105++;
        }

        while (v105 <= v104 && (vminvq_u8(vceqq_s8(*v106, v38)) & 0x80) != 0);
        do
        {
          v107 = v106;
          v106 = (v106 + 4);
        }

        while (v106 <= v104 && v107->i32[0] == -1);
        if (v107 < v104)
        {
          while (v107->u8[0] == 255)
          {
            v107 = (v107 + 1);
            if (v107 >= v104)
            {
              v107 = &a10[v96];
              break;
            }
          }
        }

        v108 = v107 - a10;
        v109 = v107 - a10;
        do
        {
          v110 = vorrq_s8(vandq_s8(vrev16q_s8(*a3), v23), v24);
          v111 = vqtbl1q_s8(v110, xmmword_18439C6E0);
          v112 = vorrq_s8(vandq_s8(vrev16q_s8(a3[1]), v23), v24);
          v113 = vqtbl1q_s8(v112, xmmword_18439C6E0);
          v114 = vorrq_s8(vandq_s8(vrev16q_s8(result[1]), v28), v29);
          v115 = vqtbl1q_s8(v114, xmmword_18439C6E0);
          v116 = vorrq_s8(vandq_s8(vrev16q_s8(*result), v28), v29);
          v117 = vqtbl1q_s8(v116, xmmword_18439C6E0);
          v118 = vcgtzq_f16(v111);
          v119 = vmlsq_f16(v116, v111, v116);
          v17 = vmlaq_f16(vaddq_f16(vmlsq_f16(v114, v113, v114), vmlsq_f16(v112, v115, v112)), v112, v114);
          *result = vrev16q_s8(vbslq_s8(v118, vbslq_s8(vcgtzq_f16(v117), vmlaq_f16(vaddq_f16(v119, vmlsq_f16(v110, v117, v110)), v110, v116), v110), v116));
          result[1] = vrev16q_s8(vbslq_s8(vcgtzq_f16(v113), vbslq_s8(vcgtzq_f16(v115), v17, v112), v114));
          a10 += v30;
          v109 -= 4;
          result = (result + v36);
          a3 = (a3 + v36);
        }

        while (v109 > 3);
        v96 = v96 - v108 + v109;
        goto LABEL_88;
      }

      if (v97)
      {
        break;
      }

      v98 = &a10[v96];
      v99 = a10;
      do
      {
        v100 = v99++;
      }

      while (v99 <= v98 && (vminvq_u8(vceqzq_s8(*v100)) & 0x80) != 0);
      do
      {
        v101 = v100;
        v100 = (v100 + 4);
      }

      while (v100 <= v98 && !v101->i32[0]);
      if (v101 < v98)
      {
        while (!v101->i8[0])
        {
          v101 = (v101 + 1);
          if (v101 >= v98)
          {
            v101 = &a10[v96];
            break;
          }
        }
      }

      v102 = v101 - a10;
      v103 = (v101 - a10) * a14;
      a3 = (a3 + 8 * v103);
      result = (result + 8 * v103);
      a10 += v103;
      v96 -= v102;
LABEL_88:
      if (v96 <= 3)
      {
        goto LABEL_91;
      }
    }

    v120 = 0;
    while (1)
    {
      v121 = (result + v120);
      v17.i32[0] = v97;
      v122 = vqtbl1q_s8(v17, xmmword_18439C7A0);
      v123 = vcvtq_f16_u16(vmovl_high_u8(v122));
      v124 = vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v122.i8)), v39);
      v125 = vmulq_f16(v123, v39);
      v126 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v125)), v40, vrev16q_s8(*(&result[1] + v120)));
      v127 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v124)), v40, vrev16q_s8(*(result + v120)));
      v128 = vmulq_f16(v124, vorrq_s8(vandq_s8(vrev16q_s8(*(a3 + v120)), v23), v24));
      v129 = vmulq_f16(v125, vorrq_s8(vandq_s8(vrev16q_s8(*(&a3[1] + v120)), v23), v24));
      v130 = vqtbl1q_s8(v129, xmmword_18439C6E0);
      v131 = vqtbl1q_s8(v128, xmmword_18439C6E0);
      v132 = vqtbl1q_s8(v127, xmmword_18439C6E0);
      v133 = vqtbl1q_s8(v126, xmmword_18439C6E0);
      v134 = vcgtzq_f16(v131);
      v135 = vcgtzq_f16(v130);
      v136 = vmlsq_f16(v127, v131, v127);
      v137 = vmlsq_f16(v126, v130, v126);
      v17 = vmlaq_f16(vaddq_f16(v136, vmlsq_f16(v128, v132, v128)), v128, v127);
      *v121 = vrev16q_s8(vbslq_s8(v134, vbslq_s8(vcgtzq_f16(v132), v17, v128), v127));
      v121[1] = vrev16q_s8(vbslq_s8(v135, vbslq_s8(vcgtzq_f16(v133), vmlaq_f16(vaddq_f16(v137, vmlsq_f16(v129, v133, v129)), v129, v126), v129), v126));
      a10 += v30;
      v96 -= 4;
      if (v96 < 4)
      {
        break;
      }

      v97 = *a10;
      v120 += v36;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v120);
        a3 = (a3 + v120);
        goto LABEL_88;
      }
    }

    result = (result + v36 + v120);
    a3 = (a3 + v36 + v120);
LABEL_91:
    for (j = a12 - v95 + v96; j; --j)
    {
      if (*a10)
      {
        v139 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
        v140 = vbsl_s8(vand_s8(v34, vcgtz_f16(v139)), 0x3C003C003C003C00, vrev16_s8(*result->i8));
        v141 = vmul_f16(v139, vorr_s8(vand_s8(vrev16_s8(*a3->i8), v32), v33));
        *result->i8 = vrev16_s8(vbsl_s8(vcgtz_f16(vdup_lane_s16(v141, 3)), vbsl_s8(vcgtz_f16(vdup_lane_s16(v140, 3)), vmla_f16(vadd_f16(vmls_lane_f16(v141, v141, v140, 3), vmls_lane_f16(v140, v140, v141, 3)), v141, v140), v141), v140));
      }

      v142 = &a3->i8[8 * a14];
      a10 += a14;
      if (v142 >= a8)
      {
        v143 = -a7;
      }

      else
      {
        v143 = 0;
      }

      a3 = &v142[8 * v143];
      result = (result + v37);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v144 = &a5->i64[a4];
    if (v144 >= a9)
    {
      v145 = v35;
    }

    else
    {
      v145 = 0;
    }

    v146 = &v144[v145];
    v147 = a8 + 8 * v145 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v146;
      a8 = v147;
      a5 = v146;
    }

    v94 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v94 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)14,_rgbaf16_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  v21 = vdupq_n_s16(v20);
  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vmvnq_s8(vandq_s8(v21, v22));
  v24 = vandq_s8(v21, xmmword_18439CFA0);
  if (a15)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vdupq_n_s16(v25);
  v27 = vandq_s8(v26, v22);
  v28 = vmvnq_s8(v27);
  v29 = vandq_s8(v26, xmmword_18439CFA0);
  v30 = 4 * a14;
  v31 = 0;
  v31.i16[3] = v20;
  v32 = vmvn_s8(v31);
  v33 = vand_s8(*v21.i8, 0x3C00000000000000);
  v34 = 0;
  v34.i16[3] = v25;
  v35 = -(a6 * a4);
  v36 = 8 * v30;
  v37 = 8 * a14;
  v38.i64[0] = 0x3C003C003C003C00;
  v38.i64[1] = 0x3C003C003C003C00;
  v39.i64[0] = -1;
  v39.i64[1] = -1;
  v40 = vdupq_n_s16(0x1C04u);
  if ((a17 & 0x30) != 0)
  {
    while (1)
    {
      v41 = (a8 - a3) >> 3;
      if (v41 >= a12)
      {
        v41 = a12;
      }

      v42 = v41;
      if (v41 < 4)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v43 = *a10;
        if (*a10 == -1)
        {
          v50 = &a10[v42];
          v51 = a10;
          do
          {
            v52 = v51++;
          }

          while (v51 <= v50 && (vminvq_u8(vceqq_s8(*v52, v39)) & 0x80) != 0);
          do
          {
            v53 = v52;
            v52 = (v52 + 4);
          }

          while (v52 <= v50 && v53->i32[0] == -1);
          if (v53 < v50)
          {
            while (v53->u8[0] == 255)
            {
              v53 = (v53 + 1);
              if (v53 >= v50)
              {
                v53 = &a10[v42];
                break;
              }
            }
          }

          v54 = v53 - a10;
          v55 = v53 - a10;
          do
          {
            v56 = vorrq_s8(vandq_s8(*a3, v23), v24);
            v57 = vorrq_s8(vandq_s8(a3[1], v23), v24);
            v58 = vorrq_s8(vandq_s8(*result, v28), v29);
            v59 = vorrq_s8(vandq_s8(result[1], v28), v29);
            v17 = vcgtzq_f16(vqtbl1q_s8(v57, xmmword_18439C6E0));
            *result = vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v56, xmmword_18439C6E0)), vbslq_s8(vcgtzq_f16(vmaxnmq_f16(vminnmq_f16(vqtbl1q_s8(v58, xmmword_18439C6E0), v38), 0)), vaddq_f16(vmlsq_f16(v56, v56, v58), v58), v56), v58);
            result[1] = vbslq_s8(v17, vbslq_s8(vcgtzq_f16(vmaxnmq_f16(vminnmq_f16(vqtbl1q_s8(v59, xmmword_18439C6E0), v38), 0)), vaddq_f16(vmlsq_f16(v57, v57, v59), v59), v57), v59);
            a10 += v30;
            v55 -= 4;
            result = (result + v36);
            a3 = (a3 + v36);
          }

          while (v55 > 3);
          v42 = v42 - v54 + v55;
          goto LABEL_39;
        }

        if (v43)
        {
          break;
        }

        v44 = &a10[v42];
        v45 = a10;
        do
        {
          v46 = v45++;
        }

        while (v45 <= v44 && (vminvq_u8(vceqzq_s8(*v46)) & 0x80) != 0);
        do
        {
          v47 = v46;
          v46 = (v46 + 4);
        }

        while (v46 <= v44 && !v47->i32[0]);
        if (v47 < v44)
        {
          while (!v47->i8[0])
          {
            v47 = (v47 + 1);
            if (v47 >= v44)
            {
              v47 = &a10[v42];
              break;
            }
          }
        }

        v48 = v47 - a10;
        v49 = (v47 - a10) * a14;
        a3 = (a3 + 8 * v49);
        result = (result + 8 * v49);
        a10 += v49;
        v42 -= v48;
LABEL_39:
        if (v42 <= 3)
        {
          goto LABEL_42;
        }
      }

      v60 = 0;
      while (1)
      {
        v61 = (result + v60);
        v17.i32[0] = v43;
        v62 = vqtbl1q_s8(v17, xmmword_18439C7A0);
        v63 = vcvtq_f16_u16(vmovl_u8(*v62.i8));
        v64 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v62)), v40);
        v65 = vmulq_f16(v63, v40);
        v66 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v65)), v38, *(result + v60));
        v67 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v64)), v38, *(&result[1] + v60));
        v68 = vmulq_f16(v64, vorrq_s8(vandq_s8(*(&a3[1] + v60), v23), v24));
        v69 = vmulq_f16(v65, vorrq_s8(vandq_s8(*(a3 + v60), v23), v24));
        v17 = vcgtzq_f16(vqtbl1q_s8(v69, xmmword_18439C6E0));
        *v61 = vbslq_s8(v17, vbslq_s8(vcgtzq_f16(vmaxnmq_f16(vminnmq_f16(vqtbl1q_s8(v66, xmmword_18439C6E0), v38), 0)), vaddq_f16(vmlsq_f16(v69, v69, v66), v66), v69), v66);
        v61[1] = vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v68, xmmword_18439C6E0)), vbslq_s8(vcgtzq_f16(vmaxnmq_f16(vminnmq_f16(vqtbl1q_s8(v67, xmmword_18439C6E0), v38), 0)), vaddq_f16(vmlsq_f16(v68, v68, v67), v67), v68), v67);
        a10 += v30;
        v42 -= 4;
        if (v42 < 4)
        {
          break;
        }

        v43 = *a10;
        v60 += v36;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v60);
          a3 = (a3 + v60);
          goto LABEL_39;
        }
      }

      result = (result + v36 + v60);
      a3 = (a3 + v36 + v60);
LABEL_42:
      for (i = a12 - v41 + v42; i; --i)
      {
        if (*a10)
        {
          v71 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
          v72 = vbsl_s8(vand_s8(v34, vcgtz_f16(v71)), 0x3C003C003C003C00, *result->i8);
          v73 = vmul_f16(v71, vorr_s8(vand_s8(*a3->i8, v32), v33));
          *v17.i8 = vadd_f16(vmls_f16(v73, v73, v72), v72);
          *result->i8 = vbsl_s8(vdup_lane_s16(vcgtz_f16(v73), 3), vbsl_s8(vcgtz_f16(vmaxnm_f16(vminnm_f16(vdup_lane_s16(v72, 3), 0x3C003C003C003C00), 0)), *v17.i8, v73), v72);
        }

        v74 = &a3->i8[8 * a14];
        a10 += a14;
        if (v74 >= a8)
        {
          v75 = -a7;
        }

        else
        {
          v75 = 0;
        }

        a3 = &v74[8 * v75];
        result = (result + v37);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v76 = &a5->i64[a4];
      if (v76 >= a9)
      {
        v77 = v35;
      }

      else
      {
        v77 = 0;
      }

      v78 = &v76[v77];
      v79 = a8 + 8 * v77 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v78;
        a8 = v79;
        a5 = v78;
      }

      v80 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v80 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v81 = (a8 - a3) >> 3;
    if (v81 >= a12)
    {
      v81 = a12;
    }

    v82 = v81;
    if (v81 < 4)
    {
      goto LABEL_91;
    }

    while (1)
    {
      v83 = *a10;
      if (*a10 == -1)
      {
        v90 = &a10[v82];
        v91 = a10;
        do
        {
          v92 = v91++;
        }

        while (v91 <= v90 && (vminvq_u8(vceqq_s8(*v92, v39)) & 0x80) != 0);
        do
        {
          v93 = v92;
          v92 = (v92 + 4);
        }

        while (v92 <= v90 && v93->i32[0] == -1);
        if (v93 < v90)
        {
          while (v93->u8[0] == 255)
          {
            v93 = (v93 + 1);
            if (v93 >= v90)
            {
              v93 = &a10[v82];
              break;
            }
          }
        }

        v94 = v93 - a10;
        v95 = v93 - a10;
        do
        {
          v96 = vorrq_s8(vandq_s8(vrev16q_s8(a3[1]), v23), v24);
          v97 = vorrq_s8(vandq_s8(vrev16q_s8(*a3), v23), v24);
          v98 = vorrq_s8(vandq_s8(vrev16q_s8(*result), v28), v29);
          v99 = vorrq_s8(vandq_s8(vrev16q_s8(result[1]), v28), v29);
          v17 = vcgtzq_f16(vqtbl1q_s8(v97, xmmword_18439C6E0));
          *result = vrev16q_s8(vbslq_s8(v17, vbslq_s8(vcgtzq_f16(vmaxnmq_f16(vminnmq_f16(vqtbl1q_s8(v98, xmmword_18439C6E0), v38), 0)), vaddq_f16(vmlsq_f16(v97, v97, v98), v98), v97), v98));
          result[1] = vrev16q_s8(vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v96, xmmword_18439C6E0)), vbslq_s8(vcgtzq_f16(vmaxnmq_f16(vminnmq_f16(vqtbl1q_s8(v99, xmmword_18439C6E0), v38), 0)), vaddq_f16(vmlsq_f16(v96, v96, v99), v99), v96), v99));
          a10 += v30;
          v95 -= 4;
          result = (result + v36);
          a3 = (a3 + v36);
        }

        while (v95 > 3);
        v82 = v82 - v94 + v95;
        goto LABEL_88;
      }

      if (v83)
      {
        break;
      }

      v84 = &a10[v82];
      v85 = a10;
      do
      {
        v86 = v85++;
      }

      while (v85 <= v84 && (vminvq_u8(vceqzq_s8(*v86)) & 0x80) != 0);
      do
      {
        v87 = v86;
        v86 = (v86 + 4);
      }

      while (v86 <= v84 && !v87->i32[0]);
      if (v87 < v84)
      {
        while (!v87->i8[0])
        {
          v87 = (v87 + 1);
          if (v87 >= v84)
          {
            v87 = &a10[v82];
            break;
          }
        }
      }

      v88 = v87 - a10;
      v89 = (v87 - a10) * a14;
      a3 = (a3 + 8 * v89);
      result = (result + 8 * v89);
      a10 += v89;
      v82 -= v88;
LABEL_88:
      if (v82 <= 3)
      {
        goto LABEL_91;
      }
    }

    v100 = 0;
    while (1)
    {
      v101 = (result + v100);
      v17.i32[0] = v83;
      v102 = vqtbl1q_s8(v17, xmmword_18439C7A0);
      v103 = vcvtq_f16_u16(vmovl_u8(*v102.i8));
      v104 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v102)), v40);
      v105 = vmulq_f16(v103, v40);
      v106 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v105)), v38, vrev16q_s8(*(result + v100)));
      v107 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v104)), v38, vrev16q_s8(*(&result[1] + v100)));
      v108 = vmulq_f16(v105, vorrq_s8(vandq_s8(vrev16q_s8(*(a3 + v100)), v23), v24));
      v109 = vmulq_f16(v104, vorrq_s8(vandq_s8(vrev16q_s8(*(&a3[1] + v100)), v23), v24));
      v17 = vcgtzq_f16(vqtbl1q_s8(v109, xmmword_18439C6E0));
      *v101 = vrev16q_s8(vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v108, xmmword_18439C6E0)), vbslq_s8(vcgtzq_f16(vmaxnmq_f16(vminnmq_f16(vqtbl1q_s8(v106, xmmword_18439C6E0), v38), 0)), vaddq_f16(vmlsq_f16(v108, v108, v106), v106), v108), v106));
      v101[1] = vrev16q_s8(vbslq_s8(v17, vbslq_s8(vcgtzq_f16(vmaxnmq_f16(vminnmq_f16(vqtbl1q_s8(v107, xmmword_18439C6E0), v38), 0)), vaddq_f16(vmlsq_f16(v109, v109, v107), v107), v109), v107));
      a10 += v30;
      v82 -= 4;
      if (v82 < 4)
      {
        break;
      }

      v83 = *a10;
      v100 += v36;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v100);
        a3 = (a3 + v100);
        goto LABEL_88;
      }
    }

    result = (result + v36 + v100);
    a3 = (a3 + v36 + v100);
LABEL_91:
    for (j = a12 - v81 + v82; j; --j)
    {
      if (*a10)
      {
        v111 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
        v112 = vbsl_s8(vand_s8(v34, vcgtz_f16(v111)), 0x3C003C003C003C00, vrev16_s8(*result->i8));
        v113 = vmul_f16(v111, vorr_s8(vand_s8(vrev16_s8(*a3->i8), v32), v33));
        *v17.i8 = vadd_f16(vmls_f16(v113, v113, v112), v112);
        *result->i8 = vrev16_s8(vbsl_s8(vdup_lane_s16(vcgtz_f16(v113), 3), vbsl_s8(vcgtz_f16(vmaxnm_f16(vminnm_f16(vdup_lane_s16(v112, 3), 0x3C003C003C003C00), 0)), *v17.i8, v113), v112));
      }

      v114 = &a3->i8[8 * a14];
      a10 += a14;
      if (v114 >= a8)
      {
        v115 = -a7;
      }

      else
      {
        v115 = 0;
      }

      a3 = &v114[8 * v115];
      result = (result + v37);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v116 = &a5->i64[a4];
    if (v116 >= a9)
    {
      v117 = v35;
    }

    else
    {
      v117 = 0;
    }

    v118 = &v116[v117];
    v119 = a8 + 8 * v117 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v118;
      a8 = v119;
      a5 = v118;
    }

    v80 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v80 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)15,_rgbaf16_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  v21 = vdupq_n_s16(v20);
  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vmvnq_s8(vandq_s8(v21, v22));
  v24 = vandq_s8(v21, xmmword_18439CFA0);
  if (a15)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vdupq_n_s16(v25);
  v27 = vandq_s8(v26, v22);
  v28 = vmvnq_s8(v27);
  v29 = vandq_s8(v26, xmmword_18439CFA0);
  v30 = 4 * a14;
  v34 = 0;
  v31 = 0;
  v31.i16[3] = v20;
  v32 = vmvn_s8(v31);
  v33 = vand_s8(*v21.i8, 0x3C00000000000000);
  v34.i16[3] = v25;
  v35 = -(a6 * a4);
  v36 = 8 * v30;
  v37 = 8 * a14;
  v319 = v34;
  v317 = v33;
  v318 = v32;
  v38.i64[0] = 0x3F0000003F000000;
  v38.i64[1] = 0x3F0000003F000000;
  v39.i64[0] = 0x8000000080000000;
  v39.i64[1] = 0x8000000080000000;
  v40.i64[0] = 0x3C003C003C003C00;
  v40.i64[1] = 0x3C003C003C003C00;
  if ((a17 & 0x30) != 0)
  {
    while (1)
    {
      v41 = (a8 - a3) >> 3;
      if (v41 >= a12)
      {
        v41 = a12;
      }

      v42 = v41;
      if (v41 < 4)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v43 = *a10;
        if (*a10 == -1)
        {
          v50 = &a10[v42];
          v51 = a10;
          v52.i64[0] = -1;
          v52.i64[1] = -1;
          do
          {
            v53 = v51++;
          }

          while (v51 <= v50 && (vminvq_u8(vceqq_s8(*v53, v52)) & 0x80) != 0);
          do
          {
            v54 = v53;
            v53 = (v53 + 4);
          }

          while (v53 <= v50 && v54->i32[0] == -1);
          if (v54 < v50)
          {
            while (v54->u8[0] == 255)
            {
              v54 = (v54 + 1);
              if (v54 >= v50)
              {
                v54 = &a10[v42];
                break;
              }
            }
          }

          v55 = v54 - a10;
          v56 = v54 - a10;
          do
          {
            v57 = vorrq_s8(vandq_s8(*a3, v23), v24);
            v58 = vorrq_s8(vandq_s8(a3[1], v23), v24);
            v59 = vorrq_s8(vandq_s8(result[1], v28), v29);
            v60 = vorrq_s8(vandq_s8(*result, v28), v29);
            v61 = vqtbl1q_s8(v58, xmmword_18439C6E0);
            v62 = vqtbl1q_s8(v57, xmmword_18439C6E0);
            v63 = vqtbl1q_s8(v60, xmmword_18439C6E0);
            v64 = vcvtq_f32_f16(*v57.i8);
            v65 = vcvt_hight_f32_f16(v57);
            v66 = vcvt_hight_f32_f16(v60);
            v67 = vcvtq_f32_f16(*v60.i8);
            v68 = vcvtq_f32_f16(*v62.i8);
            v69 = vcvt_hight_f32_f16(v62);
            v70 = vcvtq_f32_f16(*v63.i8);
            v71 = vcvt_hight_f32_f16(v63);
            v72 = vcgtq_f32(vmulq_f32(v70, v38), v67);
            v73 = vcgtq_f32(vmulq_f32(v71, v38), v66);
            v74 = vandq_s8(v72, v39);
            v75 = veorq_s8(v74, vsubq_f32(v68, v64));
            v76 = vandq_s8(v73, v39);
            v77 = veorq_s8(v76, vsubq_f32(v69, v65));
            v78 = veorq_s8(v76, vsubq_f32(v71, v66));
            v79 = vqtbl1q_s8(v59, xmmword_18439C6E0);
            v80 = vcgtzq_f16(v63);
            v81 = vmlaq_f32(v66, v77, v66);
            v82 = vcvtq_f32_f16(*v58.i8);
            v83 = vcvt_hight_f32_f16(v58);
            v84 = vmlaq_f32(v65, v78, v65);
            v85 = vcvt_hight_f32_f16(v59);
            v86 = vmlaq_f32(v64, veorq_s8(v74, vsubq_f32(v70, v67)), v64);
            v87 = vcvtq_f32_f16(*v59.i8);
            v88 = vaddq_f32(v86, vmlaq_f32(v67, v75, v67));
            v89 = vcvtq_f32_f16(*v61.i8);
            v90 = vaddq_f32(v84, v81);
            v91 = vcvt_hight_f32_f16(v61);
            v92 = vmulq_f32(v69, v71);
            v93 = vcvtq_f32_f16(*v79.i8);
            v94 = vmulq_f32(v68, v70);
            v95 = vcvt_hight_f32_f16(v79);
            v96 = vbslq_s8(v72, v39, v94);
            v97 = vcgtq_f32(vmulq_f32(v93, v38), v87);
            v98 = vcgtq_f32(vmulq_f32(v95, v38), v85);
            v99 = vbslq_s8(v80, vcvt_hight_f16_f32(vcvt_f16_f32(vsubq_f32(v88, v96)), vsubq_f32(v90, vbslq_s8(v73, v39, v92))), v57);
            v100 = vandq_s8(v97, v39);
            v101 = veorq_s8(v100, vsubq_f32(v89, v82));
            v102 = veorq_s8(v100, vsubq_f32(v93, v87));
            v103 = vandq_s8(v98, v39);
            v104 = vmlaq_f32(v82, v102, v82);
            v17 = vbslq_s8(v97, v39, vmulq_f32(v89, v93));
            *result = vbslq_s8(vcgtzq_f16(v62), v99, v60);
            result[1] = vbslq_s8(vcgtzq_f16(v61), vbslq_s8(vcgtzq_f16(v79), vcvt_hight_f16_f32(vcvt_f16_f32(vsubq_f32(vaddq_f32(v104, vmlaq_f32(v87, v101, v87)), v17)), vsubq_f32(vaddq_f32(vmlaq_f32(v83, veorq_s8(v103, vsubq_f32(v95, v85)), v83), vmlaq_f32(v85, veorq_s8(v103, vsubq_f32(v91, v83)), v85)), vbslq_s8(v98, v39, vmulq_f32(v91, v95)))), v58), v59);
            a10 += v30;
            v56 -= 4;
            result = (result + v36);
            a3 = (a3 + v36);
          }

          while (v56 > 3);
          v42 = v42 - v55 + v56;
LABEL_39:
          v34 = v319;
          v33 = v317;
          v32 = v318;
          goto LABEL_40;
        }

        if (v43)
        {
          break;
        }

        v44 = &a10[v42];
        v45 = a10;
        do
        {
          v46 = v45++;
        }

        while (v45 <= v44 && (vminvq_u8(vceqzq_s8(*v46)) & 0x80) != 0);
        do
        {
          v47 = v46;
          v46 = (v46 + 4);
        }

        while (v46 <= v44 && !v47->i32[0]);
        if (v47 < v44)
        {
          while (!v47->i8[0])
          {
            v47 = (v47 + 1);
            if (v47 >= v44)
            {
              v47 = &a10[v42];
              break;
            }
          }
        }

        v48 = v47 - a10;
        v49 = (v47 - a10) * a14;
        a3 = (a3 + 8 * v49);
        result = (result + 8 * v49);
        a10 += v49;
        v42 -= v48;
LABEL_40:
        if (v42 <= 3)
        {
          goto LABEL_43;
        }
      }

      v105 = 0;
      while (1)
      {
        v106 = (result + v105);
        v17.i32[0] = v43;
        v107 = vqtbl1q_s8(v17, xmmword_18439C7A0);
        v108 = vcvtq_f16_u16(vmovl_u8(*v107.i8));
        v109 = vdupq_n_s16(0x1C04u);
        v110 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v107)), v109);
        v111 = vmulq_f16(v108, v109);
        v112 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v111)), v40, *(result + v105));
        v113 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v110)), v40, *(&result[1] + v105));
        v114 = vmulq_f16(v110, vorrq_s8(vandq_s8(*(&a3[1] + v105), v23), v24));
        v115 = vmulq_f16(v111, vorrq_s8(vandq_s8(*(a3 + v105), v23), v24));
        v116 = vqtbl1q_s8(v115, xmmword_18439C6E0);
        v117 = vqtbl1q_s8(v114, xmmword_18439C6E0);
        v118 = vqtbl1q_s8(v113, xmmword_18439C6E0);
        v119 = vcvtq_f32_f16(*v114.i8);
        v120 = vcvt_hight_f32_f16(v114);
        v121 = vcvt_hight_f32_f16(v113);
        v122 = vcvtq_f32_f16(*v113.i8);
        v123 = vcvtq_f32_f16(*v117.i8);
        v124 = vcvt_hight_f32_f16(v117);
        v125 = vcvtq_f32_f16(*v118.i8);
        v126 = vcvt_hight_f32_f16(v118);
        v127 = vcgtq_f32(vmulq_f32(v125, v38), v122);
        v128 = vcgtq_f32(vmulq_f32(v126, v38), v121);
        v129 = vandq_s8(v127, v39);
        v130 = veorq_s8(v129, vsubq_f32(v123, v119));
        v131 = veorq_s8(v129, vsubq_f32(v125, v122));
        v132 = vandq_s8(v128, v39);
        v133 = veorq_s8(v132, vsubq_f32(v126, v121));
        v134 = vqtbl1q_s8(v112, xmmword_18439C6E0);
        v135 = vmlaq_f32(v121, veorq_s8(v132, vsubq_f32(v124, v120)), v121);
        v136 = vcvtq_f32_f16(*v115.i8);
        v137 = vcvt_hight_f32_f16(v115);
        v138 = vmlaq_f32(v120, v133, v120);
        v139 = vcvt_hight_f32_f16(v112);
        v140 = vmlaq_f32(v119, v131, v119);
        v141 = vcvtq_f32_f16(*v112.i8);
        v142 = vaddq_f32(v140, vmlaq_f32(v122, v130, v122));
        v143 = vcvtq_f32_f16(*v116.i8);
        v144 = vaddq_f32(v138, v135);
        v145 = vcvt_hight_f32_f16(v116);
        v146 = vmulq_f32(v124, v126);
        v147 = vcvtq_f32_f16(*v134.i8);
        v148 = vmulq_f32(v123, v125);
        v149 = vcvt_hight_f32_f16(v134);
        v150 = vbslq_s8(v127, v39, v148);
        v151 = vbslq_s8(v128, v39, v146);
        v152 = vcgtq_f32(vmulq_f32(v147, v38), v141);
        v153 = vcgtq_f32(vmulq_f32(v149, v38), v139);
        v154 = vbslq_s8(vcgtzq_f16(v118), vcvt_hight_f16_f32(vcvt_f16_f32(vsubq_f32(v142, v150)), vsubq_f32(v144, v151)), v114);
        v155 = vandq_s8(v152, v39);
        v156 = veorq_s8(v155, vsubq_f32(v143, v136));
        v157 = veorq_s8(v155, vsubq_f32(v147, v141));
        v158 = vandq_s8(v153, v39);
        v17 = vbslq_s8(v153, v39, vmulq_f32(v145, v149));
        *v106 = vbslq_s8(vcgtzq_f16(v116), vbslq_s8(vcgtzq_f16(v134), vcvt_hight_f16_f32(vcvt_f16_f32(vsubq_f32(vaddq_f32(vmlaq_f32(v136, v157, v136), vmlaq_f32(v141, v156, v141)), vbslq_s8(v152, v39, vmulq_f32(v143, v147)))), vsubq_f32(vaddq_f32(vmlaq_f32(v137, veorq_s8(v158, vsubq_f32(v149, v139)), v137), vmlaq_f32(v139, veorq_s8(v158, vsubq_f32(v145, v137)), v139)), v17)), v115), v112);
        v106[1] = vbslq_s8(vcgtzq_f16(v117), v154, v113);
        a10 += v30;
        v42 -= 4;
        if (v42 < 4)
        {
          break;
        }

        v43 = *a10;
        v105 += v36;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v105);
          a3 = (a3 + v105);
          goto LABEL_39;
        }
      }

      result = (result + v36 + v105);
      a3 = (a3 + v36 + v105);
      v34 = v319;
      v33 = v317;
      v32 = v318;
LABEL_43:
      for (i = a12 - v41 + v42; i; --i)
      {
        if (*a10)
        {
          v160 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
          v161 = vbsl_s8(vand_s8(v34, vcgtz_f16(v160)), 0x3C003C003C003C00, *result->i8);
          v162 = vmul_f16(v160, vorr_s8(vand_s8(*a3->i8, v32), v33));
          v163 = vdup_lane_s16(v162, 3);
          v164 = vdup_lane_s16(v161, 3);
          *v17.f32 = vcgtz_f16(v164);
          v165 = vcgtz_f16(v163);
          v166 = vcvtq_f32_f16(v162);
          v167 = vcvtq_f32_f16(v161);
          v168 = vcvtq_f32_f16(v163);
          v169 = vcvtq_f32_f16(v164);
          v170 = vcgtq_f32(vmulq_f32(v169, v38), v167);
          v171 = vandq_s8(v170, v39);
          *result->i8 = vbsl_s8(v165, vbsl_s8(*v17.f32, vcvt_f16_f32(vsubq_f32(vaddq_f32(vmlaq_f32(v166, veorq_s8(v171, vsubq_f32(v169, v167)), v166), vmlaq_f32(v167, veorq_s8(v171, vsubq_f32(v168, v166)), v167)), vbslq_s8(v170, v39, vmulq_f32(v169, v168)))), v162), v161);
        }

        v172 = &a3->i8[8 * a14];
        a10 += a14;
        if (v172 >= a8)
        {
          v173 = -a7;
        }

        else
        {
          v173 = 0;
        }

        a3 = &v172[8 * v173];
        result = (result + v37);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v174 = &a5->i64[a4];
      if (v174 >= a9)
      {
        v175 = v35;
      }

      else
      {
        v175 = 0;
      }

      v176 = &v174[v175];
      v177 = a8 + 8 * v175 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v176;
        a8 = v177;
        a5 = v176;
      }

      v178 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v178 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v179 = (a8 - a3) >> 3;
    if (v179 >= a12)
    {
      v179 = a12;
    }

    v180 = v179;
    if (v179 < 4)
    {
      goto LABEL_93;
    }

    while (1)
    {
      v181 = *a10;
      if (*a10 == -1)
      {
        v188 = &a10[v180];
        v189 = a10;
        v190.i64[0] = -1;
        v190.i64[1] = -1;
        do
        {
          v191 = v189++;
        }

        while (v189 <= v188 && (vminvq_u8(vceqq_s8(*v191, v190)) & 0x80) != 0);
        do
        {
          v192 = v191;
          v191 = (v191 + 4);
        }

        while (v191 <= v188 && v192->i32[0] == -1);
        if (v192 < v188)
        {
          while (v192->u8[0] == 255)
          {
            v192 = (v192 + 1);
            if (v192 >= v188)
            {
              v192 = &a10[v180];
              break;
            }
          }
        }

        v193 = v192 - a10;
        v194 = v192 - a10;
        do
        {
          v195 = vorrq_s8(vandq_s8(vrev16q_s8(a3[1]), v23), v24);
          v196 = vorrq_s8(vandq_s8(vrev16q_s8(*a3), v23), v24);
          v197 = vorrq_s8(vandq_s8(vrev16q_s8(*result), v28), v29);
          v198 = vorrq_s8(vandq_s8(vrev16q_s8(result[1]), v28), v29);
          v199 = vqtbl1q_s8(v196, xmmword_18439C6E0);
          v200 = vqtbl1q_s8(v195, xmmword_18439C6E0);
          v201 = vqtbl1q_s8(v198, xmmword_18439C6E0);
          v202 = vcvtq_f32_f16(*v195.i8);
          v203 = vcvt_hight_f32_f16(v195);
          v204 = vcvt_hight_f32_f16(v198);
          v205 = vcvtq_f32_f16(*v198.i8);
          v206 = vcvtq_f32_f16(*v200.i8);
          v207 = vcvt_hight_f32_f16(v200);
          v208 = vcvtq_f32_f16(*v201.i8);
          v209 = vcvt_hight_f32_f16(v201);
          v210 = vcgtq_f32(vmulq_f32(v208, v38), v205);
          v211 = vcgtq_f32(vmulq_f32(v209, v38), v204);
          v212 = vandq_s8(v210, v39);
          v213 = veorq_s8(v212, vsubq_f32(v206, v202));
          v214 = veorq_s8(v212, vsubq_f32(v208, v205));
          v215 = vandq_s8(v211, v39);
          v216 = veorq_s8(v215, vsubq_f32(v207, v203));
          v217 = veorq_s8(v215, vsubq_f32(v209, v204));
          v218 = vqtbl1q_s8(v197, xmmword_18439C6E0);
          v219 = vcvtq_f32_f16(*v196.i8);
          v220 = vmlaq_f32(v205, v213, v205);
          v221 = vcvt_hight_f32_f16(v196);
          v222 = vmlaq_f32(v203, v217, v203);
          v223 = vcvt_hight_f32_f16(v197);
          v224 = vmlaq_f32(v202, v214, v202);
          v225 = vcvtq_f32_f16(*v197.i8);
          v226 = vaddq_f32(v224, v220);
          v227 = vcvtq_f32_f16(*v199.i8);
          v228 = vaddq_f32(v222, vmlaq_f32(v204, v216, v204));
          v229 = vcvt_hight_f32_f16(v199);
          v230 = vmulq_f32(v207, v209);
          v231 = vcvtq_f32_f16(*v218.i8);
          v232 = vmulq_f32(v206, v208);
          v233 = vcvt_hight_f32_f16(v218);
          v234 = vbslq_s8(v210, v39, v232);
          v235 = vbslq_s8(v211, v39, v230);
          v236 = vcgtq_f32(vmulq_f32(v231, v38), v225);
          v237 = vcgtq_f32(vmulq_f32(v233, v38), v223);
          v238 = vbslq_s8(vcgtzq_f16(v201), vcvt_hight_f16_f32(vcvt_f16_f32(vsubq_f32(v226, v234)), vsubq_f32(v228, v235)), v195);
          v239 = vandq_s8(v236, v39);
          v240 = veorq_s8(v239, vsubq_f32(v227, v219));
          v241 = veorq_s8(v239, vsubq_f32(v231, v225));
          v242 = vandq_s8(v237, v39);
          v243 = vaddq_f32(vmlaq_f32(v219, v241, v219), vmlaq_f32(v225, v240, v225));
          v17 = vbslq_s8(v236, v39, vmulq_f32(v227, v231));
          *result = vrev16q_s8(vbslq_s8(vcgtzq_f16(v199), vbslq_s8(vcgtzq_f16(v218), vcvt_hight_f16_f32(vcvt_f16_f32(vsubq_f32(v243, v17)), vsubq_f32(vaddq_f32(vmlaq_f32(v221, veorq_s8(v242, vsubq_f32(v233, v223)), v221), vmlaq_f32(v223, veorq_s8(v242, vsubq_f32(v229, v221)), v223)), vbslq_s8(v237, v39, vmulq_f32(v229, v233)))), v196), v197));
          result[1] = vrev16q_s8(vbslq_s8(vcgtzq_f16(v200), v238, v198));
          a10 += v30;
          v194 -= 4;
          result = (result + v36);
          a3 = (a3 + v36);
        }

        while (v194 > 3);
        v180 = v180 - v193 + v194;
LABEL_89:
        v34 = v319;
        v33 = v317;
        v32 = v318;
        goto LABEL_90;
      }

      if (v181)
      {
        break;
      }

      v182 = &a10[v180];
      v183 = a10;
      do
      {
        v184 = v183++;
      }

      while (v183 <= v182 && (vminvq_u8(vceqzq_s8(*v184)) & 0x80) != 0);
      do
      {
        v185 = v184;
        v184 = (v184 + 4);
      }

      while (v184 <= v182 && !v185->i32[0]);
      if (v185 < v182)
      {
        while (!v185->i8[0])
        {
          v185 = (v185 + 1);
          if (v185 >= v182)
          {
            v185 = &a10[v180];
            break;
          }
        }
      }

      v186 = v185 - a10;
      v187 = (v185 - a10) * a14;
      a3 = (a3 + 8 * v187);
      result = (result + 8 * v187);
      a10 += v187;
      v180 -= v186;
LABEL_90:
      if (v180 <= 3)
      {
        goto LABEL_93;
      }
    }

    v244 = 0;
    while (1)
    {
      v245 = (result + v244);
      v17.i32[0] = v181;
      v246 = vqtbl1q_s8(v17, xmmword_18439C7A0);
      v247 = vcvtq_f16_u16(vmovl_high_u8(v246));
      v248 = vdupq_n_s16(0x1C04u);
      v249 = vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v246.i8)), v248);
      v250 = vmulq_f16(v247, v248);
      v251 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v250)), v40, vrev16q_s8(*(&result[1] + v244)));
      v252 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v249)), v40, vrev16q_s8(*(result + v244)));
      v253 = vmulq_f16(v249, vorrq_s8(vandq_s8(vrev16q_s8(*(a3 + v244)), v23), v24));
      v254 = vmulq_f16(v250, vorrq_s8(vandq_s8(vrev16q_s8(*(&a3[1] + v244)), v23), v24));
      v255 = vqtbl1q_s8(v254, xmmword_18439C6E0);
      v256 = vqtbl1q_s8(v253, xmmword_18439C6E0);
      v257 = vqtbl1q_s8(v252, xmmword_18439C6E0);
      v258 = vcvtq_f32_f16(*v253.i8);
      v259 = vcvt_hight_f32_f16(v253);
      v260 = vcvt_hight_f32_f16(v252);
      v261 = vcvtq_f32_f16(*v252.i8);
      v262 = vcvtq_f32_f16(*v256.i8);
      v263 = vcvt_hight_f32_f16(v256);
      v264 = vcvtq_f32_f16(*v257.i8);
      v265 = vcvt_hight_f32_f16(v257);
      v266 = vcgtq_f32(vmulq_f32(v264, v38), v261);
      v267 = vcgtq_f32(vmulq_f32(v265, v38), v260);
      v268 = vandq_s8(v266, v39);
      v269 = veorq_s8(v268, vsubq_f32(v262, v258));
      v270 = veorq_s8(v268, vsubq_f32(v264, v261));
      v271 = vandq_s8(v267, v39);
      v272 = veorq_s8(v271, vsubq_f32(v265, v260));
      v273 = vqtbl1q_s8(v251, xmmword_18439C6E0);
      v274 = vmlaq_f32(v260, veorq_s8(v271, vsubq_f32(v263, v259)), v260);
      v275 = vcvtq_f32_f16(*v254.i8);
      v276 = vcvt_hight_f32_f16(v254);
      v277 = vmlaq_f32(v259, v272, v259);
      v278 = vcvt_hight_f32_f16(v251);
      v279 = vmlaq_f32(v258, v270, v258);
      v280 = vcvtq_f32_f16(*v251.i8);
      v281 = vaddq_f32(v279, vmlaq_f32(v261, v269, v261));
      v282 = vcvtq_f32_f16(*v255.i8);
      v283 = vaddq_f32(v277, v274);
      v284 = vcvt_hight_f32_f16(v255);
      v285 = vmulq_f32(v263, v265);
      v286 = vcvtq_f32_f16(*v273.i8);
      v287 = vmulq_f32(v262, v264);
      v288 = vcvt_hight_f32_f16(v273);
      v289 = vbslq_s8(v266, v39, v287);
      v290 = vbslq_s8(v267, v39, v285);
      v291 = vcgtq_f32(vmulq_f32(v286, v38), v280);
      v292 = vcgtq_f32(vmulq_f32(v288, v38), v278);
      v293 = vbslq_s8(vcgtzq_f16(v257), vcvt_hight_f16_f32(vcvt_f16_f32(vsubq_f32(v281, v289)), vsubq_f32(v283, v290)), v253);
      v294 = vandq_s8(v291, v39);
      v295 = veorq_s8(v294, vsubq_f32(v282, v275));
      v296 = veorq_s8(v294, vsubq_f32(v286, v280));
      v297 = vandq_s8(v292, v39);
      v17 = vbslq_s8(v292, v39, vmulq_f32(v284, v288));
      *v245 = vrev16q_s8(vbslq_s8(vcgtzq_f16(v256), v293, v252));
      v245[1] = vrev16q_s8(vbslq_s8(vcgtzq_f16(v255), vbslq_s8(vcgtzq_f16(v273), vcvt_hight_f16_f32(vcvt_f16_f32(vsubq_f32(vaddq_f32(vmlaq_f32(v275, v296, v275), vmlaq_f32(v280, v295, v280)), vbslq_s8(v291, v39, vmulq_f32(v282, v286)))), vsubq_f32(vaddq_f32(vmlaq_f32(v276, veorq_s8(v297, vsubq_f32(v288, v278)), v276), vmlaq_f32(v278, veorq_s8(v297, vsubq_f32(v284, v276)), v278)), v17)), v254), v251));
      a10 += v30;
      v180 -= 4;
      if (v180 < 4)
      {
        break;
      }

      v181 = *a10;
      v244 += v36;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v244);
        a3 = (a3 + v244);
        goto LABEL_89;
      }
    }

    result = (result + v36 + v244);
    a3 = (a3 + v36 + v244);
    v34 = v319;
    v33 = v317;
    v32 = v318;
LABEL_93:
    for (j = a12 - v179 + v180; j; --j)
    {
      if (*a10)
      {
        v299 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
        v300 = vbsl_s8(vand_s8(v34, vcgtz_f16(v299)), 0x3C003C003C003C00, vrev16_s8(*result->i8));
        v301 = vmul_f16(v299, vorr_s8(vand_s8(vrev16_s8(*a3->i8), v32), v33));
        v302 = vdup_lane_s16(v301, 3);
        v303 = vdup_lane_s16(v300, 3);
        *v17.f32 = vcgtz_f16(v303);
        v304 = vcgtz_f16(v302);
        v305 = vcvtq_f32_f16(v301);
        v306 = vcvtq_f32_f16(v300);
        v307 = vcvtq_f32_f16(v302);
        v308 = vcvtq_f32_f16(v303);
        v309 = vcgtq_f32(vmulq_f32(v308, v38), v306);
        v310 = vandq_s8(v309, v39);
        *result->i8 = vrev16_s8(vbsl_s8(v304, vbsl_s8(*v17.f32, vcvt_f16_f32(vsubq_f32(vaddq_f32(vmlaq_f32(v305, veorq_s8(v310, vsubq_f32(v308, v306)), v305), vmlaq_f32(v306, veorq_s8(v310, vsubq_f32(v307, v305)), v306)), vbslq_s8(v309, v39, vmulq_f32(v308, v307)))), v301), v300));
      }

      v311 = &a3->i8[8 * a14];
      a10 += a14;
      if (v311 >= a8)
      {
        v312 = -a7;
      }

      else
      {
        v312 = 0;
      }

      a3 = &v311[8 * v312];
      result = (result + v37);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v313 = &a5->i64[a4];
    if (v313 >= a9)
    {
      v314 = v35;
    }

    else
    {
      v314 = 0;
    }

    v315 = &v313[v314];
    v316 = a8 + 8 * v314 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v315;
      a8 = v316;
      a5 = v315;
    }

    v178 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v178 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)17,_rgbaf16_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  v21 = vdupq_n_s16(v20);
  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vmvnq_s8(vandq_s8(v21, v22));
  v24 = vandq_s8(v21, xmmword_18439CFA0);
  if (a15)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vdupq_n_s16(v25);
  v27 = vandq_s8(v26, v22);
  v28 = vmvnq_s8(v27);
  v29 = vandq_s8(v26, xmmword_18439CFA0);
  v30 = 4 * a14;
  v34 = 0;
  v31 = 0;
  v31.i16[3] = v20;
  v32 = vmvn_s8(v31);
  v33 = vand_s8(*v21.i8, 0x3C00000000000000);
  v34.i16[3] = v25;
  v35 = -(a6 * a4);
  v36 = 8 * v30;
  v37 = 8 * a14;
  v38.i64[0] = -1;
  v38.i64[1] = -1;
  v39 = vdupq_n_s16(0x1C04u);
  v40.i64[0] = 0x3C003C003C003C00;
  v40.i64[1] = 0x3C003C003C003C00;
  if ((a17 & 0x30) != 0)
  {
    while (1)
    {
      v41 = (a8 - a3) >> 3;
      if (v41 >= a12)
      {
        v41 = a12;
      }

      v42 = v41;
      if (v41 < 4)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v43 = *a10;
        if (*a10 == -1)
        {
          v50 = &a10[v42];
          v51 = a10;
          do
          {
            v52 = v51++;
          }

          while (v51 <= v50 && (vminvq_u8(vceqq_s8(*v52, v38)) & 0x80) != 0);
          do
          {
            v53 = v52;
            v52 = (v52 + 4);
          }

          while (v52 <= v50 && v53->i32[0] == -1);
          if (v53 < v50)
          {
            while (v53->u8[0] == 255)
            {
              v53 = (v53 + 1);
              if (v53 >= v50)
              {
                v53 = &a10[v42];
                break;
              }
            }
          }

          v54 = v53 - a10;
          v55 = v53 - a10;
          do
          {
            v56 = vorrq_s8(vandq_s8(a3[1], v23), v24);
            v57 = vqtbl1q_s8(v56, xmmword_18439C6E0);
            v58 = vorrq_s8(vandq_s8(*a3, v23), v24);
            v59 = vqtbl1q_s8(v58, xmmword_18439C6E0);
            v60 = vorrq_s8(vandq_s8(*result, v28), v29);
            v61 = vqtbl1q_s8(v60, xmmword_18439C6E0);
            v62 = vorrq_s8(vandq_s8(result[1], v28), v29);
            v63 = vqtbl1q_s8(v62, xmmword_18439C6E0);
            v64 = vcgtzq_f16(v59);
            v65 = vcgtzq_f16(v57);
            v66 = vmaxnmq_f16(vmulq_f16(v59, v60), vmulq_f16(v61, v58));
            v67 = vmlsq_f16(v60, v60, v59);
            v68 = vaddq_f16(vmaxnmq_f16(vmulq_f16(v57, v62), vmulq_f16(v63, v56)), vmlsq_f16(v62, v62, v57));
            v17 = vaddq_f16(vmlsq_f16(v58, v58, v61), vaddq_f16(v66, v67));
            *result = vbslq_s8(v64, vbslq_s8(vcgtzq_f16(v61), v17, v58), v60);
            result[1] = vbslq_s8(v65, vbslq_s8(vcgtzq_f16(v63), vaddq_f16(vmlsq_f16(v56, v56, v63), v68), v56), v62);
            a10 += v30;
            v55 -= 4;
            result = (result + v36);
            a3 = (a3 + v36);
          }

          while (v55 > 3);
          v42 = v42 - v54 + v55;
          goto LABEL_39;
        }

        if (v43)
        {
          break;
        }

        v44 = &a10[v42];
        v45 = a10;
        do
        {
          v46 = v45++;
        }

        while (v45 <= v44 && (vminvq_u8(vceqzq_s8(*v46)) & 0x80) != 0);
        do
        {
          v47 = v46;
          v46 = (v46 + 4);
        }

        while (v46 <= v44 && !v47->i32[0]);
        if (v47 < v44)
        {
          while (!v47->i8[0])
          {
            v47 = (v47 + 1);
            if (v47 >= v44)
            {
              v47 = &a10[v42];
              break;
            }
          }
        }

        v48 = v47 - a10;
        v49 = (v47 - a10) * a14;
        a3 = (a3 + 8 * v49);
        result = (result + 8 * v49);
        a10 += v49;
        v42 -= v48;
LABEL_39:
        if (v42 <= 3)
        {
          goto LABEL_42;
        }
      }

      v69 = 0;
      while (1)
      {
        v70 = (result + v69);
        v17.i32[0] = v43;
        v71 = vqtbl1q_s8(v17, xmmword_18439C7A0);
        v72 = vcvtq_f16_u16(vmovl_u8(*v71.i8));
        v73 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v71)), v39);
        v74 = vmulq_f16(v72, v39);
        v75 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v74)), v40, *(result + v69));
        v76 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v73)), v40, *(&result[1] + v69));
        v77 = vmulq_f16(v73, vorrq_s8(vandq_s8(*(&a3[1] + v69), v23), v24));
        v78 = vmulq_f16(v74, vorrq_s8(vandq_s8(*(a3 + v69), v23), v24));
        v79 = vqtbl1q_s8(v78, xmmword_18439C6E0);
        v80 = vqtbl1q_s8(v77, xmmword_18439C6E0);
        v81 = vqtbl1q_s8(v76, xmmword_18439C6E0);
        v82 = vqtbl1q_s8(v75, xmmword_18439C6E0);
        v83 = vcgtzq_f16(v79);
        v84 = vmaxnmq_f16(vmulq_f16(v79, v75), vmulq_f16(v78, v82));
        v85 = vmlsq_f16(v75, v75, v79);
        v17 = vaddq_f16(vmlsq_f16(v77, v77, v81), vaddq_f16(vmaxnmq_f16(vmulq_f16(v80, v76), vmulq_f16(v77, v81)), vmlsq_f16(v76, v76, v80)));
        *v70 = vbslq_s8(v83, vbslq_s8(vcgtzq_f16(v82), vaddq_f16(vmlsq_f16(v78, v78, v82), vaddq_f16(v84, v85)), v78), v75);
        v70[1] = vbslq_s8(vcgtzq_f16(v80), vbslq_s8(vcgtzq_f16(v81), v17, v77), v76);
        a10 += v30;
        v42 -= 4;
        if (v42 < 4)
        {
          break;
        }

        v43 = *a10;
        v69 += v36;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v69);
          a3 = (a3 + v69);
          goto LABEL_39;
        }
      }

      result = (result + v36 + v69);
      a3 = (a3 + v36 + v69);
LABEL_42:
      for (i = a12 - v41 + v42; i; --i)
      {
        if (*a10)
        {
          v87 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
          v88 = vbsl_s8(vand_s8(v34, vcgtz_f16(v87)), 0x3C003C003C003C00, *result->i8);
          v89 = vmul_f16(v87, vorr_s8(vand_s8(*a3->i8, v32), v33));
          *result->i8 = vbsl_s8(vcgtz_f16(vdup_lane_s16(v89, 3)), vbsl_s8(vcgtz_f16(vdup_lane_s16(v88, 3)), vadd_f16(vmls_lane_f16(v89, v89, v88, 3), vadd_f16(vmaxnm_f16(vmul_lane_f16(v88, v89, 3), vmul_lane_f16(v89, v88, 3)), vmls_lane_f16(v88, v88, v89, 3))), v89), v88);
        }

        v90 = &a3->i8[8 * a14];
        a10 += a14;
        if (v90 >= a8)
        {
          v91 = -a7;
        }

        else
        {
          v91 = 0;
        }

        a3 = &v90[8 * v91];
        result = (result + v37);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v92 = &a5->i64[a4];
      if (v92 >= a9)
      {
        v93 = v35;
      }

      else
      {
        v93 = 0;
      }

      v94 = &v92[v93];
      v95 = a8 + 8 * v93 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v94;
        a8 = v95;
        a5 = v94;
      }

      v96 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v96 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v97 = (a8 - a3) >> 3;
    if (v97 >= a12)
    {
      v97 = a12;
    }

    v98 = v97;
    if (v97 < 4)
    {
      goto LABEL_91;
    }

    while (1)
    {
      v99 = *a10;
      if (*a10 == -1)
      {
        v106 = &a10[v98];
        v107 = a10;
        do
        {
          v108 = v107++;
        }

        while (v107 <= v106 && (vminvq_u8(vceqq_s8(*v108, v38)) & 0x80) != 0);
        do
        {
          v109 = v108;
          v108 = (v108 + 4);
        }

        while (v108 <= v106 && v109->i32[0] == -1);
        if (v109 < v106)
        {
          while (v109->u8[0] == 255)
          {
            v109 = (v109 + 1);
            if (v109 >= v106)
            {
              v109 = &a10[v98];
              break;
            }
          }
        }

        v110 = v109 - a10;
        v111 = v109 - a10;
        do
        {
          v112 = vorrq_s8(vandq_s8(vrev16q_s8(*a3), v23), v24);
          v113 = vqtbl1q_s8(v112, xmmword_18439C6E0);
          v114 = vorrq_s8(vandq_s8(vrev16q_s8(a3[1]), v23), v24);
          v115 = vqtbl1q_s8(v114, xmmword_18439C6E0);
          v116 = vorrq_s8(vandq_s8(vrev16q_s8(result[1]), v28), v29);
          v117 = vqtbl1q_s8(v116, xmmword_18439C6E0);
          v118 = vorrq_s8(vandq_s8(vrev16q_s8(*result), v28), v29);
          v119 = vqtbl1q_s8(v118, xmmword_18439C6E0);
          v120 = vcgtzq_f16(v113);
          v121 = vmaxnmq_f16(vmulq_f16(v113, v118), vmulq_f16(v119, v112));
          v122 = vmlsq_f16(v118, v118, v113);
          v17 = vaddq_f16(vmlsq_f16(v114, v114, v117), vaddq_f16(vmaxnmq_f16(vmulq_f16(v115, v116), vmulq_f16(v117, v114)), vmlsq_f16(v116, v116, v115)));
          *result = vrev16q_s8(vbslq_s8(v120, vbslq_s8(vcgtzq_f16(v119), vaddq_f16(vmlsq_f16(v112, v112, v119), vaddq_f16(v121, v122)), v112), v118));
          result[1] = vrev16q_s8(vbslq_s8(vcgtzq_f16(v115), vbslq_s8(vcgtzq_f16(v117), v17, v114), v116));
          a10 += v30;
          v111 -= 4;
          result = (result + v36);
          a3 = (a3 + v36);
        }

        while (v111 > 3);
        v98 = v98 - v110 + v111;
        goto LABEL_88;
      }

      if (v99)
      {
        break;
      }

      v100 = &a10[v98];
      v101 = a10;
      do
      {
        v102 = v101++;
      }

      while (v101 <= v100 && (vminvq_u8(vceqzq_s8(*v102)) & 0x80) != 0);
      do
      {
        v103 = v102;
        v102 = (v102 + 4);
      }

      while (v102 <= v100 && !v103->i32[0]);
      if (v103 < v100)
      {
        while (!v103->i8[0])
        {
          v103 = (v103 + 1);
          if (v103 >= v100)
          {
            v103 = &a10[v98];
            break;
          }
        }
      }

      v104 = v103 - a10;
      v105 = (v103 - a10) * a14;
      a3 = (a3 + 8 * v105);
      result = (result + 8 * v105);
      a10 += v105;
      v98 -= v104;
LABEL_88:
      if (v98 <= 3)
      {
        goto LABEL_91;
      }
    }

    v123 = 0;
    while (1)
    {
      v124 = (result + v123);
      v17.i32[0] = v99;
      v125 = vqtbl1q_s8(v17, xmmword_18439C7A0);
      v126 = vcvtq_f16_u16(vmovl_high_u8(v125));
      v127 = vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v125.i8)), v39);
      v128 = vmulq_f16(v126, v39);
      v129 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v128)), v40, vrev16q_s8(*(&result[1] + v123)));
      v130 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v127)), v40, vrev16q_s8(*(result + v123)));
      v131 = vmulq_f16(v127, vorrq_s8(vandq_s8(vrev16q_s8(*(a3 + v123)), v23), v24));
      v132 = vmulq_f16(v128, vorrq_s8(vandq_s8(vrev16q_s8(*(&a3[1] + v123)), v23), v24));
      v133 = vqtbl1q_s8(v132, xmmword_18439C6E0);
      v134 = vqtbl1q_s8(v131, xmmword_18439C6E0);
      v135 = vqtbl1q_s8(v130, xmmword_18439C6E0);
      v136 = vqtbl1q_s8(v129, xmmword_18439C6E0);
      v137 = vcgtzq_f16(v134);
      v138 = vcgtzq_f16(v133);
      v139 = vmaxnmq_f16(vmulq_f16(v134, v130), vmulq_f16(v131, v135));
      v140 = vmlsq_f16(v130, v130, v134);
      v141 = vaddq_f16(vmaxnmq_f16(vmulq_f16(v133, v129), vmulq_f16(v132, v136)), vmlsq_f16(v129, v129, v133));
      v17 = vaddq_f16(vmlsq_f16(v131, v131, v135), vaddq_f16(v139, v140));
      *v124 = vrev16q_s8(vbslq_s8(v137, vbslq_s8(vcgtzq_f16(v135), v17, v131), v130));
      v124[1] = vrev16q_s8(vbslq_s8(v138, vbslq_s8(vcgtzq_f16(v136), vaddq_f16(vmlsq_f16(v132, v132, v136), v141), v132), v129));
      a10 += v30;
      v98 -= 4;
      if (v98 < 4)
      {
        break;
      }

      v99 = *a10;
      v123 += v36;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v123);
        a3 = (a3 + v123);
        goto LABEL_88;
      }
    }

    result = (result + v36 + v123);
    a3 = (a3 + v36 + v123);
LABEL_91:
    for (j = a12 - v97 + v98; j; --j)
    {
      if (*a10)
      {
        v143 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
        v144 = vmul_f16(v143, vorr_s8(vand_s8(vrev16_s8(*a3->i8), v32), v33));
        v145 = vbsl_s8(vand_s8(v34, vcgtz_f16(v143)), 0x3C003C003C003C00, vrev16_s8(*result->i8));
        *result->i8 = vrev16_s8(vbsl_s8(vcgtz_f16(vdup_lane_s16(v144, 3)), vbsl_s8(vcgtz_f16(vdup_lane_s16(v145, 3)), vadd_f16(vmls_lane_f16(v144, v144, v145, 3), vadd_f16(vmaxnm_f16(vmul_lane_f16(v145, v144, 3), vmul_lane_f16(v144, v145, 3)), vmls_lane_f16(v145, v145, v144, 3))), v144), v145));
      }

      v146 = &a3->i8[8 * a14];
      a10 += a14;
      if (v146 >= a8)
      {
        v147 = -a7;
      }

      else
      {
        v147 = 0;
      }

      a3 = &v146[8 * v147];
      result = (result + v37);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v148 = &a5->i64[a4];
    if (v148 >= a9)
    {
      v149 = v35;
    }

    else
    {
      v149 = 0;
    }

    v150 = &v148[v149];
    v151 = a8 + 8 * v149 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v150;
      a8 = v151;
      a5 = v150;
    }

    v96 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v96 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)16,_rgbaf16_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  v21 = vdupq_n_s16(v20);
  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vmvnq_s8(vandq_s8(v21, v22));
  v24 = vandq_s8(v21, xmmword_18439CFA0);
  if (a15)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vdupq_n_s16(v25);
  v27 = vandq_s8(v26, v22);
  v28 = vmvnq_s8(v27);
  v29 = vandq_s8(v26, xmmword_18439CFA0);
  v30 = 4 * a14;
  v34 = 0;
  v31 = 0;
  v31.i16[3] = v20;
  v32 = vmvn_s8(v31);
  v33 = vand_s8(*v21.i8, 0x3C00000000000000);
  v34.i16[3] = v25;
  v35 = -(a6 * a4);
  v36 = 8 * v30;
  v37 = 8 * a14;
  v38.i64[0] = -1;
  v38.i64[1] = -1;
  v39 = vdupq_n_s16(0x1C04u);
  v40.i64[0] = 0x3C003C003C003C00;
  v40.i64[1] = 0x3C003C003C003C00;
  if ((a17 & 0x30) != 0)
  {
    while (1)
    {
      v41 = (a8 - a3) >> 3;
      if (v41 >= a12)
      {
        v41 = a12;
      }

      v42 = v41;
      if (v41 < 4)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v43 = *a10;
        if (*a10 == -1)
        {
          v50 = &a10[v42];
          v51 = a10;
          do
          {
            v52 = v51++;
          }

          while (v51 <= v50 && (vminvq_u8(vceqq_s8(*v52, v38)) & 0x80) != 0);
          do
          {
            v53 = v52;
            v52 = (v52 + 4);
          }

          while (v52 <= v50 && v53->i32[0] == -1);
          if (v53 < v50)
          {
            while (v53->u8[0] == 255)
            {
              v53 = (v53 + 1);
              if (v53 >= v50)
              {
                v53 = &a10[v42];
                break;
              }
            }
          }

          v54 = v53 - a10;
          v55 = v53 - a10;
          do
          {
            v56 = vorrq_s8(vandq_s8(a3[1], v23), v24);
            v57 = vqtbl1q_s8(v56, xmmword_18439C6E0);
            v58 = vorrq_s8(vandq_s8(*a3, v23), v24);
            v59 = vqtbl1q_s8(v58, xmmword_18439C6E0);
            v60 = vorrq_s8(vandq_s8(*result, v28), v29);
            v61 = vqtbl1q_s8(v60, xmmword_18439C6E0);
            v62 = vorrq_s8(vandq_s8(result[1], v28), v29);
            v63 = vqtbl1q_s8(v62, xmmword_18439C6E0);
            v64 = vcgtzq_f16(v59);
            v65 = vcgtzq_f16(v57);
            v66 = vminnmq_f16(vmulq_f16(v59, v60), vmulq_f16(v61, v58));
            v67 = vmlsq_f16(v60, v60, v59);
            v68 = vaddq_f16(vminnmq_f16(vmulq_f16(v57, v62), vmulq_f16(v63, v56)), vmlsq_f16(v62, v62, v57));
            v17 = vaddq_f16(vmlsq_f16(v58, v58, v61), vaddq_f16(v66, v67));
            *result = vbslq_s8(v64, vbslq_s8(vcgtzq_f16(v61), v17, v58), v60);
            result[1] = vbslq_s8(v65, vbslq_s8(vcgtzq_f16(v63), vaddq_f16(vmlsq_f16(v56, v56, v63), v68), v56), v62);
            a10 += v30;
            v55 -= 4;
            result = (result + v36);
            a3 = (a3 + v36);
          }

          while (v55 > 3);
          v42 = v42 - v54 + v55;
          goto LABEL_39;
        }

        if (v43)
        {
          break;
        }

        v44 = &a10[v42];
        v45 = a10;
        do
        {
          v46 = v45++;
        }

        while (v45 <= v44 && (vminvq_u8(vceqzq_s8(*v46)) & 0x80) != 0);
        do
        {
          v47 = v46;
          v46 = (v46 + 4);
        }

        while (v46 <= v44 && !v47->i32[0]);
        if (v47 < v44)
        {
          while (!v47->i8[0])
          {
            v47 = (v47 + 1);
            if (v47 >= v44)
            {
              v47 = &a10[v42];
              break;
            }
          }
        }

        v48 = v47 - a10;
        v49 = (v47 - a10) * a14;
        a3 = (a3 + 8 * v49);
        result = (result + 8 * v49);
        a10 += v49;
        v42 -= v48;
LABEL_39:
        if (v42 <= 3)
        {
          goto LABEL_42;
        }
      }

      v69 = 0;
      while (1)
      {
        v70 = (result + v69);
        v17.i32[0] = v43;
        v71 = vqtbl1q_s8(v17, xmmword_18439C7A0);
        v72 = vcvtq_f16_u16(vmovl_u8(*v71.i8));
        v73 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v71)), v39);
        v74 = vmulq_f16(v72, v39);
        v75 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v74)), v40, *(result + v69));
        v76 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v73)), v40, *(&result[1] + v69));
        v77 = vmulq_f16(v73, vorrq_s8(vandq_s8(*(&a3[1] + v69), v23), v24));
        v78 = vmulq_f16(v74, vorrq_s8(vandq_s8(*(a3 + v69), v23), v24));
        v79 = vqtbl1q_s8(v78, xmmword_18439C6E0);
        v80 = vqtbl1q_s8(v77, xmmword_18439C6E0);
        v81 = vqtbl1q_s8(v76, xmmword_18439C6E0);
        v82 = vqtbl1q_s8(v75, xmmword_18439C6E0);
        v83 = vcgtzq_f16(v79);
        v84 = vminnmq_f16(vmulq_f16(v79, v75), vmulq_f16(v78, v82));
        v85 = vmlsq_f16(v75, v75, v79);
        v17 = vaddq_f16(vmlsq_f16(v77, v77, v81), vaddq_f16(vminnmq_f16(vmulq_f16(v80, v76), vmulq_f16(v77, v81)), vmlsq_f16(v76, v76, v80)));
        *v70 = vbslq_s8(v83, vbslq_s8(vcgtzq_f16(v82), vaddq_f16(vmlsq_f16(v78, v78, v82), vaddq_f16(v84, v85)), v78), v75);
        v70[1] = vbslq_s8(vcgtzq_f16(v80), vbslq_s8(vcgtzq_f16(v81), v17, v77), v76);
        a10 += v30;
        v42 -= 4;
        if (v42 < 4)
        {
          break;
        }

        v43 = *a10;
        v69 += v36;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v69);
          a3 = (a3 + v69);
          goto LABEL_39;
        }
      }

      result = (result + v36 + v69);
      a3 = (a3 + v36 + v69);
LABEL_42:
      for (i = a12 - v41 + v42; i; --i)
      {
        if (*a10)
        {
          v87 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
          v88 = vbsl_s8(vand_s8(v34, vcgtz_f16(v87)), 0x3C003C003C003C00, *result->i8);
          v89 = vmul_f16(v87, vorr_s8(vand_s8(*a3->i8, v32), v33));
          *result->i8 = vbsl_s8(vcgtz_f16(vdup_lane_s16(v89, 3)), vbsl_s8(vcgtz_f16(vdup_lane_s16(v88, 3)), vadd_f16(vmls_lane_f16(v89, v89, v88, 3), vadd_f16(vminnm_f16(vmul_lane_f16(v88, v89, 3), vmul_lane_f16(v89, v88, 3)), vmls_lane_f16(v88, v88, v89, 3))), v89), v88);
        }

        v90 = &a3->i8[8 * a14];
        a10 += a14;
        if (v90 >= a8)
        {
          v91 = -a7;
        }

        else
        {
          v91 = 0;
        }

        a3 = &v90[8 * v91];
        result = (result + v37);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v92 = &a5->i64[a4];
      if (v92 >= a9)
      {
        v93 = v35;
      }

      else
      {
        v93 = 0;
      }

      v94 = &v92[v93];
      v95 = a8 + 8 * v93 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v94;
        a8 = v95;
        a5 = v94;
      }

      v96 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v96 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v97 = (a8 - a3) >> 3;
    if (v97 >= a12)
    {
      v97 = a12;
    }

    v98 = v97;
    if (v97 < 4)
    {
      goto LABEL_91;
    }

    while (1)
    {
      v99 = *a10;
      if (*a10 == -1)
      {
        v106 = &a10[v98];
        v107 = a10;
        do
        {
          v108 = v107++;
        }

        while (v107 <= v106 && (vminvq_u8(vceqq_s8(*v108, v38)) & 0x80) != 0);
        do
        {
          v109 = v108;
          v108 = (v108 + 4);
        }

        while (v108 <= v106 && v109->i32[0] == -1);
        if (v109 < v106)
        {
          while (v109->u8[0] == 255)
          {
            v109 = (v109 + 1);
            if (v109 >= v106)
            {
              v109 = &a10[v98];
              break;
            }
          }
        }

        v110 = v109 - a10;
        v111 = v109 - a10;
        do
        {
          v112 = vorrq_s8(vandq_s8(vrev16q_s8(*a3), v23), v24);
          v113 = vqtbl1q_s8(v112, xmmword_18439C6E0);
          v114 = vorrq_s8(vandq_s8(vrev16q_s8(a3[1]), v23), v24);
          v115 = vqtbl1q_s8(v114, xmmword_18439C6E0);
          v116 = vorrq_s8(vandq_s8(vrev16q_s8(result[1]), v28), v29);
          v117 = vqtbl1q_s8(v116, xmmword_18439C6E0);
          v118 = vorrq_s8(vandq_s8(vrev16q_s8(*result), v28), v29);
          v119 = vqtbl1q_s8(v118, xmmword_18439C6E0);
          v120 = vcgtzq_f16(v113);
          v121 = vminnmq_f16(vmulq_f16(v113, v118), vmulq_f16(v119, v112));
          v122 = vmlsq_f16(v118, v118, v113);
          v17 = vaddq_f16(vmlsq_f16(v114, v114, v117), vaddq_f16(vminnmq_f16(vmulq_f16(v115, v116), vmulq_f16(v117, v114)), vmlsq_f16(v116, v116, v115)));
          *result = vrev16q_s8(vbslq_s8(v120, vbslq_s8(vcgtzq_f16(v119), vaddq_f16(vmlsq_f16(v112, v112, v119), vaddq_f16(v121, v122)), v112), v118));
          result[1] = vrev16q_s8(vbslq_s8(vcgtzq_f16(v115), vbslq_s8(vcgtzq_f16(v117), v17, v114), v116));
          a10 += v30;
          v111 -= 4;
          result = (result + v36);
          a3 = (a3 + v36);
        }

        while (v111 > 3);
        v98 = v98 - v110 + v111;
        goto LABEL_88;
      }

      if (v99)
      {
        break;
      }

      v100 = &a10[v98];
      v101 = a10;
      do
      {
        v102 = v101++;
      }

      while (v101 <= v100 && (vminvq_u8(vceqzq_s8(*v102)) & 0x80) != 0);
      do
      {
        v103 = v102;
        v102 = (v102 + 4);
      }

      while (v102 <= v100 && !v103->i32[0]);
      if (v103 < v100)
      {
        while (!v103->i8[0])
        {
          v103 = (v103 + 1);
          if (v103 >= v100)
          {
            v103 = &a10[v98];
            break;
          }
        }
      }

      v104 = v103 - a10;
      v105 = (v103 - a10) * a14;
      a3 = (a3 + 8 * v105);
      result = (result + 8 * v105);
      a10 += v105;
      v98 -= v104;
LABEL_88:
      if (v98 <= 3)
      {
        goto LABEL_91;
      }
    }

    v123 = 0;
    while (1)
    {
      v124 = (result + v123);
      v17.i32[0] = v99;
      v125 = vqtbl1q_s8(v17, xmmword_18439C7A0);
      v126 = vcvtq_f16_u16(vmovl_high_u8(v125));
      v127 = vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v125.i8)), v39);
      v128 = vmulq_f16(v126, v39);
      v129 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v128)), v40, vrev16q_s8(*(&result[1] + v123)));
      v130 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v127)), v40, vrev16q_s8(*(result + v123)));
      v131 = vmulq_f16(v127, vorrq_s8(vandq_s8(vrev16q_s8(*(a3 + v123)), v23), v24));
      v132 = vmulq_f16(v128, vorrq_s8(vandq_s8(vrev16q_s8(*(&a3[1] + v123)), v23), v24));
      v133 = vqtbl1q_s8(v132, xmmword_18439C6E0);
      v134 = vqtbl1q_s8(v131, xmmword_18439C6E0);
      v135 = vqtbl1q_s8(v130, xmmword_18439C6E0);
      v136 = vqtbl1q_s8(v129, xmmword_18439C6E0);
      v137 = vcgtzq_f16(v134);
      v138 = vcgtzq_f16(v133);
      v139 = vminnmq_f16(vmulq_f16(v134, v130), vmulq_f16(v131, v135));
      v140 = vmlsq_f16(v130, v130, v134);
      v141 = vaddq_f16(vminnmq_f16(vmulq_f16(v133, v129), vmulq_f16(v132, v136)), vmlsq_f16(v129, v129, v133));
      v17 = vaddq_f16(vmlsq_f16(v131, v131, v135), vaddq_f16(v139, v140));
      *v124 = vrev16q_s8(vbslq_s8(v137, vbslq_s8(vcgtzq_f16(v135), v17, v131), v130));
      v124[1] = vrev16q_s8(vbslq_s8(v138, vbslq_s8(vcgtzq_f16(v136), vaddq_f16(vmlsq_f16(v132, v132, v136), v141), v132), v129));
      a10 += v30;
      v98 -= 4;
      if (v98 < 4)
      {
        break;
      }

      v99 = *a10;
      v123 += v36;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v123);
        a3 = (a3 + v123);
        goto LABEL_88;
      }
    }

    result = (result + v36 + v123);
    a3 = (a3 + v36 + v123);
LABEL_91:
    for (j = a12 - v97 + v98; j; --j)
    {
      if (*a10)
      {
        v143 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
        v144 = vmul_f16(v143, vorr_s8(vand_s8(vrev16_s8(*a3->i8), v32), v33));
        v145 = vbsl_s8(vand_s8(v34, vcgtz_f16(v143)), 0x3C003C003C003C00, vrev16_s8(*result->i8));
        *result->i8 = vrev16_s8(vbsl_s8(vcgtz_f16(vdup_lane_s16(v144, 3)), vbsl_s8(vcgtz_f16(vdup_lane_s16(v145, 3)), vadd_f16(vmls_lane_f16(v144, v144, v145, 3), vadd_f16(vminnm_f16(vmul_lane_f16(v145, v144, 3), vmul_lane_f16(v144, v145, 3)), vmls_lane_f16(v145, v145, v144, 3))), v144), v145));
      }

      v146 = &a3->i8[8 * a14];
      a10 += a14;
      if (v146 >= a8)
      {
        v147 = -a7;
      }

      else
      {
        v147 = 0;
      }

      a3 = &v146[8 * v147];
      result = (result + v37);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v148 = &a5->i64[a4];
    if (v148 >= a9)
    {
      v149 = v35;
    }

    else
    {
      v149 = 0;
    }

    v150 = &v148[v149];
    v151 = a8 + 8 * v149 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v150;
      a8 = v151;
      a5 = v150;
    }

    v96 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v96 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)19,_rgbaf16_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  v21 = vdupq_n_s16(v20);
  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vmvnq_s8(vandq_s8(v21, v22));
  v24 = vandq_s8(v21, xmmword_18439CFA0);
  if (a15)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vdupq_n_s16(v25);
  v27 = vandq_s8(v26, v22);
  v28 = vmvnq_s8(v27);
  v29 = vandq_s8(v26, xmmword_18439CFA0);
  v30 = 4 * a14;
  v31 = 0;
  v31.i16[3] = v20;
  v32 = vmvn_s8(v31);
  v33 = vand_s8(*v21.i8, 0x3C00000000000000);
  v34 = 0;
  v34.i16[3] = v25;
  v35 = -(a6 * a4);
  v36 = 8 * v30;
  v37 = 8 * a14;
  v38.i64[0] = -1;
  v38.i64[1] = -1;
  v39.i64[0] = 0x3C003C003C003C00;
  v39.i64[1] = 0x3C003C003C003C00;
  if ((a17 & 0x30) != 0)
  {
    while (1)
    {
      v40 = (a8 - a3) >> 3;
      if (v40 >= a12)
      {
        v40 = a12;
      }

      v41 = v40;
      if (v40 < 4)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v42 = *a10;
        if (*a10 == -1)
        {
          v49 = &a10[v41];
          v50 = a10;
          do
          {
            v51 = v50++;
          }

          while (v50 <= v49 && (vminvq_u8(vceqq_s8(*v51, v38)) & 0x80) != 0);
          do
          {
            v52 = v51;
            v51 = (v51 + 4);
          }

          while (v51 <= v49 && v52->i32[0] == -1);
          if (v52 < v49)
          {
            while (v52->u8[0] == 255)
            {
              v52 = (v52 + 1);
              if (v52 >= v49)
              {
                v52 = &a10[v41];
                break;
              }
            }
          }

          v53 = v52 - a10;
          v54 = v52 - a10;
          do
          {
            v55 = vorrq_s8(vandq_s8(a3[1], v23), v24);
            v56 = vqtbl1q_s8(v55, xmmword_18439C6E0);
            v57 = vorrq_s8(vandq_s8(*a3, v23), v24);
            v58 = vqtbl1q_s8(v57, xmmword_18439C6E0);
            v59 = vorrq_s8(vandq_s8(result[1], v28), v29);
            v60 = vqtbl1q_s8(v59, xmmword_18439C6E0);
            v61 = vorrq_s8(vandq_s8(*result, v28), v29);
            v62 = vqtbl1q_s8(v61, xmmword_18439C6E0);
            v63 = vaddq_f16(vmlsq_f16(v57, v57, v62), vaddq_f16(vmulq_f16(v58, v62), vmlsq_f16(v61, v61, v58)));
            v64 = vcvt_hight_f32_f16(v58);
            v65 = vdivq_f32(vmulq_f32(v64, v64), vcvt_hight_f32_f16(v57));
            v66 = vmlaq_f32(vmlsq_f32(vcvt_hight_f32_f16(v63), vcvt_hight_f32_f16(v62), v65), vcvt_hight_f32_f16(v61), v65);
            v67 = vaddq_f16(vmlsq_f16(v55, v55, v60), vaddq_f16(vmulq_f16(v56, v60), vmlsq_f16(v59, v59, v56)));
            v68 = vcvtq_f32_f16(*v58.i8);
            v69 = vdivq_f32(vmulq_f32(v68, v68), vcvtq_f32_f16(*v57.i8));
            v70 = vmlaq_f32(vmlsq_f32(vcvtq_f32_f16(*v63.i8), vcvtq_f32_f16(*v62.i8), v69), vcvtq_f32_f16(*v61.i8), v69);
            v71 = vcvt_hight_f32_f16(v56);
            v72 = vdivq_f32(vmulq_f32(v71, v71), vcvt_hight_f32_f16(v55));
            v73 = vmlaq_f32(vmlsq_f32(vcvt_hight_f32_f16(v67), vcvt_hight_f32_f16(v60), v72), vcvt_hight_f32_f16(v59), v72);
            v74 = vcvtq_f32_f16(*v56.i8);
            v75 = vdivq_f32(vmulq_f32(v74, v74), vcvtq_f32_f16(*v55.i8));
            v76 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlsq_f32(vcvtq_f32_f16(*v67.i8), vcvtq_f32_f16(*v60.i8), v75), vcvtq_f32_f16(*v59.i8), v75)), v73);
            v77 = vcgtzq_f16(v60);
            v78 = vbslq_s8(vcgtzq_f16(v56), vorrq_s8(vandq_s8(vmaxnmq_f16(v76, 0), vbicq_s8(v77, vceqzq_f16(v55))), vbicq_s8(v55, v77)), v59);
            v79 = vcgtzq_f16(v62);
            v17 = vandq_s8(vmaxnmq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v70), v66), 0), vbicq_s8(v79, vceqzq_f16(v57)));
            *result = vbslq_s8(vcgtzq_f16(v58), vorrq_s8(v17, vbicq_s8(v57, v79)), v61);
            result[1] = v78;
            a10 += v30;
            v54 -= 4;
            result = (result + v36);
            a3 = (a3 + v36);
          }

          while (v54 > 3);
          v41 = v41 - v53 + v54;
          goto LABEL_39;
        }

        if (v42)
        {
          break;
        }

        v43 = &a10[v41];
        v44 = a10;
        do
        {
          v45 = v44++;
        }

        while (v44 <= v43 && (vminvq_u8(vceqzq_s8(*v45)) & 0x80) != 0);
        do
        {
          v46 = v45;
          v45 = (v45 + 4);
        }

        while (v45 <= v43 && !v46->i32[0]);
        if (v46 < v43)
        {
          while (!v46->i8[0])
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
        v48 = (v46 - a10) * a14;
        a3 = (a3 + 8 * v48);
        result = (result + 8 * v48);
        a10 += v48;
        v41 -= v47;
LABEL_39:
        if (v41 <= 3)
        {
          goto LABEL_42;
        }
      }

      v80 = 0;
      while (1)
      {
        v81 = (result + v80);
        v17.i32[0] = v42;
        v82 = vqtbl1q_s8(v17, xmmword_18439C7A0);
        v83 = vcvtq_f16_u16(vmovl_high_u8(v82));
        v84 = vdupq_n_s16(0x1C04u);
        v85 = vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v82.i8)), v84);
        v86 = vmulq_f16(v83, v84);
        v87 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v86)), v39, *(&result[1] + v80));
        v88 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v85)), v39, *(result + v80));
        v89 = vmulq_f16(v86, vorrq_s8(vandq_s8(*(&a3[1] + v80), v23), v24));
        v90 = vmulq_f16(v85, vorrq_s8(vandq_s8(*(a3 + v80), v23), v24));
        v91 = vqtbl1q_s8(v90, xmmword_18439C6E0);
        v92 = vqtbl1q_s8(v89, xmmword_18439C6E0);
        v93 = vqtbl1q_s8(v88, xmmword_18439C6E0);
        v94 = vqtbl1q_s8(v87, xmmword_18439C6E0);
        v95 = vaddq_f16(vmlsq_f16(v90, v90, v93), vaddq_f16(vmulq_f16(v91, v93), vmlsq_f16(v88, v88, v91)));
        v96 = vcvt_hight_f32_f16(v91);
        v97 = vdivq_f32(vmulq_f32(v96, v96), vcvt_hight_f32_f16(v90));
        v98 = vmlaq_f32(vmlsq_f32(vcvt_hight_f32_f16(v95), vcvt_hight_f32_f16(v93), v97), vcvt_hight_f32_f16(v88), v97);
        v99 = vaddq_f16(vmlsq_f16(v89, v89, v94), vaddq_f16(vmulq_f16(v92, v94), vmlsq_f16(v87, v87, v92)));
        v100 = vcvtq_f32_f16(*v91.i8);
        v101 = vdivq_f32(vmulq_f32(v100, v100), vcvtq_f32_f16(*v90.i8));
        v102 = vmlaq_f32(vmlsq_f32(vcvtq_f32_f16(*v95.i8), vcvtq_f32_f16(*v93.i8), v101), vcvtq_f32_f16(*v88.i8), v101);
        v103 = vcvt_hight_f32_f16(v92);
        v104 = vdivq_f32(vmulq_f32(v103, v103), vcvt_hight_f32_f16(v89));
        v105 = vmlaq_f32(vmlsq_f32(vcvt_hight_f32_f16(v99), vcvt_hight_f32_f16(v94), v104), vcvt_hight_f32_f16(v87), v104);
        v106 = vcvtq_f32_f16(*v92.i8);
        v107 = vdivq_f32(vmulq_f32(v106, v106), vcvtq_f32_f16(*v89.i8));
        v108 = vmlaq_f32(vmlsq_f32(vcvtq_f32_f16(*v99.i8), vcvtq_f32_f16(*v94.i8), v107), vcvtq_f32_f16(*v87.i8), v107);
        v109 = vcgtzq_f16(v93);
        v110 = vbslq_s8(vcgtzq_f16(v91), vorrq_s8(vandq_s8(vmaxnmq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v102), v98), 0), vbicq_s8(v109, vceqzq_f16(v90))), vbicq_s8(v90, v109)), v88);
        v111 = vceqzq_f16(v89);
        v112 = vcgtzq_f16(v94);
        v113 = vbicq_s8(v89, v112);
        v17 = vandq_s8(vmaxnmq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v108), v105), 0), vbicq_s8(v112, v111));
        *v81 = v110;
        v81[1] = vbslq_s8(vcgtzq_f16(v92), vorrq_s8(v17, v113), v87);
        a10 += v30;
        v41 -= 4;
        if (v41 < 4)
        {
          break;
        }

        v42 = *a10;
        v80 += v36;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v80);
          a3 = (a3 + v80);
          goto LABEL_39;
        }
      }

      result = (result + v36 + v80);
      a3 = (a3 + v36 + v80);
LABEL_42:
      for (i = a12 - v40 + v41; i; --i)
      {
        if (*a10)
        {
          v115 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
          v116 = vand_s8(v34, vcgtz_f16(v115));
          v117 = vmul_f16(v115, vorr_s8(vand_s8(*a3->i8, v32), v33));
          v118 = vdup_lane_s16(v117, 3);
          v119 = vbsl_s8(v116, 0x3C003C003C003C00, *result->i8);
          v120 = vdup_lane_s16(v119, 3);
          v121 = vcgtz_f16(v120);
          v122 = vcgtz_f16(v118);
          v123 = vcvtq_f32_f16(v118);
          v124 = vdivq_f32(vmulq_f32(v123, v123), vcvtq_f32_f16(v117));
          v17 = vcvtq_f32_f16(v119);
          *result->i8 = vbsl_s8(v122, vorr_s8(vand_s8(vmaxnm_f16(vcvt_f16_f32(vmlaq_f32(vmlsq_f32(vcvtq_f32_f16(vadd_f16(vmls_lane_f16(v117, v117, v119, 3), vadd_f16(vmls_lane_f16(v119, v119, v117, 3), vmul_lane_f16(v120, v117, 3)))), vcvtq_f32_f16(v120), v124), v17, v124)), 0), vbic_s8(v121, vceqz_f16(v117))), vbic_s8(v117, v121)), v119);
        }

        v125 = &a3->i8[8 * a14];
        a10 += a14;
        if (v125 >= a8)
        {
          v126 = -a7;
        }

        else
        {
          v126 = 0;
        }

        a3 = &v125[8 * v126];
        result = (result + v37);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v127 = &a5->i64[a4];
      if (v127 >= a9)
      {
        v128 = v35;
      }

      else
      {
        v128 = 0;
      }

      v129 = &v127[v128];
      v130 = a8 + 8 * v128 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v129;
        a8 = v130;
        a5 = v129;
      }

      v131 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v131 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v132 = (a8 - a3) >> 3;
    if (v132 >= a12)
    {
      v132 = a12;
    }

    v133 = v132;
    if (v132 < 4)
    {
      goto LABEL_91;
    }

    while (1)
    {
      v134 = *a10;
      if (*a10 == -1)
      {
        v141 = &a10[v133];
        v142 = a10;
        do
        {
          v143 = v142++;
        }

        while (v142 <= v141 && (vminvq_u8(vceqq_s8(*v143, v38)) & 0x80) != 0);
        do
        {
          v144 = v143;
          v143 = (v143 + 4);
        }

        while (v143 <= v141 && v144->i32[0] == -1);
        if (v144 < v141)
        {
          while (v144->u8[0] == 255)
          {
            v144 = (v144 + 1);
            if (v144 >= v141)
            {
              v144 = &a10[v133];
              break;
            }
          }
        }

        v145 = v144 - a10;
        v146 = v144 - a10;
        do
        {
          v147 = vorrq_s8(vandq_s8(vrev16q_s8(*a3), v23), v24);
          v148 = vqtbl1q_s8(v147, xmmword_18439C6E0);
          v149 = vorrq_s8(vandq_s8(vrev16q_s8(a3[1]), v23), v24);
          v150 = vqtbl1q_s8(v149, xmmword_18439C6E0);
          v151 = vorrq_s8(vandq_s8(vrev16q_s8(*result), v28), v29);
          v152 = vqtbl1q_s8(v151, xmmword_18439C6E0);
          v153 = vorrq_s8(vandq_s8(vrev16q_s8(result[1]), v28), v29);
          v154 = vqtbl1q_s8(v153, xmmword_18439C6E0);
          v155 = vaddq_f16(vmlsq_f16(v147, v147, v152), vaddq_f16(vmulq_f16(v148, v152), vmlsq_f16(v151, v151, v148)));
          v156 = vcvt_hight_f32_f16(v148);
          v157 = vdivq_f32(vmulq_f32(v156, v156), vcvt_hight_f32_f16(v147));
          v158 = vmlaq_f32(vmlsq_f32(vcvt_hight_f32_f16(v155), vcvt_hight_f32_f16(v152), v157), vcvt_hight_f32_f16(v151), v157);
          v159 = vaddq_f16(vmlsq_f16(v149, v149, v154), vaddq_f16(vmulq_f16(v150, v154), vmlsq_f16(v153, v153, v150)));
          v160 = vcvtq_f32_f16(*v148.i8);
          v161 = vdivq_f32(vmulq_f32(v160, v160), vcvtq_f32_f16(*v147.i8));
          v162 = vmlaq_f32(vmlsq_f32(vcvtq_f32_f16(*v155.i8), vcvtq_f32_f16(*v152.i8), v161), vcvtq_f32_f16(*v151.i8), v161);
          v163 = vcvt_hight_f32_f16(v150);
          v164 = vdivq_f32(vmulq_f32(v163, v163), vcvt_hight_f32_f16(v149));
          v165 = vmlaq_f32(vmlsq_f32(vcvt_hight_f32_f16(v159), vcvt_hight_f32_f16(v154), v164), vcvt_hight_f32_f16(v153), v164);
          v166 = vcvtq_f32_f16(*v150.i8);
          v167 = vdivq_f32(vmulq_f32(v166, v166), vcvtq_f32_f16(*v149.i8));
          v168 = vmlaq_f32(vmlsq_f32(vcvtq_f32_f16(*v159.i8), vcvtq_f32_f16(*v154.i8), v167), vcvtq_f32_f16(*v153.i8), v167);
          v169 = vcgtzq_f16(v152);
          v170 = vbslq_s8(vcgtzq_f16(v148), vorrq_s8(vandq_s8(vmaxnmq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v162), v158), 0), vbicq_s8(v169, vceqzq_f16(v147))), vbicq_s8(v147, v169)), v151);
          v171 = vcgtzq_f16(v154);
          v17 = vandq_s8(vmaxnmq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v168), v165), 0), vbicq_s8(v171, vceqzq_f16(v149)));
          *result = vrev16q_s8(v170);
          result[1] = vrev16q_s8(vbslq_s8(vcgtzq_f16(v150), vorrq_s8(v17, vbicq_s8(v149, v171)), v153));
          a10 += v30;
          v146 -= 4;
          result = (result + v36);
          a3 = (a3 + v36);
        }

        while (v146 > 3);
        v133 = v133 - v145 + v146;
        goto LABEL_88;
      }

      if (v134)
      {
        break;
      }

      v135 = &a10[v133];
      v136 = a10;
      do
      {
        v137 = v136++;
      }

      while (v136 <= v135 && (vminvq_u8(vceqzq_s8(*v137)) & 0x80) != 0);
      do
      {
        v138 = v137;
        v137 = (v137 + 4);
      }

      while (v137 <= v135 && !v138->i32[0]);
      if (v138 < v135)
      {
        while (!v138->i8[0])
        {
          v138 = (v138 + 1);
          if (v138 >= v135)
          {
            v138 = &a10[v133];
            break;
          }
        }
      }

      v139 = v138 - a10;
      v140 = (v138 - a10) * a14;
      a3 = (a3 + 8 * v140);
      result = (result + 8 * v140);
      a10 += v140;
      v133 -= v139;
LABEL_88:
      if (v133 <= 3)
      {
        goto LABEL_91;
      }
    }

    v172 = 0;
    while (1)
    {
      v173 = (result + v172);
      v17.i32[0] = v134;
      v174 = vqtbl1q_s8(v17, xmmword_18439C7A0);
      v175 = vcvtq_f16_u16(vmovl_u8(*v174.i8));
      v176 = vdupq_n_s16(0x1C04u);
      v177 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v174)), v176);
      v178 = vmulq_f16(v175, v176);
      v179 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v178)), v39, vrev16q_s8(*(result + v172)));
      v180 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v177)), v39, vrev16q_s8(*(&result[1] + v172)));
      v181 = vmulq_f16(v178, vorrq_s8(vandq_s8(vrev16q_s8(*(a3 + v172)), v23), v24));
      v182 = vmulq_f16(v177, vorrq_s8(vandq_s8(vrev16q_s8(*(&a3[1] + v172)), v23), v24));
      v183 = vqtbl1q_s8(v182, xmmword_18439C6E0);
      v184 = vqtbl1q_s8(v181, xmmword_18439C6E0);
      v185 = vqtbl1q_s8(v180, xmmword_18439C6E0);
      v186 = vqtbl1q_s8(v179, xmmword_18439C6E0);
      v187 = vaddq_f16(vmlsq_f16(v181, v181, v186), vaddq_f16(vmulq_f16(v184, v186), vmlsq_f16(v179, v179, v184)));
      v188 = vcvt_hight_f32_f16(v184);
      v189 = vdivq_f32(vmulq_f32(v188, v188), vcvt_hight_f32_f16(v181));
      v190 = vmlaq_f32(vmlsq_f32(vcvt_hight_f32_f16(v187), vcvt_hight_f32_f16(v186), v189), vcvt_hight_f32_f16(v179), v189);
      v191 = vaddq_f16(vmlsq_f16(v182, v182, v185), vaddq_f16(vmulq_f16(v183, v185), vmlsq_f16(v180, v180, v183)));
      v192 = vcvtq_f32_f16(*v184.i8);
      v193 = vdivq_f32(vmulq_f32(v192, v192), vcvtq_f32_f16(*v181.i8));
      v194 = vmlaq_f32(vmlsq_f32(vcvtq_f32_f16(*v187.i8), vcvtq_f32_f16(*v186.i8), v193), vcvtq_f32_f16(*v179.i8), v193);
      v195 = vcvt_hight_f32_f16(v183);
      v196 = vdivq_f32(vmulq_f32(v195, v195), vcvt_hight_f32_f16(v182));
      v197 = vmlaq_f32(vmlsq_f32(vcvt_hight_f32_f16(v191), vcvt_hight_f32_f16(v185), v196), vcvt_hight_f32_f16(v180), v196);
      v198 = vcvtq_f32_f16(*v183.i8);
      v199 = vdivq_f32(vmulq_f32(v198, v198), vcvtq_f32_f16(*v182.i8));
      v200 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlsq_f32(vcvtq_f32_f16(*v191.i8), vcvtq_f32_f16(*v185.i8), v199), vcvtq_f32_f16(*v180.i8), v199)), v197);
      v201 = vcgtzq_f16(v185);
      v202 = vbslq_s8(vcgtzq_f16(v183), vorrq_s8(vandq_s8(vmaxnmq_f16(v200, 0), vbicq_s8(v201, vceqzq_f16(v182))), vbicq_s8(v182, v201)), v180);
      v203 = vceqzq_f16(v181);
      v204 = vcgtzq_f16(v186);
      v205 = vbicq_s8(v181, v204);
      v17 = vandq_s8(vmaxnmq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v194), v190), 0), vbicq_s8(v204, v203));
      *v173 = vrev16q_s8(vbslq_s8(vcgtzq_f16(v184), vorrq_s8(v17, v205), v179));
      v173[1] = vrev16q_s8(v202);
      a10 += v30;
      v133 -= 4;
      if (v133 < 4)
      {
        break;
      }

      v134 = *a10;
      v172 += v36;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v172);
        a3 = (a3 + v172);
        goto LABEL_88;
      }
    }

    result = (result + v36 + v172);
    a3 = (a3 + v36 + v172);
LABEL_91:
    for (j = a12 - v132 + v133; j; --j)
    {
      if (*a10)
      {
        v207 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
        v208 = vbsl_s8(vand_s8(v34, vcgtz_f16(v207)), 0x3C003C003C003C00, vrev16_s8(*result->i8));
        v209 = vmul_f16(v207, vorr_s8(vand_s8(vrev16_s8(*a3->i8), v32), v33));
        v210 = vdup_lane_s16(v209, 3);
        v211 = vdup_lane_s16(v208, 3);
        v212 = vcgtz_f16(v211);
        v213 = vcgtz_f16(v210);
        v214 = vcvtq_f32_f16(v210);
        v215 = vdivq_f32(vmulq_f32(v214, v214), vcvtq_f32_f16(v209));
        v17 = vcvtq_f32_f16(v208);
        *result->i8 = vrev16_s8(vbsl_s8(v213, vorr_s8(vand_s8(vmaxnm_f16(vcvt_f16_f32(vmlaq_f32(vmlsq_f32(vcvtq_f32_f16(vadd_f16(vmls_lane_f16(v209, v209, v208, 3), vadd_f16(vmls_lane_f16(v208, v208, v209, 3), vmul_lane_f16(v211, v209, 3)))), vcvtq_f32_f16(v211), v215), v17, v215)), 0), vbic_s8(v212, vceqz_f16(v209))), vbic_s8(v209, v212)), v208));
      }

      v216 = &a3->i8[8 * a14];
      a10 += a14;
      if (v216 >= a8)
      {
        v217 = -a7;
      }

      else
      {
        v217 = 0;
      }

      a3 = &v216[8 * v217];
      result = (result + v37);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v218 = &a5->i64[a4];
    if (v218 >= a9)
    {
      v219 = v35;
    }

    else
    {
      v219 = 0;
    }

    v220 = &v218[v219];
    v221 = a8 + 8 * v219 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v220;
      a8 = v221;
      a5 = v220;
    }

    v131 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v131 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)21,_rgbaf16_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  v21 = vdupq_n_s16(v20);
  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vmvnq_s8(vandq_s8(v21, v22));
  v24 = vandq_s8(v21, xmmword_18439CFA0);
  if (a15)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vdupq_n_s16(v25);
  v27 = vandq_s8(v26, v22);
  v28 = vmvnq_s8(v27);
  v29 = vandq_s8(v26, xmmword_18439CFA0);
  v30 = 4 * a14;
  v34 = 0;
  v31 = 0;
  v31.i16[3] = v20;
  v32 = vmvn_s8(v31);
  v33 = vand_s8(*v21.i8, 0x3C00000000000000);
  v34.i16[3] = v25;
  v35 = -(a6 * a4);
  v36 = 8 * v30;
  v37 = 8 * a14;
  v38.i64[0] = 0x3800380038003800;
  v38.i64[1] = 0x3800380038003800;
  v39.i64[0] = 0x8000800080008000;
  v39.i64[1] = 0x8000800080008000;
  v40.i64[0] = -1;
  v40.i64[1] = -1;
  v41.i64[0] = 0x3C003C003C003C00;
  v41.i64[1] = 0x3C003C003C003C00;
  if ((a17 & 0x30) != 0)
  {
    while (1)
    {
      v42 = (a8 - a3) >> 3;
      if (v42 >= a12)
      {
        v42 = a12;
      }

      v43 = v42;
      if (v42 < 4)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v44 = *a10;
        if (*a10 == -1)
        {
          v51 = &a10[v43];
          v52 = a10;
          do
          {
            v53 = v52++;
          }

          while (v52 <= v51 && (vminvq_u8(vceqq_s8(*v53, v40)) & 0x80) != 0);
          do
          {
            v54 = v53;
            v53 = (v53 + 4);
          }

          while (v53 <= v51 && v54->i32[0] == -1);
          if (v54 < v51)
          {
            while (v54->u8[0] == 255)
            {
              v54 = (v54 + 1);
              if (v54 >= v51)
              {
                v54 = &a10[v43];
                break;
              }
            }
          }

          v55 = v54 - a10;
          v56 = v54 - a10;
          do
          {
            v57 = vorrq_s8(vandq_s8(*a3, v23), v24);
            v58 = vorrq_s8(vandq_s8(a3[1], v23), v24);
            v17 = vorrq_s8(vandq_s8(result[1], v28), v29);
            v59 = vorrq_s8(vandq_s8(*result, v28), v29);
            v60 = vqtbl1q_s8(v58, xmmword_18439C6E0);
            v61 = vqtbl1q_s8(v57, xmmword_18439C6E0);
            v62 = vqtbl1q_s8(v59, xmmword_18439C6E0);
            v63 = vqtbl1q_s8(v17, xmmword_18439C6E0);
            v64 = vcgtzq_f16(v62);
            v65 = vcgtzq_f16(v61);
            v66 = vcgtzq_f16(v60);
            v67 = vmulq_f16(v60, v63);
            v68 = vmulq_f16(v61, v62);
            v69 = vcgtq_f16(v58, vmulq_f16(v60, v38));
            v70 = vcgtq_f16(v57, vmulq_f16(v61, v38));
            v71 = vbicq_s8(v39, v70);
            v72 = vbicq_s8(v39, v69);
            v73 = veorq_s8(v71, vsubq_f16(v61, v57));
            v74 = veorq_s8(v71, vsubq_f16(v62, v59));
            v75 = vmlaq_f16(v59, v73, v59);
            v76 = vmlaq_f16(v17, veorq_s8(v72, vsubq_f16(v60, v58)), v17);
            v77 = vmlaq_f16(v57, v74, v57);
            v78 = vaddq_f16(v76, vmlaq_f16(v58, veorq_s8(v72, vsubq_f16(v63, v17)), v58));
            v79 = vaddq_f16(v75, v77);
            *result = vbslq_s8(v65, vbslq_s8(v64, vbslq_s8(v70, vsubq_f16(v79, v68), v79), v57), v59);
            result[1] = vbslq_s8(v66, vbslq_s8(vcgtzq_f16(v63), vbslq_s8(v69, vsubq_f16(v78, v67), v78), v58), v17);
            a10 += v30;
            v56 -= 4;
            result = (result + v36);
            a3 = (a3 + v36);
          }

          while (v56 > 3);
          v43 = v43 - v55 + v56;
          goto LABEL_39;
        }

        if (v44)
        {
          break;
        }

        v45 = &a10[v43];
        v46 = a10;
        do
        {
          v47 = v46++;
        }

        while (v46 <= v45 && (vminvq_u8(vceqzq_s8(*v47)) & 0x80) != 0);
        do
        {
          v48 = v47;
          v47 = (v47 + 4);
        }

        while (v47 <= v45 && !v48->i32[0]);
        if (v48 < v45)
        {
          while (!v48->i8[0])
          {
            v48 = (v48 + 1);
            if (v48 >= v45)
            {
              v48 = &a10[v43];
              break;
            }
          }
        }

        v49 = v48 - a10;
        v50 = (v48 - a10) * a14;
        a3 = (a3 + 8 * v50);
        result = (result + 8 * v50);
        a10 += v50;
        v43 -= v49;
LABEL_39:
        if (v43 <= 3)
        {
          goto LABEL_42;
        }
      }

      v80 = 0;
      while (1)
      {
        v81 = (result + v80);
        v17.i32[0] = v44;
        v82 = vqtbl1q_s8(v17, xmmword_18439C7A0);
        v83 = vcvtq_f16_u16(vmovl_u8(*v82.i8));
        v84 = vdupq_n_s16(0x1C04u);
        v85 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v82)), v84);
        v86 = vmulq_f16(v83, v84);
        v87 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v86)), v41, *(result + v80));
        v88 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v85)), v41, *(&result[1] + v80));
        v89 = vmulq_f16(v85, vorrq_s8(vandq_s8(*(&a3[1] + v80), v23), v24));
        v90 = vmulq_f16(v86, vorrq_s8(vandq_s8(*(a3 + v80), v23), v24));
        v91 = vqtbl1q_s8(v90, xmmword_18439C6E0);
        v92 = vqtbl1q_s8(v89, xmmword_18439C6E0);
        v93 = vqtbl1q_s8(v88, xmmword_18439C6E0);
        v94 = vqtbl1q_s8(v87, xmmword_18439C6E0);
        v95 = vcgtzq_f16(v93);
        v96 = vcgtzq_f16(v92);
        v97 = vcgtzq_f16(v91);
        v98 = vmulq_f16(v91, v94);
        v99 = vmulq_f16(v92, v93);
        v100 = vcgtq_f16(v90, vmulq_f16(v91, v38));
        v101 = vcgtq_f16(v89, vmulq_f16(v92, v38));
        v102 = vbicq_s8(v39, v101);
        v103 = vbicq_s8(v39, v100);
        v104 = veorq_s8(v102, vsubq_f16(v93, v88));
        v105 = vmlaq_f16(v88, veorq_s8(v102, vsubq_f16(v92, v89)), v88);
        v106 = vaddq_f16(vmlaq_f16(v87, veorq_s8(v103, vsubq_f16(v91, v90)), v87), vmlaq_f16(v90, veorq_s8(v103, vsubq_f16(v94, v87)), v90));
        v107 = vaddq_f16(v105, vmlaq_f16(v89, v104, v89));
        v17 = vbslq_s8(v101, vsubq_f16(v107, v99), v107);
        *v81 = vbslq_s8(v97, vbslq_s8(vcgtzq_f16(v94), vbslq_s8(v100, vsubq_f16(v106, v98), v106), v90), v87);
        v81[1] = vbslq_s8(v96, vbslq_s8(v95, v17, v89), v88);
        a10 += v30;
        v43 -= 4;
        if (v43 < 4)
        {
          break;
        }

        v44 = *a10;
        v80 += v36;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v80);
          a3 = (a3 + v80);
          goto LABEL_39;
        }
      }

      result = (result + v36 + v80);
      a3 = (a3 + v36 + v80);
LABEL_42:
      for (i = a12 - v42 + v43; i; --i)
      {
        if (*a10)
        {
          v109 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
          v110 = vbsl_s8(vand_s8(v34, vcgtz_f16(v109)), 0x3C003C003C003C00, *result->i8);
          v111 = vmul_f16(v109, vorr_s8(vand_s8(*a3->i8, v32), v33));
          v112 = vdup_lane_s16(v111, 3);
          v113 = vdup_lane_s16(v110, 3);
          *v17.i8 = vcgtz_f16(v112);
          v114 = vcgt_f16(v111, vmul_lane_f16(0x3800380038003800, v111, 3));
          v115 = vbic_s8(0x8000800080008000, v114);
          v116 = vadd_f16(vmla_f16(v110, veor_s8(v115, vsub_f16(v112, v111)), v110), vmla_f16(v111, veor_s8(v115, vsub_f16(v113, v110)), v111));
          *result->i8 = vbsl_s8(*v17.i8, vbsl_s8(vcgtz_f16(v113), vbsl_s8(v114, vsub_f16(v116, vmul_lane_f16(v113, v111, 3)), v116), v111), v110);
        }

        v117 = &a3->i8[8 * a14];
        a10 += a14;
        if (v117 >= a8)
        {
          v118 = -a7;
        }

        else
        {
          v118 = 0;
        }

        a3 = &v117[8 * v118];
        result = (result + v37);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v119 = &a5->i64[a4];
      if (v119 >= a9)
      {
        v120 = v35;
      }

      else
      {
        v120 = 0;
      }

      v121 = &v119[v120];
      v122 = a8 + 8 * v120 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v121;
        a8 = v122;
        a5 = v121;
      }

      v123 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v123 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v124 = (a8 - a3) >> 3;
    if (v124 >= a12)
    {
      v124 = a12;
    }

    v125 = v124;
    if (v124 < 4)
    {
      goto LABEL_91;
    }

    while (1)
    {
      v126 = *a10;
      if (*a10 == -1)
      {
        v133 = &a10[v125];
        v134 = a10;
        do
        {
          v135 = v134++;
        }

        while (v134 <= v133 && (vminvq_u8(vceqq_s8(*v135, v40)) & 0x80) != 0);
        do
        {
          v136 = v135;
          v135 = (v135 + 4);
        }

        while (v135 <= v133 && v136->i32[0] == -1);
        if (v136 < v133)
        {
          while (v136->u8[0] == 255)
          {
            v136 = (v136 + 1);
            if (v136 >= v133)
            {
              v136 = &a10[v125];
              break;
            }
          }
        }

        v137 = v136 - a10;
        v138 = v136 - a10;
        do
        {
          v139 = vorrq_s8(vandq_s8(vrev16q_s8(a3[1]), v23), v24);
          v140 = vorrq_s8(vandq_s8(vrev16q_s8(*a3), v23), v24);
          v141 = vorrq_s8(vandq_s8(vrev16q_s8(*result), v28), v29);
          v17 = vorrq_s8(vandq_s8(vrev16q_s8(result[1]), v28), v29);
          v142 = vqtbl1q_s8(v140, xmmword_18439C6E0);
          v143 = vqtbl1q_s8(v139, xmmword_18439C6E0);
          v144 = vqtbl1q_s8(v17, xmmword_18439C6E0);
          v145 = vqtbl1q_s8(v141, xmmword_18439C6E0);
          v146 = vcgtzq_f16(v144);
          v147 = vcgtzq_f16(v143);
          v148 = vcgtzq_f16(v142);
          v149 = vmulq_f16(v142, v145);
          v150 = vmulq_f16(v143, v144);
          v151 = vcgtq_f16(v140, vmulq_f16(v142, v38));
          v152 = vcgtq_f16(v139, vmulq_f16(v143, v38));
          v153 = vbicq_s8(v39, v152);
          v154 = vbicq_s8(v39, v151);
          v155 = veorq_s8(v153, vsubq_f16(v143, v139));
          v156 = veorq_s8(v153, vsubq_f16(v144, v17));
          v157 = vmlaq_f16(v17, v155, v17);
          v158 = vmlaq_f16(v141, veorq_s8(v154, vsubq_f16(v142, v140)), v141);
          v159 = vmlaq_f16(v139, v156, v139);
          v160 = vaddq_f16(v158, vmlaq_f16(v140, veorq_s8(v154, vsubq_f16(v145, v141)), v140));
          v161 = vaddq_f16(v157, v159);
          *result = vrev16q_s8(vbslq_s8(v148, vbslq_s8(vcgtzq_f16(v145), vbslq_s8(v151, vsubq_f16(v160, v149), v160), v140), v141));
          result[1] = vrev16q_s8(vbslq_s8(v147, vbslq_s8(v146, vbslq_s8(v152, vsubq_f16(v161, v150), v161), v139), v17));
          a10 += v30;
          v138 -= 4;
          result = (result + v36);
          a3 = (a3 + v36);
        }

        while (v138 > 3);
        v125 = v125 - v137 + v138;
        goto LABEL_88;
      }

      if (v126)
      {
        break;
      }

      v127 = &a10[v125];
      v128 = a10;
      do
      {
        v129 = v128++;
      }

      while (v128 <= v127 && (vminvq_u8(vceqzq_s8(*v129)) & 0x80) != 0);
      do
      {
        v130 = v129;
        v129 = (v129 + 4);
      }

      while (v129 <= v127 && !v130->i32[0]);
      if (v130 < v127)
      {
        while (!v130->i8[0])
        {
          v130 = (v130 + 1);
          if (v130 >= v127)
          {
            v130 = &a10[v125];
            break;
          }
        }
      }

      v131 = v130 - a10;
      v132 = (v130 - a10) * a14;
      a3 = (a3 + 8 * v132);
      result = (result + 8 * v132);
      a10 += v132;
      v125 -= v131;
LABEL_88:
      if (v125 <= 3)
      {
        goto LABEL_91;
      }
    }

    v162 = 0;
    while (1)
    {
      v163 = (result + v162);
      v17.i32[0] = v126;
      v164 = vqtbl1q_s8(v17, xmmword_18439C7A0);
      v165 = vcvtq_f16_u16(vmovl_high_u8(v164));
      v166 = vdupq_n_s16(0x1C04u);
      v167 = vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v164.i8)), v166);
      v168 = vmulq_f16(v165, v166);
      v169 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v168)), v41, vrev16q_s8(*(&result[1] + v162)));
      v170 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v167)), v41, vrev16q_s8(*(result + v162)));
      v171 = vmulq_f16(v167, vorrq_s8(vandq_s8(vrev16q_s8(*(a3 + v162)), v23), v24));
      v172 = vmulq_f16(v168, vorrq_s8(vandq_s8(vrev16q_s8(*(&a3[1] + v162)), v23), v24));
      v173 = vqtbl1q_s8(v172, xmmword_18439C6E0);
      v174 = vqtbl1q_s8(v171, xmmword_18439C6E0);
      v175 = vqtbl1q_s8(v170, xmmword_18439C6E0);
      v176 = vqtbl1q_s8(v169, xmmword_18439C6E0);
      v177 = vcgtzq_f16(v175);
      v178 = vcgtzq_f16(v174);
      v179 = vcgtzq_f16(v173);
      v180 = vmulq_f16(v173, v176);
      v181 = vmulq_f16(v174, v175);
      v182 = vcgtq_f16(v172, vmulq_f16(v173, v38));
      v183 = vcgtq_f16(v171, vmulq_f16(v174, v38));
      v184 = vbicq_s8(v39, v183);
      v185 = vbicq_s8(v39, v182);
      v186 = veorq_s8(v184, vsubq_f16(v175, v170));
      v187 = vmlaq_f16(v170, veorq_s8(v184, vsubq_f16(v174, v171)), v170);
      v188 = vaddq_f16(vmlaq_f16(v169, veorq_s8(v185, vsubq_f16(v173, v172)), v169), vmlaq_f16(v172, veorq_s8(v185, vsubq_f16(v176, v169)), v172));
      v189 = vaddq_f16(v187, vmlaq_f16(v171, v186, v171));
      v17 = vbslq_s8(v183, vsubq_f16(v189, v181), v189);
      *v163 = vrev16q_s8(vbslq_s8(v178, vbslq_s8(v177, v17, v171), v170));
      v163[1] = vrev16q_s8(vbslq_s8(v179, vbslq_s8(vcgtzq_f16(v176), vbslq_s8(v182, vsubq_f16(v188, v180), v188), v172), v169));
      a10 += v30;
      v125 -= 4;
      if (v125 < 4)
      {
        break;
      }

      v126 = *a10;
      v162 += v36;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v162);
        a3 = (a3 + v162);
        goto LABEL_88;
      }
    }

    result = (result + v36 + v162);
    a3 = (a3 + v36 + v162);
LABEL_91:
    for (j = a12 - v124 + v125; j; --j)
    {
      if (*a10)
      {
        v191 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
        v192 = vmul_f16(v191, vorr_s8(vand_s8(vrev16_s8(*a3->i8), v32), v33));
        v193 = vdup_lane_s16(v192, 3);
        v194 = vbsl_s8(vand_s8(v34, vcgtz_f16(v191)), 0x3C003C003C003C00, vrev16_s8(*result->i8));
        v195 = vdup_lane_s16(v194, 3);
        *v17.i8 = vcgtz_f16(v193);
        v196 = vcgt_f16(v192, vmul_lane_f16(0x3800380038003800, v192, 3));
        v197 = vbic_s8(0x8000800080008000, v196);
        v198 = vadd_f16(vmla_f16(v194, veor_s8(v197, vsub_f16(v193, v192)), v194), vmla_f16(v192, veor_s8(v197, vsub_f16(v195, v194)), v192));
        *result->i8 = vrev16_s8(vbsl_s8(*v17.i8, vbsl_s8(vcgtz_f16(v195), vbsl_s8(v196, vsub_f16(v198, vmul_lane_f16(v195, v192, 3)), v198), v192), v194));
      }

      v199 = &a3->i8[8 * a14];
      a10 += a14;
      if (v199 >= a8)
      {
        v200 = -a7;
      }

      else
      {
        v200 = 0;
      }

      a3 = &v199[8 * v200];
      result = (result + v37);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v201 = &a5->i64[a4];
    if (v201 >= a9)
    {
      v202 = v35;
    }

    else
    {
      v202 = 0;
    }

    v203 = &v201[v202];
    v204 = a8 + 8 * v202 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v203;
      a8 = v204;
      a5 = v203;
    }

    v123 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v123 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)20,_rgbaf16_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  v21 = vdupq_n_s16(v20);
  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vmvnq_s8(vandq_s8(v21, v22));
  v24 = vandq_s8(v21, xmmword_18439CFA0);
  if (a15)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vdupq_n_s16(v25);
  v27 = vandq_s8(v26, v22);
  v28 = vmvnq_s8(v27);
  v29 = vandq_s8(v26, xmmword_18439CFA0);
  v30 = 4 * a14;
  v34 = 0;
  v31 = 0;
  v31.i16[3] = v20;
  v32 = vmvn_s8(v31);
  v33 = vand_s8(*v21.i8, 0x3C00000000000000);
  v34.i16[3] = v25;
  v35 = -(a6 * a4);
  v36 = 8 * v30;
  v37 = 8 * a14;
  v38.i64[0] = -1;
  v38.i64[1] = -1;
  v39.i64[0] = 0x3C003C003C003C00;
  v39.i64[1] = 0x3C003C003C003C00;
  if ((a17 & 0x30) != 0)
  {
    while (1)
    {
      v40 = (a8 - a3) >> 3;
      if (v40 >= a12)
      {
        v40 = a12;
      }

      v41 = v40;
      if (v40 < 4)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v42 = *a10;
        if (*a10 == -1)
        {
          v49 = &a10[v41];
          v50 = a10;
          do
          {
            v51 = v50++;
          }

          while (v50 <= v49 && (vminvq_u8(vceqq_s8(*v51, v38)) & 0x80) != 0);
          do
          {
            v52 = v51;
            v51 = (v51 + 4);
          }

          while (v51 <= v49 && v52->i32[0] == -1);
          if (v52 < v49)
          {
            while (v52->u8[0] == 255)
            {
              v52 = (v52 + 1);
              if (v52 >= v49)
              {
                v52 = &a10[v41];
                break;
              }
            }
          }

          v53 = v52 - a10;
          v54 = v52 - a10;
          do
          {
            v55 = vorrq_s8(vandq_s8(a3[1], v23), v24);
            v56 = vqtbl1q_s8(v55, xmmword_18439C6E0);
            v57 = vorrq_s8(vandq_s8(*a3, v23), v24);
            v58 = vqtbl1q_s8(v57, xmmword_18439C6E0);
            v59 = vorrq_s8(vandq_s8(*result, v28), v29);
            v60 = vqtbl1q_s8(v59, xmmword_18439C6E0);
            v17 = vorrq_s8(vandq_s8(result[1], v28), v29);
            v61 = vqtbl1q_s8(v17, xmmword_18439C6E0);
            v62 = vcvt_hight_f32_f16(v59);
            v63 = vcvtq_f32_f16(*v59.i8);
            v64 = vcvt_hight_f32_f16(v17);
            v65 = vcvtq_f32_f16(*v17.i8);
            v66 = vcvtq_f32_f16(*v55.i8);
            v67 = vdivq_f32(v65, vcvtq_f32_f16(*v61.i8));
            v68 = vaddq_f32(v66, v66);
            v69 = vmlaq_f32(vmlsq_f32(v68, v67, v68), v67, vcvtq_f32_f16(*v56.i8));
            v70 = vcvt_hight_f32_f16(v55);
            v71 = vdivq_f32(v64, vcvt_hight_f32_f16(v61));
            v72 = vaddq_f32(v70, v70);
            v73 = vcvtq_f32_f16(*v57.i8);
            v74 = vdivq_f32(v63, vcvtq_f32_f16(*v60.i8));
            v75 = vaddq_f32(v73, v73);
            v76 = vmlaq_f32(vmlsq_f32(v75, v74, v75), v74, vcvtq_f32_f16(*v58.i8));
            v77 = vcvt_hight_f32_f16(v57);
            v78 = vdivq_f32(v62, vcvt_hight_f32_f16(v60));
            v79 = vaddq_f32(v77, v77);
            v80 = vmulq_f32(vmlaq_f32(vmlsq_f32(v79, v78, v79), v78, vcvt_hight_f32_f16(v58)), v62);
            *v63.f32 = vcvt_f16_f32(vmulq_f32(v76, v63));
            v81 = vcvtq_f32_f16(*v63.f32);
            v82 = vbicq_s8(vcgezq_f16(vcvt_hight_f16_f32(*v63.f32, v80)), vceqzq_f16(v60));
            v83 = vmovl_high_s16(v82);
            v84 = vandq_s8(v81, vmovl_s16(*v82.i8));
            v85 = vmlsq_f16(v59, v59, v58);
            v86 = vbslq_s8(vcgtzq_f16(v60), vaddq_f16(vmlsq_f16(v57, v57, v60), vcvt_hight_f16_f32(vcvt_f16_f32(vaddq_f32(v84, vcvtq_f32_f16(*v85.i8))), vaddq_f32(vandq_s8(vcvtq_f32_f16(vcvt_f16_f32(v80)), v83), vcvt_hight_f32_f16(v85)))), v57);
            v87 = vmulq_f32(vmlaq_f32(vmlsq_f32(v72, v71, v72), v71, vcvt_hight_f32_f16(v56)), v64);
            *v65.f32 = vcvt_f16_f32(vmulq_f32(v69, v65));
            v88 = vcvtq_f32_f16(*v65.f32);
            v89 = vbicq_s8(vcgezq_f16(vcvt_hight_f16_f32(*v65.f32, v87)), vceqzq_f16(v61));
            v90 = vmovl_high_s16(v89);
            v91 = vandq_s8(v88, vmovl_s16(*v89.i8));
            v92 = vmlsq_f16(v17, v17, v56);
            *result = vbslq_s8(vcgtzq_f16(v58), v86, v59);
            result[1] = vbslq_s8(vcgtzq_f16(v56), vbslq_s8(vcgtzq_f16(v61), vaddq_f16(vmlsq_f16(v55, v55, v61), vcvt_hight_f16_f32(vcvt_f16_f32(vaddq_f32(v91, vcvtq_f32_f16(*v92.i8))), vaddq_f32(vandq_s8(vcvtq_f32_f16(vcvt_f16_f32(v87)), v90), vcvt_hight_f32_f16(v92)))), v55), v17);
            a10 += v30;
            v54 -= 4;
            result = (result + v36);
            a3 = (a3 + v36);
          }

          while (v54 > 3);
          v41 = v41 - v53 + v54;
          goto LABEL_39;
        }

        if (v42)
        {
          break;
        }

        v43 = &a10[v41];
        v44 = a10;
        do
        {
          v45 = v44++;
        }

        while (v44 <= v43 && (vminvq_u8(vceqzq_s8(*v45)) & 0x80) != 0);
        do
        {
          v46 = v45;
          v45 = (v45 + 4);
        }

        while (v45 <= v43 && !v46->i32[0]);
        if (v46 < v43)
        {
          while (!v46->i8[0])
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
        v48 = (v46 - a10) * a14;
        a3 = (a3 + 8 * v48);
        result = (result + 8 * v48);
        a10 += v48;
        v41 -= v47;
LABEL_39:
        if (v41 <= 3)
        {
          goto LABEL_42;
        }
      }

      v93 = 0;
      while (1)
      {
        v94 = (result + v93);
        v17.i32[0] = v42;
        v95 = vqtbl1q_s8(v17, xmmword_18439C7A0);
        v96 = vcvtq_f16_u16(vmovl_u8(*v95.i8));
        v97 = vdupq_n_s16(0x1C04u);
        v98 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v95)), v97);
        v99 = vmulq_f16(v96, v97);
        v100 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v99)), v39, *(result + v93));
        v101 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v98)), v39, *(&result[1] + v93));
        v102 = vmulq_f16(v98, vorrq_s8(vandq_s8(*(&a3[1] + v93), v23), v24));
        v103 = vmulq_f16(v99, vorrq_s8(vandq_s8(*(a3 + v93), v23), v24));
        v104 = vqtbl1q_s8(v103, xmmword_18439C6E0);
        v105 = vqtbl1q_s8(v102, xmmword_18439C6E0);
        v106 = vqtbl1q_s8(v101, xmmword_18439C6E0);
        v107 = vqtbl1q_s8(v100, xmmword_18439C6E0);
        v108 = vcvt_hight_f32_f16(v101);
        v109 = vcvtq_f32_f16(*v101.i8);
        v110 = vcvt_hight_f32_f16(v100);
        v111 = vcvtq_f32_f16(*v100.i8);
        v112 = vcvtq_f32_f16(*v103.i8);
        v113 = vdivq_f32(v111, vcvtq_f32_f16(*v107.i8));
        v114 = vaddq_f32(v112, v112);
        v115 = vmlaq_f32(vmlsq_f32(v114, v113, v114), v113, vcvtq_f32_f16(*v104.i8));
        v116 = vcvt_hight_f32_f16(v103);
        v117 = vdivq_f32(v110, vcvt_hight_f32_f16(v107));
        v118 = vaddq_f32(v116, v116);
        v119 = vcvtq_f32_f16(*v102.i8);
        v120 = vdivq_f32(v109, vcvtq_f32_f16(*v106.i8));
        v121 = vaddq_f32(v119, v119);
        v122 = vmlaq_f32(vmlsq_f32(v121, v120, v121), v120, vcvtq_f32_f16(*v105.i8));
        v123 = vcvt_hight_f32_f16(v102);
        v124 = vdivq_f32(v108, vcvt_hight_f32_f16(v106));
        v125 = vaddq_f32(v123, v123);
        v126 = vmulq_f32(vmlaq_f32(vmlsq_f32(v125, v124, v125), v124, vcvt_hight_f32_f16(v105)), v108);
        *v109.f32 = vcvt_f16_f32(vmulq_f32(v122, v109));
        v127 = vcvtq_f32_f16(*v109.f32);
        v128 = vbicq_s8(vcgezq_f16(vcvt_hight_f16_f32(*v109.f32, v126)), vceqzq_f16(v106));
        v129 = vmovl_high_s16(v128);
        v130 = vandq_s8(v127, vmovl_s16(*v128.i8));
        v131 = vmlsq_f16(v101, v101, v105);
        v132 = vbslq_s8(vcgtzq_f16(v106), vaddq_f16(vmlsq_f16(v102, v102, v106), vcvt_hight_f16_f32(vcvt_f16_f32(vaddq_f32(v130, vcvtq_f32_f16(*v131.i8))), vaddq_f32(vandq_s8(vcvtq_f32_f16(vcvt_f16_f32(v126)), v129), vcvt_hight_f32_f16(v131)))), v102);
        v133 = vmulq_f32(vmlaq_f32(vmlsq_f32(v118, v117, v118), v117, vcvt_hight_f32_f16(v104)), v110);
        *v111.f32 = vcvt_f16_f32(vmulq_f32(v115, v111));
        v134 = vcvtq_f32_f16(*v111.f32);
        v135 = vbicq_s8(vcgezq_f16(vcvt_hight_f16_f32(*v111.f32, v133)), vceqzq_f16(v107));
        v136 = vmovl_high_s16(v135);
        v137 = vandq_s8(v134, vmovl_s16(*v135.i8));
        v138 = vmlsq_f16(v100, v100, v104);
        v17 = vcgtzq_f16(v104);
        *v94 = vbslq_s8(v17, vbslq_s8(vcgtzq_f16(v107), vaddq_f16(vmlsq_f16(v103, v103, v107), vcvt_hight_f16_f32(vcvt_f16_f32(vaddq_f32(v137, vcvtq_f32_f16(*v138.i8))), vaddq_f32(vandq_s8(vcvtq_f32_f16(vcvt_f16_f32(v133)), v136), vcvt_hight_f32_f16(v138)))), v103), v100);
        v94[1] = vbslq_s8(vcgtzq_f16(v105), v132, v101);
        a10 += v30;
        v41 -= 4;
        if (v41 < 4)
        {
          break;
        }

        v42 = *a10;
        v93 += v36;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v93);
          a3 = (a3 + v93);
          goto LABEL_39;
        }
      }

      result = (result + v36 + v93);
      a3 = (a3 + v36 + v93);
LABEL_42:
      for (i = a12 - v40 + v41; i; --i)
      {
        if (*a10)
        {
          v140 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
          v141 = vbsl_s8(vand_s8(v34, vcgtz_f16(v140)), 0x3C003C003C003C00, *result->i8);
          v142 = vmul_f16(v140, vorr_s8(vand_s8(*a3->i8, v32), v33));
          v143 = vdup_lane_s16(v142, 3);
          v144 = vdup_lane_s16(v141, 3);
          v145 = vcgtz_f16(v144);
          v146 = vcgtz_f16(v143);
          v147 = vceqz_f16(v144);
          v148 = vcvtq_f32_f16(v141);
          v149 = vcvtq_f32_f16(v142);
          v150 = vdivq_f32(v148, vcvtq_f32_f16(v144));
          v151 = vaddq_f32(v149, v149);
          v152 = vcvt_f16_f32(vmulq_f32(vmlaq_f32(vmlsq_f32(v151, v150, v151), v150, vcvtq_f32_f16(v143)), v148));
          v153 = vmovl_s16(vbic_s8(vcgez_f16(v152), v147));
          v17 = vcvtq_f32_f16(vmls_lane_f16(v141, v141, v142, 3));
          *result->i8 = vbsl_s8(v146, vbsl_s8(v145, vadd_f16(vmls_lane_f16(v142, v142, v141, 3), vcvt_f16_f32(vaddq_f32(vandq_s8(vcvtq_f32_f16(v152), v153), v17))), v142), v141);
        }

        v154 = &a3->i8[8 * a14];
        a10 += a14;
        if (v154 >= a8)
        {
          v155 = -a7;
        }

        else
        {
          v155 = 0;
        }

        a3 = &v154[8 * v155];
        result = (result + v37);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v156 = &a5->i64[a4];
      if (v156 >= a9)
      {
        v157 = v35;
      }

      else
      {
        v157 = 0;
      }

      v158 = &v156[v157];
      v159 = a8 + 8 * v157 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v158;
        a8 = v159;
        a5 = v158;
      }

      v160 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v160 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v161 = (a8 - a3) >> 3;
    if (v161 >= a12)
    {
      v161 = a12;
    }

    v162 = v161;
    if (v161 < 4)
    {
      goto LABEL_91;
    }

    while (1)
    {
      v163 = *a10;
      if (*a10 == -1)
      {
        v170 = &a10[v162];
        v171 = a10;
        do
        {
          v172 = v171++;
        }

        while (v171 <= v170 && (vminvq_u8(vceqq_s8(*v172, v38)) & 0x80) != 0);
        do
        {
          v173 = v172;
          v172 = (v172 + 4);
        }

        while (v172 <= v170 && v173->i32[0] == -1);
        if (v173 < v170)
        {
          while (v173->u8[0] == 255)
          {
            v173 = (v173 + 1);
            if (v173 >= v170)
            {
              v173 = &a10[v162];
              break;
            }
          }
        }

        v174 = v173 - a10;
        v175 = v173 - a10;
        do
        {
          v176 = vorrq_s8(vandq_s8(vrev16q_s8(*a3), v23), v24);
          v177 = vqtbl1q_s8(v176, xmmword_18439C6E0);
          v178 = vorrq_s8(vandq_s8(vrev16q_s8(a3[1]), v23), v24);
          v179 = vqtbl1q_s8(v178, xmmword_18439C6E0);
          v180 = vorrq_s8(vandq_s8(vrev16q_s8(result[1]), v28), v29);
          v181 = vqtbl1q_s8(v180, xmmword_18439C6E0);
          v17 = vorrq_s8(vandq_s8(vrev16q_s8(*result), v28), v29);
          v182 = vqtbl1q_s8(v17, xmmword_18439C6E0);
          v183 = vcvt_hight_f32_f16(v180);
          v184 = vcvtq_f32_f16(*v180.i8);
          v185 = vcvt_hight_f32_f16(v17);
          v186 = vcvtq_f32_f16(*v17.i8);
          v187 = vcvtq_f32_f16(*v176.i8);
          v188 = vdivq_f32(v186, vcvtq_f32_f16(*v182.i8));
          v189 = vaddq_f32(v187, v187);
          v190 = vmlaq_f32(vmlsq_f32(v189, v188, v189), v188, vcvtq_f32_f16(*v177.i8));
          v191 = vcvt_hight_f32_f16(v176);
          v192 = vdivq_f32(v185, vcvt_hight_f32_f16(v182));
          v193 = vaddq_f32(v191, v191);
          v194 = vcvtq_f32_f16(*v178.i8);
          v195 = vdivq_f32(v184, vcvtq_f32_f16(*v181.i8));
          v196 = vaddq_f32(v194, v194);
          v197 = vmlaq_f32(vmlsq_f32(v196, v195, v196), v195, vcvtq_f32_f16(*v179.i8));
          v198 = vcvt_hight_f32_f16(v178);
          v199 = vdivq_f32(v183, vcvt_hight_f32_f16(v181));
          v200 = vaddq_f32(v198, v198);
          v201 = vmulq_f32(vmlaq_f32(vmlsq_f32(v200, v199, v200), v199, vcvt_hight_f32_f16(v179)), v183);
          *v184.f32 = vcvt_f16_f32(vmulq_f32(v197, v184));
          v202 = vcvtq_f32_f16(*v184.f32);
          v203 = vbicq_s8(vcgezq_f16(vcvt_hight_f16_f32(*v184.f32, v201)), vceqzq_f16(v181));
          v204 = vmovl_high_s16(v203);
          v205 = vandq_s8(v202, vmovl_s16(*v203.i8));
          v206 = vmlsq_f16(v180, v180, v179);
          v207 = vbslq_s8(vcgtzq_f16(v181), vaddq_f16(vmlsq_f16(v178, v178, v181), vcvt_hight_f16_f32(vcvt_f16_f32(vaddq_f32(v205, vcvtq_f32_f16(*v206.i8))), vaddq_f32(vandq_s8(vcvtq_f32_f16(vcvt_f16_f32(v201)), v204), vcvt_hight_f32_f16(v206)))), v178);
          v208 = vmulq_f32(vmlaq_f32(vmlsq_f32(v193, v192, v193), v192, vcvt_hight_f32_f16(v177)), v185);
          *v186.f32 = vcvt_f16_f32(vmulq_f32(v190, v186));
          v209 = vcvtq_f32_f16(*v186.f32);
          v210 = vbicq_s8(vcgezq_f16(vcvt_hight_f16_f32(*v186.f32, v208)), vceqzq_f16(v182));
          v211 = vmovl_high_s16(v210);
          v212 = vandq_s8(v209, vmovl_s16(*v210.i8));
          v213 = vmlsq_f16(v17, v17, v177);
          *result = vrev16q_s8(vbslq_s8(vcgtzq_f16(v177), vbslq_s8(vcgtzq_f16(v182), vaddq_f16(vmlsq_f16(v176, v176, v182), vcvt_hight_f16_f32(vcvt_f16_f32(vaddq_f32(v212, vcvtq_f32_f16(*v213.i8))), vaddq_f32(vandq_s8(vcvtq_f32_f16(vcvt_f16_f32(v208)), v211), vcvt_hight_f32_f16(v213)))), v176), v17));
          result[1] = vrev16q_s8(vbslq_s8(vcgtzq_f16(v179), v207, v180));
          a10 += v30;
          v175 -= 4;
          result = (result + v36);
          a3 = (a3 + v36);
        }

        while (v175 > 3);
        v162 = v162 - v174 + v175;
        goto LABEL_88;
      }

      if (v163)
      {
        break;
      }

      v164 = &a10[v162];
      v165 = a10;
      do
      {
        v166 = v165++;
      }

      while (v165 <= v164 && (vminvq_u8(vceqzq_s8(*v166)) & 0x80) != 0);
      do
      {
        v167 = v166;
        v166 = (v166 + 4);
      }

      while (v166 <= v164 && !v167->i32[0]);
      if (v167 < v164)
      {
        while (!v167->i8[0])
        {
          v167 = (v167 + 1);
          if (v167 >= v164)
          {
            v167 = &a10[v162];
            break;
          }
        }
      }

      v168 = v167 - a10;
      v169 = (v167 - a10) * a14;
      a3 = (a3 + 8 * v169);
      result = (result + 8 * v169);
      a10 += v169;
      v162 -= v168;
LABEL_88:
      if (v162 <= 3)
      {
        goto LABEL_91;
      }
    }

    v214 = 0;
    while (1)
    {
      v215 = (result + v214);
      v17.i32[0] = v163;
      v216 = vqtbl1q_s8(v17, xmmword_18439C7A0);
      v217 = vcvtq_f16_u16(vmovl_high_u8(v216));
      v218 = vdupq_n_s16(0x1C04u);
      v219 = vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v216.i8)), v218);
      v220 = vmulq_f16(v217, v218);
      v221 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v220)), v39, vrev16q_s8(*(&result[1] + v214)));
      v222 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v219)), v39, vrev16q_s8(*(result + v214)));
      v223 = vmulq_f16(v219, vorrq_s8(vandq_s8(vrev16q_s8(*(a3 + v214)), v23), v24));
      v224 = vmulq_f16(v220, vorrq_s8(vandq_s8(vrev16q_s8(*(&a3[1] + v214)), v23), v24));
      v225 = vqtbl1q_s8(v224, xmmword_18439C6E0);
      v226 = vqtbl1q_s8(v223, xmmword_18439C6E0);
      v227 = vqtbl1q_s8(v222, xmmword_18439C6E0);
      v228 = vqtbl1q_s8(v221, xmmword_18439C6E0);
      v229 = vcvt_hight_f32_f16(v222);
      v230 = vcvtq_f32_f16(*v222.i8);
      v231 = vcvt_hight_f32_f16(v221);
      v232 = vcvtq_f32_f16(*v221.i8);
      v233 = vcvtq_f32_f16(*v224.i8);
      v234 = vdivq_f32(v232, vcvtq_f32_f16(*v228.i8));
      v235 = vaddq_f32(v233, v233);
      v236 = vmlaq_f32(vmlsq_f32(v235, v234, v235), v234, vcvtq_f32_f16(*v225.i8));
      v237 = vcvt_hight_f32_f16(v224);
      v238 = vdivq_f32(v231, vcvt_hight_f32_f16(v228));
      v239 = vaddq_f32(v237, v237);
      v240 = vcvtq_f32_f16(*v223.i8);
      v241 = vdivq_f32(v230, vcvtq_f32_f16(*v227.i8));
      v242 = vaddq_f32(v240, v240);
      v243 = vmlaq_f32(vmlsq_f32(v242, v241, v242), v241, vcvtq_f32_f16(*v226.i8));
      v244 = vcvt_hight_f32_f16(v223);
      v245 = vdivq_f32(v229, vcvt_hight_f32_f16(v227));
      v246 = vaddq_f32(v244, v244);
      v247 = vmulq_f32(vmlaq_f32(vmlsq_f32(v246, v245, v246), v245, vcvt_hight_f32_f16(v226)), v229);
      *v230.f32 = vcvt_f16_f32(vmulq_f32(v243, v230));
      v248 = vcvtq_f32_f16(*v230.f32);
      v249 = vbicq_s8(vcgezq_f16(vcvt_hight_f16_f32(*v230.f32, v247)), vceqzq_f16(v227));
      v250 = vmovl_high_s16(v249);
      v251 = vandq_s8(v248, vmovl_s16(*v249.i8));
      v252 = vmlsq_f16(v222, v222, v226);
      v253 = vbslq_s8(vcgtzq_f16(v227), vaddq_f16(vmlsq_f16(v223, v223, v227), vcvt_hight_f16_f32(vcvt_f16_f32(vaddq_f32(v251, vcvtq_f32_f16(*v252.i8))), vaddq_f32(vandq_s8(vcvtq_f32_f16(vcvt_f16_f32(v247)), v250), vcvt_hight_f32_f16(v252)))), v223);
      v254 = vmulq_f32(vmlaq_f32(vmlsq_f32(v239, v238, v239), v238, vcvt_hight_f32_f16(v225)), v231);
      *v232.f32 = vcvt_f16_f32(vmulq_f32(v236, v232));
      v255 = vcvtq_f32_f16(*v232.f32);
      v256 = vbicq_s8(vcgezq_f16(vcvt_hight_f16_f32(*v232.f32, v254)), vceqzq_f16(v228));
      v257 = vmovl_high_s16(v256);
      v258 = vandq_s8(v255, vmovl_s16(*v256.i8));
      v259 = vmlsq_f16(v221, v221, v225);
      v17 = vcgtzq_f16(v225);
      *v215 = vrev16q_s8(vbslq_s8(vcgtzq_f16(v226), v253, v222));
      v215[1] = vrev16q_s8(vbslq_s8(v17, vbslq_s8(vcgtzq_f16(v228), vaddq_f16(vmlsq_f16(v224, v224, v228), vcvt_hight_f16_f32(vcvt_f16_f32(vaddq_f32(v258, vcvtq_f32_f16(*v259.i8))), vaddq_f32(vandq_s8(vcvtq_f32_f16(vcvt_f16_f32(v254)), v257), vcvt_hight_f32_f16(v259)))), v224), v221));
      a10 += v30;
      v162 -= 4;
      if (v162 < 4)
      {
        break;
      }

      v163 = *a10;
      v214 += v36;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v214);
        a3 = (a3 + v214);
        goto LABEL_88;
      }
    }

    result = (result + v36 + v214);
    a3 = (a3 + v36 + v214);
LABEL_91:
    for (j = a12 - v161 + v162; j; --j)
    {
      if (*a10)
      {
        v261 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
        v262 = vbsl_s8(vand_s8(v34, vcgtz_f16(v261)), 0x3C003C003C003C00, vrev16_s8(*result->i8));
        v263 = vmul_f16(v261, vorr_s8(vand_s8(vrev16_s8(*a3->i8), v32), v33));
        v264 = vdup_lane_s16(v263, 3);
        v265 = vdup_lane_s16(v262, 3);
        v266 = vcgtz_f16(v265);
        v267 = vcgtz_f16(v264);
        v268 = vceqz_f16(v265);
        v269 = vcvtq_f32_f16(v262);
        v270 = vcvtq_f32_f16(v263);
        v271 = vdivq_f32(v269, vcvtq_f32_f16(v265));
        v272 = vaddq_f32(v270, v270);
        v273 = vcvt_f16_f32(vmulq_f32(vmlaq_f32(vmlsq_f32(v272, v271, v272), v271, vcvtq_f32_f16(v264)), v269));
        v274 = vmovl_s16(vbic_s8(vcgez_f16(v273), v268));
        v17 = vcvtq_f32_f16(vmls_lane_f16(v262, v262, v263, 3));
        *result->i8 = vrev16_s8(vbsl_s8(v267, vbsl_s8(v266, vadd_f16(vmls_lane_f16(v263, v263, v262, 3), vcvt_f16_f32(vaddq_f32(vandq_s8(vcvtq_f32_f16(v273), v274), v17))), v263), v262));
      }

      v275 = &a3->i8[8 * a14];
      a10 += a14;
      if (v275 >= a8)
      {
        v276 = -a7;
      }

      else
      {
        v276 = 0;
      }

      a3 = &v275[8 * v276];
      result = (result + v37);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v277 = &a5->i64[a4];
    if (v277 >= a9)
    {
      v278 = v35;
    }

    else
    {
      v278 = 0;
    }

    v279 = &v277[v278];
    v280 = a8 + 8 * v278 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v279;
      a8 = v280;
      a5 = v279;
    }

    v160 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v160 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)22,_rgbaf16_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  v21 = vdupq_n_s16(v20);
  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vmvnq_s8(vandq_s8(v21, v22));
  v24 = vandq_s8(v21, xmmword_18439CFA0);
  if (a15)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vdupq_n_s16(v25);
  v27 = vandq_s8(v26, v22);
  v28 = vmvnq_s8(v27);
  v29 = vandq_s8(v26, xmmword_18439CFA0);
  v30 = 4 * a14;
  v34 = 0;
  v31 = 0;
  v31.i16[3] = v20;
  v32 = vmvn_s8(v31);
  v33 = vand_s8(*v21.i8, 0x3C00000000000000);
  v34.i16[3] = v25;
  v35 = -(a6 * a4);
  v36 = 8 * v30;
  v37 = 8 * a14;
  v38.i64[0] = -1;
  v38.i64[1] = -1;
  v39.i64[0] = 0x3C003C003C003C00;
  v39.i64[1] = 0x3C003C003C003C00;
  if ((a17 & 0x30) != 0)
  {
    while (1)
    {
      v40 = (a8 - a3) >> 3;
      if (v40 >= a12)
      {
        v40 = a12;
      }

      v41 = v40;
      if (v40 < 4)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v42 = *a10;
        if (*a10 == -1)
        {
          v49 = &a10[v41];
          v50 = a10;
          do
          {
            v51 = v50++;
          }

          while (v50 <= v49 && (vminvq_u8(vceqq_s8(*v51, v38)) & 0x80) != 0);
          do
          {
            v52 = v51;
            v51 = (v51 + 4);
          }

          while (v51 <= v49 && v52->i32[0] == -1);
          if (v52 < v49)
          {
            while (v52->u8[0] == 255)
            {
              v52 = (v52 + 1);
              if (v52 >= v49)
              {
                v52 = &a10[v41];
                break;
              }
            }
          }

          v53 = v52 - a10;
          v54 = v52 - a10;
          do
          {
            v55 = vorrq_s8(vandq_s8(a3[1], v23), v24);
            v56 = vqtbl1q_s8(v55, xmmword_18439C6E0);
            v57 = vorrq_s8(vandq_s8(*a3, v23), v24);
            v58 = vqtbl1q_s8(v57, xmmword_18439C6E0);
            v59 = vorrq_s8(vandq_s8(*result, v28), v29);
            v60 = vqtbl1q_s8(v59, xmmword_18439C6E0);
            v61 = vorrq_s8(vandq_s8(result[1], v28), v29);
            v62 = vqtbl1q_s8(v61, xmmword_18439C6E0);
            v63 = vcgtzq_f16(v56);
            v151.val[0] = vaddq_f16(vabdq_f16(vmulq_f16(v58, v59), vmulq_f16(v60, v57)), vaddq_f16(vmlsq_f16(v59, v59, v58), vmlsq_f16(v57, v57, v60)));
            v145.val[0] = vaddq_f16(vabdq_f16(vmulq_f16(v56, v61), vmulq_f16(v62, v55)), vaddq_f16(vmlsq_f16(v61, v61, v56), vmlsq_f16(v55, v55, v62)));
            v151.val[1] = vaddq_f16(v57, vmlsq_f16(v60, v60, v58));
            v145.val[1] = vaddq_f16(v55, vmlsq_f16(v62, v62, v56));
            v17 = vqtbl2q_s8(v145, xmmword_18439CFC0);
            *result = vbslq_s8(vcgtzq_f16(v58), vbslq_s8(vcgtzq_f16(v60), vqtbl2q_s8(v151, xmmword_18439CFC0), v57), v59);
            result[1] = vbslq_s8(v63, vbslq_s8(vcgtzq_f16(v62), v17, v55), v61);
            a10 += v30;
            v54 -= 4;
            result = (result + v36);
            a3 = (a3 + v36);
          }

          while (v54 > 3);
          v41 = v41 - v53 + v54;
          goto LABEL_39;
        }

        if (v42)
        {
          break;
        }

        v43 = &a10[v41];
        v44 = a10;
        do
        {
          v45 = v44++;
        }

        while (v44 <= v43 && (vminvq_u8(vceqzq_s8(*v45)) & 0x80) != 0);
        do
        {
          v46 = v45;
          v45 = (v45 + 4);
        }

        while (v45 <= v43 && !v46->i32[0]);
        if (v46 < v43)
        {
          while (!v46->i8[0])
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
        v48 = (v46 - a10) * a14;
        a3 = (a3 + 8 * v48);
        result = (result + 8 * v48);
        a10 += v48;
        v41 -= v47;
LABEL_39:
        if (v41 <= 3)
        {
          goto LABEL_42;
        }
      }

      v64 = 0;
      while (1)
      {
        v65 = (result + v64);
        v17.i32[0] = v42;
        v66 = vqtbl1q_s8(v17, xmmword_18439C7A0);
        v67 = vcvtq_f16_u16(vmovl_u8(*v66.i8));
        v68 = vdupq_n_s16(0x1C04u);
        v69 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v66)), v68);
        v70 = vmulq_f16(v67, v68);
        v71 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v70)), v39, *(result + v64));
        v72 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v69)), v39, *(&result[1] + v64));
        v73 = vmulq_f16(v69, vorrq_s8(vandq_s8(*(&a3[1] + v64), v23), v24));
        v74 = vmulq_f16(v70, vorrq_s8(vandq_s8(*(a3 + v64), v23), v24));
        v75 = vqtbl1q_s8(v74, xmmword_18439C6E0);
        v76 = vqtbl1q_s8(v73, xmmword_18439C6E0);
        v77 = vqtbl1q_s8(v72, xmmword_18439C6E0);
        v78 = vqtbl1q_s8(v71, xmmword_18439C6E0);
        v79 = vcgtzq_f16(v75);
        v147.val[0] = vaddq_f16(vabdq_f16(vmulq_f16(v76, v72), vmulq_f16(v73, v77)), vaddq_f16(vmlsq_f16(v72, v72, v76), vmlsq_f16(v73, v73, v77)));
        v149.val[0] = vaddq_f16(vabdq_f16(vmulq_f16(v75, v71), vmulq_f16(v74, v78)), vaddq_f16(vmlsq_f16(v71, v71, v75), vmlsq_f16(v74, v74, v78)));
        v147.val[1] = vaddq_f16(v73, vmlsq_f16(v77, v77, v76));
        v149.val[1] = vaddq_f16(v74, vmlsq_f16(v78, v78, v75));
        v17 = vqtbl2q_s8(v149, xmmword_18439CFC0);
        *v65 = vbslq_s8(v79, vbslq_s8(vcgtzq_f16(v78), v17, v74), v71);
        v65[1] = vbslq_s8(vcgtzq_f16(v76), vbslq_s8(vcgtzq_f16(v77), vqtbl2q_s8(v147, xmmword_18439CFC0), v73), v72);
        a10 += v30;
        v41 -= 4;
        if (v41 < 4)
        {
          break;
        }

        v42 = *a10;
        v64 += v36;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v64);
          a3 = (a3 + v64);
          goto LABEL_39;
        }
      }

      result = (result + v36 + v64);
      a3 = (a3 + v36 + v64);
LABEL_42:
      for (i = a12 - v40 + v41; i; --i)
      {
        if (*a10)
        {
          v81 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
          v82 = vbsl_s8(vand_s8(v34, vcgtz_f16(v81)), 0x3C003C003C003C00, *result->i8);
          v83 = vmul_f16(v81, vorr_s8(vand_s8(*a3->i8, v32), v33));
          v84 = vdup_lane_s16(v83, 3);
          v85 = vdup_lane_s16(v82, 3);
          *v17.i8 = vadd_f16(vadd_f16(vmls_lane_f16(v83, v83, v82, 3), vmls_lane_f16(v82, v82, v83, 3)), vabd_f16(vmul_lane_f16(v82, v83, 3), vmul_lane_f16(v83, v82, 3)));
          v17.i16[3] = vadd_f16(v83, vmls_lane_f16(v85, v84, v82, 3)).i16[3];
          *result->i8 = vbsl_s8(vcgtz_f16(v84), vbsl_s8(vcgtz_f16(v85), *v17.i8, v83), v82);
        }

        v86 = &a3->i8[8 * a14];
        a10 += a14;
        if (v86 >= a8)
        {
          v87 = -a7;
        }

        else
        {
          v87 = 0;
        }

        a3 = &v86[8 * v87];
        result = (result + v37);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v88 = &a5->i64[a4];
      if (v88 >= a9)
      {
        v89 = v35;
      }

      else
      {
        v89 = 0;
      }

      v90 = &v88[v89];
      v91 = a8 + 8 * v89 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v90;
        a8 = v91;
        a5 = v90;
      }

      v92 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v92 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v93 = (a8 - a3) >> 3;
    if (v93 >= a12)
    {
      v93 = a12;
    }

    v94 = v93;
    if (v93 < 4)
    {
      goto LABEL_91;
    }

    while (1)
    {
      v95 = *a10;
      if (*a10 == -1)
      {
        v102 = &a10[v94];
        v103 = a10;
        do
        {
          v104 = v103++;
        }

        while (v103 <= v102 && (vminvq_u8(vceqq_s8(*v104, v38)) & 0x80) != 0);
        do
        {
          v105 = v104;
          v104 = (v104 + 4);
        }

        while (v104 <= v102 && v105->i32[0] == -1);
        if (v105 < v102)
        {
          while (v105->u8[0] == 255)
          {
            v105 = (v105 + 1);
            if (v105 >= v102)
            {
              v105 = &a10[v94];
              break;
            }
          }
        }

        v106 = v105 - a10;
        v107 = v105 - a10;
        do
        {
          v108 = vorrq_s8(vandq_s8(vrev16q_s8(*a3), v23), v24);
          v109 = vqtbl1q_s8(v108, xmmword_18439C6E0);
          v110 = vorrq_s8(vandq_s8(vrev16q_s8(a3[1]), v23), v24);
          v111 = vqtbl1q_s8(v110, xmmword_18439C6E0);
          v112 = vorrq_s8(vandq_s8(vrev16q_s8(result[1]), v28), v29);
          v113 = vqtbl1q_s8(v112, xmmword_18439C6E0);
          v114 = vorrq_s8(vandq_s8(vrev16q_s8(*result), v28), v29);
          v115 = vqtbl1q_s8(v114, xmmword_18439C6E0);
          v116 = vcgtzq_f16(v109);
          v148.val[0] = vaddq_f16(vabdq_f16(vmulq_f16(v111, v112), vmulq_f16(v113, v110)), vaddq_f16(vmlsq_f16(v112, v112, v111), vmlsq_f16(v110, v110, v113)));
          v150.val[0] = vaddq_f16(vabdq_f16(vmulq_f16(v109, v114), vmulq_f16(v115, v108)), vaddq_f16(vmlsq_f16(v114, v114, v109), vmlsq_f16(v108, v108, v115)));
          v148.val[1] = vaddq_f16(v110, vmlsq_f16(v113, v113, v111));
          v150.val[1] = vaddq_f16(v108, vmlsq_f16(v115, v115, v109));
          v17 = vqtbl2q_s8(v150, xmmword_18439CFC0);
          *result = vrev16q_s8(vbslq_s8(v116, vbslq_s8(vcgtzq_f16(v115), v17, v108), v114));
          result[1] = vrev16q_s8(vbslq_s8(vcgtzq_f16(v111), vbslq_s8(vcgtzq_f16(v113), vqtbl2q_s8(v148, xmmword_18439CFC0), v110), v112));
          a10 += v30;
          v107 -= 4;
          result = (result + v36);
          a3 = (a3 + v36);
        }

        while (v107 > 3);
        v94 = v94 - v106 + v107;
        goto LABEL_88;
      }

      if (v95)
      {
        break;
      }

      v96 = &a10[v94];
      v97 = a10;
      do
      {
        v98 = v97++;
      }

      while (v97 <= v96 && (vminvq_u8(vceqzq_s8(*v98)) & 0x80) != 0);
      do
      {
        v99 = v98;
        v98 = (v98 + 4);
      }

      while (v98 <= v96 && !v99->i32[0]);
      if (v99 < v96)
      {
        while (!v99->i8[0])
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
      v101 = (v99 - a10) * a14;
      a3 = (a3 + 8 * v101);
      result = (result + 8 * v101);
      a10 += v101;
      v94 -= v100;
LABEL_88:
      if (v94 <= 3)
      {
        goto LABEL_91;
      }
    }

    v117 = 0;
    while (1)
    {
      v118 = (result + v117);
      v17.i32[0] = v95;
      v119 = vqtbl1q_s8(v17, xmmword_18439C7A0);
      v120 = vcvtq_f16_u16(vmovl_high_u8(v119));
      v121 = vdupq_n_s16(0x1C04u);
      v122 = vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v119.i8)), v121);
      v123 = vmulq_f16(v120, v121);
      v124 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v123)), v39, vrev16q_s8(*(&result[1] + v117)));
      v125 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v122)), v39, vrev16q_s8(*(result + v117)));
      v126 = vmulq_f16(v122, vorrq_s8(vandq_s8(vrev16q_s8(*(a3 + v117)), v23), v24));
      v127 = vmulq_f16(v123, vorrq_s8(vandq_s8(vrev16q_s8(*(&a3[1] + v117)), v23), v24));
      v128 = vqtbl1q_s8(v127, xmmword_18439C6E0);
      v129 = vqtbl1q_s8(v126, xmmword_18439C6E0);
      v130 = vqtbl1q_s8(v125, xmmword_18439C6E0);
      v131 = vqtbl1q_s8(v124, xmmword_18439C6E0);
      v132 = vcgtzq_f16(v128);
      v152.val[0] = vaddq_f16(vabdq_f16(vmulq_f16(v129, v125), vmulq_f16(v126, v130)), vaddq_f16(vmlsq_f16(v125, v125, v129), vmlsq_f16(v126, v126, v130)));
      v146.val[0] = vaddq_f16(vabdq_f16(vmulq_f16(v128, v124), vmulq_f16(v127, v131)), vaddq_f16(vmlsq_f16(v124, v124, v128), vmlsq_f16(v127, v127, v131)));
      v152.val[1] = vaddq_f16(v126, vmlsq_f16(v130, v130, v129));
      v146.val[1] = vaddq_f16(v127, vmlsq_f16(v131, v131, v128));
      v17 = vqtbl2q_s8(v146, xmmword_18439CFC0);
      *v118 = vrev16q_s8(vbslq_s8(vcgtzq_f16(v129), vbslq_s8(vcgtzq_f16(v130), vqtbl2q_s8(v152, xmmword_18439CFC0), v126), v125));
      v118[1] = vrev16q_s8(vbslq_s8(v132, vbslq_s8(vcgtzq_f16(v131), v17, v127), v124));
      a10 += v30;
      v94 -= 4;
      if (v94 < 4)
      {
        break;
      }

      v95 = *a10;
      v117 += v36;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v117);
        a3 = (a3 + v117);
        goto LABEL_88;
      }
    }

    result = (result + v36 + v117);
    a3 = (a3 + v36 + v117);
LABEL_91:
    for (j = a12 - v93 + v94; j; --j)
    {
      if (*a10)
      {
        v134 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
        v135 = vbsl_s8(vand_s8(v34, vcgtz_f16(v134)), 0x3C003C003C003C00, vrev16_s8(*result->i8));
        v136 = vmul_f16(v134, vorr_s8(vand_s8(vrev16_s8(*a3->i8), v32), v33));
        v137 = vdup_lane_s16(v136, 3);
        v138 = vdup_lane_s16(v135, 3);
        *v17.i8 = vadd_f16(vadd_f16(vmls_lane_f16(v136, v136, v135, 3), vmls_lane_f16(v135, v135, v136, 3)), vabd_f16(vmul_lane_f16(v135, v136, 3), vmul_lane_f16(v136, v135, 3)));
        v17.i16[3] = vadd_f16(v136, vmls_lane_f16(v138, v137, v135, 3)).i16[3];
        *result->i8 = vrev16_s8(vbsl_s8(vcgtz_f16(v137), vbsl_s8(vcgtz_f16(v138), *v17.i8, v136), v135));
      }

      v139 = &a3->i8[8 * a14];
      a10 += a14;
      if (v139 >= a8)
      {
        v140 = -a7;
      }

      else
      {
        v140 = 0;
      }

      a3 = &v139[8 * v140];
      result = (result + v37);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v141 = &a5->i64[a4];
    if (v141 >= a9)
    {
      v142 = v35;
    }

    else
    {
      v142 = 0;
    }

    v143 = &v141[v142];
    v144 = a8 + 8 * v142 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v143;
      a8 = v144;
      a5 = v143;
    }

    v92 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v92 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

int8x16_t *composite_pixelmask<(CGCompositeOperation)23,_rgbaf16_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, char *a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, char a17)
{
  if (a16)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  v21 = vdupq_n_s16(v20);
  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vmvnq_s8(vandq_s8(v21, v22));
  v24 = vandq_s8(v21, xmmword_18439CFA0);
  if (a15)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vdupq_n_s16(v25);
  v27 = vandq_s8(v26, v22);
  v28 = vmvnq_s8(v27);
  v29 = vandq_s8(v26, xmmword_18439CFA0);
  v30 = 4 * a14;
  v34 = 0;
  v31 = 0;
  v31.i16[3] = v20;
  v32 = vmvn_s8(v31);
  v33 = vand_s8(*v21.i8, 0x3C00000000000000);
  v34.i16[3] = v25;
  v35 = -(a6 * a4);
  v36 = 8 * v30;
  v37 = 8 * a14;
  v38.i64[0] = -1;
  v38.i64[1] = -1;
  v39 = vdupq_n_s16(0x1C04u);
  v40.i64[0] = 0x3C003C003C003C00;
  v40.i64[1] = 0x3C003C003C003C00;
  if ((a17 & 0x30) != 0)
  {
    while (1)
    {
      v41 = (a8 - a3) >> 3;
      if (v41 >= a12)
      {
        v41 = a12;
      }

      v42 = v41;
      if (v41 < 4)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v43 = *a10;
        if (*a10 == -1)
        {
          v50 = &a10[v42];
          v51 = a10;
          do
          {
            v52 = v51++;
          }

          while (v51 <= v50 && (vminvq_u8(vceqq_s8(*v52, v38)) & 0x80) != 0);
          do
          {
            v53 = v52;
            v52 = (v52 + 4);
          }

          while (v52 <= v50 && v53->i32[0] == -1);
          if (v53 < v50)
          {
            while (v53->u8[0] == 255)
            {
              v53 = (v53 + 1);
              if (v53 >= v50)
              {
                v53 = &a10[v42];
                break;
              }
            }
          }

          v54 = v53 - a10;
          v55 = v53 - a10;
          do
          {
            v118.val[1] = vorrq_s8(vandq_s8(*a3, v23), v24);
            v114.val[1] = vorrq_s8(vandq_s8(a3[1], v23), v24);
            v56 = vorrq_s8(vandq_s8(result[1], v28), v29);
            v57 = vorrq_s8(vandq_s8(*result, v28), v29);
            v114.val[0] = vmlsq_f16(v114.val[1], v114.val[1], v56);
            v118.val[0] = vmlsq_f16(v118.val[1], v118.val[1], v57);
            v17 = vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v57, xmmword_18439C6E0)), vaddq_f16(vmlsq_f16(v57, v57, v118.val[1]), vqtbl2q_s8(v118, xmmword_18439CFC0)), v118.val[1]);
            *result = vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v118.val[1], xmmword_18439C6E0)), v17, v57);
            result[1] = vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v114.val[1], xmmword_18439C6E0)), vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v56, xmmword_18439C6E0)), vaddq_f16(vmlsq_f16(v56, v56, v114.val[1]), vqtbl2q_s8(v114, xmmword_18439CFC0)), v114.val[1]), v56);
            a10 += v30;
            v55 -= 4;
            result = (result + v36);
            a3 = (a3 + v36);
          }

          while (v55 > 3);
          v42 = v42 - v54 + v55;
          goto LABEL_39;
        }

        if (v43)
        {
          break;
        }

        v44 = &a10[v42];
        v45 = a10;
        do
        {
          v46 = v45++;
        }

        while (v45 <= v44 && (vminvq_u8(vceqzq_s8(*v46)) & 0x80) != 0);
        do
        {
          v47 = v46;
          v46 = (v46 + 4);
        }

        while (v46 <= v44 && !v47->i32[0]);
        if (v47 < v44)
        {
          while (!v47->i8[0])
          {
            v47 = (v47 + 1);
            if (v47 >= v44)
            {
              v47 = &a10[v42];
              break;
            }
          }
        }

        v48 = v47 - a10;
        v49 = (v47 - a10) * a14;
        a3 = (a3 + 8 * v49);
        result = (result + 8 * v49);
        a10 += v49;
        v42 -= v48;
LABEL_39:
        if (v42 <= 3)
        {
          goto LABEL_42;
        }
      }

      v58 = 0;
      while (1)
      {
        v59 = (result + v58);
        v17.i32[0] = v43;
        v60 = vqtbl1q_s8(v17, xmmword_18439C7A0);
        v61 = vcvtq_f16_u16(vmovl_u8(*v60.i8));
        v62 = vmulq_f16(vcvtq_f16_u16(vmovl_high_u8(v60)), v39);
        v63 = vmulq_f16(v61, v39);
        v64 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v63)), v40, *(result + v58));
        v65 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v62)), v40, *(&result[1] + v58));
        v120.val[1] = vmulq_f16(v62, vorrq_s8(vandq_s8(*(&a3[1] + v58), v23), v24));
        v115.val[1] = vmulq_f16(v63, vorrq_s8(vandq_s8(*(a3 + v58), v23), v24));
        v17 = vcgtzq_f16(vqtbl1q_s8(v115.val[1], xmmword_18439C6E0));
        v115.val[0] = vmlsq_f16(v115.val[1], v115.val[1], v64);
        v120.val[0] = vmlsq_f16(v120.val[1], v120.val[1], v65);
        *v59 = vbslq_s8(v17, vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v64, xmmword_18439C6E0)), vaddq_f16(vqtbl2q_s8(v115, xmmword_18439CFC0), vmlsq_f16(v64, v64, v115.val[1])), v115.val[1]), v64);
        v59[1] = vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v120.val[1], xmmword_18439C6E0)), vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v65, xmmword_18439C6E0)), vaddq_f16(vqtbl2q_s8(v120, xmmword_18439CFC0), vmlsq_f16(v65, v65, v120.val[1])), v120.val[1]), v65);
        a10 += v30;
        v42 -= 4;
        if (v42 < 4)
        {
          break;
        }

        v43 = *a10;
        v58 += v36;
        if ((*a10 - 1) >= 0xFFFFFFFE)
        {
          result = (result + v58);
          a3 = (a3 + v58);
          goto LABEL_39;
        }
      }

      result = (result + v36 + v58);
      a3 = (a3 + v36 + v58);
LABEL_42:
      for (i = a12 - v41 + v42; i; --i)
      {
        if (*a10)
        {
          v67 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
          v68 = vbsl_s8(vand_s8(v34, vcgtz_f16(v67)), 0x3C003C003C003C00, *result->i8);
          v69 = vmul_f16(v67, vorr_s8(vand_s8(*a3->i8, v32), v33));
          v70 = vmls_f16(v69, v69, v68);
          v70.i16[3] = v69.i16[3];
          *v17.i8 = vadd_f16(v70, vmls_f16(v68, v68, v69));
          *result->i8 = vbsl_s8(vdup_lane_s16(vcgtz_f16(v69), 3), vbsl_s8(vdup_lane_s16(vcgtz_f16(v68), 3), *v17.i8, v69), v68);
        }

        v71 = &a3->i8[8 * a14];
        a10 += a14;
        if (v71 >= a8)
        {
          v72 = -a7;
        }

        else
        {
          v72 = 0;
        }

        a3 = &v71[8 * v72];
        result = (result + v37);
      }

      a10 += a11;
      result = (result + 8 * a2);
      v73 = &a5->i64[a4];
      if (v73 >= a9)
      {
        v74 = v35;
      }

      else
      {
        v74 = 0;
      }

      v75 = &v73[v74];
      v76 = a8 + 8 * v74 + 8 * a4;
      a3 = (a3 + 8 * a4);
      if (a9)
      {
        a3 = v75;
        a8 = v76;
        a5 = v75;
      }

      v77 = __OFSUB__(a13--, 1);
      if ((a13 < 0) ^ v77 | (a13 == 0))
      {
        return result;
      }
    }
  }

  while (2)
  {
    v78 = (a8 - a3) >> 3;
    if (v78 >= a12)
    {
      v78 = a12;
    }

    v79 = v78;
    if (v78 < 4)
    {
      goto LABEL_91;
    }

    while (1)
    {
      v80 = *a10;
      if (*a10 == -1)
      {
        v87 = &a10[v79];
        v88 = a10;
        do
        {
          v89 = v88++;
        }

        while (v88 <= v87 && (vminvq_u8(vceqq_s8(*v89, v38)) & 0x80) != 0);
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
              v90 = &a10[v79];
              break;
            }
          }
        }

        v91 = v90 - a10;
        v92 = v90 - a10;
        do
        {
          v119.val[1] = vorrq_s8(vandq_s8(vrev16q_s8(a3[1]), v23), v24);
          v116.val[1] = vorrq_s8(vandq_s8(vrev16q_s8(*a3), v23), v24);
          v93 = vorrq_s8(vandq_s8(vrev16q_s8(*result), v28), v29);
          v94 = vorrq_s8(vandq_s8(vrev16q_s8(result[1]), v28), v29);
          v116.val[0] = vmlsq_f16(v116.val[1], v116.val[1], v93);
          v119.val[0] = vmlsq_f16(v119.val[1], v119.val[1], v94);
          v17 = vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v94, xmmword_18439C6E0)), vaddq_f16(vmlsq_f16(v94, v94, v119.val[1]), vqtbl2q_s8(v119, xmmword_18439CFC0)), v119.val[1]);
          *result = vrev16q_s8(vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v116.val[1], xmmword_18439C6E0)), vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v93, xmmword_18439C6E0)), vaddq_f16(vmlsq_f16(v93, v93, v116.val[1]), vqtbl2q_s8(v116, xmmword_18439CFC0)), v116.val[1]), v93));
          result[1] = vrev16q_s8(vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v119.val[1], xmmword_18439C6E0)), v17, v94));
          a10 += v30;
          v92 -= 4;
          result = (result + v36);
          a3 = (a3 + v36);
        }

        while (v92 > 3);
        v79 = v79 - v91 + v92;
        goto LABEL_88;
      }

      if (v80)
      {
        break;
      }

      v81 = &a10[v79];
      v82 = a10;
      do
      {
        v83 = v82++;
      }

      while (v82 <= v81 && (vminvq_u8(vceqzq_s8(*v83)) & 0x80) != 0);
      do
      {
        v84 = v83;
        v83 = (v83 + 4);
      }

      while (v83 <= v81 && !v84->i32[0]);
      if (v84 < v81)
      {
        while (!v84->i8[0])
        {
          v84 = (v84 + 1);
          if (v84 >= v81)
          {
            v84 = &a10[v79];
            break;
          }
        }
      }

      v85 = v84 - a10;
      v86 = (v84 - a10) * a14;
      a3 = (a3 + 8 * v86);
      result = (result + 8 * v86);
      a10 += v86;
      v79 -= v85;
LABEL_88:
      if (v79 <= 3)
      {
        goto LABEL_91;
      }
    }

    v95 = 0;
    while (1)
    {
      v96 = (result + v95);
      v17.i32[0] = v80;
      v97 = vqtbl1q_s8(v17, xmmword_18439C7A0);
      v98 = vcvtq_f16_u16(vmovl_high_u8(v97));
      v99 = vmulq_f16(vcvtq_f16_u16(vmovl_u8(*v97.i8)), v39);
      v100 = vmulq_f16(v98, v39);
      v101 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v100)), v40, vrev16q_s8(*(&result[1] + v95)));
      v102 = vbslq_s8(vandq_s8(v27, vcgtzq_f16(v99)), v40, vrev16q_s8(*(result + v95)));
      v121.val[1] = vmulq_f16(v99, vorrq_s8(vandq_s8(vrev16q_s8(*(a3 + v95)), v23), v24));
      v117.val[1] = vmulq_f16(v100, vorrq_s8(vandq_s8(vrev16q_s8(*(&a3[1] + v95)), v23), v24));
      v17 = vcgtzq_f16(vqtbl1q_s8(v117.val[1], xmmword_18439C6E0));
      v117.val[0] = vmlsq_f16(v117.val[1], v117.val[1], v101);
      v121.val[0] = vmlsq_f16(v121.val[1], v121.val[1], v102);
      *v96 = vrev16q_s8(vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v121.val[1], xmmword_18439C6E0)), vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v102, xmmword_18439C6E0)), vaddq_f16(vqtbl2q_s8(v121, xmmword_18439CFC0), vmlsq_f16(v102, v102, v121.val[1])), v121.val[1]), v102));
      v96[1] = vrev16q_s8(vbslq_s8(v17, vbslq_s8(vcgtzq_f16(vqtbl1q_s8(v101, xmmword_18439C6E0)), vaddq_f16(vqtbl2q_s8(v117, xmmword_18439CFC0), vmlsq_f16(v101, v101, v117.val[1])), v117.val[1]), v101));
      a10 += v30;
      v79 -= 4;
      if (v79 < 4)
      {
        break;
      }

      v80 = *a10;
      v95 += v36;
      if ((*a10 - 1) >= 0xFFFFFFFE)
      {
        result = (result + v95);
        a3 = (a3 + v95);
        goto LABEL_88;
      }
    }

    result = (result + v36 + v95);
    a3 = (a3 + v36 + v95);
LABEL_91:
    for (j = a12 - v78 + v79; j; --j)
    {
      if (*a10)
      {
        v104 = vmul_f16(vcvt_f16_u16(vdup_n_s16(*a10)), vdup_n_s16(0x1C04u));
        v105 = vbsl_s8(vand_s8(v34, vcgtz_f16(v104)), 0x3C003C003C003C00, vrev16_s8(*result->i8));
        v106 = vmul_f16(v104, vorr_s8(vand_s8(vrev16_s8(*a3->i8), v32), v33));
        v107 = vmls_f16(v106, v106, v105);
        v107.i16[3] = v106.i16[3];
        *v17.i8 = vadd_f16(v107, vmls_f16(v105, v105, v106));
        *result->i8 = vrev16_s8(vbsl_s8(vdup_lane_s16(vcgtz_f16(v106), 3), vbsl_s8(vdup_lane_s16(vcgtz_f16(v105), 3), *v17.i8, v106), v105));
      }

      v108 = &a3->i8[8 * a14];
      a10 += a14;
      if (v108 >= a8)
      {
        v109 = -a7;
      }

      else
      {
        v109 = 0;
      }

      a3 = &v108[8 * v109];
      result = (result + v37);
    }

    a10 += a11;
    result = (result + 8 * a2);
    v110 = &a5->i64[a4];
    if (v110 >= a9)
    {
      v111 = v35;
    }

    else
    {
      v111 = 0;
    }

    v112 = &v110[v111];
    v113 = a8 + 8 * v111 + 8 * a4;
    a3 = (a3 + 8 * a4);
    if (a9)
    {
      a3 = v112;
      a8 = v113;
      a5 = v112;
    }

    v77 = __OFSUB__(a13--, 1);
    if (!((a13 < 0) ^ v77 | (a13 == 0)))
    {
      continue;
    }

    return result;
  }
}

void RGBAf16_image_mark(uint64_t a1, uint64_t a2, unsigned int a3, __n128 a4)
{
  v441 = a3;
  v463 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4);
  v442 = *(a1 + 8);
  v5 = *(a1 + 28);
  v6 = *(a1 + 40);
  v443 = *(a1 + 48);
  a4.n128_u32[0] = *(a2 + 184);
  v7 = *(a1 + 136);
  v8 = *(a2 + 104);
  v440 = *(a2 + 96);
  v439 = v8;
  v444 = 0;
  *(a2 + 264) = &v444;
  v433 = v4;
  v9 = (v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v9 <= 0x1FFFFFF)
  {
    v438 = a4;
    v12 = *(a1 + 16);
    v437 = *(a1 + 12);
    v13 = *(a2 + 16);
    v14 = (v13 + 10) * v9;
    if (v14 > 65439)
    {
      v17 = malloc_type_calloc(1uLL, v14 + 96, 0xC73320A4uLL);
      v16 = v17;
      v20 = v17;
      if (!v17)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1, a4);
      v16 = &v426[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
      bzero(v16, v15);
      v20 = 0;
    }

    v430 = v20;
    v21 = v5 >> 3;
    v22 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
    v23 = v22 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = 8 * v9;
    if (v13)
    {
      v25 = 8 * v9;
    }

    else
    {
      v25 = 0;
    }

    v26 = v23 + v25;
    *(a2 + 144) = v22;
    *(a2 + 152) = v23 + v25;
    *(a2 + 160) = v23;
    v27 = v6 + 8 * v21 * v12 + 8 * v437;
    v429 = v21;
    v436 = v21 - v433;
    v28 = *(a1 + 104);
    v29 = *(a1 + 108);
    v30 = *(a1 + 2);
    if (v30 == 6 || v30 == 1)
    {
      if (!v7)
      {
        goto LABEL_444;
      }

      v31 = 0;
      v32 = 0;
      v33 = *(a1 + 124);
      v34 = v7 + v33 * v29 + v28;
      v35 = v433;
      v428 = v33;
      v435 = v33 - v433;
      v36 = v441;
      v37 = v442;
      goto LABEL_26;
    }

    if (!v7)
    {
      v435 = 0;
      v428 = 0;
      v31 = 0;
      v34 = 0;
      v32 = 0;
      v36 = v441;
      v37 = v442;
      v35 = v433;
LABEL_26:
      v41 = v440;
      v42 = v439;
LABEL_27:
      v432 = (v4 - 1);
      v431 = -v35;
      v427 = 8 * v35;
      v45 = v31;
      v437 = v36;
      while (2)
      {
        v442 = v32;
        v31 = v45;
        *(a2 + 240) = v37;
        v46 = (*a2)(a2, v41, v42, v4, _Q0);
        v60 = *(a2 + 160);
        v61 = *(a2 + 144);
        v62 = *(a2 + 8);
        if (v62 == *(a2 + 12))
        {
          _D1 = v438.n128_u64[0];
          if (v438.n128_f32[0] < 1.0)
          {
            v64 = v4;
            v65 = *(a2 + 144);
            do
            {
              if (*v65)
              {
                _Q0 = vmulq_n_f32(vcvtq_f32_f16(*v60), *_D1.i32);
                _Q0.n128_u64[0] = vcvt_f16_f32(_Q0);
                *v60 = _Q0.n128_u64[0];
              }

              ++v65;
              ++v60;
              --v64;
            }

            while (v64);
            v60 += v431;
            v61 += v432 + v431 + 1;
          }
        }

        else
        {
          v66 = HIWORD(v62) & 0x3F;
          _D1 = v438.n128_u64[0];
          if (v66 != 32)
          {
            if (v66 == 16)
            {
              _CGHandleAssert("RGBAf16_image_pixel", 10428, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_float16/blt_rgba_float16.cc", "", "Unimplemented", v51, v52, v53, v426[0]);
            }

            _CGHandleAssert("RGBAf16_image_pixel", 10478, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_float16/blt_rgba_float16.cc", "", "Unimplemented", v51, v52, v53, v426[0]);
          }

          v67 = *(a2 + 152);
          v68 = 0;
          if (v438.n128_f32[0] >= 1.0)
          {
            do
            {
              if (v61[v68])
              {
                _Q0.n128_u64[0] = *(v67 + 8 * v68);
                v60[v68] = _Q0.n128_u64[0];
              }

              ++v68;
            }

            while (v4 != v68);
          }

          else
          {
            do
            {
              if (v61[v68])
              {
                _Q0 = vmulq_n_f32(vcvtq_f32_f16(*(v67 + 8 * v68)), *_D1.i32);
                _Q0.n128_u64[0] = vcvt_f16_f32(_Q0);
                v60[v68] = _Q0.n128_u64[0];
              }

              ++v68;
            }

            while (v4 != v68);
          }
        }

        if (v441 > 0x1B)
        {
LABEL_417:
          v71 = v442;
          goto LABEL_418;
        }

        switch(v437)
        {
          case 1:
            if (use_vImage_image_compositing(void)::predicate != -1)
            {
              dispatch_once(&use_vImage_image_compositing(void)::predicate, &__block_literal_global_24_21967);
            }

            if (use_vImage_image_compositing(void)::status == 1)
            {
              v462 = 66051;
              v457 = v27;
              v458 = 1;
              v459 = v433;
              v460 = v427;
              v453 = v60;
              v454 = 1;
              v455 = v433;
              v456 = v427;
              v449 = v61;
              v450 = 1;
              v451 = v433;
              v452 = v433;
              v445 = v34;
              v446 = 1;
              v447 = v433;
              v448 = v433;
              vImageCGCompositeImage_ARGB16F();
            }

            else
            {
              v414 = *v61;
              v415 = v61 + 1;
              v416 = v4;
              if (v34)
              {
                v417 = v34;
                v418 = v27;
                do
                {
                  if (v414)
                  {
                    v419 = ((*v417 * v414 + ((*v417 * v414) >> 8) + 1) >> 8);
                    if (v419)
                    {
                      if (v419 == 255)
                      {
                        _Q0.n128_u64[0] = *v60;
                      }

                      else
                      {
                        _Q0.n128_u64[0] = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v418), 1.0 - (v419 * 0.0039216)), vcvtq_f32_f16(*v60), v419 * 0.0039216));
                      }

                      *v418 = _Q0.n128_u64[0];
                    }
                  }

                  v420 = *v415++;
                  v414 = v420;
                  ++v60;
                  ++v417;
                  ++v418;
                  --v416;
                }

                while (v416);
              }

              else
              {
                v421 = v27;
                do
                {
                  if (v414)
                  {
                    if (v414 == 255)
                    {
                      _Q0.n128_u64[0] = *v60;
                    }

                    else
                    {
                      _Q0.n128_u64[0] = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v421), 1.0 - (v414 * 0.0039216)), vcvtq_f32_f16(*v60), v414 * 0.0039216));
                    }

                    *v421 = _Q0.n128_u64[0];
                  }

                  v422 = *v415++;
                  v414 = v422;
                  ++v60;
                  ++v421;
                  --v416;
                }

                while (v416);
              }
            }

            if (v34)
            {
              v34 += v428;
            }

            else
            {
              v34 = 0;
            }

            v407 = &v461;
            goto LABEL_401;
          case 2:
            v233 = *v61;
            v234 = 0;
            v235 = v61 + 1;
            v236 = v4;
            if (v34)
            {
              while (1)
              {
                if (!v233)
                {
                  goto LABEL_186;
                }

                v237 = ((*v34 * v233 + ((*v34 * v233) >> 8) + 1) >> 8);
                if (!v237)
                {
                  goto LABEL_186;
                }

                if (v237 == 255)
                {
                  v238 = &v60[v234];
                  _Q0.n128_u16[0] = v60[v234].u16[3];
                  if (*_Q0.n128_u16 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                  {
                    _D1.i32[0] = v238->i32[0];
                    _D1.i16[2] = v238->i16[2];
                    _D1.i16[3] = v60[v234].i16[3];
                    goto LABEL_185;
                  }

                  __asm { FCMP            H0, #0 }

                  if (!(_NF ^ _VF | _ZF))
                  {
                    __asm { FCVT            S0, H0 }

                    v54.n128_u32[0] = v60[v234].u32[0];
                    v239.i64[0] = vcvtq_f32_f16(v54.n128_u64[0]).u64[0];
                    _H3 = v60[v234].i16[2];
                    __asm { FCVT            S3, H3 }

                    v239.i64[1] = __PAIR64__(_Q0.n128_u32[0], _S3);
                    v54 = vmlaq_n_f32(v239, vcvtq_f32_f16(*(v27 + v234 * 8)), 1.0 - _Q0.n128_f32[0]);
                    _D1 = vcvt_f16_f32(v54);
LABEL_185:
                    *(v27 + v234 * 8) = _D1;
                  }
                }

                else
                {
                  *_D1.i32 = v237 * 0.0039216;
                  v242 = &v60[v234];
                  _H0 = v60[v234].i16[3];
                  __asm { FCVT            S0, H0 }

                  _Q0.n128_f32[0] = *_D1.i32 * _S0;
                  __asm
                  {
                    FCVT            H0, S0
                    FCMP            H0, #0
                  }

                  if (!(_NF ^ _VF | _ZF))
                  {
                    _H2 = v242->i16[0];
                    _D3.i32[0] = *(v242->i32 + 2);
                    v246 = vcvtq_f32_f16(_D3);
                    *v246.f32 = vmul_n_f32(*v246.f32, *_D1.i32);
                    _D3 = vcvt_f16_f32(v246);
                    __asm { FCVT            S2, H2 }

                    *_D1.i32 = *_D1.i32 * _S2;
                    __asm { FCVT            H1, S1 }

                    v248 = vext_s8(vext_s8(_D1, _D1, 2uLL), _D3, 6uLL);
                    v248.i16[3] = _Q0.n128_u16[0];
                    v249 = vcvtq_f32_f16(v248);
                    v54 = vcvtq_f32_f16(*(v27 + v234 * 8));
                    _Q0 = vmlaq_n_f32(v249, v54, 1.0 - v249.f32[3]);
                    _D1 = vcvt_f16_f32(_Q0);
                    goto LABEL_185;
                  }
                }

LABEL_186:
                v250 = *v235++;
                v233 = v250;
                ++v34;
                ++v234;
                if (!--v236)
                {
                  v251 = v27 + v234 * 8 - 8;
                  v34 += v435;
                  goto LABEL_199;
                }
              }
            }

            while (1)
            {
              if (v233)
              {
                if (v233 == 255)
                {
                  v252 = &v60[v234];
                  _Q0.n128_u16[0] = v60[v234].u16[3];
                  if (*_Q0.n128_u16 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                  {
                    _D1.i32[0] = v252->i32[0];
                    _D1.i16[2] = v252->i16[2];
                    _D1.i16[3] = v60[v234].i16[3];
                    goto LABEL_196;
                  }

                  __asm { FCMP            H0, #0 }

                  if (!(_NF ^ _VF | _ZF))
                  {
                    __asm { FCVT            S0, H0 }

                    v54.n128_u32[0] = v60[v234].u32[0];
                    v253.i64[0] = vcvtq_f32_f16(v54.n128_u64[0]).u64[0];
                    _H3 = v60[v234].i16[2];
                    __asm { FCVT            S3, H3 }

                    v253.i64[1] = __PAIR64__(_Q0.n128_u32[0], _S3);
                    v54 = vmlaq_n_f32(v253, vcvtq_f32_f16(*(v27 + v234 * 8)), 1.0 - _Q0.n128_f32[0]);
                    _D1 = vcvt_f16_f32(v54);
LABEL_196:
                    *(v27 + v234 * 8) = _D1;
                  }
                }

                else
                {
                  *_D1.i32 = v233 * 0.0039216;
                  v256 = &v60[v234];
                  _H0 = v60[v234].i16[3];
                  __asm { FCVT            S0, H0 }

                  _Q0.n128_f32[0] = *_D1.i32 * _S0;
                  __asm
                  {
                    FCVT            H0, S0
                    FCMP            H0, #0
                  }

                  if (!(_NF ^ _VF | _ZF))
                  {
                    v54.n128_u32[0] = *(v256->u32 + 2);
                    v259 = vcvtq_f32_f16(v54.n128_u64[0]);
                    *v259.f32 = vmul_n_f32(*v259.f32, *_D1.i32);
                    _H3 = v256->i16[0];
                    __asm { FCVT            S3, H3 }

                    *_D1.i32 = *_D1.i32 * _S3;
                    __asm { FCVT            H1, S1 }

                    v262 = vext_s8(vext_s8(_D1, _D1, 2uLL), vcvt_f16_f32(v259), 6uLL);
                    v262.i16[3] = _Q0.n128_u16[0];
                    v263 = vcvtq_f32_f16(v262);
                    v54 = vcvtq_f32_f16(*(v27 + v234 * 8));
                    _Q0 = vmlaq_n_f32(v263, v54, 1.0 - v263.f32[3]);
                    _D1 = vcvt_f16_f32(_Q0);
                    goto LABEL_196;
                  }
                }
              }

              v264 = *v235++;
              v233 = v264;
              ++v234;
              if (!--v236)
              {
                v34 = 0;
                v251 = v27 + v234 * 8 - 8;
LABEL_199:
                v27 = v251 + 8 * v436 + 8;
                goto LABEL_417;
              }
            }

          case 3:
            v272 = v4;
            v94 = v34;
            do
            {
              v273 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v273 = (*v94 * v273 + ((*v94 * v273) >> 8) + 1) >> 8;
                }

                if (v273)
                {
                  if (v273 == 255)
                  {
                    _Q0.n128_u64[0] = vmul_n_f16(*v60, *(v27 + 6));
                  }

                  else
                  {
                    v274 = vcvtq_f32_f16(*v27);
                    _Q0.n128_u64[0] = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v274, 1.0 - (v273 * 0.0039216)), vcvtq_f32_f16(*v60), vmuls_lane_f32(v273 * 0.0039216, v274, 3)));
                  }

                  *v27 = _Q0.n128_u64[0];
                }
              }

              ++v61;
              ++v60;
              v94 += v34 != 0;
              v27 += 8;
              --v272;
            }

            while (v272);
            goto LABEL_400;
          case 4:
            v156 = (v27 + 6);
            v157 = v60 + 2;
            v158 = v4;
            v159 = v34;
            v71 = v442;
            do
            {
              v160 = v156;
              v161 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v161 = (*v159 * v161 + ((*v159 * v161) >> 8) + 1) >> 8;
                }

                if (v161)
                {
                  if (v161 == 255)
                  {
                    _H0 = *(v157 - 2);
                    __asm { FCVT            S0, H0 }

                    v164 = (v27 + 6);
                    _H1 = *v160;
                    __asm { FCVT            S1, H1 }

                    v167 = 1.0 - _S1;
                    _S0 = v167 * _S0;
                    __asm { FCVT            H0, S0 }

                    *(v160 - 3) = LOWORD(_S0);
                    LOWORD(_S0) = *(v157 - 1);
                    __asm { FCVT            S0, H0 }

                    _S0 = v167 * _S0;
                    __asm { FCVT            H0, S0 }

                    *(v160 - 2) = LOWORD(_S0);
                    LOWORD(_S0) = *v157;
                    __asm { FCVT            S0, H0 }

                    _S0 = v167 * _S0;
                    __asm { FCVT            H0, S0 }

                    *(v160 - 1) = LOWORD(_S0);
                    LOWORD(_S0) = v157[1];
                    __asm { FCVT            S0, H0 }

                    _Q0.n128_f32[0] = v167 * _S0;
                  }

                  else
                  {
                    v174 = v161 * 0.0039216;
                    _H1 = *(v157 - 2);
                    __asm { FCVT            S1, H1 }

                    _H2 = *v160;
                    __asm { FCVT            S2, H2 }

                    v179 = v174 * (1.0 - _S2);
                    _H5 = *(v160 - 3);
                    __asm { FCVT            S5, H5 }

                    v182 = 1.0 - v174;
                    _S1 = (v182 * _S5) + (_S1 * v179);
                    __asm { FCVT            H1, S1 }

                    *(v160 - 3) = LOWORD(_S1);
                    LOWORD(_S1) = *(v157 - 1);
                    __asm { FCVT            S1, H1 }

                    _H3 = *(v160 - 2);
                    __asm { FCVT            S3, H3 }

                    _S1 = (v182 * _S3) + (_S1 * v179);
                    __asm { FCVT            H1, S1 }

                    *(v160 - 2) = LOWORD(_S1);
                    LOWORD(_S1) = *v157;
                    __asm { FCVT            S1, H1 }

                    LOWORD(_S3) = *(v160 - 1);
                    __asm { FCVT            S3, H3 }

                    _S1 = (v182 * _S3) + (_S1 * v179);
                    __asm { FCVT            H1, S1 }

                    *(v160 - 1) = LOWORD(_S1);
                    LOWORD(_S1) = v157[1];
                    __asm { FCVT            S1, H1 }

                    _Q0.n128_f32[0] = (v182 * _S2) + (_S1 * v179);
                    v164 = v160;
                  }

                  __asm { FCVT            H0, S0 }

                  *v164 = _Q0.n128_u16[0];
                }
              }

              ++v61;
              v159 += v34 != 0;
              v27 += 8;
              v156 = v160 + 4;
              v157 += 4;
              --v158;
            }

            while (v158);
            v34 = &v159[v435];
            v27 = &v160[4 * v436 + 1];
            goto LABEL_418;
          case 5:
            v294 = v4;
            v94 = v34;
            while (1)
            {
              v295 = *v61;
              if (*v61)
              {
                if (!v34)
                {
                  goto LABEL_276;
                }

                v296 = *v94 * v295 + ((*v94 * v295) >> 8) + 1;
                if (v296 >= 0x100)
                {
                  break;
                }
              }

LABEL_277:
              ++v61;
              ++v60;
              v94 += v34 != 0;
              v27 += 8;
              if (!--v294)
              {
                goto LABEL_400;
              }
            }

            v295 = v296 >> 8;
LABEL_276:
            _Q0 = vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v60), v295 * 0.0039216)));
            v297 = vcvtq_f32_f16(*v27);
            _Q0.n128_u64[0] = vcvt_f16_f32(vmlaq_laneq_f32(vmulq_n_f32(v297, 1.0 - _Q0.n128_f32[3]), _Q0, v297, 3));
            *v27 = _Q0.n128_u64[0];
            goto LABEL_277;
          case 6:
            v312 = v60 + 2;
            v313 = v4;
            v118 = v34;
            v71 = v442;
            while (1)
            {
              v314 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v315 = *v118 * v314 + ((*v118 * v314) >> 8) + 1;
                  if (v315 < 0x100)
                  {
                    goto LABEL_319;
                  }

                  v314 = v315 >> 8;
                }

                _H0 = *(v27 + 6);
                __asm { FCVT            S0, H0 }

                v317 = 1.0 - _Q0.n128_f32[0];
                if ((1.0 - _Q0.n128_f32[0]) >= 1.0)
                {
                  _H0 = *(v312 - 2);
                  __asm { FCVT            S0, H0 }

                  v333 = v314 * 0.0039216;
                  _S0 = v333 * _S0;
                  __asm { FCVT            H0, S0 }

                  *v27 = LOWORD(_S0);
                  LOWORD(_S0) = *(v312 - 1);
                  __asm { FCVT            S0, H0 }

                  _S0 = v333 * _S0;
                  __asm { FCVT            H0, S0 }

                  *(v27 + 2) = LOWORD(_S0);
                  LOWORD(_S0) = *v312;
                  __asm { FCVT            S0, H0 }

                  _S0 = v333 * _S0;
                  __asm { FCVT            H0, S0 }

                  *(v27 + 4) = LOWORD(_S0);
                  LOWORD(_S0) = v312[1];
                  __asm { FCVT            S0, H0 }

                  _Q0.n128_f32[0] = v333 * _S0;
                  goto LABEL_318;
                }

                if (v317 > 0.0)
                {
                  _H2 = *v27;
                  __asm { FCVT            S2, H2 }

                  _H3 = *(v312 - 2);
                  __asm { FCVT            S3, H3 }

                  v322 = (v314 * 0.0039216) * v317;
                  _S2 = _S2 + (_S3 * v322);
                  __asm { FCVT            H2, S2 }

                  *v27 = LOWORD(_S2);
                  LOWORD(_S2) = *(v27 + 2);
                  __asm { FCVT            S2, H2 }

                  LOWORD(_S3) = *(v312 - 1);
                  __asm { FCVT            S3, H3 }

                  _S2 = _S2 + (_S3 * v322);
                  __asm { FCVT            H2, S2 }

                  *(v27 + 2) = LOWORD(_S2);
                  LOWORD(_S2) = *(v27 + 4);
                  __asm { FCVT            S2, H2 }

                  LOWORD(_S3) = *v312;
                  __asm { FCVT            S3, H3 }

                  _S2 = _S2 + (_S3 * v322);
                  __asm { FCVT            H2, S2 }

                  *(v27 + 4) = LOWORD(_S2);
                  LOWORD(_S2) = v312[1];
                  __asm { FCVT            S2, H2 }

                  _Q0.n128_f32[0] = _Q0.n128_f32[0] + (_S2 * v322);
LABEL_318:
                  __asm { FCVT            H0, S0 }

                  *(v27 + 6) = _Q0.n128_u16[0];
                }
              }

LABEL_319:
              ++v61;
              v118 += v34 != 0;
              v27 += 8;
              v312 += 4;
              if (!--v313)
              {
                goto LABEL_354;
              }
            }

          case 7:
            v275 = v60 + 3;
            v276 = v4;
            v118 = v34;
            v71 = v442;
            do
            {
              v277 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v277 = (*v118 * v277 + ((*v118 * v277) >> 8) + 1) >> 8;
                }

                if (v277)
                {
                  if (v277 == 255)
                  {
                    _Q0.n128_u64[0] = vmul_n_f16(*v27, *v275);
                  }

                  else
                  {
                    _H1 = *v275;
                    __asm { FCVT            S1, H1 }

                    v280 = vcvtq_f32_f16(*v27);
                    _Q0 = vmlaq_n_f32(vmulq_n_f32(v280, 1.0 - (v277 * 0.0039216)), v280, (v277 * 0.0039216) * _S1);
                    _Q0.n128_u64[0] = vcvt_f16_f32(_Q0);
                  }

                  *v27 = _Q0.n128_u64[0];
                }
              }

              ++v61;
              v118 += v34 != 0;
              v27 += 8;
              v275 += 4;
              --v276;
            }

            while (v276);
            goto LABEL_354;
          case 8:
            v351 = v60 + 3;
            v352 = v4;
            v118 = v34;
            v71 = v442;
            do
            {
              v353 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v353 = (*v118 * v353 + ((*v118 * v353) >> 8) + 1) >> 8;
                }

                if (v353)
                {
                  if (v353 == 255)
                  {
                    _H0 = *v27;
                    __asm { FCVT            S0, H0 }

                    _H1 = *v351;
                    __asm { FCVT            S1, H1 }

                    v358 = 1.0 - _S1;
                    _S0 = v358 * _S0;
                    __asm { FCVT            H0, S0 }

                    *v27 = LOWORD(_S0);
                    LOWORD(_S0) = *(v27 + 2);
                    __asm { FCVT            S0, H0 }

                    _S0 = v358 * _S0;
                    __asm { FCVT            H0, S0 }

                    *(v27 + 2) = LOWORD(_S0);
                    LOWORD(_S0) = *(v27 + 4);
                    __asm { FCVT            S0, H0 }

                    _S0 = v358 * _S0;
                    __asm { FCVT            H0, S0 }

                    *(v27 + 4) = LOWORD(_S0);
                    v364 = (v27 + 6);
                    LOWORD(_S0) = *(v27 + 6);
                    __asm { FCVT            S0, H0 }

                    _Q0.n128_f32[0] = v358 * _S0;
                  }

                  else
                  {
                    v366 = v353 * 0.0039216;
                    _H1 = *v27;
                    __asm { FCVT            S1, H1 }

                    _H2 = *v351;
                    __asm { FCVT            S2, H2 }

                    v371 = v366 * (1.0 - _S2);
                    v372 = 1.0 - v366;
                    _S1 = (v372 * _S1) + (_S1 * v371);
                    __asm { FCVT            H1, S1 }

                    *v27 = LOWORD(_S1);
                    LOWORD(_S1) = *(v27 + 2);
                    __asm { FCVT            S1, H1 }

                    _S1 = (v372 * _S1) + (_S1 * v371);
                    __asm { FCVT            H1, S1 }

                    *(v27 + 2) = LOWORD(_S1);
                    LOWORD(_S1) = *(v27 + 4);
                    __asm { FCVT            S1, H1 }

                    _S1 = (v372 * _S1) + (_S1 * v371);
                    __asm { FCVT            H1, S1 }

                    *(v27 + 4) = LOWORD(_S1);
                    v364 = (v27 + 6);
                    LOWORD(_S1) = *(v27 + 6);
                    __asm { FCVT            S1, H1 }

                    _Q0.n128_f32[0] = (v372 * _S1) + (_S1 * v371);
                  }

                  __asm { FCVT            H0, S0 }

                  *v364 = _Q0.n128_u16[0];
                }
              }

              ++v61;
              v118 += v34 != 0;
              v27 += 8;
              v351 += 4;
              --v352;
            }

            while (v352);
            goto LABEL_354;
          case 9:
            v213 = v4;
            v94 = v34;
            while (1)
            {
              v214 = *v61;
              if (*v61)
              {
                if (!v34)
                {
                  goto LABEL_142;
                }

                v215 = *v94 * v214 + ((*v94 * v214) >> 8) + 1;
                if (v215 >= 0x100)
                {
                  break;
                }
              }

LABEL_143:
              ++v61;
              ++v60;
              v94 += v34 != 0;
              v27 += 8;
              if (!--v213)
              {
                goto LABEL_400;
              }
            }

            v214 = v215 >> 8;
LABEL_142:
            v216 = v214 * 0.0039216;
            v217 = 1.0 - v216;
            v218 = vcvtq_f32_f16(*v27);
            _Q0 = vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v60), v216)));
            _Q0.n128_u64[0] = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v218, v217 + _Q0.n128_f32[3]), _Q0, 1.0 - v218.f32[3]));
            *v27 = _Q0.n128_u64[0];
            goto LABEL_143;
          case 10:
            v347 = v4;
            v94 = v34;
            while (1)
            {
              v348 = *v61;
              if (*v61)
              {
                if (!v34)
                {
                  goto LABEL_341;
                }

                v349 = *v94 * v348 + ((*v94 * v348) >> 8) + 1;
                if (v349 >= 0x100)
                {
                  break;
                }
              }

LABEL_342:
              ++v61;
              ++v60;
              v94 += v34 != 0;
              v27 += 8;
              if (!--v347)
              {
                goto LABEL_400;
              }
            }

            v348 = v349 >> 8;
LABEL_341:
            v350 = vcvtq_f32_f16(*v27);
            _Q0 = vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v60), v348 * 0.0039216)));
            _Q0.n128_u64[0] = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v350, 1.0 - _Q0.n128_f32[3]), _Q0, 1.0 - v350.f32[3]));
            *v27 = _Q0.n128_u64[0];
            goto LABEL_342;
          case 11:
            v116 = v60 + 2;
            v117 = v4;
            v118 = v34;
            v71 = v442;
            while (1)
            {
              v119 = *v61;
              if (*v61)
              {
                if (!v34)
                {
                  goto LABEL_104;
                }

                v120 = *v118 * v119 + ((*v118 * v119) >> 8) + 1;
                if (v120 >= 0x100)
                {
                  break;
                }
              }

LABEL_114:
              ++v61;
              v118 += v34 != 0;
              v27 += 8;
              v116 += 4;
              if (!--v117)
              {
                goto LABEL_354;
              }
            }

            v119 = v120 >> 8;
LABEL_104:
            _S0 = 1.0;
            _S4 = 1.0;
            if (v443)
            {
              _H1 = *(v27 + 6);
              __asm { FCVT            S4, H1 }
            }

            v124 = v119 * 0.0039216;
            _H1 = v116[1];
            __asm { FCVT            S1, H1 }

            _S1 = v124 * _S1;
            __asm
            {
              FCVT            H1, S1
              FCVT            S2, H1
            }

            _S1 = _S4 + _S2;
            if ((_S4 + _S2) > 1.0)
            {
              _S1 = 1.0;
            }

            if (v443)
            {
              _H0 = *(v27 + 6);
              __asm { FCVT            S0, H0 }
            }

            _H5 = *(v116 - 2);
            __asm { FCVT            S5, H5 }

            _S5 = v124 * _S5;
            __asm { FCVT            H7, S5 }

            _H6 = *(v116 - 1);
            _H5 = *v116;
            _H16 = *v27;
            __asm
            {
              FCVT            S16, H16
              FCVT            S7, H7
            }

            v140 = (_S2 - _S7) + (_S4 - _S16);
            _H4 = *(v27 + 2);
            _S7 = _S1 - v140;
            __asm { FCVT            H7, S7 }

            *v27 = LOWORD(_S7);
            if (v443)
            {
              _H7 = *(v27 + 6);
              __asm { FCVT            S7, H7 }
            }

            else
            {
              _S7 = 1.0;
            }

            __asm { FCVT            S6, H6 }

            _S6 = v124 * _S6;
            __asm
            {
              FCVT            H6, S6
              FCVT            S5, H5
            }

            _S3 = v124 * _S5;
            __asm
            {
              FCVT            H3, S3
              FCVT            S4, H4
            }

            v150 = _S0 - _S4;
            __asm { FCVT            S4, H6 }

            v152 = (_S2 - _S4) + v150;
            LOWORD(_S4) = *(v27 + 4);
            __asm
            {
              FCVT            S4, H4
              FCVT            S3, H3
            }

            _S0 = _S1 - v152;
            __asm { FCVT            H0, S0 }

            *(v27 + 2) = LOWORD(_S0);
            __asm { FCVT            H0, S1 }

            *(v27 + 6) = LOWORD(_S0);
            _Q0.n128_f32[0] = _S1 - ((_S2 - _S3) + (_S7 - _S4));
            __asm { FCVT            H0, S0 }

            *(v27 + 4) = _Q0.n128_u16[0];
            goto LABEL_114;
          case 12:
            v192 = v60 + 2;
            v193 = v4;
            v118 = v34;
            v71 = v442;
            do
            {
              v194 = *v61;
              if (!*v61)
              {
                goto LABEL_135;
              }

              if (v34)
              {
                v195 = *v118 * v194 + ((*v118 * v194) >> 8) + 1;
                if (v195 < 0x100)
                {
                  goto LABEL_135;
                }

                v194 = v195 >> 8;
              }

              _H0 = *(v192 - 2);
              __asm { FCVT            S0, H0 }

              v198 = v194 * 0.0039216;
              _S0 = v198 * _S0;
              __asm { FCVT            H0, S0 }

              _H2 = *(v192 - 1);
              __asm { FCVT            S2, H2 }

              _S2 = v198 * _S2;
              __asm { FCVT            H2, S2 }

              _H3 = *v192;
              __asm { FCVT            S3, H3 }

              _S3 = v198 * _S3;
              __asm { FCVT            H3, S3 }

              _H4 = v192[1];
              __asm { FCVT            S4, H4 }

              _S1 = v198 * _S4;
              __asm { FCVT            H1, S1 }

              v210 = *(v27 + 2);
              *v27 = *v27 + *&_S0;
              *(v27 + 2) = v210 + *&_S2;
              LOWORD(_S0) = *(v27 + 6);
              __asm
              {
                FCVT            S0, H0
                FCVT            S1, H1
              }

              _Q0.n128_f32[0] = _S1 + _S0;
              if (_Q0.n128_f32[0] > 1.0)
              {
                _Q0.n128_f32[0] = 1.0;
              }

              *(v27 + 4) = *(v27 + 4) + _H3;
              __asm { FCVT            H0, S0 }

              *(v27 + 6) = _Q0.n128_u16[0];
LABEL_135:
              ++v61;
              v118 += v34 != 0;
              v27 += 8;
              v192 += 4;
              --v193;
            }

            while (v193);
LABEL_354:
            v34 = &v118[v435];
LABEL_355:
            v27 += 8 * v436;
LABEL_418:
            if (!--v37)
            {
              if (v31)
              {
LABEL_443:
                free(v31);
              }

              goto LABEL_444;
            }

            v45 = 0;
            v32 = v71 + 1;
            v41 += *(a2 + 128);
            v42 += *(a2 + 136);
            if (!v31)
            {
              continue;
            }

LABEL_17:
            v43 = (v34 - 16);
            while (1)
            {
              while (1)
              {
                v44 = *v43 - v32;
                if (*v43 <= v32)
                {
                  break;
                }

                v37 -= v44;
                if (v37 < 1)
                {
                  goto LABEL_443;
                }

                v41 += *(a2 + 128) * v44;
                v42 += *(a2 + 136) * v44;
                v27 += 8 * v429 * v44;
                v32 = *v43;
              }

              if (v32 < *(v34 - 3) + *v43)
              {
                break;
              }

              if (!shape_enum_clip_scan(v31, v34 - 4))
              {
                goto LABEL_443;
              }
            }

            v35 = v433;
            v36 = v441;
            goto LABEL_27;
          case 13:
            v434 = v31;
            v439 = v42;
            v440 = v41;
            v73 = v37;
            v305 = v4;
            v75 = v34;
            while (1)
            {
              v306 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v307 = *v75 * v306 + ((*v75 * v306) >> 8) + 1;
                  if (v307 < 0x100)
                  {
                    goto LABEL_307;
                  }

                  v306 = v307 >> 8;
                }

                v308 = vcvtq_f32_f16(*v60);
                _Q0 = vmulq_n_f32(v308, v306 * 0.0039216);
                v309 = COERCE_DOUBLE(vcvt_f16_f32(_Q0));
                __asm { FCMP            H3, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  LOWORD(_D5) = *(v27 + 6);
                  if (v443)
                  {
                    __asm { FCMP            H5, #0 }

                    if (!(!_ZF & _CF))
                    {
                      *v27 = LODWORD(v309);
                      *(v27 + 4) = WORD2(v309);
LABEL_306:
                      *(v27 + 6) = _D3.i16[0];
                      goto LABEL_307;
                    }

                    __asm { FCVT            S4, H5 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  __asm { FCVT            S7, H3 }

                  _Q0.n128_u16[0] = *v27;
                  v308.n128_u16[0] = *(v27 + 2);
                  v54.n128_u16[0] = *(v27 + 4);
                  _D3.i32[0] = LODWORD(_D5);
                  _Q0.n128_u64[0] = PDAmultiplyPDA(_Q0, v308, v54, *&_D3, _S4, _D5, v309, _D7, v46, v47, v48, v49, v50, v51, v52, v53, SLOWORD(v309), SWORD1(v309), SWORD2(v309), *&_D7);
                  *v27 = _Q0.n128_u16[0];
                  *(v27 + 2) = v311;
                  *(v27 + 4) = v54.n128_u16[0];
                  goto LABEL_306;
                }
              }

LABEL_307:
              ++v61;
              ++v60;
              v75 += v34 != 0;
              v27 += 8;
              if (!--v305)
              {
                goto LABEL_416;
              }
            }

          case 14:
            v93 = v4;
            v94 = v34;
            while (1)
            {
              v95 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v96 = *v94 * v95 + ((*v94 * v95) >> 8) + 1;
                  if (v96 < 0x100)
                  {
                    goto LABEL_97;
                  }

                  v95 = v96 >> 8;
                }

                _Q0 = vmulq_n_f32(vcvtq_f32_f16(*v60), v95 * 0.0039216);
                _Q0.n128_u64[0] = vcvt_f16_f32(_Q0);
                __asm { FCMP            H3, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  _S2 = 1.0;
                  if (!v443)
                  {
                    goto LABEL_96;
                  }

                  __asm { FCMP            H2, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S2, H2 }

LABEL_96:
                    __asm { FCVT            S3, H3 }

                    _H4 = *v27;
                    _H5 = *(v27 + 2);
                    _H6 = *(v27 + 4);
                    __asm
                    {
                      FCVT            S4, H4
                      FCVT            S5, H5
                      FCVT            S6, H6
                      FCVT            S7, H0
                    }

                    _H16 = _Q0.n128_u16[1];
                    __asm { FCVT            S16, H16 }

                    _H0 = _Q0.n128_u16[2];
                    __asm { FCVT            S0, H0 }

                    _S4 = _S4 + (_S7 * (1.0 - _S4));
                    _S5 = _S5 + (_S16 * (1.0 - _S5));
                    _Q0.n128_f32[0] = _S6 + (_S0 * (1.0 - _S6));
                    _S1 = (_S2 + _S3) - (_S2 * _S3);
                    __asm
                    {
                      FCVT            H2, S4
                      FCVT            H3, S5
                      FCVT            H0, S0
                    }

                    *v27 = _H2;
                    *(v27 + 2) = LOWORD(_S3);
                    __asm { FCVT            H1, S1 }

                    *(v27 + 4) = _Q0.n128_u16[0];
                    *(v27 + 6) = LOWORD(_S1);
                    goto LABEL_97;
                  }

                  *v27 = _Q0.n128_u64[0];
                }
              }

LABEL_97:
              ++v61;
              ++v60;
              v94 += v34 != 0;
              v27 += 8;
              if (!--v93)
              {
                goto LABEL_400;
              }
            }

          case 15:
            v434 = v31;
            v439 = v42;
            v440 = v41;
            v73 = v37;
            v265 = v4;
            v75 = v34;
            while (1)
            {
              v266 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v267 = *v75 * v266 + ((*v75 * v266) >> 8) + 1;
                  if (v267 < 0x100)
                  {
                    goto LABEL_213;
                  }

                  v266 = v267 >> 8;
                }

                v268 = vcvtq_f32_f16(*v60);
                _Q0 = vmulq_n_f32(v268, v266 * 0.0039216);
                v269 = COERCE_DOUBLE(vcvt_f16_f32(_Q0));
                __asm { FCMP            H3, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  LOWORD(_D5) = *(v27 + 6);
                  if (v443)
                  {
                    __asm { FCMP            H5, #0 }

                    if (!(!_ZF & _CF))
                    {
                      *v27 = LODWORD(v269);
                      *(v27 + 4) = WORD2(v269);
LABEL_212:
                      *(v27 + 6) = _D3.i16[0];
                      goto LABEL_213;
                    }

                    __asm { FCVT            S4, H5 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  __asm { FCVT            S7, H3 }

                  _Q0.n128_u16[0] = *v27;
                  v268.n128_u16[0] = *(v27 + 2);
                  v54.n128_u16[0] = *(v27 + 4);
                  _D3.i32[0] = LODWORD(_D5);
                  _Q0.n128_u64[0] = PDAoverlayPDA(_Q0, v268, v54, *&_D3, _S4, _D5, v269, _D7, v46, v47, v48, v49, v50, v51, v52, v53, SLOWORD(v269), SWORD1(v269), SWORD2(v269), *&_D7);
                  *v27 = _Q0.n128_u16[0];
                  *(v27 + 2) = v271;
                  *(v27 + 4) = v54.n128_u16[0];
                  goto LABEL_212;
                }
              }

LABEL_213:
              ++v61;
              ++v60;
              v75 += v34 != 0;
              v27 += 8;
              if (!--v265)
              {
                goto LABEL_416;
              }
            }

          case 16:
            v434 = v31;
            v439 = v42;
            v440 = v41;
            v73 = v37;
            v86 = v4;
            v75 = v34;
            while (1)
            {
              v87 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v88 = *v75 * v87 + ((*v75 * v87) >> 8) + 1;
                  if (v88 < 0x100)
                  {
                    goto LABEL_84;
                  }

                  v87 = v88 >> 8;
                }

                v89 = vcvtq_f32_f16(*v60);
                _Q0 = vmulq_n_f32(v89, v87 * 0.0039216);
                v90 = COERCE_DOUBLE(vcvt_f16_f32(_Q0));
                __asm { FCMP            H3, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  LOWORD(_D5) = *(v27 + 6);
                  if (v443)
                  {
                    __asm { FCMP            H5, #0 }

                    if (!(!_ZF & _CF))
                    {
                      *v27 = LODWORD(v90);
                      *(v27 + 4) = WORD2(v90);
LABEL_83:
                      *(v27 + 6) = _D3.i16[0];
                      goto LABEL_84;
                    }

                    __asm { FCVT            S4, H5 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  __asm { FCVT            S7, H3 }

                  _Q0.n128_u16[0] = *v27;
                  v89.i16[0] = *(v27 + 2);
                  v54.n128_u16[0] = *(v27 + 4);
                  HIWORD(v423) = _D3.i16[0];
                  LOWORD(v423) = WORD2(v90);
                  _D3.i32[0] = LODWORD(_D5);
                  _Q0.n128_u64[0] = PDAdarkenPDA(_Q0, *v89.i64, v54.n128_f64[0], *&_D3, _S4, _D5, v90, _D7, v46, v47, v48, v49, v50, v51, v52, v53, SLOWORD(v90), v423, *&_D7);
                  *v27 = _Q0.n128_u16[0];
                  *(v27 + 2) = v92;
                  *(v27 + 4) = v54.n128_u16[0];
                  goto LABEL_83;
                }
              }

LABEL_84:
              ++v61;
              ++v60;
              v75 += v34 != 0;
              v27 += 8;
              if (!--v86)
              {
                goto LABEL_416;
              }
            }

          case 17:
            v434 = v31;
            v439 = v42;
            v440 = v41;
            v73 = v37;
            v281 = v4;
            v75 = v34;
            while (1)
            {
              v282 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v283 = *v75 * v282 + ((*v75 * v282) >> 8) + 1;
                  if (v283 < 0x100)
                  {
                    goto LABEL_254;
                  }

                  v282 = v283 >> 8;
                }

                v284 = vcvtq_f32_f16(*v60);
                _Q0 = vmulq_n_f32(v284, v282 * 0.0039216);
                v285 = COERCE_DOUBLE(vcvt_f16_f32(_Q0));
                __asm { FCMP            H3, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  LOWORD(_D5) = *(v27 + 6);
                  if (v443)
                  {
                    __asm { FCMP            H5, #0 }

                    if (!(!_ZF & _CF))
                    {
                      *v27 = LODWORD(v285);
                      *(v27 + 4) = WORD2(v285);
LABEL_253:
                      *(v27 + 6) = _D3.i16[0];
                      goto LABEL_254;
                    }

                    __asm { FCVT            S4, H5 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  __asm { FCVT            S7, H3 }

                  _Q0.n128_u16[0] = *v27;
                  v284.i16[0] = *(v27 + 2);
                  v54.n128_u16[0] = *(v27 + 4);
                  HIWORD(v424) = _D3.i16[0];
                  LOWORD(v424) = WORD2(v285);
                  _D3.i32[0] = LODWORD(_D5);
                  _Q0.n128_u64[0] = PDAlightenPDA(_Q0, *v284.i64, v54.n128_f64[0], *&_D3, _S4, _D5, v285, _D7, v46, v47, v48, v49, v50, v51, v52, v53, SLOWORD(v285), v424, *&_D7);
                  *v27 = _Q0.n128_u16[0];
                  *(v27 + 2) = v287;
                  *(v27 + 4) = v54.n128_u16[0];
                  goto LABEL_253;
                }
              }

LABEL_254:
              ++v61;
              ++v60;
              v75 += v34 != 0;
              v27 += 8;
              if (!--v281)
              {
                goto LABEL_416;
              }
            }

          case 18:
            v434 = v31;
            v439 = v42;
            v440 = v41;
            v73 = v37;
            v340 = v4;
            v75 = v34;
            while (1)
            {
              v341 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v342 = *v75 * v341 + ((*v75 * v341) >> 8) + 1;
                  if (v342 < 0x100)
                  {
                    goto LABEL_334;
                  }

                  v341 = v342 >> 8;
                }

                v343 = vcvtq_f32_f16(*v60);
                _Q0 = vmulq_n_f32(v343, v341 * 0.0039216);
                v344 = COERCE_DOUBLE(vcvt_f16_f32(_Q0));
                __asm { FCMP            H3, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  LOWORD(_D5) = *(v27 + 6);
                  if (v443)
                  {
                    __asm { FCMP            H5, #0 }

                    if (!(!_ZF & _CF))
                    {
                      *v27 = LODWORD(v344);
                      *(v27 + 4) = WORD2(v344);
LABEL_333:
                      *(v27 + 6) = _D3.i16[0];
                      goto LABEL_334;
                    }

                    __asm { FCVT            S4, H5 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  __asm { FCVT            S7, H3 }

                  _Q0.n128_u16[0] = *v27;
                  v343.n128_u16[0] = *(v27 + 2);
                  v54.n128_u16[0] = *(v27 + 4);
                  _D3.i32[0] = LODWORD(_D5);
                  _Q0.n128_u64[0] = PDAcolordodgePDA(_Q0, v343, v54, *&_D3, _S4, _D5, v344, _D7, v46, v47, v48, v49, v50, v51, v52, v53, SLOWORD(v344), SWORD1(v344), SWORD2(v344), *&_D7);
                  *v27 = _Q0.n128_u16[0];
                  *(v27 + 2) = v346;
                  *(v27 + 4) = v54.n128_u16[0];
                  goto LABEL_333;
                }
              }

LABEL_334:
              ++v61;
              ++v60;
              v75 += v34 != 0;
              v27 += 8;
              if (!--v340)
              {
                goto LABEL_416;
              }
            }

          case 19:
            v434 = v31;
            v439 = v42;
            v440 = v41;
            v73 = v37;
            v386 = v4;
            v75 = v34;
            while (1)
            {
              v387 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v388 = *v75 * v387 + ((*v75 * v387) >> 8) + 1;
                  if (v388 < 0x100)
                  {
                    goto LABEL_384;
                  }

                  v387 = v388 >> 8;
                }

                v389 = vcvtq_f32_f16(*v60);
                _Q0 = vmulq_n_f32(v389, v387 * 0.0039216);
                v390 = COERCE_DOUBLE(vcvt_f16_f32(_Q0));
                __asm { FCMP            H3, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  LOWORD(_D5) = *(v27 + 6);
                  if (v443)
                  {
                    __asm { FCMP            H5, #0 }

                    if (!(!_ZF & _CF))
                    {
                      *v27 = LODWORD(v390);
                      *(v27 + 4) = WORD2(v390);
LABEL_383:
                      *(v27 + 6) = _D3.i16[0];
                      goto LABEL_384;
                    }

                    __asm { FCVT            S4, H5 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  __asm { FCVT            S7, H3 }

                  _Q0.n128_u16[0] = *v27;
                  v389.n128_u16[0] = *(v27 + 2);
                  v54.n128_u16[0] = *(v27 + 4);
                  _D3.i32[0] = LODWORD(_D5);
                  _Q0.n128_u64[0] = PDAcolorburnPDA(_Q0, v389, v54, *&_D3, _S4, _D5, v390, _D7, v46, v47, v48, v49, v50, v51, v52, v53, SLOWORD(v390), SWORD1(v390), SWORD2(v390), *&_D7);
                  *v27 = _Q0.n128_u16[0];
                  *(v27 + 2) = v392;
                  *(v27 + 4) = v54.n128_u16[0];
                  goto LABEL_383;
                }
              }

LABEL_384:
              ++v61;
              ++v60;
              v75 += v34 != 0;
              v27 += 8;
              if (!--v386)
              {
                goto LABEL_416;
              }
            }

          case 20:
            v434 = v31;
            v439 = v42;
            v440 = v41;
            v73 = v37;
            v288 = v4;
            v75 = v34;
            while (1)
            {
              v289 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v290 = *v75 * v289 + ((*v75 * v289) >> 8) + 1;
                  if (v290 < 0x100)
                  {
                    goto LABEL_269;
                  }

                  v289 = v290 >> 8;
                }

                v291 = vcvtq_f32_f16(*v60);
                _Q0 = vmulq_n_f32(v291, v289 * 0.0039216);
                v292 = vcvt_f16_f32(_Q0);
                __asm { FCMP            H3, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  LOWORD(_D5) = *(v27 + 6);
                  if (v443)
                  {
                    __asm { FCMP            H5, #0 }

                    if (!(!_ZF & _CF))
                    {
                      *v27 = v292.i32[0];
                      *(v27 + 4) = v292.i16[2];
LABEL_268:
                      *(v27 + 6) = _D3.i16[0];
                      goto LABEL_269;
                    }

                    __asm { FCVT            S4, H5 }
                  }

                  else
                  {
                    _Q4.i32[0] = 1.0;
                  }

                  __asm { FCVT            S7, H3 }

                  _Q0.n128_u16[0] = *v27;
                  v291.i16[0] = *(v27 + 2);
                  v54.n128_u16[0] = *(v27 + 4);
                  _D3.i32[0] = LODWORD(_D5);
                  _Q0.n128_u64[0] = PDAsoftlightPDA(_Q0, *v291.f32, v54, _D3, *_Q4.i64, _D5, v292, _D7, v46, v47, v48, v49, v50, v51, v52, v53, v292.i16[0], v292.i16[1], v292.i16[2], *&_D7);
                  *v27 = _Q0.n128_u16[0];
                  *(v27 + 2) = v293;
                  *(v27 + 4) = v54.n128_u16[0];
                  goto LABEL_268;
                }
              }

LABEL_269:
              ++v61;
              ++v60;
              v75 += v34 != 0;
              v27 += 8;
              if (!--v288)
              {
                goto LABEL_416;
              }
            }

          case 21:
            v434 = v31;
            v439 = v42;
            v440 = v41;
            v73 = v37;
            v298 = v4;
            v75 = v34;
            while (1)
            {
              v299 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v300 = *v75 * v299 + ((*v75 * v299) >> 8) + 1;
                  if (v300 < 0x100)
                  {
                    goto LABEL_292;
                  }

                  v299 = v300 >> 8;
                }

                v301 = vcvtq_f32_f16(*v60);
                _Q0 = vmulq_n_f32(v301, v299 * 0.0039216);
                v302 = COERCE_DOUBLE(vcvt_f16_f32(_Q0));
                __asm { FCMP            H3, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  LOWORD(_D5) = *(v27 + 6);
                  if (v443)
                  {
                    __asm { FCMP            H5, #0 }

                    if (!(!_ZF & _CF))
                    {
                      *v27 = LODWORD(v302);
                      *(v27 + 4) = WORD2(v302);
LABEL_291:
                      *(v27 + 6) = _D3.i16[0];
                      goto LABEL_292;
                    }

                    __asm { FCVT            S4, H5 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  __asm { FCVT            S7, H3 }

                  _Q0.n128_u16[0] = *v27;
                  v301.n128_u16[0] = *(v27 + 2);
                  v54.n128_u16[0] = *(v27 + 4);
                  _D3.i32[0] = LODWORD(_D5);
                  _Q0.n128_u64[0] = PDAhardlightPDA(_Q0, v301, v54, *&_D3, _S4, _D5, v302, _D7, v46, v47, v48, v49, v50, v51, v52, v53, SLOWORD(v302), SWORD1(v302), SWORD2(v302), *&_D7);
                  *v27 = _Q0.n128_u16[0];
                  *(v27 + 2) = v304;
                  *(v27 + 4) = v54.n128_u16[0];
                  goto LABEL_291;
                }
              }

LABEL_292:
              ++v61;
              ++v60;
              v75 += v34 != 0;
              v27 += 8;
              if (!--v298)
              {
                goto LABEL_416;
              }
            }

          case 22:
            v434 = v31;
            v439 = v42;
            v440 = v41;
            v73 = v37;
            v379 = v4;
            v75 = v34;
            while (1)
            {
              v380 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v381 = *v75 * v380 + ((*v75 * v380) >> 8) + 1;
                  if (v381 < 0x100)
                  {
                    goto LABEL_369;
                  }

                  v380 = v381 >> 8;
                }

                v382 = vcvtq_f32_f16(*v60);
                _Q0 = vmulq_n_f32(v382, v380 * 0.0039216);
                v383 = COERCE_DOUBLE(vcvt_f16_f32(_Q0));
                __asm { FCMP            H3, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  LOWORD(_D5) = *(v27 + 6);
                  if (v443)
                  {
                    __asm { FCMP            H5, #0 }

                    if (!(!_ZF & _CF))
                    {
                      *v27 = LODWORD(v383);
                      *(v27 + 4) = WORD2(v383);
LABEL_368:
                      *(v27 + 6) = _D3.i16[0];
                      goto LABEL_369;
                    }

                    __asm { FCVT            S4, H5 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  __asm { FCVT            S7, H3 }

                  _Q0.n128_u16[0] = *v27;
                  v382.i16[0] = *(v27 + 2);
                  v54.n128_u16[0] = *(v27 + 4);
                  HIWORD(v425) = _D3.i16[0];
                  LOWORD(v425) = WORD2(v383);
                  _D3.i32[0] = LODWORD(_D5);
                  _Q0.n128_u64[0] = PDAdifferencePDA(_Q0, *v382.i64, v54.n128_f64[0], *&_D3, _S4, _D5, v383, _D7, v46, v47, v48, v49, v50, v51, v52, v53, SLOWORD(v383), v425, *&_D7);
                  *v27 = _Q0.n128_u16[0];
                  *(v27 + 2) = v385;
                  *(v27 + 4) = v54.n128_u16[0];
                  goto LABEL_368;
                }
              }

LABEL_369:
              ++v61;
              ++v60;
              v75 += v34 != 0;
              v27 += 8;
              if (!--v379)
              {
                goto LABEL_416;
              }
            }

          case 23:
            v393 = v4;
            v94 = v34;
            while (1)
            {
              v394 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v395 = *v94 * v394 + ((*v94 * v394) >> 8) + 1;
                  if (v395 < 0x100)
                  {
                    goto LABEL_399;
                  }

                  v394 = v395 >> 8;
                }

                _Q0 = vmulq_n_f32(vcvtq_f32_f16(*v60), v394 * 0.0039216);
                _Q0.n128_u64[0] = vcvt_f16_f32(_Q0);
                __asm { FCMP            H1, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  if (v443)
                  {
                    __asm { FCMP            H2, #0 }

                    if (!(!_ZF & _CF))
                    {
                      *v27 = _Q0.n128_u32[0];
                      *(v27 + 4) = _Q0.n128_u16[2];
LABEL_398:
                      *(v27 + 6) = _H1;
                      goto LABEL_399;
                    }

                    __asm { FCVT            S2, H2 }
                  }

                  else
                  {
                    _S2 = 1.0;
                  }

                  __asm { FCVT            S1, H1 }

                  _H3 = *v27;
                  _Q4.i32[0] = *(v27 + 2);
                  __asm
                  {
                    FCVT            S3, H3
                    FCVT            S5, H0
                  }

                  _S3 = (_S3 + _S5) + ((_S3 * _S5) * -2.0);
                  _S1 = (_S2 + _S1) - (_S2 * _S1);
                  __asm { FCVT            H2, S3 }

                  v406 = vcvtq_f32_f16(*_Q4.f32).u64[0];
                  _Q0 = vcvtq_f32_f16(vext_s8(_Q0.n128_u64[0], _Q0.n128_u64[0], 2uLL));
                  *_Q4.f32 = vmla_f32(vadd_f32(v406, _Q0.n128_u64[0]), 0xC0000000C0000000, vmul_f32(v406, _Q0.n128_u64[0]));
                  _Q0.n128_u64[0] = vcvt_f16_f32(_Q4);
                  *v27 = _H2;
                  __asm { FCVT            H1, S1 }

                  *(v27 + 2) = _Q0.n128_u32[0];
                  goto LABEL_398;
                }
              }

LABEL_399:
              ++v61;
              ++v60;
              v94 += v34 != 0;
              v27 += 8;
              if (!--v393)
              {
LABEL_400:
                v34 = &v94[v435];
                v407 = &v464;
LABEL_401:
                v27 += 8 * *(v407 - 32);
                goto LABEL_417;
              }
            }

          case 24:
            v434 = v31;
            v439 = v42;
            v440 = v41;
            v73 = v37;
            v226 = v4;
            v75 = v34;
            while (1)
            {
              v227 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v228 = *v75 * v227 + ((*v75 * v227) >> 8) + 1;
                  if (v228 < 0x100)
                  {
                    goto LABEL_173;
                  }

                  v227 = v228 >> 8;
                }

                v229 = vcvtq_f32_f16(*v60);
                _Q0 = vmulq_n_f32(v229, v227 * 0.0039216);
                v230 = COERCE_DOUBLE(vcvt_f16_f32(_Q0));
                __asm { FCMP            H3, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  LOWORD(_D5) = *(v27 + 6);
                  if (v443)
                  {
                    __asm { FCMP            H5, #0 }

                    if (!(!_ZF & _CF))
                    {
                      *v27 = LODWORD(v230);
                      *(v27 + 4) = WORD2(v230);
LABEL_172:
                      *(v27 + 6) = _D3.i16[0];
                      goto LABEL_173;
                    }

                    __asm { FCVT            S4, H5 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  __asm { FCVT            S7, H3 }

                  _Q0.n128_u16[0] = *v27;
                  v229.n128_u16[0] = *(v27 + 2);
                  v54.n128_u16[0] = *(v27 + 4);
                  _D3.i32[0] = LODWORD(_D5);
                  _Q0.n128_u64[0] = PDAhuePDA(_Q0, v229, v54, *&_D3, _S4, _D5, v230, _D7, v46, v47, v48, v49, v50, v51, v52, v53, SLOWORD(v230), SWORD1(v230), SWORD2(v230), *&_D7);
                  *v27 = _Q0.n128_u16[0];
                  *(v27 + 2) = v232;
                  *(v27 + 4) = v54.n128_u16[0];
                  goto LABEL_172;
                }
              }

LABEL_173:
              ++v61;
              ++v60;
              v75 += v34 != 0;
              v27 += 8;
              if (!--v226)
              {
                goto LABEL_416;
              }
            }

          case 25:
            v434 = v31;
            v439 = v42;
            v440 = v41;
            v73 = v37;
            v219 = v4;
            v75 = v34;
            while (1)
            {
              v220 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v221 = *v75 * v220 + ((*v75 * v220) >> 8) + 1;
                  if (v221 < 0x100)
                  {
                    goto LABEL_158;
                  }

                  v220 = v221 >> 8;
                }

                v222 = vcvtq_f32_f16(*v60);
                _Q0 = vmulq_n_f32(v222, v220 * 0.0039216);
                v223 = COERCE_DOUBLE(vcvt_f16_f32(_Q0));
                __asm { FCMP            H3, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  LOWORD(_D5) = *(v27 + 6);
                  if (v443)
                  {
                    __asm { FCMP            H5, #0 }

                    if (!(!_ZF & _CF))
                    {
                      *v27 = LODWORD(v223);
                      *(v27 + 4) = WORD2(v223);
LABEL_157:
                      *(v27 + 6) = _D3.i16[0];
                      goto LABEL_158;
                    }

                    __asm { FCVT            S4, H5 }
                  }

                  else
                  {
                    _S4 = 1.0;
                  }

                  __asm { FCVT            S7, H3 }

                  _Q0.n128_u16[0] = *v27;
                  v222.n128_u16[0] = *(v27 + 2);
                  v54.n128_u16[0] = *(v27 + 4);
                  _D3.i32[0] = LODWORD(_D5);
                  _Q0.n128_u64[0] = PDAsaturationPDA(_Q0, v222, v54, *&_D3, _S4, _D5, v223, _D7, v46, v47, v48, v49, v50, v51, v52, v53, SLOWORD(v223), SWORD1(v223), SWORD2(v223), *&_D7);
                  *v27 = _Q0.n128_u16[0];
                  *(v27 + 2) = v225;
                  *(v27 + 4) = v54.n128_u16[0];
                  goto LABEL_157;
                }
              }

LABEL_158:
              ++v61;
              ++v60;
              v75 += v34 != 0;
              v27 += 8;
              if (!--v219)
              {
                goto LABEL_416;
              }
            }

          case 26:
            v434 = v31;
            v439 = v42;
            v440 = v41;
            v73 = v37;
            v408 = v4;
            v75 = v34;
            while (1)
            {
              v409 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v410 = *v75 * v409 + ((*v75 * v409) >> 8) + 1;
                  if (v410 < 0x100)
                  {
                    goto LABEL_415;
                  }

                  v409 = v410 >> 8;
                }

                v411 = vcvtq_f32_f16(*v60);
                _Q0 = vmulq_n_f32(v411, v409 * 0.0039216);
                _Q0.n128_u64[0] = vcvt_f16_f32(_Q0);
                __asm { FCMP            H3, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  LOWORD(_D5) = *(v27 + 6);
                  if (v443)
                  {
                    __asm { FCMP            H5, #0 }

                    if (!(!_ZF & _CF))
                    {
                      *v27 = _Q0.n128_u32[0];
                      *(v27 + 4) = _Q0.n128_u16[2];
LABEL_414:
                      *(v27 + 6) = _D3.i16[0];
                      goto LABEL_415;
                    }

                    __asm { FCVT            S6, H5 }
                  }

                  else
                  {
                    LODWORD(_D6) = 1.0;
                  }

                  __asm { FCVT            S4, H3 }

                  LOWORD(_D7) = *v27;
                  v411.n128_u16[0] = _Q0.n128_u16[1];
                  v54.n128_u16[0] = _Q0.n128_u16[2];
                  _Q0.n128_u64[0] = PDAluminosityPDA(_Q0, v411, v54, *&_D3, _S4, _D5, _D6, _D7, v46, v47, v48, v49, v50, v51, v52, v53, *v27, *(v27 + 2), HIWORD(*(v27 + 2)), *&_D6);
                  *v27 = _Q0.n128_u16[0];
                  *(v27 + 2) = v413;
                  *(v27 + 4) = v54.n128_u16[0];
                  goto LABEL_414;
                }
              }

LABEL_415:
              ++v61;
              ++v60;
              v75 += v34 != 0;
              v27 += 8;
              if (!--v408)
              {
                goto LABEL_416;
              }
            }

          case 27:
            v434 = v31;
            v439 = v42;
            v440 = v41;
            v73 = v37;
            v74 = v4;
            v75 = v34;
            break;
          default:
            v69 = v4;
            v70 = v34;
            v71 = v442;
            do
            {
              v72 = *v61;
              if (*v61)
              {
                if (v34)
                {
                  v72 = (*v70 * v72 + ((*v70 * v72) >> 8) + 1) >> 8;
                }

                if (v72)
                {
                  if (v72 == 255)
                  {
                    *v27 = 0;
                  }

                  else
                  {
                    _Q0 = vmulq_n_f32(vcvtq_f32_f16(*v27), (v72 * -0.0039216) + 1.0);
                    _Q0.n128_u64[0] = vcvt_f16_f32(_Q0);
                    *v27 = _Q0.n128_u64[0];
                  }
                }
              }

              ++v61;
              v70 += v34 != 0;
              v27 += 8;
              --v69;
            }

            while (v69);
            v34 = &v70[v435];
            goto LABEL_355;
        }

        break;
      }

      while (1)
      {
        v76 = *v61;
        if (*v61)
        {
          if (v34)
          {
            v77 = *v75 * v76 + ((*v75 * v76) >> 8) + 1;
            if (v77 < 0x100)
            {
              goto LABEL_69;
            }

            v76 = v77 >> 8;
          }

          v78 = vcvtq_f32_f16(*v60);
          _Q0 = vmulq_n_f32(v78, v76 * 0.0039216);
          v79 = COERCE_DOUBLE(vcvt_f16_f32(_Q0));
          __asm { FCMP            H3, #0 }

          if (!(_NF ^ _VF | _ZF))
          {
            LOWORD(_D5) = *(v27 + 6);
            if (v443)
            {
              __asm { FCMP            H5, #0 }

              if (!(!_ZF & _CF))
              {
                *v27 = LODWORD(v79);
                *(v27 + 4) = WORD2(v79);
LABEL_68:
                *(v27 + 6) = _D3.i16[0];
                goto LABEL_69;
              }

              __asm { FCVT            S4, H5 }
            }

            else
            {
              _S4 = 1.0;
            }

            __asm { FCVT            S7, H3 }

            _Q0.n128_u16[0] = *v27;
            v78.n128_u16[0] = *(v27 + 2);
            v54.n128_u16[0] = *(v27 + 4);
            _D3.i32[0] = LODWORD(_D5);
            _Q0.n128_u64[0] = PDAluminosityPDA(_Q0, v78, v54, *&_D3, _S4, _D5, v79, _D7, v46, v47, v48, v49, v50, v51, v52, v53, SLOWORD(v79), SWORD1(v79), SWORD2(v79), *&_D7);
            *v27 = _Q0.n128_u16[0];
            *(v27 + 2) = v85;
            *(v27 + 4) = v54.n128_u16[0];
            goto LABEL_68;
          }
        }

LABEL_69:
        ++v61;
        ++v60;
        v75 += v34 != 0;
        v27 += 8;
        if (!--v74)
        {
LABEL_416:
          v34 = &v75[v435];
          v27 += 8 * v436;
          v37 = v73;
          v41 = v440;
          v42 = v439;
          v31 = v434;
          goto LABEL_417;
        }
      }
    }

    v37 = v442;
    _Q0.n128_u64[0] = shape_enum_clip_alloc(v17, v18, v7, 1, 1, 1, v28, v29, v4, v442);
    if (v38)
    {
      v428 = 0;
      v39 = v13 * v9 + 15;
      v32 = 0;
      v40 = (v39 & 0xFFFFFFF0);
      if (!v13)
      {
        v40 = v24;
      }

      v435 = -v433;
      v34 = (v26 + v40 + 16);
      v41 = v440;
      v42 = v439;
      v31 = v38;
      goto LABEL_17;
    }

LABEL_444:
    if (v430)
    {
      free(v430);
    }
  }
}

uint64_t RGBAf16_sample_RGBAf_inner(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(result + 24);
  v6 = *(result + 112);
  v7 = *(result + 48);
  v8 = *(result + 56);
  if (v7)
  {
    v122 = *(result + 112);
    if (v6 > v7)
    {
      v122 = v6 % v7;
    }
  }

  else
  {
    v122 = 0;
  }

  v9 = *(result + 176);
  v10 = *(result + 32);
  v11 = *(result + 120);
  if (v8)
  {
    v12 = v11 % v8;
    if (v11 <= v8)
    {
      v12 = *(result + 120);
    }

    v121 = v12;
  }

  else
  {
    v121 = 0;
  }

  v117 = *(result + 80);
  v119 = *(result + 88);
  v116 = *(result + 188);
  v13 = *(result + 152) - 8;
  v14 = *(result + 144) - 1;
  v15 = vbsl_s8(vceqd_s64(*(result + 40), 0), 0x3C00800080008000, COERCE_INT8X8_T(-COERCE_DOUBLE(0x8000800080008000)));
  v114 = *(result + 240);
  v16 = v10 + ((*(result + 260) - 1) * v5) + 2 * (4 * *(result + 256)) - 8;
  v118 = *(result + 64);
  v120 = *(result + 72);
  v115 = a4;
  do
  {
    if (a3 >= v120)
    {
      if (a3 <= v119)
      {
        v25 = 0;
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
      }

      else
      {
        v21 = *(result + 216);
        v22 = *(result + 224) + v119;
        v23 = v22 - a3 + (v21 >> 1);
        if (v23 < 1)
        {
          goto LABEL_51;
        }

        if (v23 >= v21)
        {
          LODWORD(v24) = 0x3FFFFFFF;
        }

        else
        {
          v24 = (*(result + 232) * v23) >> 32;
        }

        v27 = v116 | v24;
        v28 = v22 - 0x1000000;
        v25 = a3 - (v22 - 0x1000000);
        v26 = 448;
      }
    }

    else
    {
      v17 = *(result + 216);
      v18 = v120 - *(result + 224);
      v19 = a3 - v18 + (v17 >> 1);
      if (v19 < 1)
      {
        goto LABEL_51;
      }

      if (v19 >= v17)
      {
        LODWORD(v20) = 0x3FFFFFFF;
      }

      else
      {
        v20 = (*(result + 232) * v19) >> 32;
      }

      v27 = v116 | v20;
      v28 = v18 + 0x1000000;
      v25 = a3 - (v18 + 0x1000000);
      v26 = 512;
    }

    if (a2 >= v118)
    {
      if (a2 <= v117)
      {
        v33 = 0;
        v34 = (a2 >> 26) & 0x3C;
        v32 = a2;
      }

      else
      {
        v35 = *(result + 192);
        v36 = *(result + 200) + v117;
        v37 = v36 - a2 + (v35 >> 1);
        if (v37 < 1)
        {
          goto LABEL_51;
        }

        if (v37 < v35)
        {
          v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v116;
        }

        v32 = v36 - 0x1000000;
        v33 = a2 - (v36 - 0x1000000);
        v34 = 28;
      }
    }

    else
    {
      v29 = *(result + 192);
      v30 = v118 - *(result + 200);
      v31 = a2 - v30 + (v29 >> 1);
      if (v31 < 1)
      {
        goto LABEL_51;
      }

      if (v31 < v29)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v116;
      }

      v32 = v30 + 0x1000000;
      v33 = a2 - (v30 + 0x1000000);
      v34 = 32;
    }

    if (v27 >= 0x400000)
    {
      if (v7)
      {
        v38 = (v8 & ((v28 % v8) >> 63)) + v28 % v8;
        v39 = (v7 & ((v32 % v7) >> 63)) + v32 % v7;
        if (v38 >= v8)
        {
          v40 = v8;
        }

        else
        {
          v40 = 0;
        }

        v28 = v38 - v40;
        if (v39 >= v7)
        {
          v41 = v7;
        }

        else
        {
          v41 = 0;
        }

        v32 = v39 - v41;
        v25 += v28;
        v33 += v32;
      }

      v42 = v10 + SHIDWORD(v28) * v5;
      v43 = v32 >> 32;
      v44 = v42 + 8 * v43;
      v45 = *(result + 32);
      if (v16 >= v44)
      {
        v46 = (v42 + 8 * v43);
      }

      else
      {
        v46 = v16;
      }

      if (v46 < v45)
      {
        v46 = *(result + 32);
      }

      v47 = vmin_s16(vmax_s16(*v46, v15), 0x3C007FFF7FFF7FFFLL);
      if (!v9)
      {
        goto LABEL_54;
      }

      v48 = *(v9 + (v34 | v26));
      while (1)
      {
        v68 = v48 & 0xF;
        v69 = v48 >> 8;
        v70 = HIBYTE(v48) & 3;
        if (v68 == 1)
        {
          break;
        }

        if (v68 == 2)
        {
          v98 = SBYTE2(v48);
          if (v7)
          {
            v99 = v33 + (SBYTE2(v48) << 32);
            v100 = v7 & (v99 >> 63);
            if (v100 + v99 >= v7)
            {
              v101 = v7;
            }

            else
            {
              v101 = 0;
            }

            v98 = (v100 + ((HIWORD(v48) << 56) >> 24) - v101) >> 32;
          }

          v102 = (v44 + 8 * v98);
          if (v16 < v102)
          {
            v102 = v16;
          }

          if (v102 < v45)
          {
            v102 = v45;
          }

          v103 = vmin_s16(vmax_s16(*v102, v15), 0x3C007FFF7FFF7FFFLL);
          v104 = &interpolate_rgbaf16[4 * ((v48 >> 28) & 3)];
LABEL_132:
          _H6 = *(v104 + 3);
          __asm { FCVT            S6, H6 }

          v113 = vcvtq_f32_f16(v47);
          v97 = vmlaq_n_f32(v113, vsubq_f32(vcvtq_f32_f16(v103), v113), _S6);
          goto LABEL_133;
        }

        if (v68 != 3)
        {
          goto LABEL_54;
        }

        LODWORD(v71) = SBYTE1(v48);
        v72 = SBYTE2(v48);
        if (v7)
        {
          v73 = v69 << 56;
          v74 = v25 + (v73 >> 24);
          v75 = v33 + (SBYTE2(v48) << 32);
          v76 = v8 & (v74 >> 63);
          v77 = v7 & (v75 >> 63);
          v78 = v77 + v75;
          if (v76 + v74 >= v8)
          {
            v79 = v8;
          }

          else
          {
            v79 = 0;
          }

          if (v78 >= v7)
          {
            v80 = v7;
          }

          else
          {
            v80 = 0;
          }

          v71 = (v76 + (v73 >> 24) - v79) >> 32;
          v72 = (v77 + ((HIWORD(v48) << 56) >> 24) - v80) >> 32;
        }

        v81 = (v44 + 8 * v72);
        if (v16 < v81)
        {
          v81 = v16;
        }

        if (v81 < v45)
        {
          v81 = v45;
        }

        v82 = vmin_s16(vmax_s16(*v81, v15), 0x3C007FFF7FFF7FFFLL);
        v83 = v44 + v71 * v5;
        if (v16 >= v83)
        {
          v84 = (v44 + v71 * v5);
        }

        else
        {
          v84 = v16;
        }

        if (v84 < v45)
        {
          v84 = v45;
        }

        v85 = vmin_s16(vmax_s16(*v84, v15), 0x3C007FFF7FFF7FFFLL);
        v86 = (v83 + 8 * v72);
        if (v16 < v86)
        {
          v86 = v16;
        }

        if (v86 < v45)
        {
          v86 = v45;
        }

        _H16 = interpolate_rgbaf16[4 * v70 + 3];
        __asm { FCVT            S16, H16 }

        _H17 = interpolate_rgbaf16[4 * ((v48 >> 28) & 3) + 3];
        __asm { FCVT            S17, H17 }

        v94 = vcvtq_f32_f16(v47);
        v95 = vmaxnmq_f32(vminnmq_f32(vmlaq_n_f32(v94, vsubq_f32(vcvtq_f32_f16(v82), v94), _S17), xmmword_18439C4B0), xmmword_18439CFD0);
        v96 = vcvtq_f32_f16(v85);
        v97 = vmlaq_n_f32(v95, vsubq_f32(vmaxnmq_f32(vminnmq_f32(vmlaq_n_f32(v96, vsubq_f32(vcvtq_f32_f16(vmin_s16(vmax_s16(*v86, v15), 0x3C007FFF7FFF7FFFLL)), v96), _S17), xmmword_18439C4B0), xmmword_18439CFD0), v95), _S16);
LABEL_133:
        v47 = vcvt_f16_f32(vmaxnmq_f32(vminnmq_f32(v97, xmmword_18439C4B0), xmmword_18439CFD0));
LABEL_54:
        *(v13 + 8) = v47;
        v49 = v13 + 8;
        *(v14 + 1) = v27 >> 22;
        if (a4 == 1)
        {
          return result;
        }

        v50 = 0;
        a2 += v6;
        v51 = v117 - a2;
        a3 += v11;
        v52 = v119 - a3;
        v53 = a4 - 1;
        while (1)
        {
          v54 = v14 + v50 + 1;
          if ((v52 | v51 | (a3 - v120) | (a2 - v118)) < 0)
          {
            v14 += v50 + 1;
            --a4;
            goto LABEL_52;
          }

          if (v7)
          {
            v55 = (v8 & ((v25 + v121) >> 63)) + v25 + v121;
            v56 = (v7 & ((v33 + v122) >> 63)) + v33 + v122;
            if (v55 >= v8)
            {
              v57 = v8;
            }

            else
            {
              v57 = 0;
            }

            v25 = v55 - v57;
            if (v56 >= v7)
            {
              v58 = v7;
            }

            else
            {
              v58 = 0;
            }

            v33 = v56 - v58;
            v59 = HIDWORD(v25);
            v60 = v33;
          }

          else
          {
            v59 = HIDWORD(a3);
            v60 = a2;
          }

          v61 = v10 + v59 * v5;
          v62 = v60 >> 32;
          v44 = v61 + 8 * v62;
          v45 = *(result + 32);
          if (v16 >= v44)
          {
            v63 = (v61 + 8 * v62);
          }

          else
          {
            v63 = v16;
          }

          if (v63 < v45)
          {
            v63 = *(result + 32);
          }

          v47 = vmin_s16(vmax_s16(*v63, v15), 0x3C007FFF7FFF7FFFLL);
          if (v9)
          {
            v48 = *(v9 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
            v64 = v48 & 0xF;
            if ((v48 & 0xF) != 0)
            {
              break;
            }
          }

          v49 += 8;
          *(v13 + 8 * v50 + 16) = v47;
          *(v14 + v50++ + 2) = -1;
          a2 += v6;
          v51 -= v6;
          a3 += v11;
          v52 -= v11;
          --a4;
          if (v53 == v50)
          {
            return result;
          }
        }

        v65 = *(result + 264);
        v66 = *v65;
        if (a4 != v115 && a4 != 2 && v114 != 1 && v66 == 3 && v64 < 3)
        {
          v48 |= 3u;
        }

        v27 = -1;
        if (v66 < v64)
        {
          *v65 = v64;
        }

        v14 = v54;
        v13 = v49;
        --a4;
      }

      LODWORD(v105) = SBYTE1(v48);
      if (v7)
      {
        v106 = v69 << 56;
        v107 = v25 + (v106 >> 24);
        v108 = v8 & (v107 >> 63);
        if (v108 + v107 >= v8)
        {
          v109 = v8;
        }

        else
        {
          v109 = 0;
        }

        v105 = (v108 + (v106 >> 24) - v109) >> 32;
      }

      v110 = (v44 + v105 * v5);
      if (v16 < v110)
      {
        v110 = v16;
      }

      if (v110 < v45)
      {
        v110 = v45;
      }

      v103 = vmin_s16(vmax_s16(*v110, v15), 0x3C007FFF7FFF7FFFLL);
      v104 = &interpolate_rgbaf16[4 * v70];
      goto LABEL_132;
    }

LABEL_51:
    --a4;
    a2 += v6;
    a3 += v11;
    v49 = v13 + 8;
    *++v14 = 0;
LABEL_52:
    v13 = v49;
  }

  while (a4);
  return result;
}

uint64_t RGBAf16_shade(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v6 = v3;
  v20[482] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v8 = !*(v3 + 12) && !*(v4 + 72) && *(v4 + 4) >= 1.0;
  v9 = *(*(*v2 + 56) + 16 * *v3 + 8 * v8 + 4 * (*(v3 + 6) == 0));
  if (v9 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 1) < 1 || *(v3 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v3, v4, &v13, v18) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v5 & 0xF000000) != 0x3000000)
  {
    if (v13)
    {
      goto LABEL_22;
    }

    return 0xFFFFFFFFLL;
  }

  if (*(v5 + 16))
  {
    v12 = RGBAf16_shade_radial_RGB;
  }

  else if (*(v5 + 24))
  {
    v12 = RGBAf16_shade_conic_RGB;
  }

  else if (v16 < 2)
  {
    v12 = RGBAf16_shade_axial_RGB;
  }

  else
  {
    v12 = RGBAf16_shade_custom_RGB;
  }

  v13 = v12;
LABEL_22:
  v14 = *v7;
  v15 = v14;
  RGBAf16_image_mark(v6, &v13, v9, v11);
  if (v17 && (v17 < &v19 || v20 < v17))
  {
    free(v17);
  }

  return 1;
}

void RGBAf16_shade_axial_RGB(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 280);
  v6 = *(a1 + 272);
  v7 = *(a1 + 296) + ((*(a1 + 288) * (v6[1] * a3)) + (v5 * (v6[1] * a2)));
  v8 = *(a1 + 336);
  v9 = *(a1 + 344);
  v10 = *(a1 + 304);
  v11 = *(a1 + 308);
  LODWORD(v12) = *(a1 + 320);
  v13 = *(a1 + 324);
  v16 = a1 + 144;
  v14 = *(a1 + 144);
  v15 = *(v16 + 8);
  v17 = *(a1 + 384);
  if (*(a1 + 392))
  {
    v18 = *(a1 + 392);
  }

  else
  {
    v18 = v6;
  }

  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  if (v20)
  {
    v21 = *(a1 + 40);
  }

  else
  {
    v21 = v6;
  }

  if (v5 != 0.0)
  {
    for (i = (v15 + 2); ; i += 4)
    {
      LODWORD(v24) = v12;
      if (v7 >= v10)
      {
        LODWORD(v24) = v13;
        if (v7 <= v11)
        {
          LODWORD(v24) = (v9 * (v7 - v8));
        }
      }

      if ((v24 & 0x80000000) != 0)
      {
        if (!v17)
        {
          v42 = 0;
          goto LABEL_30;
        }

        _S6 = *v18;
        __asm { FCVT            H6, S6 }

        _S7 = *v17;
        _S16 = *(v17 + 4);
        __asm
        {
          FCVT            H7, S7
          FCVT            H16, S16
        }

        _S17 = *(v17 + 8);
        __asm { FCVT            H17, S17 }

        *(i - 2) = _H6 * *&_S7;
        *(i - 1) = _H6 * *&_S16;
        *i = _H6 * *&_S17;
      }

      else
      {
        v25 = (v19 + 4 * (3 * v24));
        v24 = v24;
        if (!v20)
        {
          v24 = 0;
        }

        _S6 = v21[v24];
        _S7 = *v25;
        _S16 = v25[1];
        _S17 = v25[2];
        if (v20)
        {
          _S7 = _S6 * *v25;
          _S16 = _S6 * _S16;
          _S17 = _S6 * _S17;
        }

        __asm { FCVT            H7, S7 }

        *(i - 2) = _H7;
        __asm { FCVT            H7, S16 }

        *(i - 1) = _H7;
        __asm { FCVT            H7, S17 }

        *i = _H7;
        __asm { FCVT            H6, S6 }
      }

      i[1] = _H6;
      v42 = -1;
LABEL_30:
      v7 = v5 + v7;
      *v14 = v42;
      v14 = (v14 + 1);
      if (!--a4)
      {
        return;
      }
    }
  }

  if (v7 >= v10)
  {
    LODWORD(v12) = v13;
    if (v7 <= v11)
    {
      LODWORD(v12) = (v9 * (v7 - v8));
    }
  }

  if ((v12 & 0x80000000) == 0 || v17)
  {
    if ((v12 & 0x80000000) != 0)
    {
      _S3 = *v18;
      _S0 = *v18 * *v17;
      _D2 = vmul_n_f32(*(v17 + 4), *v18);
    }

    else
    {
      v43 = v19 + 4 * (3 * v12);
      v12 = v12;
      if (!v20)
      {
        v12 = 0;
      }

      _S3 = v21[v12];
      _S0 = *v43;
      _D2 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v20 == 0), 0x1FuLL)), *(v43 + 4), vmul_n_f32(*(v43 + 4), _S3));
      if (v20)
      {
        _S0 = _S3 * *v43;
      }
    }

    __asm
    {
      FCVT            H0, S0
      FCVT            H1, S2
    }

    _S2 = _D2.i32[1];
    __asm
    {
      FCVT            H2, S2
      FCVT            H3, S3
    }

    v52 = a4 + 4;
    do
    {
      *v15 = _H0;
      v15[1] = _H1;
      v15[2] = _H2;
      v15[3] = _H3;
      v15[4] = _H0;
      v15[5] = _H1;
      v15[6] = _H2;
      v15[7] = _H3;
      v15[8] = _H0;
      v15[9] = _H1;
      v15[10] = _H2;
      v15[11] = _H3;
      v15[12] = _H0;
      v15[13] = _H1;
      v15[14] = _H2;
      v15[15] = _H3;
      v15 += 16;
      v52 -= 4;
      *v14++ = -1;
    }

    while (v52 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = a4;
    }

    bzero(v14, ((a4 - v22 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t RGBAf16_shade_custom_RGB(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
{
  v6 = *(result + 272);
  v7 = *(v6 + 4);
  v8 = v7 * a2;
  v9 = v7 * a3;
  v10 = *(result + 280);
  *a6.i8 = vadd_f32(*(result + 296), vmla_n_f32(vmul_n_f32(*(result + 288), v9), v10, v8));
  v11 = *(result + 304);
  v12 = *(result + 336);
  v13 = *(result + 348);
  v14 = *(result + 344);
  v15 = *(result + 356);
  v17 = *(result + 144);
  v16 = *(result + 152);
  v18 = *(result + 384);
  v19 = *(result + 392);
  if (!v19)
  {
    v19 = *(result + 272);
  }

  v20 = *(result + 32);
  v21 = *(result + 40);
  if (v21)
  {
    v22 = *(result + 48);
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v6 = *(result + 40);
  }

  v23 = 3 * *(result + 48);
  v24 = vcltz_s32(vshl_n_s32(vdup_n_s32(v21 == 0), 0x1FuLL));
  do
  {
    v25 = vzip1q_s32(a6, a6);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v11, v25))), vmovn_s32(vcgtq_f32(v25, v11)))) & 1) == 0)
    {
      v29 = (v15 * (*&a6.i32[1] - v13));
      v30 = v14 * (*a6.i32 - v12);
      v31 = (v20 + 4 * v23 * v29 + 12 * v30);
      v32 = v6 + 4 * v22 * v29;
      result = v30;
      if (!v21)
      {
        result = 0;
      }

      v26 = *(v32 + 4 * result);
      v28 = *v31[1].i32;
      *v27.f32 = vbsl_s8(v24, *v31, vmul_n_f32(*v31, v26));
      if (v21)
      {
        v28 = v26 * v28;
      }

      goto LABEL_16;
    }

    if (v18)
    {
      v26 = *v19;
      *v27.f32 = vmul_n_f32(*v18, *v19);
      v28 = *v19 * v18[1].f32[0];
LABEL_16:
      v27.i64[1] = __PAIR64__(LODWORD(v26), LODWORD(v28));
      *v16 = vcvt_f16_f32(v27);
      v33 = -1;
      goto LABEL_18;
    }

    v33 = 0;
LABEL_18:
    *a6.i8 = vadd_f32(v10, *a6.i8);
    ++v16;
    *v17++ = v33;
    --a4;
  }

  while (a4);
  return result;
}

void RGBAf16_shade_conic_RGB(float32x2_t *a1, uint64_t a2, uint64_t a3, int a4, double a5, __n128 a6)
{
  v7 = a1[35];
  a6.n128_u64[0] = vadd_f32(a1[37], vmla_n_f32(vmul_n_f32(a1[36], *(*&a1[34] + 4) * a3), v7, *(*&a1[34] + 4) * a2));
  v8 = a1[42].f32[0];
  v9 = a1[43].f32[0];
  v10 = a1[38].f32[0];
  v12 = a1[18];
  v11 = a1[19];
  v13 = a1[4];
  v14 = a1[5];
  if (v14)
  {
    v15 = a1[5];
  }

  else
  {
    v15 = a1[34];
  }

  v16 = a1[38].f32[1] - v10;
  do
  {
    v44 = a6;
    v17 = v9 * ((v10 + (((atan2f(a6.n128_f32[1], a6.n128_f32[0]) * 0.15915) + 0.5) * v16)) - v8);
    v18 = ceilf(v17);
    LODWORD(v19) = vcvtms_s32_f32(v17);
    v20 = vcvtms_s32_f32(v9 + v17);
    if (v17 < 0.0)
    {
      LODWORD(v19) = v20;
    }

    v21 = ceilf(v17 - v9);
    if (v17 > v9)
    {
      v18 = v21;
    }

    LODWORD(v22) = v18;
    v23 = (*&v13 + 12 * v19);
    v19 = v19;
    if (!*&v14)
    {
      v19 = 0;
    }

    v24 = *(*&v15 + 4 * v19);
    v26 = *v23;
    v25 = v23[1];
    v27 = v23[2];
    v28 = (*&v13 + 12 * v22);
    v22 = v22;
    if (!*&v14)
    {
      v22 = 0;
    }

    v29 = *(*&v15 + 4 * v22);
    v31 = *v28;
    v30 = v28[1];
    v32 = v28[2];
    if (v14)
    {
      v26 = v24 * v26;
      v25 = v24 * v25;
      v27 = v24 * v27;
      v31 = v29 * v31;
      v30 = v29 * v30;
      v32 = v29 * v32;
    }

    v33 = v17 - floorf(v17);
    _S4 = v24 + (v33 * (v29 - v24));
    _S3 = v26 + (v33 * (v31 - v26));
    _S2 = v25 + (v33 * (v30 - v25));
    _S0 = v27 + (v33 * (v32 - v27));
    __asm { FCVT            H1, S3 }

    *v11 = _H1;
    __asm { FCVT            H1, S2 }

    v11[1] = _H1;
    __asm { FCVT            H0, S0 }

    v11[2] = LOWORD(_S0);
    __asm { FCVT            H0, S4 }

    v11[3] = LOWORD(_S0);
    a6.n128_u64[1] = v44.n128_u64[1];
    a6.n128_u64[0] = vadd_f32(v7, v44.n128_u64[0]);
    v11 += 4;
    *v12++ = -1;
    --a4;
  }

  while (a4);
}

void RGBAf16_shade_radial_RGB(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 400);
  v6 = *(a1 + 280);
  v7 = *(a1 + 284);
  v8 = *(a1 + 272);
  v9 = v8[1];
  v10 = v9 * a2;
  v11 = v9 * a3;
  v12 = *(a1 + 296) + ((*(a1 + 288) * v11) + (v6 * v10));
  v13 = *(a1 + 300) + ((v11 * *(a1 + 292)) + (v7 * v10));
  v14 = *(a1 + 336);
  v15 = *(a1 + 344);
  v16 = *(a1 + 304);
  v17 = *(a1 + 308);
  v18 = *(a1 + 324);
  v19 = v5[2];
  v20 = v5[4];
  v21 = v5[5];
  v22 = v5[7];
  v25 = a1 + 144;
  v23 = *(a1 + 144);
  v24 = *(v25 + 8);
  v26 = *(a1 + 384);
  if (*(a1 + 392))
  {
    v27 = *(a1 + 392);
  }

  else
  {
    v27 = v8;
  }

  v28 = *(a1 + 32);
  v29 = *(a1 + 40);
  if (v29)
  {
    v8 = *(a1 + 40);
  }

  if (v19 != 0.0 || v22 != 0.0 || v7 != 0.0)
  {
    v33 = *(a1 + 320);
    v34 = v5[3];
    v35 = v5[8];
    v36 = -v5[6];
    v37 = v17 - v16;
    v38 = vcltz_s32(vshl_n_s32(vdup_n_s32(v29 == 0), 0x1FuLL));
    while (1)
    {
      v39 = v36 + ((v12 + v12) * v19);
      v40 = ((v13 * v13) + (v12 * v12)) - v22;
      if (v21 == 0.0)
      {
        v47 = v40 / v39;
      }

      else
      {
        v41 = ((v21 * -4.0) * v40) + (v39 * v39);
        if (v41 < 0.0)
        {
          goto LABEL_48;
        }

        v42 = sqrtf(v41);
        v43 = v35 * (v39 - v42);
        v44 = v39 + v42;
        v45 = v35 * v44;
        v46 = (v35 * v44) <= v43;
        if ((v35 * v44) <= v43)
        {
          v47 = v35 * v44;
        }

        else
        {
          v47 = v43;
        }

        if (v46)
        {
          v45 = v43;
        }

        if (v45 < 0.0)
        {
          _NF = v45 < v34;
LABEL_30:
          LODWORD(v49) = v33;
          if (_NF)
          {
            goto LABEL_48;
          }

LABEL_31:
          if ((v49 & 0x80000000) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_48;
        }

        if (v45 <= 1.0)
        {
          v50 = v16 + (v45 * v37);
          goto LABEL_42;
        }

        if ((v18 & 0x80000000) == 0)
        {
          LODWORD(v49) = v18;
          if (v45 <= v20)
          {
LABEL_43:
            v51 = (v28 + 4 * (3 * v49));
            v49 = v49;
            if (!v29)
            {
              v49 = 0;
            }

            v52 = v8[v49];
            v53 = *v51[1].i32;
            *v54.f32 = vbsl_s8(v38, *v51, vmul_n_f32(*v51, v52));
            if (v29)
            {
              v53 = v52 * v53;
            }

            goto LABEL_50;
          }
        }
      }

      if (v47 < 0.0)
      {
        _NF = v47 < v34;
        goto LABEL_30;
      }

      if (v47 > 1.0)
      {
        LODWORD(v49) = v18;
        if (v47 > v20)
        {
          goto LABEL_48;
        }

        goto LABEL_31;
      }

      v50 = v16 + (v47 * v37);
LABEL_42:
      LODWORD(v49) = (v15 * (v50 - v14));
      if ((v49 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

LABEL_48:
      if (!v26)
      {
        v55 = 0;
        goto LABEL_52;
      }

      v52 = *v27;
      *v54.f32 = vmul_n_f32(*v26, *v27);
      v53 = *v27 * *(v26 + 8);
LABEL_50:
      v54.i64[1] = __PAIR64__(LODWORD(v52), LODWORD(v53));
      *v24 = vcvt_f16_f32(v54);
      v55 = -1;
LABEL_52:
      v12 = v6 + v12;
      v13 = v7 + v13;
      ++v24;
      *v23++ = v55;
      if (!--a4)
      {
        return;
      }
    }
  }

  v30 = v13 * v13;
  v31 = -v21;
  if (v30 <= -v21)
  {
    v56 = fabsf(v5[8]);
    v57 = v21 * -4.0;
    v58 = v17 - v16;
    v59 = (v28 + 4 * (3 * v18));
    v60 = vdup_n_s32(v29 == 0);
    if (v29)
    {
      v61 = v18;
    }

    else
    {
      v61 = 0;
    }

    v62 = v24 + 1;
    v63 = a4 + 2;
    v64 = vcltz_s32(vshl_n_s32(v60, 0x1FuLL));
    while (1)
    {
      v65 = v30 + (v12 * v12);
      v66 = v6 + v12;
      v67 = v30 + (v66 * v66);
      if (v65 > v31 && v67 > v31)
      {
        if ((v18 & 0x80000000) != 0)
        {
          if (!v26)
          {
            v119 = 0;
            v97 = 0;
            goto LABEL_110;
          }

          _S21 = *v27;
          _S22 = *v27 * *v26;
          _S23 = *v27 * *(v26 + 4);
          _S24 = *v27 * *(v26 + 8);
        }

        else
        {
          _S21 = v8[v61];
          _S22 = *v59;
          _S23 = v59[1];
          _S24 = v59[2];
          if (v29)
          {
            _S24 = _S21 * _S24;
            _S23 = _S21 * _S23;
            _S22 = _S21 * *v59;
          }
        }

        __asm { FCVT            H22, S22 }

        v62[-1].i16[0] = _H22;
        __asm { FCVT            H23, S23 }

        v62[-1].i16[1] = _H23;
        __asm { FCVT            H24, S24 }

        v62[-1].i16[2] = _H24;
        __asm { FCVT            H21, S21 }

        v62[-1].i16[3] = _H21;
        v62->i16[0] = _H22;
        v62->i16[1] = _H23;
        v62->i16[2] = _H24;
        goto LABEL_108;
      }

      v69 = sqrtf(v57 * v67);
      v70 = v56 * sqrtf(v57 * v65);
      v71 = v56 * v69;
      v72 = (v15 * ((v16 + (v70 * v58)) - v14));
      v73 = (v15 * ((v16 + ((v56 * v69) * v58)) - v14));
      if (v70 <= 1.0 && v71 <= 1.0)
      {
        v80 = (v28 + 12 * v72);
        v72 = v72;
        if (!v29)
        {
          v72 = 0;
        }

        _S21 = v8[v72];
        _S24 = *v80;
        _S23 = v80[1];
        _S22 = v80[2];
        if (v29)
        {
          _S24 = _S21 * _S24;
          _S23 = _S21 * _S23;
          v85 = v73;
          _S22 = _S21 * _S22;
        }

        else
        {
          v85 = 0;
        }

        v107 = (v28 + 12 * v73);
        _S25 = v8[v85];
        _S26 = *v107;
        _S27 = v107[1];
        _S28 = v107[2];
        if (v29)
        {
          _S26 = _S25 * *v107;
          _S27 = _S25 * _S27;
          _S28 = _S25 * _S28;
        }

        __asm { FCVT            H24, S24 }

        v62[-1].i16[0] = _H24;
        __asm { FCVT            H23, S23 }

        v62[-1].i16[1] = _H23;
        __asm { FCVT            H22, S22 }

        v62[-1].i16[2] = _H22;
        __asm { FCVT            H21, S21 }

        v62[-1].i16[3] = _H21;
        __asm { FCVT            H21, S26 }

        v62->i16[0] = _H21;
        __asm { FCVT            H21, S27 }

        v62->i16[1] = _H21;
        __asm { FCVT            H21, S28 }

        v62->i16[2] = _H21;
        __asm { FCVT            H21, S25 }

LABEL_108:
        v97 = -1;
        goto LABEL_109;
      }

      if (v70 <= 1.0)
      {
        if ((v72 & 0x80000000) == 0)
        {
          v75 = (3 * v72);
          if (!v29)
          {
            v72 = 0;
          }

LABEL_85:
          v93 = (v28 + 4 * v75);
          v94 = v8[v72];
          v95 = *v93[1].i32;
          *v96.f32 = vbsl_s8(v64, *v93, vmul_n_f32(*v93, v94));
          if (v29)
          {
            v95 = v94 * v95;
          }

LABEL_90:
          v96.i64[1] = __PAIR64__(LODWORD(v94), LODWORD(v95));
          v62[-1] = vcvt_f16_f32(v96);
          v97 = -1;
          goto LABEL_91;
        }
      }

      else if (v70 <= v20)
      {
        v72 = v61;
        v75 = (3 * v18);
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_85;
        }
      }

      if (v26)
      {
        v94 = *v27;
        *v96.f32 = vmul_n_f32(*v26, *v27);
        v95 = *v27 * *(v26 + 8);
        goto LABEL_90;
      }

      v97 = 0;
LABEL_91:
      if (v71 <= 1.0)
      {
        if ((v73 & 0x80000000) != 0)
        {
          goto LABEL_101;
        }

        v98 = (3 * v73);
        if (!v29)
        {
          v73 = 0;
        }
      }

      else if (v71 > v20 || (v73 = v61, v98 = (3 * v18), (v18 & 0x80000000) != 0))
      {
LABEL_101:
        if (!v26)
        {
          v119 = 0;
          goto LABEL_110;
        }

        _S21 = *v27;
        _S22 = *v27 * *v26;
        _S23 = *v27 * *(v26 + 4);
        _S24 = *v27 * *(v26 + 8);
        goto LABEL_103;
      }

      _S21 = v8[v73];
      v100 = (v28 + 4 * v98);
      _S22 = *v100;
      _S23 = v100[1];
      _S24 = v100[2];
      if (v29)
      {
        _S22 = _S21 * *v100;
        _S23 = _S21 * _S23;
        _S24 = _S21 * _S24;
      }

LABEL_103:
      __asm { FCVT            H22, S22 }

      v62->i16[0] = _H22;
      __asm { FCVT            H22, S23 }

      v62->i16[1] = _H22;
      __asm { FCVT            H22, S24 }

      v62->i16[2] = _H22;
      __asm { FCVT            H21, S21 }

LABEL_109:
      v62->i16[3] = _H21;
      v119 = -1;
LABEL_110:
      v12 = v6 + v66;
      *v23 = v97;
      v23[1] = v119;
      v23 += 2;
      v62 += 2;
      v63 -= 2;
      if (v63 <= 2)
      {
        return;
      }
    }
  }

  if (v26 || (v18 & 0x80000000) == 0)
  {
    if ((v18 & 0x80000000) != 0)
    {
      _S3 = *v27;
      _S0 = *v27 * *v26;
      _D2 = vmul_n_f32(*(v26 + 4), *v27);
    }

    else
    {
      v120 = v28 + 12 * v18;
      if (!v29)
      {
        v18 = 0;
      }

      _S3 = v8[v18];
      _S0 = *v120;
      _D2 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v29 == 0), 0x1FuLL)), *(v120 + 4), vmul_n_f32(*(v120 + 4), _S3));
      if (v29)
      {
        _S0 = _S3 * *v120;
      }
    }

    __asm
    {
      FCVT            H0, S0
      FCVT            H1, S2
    }

    _S2 = _D2.i32[1];
    __asm
    {
      FCVT            H2, S2
      FCVT            H3, S3
    }

    v129 = a4 + 4;
    do
    {
      v24->i16[0] = _H0;
      v24->i16[1] = _H1;
      v24->i16[2] = _H2;
      v24->i16[3] = _H3;
      v24[1].i16[0] = _H0;
      v24[1].i16[1] = _H1;
      v24[1].i16[2] = _H2;
      v24[1].i16[3] = _H3;
      v24[2].i16[0] = _H0;
      v24[2].i16[1] = _H1;
      v24[2].i16[2] = _H2;
      v24[2].i16[3] = _H3;
      v24[3].i16[0] = _H0;
      v24[3].i16[1] = _H1;
      v24[3].i16[2] = _H2;
      v24[3].i16[3] = _H3;
      v24 += 4;
      v129 -= 4;
      *v23 = -1;
      v23 += 4;
    }

    while (v129 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v32 = 4;
    }

    else
    {
      v32 = a4;
    }

    bzero(v23, ((a4 - v32 + 3) & 0xFFFFFFFC) + 4);
  }
}