double *CGSScanconverterGetBoundingBox(double *result, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v5 = result[7];
  v6 = result[5];
  if (v5 <= v6 || (v7 = result[8], v8 = result[6], v7 <= v8))
  {
    *a5 = 0;
    *a4 = 0;
    *a3 = 0;
    *a2 = 0;
  }

  else
  {
    v9 = vcvtmd_s64_f64(v6);
    v10 = vcvtmd_s64_f64(v8);
    *a2 = v9 - 1;
    *a3 = v10 - 2;
    *a4 = vcvtpd_s64_f64(v5) - v9 + 2;
    *a5 = vcvtpd_s64_f64(v7) - v10 + 3;
  }

  return result;
}

_WORD *delta_create(uint64_t a1, _DWORD *a2, _DWORD *a3, unint64_t *a4)
{
  v97 = 0;
  v98 = 0;
  CGSScanconverterGetBoundingBox(a1, &v98 + 1, &v98, &v97 + 1, &v97);
  v8 = HIDWORD(v97);
  if (SHIDWORD(v97) >= 0x8000)
  {
    return 0;
  }

  v9 = v97;
  if (v97 >= 0x8000)
  {
    return 0;
  }

  v10 = HIDWORD(v98);
  v11 = v98 >= 0 ? HIDWORD(v98) : -HIDWORD(v98);
  if (v11 > 0x8000)
  {
    return 0;
  }

  v12 = v98;
  v13 = v98 >= 0 ? v98 : -v98;
  if (v13 > 0x8000)
  {
    return 0;
  }

  v14 = v97 + 2;
  v15 = (8 * SHIDWORD(v97) + 34) & 0xFFFFFFFFFFFFFFF0;
  if (v15 >= 0xFFFFFFFFFFFFFFFFLL / v14)
  {
    return 0;
  }

  result = malloc_type_calloc(v97 + 2, (8 * SHIDWORD(v97) + 34) & 0xFFFFFFFFFFFFFFF0, 0x716630A0uLL);
  if (result)
  {
    v17 = *(a1 + 80);
    if (v17)
    {
      v18 = 0;
      v19 = result + v15 * v14 - 2;
      v20 = *a1;
      v96 = -4 * v10;
      v21 = v15 >> 1;
      v95 = &result[-4 * v10 + 7];
      v22 = 2 * (v15 >> 1);
      do
      {
        v23 = (*&v20 + 24 * v18);
        v24 = v23[3];
        v25 = v23[4];
        v26 = vcvtps_s32_f32(*v23 * 4.0);
        v27 = vcvtps_s32_f32(v23[1] * 4.0);
        if (v24 == 0.0 && v25 == 0.0)
        {
          v28 = v23[5];
          if (v28 <= 16383.0)
          {
            v29 = vcvtmd_s64_f64(v28 * 65536.0 + 0.5);
            v30 = ((v29 + 0x8000) >> 16) - 2;
            v31 = &result[(v30 - v12) * v21 + 7 + v26 + v96];
            v32 = (v29 - (v30 << 16) + 512) >> 10;
            v33 = &vKernel + 12 * (v32 & 0x3F) + 2 * ((v32 + 192) >> 6);
            v34 = v23[2];
            if (((v32 + 192) & 0xFFFFFF80) == 0x100)
            {
              if (v34 >= 0.0)
              {
                if (v26 < v27)
                {
                  do
                  {
                    v83 = 4;
                    v84 = v31;
                    v85 = v33;
                    do
                    {
                      v86 = v84;
                      if (v84 >= result && v84 <= v19)
                      {
                        *v84 += *v85;
                      }

                      --v85;
                      v84 = (v84 + v22);
                      --v83;
                    }

                    while (v83);
                    v87 = &v86[v21];
                    if (v87 >= result && v87 <= v19)
                    {
                      *v87 += *v85;
                    }

                    ++v26;
                    v31 += 2;
                  }

                  while (v26 != v27);
                }
              }

              else if (v26 < v27)
              {
                do
                {
                  v35 = 4;
                  v36 = v31;
                  v37 = v33;
                  do
                  {
                    v38 = v36;
                    if (v36 >= result && v36 <= v19)
                    {
                      *v36 -= *v37;
                    }

                    --v37;
                    v36 = (v36 + v22);
                    --v35;
                  }

                  while (v35);
                  v39 = &v38[v21];
                  if (v39 >= result && v39 <= v19)
                  {
                    *v39 -= *v37;
                  }

                  ++v26;
                  v31 += 2;
                }

                while (v26 != v27);
              }
            }

            else
            {
              v62 = (v32 + 192) >> 6;
              if (v34 >= 0.0)
              {
                if (v26 < v27)
                {
                  do
                  {
                    v88 = 4;
                    v89 = v31;
                    v90 = v33;
                    do
                    {
                      v91 = v89;
                      if (v62 + v88 - 4 <= 5 && v89 >= result && v89 <= v19)
                      {
                        *v89 += *v90;
                      }

                      --v90;
                      v89 = (v89 + v22);
                      --v88;
                    }

                    while (v88);
                    v62 -= 4;
                    if (v62 <= 5)
                    {
                      v94 = &v91[v21];
                      if (v94 >= result && v94 <= v19)
                      {
                        *v94 += *v90;
                      }
                    }

                    ++v26;
                    v31 += 2;
                  }

                  while (v26 != v27);
                }
              }

              else if (v26 < v27)
              {
                do
                {
                  v63 = 4;
                  v64 = v31;
                  v65 = v33;
                  do
                  {
                    v66 = v64;
                    if (v62 + v63 - 4 <= 5 && v64 >= result && v64 <= v19)
                    {
                      *v64 -= *v65;
                    }

                    --v65;
                    v64 = (v64 + v22);
                    --v63;
                  }

                  while (v63);
                  v62 -= 4;
                  if (v62 <= 5)
                  {
                    v69 = &v66[v21];
                    if (v69 >= result && v69 <= v19)
                    {
                      *v69 -= *v65;
                    }
                  }

                  ++v26;
                  v31 += 2;
                }

                while (v26 != v27);
              }
            }
          }

          goto LABEL_32;
        }

        v40 = -(*v23 - (v26 * 0.25));
        v41 = ((v25 * v40) + ((v40 * v40) * v24)) + v23[5];
        if (v41 <= 16383.0)
        {
          v42 = v24 * 0.125;
          if ((v24 * 0.125) <= 16383.0)
          {
            v43 = ((v25 * 0.25) + (v24 * 0.0625)) + (v40 * (v24 * 0.5));
            if (v43 <= 16383.0)
            {
              v44 = vcvtmd_s64_f64(v41 * 65536.0 + 0.5);
              v45 = vcvtmd_s64_f64(v43 * 65536.0 + 0.5);
              v46 = vcvtmd_s64_f64(v42 * 65536.0 + 0.5);
              if (v23[2] >= 0.0)
              {
                if (v26 >= v27)
                {
                  goto LABEL_32;
                }

                v70 = v26;
                v71 = v95 + 2 * v26;
                while (2)
                {
                  if (v44 > 0x3FFFFFFF || v45 > 0x3FFFFFFF)
                  {
                    goto LABEL_32;
                  }

                  v73 = ((v44 + 0x8000) >> 16) - 2;
                  v74 = (v73 - v12) * v21;
                  v75 = (v44 - (v73 << 16) + 512) >> 10;
                  v76 = (&vKernel + 12 * (v75 & 0x3F) + 2 * ((v75 + 192) >> 6));
                  v77 = (v71 + 2 * v74);
                  if (((v75 + 192) & 0xFFFFFF80) == 0x100)
                  {
                    v78 = 4;
                    do
                    {
                      if (v77 >= result && v77 <= v19)
                      {
                        *v77 += *v76;
                      }

                      --v76;
                      v77 = (v77 + v22);
                      --v78;
                    }

                    while (v78);
                    goto LABEL_110;
                  }

                  v79 = (v75 + 192) >> 6;
                  v80 = 4;
                  do
                  {
                    if ((v79 + v80 - 4) <= 5 && v77 >= result && v77 <= v19)
                    {
                      *v77 += *v76;
                    }

                    --v76;
                    v77 = (v77 + v22);
                    --v80;
                  }

                  while (v80);
                  if ((v79 - 10) >= 0xFFFFFFFA)
                  {
LABEL_110:
                    if (v77 >= result && v77 <= v19)
                    {
                      *v77 += *v76;
                    }
                  }

                  ++v70;
                  v44 += v45;
                  v45 += v46;
                  v71 += 2;
                  if (v70 == v27)
                  {
                    goto LABEL_32;
                  }

                  continue;
                }
              }

              if (v26 < v27)
              {
                v47 = v26;
                v48 = v95 + 2 * v26;
                do
                {
                  if (v44 > 0x3FFFFFFF || v45 > 0x3FFFFFFF)
                  {
                    break;
                  }

                  v50 = ((v44 + 0x8000) >> 16) - 2;
                  v51 = (v50 - v12) * v21;
                  v52 = (v44 - (v50 << 16) + 512) >> 10;
                  v53 = v52 + 192;
                  v54 = (&vKernel + 12 * (v52 & 0x3F) + 2 * ((v52 + 192) >> 6));
                  v55 = (v52 + 192) & 0xFFFFFF80;
                  v56 = (v48 + 2 * v51);
                  if (v55 == 256)
                  {
                    v57 = 4;
                    do
                    {
                      if (v56 >= result && v56 <= v19)
                      {
                        *v56 -= *v54;
                      }

                      --v54;
                      v56 = (v56 + v22);
                      --v57;
                    }

                    while (v57);
                  }

                  else
                  {
                    v58 = v53 >> 6;
                    v59 = 4;
                    do
                    {
                      if ((v58 + v59 - 4) <= 5 && v56 >= result && v56 <= v19)
                      {
                        *v56 -= *v54;
                      }

                      --v54;
                      v56 = (v56 + v22);
                      --v59;
                    }

                    while (v59);
                    if ((v58 - 10) < 0xFFFFFFFA)
                    {
                      goto LABEL_65;
                    }
                  }

                  if (v56 >= result && v56 <= v19)
                  {
                    *v56 -= *v54;
                  }

LABEL_65:
                  ++v47;
                  v44 += v45;
                  v45 += v46;
                  v48 += 2;
                }

                while (v47 != v27);
              }
            }
          }
        }

LABEL_32:
        ++v18;
      }

      while (v18 != v17);
    }

    *a2 = v8;
    *a3 = v9;
    *a4 = v15;
  }

  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)23,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, int32x4_t a13, uint64_t a14, unint64_t a15)
{
  v16 = a15;
  v17 = *result;
  v18 = *a3;
  v19 = *a2;
  v20 = *a4;
  if (a15 < 2)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v22 = vdupq_n_s16(v21);
  v23.i64[0] = 0xFFFF000000000000;
  v23.i64[1] = 0xFFFF000000000000;
  if (a8)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v25 = vandq_s8(v22, v23);
  v26 = vandq_s8(vdupq_n_s16(v24), v23);
  v27 = 2 * a6;
  v28 = 8 * v27;
  v29 = vdupq_n_s32(0xFFFE8000);
  a13.i64[0] = 0xFFFFFFFFFFFFLL;
  a13.i64[1] = 0xFFFFFFFFFFFFLL;
  v30.i64[0] = 0x800000008000;
  v30.i64[1] = 0x800000008000;
  v31.i64[0] = -1;
  v31.i64[1] = -1;
  while (1)
  {
    v32 = *v20;
    if (!*v20)
    {
      v55 = &v20[v16];
      v56 = v20;
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
            v58 = &v20[v16];
            break;
          }
        }
      }

      v59 = v58 - v20;
      v60 = (v58 - v20) * a6;
      v17 = (v17 + 8 * v60);
      v19 = (v19 + 8 * v60);
      v20 += v60;
      v16 -= v59;
      goto LABEL_37;
    }

    if (v32 != 0xFFFF)
    {
      break;
    }

    v33 = &v20[v16];
    v34 = v20;
    do
    {
      v35 = v34++;
    }

    while (v34 <= v33 && (vminvq_u8(vceqq_s8(*v35, v31)) & 0x80) != 0);
    do
    {
      v36 = v35;
      v35 = (v35 + 4);
    }

    while (v35 <= v33 && v36->i32[0] == -1);
    if (v36 < v33)
    {
      while (v36->u8[0] == 255)
      {
        v36 = (v36 + 1);
        if (v36 >= v33)
        {
          v36 = &v20[v16];
          break;
        }
      }
    }

    v37 = v36 - v20;
    v38 = v36 - v20;
    do
    {
      v39 = vorrq_s8(v25, vrev16q_s8(*v17));
      v40 = vorrq_s8(v26, vrev16q_s8(*v19));
      v41 = vqtbl1q_s8(v39, xmmword_18439C6E0);
      v42 = vqtbl1q_s8(v40, xmmword_18439C6E0);
      v43 = vminq_u16(v39, v41);
      v44 = vminq_u16(v40, v42);
      v45 = vmvnq_s8(v44);
      v46 = vandq_s8(v44, a13);
      v47 = vcgtq_u16(v46, v45);
      v48 = vabdq_u16(v45, v46);
      v49 = vmull_u16(*v43.i8, *v48.i8);
      v50 = vmull_high_u16(v43, v48);
      v51 = vaddq_s32(vminq_u32(v49, v29), v30);
      v52 = vaddq_s32(vminq_u32(v50, v29), v30);
      v53 = vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v51, v51, 0x10uLL), 0x10uLL), vsraq_n_u32(v52, v52, 0x10uLL), 0x10uLL);
      v54 = vbslq_s8(v47, vqsubq_u16(v44, v53), vqaddq_u16(v44, v53));
      v15 = vceqzq_s16(v41);
      *v19 = vrev16q_s8(vbslq_s8(v15, v40, vbslq_s8(vceqzq_s16(v42), v39, vminq_u16(v54, vqtbl1q_s8(v54, xmmword_18439C6E0)))));
      v20 += v27;
      v38 -= 2;
      v17 = (v17 + v28);
      v19 = (v19 + v28);
    }

    while (v38 > 1);
    v16 = v16 - v37 + v38;
LABEL_37:
    if (v16 <= 1)
    {
      goto LABEL_40;
    }
  }

  v61 = 0;
  while (1)
  {
    v15.i32[0] = v32;
    v62 = vqtbl1q_s8(v15, xmmword_18439C6F0);
    v63 = vorrq_s8(v25, vrev16q_s8(*(v17 + v61)));
    v64 = vorrq_s8(vbicq_s8(v26, vceqzq_s16(v62)), vrev16q_s8(*(v19 + v61)));
    v65 = vaddq_s32(vminq_u32(vmull_u16(*v63.i8, *v62.i8), v29), v30);
    *v65.i8 = vqshrn_n_u32(vsraq_n_u32(v65, v65, 0x10uLL), 0x10uLL);
    v66 = vaddq_s32(vminq_u32(vmull_high_u16(v63, v62), v29), v30);
    v67 = vsraq_n_u32(v66, v66, 0x10uLL);
    *v63.i8 = vdup_lane_s16(*v65.i8, 3);
    v68 = vqshrn_n_u32(v67, 0x10uLL);
    v69 = vmin_u16(*v65.i8, *v63.i8);
    v70 = vqshrn_high_n_u32(*v65.i8, v67, 0x10uLL);
    v63.u64[1] = vdup_lane_s16(v68, 3);
    v71 = vqtbl1q_s8(v64, xmmword_18439C6E0);
    v72 = vminq_u16(v64, v71);
    v73 = vmvnq_s8(v72);
    v74 = vandq_s8(v72, a13);
    v75 = vcgtq_u16(v74, v73);
    v76 = vabdq_u16(v73, v74);
    v77 = vmull_u16(vmin_u16(v68, v63.u64[1]), *&vextq_s8(v76, v76, 8uLL));
    v78 = vaddq_s32(vminq_u32(vmull_u16(v69, *v76.i8), v29), v30);
    v79 = vaddq_s32(vminq_u32(v77, v29), v30);
    v80 = vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v78, v78, 0x10uLL), 0x10uLL), vsraq_n_u32(v79, v79, 0x10uLL), 0x10uLL);
    v81 = vbslq_s8(v75, vqsubq_u16(v72, v80), vqaddq_u16(v72, v80));
    v82 = vbslq_s8(vceqzq_s16(v71), v70, vminq_u16(v81, vqtbl1q_s8(v81, xmmword_18439C6E0)));
    v15 = vceqzq_s16(v63);
    *(v19 + v61) = vrev16q_s8(vbslq_s8(v15, v64, v82));
    v20 += v27;
    v16 -= 2;
    if (v16 < 2)
    {
      break;
    }

    v32 = *v20;
    v61 += v28;
    if ((v32 - 1) >= 0xFFFEu)
    {
      v17 = (v17 + v61);
      v19 = (v19 + v61);
      goto LABEL_37;
    }
  }

  v17 = (v17 + v28 + v61);
  v19 = (v19 + v28 + v61);
LABEL_40:
  v83 = v16 + a14;
  if (v83)
  {
    v84 = 0;
    if (a7)
    {
      v85 = 0;
    }

    else
    {
      v85 = -1;
    }

    v86 = 0;
    v86.i16[3] = v85;
    if (a8)
    {
      v87 = 0;
    }

    else
    {
      v87 = -1;
    }

    v84.i16[3] = v87;
    v88 = vdupq_n_s32(0xFFFE8000);
    v89.i64[0] = 0x800000008000;
    v89.i64[1] = 0x800000008000;
    do
    {
      if (*v20)
      {
        a13.i32[0] = *v20;
        v90 = vorr_s8(v84, vrev16_s8(*v19->i8));
        a13 = vaddq_s32(vminq_u32(vmull_u16(vorr_s8(v86, vrev16_s8(*v17->i8)), vdup_lane_s8(*a13.i8, 0)), v88), v89);
        *a13.i8 = vqshrn_n_u32(vsraq_n_u32(a13, a13, 0x10uLL), 0x10uLL);
        v91 = vdup_lane_s16(*a13.i8, 3);
        v92 = vdup_lane_s16(v90, 3);
        v93 = vmin_u16(v90, v92);
        v94 = vmvn_s8(v93);
        v95 = v93;
        v95.i16[3] = 0;
        v96 = vaddq_s32(vminq_u32(vmull_u16(vmin_u16(*a13.i8, v91), vabd_u16(v94, v95)), v88), v89);
        *v96.i8 = vqshrn_n_u32(vsraq_n_u32(v96, v96, 0x10uLL), 0x10uLL);
        *v96.i8 = vbsl_s8(vcgt_u16(v95, v94), vqsub_u16(v93, *v96.i8), vqadd_u16(v93, *v96.i8));
        *a13.i8 = vrev16_s8(vbsl_s8(vceqz_s16(v91), v90, vbsl_s8(vceqz_s16(v92), *a13.i8, vmin_u16(*v96.i8, vdup_lane_s16(*v96.i8, 3)))));
        v19->i64[0] = a13.i64[0];
      }

      v97 = &v17->i8[8 * a6];
      v20 += a6;
      if (v97 >= v18)
      {
        v98 = -a5;
      }

      else
      {
        v98 = 0;
      }

      v17 = &v97[8 * v98];
      v19 = (v19 + 8 * a6);
      --v83;
    }

    while (v83);
  }

  *result = v17;
  *a3 = v18;
  *a2 = v19;
  *a4 = v20;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)22,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, int32x4_t a13, uint64_t a14, unint64_t a15)
{
  v16 = a15;
  v17 = *result;
  v18 = *a3;
  v19 = *a2;
  v20 = *a4;
  if (a15 < 2)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vandq_s8(vdupq_n_s16(v21), v22);
  if (a8)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v25 = vandq_s8(vdupq_n_s16(v24), v22);
  v26 = 2 * a6;
  v27 = 8 * v26;
  v28 = vdupq_n_s32(0xFFFE8000);
  a13.i64[0] = 0x800000008000;
  a13.i64[1] = 0x800000008000;
  v29.i64[0] = -1;
  v29.i64[1] = -1;
  while (1)
  {
    v30 = *v20;
    if (!*v20)
    {
      v56 = &v20[v16];
      v57 = v20;
      do
      {
        v58 = v57++;
      }

      while (v57 <= v56 && (vminvq_u8(vceqzq_s8(*v58)) & 0x80) != 0);
      do
      {
        v59 = v58;
        v58 = (v58 + 4);
      }

      while (v58 <= v56 && !v59->i32[0]);
      if (v59 < v56)
      {
        while (!v59->i8[0])
        {
          v59 = (v59 + 1);
          if (v59 >= v56)
          {
            v59 = &v20[v16];
            break;
          }
        }
      }

      v60 = v59 - v20;
      v61 = (v59 - v20) * a6;
      v17 = (v17 + 8 * v61);
      v19 = (v19 + 8 * v61);
      v20 += v61;
      v16 -= v60;
      goto LABEL_37;
    }

    if (v30 != 0xFFFF)
    {
      break;
    }

    v31 = &v20[v16];
    v32 = v20;
    do
    {
      v33 = v32++;
    }

    while (v32 <= v31 && (vminvq_u8(vceqq_s8(*v33, v29)) & 0x80) != 0);
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
          v34 = &v20[v16];
          break;
        }
      }
    }

    v35 = v34 - v20;
    v36 = v34 - v20;
    do
    {
      v37 = vorrq_s8(v23, vrev16q_s8(*v17));
      v38 = vorrq_s8(v25, vrev16q_s8(*v19));
      v39 = vqtbl1q_s8(v37, xmmword_18439C6E0);
      v40 = vqtbl1q_s8(v38, xmmword_18439C6E0);
      v41 = vminq_u16(v37, v39);
      v42 = vminq_u16(v38, v40);
      v43 = vmull_lane_u16(*v42.i8, *v37.i8, 3);
      v44 = vmull_high_laneq_u16(v42, v37, 7);
      v43.i32[3] = 0;
      v45 = vabdq_u32(vmull_lane_u16(*v41.i8, *v38.i8, 3), v43);
      v44.i32[3] = 0;
      v46 = vabdq_u32(vmull_high_laneq_u16(v41, v38, 7), v44);
      v47 = vmvnq_s8(v39);
      v48 = vmull_u16(*v42.i8, *v47.i8);
      v49 = vqaddq_u32(v46, vmull_high_u16(v42, v47));
      v50 = vmvnq_s8(v40);
      v51 = vmull_u16(*v41.i8, *v50.i8);
      v52 = vqaddq_u32(v49, vmull_high_u16(v41, v50));
      v53 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(v45, v48), v51), v28), a13);
      *v53.i8 = vqshrn_n_u32(vsraq_n_u32(v53, v53, 0x10uLL), 0x10uLL);
      v54 = vaddq_s32(vminq_u32(v52, v28), a13);
      v55 = vsraq_n_u32(v54, v54, 0x10uLL);
      *v50.i8 = vdup_lane_s16(*v53.i8, 3);
      v50.u64[1] = vdup_lane_s16(vqshrn_n_u32(v55, 0x10uLL), 3);
      v15 = vbslq_s8(vceqzq_s16(v40), v37, vminq_u16(vqshrn_high_n_u32(*v53.i8, v55, 0x10uLL), v50));
      *v19 = vrev16q_s8(vbslq_s8(vceqzq_s16(v39), v38, v15));
      v20 += v26;
      v36 -= 2;
      v17 = (v17 + v27);
      v19 = (v19 + v27);
    }

    while (v36 > 1);
    v16 = v16 - v35 + v36;
LABEL_37:
    if (v16 <= 1)
    {
      goto LABEL_40;
    }
  }

  v62 = 0;
  while (1)
  {
    v15.i32[0] = v30;
    v63 = vqtbl1q_s8(v15, xmmword_18439C6F0);
    v64 = vorrq_s8(v23, vrev16q_s8(*(v17 + v62)));
    v65 = vorrq_s8(vbicq_s8(v25, vceqzq_s16(v63)), vrev16q_s8(*(v19 + v62)));
    v66 = vaddq_s32(vminq_u32(vmull_u16(*v64.i8, *v63.i8), v28), a13);
    v67 = vqshrn_n_u32(vsraq_n_u32(v66, v66, 0x10uLL), 0x10uLL);
    v68 = vaddq_s32(vminq_u32(vmull_high_u16(v64, v63), v28), a13);
    v69 = vsraq_n_u32(v68, v68, 0x10uLL);
    v70 = vqshrn_n_u32(v69, 0x10uLL);
    *v71.i8 = vdup_lane_s16(v67, 3);
    v72 = vqtbl1q_s8(v65, xmmword_18439C6E0);
    v73 = vminq_u16(v65, v72);
    v74 = vmin_u16(v67, *v71.i8);
    v75 = vmull_lane_u16(*v73.i8, v67, 3);
    v76 = vqshrn_high_n_u32(v67, v69, 0x10uLL);
    v71.i64[1] = vdupq_lane_s16(v70, 3).u64[0];
    v77 = vmin_u16(v70, v71.u64[1]);
    v78 = vdupq_laneq_s16(v65, 7);
    v79 = vextq_s8(v73, v73, 8uLL).u64[0];
    v80 = vmull_high_lane_u16(v73, v70, 3);
    v75.i32[3] = 0;
    v80.i32[3] = 0;
    v81 = vqaddq_u32(vabdq_u32(vmull_lane_u16(v74, *v65.i8, 3), v75), vmull_u16(*v73.i8, vmvn_s8(*v71.i8)));
    v82 = vmvnq_s8(v72);
    v83 = vaddq_s32(vminq_u32(vqaddq_u32(v81, vmull_u16(v74, *v82.i8)), v28), a13);
    *v83.i8 = vqshrn_n_u32(vsraq_n_u32(v83, v83, 0x10uLL), 0x10uLL);
    v84 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vabdq_u32(vmull_u16(v77, *&vextq_s8(v78, v78, 8uLL)), v80), vmull_u16(v79, vmvn_s8(v71.u64[1]))), vmull_u16(v77, *&vextq_s8(v82, v82, 8uLL))), v28), a13);
    v85 = vsraq_n_u32(v84, v84, 0x10uLL);
    *v86.i8 = vdup_lane_s16(*v83.i8, 3);
    v86.u64[1] = vdup_lane_s16(vqshrn_n_u32(v85, 0x10uLL), 3);
    v87 = vbslq_s8(vceqzq_s16(v72), v76, vminq_u16(vqshrn_high_n_u32(*v83.i8, v85, 0x10uLL), v86));
    v15 = vceqzq_s16(v71);
    *(v19 + v62) = vrev16q_s8(vbslq_s8(v15, v65, v87));
    v20 += v26;
    v16 -= 2;
    if (v16 < 2)
    {
      break;
    }

    v30 = *v20;
    v62 += v27;
    if ((v30 - 1) >= 0xFFFEu)
    {
      v17 = (v17 + v62);
      v19 = (v19 + v62);
      goto LABEL_37;
    }
  }

  v17 = (v17 + v27 + v62);
  v19 = (v19 + v27 + v62);
LABEL_40:
  v88 = v16 + a14;
  if (v88)
  {
    v89 = 0;
    if (a7)
    {
      v90 = 0;
    }

    else
    {
      v90 = -1;
    }

    v91 = 0;
    v91.i16[3] = v90;
    if (a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = -1;
    }

    v89.i16[3] = v92;
    v93 = vdupq_n_s32(0xFFFE8000);
    v94.i64[0] = 0x800000008000;
    v94.i64[1] = 0x800000008000;
    do
    {
      if (*v20)
      {
        a13.i32[0] = *v20;
        v95 = vdup_lane_s8(*a13.i8, 0);
        v96 = vorr_s8(v89, vrev16_s8(*v19->i8));
        v97 = vaddq_s32(vminq_u32(vmull_u16(vorr_s8(v91, vrev16_s8(*v17->i8)), v95), v93), v94);
        *v97.i8 = vqshrn_n_u32(vsraq_n_u32(v97, v97, 0x10uLL), 0x10uLL);
        v98 = vdup_lane_s16(*v97.i8, 3);
        v99 = vdup_lane_s16(v96, 3);
        v100 = vmin_u16(*v97.i8, v98);
        v101 = vmin_u16(v96, v99);
        v102 = vmull_lane_u16(v101, *v97.i8, 3);
        v102.i32[3] = 0;
        v103 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vabdq_u32(vmull_lane_u16(v100, v96, 3), v102), vmull_u16(v101, vmvn_s8(v98))), vmull_u16(v100, vmvn_s8(v99))), v93), v94);
        *v103.i8 = vqshrn_n_u32(vsraq_n_u32(v103, v103, 0x10uLL), 0x10uLL);
        *a13.i8 = vrev16_s8(vbsl_s8(vceqz_s16(v98), v96, vbsl_s8(vceqz_s16(v99), *v97.i8, vmin_u16(*v103.i8, vdup_lane_s16(*v103.i8, 3)))));
        v19->i64[0] = a13.i64[0];
      }

      v104 = &v17->i8[8 * a6];
      v20 += a6;
      if (v104 >= v18)
      {
        v105 = -a5;
      }

      else
      {
        v105 = 0;
      }

      v17 = &v104[8 * v105];
      v19 = (v19 + 8 * a6);
      --v88;
    }

    while (v88);
  }

  *result = v17;
  *a3 = v18;
  *a2 = v19;
  *a4 = v20;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)21,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, int32x4_t a14, uint64_t a15, unint64_t a16)
{
  v17 = a16;
  v18 = *result;
  v19 = *a3;
  v20 = *a2;
  v21 = *a4;
  if (a16 < 2)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v22 = 0;
  }

  else
  {
    v22 = -1;
  }

  v23 = vdupq_n_s16(v22);
  v24.i64[0] = 0xFFFF000000000000;
  v24.i64[1] = 0xFFFF000000000000;
  if (a8)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vandq_s8(v23, v24);
  v27 = vandq_s8(vdupq_n_s16(v25), v24);
  v28 = 2 * a6;
  v29 = 8 * v28;
  v30 = vdupq_n_s32(0xFFFE8000);
  a14.i64[0] = 0x800000008000;
  a14.i64[1] = 0x800000008000;
  v31.i64[0] = -1;
  v31.i64[1] = -1;
  while (1)
  {
    v32 = *v21;
    if (!*v21)
    {
      v63 = &v21[v17];
      v64 = v21;
      do
      {
        v65 = v64++;
      }

      while (v64 <= v63 && (vminvq_u8(vceqzq_s8(*v65)) & 0x80) != 0);
      do
      {
        v66 = v65;
        v65 = (v65 + 4);
      }

      while (v65 <= v63 && !v66->i32[0]);
      if (v66 < v63)
      {
        while (!v66->i8[0])
        {
          v66 = (v66 + 1);
          if (v66 >= v63)
          {
            v66 = &v21[v17];
            break;
          }
        }
      }

      v67 = v66 - v21;
      v68 = (v66 - v21) * a6;
      v18 = (v18 + 8 * v68);
      v20 = (v20 + 8 * v68);
      v21 += v68;
      v17 -= v67;
      goto LABEL_37;
    }

    if (v32 != 0xFFFF)
    {
      break;
    }

    v33 = &v21[v17];
    v34 = v21;
    do
    {
      v35 = v34++;
    }

    while (v34 <= v33 && (vminvq_u8(vceqq_s8(*v35, v31)) & 0x80) != 0);
    do
    {
      v36 = v35;
      v35 = (v35 + 4);
    }

    while (v35 <= v33 && v36->i32[0] == -1);
    if (v36 < v33)
    {
      while (v36->u8[0] == 255)
      {
        v36 = (v36 + 1);
        if (v36 >= v33)
        {
          v36 = &v21[v17];
          break;
        }
      }
    }

    v37 = v36 - v21;
    v38 = v36 - v21;
    do
    {
      v39 = vorrq_s8(v26, vrev16q_s8(*v18));
      v40 = vorrq_s8(v27, vrev16q_s8(*v20));
      v41 = vqtbl1q_s8(v39, xmmword_18439C6E0);
      v42 = vqtbl1q_s8(v40, xmmword_18439C6E0);
      v43 = vminq_u16(v39, v41);
      v44 = vminq_u16(v40, v42);
      v45 = vmovn_s16(vcgeq_u16(vrhaddq_u16(v41, 0), v43));
      v46 = vmull_u16(*v43.i8, *v44.i8);
      v47 = vmull_high_u16(v43, v44);
      v48 = vqsubq_u16(v42, v44);
      v49 = vqsubq_u16(v41, v43);
      v50 = vmull_u16(*v48.i8, *v49.i8);
      v51 = vmull_high_u16(v48, v49);
      v52 = vbslq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vzip2_s8(v45, v45)), 0xFuLL)), vqaddq_u32(v47, v47), vqsubq_u32(vmull_laneq_u16(vdup_laneq_s16(v40, 7), v39, 7), vqaddq_u32(v51, v51)));
      v53 = vbslq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vzip1_s8(v45, v45)), 0xFuLL)), vqaddq_u32(v46, v46), vqsubq_u32(vmull_lane_u16(vdup_lane_s16(*v40.i8, 3), *v39.i8, 3), vqaddq_u32(v50, v50)));
      v54 = vmvnq_s8(v41);
      v55 = vmull_u16(*v44.i8, *v54.i8);
      v56 = vqaddq_u32(v52, vmull_high_u16(v44, v54));
      v57 = vmvnq_s8(v42);
      v58 = vmull_u16(*v43.i8, *v57.i8);
      v59 = vqaddq_u32(v56, vmull_high_u16(v43, v57));
      v60 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(v53, v55), v58), v30), a14);
      *v60.i8 = vqshrn_n_u32(vsraq_n_u32(v60, v60, 0x10uLL), 0x10uLL);
      v61 = vaddq_s32(vminq_u32(v59, v30), a14);
      v62 = vsraq_n_u32(v61, v61, 0x10uLL);
      *v57.i8 = vdup_lane_s16(*v60.i8, 3);
      v57.u64[1] = vdup_lane_s16(vqshrn_n_u32(v62, 0x10uLL), 3);
      v16 = vbslq_s8(vceqzq_s16(v42), v39, vminq_u16(vqshrn_high_n_u32(*v60.i8, v62, 0x10uLL), v57));
      *v20 = vrev16q_s8(vbslq_s8(vceqzq_s16(v41), v40, v16));
      v21 += v28;
      v38 -= 2;
      v18 = (v18 + v29);
      v20 = (v20 + v29);
    }

    while (v38 > 1);
    v17 = v17 - v37 + v38;
LABEL_37:
    if (v17 <= 1)
    {
      goto LABEL_40;
    }
  }

  v69 = 0;
  while (1)
  {
    v16.i32[0] = v32;
    v70 = vqtbl1q_s8(v16, xmmword_18439C6F0);
    v71 = vorrq_s8(v26, vrev16q_s8(*(v18 + v69)));
    v72 = vorrq_s8(vbicq_s8(v27, vceqzq_s16(v70)), vrev16q_s8(*(v20 + v69)));
    v73 = vaddq_s32(vminq_u32(vmull_u16(*v71.i8, *v70.i8), v30), a14);
    v74 = vqshrn_n_u32(vsraq_n_u32(v73, v73, 0x10uLL), 0x10uLL);
    v75 = vaddq_s32(vminq_u32(vmull_high_u16(v71, v70), v30), a14);
    v76 = vsraq_n_u32(v75, v75, 0x10uLL);
    *v71.i8 = vdup_lane_s16(v74, 3);
    v77 = vqshrn_n_u32(v76, 0x10uLL);
    *v70.i8 = vmin_u16(v74, *v71.i8);
    v78 = vmull_lane_u16(vdup_lane_s16(*v72.i8, 3), v74, 3);
    v71.u64[1] = vdup_lane_s16(v77, 3);
    v79 = vqshrn_high_n_u32(v74, v76, 0x10uLL);
    v80 = vqtbl1q_s8(v72, xmmword_18439C6E0);
    v81 = vminq_u16(v79, v71);
    v82 = vminq_u16(v72, v80);
    v83 = vmovn_s16(vcgeq_u16(vrhaddq_u16(v71, 0), v81));
    v84 = vmull_u16(*v70.i8, *v82.i8);
    v85 = vmin_u16(v77, v71.u64[1]);
    v86 = vextq_s8(v82, v82, 8uLL).u64[0];
    v87 = vmull_u16(v85, v86);
    v88 = vqsubq_u16(v80, v82);
    v89 = vqsubq_u16(v71, v81);
    v90 = vmull_u16(*v88.i8, *v89.i8);
    v91 = vmull_high_u16(v88, v89);
    v92 = vmvnq_s8(v80);
    v93 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vbslq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vzip1_s8(v83, v83)), 0xFuLL)), vqaddq_u32(v84, v84), vqsubq_u32(v78, vqaddq_u32(v90, v90))), vmull_u16(*v82.i8, vmvn_s8(*v71.i8))), vmull_u16(*v70.i8, *v92.i8)), v30), a14);
    *v93.i8 = vqshrn_n_u32(vsraq_n_u32(v93, v93, 0x10uLL), 0x10uLL);
    v94 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vbslq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vzip2_s8(v83, v83)), 0xFuLL)), vqaddq_u32(v87, v87), vqsubq_u32(vmull_lane_u16(vdup_laneq_s16(v72, 7), v77, 3), vqaddq_u32(v91, v91))), vmull_u16(v86, vmvn_s8(v71.u64[1]))), vmull_u16(v85, *&vextq_s8(v92, v92, 8uLL))), v30), a14);
    v95 = vsraq_n_u32(v94, v94, 0x10uLL);
    *v96.i8 = vdup_lane_s16(*v93.i8, 3);
    v96.u64[1] = vdup_lane_s16(vqshrn_n_u32(v95, 0x10uLL), 3);
    v97 = vbslq_s8(vceqzq_s16(v80), v79, vminq_u16(vqshrn_high_n_u32(*v93.i8, v95, 0x10uLL), v96));
    v16 = vceqzq_s16(v71);
    *(v20 + v69) = vrev16q_s8(vbslq_s8(v16, v72, v97));
    v21 += v28;
    v17 -= 2;
    if (v17 < 2)
    {
      break;
    }

    v32 = *v21;
    v69 += v29;
    if ((v32 - 1) >= 0xFFFEu)
    {
      v18 = (v18 + v69);
      v20 = (v20 + v69);
      goto LABEL_37;
    }
  }

  v18 = (v18 + v29 + v69);
  v20 = (v20 + v29 + v69);
