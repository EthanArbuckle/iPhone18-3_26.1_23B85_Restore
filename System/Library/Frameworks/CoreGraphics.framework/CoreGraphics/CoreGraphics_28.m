int *resample_horizontal<unsigned short,int,2,false>(int *result, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a4 >= 1 && a8 >= 1)
  {
    v11 = 0;
    v12 = *a6;
    v13 = *a7;
    v14 = v13 >> 2;
    v15 = 2 * a2;
    v16 = v15 + 8;
    v17 = result + (v15 + 8) * a4;
    if (v13 >> 2 >= *&v17[-v15 - 4] + *&v17[-v15 - 8])
    {
      v14 = *&v17[-v15 - 4] + *&v17[-v15 - 8];
    }

    if (a2 <= 3)
    {
      v18 = (2 * a2 + 23) / (2 * a2 + 8);
    }

    else
    {
      v18 = 1;
    }

    v19 = a4 - v18;
    v20 = a2 > 7;
    v21 = a2 & 7;
    if ((a2 & 7) != 0)
    {
      v20 = 0;
    }

    v22 = (a2 >> 3) - v20;
    if ((a2 & 7) == 0)
    {
      v21 = 8;
    }

    v23 = vdupq_n_s16(v21);
    v24 = ((4 * v21 + 31) & 0x60) + 32 * v22;
    if (a2 >= 8)
    {
      v25 = 8;
    }

    else
    {
      v25 = a2;
    }

    v26 = vdupq_n_s16(v25);
    v27 = a8;
    v28 = a2 == a2 && a4 > v18;
    v29 = !v28;
    v30 = vcgtq_u16(v26, xmmword_18439C5D0);
    v31.i64[0] = 0x8000800080008000;
    v31.i64[1] = 0x8000800080008000;
    v32 = vcgtq_u16(v23, xmmword_18439C5D0);
    do
    {
      v33 = *(a5 + 8 * v11);
      v34 = 0;
      if (v29)
      {
        v35 = result;
      }

      else
      {
        v35 = result;
        while (1)
        {
          v36 = (v12 + 4 * *v35);
          v37 = (v36 + v24);
          if (v36->u64 + v24 > 4 * v14 + v12)
          {
            break;
          }

          if (v36 >= v37)
          {
            v41 = 0uLL;
            v42 = 0uLL;
            v43 = 0uLL;
            v44 = 0uLL;
          }

          else
          {
            v38 = (v35 + 2);
            v39 = v35[1];
            v40 = &v37[-2];
            v41 = 0uLL;
            v42 = 0uLL;
            v43 = 0uLL;
            v44 = 0uLL;
            while (v36 < v40)
            {
              v45 = *v38++;
              v46 = vandq_s8(v45, v30);
              v47 = *v36;
              v48 = v36[1];
              v36 += 2;
              v10 = veorq_s8(v48, v31);
              v9 = veorq_s8(v47, v31);
              v49 = vzip2q_s16(v46, v46);
              v8 = vzip1q_s16(v46, v46);
              v44 = vmlal_high_s16(v44, v10, v49);
              v42 = vmlal_high_s16(v42, v9, v8);
              v43 = vmlal_s16(v43, *v10.i8, *v49.i8);
              v41 = vmlal_s16(v41, *v9.i8, *v8.i8);
              v39 -= 8;
            }

            if (v39 >= 1)
            {
              v50 = vandq_s8(*v38, v32);
              v10 = veorq_s8(v36[1], v31);
              v9 = veorq_s8(*v36, v31);
              v51 = vzip2q_s16(v50, v50);
              v8 = vzip1q_s16(v50, v50);
              v44 = vmlal_high_s16(v44, v10, v51);
              v42 = vmlal_high_s16(v42, v9, v8);
              v43 = vmlal_s16(v43, *v10.i8, *v51.i8);
              v41 = vmlal_s16(v41, *v9.i8, *v8.i8);
            }
          }

          v52 = vaddq_s32(vaddq_s32(v41, v43), vaddq_s32(v42, v44));
          *v33++ = vmax_s32(vmin_s32(vshr_n_s32(vadd_s32(*&vextq_s8(v52, v52, 8uLL), vadd_s32(*v52.i8, 0x2000200020002000)), 0xEuLL), 0xFFFF0000FFFFLL), 0);
          ++v34;
          v35 = (v35 + v16);
          if (v34 == v19)
          {
            v34 = v19;
            break;
          }
        }
      }

      if (v34 < a4)
      {
        do
        {
          v53 = *v35;
          if (v53 >= v14)
          {
            v54 = v14;
          }

          else
          {
            v54 = *v35;
          }

          v55 = v14 - v54;
          if (v35[1] >= v55)
          {
            v56 = v55;
          }

          else
          {
            v56 = v35[1];
          }

          if (v56 < 1)
          {
            v61 = 0uLL;
            v62 = 0uLL;
            v63 = 0uLL;
            v64 = 0uLL;
          }

          else
          {
            v57 = (v12 + 4 * v53);
            v58 = &v57[-2] + 4 * v56;
            v59 = (v35 + 2);
            if (v57 >= v58)
            {
              v61 = 0uLL;
              v62 = 0uLL;
              v63 = 0uLL;
              v64 = 0uLL;
              goto LABEL_70;
            }

            v60 = v56 + 8;
            v61 = 0uLL;
            v62 = 0uLL;
            v63 = 0uLL;
            v64 = 0uLL;
            do
            {
              v65 = v60;
              v60 -= 8;
              if ((v17 - v59) < 0x10)
              {
                v66 = 0uLL;
                if (v65 != 8)
                {
                  if (v60 < 4)
                  {
                    if (v65 == 9)
                    {
                      v66.i16[0] = v59->i16[0];
                    }

                    else
                    {
                      if (v65 != 10)
                      {
                        v66.i16[0] = v59->i16[2];
                      }

                      v9.i16[0] = v59->i16[0];
                      v9.i16[2] = v59->i16[1];
                      *v66.i8 = vuzp1_s16(*v9.i8, *v66.i8);
                    }
                  }

                  else
                  {
                    if (v60 == 4)
                    {
                      v9.i64[0] = 0;
                    }

                    else if (v60 == 5)
                    {
                      v9.i16[0] = v59->i16[4];
                    }

                    else
                    {
                      if (v65 != 14)
                      {
                        if (v56)
                        {
                          v70 = 0;
                        }

                        else
                        {
                          v70 = v59->u16[7];
                        }

                        v66.i32[0] = v59->u16[6];
                        v66.i32[1] = v70;
                      }

                      v9.i16[0] = v59->i16[4];
                      v9.i16[2] = v59->i16[5];
                      *v9.i8 = vuzp1_s16(*v9.i8, *v66.i8);
                    }

                    v66.i64[0] = v59->i64[0];
                    v66.i64[1] = v9.i64[0];
                  }
                }
              }

              else
              {
                v66 = vandq_s8(*v59, v30);
              }

              ++v59;
              v67 = *v57;
              v68 = v57[1];
              v57 += 2;
              v10 = veorq_s8(v68, v31);
              v9 = veorq_s8(v67, v31);
              v69 = vzip2q_s16(v66, v66);
              v8 = vzip1q_s16(v66, v66);
              v62 = vmlal_high_s16(v62, v9, v8);
              v64 = vmlal_high_s16(v64, v10, v69);
              v63 = vmlal_s16(v63, *v10.i8, *v69.i8);
              v61 = vmlal_s16(v61, *v9.i8, *v8.i8);
            }

            while (v57 < v58);
            if (v60 >= 9)
            {
              v56 = v65 - 16;
LABEL_70:
              v71 = v56;
              v72 = 2 * v56 - 8;
              v73 = v56 << 16;
              v74 = v71;
              while (2)
              {
                if ((v17 - v59) < 0x10)
                {
                  if (v74 >= 4)
                  {
                    if (v74 == 4)
                    {
                      v9.i64[0] = 0;
                    }

                    else if (v74 == 5)
                    {
                      v9.i16[0] = v59->i16[4];
                    }

                    else
                    {
                      if (v74 == 6)
                      {
                        v79 = 0;
                      }

                      else
                      {
                        if (v71)
                        {
                          v82 = 0;
                        }

                        else
                        {
                          v82 = v59->u16[7];
                        }

                        v79.i32[0] = v59->u16[6];
                        v79.i32[1] = v82;
                      }

                      v9.i16[0] = v59->i16[4];
                      v9.i16[2] = v59->i16[5];
                      *v9.i8 = vuzp1_s16(*v9.i8, v79);
                    }

                    v8.i64[0] = v59->i64[0];
                    v8.i64[1] = v9.i64[0];
                    goto LABEL_75;
                  }

                  if (v74 == 1)
                  {
                    v8.i16[0] = v59->i16[0];
                  }

                  else
                  {
                    if (v74 == 2)
                    {
                      v8 = 0uLL;
                    }

                    else
                    {
                      v8 = v59->u16[2];
                    }

                    v9.i16[0] = v59->i16[0];
                    v9.i16[2] = v59->i16[1];
                    *v8.i8 = vuzp1_s16(*v9.i8, *v8.i8);
                  }

                  ++v59;
                }

                else
                {
                  v75 = v73 >> 16;
                  if (v73 >> 16 >= 8)
                  {
                    v75 = 8;
                  }

                  v9 = *v59;
                  v8 = vandq_s8(*v59, vcgtq_s16(vdupq_n_s16(v75), xmmword_18439C5D0));
LABEL_75:
                  ++v59;
                  if (v74 >= 8)
                  {
                    v76 = v57[1];
                    goto LABEL_77;
                  }

                  if (v74 >= 4)
                  {
                    if (v72)
                    {
                      if (v72 < 4)
                      {
                        if (v74 == 5)
                        {
                          v83 = 0;
                        }

                        else
                        {
                          v83 = v57[1].u16[2];
                        }

                        v76.i64[1] = 0;
                        v76.i32[0] = v57[1].i32[0];
                        v76.i16[2] = v83;
                        v76.i16[3] = WORD2(v83);
                      }

                      else
                      {
                        if (v74 == 6)
                        {
                          v10.i64[0] = 0;
                        }

                        else
                        {
                          if (v74 == 7)
                          {
                            v9.i64[0] = 0;
                          }

                          else
                          {
                            v9.i16[0] = v57[1].i16[6];
                            v9.i16[2] = v57[1].i16[7];
                          }

                          v10.i16[0] = v57[1].i16[4];
                          v10.i16[2] = v57[1].i16[5];
                          *v10.i8 = vuzp1_s16(*v10.i8, *v9.i8);
                        }

                        v76.i64[0] = v57[1].i64[0];
                        v76.i64[1] = v10.i64[0];
                      }
                    }

                    else
                    {
                      v76 = 0uLL;
                    }

LABEL_77:
                    v77 = *v57;
LABEL_78:
                    v57 += 2;
                    v10 = veorq_s8(v77, v31);
                    v78 = vzip2q_s16(v8, v8);
                    v8 = vzip1q_s16(v8, v8);
                    v9 = veorq_s8(v76, v31);
                    v62 = vmlal_high_s16(v62, v10, v8);
                    v61 = vmlal_s16(v61, *v10.i8, *v8.i8);
                    v64 = vmlal_high_s16(v64, v9, v78);
                    v63 = vmlal_s16(v63, *v9.i8, *v78.i8);
                    v72 -= 16;
                    v73 -= 0x80000;
                    v28 = v74 <= 8;
                    v74 -= 8;
                    if (v28)
                    {
                      goto LABEL_126;
                    }

                    continue;
                  }
                }

                break;
              }

              if (v74 < 2)
              {
                if (v74 == 1)
                {
                  v81 = 0;
                }

                else
                {
                  LOWORD(v81) = v57->i16[2];
                  WORD2(v81) = v57->i16[3];
                }

                v77.i64[1] = 0;
                v77.i32[0] = v57->i32[0];
                v77.i16[2] = v81;
                v77.i16[3] = WORD2(v81);
              }

              else
              {
                if (v74 == 2)
                {
                  v80 = 0;
                }

                else
                {
                  HIWORD(v80) = 0;
                  LOWORD(v80) = v57->i16[4];
                  *(&v80 + 2) = v57->u16[5];
                }

                v77.i64[0] = v57->i64[0];
                v77.i64[1] = v80;
              }

              v76 = 0uLL;
              goto LABEL_78;
            }
          }

LABEL_126:
          v84 = vaddq_s32(vaddq_s32(v61, v63), vaddq_s32(v62, v64));
          *v33++ = vmax_s32(vmin_s32(vshr_n_s32(vadd_s32(*&vextq_s8(v84, v84, 8uLL), vadd_s32(*v84.i8, 0x2000200020002000)), 0xEuLL), 0xFFFF0000FFFFLL), 0);
          ++v34;
          v35 = (v35 + v16);
        }

        while (v34 != a4);
      }

      v12 += v13;
      ++v11;
    }

    while (v11 != v27);
  }

  return result;
}

int16x4_t *resample_horizontal<unsigned short,int,4,false>(int16x4_t *result, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a4 >= 1 && a8 >= 1)
  {
    v10 = 0;
    v11 = *a6;
    v12 = *a7;
    v13 = v12 >> 3;
    v14 = a4;
    v15 = 2 * a2 + 8;
    v16 = result + v15 * a4;
    if (v12 >> 3 >= *&v16[-v15 + 4] + *&v16[-v15])
    {
      v13 = *&v16[-v15 + 4] + *&v16[-v15];
    }

    v17 = a4 - 1;
    v18 = a2 > 3;
    LODWORD(v19) = (8 * (a2 & 3)) | 0x20;
    if ((a2 & 3) != 0)
    {
      v19 = v19;
    }

    else
    {
      v19 = 64;
    }

    if ((a2 & 3) != 0)
    {
      v18 = 0;
    }

    v20 = ((v19 - 1) & 0xFFFFFFFFFFFFFFE0) + 32 * ((a2 >> 2) - v18);
    v21 = a8;
    v24 = a2 != a2 || a4 < 2 || a4 == 1;
    v25.i64[0] = 0x8000800080008000;
    v25.i64[1] = 0x8000800080008000;
    v26.i64[0] = 0x2000200020002000;
    v26.i64[1] = 0x2000200020002000;
    v27.i64[0] = 0xFFFF0000FFFFLL;
    v27.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      v28 = *(a5 + 8 * v10);
      v29 = 0;
      if (v24)
      {
        v30 = result;
      }

      else
      {
        v30 = result;
        while (1)
        {
          v31 = (v11 + 8 * v30->i32[0]);
          v32 = (v31 + v20);
          if (v31->u64 + v20 > 8 * v13 + v11)
          {
            break;
          }

          if (v31 >= v32)
          {
            v36 = 0uLL;
            v37 = 0uLL;
            v38 = 0uLL;
            v39 = 0uLL;
          }

          else
          {
            v33 = v30 + 1;
            v34 = v30->i32[1];
            v35 = &v32[-2];
            v36 = 0uLL;
            v37 = 0uLL;
            v38 = 0uLL;
            v39 = 0uLL;
            while (v31 < v35)
            {
              v40 = *v33++;
              v8 = v40;
              v41 = *v31;
              v42 = v31[1];
              v31 += 2;
              v9 = veorq_s8(v42, v25);
              v43 = veorq_s8(v41, v25);
              v36 = vmlal_lane_s16(v36, *v43.i8, v40, 0);
              v37 = vmlal_high_lane_s16(v37, v43, v40, 1);
              v38 = vmlal_lane_s16(v38, *v9.i8, v40, 2);
              v39 = vmlal_high_lane_s16(v39, v9, v40, 3);
              v34 -= 4;
            }

            if (v34 >= 1)
            {
              v8 = *v33;
              v9 = veorq_s8(v31[1], v25);
              v44 = veorq_s8(*v31, v25);
              v36 = vmlal_lane_s16(v36, *v44.i8, *v33, 0);
              v37 = vmlal_high_lane_s16(v37, v44, *v33, 1);
              v38 = vmlal_lane_s16(v38, *v9.i8, *v33, 2);
              v39 = vmlal_high_lane_s16(v39, v9, *v33, 3);
            }
          }

          *v28++ = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(v37, v39), vaddq_s32(v36, v38)), v26), 0xEuLL), v27), 0);
          ++v29;
          v30 = (v30 + v15);
          if (v29 == v17)
          {
            v29 = v14 - 1;
            break;
          }
        }
      }

      if (v29 < v14)
      {
        do
        {
          v45 = v30->i32[1];
          v46 = v30->i32[0];
          if (v46 >= v13)
          {
            v47 = v13;
          }

          else
          {
            v47 = v30->i32[0];
          }

          v48 = v13 - v47;
          if (v45 >= v48)
          {
            v45 = v48;
          }

          if (v45 < 1)
          {
            v52 = 0uLL;
            v54 = 0uLL;
            v55 = 0uLL;
            v56 = 0uLL;
          }

          else
          {
            v49 = (v11 + 8 * v46);
            v50 = &v49[-2] + 8 * v45;
            v51 = &v30[1];
            v52 = 0uLL;
            if (v49 >= v50)
            {
              v54 = 0uLL;
              v55 = 0uLL;
              v56 = 0uLL;
              goto LABEL_60;
            }

            v53 = v45;
            v54 = 0uLL;
            v55 = 0uLL;
            v56 = 0uLL;
            do
            {
              v57 = v53;
              if ((v16 - v51) < 8)
              {
                if (v53)
                {
                  if (v53 == 1)
                  {
                    v8.i16[0] = *v51;
                  }

                  else
                  {
                    if (v53 == 2)
                    {
                      v61 = 0;
                    }

                    else
                    {
                      if (v45)
                      {
                        v62 = 0;
                      }

                      else
                      {
                        v62 = v51[3];
                      }

                      v61.i32[0] = v51[2];
                      v61.i32[1] = v62;
                    }

                    v9.i16[0] = *v51;
                    v9.i16[2] = v51[1];
                    v8 = vuzp1_s16(*v9.i8, v61);
                  }
                }

                else
                {
                  v8 = 0;
                }
              }

              else
              {
                v8 = *v51;
              }

              v51 += 4;
              v58 = *v49;
              v59 = v49[1];
              v49 += 2;
              v9 = veorq_s8(v59, v25);
              v60 = veorq_s8(v58, v25);
              v52 = vmlal_lane_s16(v52, *v60.i8, v8, 0);
              v54 = vmlal_high_lane_s16(v54, v60, v8, 1);
              v55 = vmlal_lane_s16(v55, *v9.i8, v8, 2);
              v56 = vmlal_high_lane_s16(v56, v9, v8, 3);
              v53 = v57 - 4;
            }

            while (v49 < v50);
            if (v57 >= 5)
            {
              v45 = v57 - 4;
LABEL_60:
              v63 = v45;
              while (2)
              {
                if ((v16 - v51) >= 8)
                {
                  v8 = *v51;
                  goto LABEL_63;
                }

                if (v63 == 1)
                {
                  v67 = *v51;
                  v51 += 4;
                  v68 = 0;
                  v8 = v67;
                  v64.i64[0] = v49->i64[0];
                  goto LABEL_71;
                }

                if (v63 == 2)
                {
                  v69 = 0;
                }

                else
                {
                  if (v45)
                  {
                    v70 = 0;
                  }

                  else
                  {
                    v70 = v51[3];
                  }

                  v69.i32[0] = v51[2];
                  v69.i32[1] = v70;
                }

                v9.i16[0] = *v51;
                v9.i16[2] = v51[1];
                v8 = vuzp1_s16(*v9.i8, v69);
LABEL_63:
                v51 += 4;
                if (v63 >= 4)
                {
                  v9 = v49[1];
                  goto LABEL_65;
                }

                if (v63 >= 2)
                {
                  v9 = 0uLL;
                  if (v63 != 2)
                  {
                    v9.i64[0] = v49[1].i64[0];
                  }

LABEL_65:
                  v64 = *v49;
                }

                else
                {
                  v64.i64[0] = v49->i64[0];
                  if (v63 == 1)
                  {
                    v68 = 0;
                  }

                  else
                  {
                    v68 = v49->i64[1];
                  }

LABEL_71:
                  v64.i64[1] = v68;
                  v9 = 0uLL;
                }

                v49 += 2;
                v65 = veorq_s8(v64, v25);
                v52 = vmlal_lane_s16(v52, *v65.i8, v8, 0);
                v54 = vmlal_high_lane_s16(v54, v65, v8, 1);
                v55 = vmlal_lane_s16(v55, veor_s8(*v9.i8, 0x8000800080008000), v8, 2);
                v56 = vmlal_lane_s16(v56, veor_s8(*&vextq_s8(v9, v9, 8uLL), 0x8000800080008000), v8, 3);
                v66 = __OFSUB__(v63, 4);
                v63 -= 4;
                if ((v63 < 0) ^ v66 | (v63 == 0))
                {
                  break;
                }

                continue;
              }
            }
          }

          *v28++ = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(v54, v56), vaddq_s32(v52, v55)), v26), 0xEuLL), v27), 0);
          ++v29;
          v30 = (v30 + v15);
        }

        while (v29 != v14);
      }

      v11 += v12;
      ++v10;
    }

    while (v10 != v21);
  }

  return result;
}

int *resample_horizontal<unsigned short,int,3,false>(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a4 >= 1 && a8 >= 1)
  {
    v11 = 0;
    v12 = *a6;
    v13 = *a7;
    v14 = v13 / 6;
    v15 = a4;
    v16 = 2 * a2;
    v17 = v16 + 8;
    v18 = result + (v16 + 8) * a4;
    if (v13 / 6 >= *&v18[-v16 - 4] + *&v18[-v16 - 8])
    {
      v14 = *&v18[-v16 - 4] + *&v18[-v16 - 8];
    }

    if (a2 <= 3)
    {
      v19 = (2 * a2 + 23) / (2 * a2 + 8);
    }

    else
    {
      v19 = 1;
    }

    if (a2 % 5)
    {
      v20 = a2 % 5;
    }

    else
    {
      v20 = 5;
    }

    if (a2 % 5)
    {
      v21 = 0;
    }

    else
    {
      v21 = a2 > 4;
    }

    v22 = ((6 * v20 + 31) & 0x3FFFFFFE0) + 30 * (a2 / 5 - v21);
    v23 = vdupq_n_s16(v20);
    if (a2 >= 5)
    {
      v24 = 5;
    }

    else
    {
      v24 = a2;
    }

    v25 = vdupq_n_s16(v24);
    v26 = a8;
    v27 = a2 == a2 && v15 > v19;
    v28 = !v27;
    v29 = vcgtq_u16(v25, xmmword_18439C5D0);
    v30.i64[0] = 0x8000800080008000;
    v30.i64[1] = 0x8000800080008000;
    v31.i64[0] = 0x2000200020002000;
    v31.i64[1] = 0x2000200020002000;
    v32.i64[0] = 0xFFFF0000FFFFLL;
    v32.i64[1] = 0xFFFF0000FFFFLL;
    v33 = vcgtq_s16(v23, xmmword_18439C5D0);
    do
    {
      v34 = *(a5 + 8 * v11);
      v35 = 0;
      if (v28)
      {
        v36 = result;
      }

      else
      {
        v36 = result;
        while (1)
        {
          v37 = (v12 + 6 * *v36);
          v38 = (v37 + v22);
          if (v37->u64 + v22 > 6 * v14 + v12)
          {
            break;
          }

          if (v37 >= v38)
          {
            v42 = 0uLL;
            v43 = 0uLL;
            v44 = 0uLL;
            v45 = 0uLL;
          }

          else
          {
            v39 = (v36 + 2);
            v40 = v36[1];
            v41 = &v38[-2];
            v42 = 0uLL;
            v43 = 0uLL;
            v44 = 0uLL;
            v45 = 0uLL;
            while (v37 < v41)
            {
              v46 = *v39;
              v39 = (v39 + 10);
              v47 = vandq_s8(v46, v29);
              v48 = *v37;
              v49 = v37[1];
              v37 = (v37 + 30);
              v10 = veorq_s8(v49, v30);
              v9 = veorq_s8(v48, v30);
              v50 = vqtbl1q_s8(v47, xmmword_18439C5E0);
              v51 = vqtbl1q_s8(v47, xmmword_18439C5F0);
              v45 = vmlal_high_s16(v45, v10, v50);
              v43 = vmlal_high_s16(v43, v9, v51);
              v44 = vmlal_s16(v44, *v10.i8, *v50.i8);
              v42 = vmlal_s16(v42, *v9.i8, *v51.i8);
              v40 -= 5;
            }

            if (v40 >= 1)
            {
              v52 = vandq_s8(*v39, v33);
              v10 = veorq_s8(v37[1], v30);
              v9 = veorq_s8(*v37, v30);
              v53 = vqtbl1q_s8(v52, xmmword_18439C5E0);
              v54 = vqtbl1q_s8(v52, xmmword_18439C5F0);
              v45 = vmlal_high_s16(v45, v10, v53);
              v43 = vmlal_high_s16(v43, v9, v54);
              v44 = vmlal_s16(v44, *v10.i8, *v53.i8);
              v42 = vmlal_s16(v42, *v9.i8, *v54.i8);
            }
          }

          v8 = vextq_s8(v44, v45, 4uLL);
          v55 = vaddq_s32(v8, v42);
          v56 = vaddq_s32(vextq_s8(v45, v45, 4uLL).u64[0], v43);
          v57 = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v55, vextq_s8(v55, v56, 0xCuLL)), vaddq_s32(vextq_s8(v56, v44, 8uLL), v31)), 0xEuLL), v32), 0);
          *v34 = v57.i64[0];
          *(v34 + 8) = v57.i32[2];
          v34 += 12;
          ++v35;
          v36 = (v36 + v17);
          if (v35 == v15 - v19)
          {
            v35 = v15 - v19;
            break;
          }
        }
      }

      if (v35 < v15)
      {
        do
        {
          if (*v36 >= v14)
          {
            v58 = v14;
          }

          else
          {
            v58 = *v36;
          }

          v59 = v14 - v58;
          if (v36[1] >= v59)
          {
            v60 = v59;
          }

          else
          {
            v60 = v36[1];
          }

          if (v60 < 1)
          {
            v65 = 0uLL;
            v66 = 0uLL;
            v67 = 0uLL;
            v68 = 0uLL;
          }

          else
          {
            v61 = (v12 + 6 * *v36);
            v62 = &v61[-2] + 6 * v60;
            v63 = (v36 + 2);
            if (v61 >= v62)
            {
              v65 = 0uLL;
              v66 = 0uLL;
              v67 = 0uLL;
              v68 = 0uLL;
              goto LABEL_72;
            }

            v64 = v60 + 5;
            v65 = 0uLL;
            v66 = 0uLL;
            v67 = 0uLL;
            v68 = 0uLL;
            do
            {
              v69 = v64;
              v64 -= 5;
              if ((v18 - v63) < 0x10)
              {
                v70 = 0uLL;
                if (v69 != 5)
                {
                  if (v64 < 4)
                  {
                    if (v69 == 6)
                    {
                      v70.i16[0] = v63->i16[0];
                    }

                    else
                    {
                      if (v69 != 7)
                      {
                        v70.i16[0] = v63->i16[2];
                      }

                      v9.i16[0] = v63->i16[0];
                      v9.i16[2] = v63->i16[1];
                      *v70.i8 = vuzp1_s16(*v9.i8, *v70.i8);
                    }
                  }

                  else
                  {
                    if (v64 == 4)
                    {
                      v9.i64[0] = 0;
                    }

                    else if (v64 == 5)
                    {
                      v9.i16[0] = v63->i16[4];
                    }

                    else
                    {
                      if (v69 != 11)
                      {
                        if (v64)
                        {
                          v74 = 0;
                        }

                        else
                        {
                          v74 = v63->u16[7];
                        }

                        v70.i32[0] = v63->u16[6];
                        v70.i32[1] = v74;
                      }

                      v9.i16[0] = v63->i16[4];
                      v9.i16[2] = v63->i16[5];
                      *v9.i8 = vuzp1_s16(*v9.i8, *v70.i8);
                    }

                    v70.i64[0] = v63->i64[0];
                    v70.i64[1] = v9.i64[0];
                  }
                }
              }

              else
              {
                v70 = vandq_s8(*v63, v29);
              }

              v63 = (v63 + 10);
              v71 = *v61;
              v72 = v61[1];
              v61 = (v61 + 30);
              v10 = veorq_s8(v72, v30);
              v9 = veorq_s8(v71, v30);
              v73 = vqtbl1q_s8(v70, xmmword_18439C5E0);
              v8 = vqtbl1q_s8(v70, xmmword_18439C5F0);
              v66 = vmlal_high_s16(v66, v9, v8);
              v68 = vmlal_high_s16(v68, v10, v73);
              v67 = vmlal_s16(v67, *v10.i8, *v73.i8);
              v65 = vmlal_s16(v65, *v9.i8, *v8.i8);
            }

            while (v61 < v62);
            if (v64 >= 6)
            {
              v60 = v69 - 10;
LABEL_72:
              v75 = 0;
              v76 = v60;
              v77 = 3 * v60;
              v78 = v60 << 16;
              v79 = 3 * v60;
              while (2)
              {
                v80 = v77 + v75;
                if ((v18 - v63) < 0x10)
                {
                  if (v76 >= 4)
                  {
                    if (v76 == 4)
                    {
                      v9 = 0uLL;
                    }

                    else if (v76 == 5)
                    {
                      v9.i16[0] = v63->i16[4];
                    }

                    else
                    {
                      if (v80 == 18)
                      {
                        v85 = 0;
                      }

                      else
                      {
                        if (v76)
                        {
                          v83 = 0;
                        }

                        else
                        {
                          v83 = v63->u16[7];
                        }

                        v85.i32[0] = v63->u16[6];
                        v85.i32[1] = v83;
                      }

                      v9.i16[0] = v63->i16[4];
                      v9.i16[2] = v63->i16[5];
                      *v9.i8 = vuzp1_s16(*v9.i8, v85);
                    }

                    v8.i64[0] = v63->i64[0];
                    v8.i64[1] = v9.i64[0];
                    goto LABEL_77;
                  }

                  if (v80 == 3)
                  {
                    v8.i16[0] = v63->i16[0];
                  }

                  else
                  {
                    if (v77 + v75 == 6)
                    {
                      v8 = 0uLL;
                    }

                    else
                    {
                      v8 = v63->u16[2];
                    }

                    v9.i16[0] = v63->i16[0];
                    v9.i16[2] = v63->i16[1];
                    *v8.i8 = vuzp1_s16(*v9.i8, *v8.i8);
                  }

                  v63 = (v63 + 10);
                }

                else
                {
                  v81 = v78 >> 16;
                  if (v78 >> 16 >= 8)
                  {
                    v81 = 8;
                  }

                  v9 = *v63;
                  v8 = vandq_s8(*v63, vcgtq_s16(vdupq_n_s16(v81), xmmword_18439C5D0));
LABEL_77:
                  v63 = (v63 + 10);
                  if (v76 >= 6)
                  {
                    v10 = v61[1];
                    goto LABEL_79;
                  }
                }

                if (v76 < 3)
                {
                  if (v77 + v75 == 6)
                  {
                    v9.i64[0] = v61->i64[0];
                    HIWORD(v84) = 0;
                    LOWORD(v84) = v61->i16[4];
                    *(&v84 + 2) = v61->u16[5];
                    v9.i64[1] = v84;
                  }

                  else if (v79 + v75)
                  {
                    if (v79 + v75 == 1)
                    {
                      v9.i16[0] = v61->i16[0];
                    }

                    else
                    {
                      v9.i16[3] = 0;
                      v9.i64[1] = 0;
                      v9.i32[0] = v61->i32[0];
                      v9.i16[2] = v61->i16[2];
                    }
                  }

                  else
                  {
                    v9 = 0uLL;
                  }

                  v10 = 0uLL;
                }

                else
                {
                  if (v77 + v75 == 8)
                  {
                    v10 = 0uLL;
                  }

                  else if ((v77 + v75 - 8) < 4)
                  {
                    if (v79 + v75 == 8)
                    {
                      v9.i64[0] = 0;
                    }

                    else if (v79 + v75 == 9)
                    {
                      v9.i16[0] = v61[1].i16[0];
                    }

                    else
                    {
                      v9.i16[3] = 0;
                      v9.i32[0] = v61[1].i32[0];
                      v9.i16[2] = v61[1].i16[2];
                    }

                    v10.i64[0] = v9.i64[0];
                  }

                  else
                  {
                    if (v79 + v75 == 12)
                    {
                      v9.i64[0] = 0;
                    }

                    else if (v79 + v75 == 13)
                    {
                      v9.i16[0] = v61[1].i16[4];
                    }

                    else
                    {
                      if ((v77 + v75))
                      {
                        v86 = 0;
                      }

                      else
                      {
                        v86 = v61[1].i16[7];
                      }

                      v9.i32[0] = v61[1].i32[2];
                      v9.i16[2] = v61[1].i16[6];
                      v9.i16[3] = v86;
                    }

                    v10.i64[0] = v61[1].i64[0];
                    v10.i64[1] = v9.i64[0];
                  }

LABEL_79:
                  v9 = *v61;
                }

                v61 = (v61 + 30);
                v9 = veorq_s8(v9, v30);
                v82 = vqtbl1q_s8(v8, xmmword_18439C5E0);
                v8 = vqtbl1q_s8(v8, xmmword_18439C5F0);
                v10 = veorq_s8(v10, v30);
                v66 = vmlal_high_s16(v66, v9, v8);
                v68 = vmlal_high_s16(v68, v10, v82);
                v67 = vmlal_s16(v67, *v10.i8, *v82.i8);
                v65 = vmlal_s16(v65, *v9.i8, *v8.i8);
                v75 -= 15;
                v78 -= 327680;
                v27 = v76 <= 5;
                v76 -= 5;
                if (v27)
                {
                  break;
                }

                continue;
              }
            }
          }

          v8 = vextq_s8(v67, v68, 4uLL);
          v87 = vaddq_s32(v8, v65);
          v88 = vaddq_s32(vextq_s8(v68, v68, 4uLL).u64[0], v66);
          v89 = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vextq_s8(v87, v88, 0xCuLL), v87), vaddq_s32(vextq_s8(v88, v67, 8uLL), v31)), 0xEuLL), v32), 0);
          *v34 = v89.i64[0];
          *(v34 + 8) = v89.i32[2];
          v34 += 12;
          ++v35;
          v36 = (v36 + v17);
        }

        while (v35 != v15);
      }

      v12 += v13;
      ++v11;
    }

    while (v11 != v26);
  }

  return result;
}