LABEL_40:
  v98 = v17 + a15;
  if (v98)
  {
    if (a7)
    {
      v99 = 0;
    }

    else
    {
      v99 = -1;
    }

    v100 = 0;
    v100.i16[3] = v99;
    if (a8)
    {
      v101 = 0;
    }

    else
    {
      v101 = -1;
    }

    v102 = 0;
    v102.i16[3] = v101;
    v103 = vdupq_n_s32(0xFFFE8000);
    v104.i64[0] = 0x800000008000;
    v104.i64[1] = 0x800000008000;
    do
    {
      if (*v21)
      {
        a14.i32[0] = *v21;
        v105 = vorr_s8(v102, vrev16_s8(*v20->i8));
        a14 = vaddq_s32(vminq_u32(vmull_u16(vorr_s8(v100, vrev16_s8(*v18->i8)), vdup_lane_s8(*a14.i8, 0)), v103), v104);
        *a14.i8 = vqshrn_n_u32(vsraq_n_u32(a14, a14, 0x10uLL), 0x10uLL);
        v106 = vdup_lane_s16(*a14.i8, 3);
        v107 = vdup_lane_s16(v105, 3);
        v108 = vmin_u16(*a14.i8, v106);
        v109 = vmin_u16(v105, v107);
        v110 = vuzp1_s8(vcge_u16(vrhadd_u16(v106, 0), v108), 0);
        v111 = vmull_u16(v108, v109);
        v112 = vmull_u16(vqsub_u16(v107, v109), vqsub_u16(v106, v108));
        v113 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vbslq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vzip1_s8(v110, v110)), 0xFuLL)), vqaddq_u32(v111, v111), vqsubq_u32(vmull_lane_u16(v107, *a14.i8, 3), vqaddq_u32(v112, v112))), vmull_u16(v109, vmvn_s8(v106))), vmull_u16(v108, vmvn_s8(v107))), v103), v104);
        *v113.i8 = vqshrn_n_u32(vsraq_n_u32(v113, v113, 0x10uLL), 0x10uLL);
        *a14.i8 = vrev16_s8(vbsl_s8(vceqz_s16(v106), v105, vbsl_s8(vceqz_s16(v107), *a14.i8, vmin_u16(*v113.i8, vdup_lane_s16(*v113.i8, 3)))));
        v20->i64[0] = a14.i64[0];
      }

      v114 = &v18->i8[8 * a6];
      v21 += a6;
      if (v114 >= v19)
      {
        v115 = -a5;
      }

      else
      {
        v115 = 0;
      }

      v18 = &v114[8 * v115];
      v20 = (v20 + 8 * a6);
      --v98;
    }

    while (v98);
  }

  *result = v18;
  *a3 = v19;
  *a2 = v20;
  *a4 = v21;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)20,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, int32x4_t a13, uint64_t a14, unint64_t a15)
{
  v16 = a15;
  v17 = *result;
  v18 = *a3;
  v19 = *a2;
  v20 = *a4;
  if (a15 < 2)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vandq_s8(vdupq_n_s16(v21), v22);
  if (a8)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v25 = vandq_s8(vdupq_n_s16(v24), v22);
  v26 = 2 * a6;
  v27 = 8 * v26;
  v28 = vdupq_n_s32(0xFFFE8000);
  a13.i64[0] = 0x800000008000;
  a13.i64[1] = 0x800000008000;
  v29.i64[0] = -1;
  v29.i64[1] = -1;
  while (1)
  {
    v30 = *v20;
    if (!*v20)
    {
      v62 = &v20[v16];
      v63 = v20;
      do
      {
        v64 = v63++;
      }

      while (v63 <= v62 && (vminvq_u8(vceqzq_s8(*v64)) & 0x80) != 0);
      do
      {
        v65 = v64;
        v64 = (v64 + 4);
      }

      while (v64 <= v62 && !v65->i32[0]);
      if (v65 < v62)
      {
        while (!v65->i8[0])
        {
          v65 = (v65 + 1);
          if (v65 >= v62)
          {
            v65 = &v20[v16];
            break;
          }
        }
      }

      v66 = v65 - v20;
      v67 = (v65 - v20) * a6;
      v17 = (v17 + 8 * v67);
      v19 = (v19 + 8 * v67);
      v20 += v67;
      v16 -= v66;
      goto LABEL_37;
    }

    if (v30 != 0xFFFF)
    {
      break;
    }

    v31 = &v20[v16];
    v32 = v20;
    do
    {
      v33 = v32++;
    }

    while (v32 <= v31 && (vminvq_u8(vceqq_s8(*v33, v29)) & 0x80) != 0);
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
          v34 = &v20[v16];
          break;
        }
      }
    }

    v35 = v34 - v20;
    v36 = v34 - v20;
    do
    {
      v37 = vorrq_s8(v23, vrev16q_s8(*v17));
      v38 = vorrq_s8(v25, vrev16q_s8(*v19));
      v39 = vqtbl1q_s8(v37, xmmword_18439C6E0);
      v40 = vqtbl1q_s8(v38, xmmword_18439C6E0);
      v41 = vminq_u16(v37, v39);
      v42 = vminq_u16(v38, v40);
      v43 = vqmovun_s32(vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmull_u16(*v42.i8, *v42.i8)), vcvtq_f32_u32(vmovl_u16(*v40.i8)))));
      v44 = vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmull_high_u16(v42, v42)), vcvtq_f32_u32(vmovl_high_u16(v40))));
      v45 = vmull_lane_u16(v43, *v37.i8, 3);
      v46 = vqsubq_u16(v42, vqmovun_high_s32(v43, v44));
      v47 = vmull_u16(*v46.i8, *v41.i8);
      v48 = vmull_high_u16(v46, v41);
      v49 = vqaddq_u32(v45, vqaddq_u32(v47, v47));
      v50 = vqaddq_u32(vmull_laneq_u16(vqmovun_s32(v44), v37, 7), vqaddq_u32(v48, v48));
      v51 = vmvnq_s8(v39);
      v52 = vmull_u16(*v42.i8, *v51.i8);
      v53 = vmull_high_u16(v42, v51);
      v54 = vqaddq_u32(v49, v52);
      v55 = vqaddq_u32(v50, v53);
      v56 = vmvnq_s8(v40);
      v57 = vmull_u16(*v41.i8, *v56.i8);
      v58 = vqaddq_u32(v55, vmull_high_u16(v41, v56));
      v59 = vaddq_s32(vminq_u32(vqaddq_u32(v54, v57), v28), a13);
      *v59.i8 = vqshrn_n_u32(vsraq_n_u32(v59, v59, 0x10uLL), 0x10uLL);
      v60 = vaddq_s32(vminq_u32(v58, v28), a13);
      v61 = vsraq_n_u32(v60, v60, 0x10uLL);
      *v54.i8 = vdup_lane_s16(*v59.i8, 3);
      v54.u64[1] = vdup_lane_s16(vqshrn_n_u32(v61, 0x10uLL), 3);
      v15 = vbslq_s8(vceqzq_s16(v40), v37, vminq_u16(vqshrn_high_n_u32(*v59.i8, v61, 0x10uLL), v54));
      *v19 = vrev16q_s8(vbslq_s8(vceqzq_s16(v39), v38, v15));
      v20 += v26;
      v36 -= 2;
      v17 = (v17 + v27);
      v19 = (v19 + v27);
    }

    while (v36 > 1);
    v16 = v16 - v35 + v36;
LABEL_37:
    if (v16 <= 1)
    {
      goto LABEL_40;
    }
  }

  v68 = 0;
  while (1)
  {
    v15.i32[0] = v30;
    v69 = vqtbl1q_s8(v15, xmmword_18439C6F0);
    v70 = vorrq_s8(v23, vrev16q_s8(*(v17 + v68)));
    v71 = vorrq_s8(vbicq_s8(v25, vceqzq_s16(v69)), vrev16q_s8(*(v19 + v68)));
    v72 = vaddq_s32(vminq_u32(vmull_u16(*v70.i8, *v69.i8), v28), a13);
    v73 = vqshrn_n_u32(vsraq_n_u32(v72, v72, 0x10uLL), 0x10uLL);
    v74 = vaddq_s32(vminq_u32(vmull_high_u16(v70, v69), v28), a13);
    v75 = vsraq_n_u32(v74, v74, 0x10uLL);
    *v76.i8 = vdup_lane_s16(v73, 3);
    v77 = vqshrn_n_u32(v75, 0x10uLL);
    v78 = vqtbl1q_s8(v71, xmmword_18439C6E0);
    v79 = vminq_u16(v71, v78);
    v80 = vqmovun_s32(vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmull_u16(*v79.i8, *v79.i8)), vcvtq_f32_u32(vmovl_u16(*v78.i8)))));
    v81 = vmull_lane_u16(v80, v73, 3);
    v82 = vmin_u16(v73, *v76.i8);
    v83 = vqshrn_high_n_u32(v73, v75, 0x10uLL);
    v76.u64[1] = vdup_lane_s16(v77, 3);
    v84 = vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmull_high_u16(v79, v79)), vcvtq_f32_u32(vmovl_high_u16(v78))));
    v85 = vqsubq_u16(v79, vqmovun_high_s32(v80, v84));
    v86 = vmull_u16(*v85.i8, v82);
    v87 = vmin_u16(v77, v76.u64[1]);
    v88 = vmull_u16(*&vextq_s8(v85, v85, 8uLL), v87);
    v89 = vqaddq_u32(vqaddq_u32(vmull_lane_u16(vqmovun_s32(v84), v77, 3), vqaddq_u32(v88, v88)), vmull_u16(*&vextq_s8(v79, v79, 8uLL), vmvn_s8(v76.u64[1])));
    v90 = vmvnq_s8(v78);
    v91 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vqaddq_u32(v81, vqaddq_u32(v86, v86)), vmull_u16(*v79.i8, vmvn_s8(*v76.i8))), vmull_u16(v82, *v90.i8)), v28), a13);
    *v91.i8 = vqshrn_n_u32(vsraq_n_u32(v91, v91, 0x10uLL), 0x10uLL);
    v92 = vaddq_s32(vminq_u32(vqaddq_u32(v89, vmull_u16(v87, *&vextq_s8(v90, v90, 8uLL))), v28), a13);
    v93 = vsraq_n_u32(v92, v92, 0x10uLL);
    *v90.i8 = vdup_lane_s16(*v91.i8, 3);
    v90.u64[1] = vdup_lane_s16(vqshrn_n_u32(v93, 0x10uLL), 3);
    v94 = vbslq_s8(vceqzq_s16(v78), v83, vminq_u16(vqshrn_high_n_u32(*v91.i8, v93, 0x10uLL), v90));
    v15 = vceqzq_s16(v76);
    *(v19 + v68) = vrev16q_s8(vbslq_s8(v15, v71, v94));
    v20 += v26;
    v16 -= 2;
    if (v16 < 2)
    {
      break;
    }

    v30 = *v20;
    v68 += v27;
    if ((v30 - 1) >= 0xFFFEu)
    {
      v17 = (v17 + v68);
      v19 = (v19 + v68);
      goto LABEL_37;
    }
  }

  v17 = (v17 + v27 + v68);
  v19 = (v19 + v27 + v68);
LABEL_40:
  v95 = v16 + a14;
  if (v95)
  {
    v96 = 0;
    if (a7)
    {
      v97 = 0;
    }

    else
    {
      v97 = -1;
    }

    v98 = 0;
    v98.i16[3] = v97;
    if (a8)
    {
      v99 = 0;
    }

    else
    {
      v99 = -1;
    }

    v96.i16[3] = v99;
    v100 = vdupq_n_s32(0xFFFE8000);
    v101.i64[0] = 0x800000008000;
    v101.i64[1] = 0x800000008000;
    do
    {
      if (*v20)
      {
        a13.i32[0] = *v20;
        a13 = vaddq_s32(vminq_u32(vmull_u16(vorr_s8(v98, vrev16_s8(*v17->i8)), vdup_lane_s8(*a13.i8, 0)), v100), v101);
        *a13.i8 = vqshrn_n_u32(vsraq_n_u32(a13, a13, 0x10uLL), 0x10uLL);
        v102 = vdup_lane_s16(*a13.i8, 3);
        v103 = vorr_s8(v96, vrev16_s8(*v19->i8));
        v104 = vdup_lane_s16(v103, 3);
        v105 = vmin_u16(*a13.i8, v102);
        v106 = vmin_u16(v103, v104);
        v107 = vqmovun_s32(vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmull_u16(v106, v106)), vcvtq_f32_u32(vmovl_u16(v104)))));
        v108 = vmull_lane_u16(v107, *a13.i8, 3);
        v109 = vmull_u16(vqsub_u16(v106, v107), v105);
        v110 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vqaddq_u32(v108, vqaddq_u32(v109, v109)), vmull_u16(v106, vmvn_s8(v102))), vmull_u16(v105, vmvn_s8(v104))), v100), v101);
        *v110.i8 = vqshrn_n_u32(vsraq_n_u32(v110, v110, 0x10uLL), 0x10uLL);
        *a13.i8 = vrev16_s8(vbsl_s8(vceqz_s16(v102), v103, vbsl_s8(vceqz_s16(v104), *a13.i8, vmin_u16(*v110.i8, vdup_lane_s16(*v110.i8, 3)))));
        v19->i64[0] = a13.i64[0];
      }

      v111 = &v17->i8[8 * a6];
      v20 += a6;
      if (v111 >= v18)
      {
        v112 = -a5;
      }

      else
      {
        v112 = 0;
      }

      v17 = &v111[8 * v112];
      v19 = (v19 + 8 * a6);
      --v95;
    }

    while (v95);
  }

  *result = v17;
  *a3 = v18;
  *a2 = v19;
  *a4 = v20;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)19,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, int8x8_t a14, uint64_t a15, unint64_t a16)
{
  v17 = a16;
  v18 = *result;
  v19 = *a3;
  v20 = *a2;
  v21 = *a4;
  if (a16 < 2)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v22 = 0;
  }

  else
  {
    v22 = -1;
  }

  v23.i64[0] = 0xFFFF000000000000;
  v23.i64[1] = 0xFFFF000000000000;
  v24 = vandq_s8(vdupq_n_s16(v22), v23);
  if (a8)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vandq_s8(vdupq_n_s16(v25), v23);
  v27 = 2 * a6;
  v28 = 8 * v27;
  v29 = vdupq_n_s32(0x37800080u);
  v30.i64[0] = -1;
  v30.i64[1] = -1;
  a14.i32[1] = 0;
  v31 = vdupq_n_s32(0xFFFE8000);
  v32.i64[0] = 0x800000008000;
  v32.i64[1] = 0x800000008000;
  while (1)
  {
    v33 = *v21;
    if (!*v21)
    {
      v61 = &v21[v17];
      v62 = v21;
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
            v64 = &v21[v17];
            break;
          }
        }
      }

      v65 = v64 - v21;
      v66 = (v64 - v21) * a6;
      v18 = (v18 + 8 * v66);
      v20 = (v20 + 8 * v66);
      v21 += v66;
      v17 -= v65;
      goto LABEL_37;
    }

    if (v33 != 0xFFFF)
    {
      break;
    }

    v34 = &v21[v17];
    v35 = v21;
    do
    {
      v36 = v35++;
    }

    while (v35 <= v34 && (vminvq_u8(vceqq_s8(*v36, v30)) & 0x80) != 0);
    do
    {
      v37 = v36;
      v36 = (v36 + 4);
    }

    while (v36 <= v34 && v37->i32[0] == -1);
    if (v37 < v34)
    {
      while (v37->u8[0] == 255)
      {
        v37 = (v37 + 1);
        if (v37 >= v34)
        {
          v37 = &v21[v17];
          break;
        }
      }
    }

    v38 = v37 - v21;
    v39 = v37 - v21;
    do
    {
      v40 = vorrq_s8(v24, vrev16q_s8(*v18));
      v41 = vorrq_s8(v26, vrev16q_s8(*v20));
      v42 = vqtbl1q_s8(v40, xmmword_18439C6E0);
      v43 = vqtbl1q_s8(v41, xmmword_18439C6E0);
      v44 = vminq_u16(v40, v42);
      v45 = vminq_u16(v41, v43);
      v46 = vqsubq_u16(v43, v45);
      v47 = vdup_lane_s16(*v40.i8, 3);
      v48 = vdup_laneq_s16(v40, 7);
      v49 = vcvtq_f32_u32(vmovl_high_u16(v44));
      v50 = vcvtq_f32_u32(vmovl_u16(*v44.i8));
      v51 = vmvnq_s8(v42);
      v52 = vmull_u16(*v45.i8, *v51.i8);
      v53 = vmull_high_u16(v45, v51);
      v54 = vmvnq_s8(v43);
      v55 = vmull_u16(*v44.i8, *v54.i8);
      v56 = vaddq_f32(vcvtq_f32_u32(v53), vcvtq_f32_u32(vmull_high_u16(v44, v54)));
      v57 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v46.i8)), vcvtq_f32_u32(vmull_lane_u16(v47, *v40.i8, 3))), v50);
      v58 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v46)), vcvtq_f32_u32(vmull_laneq_u16(v48, v40, 7))), v49);
      v59 = vceqzq_s16(v46);
      *v53.i8 = vqmovun_s32(vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(v52), vcvtq_f32_u32(v55)), vcvtq_f32_u32(vmull_lane_u16(v47, *v41.i8, 3))), vbicq_s8(v57, vmovl_s16(*v59.i8))), v29)));
      v60 = vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(v56, vcvtq_f32_u32(vmull_laneq_u16(v48, v41, 7))), vbicq_s8(v58, vmovl_high_s16(v59))), v29));
      *v57.i8 = vdup_lane_s16(*v53.i8, 3);
      v57.u64[1] = vdup_lane_s16(vqmovun_s32(v60), 3);
      v16 = vminq_u16(vqmovun_high_s32(*v53.i8, v60), v57);
      *v20 = vrev16q_s8(vbslq_s8(vceqzq_s16(v42), v41, vbslq_s8(vceqzq_s16(v43), v40, v16)));
      v21 += v27;
      v39 -= 2;
      v18 = (v18 + v28);
      v20 = (v20 + v28);
    }

    while (v39 > 1);
    v17 = v17 - v38 + v39;
LABEL_37:
    if (v17 <= 1)
    {
      goto LABEL_40;
    }
  }

  v67 = 0;
  while (1)
  {
    v16.i32[0] = v33;
    v68 = vqtbl1q_s8(v16, xmmword_18439C6F0);
    v69 = vorrq_s8(v24, vrev16q_s8(*(v18 + v67)));
    v70 = vorrq_s8(vbicq_s8(v26, vceqzq_s16(v68)), vrev16q_s8(*(v20 + v67)));
    v71 = vaddq_s32(vminq_u32(vmull_u16(*v69.i8, *v68.i8), v31), v32);
    v72 = vqshrn_n_u32(vsraq_n_u32(v71, v71, 0x10uLL), 0x10uLL);
    v73 = vaddq_s32(vminq_u32(vmull_high_u16(v69, v68), v31), v32);
    v74 = vsraq_n_u32(v73, v73, 0x10uLL);
    v75 = vqshrn_n_u32(v74, 0x10uLL);
    *v68.i8 = vdup_lane_s16(v72, 3);
    v76 = vmull_lane_u16(*v68.i8, v72, 3);
    v77 = vmin_u16(v72, *v68.i8);
    v78 = vqshrn_high_n_u32(v72, v74, 0x10uLL);
    v79 = vmull_lane_u16(*v68.i8, *v70.i8, 3);
    v80 = vmvn_s8(*v68.i8);
    v74.i64[0] = v68.i64[0];
    v74.u64[1] = vdup_lane_s16(v75, 3);
    v81 = vqtbl1q_s8(v70, xmmword_18439C6E0);
    v82 = vminq_u16(v70, v81);
    v83 = vqsubq_u16(v81, v82);
    v84 = vmin_u16(v75, v74.u64[1]);
    v85 = vcvtq_f32_u32(vmovl_u16(v77));
    v86 = vmull_u16(*v82.i8, v80);
    v87 = vmull_u16(*&vextq_s8(v82, v82, 8uLL), vmvn_s8(v74.u64[1]));
    v88 = vmvnq_s8(v81);
    v89 = vaddq_f32(vaddq_f32(vcvtq_f32_u32(v86), vcvtq_f32_u32(vmull_u16(v77, *v88.i8))), vcvtq_f32_u32(v79));
    v90 = vceqzq_s16(v83);
    *v76.i8 = vqmovun_s32(vcvtnq_s32_f32(vmulq_f32(vsubq_f32(v89, vbicq_s8(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v83.i8)), vcvtq_f32_u32(v76)), v85), vmovl_s16(*v90.i8))), v29)));
    v91 = vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(v87), vcvtq_f32_u32(vmull_u16(v84, *&vextq_s8(v88, v88, 8uLL)))), vcvtq_f32_u32(vmull_laneq_u16(v74.u64[1], v70, 7))), vbicq_s8(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v83)), vcvtq_f32_u32(vmull_lane_u16(v74.u64[1], v75, 3))), vcvtq_f32_u32(vmovl_u16(v84))), vmovl_high_s16(v90))), v29));
    *v87.i8 = vdup_lane_s16(*v76.i8, 3);
    v87.u64[1] = vdup_lane_s16(vqmovun_s32(v91), 3);
    v16 = vceqzq_s16(v81);
    *(v20 + v67) = vrev16q_s8(vbslq_s8(vceqzq_s16(v74), v70, vbslq_s8(v16, v78, vminq_u16(vqmovun_high_s32(*v76.i8, v91), v87))));
    v21 += v27;
    v17 -= 2;
    if (v17 < 2)
    {
      break;
    }

    v33 = *v21;
    v67 += v28;
    if ((v33 - 1) >= 0xFFFEu)
    {
      v18 = (v18 + v67);
      v20 = (v20 + v67);
      goto LABEL_37;
    }
  }

  v18 = (v18 + v28 + v67);
  v20 = (v20 + v28 + v67);
LABEL_40:
  v92 = v17 + a15;
  if (v92)
  {
    v93 = 0;
    if (a7)
    {
      v94 = 0;
    }

    else
    {
      v94 = -1;
    }

    v95 = 0;
    v95.i16[3] = v94;
    if (a8)
    {
      v96 = 0;
    }

    else
    {
      v96 = -1;
    }

    v93.i16[3] = v96;
    v97 = vdupq_n_s32(0xFFFE8000);
    v98.i64[0] = 0x800000008000;
    v98.i64[1] = 0x800000008000;
    v99 = vdupq_n_s32(0x37800080u);
    do
    {
      if (*v21)
      {
        a14.i32[0] = *v21;
        v100 = vdup_lane_s8(a14, 0);
        v101 = vorr_s8(v93, vrev16_s8(*v20->i8));
        v102 = vaddq_s32(vminq_u32(vmull_u16(vorr_s8(v95, vrev16_s8(*v18->i8)), v100), v97), v98);
        *v102.i8 = vqshrn_n_u32(vsraq_n_u32(v102, v102, 0x10uLL), 0x10uLL);
        v103 = vdup_lane_s16(*v102.i8, 3);
        v104 = vdup_lane_s16(v101, 3);
        v105 = vmin_u16(*v102.i8, v103);
        v106 = vmin_u16(v101, v104);
        v107 = vqsub_u16(v104, v106);
        v108 = vqmovun_s32(vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmull_u16(v106, vmvn_s8(v103))), vcvtq_f32_u32(vmull_u16(v105, vmvn_s8(v104)))), vcvtq_f32_u32(vmull_lane_u16(v103, v101, 3))), vbicq_s8(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v107)), vcvtq_f32_u32(vmull_lane_u16(v103, *v102.i8, 3))), vcvtq_f32_u32(vmovl_u16(v105))), vmovl_s16(vceqz_s16(v107)))), v99)));
        a14 = vrev16_s8(vbsl_s8(vceqz_s16(v103), v101, vbsl_s8(vceqz_s16(v104), *v102.i8, vmin_u16(v108, vdup_lane_s16(v108, 3)))));
        v20->i64[0] = *&a14;
      }

      v109 = &v18->i8[8 * a6];
      v21 += a6;
      if (v109 >= v19)
      {
        v110 = -a5;
      }

      else
      {
        v110 = 0;
      }

      v18 = &v109[8 * v110];
      v20 = (v20 + 8 * a6);
      --v92;
    }

    while (v92);
  }

  *result = v18;
  *a3 = v19;
  *a2 = v20;
  *a4 = v21;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)18,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, int8x16_t a13, uint64_t a14, unint64_t a15)
{
  v16 = a15;
  v17 = *result;
  v18 = *a3;
  v19 = *a2;
  v20 = *a4;
  if (a15 < 2)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v22 = vdupq_n_s16(v21);
  v23.i64[0] = 0xFFFF000000000000;
  v23.i64[1] = 0xFFFF000000000000;
  if (a8)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v25 = vandq_s8(v22, v23);
  v26 = vandq_s8(vdupq_n_s16(v24), v23);
  v27 = 2 * a6;
  v28 = 8 * v27;
  v29 = vdupq_n_s32(0xFFFE8000);
  a13.i64[0] = 0xFFFFFFFFFFFFLL;
  a13.i64[1] = 0xFFFFFFFFFFFFLL;
  v30.i64[0] = 0x800000008000;
  v30.i64[1] = 0x800000008000;
  v31.i64[0] = -1;
  v31.i64[1] = -1;
  while (1)
  {
    v32 = *v20;
    if (!*v20)
    {
      v58 = &v20[v16];
      v59 = v20;
      do
      {
        v60 = v59++;
      }

      while (v59 <= v58 && (vminvq_u8(vceqzq_s8(*v60)) & 0x80) != 0);
      do
      {
        v61 = v60;
        v60 = (v60 + 4);
      }

      while (v60 <= v58 && !v61->i32[0]);
      if (v61 < v58)
      {
        while (!v61->i8[0])
        {
          v61 = (v61 + 1);
          if (v61 >= v58)
          {
            v61 = &v20[v16];
            break;
          }
        }
      }

      v62 = v61 - v20;
      v63 = (v61 - v20) * a6;
      v17 = (v17 + 8 * v63);
      v19 = (v19 + 8 * v63);
      v20 += v63;
      v16 -= v62;
      goto LABEL_37;
    }

    if (v32 != 0xFFFF)
    {
      break;
    }

    v33 = &v20[v16];
    v34 = v20;
    do
    {
      v35 = v34++;
    }

    while (v34 <= v33 && (vminvq_u8(vceqq_s8(*v35, v31)) & 0x80) != 0);
    do
    {
      v36 = v35;
      v35 = (v35 + 4);
    }

    while (v35 <= v33 && v36->i32[0] == -1);
    if (v36 < v33)
    {
      while (v36->u8[0] == 255)
      {
        v36 = (v36 + 1);
        if (v36 >= v33)
        {
          v36 = &v20[v16];
          break;
        }
      }
    }

    v37 = v36 - v20;
    v38 = v36 - v20;
    do
    {
      v39 = vorrq_s8(v25, vrev16q_s8(*v17));
      v40 = vorrq_s8(v26, vrev16q_s8(*v19));
      v41 = vqtbl1q_s8(v39, xmmword_18439C6E0);
      v42 = vqtbl1q_s8(v40, xmmword_18439C6E0);
      v43 = vminq_u16(v39, v41);
      v44 = vminq_u16(v40, v42);
      v45 = vandq_s8(v43, a13);
      v46 = vbicq_s8(vtstq_s16(v44, v44), vcgtq_u16(v41, v45));
      v47 = vmovl_high_s16(v46);
      v48 = vorrq_s8(vqsubq_u16(v41, v45), vceqzq_s16(v44));
      v49 = vmvnq_s8(v41);
      v50 = vqaddq_u32(vorrq_s8(vcvtnq_u32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v44.i8)), vcvtq_f32_u32(vmull_lane_u16(vdup_lane_s16(*v39.i8, 3), *v39.i8, 3))), vcvtq_f32_u32(vmovl_u16(*v48.i8)))), vmovl_s16(*v46.i8)), vmull_u16(*v44.i8, *v49.i8));
      v51 = vqaddq_u32(vorrq_s8(vcvtnq_u32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v44)), vcvtq_f32_u32(vmull_laneq_u16(vdup_laneq_s16(v39, 7), v39, 7))), vcvtq_f32_u32(vmovl_high_u16(v48)))), v47), vmull_high_u16(v44, v49));
      v52 = vmvnq_s8(v42);
      v53 = vmull_u16(*v43.i8, *v52.i8);
      v54 = vqaddq_u32(v51, vmull_high_u16(v43, v52));
      v55 = vaddq_s32(vminq_u32(vqaddq_u32(v50, v53), v29), v30);
      *v55.i8 = vqshrn_n_u32(vsraq_n_u32(v55, v55, 0x10uLL), 0x10uLL);
      v56 = vaddq_s32(vminq_u32(v54, v29), v30);
      v57 = vsraq_n_u32(v56, v56, 0x10uLL);
      *v50.i8 = vdup_lane_s16(*v55.i8, 3);
      v50.u64[1] = vdup_lane_s16(vqshrn_n_u32(v57, 0x10uLL), 3);
      v15 = vbslq_s8(vceqzq_s16(v42), v39, vminq_u16(vqshrn_high_n_u32(*v55.i8, v57, 0x10uLL), v50));
      *v19 = vrev16q_s8(vbslq_s8(vceqzq_s16(v41), v40, v15));
      v20 += v27;
      v38 -= 2;
      v17 = (v17 + v28);
      v19 = (v19 + v28);
    }

    while (v38 > 1);
    v16 = v16 - v37 + v38;
LABEL_37:
    if (v16 <= 1)
    {
      goto LABEL_40;
    }
  }

  v64 = 0;
  while (1)
  {
    v15.i32[0] = v32;
    v65 = vqtbl1q_s8(v15, xmmword_18439C6F0);
    v66 = vorrq_s8(v25, vrev16q_s8(*(v17 + v64)));
    v67 = vorrq_s8(vbicq_s8(v26, vceqzq_s16(v65)), vrev16q_s8(*(v19 + v64)));
    v68 = vaddq_s32(vminq_u32(vmull_u16(*v66.i8, *v65.i8), v29), v30);
    v69 = vqshrn_n_u32(vsraq_n_u32(v68, v68, 0x10uLL), 0x10uLL);
    v70 = vaddq_s32(vminq_u32(vmull_high_u16(v66, v65), v29), v30);
    v71 = vsraq_n_u32(v70, v70, 0x10uLL);
    v72 = vqshrn_n_u32(v71, 0x10uLL);
    *v65.i8 = vdup_lane_s16(v69, 3);
    v65.u64[1] = vdup_lane_s16(v72, 3);
    v73 = vqshrn_high_n_u32(v69, v71, 0x10uLL);
    v74 = vqtbl1q_s8(v67, xmmword_18439C6E0);
    v75 = vminq_u16(v67, v74);
    v76 = vandq_s8(vminq_u16(v73, v65), a13);
    v77 = vbicq_s8(vtstq_s16(v75, v75), vcgtq_u16(v65, v76));
    v78 = vorrq_s8(vqsubq_u16(v65, v76), vceqzq_s16(v75));
    v79 = vqaddq_u32(vorrq_s8(vcvtnq_u32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v75.i8)), vcvtq_f32_u32(vmull_lane_u16(*v65.i8, v69, 3))), vcvtq_f32_u32(vmovl_u16(*v78.i8)))), vmovl_s16(*v77.i8)), vmull_u16(*v75.i8, vmvn_s8(*v65.i8)));
    v80 = vqaddq_u32(vorrq_s8(vcvtnq_u32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v75)), vcvtq_f32_u32(vmull_lane_u16(v65.u64[1], v72, 3))), vcvtq_f32_u32(vmovl_high_u16(v78)))), vmovl_high_s16(v77)), vmull_u16(*&vextq_s8(v75, v75, 8uLL), vmvn_s8(v65.u64[1])));
    v81 = vmvnq_s8(v74);
    v82 = vaddq_s32(vminq_u32(vqaddq_u32(v79, vmull_u16(vmin_u16(v69, *v65.i8), *v81.i8)), v29), v30);
    *v82.i8 = vqshrn_n_u32(vsraq_n_u32(v82, v82, 0x10uLL), 0x10uLL);
    v83 = vaddq_s32(vminq_u32(vqaddq_u32(v80, vmull_u16(vmin_u16(v72, v65.u64[1]), *&vextq_s8(v81, v81, 8uLL))), v29), v30);
    v84 = vsraq_n_u32(v83, v83, 0x10uLL);
    *v85.i8 = vdup_lane_s16(*v82.i8, 3);
    v85.u64[1] = vdup_lane_s16(vqshrn_n_u32(v84, 0x10uLL), 3);
    v15 = vceqzq_s16(v65);
    *(v19 + v64) = vrev16q_s8(vbslq_s8(v15, v67, vbslq_s8(vceqzq_s16(v74), v73, vminq_u16(vqshrn_high_n_u32(*v82.i8, v84, 0x10uLL), v85))));
    v20 += v27;
    v16 -= 2;
    if (v16 < 2)
    {
      break;
    }

    v32 = *v20;
    v64 += v28;
    if ((v32 - 1) >= 0xFFFEu)
    {
      v17 = (v17 + v64);
      v19 = (v19 + v64);
      goto LABEL_37;
    }
  }

  v17 = (v17 + v28 + v64);
  v19 = (v19 + v28 + v64);
LABEL_40:
  v86 = v16 + a14;
  if (v86)
  {
    v87 = 0;
    if (a7)
    {
      v88 = 0;
    }

    else
    {
      v88 = -1;
    }

    v89 = 0;
    v89.i16[3] = v88;
    if (a8)
    {
      v90 = 0;
    }

    else
    {
      v90 = -1;
    }

    v87.i16[3] = v90;
    v91 = vdupq_n_s32(0xFFFE8000);
    v92.i64[0] = 0x800000008000;
    v92.i64[1] = 0x800000008000;
    do
    {
      if (*v20)
      {
        a13.i32[0] = *v20;
        v93 = vdup_lane_s8(*a13.i8, 0);
        v94 = vorr_s8(v87, vrev16_s8(*v19->i8));
        v95 = vaddq_s32(vminq_u32(vmull_u16(vorr_s8(v89, vrev16_s8(*v17->i8)), v93), v91), v92);
        *v95.i8 = vqshrn_n_u32(vsraq_n_u32(v95, v95, 0x10uLL), 0x10uLL);
        v96 = vdup_lane_s16(*v95.i8, 3);
        v97 = vdup_lane_s16(v94, 3);
        v98 = vmin_u16(*v95.i8, v96);
        v99 = vmin_u16(v94, v97);
        v100 = vmull_u16(v98, vmvn_s8(v97));
        v98.i16[3] = 0;
        v101 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vorrq_s8(vcvtnq_u32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v99)), vcvtq_f32_u32(vmull_lane_u16(v96, *v95.i8, 3))), vcvtq_f32_u32(vmovl_u16(vorr_s8(vqsub_u16(v96, v98), vceqz_s16(v99)))))), vmovl_s16(vbic_s8(vtst_s16(v99, v99), vcgt_u16(v96, v98)))), vmull_u16(v99, vmvn_s8(v96))), v100), v91), v92);
        *v101.i8 = vqshrn_n_u32(vsraq_n_u32(v101, v101, 0x10uLL), 0x10uLL);
        *a13.i8 = vrev16_s8(vbsl_s8(vceqz_s16(v96), v94, vbsl_s8(vceqz_s16(v97), *v95.i8, vmin_u16(*v101.i8, vdup_lane_s16(*v101.i8, 3)))));
        v19->i64[0] = a13.i64[0];
      }

      v102 = &v17->i8[8 * a6];
      v20 += a6;
      if (v102 >= v18)
      {
        v103 = -a5;
      }

      else
      {
        v103 = 0;
      }

      v17 = &v102[8 * v103];
      v19 = (v19 + 8 * a6);
      --v86;
    }

    while (v86);
  }

  *result = v17;
  *a3 = v18;
  *a2 = v19;
  *a4 = v20;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)17,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, int32x4_t a13, uint64_t a14, unint64_t a15)
{
  v16 = a15;
  v17 = *result;
  v18 = *a3;
  v19 = *a2;
  v20 = *a4;
  if (a15 < 2)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vandq_s8(vdupq_n_s16(v21), v22);
  if (a8)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v25 = vandq_s8(vdupq_n_s16(v24), v22);
  v26 = 2 * a6;
  v27 = 8 * v26;
  v28 = vdupq_n_s32(0xFFFE8000);
  a13.i64[0] = 0x800000008000;
  a13.i64[1] = 0x800000008000;
  v29.i64[0] = -1;
  v29.i64[1] = -1;
  while (1)
  {
    v30 = *v20;
    if (!*v20)
    {
      v50 = &v20[v16];
      v51 = v20;
      do
      {
        v52 = v51++;
      }

      while (v51 <= v50 && (vminvq_u8(vceqzq_s8(*v52)) & 0x80) != 0);
      do
      {
        v53 = v52;
        v52 = (v52 + 4);
      }

      while (v52 <= v50 && !v53->i32[0]);
      if (v53 < v50)
      {
        while (!v53->i8[0])
        {
          v53 = (v53 + 1);
          if (v53 >= v50)
          {
            v53 = &v20[v16];
            break;
          }
        }
      }

      v54 = v53 - v20;
      v55 = (v53 - v20) * a6;
      v17 = (v17 + 8 * v55);
      v19 = (v19 + 8 * v55);
      v20 += v55;
      v16 -= v54;
      goto LABEL_37;
    }

    if (v30 != 0xFFFF)
    {
      break;
    }

    v31 = &v20[v16];
    v32 = v20;
    do
    {
      v33 = v32++;
    }

    while (v32 <= v31 && (vminvq_u8(vceqq_s8(*v33, v29)) & 0x80) != 0);
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
          v34 = &v20[v16];
          break;
        }
      }
    }

    v35 = v34 - v20;
    v36 = v34 - v20;
    do
    {
      v37 = vorrq_s8(v23, vrev16q_s8(*v17));
      v38 = vorrq_s8(v25, vrev16q_s8(*v19));
      v39 = vqtbl1q_s8(v37, xmmword_18439C6E0);
      v40 = vqtbl1q_s8(v38, xmmword_18439C6E0);
      v41 = vminq_u16(v37, v39);
      v42 = vminq_u16(v38, v40);
      v43 = vmull_lane_u16(*v41.i8, *v38.i8, 3);
      v44 = vmvnq_s8(v40);
      v45 = vmull_u16(*v41.i8, *v44.i8);
      v46 = vmvnq_s8(v39);
      v47 = vqaddq_u32(vqaddq_u32(vmaxq_u32(vmull_high_laneq_u16(v41, v38, 7), vmull_high_laneq_u16(v42, v37, 7)), vmull_high_u16(v41, v44)), vmull_high_u16(v42, v46));
      v48 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vmaxq_u32(v43, vmull_lane_u16(*v42.i8, *v37.i8, 3)), v45), vmull_u16(*v42.i8, *v46.i8)), v28), a13);
      v49 = vaddq_s32(vminq_u32(v47, v28), a13);
      v15 = vbslq_s8(vceqzq_s16(v40), v37, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v48, v48, 0x10uLL), 0x10uLL), vsraq_n_u32(v49, v49, 0x10uLL), 0x10uLL));
      *v19 = vrev16q_s8(vbslq_s8(vceqzq_s16(v39), v38, v15));
      v20 += v26;
      v36 -= 2;
      v17 = (v17 + v27);
      v19 = (v19 + v27);
    }

    while (v36 > 1);
    v16 = v16 - v35 + v36;
LABEL_37:
    if (v16 <= 1)
    {
      goto LABEL_40;
    }
  }

  v56 = 0;
  while (1)
  {
    v15.i32[0] = v30;
    v57 = vqtbl1q_s8(v15, xmmword_18439C6F0);
    v58 = vorrq_s8(v23, vrev16q_s8(*(v17 + v56)));
    v59 = vorrq_s8(vbicq_s8(v25, vceqzq_s16(v57)), vrev16q_s8(*(v19 + v56)));
    v60 = vaddq_s32(vminq_u32(vmull_u16(*v58.i8, *v57.i8), v28), a13);
    v61 = vqshrn_n_u32(vsraq_n_u32(v60, v60, 0x10uLL), 0x10uLL);
    v62 = vaddq_s32(vminq_u32(vmull_high_u16(v58, v57), v28), a13);
    v63 = vsraq_n_u32(v62, v62, 0x10uLL);
    v64 = vqshrn_n_u32(v63, 0x10uLL);
    *v57.i8 = vdup_lane_s16(v61, 3);
    v65 = vqtbl1q_s8(v59, xmmword_18439C6E0);
    v66 = vminq_u16(v59, v65);
    v67 = vmin_u16(v61, *v57.i8);
    v68 = vmull_lane_u16(*v66.i8, v61, 3);
    v69 = vqshrn_high_n_u32(v61, v63, 0x10uLL);
    v57.i64[1] = vdupq_lane_s16(v64, 3).u64[0];
    v70 = vdupq_laneq_s16(v59, 7);
    v71 = vmin_u16(v64, v57.u64[1]);
    v72 = vextq_s8(v66, v66, 8uLL).u64[0];
    v73 = vmvnq_s8(v65);
    v74 = vqaddq_u32(vmaxq_u32(vmull_lane_u16(v67, *v59.i8, 3), v68), vmull_u16(v67, *v73.i8));
    v75 = vqaddq_u32(vmaxq_u32(vmull_u16(v71, *&vextq_s8(v70, v70, 8uLL)), vmull_high_lane_u16(v66, v64, 3)), vmull_u16(v71, *&vextq_s8(v73, v73, 8uLL)));
    v76 = vaddq_s32(vminq_u32(vqaddq_u32(v74, vmull_u16(*v66.i8, vmvn_s8(*v57.i8))), v28), a13);
    v77 = vaddq_s32(vminq_u32(vqaddq_u32(v75, vmull_u16(v72, vmvn_s8(v57.u64[1]))), v28), a13);
    v15 = vceqzq_s16(v57);
    *(v19 + v56) = vrev16q_s8(vbslq_s8(v15, v59, vbslq_s8(vceqzq_s16(v65), v69, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v76, v76, 0x10uLL), 0x10uLL), vsraq_n_u32(v77, v77, 0x10uLL), 0x10uLL))));
    v20 += v26;
    v16 -= 2;
    if (v16 < 2)
    {
      break;
    }

    v30 = *v20;
    v56 += v27;
    if ((v30 - 1) >= 0xFFFEu)
    {
      v17 = (v17 + v56);
      v19 = (v19 + v56);
      goto LABEL_37;
    }
  }

  v17 = (v17 + v27 + v56);
  v19 = (v19 + v27 + v56);
LABEL_40:
  v78 = v16 + a14;
  if (v78)
  {
    v79 = 0;
    if (a7)
    {
      v80 = 0;
    }

    else
    {
      v80 = -1;
    }

    v81 = 0;
    v81.i16[3] = v80;
    if (a8)
    {
      v82 = 0;
    }

    else
    {
      v82 = -1;
    }

    v79.i16[3] = v82;
    v83 = vdupq_n_s32(0xFFFE8000);
    v84.i64[0] = 0x800000008000;
    v84.i64[1] = 0x800000008000;
    do
    {
      if (*v20)
      {
        a13.i32[0] = *v20;
        a13 = vaddq_s32(vminq_u32(vmull_u16(vorr_s8(v81, vrev16_s8(*v17->i8)), vdup_lane_s8(*a13.i8, 0)), v83), v84);
        *a13.i8 = vqshrn_n_u32(vsraq_n_u32(a13, a13, 0x10uLL), 0x10uLL);
        v85 = vdup_lane_s16(*a13.i8, 3);
        v86 = vorr_s8(v79, vrev16_s8(*v19->i8));
        v87 = vdup_lane_s16(v86, 3);
        v88 = vmin_u16(*a13.i8, v85);
        v89 = vmin_u16(v86, v87);
        v90 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vmaxq_u32(vmull_lane_u16(v88, v86, 3), vmull_lane_u16(v89, *a13.i8, 3)), vmull_u16(v88, vmvn_s8(v87))), vmull_u16(v89, vmvn_s8(v85))), v83), v84);
        *a13.i8 = vrev16_s8(vbsl_s8(vceqz_s16(v85), v86, vbsl_s8(vceqz_s16(v87), *a13.i8, vqshrn_n_u32(vsraq_n_u32(v90, v90, 0x10uLL), 0x10uLL))));
        v19->i64[0] = a13.i64[0];
      }

      v91 = &v17->i8[8 * a6];
      v20 += a6;
      if (v91 >= v18)
      {
        v92 = -a5;
      }

      else
      {
        v92 = 0;
      }

      v17 = &v91[8 * v92];
      v19 = (v19 + 8 * a6);
      --v78;
    }

    while (v78);
  }

  *result = v17;
  *a3 = v18;
  *a2 = v19;
  *a4 = v20;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)16,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, int32x4_t a13, uint64_t a14, unint64_t a15)
{
  v16 = a15;
  v17 = *result;
  v18 = *a3;
  v19 = *a2;
  v20 = *a4;
  if (a15 < 2)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vandq_s8(vdupq_n_s16(v21), v22);
  if (a8)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v25 = vandq_s8(vdupq_n_s16(v24), v22);
  v26 = 2 * a6;
  v27 = 8 * v26;
  v28 = vdupq_n_s32(0xFFFE8000);
  a13.i64[0] = 0x800000008000;
  a13.i64[1] = 0x800000008000;
  v29.i64[0] = -1;
  v29.i64[1] = -1;
  while (1)
  {
    v30 = *v20;
    if (!*v20)
    {
      v50 = &v20[v16];
      v51 = v20;
      do
      {
        v52 = v51++;
      }

      while (v51 <= v50 && (vminvq_u8(vceqzq_s8(*v52)) & 0x80) != 0);
      do
      {
        v53 = v52;
        v52 = (v52 + 4);
      }

      while (v52 <= v50 && !v53->i32[0]);
      if (v53 < v50)
      {
        while (!v53->i8[0])
        {
          v53 = (v53 + 1);
          if (v53 >= v50)
          {
            v53 = &v20[v16];
            break;
          }
        }
      }

      v54 = v53 - v20;
      v55 = (v53 - v20) * a6;
      v17 = (v17 + 8 * v55);
      v19 = (v19 + 8 * v55);
      v20 += v55;
      v16 -= v54;
      goto LABEL_37;
    }

    if (v30 != 0xFFFF)
    {
      break;
    }

    v31 = &v20[v16];
    v32 = v20;
    do
    {
      v33 = v32++;
    }

    while (v32 <= v31 && (vminvq_u8(vceqq_s8(*v33, v29)) & 0x80) != 0);
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
          v34 = &v20[v16];
          break;
        }
      }
    }

    v35 = v34 - v20;
    v36 = v34 - v20;
    do
    {
      v37 = vorrq_s8(v23, vrev16q_s8(*v17));
      v38 = vorrq_s8(v25, vrev16q_s8(*v19));
      v39 = vqtbl1q_s8(v37, xmmword_18439C6E0);
      v40 = vqtbl1q_s8(v38, xmmword_18439C6E0);
      v41 = vminq_u16(v37, v39);
      v42 = vminq_u16(v38, v40);
      v43 = vmull_lane_u16(*v41.i8, *v38.i8, 3);
      v44 = vmvnq_s8(v40);
      v45 = vmull_u16(*v41.i8, *v44.i8);
      v46 = vmvnq_s8(v39);
      v47 = vqaddq_u32(vqaddq_u32(vminq_u32(vmull_high_laneq_u16(v42, v37, 7), vmull_high_laneq_u16(v41, v38, 7)), vmull_high_u16(v41, v44)), vmull_high_u16(v42, v46));
      v48 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vminq_u32(vmull_lane_u16(*v42.i8, *v37.i8, 3), v43), v45), vmull_u16(*v42.i8, *v46.i8)), v28), a13);
      v49 = vaddq_s32(vminq_u32(v47, v28), a13);
      v15 = vbslq_s8(vceqzq_s16(v40), v37, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v48, v48, 0x10uLL), 0x10uLL), vsraq_n_u32(v49, v49, 0x10uLL), 0x10uLL));
      *v19 = vrev16q_s8(vbslq_s8(vceqzq_s16(v39), v38, v15));
      v20 += v26;
      v36 -= 2;
      v17 = (v17 + v27);
      v19 = (v19 + v27);
    }

    while (v36 > 1);
    v16 = v16 - v35 + v36;
LABEL_37:
    if (v16 <= 1)
    {
      goto LABEL_40;
    }
  }

  v56 = 0;
  while (1)
  {
    v15.i32[0] = v30;
    v57 = vqtbl1q_s8(v15, xmmword_18439C6F0);
    v58 = vorrq_s8(v23, vrev16q_s8(*(v17 + v56)));
    v59 = vorrq_s8(vbicq_s8(v25, vceqzq_s16(v57)), vrev16q_s8(*(v19 + v56)));
    v60 = vaddq_s32(vminq_u32(vmull_u16(*v58.i8, *v57.i8), v28), a13);
    v61 = vqshrn_n_u32(vsraq_n_u32(v60, v60, 0x10uLL), 0x10uLL);
    v62 = vaddq_s32(vminq_u32(vmull_high_u16(v58, v57), v28), a13);
    v63 = vsraq_n_u32(v62, v62, 0x10uLL);
    v64 = vqshrn_n_u32(v63, 0x10uLL);
    *v57.i8 = vdup_lane_s16(v61, 3);
    v65 = vqtbl1q_s8(v59, xmmword_18439C6E0);
    v66 = vminq_u16(v59, v65);
    v67 = vmin_u16(v61, *v57.i8);
    v68 = vmull_lane_u16(*v66.i8, v61, 3);
    v69 = vqshrn_high_n_u32(v61, v63, 0x10uLL);
    v57.i64[1] = vdupq_lane_s16(v64, 3).u64[0];
    v70 = vdupq_laneq_s16(v59, 7);
    v71 = vmin_u16(v64, v57.u64[1]);
    v72 = vextq_s8(v66, v66, 8uLL).u64[0];
    v73 = vmvnq_s8(v65);
    v74 = vqaddq_u32(vminq_u32(v68, vmull_lane_u16(v67, *v59.i8, 3)), vmull_u16(v67, *v73.i8));
    v75 = vqaddq_u32(vminq_u32(vmull_high_lane_u16(v66, v64, 3), vmull_u16(v71, *&vextq_s8(v70, v70, 8uLL))), vmull_u16(v71, *&vextq_s8(v73, v73, 8uLL)));
    v76 = vaddq_s32(vminq_u32(vqaddq_u32(v74, vmull_u16(*v66.i8, vmvn_s8(*v57.i8))), v28), a13);
    v77 = vaddq_s32(vminq_u32(vqaddq_u32(v75, vmull_u16(v72, vmvn_s8(v57.u64[1]))), v28), a13);
    v15 = vceqzq_s16(v57);
    *(v19 + v56) = vrev16q_s8(vbslq_s8(v15, v59, vbslq_s8(vceqzq_s16(v65), v69, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v76, v76, 0x10uLL), 0x10uLL), vsraq_n_u32(v77, v77, 0x10uLL), 0x10uLL))));
    v20 += v26;
    v16 -= 2;
    if (v16 < 2)
    {
      break;
    }

    v30 = *v20;
    v56 += v27;
    if ((v30 - 1) >= 0xFFFEu)
    {
      v17 = (v17 + v56);
      v19 = (v19 + v56);
      goto LABEL_37;
    }
  }

  v17 = (v17 + v27 + v56);
  v19 = (v19 + v27 + v56);
LABEL_40:
  v78 = v16 + a14;
  if (v78)
  {
    v79 = 0;
    if (a7)
    {
      v80 = 0;
    }

    else
    {
      v80 = -1;
    }

    v81 = 0;
    v81.i16[3] = v80;
    if (a8)
    {
      v82 = 0;
    }

    else
    {
      v82 = -1;
    }

    v79.i16[3] = v82;
    v83 = vdupq_n_s32(0xFFFE8000);
    v84.i64[0] = 0x800000008000;
    v84.i64[1] = 0x800000008000;
    do
    {
      if (*v20)
      {
        a13.i32[0] = *v20;
        a13 = vaddq_s32(vminq_u32(vmull_u16(vorr_s8(v81, vrev16_s8(*v17->i8)), vdup_lane_s8(*a13.i8, 0)), v83), v84);
        *a13.i8 = vqshrn_n_u32(vsraq_n_u32(a13, a13, 0x10uLL), 0x10uLL);
        v85 = vdup_lane_s16(*a13.i8, 3);
        v86 = vorr_s8(v79, vrev16_s8(*v19->i8));
        v87 = vdup_lane_s16(v86, 3);
        v88 = vmin_u16(*a13.i8, v85);
        v89 = vmin_u16(v86, v87);
        v90 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vminq_u32(vmull_lane_u16(v88, v86, 3), vmull_lane_u16(v89, *a13.i8, 3)), vmull_u16(v88, vmvn_s8(v87))), vmull_u16(v89, vmvn_s8(v85))), v83), v84);
        *a13.i8 = vrev16_s8(vbsl_s8(vceqz_s16(v85), v86, vbsl_s8(vceqz_s16(v87), *a13.i8, vqshrn_n_u32(vsraq_n_u32(v90, v90, 0x10uLL), 0x10uLL))));
        v19->i64[0] = a13.i64[0];
      }

      v91 = &v17->i8[8 * a6];
      v20 += a6;
      if (v91 >= v18)
      {
        v92 = -a5;
      }

      else
      {
        v92 = 0;
      }

      v17 = &v91[8 * v92];
      v19 = (v19 + 8 * a6);
      --v78;
    }

    while (v78);
  }

  *result = v17;
  *a3 = v18;
  *a2 = v19;
  *a4 = v20;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)15,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, int32x4_t a14, uint64_t a15, unint64_t a16)
{
  v17 = a16;
  v18 = *result;
  v19 = *a3;
  v20 = *a2;
  v21 = *a4;
  if (a16 < 2)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v22 = 0;
  }

  else
  {
    v22 = -1;
  }

  v23 = vdupq_n_s16(v22);
  v24.i64[0] = 0xFFFF000000000000;
  v24.i64[1] = 0xFFFF000000000000;
  if (a8)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vandq_s8(v23, v24);
  v27 = vandq_s8(vdupq_n_s16(v25), v24);
  v28 = 2 * a6;
  v29 = 8 * v28;
  v30 = vdupq_n_s32(0xFFFE8000);
  a14.i64[0] = 0x800000008000;
  a14.i64[1] = 0x800000008000;
  v31.i64[0] = -1;
  v31.i64[1] = -1;
  while (1)
  {
    v32 = *v21;
    if (!*v21)
    {
      v52 = &v21[v17];
      v53 = v21;
      do
      {
        v54 = v53++;
      }

      while (v53 <= v52 && (vminvq_u8(vceqzq_s8(*v54)) & 0x80) != 0);
      do
      {
        v55 = v54;
        v54 = (v54 + 4);
      }

      while (v54 <= v52 && !v55->i32[0]);
      if (v55 < v52)
      {
        while (!v55->i8[0])
        {
          v55 = (v55 + 1);
          if (v55 >= v52)
          {
            v55 = &v21[v17];
            break;
          }
        }
      }

      v56 = v55 - v21;
      v57 = (v55 - v21) * a6;
      v18 = (v18 + 8 * v57);
      v20 = (v20 + 8 * v57);
      v21 += v57;
      v17 -= v56;
      goto LABEL_37;
    }

    if (v32 != 0xFFFF)
    {
      break;
    }

    v33 = &v21[v17];
    v34 = v21;
    do
    {
      v35 = v34++;
    }

    while (v34 <= v33 && (vminvq_u8(vceqq_s8(*v35, v31)) & 0x80) != 0);
    do
    {
      v36 = v35;
      v35 = (v35 + 4);
    }

    while (v35 <= v33 && v36->i32[0] == -1);
    if (v36 < v33)
    {
      while (v36->u8[0] == 255)
      {
        v36 = (v36 + 1);
        if (v36 >= v33)
        {
          v36 = &v21[v17];
          break;
        }
      }
    }

    v37 = v36 - v21;
    v38 = v36 - v21;
    do
    {
      v39 = vorrq_s8(v26, vrev16q_s8(*v18));
      v40 = vorrq_s8(v27, vrev16q_s8(*v20));
      v41 = vqtbl1q_s8(v39, xmmword_18439C6E0);
      v42 = vqtbl1q_s8(v40, xmmword_18439C6E0);
      v43 = vminq_u16(v39, v41);
      v44 = vminq_u16(v40, v42);
      v45 = vsubq_s16(v41, v43);
      v46 = vsubq_s16(v42, v44);
      v47 = vcgtq_u16(vrhaddq_u16(v42, 0), v44);
      v48 = vqaddq_u32(vmull_u16(*v45.i8, *v44.i8), vmull_u16(*v46.i8, *v43.i8));
      v49 = vqaddq_u32(vmull_high_u16(v45, v44), vmull_high_u16(v46, v43));
      v50 = vaddq_s32(vminq_u32(vbslq_s8(vmovl_s16(*v47.i8), v48, vqsubq_u32(vmull_lane_u16(vdup_lane_s16(*v39.i8, 3), *v40.i8, 3), v48)), v30), a14);
      v51 = vaddq_s32(vminq_u32(vbslq_s8(vmovl_high_s16(v47), v49, vqsubq_u32(vmull_laneq_u16(vdup_laneq_s16(v39, 7), v40, 7), v49)), v30), a14);
      v16 = vceqzq_s16(v42);
      *v20 = vrev16q_s8(vbslq_s8(vceqzq_s16(v41), v40, vbslq_s8(v16, v39, vsubq_s16(vaddq_s16(v44, v43), vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v50, v50, 0x10uLL), 0x10uLL), vsraq_n_u32(v51, v51, 0x10uLL), 0x10uLL)))));
      v21 += v28;
      v38 -= 2;
      v18 = (v18 + v29);
      v20 = (v20 + v29);
    }

    while (v38 > 1);
    v17 = v17 - v37 + v38;
LABEL_37:
    if (v17 <= 1)
    {
      goto LABEL_40;
    }
  }

  v58 = 0;
  while (1)
  {
    v16.i32[0] = v32;
    v59 = vqtbl1q_s8(v16, xmmword_18439C6F0);
    v60 = vorrq_s8(v26, vrev16q_s8(*(v18 + v58)));
    v61 = vorrq_s8(vbicq_s8(v27, vceqzq_s16(v59)), vrev16q_s8(*(v20 + v58)));
    v62 = vaddq_s32(vminq_u32(vmull_u16(*v60.i8, *v59.i8), v30), a14);
    *v62.i8 = vqshrn_n_u32(vsraq_n_u32(v62, v62, 0x10uLL), 0x10uLL);
    v63 = vaddq_s32(vminq_u32(vmull_high_u16(v60, v59), v30), a14);
    v64 = vsraq_n_u32(v63, v63, 0x10uLL);
    *v59.i8 = vqshrn_n_u32(v64, 0x10uLL);
    *v65.i8 = vdup_lane_s16(*v62.i8, 3);
    v66 = vmin_u16(*v62.i8, *v65.i8);
    v67 = vqshrn_high_n_u32(*v62.i8, v64, 0x10uLL);
    v65.u64[1] = vdup_lane_s16(*v59.i8, 3);
    v68 = vqtbl1q_s8(v61, xmmword_18439C6E0);
    v69 = vminq_u16(v67, v65);
    v70 = vminq_u16(v61, v68);
    v71 = vsubq_s16(v65, v69);
    v72 = vsubq_s16(v68, v70);
    v73 = vmull_u16(*v72.i8, v66);
    v74 = vmull_u16(*&vextq_s8(v72, v72, 8uLL), vmin_u16(*v59.i8, v65.u64[1]));
    v75 = vcgtq_u16(vrhaddq_u16(v68, 0), v70);
    v76 = vqaddq_u32(vmull_u16(*v71.i8, *v70.i8), v73);
    v77 = vqaddq_u32(vmull_high_u16(v71, v70), v74);
    v78 = vbslq_s8(vmovl_high_s16(v75), v77, vqsubq_u32(vmull_laneq_u16(v65.u64[1], v61, 7), v77));
    v79 = vaddq_s32(vminq_u32(vbslq_s8(vmovl_s16(*v75.i8), v76, vqsubq_u32(vmull_lane_u16(*v65.i8, *v61.i8, 3), v76)), v30), a14);
    v80 = vaddq_s32(vminq_u32(v78, v30), a14);
    v81 = vsubq_s16(vaddq_s16(v70, v69), vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v79, v79, 0x10uLL), 0x10uLL), vsraq_n_u32(v80, v80, 0x10uLL), 0x10uLL));
    v16 = vceqzq_s16(v68);
    *(v20 + v58) = vrev16q_s8(vbslq_s8(vceqzq_s16(v65), v61, vbslq_s8(v16, v67, v81)));
    v21 += v28;
    v17 -= 2;
    if (v17 < 2)
    {
      break;
    }

    v32 = *v21;
    v58 += v29;
    if ((v32 - 1) >= 0xFFFEu)
    {
      v18 = (v18 + v58);
      v20 = (v20 + v58);
      goto LABEL_37;
    }
  }

  v18 = (v18 + v29 + v58);
  v20 = (v20 + v29 + v58);
LABEL_40:
  v82 = v17 + a15;
  if (v82)
  {
    if (a7)
    {
      v83 = 0;
    }

    else
    {
      v83 = -1;
    }

    v84 = 0;
    v84.i16[3] = v83;
    if (a8)
    {
      v85 = 0;
    }

    else
    {
      v85 = -1;
    }

    v86 = 0;
    v86.i16[3] = v85;
    v87 = vdupq_n_s32(0xFFFE8000);
    v88.i64[0] = 0x800000008000;
    v88.i64[1] = 0x800000008000;
    do
    {
      if (*v21)
      {
        a14.i32[0] = *v21;
        v89 = vdup_lane_s8(*a14.i8, 0);
        v90 = vorr_s8(v86, vrev16_s8(*v20->i8));
        v91 = vaddq_s32(vminq_u32(vmull_u16(vorr_s8(v84, vrev16_s8(*v18->i8)), v89), v87), v88);
        *v91.i8 = vqshrn_n_u32(vsraq_n_u32(v91, v91, 0x10uLL), 0x10uLL);
        v92 = vdup_lane_s16(*v91.i8, 3);
        v93 = vdup_lane_s16(v90, 3);
        v94 = vmin_u16(*v91.i8, v92);
        v95 = vmin_u16(v90, v93);
        v96 = vqaddq_u32(vmull_u16(vsub_s16(v92, v94), v95), vmull_u16(vsub_s16(v93, v95), v94));
        v97 = vaddq_s32(vminq_u32(vbslq_s8(vmovl_s16(vcgt_u16(vrhadd_u16(v93, 0), v95)), v96, vqsubq_u32(vmull_lane_u16(v92, v90, 3), v96)), v87), v88);
        *a14.i8 = vrev16_s8(vbsl_s8(vceqz_s16(v92), v90, vbsl_s8(vceqz_s16(v93), *v91.i8, vsub_s16(vadd_s16(v95, v94), vqshrn_n_u32(vsraq_n_u32(v97, v97, 0x10uLL), 0x10uLL)))));
        v20->i64[0] = a14.i64[0];
      }

      v98 = &v18->i8[8 * a6];
      v21 += a6;
      if (v98 >= v19)
      {
        v99 = -a5;
      }

      else
      {
        v99 = 0;
      }

      v18 = &v98[8 * v99];
      v20 = (v20 + 8 * a6);
      --v82;
    }

    while (v82);
  }

  *result = v18;
  *a3 = v19;
  *a2 = v20;
  *a4 = v21;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)14,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, int32x4_t a13, uint64_t a14, unint64_t a15)
{
  v16 = a15;
  v17 = *result;
  v18 = *a3;
  v19 = *a2;
  v20 = *a4;
  if (a15 < 2)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vandq_s8(vdupq_n_s16(v21), v22);
  if (a8)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v25 = vandq_s8(vdupq_n_s16(v24), v22);
  v26 = 2 * a6;
  v27 = 8 * v26;
  v28 = vdupq_n_s32(0xFFFE8000);
  a13.i64[0] = 0x800000008000;
  a13.i64[1] = 0x800000008000;
  v29.i64[0] = -1;
  v29.i64[1] = -1;
  while (1)
  {
    v30 = *v20;
    if (!*v20)
    {
      v42 = &v20[v16];
      v43 = v20;
      do
      {
        v44 = v43++;
      }

      while (v43 <= v42 && (vminvq_u8(vceqzq_s8(*v44)) & 0x80) != 0);
      do
      {
        v45 = v44;
        v44 = (v44 + 4);
      }

      while (v44 <= v42 && !v45->i32[0]);
      if (v45 < v42)
      {
        while (!v45->i8[0])
        {
          v45 = (v45 + 1);
          if (v45 >= v42)
          {
            v45 = &v20[v16];
            break;
          }
        }
      }

      v46 = v45 - v20;
      v47 = (v45 - v20) * a6;
      v17 = (v17 + 8 * v47);
      v19 = (v19 + 8 * v47);
      v20 += v47;
      v16 -= v46;
      goto LABEL_37;
    }

    if (v30 != 0xFFFF)
    {
      break;
    }

    v31 = &v20[v16];
    v32 = v20;
    do
    {
      v33 = v32++;
    }

    while (v32 <= v31 && (vminvq_u8(vceqq_s8(*v33, v29)) & 0x80) != 0);
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
          v34 = &v20[v16];
          break;
        }
      }
    }

    v35 = v34 - v20;
    v36 = v34 - v20;
    do
    {
      v37 = vorrq_s8(v23, vrev16q_s8(*v17));
      v38 = vorrq_s8(v25, vrev16q_s8(*v19));
      v39 = vbicq_s8(v38, vceqzq_s16(vqtbl1q_s8(v38, xmmword_18439C6E0)));
      v40 = vaddq_s32(vminq_u32(vmull_u16(*v37.i8, *v39.i8), v28), a13);
      v41 = vaddq_s32(vminq_u32(vmull_high_u16(v37, v39), v28), a13);
      v15 = vceqzq_s16(vqtbl1q_s8(v37, xmmword_18439C6E0));
      *v19 = vrev16q_s8(vbslq_s8(v15, v38, vqaddq_u16(vqsubq_u16(v37, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v40, v40, 0x10uLL), 0x10uLL), vsraq_n_u32(v41, v41, 0x10uLL), 0x10uLL)), v39)));
      v20 += v26;
      v36 -= 2;
      v17 = (v17 + v27);
      v19 = (v19 + v27);
    }

    while (v36 > 1);
    v16 = v16 - v35 + v36;
LABEL_37:
    if (v16 <= 1)
    {
      goto LABEL_40;
    }
  }

  v48 = 0;
  while (1)
  {
    v15.i32[0] = v30;
    v49 = vqtbl1q_s8(v15, xmmword_18439C6F0);
    v50 = vorrq_s8(v23, vrev16q_s8(*(v17 + v48)));
    v51 = vorrq_s8(vbicq_s8(v25, vceqzq_s16(v49)), vrev16q_s8(*(v19 + v48)));
    v52 = vmull_u16(*v50.i8, *v49.i8);
    v53 = vmull_high_u16(v50, v49);
    v54 = vaddq_s32(vminq_u32(v52, v28), a13);
    *v54.i8 = vqshrn_n_u32(vsraq_n_u32(v54, v54, 0x10uLL), 0x10uLL);
    v55 = vaddq_s32(vminq_u32(v53, v28), a13);
    v56 = vsraq_n_u32(v55, v55, 0x10uLL);
    *v52.i8 = vqshrn_n_u32(v56, 0x10uLL);
    *v57.i8 = vdup_lane_s16(*v54.i8, 3);
    v58 = vbicq_s8(v51, vceqzq_s16(vqtbl1q_s8(v51, xmmword_18439C6E0)));
    v59 = vmull_u16(*v54.i8, *v58.i8);
    v60 = vqshrn_high_n_u32(*v54.i8, v56, 0x10uLL);
    v57.u64[1] = vdup_lane_s16(*v52.i8, 3);
    v61 = vmull_u16(*v52.i8, *&vextq_s8(v58, v58, 8uLL));
    v62 = vaddq_s32(vminq_u32(v59, v28), a13);
    v63 = vaddq_s32(vminq_u32(v61, v28), a13);
    v64 = vqaddq_u16(vqsubq_u16(v60, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v62, v62, 0x10uLL), 0x10uLL), vsraq_n_u32(v63, v63, 0x10uLL), 0x10uLL)), v58);
    v15 = vceqzq_s16(v57);
    *(v19 + v48) = vrev16q_s8(vbslq_s8(v15, v51, v64));
    v20 += v26;
    v16 -= 2;
    if (v16 < 2)
    {
      break;
    }

    v30 = *v20;
    v48 += v27;
    if ((v30 - 1) >= 0xFFFEu)
    {
      v17 = (v17 + v48);
      v19 = (v19 + v48);
      goto LABEL_37;
    }
  }

  v17 = (v17 + v27 + v48);
  v19 = (v19 + v27 + v48);
LABEL_40:
  v65 = v16 + a14;
  if (v65)
  {
    v66 = 0;
    if (a7)
    {
      v67 = 0;
    }

    else
    {
      v67 = -1;
    }

    v68 = 0;
    v68.i16[3] = v67;
    if (a8)
    {
      v69 = 0;
    }

    else
    {
      v69 = -1;
    }

    v66.i16[3] = v69;
    v70 = vdupq_n_s32(0xFFFE8000);
    v71.i64[0] = 0x800000008000;
    v71.i64[1] = 0x800000008000;
    do
    {
      if (*v20)
      {
        a13.i32[0] = *v20;
        v72 = vorr_s8(v66, vrev16_s8(*v19->i8));
        a13 = vaddq_s32(vminq_u32(vmull_u16(vorr_s8(v68, vrev16_s8(*v17->i8)), vdup_lane_s8(*a13.i8, 0)), v70), v71);
        *a13.i8 = vqshrn_n_u32(vsraq_n_u32(a13, a13, 0x10uLL), 0x10uLL);
        v73 = vbic_s8(v72, vdup_lane_s16(vceqz_s16(v72), 3));
        v74 = vaddq_s32(vminq_u32(vmull_u16(*a13.i8, v73), v70), v71);
        *a13.i8 = vrev16_s8(vbsl_s8(vdup_lane_s16(vceqz_s16(*a13.i8), 3), v72, vqadd_u16(vqsub_u16(*a13.i8, vqshrn_n_u32(vsraq_n_u32(v74, v74, 0x10uLL), 0x10uLL)), v73)));
        v19->i64[0] = a13.i64[0];
      }

      v75 = &v17->i8[8 * a6];
      v20 += a6;
      if (v75 >= v18)
      {
        v76 = -a5;
      }

      else
      {
        v76 = 0;
      }

      v17 = &v75[8 * v76];
      v19 = (v19 + 8 * a6);
      --v65;
    }

    while (v65);
  }

  *result = v17;
  *a3 = v18;
  *a2 = v19;
  *a4 = v20;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)13,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, int32x4_t a13, uint64_t a14, unint64_t a15)
{
  v16 = a15;
  v17 = *result;
  v18 = *a3;
  v19 = *a2;
  v20 = *a4;
  if (a15 < 2)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vandq_s8(vdupq_n_s16(v21), v22);
  if (a8)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v25 = vandq_s8(vdupq_n_s16(v24), v22);
  v26 = 2 * a6;
  v27 = 8 * v26;
  v28 = vdupq_n_s32(0xFFFE8000);
  a13.i64[0] = 0x800000008000;
  a13.i64[1] = 0x800000008000;
  v29.i64[0] = -1;
  v29.i64[1] = -1;
  while (1)
  {
    v30 = *v20;
    if (!*v20)
    {
      v52 = &v20[v16];
      v53 = v20;
      do
      {
        v54 = v53++;
      }

      while (v53 <= v52 && (vminvq_u8(vceqzq_s8(*v54)) & 0x80) != 0);
      do
      {
        v55 = v54;
        v54 = (v54 + 4);
      }

      while (v54 <= v52 && !v55->i32[0]);
      if (v55 < v52)
      {
        while (!v55->i8[0])
        {
          v55 = (v55 + 1);
          if (v55 >= v52)
          {
            v55 = &v20[v16];
            break;
          }
        }
      }

      v56 = v55 - v20;
      v57 = (v55 - v20) * a6;
      v17 = (v17 + 8 * v57);
      v19 = (v19 + 8 * v57);
      v20 += v57;
      v16 -= v56;
      goto LABEL_37;
    }

    if (v30 != 0xFFFF)
    {
      break;
    }

    v31 = &v20[v16];
    v32 = v20;
    do
    {
      v33 = v32++;
    }

    while (v32 <= v31 && (vminvq_u8(vceqq_s8(*v33, v29)) & 0x80) != 0);
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
          v34 = &v20[v16];
          break;
        }
      }
    }

    v35 = v34 - v20;
    v36 = v34 - v20;
    do
    {
      v37 = vorrq_s8(v23, vrev16q_s8(*v17));
      v38 = vorrq_s8(v25, vrev16q_s8(*v19));
      v39 = vqtbl1q_s8(v37, xmmword_18439C6E0);
      v40 = vqtbl1q_s8(v38, xmmword_18439C6E0);
      v41 = vceqzq_s16(v40);
      v42 = vbicq_s8(v38, v41);
      v43 = vaddq_s32(vminq_u32(vmull_u16(*v37.i8, *v42.i8), v28), a13);
      v44 = vaddq_s32(vminq_u32(vmull_high_u16(v37, v42), v28), a13);
      v45 = vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v43, v43, 0x10uLL), 0x10uLL), vsraq_n_u32(v44, v44, 0x10uLL), 0x10uLL);
      v46 = vmvnq_s8(v40);
      v47 = vmvnq_s8(v39);
      v48 = vqaddq_u32(vmull_u16(*v37.i8, *v46.i8), vmull_u16(*v42.i8, *v47.i8));
      v49 = vqaddq_u32(vmull_high_u16(v37, v46), vmull_high_u16(v42, v47));
      v50 = vaddq_s32(vminq_u32(v48, v28), a13);
      v51 = vaddq_s32(vminq_u32(v49, v28), a13);
      v15 = vceqzq_s16(v39);
      *v19 = vrev16q_s8(vbslq_s8(v15, v38, vbslq_s8(v41, v37, vqaddq_u16(v45, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v50, v50, 0x10uLL), 0x10uLL), vsraq_n_u32(v51, v51, 0x10uLL), 0x10uLL)))));
      v20 += v26;
      v36 -= 2;
      v17 = (v17 + v27);
      v19 = (v19 + v27);
    }

    while (v36 > 1);
    v16 = v16 - v35 + v36;