int *resample_horizontal<unsigned short,int,1,false>(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a4 >= 1 && a8 >= 1)
  {
    v11 = 0;
    v12 = *a6;
    v13 = *a7;
    v14 = v13 >> 1;
    v15 = a4;
    v16 = 2 * a2;
    v17 = v16 + 8;
    v18 = result + (v16 + 8) * a4;
    if (v13 >> 1 >= *&v18[-v16 - 4] + *&v18[-v16 - 8])
    {
      v14 = *&v18[-v16 - 4] + *&v18[-v16 - 8];
    }

    if (a2 <= 3)
    {
      v19 = (2 * a2 + 23) / (2 * a2 + 8);
    }

    else
    {
      v19 = 1;
    }

    v20 = a2 > 7;
    if ((a2 & 7) != 0)
    {
      v21 = a2 & 7;
    }

    else
    {
      v21 = 8;
    }

    if ((a2 & 7) != 0)
    {
      v20 = 0;
    }

    v22 = ((2 * v21 + 15) & 0x30) + 2 * ((a2 + 8 * (v20 << 31 >> 31)) & 0xFFFFFFF8);
    v23 = v15 - v19;
    v24 = vdupq_n_s16(v21);
    if (a2 >= 8)
    {
      v25 = 8;
    }

    else
    {
      v25 = a2;
    }

    v26 = vdupq_n_s16(v25);
    v27 = a8;
    v29 = a2 == a2 && v15 > v19;
    v30 = vcgtq_u16(v26, xmmword_18439C5D0);
    v31.i64[0] = 0x8000800080008000;
    v31.i64[1] = 0x8000800080008000;
    v32 = vcgtq_u16(v24, xmmword_18439C5D0);
    do
    {
      v33 = *(a5 + 8 * v11);
      v34 = 0;
      if (v29)
      {
        v35 = result;
        while (1)
        {
          v36 = (v12 + 2 * *v35);
          v37 = (v36 + v22);
          if (v36->u64 + v22 > 2 * v14 + v12)
          {
            break;
          }

          if (v36 >= v37)
          {
            v41 = 0uLL;
            v42 = 0uLL;
          }

          else
          {
            v38 = (v35 + 2);
            v39 = v35[1];
            v40 = &v37[-1];
            v41 = 0uLL;
            v42 = 0uLL;
            while (v36 < v40)
            {
              v43 = *v38++;
              v44 = v43;
              v45 = *v36++;
              v8 = vandq_s8(v44, v30);
              v9 = veorq_s8(v45, v31);
              v42 = vmlal_high_s16(v42, v9, v8);
              v41 = vmlal_s16(v41, *v9.i8, *v8.i8);
              v39 -= 8;
            }

            if (v39 >= 1)
            {
              v8 = vandq_s8(*v38, v32);
              v9 = veorq_s8(*v36, v31);
              v42 = vmlal_high_s16(v42, v9, v8);
              v41 = vmlal_s16(v41, *v9.i8, *v8.i8);
            }
          }

          v46 = vaddq_s32(v41, v42);
          v46.i32[0] = (vaddvq_s32(v46) + 536879104) >> 14;
          *v33++ = vmax_s32(vmin_s32(*v46.i8, 0xFFFF0000FFFFLL), 0).u32[0];
          ++v34;
          v35 = (v35 + v17);
          if (v34 == v23)
          {
            v34 = v23;
            break;
          }
        }
      }

      else
      {
        v35 = result;
      }

      if (v34 < v15)
      {
        do
        {
          v47 = v35[1];
          v48 = *v35;
          if (v48 >= v14)
          {
            v49 = v14;
          }

          else
          {
            v49 = *v35;
          }

          v50 = v14 - v49;
          if (v47 >= v50)
          {
            v47 = v50;
          }

          if (v47 < 1)
          {
            v54 = 0uLL;
            v56 = 0uLL;
          }

          else
          {
            v51 = (v12 + 2 * v48);
            v52 = &v51[-1] + 2 * v47;
            v53 = (v35 + 2);
            v54 = 0uLL;
            if (v51 >= v52)
            {
              v56 = 0uLL;
              goto LABEL_70;
            }

            v55 = v47 + 8;
            v56 = 0uLL;
            do
            {
              v57 = v55;
              v55 -= 8;
              if ((v18 - v53) < 0x10)
              {
                v8 = 0uLL;
                if (v57 != 8)
                {
                  if (v55 < 4)
                  {
                    if (v57 == 9)
                    {
                      v8.i16[0] = v53->i16[0];
                    }

                    else
                    {
                      if (v57 != 10)
                      {
                        v8.i16[0] = v53->i16[2];
                      }

                      v9.i16[0] = v53->i16[0];
                      v9.i16[2] = v53->i16[1];
                      *v8.i8 = vuzp1_s16(*v9.i8, *v8.i8);
                    }
                  }

                  else
                  {
                    if (v55 == 4)
                    {
                      v9.i64[0] = 0;
                    }

                    else if (v55 == 5)
                    {
                      v9.i16[0] = v53->i16[4];
                    }

                    else
                    {
                      if (v57 != 14)
                      {
                        if (v47)
                        {
                          v59 = 0;
                        }

                        else
                        {
                          v59 = v53->u16[7];
                        }

                        v8.i32[0] = v53->u16[6];
                        v8.i32[1] = v59;
                      }

                      v9.i16[0] = v53->i16[4];
                      v9.i16[2] = v53->i16[5];
                      *v9.i8 = vuzp1_s16(*v9.i8, *v8.i8);
                    }

                    v8.i64[0] = v53->i64[0];
                    v8.i64[1] = v9.i64[0];
                  }
                }
              }

              else
              {
                v8 = vandq_s8(*v53, v30);
              }

              ++v53;
              v58 = *v51++;
              v9 = veorq_s8(v58, v31);
              v56 = vmlal_high_s16(v56, v9, v8);
              v54 = vmlal_s16(v54, *v9.i8, *v8.i8);
            }

            while (v51 < v52);
            if (v55 >= 9)
            {
              v47 = v57 - 16;
LABEL_70:
              v60 = v47 << 16;
              v61 = v47;
              while (2)
              {
                if ((v18 - v53) < 0x10)
                {
                  if (v61 >= 4)
                  {
                    if (v61 == 4)
                    {
                      v9 = 0uLL;
                    }

                    else if (v61 == 5)
                    {
                      v9.i16[0] = v53->i16[4];
                    }

                    else
                    {
                      if (v61 == 6)
                      {
                        v64 = 0;
                      }

                      else
                      {
                        if (v47)
                        {
                          v65 = 0;
                        }

                        else
                        {
                          v65 = v53->u16[7];
                        }

                        v64.i32[0] = v53->u16[6];
                        v64.i32[1] = v65;
                      }

                      v9.i16[0] = v53->i16[4];
                      v9.i16[2] = v53->i16[5];
                      *v9.i8 = vuzp1_s16(*v9.i8, v64);
                    }

                    v8.i64[0] = v53->i64[0];
                    v8.i64[1] = v9.i64[0];
                    goto LABEL_75;
                  }

                  if (v61 == 1)
                  {
                    v8.i16[0] = v53->i16[0];
                  }

                  else
                  {
                    if (v61 == 2)
                    {
                      v8 = 0uLL;
                    }

                    else
                    {
                      v8 = v53->u16[2];
                    }

                    v9.i16[0] = v53->i16[0];
                    v9.i16[2] = v53->i16[1];
                    *v8.i8 = vuzp1_s16(*v9.i8, *v8.i8);
                  }

                  ++v53;
                }

                else
                {
                  v62 = v60 >> 16;
                  if (v60 >> 16 >= 8)
                  {
                    v62 = 8;
                  }

                  v9 = *v53;
                  v8 = vandq_s8(*v53, vcgtq_s16(vdupq_n_s16(v62), xmmword_18439C5D0));
LABEL_75:
                  ++v53;
                  if (v61 >= 8)
                  {
                    v9 = *v51;
                    goto LABEL_77;
                  }

                  if (v61 >= 4)
                  {
                    if (v61 == 4)
                    {
                      v10 = 0;
                    }

                    else if (v61 == 5)
                    {
                      v10.i16[0] = v51->i16[4];
                    }

                    else
                    {
                      if (v61 == 6)
                      {
                        v66 = 0;
                      }

                      else
                      {
                        v66 = v51->u16[6];
                      }

                      v10.i16[0] = v51->i16[4];
                      v10.i16[2] = v51->i16[5];
                      v10 = vuzp1_s16(v10, v66);
                    }

                    v9.i64[0] = v51->i64[0];
                    v9.u64[1] = v10;
LABEL_77:
                    ++v51;
                    v9 = veorq_s8(v9, v31);
                    v56 = vmlal_high_s16(v56, v9, v8);
                    v54 = vmlal_s16(v54, *v9.i8, *v8.i8);
                    v60 -= 0x80000;
                    v63 = __OFSUB__(v61, 8);
                    v61 -= 8;
                    if (((v61 & 0x80000000) != 0) ^ v63 | (v61 == 0))
                    {
                      goto LABEL_118;
                    }

                    continue;
                  }
                }

                break;
              }

              if (v61)
              {
                if (v61 == 1)
                {
                  v9.i16[0] = v51->i16[0];
                }

                else
                {
                  if (v61 == 2)
                  {
                    v9 = 0uLL;
                  }

                  else
                  {
                    v9 = v51->u16[2];
                  }

                  v10.i16[0] = v51->i16[0];
                  v10.i16[2] = v51->i16[1];
                  *v9.i8 = vuzp1_s16(v10, *v9.i8);
                }
              }

              else
              {
                v9 = 0uLL;
              }

              goto LABEL_77;
            }
          }

LABEL_118:
          v67 = vaddq_s32(v54, v56);
          v67.i32[0] = (vaddvq_s32(v67) + 536879104) >> 14;
          *v33++ = vmax_s32(vmin_s32(*v67.i8, 0xFFFF0000FFFFLL), 0).u32[0];
          ++v34;
          v35 = (v35 + v17);
        }

        while (v34 != v15);
      }

      v12 += v13;
      ++v11;
    }

    while (v11 != v27);
  }

  return result;
}

int16x4_t *resample_horizontal<unsigned char,int,4,true>(int16x4_t *result, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a4 >= 1 && a8 >= 1)
  {
    v11 = 0;
    v12 = *a6;
    v13 = a6[1];
    v14 = *a7;
    v15 = a7[1];
    if (v14 >> 2 >= v15)
    {
      v16 = a7[1];
    }

    else
    {
      v16 = v14 >> 2;
    }

    v17 = a4;
    v18 = 2 * a2 + 8;
    v19 = result + v18 * a4;
    if (v16 >= *&v19[-v18 + 4] + *&v19[-v18])
    {
      v16 = *&v19[-v18 + 4] + *&v19[-v18];
    }

    v20 = a4 - 1;
    v21 = a2 > 3;
    LODWORD(v22) = (4 * (a2 & 3)) | 0x10;
    if ((a2 & 3) != 0)
    {
      v22 = v22;
    }

    else
    {
      v22 = 32;
    }

    if ((a2 & 3) != 0)
    {
      v21 = 0;
    }

    v23 = ((v22 - 1) & 0xFFFFFFFFFFFFFFF0) + 16 * ((a2 >> 2) - v21);
    v24 = a8;
    v27 = a2 != a2 || a4 < 2 || a4 == 1;
    v28.i64[0] = 0x200000002000;
    v28.i64[1] = 0x200000002000;
    v29.i64[0] = 0xFF000000FFLL;
    v29.i64[1] = 0xFF000000FFLL;
    while (1)
    {
      v30 = *(a5 + 8 * v11);
      v31 = 0;
      if (v27)
      {
        v32 = result;
      }

      else
      {
        v32 = result;
        while (1)
        {
          v33 = v32->i32[0];
          v34 = (v12 + 4 * v33);
          v35 = (v34 + v23);
          if (v34->u64 + v23 > 4 * v16 + v12)
          {
            break;
          }

          if (v34 >= v35)
          {
            v40 = 0uLL;
            v41 = 0uLL;
            v42 = 0uLL;
            v43 = 0uLL;
            v44 = 0uLL;
          }

          else
          {
            v36 = v32 + 1;
            v37 = v32->i32[1];
            v38 = (v13 + v33);
            v39 = &v35[-1];
            if (v34 < v39)
            {
              v41 = 0uLL;
              v42 = 0uLL;
              v43 = 0uLL;
              v44 = 0uLL;
              v40 = 0uLL;
              do
              {
                v45 = *v36++;
                v8 = v45;
                v46 = *v34++;
                v10 = vmovl_high_u8(v46);
                v9 = vmovl_u8(*v46.i8);
                v41 = vmlal_lane_s16(v41, *v9.i8, v8, 0);
                v42 = vmlal_high_lane_s16(v42, v9, v8, 1);
                v43 = vmlal_lane_s16(v43, *v10.i8, v8, 2);
                v44 = vmlal_high_lane_s16(v44, v10, v8, 3);
                v46.i32[0] = *v38++;
                v9.i32[0] = v46.i32[0];
                v9.i64[0] = vmovl_u8(*v9.i8).u64[0];
                v40 = vmlal_s16(v40, *v9.i8, v8);
                v37 -= 4;
              }

              while (v34 < v39);
            }

            else
            {
              v40 = 0uLL;
              v41 = 0uLL;
              v42 = 0uLL;
              v43 = 0uLL;
              v44 = 0uLL;
            }

            if (v37 >= 1)
            {
              v8 = *v36;
              v10 = vmovl_high_u8(*v34);
              v9 = vmovl_u8(*v34->i8);
              v41 = vmlal_lane_s16(v41, *v9.i8, *v36, 0);
              v42 = vmlal_high_lane_s16(v42, v9, *v36, 1);
              v43 = vmlal_lane_s16(v43, *v10.i8, *v36, 2);
              v44 = vmlal_high_lane_s16(v44, v10, *v36, 3);
              v9.i32[0] = *v38;
              v9.i64[0] = vmovl_u8(*v9.i8).u64[0];
              v40 = vmlal_s16(v40, *v9.i8, *v36);
            }
          }

          *v30 = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(v42, v44), vaddq_s32(v41, v43)), v28), 0xEuLL), v29), 0);
          v30[1].i32[0] = vmaxq_s32(vminq_s32(((vaddvq_s32(v40) + 0x2000) >> 14), v29), 0).u32[0];
          v30 = (v30 + 20);
          ++v31;
          v32 = (v32 + v18);
          if (v31 == v20)
          {
            v31 = v17 - 1;
            break;
          }
        }
      }

      if (v31 < v17)
      {
        break;
      }

LABEL_104:
      v12 += v14;
      v13 += v15;
      if (++v11 == v24)
      {
        return result;
      }
    }

    while (1)
    {
      v47 = v32->i32[0];
      if (v47 >= v16)
      {
        v48 = v16;
      }

      else
      {
        v48 = v32->i32[0];
      }

      v49 = v16 - v48;
      if (v32->i32[1] < v49)
      {
        v49 = v32->i32[1];
      }

      if (v49 < 1)
      {
        v59 = 0uLL;
        v54 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        v58 = 0uLL;
        goto LABEL_101;
      }

      v50 = (v12 + 4 * v47);
      v51 = &v50[-1] + 4 * v49;
      v52 = (v13 + v47);
      v53 = &v32[1];
      v54 = 0uLL;
      if (v50 >= v51)
      {
        v56 = 0uLL;
        v57 = 0uLL;
        v58 = 0uLL;
        v59 = 0uLL;
        goto LABEL_65;
      }

      v55 = v49;
      v56 = 0uLL;
      v57 = 0uLL;
      v58 = 0uLL;
      v59 = 0uLL;
      do
      {
        v60 = v55;
        if ((v19 - v53) < 8)
        {
          if (v55)
          {
            if (v55 == 1)
            {
              v8.i16[0] = *v53;
            }

            else
            {
              if (v55 == 2)
              {
                v62 = 0;
              }

              else
              {
                if (v49)
                {
                  v63 = 0;
                }

                else
                {
                  v63 = v53[3];
                }

                v62.i32[0] = v53[2];
                v62.i32[1] = v63;
              }

              v10.i16[0] = *v53;
              v10.i16[2] = v53[1];
              v8 = vuzp1_s16(*v10.i8, v62);
            }
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          v8 = *v53;
        }

        v53 += 4;
        v61 = *v50++;
        v10 = vmovl_high_u8(v61);
        v9 = vmovl_u8(*v61.i8);
        v54 = vmlal_lane_s16(v54, *v9.i8, v8, 0);
        v56 = vmlal_high_lane_s16(v56, v9, v8, 1);
        v57 = vmlal_lane_s16(v57, *v10.i8, v8, 2);
        v58 = vmlal_high_lane_s16(v58, v10, v8, 3);
        v61.i32[0] = *v52;
        v52 += 4;
        v9.i32[0] = v61.i32[0];
        v9.i64[0] = vmovl_u8(*v9.i8).u64[0];
        v59 = vmlal_s16(v59, *v9.i8, v8);
        v55 = v60 - 4;
      }

      while (v50 < v51);
      if (v60 >= 5)
      {
        break;
      }

LABEL_101:
      *v30 = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(v56, v58), vaddq_s32(v54, v57)), v28), 0xEuLL), v29), 0);
      v30[1].i32[0] = vmaxq_s32(vminq_s32(((vaddvq_s32(v59) + 0x2000) >> 14), v29), 0).u32[0];
      v30 = (v30 + 20);
      ++v31;
      v32 = (v32 + v18);
      if (v31 == v17)
      {
        goto LABEL_104;
      }
    }

    v49 = v60 - 4;
LABEL_65:
    v64 = v49;
    while (1)
    {
      if ((v19 - v53) < 8)
      {
        if (v64 == 1)
        {
          v67 = *v53;
          v53 += 4;
          v68 = 0;
          v8 = v67;
          v9.i32[0] = v50->i32[0];
          v9.i64[0] = vmovl_u8(*v9.i8).u64[0];
LABEL_76:
          v9.i64[1] = 0;
          v9.i8[1] = v9.i8[2];
          v9.i8[2] = v9.i8[4];
          v9.i8[3] = v9.i8[6];
          v9.i8[4] = v68;
          v9.i8[5] = BYTE2(v68);
          v9.i8[6] = BYTE4(v68);
          v9.i8[7] = BYTE6(v68);
          goto LABEL_70;
        }

        if (v64 == 2)
        {
          v9.i64[0] = 0;
        }

        else
        {
          if (v49)
          {
            v69 = 0;
          }

          else
          {
            v69 = v53[3];
          }

          v9.i32[0] = v53[2];
          v9.i32[1] = v69;
        }

        v10.i16[0] = *v53;
        v10.i16[2] = v53[1];
        v8 = vuzp1_s16(*v10.i8, *v9.i8);
      }

      else
      {
        v8 = *v53;
      }

      v53 += 4;
      if (v64 >= 4)
      {
        v9 = *v50;
        goto LABEL_70;
      }

      if (v64 < 2)
      {
        v9.i32[0] = v50->i32[0];
        v9.i64[0] = vmovl_u8(*v9.i8).u64[0];
        if (v64 == 1)
        {
          v68 = 0;
        }

        else
        {
          LOBYTE(v68) = v50->i8[4];
          BYTE2(v68) = v50->i8[5];
          BYTE4(v68) = v50->i8[6];
          BYTE6(v68) = v50->i8[7];
        }

        goto LABEL_76;
      }

      if (v64 == 2)
      {
        v70 = 0;
      }

      else
      {
        v9.i32[0] = v50->i32[2];
        v71 = vmovl_u8(*v9.i8);
        HIDWORD(v70) = 0;
        LOBYTE(v70) = v71.i8[0];
        BYTE1(v70) = v71.i8[2];
        BYTE2(v70) = v71.i8[4];
        BYTE3(v70) = v71.i8[6];
      }

      v9.i64[0] = v50->i64[0];
      v9.i64[1] = v70;
LABEL_70:
      v10 = vmovl_high_u8(v9);
      v9 = vmovl_u8(*v9.i8);
      v54 = vmlal_lane_s16(v54, *v9.i8, v8, 0);
      v56 = vmlal_high_lane_s16(v56, v9, v8, 1);
      v57 = vmlal_lane_s16(v57, *v10.i8, v8, 2);
      v58 = vmlal_high_lane_s16(v58, v10, v8, 3);
      if (v64 <= 3)
      {
        if (v64)
        {
          if (v64 == 1)
          {
            v72 = *v52;
          }

          else
          {
            if (v64 == 2)
            {
              v73 = 0;
            }

            else
            {
              v73 = v52[2];
            }

            v10.i8[0] = *v52;
            v10.i8[4] = v52[1];
            v72 = vuzp1_s16(*v10.i8, v73);
          }
        }

        else
        {
          v72 = 0;
        }

        v9.i64[0] = *&v72 & 0xFF00FF00FF00FFLL;
        v59 = vmlal_s16(v59, *v9.i8, v8);
        goto LABEL_101;
      }

      ++v50;
      v65 = *v52;
      v52 += 4;
      v9.i32[0] = v65;
      v9.i64[0] = vmovl_u8(*v9.i8).u64[0];
      v59 = vmlal_s16(v59, *v9.i8, v8);
      v66 = __OFSUB__(v64, 4);
      v64 -= 4;
      if (((v64 & 0x80000000) != 0) ^ v66 | (v64 == 0))
      {
        goto LABEL_101;
      }
    }
  }

  return result;
}