LABEL_37:
    if (v16 <= 1)
    {
      goto LABEL_40;
    }
  }

  v58 = 0;
  while (1)
  {
    v15.i32[0] = v30;
    v59 = vqtbl1q_s8(v15, xmmword_18439C6F0);
    v60 = vorrq_s8(v23, vrev16q_s8(*(v17 + v58)));
    v61 = vorrq_s8(vbicq_s8(v25, vceqzq_s16(v59)), vrev16q_s8(*(v19 + v58)));
    v62 = vaddq_s32(vminq_u32(vmull_u16(*v60.i8, *v59.i8), v28), a13);
    *v62.i8 = vqshrn_n_u32(vsraq_n_u32(v62, v62, 0x10uLL), 0x10uLL);
    v63 = vaddq_s32(vminq_u32(vmull_high_u16(v60, v59), v28), a13);
    v64 = vsraq_n_u32(v63, v63, 0x10uLL);
    *v60.i8 = vqshrn_n_u32(v64, 0x10uLL);
    *v65.i8 = vdup_lane_s16(*v62.i8, 3);
    v66 = vqtbl1q_s8(v61, xmmword_18439C6E0);
    v67 = vceqzq_s16(v66);
    v68 = vbicq_s8(v61, v67);
    v69 = vmull_u16(*v62.i8, *v68.i8);
    v70 = vmvnq_s8(v66);
    v71 = vmull_u16(*v62.i8, *v70.i8);
    v65.u64[1] = vdup_lane_s16(*v60.i8, 3);
    v72 = vqshrn_high_n_u32(*v62.i8, v64, 0x10uLL);
    v64.i64[0] = vextq_s8(v68, v68, 8uLL).u64[0];
    v73 = vaddq_s32(vminq_u32(v69, v28), a13);
    v74 = vaddq_s32(vminq_u32(vmull_u16(*v60.i8, *v64.i8), v28), a13);
    v75 = vqaddq_u32(vmull_u16(*v60.i8, *&vextq_s8(v70, v70, 8uLL)), vmull_u16(*v64.i8, vmvn_s8(v65.u64[1])));
    v76 = vaddq_s32(vminq_u32(vqaddq_u32(v71, vmull_u16(*v68.i8, vmvn_s8(*v65.i8))), v28), a13);
    v77 = vaddq_s32(vminq_u32(v75, v28), a13);
    v78 = vbslq_s8(v67, v72, vqaddq_u16(vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v73, v73, 0x10uLL), 0x10uLL), vsraq_n_u32(v74, v74, 0x10uLL), 0x10uLL), vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v76, v76, 0x10uLL), 0x10uLL), vsraq_n_u32(v77, v77, 0x10uLL), 0x10uLL)));
    v15 = vceqzq_s16(v65);
    *(v19 + v58) = vrev16q_s8(vbslq_s8(v15, v61, v78));
    v20 += v26;
    v16 -= 2;
    if (v16 < 2)
    {
      break;
    }

    v30 = *v20;
    v58 += v27;
    if ((v30 - 1) >= 0xFFFEu)
    {
      v17 = (v17 + v58);
      v19 = (v19 + v58);
      goto LABEL_37;
    }
  }

  v17 = (v17 + v27 + v58);
  v19 = (v19 + v27 + v58);
LABEL_40:
  v79 = v16 + a14;
  if (v79)
  {
    v80 = 0;
    if (a7)
    {
      v81 = 0;
    }

    else
    {
      v81 = -1;
    }

    v82 = 0;
    v82.i16[3] = v81;
    if (a8)
    {
      v83 = 0;
    }

    else
    {
      v83 = -1;
    }

    v80.i16[3] = v83;
    v84 = vdupq_n_s32(0xFFFE8000);
    v85.i64[0] = 0x800000008000;
    v85.i64[1] = 0x800000008000;
    do
    {
      if (*v20)
      {
        a13.i32[0] = *v20;
        v86 = vorr_s8(v80, vrev16_s8(*v19->i8));
        a13 = vaddq_s32(vminq_u32(vmull_u16(vorr_s8(v82, vrev16_s8(*v17->i8)), vdup_lane_s8(*a13.i8, 0)), v84), v85);
        *a13.i8 = vqshrn_n_u32(vsraq_n_u32(a13, a13, 0x10uLL), 0x10uLL);
        v87 = vdup_lane_s16(*a13.i8, 3);
        v88 = vdup_lane_s16(v86, 3);
        v89 = vceqz_s16(v88);
        v90 = vbic_s8(v86, v89);
        v91 = vaddq_s32(vminq_u32(vmull_u16(*a13.i8, v90), v84), v85);
        v92 = vaddq_s32(vminq_u32(vqaddq_u32(vmull_u16(*a13.i8, vmvn_s8(v88)), vmull_u16(v90, vmvn_s8(v87))), v84), v85);
        *a13.i8 = vrev16_s8(vbsl_s8(vceqz_s16(v87), v86, vbsl_s8(v89, *a13.i8, vqadd_u16(vqshrn_n_u32(vsraq_n_u32(v91, v91, 0x10uLL), 0x10uLL), vqshrn_n_u32(vsraq_n_u32(v92, v92, 0x10uLL), 0x10uLL)))));
        v19->i64[0] = a13.i64[0];
      }

      v93 = &v17->i8[8 * a6];
      v20 += a6;
      if (v93 >= v18)
      {
        v94 = -a5;
      }

      else
      {
        v94 = 0;
      }

      v17 = &v93[8 * v94];
      v19 = (v19 + 8 * a6);
      --v79;
    }

    while (v79);
  }

  *result = v17;
  *a3 = v18;
  *a2 = v19;
  *a4 = v20;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)12,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, double a8, double a9, double a10, uint32x4_t a11, double a12, double a13, double a14, uint16x8_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v18 = a18;
  v19 = *result;
  v20 = *a3;
  v21 = *a2;
  v22 = *a4;
  if (a18 < 2)
  {
    goto LABEL_37;
  }

  if (a7)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24.i64[0] = 0xFFFF000000000000;
  v24.i64[1] = 0xFFFF000000000000;
  v25 = vandq_s8(vdupq_n_s16(v23), v24);
  v26 = 2 * a6;
  v27 = 8 * v26;
  v28.i64[0] = -1;
  v28.i64[1] = -1;
  a11 = vdupq_n_s32(0xFFFE8000);
  v29.i64[0] = 0x800000008000;
  v29.i64[1] = 0x800000008000;
  while (1)
  {
    v30 = *v22;
    if (!*v22)
    {
      v37 = &v22[v18];
      v38 = v22;
      do
      {
        v39 = v38++;
      }

      while (v38 <= v37 && (vminvq_u8(vceqzq_s8(*v39)) & 0x80) != 0);
      do
      {
        v40 = v39;
        v39 = (v39 + 4);
      }

      while (v39 <= v37 && !v40->i32[0]);
      if (v40 < v37)
      {
        while (!v40->i8[0])
        {
          v40 = (v40 + 1);
          if (v40 >= v37)
          {
            v40 = &v22[v18];
            break;
          }
        }
      }

      v41 = v40 - v22;
      v42 = (v40 - v22) * a6;
      v19 = (v19 + 8 * v42);
      v21 = (v21 + 8 * v42);
      v22 += v42;
      v18 -= v41;
      goto LABEL_34;
    }

    if (v30 != 0xFFFF)
    {
      break;
    }

    v31 = &v22[v18];
    v32 = v22;
    do
    {
      v33 = v32++;
    }

    while (v32 <= v31 && (vminvq_u8(vceqq_s8(*v33, v28)) & 0x80) != 0);
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
          v34 = &v22[v18];
          break;
        }
      }
    }

    v35 = v34 - v22;
    v36 = v34 - v22;
    do
    {
      *v21 = vrev16q_s8(vqaddq_u16(vrev16q_s8(*v21), vorrq_s8(v25, vrev16q_s8(*v19))));
      v22 += v26;
      v36 -= 2;
      v19 = (v19 + v27);
      v21 = (v21 + v27);
    }

    while (v36 > 1);
    v18 = v18 - v35 + v36;
LABEL_34:
    if (v18 <= 1)
    {
      goto LABEL_37;
    }
  }

  v43 = 0;
  while (1)
  {
    a15.i32[0] = v30;
    v44 = vqtbl1q_s8(a15, xmmword_18439C6F0);
    v45 = vorrq_s8(v25, vrev16q_s8(*(v19 + v43)));
    v46 = vmull_u16(*v45.i8, *v44.i8);
    v47 = vmull_high_u16(v45, v44);
    v48 = vaddq_s32(vminq_u32(v46, a11), v29);
    v49 = vaddq_s32(vminq_u32(v47, a11), v29);
    a15 = vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v48, v48, 0x10uLL), 0x10uLL), vsraq_n_u32(v49, v49, 0x10uLL), 0x10uLL);
    *(v21 + v43) = vrev16q_s8(vqaddq_u16(vrev16q_s8(*(v21 + v43)), a15));
    v22 += v26;
    v18 -= 2;
    if (v18 < 2)
    {
      break;
    }

    v30 = *v22;
    v43 += v27;
    if ((v30 - 1) >= 0xFFFEu)
    {
      v19 = (v19 + v43);
      v21 = (v21 + v43);
      goto LABEL_34;
    }
  }

  v19 = (v19 + v27 + v43);
  v21 = (v21 + v27 + v43);
LABEL_37:
  v50 = v18 + a17;
  if (v50)
  {
    v51 = 0;
    if (a7)
    {
      v52 = 0;
    }

    else
    {
      v52 = -1;
    }

    v51.i16[3] = v52;
    v53 = vdupq_n_s32(0xFFFE8000);
    v54.i64[0] = 0x800000008000;
    v54.i64[1] = 0x800000008000;
    do
    {
      if (*v22)
      {
        a11.i32[0] = *v22;
        a11 = vaddq_s32(vminq_u32(vmull_u16(vorr_s8(v51, vrev16_s8(*v19->i8)), vdup_lane_s8(*a11.i8, 0)), v53), v54);
        *a11.i8 = vrev16_s8(vqadd_u16(vrev16_s8(*v21->i8), vqshrn_n_u32(vsraq_n_u32(a11, a11, 0x10uLL), 0x10uLL)));
        v21->i64[0] = a11.i64[0];
      }

      v55 = &v19->i8[8 * a6];
      v22 += a6;
      if (v55 >= v20)
      {
        v56 = -a5;
      }

      else
      {
        v56 = 0;
      }

      v19 = &v55[8 * v56];
      v21 = (v21 + 8 * a6);
      --v50;
    }

    while (v50);
  }

  *result = v19;
  *a3 = v20;
  *a2 = v21;
  *a4 = v22;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)11,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, int8x8_t a13, uint64_t a14, unint64_t a15)
{
  v16 = a15;
  v17 = *result;
  v18 = *a3;
  v19 = *a2;
  v20 = *a4;
  if (a15 < 2)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v22.i64[0] = 0xFFFF000000000000;
  v22.i64[1] = 0xFFFF000000000000;
  v23 = vandq_s8(vdupq_n_s16(v21), v22);
  if (a8)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v25 = vandq_s8(vdupq_n_s16(v24), v22);
  v26 = 2 * a6;
  v27 = 8 * v26;
  v28.i64[0] = -1;
  v28.i64[1] = -1;
  a13.i32[1] = 0;
  v29 = vdupq_n_s32(0xFFFE8000);
  v30.i64[0] = 0x800000008000;
  v30.i64[1] = 0x800000008000;
  while (1)
  {
    v31 = *v20;
    if (!*v20)
    {
      v41 = &v20[v16];
      v42 = v20;
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
            v44 = &v20[v16];
            break;
          }
        }
      }

      v45 = v44 - v20;
      v46 = (v44 - v20) * a6;
      v17 = (v17 + 8 * v46);
      v19 = (v19 + 8 * v46);
      v20 += v46;
      v16 -= v45;
      goto LABEL_37;
    }

    if (v31 != 0xFFFF)
    {
      break;
    }

    v32 = &v20[v16];
    v33 = v20;
    do
    {
      v34 = v33++;
    }

    while (v33 <= v32 && (vminvq_u8(vceqq_s8(*v34, v28)) & 0x80) != 0);
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
          v35 = &v20[v16];
          break;
        }
      }
    }

    v36 = v35 - v20;
    v37 = v35 - v20;
    do
    {
      v38 = vorrq_s8(v23, vrev16q_s8(*v17));
      v39 = vorrq_s8(v25, vrev16q_s8(*v19));
      v15 = vqtbl1q_s8(v38, xmmword_18439C6E0);
      v40 = vqtbl1q_s8(v39, xmmword_18439C6E0);
      *v19 = vrev16q_s8(vqsubq_u16(vqaddq_u16(v40, v15), vqaddq_u16(vqsubq_u16(v15, v38), vqsubq_u16(v40, v39))));
      v20 += v26;
      v37 -= 2;
      v17 = (v17 + v27);
      v19 = (v19 + v27);
    }

    while (v37 > 1);
    v16 = v16 - v36 + v37;
LABEL_37:
    if (v16 <= 1)
    {
      goto LABEL_40;
    }
  }

  v47 = 0;
  while (1)
  {
    v48 = vrev16q_s8(*(v19 + v47));
    v15.i32[0] = v31;
    v49 = vqtbl1q_s8(v15, xmmword_18439C6F0);
    v50 = vorrq_s8(v23, vrev16q_s8(*(v17 + v47)));
    v51 = vceqzq_s16(v49);
    v52 = vorrq_s8(vbicq_s8(v25, v51), v48);
    v53 = vmull_u16(*v50.i8, *v49.i8);
    v54 = vmull_high_u16(v50, v49);
    v55 = vaddq_s32(vminq_u32(v53, v29), v30);
    *v55.i8 = vqshrn_n_u32(vsraq_n_u32(v55, v55, 0x10uLL), 0x10uLL);
    v56 = vaddq_s32(vminq_u32(v54, v29), v30);
    v57 = vsraq_n_u32(v56, v56, 0x10uLL);
    *v58.i8 = vdup_lane_s16(*v55.i8, 3);
    v59 = vqshrn_high_n_u32(*v55.i8, v57, 0x10uLL);
    v58.u64[1] = vdup_lane_s16(vqshrn_n_u32(v57, 0x10uLL), 3);
    v60 = vqtbl1q_s8(v52, xmmword_18439C6E0);
    v15 = vqsubq_u16(v58, v59);
    *(v19 + v47) = vrev16q_s8(vbslq_s8(v51, v48, vqsubq_u16(vqaddq_u16(v60, v58), vqaddq_u16(v15, vqsubq_u16(v60, v52)))));
    v20 += v26;
    v16 -= 2;
    if (v16 < 2)
    {
      break;
    }

    v31 = *v20;
    v47 += v27;
    if ((v31 - 1) >= 0xFFFEu)
    {
      v17 = (v17 + v47);
      v19 = (v19 + v47);
      goto LABEL_37;
    }
  }

  v17 = (v17 + v27 + v47);
  v19 = (v19 + v27 + v47);
LABEL_40:
  v61 = v16 + a14;
  if (v61)
  {
    v62 = 0;
    if (a7)
    {
      v63 = 0;
    }

    else
    {
      v63 = -1;
    }

    v64 = 0;
    v64.i16[3] = v63;
    if (a8)
    {
      v65 = 0;
    }

    else
    {
      v65 = -1;
    }

    v62.i16[3] = v65;
    v66 = vdupq_n_s32(0xFFFE8000);
    v67.i64[0] = 0x800000008000;
    v67.i64[1] = 0x800000008000;
    do
    {
      if (*v20)
      {
        a13.i32[0] = *v20;
        v68 = vorr_s8(v62, vrev16_s8(*v19->i8));
        v69 = vaddq_s32(vminq_u32(vmull_u16(vorr_s8(v64, vrev16_s8(*v17->i8)), vdup_lane_s8(a13, 0)), v66), v67);
        *v69.i8 = vqshrn_n_u32(vsraq_n_u32(v69, v69, 0x10uLL), 0x10uLL);
        v70 = vdup_lane_s16(*v69.i8, 3);
        v71 = vdup_lane_s16(v68, 3);
        a13 = vrev16_s8(vqsub_u16(vqadd_u16(v71, v70), vqadd_u16(vqsub_u16(v70, *v69.i8), vqsub_u16(v71, v68))));
        v19->i64[0] = *&a13;
      }

      v72 = &v17->i8[8 * a6];
      v20 += a6;
      if (v72 >= v18)
      {
        v73 = -a5;
      }

      else
      {
        v73 = 0;
      }

      v17 = &v72[8 * v73];
      v19 = (v19 + 8 * a6);
      --v61;
    }

    while (v61);
  }

  *result = v17;
  *a3 = v18;
  *a2 = v19;
  *a4 = v20;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)10,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, double a7, double a8, int32x4_t a9, double a10, double a11, double a12, int8x16_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  v17 = a17;
  v18 = *result;
  v19 = *a3;
  v20 = *a2;
  v21 = *a4;
  if (a17 < 2)
  {
    goto LABEL_34;
  }

  v22 = 2 * a6;
  v23 = 8 * v22;
  v24 = vdupq_n_s32(0xFFFE8000);
  v25.i64[0] = 0x800000008000;
  v25.i64[1] = 0x800000008000;
  a9.i64[0] = -1;
  a9.i64[1] = -1;
  while (1)
  {
    v26 = *v21;
    if (!*v21)
    {
      v40 = &v21[v17];
      v41 = v21;
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
            v43 = &v21[v17];
            break;
          }
        }
      }

      v44 = v43 - v21;
      v45 = (v43 - v21) * a6;
      v18 = (v18 + 8 * v45);
      v20 = (v20 + 8 * v45);
      v21 += v45;
      v17 -= v44;
      goto LABEL_31;
    }

    if (v26 != 0xFFFF)
    {
      break;
    }

    v27 = &v21[v17];
    v28 = v21;
    do
    {
      v29 = v28++;
    }

    while (v28 <= v27 && (vminvq_u8(vceqq_s8(*v29, a9)) & 0x80) != 0);
    do
    {
      v30 = v29;
      v29 = (v29 + 4);
    }

    while (v29 <= v27 && v30->i32[0] == -1);
    if (v30 < v27)
    {
      while (v30->u8[0] == 255)
      {
        v30 = (v30 + 1);
        if (v30 >= v27)
        {
          v30 = &v21[v17];
          break;
        }
      }
    }

    v31 = v30 - v21;
    v32 = v30 - v21;
    do
    {
      v33 = vrev16q_s8(*v18);
      v34 = vrev16q_s8(*v20);
      a13 = vmvnq_s8(v34);
      v35 = vmvnq_s8(v33);
      v36 = vqaddq_u32(vmull_lane_u16(*v33.i8, *a13.i8, 3), vmull_lane_u16(*v34.i8, *v35.i8, 3));
      v37 = vqaddq_u32(vmull_high_laneq_u16(v33, a13, 7), vmull_high_laneq_u16(v34, v35, 7));
      v38 = vaddq_s32(vminq_u32(v36, v24), v25);
      v39 = vaddq_s32(vminq_u32(v37, v24), v25);
      *v20 = vrev16q_s8(vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v38, v38, 0x10uLL), 0x10uLL), vsraq_n_u32(v39, v39, 0x10uLL), 0x10uLL));
      v21 += v22;
      v32 -= 2;
      v18 = (v18 + v23);
      v20 = (v20 + v23);
    }

    while (v32 > 1);
    v17 = v17 - v31 + v32;
LABEL_31:
    if (v17 <= 1)
    {
      goto LABEL_34;
    }
  }

  v46 = 0;
  while (1)
  {
    v47 = vrev16q_s8(*(v18 + v46));
    v48 = vrev16q_s8(*(v20 + v46));
    a13.i32[0] = v26;
    v49 = vqtbl1q_s8(a13, xmmword_18439C6F0);
    v50 = vmull_u16(*v47.i8, *v49.i8);
    v51 = vmull_high_u16(v47, v49);
    v52 = vaddq_s32(vminq_u32(v50, v24), v25);
    *v52.i8 = vqshrn_n_u32(vsraq_n_u32(v52, v52, 0x10uLL), 0x10uLL);
    v53 = vaddq_s32(vminq_u32(v51, v24), v25);
    *v53.i8 = vqshrn_n_u32(vsraq_n_u32(v53, v53, 0x10uLL), 0x10uLL);
    v54 = vmvnq_s8(v48);
    a13 = vqaddq_u32(vmull_lane_u16(*v52.i8, *v54.i8, 3), vmull_u16(*v48.i8, vmvn_s8(vdup_lane_s16(*v52.i8, 3))));
    v55 = vqaddq_u32(vmull_laneq_u16(*v53.i8, v54, 7), vmull_u16(*&vextq_s8(v48, v48, 8uLL), vmvn_s8(vdup_lane_s16(*v53.i8, 3))));
    v56 = vaddq_s32(vminq_u32(a13, v24), v25);
    v57 = vaddq_s32(vminq_u32(v55, v24), v25);
    *(v20 + v46) = vrev16q_s8(vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v56, v56, 0x10uLL), 0x10uLL), vsraq_n_u32(v57, v57, 0x10uLL), 0x10uLL));
    v21 += v22;
    v17 -= 2;
    if (v17 < 2)
    {
      break;
    }

    v26 = *v21;
    v46 += v23;
    if ((v26 - 1) >= 0xFFFEu)
    {
      v18 = (v18 + v46);
      v20 = (v20 + v46);
      goto LABEL_31;
    }
  }

  v18 = (v18 + v23 + v46);
  v20 = (v20 + v23 + v46);
LABEL_34:
  v58 = v17 + a16;
  if (v58)
  {
    v59 = vdupq_n_s32(0xFFFE8000);
    v60.i64[0] = 0x800000008000;
    v60.i64[1] = 0x800000008000;
    do
    {
      if (*v21)
      {
        a9.i32[0] = *v21;
        v61 = vrev16_s8(*v20->i8);
        v62 = vaddq_s32(vminq_u32(vmull_u16(vrev16_s8(*v18->i8), vdup_lane_s8(*a9.i8, 0)), v59), v60);
        *v62.i8 = vqshrn_n_u32(vsraq_n_u32(v62, v62, 0x10uLL), 0x10uLL);
        a9 = vaddq_s32(vminq_u32(vqaddq_u32(vmull_lane_u16(*v62.i8, vmvn_s8(v61), 3), vmull_lane_u16(v61, vmvn_s8(*v62.i8), 3)), v59), v60);
        *a9.i8 = vrev16_s8(vqshrn_n_u32(vsraq_n_u32(a9, a9, 0x10uLL), 0x10uLL));
        v20->i64[0] = a9.i64[0];
      }

      v63 = &v18->i8[8 * a6];
      v21 += a6;
      if (v63 >= v19)
      {
        v64 = -a5;
      }

      else
      {
        v64 = 0;
      }

      v18 = &v63[8 * v64];
      v20 = (v20 + 8 * a6);
      --v58;
    }

    while (v58);
  }

  *result = v18;
  *a3 = v19;
  *a2 = v20;
  *a4 = v21;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)9,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, double a7, double a8, int32x4_t a9, double a10, double a11, double a12, uint32x4_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  v17 = a17;
  v18 = *result;
  v19 = *a3;
  v20 = *a2;
  v21 = *a4;
  if (a17 < 2)
  {
    goto LABEL_34;
  }

  v22 = 2 * a6;
  v23 = 8 * v22;
  v24 = vdupq_n_s32(0xFFFE8000);
  v25.i64[0] = 0x800000008000;
  v25.i64[1] = 0x800000008000;
  a9.i64[0] = -1;
  a9.i64[1] = -1;
  while (1)
  {
    v26 = *v21;
    if (!*v21)
    {
      v40 = &v21[v17];
      v41 = v21;
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
            v43 = &v21[v17];
            break;
          }
        }
      }

      v44 = v43 - v21;
      v45 = (v43 - v21) * a6;
      v18 = (v18 + 8 * v45);
      v20 = (v20 + 8 * v45);
      v21 += v45;
      v17 -= v44;
      goto LABEL_31;
    }

    if (v26 != 0xFFFF)
    {
      break;
    }

    v27 = &v21[v17];
    v28 = v21;
    do
    {
      v29 = v28++;
    }

    while (v28 <= v27 && (vminvq_u8(vceqq_s8(*v29, a9)) & 0x80) != 0);
    do
    {
      v30 = v29;
      v29 = (v29 + 4);
    }

    while (v29 <= v27 && v30->i32[0] == -1);
    if (v30 < v27)
    {
      while (v30->u8[0] == 255)
      {
        v30 = (v30 + 1);
        if (v30 >= v27)
        {
          v30 = &v21[v17];
          break;
        }
      }
    }

    v31 = v30 - v21;
    v32 = v30 - v21;
    do
    {
      v33 = vrev16q_s8(*v18);
      v34 = vrev16q_s8(*v20);
      v35 = vmvnq_s8(v34);
      v36 = vqaddq_u32(vmull_lane_u16(*v33.i8, *v35.i8, 3), vmull_lane_u16(*v34.i8, *v33.i8, 3));
      a13 = vmull_high_laneq_u16(v33, v35, 7);
      v37 = vqaddq_u32(a13, vmull_high_laneq_u16(v34, v33, 7));
      v38 = vaddq_s32(vminq_u32(v36, v24), v25);
      v39 = vaddq_s32(vminq_u32(v37, v24), v25);
      *v20 = vrev16q_s8(vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v38, v38, 0x10uLL), 0x10uLL), vsraq_n_u32(v39, v39, 0x10uLL), 0x10uLL));
      v21 += v22;
      v32 -= 2;
      v18 = (v18 + v23);
      v20 = (v20 + v23);
    }

    while (v32 > 1);
    v17 = v17 - v31 + v32;
LABEL_31:
    if (v17 <= 1)
    {
      goto LABEL_34;
    }
  }

  v46 = 0;
  while (1)
  {
    v47 = vrev16q_s8(*(v18 + v46));
    v48 = vrev16q_s8(*(v20 + v46));
    a13.i32[0] = v26;
    v49 = vqtbl1q_s8(a13, xmmword_18439C6F0);
    v50 = vaddq_s32(vminq_u32(vmull_u16(*v47.i8, *v49.i8), v24), v25);
    *v50.i8 = vqshrn_n_u32(vsraq_n_u32(v50, v50, 0x10uLL), 0x10uLL);
    v51 = vaddq_s32(vminq_u32(vmull_high_u16(v47, v49), v24), v25);
    *v51.i8 = vqshrn_n_u32(vsraq_n_u32(v51, v51, 0x10uLL), 0x10uLL);
    v52 = vmvnq_s8(v48);
    v53 = vmvnq_s8(v49);
    v54 = vmull_u16(*v48.i8, *v53.i8);
    a13 = vqaddq_u32(vmull_laneq_u16(*v51.i8, v52, 7), vmull_high_u16(v48, v53));
    v55 = vmull_high_lane_u16(v48, *v51.i8, 3);
    v56 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vmull_lane_u16(*v50.i8, *v52.i8, 3), v54), vmull_lane_u16(*v48.i8, *v50.i8, 3)), v24), v25);
    v57 = vaddq_s32(vminq_u32(vqaddq_u32(a13, v55), v24), v25);
    *(v20 + v46) = vrev16q_s8(vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v56, v56, 0x10uLL), 0x10uLL), vsraq_n_u32(v57, v57, 0x10uLL), 0x10uLL));
    v21 += v22;
    v17 -= 2;
    if (v17 < 2)
    {
      break;
    }

    v26 = *v21;
    v46 += v23;
    if ((v26 - 1) >= 0xFFFEu)
    {
      v18 = (v18 + v46);
      v20 = (v20 + v46);
      goto LABEL_31;
    }
  }

  v18 = (v18 + v23 + v46);
  v20 = (v20 + v23 + v46);
LABEL_34:
  v58 = v17 + a16;
  if (v58)
  {
    v59 = vdupq_n_s32(0xFFFE8000);
    v60.i64[0] = 0x800000008000;
    v60.i64[1] = 0x800000008000;
    do
    {
      if (*v21)
      {
        a9.i32[0] = *v21;
        v61 = vrev16_s8(*v20->i8);
        v62 = vdup_lane_s8(*a9.i8, 0);
        v63 = vaddq_s32(vminq_u32(vmull_u16(vrev16_s8(*v18->i8), v62), v59), v60);
        *v63.i8 = vqshrn_n_u32(vsraq_n_u32(v63, v63, 0x10uLL), 0x10uLL);
        a9 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vmull_lane_u16(*v63.i8, vmvn_s8(v61), 3), vmull_u16(v61, vmvn_s8(v62))), vmull_lane_u16(v61, *v63.i8, 3)), v59), v60);
        *a9.i8 = vrev16_s8(vqshrn_n_u32(vsraq_n_u32(a9, a9, 0x10uLL), 0x10uLL));
        v20->i64[0] = a9.i64[0];
      }

      v64 = &v18->i8[8 * a6];
      v21 += a6;
      if (v64 >= v19)
      {
        v65 = -a5;
      }

      else
      {
        v65 = 0;
      }

      v18 = &v64[8 * v65];
      v20 = (v20 + 8 * a6);
      --v58;
    }

    while (v58);
  }

  *result = v18;
  *a3 = v19;
  *a2 = v20;
  *a4 = v21;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)8,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, double a7, double a8, int32x4_t a9, double a10, double a11, double a12, uint16x8_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  v17 = a17;
  v18 = *result;
  v19 = *a3;
  v20 = *a2;
  v21 = *a4;
  if (a17 < 2)
  {
    goto LABEL_34;
  }

  v22 = 2 * a6;
  v23 = 8 * v22;
  v24 = vdupq_n_s32(0xFFFE8000);
  v25.i64[0] = 0x800000008000;
  v25.i64[1] = 0x800000008000;
  a9.i64[0] = -1;
  a9.i64[1] = -1;
  while (1)
  {
    v26 = *v21;
    if (!*v21)
    {
      v37 = &v21[v17];
      v38 = v21;
      do
      {
        v39 = v38++;
      }

      while (v38 <= v37 && (vminvq_u8(vceqzq_s8(*v39)) & 0x80) != 0);
      do
      {
        v40 = v39;
        v39 = (v39 + 4);
      }

      while (v39 <= v37 && !v40->i32[0]);
      if (v40 < v37)
      {
        while (!v40->i8[0])
        {
          v40 = (v40 + 1);
          if (v40 >= v37)
          {
            v40 = &v21[v17];
            break;
          }
        }
      }

      v41 = v40 - v21;
      v42 = (v40 - v21) * a6;
      v18 = (v18 + 8 * v42);
      v20 = (v20 + 8 * v42);
      v21 += v42;
      v17 -= v41;
      goto LABEL_31;
    }

    if (v26 != 0xFFFF)
    {
      break;
    }

    v27 = &v21[v17];
    v28 = v21;
    do
    {
      v29 = v28++;
    }

    while (v28 <= v27 && (vminvq_u8(vceqq_s8(*v29, a9)) & 0x80) != 0);
    do
    {
      v30 = v29;
      v29 = (v29 + 4);
    }

    while (v29 <= v27 && v30->i32[0] == -1);
    if (v30 < v27)
    {
      while (v30->u8[0] == 255)
      {
        v30 = (v30 + 1);
        if (v30 >= v27)
        {
          v30 = &v21[v17];
          break;
        }
      }
    }

    v31 = v30 - v21;
    v32 = v30 - v21;
    do
    {
      v33 = vrev16q_s8(*v18);
      v34 = vrev16q_s8(*v20);
      v35 = vaddq_s32(vminq_u32(vmull_lane_u16(*v34.i8, *v33.i8, 3), v24), v25);
      v36 = vaddq_s32(vminq_u32(vmull_high_laneq_u16(v34, v33, 7), v24), v25);
      a13 = vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v35, v35, 0x10uLL), 0x10uLL), vsraq_n_u32(v36, v36, 0x10uLL), 0x10uLL);
      *v20 = vrev16q_s8(vqsubq_u16(v34, a13));
      v21 += v22;
      v32 -= 2;
      v18 = (v18 + v23);
      v20 = (v20 + v23);
    }

    while (v32 > 1);
    v17 = v17 - v31 + v32;
LABEL_31:
    if (v17 <= 1)
    {
      goto LABEL_34;
    }
  }

  v43 = 0;
  while (1)
  {
    v44 = vrev16q_s8(*(v18 + v43));
    v45 = vrev16q_s8(*(v20 + v43));
    a13.i32[0] = v26;
    v46 = vqtbl1q_s8(a13, xmmword_18439C6F0);
    v47 = vmull_lane_u16(*v46.i8, *v44.i8, 3);
    v48 = vmull_high_laneq_u16(v46, v44, 7);
    v49 = vaddq_s32(vminq_u32(v47, v24), v25);
    v50 = vaddq_s32(vminq_u32(v48, v24), v25);
    v51 = vaddq_s32(vminq_u32(vmull_u16(*v45.i8, vqshrn_n_u32(vsraq_n_u32(v49, v49, 0x10uLL), 0x10uLL)), v24), v25);
    v52 = vaddq_s32(vminq_u32(vmull_u16(*&vextq_s8(v45, v45, 8uLL), vqshrn_n_u32(vsraq_n_u32(v50, v50, 0x10uLL), 0x10uLL)), v24), v25);
    a13 = vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v51, v51, 0x10uLL), 0x10uLL), vsraq_n_u32(v52, v52, 0x10uLL), 0x10uLL);
    *(v20 + v43) = vrev16q_s8(vqsubq_u16(v45, a13));
    v21 += v22;
    v17 -= 2;
    if (v17 < 2)
    {
      break;
    }

    v26 = *v21;
    v43 += v23;
    if ((v26 - 1) >= 0xFFFEu)
    {
      v18 = (v18 + v43);
      v20 = (v20 + v43);
      goto LABEL_31;
    }
  }

  v18 = (v18 + v23 + v43);
  v20 = (v20 + v23 + v43);
LABEL_34:
  v53 = v17 + a16;
  if (v53)
  {
    v54 = vdupq_n_s32(0xFFFE8000);
    v55.i64[0] = 0x800000008000;
    v55.i64[1] = 0x800000008000;
    do
    {
      if (*v21)
      {
        a9.i32[0] = *v21;
        v56 = vrev16_s8(*v20->i8);
        v57 = vaddq_s32(vminq_u32(vmull_lane_u16(vdup_lane_s8(*a9.i8, 0), vrev16_s8(*v18->i8), 3), v54), v55);
        a9 = vaddq_s32(vminq_u32(vmull_u16(v56, vqshrn_n_u32(vsraq_n_u32(v57, v57, 0x10uLL), 0x10uLL)), v54), v55);
        *a9.i8 = vrev16_s8(vqsub_u16(v56, vqshrn_n_u32(vsraq_n_u32(a9, a9, 0x10uLL), 0x10uLL)));
        v20->i64[0] = a9.i64[0];
      }

      v58 = &v18->i8[8 * a6];
      v21 += a6;
      if (v58 >= v19)
      {
        v59 = -a5;
      }

      else
      {
        v59 = 0;
      }

      v18 = &v58[8 * v59];
      v20 = (v20 + 8 * a6);
      --v53;
    }

    while (v53);
  }

  *result = v18;
  *a3 = v19;
  *a2 = v20;
  *a4 = v21;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)7,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, double a7, double a8, int32x4_t a9, double a10, double a11, double a12, uint16x8_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  v17 = a17;
  v18 = *result;
  v19 = *a3;
  v20 = *a2;
  v21 = *a4;
  if (a17 < 2)
  {
    goto LABEL_34;
  }

  v22 = 2 * a6;
  v23 = 8 * v22;
  v24 = vdupq_n_s32(0xFFFE8000);
  v25.i64[0] = 0x800000008000;
  v25.i64[1] = 0x800000008000;
  a9.i64[0] = -1;
  a9.i64[1] = -1;
  while (1)
  {
    v26 = *v21;
    if (!*v21)
    {
      v38 = &v21[v17];
      v39 = v21;
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
            v41 = &v21[v17];
            break;
          }
        }
      }

      v42 = v41 - v21;
      v43 = (v41 - v21) * a6;
      v18 = (v18 + 8 * v43);
      v20 = (v20 + 8 * v43);
      v21 += v43;
      v17 -= v42;
      goto LABEL_31;
    }

    if (v26 != 0xFFFF)
    {
      break;
    }

    v27 = &v21[v17];
    v28 = v21;
    do
    {
      v29 = v28++;
    }

    while (v28 <= v27 && (vminvq_u8(vceqq_s8(*v29, a9)) & 0x80) != 0);
    do
    {
      v30 = v29;
      v29 = (v29 + 4);
    }

    while (v29 <= v27 && v30->i32[0] == -1);
    if (v30 < v27)
    {
      while (v30->u8[0] == 255)
      {
        v30 = (v30 + 1);
        if (v30 >= v27)
        {
          v30 = &v21[v17];
          break;
        }
      }
    }

    v31 = v30 - v21;
    v32 = v30 - v21;
    do
    {
      v33 = vrev16q_s8(*v18);
      v34 = vrev16q_s8(*v20);
      a13 = vmull_lane_u16(*v34.i8, *v33.i8, 3);
      v35 = vmull_high_laneq_u16(v34, v33, 7);
      v36 = vaddq_s32(vminq_u32(a13, v24), v25);
      v37 = vaddq_s32(vminq_u32(v35, v24), v25);
      *v20 = vrev16q_s8(vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v36, v36, 0x10uLL), 0x10uLL), vsraq_n_u32(v37, v37, 0x10uLL), 0x10uLL));
      v21 += v22;
      v32 -= 2;
      v18 = (v18 + v23);
      v20 = (v20 + v23);
    }

    while (v32 > 1);
    v17 = v17 - v31 + v32;