int *resample_horizontal<unsigned char,int,3,true>(int *result, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a4 >= 1 && a8 >= 1)
  {
    v12 = 0;
    v13 = *a6;
    v14 = a6[1];
    v15 = a7[1];
    v126 = *a7;
    v16 = v126 / 3;
    if (v126 / 3 >= v15)
    {
      v16 = a7[1];
    }

    v17 = a4;
    v18 = 2 * a2 + 8;
    v19 = result + v18 * a4;
    v20 = *&v19[-v18 + 4] + *&v19[-v18];
    if (v16 < v20)
    {
      v20 = v16;
    }

    v21 = 1;
    if (a2 <= 3)
    {
      v21 = (2 * a2 + 23) / (2 * a2 + 8);
    }

    v22 = a4 - v21;
    v23 = a2 % 5;
    v24 = a2 > 4;
    if (a2 % 5)
    {
      v24 = 0;
    }

    v25 = 15 * (a2 / 5 - v24);
    if (!v23)
    {
      v23 = 5;
    }

    v26 = vdupq_n_s16(v23);
    v27 = (3 * v23 + 15) & 0x1FFFFFFF0;
    if (a2 >= 5)
    {
      v28 = 5;
    }

    else
    {
      v28 = a2;
    }

    v29 = vdupq_n_s16(v28);
    v30 = v27 + v25;
    v125 = a8;
    v31 = a2 == a2 && v17 > v21;
    v32 = !v31;
    v33 = vcgtq_u16(v29, xmmword_18439C5D0);
    v34.i64[0] = 0x200000002000;
    v34.i64[1] = 0x200000002000;
    v35.i64[0] = 0xFF000000FFLL;
    v35.i64[1] = 0xFF000000FFLL;
    v36 = vcgtq_s16(v26, xmmword_18439C5D0);
    do
    {
      v37 = *(a5 + 8 * v12);
      v38 = 0;
      if (v32)
      {
        v39 = result;
      }

      else
      {
        v39 = result;
        while (1)
        {
          v40 = *v39;
          v41 = (v13 + 3 * v40);
          v42 = (v41 + v30);
          if (v41->u64 + v30 > 3 * v20 + v13)
          {
            break;
          }

          if (v41 >= v42)
          {
            v47 = 0uLL;
            v48 = 0uLL;
            v49 = 0uLL;
            v50 = 0uLL;
            v51 = 0uLL;
            v52 = 0uLL;
          }

          else
          {
            v43 = (v39 + 2);
            v44 = v39[1];
            v45 = (v14 + v40);
            v46 = &v42[-2].u64[1];
            if (v41 < v46)
            {
              v49 = 0uLL;
              v50 = 0uLL;
              v51 = 0uLL;
              v52 = 0uLL;
              v47 = 0uLL;
              v48 = 0uLL;
              do
              {
                v69 = *v43;
                v43 = (v43 + 10);
                v70 = vandq_s8(v69, v33);
                v71 = *v41;
                v41 = (v41 + 15);
                v10 = vmovl_high_u8(v71);
                v72 = vmovl_u8(*v71.i8);
                v11 = vqtbl1q_s8(v70, xmmword_18439C5E0);
                v73 = vqtbl1q_s8(v70, xmmword_18439C5F0);
                v52 = vmlal_high_s16(v52, v10, v11);
                v50 = vmlal_high_s16(v50, v72, v73);
                v51 = vmlal_s16(v51, *v10.i8, *v11.i8);
                *v71.i8 = *v45;
                v45 = (v45 + 5);
                v10.i32[1] = v71.i32[1];
                v49 = vmlal_s16(v49, *v72.i8, *v73.i8);
                v9 = vmovl_u8(*v71.i8);
                v48 = vmlal_high_s16(v48, v9, v70);
                v47 = vmlal_s16(v47, *v9.i8, *v70.i8);
                v44 -= 5;
              }

              while (v41 < v46);
            }

            else
            {
              v47 = 0uLL;
              v48 = 0uLL;
              v49 = 0uLL;
              v50 = 0uLL;
              v51 = 0uLL;
              v52 = 0uLL;
            }

            if (v44 >= 1)
            {
              if (v44 >= 9)
              {
                v53 = *v43;
                v43 = (v43 + 10);
                v54 = vandq_s8(v53, v33);
                v55 = *v41;
                v41 = (v41 + 15);
                v56 = vmovl_high_u8(v55);
                v57 = vmovl_u8(*v55.i8);
                v58 = vqtbl1q_s8(v54, xmmword_18439C5E0);
                v59 = vqtbl1q_s8(v54, xmmword_18439C5F0);
                v52 = vmlal_high_s16(v52, v56, v58);
                v50 = vmlal_high_s16(v50, v57, v59);
                v51 = vmlal_s16(v51, *v56.i8, *v58.i8);
                v49 = vmlal_s16(v49, *v57.i8, *v59.i8);
                *v55.i8 = *v45;
                v45 = (v45 + 5);
                v60 = vmovl_u8(*v55.i8);
                v48 = vmlal_high_s16(v48, v60, v54);
                v47 = vmlal_s16(v47, *v60.i8, *v54.i8);
              }

              v61 = vandq_s8(*v43, v36);
              v10 = vmovl_high_u8(*v41);
              v62 = vmovl_u8(*v41->i8);
              v11 = vqtbl1q_s8(v61, xmmword_18439C5E0);
              v63 = vqtbl1q_s8(v61, xmmword_18439C5F0);
              v52 = vmlal_high_s16(v52, v10, v11);
              v50 = vmlal_high_s16(v50, v62, v63);
              v51 = vmlal_s16(v51, *v10.i8, *v11.i8);
              v49 = vmlal_s16(v49, *v62.i8, *v63.i8);
              v9 = vmovl_u8(*v45);
              v48 = vmlal_high_s16(v48, v9, v61);
              v47 = vmlal_s16(v47, *v9.i8, *v61.i8);
            }
          }

          v8 = vextq_s8(v51, v52, 4uLL);
          v64 = vaddq_s32(v8, v49);
          v65 = vaddq_s32(vextq_s8(v52, v52, 4uLL).u64[0], v50);
          v66 = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(v64, vextq_s8(v64, v65, 0xCuLL)), vaddq_s32(vextq_s8(v65, v51, 8uLL), v34)), 0xEuLL), v35), 0);
          v67 = vextq_s8(v47, v48, 0xCuLL);
          v67.i32[2] = 0;
          v68 = vaddq_s32(v67, v47);
          v66.i32[3] = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vadd_s32(vadd_s32(*v68.i8, *&vextq_s8(v68, v68, 8uLL)), vdup_lane_s32(*v68.i8, 1)).u32[0], v34), 0xEuLL), v35), 0).u32[0];
          *v37++ = v66;
          ++v38;
          v39 = (v39 + v18);
          if (v38 == v22)
          {
            v38 = v22;
            break;
          }
        }
      }

      if (v38 < v17)
      {
        do
        {
          v74 = *v39;
          if (v74 >= v20)
          {
            v75 = v20;
          }

          else
          {
            v75 = *v39;
          }

          v76 = v20 - v75;
          if (v39[1] >= v76)
          {
            v77 = v76;
          }

          else
          {
            v77 = v39[1];
          }

          if (v77 < 1)
          {
            v87 = 0uLL;
            v88 = 0uLL;
            v83 = 0uLL;
            v84 = 0uLL;
            v85 = 0uLL;
            v86 = 0uLL;
          }

          else
          {
            v78 = (v13 + 3 * v74);
            v79 = &v78[3 * v77 - 24];
            v80 = (v14 + v74);
            v81 = (v39 + 2);
            if (v78 >= v79)
            {
              v83 = 0uLL;
              v84 = 0uLL;
              v85 = 0uLL;
              v86 = 0uLL;
              v87 = 0uLL;
              v88 = 0uLL;
              goto LABEL_97;
            }

            v82 = v77 + 5;
            v83 = 0uLL;
            v84 = 0uLL;
            v85 = 0uLL;
            v86 = 0uLL;
            v87 = 0uLL;
            v88 = 0uLL;
            do
            {
              v89 = v82;
              v90 = v82 - 5;
              if ((v19 - v81) < 0x10)
              {
                v8 = 0uLL;
                if (v82 != 5)
                {
                  if (v90 < 4)
                  {
                    if (v82 == 6)
                    {
                      v8.i16[0] = v81->i16[0];
                    }

                    else
                    {
                      if (v82 != 7)
                      {
                        v8.i16[0] = v81->i16[2];
                      }

                      v9.i16[0] = v81->i16[0];
                      v9.i16[2] = v81->i16[1];
                      *v8.i8 = vuzp1_s16(*v9.i8, *v8.i8);
                    }
                  }

                  else
                  {
                    if (v82 == 9)
                    {
                      v9.i64[0] = 0;
                    }

                    else if (v82 == 10)
                    {
                      v9.i16[0] = v81->i16[4];
                    }

                    else
                    {
                      if (v82 != 11)
                      {
                        if (v90)
                        {
                          v100 = 0;
                        }

                        else
                        {
                          v100 = v81->u16[7];
                        }

                        v8.i32[0] = v81->u16[6];
                        v8.i32[1] = v100;
                      }

                      v9.i16[0] = v81->i16[4];
                      v9.i16[2] = v81->i16[5];
                      *v9.i8 = vuzp1_s16(*v9.i8, *v8.i8);
                    }

                    v8.i64[0] = v81->i64[0];
                    v8.i64[1] = v9.i64[0];
                  }
                }
              }

              else
              {
                v8 = vandq_s8(*v81, v33);
              }

              v91 = *v78;
              v78 += 15;
              v92 = v91;
              v82 -= 5;
              if (v89 == 5)
              {
                v10.i64[0] = 0;
              }

              else if (v90 < 4)
              {
                if (v89 == 6)
                {
                  v11.i64[0] = *v80;
                }

                else
                {
                  if (v89 == 7)
                  {
                    v94 = 0;
                  }

                  else
                  {
                    v94 = v80[2];
                  }

                  v11.i8[0] = *v80;
                  v11.i8[4] = v80[1];
                  *v11.i8 = vuzp1_s16(*v11.i8, v94);
                }

                v10.i32[1] = 0;
                v10.i8[0] = v11.i8[0];
                v10.i8[1] = v11.i8[2];
                v10.i8[2] = v11.i8[4];
                v10.i8[3] = v11.i8[6];
              }

              else
              {
                if (v90 == 4)
                {
                  v93 = 0;
                }

                else if (v90 == 5)
                {
                  v93 = v80[4];
                }

                else
                {
                  if (v89 == 11)
                  {
                    v95 = 0;
                  }

                  else
                  {
                    if (v90)
                    {
                      v96 = 0;
                    }

                    else
                    {
                      v96 = v80[7];
                    }

                    v95.i32[0] = v80[6];
                    v95.i32[1] = v96;
                  }

                  v11.i8[0] = v80[4];
                  v11.i8[4] = v80[5];
                  v93 = vuzp1_s16(*v11.i8, v95);
                }

                v11.i32[0] = *v80;
                *v10.i8 = vuzp1_s8(*&vmovl_u8(*v11.i8), v93);
              }

              v81 = (v81 + 10);
              v11 = vmovl_high_u8(v92);
              v97 = vmovl_u8(*v92.i8);
              v98 = vqtbl1q_s8(v8, xmmword_18439C5E0);
              v99 = vqtbl1q_s8(v8, xmmword_18439C5F0);
              v86 = vmlal_high_s16(v86, v11, v98);
              v85 = vmlal_s16(v85, *v11.i8, *v98.i8);
              v84 = vmlal_high_s16(v84, v97, v99);
              v83 = vmlal_s16(v83, *v97.i8, *v99.i8);
              v80 += 5;
              v9 = vmovl_u8(*v10.i8);
              v88 = vmlal_high_s16(v88, v9, v8);
              v87 = vmlal_s16(v87, *v9.i8, *v8.i8);
            }

            while (v78 < v79);
            if (v82 >= 6)
            {
              v77 = v89 - 10;
LABEL_97:
              v101 = 0;
              v102 = v77;
              v103 = 3 * v77;
              v104 = v77 << 16;
              v105 = 3 * v77;
              while (2)
              {
                if ((v19 - v81) < 0x10)
                {
                  if (v102 >= 4)
                  {
                    if (v102 == 4)
                    {
                      v9.i64[0] = 0;
                    }

                    else if (v102 == 5)
                    {
                      v9.i16[0] = v81->i16[4];
                    }

                    else
                    {
                      if (v103 + v101 == 18)
                      {
                        v118 = 0;
                      }

                      else
                      {
                        if (v102)
                        {
                          v112 = 0;
                        }

                        else
                        {
                          v112 = v81->u16[7];
                        }

                        v118.i32[0] = v81->u16[6];
                        v118.i32[1] = v112;
                      }

                      v9.i16[0] = v81->i16[4];
                      v9.i16[2] = v81->i16[5];
                      *v9.i8 = vuzp1_s16(*v9.i8, v118);
                    }

                    v8.i64[0] = v81->i64[0];
                    v8.i64[1] = v9.i64[0];
                    goto LABEL_102;
                  }

                  if (v103 + v101 == 3)
                  {
                    v8.i16[0] = v81->i16[0];
                  }

                  else
                  {
                    if (v103 + v101 == 6)
                    {
                      v8 = 0uLL;
                    }

                    else
                    {
                      v8 = v81->u16[2];
                    }

                    v9.i16[0] = v81->i16[0];
                    v9.i16[2] = v81->i16[1];
                    *v8.i8 = vuzp1_s16(*v9.i8, *v8.i8);
                  }

                  v81 = (v81 + 10);
                }

                else
                {
                  v106 = v104 >> 16;
                  if (v104 >> 16 >= 8)
                  {
                    v106 = 8;
                  }

                  v9 = *v81;
                  v8 = vandq_s8(*v81, vcgtq_s16(vdupq_n_s16(v106), xmmword_18439C5D0));
LABEL_102:
                  v81 = (v81 + 10);
                  if (v102 >= 6)
                  {
                    v107 = *v78;
                    goto LABEL_104;
                  }
                }

                if (v102 < 3)
                {
                  if (v103 + v101 == 6)
                  {
                    v9.i32[0] = *v78;
                    v116 = vmovl_u8(*v9.i8);
                    v11.i8[4] = v78[5];
                    v107.i8[7] = 0;
                    v107.i64[1] = 0;
                    v107.i8[0] = v116.i8[0];
                    v107.i8[1] = v116.i8[2];
                    v107.i8[2] = v116.i8[4];
                    v107.i8[3] = v116.i8[6];
                    v107.i8[4] = v78[4];
                    *(&v107.i16[2] + 1) = v11.u8[4];
                  }

                  else
                  {
                    if (v105 + v101)
                    {
                      if (v105 + v101 == 1)
                      {
                        v115 = *v78;
                      }

                      else
                      {
                        LOBYTE(v115) = *v78;
                        BYTE2(v115) = v78[1];
                        HIDWORD(v115) = v78[2];
                      }
                    }

                    else
                    {
                      v115 = 0;
                    }

                    v107.i32[1] = 0;
                    v107.i64[1] = 0;
                    v107.i8[0] = v115;
                    v107.i8[1] = BYTE2(v115);
                    v107.i8[2] = BYTE4(v115);
                    v107.i8[3] = BYTE6(v115);
                  }
                }

                else
                {
                  if (v103 + v101 == 8)
                  {
                    v10.i64[0] = 0;
                  }

                  else if ((v103 + v101 - 8) < 4)
                  {
                    if (v105 + v101 == 8)
                    {
                      v117 = 0;
                    }

                    else if (v105 + v101 == 9)
                    {
                      v117 = v78[8];
                    }

                    else
                    {
                      LOBYTE(v117) = v78[8];
                      BYTE2(v117) = v78[9];
                      HIDWORD(v117) = v78[10];
                    }

                    v10.i32[1] = 0;
                    v10.i8[0] = v117;
                    v10.i8[1] = BYTE2(v117);
                    v10.i8[2] = BYTE4(v117);
                    v10.i8[3] = BYTE6(v117);
                  }

                  else
                  {
                    if (v105 + v101 == 12)
                    {
                      v9.i64[0] = 0;
                    }

                    else if (v105 + v101 == 13)
                    {
                      v9.i64[0] = v78[12];
                    }

                    else
                    {
                      if ((v103 + v101))
                      {
                        v119 = 0;
                      }

                      else
                      {
                        v119 = v78[15];
                      }

                      v9.i8[0] = v78[12];
                      v9.i8[4] = v78[13];
                      v9.i16[1] = v9.i16[2];
                      v9.i16[2] = v78[14];
                      v9.i16[3] = v119;
                    }

                    v10.i32[0] = *(v78 + 2);
                    *v10.i8 = vuzp1_s8(*&vmovl_u8(*v10.i8), *v9.i8);
                  }

                  v107.i64[0] = *v78;
                  v107.i64[1] = v10.i64[0];
                }

LABEL_104:
                if (v102 < 8)
                {
                  if (v102 < 4)
                  {
                    if (v102)
                    {
                      if (v102 == 1)
                      {
                        v11.i64[0] = *v80;
                      }

                      else
                      {
                        if (v103 + v101 == 6)
                        {
                          v114 = 0;
                        }

                        else
                        {
                          v114 = v80[2];
                        }

                        v11.i8[0] = *v80;
                        v11.i8[4] = v80[1];
                        *v11.i8 = vuzp1_s16(*v11.i8, v114);
                      }
                    }

                    else
                    {
                      v11.i64[0] = 0;
                    }

                    v10.i32[1] = 0;
                    v10.i8[0] = v11.i8[0];
                    v10.i8[1] = v11.i8[2];
                    v10.i8[2] = v11.i8[4];
                    v10.i8[3] = v11.i8[6];
                  }

                  else
                  {
                    if (v102 == 4)
                    {
                      v111 = 0;
                    }

                    else if (v102 == 5)
                    {
                      v111 = v80[4];
                    }

                    else
                    {
                      if (v103 + v101 == 18)
                      {
                        v113 = 0;
                      }

                      else
                      {
                        v113 = v80[6];
                      }

                      v11.i8[0] = v80[4];
                      v11.i8[4] = v80[5];
                      v111 = vuzp1_s16(*v11.i8, v113);
                    }

                    v11.i32[0] = *v80;
                    *v10.i8 = vuzp1_s8(*&vmovl_u8(*v11.i8), v111);
                  }
                }

                else
                {
                  v10.i64[0] = *v80;
                }

                v78 += 15;
                v11 = vmovl_high_u8(v107);
                v108 = vmovl_u8(*v107.i8);
                v109 = vqtbl1q_s8(v8, xmmword_18439C5E0);
                v110 = vqtbl1q_s8(v8, xmmword_18439C5F0);
                v84 = vmlal_high_s16(v84, v108, v110);
                v86 = vmlal_high_s16(v86, v11, v109);
                v85 = vmlal_s16(v85, *v11.i8, *v109.i8);
                v83 = vmlal_s16(v83, *v108.i8, *v110.i8);
                v80 += 5;
                v9 = vmovl_u8(*v10.i8);
                v101 -= 15;
                v104 -= 327680;
                v88 = vmlal_high_s16(v88, v9, v8);
                v87 = vmlal_s16(v87, *v9.i8, *v8.i8);
                v31 = v102 <= 5;
                v102 -= 5;
                if (v31)
                {
                  break;
                }

                continue;
              }
            }
          }

          v8 = vextq_s8(v85, v86, 4uLL);
          v120 = vaddq_s32(v8, v83);
          v121 = vaddq_s32(vextq_s8(v86, v86, 4uLL).u64[0], v84);
          v122 = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vextq_s8(v120, v121, 0xCuLL), v120), vaddq_s32(vextq_s8(v121, v85, 8uLL), v34)), 0xEuLL), v35), 0);
          v123 = vextq_s8(v87, v88, 0xCuLL);
          v123.i32[2] = 0;
          v124 = vaddq_s32(v123, v87);
          v122.i32[3] = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vadd_s32(vadd_s32(*v124.i8, *&vextq_s8(v124, v124, 8uLL)), vdup_lane_s32(*v124.i8, 1)).u32[0], v34), 0xEuLL), v35), 0).u32[0];
          *v37++ = v122;
          ++v38;
          v39 = (v39 + v18);
        }

        while (v38 != v17);
      }

      v13 += v126;
      v14 += v15;
      ++v12;
    }

    while (v12 != v125);
  }

  return result;
}

int *resample_horizontal<unsigned char,int,1,true>(int *result, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a4 >= 1 && a8 >= 1)
  {
    v12 = 0;
    v13 = *a6;
    v14 = a6[1];
    v15 = *a7;
    v16 = a7[1];
    if (v15 >= v16)
    {
      v17 = a7[1];
    }

    else
    {
      v17 = *a7;
    }

    v18 = a4;
    v19 = 2 * a2;
    v20 = v19 + 8;
    v21 = result + (v19 + 8) * a4;
    if (v17 >= *&v21[-v19 - 4] + *&v21[-v19 - 8])
    {
      v17 = *&v21[-v19 - 4] + *&v21[-v19 - 8];
    }

    if (a2 <= 3)
    {
      v22 = (2 * a2 + 23) / (2 * a2 + 8);
    }

    else
    {
      v22 = 1;
    }

    v23 = a2 > 7;
    if ((a2 & 7) != 0)
    {
      v24 = a2 & 7;
    }

    else
    {
      v24 = 8;
    }

    if ((a2 & 7) != 0)
    {
      v23 = 0;
    }

    v25 = ((a2 + 8 * (v23 << 31 >> 31)) & 0xFFFFFFF8) + ((v24 + 7) & 0x18);
    v26 = a4 - v22;
    v27 = vdupq_n_s16(v24);
    if (a2 >= 8)
    {
      v28 = 8;
    }

    else
    {
      v28 = a2;
    }

    v29 = vdupq_n_s16(v28);
    v30 = a8;
    v31 = a2 == a2 && v18 > v22;
    v32 = v31;
    v33 = vcgtq_u16(v29, xmmword_18439C5D0);
    v34 = vcgtq_u16(v27, xmmword_18439C5D0);
    do
    {
      v35 = *(a5 + 8 * v12);
      v36 = 0;
      if (v32)
      {
        v37 = result;
        while (1)
        {
          v38 = *v37;
          v39 = (v13 + v38);
          v40 = v25 + v13 + v38;
          if (v40 > v17 + v13)
          {
            break;
          }

          if (v39 >= v40)
          {
            v45 = 0uLL;
            v46 = 0uLL;
            v47 = 0uLL;
            v48 = 0uLL;
          }

          else
          {
            v41 = (v37 + 2);
            v42 = v37[1];
            v43 = (v14 + v38);
            v44 = v40 - 8;
            v45 = 0uLL;
            if (v39 < v44)
            {
              v47 = 0uLL;
              v48 = 0uLL;
              v46 = 0uLL;
              do
              {
                v52 = *v41++;
                v8 = vandq_s8(v52, v33);
                *v52.i8 = *v39++;
                v53 = vmovl_u8(*v52.i8);
                v48 = vmlal_high_s16(v48, v53, v8);
                *v52.i8 = *v43++;
                v10 = *v52.i8;
                v47 = vmlal_s16(v47, *v53.i8, *v8.i8);
                v9 = vmovl_u8(*v52.i8);
                v46 = vmlal_high_s16(v46, v9, v8);
                v45 = vmlal_s16(v45, *v9.i8, *v8.i8);
                v42 -= 8;
              }

              while (v39 < v44);
            }

            else
            {
              v46 = 0uLL;
              v47 = 0uLL;
              v48 = 0uLL;
            }

            if (v42 >= 1)
            {
              v8 = vandq_s8(*v41, v34);
              v49 = vmovl_u8(*v39);
              v48 = vmlal_high_s16(v48, v49, v8);
              v47 = vmlal_s16(v47, *v49.i8, *v8.i8);
              v9 = vmovl_u8(*v43);
              v46 = vmlal_high_s16(v46, v9, v8);
              v45 = vmlal_s16(v45, *v9.i8, *v8.i8);
            }
          }

          v50 = vaddvq_s32(vaddq_s32(v47, v48));
          v50.i32[0] = (v50.i32[0] + 0x2000) >> 14;
          v51 = vaddvq_s32(vaddq_s32(v45, v46));
          v51.i32[0] = (v51.i32[0] + 0x2000) >> 14;
          *v35++ = vzip1_s32(vmax_s32(vmin_s32(v50, 0xFF000000FFLL), 0), vmax_s32(vmin_s32(v51, 0xFF000000FFLL), 0));
          ++v36;
          v37 = (v37 + v20);
          if (v36 == v26)
          {
            v36 = v26;
            break;
          }
        }
      }

      else
      {
        v37 = result;
      }

      if (v36 < v18)
      {
        do
        {
          v54 = *v37;
          if (v54 >= v17)
          {
            v55 = v17;
          }

          else
          {
            v55 = *v37;
          }

          v56 = v17 - v55;
          if (v37[1] >= v56)
          {
            v57 = v56;
          }

          else
          {
            v57 = v37[1];
          }

          if (v57 < 1)
          {
            v65 = 0uLL;
            v66 = 0uLL;
            v62 = 0uLL;
            v64 = 0uLL;
          }

          else
          {
            v58 = (v13 + v54);
            v59 = v13 + v54 + v57 - 16;
            v60 = (v14 + v54);
            v61 = (v37 + 2);
            v62 = 0uLL;
            if (v58 >= v59)
            {
              v64 = 0uLL;
              v65 = 0uLL;
              v66 = 0uLL;
              goto LABEL_76;
            }

            v63 = v57 + 8;
            v64 = 0uLL;
            v65 = 0uLL;
            v66 = 0uLL;
            do
            {
              v67 = v63;
              v63 -= 8;
              if ((v21 - v61) < 0x10)
              {
                v8 = 0uLL;
                if (v67 != 8)
                {
                  if (v63 < 4)
                  {
                    if (v67 == 9)
                    {
                      v8.i16[0] = v61->i16[0];
                    }

                    else
                    {
                      if (v67 != 10)
                      {
                        v8.i16[0] = v61->i16[2];
                      }

                      v9.i16[0] = v61->i16[0];
                      v9.i16[2] = v61->i16[1];
                      *v8.i8 = vuzp1_s16(*v9.i8, *v8.i8);
                    }
                  }

                  else
                  {
                    if (v63 == 4)
                    {
                      v9.i64[0] = 0;
                    }

                    else if (v63 == 5)
                    {
                      v9.i16[0] = v61->i16[4];
                    }

                    else
                    {
                      if (v67 != 14)
                      {
                        if (v57)
                        {
                          v71 = 0;
                        }

                        else
                        {
                          v71 = v61->u16[7];
                        }

                        v8.i32[0] = v61->u16[6];
                        v8.i32[1] = v71;
                      }

                      v9.i16[0] = v61->i16[4];
                      v9.i16[2] = v61->i16[5];
                      *v9.i8 = vuzp1_s16(*v9.i8, *v8.i8);
                    }

                    v8.i64[0] = v61->i64[0];
                    v8.i64[1] = v9.i64[0];
                  }
                }
              }

              else
              {
                v8 = vandq_s8(*v61, v33);
              }

              ++v61;
              v68 = *v58++;
              v69 = vmovl_u8(v68);
              v64 = vmlal_high_s16(v64, v69, v8);
              v62 = vmlal_s16(v62, *v69.i8, *v8.i8);
              v70 = *v60++;
              v9 = vmovl_u8(v70);
              v66 = vmlal_high_s16(v66, v9, v8);
              v65 = vmlal_s16(v65, *v9.i8, *v8.i8);
            }

            while (v58 < v59);
            if (v63 >= 9)
            {
              v57 = v67 - 16;
LABEL_76:
              v72 = v57;
              v73 = v57 << 16;
              v74 = v72;
              while (2)
              {
                if ((v21 - v61) < 0x10)
                {
                  if (v74 >= 4)
                  {
                    if (v74 == 4)
                    {
                      v9.i64[0] = 0;
                    }

                    else if (v74 == 5)
                    {
                      v9.i16[0] = v61->i16[4];
                    }

                    else
                    {
                      if (v74 == 6)
                      {
                        v81 = 0;
                      }

                      else
                      {
                        if (v72)
                        {
                          v86 = 0;
                        }

                        else
                        {
                          v86 = v61->u16[7];
                        }

                        v81.i32[0] = v61->u16[6];
                        v81.i32[1] = v86;
                      }

                      v9.i16[0] = v61->i16[4];
                      v9.i16[2] = v61->i16[5];
                      *v9.i8 = vuzp1_s16(*v9.i8, v81);
                    }

                    v8.i64[0] = v61->i64[0];
                    v8.i64[1] = v9.i64[0];
                    goto LABEL_81;
                  }

                  if (v74 == 1)
                  {
                    v8.i16[0] = v61->i16[0];
                  }

                  else
                  {
                    if (v74 == 2)
                    {
                      v8 = 0uLL;
                    }

                    else
                    {
                      v8 = v61->u16[2];
                    }

                    v9.i16[0] = v61->i16[0];
                    v9.i16[2] = v61->i16[1];
                    *v8.i8 = vuzp1_s16(*v9.i8, *v8.i8);
                  }

                  ++v61;
                }

                else
                {
                  v75 = v73 >> 16;
                  if (v73 >> 16 >= 8)
                  {
                    v75 = 8;
                  }

                  v8 = vandq_s8(*v61, vcgtq_s16(vdupq_n_s16(v75), xmmword_18439C5D0));
LABEL_81:
                  ++v61;
                  if (v74 >= 8)
                  {
                    v76 = *v58;
                    v77 = 1;
                    goto LABEL_83;
                  }

                  if (v74 >= 4)
                  {
                    if (v74 == 4)
                    {
                      v80 = 0;
                    }

                    else if (v74 == 5)
                    {
                      v80 = v58->u8[4];
                    }

                    else
                    {
                      if (v74 == 6)
                      {
                        v88 = 0;
                      }

                      else
                      {
                        v88 = v58->u8[6];
                      }

                      v10.i8[0] = v58->i8[4];
                      v10.i8[4] = v58->i8[5];
                      v80 = vuzp1_s16(v10, v88);
                    }

                    v77 = 0;
                    v10.i32[0] = v58->i32[0];
                    v76 = vuzp1_s8(*&vmovl_u8(v10), v80);
                    goto LABEL_83;
                  }
                }

                if (v74)
                {
                  if (v74 == 1)
                  {
                    v84 = v58->u8[0];
                  }

                  else
                  {
                    if (v74 == 2)
                    {
                      v85 = 0;
                    }

                    else
                    {
                      v85 = v58->u8[2];
                    }

                    v10.i8[0] = v58->i8[0];
                    v10.i8[4] = v58->i8[1];
                    v84 = vuzp1_s16(v10, v85);
                  }
                }

                else
                {
                  v84 = 0;
                }

                v77 = 0;
                v76.i32[1] = 0;
                v76.i8[0] = v84.i8[0];
                v76.i8[1] = v84.i8[2];
                v76.i8[2] = v84.i8[4];
                v76.i8[3] = v84.i8[6];
LABEL_83:
                if (v77)
                {
                  v10 = *v60;
                }

                else if (v74 < 4)
                {
                  if (v74)
                  {
                    if (v74 == 1)
                    {
                      v11 = v60->u8[0];
                    }

                    else
                    {
                      if (v74 == 2)
                      {
                        v83 = 0;
                      }

                      else
                      {
                        v83 = v60->u8[2];
                      }

                      v11.i8[0] = v60->i8[0];
                      v11.i8[4] = v60->i8[1];
                      v11 = vuzp1_s16(v11, v83);
                    }
                  }

                  else
                  {
                    v11 = 0;
                  }

                  v10.i32[1] = 0;
                  v10.i8[0] = v11.i8[0];
                  v10.i8[1] = v11.i8[2];
                  v10.i8[2] = v11.i8[4];
                  v10.i8[3] = v11.i8[6];
                }

                else
                {
                  if (v74 == 4)
                  {
                    v79 = 0;
                  }

                  else if (v74 == 5)
                  {
                    v79 = v60->u8[4];
                  }

                  else
                  {
                    if (v74 == 6)
                    {
                      v82 = 0;
                    }

                    else
                    {
                      if (v72)
                      {
                        v87 = 0;
                      }

                      else
                      {
                        v87 = v60->u8[7];
                      }

                      v82.i32[0] = v60->u8[6];
                      v82.i32[1] = v87;
                    }

                    v11.i8[0] = v60->i8[4];
                    v11.i8[4] = v60->i8[5];
                    v79 = vuzp1_s16(v11, v82);
                  }

                  v11.i32[0] = v60->i32[0];
                  v11 = vmovl_u8(v11).u64[0];
                  v10 = vuzp1_s8(v11, v79);
                }

                ++v58;
                v78 = vmovl_u8(v76);
                v64 = vmlal_high_s16(v64, v78, v8);
                v62 = vmlal_s16(v62, *v78.i8, *v8.i8);
                ++v60;
                v9 = vmovl_u8(v10);
                v66 = vmlal_high_s16(v66, v9, v8);
                v65 = vmlal_s16(v65, *v9.i8, *v8.i8);
                v73 -= 0x80000;
                v31 = v74 <= 8;
                v74 -= 8;
                if (v31)
                {
                  break;
                }

                continue;
              }
            }
          }

          v89 = vaddvq_s32(vaddq_s32(v62, v64));
          v89.i32[0] = (v89.i32[0] + 0x2000) >> 14;
          v90 = vaddvq_s32(vaddq_s32(v65, v66));
          v90.i32[0] = (v90.i32[0] + 0x2000) >> 14;
          *v35++ = vzip1_s32(vmax_s32(vmin_s32(v89, 0xFF000000FFLL), 0), vmax_s32(vmin_s32(v90, 0xFF000000FFLL), 0));
          ++v36;
          v37 = (v37 + v20);
        }

        while (v36 != v18);
      }

      v13 += v15;
      v14 += v16;
      ++v12;
    }

    while (v12 != v30);
  }

  return result;
}