LABEL_31:
    if (v17 <= 1)
    {
      goto LABEL_34;
    }
  }

  v44 = 0;
  while (1)
  {
    v45 = vrev16q_s8(*(v18 + v44));
    v46 = vrev16q_s8(*(v20 + v44));
    a13.i32[0] = v26;
    v47 = vqtbl1q_s8(a13, xmmword_18439C6F0);
    v48 = vaddq_s32(vminq_u32(vmull_lane_u16(*v47.i8, *v45.i8, 3), v24), v25);
    v49 = vaddq_s32(vminq_u32(vmull_high_laneq_u16(v47, v45, 7), v24), v25);
    v50 = vqsubq_u16(v47, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v48, v48, 0x10uLL), 0x10uLL), vsraq_n_u32(v49, v49, 0x10uLL), 0x10uLL));
    v51 = vaddq_s32(vminq_u32(vmull_u16(*v46.i8, *v50.i8), v24), v25);
    v52 = vaddq_s32(vminq_u32(vmull_high_u16(v46, v50), v24), v25);
    a13 = vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v51, v51, 0x10uLL), 0x10uLL), vsraq_n_u32(v52, v52, 0x10uLL), 0x10uLL);
    *(v20 + v44) = vrev16q_s8(vqsubq_u16(v46, a13));
    v21 += v22;
    v17 -= 2;
    if (v17 < 2)
    {
      break;
    }

    v26 = *v21;
    v44 += v23;
    if ((v26 - 1) >= 0xFFFEu)
    {
      v18 = (v18 + v44);
      v20 = (v20 + v44);
      goto LABEL_31;
    }
  }

  v18 = (v18 + v23 + v44);
  v20 = (v20 + v23 + v44);
LABEL_34:
  v53 = v17 + a16;
  if (v53)
  {
    v54 = vdupq_n_s32(0xFFFE8000);
    v55.i64[0] = 0x800000008000;
    v55.i64[1] = 0x800000008000;
    do
    {
      if (*v21)
      {
        a9.i32[0] = *v21;
        v56 = vrev16_s8(*v20->i8);
        v57 = vdup_lane_s8(*a9.i8, 0);
        v58 = vaddq_s32(vminq_u32(vmull_lane_u16(v57, vrev16_s8(*v18->i8), 3), v54), v55);
        a9 = vaddq_s32(vminq_u32(vmull_u16(v56, vqsub_u16(v57, vqshrn_n_u32(vsraq_n_u32(v58, v58, 0x10uLL), 0x10uLL))), v54), v55);
        *a9.i8 = vrev16_s8(vqsub_u16(v56, vqshrn_n_u32(vsraq_n_u32(a9, a9, 0x10uLL), 0x10uLL)));
        v20->i64[0] = a9.i64[0];
      }

      v59 = &v18->i8[8 * a6];
      v21 += a6;
      if (v59 >= v19)
      {
        v60 = -a5;
      }

      else
      {
        v60 = 0;
      }

      v18 = &v59[8 * v60];
      v20 = (v20 + 8 * a6);
      --v53;
    }

    while (v53);
  }

  *result = v18;
  *a3 = v19;
  *a2 = v20;
  *a4 = v21;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)6,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, double a8, double a9, double a10, int32x4_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v15 = a14;
  v16 = *result;
  v17 = *a3;
  v18 = *a2;
  v19 = *a4;
  if (a14 < 2)
  {
    goto LABEL_37;
  }

  if (a7)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  v21.i64[0] = 0xFFFF000000000000;
  v21.i64[1] = 0xFFFF000000000000;
  v22 = vandq_s8(vdupq_n_s16(v20), v21);
  v23 = 2 * a6;
  v24 = 8 * v23;
  v25 = vdupq_n_s32(0xFFFE8000);
  a11.i64[0] = 0x800000008000;
  a11.i64[1] = 0x800000008000;
  v26.i64[0] = -1;
  v26.i64[1] = -1;
  while (1)
  {
    v27 = *v19;
    if (!*v19)
    {
      v43 = &v19[v15];
      v44 = v19;
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
            v46 = &v19[v15];
            break;
          }
        }
      }

      v47 = v46 - v19;
      v48 = (v46 - v19) * a6;
      v16 = (v16 + 8 * v48);
      v18 = (v18 + 8 * v48);
      v19 += v48;
      v15 -= v47;
      goto LABEL_34;
    }

    if (v27 != 0xFFFF)
    {
      break;
    }

    v28 = &v19[v15];
    v29 = v19;
    do
    {
      v30 = v29++;
    }

    while (v29 <= v28 && (vminvq_u8(vceqq_s8(*v30, v26)) & 0x80) != 0);
    do
    {
      v31 = v30;
      v30 = (v30 + 4);
    }

    while (v30 <= v28 && v31->i32[0] == -1);
    if (v31 < v28)
    {
      while (v31->u8[0] == 255)
      {
        v31 = (v31 + 1);
        if (v31 >= v28)
        {
          v31 = &v19[v15];
          break;
        }
      }
    }

    v32 = v31 - v19;
    v33 = v31 - v19;
    do
    {
      v34 = vrev16q_s8(*v18);
      v35 = vorrq_s8(v22, vrev16q_s8(*v16));
      v36 = vqtbl1q_s8(v34, xmmword_18439C6E0);
      v37 = vbicq_s8(v34, vceqzq_s16(v36));
      v38 = vmvnq_s8(v36);
      v39 = vmull_u16(*v35.i8, *v38.i8);
      v40 = vmull_high_u16(v35, v38);
      v41 = vaddq_s32(vminq_u32(v39, v25), a11);
      v42 = vaddq_s32(vminq_u32(v40, v25), a11);
      v14 = vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v41, v41, 0x10uLL), 0x10uLL), vsraq_n_u32(v42, v42, 0x10uLL), 0x10uLL);
      *v18 = vrev16q_s8(vqaddq_u16(v37, v14));
      v19 += v23;
      v33 -= 2;
      v16 = (v16 + v24);
      v18 = (v18 + v24);
    }

    while (v33 > 1);
    v15 = v15 - v32 + v33;
LABEL_34:
    if (v15 <= 1)
    {
      goto LABEL_37;
    }
  }

  v49 = 0;
  while (1)
  {
    v50 = vrev16q_s8(*(v18 + v49));
    v14.i32[0] = v27;
    v51 = vqtbl1q_s8(v14, xmmword_18439C6F0);
    v52 = vorrq_s8(v22, vrev16q_s8(*(v16 + v49)));
    v53 = vaddq_s32(vminq_u32(vmull_u16(*v52.i8, *v51.i8), v25), a11);
    v54 = vaddq_s32(vminq_u32(vmull_high_u16(v52, v51), v25), a11);
    v55 = vqtbl1q_s8(v50, xmmword_18439C6E0);
    v56 = vbicq_s8(v50, vceqzq_s16(v55));
    v57 = vmvnq_s8(v55);
    v58 = vaddq_s32(vminq_u32(vmull_u16(vqshrn_n_u32(vsraq_n_u32(v53, v53, 0x10uLL), 0x10uLL), *v57.i8), v25), a11);
    v59 = vaddq_s32(vminq_u32(vmull_u16(vqshrn_n_u32(vsraq_n_u32(v54, v54, 0x10uLL), 0x10uLL), *&vextq_s8(v57, v57, 8uLL)), v25), a11);
    v14 = vceqzq_s16(v51);
    *(v18 + v49) = vrev16q_s8(vbslq_s8(v14, v50, vqaddq_u16(v56, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v58, v58, 0x10uLL), 0x10uLL), vsraq_n_u32(v59, v59, 0x10uLL), 0x10uLL))));
    v19 += v23;
    v15 -= 2;
    if (v15 < 2)
    {
      break;
    }

    v27 = *v19;
    v49 += v24;
    if ((v27 - 1) >= 0xFFFEu)
    {
      v16 = (v16 + v49);
      v18 = (v18 + v49);
      goto LABEL_34;
    }
  }

  v16 = (v16 + v24 + v49);
  v18 = (v18 + v24 + v49);
LABEL_37:
  v60 = v15 + a13;
  if (v60)
  {
    v61 = 0;
    if (a7)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    v61.i16[3] = v62;
    v63 = vdupq_n_s32(0xFFFE8000);
    v64.i64[0] = 0x800000008000;
    v64.i64[1] = 0x800000008000;
    do
    {
      if (*v19)
      {
        a11.i32[0] = *v19;
        v65 = vrev16_s8(*v18->i8);
        v66 = vaddq_s32(vminq_u32(vmull_u16(vorr_s8(v61, vrev16_s8(*v16->i8)), vdup_lane_s8(*a11.i8, 0)), v63), v64);
        v67 = vdup_lane_s16(v65, 3);
        a11 = vaddq_s32(vminq_u32(vmull_u16(vqshrn_n_u32(vsraq_n_u32(v66, v66, 0x10uLL), 0x10uLL), vmvn_s8(v67)), v63), v64);
        *a11.i8 = vrev16_s8(vqadd_u16(vbic_s8(v65, vceqz_s16(v67)), vqshrn_n_u32(vsraq_n_u32(a11, a11, 0x10uLL), 0x10uLL)));
        v18->i64[0] = a11.i64[0];
      }

      v68 = &v16->i8[8 * a6];
      v19 += a6;
      if (v68 >= v17)
      {
        v69 = -a5;
      }

      else
      {
        v69 = 0;
      }

      v16 = &v68[8 * v69];
      v18 = (v18 + 8 * a6);
      --v60;
    }

    while (v60);
  }

  *result = v16;
  *a3 = v17;
  *a2 = v18;
  *a4 = v19;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)5,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, double a7, double a8, int32x4_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v13 = a13;
  v14 = *result;
  v15 = *a3;
  v16 = *a2;
  v17 = *a4;
  if (a13 < 2)
  {
    goto LABEL_34;
  }

  v18 = 2 * a6;
  v19 = 8 * v18;
  v20 = vdupq_n_s32(0xFFFE8000);
  v21.i64[0] = 0x800000008000;
  v21.i64[1] = 0x800000008000;
  a9.i64[0] = -1;
  a9.i64[1] = -1;
  while (1)
  {
    v22 = *v17;
    if (!*v17)
    {
      v38 = &v17[v13];
      v39 = v17;
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
            v41 = &v17[v13];
            break;
          }
        }
      }

      v42 = v41 - v17;
      v43 = (v41 - v17) * a6;
      v14 = (v14 + 8 * v43);
      v16 = (v16 + 8 * v43);
      v17 += v43;
      v13 -= v42;
      goto LABEL_31;
    }

    if (v22 != 0xFFFF)
    {
      break;
    }

    v23 = &v17[v13];
    v24 = v17;
    do
    {
      v25 = v24++;
    }

    while (v24 <= v23 && (vminvq_u8(vceqq_s8(*v25, a9)) & 0x80) != 0);
    do
    {
      v26 = v25;
      v25 = (v25 + 4);
    }

    while (v25 <= v23 && v26->i32[0] == -1);
    if (v26 < v23)
    {
      while (v26->u8[0] == 255)
      {
        v26 = (v26 + 1);
        if (v26 >= v23)
        {
          v26 = &v17[v13];
          break;
        }
      }
    }

    v27 = v26 - v17;
    v28 = v26 - v17;
    do
    {
      v29 = vrev16q_s8(*v14);
      v30 = vrev16q_s8(*v16);
      v31 = vaddq_s32(vminq_u32(vmull_lane_u16(*v30.i8, *v29.i8, 3), v20), v21);
      v32 = vaddq_s32(vminq_u32(vmull_high_laneq_u16(v30, v29, 7), v20), v21);
      v33 = vqsubq_u16(v30, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v31, v31, 0x10uLL), 0x10uLL), vsraq_n_u32(v32, v32, 0x10uLL), 0x10uLL));
      v34 = vmull_lane_u16(*v29.i8, *v30.i8, 3);
      v35 = vmull_high_laneq_u16(v29, v30, 7);
      v36 = vaddq_s32(vminq_u32(v34, v20), v21);
      v37 = vaddq_s32(vminq_u32(v35, v20), v21);
      *v16 = vrev16q_s8(vqaddq_u16(v33, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v36, v36, 0x10uLL), 0x10uLL), vsraq_n_u32(v37, v37, 0x10uLL), 0x10uLL)));
      v17 += v18;
      v28 -= 2;
      v14 = (v14 + v19);
      v16 = (v16 + v19);
    }

    while (v28 > 1);
    v13 = v13 - v27 + v28;
LABEL_31:
    if (v13 <= 1)
    {
      goto LABEL_34;
    }
  }

  v44 = 0;
  while (1)
  {
    v45 = *(v16 + v44);
    v46 = vrev16q_s8(*(v14 + v44));
    v47 = vrev16q_s8(v45);
    v45.i32[0] = v22;
    v48 = vqtbl1q_s8(v45, xmmword_18439C6F0);
    v49 = vmull_u16(*v46.i8, *v48.i8);
    v50 = vmull_high_u16(v46, v48);
    v51 = vaddq_s32(vminq_u32(v49, v20), v21);
    *v51.i8 = vqshrn_n_u32(vsraq_n_u32(v51, v51, 0x10uLL), 0x10uLL);
    v52 = vaddq_s32(vminq_u32(v50, v20), v21);
    *v52.i8 = vqshrn_n_u32(vsraq_n_u32(v52, v52, 0x10uLL), 0x10uLL);
    v53 = vaddq_s32(vminq_u32(vmull_lane_u16(*v47.i8, *v51.i8, 3), v20), v21);
    v54 = vaddq_s32(vminq_u32(vmull_high_lane_u16(v47, *v52.i8, 3), v20), v21);
    v55 = vqsubq_u16(v47, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v53, v53, 0x10uLL), 0x10uLL), vsraq_n_u32(v54, v54, 0x10uLL), 0x10uLL));
    v56 = vmull_lane_u16(*v51.i8, *v47.i8, 3);
    v57 = vmull_laneq_u16(*v52.i8, v47, 7);
    v58 = vaddq_s32(vminq_u32(v56, v20), v21);
    v59 = vaddq_s32(vminq_u32(v57, v20), v21);
    *(v16 + v44) = vrev16q_s8(vqaddq_u16(v55, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v58, v58, 0x10uLL), 0x10uLL), vsraq_n_u32(v59, v59, 0x10uLL), 0x10uLL)));
    v17 += v18;
    v13 -= 2;
    if (v13 < 2)
    {
      break;
    }

    v22 = *v17;
    v44 += v19;
    if ((v22 - 1) >= 0xFFFEu)
    {
      v14 = (v14 + v44);
      v16 = (v16 + v44);
      goto LABEL_31;
    }
  }

  v14 = (v14 + v19 + v44);
  v16 = (v16 + v19 + v44);
LABEL_34:
  v60 = v13 + a12;
  if (v60)
  {
    v61 = vdupq_n_s32(0xFFFE8000);
    v62.i64[0] = 0x800000008000;
    v62.i64[1] = 0x800000008000;
    do
    {
      if (*v17)
      {
        a9.i32[0] = *v17;
        v63 = vrev16_s8(*v16->i8);
        v64 = vaddq_s32(vminq_u32(vmull_u16(vrev16_s8(*v14->i8), vdup_lane_s8(*a9.i8, 0)), v61), v62);
        *v64.i8 = vqshrn_n_u32(vsraq_n_u32(v64, v64, 0x10uLL), 0x10uLL);
        v65 = vaddq_s32(vminq_u32(vmull_lane_u16(v63, *v64.i8, 3), v61), v62);
        a9 = vaddq_s32(vminq_u32(vmull_lane_u16(*v64.i8, v63, 3), v61), v62);
        *a9.i8 = vrev16_s8(vqadd_u16(vqsub_u16(v63, vqshrn_n_u32(vsraq_n_u32(v65, v65, 0x10uLL), 0x10uLL)), vqshrn_n_u32(vsraq_n_u32(a9, a9, 0x10uLL), 0x10uLL)));
        v16->i64[0] = a9.i64[0];
      }

      v66 = &v14->i8[8 * a6];
      v17 += a6;
      if (v66 >= v15)
      {
        v67 = -a5;
      }

      else
      {
        v67 = 0;
      }

      v14 = &v66[8 * v67];
      v16 = (v16 + 8 * a6);
      --v60;
    }

    while (v60);
  }

  *result = v14;
  *a3 = v15;
  *a2 = v16;
  *a4 = v17;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)4,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, double a8, double a9, double a10, int32x4_t a11, double a12, double a13, double a14, int8x16_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v18 = a18;
  v19 = *result;
  v20 = *a3;
  v21 = *a2;
  v22 = *a4;
  if (a18 < 2)
  {
    goto LABEL_37;
  }

  if (a7)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24.i64[0] = 0xFFFF000000000000;
  v24.i64[1] = 0xFFFF000000000000;
  v25 = vandq_s8(vdupq_n_s16(v23), v24);
  v26 = 2 * a6;
  v27 = 8 * v26;
  v28 = vdupq_n_s32(0xFFFE8000);
  v29.i64[0] = 0x800000008000;
  v29.i64[1] = 0x800000008000;
  a11.i64[0] = -1;
  a11.i64[1] = -1;
  while (1)
  {
    v30 = *v22;
    if (!*v22)
    {
      v41 = &v22[v18];
      v42 = v22;
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
            v44 = &v22[v18];
            break;
          }
        }
      }

      v45 = v44 - v22;
      v46 = (v44 - v22) * a6;
      v19 = (v19 + 8 * v46);
      v21 = (v21 + 8 * v46);
      v22 += v46;
      v18 -= v45;
      goto LABEL_34;
    }

    if (v30 != 0xFFFF)
    {
      break;
    }

    v31 = &v22[v18];
    v32 = v22;
    do
    {
      v33 = v32++;
    }

    while (v32 <= v31 && (vminvq_u8(vceqq_s8(*v33, a11)) & 0x80) != 0);
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
          v34 = &v22[v18];
          break;
        }
      }
    }

    v35 = v34 - v22;
    v36 = v34 - v22;
    do
    {
      v37 = vrev16q_s8(*v21);
      v38 = vorrq_s8(v25, vrev16q_s8(*v19));
      v39 = vaddq_s32(vminq_u32(vmull_lane_u16(*v38.i8, *v37.i8, 3), v28), v29);
      v40 = vaddq_s32(vminq_u32(vmull_high_laneq_u16(v38, v37, 7), v28), v29);
      a15 = vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v39, v39, 0x10uLL), 0x10uLL), vsraq_n_u32(v40, v40, 0x10uLL), 0x10uLL);
      *v21 = vrev16q_s8(vqsubq_u16(v38, a15));
      v22 += v26;
      v36 -= 2;
      v19 = (v19 + v27);
      v21 = (v21 + v27);
    }

    while (v36 > 1);
    v18 = v18 - v35 + v36;
LABEL_34:
    if (v18 <= 1)
    {
      goto LABEL_37;
    }
  }

  v47 = 0;
  while (1)
  {
    v48 = vrev16q_s8(*(v21 + v47));
    a15.i32[0] = v30;
    v49 = vqtbl1q_s8(a15, xmmword_18439C6F0);
    v50 = vorrq_s8(v25, vrev16q_s8(*(v19 + v47)));
    v51 = vaddq_s32(vminq_u32(vmull_u16(*v50.i8, *v49.i8), v28), v29);
    v52 = vaddq_s32(vminq_u32(vmull_high_u16(v50, v49), v28), v29);
    a15 = vmvnq_s8(v49);
    v53 = vmvnq_s8(v48);
    v54 = vqaddq_u32(vmull_high_u16(v48, a15), vmull_laneq_u16(vqshrn_n_u32(vsraq_n_u32(v52, v52, 0x10uLL), 0x10uLL), v53, 7));
    v55 = vaddq_s32(vminq_u32(vqaddq_u32(vmull_u16(*v48.i8, *a15.i8), vmull_lane_u16(vqshrn_n_u32(vsraq_n_u32(v51, v51, 0x10uLL), 0x10uLL), *v53.i8, 3)), v28), v29);
    v56 = vaddq_s32(vminq_u32(v54, v28), v29);
    *(v21 + v47) = vrev16q_s8(vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v55, v55, 0x10uLL), 0x10uLL), vsraq_n_u32(v56, v56, 0x10uLL), 0x10uLL));
    v22 += v26;
    v18 -= 2;
    if (v18 < 2)
    {
      break;
    }

    v30 = *v22;
    v47 += v27;
    if ((v30 - 1) >= 0xFFFEu)
    {
      v19 = (v19 + v47);
      v21 = (v21 + v47);
      goto LABEL_34;
    }
  }

  v19 = (v19 + v27 + v47);
  v21 = (v21 + v27 + v47);
LABEL_37:
  v57 = v18 + a17;
  if (v57)
  {
    v58 = 0;
    if (a7)
    {
      v59 = 0;
    }

    else
    {
      v59 = -1;
    }

    v58.i16[3] = v59;
    v60 = vdupq_n_s32(0xFFFE8000);
    v61.i64[0] = 0x800000008000;
    v61.i64[1] = 0x800000008000;
    do
    {
      if (*v22)
      {
        a11.i32[0] = *v22;
        v62 = vrev16_s8(*v21->i8);
        v63 = vdup_lane_s8(*a11.i8, 0);
        v64 = vaddq_s32(vminq_u32(vmull_u16(vorr_s8(v58, vrev16_s8(*v19->i8)), v63), v60), v61);
        a11 = vaddq_s32(vminq_u32(vqaddq_u32(vmull_u16(v62, vmvn_s8(v63)), vmull_lane_u16(vqshrn_n_u32(vsraq_n_u32(v64, v64, 0x10uLL), 0x10uLL), vmvn_s8(v62), 3)), v60), v61);
        *a11.i8 = vrev16_s8(vqshrn_n_u32(vsraq_n_u32(a11, a11, 0x10uLL), 0x10uLL));
        v21->i64[0] = a11.i64[0];
      }

      v65 = &v19->i8[8 * a6];
      v22 += a6;
      if (v65 >= v20)
      {
        v66 = -a5;
      }

      else
      {
        v66 = 0;
      }

      v19 = &v65[8 * v66];
      v21 = (v21 + 8 * a6);
      --v57;
    }

    while (v57);
  }

  *result = v19;
  *a3 = v20;
  *a2 = v21;
  *a4 = v22;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)3,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, double a8, double a9, double a10, int32x4_t a11, double a12, double a13, double a14, uint32x4_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v18 = a18;
  v19 = *result;
  v20 = *a3;
  v21 = *a2;
  v22 = *a4;
  if (a18 < 2)
  {
    goto LABEL_37;
  }

  if (a7)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24.i64[0] = 0xFFFF000000000000;
  v24.i64[1] = 0xFFFF000000000000;
  v25 = vandq_s8(vdupq_n_s16(v23), v24);
  v26 = 2 * a6;
  v27 = 8 * v26;
  v28 = vdupq_n_s32(0xFFFE8000);
  v29.i64[0] = 0x800000008000;
  v29.i64[1] = 0x800000008000;
  a11.i64[0] = -1;
  a11.i64[1] = -1;
  while (1)
  {
    v30 = *v22;
    if (!*v22)
    {
      v42 = &v22[v18];
      v43 = v22;
      do
      {
        v44 = v43++;
      }

      while (v43 <= v42 && (vminvq_u8(vceqzq_s8(*v44)) & 0x80) != 0);
      do
      {
        v45 = v44;
        v44 = (v44 + 4);
      }

      while (v44 <= v42 && !v45->i32[0]);
      if (v45 < v42)
      {
        while (!v45->i8[0])
        {
          v45 = (v45 + 1);
          if (v45 >= v42)
          {
            v45 = &v22[v18];
            break;
          }
        }
      }

      v46 = v45 - v22;
      v47 = (v45 - v22) * a6;
      v19 = (v19 + 8 * v47);
      v21 = (v21 + 8 * v47);
      v22 += v47;
      v18 -= v46;
      goto LABEL_34;
    }

    if (v30 != 0xFFFF)
    {
      break;
    }

    v31 = &v22[v18];
    v32 = v22;
    do
    {
      v33 = v32++;
    }

    while (v32 <= v31 && (vminvq_u8(vceqq_s8(*v33, a11)) & 0x80) != 0);
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
          v34 = &v22[v18];
          break;
        }
      }
    }

    v35 = v34 - v22;
    v36 = v34 - v22;
    do
    {
      v37 = vrev16q_s8(*v21);
      v38 = vorrq_s8(v25, vrev16q_s8(*v19));
      a15 = vmull_lane_u16(*v38.i8, *v37.i8, 3);
      v39 = vmull_high_laneq_u16(v38, v37, 7);
      v40 = vaddq_s32(vminq_u32(a15, v28), v29);
      v41 = vaddq_s32(vminq_u32(v39, v28), v29);
      *v21 = vrev16q_s8(vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v40, v40, 0x10uLL), 0x10uLL), vsraq_n_u32(v41, v41, 0x10uLL), 0x10uLL));
      v22 += v26;
      v36 -= 2;
      v19 = (v19 + v27);
      v21 = (v21 + v27);
    }

    while (v36 > 1);
    v18 = v18 - v35 + v36;
LABEL_34:
    if (v18 <= 1)
    {
      goto LABEL_37;
    }
  }

  v48 = 0;
  while (1)
  {
    v49 = vrev16q_s8(*(v21 + v48));
    a15.i32[0] = v30;
    v50 = vqtbl1q_s8(a15, xmmword_18439C6F0);
    v51 = vorrq_s8(v25, vrev16q_s8(*(v19 + v48)));
    v52 = vaddq_s32(vminq_u32(vmull_u16(*v51.i8, *v50.i8), v28), v29);
    v53 = vaddq_s32(vminq_u32(vmull_high_u16(v51, v50), v28), v29);
    v54 = vmvnq_s8(v50);
    v55 = vqaddq_u32(vmull_u16(*v49.i8, *v54.i8), vmull_lane_u16(vqshrn_n_u32(vsraq_n_u32(v52, v52, 0x10uLL), 0x10uLL), *v49.i8, 3));
    a15 = vmull_high_u16(v49, v54);
    v56 = vqaddq_u32(a15, vmull_laneq_u16(vqshrn_n_u32(vsraq_n_u32(v53, v53, 0x10uLL), 0x10uLL), v49, 7));
    v57 = vaddq_s32(vminq_u32(v55, v28), v29);
    v58 = vaddq_s32(vminq_u32(v56, v28), v29);
    *(v21 + v48) = vrev16q_s8(vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v57, v57, 0x10uLL), 0x10uLL), vsraq_n_u32(v58, v58, 0x10uLL), 0x10uLL));
    v22 += v26;
    v18 -= 2;
    if (v18 < 2)
    {
      break;
    }

    v30 = *v22;
    v48 += v27;
    if ((v30 - 1) >= 0xFFFEu)
    {
      v19 = (v19 + v48);
      v21 = (v21 + v48);
      goto LABEL_34;
    }
  }

  v19 = (v19 + v27 + v48);
  v21 = (v21 + v27 + v48);
LABEL_37:
  v59 = v18 + a17;
  if (v59)
  {
    v60 = 0;
    if (a7)
    {
      v61 = 0;
    }

    else
    {
      v61 = -1;
    }

    v60.i16[3] = v61;
    v62 = vdupq_n_s32(0xFFFE8000);
    v63.i64[0] = 0x800000008000;
    v63.i64[1] = 0x800000008000;
    do
    {
      if (*v22)
      {
        a11.i32[0] = *v22;
        v64 = vrev16_s8(*v21->i8);
        v65 = vdup_lane_s8(*a11.i8, 0);
        v66 = vaddq_s32(vminq_u32(vmull_u16(vorr_s8(v60, vrev16_s8(*v19->i8)), v65), v62), v63);
        a11 = vaddq_s32(vminq_u32(vqaddq_u32(vmull_u16(v64, vmvn_s8(v65)), vmull_lane_u16(vqshrn_n_u32(vsraq_n_u32(v66, v66, 0x10uLL), 0x10uLL), v64, 3)), v62), v63);
        *a11.i8 = vrev16_s8(vqshrn_n_u32(vsraq_n_u32(a11, a11, 0x10uLL), 0x10uLL));
        v21->i64[0] = a11.i64[0];
      }

      v67 = &v19->i8[8 * a6];
      v22 += a6;
      if (v67 >= v20)
      {
        v68 = -a5;
      }

      else
      {
        v68 = 0;
      }

      v19 = &v67[8 * v68];
      v21 = (v21 + 8 * a6);
      --v59;
    }

    while (v59);
  }

  *result = v19;
  *a3 = v20;
  *a2 = v21;
  *a4 = v22;
  return result;
}

int8x16_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)2,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, double a7, double a8, int32x4_t a9, double a10, double a11, double a12, double a13, int8x16_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v18 = a18;
  v19 = *result;
  v20 = *a3;
  v21 = *a2;
  v22 = *a4;
  if (a18 < 2)
  {
    goto LABEL_34;
  }

  v23 = 2 * a6;
  v24 = 8 * v23;
  v25 = vdupq_n_s32(0xFFFE8000);
  a9.i64[0] = 0x800000008000;
  a9.i64[1] = 0x800000008000;
  v26.i64[0] = -1;
  v26.i64[1] = -1;
  while (1)
  {
    v27 = *v22;
    if (!*v22)
    {
      v38 = &v22[v18];
      v39 = v22;
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
            v41 = &v22[v18];
            break;
          }
        }
      }

      v42 = v41 - v22;
      v43 = (v41 - v22) * a6;
      v19 = (v19 + 8 * v43);
      v21 = (v21 + 8 * v43);
      v22 += v43;
      v18 -= v42;
      goto LABEL_31;
    }

    if (v27 != 0xFFFF)
    {
      break;
    }

    v28 = &v22[v18];
    v29 = v22;
    do
    {
      v30 = v29++;
    }

    while (v29 <= v28 && (vminvq_u8(vceqq_s8(*v30, v26)) & 0x80) != 0);
    do
    {
      v31 = v30;
      v30 = (v30 + 4);
    }

    while (v30 <= v28 && v31->i32[0] == -1);
    if (v31 < v28)
    {
      while (v31->u8[0] == 255)
      {
        v31 = (v31 + 1);
        if (v31 >= v28)
        {
          v31 = &v22[v18];
          break;
        }
      }
    }

    v32 = v31 - v22;
    v33 = v31 - v22;
    do
    {
      v34 = vrev16q_s8(*v19);
      v35 = vrev16q_s8(*v21);
      a14 = vbicq_s8(v34, vceqzq_s16(vqtbl1q_s8(v34, xmmword_18439C6E0)));
      v36 = vaddq_s32(vminq_u32(vmull_lane_u16(*v35.i8, *v34.i8, 3), v25), a9);
      v37 = vaddq_s32(vminq_u32(vmull_high_laneq_u16(v35, v34, 7), v25), a9);
      *v21 = vrev16q_s8(vqaddq_u16(a14, vqsubq_u16(v35, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v36, v36, 0x10uLL), 0x10uLL), vsraq_n_u32(v37, v37, 0x10uLL), 0x10uLL))));
      v22 += v23;
      v33 -= 2;
      v19 = (v19 + v24);
      v21 = (v21 + v24);
    }

    while (v33 > 1);
    v18 = v18 - v32 + v33;
LABEL_31:
    if (v18 <= 1)
    {
      goto LABEL_34;
    }
  }

  v44 = 0;
  while (1)
  {
    v45 = vrev16q_s8(*(v19 + v44));
    v46 = vrev16q_s8(*(v21 + v44));
    a14.i32[0] = v27;
    v47 = vqtbl1q_s8(a14, xmmword_18439C6F0);
    v48 = vmull_u16(*v45.i8, *v47.i8);
    v49 = vmull_high_u16(v45, v47);
    v50 = vaddq_s32(vminq_u32(v48, v25), a9);
    *v50.i8 = vqshrn_n_u32(vsraq_n_u32(v50, v50, 0x10uLL), 0x10uLL);
    v51 = vaddq_s32(vminq_u32(v49, v25), a9);
    v52 = vsraq_n_u32(v51, v51, 0x10uLL);
    v53 = vqshrn_n_u32(v52, 0x10uLL);
    *v48.i8 = vdup_lane_s16(*v50.i8, 3);
    v48.i64[1] = vdupq_lane_s16(v53, 3).u64[0];
    v54 = vbicq_s8(vqshrn_high_n_u32(*v50.i8, v52, 0x10uLL), vceqzq_s16(v48));
    v55 = vaddq_s32(vminq_u32(vmull_lane_u16(*v46.i8, *v50.i8, 3), v25), a9);
    v56 = vaddq_s32(vminq_u32(vmull_high_lane_u16(v46, v53, 3), v25), a9);
    a14 = vsraq_n_u32(v56, v56, 0x10uLL);
    *(v21 + v44) = vrev16q_s8(vqaddq_u16(v54, vqsubq_u16(v46, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v55, v55, 0x10uLL), 0x10uLL), a14, 0x10uLL))));
    v22 += v23;
    v18 -= 2;
    if (v18 < 2)
    {
      break;
    }

    v27 = *v22;
    v44 += v24;
    if ((v27 - 1) >= 0xFFFEu)
    {
      v19 = (v19 + v44);
      v21 = (v21 + v44);
      goto LABEL_31;
    }
  }

  v19 = (v19 + v24 + v44);
  v21 = (v21 + v24 + v44);
LABEL_34:
  v57 = v18 + a17;
  if (v57)
  {
    v58 = vdupq_n_s32(0xFFFE8000);
    v59.i64[0] = 0x800000008000;
    v59.i64[1] = 0x800000008000;
    do
    {
      if (*v22)
      {
        a9.i32[0] = *v22;
        v60 = vaddq_s32(vminq_u32(vmull_u16(vrev16_s8(*v19->i8), vdup_lane_s8(*a9.i8, 0)), v58), v59);
        *v60.i8 = vqshrn_n_u32(vsraq_n_u32(v60, v60, 0x10uLL), 0x10uLL);
        v61 = vrev16_s8(*v21->i8);
        v62 = vbic_s8(*v60.i8, vceqz_s16(vdup_lane_s16(*v60.i8, 3)));
        a9 = vaddq_s32(vminq_u32(vmull_lane_u16(v61, *v60.i8, 3), v58), v59);
        *a9.i8 = vrev16_s8(vqadd_u16(v62, vqsub_u16(v61, vqshrn_n_u32(vsraq_n_u32(a9, a9, 0x10uLL), 0x10uLL))));
        v21->i64[0] = a9.i64[0];
      }

      v63 = &v19->i8[8 * a6];
      v22 += a6;
      if (v63 >= v20)
      {
        v64 = -a5;
      }

      else
      {
        v64 = 0;
      }

      v19 = &v63[8 * v64];
      v21 = (v21 + 8 * a6);
      --v57;
    }

    while (v57);
  }

  *result = v19;
  *a3 = v20;
  *a2 = v21;
  *a4 = v22;
  return result;
}

int8x8_t **VEC::template_mark_pixelmask_row<(CGCompositeOperation)1,_RGBA16_t>(int8x8_t **result, int8x8_t **a2, unint64_t *a3, char **a4, int a5, int a6, double a7, double a8, uint32x4_t a9, double a10, double a11, double a12, int8x16_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  v17 = a17;
  v18 = *result;
  v19 = *a3;
  v20 = *a2;
  v21 = *a4;
  if (a17 < 2)
  {
    goto LABEL_34;
  }

  v22 = 2 * a6;
  v23 = 8 * v22;
  v24.i64[0] = -1;
  v24.i64[1] = -1;
  a9 = vdupq_n_s32(0xFFFE8000);
  v25.i64[0] = 0x800000008000;
  v25.i64[1] = 0x800000008000;
  while (1)
  {
    v26 = *v21;
    if (!*v21)
    {
      v33 = &v21[v17];
      v34 = v21;
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
            v36 = &v21[v17];
            break;
          }
        }
      }

      v37 = v36 - v21;
      v38 = (v36 - v21) * a6;
      v18 += v38;
      v20 += v38;
      v21 += v38;
      v17 -= v37;
      goto LABEL_31;
    }

    if (v26 != 0xFFFF)
    {
      break;
    }

    v27 = &v21[v17];
    v28 = v21;
    do
    {
      v29 = v28++;
    }

    while (v28 <= v27 && (vminvq_u8(vceqq_s8(*v29, v24)) & 0x80) != 0);
    do
    {
      v30 = v29;
      v29 = (v29 + 4);
    }

    while (v29 <= v27 && v30->i32[0] == -1);
    if (v30 < v27)
    {
      while (v30->u8[0] == 255)
      {
        v30 = (v30 + 1);
        if (v30 >= v27)
        {
          v30 = &v21[v17];
          break;
        }
      }
    }

    v31 = v30 - v21;
    v32 = v30 - v21;
    do
    {
      *v20->i8 = *v18->i8;
      v21 += v22;
      v32 -= 2;
      v18 = (v18 + v23);
      v20 = (v20 + v23);
    }

    while (v32 > 1);
    v17 = v17 - v31 + v32;
LABEL_31:
    if (v17 <= 1)
    {
      goto LABEL_34;
    }
  }

  v39 = 0;
  while (1)
  {
    v40 = vrev16q_s8(*&v18->i8[v39]);
    v41 = vrev16q_s8(*&v20->i8[v39]);
    a13.i32[0] = v26;
    a13 = vqtbl1q_s8(a13, xmmword_18439C6F0);
    v42 = vmvnq_s8(a13);
    v43 = vqaddq_u32(vmull_u16(*v40.i8, *a13.i8), vmull_u16(*v41.i8, *v42.i8));
    v44 = vqaddq_u32(vmull_high_u16(v40, a13), vmull_high_u16(v41, v42));
    v45 = vaddq_s32(vminq_u32(v43, a9), v25);
    v46 = vaddq_s32(vminq_u32(v44, a9), v25);
    *&v20->i8[v39] = vrev16q_s8(vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v45, v45, 0x10uLL), 0x10uLL), vsraq_n_u32(v46, v46, 0x10uLL), 0x10uLL));
    v21 += v22;
    v17 -= 2;
    if (v17 < 2)
    {
      break;
    }

    v26 = *v21;
    v39 += v23;
    if ((v26 - 1) >= 0xFFFEu)
    {
      v18 = (v18 + v39);
      v20 = (v20 + v39);
      goto LABEL_31;
    }
  }

  v18 = (v18 + v23 + v39);
  v20 = (v20 + v23 + v39);
LABEL_34:
  v47 = v17 + a16;
  if (v47)
  {
    v48 = vdupq_n_s32(0xFFFE8000);
    v49.i64[0] = 0x800000008000;
    v49.i64[1] = 0x800000008000;
    do
    {
      if (*v21)
      {
        a9.i32[0] = *v21;
        v50 = vdup_lane_s8(*a9.i8, 0);
        a9 = vaddq_s32(vminq_u32(vqaddq_u32(vmull_u16(vrev16_s8(*v18), v50), vmull_u16(vrev16_s8(*v20), vmvn_s8(v50))), v48), v49);
        *a9.i8 = vrev16_s8(vqshrn_n_u32(vsraq_n_u32(a9, a9, 0x10uLL), 0x10uLL));
        *v20 = *a9.i8;
      }

      v51 = &v18[a6];
      v21 += a6;
      if (v51 >= v19)
      {
        v52 = -a5;
      }

      else
      {
        v52 = 0;
      }

      v18 = &v51[v52];
      v20 += a6;
      --v47;
    }

    while (v47);
  }

  *result = v18;
  *a3 = v19;
  *a2 = v20;
  *a4 = v21;
  return result;
}

uint64_t *VEC::template_mark_pixelmask_row<(CGCompositeOperation)0,_RGBA16_t>(uint64_t *result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, double a7, double a8, int8x8_t a9, double a10, double a11, double a12, uint32x4_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  v17 = a17;
  v18 = *result;
  v19 = *a3;
  v20 = *a2;
  v21 = *a4;
  if (a17 < 2)
  {
    goto LABEL_33;
  }

  v22 = 2 * a6;
  v23 = 8 * v22;
  v24.i64[0] = -1;
  v24.i64[1] = -1;
  a9.i32[1] = 0;
  v25 = vdupq_n_s32(0xFFFE8000);
  v26.i64[0] = 0x800000008000;
  v26.i64[1] = 0x800000008000;
  while (1)
  {
    v27 = *v21;
    if (!*v21)
    {
      v38 = &v21[v17];
      v39 = v21;
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
            v41 = &v21[v17];
            break;
          }
        }
      }

      v42 = v41 - v21;
      v43 = (v41 - v21) * a6;
      v18 += 8 * v43;
      v20 = (v20 + 8 * v43);
      v21 += v43;
      v17 -= v42;
      goto LABEL_30;
    }

    if (v27 != 0xFFFF)
    {
      break;
    }

    v28 = &v21[v17];
    v29 = v21;
    do
    {
      v30 = v29++;
    }

    while (v29 <= v28 && (vminvq_u8(vceqq_s8(*v30, v24)) & 0x80) != 0);
    do
    {
      v31 = v30;
      v30 = (v30 + 4);
    }

    while (v30 <= v28 && v31->i32[0] == -1);
    if (v31 < v28)
    {
      while (v31->u8[0] == 255)
      {
        v31 = (v31 + 1);
        if (v31 >= v28)
        {
          v31 = &v21[v17];
          break;
        }
      }
    }

    v32 = v31 - v21;
    v33 = v31 - v21;
    do
    {
      *v20 = 0uLL;
      v21 += v22;
      v33 -= 2;
      v18 += v23;
      v20 = (v20 + v23);
    }

    while (v33 > 1);
    v17 = v17 - v32 + v33;
LABEL_30:
    if (v17 <= 1)
    {
      goto LABEL_33;
    }
  }

  while (1)
  {
    v34 = vrev16q_s8(*v20);
    a13.i32[0] = v27;
    v35 = vqtbl1q_s8(a13, xmmword_18439C6F0);
    v36 = vaddq_s32(vminq_u32(vmull_u16(*v34.i8, *v35.i8), v25), v26);
    v37 = vaddq_s32(vminq_u32(vmull_high_u16(v34, v35), v25), v26);
    a13 = vsraq_n_u32(v37, v37, 0x10uLL);
    *v20 = vrev16q_s8(vqsubq_u16(v34, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v36, v36, 0x10uLL), 0x10uLL), a13, 0x10uLL)));
    v21 += v22;
    v17 -= 2;
    if (v17 < 2)
    {
      break;
    }

    v27 = *v21;
    v18 += v23;
    v20 = (v20 + v23);
    if ((v27 - 1) >= 0xFFFEu)
    {
      goto LABEL_30;
    }
  }

  v18 += v23;
  v20 = (v20 + v23);