int *resample_horizontal<unsigned char,int,5,false>(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a4 >= 1 && a8 >= 1)
  {
    v12 = 0;
    v13 = *a6;
    v14 = *a7;
    v15 = v14 / 5;
    v16 = a4;
    v17 = 2 * a2;
    v18 = v17 + 8;
    v19 = result + (v17 + 8) * a4;
    if (v14 / 5 >= *&v19[-v17 - 4] + *&v19[-v17 - 8])
    {
      v15 = *&v19[-v17 - 4] + *&v19[-v17 - 8];
    }

    if (a2 <= 3)
    {
      v20 = (2 * a2 + 23) / (2 * a2 + 8);
    }

    else
    {
      v20 = 1;
    }

    v21 = a2 % 6;
    v22 = a2 > 5;
    if (a2 % 6)
    {
      v22 = 0;
    }

    if (!v21)
    {
      v21 = 6;
    }

    v23 = vdupq_n_s16(v21);
    v24 = ((5 * v21 + 31) & 0x1FFFFFFE0) + 30 * (a2 / 6 - v22);
    if (a2 >= 6)
    {
      v25 = 6;
    }

    else
    {
      v25 = a2;
    }

    v26 = vdupq_n_s16(v25);
    v27 = a8;
    v28 = a2 == a2 && v16 > v20;
    v29 = v28;
    v30 = vcgtq_u16(v26, xmmword_18439C5D0);
    v31 = vcgtq_s16(v23, xmmword_18439C5D0);
    v32.i64[0] = 0x200000002000;
    v32.i64[1] = 0x200000002000;
    v33.i64[0] = 0xFF000000FFLL;
    v33.i64[1] = 0xFF000000FFLL;
    do
    {
      v34 = *(a5 + 8 * v12);
      v35 = 0;
      if (v29)
      {
        v36 = result;
        while (1)
        {
          v37 = (v13 + 5 * *v36);
          v38 = (v37 + v24);
          if (v37->u64 + v24 > 5 * v15 + v13)
          {
            break;
          }

          if (v37 >= v38)
          {
            v42 = 0uLL;
            v43 = 0uLL;
            v44 = 0uLL;
            v45 = 0uLL;
            v46 = 0uLL;
            v47 = 0uLL;
            v48 = 0uLL;
            v49 = 0uLL;
          }

          else
          {
            v39 = (v36 + 2);
            v40 = v36[1];
            v41 = &v38[-2];
            v42 = 0uLL;
            v43 = 0uLL;
            v44 = 0uLL;
            v45 = 0uLL;
            v46 = 0uLL;
            v47 = 0uLL;
            v48 = 0uLL;
            v49 = 0uLL;
            while (v37 < v41)
            {
              v50 = *v39;
              v39 = (v39 + 12);
              v8 = vandq_s8(v50, v30);
              v51 = *v37;
              v52 = v37[1];
              v37 = (v37 + 30);
              v11 = vmovl_high_u8(v52);
              v10 = vmovl_u8(*v52.i8);
              v53 = vmovl_high_u8(v51);
              v54 = vmovl_u8(*v51.i8);
              v55 = vqtbl1q_s8(v8, xmmword_18439C600);
              v56 = vqtbl1q_s8(v8, xmmword_18439C610);
              v57 = vqtbl1q_s8(v8, xmmword_18439C620);
              v43 = vmlal_s16(v43, *&vextq_s8(v54, v54, 8uLL), vzip1_s16(*v8.i8, vdup_lane_s16(*v8.i8, 1)));
              v45 = vmlal_high_s16(v45, v53, v57);
              v42 = vmlal_lane_s16(v42, *v54.i8, *v8.i8, 0);
              v47 = vmlal_high_s16(v47, v10, v56);
              v46 = vmlal_s16(v46, *v10.i8, *v56.i8);
              v44 = vmlal_s16(v44, *v53.i8, *v57.i8);
              v48 = vmlal_s16(v48, *v11.i8, *v55.i8);
              v49 = vmlal_high_s16(v49, v11, v55);
              v40 -= 6;
            }

            if (v40 >= 1)
            {
              v8 = vandq_s8(*v39, v31);
              v58 = v37[1];
              v11 = vmovl_high_u8(v58);
              v10 = vmovl_u8(*v58.i8);
              v59 = vmovl_high_u8(*v37);
              v60 = vmovl_u8(*v37->i8);
              v61 = vqtbl1q_s8(v8, xmmword_18439C600);
              v62 = vqtbl1q_s8(v8, xmmword_18439C610);
              v63 = vqtbl1q_s8(v8, xmmword_18439C620);
              v43 = vmlal_s16(v43, *&vextq_s8(v60, v60, 8uLL), vzip1_s16(*v8.i8, vdup_lane_s16(*v8.i8, 1)));
              v45 = vmlal_high_s16(v45, v59, v63);
              v42 = vmlal_lane_s16(v42, *v60.i8, *v8.i8, 0);
              v47 = vmlal_high_s16(v47, v10, v62);
              v46 = vmlal_s16(v46, *v10.i8, *v62.i8);
              v44 = vmlal_s16(v44, *v59.i8, *v63.i8);
              v48 = vmlal_s16(v48, *v11.i8, *v61.i8);
              v49 = vmlal_high_s16(v49, v11, v61);
            }
          }

          v9 = vextq_s8(v47, v48, 0xCuLL);
          v64 = vaddq_s32(v42, vextq_s8(v45, v46, 0xCuLL));
          v65 = vaddq_s32(v45, vextq_s8(v48, v49, 0xCuLL));
          v66 = vaddq_s32(v43, vextq_s8(v46, v47, 0xCuLL));
          v67 = vaddq_s32(v44, v9);
          *v34 = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vextq_s8(v66, v67, 4uLL), v64), vaddq_s32(vextq_s8(v67, v65, 8uLL), v32)), 0xEuLL), v33), 0);
          v34[1].i32[0] = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vdupq_lane_s32(*v67.i8, 1), v66), vaddq_s32(vdupq_laneq_s32(v65, 2), v32)), 0xEuLL), v33), 0).u32[0];
          v34 = (v34 + 20);
          ++v35;
          v36 = (v36 + v18);
          if (v35 == v16 - v20)
          {
            v35 = v16 - v20;
            break;
          }
        }
      }

      else
      {
        v36 = result;
      }

      if (v35 < v16)
      {
        do
        {
          v68 = *v36;
          if (v68 >= v15)
          {
            v69 = v15;
          }

          else
          {
            v69 = *v36;
          }

          v70 = v15 - v69;
          if (v36[1] >= v70)
          {
            v71 = v70;
          }

          else
          {
            v71 = v36[1];
          }

          if (v71 < 1)
          {
            v75 = 0uLL;
            v77 = 0uLL;
            v78 = 0uLL;
            v79 = 0uLL;
            v80 = 0uLL;
            v81 = 0uLL;
            v82 = 0uLL;
            v83 = 0uLL;
          }

          else
          {
            v72 = (v13 + 5 * v68);
            v73 = &v72[-2] + 5 * v71;
            v74 = (v36 + 2);
            v75 = 0uLL;
            if (v72 >= v73)
            {
              v77 = 0uLL;
              v78 = 0uLL;
              v79 = 0uLL;
              v80 = 0uLL;
              v81 = 0uLL;
              v82 = 0uLL;
              v83 = 0uLL;
              goto LABEL_73;
            }

            v76 = v71 + 6;
            v77 = 0uLL;
            v78 = 0uLL;
            v79 = 0uLL;
            v80 = 0uLL;
            v81 = 0uLL;
            v82 = 0uLL;
            v83 = 0uLL;
            do
            {
              v84 = v76;
              v76 -= 6;
              if ((v19 - v74) < 0x10)
              {
                v8 = 0uLL;
                if (v84 != 6)
                {
                  if (v76 < 4)
                  {
                    if (v84 == 7)
                    {
                      v9.i16[0] = v74->i16[0];
                    }

                    else
                    {
                      if (v84 == 8)
                      {
                        v91 = 0;
                      }

                      else
                      {
                        v91 = v74->u16[2];
                      }

                      v10.i16[0] = v74->i16[0];
                      v10.i16[2] = v74->i16[1];
                      *v9.i8 = vuzp1_s16(*v10.i8, v91);
                    }

                    v8.i64[0] = v9.i64[0];
                  }

                  else
                  {
                    if (v76 == 4)
                    {
                      v9.i64[0] = 0;
                    }

                    else if (v76 == 5)
                    {
                      v9.i16[0] = v74->i16[4];
                    }

                    else
                    {
                      if (v84 == 12)
                      {
                        v92 = 0;
                      }

                      else
                      {
                        if (v71)
                        {
                          v93 = 0;
                        }

                        else
                        {
                          v93 = v74->u16[7];
                        }

                        v92.i32[0] = v74->u16[6];
                        v92.i32[1] = v93;
                      }

                      v10.i16[0] = v74->i16[4];
                      v10.i16[2] = v74->i16[5];
                      *v9.i8 = vuzp1_s16(*v10.i8, v92);
                    }

                    v8.i64[0] = v74->i64[0];
                    v8.i64[1] = v9.i64[0];
                  }
                }
              }

              else
              {
                v8 = vandq_s8(*v74, v30);
              }

              v74 = (v74 + 12);
              v85 = *v72;
              v86 = v72[1];
              v72 = (v72 + 30);
              v11 = vmovl_high_u8(v86);
              v10 = vmovl_u8(*v86.i8);
              v87 = vmovl_high_u8(v85);
              v9 = vmovl_u8(*v85.i8);
              v88 = vqtbl1q_s8(v8, xmmword_18439C600);
              v89 = vqtbl1q_s8(v8, xmmword_18439C610);
              v90 = vqtbl1q_s8(v8, xmmword_18439C620);
              v75 = vmlal_lane_s16(v75, *v9.i8, *v8.i8, 0);
              v79 = vmlal_high_s16(v79, v87, v90);
              v78 = vmlal_s16(v78, *v87.i8, *v90.i8);
              v80 = vmlal_s16(v80, *v10.i8, *v89.i8);
              v81 = vmlal_high_s16(v81, v10, v89);
              v77 = vmlal_s16(v77, *&vextq_s8(v9, v9, 8uLL), vzip1_s16(*v8.i8, vdup_lane_s16(*v8.i8, 1)));
              v82 = vmlal_s16(v82, *v11.i8, *v88.i8);
              v83 = vmlal_high_s16(v83, v11, v88);
            }

            while (v72 < v73);
            if (v76 >= 7)
            {
              v71 = v84 - 12;
LABEL_73:
              v94 = 0;
              v95 = v71;
              v96 = 5 * v71;
              v97 = v71 << 16;
              v98 = v71;
              v99 = 5 * v71;
              while (2)
              {
                if ((v19 - v74) < 0x10)
                {
                  if (v98 >= 4)
                  {
                    if (v98 == 4)
                    {
                      v9.i64[0] = 0;
                    }

                    else if (v98 == 5)
                    {
                      v9.i16[0] = v74->i16[4];
                    }

                    else
                    {
                      if (v96 + v94 == 30)
                      {
                        v119 = 0;
                      }

                      else
                      {
                        if (v95)
                        {
                          v110 = 0;
                        }

                        else
                        {
                          v110 = v74->u16[7];
                        }

                        v119.i32[0] = v74->u16[6];
                        v119.i32[1] = v110;
                      }

                      v10.i16[0] = v74->i16[4];
                      v10.i16[2] = v74->i16[5];
                      *v9.i8 = vuzp1_s16(*v10.i8, v119);
                    }

                    v8.i64[0] = v74->i64[0];
                    v8.i64[1] = v9.i64[0];
                    goto LABEL_78;
                  }

                  if (v96 + v94 == 5)
                  {
                    v9.i16[0] = v74->i16[0];
                  }

                  else
                  {
                    if (v96 + v94 == 10)
                    {
                      v109 = 0;
                    }

                    else
                    {
                      v109 = v74->u16[2];
                    }

                    v10.i16[0] = v74->i16[0];
                    v10.i16[2] = v74->i16[1];
                    *v9.i8 = vuzp1_s16(*v10.i8, v109);
                  }

                  v8.i64[0] = v9.i64[0];
                  v74 = (v74 + 12);
                  v107 = 5 * v98;
                }

                else
                {
                  v100 = v97 >> 16;
                  if (v97 >> 16 >= 8)
                  {
                    v100 = 8;
                  }

                  v10 = *v74;
                  v8 = vandq_s8(*v74, vcgtq_s16(vdupq_n_s16(v100), xmmword_18439C5D0));
LABEL_78:
                  v74 = (v74 + 12);
                  if (v98 >= 7)
                  {
                    v101 = *v72;
                    v102 = v72[1];
                    goto LABEL_80;
                  }

                  v107 = v96 + v94;
                  if (v98 >= 4)
                  {
                    v101 = *v72;
                    if (v107 != 16)
                    {
                      if ((v107 - 16) < 8)
                      {
                        if (v99 + v94 == 20)
                        {
                          v118 = 0;
                        }

                        else
                        {
                          v117 = &v72[1].i8[4];
                          if (v99 + v94 == 21)
                          {
                            v118 = *v117;
                          }

                          else
                          {
                            v11.i8[4] = v72[1].i8[5];
                            LOBYTE(v118) = *v117;
                            BYTE2(v118) = v11.i8[4];
                            HIDWORD(v118) = v72[1].u8[6];
                          }
                        }

                        v11.i32[0] = v72[1].i32[0];
                        v121 = vmovl_u8(*v11.i8);
                        v137 = BYTE6(v118);
                        v135 = BYTE4(v118);
                        v133 = BYTE2(v118);
                        v131 = v118;
                        v102.i64[1] = 0;
                        v102.i8[0] = v121.i8[0];
                        v102.i8[1] = v121.i8[2];
                        v102.i8[2] = v121.i8[4];
                        v102.i8[3] = v121.i8[6];
                        v102.i8[4] = v131;
                        v102.i8[5] = v133;
                        v102.i8[6] = v135;
                        v102.i8[7] = v137;
                      }

                      else
                      {
                        if (v96 + v94 == 24)
                        {
                          v11.i64[0] = 0;
                        }

                        else if ((v96 + v94 - 24) < 4)
                        {
                          if (v99 + v94 == 24)
                          {
                            v123 = 0;
                          }

                          else
                          {
                            v122 = &v72[1].i8[8];
                            if (v99 + v94 == 25)
                            {
                              v123 = *v122;
                            }

                            else
                            {
                              LOBYTE(v123) = *v122;
                              BYTE2(v123) = v72[1].i8[9];
                              HIDWORD(v123) = v72[1].u8[10];
                            }
                          }

                          v11.i32[1] = 0;
                          v11.i8[0] = v123;
                          v11.i8[1] = BYTE2(v123);
                          v11.i8[2] = BYTE4(v123);
                          v11.i8[3] = BYTE6(v123);
                        }

                        else
                        {
                          if (v99 + v94 == 28)
                          {
                            v108 = 0;
                          }

                          else if (v99 + v94 == 29)
                          {
                            v108 = v72[1].u8[12];
                          }

                          else
                          {
                            if (v96 + v94 == 30)
                            {
                              v125 = 0;
                            }

                            else
                            {
                              if (v95)
                              {
                                v124 = 0;
                              }

                              else
                              {
                                v124 = v72[1].u8[15];
                              }

                              v125.i32[0] = v72[1].u8[14];
                              v125.i32[1] = v124;
                            }

                            v11.i8[0] = v72[1].i8[12];
                            v11.i8[4] = v72[1].i8[13];
                            v108 = vuzp1_s16(*v11.i8, v125);
                          }

                          v11.i32[0] = v72[1].i32[2];
                          *v11.i8 = vuzp1_s8(*&vmovl_u8(*v11.i8), v108);
                        }

                        v102.i64[0] = v72[1].i64[0];
                        v102.i64[1] = v11.i64[0];
                      }

LABEL_80:
                      v72 = (v72 + 30);
                      v11 = vmovl_high_u8(v102);
                      v10 = vmovl_u8(*v102.i8);
                      v103 = vmovl_high_u8(v101);
                      v9 = vmovl_u8(*v101.i8);
                      v104 = vqtbl1q_s8(v8, xmmword_18439C600);
                      v105 = vqtbl1q_s8(v8, xmmword_18439C610);
                      v106 = vqtbl1q_s8(v8, xmmword_18439C620);
                      v75 = vmlal_lane_s16(v75, *v9.i8, *v8.i8, 0);
                      v79 = vmlal_high_s16(v79, v103, v106);
                      v78 = vmlal_s16(v78, *v103.i8, *v106.i8);
                      v80 = vmlal_s16(v80, *v10.i8, *v105.i8);
                      v77 = vmlal_s16(v77, *&vextq_s8(v9, v9, 8uLL), vzip1_s16(*v8.i8, vdup_lane_s16(*v8.i8, 1)));
                      v81 = vmlal_high_s16(v81, v10, v105);
                      v82 = vmlal_s16(v82, *v11.i8, *v104.i8);
                      v83 = vmlal_high_s16(v83, v11, v104);
                      v94 -= 30;
                      v97 -= 393216;
                      v28 = v98 <= 6;
                      v98 -= 6;
                      if (v28)
                      {
                        goto LABEL_159;
                      }

                      continue;
                    }

LABEL_144:
                    v102 = 0uLL;
                    goto LABEL_80;
                  }
                }

                break;
              }

              if (v98 < 2)
              {
                if (v107 == 4)
                {
                  v114 = 0;
                }

                else
                {
                  v113 = &v72->i8[4];
                  if (v107 == 5)
                  {
                    v114 = *v113;
                  }

                  else
                  {
                    v10.i8[4] = v72->i8[5];
                    LOBYTE(v114) = *v113;
                    BYTE2(v114) = v10.i8[4];
                    HIDWORD(v114) = v72->u8[6];
                  }
                }

                v10.i32[0] = v72->i32[0];
                v115 = vmovl_u8(*v10.i8);
                v136 = BYTE6(v114);
                v134 = BYTE4(v114);
                v132 = BYTE2(v114);
                v130 = v114;
                v101.i64[1] = 0;
                v101.i8[0] = v115.i8[0];
                v101.i8[1] = v115.i8[2];
                v101.i8[2] = v115.i8[4];
                v101.i8[3] = v115.i8[6];
                v101.i8[4] = v130;
                v101.i8[5] = v132;
                v101.i8[6] = v134;
                v101.i8[7] = v136;
              }

              else
              {
                if (v107 == 8)
                {
                  v10.i64[0] = 0;
                }

                else if ((v107 - 8) < 4)
                {
                  if (v107 == 9)
                  {
                    v116 = v72->u8[8];
                  }

                  else
                  {
                    if (v96 + v94 == 10)
                    {
                      v120 = 0;
                    }

                    else
                    {
                      v120 = v72->u8[10];
                    }

                    v10.i8[0] = v72->i8[8];
                    v10.i8[4] = v72->i8[9];
                    v116 = vuzp1_s16(*v10.i8, v120);
                  }

                  v10.i32[1] = 0;
                  v10.i8[0] = v116.i8[0];
                  v10.i8[1] = v116.i8[2];
                  v10.i8[2] = v116.i8[4];
                  v10.i8[3] = v116.i8[6];
                }

                else
                {
                  if (v107 == 12)
                  {
                    v112 = 0;
                  }

                  else
                  {
                    v111 = &v72->i8[12];
                    if (v107 == 13)
                    {
                      v112 = *v111;
                    }

                    else
                    {
                      v10.i8[0] = *v111;
                      v10.i8[4] = v72->i8[13];
                      v112.i16[0] = v10.i16[0];
                      v112.i16[1] = v10.i16[2];
                      v112.i32[1] = v72->u8[14];
                    }
                  }

                  v10.i32[0] = v72->i32[2];
                  *v10.i8 = vuzp1_s8(*&vmovl_u8(*v10.i8), v112);
                }

                v101.i64[0] = v72->i64[0];
                v101.i64[1] = v10.i64[0];
              }

              goto LABEL_144;
            }
          }

LABEL_159:
          v9 = vextq_s8(v81, v82, 0xCuLL);
          v126 = vaddq_s32(v75, vextq_s8(v79, v80, 0xCuLL));
          v127 = vaddq_s32(v79, vextq_s8(v82, v83, 0xCuLL));
          v128 = vaddq_s32(v77, vextq_s8(v80, v81, 0xCuLL));
          v129 = vaddq_s32(v78, v9);
          *v34 = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vextq_s8(v128, v129, 4uLL), v126), vaddq_s32(vextq_s8(v129, v127, 8uLL), v32)), 0xEuLL), v33), 0);
          v34[1].i32[0] = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vdupq_lane_s32(*v129.i8, 1), v128), vaddq_s32(vdupq_laneq_s32(v127, 2), v32)), 0xEuLL), v33), 0).u32[0];
          v34 = (v34 + 20);
          ++v35;
          v36 = (v36 + v18);
        }

        while (v35 != v16);
      }

      v13 += v14;
      ++v12;
    }

    while (v12 != v27);
  }

  return result;
}