LABEL_33:
  v44 = v17 + a16;
  if (v44)
  {
    v45 = vdupq_n_s32(0xFFFE8000);
    v46.i64[0] = 0x800000008000;
    v46.i64[1] = 0x800000008000;
    do
    {
      if (*v21)
      {
        a9.i32[0] = *v21;
        v47 = vrev16_s8(*v20->i8);
        v48 = vaddq_s32(vminq_u32(vmull_u16(v47, vdup_lane_s8(a9, 0)), v45), v46);
        a9 = vrev16_s8(vqsub_u16(v47, vqshrn_n_u32(vsraq_n_u32(v48, v48, 0x10uLL), 0x10uLL)));
        v20->i64[0] = *&a9;
      }

      v49 = v18 + 8 * a6;
      v21 += a6;
      if (v49 >= v19)
      {
        v50 = -a5;
      }

      else
      {
        v50 = 0;
      }

      v18 = v49 + 8 * v50;
      v20 = (v20 + 8 * a6);
      --v44;
    }

    while (v44);
  }

  *result = v18;
  *a3 = v19;
  *a2 = v20;
  *a4 = v21;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)23,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    if (a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    v14.i64[0] = 0xFFFF000000000000;
    v14.i64[1] = 0xFFFF000000000000;
    v15 = vandq_s8(vdupq_n_s16(v13), v14);
    if (a7)
    {
      v16 = 0;
    }

    else
    {
      v16 = -1;
    }

    v17 = vandq_s8(vdupq_n_s16(v16), v14);
    v18 = 16 * a5;
    v19.i64[0] = 0xFFFFFFFFFFFFLL;
    v19.i64[1] = 0xFFFFFFFFFFFFLL;
    v20 = vdupq_n_s32(0xFFFE8000);
    v21.i64[0] = 0x800000008000;
    v21.i64[1] = 0x800000008000;
    do
    {
      v22 = vorrq_s8(v15, vrev16q_s8(*v10));
      v23 = vorrq_s8(v17, vrev16q_s8(*v12));
      v24 = vqtbl1q_s8(v22, xmmword_18439C6E0);
      v25 = vqtbl1q_s8(v23, xmmword_18439C6E0);
      v26 = vminq_u16(v22, v24);
      v27 = vminq_u16(v23, v25);
      v28 = vmvnq_s8(v27);
      v29 = vandq_s8(v27, v19);
      v30 = vcgtq_u16(v29, v28);
      v31 = vabdq_u16(v28, v29);
      v32 = vmull_u16(*v26.i8, *v31.i8);
      v33 = vmull_high_u16(v26, v31);
      v34 = vaddq_s32(vminq_u32(v32, v20), v21);
      v35 = vaddq_s32(vminq_u32(v33, v20), v21);
      v36 = vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v34, v34, 0x10uLL), 0x10uLL), vsraq_n_u32(v35, v35, 0x10uLL), 0x10uLL);
      v37 = vbslq_s8(v30, vqsubq_u16(v27, v36), vqaddq_u16(v27, v36));
      *v12 = vrev16q_s8(vbslq_s8(vceqzq_s16(v24), v23, vbslq_s8(vceqzq_s16(v25), v22, vminq_u16(v37, vqtbl1q_s8(v37, xmmword_18439C6E0)))));
      v9 -= 2;
      v12 = (v12 + v18);
      v10 = (v10 + v18);
    }

    while (v9 > 1);
  }

  v38 = v9 + a8;
  if (v38)
  {
    if (a6)
    {
      v39 = 0;
    }

    else
    {
      v39 = -1;
    }

    v40 = 0;
    v40.i16[3] = v39;
    v41 = 0;
    if (a7)
    {
      v42 = 0;
    }

    else
    {
      v42 = -1;
    }

    v41.i16[3] = v42;
    v43 = vdupq_n_s32(0xFFFE8000);
    v44.i64[0] = 0x800000008000;
    v44.i64[1] = 0x800000008000;
    do
    {
      v45 = vorr_s8(v40, vrev16_s8(*v10->i8));
      v46 = vorr_s8(v41, vrev16_s8(*v12->i8));
      v47 = vdup_lane_s16(v45, 3);
      v48 = vdup_lane_s16(v46, 3);
      v49 = vmin_u16(v46, v48);
      v50 = vmvn_s8(v49);
      v51 = v49;
      v51.i16[3] = 0;
      v52 = vaddq_s32(vminq_u32(vmull_u16(vmin_u16(v45, v47), vabd_u16(v50, v51)), v43), v44);
      *v52.i8 = vqshrn_n_u32(vsraq_n_u32(v52, v52, 0x10uLL), 0x10uLL);
      *v52.i8 = vbsl_s8(vcgt_u16(v51, v50), vqsub_u16(v49, *v52.i8), vqadd_u16(v49, *v52.i8));
      *v12->i8 = vrev16_s8(vbsl_s8(vceqz_s16(v47), v46, vbsl_s8(vceqz_s16(v48), v45, vmin_u16(*v52.i8, vdup_lane_s16(*v52.i8, 3)))));
      v53 = &v10->i8[8 * a5];
      if (v53 >= v11)
      {
        v54 = -a4;
      }

      else
      {
        v54 = 0;
      }

      v10 = &v53[8 * v54];
      v12 = (v12 + 8 * a5);
      --v38;
    }

    while (v38);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)22,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    if (a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    v14.i64[0] = 0xFFFF000000000000;
    v14.i64[1] = 0xFFFF000000000000;
    v15 = vandq_s8(vdupq_n_s16(v13), v14);
    if (a7)
    {
      v16 = 0;
    }

    else
    {
      v16 = -1;
    }

    v17 = vandq_s8(vdupq_n_s16(v16), v14);
    v18 = 16 * a5;
    v19 = vdupq_n_s32(0xFFFE8000);
    v20.i64[0] = 0x800000008000;
    v20.i64[1] = 0x800000008000;
    do
    {
      v21 = vorrq_s8(v15, vrev16q_s8(*v10));
      v22 = vorrq_s8(v17, vrev16q_s8(*v12));
      v23 = vqtbl1q_s8(v21, xmmword_18439C6E0);
      v24 = vqtbl1q_s8(v22, xmmword_18439C6E0);
      v25 = vminq_u16(v21, v23);
      v26 = vminq_u16(v22, v24);
      v27 = vmull_lane_u16(*v26.i8, *v21.i8, 3);
      v27.i32[3] = 0;
      v28 = vmull_high_laneq_u16(v26, v21, 7);
      v29 = vabdq_u32(vmull_lane_u16(*v25.i8, *v22.i8, 3), v27);
      v28.i32[3] = 0;
      v30 = vabdq_u32(vmull_high_laneq_u16(v25, v22, 7), v28);
      v31 = vmvnq_s8(v23);
      v32 = vmull_u16(*v26.i8, *v31.i8);
      v33 = vqaddq_u32(v30, vmull_high_u16(v26, v31));
      v34 = vmvnq_s8(v24);
      v35 = vmull_u16(*v25.i8, *v34.i8);
      v36 = vqaddq_u32(v33, vmull_high_u16(v25, v34));
      v37 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(v29, v32), v35), v19), v20);
      *v37.i8 = vqshrn_n_u32(vsraq_n_u32(v37, v37, 0x10uLL), 0x10uLL);
      v38 = vaddq_s32(vminq_u32(v36, v19), v20);
      v39 = vsraq_n_u32(v38, v38, 0x10uLL);
      *v29.i8 = vdup_lane_s16(*v37.i8, 3);
      v29.u64[1] = vdup_lane_s16(vqshrn_n_u32(v39, 0x10uLL), 3);
      *v12 = vrev16q_s8(vbslq_s8(vceqzq_s16(v23), v22, vbslq_s8(vceqzq_s16(v24), v21, vminq_u16(vqshrn_high_n_u32(*v37.i8, v39, 0x10uLL), v29))));
      v9 -= 2;
      v12 = (v12 + v18);
      v10 = (v10 + v18);
    }

    while (v9 > 1);
  }

  v40 = v9 + a8;
  if (v40)
  {
    if (a6)
    {
      v41 = 0;
    }

    else
    {
      v41 = -1;
    }

    v42 = 0;
    v42.i16[3] = v41;
    v43 = 0;
    if (a7)
    {
      v44 = 0;
    }

    else
    {
      v44 = -1;
    }

    v43.i16[3] = v44;
    v45 = vdupq_n_s32(0xFFFE8000);
    v46.i64[0] = 0x800000008000;
    v46.i64[1] = 0x800000008000;
    do
    {
      v47 = vorr_s8(v42, vrev16_s8(*v10->i8));
      v48 = vorr_s8(v43, vrev16_s8(*v12->i8));
      v49 = vdup_lane_s16(v47, 3);
      v50 = vdup_lane_s16(v48, 3);
      v51 = vmin_u16(v47, v49);
      v52 = vmin_u16(v48, v50);
      v53 = vmull_lane_u16(v52, v47, 3);
      v53.i32[3] = 0;
      v54 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vabdq_u32(vmull_lane_u16(v51, v48, 3), v53), vmull_u16(v52, vmvn_s8(v49))), vmull_u16(v51, vmvn_s8(v50))), v45), v46);
      *v54.i8 = vqshrn_n_u32(vsraq_n_u32(v54, v54, 0x10uLL), 0x10uLL);
      *v12->i8 = vrev16_s8(vbsl_s8(vceqz_s16(v49), v48, vbsl_s8(vceqz_s16(v50), v47, vmin_u16(*v54.i8, vdup_lane_s16(*v54.i8, 3)))));
      v55 = &v10->i8[8 * a5];
      if (v55 >= v11)
      {
        v56 = -a4;
      }

      else
      {
        v56 = 0;
      }

      v10 = &v55[8 * v56];
      v12 = (v12 + 8 * a5);
      --v40;
    }

    while (v40);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)21,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    if (a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    v14.i64[0] = 0xFFFF000000000000;
    v14.i64[1] = 0xFFFF000000000000;
    v15 = vandq_s8(vdupq_n_s16(v13), v14);
    if (a7)
    {
      v16 = 0;
    }

    else
    {
      v16 = -1;
    }

    v17 = vandq_s8(vdupq_n_s16(v16), v14);
    v18 = 16 * a5;
    v19 = vdupq_n_s32(0xFFFE8000);
    v20.i64[0] = 0x800000008000;
    v20.i64[1] = 0x800000008000;
    do
    {
      v21 = vorrq_s8(v15, vrev16q_s8(*v10));
      v22 = vorrq_s8(v17, vrev16q_s8(*v12));
      v23 = vqtbl1q_s8(v21, xmmword_18439C6E0);
      v24 = vqtbl1q_s8(v22, xmmword_18439C6E0);
      v25 = vminq_u16(v21, v23);
      v26 = vminq_u16(v22, v24);
      v27 = vmovn_s16(vcgeq_u16(vrhaddq_u16(v23, 0), v25));
      v28 = vmull_u16(*v25.i8, *v26.i8);
      v29 = vmull_high_u16(v25, v26);
      v30 = vqsubq_u16(v24, v26);
      v31 = vqsubq_u16(v23, v25);
      v32 = vmull_u16(*v30.i8, *v31.i8);
      v33 = vmull_high_u16(v30, v31);
      v34 = vbslq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vzip2_s8(v27, v27)), 0xFuLL)), vqaddq_u32(v29, v29), vqsubq_u32(vmull_laneq_u16(vdup_laneq_s16(v22, 7), v21, 7), vqaddq_u32(v33, v33)));
      v35 = vbslq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vzip1_s8(v27, v27)), 0xFuLL)), vqaddq_u32(v28, v28), vqsubq_u32(vmull_lane_u16(vdup_lane_s16(*v22.i8, 3), *v21.i8, 3), vqaddq_u32(v32, v32)));
      v36 = vmvnq_s8(v23);
      v37 = vmull_u16(*v26.i8, *v36.i8);
      v38 = vqaddq_u32(v34, vmull_high_u16(v26, v36));
      v39 = vmvnq_s8(v24);
      v40 = vmull_u16(*v25.i8, *v39.i8);
      v41 = vqaddq_u32(v38, vmull_high_u16(v25, v39));
      v42 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(v35, v37), v40), v19), v20);
      *v42.i8 = vqshrn_n_u32(vsraq_n_u32(v42, v42, 0x10uLL), 0x10uLL);
      v43 = vaddq_s32(vminq_u32(v41, v19), v20);
      v44 = vsraq_n_u32(v43, v43, 0x10uLL);
      *v35.i8 = vdup_lane_s16(*v42.i8, 3);
      v35.u64[1] = vdup_lane_s16(vqshrn_n_u32(v44, 0x10uLL), 3);
      *v12 = vrev16q_s8(vbslq_s8(vceqzq_s16(v23), v22, vbslq_s8(vceqzq_s16(v24), v21, vminq_u16(vqshrn_high_n_u32(*v42.i8, v44, 0x10uLL), v35))));
      v9 -= 2;
      v12 = (v12 + v18);
      v10 = (v10 + v18);
    }

    while (v9 > 1);
  }

  v45 = v9 + a8;
  if (v45)
  {
    if (a6)
    {
      v46 = 0;
    }

    else
    {
      v46 = -1;
    }

    v47 = 0;
    v47.i16[3] = v46;
    if (a7)
    {
      v48 = 0;
    }

    else
    {
      v48 = -1;
    }

    v49 = 0;
    v49.i16[3] = v48;
    v50 = vdupq_n_s32(0xFFFE8000);
    v51.i64[0] = 0x800000008000;
    v51.i64[1] = 0x800000008000;
    do
    {
      v52 = vorr_s8(v47, vrev16_s8(*v10->i8));
      v53 = vorr_s8(v49, vrev16_s8(*v12->i8));
      v54 = vdup_lane_s16(v52, 3);
      v55 = vdup_lane_s16(v53, 3);
      v56 = vmin_u16(v52, v54);
      v57 = vmin_u16(v53, v55);
      v58 = vuzp1_s8(vcge_u16(vrhadd_u16(v54, 0), v56), 0);
      v59 = vmull_u16(v56, v57);
      v60 = vmull_u16(vqsub_u16(v55, v57), vqsub_u16(v54, v56));
      v61 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vbslq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vzip1_s8(v58, v58)), 0xFuLL)), vqaddq_u32(v59, v59), vqsubq_u32(vmull_lane_u16(v55, v52, 3), vqaddq_u32(v60, v60))), vmull_u16(v57, vmvn_s8(v54))), vmull_u16(v56, vmvn_s8(v55))), v50), v51);
      *v61.i8 = vqshrn_n_u32(vsraq_n_u32(v61, v61, 0x10uLL), 0x10uLL);
      *v12->i8 = vrev16_s8(vbsl_s8(vceqz_s16(v54), v53, vbsl_s8(vceqz_s16(v55), v52, vmin_u16(*v61.i8, vdup_lane_s16(*v61.i8, 3)))));
      v62 = &v10->i8[8 * a5];
      if (v62 >= v11)
      {
        v63 = -a4;
      }

      else
      {
        v63 = 0;
      }

      v10 = &v62[8 * v63];
      v12 = (v12 + 8 * a5);
      --v45;
    }

    while (v45);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)20,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    if (a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    v14.i64[0] = 0xFFFF000000000000;
    v14.i64[1] = 0xFFFF000000000000;
    v15 = vandq_s8(vdupq_n_s16(v13), v14);
    if (a7)
    {
      v16 = 0;
    }

    else
    {
      v16 = -1;
    }

    v17 = vandq_s8(vdupq_n_s16(v16), v14);
    v18 = 16 * a5;
    v19 = vdupq_n_s32(0xFFFE8000);
    v20.i64[0] = 0x800000008000;
    v20.i64[1] = 0x800000008000;
    do
    {
      v21 = vorrq_s8(v15, vrev16q_s8(*v10));
      v22 = vorrq_s8(v17, vrev16q_s8(*v12));
      v23 = vqtbl1q_s8(v21, xmmword_18439C6E0);
      v24 = vqtbl1q_s8(v22, xmmword_18439C6E0);
      v25 = vminq_u16(v21, v23);
      v26 = vminq_u16(v22, v24);
      v27 = vqmovun_s32(vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmull_u16(*v26.i8, *v26.i8)), vcvtq_f32_u32(vmovl_u16(*v24.i8)))));
      v28 = vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmull_high_u16(v26, v26)), vcvtq_f32_u32(vmovl_high_u16(v24))));
      v29 = vmull_lane_u16(v27, *v21.i8, 3);
      v30 = vqsubq_u16(v26, vqmovun_high_s32(v27, v28));
      v31 = vmull_u16(*v30.i8, *v25.i8);
      v32 = vmull_high_u16(v30, v25);
      v33 = vqaddq_u32(v29, vqaddq_u32(v31, v31));
      v34 = vqaddq_u32(vmull_laneq_u16(vqmovun_s32(v28), v21, 7), vqaddq_u32(v32, v32));
      v35 = vmvnq_s8(v23);
      v36 = vmull_u16(*v26.i8, *v35.i8);
      v37 = vmull_high_u16(v26, v35);
      v38 = vqaddq_u32(v33, v36);
      v39 = vqaddq_u32(v34, v37);
      v40 = vmvnq_s8(v24);
      v41 = vmull_u16(*v25.i8, *v40.i8);
      v42 = vqaddq_u32(v39, vmull_high_u16(v25, v40));
      v43 = vaddq_s32(vminq_u32(vqaddq_u32(v38, v41), v19), v20);
      *v43.i8 = vqshrn_n_u32(vsraq_n_u32(v43, v43, 0x10uLL), 0x10uLL);
      v44 = vaddq_s32(vminq_u32(v42, v19), v20);
      v45 = vsraq_n_u32(v44, v44, 0x10uLL);
      *v40.i8 = vdup_lane_s16(*v43.i8, 3);
      v40.u64[1] = vdup_lane_s16(vqshrn_n_u32(v45, 0x10uLL), 3);
      *v12 = vrev16q_s8(vbslq_s8(vceqzq_s16(v23), v22, vbslq_s8(vceqzq_s16(v24), v21, vminq_u16(vqshrn_high_n_u32(*v43.i8, v45, 0x10uLL), v40))));
      v9 -= 2;
      v12 = (v12 + v18);
      v10 = (v10 + v18);
    }

    while (v9 > 1);
  }

  v46 = v9 + a8;
  if (v46)
  {
    if (a6)
    {
      v47 = 0;
    }

    else
    {
      v47 = -1;
    }

    v48 = 0;
    v48.i16[3] = v47;
    v49 = 0;
    if (a7)
    {
      v50 = 0;
    }

    else
    {
      v50 = -1;
    }

    v49.i16[3] = v50;
    v51 = vdupq_n_s32(0xFFFE8000);
    v52.i64[0] = 0x800000008000;
    v52.i64[1] = 0x800000008000;
    do
    {
      v53 = vorr_s8(v48, vrev16_s8(*v10->i8));
      v54 = vdup_lane_s16(v53, 3);
      v55 = vorr_s8(v49, vrev16_s8(*v12->i8));
      v56 = vdup_lane_s16(v55, 3);
      v57 = vmin_u16(v53, v54);
      v58 = vmin_u16(v55, v56);
      v59 = vqmovun_s32(vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmull_u16(v58, v58)), vcvtq_f32_u32(vmovl_u16(v56)))));
      v60 = vmull_lane_u16(v59, v53, 3);
      v61 = vmull_u16(vqsub_u16(v58, v59), v57);
      v62 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vqaddq_u32(v60, vqaddq_u32(v61, v61)), vmull_u16(v58, vmvn_s8(v54))), vmull_u16(v57, vmvn_s8(v56))), v51), v52);
      *v62.i8 = vqshrn_n_u32(vsraq_n_u32(v62, v62, 0x10uLL), 0x10uLL);
      *v12->i8 = vrev16_s8(vbsl_s8(vceqz_s16(v54), v55, vbsl_s8(vceqz_s16(v56), v53, vmin_u16(*v62.i8, vdup_lane_s16(*v62.i8, 3)))));
      v63 = &v10->i8[8 * a5];
      if (v63 >= v11)
      {
        v64 = -a4;
      }

      else
      {
        v64 = 0;
      }

      v10 = &v63[8 * v64];
      v12 = (v12 + 8 * a5);
      --v46;
    }

    while (v46);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)19,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    if (a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    v14.i64[0] = 0xFFFF000000000000;
    v14.i64[1] = 0xFFFF000000000000;
    v15 = vandq_s8(vdupq_n_s16(v13), v14);
    if (a7)
    {
      v16 = 0;
    }

    else
    {
      v16 = -1;
    }

    v17 = vandq_s8(vdupq_n_s16(v16), v14);
    v18 = 16 * a5;
    v19 = vdupq_n_s32(0x37800080u);
    do
    {
      v20 = vorrq_s8(v15, vrev16q_s8(*v10));
      v21 = vorrq_s8(v17, vrev16q_s8(*v12));
      v22 = vqtbl1q_s8(v20, xmmword_18439C6E0);
      v23 = vqtbl1q_s8(v21, xmmword_18439C6E0);
      v24 = vminq_u16(v20, v22);
      v25 = vminq_u16(v21, v23);
      v26 = vqsubq_u16(v23, v25);
      v27 = vdup_lane_s16(*v20.i8, 3);
      v28 = vdup_laneq_s16(v20, 7);
      v29 = vcvtq_f32_u32(vmovl_high_u16(v24));
      v30 = vcvtq_f32_u32(vmovl_u16(*v24.i8));
      v31 = vmvnq_s8(v22);
      v32 = vmull_u16(*v25.i8, *v31.i8);
      v33 = vmull_high_u16(v25, v31);
      v34 = vmvnq_s8(v23);
      v35 = vmull_u16(*v24.i8, *v34.i8);
      v36 = vaddq_f32(vcvtq_f32_u32(v33), vcvtq_f32_u32(vmull_high_u16(v24, v34)));
      v37 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v26.i8)), vcvtq_f32_u32(vmull_lane_u16(v27, *v20.i8, 3))), v30);
      v38 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v26)), vcvtq_f32_u32(vmull_laneq_u16(v28, v20, 7))), v29);
      v39 = vceqzq_s16(v26);
      *v33.i8 = vqmovun_s32(vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(v32), vcvtq_f32_u32(v35)), vcvtq_f32_u32(vmull_lane_u16(v27, *v21.i8, 3))), vbicq_s8(v37, vmovl_s16(*v39.i8))), v19)));
      v40 = vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(v36, vcvtq_f32_u32(vmull_laneq_u16(v28, v21, 7))), vbicq_s8(v38, vmovl_high_s16(v39))), v19));
      *v39.i8 = vdup_lane_s16(*v33.i8, 3);
      v39.u64[1] = vdup_lane_s16(vqmovun_s32(v40), 3);
      *v12 = vrev16q_s8(vbslq_s8(vceqzq_s16(v22), v21, vbslq_s8(vceqzq_s16(v23), v20, vminq_u16(vqmovun_high_s32(*v33.i8, v40), v39))));
      v9 -= 2;
      v12 = (v12 + v18);
      v10 = (v10 + v18);
    }

    while (v9 > 1);
  }

  v41 = v9 + a8;
  if (v41)
  {
    v42 = 0;
    if (a6)
    {
      v43 = 0;
    }

    else
    {
      v43 = -1;
    }

    v44 = 0;
    v44.i16[3] = v43;
    if (a7)
    {
      v45 = 0;
    }

    else
    {
      v45 = -1;
    }

    v42.i16[3] = v45;
    v46 = vdupq_n_s32(0x37800080u);
    do
    {
      v47 = vorr_s8(v44, vrev16_s8(*v10->i8));
      v48 = vorr_s8(v42, vrev16_s8(*v12->i8));
      v49 = vdup_lane_s16(v47, 3);
      v50 = vdup_lane_s16(v48, 3);
      v51 = vmin_u16(v47, v49);
      v52 = vmin_u16(v48, v50);
      v53 = vqsub_u16(v50, v52);
      v54 = vqmovun_s32(vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmull_u16(v52, vmvn_s8(v49))), vcvtq_f32_u32(vmull_u16(v51, vmvn_s8(v50)))), vcvtq_f32_u32(vmull_lane_u16(v49, v48, 3))), vbicq_s8(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v53)), vcvtq_f32_u32(vmull_lane_u16(v49, v47, 3))), vcvtq_f32_u32(vmovl_u16(v51))), vmovl_s16(vceqz_s16(v53)))), v46)));
      *v12->i8 = vrev16_s8(vbsl_s8(vceqz_s16(v49), v48, vbsl_s8(vceqz_s16(v50), v47, vmin_u16(v54, vdup_lane_s16(v54, 3)))));
      v55 = &v10->i8[8 * a5];
      if (v55 >= v11)
      {
        v56 = -a4;
      }

      else
      {
        v56 = 0;
      }

      v10 = &v55[8 * v56];
      v12 = (v12 + 8 * a5);
      --v41;
    }

    while (v41);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)18,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    if (a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    v14.i64[0] = 0xFFFF000000000000;
    v14.i64[1] = 0xFFFF000000000000;
    v15 = vandq_s8(vdupq_n_s16(v13), v14);
    if (a7)
    {
      v16 = 0;
    }

    else
    {
      v16 = -1;
    }

    v17 = vandq_s8(vdupq_n_s16(v16), v14);
    v18 = 16 * a5;
    v19.i64[0] = 0xFFFFFFFFFFFFLL;
    v19.i64[1] = 0xFFFFFFFFFFFFLL;
    v20 = vdupq_n_s32(0xFFFE8000);
    v21.i64[0] = 0x800000008000;
    v21.i64[1] = 0x800000008000;
    do
    {
      v22 = vorrq_s8(v15, vrev16q_s8(*v10));
      v23 = vorrq_s8(v17, vrev16q_s8(*v12));
      v24 = vqtbl1q_s8(v22, xmmword_18439C6E0);
      v25 = vqtbl1q_s8(v23, xmmword_18439C6E0);
      v26 = vminq_u16(v22, v24);
      v27 = vminq_u16(v23, v25);
      v28 = vandq_s8(v26, v19);
      v29 = vbicq_s8(vtstq_s16(v27, v27), vcgtq_u16(v24, v28));
      v30 = vmovl_high_s16(v29);
      v31 = vorrq_s8(vqsubq_u16(v24, v28), vceqzq_s16(v27));
      v32 = vmvnq_s8(v24);
      v33 = vqaddq_u32(vorrq_s8(vcvtnq_u32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v27.i8)), vcvtq_f32_u32(vmull_lane_u16(vdup_lane_s16(*v22.i8, 3), *v22.i8, 3))), vcvtq_f32_u32(vmovl_u16(*v31.i8)))), vmovl_s16(*v29.i8)), vmull_u16(*v27.i8, *v32.i8));
      v34 = vqaddq_u32(vorrq_s8(vcvtnq_u32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v27)), vcvtq_f32_u32(vmull_laneq_u16(vdup_laneq_s16(v22, 7), v22, 7))), vcvtq_f32_u32(vmovl_high_u16(v31)))), v30), vmull_high_u16(v27, v32));
      v35 = vmvnq_s8(v25);
      v36 = vmull_u16(*v26.i8, *v35.i8);
      v37 = vqaddq_u32(v34, vmull_high_u16(v26, v35));
      v38 = vaddq_s32(vminq_u32(vqaddq_u32(v33, v36), v20), v21);
      *v38.i8 = vqshrn_n_u32(vsraq_n_u32(v38, v38, 0x10uLL), 0x10uLL);
      v39 = vaddq_s32(vminq_u32(v37, v20), v21);
      v40 = vsraq_n_u32(v39, v39, 0x10uLL);
      *v35.i8 = vdup_lane_s16(*v38.i8, 3);
      v35.u64[1] = vdup_lane_s16(vqshrn_n_u32(v40, 0x10uLL), 3);
      *v12 = vrev16q_s8(vbslq_s8(vceqzq_s16(v24), v23, vbslq_s8(vceqzq_s16(v25), v22, vminq_u16(vqshrn_high_n_u32(*v38.i8, v40, 0x10uLL), v35))));
      v9 -= 2;
      v12 = (v12 + v18);
      v10 = (v10 + v18);
    }

    while (v9 > 1);
  }

  v41 = v9 + a8;
  if (v41)
  {
    if (a6)
    {
      v42 = 0;
    }

    else
    {
      v42 = -1;
    }

    v43 = 0;
    v43.i16[3] = v42;
    v44 = 0;
    if (a7)
    {
      v45 = 0;
    }

    else
    {
      v45 = -1;
    }

    v44.i16[3] = v45;
    v46 = vdupq_n_s32(0xFFFE8000);
    v47.i64[0] = 0x800000008000;
    v47.i64[1] = 0x800000008000;
    do
    {
      v48 = vorr_s8(v43, vrev16_s8(*v10->i8));
      v49 = vorr_s8(v44, vrev16_s8(*v12->i8));
      v50 = vdup_lane_s16(v48, 3);
      v51 = vdup_lane_s16(v49, 3);
      v52 = vmin_u16(v48, v50);
      v53 = vmin_u16(v49, v51);
      v54 = vmull_u16(v52, vmvn_s8(v51));
      v52.i16[3] = 0;
      v55 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vorrq_s8(vcvtnq_u32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v53)), vcvtq_f32_u32(vmull_lane_u16(v50, v48, 3))), vcvtq_f32_u32(vmovl_u16(vorr_s8(vqsub_u16(v50, v52), vceqz_s16(v53)))))), vmovl_s16(vbic_s8(vtst_s16(v53, v53), vcgt_u16(v50, v52)))), vmull_u16(v53, vmvn_s8(v50))), v54), v46), v47);
      *v55.i8 = vqshrn_n_u32(vsraq_n_u32(v55, v55, 0x10uLL), 0x10uLL);
      *v12->i8 = vrev16_s8(vbsl_s8(vceqz_s16(v50), v49, vbsl_s8(vceqz_s16(v51), v48, vmin_u16(*v55.i8, vdup_lane_s16(*v55.i8, 3)))));
      v56 = &v10->i8[8 * a5];
      if (v56 >= v11)
      {
        v57 = -a4;
      }

      else
      {
        v57 = 0;
      }

      v10 = &v56[8 * v57];
      v12 = (v12 + 8 * a5);
      --v41;
    }

    while (v41);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)17,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    if (a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    v14.i64[0] = 0xFFFF000000000000;
    v14.i64[1] = 0xFFFF000000000000;
    v15 = vandq_s8(vdupq_n_s16(v13), v14);
    if (a7)
    {
      v16 = 0;
    }

    else
    {
      v16 = -1;
    }

    v17 = vandq_s8(vdupq_n_s16(v16), v14);
    v18 = 16 * a5;
    v19 = vdupq_n_s32(0xFFFE8000);
    v20.i64[0] = 0x800000008000;
    v20.i64[1] = 0x800000008000;
    do
    {
      v21 = vorrq_s8(v15, vrev16q_s8(*v10));
      v22 = vorrq_s8(v17, vrev16q_s8(*v12));
      v23 = vqtbl1q_s8(v21, xmmword_18439C6E0);
      v24 = vqtbl1q_s8(v22, xmmword_18439C6E0);
      v25 = vminq_u16(v21, v23);
      v26 = vminq_u16(v22, v24);
      v27 = vmull_lane_u16(*v25.i8, *v22.i8, 3);
      v28 = vmvnq_s8(v24);
      v29 = vmull_u16(*v25.i8, *v28.i8);
      v30 = vmvnq_s8(v23);
      v31 = vqaddq_u32(vqaddq_u32(vmaxq_u32(vmull_high_laneq_u16(v25, v22, 7), vmull_high_laneq_u16(v26, v21, 7)), vmull_high_u16(v25, v28)), vmull_high_u16(v26, v30));
      v32 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vmaxq_u32(v27, vmull_lane_u16(*v26.i8, *v21.i8, 3)), v29), vmull_u16(*v26.i8, *v30.i8)), v19), v20);
      v33 = vaddq_s32(vminq_u32(v31, v19), v20);
      *v12 = vrev16q_s8(vbslq_s8(vceqzq_s16(v23), v22, vbslq_s8(vceqzq_s16(v24), v21, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v32, v32, 0x10uLL), 0x10uLL), vsraq_n_u32(v33, v33, 0x10uLL), 0x10uLL))));
      v9 -= 2;
      v12 = (v12 + v18);
      v10 = (v10 + v18);
    }

    while (v9 > 1);
  }

  v34 = v9 + a8;
  if (v34)
  {
    if (a6)
    {
      v35 = 0;
    }

    else
    {
      v35 = -1;
    }

    v36 = 0;
    v36.i16[3] = v35;
    v37 = 0;
    if (a7)
    {
      v38 = 0;
    }

    else
    {
      v38 = -1;
    }

    v37.i16[3] = v38;
    v39 = vdupq_n_s32(0xFFFE8000);
    v40.i64[0] = 0x800000008000;
    v40.i64[1] = 0x800000008000;
    do
    {
      v41 = vorr_s8(v36, vrev16_s8(*v10->i8));
      v42 = vdup_lane_s16(v41, 3);
      v43 = vorr_s8(v37, vrev16_s8(*v12->i8));
      v44 = vdup_lane_s16(v43, 3);
      v45 = vmin_u16(v41, v42);
      v46 = vmin_u16(v43, v44);
      v47 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vmaxq_u32(vmull_lane_u16(v45, v43, 3), vmull_lane_u16(v46, v41, 3)), vmull_u16(v45, vmvn_s8(v44))), vmull_u16(v46, vmvn_s8(v42))), v39), v40);
      *v12->i8 = vrev16_s8(vbsl_s8(vceqz_s16(v42), v43, vbsl_s8(vceqz_s16(v44), v41, vqshrn_n_u32(vsraq_n_u32(v47, v47, 0x10uLL), 0x10uLL))));
      v48 = &v10->i8[8 * a5];
      if (v48 >= v11)
      {
        v49 = -a4;
      }

      else
      {
        v49 = 0;
      }

      v10 = &v48[8 * v49];
      v12 = (v12 + 8 * a5);
      --v34;
    }

    while (v34);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)16,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    if (a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    v14.i64[0] = 0xFFFF000000000000;
    v14.i64[1] = 0xFFFF000000000000;
    v15 = vandq_s8(vdupq_n_s16(v13), v14);
    if (a7)
    {
      v16 = 0;
    }

    else
    {
      v16 = -1;
    }

    v17 = vandq_s8(vdupq_n_s16(v16), v14);
    v18 = 16 * a5;
    v19 = vdupq_n_s32(0xFFFE8000);
    v20.i64[0] = 0x800000008000;
    v20.i64[1] = 0x800000008000;
    do
    {
      v21 = vorrq_s8(v15, vrev16q_s8(*v10));
      v22 = vorrq_s8(v17, vrev16q_s8(*v12));
      v23 = vqtbl1q_s8(v21, xmmword_18439C6E0);
      v24 = vqtbl1q_s8(v22, xmmword_18439C6E0);
      v25 = vminq_u16(v21, v23);
      v26 = vminq_u16(v22, v24);
      v27 = vmull_lane_u16(*v25.i8, *v22.i8, 3);
      v28 = vmvnq_s8(v24);
      v29 = vmull_u16(*v25.i8, *v28.i8);
      v30 = vmvnq_s8(v23);
      v31 = vqaddq_u32(vqaddq_u32(vminq_u32(vmull_high_laneq_u16(v26, v21, 7), vmull_high_laneq_u16(v25, v22, 7)), vmull_high_u16(v25, v28)), vmull_high_u16(v26, v30));
      v32 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vminq_u32(vmull_lane_u16(*v26.i8, *v21.i8, 3), v27), v29), vmull_u16(*v26.i8, *v30.i8)), v19), v20);
      v33 = vaddq_s32(vminq_u32(v31, v19), v20);
      *v12 = vrev16q_s8(vbslq_s8(vceqzq_s16(v23), v22, vbslq_s8(vceqzq_s16(v24), v21, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v32, v32, 0x10uLL), 0x10uLL), vsraq_n_u32(v33, v33, 0x10uLL), 0x10uLL))));
      v9 -= 2;
      v12 = (v12 + v18);
      v10 = (v10 + v18);
    }

    while (v9 > 1);
  }

  v34 = v9 + a8;
  if (v34)
  {
    if (a6)
    {
      v35 = 0;
    }

    else
    {
      v35 = -1;
    }

    v36 = 0;
    v36.i16[3] = v35;
    v37 = 0;
    if (a7)
    {
      v38 = 0;
    }

    else
    {
      v38 = -1;
    }

    v37.i16[3] = v38;
    v39 = vdupq_n_s32(0xFFFE8000);
    v40.i64[0] = 0x800000008000;
    v40.i64[1] = 0x800000008000;
    do
    {
      v41 = vorr_s8(v36, vrev16_s8(*v10->i8));
      v42 = vdup_lane_s16(v41, 3);
      v43 = vorr_s8(v37, vrev16_s8(*v12->i8));
      v44 = vdup_lane_s16(v43, 3);
      v45 = vmin_u16(v41, v42);
      v46 = vmin_u16(v43, v44);
      v47 = vaddq_s32(vminq_u32(vqaddq_u32(vqaddq_u32(vminq_u32(vmull_lane_u16(v45, v43, 3), vmull_lane_u16(v46, v41, 3)), vmull_u16(v45, vmvn_s8(v44))), vmull_u16(v46, vmvn_s8(v42))), v39), v40);
      *v12->i8 = vrev16_s8(vbsl_s8(vceqz_s16(v42), v43, vbsl_s8(vceqz_s16(v44), v41, vqshrn_n_u32(vsraq_n_u32(v47, v47, 0x10uLL), 0x10uLL))));
      v48 = &v10->i8[8 * a5];
      if (v48 >= v11)
      {
        v49 = -a4;
      }

      else
      {
        v49 = 0;
      }

      v10 = &v48[8 * v49];
      v12 = (v12 + 8 * a5);
      --v34;
    }

    while (v34);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)15,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    if (a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    v14.i64[0] = 0xFFFF000000000000;
    v14.i64[1] = 0xFFFF000000000000;
    v15 = vandq_s8(vdupq_n_s16(v13), v14);
    if (a7)
    {
      v16 = 0;
    }

    else
    {
      v16 = -1;
    }

    v17 = vandq_s8(vdupq_n_s16(v16), v14);
    v18 = 16 * a5;
    v19 = vdupq_n_s32(0xFFFE8000);
    v20.i64[0] = 0x800000008000;
    v20.i64[1] = 0x800000008000;
    do
    {
      v21 = vorrq_s8(v15, vrev16q_s8(*v10));
      v22 = vorrq_s8(v17, vrev16q_s8(*v12));
      v23 = vqtbl1q_s8(v21, xmmword_18439C6E0);
      v24 = vqtbl1q_s8(v22, xmmword_18439C6E0);
      v25 = vminq_u16(v21, v23);
      v26 = vminq_u16(v22, v24);
      v27 = vsubq_s16(v23, v25);
      v28 = vsubq_s16(v24, v26);
      v29 = vcgtq_u16(vrhaddq_u16(v24, 0), v26);
      v30 = vqaddq_u32(vmull_u16(*v27.i8, *v26.i8), vmull_u16(*v28.i8, *v25.i8));
      v31 = vqaddq_u32(vmull_high_u16(v27, v26), vmull_high_u16(v28, v25));
      v32 = vaddq_s32(vminq_u32(vbslq_s8(vmovl_s16(*v29.i8), v30, vqsubq_u32(vmull_lane_u16(vdup_lane_s16(*v21.i8, 3), *v22.i8, 3), v30)), v19), v20);
      v33 = vaddq_s32(vminq_u32(vbslq_s8(vmovl_high_s16(v29), v31, vqsubq_u32(vmull_laneq_u16(vdup_laneq_s16(v21, 7), v22, 7), v31)), v19), v20);
      *v12 = vrev16q_s8(vbslq_s8(vceqzq_s16(v23), v22, vbslq_s8(vceqzq_s16(v24), v21, vsubq_s16(vaddq_s16(v26, v25), vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v32, v32, 0x10uLL), 0x10uLL), vsraq_n_u32(v33, v33, 0x10uLL), 0x10uLL)))));
      v9 -= 2;
      v12 = (v12 + v18);
      v10 = (v10 + v18);
    }

    while (v9 > 1);
  }

  v34 = v9 + a8;
  if (v34)
  {
    if (a6)
    {
      v35 = 0;
    }

    else
    {
      v35 = -1;
    }

    v36 = 0;
    v36.i16[3] = v35;
    if (a7)
    {
      v37 = 0;
    }

    else
    {
      v37 = -1;
    }

    v38 = 0;
    v38.i16[3] = v37;
    v39 = vdupq_n_s32(0xFFFE8000);
    v40.i64[0] = 0x800000008000;
    v40.i64[1] = 0x800000008000;
    do
    {
      v41 = vorr_s8(v36, vrev16_s8(*v10->i8));
      v42 = vorr_s8(v38, vrev16_s8(*v12->i8));
      v43 = vdup_lane_s16(v41, 3);
      v44 = vdup_lane_s16(v42, 3);
      v45 = vmin_u16(v41, v43);
      v46 = vmin_u16(v42, v44);
      v47 = vqaddq_u32(vmull_u16(vsub_s16(v43, v45), v46), vmull_u16(vsub_s16(v44, v46), v45));
      v48 = vaddq_s32(vminq_u32(vbslq_s8(vmovl_s16(vcgt_u16(vrhadd_u16(v44, 0), v46)), v47, vqsubq_u32(vmull_lane_u16(v43, v42, 3), v47)), v39), v40);
      *v12->i8 = vrev16_s8(vbsl_s8(vceqz_s16(v43), v42, vbsl_s8(vceqz_s16(v44), v41, vsub_s16(vadd_s16(v46, v45), vqshrn_n_u32(vsraq_n_u32(v48, v48, 0x10uLL), 0x10uLL)))));
      v49 = &v10->i8[8 * a5];
      if (v49 >= v11)
      {
        v50 = -a4;
      }

      else
      {
        v50 = 0;
      }

      v10 = &v49[8 * v50];
      v12 = (v12 + 8 * a5);
      --v34;
    }

    while (v34);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)14,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    if (a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    v14.i64[0] = 0xFFFF000000000000;
    v14.i64[1] = 0xFFFF000000000000;
    v15 = vandq_s8(vdupq_n_s16(v13), v14);
    if (a7)
    {
      v16 = 0;
    }

    else
    {
      v16 = -1;
    }

    v17 = vandq_s8(vdupq_n_s16(v16), v14);
    v18 = 16 * a5;
    v19 = vdupq_n_s32(0xFFFE8000);
    v20.i64[0] = 0x800000008000;
    v20.i64[1] = 0x800000008000;
    do
    {
      v21 = vorrq_s8(v15, vrev16q_s8(*v10));
      v22 = vorrq_s8(v17, vrev16q_s8(*v12));
      v23 = vbicq_s8(v22, vceqzq_s16(vqtbl1q_s8(v22, xmmword_18439C6E0)));
      v24 = vaddq_s32(vminq_u32(vmull_u16(*v21.i8, *v23.i8), v19), v20);
      v25 = vaddq_s32(vminq_u32(vmull_high_u16(v21, v23), v19), v20);
      *v12 = vrev16q_s8(vbslq_s8(vceqzq_s16(vqtbl1q_s8(v21, xmmword_18439C6E0)), v22, vqaddq_u16(vqsubq_u16(v21, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v24, v24, 0x10uLL), 0x10uLL), vsraq_n_u32(v25, v25, 0x10uLL), 0x10uLL)), v23)));
      v9 -= 2;
      v12 = (v12 + v18);
      v10 = (v10 + v18);
    }

    while (v9 > 1);
  }

  v26 = v9 + a8;
  if (v26)
  {
    if (a6)
    {
      v27 = 0;
    }

    else
    {
      v27 = -1;
    }

    v28 = 0;
    v28.i16[3] = v27;
    v29 = 0;
    if (a7)
    {
      v30 = 0;
    }

    else
    {
      v30 = -1;
    }

    v29.i16[3] = v30;
    v31 = vdupq_n_s32(0xFFFE8000);
    v32.i64[0] = 0x800000008000;
    v32.i64[1] = 0x800000008000;
    do
    {
      v33 = vorr_s8(v28, vrev16_s8(*v10->i8));
      v34 = vorr_s8(v29, vrev16_s8(*v12->i8));
      v35 = vbic_s8(v34, vdup_lane_s16(vceqz_s16(v34), 3));
      v36 = vaddq_s32(vminq_u32(vmull_u16(v33, v35), v31), v32);
      *v12->i8 = vrev16_s8(vbsl_s8(vdup_lane_s16(vceqz_s16(v33), 3), v34, vqadd_u16(vqsub_u16(v33, vqshrn_n_u32(vsraq_n_u32(v36, v36, 0x10uLL), 0x10uLL)), v35)));
      v37 = &v10->i8[8 * a5];
      if (v37 >= v11)
      {
        v38 = -a4;
      }

      else
      {
        v38 = 0;
      }

      v10 = &v37[8 * v38];
      v12 = (v12 + 8 * a5);
      --v26;
    }

    while (v26);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)13,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    if (a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    v14.i64[0] = 0xFFFF000000000000;
    v14.i64[1] = 0xFFFF000000000000;
    v15 = vandq_s8(vdupq_n_s16(v13), v14);
    if (a7)
    {
      v16 = 0;
    }

    else
    {
      v16 = -1;
    }

    v17 = vandq_s8(vdupq_n_s16(v16), v14);
    v18 = 16 * a5;
    v19 = vdupq_n_s32(0xFFFE8000);
    v20.i64[0] = 0x800000008000;
    v20.i64[1] = 0x800000008000;
    do
    {
      v21 = vorrq_s8(v15, vrev16q_s8(*v10));
      v22 = vorrq_s8(v17, vrev16q_s8(*v12));
      v23 = vqtbl1q_s8(v21, xmmword_18439C6E0);
      v24 = vqtbl1q_s8(v22, xmmword_18439C6E0);
      v25 = vceqzq_s16(v24);
      v26 = vbicq_s8(v22, v25);
      v27 = vaddq_s32(vminq_u32(vmull_u16(*v21.i8, *v26.i8), v19), v20);
      v28 = vaddq_s32(vminq_u32(vmull_high_u16(v21, v26), v19), v20);
      v29 = vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v27, v27, 0x10uLL), 0x10uLL), vsraq_n_u32(v28, v28, 0x10uLL), 0x10uLL);
      v30 = vmvnq_s8(v24);
      v31 = vmvnq_s8(v23);
      v32 = vqaddq_u32(vmull_u16(*v21.i8, *v30.i8), vmull_u16(*v26.i8, *v31.i8));
      v33 = vqaddq_u32(vmull_high_u16(v21, v30), vmull_high_u16(v26, v31));
      v34 = vaddq_s32(vminq_u32(v32, v19), v20);
      v35 = vaddq_s32(vminq_u32(v33, v19), v20);
      *v12 = vrev16q_s8(vbslq_s8(vceqzq_s16(v23), v22, vbslq_s8(v25, v21, vqaddq_u16(v29, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v34, v34, 0x10uLL), 0x10uLL), vsraq_n_u32(v35, v35, 0x10uLL), 0x10uLL)))));
      v9 -= 2;
      v12 = (v12 + v18);
      v10 = (v10 + v18);
    }

    while (v9 > 1);
  }

  v36 = v9 + a8;
  if (v36)
  {
    if (a6)
    {
      v37 = 0;
    }

    else
    {
      v37 = -1;
    }

    v38 = 0;
    v38.i16[3] = v37;
    v39 = 0;
    if (a7)
    {
      v40 = 0;
    }

    else
    {
      v40 = -1;
    }

    v39.i16[3] = v40;
    v41 = vdupq_n_s32(0xFFFE8000);
    v42.i64[0] = 0x800000008000;
    v42.i64[1] = 0x800000008000;
    do
    {
      v43 = vorr_s8(v38, vrev16_s8(*v10->i8));
      v44 = vorr_s8(v39, vrev16_s8(*v12->i8));
      v45 = vdup_lane_s16(v43, 3);
      v46 = vdup_lane_s16(v44, 3);
      v47 = vceqz_s16(v46);
      v48 = vbic_s8(v44, v47);
      v49 = vaddq_s32(vminq_u32(vmull_u16(v43, v48), v41), v42);
      v50 = vaddq_s32(vminq_u32(vqaddq_u32(vmull_u16(v43, vmvn_s8(v46)), vmull_u16(v48, vmvn_s8(v45))), v41), v42);
      *v12->i8 = vrev16_s8(vbsl_s8(vceqz_s16(v45), v44, vbsl_s8(v47, v43, vqadd_u16(vqshrn_n_u32(vsraq_n_u32(v49, v49, 0x10uLL), 0x10uLL), vqshrn_n_u32(vsraq_n_u32(v50, v50, 0x10uLL), 0x10uLL)))));
      v51 = &v10->i8[8 * a5];
      if (v51 >= v11)
      {
        v52 = -a4;
      }

      else
      {
        v52 = 0;
      }

      v10 = &v51[8 * v52];
      v12 = (v12 + 8 * a5);
      --v36;
    }

    while (v36);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)12,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    if (a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    v14.i64[0] = 0xFFFF000000000000;
    v14.i64[1] = 0xFFFF000000000000;
    v15 = vandq_s8(vdupq_n_s16(v13), v14);
    v16 = 16 * a5;
    do
    {
      *v12 = vrev16q_s8(vqaddq_u16(vrev16q_s8(*v12), vorrq_s8(v15, vrev16q_s8(*v10))));
      v9 -= 2;
      v12 = (v12 + v16);
      v10 = (v10 + v16);
    }

    while (v9 > 1);
  }

  v17 = v9 + a8;
  if (v17)
  {
    v18 = 0;
    if (a6)
    {
      v19 = 0;
    }

    else
    {
      v19 = -1;
    }

    v18.i16[3] = v19;
    do
    {
      *v12->i8 = vrev16_s8(vqadd_u16(vrev16_s8(*v12->i8), vorr_s8(v18, vrev16_s8(*v10->i8))));
      v20 = &v10->i8[8 * a5];
      if (v20 >= v11)
      {
        v21 = -a4;
      }

      else
      {
        v21 = 0;
      }

      v10 = &v20[8 * v21];
      v12 = (v12 + 8 * a5);
      --v17;
    }

    while (v17);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)11,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    if (a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    v14 = vdupq_n_s16(v13);
    v15.i64[0] = 0xFFFF000000000000;
    v15.i64[1] = 0xFFFF000000000000;
    if (a7)
    {
      v16 = 0;
    }

    else
    {
      v16 = -1;
    }

    v17 = vandq_s8(v14, v15);
    v18 = vandq_s8(vdupq_n_s16(v16), v15);
    v19 = 16 * a5;
    do
    {
      v20 = vorrq_s8(v17, vrev16q_s8(*v10));
      v21 = vorrq_s8(v18, vrev16q_s8(*v12));
      v22 = vqtbl1q_s8(v20, xmmword_18439C6E0);
      v23 = vqtbl1q_s8(v21, xmmword_18439C6E0);
      *v12 = vrev16q_s8(vqsubq_u16(vqaddq_u16(v23, v22), vqaddq_u16(vqsubq_u16(v22, v20), vqsubq_u16(v23, v21))));
      v9 -= 2;
      v12 = (v12 + v19);
      v10 = (v10 + v19);
    }

    while (v9 > 1);
  }

  v24 = v9 + a8;
  if (v24)
  {
    v25 = 0;
    if (a6)
    {
      v26 = 0;
    }

    else
    {
      v26 = -1;
    }

    v27 = 0;
    v27.i16[3] = v26;
    if (a7)
    {
      v28 = 0;
    }

    else
    {
      v28 = -1;
    }

    v25.i16[3] = v28;
    do
    {
      v29 = vorr_s8(v27, vrev16_s8(*v10->i8));
      v30 = vorr_s8(v25, vrev16_s8(*v12->i8));
      v31 = vdup_lane_s16(v29, 3);
      v32 = vdup_lane_s16(v30, 3);
      *v12->i8 = vrev16_s8(vqsub_u16(vqadd_u16(v32, v31), vqadd_u16(vqsub_u16(v31, v29), vqsub_u16(v32, v30))));
      v33 = &v10->i8[8 * a5];
      if (v33 >= v11)
      {
        v34 = -a4;
      }

      else
      {
        v34 = 0;
      }

      v10 = &v33[8 * v34];
      v12 = (v12 + 8 * a5);
      --v24;
    }

    while (v24);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)10,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    v13 = 16 * a5;
    v14 = vdupq_n_s32(0xFFFE8000);
    v15.i64[0] = 0x800000008000;
    v15.i64[1] = 0x800000008000;
    do
    {
      v16 = vrev16q_s8(*v10);
      v17 = vrev16q_s8(*v12);
      v18 = vmvnq_s8(v17);
      v19 = vmvnq_s8(v16);
      v20 = vqaddq_u32(vmull_lane_u16(*v16.i8, *v18.i8, 3), vmull_lane_u16(*v17.i8, *v19.i8, 3));
      v21 = vqaddq_u32(vmull_high_laneq_u16(v16, v18, 7), vmull_high_laneq_u16(v17, v19, 7));
      v22 = vaddq_s32(vminq_u32(v20, v14), v15);
      v23 = vaddq_s32(vminq_u32(v21, v14), v15);
      *v12 = vrev16q_s8(vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v22, v22, 0x10uLL), 0x10uLL), vsraq_n_u32(v23, v23, 0x10uLL), 0x10uLL));
      v9 -= 2;
      v12 = (v12 + v13);
      v10 = (v10 + v13);
    }

    while (v9 > 1);
  }

  v24 = v9 + a8;
  if (v24)
  {
    v25 = vdupq_n_s32(0xFFFE8000);
    v26.i64[0] = 0x800000008000;
    v26.i64[1] = 0x800000008000;
    do
    {
      v27 = vrev16_s8(*v10->i8);
      v28 = vrev16_s8(*v12->i8);
      v29 = vaddq_s32(vminq_u32(vqaddq_u32(vmull_lane_u16(v27, vmvn_s8(v28), 3), vmull_lane_u16(v28, vmvn_s8(v27), 3)), v25), v26);
      *v12->i8 = vrev16_s8(vqshrn_n_u32(vsraq_n_u32(v29, v29, 0x10uLL), 0x10uLL));
      v30 = &v10->i8[8 * a5];
      if (v30 >= v11)
      {
        v31 = -a4;
      }

      else
      {
        v31 = 0;
      }

      v10 = &v30[8 * v31];
      v12 = (v12 + 8 * a5);
      --v24;
    }

    while (v24);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)9,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    v13 = 16 * a5;
    v14 = vdupq_n_s32(0xFFFE8000);
    v15.i64[0] = 0x800000008000;
    v15.i64[1] = 0x800000008000;
    do
    {
      v16 = vrev16q_s8(*v10);
      v17 = vrev16q_s8(*v12);
      v18 = vaddq_s32(vminq_u32(vmull_lane_u16(*v16.i8, *v17.i8, 3), v14), v15);
      v19 = vaddq_s32(vminq_u32(vmull_high_laneq_u16(v16, v17, 7), v14), v15);
      v20 = vqsubq_u16(v16, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v18, v18, 0x10uLL), 0x10uLL), vsraq_n_u32(v19, v19, 0x10uLL), 0x10uLL));
      v21 = vmull_lane_u16(*v17.i8, *v16.i8, 3);
      v22 = vmull_high_laneq_u16(v17, v16, 7);
      v23 = vaddq_s32(vminq_u32(v21, v14), v15);
      v24 = vaddq_s32(vminq_u32(v22, v14), v15);
      *v12 = vrev16q_s8(vqaddq_u16(v20, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v23, v23, 0x10uLL), 0x10uLL), vsraq_n_u32(v24, v24, 0x10uLL), 0x10uLL)));
      v9 -= 2;
      v12 = (v12 + v13);
      v10 = (v10 + v13);
    }

    while (v9 > 1);
  }

  v25 = v9 + a8;
  if (v25)
  {
    v26 = vdupq_n_s32(0xFFFE8000);
    v27.i64[0] = 0x800000008000;
    v27.i64[1] = 0x800000008000;
    do
    {
      v28 = vrev16_s8(*v10->i8);
      v29 = vrev16_s8(*v12->i8);
      v30 = vaddq_s32(vminq_u32(vmull_lane_u16(v28, v29, 3), v26), v27);
      *v30.i8 = vqsub_u16(v28, vqshrn_n_u32(vsraq_n_u32(v30, v30, 0x10uLL), 0x10uLL));
      v31 = vaddq_s32(vminq_u32(vmull_lane_u16(v29, v28, 3), v26), v27);
      *v12->i8 = vrev16_s8(vqadd_u16(*v30.i8, vqshrn_n_u32(vsraq_n_u32(v31, v31, 0x10uLL), 0x10uLL)));
      v32 = &v10->i8[8 * a5];
      if (v32 >= v11)
      {
        v33 = -a4;
      }

      else
      {
        v33 = 0;
      }

      v10 = &v32[8 * v33];
      v12 = (v12 + 8 * a5);
      --v25;
    }

    while (v25);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)8,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    v13 = 16 * a5;
    v14 = vdupq_n_s32(0xFFFE8000);
    v15.i64[0] = 0x800000008000;
    v15.i64[1] = 0x800000008000;
    do
    {
      v16 = vrev16q_s8(*v10);
      v17 = vrev16q_s8(*v12);
      v18 = vaddq_s32(vminq_u32(vmull_lane_u16(*v17.i8, *v16.i8, 3), v14), v15);
      v19 = vaddq_s32(vminq_u32(vmull_high_laneq_u16(v17, v16, 7), v14), v15);
      *v12 = vrev16q_s8(vqsubq_u16(v17, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v18, v18, 0x10uLL), 0x10uLL), vsraq_n_u32(v19, v19, 0x10uLL), 0x10uLL)));
      v9 -= 2;
      v12 = (v12 + v13);
      v10 = (v10 + v13);
    }

    while (v9 > 1);
  }

  v20 = v9 + a8;
  if (v20)
  {
    v21 = vdupq_n_s32(0xFFFE8000);
    v22.i64[0] = 0x800000008000;
    v22.i64[1] = 0x800000008000;
    do
    {
      v23 = vrev16_s8(*v12->i8);
      v24 = vaddq_s32(vminq_u32(vmull_lane_u16(v23, vrev16_s8(*v10->i8), 3), v21), v22);
      *v12->i8 = vrev16_s8(vqsub_u16(v23, vqshrn_n_u32(vsraq_n_u32(v24, v24, 0x10uLL), 0x10uLL)));
      v25 = &v10->i8[8 * a5];
      if (v25 >= v11)
      {
        v26 = -a4;
      }

      else
      {
        v26 = 0;
      }

      v10 = &v25[8 * v26];
      v12 = (v12 + 8 * a5);
      --v20;
    }

    while (v20);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)7,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    v13 = 16 * a5;
    v14 = vdupq_n_s32(0xFFFE8000);
    v15.i64[0] = 0x800000008000;
    v15.i64[1] = 0x800000008000;
    do
    {
      v16 = vrev16q_s8(*v10);
      v17 = vrev16q_s8(*v12);
      v18 = vmull_lane_u16(*v17.i8, *v16.i8, 3);
      v19 = vmull_high_laneq_u16(v17, v16, 7);
      v20 = vaddq_s32(vminq_u32(v18, v14), v15);
      v21 = vaddq_s32(vminq_u32(v19, v14), v15);
      *v12 = vrev16q_s8(vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v20, v20, 0x10uLL), 0x10uLL), vsraq_n_u32(v21, v21, 0x10uLL), 0x10uLL));
      v9 -= 2;
      v12 = (v12 + v13);
      v10 = (v10 + v13);
    }

    while (v9 > 1);
  }

  v22 = v9 + a8;
  if (v22)
  {
    v23 = vdupq_n_s32(0xFFFE8000);
    v24.i64[0] = 0x800000008000;
    v24.i64[1] = 0x800000008000;
    do
    {
      v25 = vaddq_s32(vminq_u32(vmull_lane_u16(vrev16_s8(*v12->i8), vrev16_s8(*v10->i8), 3), v23), v24);
      *v12->i8 = vrev16_s8(vqshrn_n_u32(vsraq_n_u32(v25, v25, 0x10uLL), 0x10uLL));
      v26 = &v10->i8[8 * a5];
      if (v26 >= v11)
      {
        v27 = -a4;
      }

      else
      {
        v27 = 0;
      }

      v10 = &v26[8 * v27];
      v12 = (v12 + 8 * a5);
      --v22;
    }

    while (v22);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)6,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    if (a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    v14.i64[0] = 0xFFFF000000000000;
    v14.i64[1] = 0xFFFF000000000000;
    v15 = vandq_s8(vdupq_n_s16(v13), v14);
    v16 = 16 * a5;
    v17 = vdupq_n_s32(0xFFFE8000);
    v18.i64[0] = 0x800000008000;
    v18.i64[1] = 0x800000008000;
    do
    {
      v19 = vrev16q_s8(*v12);
      v20 = vorrq_s8(v15, vrev16q_s8(*v10));
      v21 = vqtbl1q_s8(v19, xmmword_18439C6E0);
      v22 = vbicq_s8(v19, vceqzq_s16(v21));
      v23 = vmvnq_s8(v21);
      v24 = vmull_u16(*v20.i8, *v23.i8);
      v25 = vmull_high_u16(v20, v23);
      v26 = vaddq_s32(vminq_u32(v24, v17), v18);
      v27 = vaddq_s32(vminq_u32(v25, v17), v18);
      *v12 = vrev16q_s8(vqaddq_u16(v22, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v26, v26, 0x10uLL), 0x10uLL), vsraq_n_u32(v27, v27, 0x10uLL), 0x10uLL)));
      v9 -= 2;
      v12 = (v12 + v16);
      v10 = (v10 + v16);
    }

    while (v9 > 1);
  }

  v28 = v9 + a8;
  if (v28)
  {
    v29 = 0;
    if (a6)
    {
      v30 = 0;
    }

    else
    {
      v30 = -1;
    }

    v29.i16[3] = v30;
    v31 = vdupq_n_s32(0xFFFE8000);
    v32.i64[0] = 0x800000008000;
    v32.i64[1] = 0x800000008000;
    do
    {
      v33 = vrev16_s8(*v12->i8);
      v34 = vdup_lane_s16(v33, 3);
      v35 = vaddq_s32(vminq_u32(vmull_u16(vorr_s8(v29, vrev16_s8(*v10->i8)), vmvn_s8(v34)), v31), v32);
      *v12->i8 = vrev16_s8(vqadd_u16(vbic_s8(v33, vceqz_s16(v34)), vqshrn_n_u32(vsraq_n_u32(v35, v35, 0x10uLL), 0x10uLL)));
      v36 = &v10->i8[8 * a5];
      if (v36 >= v11)
      {
        v37 = -a4;
      }

      else
      {
        v37 = 0;
      }

      v10 = &v36[8 * v37];
      v12 = (v12 + 8 * a5);
      --v28;
    }

    while (v28);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)5,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    v13 = 16 * a5;
    v14 = vdupq_n_s32(0xFFFE8000);
    v15.i64[0] = 0x800000008000;
    v15.i64[1] = 0x800000008000;
    do
    {
      v16 = vrev16q_s8(*v10);
      v17 = vrev16q_s8(*v12);
      v18 = vaddq_s32(vminq_u32(vmull_lane_u16(*v17.i8, *v16.i8, 3), v14), v15);
      v19 = vaddq_s32(vminq_u32(vmull_high_laneq_u16(v17, v16, 7), v14), v15);
      v20 = vqsubq_u16(v17, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v18, v18, 0x10uLL), 0x10uLL), vsraq_n_u32(v19, v19, 0x10uLL), 0x10uLL));
      v21 = vmull_lane_u16(*v16.i8, *v17.i8, 3);
      v22 = vmull_high_laneq_u16(v16, v17, 7);
      v23 = vaddq_s32(vminq_u32(v21, v14), v15);
      v24 = vaddq_s32(vminq_u32(v22, v14), v15);
      *v12 = vrev16q_s8(vqaddq_u16(v20, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v23, v23, 0x10uLL), 0x10uLL), vsraq_n_u32(v24, v24, 0x10uLL), 0x10uLL)));
      v9 -= 2;
      v12 = (v12 + v13);
      v10 = (v10 + v13);
    }

    while (v9 > 1);
  }

  v25 = v9 + a8;
  if (v25)
  {
    v26 = vdupq_n_s32(0xFFFE8000);
    v27.i64[0] = 0x800000008000;
    v27.i64[1] = 0x800000008000;
    do
    {
      v28 = vrev16_s8(*v10->i8);
      v29 = vrev16_s8(*v12->i8);
      v30 = vaddq_s32(vminq_u32(vmull_lane_u16(v29, v28, 3), v26), v27);
      v31 = vaddq_s32(vminq_u32(vmull_lane_u16(v28, v29, 3), v26), v27);
      *v12->i8 = vrev16_s8(vqadd_u16(vqsub_u16(v29, vqshrn_n_u32(vsraq_n_u32(v30, v30, 0x10uLL), 0x10uLL)), vqshrn_n_u32(vsraq_n_u32(v31, v31, 0x10uLL), 0x10uLL)));
      v32 = &v10->i8[8 * a5];
      if (v32 >= v11)
      {
        v33 = -a4;
      }

      else
      {
        v33 = 0;
      }

      v10 = &v32[8 * v33];
      v12 = (v12 + 8 * a5);
      --v25;
    }

    while (v25);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)4,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    if (a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    v14.i64[0] = 0xFFFF000000000000;
    v14.i64[1] = 0xFFFF000000000000;
    v15 = vandq_s8(vdupq_n_s16(v13), v14);
    v16 = 16 * a5;
    v17 = vdupq_n_s32(0xFFFE8000);
    v18.i64[0] = 0x800000008000;
    v18.i64[1] = 0x800000008000;
    do
    {
      v19 = vrev16q_s8(*v12);
      v20 = vorrq_s8(v15, vrev16q_s8(*v10));
      v21 = vaddq_s32(vminq_u32(vmull_lane_u16(*v20.i8, *v19.i8, 3), v17), v18);
      v22 = vaddq_s32(vminq_u32(vmull_high_laneq_u16(v20, v19, 7), v17), v18);
      *v12 = vrev16q_s8(vqsubq_u16(v20, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v21, v21, 0x10uLL), 0x10uLL), vsraq_n_u32(v22, v22, 0x10uLL), 0x10uLL)));
      v9 -= 2;
      v12 = (v12 + v16);
      v10 = (v10 + v16);
    }

    while (v9 > 1);
  }

  v23 = v9 + a8;
  if (v23)
  {
    v24 = 0;
    if (a6)
    {
      v25 = 0;
    }

    else
    {
      v25 = -1;
    }

    v24.i16[3] = v25;
    v26 = vdupq_n_s32(0xFFFE8000);
    v27.i64[0] = 0x800000008000;
    v27.i64[1] = 0x800000008000;
    do
    {
      v28 = vorr_s8(v24, vrev16_s8(*v10->i8));
      v29 = vaddq_s32(vminq_u32(vmull_lane_u16(v28, vrev16_s8(*v12->i8), 3), v26), v27);
      *v12->i8 = vrev16_s8(vqsub_u16(v28, vqshrn_n_u32(vsraq_n_u32(v29, v29, 0x10uLL), 0x10uLL)));
      v30 = &v10->i8[8 * a5];
      if (v30 >= v11)
      {
        v31 = -a4;
      }

      else
      {
        v31 = 0;
      }

      v10 = &v30[8 * v31];
      v12 = (v12 + 8 * a5);
      --v23;
    }

    while (v23);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)3,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    if (a6)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    v14.i64[0] = 0xFFFF000000000000;
    v14.i64[1] = 0xFFFF000000000000;
    v15 = vandq_s8(vdupq_n_s16(v13), v14);
    v16 = 16 * a5;
    v17 = vdupq_n_s32(0xFFFE8000);
    v18.i64[0] = 0x800000008000;
    v18.i64[1] = 0x800000008000;
    do
    {
      v19 = vrev16q_s8(*v12);
      v20 = vorrq_s8(v15, vrev16q_s8(*v10));
      v21 = vmull_lane_u16(*v20.i8, *v19.i8, 3);
      v22 = vmull_high_laneq_u16(v20, v19, 7);
      v23 = vaddq_s32(vminq_u32(v21, v17), v18);
      v24 = vaddq_s32(vminq_u32(v22, v17), v18);
      *v12 = vrev16q_s8(vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v23, v23, 0x10uLL), 0x10uLL), vsraq_n_u32(v24, v24, 0x10uLL), 0x10uLL));
      v9 -= 2;
      v12 = (v12 + v16);
      v10 = (v10 + v16);
    }

    while (v9 > 1);
  }

  v25 = v9 + a8;
  if (v25)
  {
    v26 = 0;
    if (a6)
    {
      v27 = 0;
    }

    else
    {
      v27 = -1;
    }

    v26.i16[3] = v27;
    v28 = vdupq_n_s32(0xFFFE8000);
    v29.i64[0] = 0x800000008000;
    v29.i64[1] = 0x800000008000;
    do
    {
      v30 = vaddq_s32(vminq_u32(vmull_lane_u16(vorr_s8(v26, vrev16_s8(*v10->i8)), vrev16_s8(*v12->i8), 3), v28), v29);
      *v12->i8 = vrev16_s8(vqshrn_n_u32(vsraq_n_u32(v30, v30, 0x10uLL), 0x10uLL));
      v31 = &v10->i8[8 * a5];
      if (v31 >= v11)
      {
        v32 = -a4;
      }

      else
      {
        v32 = 0;
      }

      v10 = &v31[8 * v32];
      v12 = (v12 + 8 * a5);
      --v25;
    }

    while (v25);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

int8x16_t **VEC::template_mark_pixelshape_row<(CGCompositeOperation)2,_RGBA16_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    v13 = 16 * a5;
    v14 = vdupq_n_s32(0xFFFE8000);
    v15.i64[0] = 0x800000008000;
    v15.i64[1] = 0x800000008000;
    do
    {
      v16 = vrev16q_s8(*v10);
      v17 = vrev16q_s8(*v12);
      v18 = vbicq_s8(v16, vceqzq_s16(vqtbl1q_s8(v16, xmmword_18439C6E0)));
      v19 = vaddq_s32(vminq_u32(vmull_lane_u16(*v17.i8, *v16.i8, 3), v14), v15);
      v20 = vaddq_s32(vminq_u32(vmull_high_laneq_u16(v17, v16, 7), v14), v15);
      *v12 = vrev16q_s8(vqaddq_u16(v18, vqsubq_u16(v17, vqshrn_high_n_u32(vqshrn_n_u32(vsraq_n_u32(v19, v19, 0x10uLL), 0x10uLL), vsraq_n_u32(v20, v20, 0x10uLL), 0x10uLL))));
      v9 -= 2;
      v12 = (v12 + v13);
      v10 = (v10 + v13);
    }

    while (v9 > 1);
  }

  v21 = v9 + a8;
  if (v21)
  {
    v22 = vdupq_n_s32(0xFFFE8000);
    v23.i64[0] = 0x800000008000;
    v23.i64[1] = 0x800000008000;
    do
    {
      v24 = vrev16_s8(*v10->i8);
      v25 = vrev16_s8(*v12->i8);
      v26 = vbic_s8(v24, vceqz_s16(vdup_lane_s16(v24, 3)));
      v27 = vaddq_s32(vminq_u32(vmull_lane_u16(v25, v24, 3), v22), v23);
      *v12->i8 = vrev16_s8(vqadd_u16(v26, vqsub_u16(v25, vqshrn_n_u32(vsraq_n_u32(v27, v27, 0x10uLL), 0x10uLL))));
      v28 = &v10->i8[8 * a5];
      if (v28 >= v11)
      {
        v29 = -a4;
      }

      else
      {
        v29 = 0;
      }

      v10 = &v28[8 * v29];
      v12 = (v12 + 8 * a5);
      --v21;
    }

    while (v21);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

char **VEC::template_mark_pixelshape_row<(CGCompositeOperation)1,_RGBA16_t>(char **result, _OWORD **a2, unint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    v13 = 16 * a5;
    do
    {
      *v12 = *v10;
      v9 -= 2;
      v12 = (v12 + v13);
      v10 += v13;
    }

    while (v9 > 1);
  }

  for (i = v9 + a8; i; --i)
  {
    *v12 = *v10;
    v15 = &v10[8 * a5];
    if (v15 >= v11)
    {
      v16 = -a4;
    }

    else
    {
      v16 = 0;
    }

    v10 = &v15[8 * v16];
    v12 = (v12 + 8 * a5);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

uint64_t *VEC::template_mark_pixelshape_row<(CGCompositeOperation)0,_RGBA16_t>(uint64_t *result, _OWORD **a2, unint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    v13 = 16 * a5;
    do
    {
      *v12 = 0uLL;
      v9 -= 2;
      v12 = (v12 + v13);
      v10 += v13;
    }

    while (v9 > 1);
  }

  for (i = v9 + a8; i; --i)
  {
    *v12 = 0;
    v15 = v10 + 8 * a5;
    if (v15 >= v11)
    {
      v16 = -a4;
    }

    else
    {
      v16 = 0;
    }

    v10 = v15 + 8 * v16;
    v12 = (v12 + 8 * a5);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

void sub_1840131E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  MEMORY[0x1865EE610](v20, v21);
  _Unwind_Resume(a1);
}

void Type1C::~Type1C(Type1C *this)
{
  SimpleFont::~SimpleFont(this);

  JUMPOUT(0x1865EE610);
}

uint64_t cmap_csr_set_create()
{
  v0 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200404BE0E0E6uLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 8;
    Mutable = CFArrayCreateMutable(0, 0, 0);
    *(v1 + 8) = Mutable;
    if (!Mutable)
    {
      cmap_csr_set_release(v1);
      return 0;
    }
  }

  return v1;
}

void cmap_csr_set_release(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      Count = CFArrayGetCount(v2);
      if (Count)
      {
        v4 = Count;
        for (i = 0; i != v4; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), i);
          cmap_cid_set_release(ValueAtIndex[2]);
          cmap_cid_set_release(ValueAtIndex[3]);
          free(ValueAtIndex);
        }
      }

      CFRelease(*(a1 + 8));
    }

    cmap_bf_set_release(*(a1 + 16));

    free(a1);
  }
}