int *resample_horizontal<unsigned char,int,2,false>(int *result, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a4 >= 1 && a8 >= 1)
  {
    v11 = 0;
    v12 = *a6;
    v13 = *a7;
    v14 = v13 >> 1;
    v15 = 2 * a2;
    v16 = v15 + 8;
    v17 = result + (v15 + 8) * a4;
    if (v13 >> 1 >= *&v17[-v15 - 4] + *&v17[-v15 - 8])
    {
      v14 = *&v17[-v15 - 4] + *&v17[-v15 - 8];
    }

    if (a2 <= 3)
    {
      v18 = (2 * a2 + 23) / (2 * a2 + 8);
    }

    else
    {
      v18 = 1;
    }

    v19 = a2 > 7;
    v20 = a2 & 7;
    if ((a2 & 7) != 0)
    {
      v19 = 0;
    }

    else
    {
      v20 = 8;
    }

    v21 = ((2 * v20 + 15) & 0x30) + (16 * ((a2 >> 3) - v19));
    v22 = a4 - v18;
    v23 = vdupq_n_s16(v20);
    if (a2 >= 8)
    {
      v24 = 8;
    }

    else
    {
      v24 = a2;
    }

    v25 = vdupq_n_s16(v24);
    v26 = a8;
    v27 = a2 == a2 && a4 > v18;
    v28 = v27;
    v29 = vcgtq_u16(v25, xmmword_18439C5D0);
    v30 = vcgtq_u16(v23, xmmword_18439C5D0);
    do
    {
      v31 = *(a5 + 8 * v11);
      v32 = 0;
      if (v28)
      {
        v33 = result;
        while (1)
        {
          v34 = (v12 + 2 * *v33);
          v35 = (v34 + v21);
          if (v34->u64 + v21 > 2 * v14 + v12)
          {
            break;
          }

          if (v34 >= v35)
          {
            v39 = 0uLL;
            v40 = 0uLL;
            v41 = 0uLL;
            v42 = 0uLL;
          }

          else
          {
            v36 = (v33 + 2);
            v37 = v33[1];
            v38 = &v35[-1];
            v39 = 0uLL;
            v40 = 0uLL;
            v41 = 0uLL;
            v42 = 0uLL;
            while (v34 < v38)
            {
              v43 = *v36++;
              v44 = vandq_s8(v43, v29);
              v45 = *v34++;
              v10 = vmovl_high_u8(v45);
              v9 = vmovl_u8(*v45.i8);
              v46 = vzip2q_s16(v44, v44);
              v8 = vzip1q_s16(v44, v44);
              v42 = vmlal_high_s16(v42, v10, v46);
              v40 = vmlal_high_s16(v40, v9, v8);
              v41 = vmlal_s16(v41, *v10.i8, *v46.i8);
              v39 = vmlal_s16(v39, *v9.i8, *v8.i8);
              v37 -= 8;
            }

            if (v37 >= 1)
            {
              v47 = vandq_s8(*v36, v30);
              v10 = vmovl_high_u8(*v34);
              v9 = vmovl_u8(*v34->i8);
              v48 = vzip2q_s16(v47, v47);
              v8 = vzip1q_s16(v47, v47);
              v42 = vmlal_high_s16(v42, v10, v48);
              v40 = vmlal_high_s16(v40, v9, v8);
              v41 = vmlal_s16(v41, *v10.i8, *v48.i8);
              v39 = vmlal_s16(v39, *v9.i8, *v8.i8);
            }
          }

          v49 = vaddq_s32(vaddq_s32(v39, v41), vaddq_s32(v40, v42));
          *v31++ = vmax_s32(vmin_s32(vshr_n_s32(vadd_s32(*&vextq_s8(v49, v49, 8uLL), vadd_s32(*v49.i8, 0x200000002000)), 0xEuLL), 0xFF000000FFLL), 0);
          ++v32;
          v33 = (v33 + v16);
          if (v32 == v22)
          {
            v32 = v22;
            break;
          }
        }
      }

      else
      {
        v33 = result;
      }

      if (v32 < a4)
      {
        do
        {
          v50 = *v33;
          if (v50 >= v14)
          {
            v51 = v14;
          }

          else
          {
            v51 = *v33;
          }

          v52 = v14 - v51;
          if (v33[1] >= v52)
          {
            v53 = v52;
          }

          else
          {
            v53 = v33[1];
          }

          if (v53 < 1)
          {
            v58 = 0uLL;
            v59 = 0uLL;
            v60 = 0uLL;
            v61 = 0uLL;
          }

          else
          {
            v54 = (v12 + 2 * v50);
            v55 = &v54[-1] + 2 * v53;
            v56 = (v33 + 2);
            if (v54 >= v55)
            {
              v58 = 0uLL;
              v59 = 0uLL;
              v60 = 0uLL;
              v61 = 0uLL;
              goto LABEL_69;
            }

            v57 = v53 + 8;
            v58 = 0uLL;
            v59 = 0uLL;
            v60 = 0uLL;
            v61 = 0uLL;
            do
            {
              v62 = v57;
              v57 -= 8;
              if ((v17 - v56) < 0x10)
              {
                v63 = 0uLL;
                if (v62 != 8)
                {
                  if (v57 < 4)
                  {
                    if (v62 == 9)
                    {
                      v63.i16[0] = v56->i16[0];
                    }

                    else
                    {
                      if (v62 != 10)
                      {
                        v63.i16[0] = v56->i16[2];
                      }

                      v9.i16[0] = v56->i16[0];
                      v9.i16[2] = v56->i16[1];
                      *v63.i8 = vuzp1_s16(*v9.i8, *v63.i8);
                    }
                  }

                  else
                  {
                    if (v57 == 4)
                    {
                      v9.i64[0] = 0;
                    }

                    else if (v57 == 5)
                    {
                      v9.i16[0] = v56->i16[4];
                    }

                    else
                    {
                      if (v62 != 14)
                      {
                        if (v53)
                        {
                          v66 = 0;
                        }

                        else
                        {
                          v66 = v56->u16[7];
                        }

                        v63.i32[0] = v56->u16[6];
                        v63.i32[1] = v66;
                      }

                      v9.i16[0] = v56->i16[4];
                      v9.i16[2] = v56->i16[5];
                      *v9.i8 = vuzp1_s16(*v9.i8, *v63.i8);
                    }

                    v63.i64[0] = v56->i64[0];
                    v63.i64[1] = v9.i64[0];
                  }
                }
              }

              else
              {
                v63 = vandq_s8(*v56, v29);
              }

              ++v56;
              v64 = *v54++;
              v10 = vmovl_high_u8(v64);
              v9 = vmovl_u8(*v64.i8);
              v65 = vzip2q_s16(v63, v63);
              v8 = vzip1q_s16(v63, v63);
              v61 = vmlal_high_s16(v61, v10, v65);
              v60 = vmlal_s16(v60, *v10.i8, *v65.i8);
              v59 = vmlal_high_s16(v59, v9, v8);
              v58 = vmlal_s16(v58, *v9.i8, *v8.i8);
            }

            while (v54 < v55);
            if (v57 >= 9)
            {
              v53 = v62 - 16;
LABEL_69:
              v67 = v53;
              v68 = 2 * v53 - 8;
              v69 = v53 << 16;
              v70 = v67;
              while (2)
              {
                if ((v17 - v56) < 0x10)
                {
                  if (v70 >= 4)
                  {
                    if (v70 == 4)
                    {
                      v9 = 0uLL;
                    }

                    else if (v70 == 5)
                    {
                      v9.i16[0] = v56->i16[4];
                    }

                    else
                    {
                      if (v70 == 6)
                      {
                        v74 = 0;
                      }

                      else
                      {
                        if (v67)
                        {
                          v75 = 0;
                        }

                        else
                        {
                          v75 = v56->u16[7];
                        }

                        v74.i32[0] = v56->u16[6];
                        v74.i32[1] = v75;
                      }

                      v9.i16[0] = v56->i16[4];
                      v9.i16[2] = v56->i16[5];
                      *v9.i8 = vuzp1_s16(*v9.i8, v74);
                    }

                    v8.i64[0] = v56->i64[0];
                    v8.i64[1] = v9.i64[0];
                    goto LABEL_74;
                  }

                  if (v70 == 1)
                  {
                    v8.i16[0] = v56->i16[0];
                  }

                  else
                  {
                    if (v70 == 2)
                    {
                      v8 = 0uLL;
                    }

                    else
                    {
                      v8 = v56->u16[2];
                    }

                    v9.i16[0] = v56->i16[0];
                    v9.i16[2] = v56->i16[1];
                    *v8.i8 = vuzp1_s16(*v9.i8, *v8.i8);
                  }

                  ++v56;
                }

                else
                {
                  v71 = v69 >> 16;
                  if (v69 >> 16 >= 8)
                  {
                    v71 = 8;
                  }

                  v9 = *v56;
                  v8 = vandq_s8(*v56, vcgtq_s16(vdupq_n_s16(v71), xmmword_18439C5D0));
LABEL_74:
                  ++v56;
                  if (v70 >= 8)
                  {
                    v9 = *v54;
                    goto LABEL_76;
                  }

                  if (v70 >= 4)
                  {
                    if (v68)
                    {
                      if (v68 < 4)
                      {
                        if (v70 == 5)
                        {
                          v76 = 0;
                        }

                        else
                        {
                          v76 = v54->u8[10];
                        }

                        v10.i32[1] = 0;
                        v10.i16[0] = v54->i16[4];
                        v10.i8[2] = v76;
                        v10.i8[3] = BYTE4(v76);
                      }

                      else
                      {
                        if (v70 == 6)
                        {
                          v73 = 0;
                        }

                        else
                        {
                          if (v70 == 7)
                          {
                            v9.i64[0] = 0;
                          }

                          else
                          {
                            v9.i8[0] = v54->i8[14];
                            v9.i8[4] = v54->i8[15];
                          }

                          v10.i8[0] = v54->i8[12];
                          v10.i8[4] = v54->i8[13];
                          v73 = vuzp1_s16(*v10.i8, *v9.i8);
                        }

                        v10.i32[0] = v54->i32[2];
                        *v10.i8 = vuzp1_s8(*&vmovl_u8(*v10.i8), v73);
                      }
                    }

                    else
                    {
                      v10.i64[0] = 0;
                    }

                    v9.i64[0] = v54->i64[0];
                    v9.i64[1] = v10.i64[0];
LABEL_76:
                    ++v54;
                    v10 = vmovl_high_u8(v9);
                    v9 = vmovl_u8(*v9.i8);
                    v72 = vzip2q_s16(v8, v8);
                    v8 = vzip1q_s16(v8, v8);
                    v60 = vmlal_s16(v60, *v10.i8, *v72.i8);
                    v59 = vmlal_high_s16(v59, v9, v8);
                    v61 = vmlal_high_s16(v61, v10, v72);
                    v58 = vmlal_s16(v58, *v9.i8, *v8.i8);
                    v68 -= 16;
                    v69 -= 0x80000;
                    v27 = v70 <= 8;
                    v70 -= 8;
                    if (v27)
                    {
                      goto LABEL_125;
                    }

                    continue;
                  }
                }

                break;
              }

              if (v70 < 2)
              {
                if (v70 == 1)
                {
                  v9 = 0uLL;
                }

                else
                {
                  v9.i8[0] = v54->i8[2];
                  v9.i8[4] = v54->i8[3];
                }

                v10.i32[1] = 0;
                v10.i16[0] = v54->i16[0];
                v10.i8[2] = v9.i8[0];
                v10.i8[3] = v9.i8[4];
              }

              else
              {
                if (v70 == 2)
                {
                  v9 = 0uLL;
                }

                else
                {
                  v10.i8[0] = v54->i8[4];
                  v10.i8[4] = v54->i8[5];
                  v9.i32[1] = 0;
                  v9.i64[1] = 0;
                  v9.i16[0] = v10.i16[0];
                  v9.i16[1] = v10.i16[2];
                }

                v10.i32[0] = v54->i32[0];
                *v10.i8 = vuzp1_s8(*&vmovl_u8(*v10.i8), *v9.i8);
              }

              v9.i64[0] = v10.i64[0];
              goto LABEL_76;
            }
          }

LABEL_125:
          v77 = vaddq_s32(vaddq_s32(v58, v60), vaddq_s32(v59, v61));
          *v31++ = vmax_s32(vmin_s32(vshr_n_s32(vadd_s32(*&vextq_s8(v77, v77, 8uLL), vadd_s32(*v77.i8, 0x200000002000)), 0xEuLL), 0xFF000000FFLL), 0);
          ++v32;
          v33 = (v33 + v16);
        }

        while (v32 != a4);
      }

      v12 += v13;
      ++v11;
    }

    while (v11 != v26);
  }

  return result;
}

uint64_t use_template_resampling_code()
{
  if (CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::onceToken != -1)
  {
    dispatch_once(&CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::onceToken, &__block_literal_global_3_13902);
  }

  return CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::result;
}

uint64_t CGPDFAnnotationTypeID()
{
  if (CGPDFAnnotationTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFAnnotationTypeID_onceToken, &__block_literal_global);
  }

  return CGPDFAnnotationTypeID_id;
}

uint64_t __CGPDFAnnotationTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFAnnotationTypeID_class);
  CGPDFAnnotationTypeID_id = result;
  return result;
}

CFStringRef CGPDFAnnotationDebugDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Type = CGPDFAnnotationGetType(a1);
  v4 = "Yes";
  if (*(a1 + 24))
  {
    v5 = "Yes";
  }

  else
  {
    v5 = "No";
  }

  if (*(a1 + 32))
  {
    v6 = "Yes";
  }

  else
  {
    v6 = "No";
  }

  if (!*(a1 + 56))
  {
    v4 = "No";
  }

  return CFStringCreateWithFormat(v2, 0, @"CGPDFAnnotation. Type? %d, Mutated? %s, BurnIn? %s IsGhost? %s", Type, v5, v6, v4);
}

uint64_t CGPDFAnnotationGetType(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = CGPDFNameCreate("Subtype");
  v4 = CFDictionaryGetValue(v2, v3);
  CFRelease(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = CFGetTypeID(v4);
  if (CGPDFNameTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFNameTypeID_onceToken, &__block_literal_global_6_20515);
  }

  if (v5 == CGPDFNameTypeID_id)
  {
    v6 = v4[2];
    v8 = *v6;
    v7 = (v6 + 1);
    if (v8 == 47)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4[2];
    }

    return CGPDFAnnotationTypeFromString(v9);
  }

  else
  {
LABEL_12:
    v11 = *(a1 + 16);
    if (!v11)
    {
      return 26;
    }

    value = 0;
    if (!CGPDFDictionaryGetName(v11, "Subtype", &value) || value == 0)
    {
      return 26;
    }

    else
    {
      return CGPDFAnnotationTypeFromString(value);
    }
  }
}

uint64_t CGPDFAnnotationTypeFromString(char *__s1)
{
  if (*__s1 == 51 && __s1[1] == 68 && !__s1[2])
  {
    return 0;
  }

  if (!strcmp(__s1, "Caret"))
  {
    return 1;
  }

  if (!strcmp(__s1, "Circle"))
  {
    return 2;
  }

  if (!strcmp(__s1, "FileAttachment"))
  {
    return 3;
  }

  if (!strcmp(__s1, "FreeText"))
  {
    return 4;
  }

  if (!strcmp(__s1, "Highlight"))
  {
    return 5;
  }

  if (!strcmp(__s1, "Ink"))
  {
    return 6;
  }

  if (!strcmp(__s1, "Line"))
  {
    return 7;
  }

  if (!strcmp(__s1, "Link"))
  {
    return 8;
  }

  if (!strcmp(__s1, "Movie"))
  {
    return 9;
  }

  if (!strcmp(__s1, "Polygon"))
  {
    return 10;
  }

  if (!strcmp(__s1, "PolyLine"))
  {
    return 11;
  }

  if (!strcmp(__s1, "Popup"))
  {
    return 12;
  }

  if (!strcmp(__s1, "Redact"))
  {
    return 14;
  }

  if (!strcmp(__s1, "Screen"))
  {
    return 15;
  }

  if (!strcmp(__s1, "Sound"))
  {
    return 16;
  }

  if (!strcmp(__s1, "Square"))
  {
    return 17;
  }

  if (!strcmp(__s1, "Squiggly"))
  {
    return 18;
  }

  if (!strcmp(__s1, "Stamp"))
  {
    return 19;
  }

  if (!strcmp(__s1, "StrikeOut"))
  {
    return 20;
  }

  if (!strcmp(__s1, "Text"))
  {
    return 21;
  }

  if (!strcmp(__s1, "Underline"))
  {
    return 23;
  }

  if (!strcmp(__s1, "Widget"))
  {
    return 25;
  }

  if (!strcmp(__s1, "PrinterMark"))
  {
    return 13;
  }

  if (!strcmp(__s1, "TrapNet"))
  {
    return 22;
  }

  if (!strcmp(__s1, "Watermark"))
  {
    return 24;
  }

  return 26;
}

void CGPDFAnnotationFinalize(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t CGPDFAnnotationCreate(const __CFDictionary *a1)
{
  if (CGPDFAnnotationTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFAnnotationTypeID_onceToken, &__block_literal_global);
  }

  cftype = pdf_create_cftype();
  *(cftype + 16) = 0;
  *(cftype + 24) = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  *(cftype + 32) = 0;
  *(cftype + 40) = 0;
  *(cftype + 48) = 0;
  *(cftype + 56) = 0;
  return cftype;
}

uint64_t CGPDFAnnotationCreateWithCGPDFDictionary(uint64_t a1)
{
  if (CGPDFAnnotationTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFAnnotationTypeID_onceToken, &__block_literal_global);
  }

  result = pdf_create_cftype();
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

CFMutableDictionaryRef CGPDFAnnotationGetDictionary(uint64_t a1)
{
  result = *(a1 + 24);
  if (!result)
  {
    result = CGPDFAppenderCreateCFDictionary(*(a1 + 16));
    *(a1 + 24) = result;
  }

  return result;
}

float64_t CGPDFAnnotationGetRect(uint64_t a1)
{
  memset(v6, 0, sizeof(v6));
  if (!*(a1 + 24) || (v2 = CGPDFNameCreate("Rect"), PDFRect = CGCFDictionaryGetPDFRect(*(a1 + 24), v2, v6), CFRelease(v2), (PDFRect & 1) == 0))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      CGPDFDictionaryGetRect(v4, "Rect", v6[0].f64);
    }
  }

  return v6[0].f64[0];
}

void CGContextDrawPDFAnnotation(CGContext *a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    return;
  }

  value.a = 0.0;
  if (!CGPDFDictionaryGetDictionary(v4, "AP", &value))
  {
    return;
  }

  v55 = 0;
  v56 = 0;
  if (!CGPDFDictionaryGetDictionary(*&value.a, "N", &v55))
  {
    a = value.a;
    v7 = "N";
LABEL_8:
    if (!CGPDFDictionaryGetStream(*&a, v7, &v56))
    {
      return;
    }

    goto LABEL_11;
  }

  v54 = 0;
  Name = CGPDFDictionaryGetName(*(a2 + 16), "AS", &v54);
  a = *&v55;
  if (Name)
  {
    v7 = v54;
    goto LABEL_8;
  }

  if (!CGPDFDictionaryGetStream(v55, "Off", &v56))
  {
    return;
  }

LABEL_11:
  if (v56)
  {
    v8 = CGPDFFormCreate(v56);
    v9 = v8;
    v10 = (v8 + 56);
    if (!v8)
    {
      v10 = &CGAffineTransformIdentity;
    }

    v11 = *&v10->c;
    v13 = *&v10->a;
    v12 = v11;
    *&transform.a = *&v10->a;
    *&transform.c = v11;
    *&transform.tx = *&v10->tx;
    v14 = &CGRectNull;
    p_height = &CGRectNull.size.height;
    p_y = &CGRectNull.origin.y;
    p_size = &CGRectNull.size;
    if (v8)
    {
      p_size = (v8 + 40);
      p_y = (v8 + 32);
      v14 = (v8 + 24);
      p_height = (v8 + 48);
    }

    v57.size.height = *p_height;
    v57.origin.x = v14->origin.x;
    v57.origin.y = *p_y;
    v57.size.width = p_size->width;
    *&value.a = v13;
    *&value.c = v12;
    *&value.tx = *&v10->tx;
    rect_24 = v57.origin.y;
    x = v57.origin.x;
    rect_16 = v57.size.width;
    height = v57.size.height;
    v58 = CGRectApplyAffineTransform(v57, &value);
    v18 = v58.origin.x;
    y = v58.origin.y;
    width = v58.size.width;
    v21 = v58.size.height;
    v22 = CGPDFAnnotationGetRect(a2);
    v24 = v23;
    v26 = v25;
    v28 = v27;
    if (v9)
    {
      v29 = v9[2];
      v30 = v9[13];
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    v31 = CGPDFDrawingContextCreateWithStream(v29, v30, 0);
    CGContextSaveGState(a1);
    v32 = fmin(v26, v28);
    v33 = v32 < 0.0;
    rect_8 = v22;
    if (v32 < 0.0)
    {
      v59.origin.x = v22;
      v59.origin.y = v24;
      v59.size.width = v26;
      v59.size.height = v28;
      *&v22 = CGRectStandardize(v59);
    }

    v34 = fmin(width, v21) < 0.0;
    v35 = v34;
    v36 = v18;
    if (v34)
    {
      v60.origin.x = v18;
      v60.origin.y = y;
      v60.size.width = width;
      v60.size.height = v21;
      *&v36 = CGRectStandardize(v60);
    }

    rect = v18;
    v37 = y;
    v38 = v22 - v36;
    if (v33)
    {
      v61.origin.x = rect_8;
      v61.origin.y = v24;
      v61.size.width = v26;
      v61.size.height = v28;
      v62 = CGRectStandardize(v61);
      v24 = v62.origin.y;
    }

    v39 = (v26 - width) * 0.5 + v38;
    if (v35)
    {
      v63.origin.x = rect;
      v63.origin.y = y;
      v63.size.width = width;
      v63.size.height = v21;
      v64 = CGRectStandardize(v63);
      v37 = v64.origin.y;
    }

    value.a = 1.0;
    value.b = 0.0;
    value.c = 0.0;
    value.d = 1.0;
    value.tx = v39;
    value.ty = (v28 - v21) * 0.5 + v24 - v37;
    CGContextConcatCTM(a1, &value);
    CGContextConcatCTM(a1, &transform);
    v65.origin.y = rect_24;
    v65.origin.x = x;
    v65.size.width = rect_16;
    v65.size.height = height;
    CGContextClipToRect(a1, v65);
    CGPDFDrawingContextDraw(v31, a1, v40, v41, v42, v43, v44, v45);
    CGContextRestoreGState(a1);
    CGPDFDrawingContextRelease(v31);
    if (v9)
    {
      CFRelease(v9);
    }
  }
}

void CGPDFAnnotationSetAnnotationForKey(uint64_t a1, const char *a2, const void *a3)
{
  CFDictionary = *(a1 + 24);
  if (!CFDictionary)
  {
    CFDictionary = CGPDFAppenderCreateCFDictionary(*(a1 + 16));
    *(a1 + 24) = CFDictionary;
  }

  CGPDFAppenderDictionarySetValue(CFDictionary, a2, a3);
}

CGPDFDictionary *CGPDFAnnotationIsPristine(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    value = 0;
    result = CGPDFDictionaryGetName(result, "AAPL:Hash", &value);
    if (result)
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        Hash = CGPDFAppenderDictionaryCreateHash(v3);
      }

      else
      {
        CFDictionary = CGPDFAppenderCreateCFDictionary(*(a1 + 16));
        Hash = CGPDFAppenderDictionaryCreateHash(CFDictionary);
        CFRelease(CFDictionary);
      }

      v6 = *(Hash + 16);
      v8 = *v6;
      v7 = (v6 + 1);
      if (v8 == 47)
      {
        v9 = v7;
      }

      else
      {
        v9 = *(Hash + 16);
      }

      return (strcmp(value, v9) == 0);
    }
  }

  return result;
}

CFTypeRef CPListInfoCopy(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[1];
  *(a2 + 32) = a1[2];
  v8 = *a1;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *a2 = v8;
  *(a2 + 16) = v7;
  result = *(a2 + 40);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void *splitParagraphAtTextLine(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = a1;
  v5 = [a1 indexOf:a2];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [v4 parent];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 indexOf:v4];
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = v9;
        v4 = [v4 copyAndSplitChildrenAtIndex:v6 + a3];
        [v8 add:v4 atIndex:(v10 + 1)];
      }
    }
  }

  return v4;
}

CGDataConsumerRef CGDataConsumerCreateFlateEncoder(void *a1)
{
  v2 = malloc_type_malloc(0xF8uLL, 0x10B0040B979EF38uLL);
  v2->zalloc = encoder_alloc;
  v2->zfree = encoder_free;
  v2->opaque = 0;
  v2->next_in = 0;
  v2->avail_in = 0;
  v2->next_out = 0;
  v2->avail_out = 0;
  if (deflateInit_(v2, 1, "1.2.12", 112))
  {
    fprintf_l(*MEMORY[0x1E69E9848], 0, "deflateInit: error: %s.\n", v2->msg);
    free(v2);
    return 0;
  }

  else
  {
    v2->next_out = &v2[1].avail_in;
    v2->avail_out = 128;
    if (a1)
    {
      CFRetain(a1);
    }

    v2[1].next_in = a1;

    return CGDataConsumerCreate(v2, &callbacks);
  }
}

void encoder_close(z_stream *a1)
{
  if (a1)
  {
    do_flush(a1, 4);
    if (a1->state)
    {
      v2 = deflateEnd(a1);
      if (v2)
      {
        fprintf_l(*MEMORY[0x1E69E9848], 0, "deflateEnd: error %d: %s.\n", v2, a1->msg);
      }
    }

    next_in = a1[1].next_in;
    if (next_in)
    {
      if ((next_in[56] & 1) != 0 || (v4 = *(next_in + 10)) == 0 || (v4(*(next_in + 2)), (next_in = a1[1].next_in) != 0))
      {
        CFRelease(next_in);
      }
    }

    free(a1);
  }
}

BOOL do_flush(z_streamp strm, int flush)
{
  v4 = 0;
  v5 = 0;
  strm->avail_in = 0;
  p_avail_in = &strm[1].avail_in;
  avail_out = strm->avail_out;
  while (avail_out == 128)
  {
LABEL_5:
    if (v4)
    {
      return v5 < 2;
    }

    v8 = deflate(strm, flush);
    if (v8 == -5 && avail_out == 128)
    {
      v5 = 0;
    }

    else
    {
      v5 = v8;
    }

    avail_out = strm->avail_out;
    if (avail_out)
    {
      v10 = 1;
    }

    else
    {
      v10 = v5 == 1;
    }

    v4 = v10;
    if (v5 >= 2)
    {
      v5 = v8;
      return v5 < 2;
    }
  }

  if (CGDataConsumerPutBytes(strm[1].next_in, p_avail_in, 128 - avail_out) == 128 - avail_out)
  {
    strm->next_out = p_avail_in;
    strm->avail_out = 128;
    goto LABEL_5;
  }

  return 0;
}

z_stream *encoder_flush(z_stream *result)
{
  if (result)
  {
    v1 = result;
    result = do_flush(result, 0);
    if (result)
    {
      next_in = v1[1].next_in;
      if (next_in)
      {
        if ((next_in[56] & 1) == 0)
        {
          v3 = *(next_in + 10);
          if (v3)
          {
            v4 = *(next_in + 2);

            return v3(v4);
          }
        }
      }
    }
  }

  return result;
}

uint64_t encoder_write(uint64_t strm, uint64_t a2, uint64_t a3)
{
  if (!strm)
  {
    return strm;
  }

  v4 = strm;
  *(strm + 8) = a3;
  *strm = a2;
  if (!a3)
  {
    v7 = 0;
    return a3 - v7;
  }

  v5 = strm + 120;
  while (1)
  {
    if (*(v4 + 32))
    {
      goto LABEL_7;
    }

    if (CGDataConsumerPutBytes(*(v4 + 112), v4 + 120, 128) != 128)
    {
      break;
    }

    *(v4 + 32) = 128;
    *(v4 + 24) = v5;
LABEL_7:
    v6 = deflate(v4, 0);
    LODWORD(v7) = *(v4 + 8);
    if (v6 || !v7)
    {
      goto LABEL_12;
    }
  }

  LODWORD(v7) = *(v4 + 8);
LABEL_12:
  v7 = v7;
  return a3 - v7;
}

void sub_183FE8570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void TrueType::~TrueType(TrueType *this)
{
  SimpleFont::~SimpleFont(this);

  JUMPOUT(0x1865EE610);
}

size_t __CGGetTempDirPath_block_invoke()
{
  result = confstr(65537, &CGGetTempDirPath_tempDirPath, 0x400uLL);
  if (!result)
  {
    CGGetTempDirPath_tempDirPath = 0;
  }

  return result;
}

uint64_t CGFlexTRCToneMappingGetDefaultOptions()
{
  if (CGFlexTRCToneMappingGetDefaultOptions_predicate != -1)
  {
    dispatch_once(&CGFlexTRCToneMappingGetDefaultOptions_predicate, &__block_literal_global_129);
  }

  return CGFlexTRCToneMappingGetDefaultOptions_options;
}

void __CGFlexTRCToneMappingGetDefaultOptions_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = @"kCGFlexGTCTargetHeadroom";
  LODWORD(valuePtr) = 1065353216;
  valuePtr = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  v0 = CFDictionaryCreate(0, keys, &valuePtr, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  valuePtr = v0;
  keys[0] = @"kCGApplyFlexTRC";
  CGFlexTRCToneMappingGetDefaultOptions_options = CFDictionaryCreate(0, keys, &valuePtr, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v0)
  {
    CFRelease(v0);
  }
}

uint64_t CGFlexLumaToneMappingGetDefaultOptions()
{
  if (CGFlexLumaToneMappingGetDefaultOptions_predicate != -1)
  {
    dispatch_once(&CGFlexLumaToneMappingGetDefaultOptions_predicate, &__block_literal_global_10);
  }

  return CGFlexLumaToneMappingGetDefaultOptions_options;
}

void __CGFlexLumaToneMappingGetDefaultOptions_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = @"kCGFlexGTCTargetHeadroom";
  LODWORD(valuePtr) = 1065353216;
  valuePtr = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  v0 = CFDictionaryCreate(0, keys, &valuePtr, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  valuePtr = v0;
  keys[0] = @"kCGApplyFlexLumaScaling";
  CGFlexLumaToneMappingGetDefaultOptions_options = CFDictionaryCreate(0, keys, &valuePtr, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v0)
  {
    CFRelease(v0);
  }
}

float CGGetFloatValue(const __CFNumber *a1)
{
  v2 = CFGetTypeID(a1);
  TypeID = CFNumberGetTypeID();
  result = 0.0;
  if (v2 == TypeID)
  {
    valuePtr = 0.0;
    CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
    return valuePtr;
  }

  return result;
}

BOOL CG::DisplayListResourceColor::_equal_to(CG::DisplayListResourceColor *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v5 || !CGColorEqualToColor(v4, v5))
  {
    return 0;
  }

LABEL_6:

  return CG::DisplayListResource::_equal_to(this, a2);
}

BOOL std::type_info::operator==[abi:fe200100](uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a2 & a1) < 0 != __OFSUB__(a1, a2))
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

BOOL CG::DisplayListResource::_equal_to(uint64_t a1, uint64_t a2)
{
  result = std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8));
  if (result)
  {
    return *(a2 + 8) == *(a1 + 8);
  }

  return result;
}

void CG::DisplayListResourceColor::getChildResources(CG::DisplayListResourceColor *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 3))
  {
    v4 = *(this + 3);
    std::vector<CG::DisplayListResource const*>::push_back[abi:fe200100](a2, &v4);
  }

  if (*(this + 4))
  {
    v4 = *(this + 4);
    std::vector<CG::DisplayListResource const*>::push_back[abi:fe200100](a2, &v4);
  }
}