void cmap_csr_set_add_codespace_range(unsigned __int8 *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v6 = csr_create(a2, a3, a4);
  if (v6)
  {
    CFArrayAppendValue(*(a1 + 1), v6);
    if (*a1 > a2)
    {
      *a1 = a2;
    }

    if (a1[1] < a2)
    {
      a1[1] = a2;
    }
  }
}

_DWORD *csr_create(unsigned int a1, unsigned int a2, unsigned int a3)
{
  if (!a1)
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, 0x20uLL, 0x102004001854A68uLL);
  if (result)
  {
    v7 = 0;
    v8 = vdupq_n_s64(a1 - 1);
    v9 = (a1 + 15) & 0x1F0;
    v10 = xmmword_18439C700;
    v11 = xmmword_18439C710;
    v12 = xmmword_18439C720;
    v13 = xmmword_18439C730;
    v14 = xmmword_18439C740;
    v15 = xmmword_18439C750;
    v16 = xmmword_18439C760;
    v17 = 8 * a1 - 8;
    v18 = xmmword_18439C670;
    v19 = v47;
    v20 = vdupq_n_s64(0x10uLL);
    LODWORD(v21) = 8 * a1 - 8;
    do
    {
      v22 = vmovn_s64(vcgeq_u64(v8, v18));
      if (vuzp1_s8(vuzp1_s16(v22, *v8.i8), *v8.i8).u8[0])
      {
        v47[v7] = a2 >> v21;
      }

      if (vuzp1_s8(vuzp1_s16(v22, *&v8), *&v8).i8[1])
      {
        v47[v7 + 1] = a2 >> (8 * ((v7 ^ 0xFE) + a1));
      }

      if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v16))), *&v8).i8[2])
      {
        v47[v7 + 2] = a2 >> (8 * ((v7 ^ 0xFD) + a1));
        v47[v7 + 3] = a2 >> (8 * ((v7 ^ 0xFC) + a1));
      }

      v23 = vmovn_s64(vcgeq_u64(v8, v15));
      if (vuzp1_s8(*&v8, vuzp1_s16(v23, *&v8)).i32[1])
      {
        v47[v7 + 4] = a2 >> (8 * ((v7 ^ 0xFB) + a1));
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(v23, *&v8)).i8[5])
      {
        v47[v7 + 5] = a2 >> (8 * ((v7 ^ 0xFA) + a1));
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v14)))).i8[6])
      {
        v47[v7 + 6] = a2 >> (8 * ((v7 ^ 0xF9) + a1));
        v47[v7 + 7] = a2 >> (8 * ((v7 ^ 0xF8) + a1));
      }

      v24 = vmovn_s64(vcgeq_u64(v8, v13));
      if (vuzp1_s8(vuzp1_s16(v24, *v8.i8), *v8.i8).u8[0])
      {
        v47[v7 + 8] = a2 >> (8 * ((v7 ^ 0xF7) + a1));
      }

      if (vuzp1_s8(vuzp1_s16(v24, *&v8), *&v8).i8[1])
      {
        v47[v7 + 9] = a2 >> (8 * ((v7 ^ 0xF6) + a1));
      }

      if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v12))), *&v8).i8[2])
      {
        v47[v7 + 10] = a2 >> (8 * ((v7 ^ 0xF5) + a1));
        v47[v7 + 11] = a2 >> (8 * ((v7 ^ 0xF4) + a1));
      }

      v25 = vmovn_s64(vcgeq_u64(v8, v11));
      if (vuzp1_s8(*&v8, vuzp1_s16(v25, *&v8)).i32[1])
      {
        v47[v7 + 12] = a2 >> (8 * ((v7 ^ 0xF3) + a1));
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(v25, *&v8)).i8[5])
      {
        v47[v7 + 13] = a2 >> (8 * ((v7 ^ 0xF2) + a1));
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v10)))).i8[6])
      {
        v47[v7 + 14] = a2 >> (8 * ((v7 ^ 0xF1) + a1));
        v47[v7 + 15] = a2 >> (8 * ((v7 ^ 0xF0) + a1));
      }

      v15 = vaddq_s64(v15, v20);
      v7 += 16;
      v16 = vaddq_s64(v16, v20);
      v18 = vaddq_s64(v18, v20);
      v14 = vaddq_s64(v14, v20);
      v13 = vaddq_s64(v13, v20);
      v12 = vaddq_s64(v12, v20);
      v11 = vaddq_s64(v11, v20);
      v21 = (v21 - 128);
      v10 = vaddq_s64(v10, v20);
    }

    while (v9 != v7);
    v26 = 0;
    v27 = xmmword_18439C700;
    v28 = xmmword_18439C710;
    v29 = xmmword_18439C720;
    v30 = xmmword_18439C730;
    v31 = xmmword_18439C740;
    v32 = xmmword_18439C750;
    v33 = xmmword_18439C760;
    v34 = 8 * a1 - 8;
    v35 = xmmword_18439C670;
    do
    {
      v36 = vmovn_s64(vcgeq_u64(v8, v35));
      if (vuzp1_s8(vuzp1_s16(v36, *v8.i8), *v8.i8).u8[0])
      {
        v46[v26] = a3 >> v34;
      }

      if (vuzp1_s8(vuzp1_s16(v36, *&v8), *&v8).i8[1])
      {
        v46[v26 + 1] = a3 >> (8 * ((v26 ^ 0xFE) + a1));
      }

      if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v33))), *&v8).i8[2])
      {
        v46[v26 + 2] = a3 >> (8 * ((v26 ^ 0xFD) + a1));
        v46[v26 + 3] = a3 >> (8 * ((v26 ^ 0xFC) + a1));
      }

      v37 = vmovn_s64(vcgeq_u64(v8, v32));
      if (vuzp1_s8(*&v8, vuzp1_s16(v37, *&v8)).i32[1])
      {
        v46[v26 + 4] = a3 >> (8 * ((v26 ^ 0xFB) + a1));
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(v37, *&v8)).i8[5])
      {
        v47[v26 + 1] = a3 >> (8 * ((v26 ^ 0xFA) + a1));
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v31)))).i8[6])
      {
        v47[v26 + 2] = a3 >> (8 * ((v26 ^ 0xF9) + a1));
        v47[v26 + 3] = a3 >> (8 * ((v26 ^ 0xF8) + a1));
      }

      v38 = vmovn_s64(vcgeq_u64(v8, v30));
      if (vuzp1_s8(vuzp1_s16(v38, *v8.i8), *v8.i8).u8[0])
      {
        v47[v26 + 4] = a3 >> (8 * ((v26 ^ 0xF7) + a1));
      }

      if (vuzp1_s8(vuzp1_s16(v38, *&v8), *&v8).i8[1])
      {
        v47[v26 + 5] = a3 >> (8 * ((v26 ^ 0xF6) + a1));
      }

      if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v29))), *&v8).i8[2])
      {
        v47[v26 + 6] = a3 >> (8 * ((v26 ^ 0xF5) + a1));
        v47[v26 + 7] = a3 >> (8 * ((v26 ^ 0xF4) + a1));
      }

      v39 = vmovn_s64(vcgeq_u64(v8, v28));
      if (vuzp1_s8(*&v8, vuzp1_s16(v39, *&v8)).i32[1])
      {
        v47[v26 + 8] = a3 >> (8 * ((v26 ^ 0xF3) + a1));
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(v39, *&v8)).i8[5])
      {
        v47[v26 + 9] = a3 >> (8 * ((v26 ^ 0xF2) + a1));
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v27)))).i8[6])
      {
        v47[v26 + 10] = a3 >> (8 * ((v26 ^ 0xF1) + a1));
        v47[v26 + 11] = a3 >> (8 * ((v26 ^ 0xF0) + a1));
      }

      v40 = vdupq_n_s64(0x10uLL);
      v32 = vaddq_s64(v32, v40);
      v26 += 16;
      v33 = vaddq_s64(v33, v40);
      v35 = vaddq_s64(v35, v40);
      v31 = vaddq_s64(v31, v40);
      v30 = vaddq_s64(v30, v40);
      v29 = vaddq_s64(v29, v40);
      v28 = vaddq_s64(v28, v40);
      v27 = vaddq_s64(v27, v40);
      v34 += 0x80;
    }

    while (v9 != v26);
    v45 = result;
    v41 = 0;
    do
    {
      v42 = v47[v41];
      v43 = v46[v41];
      if (v42 > v43)
      {
        pdf_log("Incorrect start/end range ordering; fixing.", v19, v21);
        v44 = ((v43 ^ v42) << v17);
        a2 ^= v44;
        a3 ^= v44;
      }

      ++v41;
      v17 -= 8;
    }

    while (a1 != v41);
    result = v45;
    *v45 = a1;
    v45[1] = a2;
    v45[2] = a3;
  }

  return result;
}

BOOL check_dimension(_BOOL8 result, unsigned int a2, unsigned int a3)
{
  if ((result - 5) < 0xFFFFFFFC)
  {
    return 0;
  }

  v3 = vdupq_n_s64(result - 1);
  v4 = vmovn_s64(vcgeq_u64(v3, xmmword_18439C670));
  v5 = vuzp1_s16(v4, *v3.i8).u8[0];
  if (v5)
  {
    v20[0] = a2 >> (8 * result - 8);
  }

  v6 = vuzp1_s16(v4, *&v3).i8[2];
  if (v6)
  {
    v20[1] = a2 >> (8 * result - 16);
  }

  v7 = vmovn_s64(vcgeq_u64(v3, xmmword_18439C760));
  v8 = vuzp1_s16(v7, v7).i8[4];
  if (v8)
  {
    v20[2] = a2 >> (8 * result - 24);
  }

  v9 = vuzp1_s16(v7, v7).i8[6];
  if (v9)
  {
    v20[3] = a2 >> (8 * result);
    if ((v5 & 1) == 0)
    {
LABEL_11:
      if ((v6 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

  v19[0] = a3 >> (8 * result - 8);
  if ((v6 & 1) == 0)
  {
LABEL_12:
    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_30:
    v19[2] = a3 >> (8 * result - 24);
    if ((v9 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  v19[1] = a3 >> (8 * result - 16);
  if (v8)
  {
    goto LABEL_30;
  }

LABEL_13:
  if (v9)
  {
LABEL_14:
    v19[3] = a3 >> (8 * result);
  }

LABEL_15:
  if (result == 2 && !a2 && a3 == 0xFFFF)
  {
    return 1;
  }

  if (!result)
  {
    v10 = result - 1 - 1;
    v11 = v19;
    v12 = v20;
    do
    {
      v14 = *v12++;
      v13 = v14;
      v16 = *v11++;
      v15 = v16;
      v18 = v10-- != 0;
      result = v13 == v15;
    }

    while (v13 == v15 && v18);
  }

  return result;
}

unsigned __int8 *find_csr(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  result = CFArrayGetCount(*(a1 + 8));
  v81 = result;
  if (result)
  {
    v8 = 0;
    v9 = (a2 + 15) & 0x1F0;
    v80 = vdupq_n_s64(a2 - 1);
    v79 = vdupq_n_s64(0x10uLL);
    do
    {
      v83 = v8;
      result = CFArrayGetValueAtIndex(*(a1 + 8), v8);
      if (*result == a2)
      {
        if (!a2)
        {
          return result;
        }

        v10 = 0;
        v11 = 8 * a2 - 8;
        v12 = xmmword_18439C670;
        v13 = xmmword_18439C760;
        v14 = xmmword_18439C750;
        v15 = xmmword_18439C740;
        v16 = xmmword_18439C730;
        v17 = xmmword_18439C720;
        v18 = xmmword_18439C710;
        v19 = xmmword_18439C700;
        do
        {
          v20 = vmovn_s64(vcgeq_u64(v80, v12));
          if (vuzp1_s8(vuzp1_s16(v20, *v12.i8), *v12.i8).u8[0])
          {
            v87[v10] = a3 >> v11;
          }

          if (vuzp1_s8(vuzp1_s16(v20, *&v12), *&v12).i8[1])
          {
            v87[v10 + 1] = a3 >> (8 * ((v10 ^ 0xFE) + a2));
          }

          if (vuzp1_s8(vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v80, *&v13))), *&v12).i8[2])
          {
            v87[v10 + 2] = a3 >> (8 * ((v10 ^ 0xFD) + a2));
            v87[v10 + 3] = a3 >> (8 * ((v10 ^ 0xFC) + a2));
          }

          v21 = vmovn_s64(vcgeq_u64(v80, v14));
          if (vuzp1_s8(*&v12, vuzp1_s16(v21, *&v12)).i32[1])
          {
            v87[v10 + 4] = a3 >> (8 * ((v10 ^ 0xFB) + a2));
          }

          if (vuzp1_s8(*&v12, vuzp1_s16(v21, *&v12)).i8[5])
          {
            v87[v10 + 5] = a3 >> (8 * ((v10 ^ 0xFA) + a2));
          }

          if (vuzp1_s8(*&v12, vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v80, *&v15)))).i8[6])
          {
            v87[v10 + 6] = a3 >> (8 * ((v10 ^ 0xF9) + a2));
            v87[v10 + 7] = a3 >> (8 * ((v10 ^ 0xF8) + a2));
          }

          v22 = vmovn_s64(vcgeq_u64(v80, v16));
          if (vuzp1_s8(vuzp1_s16(v22, *v12.i8), *v12.i8).u8[0])
          {
            v87[v10 + 8] = a3 >> (8 * ((v10 ^ 0xF7) + a2));
          }

          if (vuzp1_s8(vuzp1_s16(v22, *&v12), *&v12).i8[1])
          {
            v87[v10 + 9] = a3 >> (8 * ((v10 ^ 0xF6) + a2));
          }

          if (vuzp1_s8(vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v80, *&v17))), *&v12).i8[2])
          {
            v87[v10 + 10] = a3 >> (8 * ((v10 ^ 0xF5) + a2));
            v87[v10 + 11] = a3 >> (8 * ((v10 ^ 0xF4) + a2));
          }

          v23 = vmovn_s64(vcgeq_u64(v80, v18));
          if (vuzp1_s8(*&v12, vuzp1_s16(v23, *&v12)).i32[1])
          {
            v87[v10 + 12] = a3 >> (8 * ((v10 ^ 0xF3) + a2));
          }

          if (vuzp1_s8(*&v12, vuzp1_s16(v23, *&v12)).i8[5])
          {
            v87[v10 + 13] = a3 >> (8 * ((v10 ^ 0xF2) + a2));
          }

          if (vuzp1_s8(*&v12, vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v80, *&v19)))).i8[6])
          {
            v87[v10 + 14] = a3 >> (8 * ((v10 ^ 0xF1) + a2));
            v87[v10 + 15] = a3 >> (8 * ((v10 ^ 0xF0) + a2));
          }

          v14 = vaddq_s64(v14, v79);
          v10 += 16;
          v13 = vaddq_s64(v13, v79);
          v12 = vaddq_s64(v12, v79);
          v15 = vaddq_s64(v15, v79);
          v16 = vaddq_s64(v16, v79);
          v17 = vaddq_s64(v17, v79);
          v18 = vaddq_s64(v18, v79);
          v11 += 0x80;
          v19 = vaddq_s64(v19, v79);
        }

        while (v9 != v10);
        v24 = 0;
        v25 = xmmword_18439C700;
        v26 = xmmword_18439C710;
        v27 = xmmword_18439C720;
        v28 = xmmword_18439C730;
        v29 = xmmword_18439C740;
        v30 = xmmword_18439C750;
        v31 = xmmword_18439C760;
        v32 = 8 * a2 - 8;
        v33 = xmmword_18439C670;
        do
        {
          v34 = vmovn_s64(vcgeq_u64(v80, v33));
          if (vuzp1_s8(vuzp1_s16(v34, *v25.i8), *v25.i8).u8[0])
          {
            v86[v24] = a4 >> v32;
          }

          if (vuzp1_s8(vuzp1_s16(v34, *&v25), *&v25).i8[1])
          {
            v86[v24 + 1] = a4 >> (8 * ((v24 ^ 0xFE) + a2));
          }

          if (vuzp1_s8(vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v80, *&v31))), *&v25).i8[2])
          {
            v86[v24 + 2] = a4 >> (8 * ((v24 ^ 0xFD) + a2));
            v86[v24 + 3] = a4 >> (8 * ((v24 ^ 0xFC) + a2));
          }

          v35 = vmovn_s64(vcgeq_u64(v80, v30));
          if (vuzp1_s8(*&v25, vuzp1_s16(v35, *&v25)).i32[1])
          {
            v86[v24 + 4] = a4 >> (8 * ((v24 ^ 0xFB) + a2));
          }

          if (vuzp1_s8(*&v25, vuzp1_s16(v35, *&v25)).i8[5])
          {
            v87[v24 + 1] = a4 >> (8 * ((v24 ^ 0xFA) + a2));
          }

          if (vuzp1_s8(*&v25, vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v80, *&v29)))).i8[6])
          {
            v87[v24 + 2] = a4 >> (8 * ((v24 ^ 0xF9) + a2));
            v87[v24 + 3] = a4 >> (8 * ((v24 ^ 0xF8) + a2));
          }

          v36 = vmovn_s64(vcgeq_u64(v80, v28));
          if (vuzp1_s8(vuzp1_s16(v36, *v25.i8), *v25.i8).u8[0])
          {
            v87[v24 + 4] = a4 >> (8 * ((v24 ^ 0xF7) + a2));
          }

          if (vuzp1_s8(vuzp1_s16(v36, *&v25), *&v25).i8[1])
          {
            v87[v24 + 5] = a4 >> (8 * ((v24 ^ 0xF6) + a2));
          }

          if (vuzp1_s8(vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v80, *&v27))), *&v25).i8[2])
          {
            v87[v24 + 6] = a4 >> (8 * ((v24 ^ 0xF5) + a2));
            v87[v24 + 7] = a4 >> (8 * ((v24 ^ 0xF4) + a2));
          }

          v37 = vmovn_s64(vcgeq_u64(v80, v26));
          if (vuzp1_s8(*&v25, vuzp1_s16(v37, *&v25)).i32[1])
          {
            v87[v24 + 8] = a4 >> (8 * ((v24 ^ 0xF3) + a2));
          }

          if (vuzp1_s8(*&v25, vuzp1_s16(v37, *&v25)).i8[5])
          {
            v87[v24 + 9] = a4 >> (8 * ((v24 ^ 0xF2) + a2));
          }

          if (vuzp1_s8(*&v25, vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v80, *&v25)))).i8[6])
          {
            v87[v24 + 10] = a4 >> (8 * ((v24 ^ 0xF1) + a2));
            v87[v24 + 11] = a4 >> (8 * ((v24 ^ 0xF0) + a2));
          }

          v38 = vdupq_n_s64(0x10uLL);
          v30 = vaddq_s64(v30, v38);
          v24 += 16;
          v31 = vaddq_s64(v31, v38);
          v33 = vaddq_s64(v33, v38);
          v29 = vaddq_s64(v29, v38);
          v28 = vaddq_s64(v28, v38);
          v27 = vaddq_s64(v27, v38);
          v26 = vaddq_s64(v26, v38);
          v25 = vaddq_s64(v25, v38);
          v32 += 0x80;
        }

        while (v9 != v24);
        v39 = 0;
        v40 = xmmword_18439C700;
        v41 = xmmword_18439C710;
        v42 = xmmword_18439C720;
        v43 = xmmword_18439C730;
        v44 = xmmword_18439C740;
        v45 = xmmword_18439C750;
        v46 = xmmword_18439C760;
        v47 = xmmword_18439C670;
        v48 = 8 * a2 - 8;
        v49 = *(result + 1);
        do
        {
          v50 = vmovn_s64(vcgeq_u64(v80, v47));
          if (vuzp1_s8(vuzp1_s16(v50, *v40.i8), *v40.i8).u8[0])
          {
            v85[v39] = v49 >> v48;
          }

          if (vuzp1_s8(vuzp1_s16(v50, *&v40), *&v40).i8[1])
          {
            v85[v39 + 1] = v49 >> (8 * ((v39 ^ 0xFE) + a2));
          }

          if (vuzp1_s8(vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v80, *&v46))), *&v40).i8[2])
          {
            v85[v39 + 2] = v49 >> (8 * ((v39 ^ 0xFD) + a2));
            v85[v39 + 3] = v49 >> (8 * ((v39 ^ 0xFC) + a2));
          }

          v51 = vmovn_s64(vcgeq_u64(v80, v45));
          if (vuzp1_s8(*&v40, vuzp1_s16(v51, *&v40)).i32[1])
          {
            v85[v39 + 4] = v49 >> (8 * ((v39 ^ 0xFB) + a2));
          }

          if (vuzp1_s8(*&v40, vuzp1_s16(v51, *&v40)).i8[5])
          {
            v86[v39 + 1] = v49 >> (8 * ((v39 ^ 0xFA) + a2));
          }

          if (vuzp1_s8(*&v40, vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v80, *&v44)))).i8[6])
          {
            v86[v39 + 2] = v49 >> (8 * ((v39 ^ 0xF9) + a2));
            v86[v39 + 3] = v49 >> (8 * ((v39 ^ 0xF8) + a2));
          }

          v52 = vmovn_s64(vcgeq_u64(v80, v43));
          if (vuzp1_s8(vuzp1_s16(v52, *v40.i8), *v40.i8).u8[0])
          {
            v87[v39] = v49 >> (8 * ((v39 ^ 0xF7) + a2));
          }

          if (vuzp1_s8(vuzp1_s16(v52, *&v40), *&v40).i8[1])
          {
            v87[v39 + 1] = v49 >> (8 * ((v39 ^ 0xF6) + a2));
          }

          if (vuzp1_s8(vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v80, *&v42))), *&v40).i8[2])
          {
            v87[v39 + 2] = v49 >> (8 * ((v39 ^ 0xF5) + a2));
            v87[v39 + 3] = v49 >> (8 * ((v39 ^ 0xF4) + a2));
          }

          v53 = vmovn_s64(vcgeq_u64(v80, v41));
          if (vuzp1_s8(*&v40, vuzp1_s16(v53, *&v40)).i32[1])
          {
            v87[v39 + 4] = v49 >> (8 * ((v39 ^ 0xF3) + a2));
          }

          if (vuzp1_s8(*&v40, vuzp1_s16(v53, *&v40)).i8[5])
          {
            v87[v39 + 5] = v49 >> (8 * ((v39 ^ 0xF2) + a2));
          }

          if (vuzp1_s8(*&v40, vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v80, *&v40)))).i8[6])
          {
            v87[v39 + 6] = v49 >> (8 * ((v39 ^ 0xF1) + a2));
            v87[v39 + 7] = v49 >> (8 * ((v39 ^ 0xF0) + a2));
          }

          v54 = vdupq_n_s64(0x10uLL);
          v45 = vaddq_s64(v45, v54);
          v39 += 16;
          v46 = vaddq_s64(v46, v54);
          v47 = vaddq_s64(v47, v54);
          v44 = vaddq_s64(v44, v54);
          v43 = vaddq_s64(v43, v54);
          v42 = vaddq_s64(v42, v54);
          v41 = vaddq_s64(v41, v54);
          v40 = vaddq_s64(v40, v54);
          v48 += 0x80;
        }

        while (v9 != v39);
        v55 = 0;
        v56 = xmmword_18439C700;
        v57 = xmmword_18439C710;
        v58 = xmmword_18439C720;
        v59 = xmmword_18439C730;
        v60 = xmmword_18439C740;
        v61 = xmmword_18439C750;
        v62 = xmmword_18439C760;
        v63 = xmmword_18439C670;
        v64 = 8 * a2 - 8;
        v65 = *(result + 2);
        do
        {
          v66 = vmovn_s64(vcgeq_u64(v80, v63));
          if (vuzp1_s8(vuzp1_s16(v66, *v56.i8), *v56.i8).u8[0])
          {
            v84[v55] = v65 >> v64;
          }

          if (vuzp1_s8(vuzp1_s16(v66, *&v56), *&v56).i8[1])
          {
            v84[v55 + 1] = v65 >> (8 * ((v55 ^ 0xFE) + a2));
          }

          if (vuzp1_s8(vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v80, *&v62))), *&v56).i8[2])
          {
            v84[v55 + 2] = v65 >> (8 * ((v55 ^ 0xFD) + a2));
            v84[v55 + 3] = v65 >> (8 * ((v55 ^ 0xFC) + a2));
          }

          v67 = vmovn_s64(vcgeq_u64(v80, v61));
          if (vuzp1_s8(*&v56, vuzp1_s16(v67, *&v56)).i32[1])
          {
            v84[v55 + 4] = v65 >> (8 * ((v55 ^ 0xFB) + a2));
          }

          if (vuzp1_s8(*&v56, vuzp1_s16(v67, *&v56)).i8[5])
          {
            v85[v55 + 1] = v65 >> (8 * ((v55 ^ 0xFA) + a2));
          }

          if (vuzp1_s8(*&v56, vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v80, *&v60)))).i8[6])
          {
            v85[v55 + 2] = v65 >> (8 * ((v55 ^ 0xF9) + a2));
            v85[v55 + 3] = v65 >> (8 * ((v55 ^ 0xF8) + a2));
          }

          v68 = vmovn_s64(vcgeq_u64(v80, v59));
          if (vuzp1_s8(vuzp1_s16(v68, *v56.i8), *v56.i8).u8[0])
          {
            v86[v55] = v65 >> (8 * ((v55 ^ 0xF7) + a2));
          }

          if (vuzp1_s8(vuzp1_s16(v68, *&v56), *&v56).i8[1])
          {
            v86[v55 + 1] = v65 >> (8 * ((v55 ^ 0xF6) + a2));
          }

          if (vuzp1_s8(vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v80, *&v58))), *&v56).i8[2])
          {
            v86[v55 + 2] = v65 >> (8 * ((v55 ^ 0xF5) + a2));
            v86[v55 + 3] = v65 >> (8 * ((v55 ^ 0xF4) + a2));
          }

          v69 = vmovn_s64(vcgeq_u64(v80, v57));
          if (vuzp1_s8(*&v56, vuzp1_s16(v69, *&v56)).i32[1])
          {
            v87[v55] = v65 >> (8 * ((v55 ^ 0xF3) + a2));
          }

          if (vuzp1_s8(*&v56, vuzp1_s16(v69, *&v56)).i8[5])
          {
            v87[v55 + 1] = v65 >> (8 * ((v55 ^ 0xF2) + a2));
          }

          if (vuzp1_s8(*&v56, vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v80, *&v56)))).i8[6])
          {
            v87[v55 + 2] = v65 >> (8 * ((v55 ^ 0xF1) + a2));
            v87[v55 + 3] = v65 >> (8 * ((v55 ^ 0xF0) + a2));
          }

          v70 = vdupq_n_s64(0x10uLL);
          v61 = vaddq_s64(v61, v70);
          v55 += 16;
          v62 = vaddq_s64(v62, v70);
          v63 = vaddq_s64(v63, v70);
          v60 = vaddq_s64(v60, v70);
          v59 = vaddq_s64(v59, v70);
          v58 = vaddq_s64(v58, v70);
          v57 = vaddq_s64(v57, v70);
          v56 = vaddq_s64(v56, v70);
          v64 += 0x80;
        }

        while (v9 != v55);
        v71 = v84;
        v72 = v87;
        v73 = v85;
        v74 = v86;
        v75 = a2;
        while (1)
        {
          v77 = *v74++;
          v76 = v77;
          v78 = *v73++;
          if (v76 < v78 || *v72 > *v71)
          {
            break;
          }

          ++v71;
          ++v72;
          if (!--v75)
          {
            return result;
          }
        }
      }

      v8 = v83 + 1;
    }

    while ((v83 + 1) != v81);
    return 0;
  }

  return result;
}

uint64_t CGPDFMarkedContentItemCreate(void)
{
  if (CGPDFMarkedContentItemGetTypeID(void)::onceToken != -1)
  {
    dispatch_once(&CGPDFMarkedContentItemGetTypeID(void)::onceToken, &__block_literal_global_966);
  }

  return pdf_create_cftype();
}

uint64_t ___ZL31CGPDFMarkedContentItemGetTypeIDv_block_invoke()
{
  result = pdf_register_cftype(&CGPDFMarkedContentItemGetTypeID(void)::CGPDFMarkedContentItemType);
  CGPDFMarkedContentItemGetTypeID(void)::typeID = result;
  return result;
}

CFTypeRef CGPDFMarkedContentItemRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void CGPDFMarkedContentItemRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void PDFInfoSetValue(uint64_t a1, const void *a2, const void *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v6);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v8 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionarySetValue(MutableCopy, a2, a3);
    v9 = *(a1 + 8);
    if (v9)
    {
      CFRelease(v9);
    }

    *(a1 + 8) = v8;
  }
}

const __CFDictionary *PDFInfoGetString(const __CFDictionary *result, const void *a2, const void *a3)
{
  if (result)
  {
    v3 = result;
    result = *(result + 1);
    if (result)
    {
      value = 0;
      if (CFDictionaryGetValueIfPresent(result, a2, &value) || a3 && CFDictionaryGetValueIfPresent(*(v3 + 1), a3, &value))
      {
        result = value;
        if (value)
        {
          v5 = CFGetTypeID(value);
          if (v5 == CFStringGetTypeID())
          {
            return value;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *PDFInfoCopyProducer(const __CFDictionary **a1)
{
  Mutable = a1;
  if (a1)
  {
    Value = a1[1];
    if (Value)
    {
      Value = CFDictionaryGetValue(Value, @"CGPDFContextProducer");
    }

    if (Value == *MEMORY[0x1E695E738])
    {
      return 0;
    }

    else
    {
      String = PDFInfoGetString(Mutable, @"CGPDFContextProducer", 0);
      if (String)
      {
        Mutable = String;
        CFRetain(String);
      }

      else
      {
        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        CFStringAppend(Mutable, @"iOS ");
        v4 = CFCopySystemVersionString();
        if (v4)
        {
          v5 = v4;
          CFStringAppend(Mutable, v4);
          CFStringAppend(Mutable, @" ");
          CFRelease(v5);
        }

        CFStringAppend(Mutable, @"Quartz PDFContext");
      }
    }
  }

  return Mutable;
}

void *PDFInfoGetNowDate(void *result)
{
  if (result)
  {
    v1 = result;
    result = result[3];
    if (!result)
    {
      v2 = v1[1];
      if (v2)
      {
        Value = CFDictionaryGetValue(v2, @"CGPDFContextDate");
        if (Value != *MEMORY[0x1E695E738])
        {
          v4 = Value;
          if (Value)
          {
            v5 = CFGetTypeID(Value);
            if (v5 == CFDateGetTypeID())
            {
              result = CFRetain(v4);
LABEL_10:
              v1[3] = result;
              return result;
            }
          }

LABEL_9:
          v6 = *MEMORY[0x1E695E480];
          Current = CFAbsoluteTimeGetCurrent();
          result = CFDateCreate(v6, Current);
          goto LABEL_10;
        }
      }

      else if (*MEMORY[0x1E695E738])
      {
        goto LABEL_9;
      }

      return 0;
    }
  }

  return result;
}

CFStringRef PDFInfoCopyKeywordsString(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v1, @"kCGPDFContextKeywords");
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFStringGetTypeID())
  {
    v6 = CFGetTypeID(v3);
    if (v6 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v3);
      if (Count)
      {
        v8 = Count;
        v9 = *MEMORY[0x1E695E480];
        MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v3);
        if (v8 < 1)
        {
          goto LABEL_18;
        }

        for (i = 0; i < v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, i);
          v13 = CFGetTypeID(ValueAtIndex);
          if (v13 != CFStringGetTypeID() || CFStringGetLength(ValueAtIndex) <= 0)
          {
            CFArrayRemoveValueAtIndex(MutableCopy, i);
            --v8;
            --i;
          }
        }

        if (v8)
        {
LABEL_18:
          v14 = CFStringCreateByCombiningStrings(v9, MutableCopy, @", ");
          CFRelease(MutableCopy);
          return v14;
        }

        CFRelease(MutableCopy);
      }
    }

    return 0;
  }

  if (CFStringGetLength(v3) < 1)
  {
    return 0;
  }

  return CFRetain(v3);
}