void sub_183FE8D30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CG::DisplayListResource const*>::push_back[abi:fe200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<CG::DisplayListResource const*>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<CG::DisplayListResource const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::__throw_length_error[abi:fe200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:fe200100](exception, a1);
  __cxa_throw(exception, off_1E6E04880, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:fe200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

BOOL CG::DisplayListResourceImage::_equal_to(void *a1, void *a2, char a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];
  if (v6)
  {
    if (v7)
    {
      if (a3)
      {
        if (CG::DisplayListResourceImage::_equal_to(CG::DisplayListResource const&,unsigned long)const::predicate != -1)
        {
          dispatch_once(&CG::DisplayListResourceImage::_equal_to(CG::DisplayListResource const&,unsigned long)const::predicate, &__block_literal_global_142);
        }

        v9 = CG::DisplayListResourceImage::_equal_to(CG::DisplayListResource const&,unsigned long)const::f(a1[2]);
        if (CG::DisplayListResourceImage::_equal_to(CG::DisplayListResource const&,unsigned long)const::predicate != -1)
        {
          dispatch_once(&CG::DisplayListResourceImage::_equal_to(CG::DisplayListResource const&,unsigned long)const::predicate, &__block_literal_global_7);
        }

        if (v9 == CG::DisplayListResourceImage::_equal_to(CG::DisplayListResource const&,unsigned long)const::f(a2[2]))
        {
          goto LABEL_15;
        }
      }

      else if (v6 == v7)
      {
        goto LABEL_15;
      }
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_15:

  return CG::DisplayListResource::_equal_to(a1, a2);
}

uint64_t (*___ZNK2CG24DisplayListResourceImage9_equal_toERKNS_19DisplayListResourceEm_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(void)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageGetHash");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageGetHash");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageGetHash");
  }

  CG::DisplayListResourceImage::_equal_to(CG::DisplayListResource const&,unsigned long)const::f = result;
  return result;
}

uint64_t (*___ZNK2CG24DisplayListResourceImage9_equal_toERKNS_19DisplayListResourceEm_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(void)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageGetHash");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageGetHash");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageGetHash");
  }

  CG::DisplayListResourceImage::_equal_to(CG::DisplayListResource const&,unsigned long)const::f = result;
  return result;
}

void CG::DisplayListResourceImage::getChildResources(CG::DisplayListResourceImage *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 5))
  {
    v2 = *(this + 5);
    std::vector<CG::DisplayListResource const*>::push_back[abi:fe200100](a2, &v2);
  }
}

void sub_183FE9290(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL CG::DisplayListResourceShading::_equal_to(void *a1, void *a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v5 || *(v4 + 16) != *(v5 + 16))
  {
    return 0;
  }

LABEL_6:

  return CG::DisplayListResource::_equal_to(a1, a2);
}

void CG::DisplayListResourceShading::getChildResources(CG::DisplayListResourceShading *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 4))
  {
    v2 = *(this + 4);
    std::vector<CG::DisplayListResource const*>::push_back[abi:fe200100](a2, &v2);
  }
}

void sub_183FE93F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL CG::DisplayListResourcePattern::_equal_to(void *a1, void *a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v5 || *(v4 + 16) != *(v5 + 16))
  {
    return 0;
  }

LABEL_6:

  return CG::DisplayListResource::_equal_to(a1, a2);
}

void CG::DisplayListResource::getChildResources(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void CG::DisplayListResourcePattern::~DisplayListResourcePattern(CG::DisplayListResourcePattern *this)
{
  CG::DisplayListResourcePattern::~DisplayListResourcePattern(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF239B20;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
    *(this + 2) = 0;
  }
}

BOOL CG::DisplayListResourceStyle::_equal_to(CG::DisplayListResourceStyle *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v5 || *(v4 + 16) != *(v5 + 16))
  {
    return 0;
  }

LABEL_6:

  return CG::DisplayListResource::_equal_to(this, a2);
}

void CG::DisplayListResourceStyle::getChildResources(CG::DisplayListResourceStyle *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 3))
  {
    v2 = *(this + 3);
    std::vector<CG::DisplayListResource const*>::push_back[abi:fe200100](a2, &v2);
  }
}

void sub_183FE9654(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__CFString *CGPDFPageCopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = Mutable;
  if (a1)
  {
    v4 = *(*(a1 + 40) + 8);
  }

  else
  {
    v4 = 0;
  }

  CFStringAppendFormat(Mutable, 0, @"<CGPDFPage %p> page number: %zu", a1, v4);
  return v3;
}

CFTypeID CGPDFPageGetTypeID(void)
{
  if (CGPDFPageGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFPageGetTypeID_onceToken, &__block_literal_global_157);
  }

  return CGPDFPageGetTypeID_id;
}

void CGPDFPageRelease(CGPDFPageRef page)
{
  if (page)
  {
    CFRelease(page);
  }
}

CGPDFPageRef CGPDFPageRetain(CGPDFPageRef page)
{
  if (page)
  {
    CFRetain(page);
  }

  return page;
}

CGPDFDocumentRef CGPDFPageGetDocument(CGPDFDocumentRef page)
{
  if (page)
  {
    return *(page + 2);
  }

  return page;
}

size_t CGPDFPageGetPageNumber(size_t page)
{
  if (page)
  {
    return *(*(page + 40) + 8);
  }

  return page;
}

int CGPDFPageGetRotationAngle(CGPDFPageRef page)
{
  if (!page)
  {
    return 0;
  }

  pthread_mutex_lock((page + 216));
  v2 = *(page + 12);
  pthread_mutex_unlock((page + 216));
  return v2;
}

CFTypeRef CGPDFPageGetBackgroundColorHint(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = pdf_page_copy_background_color_hint(*(a1 + 40));
  if (!v1)
  {
    return 0;
  }

  return CFAutorelease(v1);
}

uint64_t CGPDFPageCopyBackgroundColorHint(uint64_t result)
{
  if (result)
  {
    return pdf_page_copy_background_color_hint(*(result + 40));
  }

  return result;
}

CGFloat CGPDFPageGetDrawingTransformForRect@<D0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, float64x2_t *a5@<X8>, CGFloat a6@<D0>, CGFloat a7@<D1>, CGFloat a8@<D2>, CGFloat a9@<D3>)
{
  if (a1)
  {
    *&result = *&pdf_page_get_drawing_transform(a5, *(a1 + 40), a2, a3, a4, 0, -8.98846567e307, -8.98846567e307, 1.79769313e308, 1.79769313e308, a6, a7, a8, a9);
  }

  else
  {
    *a5->f64 = CGAffineTransformIdentity;
    return CGAffineTransformIdentity.tx;
  }

  return result;
}

uint64_t CGPDFPageGetColorSpace(uint64_t result)
{
  if (result)
  {
    return *(*(result + 40) + 56);
  }

  return result;
}

CGPDFDictionaryRef CGPDFPageGetDictionary(CGPDFDictionaryRef page)
{
  if (page)
  {
    return *(*(page + 5) + 16);
  }

  return page;
}

uint64_t CGPDFPageGetThumbnail(uint64_t result)
{
  if (result)
  {
    return pdf_page_get_thumbnail(*(result + 40));
  }

  return result;
}

CGImageRef CGPDFPageCopyThumbnail(uint64_t *a1)
{
  if (a1)
  {
    v1 = a1;
    thumbnail = pdf_page_get_thumbnail(a1[5]);
    if (thumbnail)
    {
      v3 = thumbnail;
      CFRetain(thumbnail);
      return v3;
    }

    a1 = v1;
  }

  return CGPDFPageCreateThumbnail(a1);
}

CGImageRef CGPDFPageCreateThumbnail(CGPDFPage *a1)
{
  BoxRect = CGPDFPageGetBoxRect(a1, kCGPDFMediaBox);
  v5 = ceil(BoxRect.size.width - BoxRect.origin.x);
  v6 = ceil(BoxRect.size.height - BoxRect.origin.y);
  if (v5 <= 0.0 || v6 <= 0.0)
  {
    _CGHandleAssert("CGPDFPageCreateThumbnail", 435, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Documents/CGPDFPage.c", "dblWidth > 0 && dblHeight > 0", "width (%f) and height (%f) must be positive", v2, v3, v4, SLOBYTE(v5));
  }

  v7 = vcvtpd_u64_f64(v5 * 256.0 / v6);
  v8 = 256;
  v9 = vcvtpd_u64_f64(v6 * 256.0 / v5);
  if (v5 / v6 >= 1.0)
  {
    v8 = v9;
    v7 = 256;
  }

  if (v8 >= 0x100)
  {
    v10 = 256;
  }

  else
  {
    v10 = v8;
  }

  if (v7 >= 0x100)
  {
    v11 = 256;
  }

  else
  {
    v11 = v7;
  }

  if (!v7 || !v8)
  {
    _CGHandleAssert("CGPDFPageCreateThumbnail", 458, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Documents/CGPDFPage.c", "width > 0 && height > 0", "width (%lu) and height (%lu) must be positive2", v2, v3, v4, v11);
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v13 = DeviceRGB;
  if (DeviceRGB)
  {
    v14 = *(*(DeviceRGB + 3) + 48) + 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = malloc_type_malloc(v11 * v10 * v14, 0x39FECBB6uLL);
  memset(v15, 255, v11 * v10 * v14);
  v16 = CGBitmapContextCreateWithData(v15, v11, v10, 8uLL, v14 * v11, v13, 5u, 0, 0);
  CGColorSpaceRelease(v13);
  CGContextScaleCTM(v16, v11 / v5, v11 / v5);
  memset(v19, 0, sizeof(v19));
  CGContextDrawPDFPageWithDrawingCallbacks(v16, a1, v19, 0);
  Image = CGBitmapContextCreateImage(v16);
  if (v16)
  {
    CFRelease(v16);
  }

  return Image;
}

void CGPDFPagePurgeResources(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 40);
    os_unfair_lock_lock((v1 + 32));
    v2 = *(v1 + 24);
    os_unfair_lock_unlock((v1 + 32));
    os_unfair_lock_lock((v2 + 80));
    v3 = *(v2 + 40);
    if (v3)
    {
      CFDictionaryApplyFunction(v3, call_dict_block, &__block_literal_global_8233);
      CFDictionaryRemoveAllValues(*(v2 + 40));
    }

    os_unfair_lock_unlock((v2 + 80));
  }
}

void draw_page_annotations(CGContext *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a2 + 336));
  Annotations = *(a2 + 344);
  if (!Annotations)
  {
    Annotations = LoadAnnotations(a2);
    *(a2 + 344) = Annotations;
  }

  Count = CFArrayGetCount(Annotations);
  if (Count)
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 344), i);
      CGContextSaveGState(a1);
      if (a3)
      {
        (*(a3 + 16))(a3, a1, a2, ValueAtIndex);
      }

      else
      {
        CGContextDrawPDFAnnotation(a1, ValueAtIndex);
      }

      CGContextRestoreGState(a1);
    }
  }

  os_unfair_lock_unlock((a2 + 336));
}

__CFArray *LoadAnnotations(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  value = 0;
  if (CGPDFDictionaryGetArray(*(*(a1 + 40) + 16), "Annots", &value))
  {
    if (value)
    {
      v3 = *(value + 3) - *(value + 2);
      if (v3)
      {
        v4 = 0;
        v5 = v3 >> 3;
        do
        {
          v8 = 0;
          if (CGPDFArrayGetDictionary(value, v4, &v8))
          {
            v6 = CGPDFAnnotationCreateWithCGPDFDictionary(v8);
            CFArrayAppendValue(Mutable, v6);
            CFRelease(v6);
          }

          ++v4;
        }

        while (v5 != v4);
      }
    }
  }

  return Mutable;
}

CGPDFObjectRef CGPDFPageGetContents(CGPDFObjectRef result)
{
  if (result)
  {
    v1 = *(result + 5);
    value = 0;
    if (CGPDFDictionaryGetObject(*(v1 + 16), "Contents", &value))
    {
      return value;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CGPDFPageSetExtraContentStream(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    pthread_mutex_lock((a1 + 216));
    v6 = *(a1 + 368);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 368) = 0;
    }

    if (a3 && *(a1 + 16) != a3)
    {
      CFRetain(a3);
      *(a1 + 368) = a3;
    }

    v7 = *(a1 + 40);
    v8 = (v7 + 88);
    os_unfair_lock_lock((v7 + 88));
    v9 = *(v7 + 40);
    if (v9 != a2)
    {
      if (v9)
      {
        CFRelease(v9);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      *(v7 + 40) = a2;
      os_unfair_lock_unlock((v7 + 88));
      v8 = (v7 + 32);
      os_unfair_lock_lock((v7 + 32));
      v10 = *(v7 + 24);
      if (v10)
      {
        CFRelease(v10);
      }

      *(v7 + 24) = CGPDFResourcesCreateWithPage(v7, *(v7 + 48));
    }

    os_unfair_lock_unlock(v8);
    pthread_mutex_unlock((a1 + 216));
    os_unfair_lock_lock((a1 + 304));
    v11 = *(a1 + 312);
    if (v11)
    {
      CFRelease(v11);
    }

    *(a1 + 312) = 0;

    os_unfair_lock_unlock((a1 + 304));
  }
}

void CGContextDrawPDFDocument(CGContextRef c, CGRect rect, CGPDFDocumentRef document, int page)
{
  if (!c)
  {
    return;
  }

  if (!document)
  {
    return;
  }

  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = CGPDFDocumentGetPage(document, page);
  if (!v9)
  {
    return;
  }

  v10 = v9;
  CGContextSaveGState(c);
  v17 = fmin(width, height);
  v18 = v17 < 0.0;
  if (v17 < 0.0)
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    rectb = CGRectStandardize(v43);
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    *(&v20 - 1) = CGRectStandardize(v44);
    v19 = *&rectb;
  }

  else
  {
    v19 = x;
    v20 = y;
  }

  if (*(c + 4) == 1129601108)
  {
    *(*(c + 12) + 56) = vmlaq_n_f64(vmlaq_n_f64(*(*(c + 12) + 56), *(*(c + 12) + 24), v19), *(*(c + 12) + 40), v20);
  }

  else
  {
    handle_invalid_context("CGContextTranslateCTM", c, v11, v12, v13, v14, v15, v16);
  }

  BoxRect = CGPDFPageGetBoxRect(v10, kCGPDFMediaBox);
  v27 = BoxRect.origin.x;
  recta = BoxRect.origin.y;
  v28 = BoxRect.size.width;
  v29 = BoxRect.size.height;
  v30 = width;
  if (v18)
  {
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    *(&v30 - 2) = CGRectStandardize(v46);
  }

  v38 = v30;
  v31 = fmin(v28, v29);
  v32 = v31 < 0.0;
  v33 = v28;
  if (v31 < 0.0)
  {
    v47.origin.x = v27;
    v47.origin.y = recta;
    v47.size.width = v28;
    v47.size.height = v29;
    v48 = CGRectStandardize(v47);
    v33 = v48.size.width;
  }

  if (v18)
  {
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    v50 = CGRectStandardize(v49);
    height = v50.size.height;
  }

  v34 = v29;
  if (v32)
  {
    v51.origin.x = v27;
    v51.origin.y = recta;
    v51.size.width = v28;
    v51.size.height = v29;
    *(&v34 - 3) = CGRectStandardize(v51);
  }

  if (*(c + 4) != 1129601108)
  {
    handle_invalid_context("CGContextScaleCTM", c, v21, v22, v23, v24, v25, v26);
    if (!v32)
    {
      goto LABEL_20;
    }

LABEL_22:
    v52.origin.x = v27;
    v52.origin.y = recta;
    v52.size.width = v28;
    v52.size.height = v29;
    v39 = -COERCE_DOUBLE(CGRectStandardize(v52));
    v53.origin.x = v27;
    v53.origin.y = recta;
    v53.size.width = v28;
    v53.size.height = v29;
    v54 = CGRectStandardize(v53);
    v37 = v39;
    recta = v54.origin.y;
    goto LABEL_23;
  }

  v35 = *(c + 12);
  v36 = vmulq_n_f64(*(v35 + 40), height / v34);
  *(v35 + 24) = vmulq_n_f64(*(v35 + 24), v38 / v33);
  *(v35 + 40) = v36;
  if (v32)
  {
    goto LABEL_22;
  }

LABEL_20:
  v37 = -v27;
LABEL_23:
  if (*(c + 4) == 1129601108)
  {
    *(*(c + 12) + 56) = vmlsq_lane_f64(vmlaq_n_f64(*(*(c + 12) + 56), *(*(c + 12) + 24), v37), *(*(c + 12) + 40), recta, 0);
  }

  else
  {
    handle_invalid_context("CGContextTranslateCTM", c, v21, v22, v23, v24, v25, v26);
  }

  memset(v42, 0, sizeof(v42));
  CGContextDrawPDFPageWithDrawingCallbacks(c, v10, v42, 0);
  CGContextRestoreGState(c);
}

void CGContextDrawPDFPageInRect(CGContext *a1, uint64_t *a2, CGPDFBox a3, int a4, int a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a2)
  {
    pdf_page_get_drawing_transform(&v12, a2[5], a3, a4, a5, 1, -8.98846567e307, -8.98846567e307, 1.79769313e308, 1.79769313e308, a6, a7, a8, a9);
  }

  else
  {
    v12 = CGAffineTransformIdentity;
  }

  CGContextSaveGState(a1);
  CGContextConcatCTM(a1, &v12);
  BoxRect = CGPDFPageGetBoxRect(a2, a3);
  CGContextClipToRect(a1, BoxRect);
  memset(v13, 0, sizeof(v13));
  CGContextDrawPDFPageWithDrawingCallbacks(a1, a2, v13, 0);
  CGContextRestoreGState(a1);
}

void CGContextDrawPDFPageInRectWithOptions(CGContext *a1, uint64_t *a2, CGPDFBox a3, CFDictionaryRef theDict, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  LOBYTE(v46) = 0;
  v16 = CGCFDictionaryGetBoolean(theDict, @"kCGDrawPDFPageAllowUpscaleOptionKey", &v46) ^ 1;
  if (v46)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  LOBYTE(v46) = 0;
  v18 = CGCFDictionaryGetBoolean(theDict, @"kCGDrawPDFPageMaintainAspectRatioOptionKey", &v46) ^ 1;
  if (v46)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  v46 = 0;
  if (CGCFDictionaryGetInteger(theDict, @"kCGDrawPDFPageAdditionalRotationOptionKey", &v46))
  {
    HIDWORD(v20) = -1527099483 * v46 + 47721858;
    LODWORD(v20) = HIDWORD(v20);
    if ((v20 >> 1) >= 0x2D82D83)
    {
      pdf_error("%s: value of CGContextDrawPDFPageOptionAdditionalRotation must be a multiple of 90", "void CGContextDrawPDFPageInRectWithOptions(CGContextRef _Nonnull, CGPDFPageRef _Nonnull, CGPDFBox, CGRect, CFDictionaryRef _Nonnull)");
      return;
    }
  }

  CGCFDictionaryGetBoolean(theDict, @"kCGDrawPDFPageDrawAnnotationsOptionKey", &v47);
  v47 = 0;
  Boolean = CGCFDictionaryGetBoolean(theDict, @"kCGDrawPDFPageIsThumbnailOptionKey", &v47);
  if (v47)
  {
    v22 = Boolean;
  }

  else
  {
    v22 = 0;
  }

  v23 = [(__CFDictionary *)theDict valueForKey:@"kCGDrawPDFPageSourceRectOptionKey"];
  if (v23)
  {
    [v23 rectValue];
  }

  else
  {
    v25 = -8.98846567e307;
    v27 = 1.79769313e308;
    v26 = 1.79769313e308;
    v24 = -8.98846567e307;
  }

  memset(&transform, 0, sizeof(transform));
  pdf_page_get_drawing_transform(&transform, a2[5], a3, v46, v19, v17, v24, v25, v26, v27, a5, a6, a7, a8);
  v47 = 0;
  if (CGCFDictionaryGetBoolean(theDict, @"kCGDrawPDFPageWhiteBackgroundOptionKey", &v47) && v47)
  {
    GenericGray = CGColorCreateGenericGray(1.0, 1.0);
    goto LABEL_22;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kCGDrawPDFPageBackgroundColorOptionKey");
    if (Value)
    {
      GenericGray = CGColorCreateWithPropertyList(Value);
LABEL_22:
      v30 = GenericGray;
      if (GenericGray)
      {
        CGContextSaveGState(a1);
        CGContextSetFillColorWithColor(a1, v30);
        ClipBoundingBox = CGContextGetClipBoundingBox(a1);
        CGContextFillRect(a1, ClipBoundingBox);
        CGContextRestoreGState(a1);
        CFRelease(v30);
      }
    }
  }

  CGContextSaveGState(a1);
  CGContextConcatCTM(a1, &transform);
  BoxRect = CGPDFPageGetBoxRect(a2, a3);
  CGContextClipToRect(a1, BoxRect);
  CGContextSetAllowsAntialiasing(a1, 1);
  CGContextSetShouldAntialias(a1, 1);
  CGContextSetTextGreekingThreshold(a1, 0.0, v31, v32, v33, v34, v35, v36, v37);
  CGContextSetInterpolationQuality(a1, kCGInterpolationHigh);
  if (v22)
  {
    CGContextSetLineWidthThreshold(a1, 0.0, v38, v39, v40, v41, v42, v43, v44);
  }

  CGContextDrawPDFPageWithOptions(a1, a2, theDict, v40, v41, v42, v43, v44);
  CGContextRestoreGState(a1);
}

void CGContextDrawPDFPageWithProgressCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = 0;
  v5 = 0u;
  v4[1] = a3;
  CGContextDrawPDFPageWithDrawingCallbacks(a1, a2, v4, a4);
}

void CGContextDrawPDFPageWithContentTypes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = 1;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = a3;
  CGContextDrawPDFPageWithDrawingCallbacks(a1, a2, v3, 0);
}

const void *CGPDFPageGetProperty(uint64_t a1, const void *a2)
{
  if (a1 && a2 && (v2 = *(*(a1 + 40) + 72)) != 0)
  {
    return CGPropertiesGetProperty(v2, a2);
  }

  else
  {
    return 0;
  }
}

void CGPDFPageSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 40);
    if (!*(v5 + 72))
    {
      v6 = CGPropertiesCreate();
      v7 = 0;
      atomic_compare_exchange_strong_explicit((v5 + 72), &v7, v6, memory_order_relaxed, memory_order_relaxed);
      if (v7)
      {
        CGPropertiesRelease(v6);
      }
    }

    v8 = *(v5 + 72);

    CGPropertiesSetProperty(v8, a2, a3);
  }
}

void CGPDFPageRemoveProperty(uint64_t a1, const void *a2)
{
  if (a1 && a2)
  {
    v2 = *(*(a1 + 40) + 72);
    if (v2)
    {
      CGPropertiesRemoveProperty(v2, a2);
    }
  }
}

CGPDFContentStreamRef *CGPDFPageCopyTextString(CGPDFContentStreamRef *result)
{
  if (result)
  {
    v1 = CGPDFTextExtractorCreateWithPage(result[5], 0);
    v2 = CGPDFTextExtractorCopyTextString(v1);
    CGPDFTextExtractorRelease(v1);
    return v2;
  }

  return result;
}

CGPDFContentStreamRef *CGPDFPageCopyTextStringWithGlyphs(CGPDFContentStreamRef *result)
{
  if (result)
  {
    v1 = CGPDFTextExtractorCreateWithPage(result[5], 1);
    v2 = CGPDFTextExtractorCopyTextString(v1);
    CGPDFTextExtractorRelease(v1);
    return v2;
  }

  return result;
}

uint64_t CGPDFPagePrint(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 40);
    v11 = 0;
    v3 = (a2 ? a2 : *MEMORY[0x1E69E9848]);
    fprintf(v3, "Page %zu:\n", *(v2 + 8));
    CGPDFDictionaryPrintWithIndent(*(v2 + 16), v3, 0);
    fputc(10, v3);
    value = 0;
    result = CGPDFDictionaryGetObject(*(v2 + 16), "Contents", &value);
    if (result && value != 0)
    {
      v5 = *(value + 2);
      if (v5 == 7)
      {
        v7 = *(value + 4);
        if (v7)
        {
          v8 = *(v7 + 3) - *(v7 + 2);
          if (v8)
          {
            v9 = 0;
            v10 = v8 >> 3;
            do
            {
              result = CGPDFArrayGetStream(v7, v9, &v11);
              if (result)
              {
                fprintf(v3, "Stream %zu:\n", v9);
                result = stream_print(v11, v3, 0, 1);
              }

              ++v9;
            }

            while (v10 != v9);
          }
        }
      }

      else if (v5 == 9)
      {
        v6 = *(value + 4);
        fwrite("Stream 1:\n", 0xAuLL, 1uLL, v3);
        return stream_print(v6, v3, 0, 1);
      }
    }
  }

  return result;
}

BOOL CGPDFPageContainsWideGamutContent(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 284);
  if (v2)
  {
    return v2 == 1;
  }

  v4 = *(*(a1 + 40) + 16);
  value = 0;
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  while (!CGPDFDictionaryGetDictionary(v4, "Resources", &value))
  {
    v10[0] = 0;
    CFSetAddValue(Mutable, v4);
    if (!CGPDFDictionaryGetDictionary(v4, "Parent", v10) || CFSetContainsValue(Mutable, v10[0]))
    {
      break;
    }

    v4 = v10[0];
  }

  CFRelease(Mutable);
  v10[0] = 0;
  v10[1] = 0;
  if (value && resourceDictionaryContainsWideGamutContent(v10, value))
  {
    v6 = 1;
    v3 = 1;
  }

  else
  {
    v3 = 0;
    v6 = 2;
  }

  *(a1 + 284) = v6;
  v7 = v10[0];
  if (v10[0])
  {
    do
    {
      v8 = *(v7 + 1);
      free(v7);
      v7 = v8;
    }

    while (v8);
  }

  return v3;
}

BOOL resourceDictionaryContainsWideGamutContent(_BYTE *a1, CGPDFDictionaryRef dict)
{
  if (a1[8])
  {
    return 1;
  }

  value[3] = v2;
  value[4] = v3;
  value[0] = 0;
  result = 1;
  if (!CGPDFDictionaryGetDictionary(dict, "ColorSpace", value) || (CGPDFDictionaryApplyFunction(value[0], wideGamutColorSpaceDetector, a1), (a1[8] & 1) == 0))
  {
    dicta = 0;
    if (!CGPDFDictionaryGetDictionary(dict, "XObject", &dicta))
    {
      return 0;
    }

    CGPDFDictionaryApplyFunction(dicta, wideGamutImageDetector, a1);
    if ((a1[8] & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

void wideGamutImageDetector(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return;
  }

  if (*(a3 + 8))
  {
    return;
  }

  if (*(a2 + 8) != 9)
  {
    return;
  }

  v4 = *(a2 + 32);
  if (!v4)
  {
    return;
  }

  v5 = *(v4 + 6);
  if (!v5)
  {
    return;
  }

  value = 0;
  if (!CGPDFDictionaryGetName(v5, "Subtype", &value))
  {
    return;
  }

  v6 = value;
  if (*value == 80 && value[1] == 83 && !value[2])
  {
    return;
  }

  if (strcmp(value, "Image"))
  {
    if (strcmp(v6, "Form"))
    {
      return;
    }

    __s1 = 0;
    if (CGPDFDictionaryGetName(v5, "Subtype2", &__s1) && *__s1 == 80 && __s1[1] == 83 && !__s1[2])
    {
      return;
    }

    dict = 0;
    CGPDFDictionaryGetDictionary(v5, "Resources", &dict);
    v14 = dict;
    if (!dict)
    {
      return;
    }

    v15 = *a3;
    if (*a3)
    {
      v16 = *a3;
      while (*v16 != dict)
      {
        v16 = v16[1];
        if (!v16)
        {
          goto LABEL_39;
        }
      }

      return;
    }

LABEL_39:
    v17 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
    if (v17)
    {
      *v17 = v14;
      v17[1] = v15;
      v15 = v17;
    }

    *a3 = v15;
    if (!resourceDictionaryContainsWideGamutContent(a3, dict))
    {
      return;
    }

LABEL_42:
    *(a3 + 8) = 1;
    return;
  }

  array = 0;
  CGPDFDictionaryGetArray(v5, "ColorSpace", &array);
  if (array)
  {
    __s1 = 0;
    if (CGPDFArrayGetName(array, 0, &__s1) && !strcmp(__s1, "ICCBased"))
    {
      dict = 0;
      if (CGPDFArrayGetStream(array, 1uLL, &dict) && isStreamWideGamutICCProfile(dict))
      {
        goto LABEL_42;
      }
    }
  }

  __s1 = 0;
  if (CGPDFDictionaryGetName(v5, "Filter", &__s1))
  {
    v7 = __s1;
    if (strcmp(__s1, "DCTDecode") && strcmp(v7, "JPXDecode"))
    {
      return;
    }
  }

  else
  {
    dict = 0;
    if (!CGPDFDictionaryGetArray(v5, "Filter", &dict))
    {
      return;
    }

    if (!dict)
    {
      return;
    }

    v18 = *(dict + 3) - *(dict + 2);
    if (!v18)
    {
      return;
    }

    v19 = 0;
    v20 = v18 >> 3;
    do
    {
      if (CGPDFArrayGetName(dict, v19, &__s1))
      {
        v21 = __s1;
        if (!strcmp(__s1, "DCTDecode") || !strcmp(v21, "JPXDecode"))
        {
          break;
        }
      }

      ++v19;
    }

    while (v20 != v19);
  }

  LODWORD(__s1) = 0;
  v8 = CGPDFStreamCopyData(v4, &__s1);
  if (v8)
  {
    v9 = v8;
    if (wideGamutImageDetector_predicate != -1)
    {
      dispatch_once(&wideGamutImageDetector_predicate, &__block_literal_global_48);
    }

    v10 = wideGamutImageDetector_f(v9, 0);
    CFRelease(v9);
    if (v10)
    {
      if (wideGamutImageDetector_predicate_51 != -1)
      {
        dispatch_once(&wideGamutImageDetector_predicate_51, &__block_literal_global_54);
      }

      v11 = wideGamutImageDetector_f_50(v10, 0, 0);
      CFRelease(v10);
      if (v11)
      {
        ColorSpace = CGImageGetColorSpace(v11);
        IsWideGamutRGB = CGColorSpaceIsWideGamutRGB(ColorSpace);
        CFRelease(v11);
        if (IsWideGamutRGB)
        {
          goto LABEL_42;
        }
      }
    }
  }
}

BOOL isStreamWideGamutICCProfile(CGPDFStream *a1)
{
  format = CGPDFDataFormatRaw;
  v1 = CGPDFStreamCopyData(a1, &format);
  IsWideGamutRGB = v1;
  if (v1)
  {
    v3 = CGColorSpaceCreateWithICCData(v1);
    CFRelease(IsWideGamutRGB);
    if (v3)
    {
      IsWideGamutRGB = CGColorSpaceIsWideGamutRGB(v3);
      CGColorSpaceRelease(v3);
    }

    else
    {
      return 0;
    }
  }

  return IsWideGamutRGB;
}

void *__wideGamutImageDetector_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageSourceCreateImageAtIndex");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateImageAtIndex");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageSourceCreateImageAtIndex");
  }

  wideGamutImageDetector_f_50 = result;
  return result;
}

void *__wideGamutImageDetector_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageSourceCreateWithData");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateWithData");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageSourceCreateWithData");
  }

  wideGamutImageDetector_f = result;
  return result;
}

void wideGamutColorSpaceDetector(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if ((*(a3 + 8) & 1) == 0 && *(a2 + 8) == 7)
    {
      v4 = *(a2 + 32);
      value = 0;
      if (CGPDFArrayGetName(v4, 0, &value) && !strcmp(value, "ICCBased"))
      {
        v5 = 0;
        if (CGPDFArrayGetStream(v4, 1uLL, &v5) && isStreamWideGamutICCProfile(v5))
        {
          *(a3 + 8) = 1;
        }
      }
    }
  }
}

uint64_t CGPDFPageCreateWithImage(uint64_t a1, uint64_t a2, int a3, const __CFDictionary *a4)
{
  HIDWORD(v5) = -1527099483 * a3 + 47721858;
  LODWORD(v5) = HIDWORD(v5);
  if ((v5 >> 1) < 0x2D82D83)
  {
    if (a2)
    {
      v9 = *(a2 + 16);
      mediaBox.origin = *a2;
      mediaBox.size = v9;
    }

    else
    {
      mediaBox.origin.x = 0.0;
      mediaBox.origin.y = 0.0;
      mediaBox.size = xmmword_18439C650;
    }

    Mutable = CFDataCreateMutable(0, 0);
    v11 = CGDataConsumerCreateWithCFData(Mutable);
    v12 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v13 = v12;
    if (v12)
    {
      CFDictionarySetValue(v12, @"kCGPDFContextShouldOutputAllImagesAsJPEG", *MEMORY[0x1E695E4D0]);
    }

    v37 = 0.0;
    if (a4)
    {
      v14 = @"kCGImageDestinationLossyCompressionQuality";
      if (CFDictionaryContainsKey(a4, @"kCGImageDestinationLossyCompressionQuality") || (v14 = @"kCGPDFContextJPEGCompressionQuality", CFDictionaryContainsKey(a4, @"kCGPDFContextJPEGCompressionQuality")))
      {
        CGCFDictionaryGetFloat(a4, v14, &v37);
        CGCFDictionarySetFloat(v13, @"kCGPDFContextJPEGCompressionQuality", v37);
      }
    }

    v15 = CGPDFContextCreate(v11, &mediaBox, v13);
    if (v11)
    {
      CFRelease(v11);
    }

    CFRelease(v13);
    if (a1)
    {
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      v18 = *(a1 + 38);
      if ((v18 - 9) <= 0xFFFFFFF7)
      {
        pdf_error("Invalid image orientation, assuming 1.");
        v18 = 1;
      }
    }

    else
    {
      v18 = 1;
      v16 = 0.0;
      v17 = 0.0;
    }

    v19 = a3 % 360;
    if (a3 % 360 < 0)
    {
      LOWORD(v19) = a3 % 360 + 360;
    }

    v20 = dword_18439DC68[4 * (v18 - 1) + v19 / 0x5Au];
    if ((v20 - 5) >= 4)
    {
      v21 = v16;
    }

    else
    {
      v21 = v17;
    }

    if ((v20 - 5) >= 4)
    {
      v22 = v17;
    }

    else
    {
      v22 = v16;
    }

    LOBYTE(transform.a) = 0;
    Boolean = CGCFDictionaryGetBoolean(a4, @"kCGPDFPageCreateWithImageAllowUpscale", &transform);
    if (LOBYTE(transform.a))
    {
      v24 = Boolean;
    }

    else
    {
      v24 = 0;
    }

    v25 = mediaBox.size.width / v21;
    if (mediaBox.size.width / v21 >= mediaBox.size.height / v22)
    {
      v25 = mediaBox.size.height / v22;
    }

    if (v25 <= 1.0)
    {
      v24 = 1;
    }

    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = 1.0;
    }

    CGPDFContextBeginPage(v15, 0);
    CGContextTranslateCTM(v15, (mediaBox.size.width - v21 * v26) * 0.5, (mediaBox.size.height - v22 * v26) * 0.5);
    CGContextScaleCTM(v15, v26, v26);
    CGImageGetTransformForOrientationAndSize(v20, v27, v28, v29, v30, v31, v32, &transform, v16, v17);
    CGContextConcatCTM(v15, &transform);
    v39.origin.x = 0.0;
    v39.origin.y = 0.0;
    v39.size.width = v16;
    v39.size.height = v17;
    CGContextDrawImage(v15, v39, a1);
    CGPDFContextEndPage(v15);
    CGPDFContextClose(v15);
    if (v15)
    {
      CFRelease(v15);
    }

    v33 = CGDataProviderCreateWithCFData(Mutable);
    CFRelease(Mutable);
    v34 = CGPDFDocumentCreateWithProvider(v33);
    CGDataProviderRelease(v33);
    v6 = CGPDFDocumentCopyPage(v34, 1uLL);
    if (v34)
    {
      CFRelease(v34);
    }
  }

  else
  {
    pdf_error("%s: Invalid rotation parameter (%d). It must be a multiple of 90.", "CGPDFPageCreateWithImage", a3);
    return 0;
  }

  return v6;
}

void CGPDFPageSetBoxRect(uint64_t a1, unsigned int a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  if (a1)
  {
    if (a2 <= 4)
    {
      v7 = *(a1 + 16);
      if (v7)
      {
        v12 = (a1 + 32 * a2);
        v12[7] = a3;
        v12[8] = a4;
        v12[9] = a5;
        v12[10] = a6;
        v13 = off_1E6E04C48[a2];
        v14 = *(v7 + 216);
        os_unfair_lock_lock((v7 + 212));
        PDFRect = CGCFArrayCreatePDFRect(a3, a4, a5, a6);
        CGPDFAppenderMutateDictionaryValue(v14, *(*(a1 + 40) + 16), v13, PDFRect, 0);
        CFRelease(PDFRect);

        os_unfair_lock_unlock((v7 + 212));
      }
    }
  }
}

void CGPDFPageSetRotationAngle(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    HIDWORD(v4) = -1527099483 * a2;
    LODWORD(v4) = -1527099483 * a2;
    if ((v4 >> 1) <= 0x2D82D82 && (a2 & 0x80000000) == 0)
    {
      v11 = v2;
      v12 = v3;
      v6 = *(a1 + 16);
      if (v6)
      {
        v7 = a2 % 0x168;
        valuePtr = a2 % 0x168;
        pthread_mutex_lock((a1 + 216));
        *(a1 + 48) = v7;
        pthread_mutex_unlock((a1 + 216));
        v8 = *(v6 + 216);
        os_unfair_lock_lock((v6 + 212));
        v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
        CGPDFAppenderMutateDictionaryValue(v8, *(*(a1 + 40) + 16), "Rotate", v9, 0);
        CFRelease(v9);
        os_unfair_lock_unlock((v6 + 212));
      }
    }
  }
}

os_unfair_lock_s *CGPDFPageGetAnnotationCount(os_unfair_lock_s *result)
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 84);
    Annotations = *(v1 + 344);
    if (!Annotations)
    {
      Annotations = LoadAnnotations(v1);
      *(v1 + 344) = Annotations;
    }

    Count = CFArrayGetCount(Annotations);
    os_unfair_lock_unlock((v1 + 336));
    return Count;
  }

  return result;
}

const void *CGPDFPageGetAnnotationAtIndex(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 336));
  Annotations = *(a1 + 344);
  if (!Annotations)
  {
    Annotations = LoadAnnotations(a1);
    *(a1 + 344) = Annotations;
  }

  Count = CFArrayGetCount(Annotations);
  ValueAtIndex = 0;
  if ((Count & 0x8000000000000000) == 0 && Count > a2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 344), a2);
  }

  os_unfair_lock_unlock((a1 + 336));
  return ValueAtIndex;
}

uint64_t AppendModeFindAnnotation(CFDictionaryRef *a1, CFArrayRef theArray, uint64_t a3, CFIndex *a4, void *a5)
{
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    v10 = result;
    for (i = 0; v10 != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v13 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v14 = ValueAtIndex[2];
        v15 = ValueAtIndex[3];
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      if (CGPDFAppenderHasMutableObject(a1, v14, v15))
      {
        MutableObject = CGPDFAppenderGetMutableObject(a1, v14, v15);
      }

      else
      {
        MutableObject = 0;
      }

      v17 = *(a3 + 16);
      result = *(a3 + 24);
      if (result)
      {
        if (!v17)
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = CGPDFAppenderCreateCFDictionary(*(a3 + 16));
        *(a3 + 24) = result;
        if (!v17)
        {
LABEL_13:
          v18 = 0;
          goto LABEL_14;
        }
      }

      v18 = *(v17 + 24);
LABEL_14:
      if (MutableObject == result || v14 == v18)
      {
        *a5 = v13;
        *a4 = i;
        return result;
      }
    }
  }

  return result;
}

uint64_t CGPDFPageGetReferenceForAnnotation(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    os_unfair_lock_lock((a1 + 336));
    if (*(a1 + 344))
    {
      v7 = 0;
      v8 = &v7;
      v9 = 0x2000000000;
      v10 = 0;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 0x40000000;
      v6[2] = __CGPDFPageGetReferenceForAnnotation_block_invoke;
      v6[3] = &unk_1E6E04B68;
      v6[4] = &v7;
      v6[5] = a2;
      AppendModeUpdateAnnotations(a1, v6);
      os_unfair_lock_unlock((a1 + 336));
      v2 = v8[3];
      _Block_object_dispose(&v7, 8);
    }

    else
    {
      os_unfair_lock_unlock((a1 + 336));
      return 0;
    }
  }

  return v2;
}

uint64_t __CGPDFPageGetReferenceForAnnotation_block_invoke(uint64_t a1, CFDictionaryRef *a2, CFArrayRef theArray)
{
  v5 = 0;
  result = AppendModeFindAnnotation(a2, theArray, *(a1 + 40), &v6, &v5);
  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

void AppendModeUpdateAnnotations(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4)
  {
    os_unfair_lock_lock((v4 + 212));
    v5 = *(v4 + 216);
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[44];
  v7 = a1[45];
  if (v6 | v7)
  {
    goto LABEL_13;
  }

  v8 = *(a1[5] + 16);
  value = 0;
  if (CGPDFDictionaryGetArray(v8, "Annots", &value))
  {
    v9 = value;
    if (value)
    {
      v6 = *(value + 6);
      v7 = *(value + 7);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    a1[44] = v6;
    a1[45] = v7;
    if (!(v6 | v7))
    {
      CFArray = CGPDFAppenderCreateCFArray(v9);
      MutableObject = CGPDFAppenderCreateMutableObject(v5, CFArray);
      a1[44] = MutableObject;
      a1[45] = v14;
      v15 = CGPDFReferenceCreate(MutableObject, v14);
      CGPDFAppenderMutateDictionaryValue(v5, v8, "Annots", v15, 0);
      goto LABEL_23;
    }

LABEL_13:
    CFArray = CGPDFAppenderGetMutableObject(v5, v6, v7);
    if (!CFArray)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  CFArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CGPDFAppenderMutateDictionaryValue(v5, v8, "Annots", CFArray, 2);
  if (v8)
  {
    v11 = v8[3];
    v12 = v8[4];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v16 = CGPDFAppenderGetMutableObject(v5, v11, v12);
  v17 = CGPDFNameCreate("Annots");
  v18 = CFDictionaryGetValue(v16, v17);
  CFRelease(v17);
  if (v18)
  {
    v19 = v18[1];
  }

  else
  {
    v19 = 0uLL;
  }

  *(a1 + 22) = v19;
LABEL_23:
  CFRelease(CFArray);
  if (CFArray)
  {
LABEL_14:
    (*(a2 + 16))(a2, v5, CFArray);
  }

LABEL_15:
  if (v4)
  {
    os_unfair_lock_unlock((v4 + 212));
  }
}

void CGPDFPageAddAnnotation(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    os_unfair_lock_lock((a1 + 336));
    PageAddAnnotation(a1, a2, -1);

    os_unfair_lock_unlock((a1 + 336));
  }
}

void PageAddAnnotation(void *a1, void *value, CFIndex idx)
{
  Annotations = a1[43];
  if (!Annotations)
  {
    Annotations = LoadAnnotations(a1);
    a1[43] = Annotations;
  }

  if (idx == -1)
  {
    idx = CFArrayGetCount(Annotations);
    Annotations = a1[43];
  }

  CFArrayInsertValueAtIndex(Annotations, idx, value);
  if (*(value + 32) == 1)
  {
    v7 = a1[2];
    if (v7)
    {
      os_unfair_lock_lock((v7 + 212));
      CGPDFAppenderCreateAnnotationObject(*(v7 + 216), a1, value);

      os_unfair_lock_unlock((v7 + 212));
    }

    else
    {

      CGPDFAppenderCreateAnnotationObject(0, a1, value);
    }
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __PageAddAnnotation_block_invoke;
    v8[3] = &__block_descriptor_tmp_67;
    v8[4] = a1;
    v8[5] = value;
    v8[6] = idx;
    AppendModeUpdateAnnotations(a1, v8);
  }
}

void __PageAddAnnotation_block_invoke(uint64_t *a1, CFDictionaryRef *a2, const __CFArray *a3)
{
  AnnotationObject = CGPDFAppenderCreateAnnotationObject(a2, a1[4], a1[5]);
  if (AnnotationObject | v6)
  {
    v7 = AnnotationObject;
    v8 = v6;
    Count = CFArrayGetCount(a3);
    v10 = a1[6];
    v11 = Count - 1;
    if (v10 <= Count)
    {
      v11 = a1[6];
    }

    if (v10 < 0 || Count == 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    v14 = CGPDFReferenceCreate(v7, v8);
    CFArrayInsertValueAtIndex(a3, v13, v14);

    CFRelease(v14);
  }
}

void CGPDFPageRemoveAnnotation(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    os_unfair_lock_lock((a1 + 336));
    if (*(a1 + 344))
    {
      PageRemoveAnnotation(a1, a2);
    }

    os_unfair_lock_unlock((a1 + 336));
  }
}

CFIndex PageRemoveAnnotation(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 344);
  v30.length = CFArrayGetCount(v4);
  v30.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v30, a2);
  if (FirstIndexOfValue != -1)
  {
    if (*(a2 + 32) != 1)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 0x40000000;
      v28[2] = __PageRemoveAnnotation_block_invoke;
      v28[3] = &__block_descriptor_tmp_68;
      v28[4] = a2;
      AppendModeUpdateAnnotations(a1, v28);
      goto LABEL_32;
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      os_unfair_lock_lock((v6 + 212));
      if ((*(a2 + 32) & 1) == 0)
      {
LABEL_31:
        os_unfair_lock_unlock((v6 + 212));
        goto LABEL_32;
      }

      v7 = *(v6 + 216);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(*(a1 + 40) + 16);
    value = 0;
    CGPDFDictionaryGetObject(v8, "Contents", &value);
    v9 = *(value + 2);
    v10 = *(value + 3);
    if (!(v9 | v10) || (CGPDFAppenderHasMutableObject(v7, *(value + 2), *(value + 3)) & 1) == 0)
    {
      if (v8)
      {
        v11 = *(v8 + 3);
        v8 = *(v8 + 4);
      }

      else
      {
        v11 = 0;
      }

      if (!CGPDFAppenderHasMutableObject(v7, v11, v8))
      {
        goto LABEL_30;
      }

      MutableObject = CGPDFAppenderGetMutableObject(v7, v11, v8);
      v13 = CGPDFNameCreate("Contents");
      v14 = CFDictionaryGetValue(MutableObject, v13);
      CFRelease(v13);
      if (!v14)
      {
        goto LABEL_30;
      }

      v15 = CFGetTypeID(v14);
      if (CGPDFReferenceTypeID_onceToken != -1)
      {
        dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
      }

      if (v15 != CGPDFReferenceTypeID_id)
      {
        goto LABEL_30;
      }

      v9 = v14[2];
      v10 = v14[3];
    }

    v16 = CGPDFAppenderGetMutableObject(v7, v9, v10);
    if (v16)
    {
      v17 = v16;
      v18 = CFGetTypeID(v16);
      if (v18 == CFArrayGetTypeID())
      {
        v20 = *(a2 + 40);
        v19 = *(a2 + 48);
        Count = CFArrayGetCount(v17);
        if (Count >= 1)
        {
          v22 = Count;
          v23 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v17, v23);
            v25 = ValueAtIndex ? ValueAtIndex[2] : 0;
            if (v25 == v20)
            {
              break;
            }

            if (v22 == ++v23)
            {
              goto LABEL_30;
            }
          }

          CFArrayRemoveValueAtIndex(v17, v23);
          v26 = CGPDFReferenceCreate(v20, v19);
          CFDictionaryRemoveValue(v7[2], v26);
          CFRelease(v26);
        }
      }
    }

LABEL_30:
    if (v6)
    {
      goto LABEL_31;
    }

LABEL_32:
    CFArrayRemoveValueAtIndex(*(a1 + 344), FirstIndexOfValue);
  }

  return FirstIndexOfValue;
}

void __PageRemoveAnnotation_block_invoke(uint64_t a1, CFDictionaryRef *a2, CFArrayRef theArray)
{
  v10 = 0;
  idx = 0;
  AppendModeFindAnnotation(a2, theArray, *(a1 + 32), &idx, &v10);
  if (v10)
  {
    v5 = *(v10 + 16);
    v6 = *(v10 + 24);
    CFArrayRemoveValueAtIndex(theArray, idx);
    v7 = CGPDFReferenceCreate(v5, v6);
    Value = CFDictionaryGetValue(a2[2], v7);
    if (Value)
    {
      Value[8] = 1;
    }

    else
    {
      v9 = AppendModeObjectCreate(1, v5, v6, 0);
      CFDictionarySetValue(a2[2], v7, v9);
      CFRelease(v9);
    }

    CFRelease(v7);
  }
}

void CGPDFPageSubstituteAnnotation(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 && a2 && a3)
  {
    os_unfair_lock_lock((a1 + 336));
    if (*(a1 + 344))
    {
      v6 = PageRemoveAnnotation(a1, a2);
      if (v6 != -1)
      {
        PageAddAnnotation(a1, a3, v6);
      }
    }

    os_unfair_lock_unlock((a1 + 336));
  }
}

void CGPDFPageSubstituteAnnotationDictionary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    os_unfair_lock_lock((a1 + 336));
    if (*(a1 + 344))
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 0x40000000;
      v6[2] = __CGPDFPageSubstituteAnnotationDictionary_block_invoke;
      v6[3] = &__block_descriptor_tmp_34;
      v6[4] = a2;
      v6[5] = a3;
      AppendModeUpdateAnnotations(a1, v6);
      os_unfair_lock_unlock((a1 + 336));
    }

    else
    {

      os_unfair_lock_unlock((a1 + 336));
    }
  }
}

void __CGPDFPageSubstituteAnnotationDictionary_block_invoke(uint64_t a1, CFDictionaryRef *a2, CFArrayRef theArray)
{
  v10 = 0;
  AppendModeFindAnnotation(a2, theArray, *(a1 + 32), &v11, &v10);
  if (v10)
  {
    v5 = *(v10 + 16);
    v6 = *(v10 + 24);
    CGPDFAppenderReplaceMutableObject(a2, v5, v6, *(a1 + 40));
    v7 = *(a1 + 32);
    MutableObject = CGPDFAppenderGetMutableObject(a2, v5, v6);
    v9 = *(v7 + 24);
    if (v9 != MutableObject)
    {
      if (v9)
      {
        CFRelease(v9);
      }

      *(v7 + 24) = MutableObject;
      if (MutableObject)
      {

        CFRetain(MutableObject);
      }
    }
  }
}

void CGPDFPageSortAnnotations(void *a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = __CGPDFPageSortAnnotations_block_invoke;
  v2[3] = &__block_descriptor_tmp_36;
  v2[4] = a2;
  v2[5] = a1;
  AppendModeUpdateAnnotations(a1, v2);
}

void __CGPDFPageSortAnnotations_block_invoke(uint64_t a1, CFDictionaryRef *a2, const __CFArray *a3)
{
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  Count = CFArrayGetCount(a3);
  MutableCopy = CFArrayCreateMutableCopy(v6, Count, a3);
  v10 = CFArrayGetCount(*(a1 + 32));
  if (v10 >= 1)
  {
    v11 = v10;
    for (i = 0; i != v11; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), i);
      value = 0;
      idx = 0;
      AppendModeFindAnnotation(a2, MutableCopy, ValueAtIndex, &idx, &value);
      if (value)
      {
        CFArrayAppendValue(Mutable, value);
        CFArrayRemoveValueAtIndex(MutableCopy, idx);
      }
    }
  }

  v14 = CFArrayGetCount(Mutable);
  if (v14 != CFArrayGetCount(*(a1 + 32)))
  {
    pdf_error("Error: Failed sort annotations array for append-mode");
    if (!MutableCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  CGPDFAppenderReplaceMutableObject(a2, *(*(a1 + 40) + 352), *(*(a1 + 40) + 360), Mutable);
  if (MutableCopy)
  {
LABEL_10:
    CFRelease(MutableCopy);
  }

LABEL_11:
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void CGPDFPageEnumerateAnnotations(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v4 = objc_autoreleasePoolPush();
    send_analytics_event("com.apple.CoreGraphics.CGPDFPageEnumerateAnnotations");
    objc_autoreleasePoolPop(v4);
    os_unfair_lock_lock((a1 + 336));
    Annotations = *(a1 + 344);
    if (!Annotations)
    {
      Annotations = LoadAnnotations(a1);
      *(a1 + 344) = Annotations;
    }

    Count = CFArrayGetCount(Annotations);
    if (Count)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 344), i);
        (*(a2 + 16))(a2, a1, ValueAtIndex);
      }
    }

    os_unfair_lock_unlock((a1 + 336));
  }
}

void CGContextDrawPDFPageWithAnnotations(CGContext *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      memset(v6, 0, sizeof(v6));
      CGContextDrawPDFPageWithDrawingCallbacks(a1, a2, v6, 0);
      draw_page_annotations(a1, a2, a3);
    }
  }
}

CFTypeRef CGPDFPageCopyPageLayoutWithCTLD(os_unfair_lock_s *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  os_unfair_lock_lock(a1 + 76);
  v4 = *(*&v3 + 312);
  if (v4)
  {
    v5 = CFRetain(v4);
    if (v5)
    {
      goto LABEL_203;
    }
  }

  if (CGPDFPageLayoutGetTypeID::onceToken != -1)
  {
    dispatch_once(&CGPDFPageLayoutGetTypeID::onceToken, &__block_literal_global_12431);
  }

  cftype = pdf_create_cftype();
  if (!cftype)
  {
    v5 = 0;
    *(*&v3 + 312) = 0;
    goto LABEL_203;
  }

  v7 = cftype;
  *(cftype + 16) = v3;
  v8 = (cftype + 16);
  *(cftype + 56) = 0;
  *(cftype + 80) = 0u;
  *(cftype + 224) = 0u;
  *(cftype + 64) = 0u;
  *(cftype + 96) = 0u;
  *(cftype + 112) = 0u;
  *(cftype + 128) = 0u;
  *(cftype + 144) = 0u;
  *(cftype + 160) = 0u;
  *(cftype + 176) = 0u;
  *(cftype + 192) = 0u;
  *(cftype + 208) = 0u;
  *(cftype + 240) = 0u;
  *(cftype + 256) = 0u;
  *(cftype + 272) = 0u;
  *(cftype + 288) = 0u;
  *(cftype + 304) = 0u;
  *(cftype + 320) = 0u;
  *(cftype + 336) = 0u;
  *(cftype + 352) = 0u;
  *(cftype + 368) = 0u;
  *(cftype + 384) = 0u;
  *(cftype + 400) = 0u;
  *(cftype + 416) = 0u;
  *(cftype + 432) = 0;
  *(cftype + 440) = 1065353216;
  *(cftype + 448) = 0;
  *(cftype + 512) = 0u;
  *(cftype + 456) = 0u;
  *(cftype + 472) = 0u;
  *(cftype + 488) = 0u;
  *(cftype + 504) = cftype + 512;
  *(cftype + 536) = 0u;
  *(cftype + 528) = cftype + 536;
  *(cftype + 24) = CGPDFPageGetBoxRect(*&v3, kCGPDFCropBox);
  v213[0] = v3;
  v214 = v8;
  *v215 = 0u;
  *v216 = 0u;
  v217 = 0u;
  memset(v218, 0, sizeof(v218));
  memset(v220, 0, sizeof(v220));
  v219 = 1065353216;
  v221 = 1065353216;
  v222 = 0u;
  v223 = 0;
  BoxRect = CGPDFPageGetBoxRect(*&v3, kCGPDFCropBox);
  v213[1] = *&BoxRect.origin.x;
  v213[2] = *&BoxRect.origin.y;
  v213[3] = *&BoxRect.size.width;
  v213[4] = *&BoxRect.size.height;
  obj = objc_alloc_init(MEMORY[0x1E696AD60]);

  v226 = 32;
  v9 = CGPDFContentStreamCreate(*(*&v3 + 40));
  v10 = CGPDFOperatorTableCreate();
  if (v10)
  {
    v11 = &off_1EF235EA8;
    v12 = 800;
    do
    {
      CGPDFOperatorTableSetCallback(v10, *(v11 - 1), *v11);
      v11 += 2;
      v12 -= 16;
    }

    while (v12);
  }

  v251 = CGPDFPageGetBoxRect(*&v3, kCGPDFCropBox);
  x = v251.origin.x;
  y = v251.origin.y;
  width = v251.size.width;
  height = v251.size.height;
  info.__r_.__value_.__r.__words[0] = v213;
  info.__r_.__value_.__l.__size_ = v10;
  v17 = CGPDFRStateCreate();
  info.__r_.__value_.__r.__words[2] = v17;
  if (v17)
  {
    v18 = *v17;
  }

  else
  {
    v18 = 0;
  }

  v228 = v18;
  v229 = 0;
  v230 = x;
  v231 = y;
  v232 = width;
  v233 = height;
  v235 = 0;
  v236 = 0;
  __p = 0;
  v237 = 0;
  v238 = 0u;
  memset(v239, 0, sizeof(v239));
  v240 = 1065353216;
  *cf = 0u;
  v242 = 0u;
  v243 = 0;
  Mutable = CGPathCreateMutable();
  v20 = Mutable;
  v249[0] = Mutable;
  v21 = *(&v242 + 1);
  if (*(&v242 + 1) >= v243)
  {
    v23 = (*(&v242 + 1) - v242) >> 3;
    if ((v23 + 1) >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v24 = (v243 - v242) >> 2;
    if (v24 <= v23 + 1)
    {
      v24 = v23 + 1;
    }

    if (v243 - v242 >= 0x7FFFFFFFFFFFFFF8)
    {
      v25 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v24;
    }

    v248 = &v242;
    if (v25)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v25);
    }

    v244 = 0;
    v245 = (8 * v23);
    v247 = 0;
    *v245 = v20;
    v249[0] = 0;
    v246 = 8 * v23 + 8;
    std::vector<applesauce::CF::ObjectRef<CGPath *>>::__swap_out_circular_buffer(&v242, &v244);
    v22 = *(&v242 + 1);
    std::__split_buffer<applesauce::CF::ObjectRef<CGPath *>>::~__split_buffer(&v244);
  }

  else
  {
    **(&v242 + 1) = Mutable;
    v22 = v21 + 8;
  }

  *(&v242 + 1) = v22;
  v26 = CGPDFScannerCreate(v9, v10, &info);
  CGPDFScannerScan(v26);
  if (v26)
  {
    CFRelease(v26);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  CGPDFRStateRelease(info.__r_.__value_.__r.__words[2]);
  v244 = &v242;
  std::vector<applesauce::CF::ObjectRef<CGPath *>>::__destroy_vector::operator()[abi:fe200100](&v244);
  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(v239);

  if (__p)
  {
    v235 = __p;
    operator delete(__p);
  }

  v204 = *(&v222 + 1);
  v27 = v222;
  if (v222 == *(&v222 + 1))
  {
    goto LABEL_158;
  }

  v202 = a2;
  v203 = v3;
  v28 = 0;
  v225 = 0;
  do
  {
    v29 = *(v27 + 96);
    v30 = *(v27 + 104);
    if (v29 != v30)
    {
      v31 = v29 + 2;
      do
      {
        v32 = *(v31 - 2);
        v33 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v34 = [v33 characterIsMember:v32];

        if (v31 == v30)
        {
          v35 = 0;
        }

        else
        {
          v35 = v34;
        }

        v31 += 2;
      }

      while ((v35 & 1) != 0);
      if (!v34)
      {
        goto LABEL_47;
      }
    }

    if (*(v27 + 216) != 1)
    {
      v36 = v28;
    }

    else
    {
LABEL_47:
      v36 = v27;
      if (v28)
      {
        v37 = *(v28 + 144);
        v38 = *(v27 + 144);
        if ((v37 != 0.0 || v38 != 0.0) && vabdd_f64(v37, v38) > 0.174532925)
        {
          goto LABEL_82;
        }

        v39 = *(v28 + 136);
        v40 = *(v27 + 136);
        v41 = *(v28 + 168);
        font_info = get_font_info(v39);
        v43 = 0.0;
        v44 = 0.0;
        if (font_info)
        {
          v44 = font_info[2];
        }

        v45 = *(v27 + 168);
        v46 = get_font_info(v39);
        if (v46)
        {
          v43 = v46[2];
        }

        if ((v47 = v41 / v44, v39 == v40) && vabdd_f64(v47, v45 / v43) <= 2.22044605e-16 || ((v48 = *(v28 + 192), v49 = *(v28 + 208), v50 = *(v27 + 192), v51 = *(v27 + 208), (v52 = get_font_info(v39)) == 0) ? (v53 = 0) : (v53 = v52[3]), (v54 = get_font_info(v39)) == 0 ? (v55 = 0) : (v55 = v54[4]), v48 > v50 || v51 > v49 * 0.4 || (v36 = v27, v50 > v48 + v47 * (v53 - v55))))
        {
          v56 = *(v27 + 200);
          if (v56 == 0.0 || (v57 = *(v28 + 200), v57 == 0.0))
          {
            if (vabdd_f64(*(v27 + 120), *(v28 + 120)) > *(v28 + 128))
            {
              goto LABEL_82;
            }
          }

          else
          {
            v58 = *(v27 + 208);
            v59 = *(v27 + 184);
            rect = *(v27 + 192);
            v60 = *(v28 + 208);
            v61 = *(v28 + 184);
            v62 = *(v28 + 192);
            v63 = fmin(v57, v60);
            v64 = v63 < 0.0;
            v65 = v61;
            if (v63 < 0.0)
            {
              *&v65 = CGRectStandardize(*(v28 + 184));
            }

            v66 = fmin(v56, v58) < 0.0;
            v67 = v66;
            v68 = v59;
            v69 = v56;
            if (v66)
            {
              v252.origin.x = v59;
              v252.origin.y = rect;
              v252.size.width = v56;
              v252.size.height = v58;
              *&v68 = CGRectStandardize(v252);
            }

            if (v65 > v68 + v69)
            {
              goto LABEL_82;
            }

            v70 = v62;
            if (v64)
            {
              v253.origin.x = v61;
              v253.origin.y = v62;
              v253.size.width = v57;
              v253.size.height = v60;
              v254 = CGRectStandardize(v253);
              v70 = v254.origin.y;
            }

            if (v67)
            {
              v255.origin.x = v59;
              v255.origin.y = rect;
              v255.size.width = v56;
              v255.size.height = v58;
              v256 = CGRectStandardize(v255);
              if (v70 > v256.origin.y + v256.size.height)
              {
                goto LABEL_82;
              }

              v257.origin.x = v59;
              v257.origin.y = rect;
              v257.size.width = v56;
              v257.size.height = v58;
              v258 = CGRectStandardize(v257);
              rect = v258.origin.y;
            }

            else if (v70 > rect + v58)
            {
              goto LABEL_82;
            }

            if (v64)
            {
              v265.origin.x = v61;
              v265.origin.y = v62;
              v265.size.width = v57;
              v265.size.height = v60;
              v266 = CGRectStandardize(v265);
              v62 = v266.origin.y;
              v60 = v266.size.height;
            }

            if (rect > v62 + v60)
            {
LABEL_82:
              PageLayoutFactory::appendCurLine(v213, &v225);
              v36 = v27;
              goto LABEL_83;
            }
          }

          PageLayoutFactory::getSpaceWidth(v213, v28);
          v128 = *(v28 + 32);
          if (*(v28 + 24) == v128)
          {
            goto LABEL_201;
          }

          v129 = *(v27 + 24);
          if (v129 == *(v27 + 32))
          {
            goto LABEL_201;
          }

          v130 = v127;
          v132 = *(v128 - 16);
          v131 = *(v128 - 8);
          v133 = *(v128 - 32);
          v134 = *v129;
          v135 = v129[1];
          v136 = v129[2];
          v137 = v129[3];
          if (v132 < 0.0 || v131 < 0.0)
          {
            v138 = *(v128 - 24);
            v139 = *(v128 - 32);
            v140 = *(v128 - 16);
            v267 = CGRectStandardize(*(&v131 - 3));
            v133 = v267.origin.x;
            v132 = v267.size.width;
          }

          if (v136 < 0.0 || v137 < 0.0)
          {
            v268.origin.x = v134;
            v268.origin.y = v135;
            v268.size.width = v136;
            v268.size.height = v137;
            *&v134 = CGRectStandardize(v268);
          }

          v36 = v27;
          if (vabdd_f64(v134, v133 + v132) > v130)
          {
            v36 = v27;
            if ((*(v27 + 216) & 1) == 0)
            {
              v141 = *(v28 + 56);
              if (*(v28 + 48) == v141)
              {
                goto LABEL_201;
              }

              v142 = *(v27 + 184);
              v143 = *(v27 + 200);
              v144 = *(v27 + 208);
              if (v143 < 0.0 || v144 < 0.0)
              {
                v145 = *(v27 + 192);
                v146 = *(v27 + 184);
                *&v142 = CGRectStandardize(*(&v143 - 2));
              }

              v147 = *(v28 + 184);
              v149 = *(v28 + 200);
              v148 = *(v28 + 208);
              if (v149 < 0.0 || v148 < 0.0)
              {
                v150 = *(v28 + 192);
                v151 = *(v28 + 184);
                v152 = *(v28 + 200);
                v269 = CGRectStandardize(*(&v148 - 3));
                v147 = v269.origin.x;
                v149 = v269.size.width;
              }

              v153 = *(v141 - 16);
              v154 = *(v141 - 8);
              v155 = *(v141 - 32);
              v156 = *(v141 - 24);
              if (v153 < 0.0 || v154 < 0.0)
              {
                v157 = *(v141 - 24);
                v158 = *(v141 - 8);
                *&v155 = CGRectStandardize(*&v155);
              }

              PageLayoutFactory::addUniChars(v213, *(v28 + 224), &v226, 1, -1, v147 + v149, NAN, v142 - (v147 + v149), NAN, v155 + v153, v156, NAN, v154, v124, v125, v126, *(v28 + 144), *(v28 + 152));
              v36 = v27;
            }
          }
        }
      }
    }

LABEL_83:
    std::vector<unsigned short>::reserve(v215, (*(v27 + 104) - *(v27 + 96)) >> 1);
    v244 = 0;
    LOWORD(v249[0]) = 32;
    info.__r_.__value_.__r.__words[0] = v213;
    info.__r_.__value_.__l.__size_ = v27;
    info.__r_.__value_.__r.__words[2] = v27 + 96;
    v228 = &v244;
    PageLayoutFactory::getSpaceWidth(v213, v27);
    v205 = v77;
    v78 = *(v27 + 24);
    if (*(v27 + 32) == v78)
    {
      goto LABEL_201;
    }

    v79 = *(v27 + 48);
    if (*(v27 + 56) == v79)
    {
      goto LABEL_201;
    }

    v80 = v78[2];
    v81 = v78[3];
    v83 = *v78;
    v82 = v78[1];
    rectb = *(v79 + 16);
    v207 = *v79;
    PageLayoutFactory::addChunkUnicodes(PageLayoutFactory::TextChunk const&)::$_0::operator()(&info, 0, v71, v72, v73, v74, v75, v76);
    v91 = *v27;
    v90 = *(v27 + 8);
    v92 = (v90 - *v27) >> 1;
    v93 = rectb;
    if (v92 >= 2)
    {
      v94 = v82;
      v95 = 0;
      v96 = 2;
      v97 = 1;
      while (1)
      {
        v98 = *(v27 + 24);
        if (v97 >= (*(v27 + 32) - v98) >> 5)
        {
          break;
        }

        v99 = *(v27 + 48);
        if (v97 >= (*(v27 + 56) - v99) >> 5 || v92 <= v97 - 1)
        {
          break;
        }

        v100 = (v98 + 8 * v95);
        v101 = v100[4];
        v102 = v100[5];
        v103 = v100[6];
        v104 = v100[7];
        v105 = (v99 + 32 * v97);
        v209 = v105[1];
        recta = v93;
        v208 = *v105;
        if (*(v91 + v96 - 2) != *(v91 + v96))
        {
          goto LABEL_101;
        }

        v206 = v102;
        if (v103 < 0.0 || (v106 = v101, v104 < 0.0))
        {
          v259.origin.x = v101;
          v259.origin.y = v206;
          v259.size.width = v103;
          v107 = v94;
          v259.size.height = v104;
          v108 = CGRectStandardize(v259);
          v94 = v107;
          v106 = *&v108;
        }

        if (v80 < 0.0 || (v109 = v83, v81 < 0.0))
        {
          v260.origin.x = v83;
          v260.origin.y = v94;
          v260.size.width = v80;
          v110 = v103;
          v111 = v80;
          v112 = v104;
          v113 = v101;
          v114 = v83;
          v115 = v94;
          v260.size.height = v81;
          *&v109 = CGRectStandardize(v260);
          v94 = v115;
          v83 = v114;
          v101 = v113;
          v104 = v112;
          v80 = v111;
          v103 = v110;
        }

        v116 = v106 - v109;
        v102 = v206;
        if (v116 < v205 * 0.5)
        {
          v117 = *(v27 + 72);
          if (v97 >= (*(v27 + 80) - v117) >> 3)
          {
            break;
          }

          v244 = (v244 + *(v117 + 8 * v97));
          v93 = recta;
        }

        else
        {
LABEL_101:
          if (v80 < 0.0 || v81 < 0.0)
          {
            v261.origin.x = v83;
            v261.origin.y = v94;
            v261.size.width = v80;
            v261.size.height = v81;
            v262 = CGRectStandardize(v261);
            v83 = v262.origin.x;
            v80 = v262.size.width;
          }

          if (v103 < 0.0 || v104 < 0.0)
          {
            v263.origin.x = v101;
            v263.origin.y = v102;
            v263.size.width = v103;
            v263.size.height = v104;
            *&v118 = CGRectStandardize(v263);
          }

          else
          {
            v118 = v101;
          }

          v119 = v207.x;
          v120 = v83 + v80;
          v121 = v118 - v120;
          if (v118 - v120 > v205 && (*(v27 + 216) & 1) == 0)
          {
            if (recta.width < 0.0 || recta.height < 0.0)
            {
              v264.origin = v207;
              v264.size = recta;
              *(&v122 - 2) = CGRectStandardize(v264);
              v119 = v123;
            }

            else
            {
              v122 = recta.width;
            }

            PageLayoutFactory::addUniChars(v213, *(v27 + 224), v249, 1, -1, v120, NAN, v121, NAN, v119 + v122, v207.y, NAN, recta.height, v87, v88, v89, *(v27 + 144), *(v27 + 152));
          }

          PageLayoutFactory::addChunkUnicodes(PageLayoutFactory::TextChunk const&)::$_0::operator()(&info, v97, v84, v85, v86, v87, v88, v89);
          v83 = v101;
          v94 = v102;
          v91 = *v27;
          v90 = *(v27 + 8);
          v80 = v103;
          v81 = v104;
          v93 = v209;
          v207 = v208;
        }

        ++v97;
        v92 = (v90 - v91) >> 1;
        v96 += 2;
        v95 += 4;
        if (v97 >= v92)
        {
          goto LABEL_116;
        }
      }

LABEL_201:
      __break(1u);
      JUMPOUT(0x183FEDB10);
    }

LABEL_116:
    v27 += 232;
    v28 = v36;
  }

  while (v27 != v204);
  v3 = v203;
  PageLayoutFactory::appendCurLine(v213, &v225);
  a2 = v202;
  v159 = [obj length];
  if ([obj length])
  {
    v160 = v159 - 1;
    if ([obj characterAtIndex:v160] == 10)
    {
      v161 = [obj substringToIndex:v160];
      v162 = [v161 mutableCopy];
      v163 = obj;
      obj = v162;

      v164 = v214;
      v165 = v214[30];
      if (v214[29] == v165)
      {
        goto LABEL_201;
      }

      v214[30] = v165 - 8;
      v166 = v164[33];
      if (v164[32] == v166)
      {
        goto LABEL_201;
      }

      v164[33] = v166 - 8;
      v167 = v164[23];
      v168 = v164[24];
      while (v167 != v168)
      {
        v169 = *v167;
        if (v160 < *v167)
        {
          v169 = v160;
        }

        *v167++ = v169;
      }

      if (v164[5])
      {
        v170 = v164[42];
        if (v164[41] == v170)
        {
          goto LABEL_201;
        }

        v164[42] = v170 - 8;
      }
    }
  }

  v171 = v214;
  v172 = (v214 + 23);
  if (v214[23] != v214[24])
  {
    info.__r_.__value_.__r.__words[0] = [obj length];
    std::vector<unsigned long>::push_back[abi:fe200100](v172, &info);
    v171 = v214;
  }

  objc_storeStrong(v171 + 7, obj);
LABEL_158:
  PageLayout::splitLines(v8, 0, v8 + 64);
  if (TextRecognitionLibraryCore(0) && (CGPDFDocumentIsLayoutWithCTLDEnabled() & a2) == 1 && (*(v7 + 88) - *(v7 + 80)) >> 5 <= 0x176uLL)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v174 = PageLayout::getOrderedLayout(v8);
    v175 = CFAbsoluteTimeGetCurrent();
    pdf_log("CTLD took %g seconds", v175 - Current);
  }

  v176 = *(v7 + 136) - *(v7 + 128);
  if (v176)
  {
    v177 = v176 >> 3;
    if (v176 >> 3 != (*(v7 + 160) - *(v7 + 152)) >> 5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      _CGExceptionDescription(3, "_selectionBBoxes.size() == numUnichars", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/PageLayout/PageLayout.mm", 1798, "Invalid _selectionBBoxes count (%zu), correct = %zu", &info, (*(v7 + 160) - *(v7 + 152)) >> 5);
      std::logic_error::logic_error(exception, &info);
      exception->__vftable = (MEMORY[0x1E69E55A8] + 16);
      __cxa_throw(exception, off_1E6E04878, MEMORY[0x1E69E5270]);
    }

    if (v177 != (*(v7 + 184) - *(v7 + 176)) >> 5)
    {
      v193 = __cxa_allocate_exception(0x10uLL);
      _CGExceptionDescription(3, "_preciseBBoxes.size() == numUnichars", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/PageLayout/PageLayout.mm", 1801, "Invalid _preciseBBoxes count (%zu), correct = %zu", &info, (*(v7 + 184) - *(v7 + 176)) >> 5);
      std::logic_error::logic_error(v193, &info);
      v193->__vftable = (MEMORY[0x1E69E55A8] + 16);
      __cxa_throw(v193, off_1E6E04878, MEMORY[0x1E69E5270]);
    }

    if (v177 + 1 != (*(v7 + 208) - *(v7 + 200)) >> 3)
    {
      v194 = __cxa_allocate_exception(0x10uLL);
      _CGExceptionDescription(3, "_textRangeMap.size() == numUnichars+1", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/PageLayout/PageLayout.mm", 1804, "Invalid _textRangeMap count (%zu), correct = %zu", &info, (*(v7 + 208) - *(v7 + 200)) >> 3);
      std::logic_error::logic_error(v194, &info);
      v194->__vftable = (MEMORY[0x1E69E55A8] + 16);
      __cxa_throw(v194, off_1E6E04878, MEMORY[0x1E69E5270]);
    }

    v178 = *(v7 + 80);
    v179 = *(v7 + 88);
    if (v178 == v179)
    {
      LOBYTE(v180) = 0;
    }

    else
    {
      v180 = 0;
      v181 = *(v7 + 80);
      do
      {
        v182 = *v181;
        v181 += 2;
        v180 += *(v182 + 8);
      }

      while (v181 != v179);
      if (v180 == v177)
      {
        v183 = 0;
        do
        {
          v184 = *v178;
          v178 += 2;
          v185 = v184[1] + *v184;
          if (v183 <= v185)
          {
            v183 = v185;
          }
        }

        while (v178 != v179);
        if (v183 > v177)
        {
          v196 = __cxa_allocate_exception(0x10uLL);
          _CGExceptionDescription(3, "maxTextLineEnd <= (CFIndex)numUnichars", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/PageLayout/PageLayout.mm", 1820, "Invalid textLine.textRange end (%zu), correct = %zu", &info, v183);
          std::logic_error::logic_error(v196, &info);
          v196->__vftable = (MEMORY[0x1E69E55A8] + 16);
          __cxa_throw(v196, off_1E6E04878, MEMORY[0x1E69E5270]);
        }

        v186 = [*(v7 + 72) length];
        if (v186 != (*(v7 + 256) - *(v7 + 248)) >> 3)
        {
          v197 = __cxa_allocate_exception(0x10uLL);
          _CGExceptionDescription(3, "_characterStyleIndexes.size() == numTextChars", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/PageLayout/PageLayout.mm", 1825, "Invalid _characterStyleIndexes count (%zu), correct = %zu", &info, (*(v7 + 256) - *(v7 + 248)) >> 3);
          std::logic_error::logic_error(v197, &info);
          v197->__vftable = (MEMORY[0x1E69E55A8] + 16);
          __cxa_throw(v197, off_1E6E04878, MEMORY[0x1E69E5270]);
        }

        if (v186 != (*(v7 + 280) - *(v7 + 272)) >> 3)
        {
          v198 = __cxa_allocate_exception(0x10uLL);
          _CGExceptionDescription(3, "_baselineOffsets.size() == numTextChars", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/PageLayout/PageLayout.mm", 1828, "Invalid _baselineOffsets count (%zu), correct = %zu", &info, (*(v7 + 280) - *(v7 + 272)) >> 3);
          std::logic_error::logic_error(v198, &info);
          v198->__vftable = (MEMORY[0x1E69E55A8] + 16);
          __cxa_throw(v198, off_1E6E04878, MEMORY[0x1E69E5270]);
        }

        if (*(v7 + 56) && v186 != (*(v7 + 352) - *(v7 + 344)) >> 3)
        {
          v200 = __cxa_allocate_exception(0x10uLL);
          _CGExceptionDescription(3, "_hasRTL == false || _logicalMap.size() == numTextChars", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/PageLayout/PageLayout.mm", 1831, "Invalid _logicalMap count (%zu), correct = %zu", &info, (*(v7 + 352) - *(v7 + 344)) >> 3);
          std::logic_error::logic_error(v200, &info);
          v200->__vftable = (MEMORY[0x1E69E55A8] + 16);
          __cxa_throw(v200, off_1E6E04878, MEMORY[0x1E69E5270]);
        }

        v187 = *(v7 + 128);
        v188 = *(v7 + 136);
        if (v187 == v188)
        {
          v191 = 0;
        }

        else
        {
          v189 = 0;
          do
          {
            v190 = *v187;
            v187 += 2;
            v189 += v190;
          }

          while (v187 != v188);
          v191 = v189;
        }

        if (v191 != (*(v7 + 112) - *(v7 + 104)) >> 1)
        {
          v199 = __cxa_allocate_exception(0x10uLL);
          _CGExceptionDescription(3, "textChars == _uniChars.size()", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/PageLayout/PageLayout.mm", 1836, "Invalid sum of entries in _uniCharCounts (%zu), correct = %zu", &info, v191);
          std::logic_error::logic_error(v199, &info);
          v199->__vftable = (MEMORY[0x1E69E55A8] + 16);
          __cxa_throw(v199, off_1E6E04878, MEMORY[0x1E69E5270]);
        }

        goto LABEL_185;
      }
    }

    v195 = __cxa_allocate_exception(0x10uLL);
    _CGExceptionDescription(3, "totalTextLength == numUnichars", "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/PageLayout/PageLayout.mm", 1812, "Invalid textLine.textRange.length total (%zu), correct = %zu", &info, v180);
    std::logic_error::logic_error(v195, &info);
    v195->__vftable = (MEMORY[0x1E69E55A8] + 16);
    __cxa_throw(v195, off_1E6E04878, MEMORY[0x1E69E5270]);
  }

LABEL_185:

  info.__r_.__value_.__r.__words[0] = &v222;
  std::vector<PageLayoutFactory::TextChunk>::__destroy_vector::operator()[abi:fe200100](&info);
  std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(v220);
  std::__hash_table<std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>,std::__unordered_map_hasher<applesauce::CF::ObjectRef<CGFont *>,std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>,std::hash<applesauce::CF::ObjectRef<CGFont *>>,std::equal_to<applesauce::CF::ObjectRef<CGFont *>>,true>,std::__unordered_map_equal<applesauce::CF::ObjectRef<CGFont *>,std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>,std::equal_to<applesauce::CF::ObjectRef<CGFont *>>,std::hash<applesauce::CF::ObjectRef<CGFont *>>,true>,std::allocator<std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>>>::~__hash_table(v218);
  if (v216[1])
  {
    *&v217 = v216[1];
    operator delete(v216[1]);
  }

  if (v215[0])
  {
    v215[1] = v215[0];
    operator delete(v215[0]);
  }

  *(v7 + 552) = 1;
  *(*&v3 + 312) = v7;
  v5 = CFRetain(v7);
LABEL_203:
  os_unfair_lock_unlock((*&v3 + 304));
  return v5;
}

uint64_t CGPDFPageInsertTableDescriptions(uint64_t result, const __CFArray *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = CGPDFPageCopyPageLayoutWithCTLD(result, 0);
  if (v4)
  {
    PageLayout::insertTableFromAnalysis(v4 + 2, a2);
  }

  if (CGPDFDocumentIsTaggedPDF(*(v3 + 16)))
  {
    return 0;
  }

  os_unfair_lock_lock((v3 + 320));
  *(v3 + 328) = 0;
  v5 = *(v3 + 16);
  if (!v5)
  {
    os_unfair_lock_unlock((v3 + 320));
    return 0;
  }

  CFRetain(*(v3 + 16));
  v6 = CGPDFDocumentCopyTaggedContext(v5);
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + 2);
    v9 = *v8;
    if (*(*v8 + 24))
    {
      std::mutex::lock((v9 + 32));
      RemovePageNodesFromStructureElement(*(*v8 + 24), v3);
      std::mutex::unlock((v9 + 32));
    }

    CFRelease(v7);
  }

  CFRelease(v5);
  os_unfair_lock_unlock((v3 + 320));
  v10 = CGPDFPageCopyRootTaggedNode(v3);
  if (v10)
  {
    CFRelease(v10);
  }

  return 1;
}

CFTypeRef CGPDFPageCopyRootTaggedNode(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 320));
    v2 = *(a1 + 328);
    if (v2)
    {
      v3 = CFRetain(v2);
      if (v3)
      {
        goto LABEL_18;
      }
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      CFRetain(*(a1 + 16));
      v5 = CGPDFDocumentCopyTaggedContext(v4);
      if (!v5)
      {
        v3 = 0;
        *(a1 + 328) = 0;
LABEL_17:
        CFRelease(v4);
LABEL_18:
        os_unfair_lock_unlock((a1 + 320));
        return v3;
      }

      v6 = v5;
      TaggedParser::AddPage(*(v5 + 2), a1);
      v7 = v6[2];
      v8 = *v7;
      std::mutex::lock((*v7 + 32));
      v9 = *v7;
      if (*(*v7 + 97) == 1)
      {
        std::mutex::unlock((v8 + 32));
        v3 = 0;
      }

      else
      {
        if (*v9)
        {
          CGPDFTaggedNodeFromStructureElement = CreateCGPDFTaggedNodeFromStructureElement(v9[3], a1);
          if (CGPDFTaggedNodeFromStructureElement)
          {
            std::mutex::unlock((v8 + 32));
            *(a1 + 328) = CGPDFTaggedNodeFromStructureElement;
            v3 = CFRetain(CGPDFTaggedNodeFromStructureElement);
            goto LABEL_16;
          }
        }

        v3 = CGPDFPageCopyPageLayoutWithCTLD(a1, 1);
        if (v3)
        {
          TaggedParser::CreateStructureElement(*(*v7 + 24), a1, v11);
        }

        std::mutex::unlock((v8 + 32));
      }

      *(a1 + 328) = 0;
LABEL_16:
      CFRelease(v6);
      goto LABEL_17;
    }
  }

  return 0;
}

void sub_183FEE288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);

  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  std::mutex::unlock((v5 + 32));
  _Unwind_Resume(a1);
}

CFTypeRef CGPDFPageCopyLayout(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 288));
  v2 = *(a1 + 296);
  if (!v2 || (v3 = CFRetain(v2)) == 0)
  {
    v4 = CGPDFLayoutCreateWithPage(a1);
    *(a1 + 296) = v4;
    if (v4)
    {
      v3 = CFRetain(v4);
    }

    else
    {
      v3 = 0;
    }
  }

  os_unfair_lock_unlock((a1 + 288));
  return v3;
}

void CGPDFPageSetLayout(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 288));
  v4 = *(a1 + 296);
  if (v4 != a2)
  {
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      v5 = CFRetain(a2);
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 296) = v5;
  }

  os_unfair_lock_unlock((a1 + 288));
}

CFTypeRef CGPDFPageGetLayout(CFTypeRef result)
{
  if (result)
  {
    v1 = CGPDFPageCopyLayout(result);

    return CFAutorelease(v1);
  }

  return result;
}

void CGPDFPageRemoveLayout(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 288));
  v2 = *(a1 + 296);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 296) = 0;

  os_unfair_lock_unlock((a1 + 288));
}

void *std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1865EE450](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:fe200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1865EE460](v20);
  return a1;
}