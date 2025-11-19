void sub_100256B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a22 != v22)
  {
    if (a22)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

__int32 *sub_100256B70(__int32 *result, unint64_t a2, float64x2_t *a3, unint64_t a4, float *a5, unint64_t a6, unsigned int *a7, char a8, double a9, double a10)
{
  v10 = a7[1];
  if ((a8 & 4) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = a2 >> 2;
  }

  if ((a8 & 4) != 0)
  {
    v12 = a2 >> 2;
  }

  else
  {
    v12 = 1;
  }

  if (result)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (result)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v10)
  {
    v15 = *a7;
    v16 = 4 * v14;
    v17 = (v15 - 4);
    v18 = (v17 >> 2) + 1;
    v19 = vdupq_lane_s64(*&a10, 0);
    v20 = (a5 + 2);
    v21 = 4 * (a6 >> 2);
    v22 = a3 + 1;
    v23 = 8 * (a4 >> 3);
    v24 = v14;
    v25 = a5 + 4;
    while (result)
    {
      v26 = 0;
      if (v15 >= 4)
      {
        v29 = v22;
        v30 = v20;
        v31 = result;
        do
        {
          v32 = v31;
          v33.i32[0] = *v31;
          v34 = &v31[v24];
          v33.i32[1] = *v34;
          v35 = &v34[v24];
          v30[-1] = vcvt_f32_f64(vmlaq_f64(vmulq_n_f64(v29[-1], a9), vcvtq_f64_f32(v33), v19));
          v33.i32[0] = *v35;
          v36 = &v35[v24];
          v37 = *v29;
          v29 += 2;
          v33.i32[1] = *v36;
          v31 = &v36[v24];
          *v30 = vcvt_f32_f64(vmlaq_f64(vmulq_n_f64(v37, a9), vcvtq_f64_f32(v33), v19));
          v30 += 2;
          v26 += 4;
        }

        while (v26 <= v17);
        v27 = &v32[v16];
        v26 = v26;
        if (v26 >= v15)
        {
          goto LABEL_15;
        }

        do
        {
LABEL_26:
          v38 = a3->f64[v26] * a9 + *v27 * a10;
          a5[v26++] = v38;
          v27 = (v27 + v24 * 4);
        }

        while (v15 != v26);
        goto LABEL_15;
      }

      v27 = result;
      if (v15 > 0)
      {
        goto LABEL_26;
      }

LABEL_15:
      result += v13;
      v20 = (v20 + v21);
      v22 = (v22 + v23);
      a5 = (a5 + v21);
      a3 = (a3 + v23);
      v25 = (v25 + v21);
      if (!--v10)
      {
        return result;
      }
    }

    if (v15 < 4)
    {
      v28 = 0;
      if (v15 <= 0)
      {
        goto LABEL_15;
      }

      goto LABEL_35;
    }

    v39 = v18 & 0x7FFFFFFC;
    v40 = a3;
    v41 = a5;
    if (v17 >= 0xC)
    {
      do
      {
        v43 = v40;
        v53 = vld4q_f64(v43);
        v43 += 8;
        v54 = vld4q_f64(v43);
        v55.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v53.val[1], a9)), vmulq_n_f64(v54.val[1], a9));
        v55.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v53.val[0], a9)), vmulq_n_f64(v54.val[0], a9));
        v55.val[3] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v53.val[3], a9)), vmulq_n_f64(v54.val[3], a9));
        v55.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v53.val[2], a9)), vmulq_n_f64(v54.val[2], a9));
        vst4q_f32(v41, v55);
        v41 += 16;
        v40 += 16;
        v39 -= 4;
      }

      while (v39);
      v42 = 4 * (v18 & 0x7FFFFFFC);
      if (v18 == (v18 & 0x7FFFFFFC))
      {
LABEL_34:
        v28 = v42;
        if (v42 >= v15)
        {
          goto LABEL_15;
        }

LABEL_35:
        v46 = v15 - v28;
        if ((v15 - v28) > 7)
        {
          v47 = (v46 & 0xFFFFFFFFFFFFFFF8) + v28;
          v48 = &v25[v28];
          v49 = (a3 + 8 * v28);
          v50 = v46 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v51 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v49[2], a9)), vmulq_n_f64(v49[3], a9));
            v48[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(*v49, a9)), vmulq_n_f64(v49[1], a9));
            *v48 = v51;
            v48 += 2;
            v49 += 4;
            v50 -= 8;
          }

          while (v50);
          if (v46 == (v46 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_15;
          }
        }

        else
        {
          v47 = v28;
        }

        do
        {
          v52 = a3->f64[v47] * a9;
          a5[v47++] = v52;
        }

        while (v15 != v47);
        goto LABEL_15;
      }
    }

    else
    {
      v42 = 0;
    }

    v44 = v42;
    v45 = 8 * v42;
    do
    {
      *&a5[v44] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(*(a3 + v45), a9)), vmulq_n_f64(*(a3 + v45 + 16), a9));
      v42 += 4;
      v44 += 4;
      v45 += 32;
    }

    while (v42 <= v17);
    goto LABEL_34;
  }

  return result;
}

uint64_t *sub_100256E40(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, double *a5, unint64_t a6, double *a7, unint64_t a8, double a9, double a10, int *a11, int *a12, char a13)
{
  v14 = a10;
  v15 = a9;
  v17 = a12[1];
  v18 = *a12;
  v19 = v18;
  v20 = *a11;
  v21 = a11[1];
  v22 = &v244;
  v242 = &v244;
  v243 = 136;
  v23 = a2 >> 3;
  v24 = a4 >> 3;
  v25 = a6 >> 3;
  v228 = a8 >> 3;
  if ((a13 & 4) != 0)
  {
    v26 = 1;
  }

  else
  {
    v26 = a6 >> 3;
  }

  if ((a13 & 4) == 0)
  {
    v25 = 1;
  }

  if (a5)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (a5)
  {
    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  v234 = v17;
  v232 = v27;
  v236 = v18;
  if (a13)
  {
    v30 = 1;
    if (a2 >= 0x10 && v21 >= 2)
    {
      v243 = v21;
      if (v21 >= 0x89)
      {
        operator new[]();
      }

      v30 = 1;
      v235 = &v244;
      if ((a13 & 2) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_145;
    }

    v20 = v21;
    v29 = a2 >> 3;
    if (v21 == 1)
    {
LABEL_14:
      if (a2 < 0x10)
      {
        v31 = a3;
        if (a4 >= 0x10)
        {
          goto LABEL_227;
        }
      }

      else
      {
        v31 = a3;
        if (v21 < 2)
        {
          goto LABEL_221;
        }

        v243 = v17;
        if (v17 >= 0x89)
        {
          operator new[]();
        }

        if (v17 >= 1)
        {
          if (v17 == 1)
          {
            v184 = 0;
          }

          else
          {
            v184 = v17 & 0xFE;
            v185 = &v245;
            v186 = v17 & 0x7FFFFFFE;
            v187 = a1;
            do
            {
              v188 = v187[v23];
              *(v185 - 1) = *v187;
              *v185 = v188;
              v187 += 2 * v23;
              v185 += 2;
              v186 -= 2;
            }

            while (v186);
            if (v184 == v17)
            {
              a1 = &v244;
LABEL_221:
              if (a4 < 0x10)
              {
                goto LABEL_222;
              }

LABEL_227:
              if (v18 > 0x88)
              {
                operator new[]();
              }

              if (v18 >= 1)
              {
                v190 = 0;
                do
                {
                  *&v240[v190] = *v31;
                  v190 += 8;
                  v31 += v24;
                }

                while (8 * v18 != v190);
              }

              v31 = v240;
              if (v17 < 1)
              {
                goto LABEL_248;
              }

              goto LABEL_233;
            }
          }

          v189 = &a1[v184 * v23];
          do
          {
            *(&v244 + v184++) = *v189;
            v189 += v23;
          }

          while (v17 != v184);
        }

        a1 = &v244;
        if (a4 >= 0x10)
        {
          goto LABEL_227;
        }
      }

LABEL_222:
      if (v17 < 1)
      {
        goto LABEL_248;
      }

LABEL_233:
      v191 = 0;
      while (1)
      {
        v192 = *&a1[v191] * v15;
        if (v18 >= 2)
        {
          v193 = 0;
          v195 = (v31 + 1);
          v196 = a7;
          v194 = a5;
          do
          {
            v198 = v192 * *(v195 - 1);
            v197 = v192 * *v195;
            if (v194)
            {
              *v196 = v198 + *v194 * v14;
              v197 = v197 + v194[v28] * v14;
            }

            else
            {
              *v196 = v198;
            }

            v193 += 2;
            v196[1] = v197;
            v194 += 2 * v28;
            v196 += 2;
            v195 += 2;
          }

          while (v193 <= (v18 - 2));
          v193 = v193;
          if (v193 < v18)
          {
            do
            {
LABEL_246:
              v199 = v192 * *&v31[v193];
              if (v194)
              {
                v199 = v199 + *v194 * v14;
              }

              a7[v193++] = v199;
              v194 += v28;
            }

            while (v18 != v193);
          }
        }

        else
        {
          v193 = 0;
          v194 = a5;
          if (v18 > 0)
          {
            goto LABEL_246;
          }
        }

        ++v191;
        a5 += v27;
        a7 += v228;
        if (v191 == v17)
        {
          goto LABEL_248;
        }
      }
    }
  }

  else
  {
    v29 = 1;
    v30 = a2 >> 3;
    if (v20 == 1)
    {
      goto LABEL_14;
    }
  }

  v22 = 0;
  v23 = v29;
  LODWORD(v21) = v20;
  v235 = 0;
  if ((a13 & 2) == 0)
  {
LABEL_28:
    if (8 * v18 <= 0x640)
    {
      if (v17 < 1)
      {
        goto LABEL_248;
      }

      v32 = 0;
      v33 = 32 * v28;
      v34 = a9 * 0.0;
      v35 = v18 - 4;
      if (v235)
      {
        v36 = v21 < 1;
      }

      else
      {
        v36 = 1;
      }

      v37 = v36;
      v39 = v21 < 4 || v23 != 1;
      v40 = 8 * v23;
      v41 = 8 * v24;
LABEL_44:
      if (v235)
      {
        v42 = v235;
      }

      else
      {
        v42 = a1;
      }

      if ((v37 & 1) == 0)
      {
        v43 = 0;
        if (v39)
        {
          goto LABEL_51;
        }

        do
        {
          v44 = *(a1 + v43 + 16);
          v45 = (v235 + v43);
          *v45 = *(a1 + v43);
          v45[1] = v44;
          v43 += 32;
        }

        while (32 * ((v21 >> 2) & 0x1FFFFFFF) != v43);
        v43 = v21 & 0x7FFFFFFC;
        v42 = v235;
        if (v43 != v21)
        {
LABEL_51:
          v46 = v40 * v43;
          do
          {
            v235[v43++] = *(a1 + v46);
            v46 += v40;
          }

          while (v21 != v43);
          v42 = v235;
        }
      }

      if (v19 < 4)
      {
        v47 = 0;
        v48 = a5;
        if (v19 > 0)
        {
          goto LABEL_66;
        }

        goto LABEL_43;
      }

      v47 = 0;
      v49 = a3;
      v48 = a5;
      while (1)
      {
        v52 = 0uLL;
        v53 = 0.0;
        if (v21 < 1)
        {
          v50 = v15 * 0.0;
          v51 = &a7[v47];
          if (v48)
          {
            goto LABEL_59;
          }

LABEL_64:
          *v51 = v50;
          *(v51 + 1) = vmulq_n_f64(v52, v15);
          v51[3] = v53 * v15;
          v47 += 4;
          v48 = (v48 + v33);
          v49 += 32;
          if (v47 > v35)
          {
LABEL_65:
            v47 = v47;
            if (v47 < v19)
            {
LABEL_66:
              if (v21 <= 0)
              {
                do
                {
                  v66 = v15 * 0.0;
                  if (v48)
                  {
                    v66 = v34 + *v48 * v14;
                  }

                  a7[v47++] = v66;
                  v48 += v28;
                }

                while (v19 != v47);
              }

              else
              {
                v59 = (a3 + 8 * v47);
                do
                {
                  v60 = 0.0;
                  v61 = v59;
                  v62 = v42;
                  v63 = v21;
                  do
                  {
                    v64 = *v62++;
                    v60 = v60 + v64 * *v61;
                    v61 = (v61 + v41);
                    --v63;
                  }

                  while (v63);
                  v65 = v60 * v15;
                  if (v48)
                  {
                    v65 = v65 + *v48 * v14;
                  }

                  a7[v47++] = v65;
                  v48 += v28;
                  ++v59;
                }

                while (v47 != v19);
              }
            }

LABEL_43:
            ++v32;
            a1 += v30;
            a5 += v232;
            a7 += v228;
            if (v32 == v234)
            {
              goto LABEL_248;
            }

            goto LABEL_44;
          }
        }

        else
        {
          v54 = v49;
          v55 = v42;
          v56 = v21;
          v57 = 0.0;
          do
          {
            v58 = *v55++;
            v57 = v57 + v58 * *v54;
            v52 = vmlaq_n_f64(v52, *(v54 + 8), v58);
            v53 = v53 + v58 * *(v54 + 24);
            v54 += v41;
            --v56;
          }

          while (v56);
          v50 = v57 * v15;
          v51 = &a7[v47];
          if (!v48)
          {
            goto LABEL_64;
          }

LABEL_59:
          *v51 = v50 + *v48 * v14;
          v51[1] = v15 * v52.f64[0] + v48[v28] * v14;
          v51[2] = vmuld_lane_f64(v15, v52, 1) + v48[2 * v28] * v14;
          v51[3] = v53 * v15 + v48[3 * v28] * v14;
          v47 += 4;
          v48 = (v48 + v33);
          v49 += 32;
          if (v47 > v35)
          {
            goto LABEL_65;
          }
        }
      }
    }

    if (v18 >= 0x89)
    {
      operator new[]();
    }

    if (v17 < 1)
    {
      goto LABEL_248;
    }

    v67 = 0;
    v68 = 8 * v18;
    v69 = v18 - 4;
    if (v22)
    {
      v70 = v21 < 1;
    }

    else
    {
      v70 = 1;
    }

    v71 = v70;
    v226 = v71;
    v72 = 3;
    if (v69 > 3)
    {
      v72 = v18 - 4;
    }

    v73 = (v72 >> 2) + 1;
    v74 = v73 & 0x3FFFFFFE;
    v75 = 4 * v74;
    v215 = 8 * v23;
    v76 = v21 >= 4 && v23 == 1;
    v220 = (v72 >> 2) + 1;
    v221 = 8 * v24;
    v77 = !v76;
    v216 = v77;
    v229 = 8 * v228;
    v222 = v27;
    v224 = 8 * v30;
    v78 = 8 * v28;
    v79 = (a7 + 2);
    v217 = 4 * (v73 & 0x3FFFFFFE);
    v218 = v73 & 0x3FFFFFFE;
    while (1)
    {
      if (v22)
      {
        v80 = v22;
      }

      else
      {
        v80 = a1;
      }

      v237 = a5;
      if ((v226 & 1) == 0)
      {
        if (v216)
        {
          v81 = 0;
LABEL_104:
          v85 = v215 * v81;
          do
          {
            v22[v81++] = *(a1 + v85);
            v85 += v215;
          }

          while (v21 != v81);
          v80 = v22;
          goto LABEL_107;
        }

        v82 = 0;
        do
        {
          v83 = *&a1[v82 + 2];
          v84 = &v22[v82];
          *v84 = *&a1[v82];
          *(v84 + 1) = v83;
          v82 += 4;
        }

        while (4 * ((v21 >> 2) & 0x1FFFFFFF) != v82);
        v81 = v21 & 0x7FFFFFFC;
        v80 = v22;
        if (v81 != v21)
        {
          goto LABEL_104;
        }
      }

LABEL_107:
      if (v19 >= 1)
      {
        v86 = v67;
        v230 = v79;
        v87 = v78;
        bzero(v240, 8 * v19);
        v78 = v87;
        v79 = v230;
        v75 = v217;
        v74 = v218;
        v73 = v220;
        v67 = v86;
        LODWORD(v17) = v234;
        v22 = v235;
        v15 = a9;
      }

      if (v21 >= 1)
      {
        v88 = 0;
        v89 = a3;
        while (1)
        {
          v90 = v80[v88];
          if (v19 < 4)
          {
            v91 = 0;
            if (v236 <= 0)
            {
              goto LABEL_111;
            }

            goto LABEL_123;
          }

          if (v69 <= 3)
          {
            break;
          }

          v93 = 0;
          v94 = vdupq_lane_s64(v90, 0);
          v95 = v74;
          do
          {
            v96 = &v240[v93];
            v97 = vmlaq_f64(*&v241[v93 + 32], v94, *(v89 + v93 + 48));
            v98 = vmlaq_f64(*&v240[v93 + 16], v94, *(v89 + v93 + 16));
            v99 = vmlaq_f64(*&v241[v93 + 16], v94, *(v89 + v93 + 32));
            *v96 = vmlaq_f64(*&v240[v93], v94, *(v89 + v93));
            v96[1] = v98;
            v96[2] = v99;
            v96[3] = v97;
            v93 += 64;
            v95 -= 2;
          }

          while (v95);
          v92 = v75;
          if (v73 != v74)
          {
            goto LABEL_120;
          }

LABEL_122:
          v91 = v92;
          if (v92 >= v236)
          {
            goto LABEL_111;
          }

LABEL_123:
          v104 = v19 - v91;
          if ((v19 - v91) > 3)
          {
            v105 = (v104 & 0xFFFFFFFFFFFFFFFCLL) + v91;
            v106 = vdupq_lane_s64(v90, 0);
            v107 = 8 * v91;
            v108 = v104 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v109 = &v240[v107];
              v110 = vmlaq_f64(*&v240[v107 + 16], v106, *(v89 + v107 + 16));
              *v109 = vmlaq_f64(*&v240[v107], v106, *(v89 + v107));
              v109[1] = v110;
              v107 += 32;
              v108 -= 4;
            }

            while (v108);
            if (v104 == (v104 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_111;
            }
          }

          else
          {
            v105 = v91;
          }

          do
          {
            *&v240[8 * v105] = *&v240[8 * v105] + *(v89 + 8 * v105) * *&v90;
            ++v105;
          }

          while (v19 != v105);
LABEL_111:
          ++v88;
          v89 += v221;
          if (v88 == v21)
          {
            goto LABEL_130;
          }
        }

        v92 = 0;
LABEL_120:
        v100 = vdupq_lane_s64(v90, 0);
        v101 = 8 * v92;
        do
        {
          v102 = &v240[v101];
          v103 = vmlaq_f64(*&v240[v101 + 16], v100, *(v89 + v101 + 16));
          *v102 = vmlaq_f64(*&v240[v101], v100, *(v89 + v101));
          v102[1] = v103;
          v92 += 4;
          v101 += 32;
        }

        while (v92 <= v69);
        goto LABEL_122;
      }

LABEL_130:
      if (v237)
      {
        if (v236 >= 1)
        {
          v111 = 0;
          v112 = v237;
          do
          {
            a7[v111 / 8] = *&v240[v111] * v15 + *v112 * v14;
            v111 += 8;
            v112 = (v112 + v78);
          }

          while (v68 != v111);
        }

        goto LABEL_94;
      }

      if (v19 >= 1)
      {
        if (v236 >= 4)
        {
          v115 = v241;
          v114 = v19 & 0x7FFFFFFC;
          v116 = v79;
          do
          {
            v117 = vmulq_n_f64(*v115, v15);
            v116[-1] = vmulq_n_f64(v115[-1], v15);
            *v116 = v117;
            v115 += 2;
            v116 += 2;
            v114 -= 4;
          }

          while (v114);
          v113 = v19 & 0x7FFFFFFC;
          if (v113 == v19)
          {
            goto LABEL_94;
          }
        }

        else
        {
          v113 = 0;
        }

        do
        {
          a7[v113] = *&v240[8 * v113] * v15;
          ++v113;
        }

        while (v19 != v113);
      }

LABEL_94:
      ++v67;
      a1 = (a1 + v224);
      a5 = &v237[v222];
      a7 = (a7 + v229);
      v79 = (v79 + v229);
      if (v67 == v17)
      {
        goto LABEL_248;
      }
    }
  }

LABEL_145:
  if (v17 < 1)
  {
    goto LABEL_248;
  }

  if (v18 < 1)
  {
    if (!v235 || v21 < 1)
    {
      goto LABEL_248;
    }

    if (v21 < 4)
    {
      do
      {
        v132 = a1;
        if (v21 != 1)
        {
          v235[1] = a1[v23];
          if (v21 != 2)
          {
            v235[2] = a1[2 * v23];
          }
        }

        a1 += v30;
        LODWORD(v17) = v17 - 1;
      }

      while (v17);
      *v235 = *v132;
      goto LABEL_248;
    }

    v202 = 0;
    v203 = (a1 + 2);
    v204 = 8 * v30;
    v205 = 8 * v23;
    while (1)
    {
      if (v23 == 1)
      {
        v206 = v21 & 0x7FFFFFFC;
        v207 = v235 + 2;
        v208 = v203;
        v209 = v235;
        do
        {
          v210 = *v208;
          *(v207 - 1) = *(v208 - 1);
          *v207 = v210;
          v208 += 2;
          v207 += 2;
          v206 -= 4;
        }

        while (v206);
        v211 = v21 & 0x7FFFFFFC;
        if (v211 == v21)
        {
          goto LABEL_255;
        }
      }

      else
      {
        v211 = 0;
        v209 = v235;
      }

      v212 = v21 - v211;
      v213 = &v209[v211];
      v214 = v205 * v211;
      do
      {
        *v213++ = *(a1 + v214);
        v214 += v205;
        --v212;
      }

      while (v212);
LABEL_255:
      ++v202;
      v203 = (v203 + v204);
      a1 = (a1 + v204);
      if (v202 == v17)
      {
        goto LABEL_248;
      }
    }
  }

  if (v235)
  {
    v118 = v21 < 1;
  }

  else
  {
    v118 = 1;
  }

  v119 = v118;
  if (v21 <= 3)
  {
    v120 = 0;
    v121 = 8 * v18;
    v122 = 8 * v28;
    do
    {
      if (v235)
      {
        v123 = v235;
      }

      else
      {
        v123 = a1;
      }

      if ((v119 & 1) == 0)
      {
        *v235 = *a1;
        v123 = v235;
        if (v21 != 1)
        {
          v235[1] = a1[v23];
          v123 = v235;
          if (v21 != 2)
          {
            v235[2] = a1[2 * v23];
            v123 = v235;
          }
        }
      }

      if (v21 <= 0)
      {
        v129 = 0;
        v130 = a5;
        do
        {
          v131 = a9 * 0.0;
          if (v130)
          {
            v131 = a9 * 0.0 + *v130 * a10;
          }

          a7[v129 / 8] = v131;
          v129 += 8;
          v130 = (v130 + v122);
        }

        while (v121 != v129);
      }

      else
      {
        v124 = 0;
        v125 = (a3 + 8);
        v126 = a5;
        do
        {
          v127 = *v123 * *(v125 - 1) + 0.0;
          if (v21 != 1)
          {
            v127 = v127 + v123[1] * *v125;
            if (v21 != 2)
            {
              v127 = v127 + v123[2] * v125[1];
            }
          }

          v128 = (v127 + 0.0) * a9;
          if (v126)
          {
            v128 = v128 + *v126 * a10;
          }

          a7[v124 / 8] = v128;
          v124 += 8;
          v126 = (v126 + v122);
          v125 += v24;
        }

        while (v121 != v124);
      }

      ++v120;
      a1 += v30;
      a7 += v228;
      a5 += v27;
    }

    while (v120 != v17);
    goto LABEL_248;
  }

  v133 = 0;
  v134 = v21 - 4;
  v135 = (v21 - 4) & 0xFFFFFFFC;
  v136 = (v135 + 4);
  v137 = (v21 - v135 - 5);
  v138 = 3;
  if (v134 > 3)
  {
    v138 = v21 - 4;
  }

  v139 = (v138 >> 2) + 1;
  v140 = (v137 + 1) & 0x1FFFFFFFCLL;
  v223 = v23;
  v225 = v30;
  v141 = 32 * ((v21 >> 2) & 0x1FFFFFFF);
  v142 = 8 * v23;
  v143 = 8 * v24;
  v219 = 8 * v136 + 16;
  v227 = v119;
  while (2)
  {
    if (v235)
    {
      v144 = v235;
    }

    else
    {
      v144 = a1;
    }

    v231 = v133;
    if (v119)
    {
      goto LABEL_201;
    }

    if (v23 == 1)
    {
      v145 = 0;
      v144 = v235;
      do
      {
        v146 = *&a1[v145 / 8 + 2];
        v147 = &v235[v145 / 8];
        *v147 = *&a1[v145 / 8];
        *(v147 + 1) = v146;
        v145 += 32;
      }

      while (v141 != v145);
      v148 = v21 & 0x7FFFFFFC;
      if (v148 == v21)
      {
        goto LABEL_201;
      }
    }

    else
    {
      v148 = 0;
    }

    v149 = v142 * v148;
    v144 = v235;
    do
    {
      v235[v148++] = *(a1 + v149);
      v149 += v142;
    }

    while (v21 != v148);
LABEL_201:
    v150 = 0;
    v151 = (a3 + v219);
    v152 = a3;
    v153 = (a3 + 64);
    v154 = a5;
    do
    {
      v155 = a1;
      if (v134 >= 12)
      {
        v157 = 0.0;
        v161 = v139 & 0x3FFFFFFC;
        v162 = v153;
        v163 = (v144 + 8);
        v158 = 0.0;
        v159 = 0.0;
        v160 = 0.0;
        do
        {
          v164 = v163 - 8;
          v246 = vld4q_f64(v164);
          v247 = vld4q_f64(v163);
          v165 = v162 - 8;
          v248 = vld4q_f64(v165);
          v249 = vld4q_f64(v162);
          v166 = vmulq_f64(v246.val[0], v248.val[0]);
          v167 = vmulq_f64(v247.val[0], v249.val[0]);
          v168 = vmulq_f64(v246.val[1], v248.val[1]);
          v169 = vmulq_f64(v247.val[1], v249.val[1]);
          v170 = vmulq_f64(v246.val[2], v248.val[2]);
          v171 = vmulq_f64(v247.val[2], v249.val[2]);
          v246.val[0] = vmulq_f64(v246.val[3], v248.val[3]);
          v246.val[2] = vmulq_f64(v247.val[3], v249.val[3]);
          v157 = v157 + v246.val[0].f64[0] + v246.val[0].f64[1] + v246.val[2].f64[0] + v246.val[2].f64[1];
          v158 = v158 + v170.f64[0] + v170.f64[1] + v171.f64[0] + v171.f64[1];
          v159 = v159 + v168.f64[0] + v168.f64[1] + v169.f64[0] + v169.f64[1];
          v160 = v160 + v166.f64[0] + v166.f64[1] + v167.f64[0] + v167.f64[1];
          v163 += 16;
          v162 += 16;
          v161 -= 4;
        }

        while (v161);
        v156 = 4 * (v139 & 0x3FFFFFFC);
        v14 = a10;
        v15 = a9;
        if (v139 == (v139 & 0x3FFFFFFC))
        {
          goto LABEL_210;
        }
      }

      else
      {
        v156 = 0;
        v157 = 0.0;
        v158 = 0.0;
        v159 = 0.0;
        v160 = 0.0;
      }

      v172 = &v144[v156 + 2];
      v173 = 8 * v156 + 16;
      do
      {
        v160 = v160 + *(v172 - 2) * *(v152 + v173 - 16);
        v159 = v159 + *(v172 - 1) * *(v152 + 8 * v156 + 8);
        v174 = *v172;
        v175 = v172[1];
        v172 += 4;
        v158 = v158 + v174 * *(v152 + v173);
        v157 = v157 + v175 * *(v152 + v173 + 8);
        v156 += 4;
        v173 += 32;
      }

      while (v156 <= v134);
LABEL_210:
      if (v136 < v21)
      {
        v176 = v136;
        v177 = v151;
        v178 = (v144 + v219);
        v179 = (v137 + 1) & 0x1FFFFFFFCLL;
        if (v137 < 3)
        {
          goto LABEL_214;
        }

        do
        {
          v180 = vmulq_f64(v178[-1], v177[-1]);
          v181 = vmulq_f64(*v178, *v177);
          v160 = v160 + v180.f64[0] + v180.f64[1] + v181.f64[0] + v181.f64[1];
          v178 += 2;
          v177 += 2;
          v179 -= 4;
        }

        while (v179);
        v176 = v140 + v136;
        if (v137 + 1 != v140)
        {
LABEL_214:
          v182 = v176;
          do
          {
            v160 = v160 + *&v144[v182] * *(v152 + v182 * 8);
            LODWORD(v176) = v176 + 1;
            ++v182;
          }

          while (v21 > v176);
        }
      }

      v183 = (v157 + v158 + v159 + v160) * v15;
      if (v154)
      {
        v183 = v183 + *v154 * v14;
      }

      a1 = v155;
      a7[v150] = v183;
      v154 += v28;
      ++v150;
      v153 = (v153 + v143);
      v152 += v143;
      v151 = (v151 + v143);
    }

    while (v150 != v19);
    ++v133;
    v23 = v223;
    a1 = &v155[v225];
    a5 += v232;
    a7 += v228;
    v119 = v227;
    v141 = 32 * ((v21 >> 2) & 0x1FFFFFFF);
    if (v231 + 1 != v17)
    {
      continue;
    }

    break;
  }

LABEL_248:
  result = v242;
  if (v242 != &v244 && v242 != 0)
  {
    operator delete[]();
  }

  return result;
}

void sub_100257FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (STACK[0x528] != a16)
  {
    if (STACK[0x528])
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_10025805C(void *a1, unint64_t a2, double *a3, unint64_t a4, double *a5, unint64_t a6, int *a7, int *a8, char a9)
{
  v10 = a1;
  v11 = *a7;
  v12 = a7[1];
  v13 = a8[1];
  v14 = *a8;
  v15 = a2 >> 3;
  v170 = v13;
  if (a9)
  {
    if (v12 >= 0x89)
    {
      operator new[]();
    }

    v17 = 1;
    v16 = v176;
  }

  else
  {
    v16 = 0;
    v12 = v11;
    v17 = a2 >> 3;
    v15 = 1;
  }

  v18 = v14;
  v19 = a4 >> 3;
  v20 = a6 >> 3;
  v175 = v14;
  v169 = a6 >> 3;
  if ((a9 & 2) == 0)
  {
    if (v13 < 1)
    {
      return v176;
    }

    v21 = 0;
    v22 = v14 - 4;
    if (v16)
    {
      v23 = v12 < 1;
    }

    else
    {
      v23 = 1;
    }

    v24 = v23;
    v25 = 8 * v17;
    v26 = v12 & 0x7FFFFFFC;
    v28 = v12 < 4 || v15 != 1;
    v29 = 8 * v15;
    v30 = (a3 + 2);
    v31 = 8 * v19;
    v171 = v14;
    v168 = v24;
    v167 = v25;
    v164 = v28;
    while (1)
    {
      if (v16)
      {
        v32 = v16;
      }

      else
      {
        v32 = v10;
      }

      if (v24)
      {
        goto LABEL_34;
      }

      if (v28)
      {
        v33 = 0;
      }

      else
      {
        v34 = 0;
        do
        {
          v35 = *&v10[v34 + 2];
          v36 = &v16[v34];
          *v36 = *&v10[v34];
          v36[1] = v35;
          v34 += 4;
        }

        while (4 * ((v12 >> 2) & 0x1FFFFFFF) != v34);
        v33 = v26;
        v32 = v16;
        if (v26 == v12)
        {
          goto LABEL_34;
        }
      }

      v37 = v29 * v33;
      do
      {
        v16[v33++] = *(v10 + v37);
        v37 += v29;
      }

      while (v12 != v33);
      v32 = v16;
LABEL_34:
      if (v14 >= 4)
      {
        v38 = 0;
        v50 = v30;
        do
        {
          v51 = 0uLL;
          v52 = &a5[v38];
          v53 = 0uLL;
          if ((a9 & 0x10) != 0)
          {
            v51 = *v52;
            v53 = v52[1];
          }

          if (v12 >= 1)
          {
            v54 = v50;
            v55 = v32;
            v56 = v12;
            do
            {
              v57 = vld1q_dup_f64(v55++);
              v51 = vmlaq_f64(v51, v54[-1], v57);
              v53 = vmlaq_f64(v53, *v54, v57);
              v54 = (v54 + v31);
              --v56;
            }

            while (v56);
          }

          *v52 = v51;
          v52[1] = v53;
          v38 += 4;
          v50 += 2;
        }

        while (v38 <= v22);
      }

      else
      {
        LODWORD(v38) = 0;
      }

      if (v38 < v18)
      {
        if (v12 < 1)
        {
          if ((a9 & 0x10) == 0)
          {
            v174 = v21;
            bzero(&a5[v38], 8 * (v14 + ~v38) + 8);
            v30 = (a3 + 2);
            v28 = v164;
            v26 = v12 & 0x7FFFFFFC;
            v25 = v167;
            v24 = v168;
            v21 = v174;
            LODWORD(v14) = v171;
            v20 = v169;
            v18 = v175;
            v13 = v170;
          }
        }

        else
        {
          v38 = v38;
          v39 = &a3[v38];
          if ((a9 & 0x10) != 0)
          {
            do
            {
              v45 = a5[v38];
              v46 = v39;
              v47 = v32;
              v48 = v12;
              do
              {
                v49 = *v47++;
                v45 = v45 + v49 * *v46;
                v46 = (v46 + v31);
                --v48;
              }

              while (v48);
              a5[v38++] = v45;
              ++v39;
            }

            while (v38 != v18);
          }

          else
          {
            do
            {
              v40 = 0.0;
              v41 = v39;
              v42 = v32;
              v43 = v12;
              do
              {
                v44 = *v42++;
                v40 = v40 + v44 * *v41;
                v41 = (v41 + v31);
                --v43;
              }

              while (v43);
              a5[v38++] = v40;
              ++v39;
            }

            while (v38 != v18);
          }
        }
      }

      ++v21;
      v10 = (v10 + v25);
      a5 += v20;
      if (v21 == v13)
      {
        return v176;
      }
    }
  }

  if (v13 < 1)
  {
    return v176;
  }

  if (v14 < 1)
  {
    if (!v16 || v12 < 1)
    {
      return v176;
    }

    if (v12 < 4)
    {
      do
      {
        v68 = v10;
        if (v12 != 1)
        {
          v16[1] = *&v10[v15];
          if (v12 != 2)
          {
            v16[2] = *&v10[2 * v15];
          }
        }

        v10 += v17;
        --v13;
      }

      while (v13);
      *v16 = *v68;
      return v176;
    }

    v135 = 0;
    v136 = (a1 + 2);
    v137 = 8 * v17;
    v138 = 8 * v15;
    while (1)
    {
      if (v15 == 1)
      {
        v139 = v12 & 0x7FFFFFFC;
        v140 = v16 + 2;
        v141 = v136;
        do
        {
          v142 = *v141;
          *(v140 - 1) = *(v141 - 1);
          *v140 = v142;
          v141 += 2;
          v140 += 2;
          v139 -= 4;
        }

        while (v139);
        v143 = v12 & 0x7FFFFFFC;
        if (v143 == v12)
        {
          goto LABEL_140;
        }
      }

      else
      {
        v143 = 0;
      }

      v144 = v12 - v143;
      v145 = &v16[v143];
      v146 = v138 * v143;
      do
      {
        *v145++ = *(v10 + v146);
        v146 += v138;
        --v144;
      }

      while (v144);
LABEL_140:
      ++v135;
      v136 = (v136 + v137);
      v10 = (v10 + v137);
      if (v135 == v13)
      {
        return v176;
      }
    }
  }

  if (v12 <= 1)
  {
    if (v12 >= 1)
    {
      v58 = 0;
      v59 = 8 * v14;
      v60 = 8 * v20;
      v61 = 8 * v19;
      if ((a9 & 0x10) != 0)
      {
        do
        {
          v65 = v10;
          if (v16)
          {
            *v16 = *v10;
            v65 = v16;
          }

          v66 = 0;
          v67 = a3;
          do
          {
            a5[v66 / 8] = a5[v66 / 8] + *v65 * *v67 + 0.0;
            v66 += 8;
            v67 = (v67 + v61);
          }

          while (v59 != v66);
          ++v58;
          v10 += v17;
          a5 = (a5 + v60);
        }

        while (v58 != v13);
      }

      else
      {
        do
        {
          v62 = v10;
          if (v16)
          {
            *v16 = *v10;
            v62 = v16;
          }

          v63 = 0;
          v64 = a3;
          do
          {
            a5[v63 / 8] = *v62 * *v64 + 0.0 + 0.0;
            v63 += 8;
            v64 = (v64 + v61);
          }

          while (v59 != v63);
          ++v58;
          v10 += v17;
          a5 = (a5 + v60);
        }

        while (v58 != v13);
      }

      return v176;
    }

    if ((a9 & 0x10) == 0)
    {
      v131 = 8 * v14;
      v132 = 8 * v20;
      if (v16)
      {
        do
        {
          v133 = v13;
          bzero(a5, v131);
          a5 = (a5 + v132);
          v13 = v133 - 1;
        }

        while (v133 != 1);
      }

      else
      {
        do
        {
          v134 = v13;
          bzero(a5, v131);
          a5 = (a5 + v132);
          v13 = v134 - 1;
        }

        while (v134 != 1);
      }

      return v176;
    }

    v148 = v14 & 0x7FFFFFFC;
    if (v16)
    {
      if (v14 >= 4)
      {
        v157 = 0;
        v158 = (a5 + 2);
        v159 = 8 * v20;
        do
        {
          v160 = v14 & 0x7FFFFFFC;
          v161 = v158;
          do
          {
            v162 = vaddq_f64(*v161, 0);
            v161[-1] = vaddq_f64(v161[-1], 0);
            *v161 = v162;
            v161 += 2;
            v160 -= 4;
          }

          while (v160);
          if (v148 != v14)
          {
            v163 = v14 & 0x7FFFFFFC;
            do
            {
              a5[v163] = a5[v163] + 0.0;
              ++v163;
            }

            while (v14 != v163);
          }

          ++v157;
          v158 = (v158 + v159);
          a5 = (a5 + v159);
        }

        while (v157 != v13);
      }

      else
      {
        v149 = a5 + 2;
        do
        {
          *(v149 - 2) = *(v149 - 2) + 0.0;
          if (v14 != 1)
          {
            *(v149 - 1) = *(v149 - 1) + 0.0;
            if (v14 != 2)
            {
              *v149 = *v149 + 0.0;
            }
          }

          v149 += v20;
          --v13;
        }

        while (v13);
      }

      return v176;
    }

    v150 = 0;
    v151 = (a5 + 2);
    v152 = 8 * v20;
    while (1)
    {
      if (v14 >= 4)
      {
        v154 = v14 & 0x7FFFFFFC;
        v155 = v151;
        do
        {
          v156 = vaddq_f64(*v155, 0);
          v155[-1] = vaddq_f64(v155[-1], 0);
          *v155 = v156;
          v155 += 2;
          v154 -= 4;
        }

        while (v154);
        v153 = v14 & 0x7FFFFFFC;
        if (v148 == v14)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v153 = 0;
      }

      do
      {
        a5[v153] = a5[v153] + 0.0;
        ++v153;
      }

      while (v14 != v153);
LABEL_160:
      ++v150;
      v151 = (v151 + v152);
      a5 = (a5 + v152);
      if (v150 == v13)
      {
        return v176;
      }
    }
  }

  v69 = 0;
  v70 = (v12 - 2);
  v71 = (v70 & 0xFFFFFFFE) + 2;
  v72 = (v70 & 0xFFFFFFFE) + 3;
  if (v12 > v72)
  {
    v72 = v12;
  }

  v73 = v72 - (v70 & 0xFFFFFFFE) - 3;
  v74 = (v70 >> 1) + 1;
  v75 = v74 & 0x7FFFFFFC;
  v76 = (v73 + 1) & 0x1FFFFFFFCLL;
  v78 = v12 < 4 || v15 != 1;
  v166 = v78;
  v79 = 8 * v15;
  v80 = 8 * v19;
  v165 = 8 * ((v70 & 0xFFFFFFFE) + 2) + 16;
  while (2)
  {
    v81 = v10;
    if (!v16)
    {
      goto LABEL_101;
    }

    if (v166)
    {
      v82 = 0;
    }

    else
    {
      v83 = 0;
      do
      {
        v84 = *&v10[v83 + 2];
        v85 = &v16[v83];
        *v85 = *&v10[v83];
        v85[1] = v84;
        v83 += 4;
      }

      while (4 * ((v12 >> 2) & 0x1FFFFFFF) != v83);
      v82 = v12 & 0x7FFFFFFC;
      v81 = v16;
      if (v82 == v12)
      {
        goto LABEL_101;
      }
    }

    v86 = v79 * v82;
    do
    {
      v16[v82++] = *(v10 + v86);
      v86 += v79;
    }

    while (v12 != v82);
    v81 = v16;
LABEL_101:
    v172 = v69;
    if (v71 < v12)
    {
      v87 = 0;
      v88 = (a3 + v165);
      v89 = a3;
      v90 = a3 + 4;
      while (1)
      {
        v91 = 0.0;
        v92 = 0.0;
        if ((a9 & 0x10) != 0)
        {
          v92 = a5[v87];
        }

        if (v70 < 6)
        {
          break;
        }

        v94 = v74 & 0x7FFFFFFC;
        v95 = v90;
        v96 = v81 + 4;
        do
        {
          v97 = v96 - 4;
          v177 = vld2q_f64(v97);
          v179 = vld2q_f64(v96);
          v98 = v95 - 4;
          v181 = vld2q_f64(v98);
          v183 = vld2q_f64(v95);
          v99 = vmulq_f64(v177.val[0], v181.val[0]);
          v100 = vmulq_f64(v179.val[0], v183.val[0]);
          v177.val[0] = vmulq_f64(v177.val[1], v181.val[1]);
          v179.val[0] = vmulq_f64(v179.val[1], v183.val[1]);
          v91 = v91 + v177.val[0].f64[0] + v177.val[0].f64[1] + v179.val[0].f64[0] + v179.val[0].f64[1];
          v92 = v92 + v99.f64[0] + v99.f64[1] + v100.f64[0] + v100.f64[1];
          v96 += 8;
          v95 += 8;
          v94 -= 4;
        }

        while (v94);
        v93 = 2 * (v74 & 0x7FFFFFFC);
        if (v74 != v75)
        {
          goto LABEL_111;
        }

LABEL_113:
        if (v73 >= 3)
        {
          v106 = v88;
          v107 = (v81 + v165);
          v108 = (v73 + 1) & 0x1FFFFFFFCLL;
          do
          {
            v109 = vmulq_f64(v107[-1], v106[-1]);
            v110 = vmulq_f64(*v107, *v106);
            v92 = v92 + v109.f64[0] + v109.f64[1] + v110.f64[0] + v110.f64[1];
            v107 += 2;
            v106 += 2;
            v108 -= 4;
          }

          while (v108);
          v105 = v76 + v71;
          if (v73 + 1 == v76)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v105 = (v70 & 0xFFFFFFFE) + 2;
        }

        v111 = v105;
        do
        {
          v92 = v92 + v81[v111] * v89[v111];
          LODWORD(v105) = v105 + 1;
          ++v111;
        }

        while (v12 > v105);
LABEL_103:
        a5[v87++] = v91 + v92;
        v90 = (v90 + v80);
        v89 = (v89 + v80);
        v88 = (v88 + v80);
        if (v87 == v175)
        {
          goto LABEL_91;
        }
      }

      v93 = 0;
LABEL_111:
      v101 = &v89[v93];
      v102 = &v81[v93 + 1];
      do
      {
        v103 = *v101;
        v104 = v101[1];
        v101 += 2;
        v92 = v92 + *(v102 - 1) * v103;
        v91 = v91 + *v102 * v104;
        v93 += 2;
        v102 += 2;
      }

      while (v93 <= v70);
      goto LABEL_113;
    }

    v112 = 0;
    v113 = v81 + 4;
    v114 = v81 + 1;
    v115 = a3;
    v116 = a3 + 4;
    do
    {
      v117 = 0.0;
      v118 = 0.0;
      if ((a9 & 0x10) != 0)
      {
        v118 = a5[v112];
      }

      if (v70 < 6)
      {
        v119 = 0;
LABEL_130:
        v127 = &v115[v119];
        v128 = &v114[v119];
        do
        {
          v129 = *v127;
          v130 = v127[1];
          v127 += 2;
          v118 = v118 + *(v128 - 1) * v129;
          v117 = v117 + *v128 * v130;
          v119 += 2;
          v128 += 2;
        }

        while (v119 <= v70);
        goto LABEL_122;
      }

      v120 = v74 & 0x7FFFFFFC;
      v121 = v116;
      v122 = v113;
      do
      {
        v123 = v122 - 4;
        v178 = vld2q_f64(v123);
        v180 = vld2q_f64(v122);
        v124 = v121 - 4;
        v182 = vld2q_f64(v124);
        v184 = vld2q_f64(v121);
        v125 = vmulq_f64(v178.val[0], v182.val[0]);
        v126 = vmulq_f64(v180.val[0], v184.val[0]);
        v178.val[0] = vmulq_f64(v178.val[1], v182.val[1]);
        v180.val[0] = vmulq_f64(v180.val[1], v184.val[1]);
        v117 = v117 + v178.val[0].f64[0] + v178.val[0].f64[1] + v180.val[0].f64[0] + v180.val[0].f64[1];
        v118 = v118 + v125.f64[0] + v125.f64[1] + v126.f64[0] + v126.f64[1];
        v122 += 8;
        v121 += 8;
        v120 -= 4;
      }

      while (v120);
      v119 = 2 * (v74 & 0x7FFFFFFC);
      if (v74 != v75)
      {
        goto LABEL_130;
      }

LABEL_122:
      a5[v112++] = v117 + v118;
      v116 = (v116 + v80);
      v115 = (v115 + v80);
    }

    while (v112 != v175);
LABEL_91:
    v69 = v172 + 1;
    v10 += v17;
    a5 += v169;
    if (v172 + 1 != v170)
    {
      continue;
    }

    return v176;
  }
}

void sub_100258B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a24 != v24)
  {
    if (a24)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

double *sub_100258B68(double *result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unsigned int *a7, char a8, double a9, double a10)
{
  v10 = a7[1];
  v11 = a2 >> 3;
  if ((a8 & 4) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = a2 >> 3;
  }

  if ((a8 & 4) == 0)
  {
    v11 = 1;
  }

  if (result)
  {
    v13 = v11;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (!v10)
  {
    return result;
  }

  v14 = *a7;
  v15 = a4 >> 3;
  v16 = a6 >> 3;
  v17 = (v14 - 4);
  if (v14 >= 4)
  {
    v23 = 0;
    v24 = 4 * v13;
    v25 = a5 - a3;
    v26 = v14 - (v14 & 0xFFFFFFFC);
    v27 = v10 - 1;
    v28 = a5 + 8 * ((v17 & 0xFFFFFFFC) + v16 * v27) + 32;
    v29 = a3 + 8 * ((v17 & 0xFFFFFFFC) + v15 * v27) + 32;
    v30 = (v17 >> 2) + 1;
    v32 = v29 > a5 && v28 > a3;
    v33 = vdupq_lane_s64(*&a10, 0);
    v34 = 8 * v16;
    v35 = 8 * v15;
    v36 = v17 < 4 || ((a6 | a4) & 0x8000000000000000) != 0 || v32;
    v37 = v13;
    v38 = &result[v24];
    while (result)
    {
      v39 = 0;
      v40 = 0;
      v41 = v38;
      v42 = result;
      do
      {
        v43 = v41;
        v44.f64[0] = *v42;
        v45 = &v42[v37];
        v46 = (a5 + v39);
        v44.f64[1] = *v45;
        *v46 = vmlaq_f64(vmulq_n_f64(*(a3 + v39), a9), v44, v33);
        v47 = &v45[v37];
        v44.f64[0] = *v47;
        v48 = &v47[v37];
        v44.f64[1] = *v48;
        v40 += 4;
        v46[1] = vmlaq_f64(vmulq_n_f64(*(a3 + v39 + 16), a9), v44, v33);
        v39 += 32;
        v42 = &v48[v37];
        v41 = (v41 + v24 * 8);
      }

      while (v40 <= v17);
      if (v14 > v40)
      {
        v49 = v40 & 0xFFFFFFFC;
        do
        {
          *(a5 + 8 * v49) = *(a3 + 8 * v49) * a9 + *v43 * a10;
          ++v49;
          v43 = (v43 + v37 * 8);
        }

        while (v49 != v14);
      }

LABEL_29:
      result += v12;
      a3 += v35;
      a5 += v34;
      ++v23;
      v38 += v12;
      if (!--v10)
      {
        return result;
      }
    }

    if (v36)
    {
      v50 = 0;
    }

    else
    {
      v51 = 0;
      v52 = v30 & 0x7FFFFFFE;
      do
      {
        v53 = (a5 + v51);
        v54 = vmulq_n_f64(*(a3 + v51 + 48), a9);
        v55 = vmulq_n_f64(*(a3 + v51 + 16), a9);
        v56 = vmulq_n_f64(*(a3 + v51 + 32), a9);
        *v53 = vmulq_n_f64(*(a3 + v51), a9);
        v53[1] = v55;
        v53[2] = v56;
        v53[3] = v54;
        v51 += 64;
        v52 -= 2;
      }

      while (v52);
      v50 = 4 * (v30 & 0x7FFFFFFE);
      if (v30 == (v30 & 0x7FFFFFFE))
      {
LABEL_44:
        if (v14 > v50)
        {
          v59 = v50 & 0xFFFFFFFC;
          if (v26 < 4)
          {
            goto LABEL_54;
          }

          if (v25 + ((a6 & 0xFFFFFFFFFFFFFFF8) - (a4 & 0xFFFFFFFFFFFFFFF8)) * v23 <= 0x1F)
          {
            goto LABEL_54;
          }

          v59 += v26 - (v14 & 3);
          v60 = 32 * (v50 >> 2);
          v61 = v26 - (v14 & 3);
          do
          {
            v62 = vmulq_n_f64(*(a3 + v60 + 16), a9);
            v63 = (a5 + v60);
            *v63 = vmulq_n_f64(*(a3 + v60), a9);
            v63[1] = v62;
            v60 += 32;
            v61 -= 4;
          }

          while (v61);
          if ((v14 & 3) != 0)
          {
LABEL_54:
            do
            {
              *(a5 + 8 * v59) = *(a3 + 8 * v59) * a9;
              ++v59;
            }

            while (v14 != v59);
          }
        }

        goto LABEL_29;
      }
    }

    v57 = 8 * v50;
    do
    {
      v58 = (a5 + v57);
      *v58 = vmulq_n_f64(*(a3 + v57), a9);
      v58[1] = vmulq_n_f64(*(a3 + v57 + 16), a9);
      v50 += 4;
      v57 += 32;
    }

    while (v50 <= v17);
    goto LABEL_44;
  }

  if (v14 >= 1)
  {
    v18 = 8 * v12;
    v19 = (a3 + 16);
    v20 = (a5 + 8);
    do
    {
      v21 = *(v19 - 2) * a9;
      if (result)
      {
        *(v20 - 1) = v21 + *result * a10;
        if (v14 == 1)
        {
          goto LABEL_14;
        }

        *v20 = *(v19 - 1) * a9 + result[v13] * a10;
        if (v14 == 2)
        {
          goto LABEL_14;
        }

        v22 = *v19 * a9 + result[2 * v13] * a10;
      }

      else
      {
        *(v20 - 1) = v21;
        if (v14 == 1)
        {
          goto LABEL_14;
        }

        *v20 = *(v19 - 1) * a9;
        if (v14 == 2)
        {
          goto LABEL_14;
        }

        v22 = *v19 * a9;
      }

      v20[1] = v22;
LABEL_14:
      result = (result + v18);
      v19 += v15;
      v20 += v16;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t *sub_100258EF0(uint64_t *a1, unint64_t a2, float32x2_t *a3, unint64_t a4, float32x2_t *a5, unint64_t a6, float32x2_t *a7, unint64_t a8, double a9, double a10, int *a11, int *a12, char a13)
{
  v19 = a11[1];
  v327 = *a11;
  v332 = *a12;
  v20 = v332;
  v337 = a12[1];
  v338 = &v345;
  bzero(&v345, 0x440uLL);
  v343 = &v345;
  v344 = 136;
  v21 = a2 >> 3;
  v22 = a4 >> 3;
  v23 = a6 >> 3;
  v334 = a8 >> 3;
  if ((a13 & 4) != 0)
  {
    v24 = a6 >> 3;
  }

  else
  {
    v24 = 1;
  }

  if ((a13 & 4) != 0)
  {
    v23 = 1;
  }

  if (a5)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (!a5)
  {
    v23 = 0;
  }

  v340 = v23;
  if ((a13 & 1) == 0)
  {
    v26 = 1;
    v27 = a2 >> 3;
    v28 = a9;
    v29 = v327;
    goto LABEL_13;
  }

  v27 = 1;
  if (a2 < 0x10)
  {
    v26 = a2 >> 3;
    v29 = v19;
    v28 = a9;
LABEL_13:
    if (v29 == 1)
    {
      v30 = a2 >> 3;
      bzero(v342, 0x440uLL);
      if (a2 < 0x10)
      {
        v36 = a3;
        v31 = v337;
        v34 = a5;
        v35 = a10;
        v32 = a9;
        v33 = v332;
        v37 = v340;
        if (a4 < 0x10)
        {
          goto LABEL_212;
        }
      }

      else
      {
        v31 = v337;
        v32 = a9;
        v33 = v332;
        if (v19 >= 2)
        {
          v344 = v337;
          if (v337 >= 0x89)
          {
            operator new[]();
          }

          v34 = a5;
          v35 = a10;
          v36 = a3;
          v37 = v340;
          if (v337 >= 1)
          {
            if (v337 == 1)
            {
              v277 = 0;
LABEL_203:
              v282 = &a1[v277 * v30];
              do
              {
                *(&v345 + v277++) = *v282;
                v282 += v30;
              }

              while (v337 != v277);
              goto LABEL_205;
            }

            v277 = v337 & 0x7FFFFFFE;
            v278 = &v346;
            v279 = v277;
            v280 = a1;
            do
            {
              v281 = v280[v30];
              *(v278 - 1) = *v280;
              *v278 = v281;
              v280 += 2 * v30;
              v278 += 2;
              v279 -= 2;
            }

            while (v279);
            if (v277 != v337)
            {
              goto LABEL_203;
            }
          }

LABEL_205:
          a1 = &v345;
          if (a4 >= 0x10)
          {
            goto LABEL_206;
          }

LABEL_212:
          if (v31 < 1)
          {
            goto LABEL_228;
          }

          v284 = 0;
          while (1)
          {
            v285 = &a1[v284];
            v286 = *v285 * v32;
            v287.f64[0] = v285[1] * v32;
            if (v33 >= 2)
            {
              v288 = 0;
              v290 = vdupq_lane_s64(*&v286, 0);
              v291.f64[0] = v285[1] * v32;
              v291.f64[1] = -v287.f64[0];
              v292 = v36 + 1;
              v293 = a7;
              v289 = v34;
              do
              {
                v295 = vcvtq_f64_f32(v292[-1]);
                v296 = vmulq_f64(v291, v295);
                v297 = vmlaq_f64(vextq_s8(v296, v296, 8uLL), v295, v290);
                v298 = vcvtq_f64_f32(*v292);
                v299 = vmulq_f64(v291, v298);
                v294 = vmlaq_f64(vextq_s8(v299, v299, 8uLL), v298, v290);
                if (v289)
                {
                  *v293 = vcvt_f32_f64(vaddq_f64(v297, vmulq_n_f64(vcvtq_f64_f32(*v289), v35)));
                  v294 = vaddq_f64(v294, vmulq_n_f64(vcvtq_f64_f32(v289[v25]), v35));
                }

                else
                {
                  *v293 = vcvt_f32_f64(v297);
                }

                v288 += 2;
                v293[1] = vcvt_f32_f64(v294);
                v289 += 2 * v25;
                v293 += 2;
                v292 += 2;
              }

              while (v288 <= (v33 - 2));
              v288 = v288;
              if (v288 < v332)
              {
LABEL_224:
                v300 = vdupq_lane_s64(*&v286, 0);
                do
                {
                  v301 = vcvtq_f64_f32(v36[v288]);
                  v287.f64[1] = -v287.f64[0];
                  v302 = vmulq_f64(v287, v301);
                  v303 = vmlaq_f64(vextq_s8(v302, v302, 8uLL), v301, v300);
                  if (v289)
                  {
                    v303 = vaddq_f64(v303, vmulq_n_f64(vcvtq_f64_f32(*v289), v35));
                  }

                  a7[v288++] = vcvt_f32_f64(v303);
                  v289 += v25;
                }

                while (v332 != v288);
              }
            }

            else
            {
              v288 = 0;
              v289 = v34;
              if (v332 > 0)
              {
                goto LABEL_224;
              }
            }

            ++v284;
            v34 += v37;
            a7 += v334;
            if (v284 == v31)
            {
              goto LABEL_228;
            }
          }
        }

        v34 = a5;
        v35 = a10;
        v36 = a3;
        v37 = v340;
        if (a4 < 0x10)
        {
          goto LABEL_212;
        }
      }

LABEL_206:
      if (v33 > 0x88)
      {
        operator new[]();
      }

      if (v332 >= 1)
      {
        v283 = 0;
        do
        {
          v342[v283++] = *v36;
          v36 += a4 >> 3;
        }

        while (v33 != v283);
      }

      v36 = v342;
      goto LABEL_212;
    }

    v38 = 0;
    LODWORD(v19) = v29;
    v21 = v26;
    v39 = v337;
    v40 = a10;
    v41 = v332;
    v338 = 0;
    if ((a13 & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_145;
  }

  v28 = a9;
  v38 = &v345;
  if (v19 < 2)
  {
    v26 = a2 >> 3;
    v29 = v19;
    goto LABEL_13;
  }

  v344 = v19;
  if (v19 >= 0x89)
  {
    operator new[]();
  }

  v27 = 1;
  v39 = v337;
  v40 = a10;
  v41 = v332;
  if ((a13 & 2) == 0)
  {
LABEL_27:
    if (8 * v41 <= 0x640)
    {
      if (v39 < 1)
      {
        goto LABEL_228;
      }

      v42 = 0;
      if (v38)
      {
        v43 = v19 < 1;
      }

      else
      {
        v43 = 1;
      }

      v44 = v43;
      v45 = 8 * v27;
      v47 = v19 < 4 || v21 != 1;
      v48 = 8 * v21;
      v49 = 8 * v22;
LABEL_43:
      if (v38)
      {
        v50 = v38;
      }

      else
      {
        v50 = a1;
      }

      if ((v44 & 1) == 0)
      {
        v51 = 0;
        if (v47)
        {
          goto LABEL_50;
        }

        do
        {
          v52 = (v38 + v51);
          v53 = *(a1 + v51 + 16);
          *v52 = *(a1 + v51);
          v52[1] = v53;
          v51 += 32;
        }

        while (32 * ((v19 >> 2) & 0x1FFFFFFF) != v51);
        v51 = v19 & 0x7FFFFFFC;
        v50 = v38;
        if (v51 != v19)
        {
LABEL_50:
          v54 = v48 * v51;
          do
          {
            v38[v51++] = *(a1 + v54);
            v54 += v48;
          }

          while (v19 != v51);
          v50 = v38;
        }
      }

      if (v41 < 4)
      {
        v55 = 0;
        v56 = a5;
        v57 = a5;
        if (v332 > 0)
        {
          goto LABEL_66;
        }

        goto LABEL_42;
      }

      v55 = 0;
      v58 = a3;
      v56 = a5;
      v57 = a5;
      while (1)
      {
        v64 = 0uLL;
        if (v19 < 1)
        {
          v59 = 0uLL;
          v60 = vmulq_n_f64(0, v28);
          v61 = &a7[v55];
          v62 = v60;
          if (!v57)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v65 = v50 + 1;
          v66 = v58;
          v67 = v19;
          v59 = 0uLL;
          v68 = 0uLL;
          v69 = 0uLL;
          do
          {
            v70.f64[0] = *v65;
            v71 = *v66[1].f32;
            v72 = vcvt_hight_f64_f32(v71);
            v73.i64[1] = *&v72.f64[1];
            *v73.i64 = v70.f64[0];
            v70.f64[1] = -v70.f64[0];
            v74 = *(v65 - 1);
            v75 = vcvtq_f64_f32(*v66);
            v76 = vmulq_f64(v70, v75);
            v77 = vcvtq_f64_f32(*v71.f32);
            v78 = vmlaq_n_f64(vextq_s8(v76, v76, 8uLL), v75, v74);
            v79 = vmulq_f64(vextq_s8(v73, v73, 8uLL), vextq_s8(v70, v72, 8uLL));
            v80 = vmulq_f64(v77, v70);
            v69 = vaddq_f64(v69, v78);
            v68 = vaddq_f64(v68, vmlaq_n_f64(v79, v72, v74));
            v81 = vcvtq_f64_f32(v66[3]);
            v82 = vmulq_f64(v70, v81);
            v59 = vaddq_f64(v59, vmlaq_n_f64(vextq_s8(v80, v80, 8uLL), v77, v74));
            v64 = vaddq_f64(v64, vmlaq_n_f64(vextq_s8(v82, v82, 8uLL), v81, v74));
            v66 = (v66 + v49);
            v65 += 2;
            --v67;
          }

          while (v67);
          v60 = vmulq_n_f64(v69, v28);
          v61 = &a7[v55];
          v62 = vmulq_n_f64(v68, v28);
          if (!v57)
          {
LABEL_64:
            *v61 = vcvt_f32_f64(v60);
            *v61[1].f32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v59, v28)), v62);
            v63 = vmulq_n_f64(v64, v28);
            goto LABEL_59;
          }
        }

        *v61 = vcvt_f32_f64(vaddq_f64(v60, vmulq_n_f64(vcvtq_f64_f32(*v57), v40)));
        v61[1] = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(v59, v28), vmulq_n_f64(vcvtq_f64_f32(v57[v25]), v40)));
        v61[2] = vcvt_f32_f64(vaddq_f64(v62, vmulq_n_f64(vcvtq_f64_f32(v57[2 * v25]), v40)));
        v63 = vaddq_f64(vmulq_n_f64(v64, v28), vmulq_n_f64(vcvtq_f64_f32(v57[3 * v25]), v40));
LABEL_59:
        v61[3] = vcvt_f32_f64(v63);
        v55 += 4;
        v57 += 4 * v25;
        v58 += 4;
        if (v55 > (v41 - 4))
        {
          v55 = v55;
          if (v55 < v332)
          {
LABEL_66:
            v83 = v50 + 1;
            v84 = &a3[v55];
            do
            {
              v85 = 0uLL;
              if (v19 >= 1)
              {
                v86 = v84;
                v87 = v83;
                v88 = v19;
                do
                {
                  v89.f64[0] = *v87;
                  v90 = vcvtq_f64_f32(*v86);
                  v89.f64[1] = -v89.f64[0];
                  v91 = vmulq_f64(v89, v90);
                  v85 = vaddq_f64(v85, vmlaq_n_f64(vextq_s8(v91, v91, 8uLL), v90, *(v87 - 1)));
                  v87 += 2;
                  v86 = (v86 + v49);
                  --v88;
                }

                while (v88);
              }

              v92 = vmulq_n_f64(v85, v28);
              if (v57)
              {
                v92 = vaddq_f64(v92, vmulq_n_f64(vcvtq_f64_f32(*v57), v40));
              }

              a7[v55++] = vcvt_f32_f64(v92);
              v57 += v25;
              ++v84;
            }

            while (v55 != v332);
          }

LABEL_42:
          ++v42;
          a1 = (a1 + v45);
          v38 = v338;
          a5 = &v56[v340];
          a7 += v334;
          if (v42 == v337)
          {
            goto LABEL_228;
          }

          goto LABEL_43;
        }
      }
    }

    v325 = v21;
    v328 = v22;
    bzero(v342, 0x480uLL);
    if (v332 >= 0x49)
    {
      operator new[]();
    }

    v93 = v337;
    v94 = v338;
    v95 = a10;
    v96 = a9;
    if (v337 < 1)
    {
      goto LABEL_228;
    }

    v97 = a5;
    v98 = 0;
    v99 = v332 - 4;
    if (v338)
    {
      v100 = v19 < 1;
    }

    else
    {
      v100 = 1;
    }

    v101 = v100;
    v324 = v101;
    v102 = 3;
    if (v99 > 3)
    {
      v102 = v332 - 4;
    }

    v103 = (v102 >> 2) + 1;
    v104 = v103 & 0x3FFFFFFE;
    v105 = 4 * v104;
    v318 = 8 * v325;
    v106 = 8 * v328;
    v323 = 8 * v334;
    v108 = v19 < 4 || v325 != 1;
    v319 = v108;
    v321 = 4 * (v103 & 0x3FFFFFFE);
    v322 = v340;
    v109 = 8 * v25;
    v320 = v109;
    while (1)
    {
      if (v94)
      {
        v110 = v94;
      }

      else
      {
        v110 = a1;
      }

      v335 = v97;
      if ((v324 & 1) == 0)
      {
        if (v319)
        {
          v111 = 0;
LABEL_101:
          v115 = v318 * v111;
          do
          {
            v94[v111++] = *(a1 + v115);
            v115 += v318;
          }

          while (v19 != v111);
          v110 = v94;
          goto LABEL_104;
        }

        v112 = 0;
        do
        {
          v113 = &v94[v112];
          v114 = *&a1[v112 + 2];
          *v113 = *&a1[v112];
          *(v113 + 1) = v114;
          v112 += 4;
        }

        while (4 * ((v19 >> 2) & 0x1FFFFFFF) != v112);
        v111 = v19 & 0x7FFFFFFC;
        v110 = v94;
        if (v111 != v19)
        {
          goto LABEL_101;
        }
      }

LABEL_104:
      v341 = v110;
      if (v332 >= 1)
      {
        v326 = v98;
        v329 = a1;
        v116 = v103;
        v117 = v104;
        bzero(v342, 16 * v332);
        v94 = v338;
        v110 = v341;
        v105 = v321;
        v104 = v117;
        v109 = v320;
        v103 = v116;
        a1 = v329;
        v98 = v326;
        v95 = a10;
        v96 = a9;
        v93 = v337;
      }

      if (v19 >= 1)
      {
        v118 = 0;
        v119 = &a3[3] + 4;
        v120 = a3;
        while (1)
        {
          v121 = vcvtq_f64_f32(v110[v118]);
          if (v332 < 4)
          {
            v122 = 0;
            if (v332 <= 0)
            {
              goto LABEL_108;
            }

            goto LABEL_120;
          }

          if (v99 <= 3)
          {
            break;
          }

          v124 = vdupq_laneq_s64(v121, 1);
          v125 = vdupq_lane_s64(*&v121.f64[0], 0);
          v126 = v104;
          v127 = v120;
          v128 = v342;
          do
          {
            v129 = *v127[2].f32;
            v131 = *v127[4].f32;
            v130 = *v127[6].f32;
            v132 = vzip2_s32(*v129.i8, *v130.i8);
            v133 = vuzp2q_s32(vuzp2q_s32(v129, v130), v129).u64[0];
            v134 = vzip1_s32(*v129.i8, *v130.i8);
            v136 = v128[6];
            v135 = v128[7];
            v138 = v128[2];
            v137 = v128[3];
            v129.i64[0] = vzip2q_s32(v129, v130).u64[0];
            v139 = v128[4];
            v140 = v128[5];
            v141 = v128[1];
            v142 = vzip1q_s64(*v128, v139);
            v143 = vcvtq_f64_f32(vzip1_s32(*v127, *v131.i8));
            v144 = vzip1q_s64(v141, v140);
            v145 = vzip2q_s64(v141, v140);
            v146 = vzip1q_s64(v138, v136);
            v147 = vzip2q_s64(v138, v136);
            v148 = vzip1q_s64(v137, v135);
            v149 = vcvtq_f64_f32(vzip2_s32(*v127, *v131.i8));
            v150 = vzip2q_s64(v137, v135);
            v151 = vmlaq_f64(vmulq_laneq_f64(vnegq_f64(v149), v121, 1), v125, v143);
            v152 = vaddq_f64(vzip2q_s64(*v128, v139), vmlaq_f64(vmulq_n_f64(v149, v121.f64[0]), v124, v143));
            v153 = vcvtq_f64_f32(*&vzip2q_s32(*v127->f32, v131));
            v154 = vcvtq_f64_f32(*&vuzp2q_s32(vuzp2q_s32(*v127->f32, v131), *v127->f32));
            v155 = vaddq_f64(v142, v151);
            v156 = vmlaq_f64(vmulq_laneq_f64(vnegq_f64(v154), v121, 1), v125, v153);
            v157 = vmlaq_f64(vmulq_n_f64(v154, v121.f64[0]), v124, v153);
            v158 = vcvtq_f64_f32(v134);
            v159 = vcvtq_f64_f32(v132);
            v160 = vaddq_f64(v145, v157);
            v161 = vmlaq_f64(vmulq_laneq_f64(vnegq_f64(v159), v121, 1), v125, v158);
            v162 = vmlaq_f64(vmulq_n_f64(v159, v121.f64[0]), v124, v158);
            v163 = vaddq_f64(v146, v161);
            v164 = vaddq_f64(v147, v162);
            v165 = vcvtq_f64_f32(*v129.i8);
            v166 = vcvtq_f64_f32(v133);
            v167 = vaddq_f64(v144, v156);
            v168 = vmlaq_f64(vmulq_laneq_f64(vnegq_f64(v166), v121, 1), v125, v165);
            v169 = vmlaq_f64(vmulq_n_f64(v166, v121.f64[0]), v124, v165);
            v170 = vaddq_f64(v148, v168);
            v171 = vaddq_f64(v150, v169);
            v128[6] = vzip2q_s64(v163, v164);
            v128[7] = vzip2q_s64(v170, v171);
            v128[4] = vzip2q_s64(v155, v152);
            v128[5] = vzip2q_s64(v167, v160);
            v128[2] = vzip1q_s64(v163, v164);
            v128[3] = vzip1q_s64(v170, v171);
            *v128 = vzip1q_s64(v155, v152);
            v128[1] = vzip1q_s64(v167, v160);
            v128 += 8;
            v127 += 8;
            v126 -= 2;
          }

          while (v126);
          v123 = v105;
          if (v103 != v104)
          {
            goto LABEL_117;
          }

LABEL_119:
          v122 = v123;
          if (v123 >= v332)
          {
            goto LABEL_108;
          }

LABEL_120:
          v186 = v332 - v122;
          if (v186 > 1)
          {
            v188 = vdupq_laneq_s64(v121, 1);
            v187 = (v186 & 0xFFFFFFFFFFFFFFFELL) + v122;
            v189 = vdupq_lane_s64(*&v121.f64[0], 0);
            v190 = v122;
            v191 = &v342[2 * v122];
            v192 = v186 & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v193 = &v120[v190];
              v347 = vld2_f32(v193);
              v194 = vcvtq_f64_f32(*&v347.f64[0]);
              v347 = vcvtq_f64_f32(*&v347.f64[1]);
              *(&v347 + 8) = vmlaq_f64(vmulq_laneq_f64(vnegq_f64(v347), v121, 1), v189, v194);
              v347 = vmlaq_f64(vmulq_n_f64(v347, v121.f64[0]), v188, v194);
              v354 = vld2q_f64(v191);
              v356.val[0] = vaddq_f64(v354.val[0], *(&v347 + 8));
              v356.val[1] = vaddq_f64(v354.val[1], v347);
              vst2q_f64(v191, v356);
              v191 += 4;
              v190 += 2;
              v192 -= 2;
            }

            while (v192);
            v110 = v341;
            if (v186 == (v186 & 0xFFFFFFFFFFFFFFFELL))
            {
              goto LABEL_108;
            }
          }

          else
          {
            v187 = v122;
          }

          v195 = v332 - v187;
          v196 = v187;
          v197 = &v342[2 * v187];
          do
          {
            v198.f64[0] = v120[v196].f32[1];
            v198.f64[1] = -v198.f64[0];
            v199 = vmulq_f64(v198, v121);
            *v197 = vaddq_f64(*v197, vmlaq_n_f64(vextq_s8(v199, v199, 8uLL), v121, v120[v196].f32[0]));
            ++v197;
            ++v196;
            --v195;
          }

          while (v195);
LABEL_108:
          ++v118;
          v120 = (v120 + v106);
          v119 += v106;
          if (v118 == v19)
          {
            goto LABEL_128;
          }
        }

        v123 = 0;
LABEL_117:
        v172 = 8 * v123;
        v173 = v119;
        v174 = &v342[2 * v123 + 4];
        do
        {
          v175.f64[0] = *&v173[v172 - 24];
          v176.f64[0] = *&v173[v172 - 16];
          v175.f64[1] = -v175.f64[0];
          v177 = vmulq_f64(v175, v121);
          v176.f64[1] = -v176.f64[0];
          v178 = vmulq_f64(v176, v121);
          v179.f64[0] = *&v173[v172 - 8];
          v180.f64[0] = *&v173[v172];
          v179.f64[1] = -v179.f64[0];
          v181 = vmulq_f64(v179, v121);
          v182 = vaddq_f64(v174[-1], vmlaq_n_f64(vextq_s8(v178, v178, 8uLL), v121, *&v173[v172 - 20]));
          v180.f64[1] = -v180.f64[0];
          v183 = vaddq_f64(*v174, vmlaq_n_f64(vextq_s8(v181, v181, 8uLL), v121, *&v173[v172 - 12]));
          v184 = vmulq_f64(v180, v121);
          v185 = vaddq_f64(v174[1], vmlaq_n_f64(vextq_s8(v184, v184, 8uLL), v121, *&v173[v172 - 4]));
          v174[-2] = vaddq_f64(v174[-2], vmlaq_n_f64(vextq_s8(v177, v177, 8uLL), v121, *&v173[v172 - 28]));
          v174[-1] = v182;
          *v174 = v183;
          v174[1] = v185;
          v174 += 4;
          v123 += 4;
          v173 += 32;
        }

        while (v123 <= v99);
        goto LABEL_119;
      }

LABEL_128:
      if (v335)
      {
        if (v332 >= 1)
        {
          v200 = 0;
          v201 = v335;
          do
          {
            a7[v200] = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(*&v342[2 * v200], v96), vmulq_n_f64(vcvtq_f64_f32(*v201), v95)));
            ++v200;
            v201 = (v201 + v109);
          }

          while (v332 != v200);
        }

        goto LABEL_91;
      }

      if (v332 >= 1)
      {
        if (v332 >= 4)
        {
          v203 = 0;
          v204 = v342;
          do
          {
            v205 = v204;
            v352 = vld2q_f64(v205);
            v205 += 4;
            v353 = vld2q_f64(v205);
            v355.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v352.val[0], v96)), vmulq_n_f64(v353.val[0], v96));
            v355.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v352.val[1], v96)), vmulq_n_f64(v353.val[1], v96));
            v206 = &a7[v203];
            vst2q_f32(v206, v355);
            v203 += 4;
            v204 += 8;
          }

          while (4 * ((v332 >> 2) & 0x1FFFFFFF) != v203);
          v202 = v332 & 0x7FFFFFFC;
          if (v202 == v332)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v202 = 0;
        }

        do
        {
          a7[v202] = vcvt_f32_f64(vmulq_n_f64(*&v342[2 * v202], v96));
          ++v202;
        }

        while (v332 != v202);
      }

LABEL_91:
      ++v98;
      a1 += v27;
      v97 = &v335[v322];
      a7 = (a7 + v323);
      if (v98 == v93)
      {
        goto LABEL_228;
      }
    }
  }

LABEL_145:
  if (v39 < 1)
  {
    goto LABEL_228;
  }

  if (v38)
  {
    v207 = v19 < 1;
  }

  else
  {
    v207 = 1;
  }

  v208 = v207;
  if (v41 < 1)
  {
    if (v208)
    {
      goto LABEL_228;
    }

    if (v19 < 4)
    {
      do
      {
        v276 = a1;
        v38[1] = a1[v21];
        if (v19 != 2)
        {
          v38[2] = a1[2 * v21];
        }

        a1 += v27;
        --v39;
      }

      while (v39);
      *v38 = *v276;
      goto LABEL_228;
    }

    v306 = 0;
    v307 = (a1 + 2);
    v308 = 8 * v27;
    v309 = 8 * v21;
    while (1)
    {
      if (v21 == 1)
      {
        v310 = v19 & 0x7FFFFFFC;
        v311 = v38 + 2;
        v312 = v307;
        do
        {
          v313 = *v312;
          *(v311 - 1) = *(v312 - 1);
          *v311 = v313;
          v312 += 2;
          v311 += 2;
          v310 -= 4;
        }

        while (v310);
        v314 = v19 & 0x7FFFFFFC;
        if (v314 == v19)
        {
          goto LABEL_235;
        }
      }

      else
      {
        v314 = 0;
      }

      v315 = v19 - v314;
      v316 = &v38[v314];
      v317 = v309 * v314;
      do
      {
        *v316++ = *(a1 + v317);
        v317 += v309;
        --v315;
      }

      while (v315);
LABEL_235:
      ++v306;
      v307 = (v307 + v308);
      a1 = (a1 + v308);
      if (v306 == v39)
      {
        goto LABEL_228;
      }
    }
  }

  v209 = 0;
  v210 = 8 * v27;
  v212 = v19 < 4 || v21 != 1;
  v333 = v212;
  v213 = 8 * v21;
  v214 = 8 * v22;
  while (2)
  {
    if (v38)
    {
      v215 = v38;
    }

    else
    {
      v215 = a1;
    }

    if (v208)
    {
      v216 = a5;
    }

    else
    {
      if (v333)
      {
        v216 = a5;
        v217 = 0;
      }

      else
      {
        v218 = 0;
        do
        {
          v219 = &v38[v218];
          v220 = *&a1[v218 + 2];
          *v219 = *&a1[v218];
          *(v219 + 1) = v220;
          v218 += 4;
        }

        while (4 * ((v19 >> 2) & 0x1FFFFFFF) != v218);
        v216 = a5;
        v217 = v19 & 0x7FFFFFFC;
        v215 = v38;
        if (v217 == v19)
        {
          goto LABEL_174;
        }
      }

      v221 = v213 * v217;
      do
      {
        v38[v217++] = *(a1 + v221);
        v221 += v213;
      }

      while (v19 != v217);
      v215 = v38;
    }

LABEL_174:
    v222 = 0;
    v223 = (v215 + 2);
    v224 = v215 + 4;
    v225 = a3;
    v226 = &a3[2];
    v227 = v216;
    do
    {
      if (v19 >= 4)
      {
        v233 = 0;
        v229 = 0uLL;
        v234 = v223;
        v235 = v226;
        v230 = 0uLL;
        v231 = 0uLL;
        v232 = 0uLL;
        do
        {
          v236.f64[0] = *(v234 - 3);
          v237 = vcvtq_f64_f32(*(v235 - 2));
          v238.f64[0] = *(v234 - 1);
          v239.f64[0] = v234[1];
          v236.f64[1] = -v236.f64[0];
          v240.f64[0] = v234[3];
          v241 = vmulq_f64(v236, v237);
          v242 = vcvtq_f64_f32(*(v235 - 1));
          v238.f64[1] = -v238.f64[0];
          v243 = vmulq_f64(v238, v242);
          v244 = vmlaq_n_f64(vextq_s8(v241, v241, 8uLL), v237, *(v234 - 4));
          v245 = vmlaq_n_f64(vextq_s8(v243, v243, 8uLL), v242, *(v234 - 2));
          v237.f64[0] = *v235;
          v242.f64[0] = v235[1];
          v235 += 4;
          v246 = vcvtq_f64_f32(*&v237.f64[0]);
          v232 = vaddq_f64(v232, v244);
          v239.f64[1] = -v239.f64[0];
          v247 = vmulq_f64(v239, v246);
          v248 = vmlaq_n_f64(vextq_s8(v247, v247, 8uLL), v246, *v234);
          v231 = vaddq_f64(v231, v245);
          v249 = vcvtq_f64_f32(*&v242.f64[0]);
          v240.f64[1] = -v240.f64[0];
          v250 = vmulq_f64(v240, v249);
          v230 = vaddq_f64(v230, v248);
          v229 = vaddq_f64(v229, vmlaq_n_f64(vextq_s8(v250, v250, 8uLL), v249, v234[2]));
          v233 += 4;
          v234 += 8;
        }

        while (v233 <= v19 - 4);
        v228 = ((v19 - 4) & 0xFFFFFFFC) + 4;
        if (v228 >= v19)
        {
          goto LABEL_189;
        }
      }

      else
      {
        v228 = 0;
        v229 = 0uLL;
        v230 = 0uLL;
        v231 = 0uLL;
        v232 = 0uLL;
        if (v19 <= 0)
        {
          goto LABEL_189;
        }
      }

      v251 = v228;
      v252 = (v19 + ~v228);
      if (v252 < 3)
      {
        v253 = v251;
LABEL_187:
        v269 = &v225[v253];
        v270 = &v224[8 * v253];
        do
        {
          v271 = *v269++;
          v272.f64[0] = *v270;
          v273 = vcvtq_f64_f32(v271);
          v272.f64[1] = -v272.f64[0];
          v274 = vmulq_f64(v272, v273);
          v232 = vaddq_f64(v232, vmlaq_n_f64(vextq_s8(v274, v274, 8uLL), v273, *(v270 - 1)));
          LODWORD(v253) = v253 + 1;
          v270 += 2;
        }

        while (v19 > v253);
        goto LABEL_189;
      }

      v254 = v252 + 1;
      v255 = (v252 + 1) & 0x1FFFFFFFCLL;
      v253 = v255 + v251;
      v256 = v232.f64[1];
      v257 = v251;
      v258 = &v223[2 * v251];
      v259 = &v226[v257];
      v260 = v255;
      do
      {
        v261 = v258 - 4;
        v348 = vld2_f32(v261);
        v349 = vld2_f32(v258);
        v262 = vcvtq_f64_f32(*&v348.f64[0]);
        v263 = vcvtq_f64_f32(*&v349.f64[0]);
        v348 = vcvtq_f64_f32(*&v348.f64[1]);
        v264 = v259 - 4;
        v350 = vld2_f32(v264);
        v351 = vld2_f32(v259);
        *(&v348 + 8) = vcvtq_f64_f32(*&v349.f64[1]);
        v349 = vcvtq_f64_f32(*&v350.f64[0]);
        *(&v349 + 8) = vcvtq_f64_f32(v351.val[0]);
        v350 = vcvtq_f64_f32(*&v350.f64[1]);
        *(&v350 + 8) = vcvtq_f64_f32(v351.val[1]);
        v351 = vmlaq_f64(vmulq_f64(vnegq_f64(v348), v350), v349, v262);
        *(&v351 + 8) = vmlaq_f64(vmulq_f64(vnegq_f64(*(&v348 + 8)), *(&v350 + 8)), *(&v349 + 8), v263);
        v348 = vmlaq_f64(vmulq_f64(v348, v349), v350, v262);
        *(&v348 + 8) = vmlaq_f64(vmulq_f64(*(&v348 + 8), *(&v349 + 8)), *(&v350 + 8), v263);
        v256 = v256 + v348.f64[0] + v265 + v348.f64[1] + v266;
        v232.f64[0] = v232.f64[0] + *v351.val + v267 + *&v351.val[1] + v268;
        v258 += 8;
        v259 += 8;
        v260 -= 4;
      }

      while (v260);
      v232.f64[1] = v256;
      if (v254 != v255)
      {
        goto LABEL_187;
      }

LABEL_189:
      v275 = vmulq_n_f64(vaddq_f64(v229, vaddq_f64(v230, vaddq_f64(v231, v232))), v28);
      if (v227)
      {
        v275 = vaddq_f64(v275, vmulq_n_f64(vcvtq_f64_f32(*v227), v40));
      }

      a7[v222++] = vcvt_f32_f64(v275);
      v227 += v25;
      v226 = (v226 + v214);
      v225 = (v225 + v214);
    }

    while (v222 != v20);
    ++v209;
    a1 = (a1 + v210);
    v38 = v338;
    a5 = &v216[v340];
    a7 += v334;
    if (v209 != v337)
    {
      continue;
    }

    break;
  }

LABEL_228:
  result = v343;
  if (v343 != &v345 && v343 != 0)
  {
    operator delete[]();
  }

  return result;
}

void sub_10025A334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (STACK[0x578] != a15)
  {
    if (STACK[0x578])
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_10025A398(void *a1, unint64_t a2, float32x2_t *a3, unint64_t a4, uint64_t a5, unint64_t a6, unsigned int *a7, int *a8, char a9)
{
  v14 = *a7;
  v15 = a7[1];
  v200 = *a8;
  v196 = a8[1];
  bzero(v202, 0x440uLL);
  v16 = a2 >> 3;
  if (a9)
  {
    if (v15 >= 0x89)
    {
      operator new[]();
    }

    v18 = 1;
    v17 = v202;
  }

  else
  {
    v17 = 0;
    v15 = v14;
    v18 = v16;
    v16 = 1;
  }

  v19 = v200;
  v20 = v200;
  v21 = a4 >> 3;
  v22 = a6 >> 4;
  v23 = v196;
  v195 = a6 >> 4;
  if ((a9 & 2) == 0)
  {
    if (v196 < 1)
    {
      return v202;
    }

    v24 = 0;
    if (v17)
    {
      v25 = v15 < 1;
    }

    else
    {
      v25 = 1;
    }

    v26 = v25;
    v27 = 8 * v18;
    v28 = v15 & 0x7FFFFFFC;
    v29 = 32 * ((v15 >> 2) & 0x1FFFFFFF);
    v31 = v15 < 4 || v16 != 1;
    v32 = 8 * v16;
    v33 = a3 + 2;
    v34 = 8 * v21;
    v193 = v26;
    v191 = v27;
    v189 = v31;
    while (1)
    {
      if (v17)
      {
        v35 = v17;
      }

      else
      {
        v35 = a1;
      }

      if (v26)
      {
        goto LABEL_34;
      }

      if (v31)
      {
        v36 = 0;
      }

      else
      {
        v37 = 0;
        do
        {
          v38 = &v17[v37 / 8];
          v39 = *&a1[v37 / 8 + 2];
          *v38 = *&a1[v37 / 8];
          v38[1] = v39;
          v37 += 32;
        }

        while (v29 != v37);
        v36 = v28;
        v35 = v17;
        if (v28 == v15)
        {
          goto LABEL_34;
        }
      }

      v40 = v32 * v36;
      do
      {
        v17[v36++] = *(a1 + v40);
        v40 += v32;
      }

      while (v15 != v36);
      v35 = v17;
LABEL_34:
      if (v19 >= 4)
      {
        v41 = 0;
        v52 = v33;
        do
        {
          v53 = 0uLL;
          v54 = (a5 + 16 * v41);
          v55 = 0uLL;
          v56 = 0uLL;
          v57 = 0uLL;
          if ((a9 & 0x10) != 0)
          {
            v53 = *v54;
            v55 = v54[1];
            v56 = v54[2];
            v57 = v54[3];
          }

          if (v15 >= 1)
          {
            v58 = v35 + 1;
            v59 = v52;
            v60 = v15;
            do
            {
              v61.f64[0] = *v58;
              v62 = *(v58 - 1);
              v61.f64[1] = -v61.f64[0];
              v63 = vcvtq_f64_f32(v59[-2]);
              v64 = vmulq_f64(v61, v63);
              v65 = vmlaq_n_f64(vextq_s8(v64, v64, 8uLL), v63, v62);
              v66 = vcvtq_f64_f32(v59[-1]);
              v67 = vmulq_f64(v61, v66);
              v53 = vaddq_f64(v53, v65);
              v68 = vmlaq_n_f64(vextq_s8(v67, v67, 8uLL), v66, v62);
              v69 = vcvtq_f64_f32(*v59);
              v55 = vaddq_f64(v55, v68);
              v70 = vmulq_f64(v61, v69);
              v71 = vmlaq_n_f64(vextq_s8(v70, v70, 8uLL), v69, v62);
              v72 = vcvtq_f64_f32(v59[1]);
              v73 = vmulq_f64(v61, v72);
              v56 = vaddq_f64(v56, v71);
              v57 = vaddq_f64(v57, vmlaq_n_f64(vextq_s8(v73, v73, 8uLL), v72, v62));
              v59 = (v59 + v34);
              v58 += 2;
              --v60;
            }

            while (v60);
          }

          *v54 = v53;
          v54[1] = v55;
          v54[2] = v56;
          v54[3] = v57;
          v41 += 4;
          v52 += 4;
        }

        while (v41 <= v200 - 4);
      }

      else
      {
        LODWORD(v41) = 0;
      }

      if (v41 < v200)
      {
        v42 = v41;
        if (v15 < 1)
        {
          if ((a9 & 0x10) == 0)
          {
            v198 = v24;
            bzero((a5 + 16 * v41), 16 * (v200 + ~v41) + 16);
            v33 = a3 + 2;
            v31 = v189;
            v29 = 32 * ((v15 >> 2) & 0x1FFFFFFF);
            v28 = v15 & 0x7FFFFFFC;
            v27 = v191;
            v26 = v193;
            v24 = v198;
            v19 = v200;
            v22 = a6 >> 4;
            v23 = v196;
          }
        }

        else
        {
          v43 = v35 + 1;
          v44 = &a3[v41];
          do
          {
            v45 = 0uLL;
            if ((a9 & 0x10) != 0)
            {
              v45 = *(a5 + 16 * v42);
            }

            v46 = v44;
            v47 = v43;
            v48 = v15;
            do
            {
              v49.f64[0] = *v47;
              v50 = vcvtq_f64_f32(*v46);
              v49.f64[1] = -v49.f64[0];
              v51 = vmulq_f64(v49, v50);
              v45 = vaddq_f64(v45, vmlaq_n_f64(vextq_s8(v51, v51, 8uLL), v50, *(v47 - 1)));
              v47 += 2;
              v46 = (v46 + v34);
              --v48;
            }

            while (v48);
            *(a5 + 16 * v42++) = v45;
            ++v44;
          }

          while (v42 != v200);
        }
      }

      ++v24;
      a1 = (a1 + v27);
      a5 += 16 * v22;
      if (v24 == v23)
      {
        return v202;
      }
    }
  }

  if (v196 < 1)
  {
    return v202;
  }

  if (v17)
  {
    v74 = v15 < 1;
  }

  else
  {
    v74 = 1;
  }

  v75 = v74;
  if (v200 < 1)
  {
    if ((v75 & 1) == 0)
    {
      if (v15 > 3)
      {
        if (v16 == 1)
        {
          if (v15 == (v15 & 0x7FFFFFFC))
          {
            v165 = 0;
            v166 = (a1 + 2);
            do
            {
              v167 = v166;
              v168 = v17 + 2;
              v169 = v15 & 0x7FFFFFFC;
              do
              {
                v170 = *v167;
                *(v168 - 1) = *(v167 - 1);
                *v168 = v170;
                v168 += 2;
                v167 += 2;
                v169 -= 4;
              }

              while (v169);
              ++v165;
              v166 = (v166 + 8 * v18);
            }

            while (v165 != v196);
          }

          else
          {
            v175 = 0;
            v176 = (a1 + 2);
            v177 = 8 * v18;
            v178 = (v15 >> 2) & 0x1FFFFFFF;
            v179 = &v17[4 * v178];
            v180 = &a1[4 * v178];
            do
            {
              v181 = v176;
              v182 = v17 + 2;
              v183 = v15 & 0x7FFFFFFC;
              do
              {
                v184 = *v181;
                *(v182 - 1) = *(v181 - 1);
                *v182 = v184;
                v182 += 2;
                v181 += 2;
                v183 -= 4;
              }

              while (v183);
              v185 = v180;
              v186 = v179;
              v187 = v15 - (v15 & 0x7FFFFFFC);
              do
              {
                *v186++ = *v185++;
                --v187;
              }

              while (v187);
              ++v175;
              v176 = (v176 + v177);
              v180 = (v180 + v177);
            }

            while (v175 != v196);
          }
        }

        else
        {
          for (i = 0; i != v196; ++i)
          {
            v172 = a1;
            v173 = v17;
            v174 = v15;
            do
            {
              *v173++ = *v172;
              v172 += v16;
              --v174;
            }

            while (v174);
            a1 += v18;
          }
        }
      }

      else
      {
        do
        {
          v164 = a1;
          if (v15 != 1)
          {
            v17[1] = a1[v16];
            if (v15 != 2)
            {
              v17[2] = a1[2 * v16];
            }
          }

          a1 += v18;
          --v23;
        }

        while (v23);
        *v17 = *v164;
      }
    }

    return v202;
  }

  v76 = 0;
  v77 = (v15 - 2);
  if (v77 <= 1)
  {
    v78 = 1;
  }

  else
  {
    v78 = (v15 - 2);
  }

  v201 = (v78 >> 1) + 1;
  v192 = 8 * v18;
  v80 = v15 < 4 || v16 != 1;
  v190 = v80;
  v81 = 8 * v16;
  v82 = 8 * v21;
  v194 = v75;
  while (2)
  {
    if (v17)
    {
      v83 = v17;
    }

    else
    {
      v83 = a1;
    }

    v199 = v76;
    if (v75)
    {
      goto LABEL_86;
    }

    if (v190)
    {
      v84 = 0;
    }

    else
    {
      v85 = 0;
      do
      {
        v86 = &v17[v85];
        v87 = *&a1[v85 + 2];
        *v86 = *&a1[v85];
        v86[1] = v87;
        v85 += 4;
      }

      while (4 * ((v15 >> 2) & 0x1FFFFFFF) != v85);
      v84 = v15 & 0x7FFFFFFC;
      v83 = v17;
      if (v84 == v15)
      {
        goto LABEL_86;
      }
    }

    v88 = v81 * v84;
    do
    {
      v17[v84++] = *(a1 + v88);
      v88 += v81;
    }

    while (v15 != v84);
    v83 = v17;
LABEL_86:
    v89 = 0;
    v90 = (v83 + 4);
    v91 = v83 + 1;
    v92 = v83 + 2;
    v93 = v83 + 4;
    v95 = a3 + 2;
    v94 = &a3[4];
    v96 = a3;
    do
    {
      v97 = 0uLL;
      v98 = 0uLL;
      if ((a9 & 0x10) != 0)
      {
        v98 = *(a5 + 16 * v89);
      }

      if (v15 < 2)
      {
        v99 = 0;
        goto LABEL_100;
      }

      if (v77 < 6)
      {
        v100 = 0;
LABEL_97:
        v126 = &v96[v100];
        v127 = &v91[v100];
        do
        {
          v128 = *(v127 - 2);
          v129.f64[0] = *(v127 - 1);
          v130 = *v127;
          v131 = v127[1];
          v127 += 4;
          v132.f64[0] = v131;
          v129.f64[1] = -v129.f64[0];
          v133 = *v126;
          v134 = v126[1];
          v126 += 2;
          v135 = vcvtq_f64_f32(v133);
          v136 = vmulq_f64(v129, v135);
          v137 = vmlaq_n_f64(vextq_s8(v136, v136, 8uLL), v135, v128);
          v138 = vcvtq_f64_f32(v134);
          v132.f64[1] = -v132.f64[0];
          v139 = vmulq_f64(v132, v138);
          v98 = vaddq_f64(v98, v137);
          v97 = vaddq_f64(v97, vmlaq_n_f64(vextq_s8(v139, v139, 8uLL), v138, v130));
          v100 += 2;
        }

        while (v100 <= v77);
        v99 = ((v15 - 2) & 0xFFFFFFFE) + 2;
        goto LABEL_100;
      }

      v101 = v98.f64[1];
      v102 = 0.0;
      v103 = v201 & 0x7FFFFFFC;
      v104 = v94;
      v105 = v90;
      v97.f64[0] = 0.0;
      do
      {
        v106 = v105 - 8;
        v207 = vld4_f32(v106);
        v107 = v104 - 8;
        v208 = vld4_f32(v107);
        v209 = vld4_f32(v105);
        v210 = vld4_f32(v104);
        v108 = vcvtq_f64_f32(v207.val[0]);
        v109 = vcvtq_f64_f32(v209.val[0]);
        v110 = vcvtq_f64_f32(v207.val[1]);
        v111 = vcvtq_f64_f32(v209.val[1]);
        v112 = vcvtq_f64_f32(v208.val[0]);
        v113 = vcvtq_f64_f32(v210.val[0]);
        v114 = vcvtq_f64_f32(v208.val[1]);
        v115 = vcvtq_f64_f32(v210.val[1]);
        v116 = vmlaq_f64(vmulq_f64(vnegq_f64(v111), v115), v113, v109);
        v117 = vmlaq_f64(vmulq_f64(vnegq_f64(v110), v114), v112, v108);
        v118 = vmlaq_f64(vmulq_f64(v110, v112), v114, v108);
        v119 = vmlaq_f64(vmulq_f64(v111, v113), v115, v109);
        v120 = vcvtq_f64_f32(v207.val[2]);
        v121 = vcvtq_f64_f32(v209.val[2]);
        *v207.val[0].f32 = vcvtq_f64_f32(v207.val[3]);
        *v207.val[1].f32 = vcvtq_f64_f32(v209.val[3]);
        *v207.val[2].f32 = vcvtq_f64_f32(v208.val[2]);
        *v207.val[3].f32 = vcvtq_f64_f32(v210.val[2]);
        *v208.val[0].f32 = vcvtq_f64_f32(v208.val[3]);
        *v208.val[2].f32 = vcvtq_f64_f32(v210.val[3]);
        *v208.val[3].f32 = vmlaq_f64(vmulq_f64(vnegq_f64(*v207.val[0].f32), *v208.val[0].f32), *v207.val[2].f32, v120);
        *v209.val[0].f32 = vmlaq_f64(vmulq_f64(vnegq_f64(*v207.val[1].f32), *v208.val[2].f32), *v207.val[3].f32, v121);
        *v207.val[0].f32 = vmlaq_f64(vmulq_f64(*v207.val[0].f32, *v207.val[2].f32), *v208.val[0].f32, v120);
        *v207.val[1].f32 = vmlaq_f64(vmulq_f64(*v207.val[1].f32, *v207.val[3].f32), *v208.val[2].f32, v121);
        v101 = v101 + v118.f64[0] + v118.f64[1] + v119.f64[0] + v119.f64[1];
        v102 = v102 + *v207.val + v122 + *&v207.val[1] + v123;
        v98.f64[0] = v98.f64[0] + v117.f64[0] + v117.f64[1] + v116.f64[0] + v116.f64[1];
        v97.f64[0] = v97.f64[0] + *&v208.val[3] + v124 + *v209.val + v125;
        v105 += 16;
        v104 += 16;
        v103 -= 4;
      }

      while (v103);
      v97.f64[1] = v102;
      v98.f64[1] = v101;
      v100 = 2 * (v201 & 0x7FFFFFFC);
      v99 = ((v15 - 2) & 0xFFFFFFFE) + 2;
      if (v201 != (v201 & 0x7FFFFFFC))
      {
        goto LABEL_97;
      }

LABEL_100:
      if (v99 >= v15)
      {
        goto LABEL_87;
      }

      v140 = v99;
      v141 = v15 + ~v99;
      if (v141 < 3)
      {
        v142 = v140;
LABEL_106:
        v158 = &v96[v142];
        v159 = &v93[8 * v142];
        do
        {
          v160.f64[0] = *v159;
          v161 = *v158++;
          v162 = vcvtq_f64_f32(v161);
          v160.f64[1] = -v160.f64[0];
          v163 = vmulq_f64(v160, v162);
          v98 = vaddq_f64(v98, vmlaq_n_f64(vextq_s8(v163, v163, 8uLL), v162, *(v159 - 1)));
          LODWORD(v142) = v142 + 1;
          v159 += 2;
        }

        while (v15 > v142);
        goto LABEL_87;
      }

      v143 = v141 + 1;
      v144 = (v141 + 1) & 0x1FFFFFFFCLL;
      v142 = v144 + v140;
      v145 = v98.f64[1];
      v146 = v140;
      v147 = &v92[v146];
      v148 = &v95[v146];
      v149 = v144;
      do
      {
        v150 = v147 - 4;
        v203 = vld2_f32(v150);
        v204 = vld2_f32(v147);
        v151 = vcvtq_f64_f32(*&v203.f64[0]);
        v152 = vcvtq_f64_f32(*&v204.f64[0]);
        v203 = vcvtq_f64_f32(*&v203.f64[1]);
        v153 = v148 - 4;
        v205 = vld2_f32(v153);
        v206 = vld2_f32(v148);
        *(&v203 + 8) = vcvtq_f64_f32(*&v204.f64[1]);
        v204 = vcvtq_f64_f32(*&v205.f64[0]);
        *(&v204 + 8) = vcvtq_f64_f32(v206.val[0]);
        v205 = vcvtq_f64_f32(*&v205.f64[1]);
        *(&v205 + 8) = vcvtq_f64_f32(v206.val[1]);
        v206 = vmlaq_f64(vmulq_f64(vnegq_f64(v203), v205), v204, v151);
        *(&v206 + 8) = vmlaq_f64(vmulq_f64(vnegq_f64(*(&v203 + 8)), *(&v205 + 8)), *(&v204 + 8), v152);
        v203 = vmlaq_f64(vmulq_f64(v203, v204), v205, v151);
        *(&v203 + 8) = vmlaq_f64(vmulq_f64(*(&v203 + 8), *(&v204 + 8)), *(&v205 + 8), v152);
        v145 = v145 + v203.f64[0] + v154 + v203.f64[1] + v155;
        v98.f64[0] = v98.f64[0] + *v206.val + v156 + *&v206.val[1] + v157;
        v147 += 8;
        v148 += 8;
        v149 -= 4;
      }

      while (v149);
      v98.f64[1] = v145;
      if (v143 != v144)
      {
        goto LABEL_106;
      }

LABEL_87:
      *(a5 + 16 * v89++) = vaddq_f64(v97, v98);
      v94 = (v94 + v82);
      v96 = (v96 + v82);
      v95 = (v95 + v82);
    }

    while (v89 != v20);
    v76 = v199 + 1;
    a1 = (a1 + v192);
    a5 += 16 * v195;
    v75 = v194;
    if (v199 + 1 != v196)
    {
      continue;
    }

    return v202;
  }
}

void sub_10025AD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a22 != a11)
  {
    if (a22)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

float32x2_t *sub_10025ADCC(float32x2_t *result, unint64_t a2, _OWORD *a3, unint64_t a4, int32x4_t *a5, unint64_t a6, unsigned int *a7, char a8, double a9, double a10)
{
  v10 = a7[1];
  v11 = a2 >> 3;
  if ((a8 & 4) != 0)
  {
    v12 = a2 >> 3;
  }

  else
  {
    v12 = 1;
  }

  if ((a8 & 4) != 0)
  {
    v11 = 1;
  }

  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!result)
  {
    v11 = 0;
  }

  if (v10)
  {
    v14 = *a7;
    v15 = 4 * v13;
    v16 = (v14 - 4);
    v17 = (v16 >> 2) + 1;
    v18 = &a5[1];
    v19 = 8 * (a6 >> 3);
    v20 = (a3 + 2);
    v21 = 16 * (a4 >> 4);
    v22 = v13;
    while (result)
    {
      v23 = 0;
      if (v14 >= 4)
      {
        v26 = v20;
        v27 = v18;
        v28 = result;
        do
        {
          v29 = v28;
          v30 = *v28;
          v31 = &v28[v22];
          v27[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmulq_n_f64(v26[-2], a9), vmulq_n_f64(vcvtq_f64_f32(v30), a10))), vaddq_f64(vmulq_n_f64(v26[-1], a9), vmulq_n_f64(vcvtq_f64_f32(*v31), a10)));
          v32 = &v31[v22];
          v33 = *v32;
          v34 = &v32[v22];
          v36 = *v26;
          v35 = v26[1];
          v26 += 4;
          v23 += 4;
          *v27 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmulq_n_f64(v36, a9), vmulq_n_f64(vcvtq_f64_f32(v33), a10))), vaddq_f64(vmulq_n_f64(v35, a9), vmulq_n_f64(vcvtq_f64_f32(*v34), a10)));
          v27 += 2;
          v28 = &v34[v22];
        }

        while (v23 <= v16);
        v24 = &v29[v15];
        v23 = v23;
        if (v23 >= v14)
        {
          goto LABEL_13;
        }

        do
        {
LABEL_24:
          *&a5->i8[8 * v23] = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(a3[v23], a9), vmulq_n_f64(vcvtq_f64_f32(*v24), a10)));
          ++v23;
          v24 = (v24 + v22 * 8);
        }

        while (v14 != v23);
        goto LABEL_13;
      }

      v24 = result;
      if (v14 > 0)
      {
        goto LABEL_24;
      }

LABEL_13:
      result += v11;
      v18 = (v18 + v19);
      v20 = (v20 + v21);
      a5 = (a5 + v19);
      a3 = (a3 + v21);
      if (!--v10)
      {
        return result;
      }
    }

    if (v14 < 4)
    {
      v25 = 0;
      if (v14 <= 0)
      {
        goto LABEL_13;
      }

      goto LABEL_34;
    }

    if (v16 > 3)
    {
      v38 = v17 & 0x7FFFFFFE;
      v39 = a5;
      v40 = a3;
      do
      {
        v42 = v40[6];
        v41 = v40[7];
        v44 = v40[2];
        v43 = v40[3];
        v46 = v40[4];
        v45 = v40[5];
        v48 = *v40;
        v47 = v40[1];
        v40 += 8;
        v49 = vzip1q_s64(v48, v46);
        v50 = vzip2q_s64(v48, v46);
        v51 = vzip1q_s64(v47, v45);
        v52 = vzip2q_s64(v47, v45);
        v53 = vzip1q_s64(v44, v42);
        v54 = vzip2q_s64(v44, v42);
        v55 = vzip1q_s64(v43, v41);
        v56 = vzip2q_s64(v43, v41);
        v57 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v49, a9)), vmulq_n_f64(v50, a9));
        v58 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v51, a9)), vmulq_n_f64(v52, a9));
        v59 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v53, a9)), vmulq_n_f64(v54, a9));
        v60 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v55, a9)), vmulq_n_f64(v56, a9));
        v39[2] = vuzp2q_s32(v57, v58);
        v39[3] = vuzp2q_s32(v59, v60);
        *v39 = vuzp1q_s32(v57, v58);
        v39[1] = vuzp1q_s32(v59, v60);
        v39 += 4;
        v38 -= 2;
      }

      while (v38);
      v37 = 4 * (v17 & 0x7FFFFFFE);
      if (v17 == (v17 & 0x7FFFFFFE))
      {
LABEL_33:
        v25 = v37;
        if (v37 >= v14)
        {
          goto LABEL_13;
        }

LABEL_34:
        v66 = v14 - v25;
        if ((v14 - v25) > 3)
        {
          v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL) + v25;
          v68 = 2 * v25;
          v69 = v25;
          v70 = v66 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v71 = &a3[v69];
            v73 = vld2q_f64(v71);
            v71 += 4;
            v74 = vld2q_f64(v71);
            v75.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v73.val[0], a9)), vmulq_n_f64(v74.val[0], a9));
            v75.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v73.val[1], a9)), vmulq_n_f64(v74.val[1], a9));
            v72 = &a5->i32[v68];
            vst2q_f32(v72, v75);
            v68 += 8;
            v69 += 4;
            v70 -= 4;
          }

          while (v70);
          if (v66 == (v66 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_13;
          }
        }

        else
        {
          v67 = v25;
        }

        do
        {
          *&a5->i8[8 * v67] = vcvt_f32_f64(vmulq_n_f64(a3[v67], a9));
          ++v67;
        }

        while (v14 != v67);
        goto LABEL_13;
      }
    }

    else
    {
      v37 = 0;
    }

    v61 = &a5[v37 / 2];
    v62 = &v20[v37];
    do
    {
      v63 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v62[-2], a9)), vmulq_n_f64(v62[-1], a9));
      v64 = *v62;
      v65 = v62[1];
      v62 += 4;
      *v61 = v63;
      v61[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v64, a9)), vmulq_n_f64(v65, a9));
      v61 += 2;
      v37 += 4;
    }

    while (v37 <= v16);
    goto LABEL_33;
  }

  return result;
}

_BYTE *sub_10025B110(_OWORD *a1, unint64_t a2, _OWORD *a3, unint64_t a4, float64x2_t *a5, unint64_t a6, float64x2_t *a7, unint64_t a8, double a9, double a10, int *a11, int *a12, char a13)
{
  v18 = a11[1];
  v318 = *a11;
  v322 = a12[1];
  v325 = *a12;
  v19 = *a12;
  v20 = v334;
  bzero(v334, 0x480uLL);
  v21 = a5;
  v332 = v334;
  v333 = 72;
  v22 = a2 >> 4;
  v23 = a4 >> 4;
  v24 = a6 >> 4;
  v323 = a8 >> 4;
  if ((a13 & 4) != 0)
  {
    v25 = a6 >> 4;
  }

  else
  {
    v25 = 1;
  }

  if ((a13 & 4) != 0)
  {
    v24 = 1;
  }

  if (a5)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (!a5)
  {
    v24 = 0;
  }

  v327 = v24;
  if (a13)
  {
    v28 = 1;
    if (a2 < 0x20)
    {
      v27 = a2 >> 4;
      v31 = v18;
      v29 = a1;
      v30 = a9;
    }

    else
    {
      v29 = a1;
      v30 = a9;
      if (v18 >= 2)
      {
        v333 = v18;
        if (v18 >= 0x49)
        {
          operator new[]();
        }

        v28 = 1;
        v41 = v322;
        v42 = a10;
        v43 = v325;
        if ((a13 & 2) == 0)
        {
          goto LABEL_28;
        }

LABEL_125:
        if (v41 < 1)
        {
          goto LABEL_184;
        }

        if (v20)
        {
          v223 = v18 < 1;
        }

        else
        {
          v223 = 1;
        }

        v224 = v223;
        if (v43 < 1)
        {
          if ((v224 & 1) == 0)
          {
            for (i = 0; i != v41; ++i)
            {
              v304 = v29;
              v305 = v20;
              v306 = v18;
              do
              {
                *v305++ = *v304;
                v304 += v22;
                --v306;
              }

              while (v306);
              v29 += v28;
            }
          }

          goto LABEL_184;
        }

        v225 = 0;
        v226 = 16 * v22;
        v227 = 16 * v23;
LABEL_135:
        if (v20)
        {
          v228 = v20;
        }

        else
        {
          v228 = v29;
        }

        v229 = v224;
        if ((v224 & 1) == 0)
        {
          v230 = 0;
          v231 = v29;
          do
          {
            *&v20[v230] = *v231;
            v230 += 16;
            v231 = (v231 + v226);
          }

          while (16 * v18 != v230);
          v228 = v20;
        }

        v232 = 0;
        v233 = (v228 + 32);
        v234 = v228 + 8;
        v235 = a3;
        v236 = (a3 + 2);
        v237 = v21;
        while (1)
        {
          if (v18 >= 4)
          {
            v243 = 0;
            v239 = 0uLL;
            v244 = v233;
            v245 = v236;
            v240 = 0uLL;
            v241 = 0uLL;
            v242 = 0uLL;
            do
            {
              v246.f64[0] = *(v244 - 3);
              v247.f64[0] = *(v244 - 1);
              v248.f64[0] = v244[1];
              v249.f64[0] = v244[3];
              v246.f64[1] = -v246.f64[0];
              v250 = v245[-2];
              v251 = v245[-1];
              v252 = vmulq_f64(v250, v246);
              v247.f64[1] = -v247.f64[0];
              v253 = vmulq_f64(v251, v247);
              v248.f64[1] = -v248.f64[0];
              v242 = vaddq_f64(v242, vmlaq_n_f64(vextq_s8(v252, v252, 8uLL), v250, *(v244 - 4)));
              v254 = *v245;
              v255 = v245[1];
              v245 += 4;
              v256 = vmulq_f64(v254, v248);
              v241 = vaddq_f64(v241, vmlaq_n_f64(vextq_s8(v253, v253, 8uLL), v251, *(v244 - 2)));
              v249.f64[1] = -v249.f64[0];
              v257 = vmulq_f64(v255, v249);
              v240 = vaddq_f64(v240, vmlaq_n_f64(vextq_s8(v256, v256, 8uLL), v254, *v244));
              v239 = vaddq_f64(v239, vmlaq_n_f64(vextq_s8(v257, v257, 8uLL), v255, v244[2]));
              v243 += 4;
              v244 += 8;
            }

            while (v243 <= v18 - 4);
            v238 = ((v18 - 4) & 0xFFFFFFFC) + 4;
            if (v238 >= v18)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v238 = 0;
            v239 = 0uLL;
            v240 = 0uLL;
            v241 = 0uLL;
            v242 = 0uLL;
            if (v18 <= 0)
            {
              goto LABEL_157;
            }
          }

          v258 = v238;
          v259 = (v18 + ~v238);
          if (v259 >= 3)
          {
            v261 = v259 + 1;
            v262 = (v259 + 1) & 0x1FFFFFFFCLL;
            v260 = v262 + v258;
            v263 = v242.f64[1];
            v264 = v258;
            v265 = &v233[2 * v258];
            f64 = v236[v264].f64;
            v267 = v262;
            do
            {
              v268 = v265 - 4;
              v337 = vld2q_f64(v268);
              v339 = vld2q_f64(v265);
              v269 = f64 - 4;
              v340 = vld2q_f64(v269);
              v341 = vld2q_f64(f64);
              v270 = vmlaq_f64(vmulq_f64(v340.val[1], vnegq_f64(v337.val[1])), v340.val[0], v337.val[0]);
              v271 = vmlaq_f64(vmulq_f64(v341.val[1], vnegq_f64(v339.val[1])), v341.val[0], v339.val[0]);
              v272 = vmlaq_f64(vmulq_f64(v337.val[1], v340.val[0]), v340.val[1], v337.val[0]);
              v273 = vmlaq_f64(vmulq_f64(v339.val[1], v341.val[0]), v341.val[1], v339.val[0]);
              v263 = v263 + v272.f64[0] + v272.f64[1] + v273.f64[0] + v273.f64[1];
              v242.f64[0] = v242.f64[0] + v270.f64[0] + v270.f64[1] + v271.f64[0] + v271.f64[1];
              v265 += 8;
              f64 += 8;
              v267 -= 4;
            }

            while (v267);
            v242.f64[1] = v263;
            if (v261 == v262)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v260 = v258;
          }

          v274 = &v235[v260];
          v275 = &v234[16 * v260];
          do
          {
            v276.f64[0] = *v275;
            v277 = *v274++;
            v276.f64[1] = -*v275;
            v278 = vmulq_f64(v277, v276);
            v242 = vaddq_f64(v242, vmlaq_n_f64(vextq_s8(v278, v278, 8uLL), v277, *(v275 - 1)));
            LODWORD(v260) = v260 + 1;
            v275 += 2;
          }

          while (v18 > v260);
LABEL_157:
          v279 = vmulq_n_f64(vaddq_f64(v239, vaddq_f64(v240, vaddq_f64(v241, v242))), v30);
          if (v21)
          {
            v279 = vaddq_f64(v279, vmulq_n_f64(*v21, v42));
          }

          a7[v232++] = v279;
          v21 += v26;
          v236 = (v236 + v227);
          v235 = (v235 + v227);
          if (v232 == v325)
          {
            ++v225;
            v29 += v28;
            v21 = &v237[v327];
            a7 += v323;
            v224 = v229;
            if (v225 == v41)
            {
              goto LABEL_184;
            }

            goto LABEL_135;
          }
        }
      }

      v27 = a2 >> 4;
      v31 = v18;
    }
  }

  else
  {
    v27 = 1;
    v28 = a2 >> 4;
    v29 = a1;
    v30 = a9;
    v31 = v318;
  }

  if (v31 != 1)
  {
    v20 = 0;
    LODWORD(v18) = v31;
    v22 = v27;
    v41 = v322;
    v42 = a10;
    v43 = v325;
    if ((a13 & 2) == 0)
    {
LABEL_28:
      if (16 * v43 <= 0x640)
      {
        if (v322 < 1)
        {
          goto LABEL_184;
        }

        v44 = 0;
        v45 = v43 - 4;
        v46 = v26 << 6;
        if (v20)
        {
          v47 = v18 < 1;
        }

        else
        {
          v47 = 1;
        }

        v48 = v47;
        v49 = 16 * v28;
        v50 = 16 * v22;
        v51 = 16 * v23;
LABEL_38:
        if (v20)
        {
          v52 = v20;
        }

        else
        {
          v52 = v29;
        }

        if ((v48 & 1) == 0)
        {
          v53 = 0;
          v54 = v29;
          do
          {
            *&v20[v53] = *v54;
            v53 += 16;
            v54 = (v54 + v50);
          }

          while (16 * v18 != v53);
          v52 = v20;
        }

        v55 = v21;
        if (v43 < 4)
        {
          v56 = 0;
          v57 = v55;
          if (v19 > 0)
          {
            goto LABEL_57;
          }

          goto LABEL_37;
        }

        v56 = 0;
        v58 = (a3 + 2);
        v57 = v55;
        while (1)
        {
          v63 = 0uLL;
          if (v18 < 1)
          {
            v59 = 0uLL;
            v60 = vmulq_n_f64(0, v30);
            v61 = &a7[v56];
            v62 = v60;
            if (v57)
            {
              goto LABEL_50;
            }

LABEL_55:
            *v61 = v60;
            v61[1] = v62;
            v61[2] = vmulq_n_f64(v59, v30);
            v61[3] = vmulq_n_f64(v63, v30);
            v56 += 4;
            v57 = (v57 + v46);
            v58 += 4;
            if (v56 > v45)
            {
LABEL_56:
              v56 = v56;
              if (v56 < v19)
              {
LABEL_57:
                v78 = (v52 + 8);
                v79 = &a3[v56];
                do
                {
                  v80 = 0uLL;
                  if (v18 >= 1)
                  {
                    v81 = v79;
                    v82 = v78;
                    v83 = v18;
                    do
                    {
                      v84.f64[0] = *v82;
                      v84.f64[1] = -*v82;
                      v85 = vmulq_f64(*v81, v84);
                      v80 = vaddq_f64(v80, vmlaq_n_f64(vextq_s8(v85, v85, 8uLL), *v81, *(v82 - 1)));
                      v82 += 2;
                      v81 = (v81 + v51);
                      --v83;
                    }

                    while (v83);
                  }

                  v86 = vmulq_n_f64(v80, v30);
                  if (v57)
                  {
                    v86 = vaddq_f64(v86, vmulq_n_f64(*v57, v42));
                  }

                  a7[v56++] = v86;
                  v57 += v26;
                  ++v79;
                }

                while (v56 != v325);
              }

LABEL_37:
              ++v44;
              v29 = (v29 + v49);
              LODWORD(v43) = v325;
              v21 = &v55[v327];
              a7 += v323;
              if (v44 == v322)
              {
                goto LABEL_184;
              }

              goto LABEL_38;
            }
          }

          else
          {
            v64 = (v52 + 8);
            v65 = v58;
            v66 = v18;
            v67 = 0uLL;
            v68 = 0uLL;
            v59 = 0uLL;
            do
            {
              v69.f64[0] = *v64;
              v69.f64[1] = -*v64;
              v70 = *(v64 - 1);
              v71 = v65[-2];
              v72 = v65[-1];
              v73 = vmulq_f64(v71, v69);
              v67 = vaddq_f64(v67, vmlaq_n_f64(vextq_s8(v73, v73, 8uLL), v71, v70));
              v74 = vmulq_f64(v72, v69);
              v68 = vaddq_f64(v68, vmlaq_n_f64(vextq_s8(v74, v74, 8uLL), v72, v70));
              v75 = v65[1];
              v76 = vmulq_f64(*v65, v69);
              v59 = vaddq_f64(v59, vmlaq_n_f64(vextq_s8(v76, v76, 8uLL), *v65, v70));
              v77 = vmulq_f64(v75, v69);
              v63 = vaddq_f64(v63, vmlaq_n_f64(vextq_s8(v77, v77, 8uLL), v75, v70));
              v65 = (v65 + v51);
              v64 += 2;
              --v66;
            }

            while (v66);
            v60 = vmulq_n_f64(v67, v30);
            v61 = &a7[v56];
            v62 = vmulq_n_f64(v68, v30);
            if (!v57)
            {
              goto LABEL_55;
            }

LABEL_50:
            *v61 = vaddq_f64(v60, vmulq_n_f64(*v57, v42));
            v61[1] = vaddq_f64(v62, vmulq_n_f64(v57[v26], v42));
            v61[2] = vaddq_f64(vmulq_n_f64(v59, v30), vmulq_n_f64(v57[2 * v26], v42));
            v61[3] = vaddq_f64(vmulq_n_f64(v63, v30), vmulq_n_f64(v57[3 * v26], v42));
            v56 += 4;
            v57 = (v57 + v46);
            v58 += 4;
            if (v56 > v45)
            {
              goto LABEL_56;
            }
          }
        }
      }

      v87 = v28;
      v315 = v23;
      bzero(v330, 0x480uLL);
      if (v325 >= 0x49)
      {
        operator new[]();
      }

      v88 = a1;
      v89 = a10;
      v90 = a9;
      if (v322 < 1)
      {
        goto LABEL_184;
      }

      v91 = a5;
      v92 = 0;
      v93 = 16 * v325;
      v94 = v325 - 4;
      if (v20)
      {
        v95 = v18 < 1;
      }

      else
      {
        v95 = 1;
      }

      v96 = v95;
      v319 = v96;
      v97 = 3;
      if (v94 > 3)
      {
        v97 = v325 - 4;
      }

      v98 = (v97 >> 2) + 1;
      v99 = v98 & 0x3FFFFFFE;
      v100 = 4 * v99;
      v317 = 16 * v87;
      v101 = 16 * v22;
      v102 = 16 * v315;
      v316 = v323;
      v314 = v327;
      v307 = 16 * v26;
      v103 = a7 + 2;
      v311 = v98;
      v312 = v20;
      v309 = v100;
      v310 = v99;
      v308 = 16 * v22;
      while (1)
      {
        if (v20)
        {
          v104 = v20;
        }

        else
        {
          v104 = v88;
        }

        v328 = v91;
        v324 = v103;
        if ((v319 & 1) == 0)
        {
          v105 = 0;
          v106 = v88;
          do
          {
            *&v20[v105] = *v106;
            v105 += 16;
            v106 = (v106 + v101);
          }

          while (16 * v18 != v105);
          v104 = v20;
        }

        if (v19 >= 1)
        {
          v107 = v88;
          v108 = v92;
          v109 = v93;
          bzero(v330, v93);
          v100 = v309;
          v99 = v310;
          v93 = v109;
          v101 = v308;
          v92 = v108;
          v98 = v311;
          v20 = v312;
          v89 = a10;
          v90 = a9;
          v88 = v107;
        }

        if (v18 >= 1)
        {
          v110 = 0;
          v111 = a3 + 8;
          v112 = a3;
          while (1)
          {
            v113 = &v104[16 * v110];
            v114 = *v113;
            v115 = *(v113 + 1);
            if (v19 < 4)
            {
              v116 = 0;
              if (v19 <= 0)
              {
                goto LABEL_88;
              }

              goto LABEL_100;
            }

            if (v94 <= 3)
            {
              break;
            }

            v118 = 0;
            v119 = vdupq_lane_s64(v115, 0);
            v120 = vdupq_lane_s64(v114, 0);
            v121 = v99;
            do
            {
              v122 = &v330[v118 * 16];
              v124 = v112[v118 + 6];
              v123 = v112[v118 + 7];
              v126 = v112[v118 + 2];
              v125 = v112[v118 + 3];
              v128 = v112[v118 + 4];
              v127 = v112[v118 + 5];
              v130 = v112[v118];
              v129 = v112[v118 + 1];
              v131 = vzip1q_s64(v130, v128);
              v132 = vzip2q_s64(v130, v128);
              v133 = vzip1q_s64(v129, v127);
              v134 = vzip2q_s64(v129, v127);
              v135 = vzip1q_s64(v126, v124);
              v136 = vzip2q_s64(v126, v124);
              v137 = vzip1q_s64(v125, v123);
              v138 = vzip2q_s64(v125, v123);
              v139 = vmlaq_f64(vmulq_n_f64(vnegq_f64(v132), *&v115), v120, v131);
              v140 = vmlaq_f64(vmulq_n_f64(v132, *&v114), v119, v131);
              v142 = *&v331[v118 * 16 + 64];
              v141 = *&v331[v118 * 16 + 80];
              v144 = *&v330[v118 * 16 + 32];
              v143 = *&v331[v118 * 16 + 16];
              v146 = *&v331[v118 * 16 + 32];
              v145 = *&v331[v118 * 16 + 48];
              v148 = *&v330[v118 * 16];
              v147 = *&v330[v118 * 16 + 16];
              v149 = vzip1q_s64(v148, v146);
              v150 = vzip2q_s64(v148, v146);
              v151 = vzip1q_s64(v147, v145);
              v152 = vzip2q_s64(v147, v145);
              v153 = vzip1q_s64(v144, v142);
              v154 = vzip2q_s64(v144, v142);
              v155 = vzip1q_s64(v143, v141);
              v156 = vzip2q_s64(v143, v141);
              v157 = vaddq_f64(v149, v139);
              v158 = vaddq_f64(v150, v140);
              v159 = vmlaq_f64(vmulq_n_f64(vnegq_f64(v134), *&v115), v120, v133);
              v160 = vmlaq_f64(vmulq_n_f64(v134, *&v114), v119, v133);
              v161 = vaddq_f64(v151, v159);
              v162 = vmlaq_f64(vmulq_n_f64(vnegq_f64(v136), *&v115), v120, v135);
              v163 = vmlaq_f64(vmulq_n_f64(v136, *&v114), v119, v135);
              v164 = vaddq_f64(v153, v162);
              v165 = vaddq_f64(v154, v163);
              v166 = vmlaq_f64(vmulq_n_f64(vnegq_f64(v138), *&v115), v120, v137);
              v167 = vmlaq_f64(vmulq_n_f64(v138, *&v114), v119, v137);
              v168 = vaddq_f64(v155, v166);
              v169 = vaddq_f64(v156, v167);
              v122[6] = vzip2q_s64(v164, v165);
              v122[7] = vzip2q_s64(v168, v169);
              v170 = vaddq_f64(v152, v160);
              v122[4] = vzip2q_s64(v157, v158);
              v122[5] = vzip2q_s64(v161, v170);
              v122[2] = vzip1q_s64(v164, v165);
              v122[3] = vzip1q_s64(v168, v169);
              *v122 = vzip1q_s64(v157, v158);
              v122[1] = vzip1q_s64(v161, v170);
              v118 += 8;
              v121 -= 2;
            }

            while (v121);
            v117 = v100;
            if (v98 != v99)
            {
              goto LABEL_97;
            }

LABEL_99:
            v116 = v117;
            if (v117 >= v19)
            {
              goto LABEL_88;
            }

LABEL_100:
            v195 = v325 - v116;
            if (v195 > 1)
            {
              v196 = (v195 & 0xFFFFFFFFFFFFFFFELL) + v116;
              v197 = vdupq_lane_s64(v115, 0);
              v198 = vdupq_lane_s64(v114, 0);
              v199 = v116;
              v200 = v195 & 0xFFFFFFFFFFFFFFFELL;
              do
              {
                v201 = &v112[v199];
                v335 = vld2q_f64(v201);
                v202 = vmlaq_f64(vmulq_n_f64(vnegq_f64(v335.val[1]), *&v115), v198, v335.val[0]);
                v203 = vmlaq_f64(vmulq_n_f64(v335.val[1], *&v114), v197, v335.val[0]);
                v204 = &v330[v199 * 16];
                v336 = vld2q_f64(v204);
                v338.val[0] = vaddq_f64(v336.val[0], v202);
                v338.val[1] = vaddq_f64(v203, v336.val[1]);
                vst2q_f64(v204, v338);
                v199 += 2;
                v200 -= 2;
              }

              while (v200);
              if (v195 == (v195 & 0xFFFFFFFFFFFFFFFELL))
              {
                goto LABEL_88;
              }
            }

            else
            {
              v196 = v116;
            }

            v205 = v325 - v196;
            v206 = 16 * v196;
            v207 = &v111[16 * v196];
            v208 = &v330[v206 + 8];
            do
            {
              v209 = *(v207 - 1);
              v210 = *(v208 - 1) + v209 * *&v114 - *v207 * *&v115;
              v211 = *&v114 * *v207 + v209 * *&v115 + *v208;
              *(v208 - 1) = v210;
              *v208 = v211;
              v207 += 2;
              v208 += 2;
              --v205;
            }

            while (v205);
LABEL_88:
            ++v110;
            v112 = (v112 + v102);
            v111 += v102;
            if (v110 == v18)
            {
              goto LABEL_108;
            }
          }

          v117 = 0;
LABEL_97:
          v171 = 16 * v117;
          v172 = v331;
          v173 = v112;
          do
          {
            v174 = &v172[v171];
            v175 = *&v173[v171 / 0x10];
            v176 = *(&v173[v171 / 0x10] + 1);
            v177 = v175 * *&v114 - v176 * *&v115;
            v178 = *&v114 * v176 + v175 * *&v115;
            v179 = *&v172[v171 - 32] + v177;
            v181 = *&v173[v171 / 0x10 + 1];
            v180 = *(&v173[v171 / 0x10 + 1] + 1);
            v182 = *&v172[v171 - 24] + v178;
            v183 = *&v172[v171 - 16] + v181 * *&v114 - v180 * *&v115;
            v184 = *&v172[v171 - 8] + *&v114 * v180 + v181 * *&v115;
            *(v174 - 4) = v179;
            *(v174 - 3) = v182;
            *(v174 - 2) = v183;
            *(v174 - 1) = v184;
            v185 = *&v173[v171 / 0x10 + 2];
            v186 = *(&v173[v171 / 0x10 + 2] + 1);
            v187 = v185 * *&v114 - v186 * *&v115;
            v188 = *&v114 * v186 + v185 * *&v115;
            v189 = *&v172[v171] + v187;
            v191 = *&v173[v171 / 0x10 + 3];
            v190 = *(&v173[v171 / 0x10 + 3] + 1);
            v192 = *&v172[v171 + 8] + v188;
            v193 = *&v172[v171 + 16] + v191 * *&v114 - v190 * *&v115;
            v194 = *&v172[v171 + 24] + *&v114 * v190 + v191 * *&v115;
            *v174 = v189;
            v174[1] = v192;
            v174[2] = v193;
            v174[3] = v194;
            v117 += 4;
            v173 += 4;
            v172 += 64;
          }

          while (v117 <= v94);
          goto LABEL_99;
        }

LABEL_108:
        if (v328)
        {
          v212 = v324;
          if (v325 >= 1)
          {
            v213 = 0;
            v214 = v328;
            do
            {
              a7[v213 / 0x10] = vaddq_f64(vmulq_n_f64(*&v330[v213], v90), vmulq_n_f64(*v214, v89));
              v213 += 16;
              v214 = (v214 + v307);
            }

            while (v93 != v213);
          }

          goto LABEL_76;
        }

        v212 = v324;
        if (v325 >= 1)
        {
          if (v325 >= 4)
          {
            v216 = v19 & 0x7FFFFFFC;
            v217 = v331;
            v218 = v324;
            do
            {
              v220 = v217[-2];
              v219 = v217[-1];
              v222 = *v217;
              v221 = v217[1];
              v217 += 4;
              v218[-2] = vmulq_n_f64(v220, v90);
              v218[-1] = vmulq_n_f64(v219, v90);
              *v218 = vmulq_n_f64(v222, v90);
              v218[1] = vmulq_n_f64(v221, v90);
              v218 += 4;
              v216 -= 4;
            }

            while (v216);
            v215 = v19 & 0x7FFFFFFC;
            if (v215 == v325)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v215 = 0;
          }

          do
          {
            a7[v215] = vmulq_n_f64(*&v330[16 * v215], v90);
            ++v215;
          }

          while (v325 != v215);
        }

LABEL_76:
        ++v92;
        v88 = (v88 + v317);
        v91 = &v328[v314];
        a7 = (a7 + v316 * 16);
        v103 = &v212[v316];
        if (v92 == v322)
        {
          goto LABEL_184;
        }
      }
    }

    goto LABEL_125;
  }

  bzero(v330, 0x480uLL);
  if (a2 < 0x20)
  {
    v32 = a1;
    v33 = v322;
    v36 = a5;
    v37 = a10;
    v34 = a9;
    v38 = v327;
    v39 = a3;
    v35 = v325;
    if (a4 < 0x20)
    {
      goto LABEL_168;
    }

    goto LABEL_162;
  }

  v32 = a1;
  v33 = v322;
  v34 = a9;
  v35 = v325;
  if (v18 < 2)
  {
    v36 = a5;
    v37 = a10;
    v38 = v327;
    v39 = a3;
    if (a4 < 0x20)
    {
      goto LABEL_168;
    }

    goto LABEL_162;
  }

  v333 = v322;
  if (v322 >= 0x49)
  {
    operator new[]();
  }

  v36 = a5;
  v37 = a10;
  v38 = v327;
  v39 = a3;
  if (v322 >= 1)
  {
    v40 = 0;
    do
    {
      *&v334[v40] = *v32;
      v40 += 16;
      v32 += v22;
    }

    while (16 * v322 != v40);
  }

  v32 = v334;
  if (a4 >= 0x20)
  {
LABEL_162:
    if (v35 > 0x48)
    {
      operator new[]();
    }

    if (v19 >= 1)
    {
      v280 = v330;
      v281 = v35;
      do
      {
        *v280++ = *v39;
        v39 += a4 >> 4;
        --v281;
      }

      while (v281);
    }

    v39 = v330;
  }

LABEL_168:
  if (v33 >= 1)
  {
    for (j = 0; j != v33; ++j)
    {
      v283 = &v32[j];
      v284 = *v283 * v34;
      v285.f64[0] = v283[1] * v34;
      if (v35 >= 2)
      {
        v286 = 0;
        v288 = vdupq_lane_s64(*&v284, 0);
        v289.f64[0] = v283[1] * v34;
        v289.f64[1] = -v285.f64[0];
        v290 = (v39 + 1);
        v291 = a7;
        v287 = v36;
        do
        {
          v293 = v290[-1];
          v294 = vmulq_f64(v293, v289);
          v295 = vmlaq_f64(vextq_s8(v294, v294, 8uLL), v293, v288);
          v296 = vmulq_f64(*v290, v289);
          v292 = vmlaq_f64(vextq_s8(v296, v296, 8uLL), *v290, v288);
          if (v287)
          {
            *v291 = vaddq_f64(v295, vmulq_n_f64(*v287, v37));
            v292 = vaddq_f64(v292, vmulq_n_f64(v287[v26], v37));
          }

          else
          {
            *v291 = v295;
          }

          v286 += 2;
          v291[1] = v292;
          v287 += 2 * v26;
          v291 += 2;
          v290 += 2;
        }

        while (v286 <= (v35 - 2));
        v286 = v286;
        if (v286 < v19)
        {
LABEL_180:
          v297 = vdupq_lane_s64(*&v284, 0);
          do
          {
            v298 = v39[v286];
            v285.f64[1] = -v285.f64[0];
            v299 = vmulq_f64(v298, v285);
            v300 = vmlaq_f64(vextq_s8(v299, v299, 8uLL), v298, v297);
            if (v287)
            {
              v300 = vaddq_f64(v300, vmulq_n_f64(*v287, v37));
            }

            a7[v286++] = v300;
            v287 += v26;
          }

          while (v325 != v286);
        }
      }

      else
      {
        v286 = 0;
        v287 = v36;
        if (v19 > 0)
        {
          goto LABEL_180;
        }
      }

      v36 += v38;
      a7 += v323;
    }
  }

LABEL_184:
  result = v332;
  if (v332 != v334 && v332 != 0)
  {
    operator delete[]();
  }

  return result;
}

void sub_10025C218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (STACK[0x578] != a13)
  {
    if (STACK[0x578])
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_10025C280(_OWORD *a1, unint64_t a2, float64x2_t *a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, int *a8, char a9)
{
  v15 = *a7;
  v14 = a7[1];
  v138 = *a8;
  v141 = a8[1];
  bzero(v145, 0x480uLL);
  v16 = a2 >> 4;
  if (a9)
  {
    if (v14 >= 0x49)
    {
      operator new[]();
    }

    v18 = 1;
    v17 = v145;
  }

  else
  {
    v17 = 0;
    v14 = v15;
    v18 = v16;
    v16 = 1;
  }

  v19 = a1;
  v20 = v138;
  v21 = v138;
  v22 = a4 >> 4;
  v23 = a6 >> 4;
  v24 = v141;
  v140 = a6 >> 4;
  if ((a9 & 2) == 0)
  {
    if (v141 >= 1)
    {
      v25 = 0;
      v26 = 16 * v18;
      if (v17)
      {
        v27 = v14 < 1;
      }

      else
      {
        v27 = 1;
      }

      v28 = v27;
      v29 = 16 * v16;
      v30 = a3 + 2;
      v31 = 16 * v22;
      v135 = v26;
      v134 = v28;
      do
      {
        if (v17)
        {
          v32 = v17;
        }

        else
        {
          v32 = v19;
        }

        if ((v28 & 1) == 0)
        {
          v33 = 0;
          v34 = v19;
          do
          {
            *&v17[v33] = *v34;
            v33 += 16;
            v34 = (v34 + v29);
          }

          while (16 * v14 != v33);
          v32 = v17;
        }

        if (v20 >= 4)
        {
          v35 = 0;
          v45 = v30;
          do
          {
            v46 = 0uLL;
            v47 = (a5 + 16 * v35);
            v48 = 0uLL;
            v49 = 0uLL;
            v50 = 0uLL;
            if ((a9 & 0x10) != 0)
            {
              v46 = *v47;
              v48 = v47[1];
              v49 = v47[2];
              v50 = v47[3];
            }

            if (v14 >= 1)
            {
              v51 = (v32 + 8);
              v52 = v45;
              v53 = v14;
              do
              {
                v54.f64[0] = *v51;
                v54.f64[1] = -*v51;
                v55 = *(v51 - 1);
                v56 = v52[-2];
                v57 = v52[-1];
                v58 = vmulq_f64(v56, v54);
                v46 = vaddq_f64(v46, vmlaq_n_f64(vextq_s8(v58, v58, 8uLL), v56, v55));
                v59 = vmulq_f64(v57, v54);
                v48 = vaddq_f64(v48, vmlaq_n_f64(vextq_s8(v59, v59, 8uLL), v57, v55));
                v60 = v52[1];
                v61 = vmulq_f64(*v52, v54);
                v49 = vaddq_f64(v49, vmlaq_n_f64(vextq_s8(v61, v61, 8uLL), *v52, v55));
                v62 = vmulq_f64(v60, v54);
                v50 = vaddq_f64(v50, vmlaq_n_f64(vextq_s8(v62, v62, 8uLL), v60, v55));
                v52 = (v52 + v31);
                v51 += 2;
                --v53;
              }

              while (v53);
            }

            *v47 = v46;
            v47[1] = v48;
            v47[2] = v49;
            v47[3] = v50;
            v35 += 4;
            v45 += 4;
          }

          while (v35 <= v138 - 4);
        }

        else
        {
          LODWORD(v35) = 0;
        }

        if (v35 < v138)
        {
          v36 = v35;
          if (v14 < 1)
          {
            if ((a9 & 0x10) == 0)
            {
              v143 = v19;
              v136 = v25;
              bzero((a5 + 16 * v35), 16 * (v138 + ~v35) + 16);
              v30 = a3 + 2;
              v28 = v134;
              v26 = v135;
              v25 = v136;
              v20 = v138;
              v23 = a6 >> 4;
              v24 = v141;
              v19 = v143;
            }
          }

          else
          {
            v37 = (v32 + 8);
            v38 = &a3[v35];
            do
            {
              v39 = 0uLL;
              if ((a9 & 0x10) != 0)
              {
                v39 = *(a5 + 16 * v36);
              }

              v40 = v38;
              v41 = v37;
              v42 = v14;
              do
              {
                v43.f64[0] = *v41;
                v43.f64[1] = -*v41;
                v44 = vmulq_f64(*v40, v43);
                v39 = vaddq_f64(v39, vmlaq_n_f64(vextq_s8(v44, v44, 8uLL), *v40, *(v41 - 1)));
                v41 += 2;
                v40 = (v40 + v31);
                --v42;
              }

              while (v42);
              *(a5 + 16 * v36++) = v39;
              ++v38;
            }

            while (v36 != v138);
          }
        }

        ++v25;
        v19 = (v19 + v26);
        a5 += 16 * v23;
      }

      while (v25 != v24);
    }

    return v145;
  }

  if (v141 < 1)
  {
    return v145;
  }

  if (v17)
  {
    v63 = v14 < 1;
  }

  else
  {
    v63 = 1;
  }

  v64 = v63;
  if (v138 < 1)
  {
    if ((v64 & 1) == 0)
    {
      for (i = 0; i != v141; ++i)
      {
        v130 = v19;
        v131 = v17;
        v132 = v14;
        do
        {
          *v131++ = *v130;
          v130 += v16;
          --v132;
        }

        while (v132);
        v19 += v18;
      }
    }

    return v145;
  }

  v65 = 0;
  v66 = v14 - 2;
  v67 = v14 - 2;
  if (v67 <= 1)
  {
    v68 = 1;
  }

  else
  {
    v68 = v66;
  }

  v69 = (v68 >> 1) + 1;
  v137 = v18;
  v70 = 16 * v16;
  v71 = 16 * v22;
  v139 = v64;
  while (2)
  {
    if (v17)
    {
      v72 = v17;
    }

    else
    {
      v72 = v19;
    }

    v144 = v19;
    if ((v64 & 1) == 0)
    {
      v73 = 0;
      v74 = v19;
      do
      {
        *&v17[v73] = *v74;
        v73 += 16;
        v74 = (v74 + v70);
      }

      while (16 * v14 != v73);
      v72 = v17;
    }

    v75 = 0;
    v76 = (v72 + 64);
    v77 = v72 + 16;
    v78 = v72 + 32;
    v79 = v72 + 8;
    v81 = a3 + 2;
    f64 = a3[4].f64;
    v82 = a3;
    do
    {
      v83 = 0uLL;
      v84 = 0uLL;
      if ((a9 & 0x10) != 0)
      {
        v84 = *(a5 + 16 * v75);
      }

      if (v14 < 2)
      {
        v85 = 0;
        goto LABEL_78;
      }

      if (v67 < 6)
      {
        v86 = 0;
LABEL_75:
        v98 = &v82[v86];
        v99 = &v77[16 * v86];
        do
        {
          v100 = *(v99 - 2);
          v101.f64[0] = *(v99 - 1);
          v102 = *v99;
          v103.f64[0] = v99[1];
          v99 += 4;
          v101.f64[1] = -v101.f64[0];
          v104 = *v98;
          v105 = v98[1];
          v98 += 2;
          v106 = vmulq_f64(v104, v101);
          v84 = vaddq_f64(v84, vmlaq_n_f64(vextq_s8(v106, v106, 8uLL), v104, v100));
          v103.f64[1] = -v103.f64[0];
          v107 = vmulq_f64(v105, v103);
          v83 = vaddq_f64(v83, vmlaq_n_f64(vextq_s8(v107, v107, 8uLL), v105, v102));
          v86 += 2;
        }

        while (v86 <= v67);
        v85 = (v66 & 0xFFFFFFFE) + 2;
        goto LABEL_78;
      }

      v87 = v84.f64[1];
      v88 = 0.0;
      v89 = v69 & 0x7FFFFFFC;
      v90 = f64;
      v91 = v76;
      v83.f64[0] = 0.0;
      do
      {
        v92 = v91 - 8;
        v150 = vld4q_f64(v92);
        v93 = v90 - 8;
        v151 = vld4q_f64(v93);
        v152 = vld4q_f64(v91);
        v153 = vld4q_f64(v90);
        v94 = vmlaq_f64(vmulq_f64(v150.val[1], v151.val[0]), v151.val[1], v150.val[0]);
        v95 = vmlaq_f64(vmulq_f64(v151.val[1], vnegq_f64(v150.val[1])), v151.val[0], v150.val[0]);
        v96 = vmlaq_f64(vmulq_f64(v151.val[3], vnegq_f64(v150.val[3])), v151.val[2], v150.val[2]);
        v97 = vmlaq_f64(vmulq_f64(v150.val[3], v151.val[2]), v151.val[3], v150.val[2]);
        v150.val[1] = vmlaq_f64(vmulq_f64(v152.val[1], v153.val[0]), v153.val[1], v152.val[0]);
        v150.val[0] = vmlaq_f64(vmulq_f64(v153.val[1], vnegq_f64(v152.val[1])), v153.val[0], v152.val[0]);
        v150.val[2] = vmlaq_f64(vmulq_f64(v153.val[3], vnegq_f64(v152.val[3])), v153.val[2], v152.val[2]);
        v150.val[3] = vmlaq_f64(vmulq_f64(v152.val[3], v153.val[2]), v153.val[3], v152.val[2]);
        v87 = v87 + v94.f64[0] + v94.f64[1] + v150.val[1].f64[0] + v150.val[1].f64[1];
        v88 = v88 + v97.f64[0] + v97.f64[1] + v150.val[3].f64[0] + v150.val[3].f64[1];
        v84.f64[0] = v84.f64[0] + v95.f64[0] + v95.f64[1] + v150.val[0].f64[0] + v150.val[0].f64[1];
        v83.f64[0] = v83.f64[0] + v96.f64[0] + v96.f64[1] + v150.val[2].f64[0] + v150.val[2].f64[1];
        v91 += 16;
        v90 += 16;
        v89 -= 4;
      }

      while (v89);
      v83.f64[1] = v88;
      v84.f64[1] = v87;
      v86 = 2 * (v69 & 0x7FFFFFFC);
      v85 = (v66 & 0xFFFFFFFE) + 2;
      if (v69 != (v69 & 0x7FFFFFFC))
      {
        goto LABEL_75;
      }

LABEL_78:
      if (v85 >= v14)
      {
        goto LABEL_65;
      }

      v108 = v85;
      v109 = v14 + ~v85;
      if (v109 < 3)
      {
        v110 = v108;
LABEL_84:
        v124 = &v82[v110];
        v125 = &v79[16 * v110];
        do
        {
          v126.f64[0] = *v125;
          v127 = *v124++;
          v126.f64[1] = -*v125;
          v128 = vmulq_f64(v127, v126);
          v84 = vaddq_f64(v84, vmlaq_n_f64(vextq_s8(v128, v128, 8uLL), v127, *(v125 - 1)));
          LODWORD(v110) = v110 + 1;
          v125 += 2;
        }

        while (v14 > v110);
        goto LABEL_65;
      }

      v111 = v109 + 1;
      v112 = (v109 + 1) & 0x1FFFFFFFCLL;
      v110 = v112 + v108;
      v113 = v84.f64[1];
      v114 = v108;
      v115 = &v78[v114 * 16];
      v116 = v81[v114].f64;
      v117 = v112;
      do
      {
        v118 = v115 - 4;
        v146 = vld2q_f64(v118);
        v147 = vld2q_f64(v115);
        v119 = v116 - 4;
        v148 = vld2q_f64(v119);
        v149 = vld2q_f64(v116);
        v120 = vmlaq_f64(vmulq_f64(v148.val[1], vnegq_f64(v146.val[1])), v148.val[0], v146.val[0]);
        v121 = vmlaq_f64(vmulq_f64(v149.val[1], vnegq_f64(v147.val[1])), v149.val[0], v147.val[0]);
        v122 = vmlaq_f64(vmulq_f64(v146.val[1], v148.val[0]), v148.val[1], v146.val[0]);
        v123 = vmlaq_f64(vmulq_f64(v147.val[1], v149.val[0]), v149.val[1], v147.val[0]);
        v113 = v113 + v122.f64[0] + v122.f64[1] + v123.f64[0] + v123.f64[1];
        v84.f64[0] = v84.f64[0] + v120.f64[0] + v120.f64[1] + v121.f64[0] + v121.f64[1];
        v115 += 8;
        v116 += 8;
        v117 -= 4;
      }

      while (v117);
      v84.f64[1] = v113;
      if (v111 != v112)
      {
        goto LABEL_84;
      }

LABEL_65:
      *(a5 + 16 * v75++) = vaddq_f64(v83, v84);
      f64 = (f64 + v71);
      v82 = (v82 + v71);
      v81 = (v81 + v71);
    }

    while (v75 != v21);
    ++v65;
    v19 = &v144[v137];
    a5 += 16 * v140;
    v64 = v139;
    if (v65 != v141)
    {
      continue;
    }

    return v145;
  }
}

void sub_10025C9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20 != a11)
  {
    if (a20)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

float64x2_t *sub_10025CA10(float64x2_t *result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unsigned int *a7, char a8, double a9, double a10)
{
  v10 = a7[1];
  v11 = a2 >> 4;
  if ((a8 & 4) != 0)
  {
    v12 = a2 >> 4;
  }

  else
  {
    v12 = 1;
  }

  if ((a8 & 4) != 0)
  {
    v11 = 1;
  }

  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!result)
  {
    v11 = 0;
  }

  if (v10)
  {
    v14 = 0;
    v15 = *a7;
    v16 = a4 >> 4;
    v17 = v13 << 6;
    v18 = (v15 - 4);
    v19 = a6 & 0xFFFFFFFFFFFFFFF0;
    v20 = a4 & 0xFFFFFFFFFFFFFFF0;
    v21 = v10 - 1;
    v22 = a5 + 16 * ((v18 & 0xFFFFFFFC) + (a6 >> 4) * v21) + 64;
    v23 = a3 + 16 * ((v18 & 0xFFFFFFFC) + (a4 >> 4) * v21) + 64;
    v24 = (v18 >> 2) + 1;
    v26 = v23 > a5;
    v25 = a5 + 16 * v15;
    v26 = v26 && v22 > a3;
    v27 = v26;
    v28 = ((a6 | a4) & 0x8000000000000000) != 0;
    v29 = 16 * (a6 >> 4);
    v30 = a3 + 16 * v15;
    v31 = (v18 < 4 || v28) | v27;
    v32 = 16 * v16;
    v33 = v13;
    v34 = a5 + 32;
    while (1)
    {
      if (!result)
      {
        v36 = 0;
        if (v15 >= 4)
        {
          if (v31)
          {
            goto LABEL_30;
          }

          v37 = v24 & 0x7FFFFFFE;
          do
          {
            v38 = (a5 + v36);
            v39 = vmulq_n_f64(*(a3 + v36 + 112), a9);
            v40 = vmulq_n_f64(*(a3 + v36 + 96), a9);
            v41 = vmulq_n_f64(*(a3 + v36 + 80), a9);
            v42 = vmulq_n_f64(*(a3 + v36 + 64), a9);
            v43 = vmulq_n_f64(*(a3 + v36 + 48), a9);
            v44 = vmulq_n_f64(*(a3 + v36 + 16), a9);
            v45 = vmulq_n_f64(*(a3 + v36 + 32), a9);
            *v38 = vmulq_n_f64(*(a3 + v36), a9);
            v38[1] = v44;
            v38[2] = v45;
            v38[3] = v43;
            v38[4] = v42;
            v38[5] = v41;
            v38[6] = v40;
            v38[7] = v39;
            v36 += 128;
            v37 -= 2;
          }

          while (v37);
          v36 = 4 * (v24 & 0x7FFFFFFE);
          if (v24 != (v24 & 0x7FFFFFFE))
          {
LABEL_30:
            v46 = 16 * v36;
            v47 = v34;
            v48 = a3;
            do
            {
              v49 = (v47 + v46);
              v50 = vmulq_n_f64(*(v48 + v46 + 16), a9);
              v49[-2] = vmulq_n_f64(*(v48 + v46), a9);
              v49[-1] = v50;
              v51 = *(v48 + v46 + 48);
              *(v47 + v46) = vmulq_n_f64(*(v48 + v46 + 32), a9);
              v49[1] = vmulq_n_f64(v51, a9);
              v36 += 4;
              v48 += 64;
              v47 += 64;
            }

            while (v36 <= v18);
          }

          v36 = v36;
        }

        if (v36 < v15)
        {
          v52 = v15 - v36;
          if (v15 - v36 <= 3)
          {
            goto LABEL_51;
          }

          v53 = 16 * v36;
          if (a5 + 16 * v36 < v30 + v20 * v14 && a3 + 16 * v36 < v25 + v19 * v14)
          {
            goto LABEL_51;
          }

          v36 += v52 & 0xFFFFFFFFFFFFFFFCLL;
          v55 = v52 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v56 = *(a3 + v53 + 32);
            v57 = *(a3 + v53 + 48);
            v58 = (v34 + v53);
            v59 = vmulq_n_f64(*(a3 + v53 + 16), a9);
            v58[-2] = vmulq_n_f64(*(a3 + v53), a9);
            v58[-1] = v59;
            *v58 = vmulq_n_f64(v56, a9);
            v58[1] = vmulq_n_f64(v57, a9);
            v53 += 64;
            v55 -= 4;
          }

          while (v55);
          if (v52 != (v52 & 0xFFFFFFFFFFFFFFFCLL))
          {
LABEL_51:
            do
            {
              *(a5 + 16 * v36) = vmulq_n_f64(*(a3 + 16 * v36), a9);
              ++v36;
            }

            while (v15 != v36);
          }
        }

        goto LABEL_19;
      }

      if (v15 >= 4)
      {
        break;
      }

      v61 = 0;
      v35 = result;
      if (v15 > 0)
      {
        goto LABEL_47;
      }

LABEL_19:
      result += v11;
      a3 += v32;
      a5 += v29;
      ++v14;
      v34 += v29;
      if (!--v10)
      {
        return result;
      }
    }

    v60 = 0;
    v61 = 0;
    v62 = result;
    do
    {
      v63 = v62;
      v64 = (a5 + v60);
      v65 = vaddq_f64(vmulq_n_f64(*(a3 + v60 + 16), a9), vmulq_n_f64(v62[v33], a10));
      *v64 = vaddq_f64(vmulq_n_f64(*(a3 + v60), a9), vmulq_n_f64(*v62, a10));
      v64[1] = v65;
      v66 = &v62[v33 + v33];
      v67 = vaddq_f64(vmulq_n_f64(*(a3 + v60 + 32), a9), vmulq_n_f64(*v66, a10));
      v68 = &v66[v33];
      v69 = vaddq_f64(vmulq_n_f64(*(a3 + v60 + 48), a9), vmulq_n_f64(*v68, a10));
      v64[2] = v67;
      v64[3] = v69;
      v61 += 4;
      v60 += 64;
      v62 = &v68[v33];
    }

    while (v61 <= v18);
    v35 = (v63 + v17);
    v61 = v61;
    if (v61 >= v15)
    {
      goto LABEL_19;
    }

    do
    {
LABEL_47:
      *(a5 + 16 * v61) = vaddq_f64(vmulq_n_f64(*(a3 + 16 * v61), a9), vmulq_n_f64(*v35, a10));
      ++v61;
      v35 = (v35 + v33 * 16);
    }

    while (v15 != v61);
    goto LABEL_19;
  }

  return result;
}

void sub_10025CD7C(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if ((*(*a1 + 16))(a1))
  {
    v9 = *a2;
    v10 = *(a2 + 2);
    *v95 = 1124007936;
    memset(&v95[4], 0, 60);
    v96 = &v95[8];
    v97 = &v98;
    v98 = 0;
    v99 = 0;
    *v91 = 1124007936;
    memset(&v91[4], 0, 60);
    v92 = &v91[8];
    v93 = v94;
    v94[0] = 0;
    v94[1] = 0;
    *v86 = 1124007936;
    memset(&v86[4], 0, 60);
    v87 = &v86[8];
    v88 = &v89;
    v89 = 0;
    v90 = 0;
    sub_1002670C8(v100, v9, v10, v95, v91, v86, a2 + 40, *(a2 + 38), *(a2 + 39));
    *a5 = *v100;
    *(a5 + 8) = *&v100[8];
    if (v100 == a5)
    {
LABEL_25:
      v30 = sub_10025DAEC(a5 + 112, v104, v11);
      sub_10025DAEC(a5 + 208, v105, v30);
      v31 = v107;
      *(a5 + 304) = v106;
      *(a5 + 320) = v31;
      *(a5 + 336) = v108;
      sub_100008E50(v100);
      if (*&v86[56] && atomic_fetch_add((*&v86[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v86);
      }

      *&v86[56] = 0;
      memset(&v86[16], 0, 32);
      if (*&v86[4] >= 1)
      {
        v32 = 0;
        v33 = v87;
        do
        {
          *&v33[4 * v32++] = 0;
        }

        while (v32 < *&v86[4]);
      }

      if (v88 != &v89)
      {
        j__free(v88);
      }

      if (*&v91[56] && atomic_fetch_add((*&v91[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v91);
      }

      *&v91[56] = 0;
      memset(&v91[16], 0, 32);
      if (*&v91[4] >= 1)
      {
        v34 = 0;
        v35 = v92;
        do
        {
          *&v35[4 * v34++] = 0;
        }

        while (v34 < *&v91[4]);
      }

      if (v93 != v94)
      {
        j__free(v93);
      }

      if (*&v95[56] && atomic_fetch_add((*&v95[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v95);
      }

      *&v95[56] = 0;
      memset(&v95[16], 0, 32);
      if (*&v95[4] >= 1)
      {
        v36 = 0;
        v37 = v96;
        do
        {
          *&v37[4 * v36++] = 0;
        }

        while (v36 < *&v95[4]);
      }

      if (v97 != &v98)
      {
        j__free(v97);
      }

      if (!a2[4])
      {
LABEL_106:
        if (!a2[16])
        {
          goto LABEL_128;
        }

        v59 = *a4;
        *v95 = *a3;
        *v91 = v59;
        sub_10026A3FC(v100, a2 + 28, v95, v91);
        if ((a5 + 112) == v100)
        {
          if (*&v100[56] && atomic_fetch_add((*&v100[56] + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v100);
          }

          goto LABEL_123;
        }

        v60 = *(a5 + 168);
        if (v60 && atomic_fetch_add((v60 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a5 + 112);
        }

        *(a5 + 168) = 0;
        *(a5 + 128) = 0u;
        *(a5 + 144) = 0u;
        if (*(a5 + 116) >= 1)
        {
          v61 = 0;
          v62 = *(a5 + 176);
          do
          {
            *(v62 + 4 * v61++) = 0;
          }

          while (v61 < *(a5 + 116));
        }

        v63 = *&v100[4];
        v64 = *&v100[16];
        *(a5 + 112) = *v100;
        *(a5 + 128) = v64;
        v65 = *&v100[48];
        *(a5 + 144) = *&v100[32];
        *(a5 + 160) = v65;
        v66 = *(a5 + 184);
        if (v66 == (a5 + 192))
        {
          v67 = *&v100[72];
          if (v63 <= 2)
          {
            goto LABEL_116;
          }
        }

        else
        {
          j__free(v66);
          *(a5 + 176) = a5 + 120;
          *(a5 + 184) = a5 + 192;
          v66 = (a5 + 192);
          v67 = *&v100[72];
          if (*&v100[4] <= 2)
          {
LABEL_116:
            *v66 = *v67;
            v66[1] = v67[1];
LABEL_122:
            *v100 = 1124007936;
            memset(&v100[4], 0, 60);
LABEL_123:
            *&v100[56] = 0;
            memset(&v100[16], 0, 32);
            if (*&v100[4] >= 1)
            {
              v68 = 0;
              v69 = *&v100[64];
              do
              {
                *(v69 + 4 * v68++) = 0;
              }

              while (v68 < *&v100[4]);
            }

            if (*&v100[72] != &v101)
            {
              j__free(*&v100[72]);
            }

LABEL_128:
            if (!a2[28])
            {
              return;
            }

            v70 = *a4;
            *v95 = *a3;
            *v91 = v70;
            sub_10026A3FC(v100, a2 + 52, v95, v91);
            if ((a5 + 208) == v100)
            {
              if (*&v100[56] && atomic_fetch_add((*&v100[56] + 20), 0xFFFFFFFF) == 1)
              {
                sub_100269BC8(v100);
              }

              goto LABEL_145;
            }

            v71 = *(a5 + 264);
            if (v71 && atomic_fetch_add((v71 + 20), 0xFFFFFFFF) == 1)
            {
              sub_100269BC8(a5 + 208);
            }

            *(a5 + 264) = 0;
            *(a5 + 224) = 0u;
            *(a5 + 240) = 0u;
            if (*(a5 + 212) >= 1)
            {
              v72 = 0;
              v73 = *(a5 + 272);
              do
              {
                *(v73 + 4 * v72++) = 0;
              }

              while (v72 < *(a5 + 212));
            }

            v74 = *&v100[4];
            v75 = *&v100[16];
            *(a5 + 208) = *v100;
            *(a5 + 224) = v75;
            v76 = *&v100[48];
            *(a5 + 240) = *&v100[32];
            *(a5 + 256) = v76;
            v77 = *(a5 + 280);
            if (v77 == (a5 + 288))
            {
              v78 = *&v100[72];
              if (v74 <= 2)
              {
                goto LABEL_138;
              }
            }

            else
            {
              j__free(v77);
              *(a5 + 272) = a5 + 216;
              *(a5 + 280) = a5 + 288;
              v77 = (a5 + 288);
              v78 = *&v100[72];
              if (*&v100[4] <= 2)
              {
LABEL_138:
                *v77 = *v78;
                v77[1] = v78[1];
LABEL_144:
                *v100 = 1124007936;
                memset(&v100[4], 0, 60);
LABEL_145:
                *&v100[56] = 0;
                memset(&v100[16], 0, 32);
                if (*&v100[4] >= 1)
                {
                  v79 = 0;
                  v80 = *&v100[64];
                  do
                  {
                    *(v80 + 4 * v79++) = 0;
                  }

                  while (v79 < *&v100[4]);
                }

                if (*&v100[72] != &v101)
                {
                  j__free(*&v100[72]);
                }

                return;
              }
            }

            *(a5 + 272) = *&v100[64];
            *(a5 + 280) = v78;
            *&v100[64] = &v100[8];
            *&v100[72] = &v101;
            goto LABEL_144;
          }
        }

        *(a5 + 176) = *&v100[64];
        *(a5 + 184) = v67;
        *&v100[64] = &v100[8];
        *&v100[72] = &v101;
        goto LABEL_122;
      }

      v38 = *a4;
      *v95 = *a3;
      *v91 = v38;
      sub_10026A3FC(v100, a2 + 4, v95, v91);
      if ((a5 + 16) == v100)
      {
        if (*&v100[56] && atomic_fetch_add((*&v100[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v100);
        }

        goto LABEL_101;
      }

      v39 = *(a5 + 72);
      if (v39 && atomic_fetch_add((v39 + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(a5 + 16);
      }

      *(a5 + 72) = 0;
      *(a5 + 32) = 0u;
      *(a5 + 48) = 0u;
      if (*(a5 + 20) >= 1)
      {
        v40 = 0;
        v41 = *(a5 + 80);
        do
        {
          *(v41 + 4 * v40++) = 0;
        }

        while (v40 < *(a5 + 20));
      }

      v42 = *&v100[4];
      v43 = *&v100[16];
      *(a5 + 16) = *v100;
      *(a5 + 32) = v43;
      v44 = *&v100[48];
      *(a5 + 48) = *&v100[32];
      *(a5 + 64) = v44;
      v45 = *(a5 + 88);
      if (v45 == (a5 + 96))
      {
        v46 = *&v100[72];
        if (v42 <= 2)
        {
          goto LABEL_59;
        }
      }

      else
      {
        j__free(v45);
        *(a5 + 80) = a5 + 24;
        *(a5 + 88) = a5 + 96;
        v45 = (a5 + 96);
        v46 = *&v100[72];
        if (*&v100[4] <= 2)
        {
LABEL_59:
          *v45 = *v46;
          v45[1] = v46[1];
LABEL_100:
          *v100 = 1124007936;
          memset(&v100[4], 0, 60);
LABEL_101:
          *&v100[56] = 0;
          memset(&v100[16], 0, 32);
          if (*&v100[4] >= 1)
          {
            v57 = 0;
            v58 = *&v100[64];
            do
            {
              *(v58 + 4 * v57++) = 0;
            }

            while (v57 < *&v100[4]);
          }

          if (*&v100[72] != &v101)
          {
            j__free(*&v100[72]);
          }

          goto LABEL_106;
        }
      }

      *(a5 + 80) = *&v100[64];
      *(a5 + 88) = v46;
      *&v100[64] = &v100[8];
      *&v100[72] = &v101;
      goto LABEL_100;
    }

    v12 = *(a5 + 72);
    if (v12 && atomic_fetch_add((v12 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a5 + 16);
    }

    *(a5 + 72) = 0;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    if (*(a5 + 20) >= 1)
    {
      v13 = 0;
      v14 = *(a5 + 80);
      do
      {
        *(v14 + 4 * v13++) = 0;
      }

      while (v13 < *(a5 + 20));
    }

    v15 = *&v100[20];
    v16 = *&v100[32];
    *(a5 + 16) = *&v100[16];
    *(a5 + 32) = v16;
    v17 = *&v100[64];
    *(a5 + 48) = *&v100[48];
    *(a5 + 64) = v17;
    v18 = *(a5 + 88);
    if (v18 == (a5 + 96))
    {
      v19 = v102;
      if (v15 <= 2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      j__free(v18);
      *(a5 + 80) = a5 + 24;
      *(a5 + 88) = a5 + 96;
      v18 = (a5 + 96);
      v19 = v102;
      if (*&v100[20] <= 2)
      {
LABEL_11:
        *v18 = *v19;
        v18[1] = v19[1];
LABEL_24:
        *&v100[16] = 1124007936;
        v11 = 0.0;
        memset(&v100[20], 0, 60);
        goto LABEL_25;
      }
    }

    *(a5 + 80) = v101;
    *(a5 + 88) = v19;
    v102 = v103;
    v101 = &v100[24];
    goto LABEL_24;
  }

  *v95 = 1124007936;
  memset(&v95[4], 0, 60);
  v96 = &v95[8];
  v97 = &v98;
  v98 = 0;
  v99 = 0;
  (*(**a2 + 24))(*a2, a2, v95, 0xFFFFFFFFLL);
  v20 = *a4;
  *v86 = *a3;
  *v82 = v20;
  sub_10026A3FC(v91, v95, v86, v82);
  *v86 = 1124007936;
  memset(&v86[4], 0, 60);
  v87 = &v86[8];
  v88 = &v89;
  v89 = 0;
  v90 = 0;
  *v82 = 1124007936;
  memset(&v82[4], 0, 60);
  v83 = &v82[8];
  v84 = v85;
  v85[0] = 0;
  v85[1] = 0;
  memset(v81, 0, sizeof(v81));
  sub_1002670C8(v100, &qword_1004BD530, 0, v91, v86, v82, v81, 1.0, 1.0);
  *a5 = *v100;
  *(a5 + 8) = *&v100[8];
  if (v100 != a5)
  {
    v22 = *(a5 + 72);
    if (v22 && atomic_fetch_add((v22 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a5 + 16);
    }

    *(a5 + 72) = 0;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    if (*(a5 + 20) >= 1)
    {
      v23 = 0;
      v24 = *(a5 + 80);
      do
      {
        *(v24 + 4 * v23++) = 0;
      }

      while (v23 < *(a5 + 20));
    }

    v25 = *&v100[20];
    v26 = *&v100[32];
    *(a5 + 16) = *&v100[16];
    *(a5 + 32) = v26;
    v27 = *&v100[64];
    *(a5 + 48) = *&v100[48];
    *(a5 + 64) = v27;
    v28 = *(a5 + 88);
    if (v28 == (a5 + 96))
    {
      v29 = v102;
      if (v25 <= 2)
      {
        goto LABEL_21;
      }
    }

    else
    {
      j__free(v28);
      *(a5 + 80) = a5 + 24;
      *(a5 + 88) = a5 + 96;
      v28 = (a5 + 96);
      v29 = v102;
      if (*&v100[20] <= 2)
      {
LABEL_21:
        *v28 = *v29;
        v28[1] = v29[1];
LABEL_62:
        *&v100[16] = 1124007936;
        v21 = 0.0;
        memset(&v100[20], 0, 60);
        goto LABEL_63;
      }
    }

    *(a5 + 80) = v101;
    *(a5 + 88) = v29;
    v102 = v103;
    v101 = &v100[24];
    goto LABEL_62;
  }

LABEL_63:
  v47 = sub_10025DAEC(a5 + 112, v104, v21);
  sub_10025DAEC(a5 + 208, v105, v47);
  v48 = v107;
  *(a5 + 304) = v106;
  *(a5 + 320) = v48;
  *(a5 + 336) = v108;
  sub_100008E50(v100);
  if (*&v82[56] && atomic_fetch_add((*&v82[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v82);
  }

  *&v82[56] = 0;
  memset(&v82[16], 0, 32);
  if (*&v82[4] >= 1)
  {
    v49 = 0;
    v50 = v83;
    do
    {
      *&v50[4 * v49++] = 0;
    }

    while (v49 < *&v82[4]);
  }

  if (v84 != v85)
  {
    j__free(v84);
  }

  if (*&v86[56] && atomic_fetch_add((*&v86[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v86);
  }

  *&v86[56] = 0;
  memset(&v86[16], 0, 32);
  if (*&v86[4] >= 1)
  {
    v51 = 0;
    v52 = v87;
    do
    {
      *&v52[4 * v51++] = 0;
    }

    while (v51 < *&v86[4]);
  }

  if (v88 != &v89)
  {
    j__free(v88);
  }

  if (*&v91[56] && atomic_fetch_add((*&v91[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v91);
  }

  *&v91[56] = 0;
  memset(&v91[16], 0, 32);
  if (*&v91[4] >= 1)
  {
    v53 = 0;
    v54 = v92;
    do
    {
      *&v54[4 * v53++] = 0;
    }

    while (v53 < *&v91[4]);
  }

  if (v93 != v94)
  {
    j__free(v93);
  }

  if (*&v95[56] && atomic_fetch_add((*&v95[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v95);
  }

  *&v95[56] = 0;
  memset(&v95[16], 0, 32);
  if (*&v95[4] >= 1)
  {
    v55 = 0;
    v56 = v96;
    do
    {
      *&v56[4 * v55++] = 0;
    }

    while (v55 < *&v95[4]);
  }

  if (v97 != &v98)
  {
    j__free(v97);
  }
}

void sub_10025DA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  sub_100006D14(&a15);
  sub_100006D14(&a27);
  sub_100006D14(&a39);
  sub_100006D14(&a51);
  _Unwind_Resume(a1);
}

double sub_10025DAEC(uint64_t a1, __int128 *a2, double result)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 56);
    if (v4 && atomic_fetch_add((v4 + 20), 0xFFFFFFFF) == 1)
    {
      v5 = a1;
      sub_100269BC8(a1);
      a1 = v5;
    }

    *(a1 + 56) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    if (*(a1 + 4) >= 1)
    {
      v6 = 0;
      v7 = *(a1 + 64);
      do
      {
        *(v7 + 4 * v6++) = 0;
      }

      while (v6 < *(a1 + 4));
    }

    v8 = *a2;
    v9 = a2[1];
    *a1 = *a2;
    *(a1 + 16) = v9;
    *(a1 + 32) = a2[2];
    *(a1 + 48) = a2[3];
    v10 = *(a1 + 72);
    v11 = (a1 + 80);
    if (v10 == (a1 + 80))
    {
      v14 = *(a2 + 9);
      if (SDWORD1(v8) <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = a1 + 8;
      v13 = a1;
      j__free(*(a1 + 72));
      a1 = v13;
      *(v13 + 64) = v12;
      *(v13 + 72) = v11;
      v10 = v11;
      v14 = *(a2 + 9);
      if (*(a2 + 1) <= 2)
      {
LABEL_10:
        *v10 = *v14;
        v10[1] = v14[1];
LABEL_13:
        *a2 = 1124007936;
        result = 0.0;
        *(a2 + 4) = 0u;
        *(a2 + 20) = 0u;
        *(a2 + 36) = 0u;
        a2[3] = 0u;
        return result;
      }
    }

    *(a1 + 64) = *(a2 + 8);
    *(a1 + 72) = v14;
    *(a2 + 8) = a2 + 8;
    *(a2 + 9) = a2 + 5;
    goto LABEL_13;
  }

  return result;
}

void sub_10025DC24(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  if ((*(*a1 + 16))(a1))
  {
    v7 = *a2;
    v8 = *(a2 + 2);
    v90 = 1124007936;
    memset(v91, 0, sizeof(v91));
    v92 = &v91[1];
    v93 = &v94;
    v94 = 0;
    v95 = 0;
    LODWORD(v86[0]) = 1124007936;
    memset(v86 + 4, 0, 48);
    v86[3] = 0u;
    v87 = v86 + 8;
    v88 = v89;
    v89[0] = 0;
    v89[1] = 0;
    v80 = 1124007936;
    memset(v81, 0, sizeof(v81));
    v82 = &v81[1];
    v83 = &v84;
    v84 = 0;
    v85 = 0;
    sub_1002670C8(v96, v7, v8, &v90, v86, &v80, a2 + 40, *(a2 + 38), *(a2 + 39));
    *a4 = *v96;
    *(a4 + 8) = *&v96[8];
    if (v96 == a4)
    {
LABEL_25:
      v27 = sub_10025DAEC(a4 + 112, v100, v9);
      sub_10025DAEC(a4 + 208, v101, v27);
      v28 = v103;
      *(a4 + 304) = v102;
      *(a4 + 320) = v28;
      *(a4 + 336) = v104;
      sub_100008E50(v96);
      if (*&v81[13] && atomic_fetch_add((*&v81[13] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(&v80);
      }

      *&v81[13] = 0;
      memset(&v81[3], 0, 32);
      if (v81[0] >= 1)
      {
        v29 = 0;
        v30 = v82;
        do
        {
          v30[v29++] = 0;
        }

        while (v29 < v81[0]);
      }

      if (v83 != &v84)
      {
        j__free(v83);
      }

      if (*(&v86[3] + 1) && atomic_fetch_add((*(&v86[3] + 1) + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v86);
      }

      *(&v86[3] + 1) = 0;
      memset(&v86[1], 0, 32);
      if (SDWORD1(v86[0]) >= 1)
      {
        v31 = 0;
        v32 = v87;
        do
        {
          *&v32[4 * v31++] = 0;
        }

        while (v31 < SDWORD1(v86[0]));
      }

      if (v88 != v89)
      {
        j__free(v88);
      }

      if (*&v91[13] && atomic_fetch_add((*&v91[13] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(&v90);
      }

      *&v91[13] = 0;
      memset(&v91[3], 0, 32);
      if (v91[0] >= 1)
      {
        v33 = 0;
        v34 = v92;
        do
        {
          v34[v33++] = 0;
        }

        while (v33 < v91[0]);
      }

      if (v93 != &v94)
      {
        j__free(v93);
      }

      if (!a2[4])
      {
LABEL_106:
        if (!a2[16])
        {
          goto LABEL_128;
        }

        sub_10026A6E4((a2 + 14), a3, v96);
        if ((a4 + 112) == v96)
        {
          if (*&v96[56] && atomic_fetch_add((*&v96[56] + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v96);
          }

          goto LABEL_123;
        }

        v55 = *(a4 + 168);
        if (v55 && atomic_fetch_add((v55 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a4 + 112);
        }

        *(a4 + 168) = 0;
        *(a4 + 128) = 0u;
        *(a4 + 144) = 0u;
        if (*(a4 + 116) >= 1)
        {
          v56 = 0;
          v57 = *(a4 + 176);
          do
          {
            *(v57 + 4 * v56++) = 0;
          }

          while (v56 < *(a4 + 116));
        }

        v58 = *&v96[4];
        v59 = *&v96[16];
        *(a4 + 112) = *v96;
        *(a4 + 128) = v59;
        v60 = *&v96[48];
        *(a4 + 144) = *&v96[32];
        *(a4 + 160) = v60;
        v61 = *(a4 + 184);
        if (v61 == (a4 + 192))
        {
          v62 = *&v96[72];
          if (v58 <= 2)
          {
            goto LABEL_116;
          }
        }

        else
        {
          j__free(v61);
          *(a4 + 176) = a4 + 120;
          *(a4 + 184) = a4 + 192;
          v61 = (a4 + 192);
          v62 = *&v96[72];
          if (*&v96[4] <= 2)
          {
LABEL_116:
            *v61 = *v62;
            v61[1] = v62[1];
LABEL_122:
            *v96 = 1124007936;
            memset(&v96[4], 0, 60);
LABEL_123:
            *&v96[56] = 0;
            memset(&v96[16], 0, 32);
            if (*&v96[4] >= 1)
            {
              v63 = 0;
              v64 = *&v96[64];
              do
              {
                *(v64 + 4 * v63++) = 0;
              }

              while (v63 < *&v96[4]);
            }

            if (*&v96[72] != &v97)
            {
              j__free(*&v96[72]);
            }

LABEL_128:
            if (!a2[28])
            {
              return;
            }

            sub_10026A6E4((a2 + 26), a3, v96);
            if ((a4 + 208) == v96)
            {
              if (*&v96[56] && atomic_fetch_add((*&v96[56] + 20), 0xFFFFFFFF) == 1)
              {
                sub_100269BC8(v96);
              }

              goto LABEL_145;
            }

            v65 = *(a4 + 264);
            if (v65 && atomic_fetch_add((v65 + 20), 0xFFFFFFFF) == 1)
            {
              sub_100269BC8(a4 + 208);
            }

            *(a4 + 264) = 0;
            *(a4 + 224) = 0u;
            *(a4 + 240) = 0u;
            if (*(a4 + 212) >= 1)
            {
              v66 = 0;
              v67 = *(a4 + 272);
              do
              {
                *(v67 + 4 * v66++) = 0;
              }

              while (v66 < *(a4 + 212));
            }

            v68 = *&v96[4];
            v69 = *&v96[16];
            *(a4 + 208) = *v96;
            *(a4 + 224) = v69;
            v70 = *&v96[48];
            *(a4 + 240) = *&v96[32];
            *(a4 + 256) = v70;
            v71 = *(a4 + 280);
            if (v71 == (a4 + 288))
            {
              v72 = *&v96[72];
              if (v68 <= 2)
              {
                goto LABEL_138;
              }
            }

            else
            {
              j__free(v71);
              *(a4 + 272) = a4 + 216;
              *(a4 + 280) = a4 + 288;
              v71 = (a4 + 288);
              v72 = *&v96[72];
              if (*&v96[4] <= 2)
              {
LABEL_138:
                *v71 = *v72;
                v71[1] = v72[1];
LABEL_144:
                *v96 = 1124007936;
                memset(&v96[4], 0, 60);
LABEL_145:
                *&v96[56] = 0;
                memset(&v96[16], 0, 32);
                if (*&v96[4] >= 1)
                {
                  v73 = 0;
                  v74 = *&v96[64];
                  do
                  {
                    *(v74 + 4 * v73++) = 0;
                  }

                  while (v73 < *&v96[4]);
                }

                if (*&v96[72] != &v97)
                {
                  j__free(*&v96[72]);
                }

                return;
              }
            }

            *(a4 + 272) = *&v96[64];
            *(a4 + 280) = v72;
            *&v96[64] = &v96[8];
            *&v96[72] = &v97;
            goto LABEL_144;
          }
        }

        *(a4 + 176) = *&v96[64];
        *(a4 + 184) = v62;
        *&v96[64] = &v96[8];
        *&v96[72] = &v97;
        goto LABEL_122;
      }

      sub_10026A6E4((a2 + 2), a3, v96);
      if ((a4 + 16) == v96)
      {
        if (*&v96[56] && atomic_fetch_add((*&v96[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v96);
        }

        goto LABEL_101;
      }

      v35 = *(a4 + 72);
      if (v35 && atomic_fetch_add((v35 + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(a4 + 16);
      }

      *(a4 + 72) = 0;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      if (*(a4 + 20) >= 1)
      {
        v36 = 0;
        v37 = *(a4 + 80);
        do
        {
          *(v37 + 4 * v36++) = 0;
        }

        while (v36 < *(a4 + 20));
      }

      v38 = *&v96[4];
      v39 = *&v96[16];
      *(a4 + 16) = *v96;
      *(a4 + 32) = v39;
      v40 = *&v96[48];
      *(a4 + 48) = *&v96[32];
      *(a4 + 64) = v40;
      v41 = *(a4 + 88);
      if (v41 == (a4 + 96))
      {
        v42 = *&v96[72];
        if (v38 <= 2)
        {
          goto LABEL_59;
        }
      }

      else
      {
        j__free(v41);
        *(a4 + 80) = a4 + 24;
        *(a4 + 88) = a4 + 96;
        v41 = (a4 + 96);
        v42 = *&v96[72];
        if (*&v96[4] <= 2)
        {
LABEL_59:
          *v41 = *v42;
          v41[1] = v42[1];
LABEL_100:
          *v96 = 1124007936;
          memset(&v96[4], 0, 60);
LABEL_101:
          *&v96[56] = 0;
          memset(&v96[16], 0, 32);
          if (*&v96[4] >= 1)
          {
            v53 = 0;
            v54 = *&v96[64];
            do
            {
              *(v54 + 4 * v53++) = 0;
            }

            while (v53 < *&v96[4]);
          }

          if (*&v96[72] != &v97)
          {
            j__free(*&v96[72]);
          }

          goto LABEL_106;
        }
      }

      *(a4 + 80) = *&v96[64];
      *(a4 + 88) = v42;
      *&v96[64] = &v96[8];
      *&v96[72] = &v97;
      goto LABEL_100;
    }

    v10 = *(a4 + 72);
    if (v10 && atomic_fetch_add((v10 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a4 + 16);
    }

    *(a4 + 72) = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    if (*(a4 + 20) >= 1)
    {
      v11 = 0;
      v12 = *(a4 + 80);
      do
      {
        *(v12 + 4 * v11++) = 0;
      }

      while (v11 < *(a4 + 20));
    }

    v13 = *&v96[20];
    v14 = *&v96[32];
    *(a4 + 16) = *&v96[16];
    *(a4 + 32) = v14;
    v15 = *&v96[64];
    *(a4 + 48) = *&v96[48];
    *(a4 + 64) = v15;
    v16 = *(a4 + 88);
    if (v16 == (a4 + 96))
    {
      v17 = v98;
      if (v13 <= 2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      j__free(v16);
      *(a4 + 80) = a4 + 24;
      *(a4 + 88) = a4 + 96;
      v16 = (a4 + 96);
      v17 = v98;
      if (*&v96[20] <= 2)
      {
LABEL_11:
        *v16 = *v17;
        v16[1] = v17[1];
LABEL_24:
        *&v96[16] = 1124007936;
        v9 = 0.0;
        memset(&v96[20], 0, 60);
        goto LABEL_25;
      }
    }

    *(a4 + 80) = v97;
    *(a4 + 88) = v17;
    v97 = &v96[24];
    v98 = v99;
    goto LABEL_24;
  }

  v90 = 1124007936;
  memset(v91, 0, sizeof(v91));
  v92 = &v91[1];
  v93 = &v94;
  v94 = 0;
  v95 = 0;
  (*(**a2 + 24))(*a2, a2, &v90, 0xFFFFFFFFLL);
  sub_10026A6E4(&v90, a3, v86);
  v80 = 1124007936;
  memset(v81, 0, sizeof(v81));
  v82 = &v81[1];
  v83 = &v84;
  v84 = 0;
  v85 = 0;
  LODWORD(v76[0]) = 1124007936;
  memset(v76 + 4, 0, 48);
  v76[3] = 0u;
  v77 = v76 + 8;
  v78 = v79;
  v79[0] = 0;
  v79[1] = 0;
  memset(v75, 0, sizeof(v75));
  sub_1002670C8(v96, &qword_1004BD530, 0, v86, &v80, v76, v75, 1.0, 1.0);
  *a4 = *v96;
  *(a4 + 8) = *&v96[8];
  if (v96 != a4)
  {
    v19 = *(a4 + 72);
    if (v19 && atomic_fetch_add((v19 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a4 + 16);
    }

    *(a4 + 72) = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    if (*(a4 + 20) >= 1)
    {
      v20 = 0;
      v21 = *(a4 + 80);
      do
      {
        *(v21 + 4 * v20++) = 0;
      }

      while (v20 < *(a4 + 20));
    }

    v22 = *&v96[20];
    v23 = *&v96[32];
    *(a4 + 16) = *&v96[16];
    *(a4 + 32) = v23;
    v24 = *&v96[64];
    *(a4 + 48) = *&v96[48];
    *(a4 + 64) = v24;
    v25 = *(a4 + 88);
    if (v25 == (a4 + 96))
    {
      v26 = v98;
      if (v22 <= 2)
      {
        goto LABEL_21;
      }
    }

    else
    {
      j__free(v25);
      *(a4 + 80) = a4 + 24;
      *(a4 + 88) = a4 + 96;
      v25 = (a4 + 96);
      v26 = v98;
      if (*&v96[20] <= 2)
      {
LABEL_21:
        *v25 = *v26;
        v25[1] = v26[1];
LABEL_62:
        *&v96[16] = 1124007936;
        v18 = 0.0;
        memset(&v96[20], 0, 60);
        goto LABEL_63;
      }
    }

    *(a4 + 80) = v97;
    *(a4 + 88) = v26;
    v97 = &v96[24];
    v98 = v99;
    goto LABEL_62;
  }

LABEL_63:
  v43 = sub_10025DAEC(a4 + 112, v100, v18);
  sub_10025DAEC(a4 + 208, v101, v43);
  v44 = v103;
  *(a4 + 304) = v102;
  *(a4 + 320) = v44;
  *(a4 + 336) = v104;
  sub_100008E50(v96);
  if (*(&v76[3] + 1) && atomic_fetch_add((*(&v76[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v76);
  }

  *(&v76[3] + 1) = 0;
  memset(&v76[1], 0, 32);
  if (SDWORD1(v76[0]) >= 1)
  {
    v45 = 0;
    v46 = v77;
    do
    {
      *&v46[4 * v45++] = 0;
    }

    while (v45 < SDWORD1(v76[0]));
  }

  if (v78 != v79)
  {
    j__free(v78);
  }

  if (*&v81[13] && atomic_fetch_add((*&v81[13] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v80);
  }

  *&v81[13] = 0;
  memset(&v81[3], 0, 32);
  if (v81[0] >= 1)
  {
    v47 = 0;
    v48 = v82;
    do
    {
      v48[v47++] = 0;
    }

    while (v47 < v81[0]);
  }

  if (v83 != &v84)
  {
    j__free(v83);
  }

  if (*(&v86[3] + 1) && atomic_fetch_add((*(&v86[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v86);
  }

  *(&v86[3] + 1) = 0;
  memset(&v86[1], 0, 32);
  if (SDWORD1(v86[0]) >= 1)
  {
    v49 = 0;
    v50 = v87;
    do
    {
      *&v50[4 * v49++] = 0;
    }

    while (v49 < SDWORD1(v86[0]));
  }

  if (v88 != v89)
  {
    j__free(v88);
  }

  if (*&v91[13] && atomic_fetch_add((*&v91[13] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v90);
  }

  *&v91[13] = 0;
  memset(&v91[3], 0, 32);
  if (v91[0] >= 1)
  {
    v51 = 0;
    v52 = v92;
    do
    {
      v52[v51++] = 0;
    }

    while (v51 < v91[0]);
  }

  if (v93 != &v94)
  {
    j__free(v93);
  }
}

void sub_10025E8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_100006D14(&a13);
  sub_100006D14(&a25);
  sub_100006D14(&a37);
  sub_100006D14(&a49);
  _Unwind_Resume(a1);
}

void sub_10025E938(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v7[0]) = 1124007936;
  memset(v7 + 4, 0, 32);
  memset(&v7[4] + 4, 0, 28);
  v8 = &v7[1];
  v9 = v10;
  v10[0] = 0;
  v10[1] = 0;
  (*(**a2 + 24))(*a2, a2, v7, 0xFFFFFFFFLL);
  v19 = 0;
  v17 = 16842752;
  v18 = a3;
  v16 = 0;
  v14 = 16842752;
  v15 = v7;
  v11 = 33619968;
  v12 = a3;
  v13 = 0;
  v4 = sub_100276DA4();
  sub_1001DAF28(&v17, &v14, &v11, v4, -1);
  if (v7[7] && atomic_fetch_add((v7[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v7);
  }

  v7[7] = 0;
  memset(&v7[2], 0, 32);
  if (SHIDWORD(v7[0]) >= 1)
  {
    v5 = 0;
    v6 = v8;
    do
    {
      *(v6 + v5++) = 0;
    }

    while (v5 < SHIDWORD(v7[0]));
  }

  if (v9 != v10)
  {
    j__free(v9);
  }
}

void sub_10025EA80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_10025EA94(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v7[0]) = 1124007936;
  memset(v7 + 4, 0, 32);
  memset(&v7[4] + 4, 0, 28);
  v8 = &v7[1];
  v9 = v10;
  v10[0] = 0;
  v10[1] = 0;
  (*(**a2 + 24))(*a2, a2, v7, 0xFFFFFFFFLL);
  v19 = 0;
  v17 = 16842752;
  v18 = a3;
  v16 = 0;
  v14 = 16842752;
  v15 = v7;
  v11 = 33619968;
  v12 = a3;
  v13 = 0;
  v4 = sub_100276DA4();
  sub_1001DD10C(&v17, &v14, &v11, v4, -1);
  if (v7[7] && atomic_fetch_add((v7[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v7);
  }

  v7[7] = 0;
  memset(&v7[2], 0, 32);
  if (SHIDWORD(v7[0]) >= 1)
  {
    v5 = 0;
    v6 = v8;
    do
    {
      *(v6 + v5++) = 0;
    }

    while (v5 < SHIDWORD(v7[0]));
  }

  if (v9 != v10)
  {
    j__free(v9);
  }
}

void sub_10025EBDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_10025EBF0(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v8[0]) = 1124007936;
  memset(v8 + 4, 0, 32);
  memset(&v8[4] + 4, 0, 28);
  v9 = &v8[1];
  v10 = v11;
  v11[0] = 0;
  v11[1] = 0;
  (*(**a2 + 24))(*a2, a2, v8, 0xFFFFFFFFLL);
  v27 = 0;
  v25 = 16842752;
  v26 = a3;
  v24 = 0;
  v22 = 16842752;
  v23 = v8;
  LODWORD(v15[0]) = 1124007936;
  memset(v15 + 4, 0, 48);
  v15[3] = 0u;
  v16 = v15 + 8;
  v17 = v18;
  v18[0] = 0;
  v18[1] = 0;
  v21 = 0;
  v19 = 16842752;
  v20 = v15;
  v12 = 33619968;
  v13 = a3;
  v14 = 0;
  sub_100243EB0(&v25, &v22, &v19, &v12, 0, 1.0, 0.0);
  if (*(&v15[3] + 1) && atomic_fetch_add((*(&v15[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v15);
  }

  *(&v15[3] + 1) = 0;
  memset(&v15[1], 0, 32);
  if (SDWORD1(v15[0]) >= 1)
  {
    v4 = 0;
    v5 = v16;
    do
    {
      *&v5[4 * v4++] = 0;
    }

    while (v4 < SDWORD1(v15[0]));
  }

  if (v17 != v18)
  {
    j__free(v17);
  }

  if (v8[7] && atomic_fetch_add((v8[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v8);
  }

  v8[7] = 0;
  memset(&v8[2], 0, 32);
  if (SHIDWORD(v8[0]) >= 1)
  {
    v6 = 0;
    v7 = v9;
    do
    {
      *(v7 + v6++) = 0;
    }

    while (v6 < SHIDWORD(v8[0]));
  }

  if (v10 != v11)
  {
    j__free(v10);
  }
}

void sub_10025EDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_100006D14(&a24);
  sub_100006D14(&a9);
  _Unwind_Resume(a1);
}

void sub_10025EE10(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v6[0]) = 1124007936;
  memset(v6 + 4, 0, 32);
  memset(&v6[4] + 4, 0, 28);
  v7 = &v6[1];
  v8 = v9;
  v9[0] = 0;
  v9[1] = 0;
  (*(**a2 + 24))(*a2, a2, v6, 0xFFFFFFFFLL);
  v18 = 0;
  v16 = 16842752;
  v17 = a3;
  v15 = 0;
  v13 = 16842752;
  v14 = v6;
  v10 = 33619968;
  v11 = a3;
  v12 = 0;
  sub_1001DD2F4(&v16, &v13, &v10, -1, 1.0);
  if (v6[7] && atomic_fetch_add((v6[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v6);
  }

  v6[7] = 0;
  memset(&v6[2], 0, 32);
  if (SHIDWORD(v6[0]) >= 1)
  {
    v4 = 0;
    v5 = v7;
    do
    {
      *(v5 + v4++) = 0;
    }

    while (v4 < SHIDWORD(v6[0]));
  }

  if (v8 != v9)
  {
    j__free(v8);
  }
}

void sub_10025EF54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_10025EF68(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v7[0]) = 1124007936;
  memset(v7 + 4, 0, 32);
  memset(&v7[4] + 4, 0, 28);
  v8 = &v7[1];
  v9 = v10;
  v10[0] = 0;
  v10[1] = 0;
  (*(**a2 + 24))(*a2, a2, v7, 0xFFFFFFFFLL);
  v19 = 0;
  v17 = 16842752;
  v18 = a3;
  v16 = 0;
  v14 = 16842752;
  v15 = v7;
  v11 = 33619968;
  v12 = a3;
  v13 = 0;
  v4 = sub_100276DA4();
  sub_1001D9360(&v17, &v14, &v11, v4);
  if (v7[7] && atomic_fetch_add((v7[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v7);
  }

  v7[7] = 0;
  memset(&v7[2], 0, 32);
  if (SHIDWORD(v7[0]) >= 1)
  {
    v5 = 0;
    v6 = v8;
    do
    {
      *(v6 + v5++) = 0;
    }

    while (v5 < SHIDWORD(v7[0]));
  }

  if (v9 != v10)
  {
    j__free(v9);
  }
}

void sub_10025F0AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_10025F0C0(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v7[0]) = 1124007936;
  memset(v7 + 4, 0, 32);
  memset(&v7[4] + 4, 0, 28);
  v8 = &v7[1];
  v9 = v10;
  v10[0] = 0;
  v10[1] = 0;
  (*(**a2 + 24))(*a2, a2, v7, 0xFFFFFFFFLL);
  v19 = 0;
  v17 = 16842752;
  v18 = a3;
  v16 = 0;
  v14 = 16842752;
  v15 = v7;
  v11 = 33619968;
  v12 = a3;
  v13 = 0;
  v4 = sub_100276DA4();
  sub_1001DAA7C(&v17, &v14, &v11, v4);
  if (v7[7] && atomic_fetch_add((v7[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v7);
  }

  v7[7] = 0;
  memset(&v7[2], 0, 32);
  if (SHIDWORD(v7[0]) >= 1)
  {
    v5 = 0;
    v6 = v8;
    do
    {
      *(v6 + v5++) = 0;
    }

    while (v5 < SHIDWORD(v7[0]));
  }

  if (v9 != v10)
  {
    j__free(v9);
  }
}

void sub_10025F204(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_10025F218(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v7[0]) = 1124007936;
  memset(v7 + 4, 0, 32);
  memset(&v7[4] + 4, 0, 28);
  v8 = &v7[1];
  v9 = v10;
  v10[0] = 0;
  v10[1] = 0;
  (*(**a2 + 24))(*a2, a2, v7, 0xFFFFFFFFLL);
  v19 = 0;
  v17 = 16842752;
  v18 = a3;
  v16 = 0;
  v14 = 16842752;
  v15 = v7;
  v11 = 33619968;
  v12 = a3;
  v13 = 0;
  v4 = sub_100276DA4();
  sub_1001DAB24(&v17, &v14, &v11, v4);
  if (v7[7] && atomic_fetch_add((v7[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v7);
  }

  v7[7] = 0;
  memset(&v7[2], 0, 32);
  if (SHIDWORD(v7[0]) >= 1)
  {
    v5 = 0;
    v6 = v8;
    do
    {
      *(v6 + v5++) = 0;
    }

    while (v5 < SHIDWORD(v7[0]));
  }

  if (v9 != v10)
  {
    j__free(v9);
  }
}

void sub_10025F35C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_10025F370(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  sub_1002ACE7C(v42, &off_1004740C8);
  if (*a3 != a1)
  {
    (*(**a3 + 104))(*a3, a2, a3, a4);
    goto LABEL_53;
  }

  v40 = 0u;
  v41 = 0u;
  *v36 = 1124007936;
  memset(&v36[4], 0, 60);
  v37 = &v36[8];
  v38 = v39;
  v39[0] = 0;
  v39[1] = 0;
  *v32 = 1124007936;
  memset(&v32[4], 0, 60);
  v33 = &v32[8];
  v34 = v35;
  v35[0] = 0;
  v35[1] = 0;
  if (*a2 == &qword_1004BD538 && (!a2[16] || *(a2 + 39) == 0.0))
  {
    v14 = a2 + 2;
    if (v36 == (a2 + 2))
    {
      goto LABEL_35;
    }

    v15 = a2[9];
    if (v15)
    {
      atomic_fetch_add((v15 + 20), 1u);
      if (*&v36[56])
      {
        if (atomic_fetch_add((*&v36[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v36);
        }
      }
    }

    *&v36[56] = 0;
    memset(&v36[16], 0, 32);
    if (*v36 <= 0)
    {
      *v36 = *v14;
    }

    else
    {
      v16 = 0;
      v17 = v37;
      do
      {
        *&v17[4 * v16++] = 0;
      }

      while (v16 < *&v36[4]);
      *v36 = *v14;
      if (*&v36[4] > 2)
      {
        goto LABEL_33;
      }
    }

    if (*(a2 + 5) <= 2)
    {
      *&v36[4] = *(a2 + 5);
      *&v36[8] = a2[3];
      v18 = a2[11];
      v19 = v38;
      *v38 = *v18;
      v19[1] = v18[1];
LABEL_34:
      v20 = *(a2 + 3);
      *&v36[16] = *(a2 + 2);
      *&v36[32] = v20;
      v21 = a2[9];
      *&v36[48] = a2[8];
      *&v36[56] = v21;
LABEL_35:
      v8 = *(a2 + 38);
      v22 = *(a2 + 21);
      v40 = *(a2 + 20);
      v41 = v22;
      v9 = *a3;
      if (*a3 == &qword_1004BD538)
      {
        goto LABEL_7;
      }

LABEL_36:
      v23 = 1.0;
      (*(*v9 + 24))(v9, a3, v32, 0xFFFFFFFFLL);
      goto LABEL_37;
    }

LABEL_33:
    sub_100269B58(v36, (a2 + 2));
    goto LABEL_34;
  }

  v8 = 1.0;
  (*(**a2 + 24))(*a2, a2, v36, 0xFFFFFFFFLL);
  v9 = *a3;
  if (*a3 != &qword_1004BD538)
  {
    goto LABEL_36;
  }

LABEL_7:
  if (a3[16] && *(a3 + 39) != 0.0)
  {
    goto LABEL_36;
  }

  v10 = a3 + 2;
  if (v32 != (a3 + 2))
  {
    v11 = a3[9];
    if (v11)
    {
      atomic_fetch_add((v11 + 20), 1u);
    }

    if (*&v32[56] && atomic_fetch_add((*&v32[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v32);
    }

    *&v32[56] = 0;
    memset(&v32[16], 0, 32);
    if (*v32 <= 0)
    {
      *v32 = *v10;
    }

    else
    {
      v12 = 0;
      v13 = v33;
      do
      {
        *&v13[4 * v12++] = 0;
      }

      while (v12 < *&v32[4]);
      *v32 = *v10;
      if (*&v32[4] > 2)
      {
        goto LABEL_59;
      }
    }

    if (*(a3 + 5) <= 2)
    {
      *&v32[4] = *(a3 + 5);
      *&v32[8] = a3[3];
      v28 = a3[11];
      v29 = v34;
      *v34 = *v28;
      v29[1] = v28[1];
LABEL_60:
      v30 = *(a3 + 3);
      *&v32[16] = *(a3 + 2);
      *&v32[32] = v30;
      *&v32[48] = *(a3 + 4);
      goto LABEL_61;
    }

LABEL_59:
    sub_100269B58(v32, (a3 + 2));
    goto LABEL_60;
  }

LABEL_61:
  v23 = *(a3 + 38);
  v31 = vaddq_f64(*(a3 + 21), v41);
  v40 = vaddq_f64(*(a3 + 20), v40);
  v41 = v31;
LABEL_37:
  sub_10025F864(a4, v36, v32, &v40, v8, v23);
  if (*&v32[56] && atomic_fetch_add((*&v32[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v32);
  }

  *&v32[56] = 0;
  memset(&v32[16], 0, 32);
  if (*&v32[4] >= 1)
  {
    v24 = 0;
    v25 = v33;
    do
    {
      *&v25[4 * v24++] = 0;
    }

    while (v24 < *&v32[4]);
  }

  if (v34 != v35)
  {
    j__free(v34);
  }

  if (*&v36[56] && atomic_fetch_add((*&v36[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v36);
  }

  *&v36[56] = 0;
  memset(&v36[16], 0, 32);
  if (*&v36[4] >= 1)
  {
    v26 = 0;
    v27 = v37;
    do
    {
      *&v27[4 * v26++] = 0;
    }

    while (v26 < *&v36[4]);
  }

  if (v38 != v39)
  {
    j__free(v38);
  }

LABEL_53:
  if (v43)
  {
    sub_1002ACC1C(v42);
  }
}

void sub_10025F840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_100006D14(&a9);
  sub_100006D14(&a21);
  sub_1001D8BF4(v21 - 96);
  _Unwind_Resume(a1);
}

void sub_10025F864(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  LODWORD(v20[0]) = 1124007936;
  memset(v20 + 4, 0, 48);
  v20[3] = 0u;
  v21 = v20 + 8;
  v22 = v23;
  v23[0] = 0;
  v23[1] = 0;
  sub_1002670C8(&v24, &qword_1004BD538, 0, a2, a3, v20, a4, a5, a6);
  *a1 = v24;
  *(a1 + 8) = v25;
  if (&v24 != a1)
  {
    v8 = *(a1 + 72);
    if (v8 && atomic_fetch_add((v8 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v9 = 0;
      v10 = *(a1 + 80);
      do
      {
        *(v10 + 4 * v9++) = 0;
      }

      while (v9 < *(a1 + 20));
    }

    v11 = *&v26[4];
    v12 = *&v26[16];
    *(a1 + 16) = *v26;
    *(a1 + 32) = v12;
    v13 = *&v26[48];
    *(a1 + 48) = *&v26[32];
    *(a1 + 64) = v13;
    v14 = *(a1 + 88);
    if (v14 == (a1 + 96))
    {
      v15 = v28;
      if (v11 <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      j__free(v14);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v14 = (a1 + 96);
      v15 = v28;
      if (*&v26[4] <= 2)
      {
LABEL_10:
        *v14 = *v15;
        v14[1] = v15[1];
LABEL_13:
        *v26 = 1124007936;
        v7 = 0.0;
        memset(&v26[4], 0, 60);
        goto LABEL_14;
      }
    }

    *(a1 + 80) = v27;
    *(a1 + 88) = v15;
    v27 = &v26[8];
    v28 = &v29;
    goto LABEL_13;
  }

LABEL_14:
  v16 = sub_10025DAEC(a1 + 112, v30, v7);
  sub_10025DAEC(a1 + 208, v31, v16);
  v17 = v31[7];
  *(a1 + 304) = v31[6];
  *(a1 + 320) = v17;
  *(a1 + 336) = v31[8];
  sub_100008E50(&v24);
  if (*(&v20[3] + 1) && atomic_fetch_add((*(&v20[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v20);
  }

  *(&v20[3] + 1) = 0;
  memset(&v20[1], 0, 32);
  if (SDWORD1(v20[0]) >= 1)
  {
    v18 = 0;
    v19 = v21;
    do
    {
      *&v19[4 * v18++] = 0;
    }

    while (v18 < SDWORD1(v20[0]));
  }

  if (v22 != v23)
  {
    j__free(v22);
  }
}

void sub_10025FAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_100008E50(&a21);
  sub_100006D14(&a9);
  _Unwind_Resume(a1);
}

void sub_10025FACC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  sub_1002ACE7C(v19, &off_1004740E8);
  LODWORD(v15[0]) = 1124007936;
  memset(v15 + 4, 0, 32);
  memset(&v15[4] + 4, 0, 28);
  v16 = &v15[1];
  v17 = v18;
  v18[0] = 0;
  v18[1] = 0;
  (*(**a2 + 24))(*a2, a2, v15, 0xFFFFFFFFLL);
  LODWORD(v11[0]) = 1124007936;
  memset(v11 + 4, 0, 48);
  v11[3] = 0u;
  v12 = v11 + 8;
  v13 = v14;
  v14[0] = 0;
  v14[1] = 0;
  sub_10025F864(a4, v15, v11, a3, 1.0, 0.0);
  if (*(&v11[3] + 1) && atomic_fetch_add((*(&v11[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v11);
  }

  *(&v11[3] + 1) = 0;
  memset(&v11[1], 0, 32);
  if (SDWORD1(v11[0]) >= 1)
  {
    v7 = 0;
    v8 = v12;
    do
    {
      *&v8[4 * v7++] = 0;
    }

    while (v7 < SDWORD1(v11[0]));
  }

  if (v13 != v14)
  {
    j__free(v13);
  }

  if (v15[7] && atomic_fetch_add((v15[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v15);
  }

  v15[7] = 0;
  memset(&v15[2], 0, 32);
  if (SHIDWORD(v15[0]) >= 1)
  {
    v9 = 0;
    v10 = v16;
    do
    {
      *(v10 + v9++) = 0;
    }

    while (v9 < SHIDWORD(v15[0]));
  }

  if (v17 != v18)
  {
    j__free(v17);
  }

  if (v20)
  {
    sub_1002ACC1C(v19);
  }
}

void sub_10025FCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_100006D14(&a9);
  sub_100006D14(&a21);
  sub_1001D8BF4(v21 - 64);
  _Unwind_Resume(a1);
}

void sub_10025FCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100006D14(va);
  sub_1001D8BF4(v13 - 64);
  _Unwind_Resume(a1);
}

void sub_10025FCF4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  sub_1002ACE7C(v42, &off_100474108);
  if (*a3 != a1)
  {
    (*(**a3 + 120))(*a3, a2, a3, a4);
    goto LABEL_53;
  }

  v40 = 0u;
  v41 = 0u;
  *v36 = 1124007936;
  memset(&v36[4], 0, 60);
  v37 = &v36[8];
  v38 = v39;
  v39[0] = 0;
  v39[1] = 0;
  *v32 = 1124007936;
  memset(&v32[4], 0, 60);
  v33 = &v32[8];
  v34 = v35;
  v35[0] = 0;
  v35[1] = 0;
  if (*a2 == &qword_1004BD538 && (!a2[16] || *(a2 + 39) == 0.0))
  {
    v14 = a2 + 2;
    if (v36 == (a2 + 2))
    {
      goto LABEL_35;
    }

    v15 = a2[9];
    if (v15)
    {
      atomic_fetch_add((v15 + 20), 1u);
      if (*&v36[56])
      {
        if (atomic_fetch_add((*&v36[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v36);
        }
      }
    }

    *&v36[56] = 0;
    memset(&v36[16], 0, 32);
    if (*v36 <= 0)
    {
      *v36 = *v14;
    }

    else
    {
      v16 = 0;
      v17 = v37;
      do
      {
        *&v17[4 * v16++] = 0;
      }

      while (v16 < *&v36[4]);
      *v36 = *v14;
      if (*&v36[4] > 2)
      {
        goto LABEL_33;
      }
    }

    if (*(a2 + 5) <= 2)
    {
      *&v36[4] = *(a2 + 5);
      *&v36[8] = a2[3];
      v18 = a2[11];
      v19 = v38;
      *v38 = *v18;
      v19[1] = v18[1];
LABEL_34:
      v20 = *(a2 + 3);
      *&v36[16] = *(a2 + 2);
      *&v36[32] = v20;
      v21 = a2[9];
      *&v36[48] = a2[8];
      *&v36[56] = v21;
LABEL_35:
      v8 = *(a2 + 38);
      v22 = *(a2 + 21);
      v40 = *(a2 + 20);
      v41 = v22;
      v9 = *a3;
      if (*a3 == &qword_1004BD538)
      {
        goto LABEL_7;
      }

LABEL_36:
      v23 = -1.0;
      (*(*v9 + 24))(v9, a3, v32, 0xFFFFFFFFLL);
      goto LABEL_37;
    }

LABEL_33:
    sub_100269B58(v36, (a2 + 2));
    goto LABEL_34;
  }

  v8 = 1.0;
  (*(**a2 + 24))(*a2, a2, v36, 0xFFFFFFFFLL);
  v9 = *a3;
  if (*a3 != &qword_1004BD538)
  {
    goto LABEL_36;
  }

LABEL_7:
  if (a3[16] && *(a3 + 39) != 0.0)
  {
    goto LABEL_36;
  }

  v10 = a3 + 2;
  if (v32 != (a3 + 2))
  {
    v11 = a3[9];
    if (v11)
    {
      atomic_fetch_add((v11 + 20), 1u);
    }

    if (*&v32[56] && atomic_fetch_add((*&v32[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v32);
    }

    *&v32[56] = 0;
    memset(&v32[16], 0, 32);
    if (*v32 <= 0)
    {
      *v32 = *v10;
    }

    else
    {
      v12 = 0;
      v13 = v33;
      do
      {
        *&v13[4 * v12++] = 0;
      }

      while (v12 < *&v32[4]);
      *v32 = *v10;
      if (*&v32[4] > 2)
      {
        goto LABEL_59;
      }
    }

    if (*(a3 + 5) <= 2)
    {
      *&v32[4] = *(a3 + 5);
      *&v32[8] = a3[3];
      v28 = a3[11];
      v29 = v34;
      *v34 = *v28;
      v29[1] = v28[1];
LABEL_60:
      v30 = *(a3 + 3);
      *&v32[16] = *(a3 + 2);
      *&v32[32] = v30;
      *&v32[48] = *(a3 + 4);
      goto LABEL_61;
    }

LABEL_59:
    sub_100269B58(v32, (a3 + 2));
    goto LABEL_60;
  }

LABEL_61:
  v23 = -*(a3 + 38);
  v31 = vsubq_f64(v41, *(a3 + 21));
  v40 = vsubq_f64(v40, *(a3 + 20));
  v41 = v31;
LABEL_37:
  sub_10025F864(a4, v36, v32, &v40, v8, v23);
  if (*&v32[56] && atomic_fetch_add((*&v32[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v32);
  }

  *&v32[56] = 0;
  memset(&v32[16], 0, 32);
  if (*&v32[4] >= 1)
  {
    v24 = 0;
    v25 = v33;
    do
    {
      *&v25[4 * v24++] = 0;
    }

    while (v24 < *&v32[4]);
  }

  if (v34 != v35)
  {
    j__free(v34);
  }

  if (*&v36[56] && atomic_fetch_add((*&v36[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v36);
  }

  *&v36[56] = 0;
  memset(&v36[16], 0, 32);
  if (*&v36[4] >= 1)
  {
    v26 = 0;
    v27 = v37;
    do
    {
      *&v27[4 * v26++] = 0;
    }

    while (v26 < *&v36[4]);
  }

  if (v38 != v39)
  {
    j__free(v38);
  }

LABEL_53:
  if (v43)
  {
    sub_1002ACC1C(v42);
  }
}

void sub_1002601C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_100006D14(&a9);
  sub_100006D14(&a21);
  sub_1001D8BF4(v21 - 96);
  _Unwind_Resume(a1);
}

void sub_1002601EC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  sub_1002ACE7C(v19, &off_100474128);
  LODWORD(v15[0]) = 1124007936;
  memset(v15 + 4, 0, 32);
  memset(&v15[4] + 4, 0, 28);
  v16 = &v15[1];
  v17 = v18;
  v18[0] = 0;
  v18[1] = 0;
  (*(**a3 + 24))(*a3, a3, v15, 0xFFFFFFFFLL);
  LODWORD(v11[0]) = 1124007936;
  memset(v11 + 4, 0, 48);
  v11[3] = 0u;
  v12 = v11 + 8;
  v13 = v14;
  v14[0] = 0;
  v14[1] = 0;
  sub_10025F864(a4, v15, v11, a2, -1.0, 0.0);
  if (*(&v11[3] + 1) && atomic_fetch_add((*(&v11[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v11);
  }

  *(&v11[3] + 1) = 0;
  memset(&v11[1], 0, 32);
  if (SDWORD1(v11[0]) >= 1)
  {
    v7 = 0;
    v8 = v12;
    do
    {
      *&v8[4 * v7++] = 0;
    }

    while (v7 < SDWORD1(v11[0]));
  }

  if (v13 != v14)
  {
    j__free(v13);
  }

  if (v15[7] && atomic_fetch_add((v15[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v15);
  }

  v15[7] = 0;
  memset(&v15[2], 0, 32);
  if (SHIDWORD(v15[0]) >= 1)
  {
    v9 = 0;
    v10 = v16;
    do
    {
      *(v10 + v9++) = 0;
    }

    while (v9 < SHIDWORD(v15[0]));
  }

  if (v17 != v18)
  {
    j__free(v17);
  }

  if (v20)
  {
    sub_1002ACC1C(v19);
  }
}

void sub_1002603D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_100006D14(&a9);
  sub_100006D14(&a21);
  sub_1001D8BF4(v21 - 64);
  _Unwind_Resume(a1);
}

void sub_1002603F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100006D14(va);
  sub_1001D8BF4(v13 - 64);
  _Unwind_Resume(a1);
}

void sub_100260414(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  sub_1002ACE7C(v56, &off_100474148);
  v10 = *a3;
  if (*a3 != a1)
  {
    (*(*v10 + 136))(v10, a2, a3, a4, a5);
    goto LABEL_87;
  }

  *v52 = 1124007936;
  memset(&v52[4], 0, 60);
  v53 = &v52[8];
  v54 = v55;
  v55[0] = 0;
  v55[1] = 0;
  *v48 = 1124007936;
  memset(&v48[4], 0, 60);
  v49 = &v48[8];
  v50 = v51;
  v51[0] = 0;
  v51[1] = 0;
  v11 = *a2;
  if (*a2 != &qword_1004BD540 || *(a2 + 2) != 47)
  {
    if (v11 != &qword_1004BD538 || a2[16] && *(a2 + 39) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 20)), vceqzq_f64(*(a2 + 21)))))) & 1) != 0)
    {
      goto LABEL_17;
    }

    v17 = a2 + 2;
    if (v52 == (a2 + 2))
    {
LABEL_64:
      a5 = *(a2 + 38) * a5;
      v12 = *a3;
      if (*a3 != &qword_1004BD538)
      {
        goto LABEL_18;
      }

LABEL_65:
      if (*(a3 + 128) && *(a3 + 312) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 320)), vceqzq_f64(*(a3 + 336)))))) & 1) != 0)
      {
        goto LABEL_68;
      }

      v37 = (a3 + 16);
      if (v48 == (a3 + 16))
      {
LABEL_106:
        a5 = a5 * *(a3 + 304);
        goto LABEL_69;
      }

      v38 = *(a3 + 72);
      if (v38)
      {
        atomic_fetch_add((v38 + 20), 1u);
      }

      if (*&v48[56] && atomic_fetch_add((*&v48[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v48);
      }

      *&v48[56] = 0;
      memset(&v48[16], 0, 32);
      if (*v48 <= 0)
      {
        *v48 = *v37;
      }

      else
      {
        v39 = 0;
        v40 = v49;
        do
        {
          *&v40[4 * v39++] = 0;
        }

        while (v39 < *&v48[4]);
        *v48 = *v37;
        if (*&v48[4] > 2)
        {
          goto LABEL_104;
        }
      }

      if (*(a3 + 20) <= 2)
      {
        *&v48[4] = *(a3 + 20);
        *&v48[8] = *(a3 + 24);
        v41 = *(a3 + 88);
        v42 = v50;
        *v50 = *v41;
        v42[1] = v41[1];
LABEL_105:
        v43 = *(a3 + 48);
        *&v48[16] = *(a3 + 32);
        *&v48[32] = v43;
        *&v48[48] = *(a3 + 64);
        goto LABEL_106;
      }

LABEL_104:
      sub_100269B58(v48, a3 + 16);
      goto LABEL_105;
    }

    v18 = a2[9];
    if (v18)
    {
      atomic_fetch_add((v18 + 20), 1u);
      if (*&v52[56])
      {
        if (atomic_fetch_add((*&v52[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v52);
        }
      }
    }

    *&v52[56] = 0;
    memset(&v52[16], 0, 32);
    if (*v52 <= 0)
    {
      *v52 = *v17;
    }

    else
    {
      v19 = 0;
      v20 = v53;
      do
      {
        *&v20[4 * v19++] = 0;
      }

      while (v19 < *&v52[4]);
      *v52 = *v17;
      if (*&v52[4] > 2)
      {
        goto LABEL_62;
      }
    }

    if (*(a2 + 5) <= 2)
    {
      *&v52[4] = *(a2 + 5);
      *&v52[8] = a2[3];
      v29 = a2[11];
      v30 = v54;
      *v54 = *v29;
      v30[1] = v29[1];
LABEL_63:
      v31 = *(a2 + 3);
      *&v52[16] = *(a2 + 2);
      *&v52[32] = v31;
      v32 = a2[9];
      *&v52[48] = a2[8];
      *&v52[56] = v32;
      goto LABEL_64;
    }

LABEL_62:
    sub_100269B58(v52, (a2 + 2));
    goto LABEL_63;
  }

  if (!a2[16] || *(a2 + 39) == 0.0)
  {
    if (a1 != &qword_1004BD538 || *(a3 + 128) && *(a3 + 312) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 320)), vceqzq_f64(*(a3 + 336)))))) & 1) != 0)
    {
      (*(*v10 + 24))(v10, a3, v48, 0xFFFFFFFFLL);
LABEL_12:
      sub_100260C18(a4, 47, v48, (a2 + 2), a5 / *(a2 + 38));
      goto LABEL_71;
    }

    a5 = *(a3 + 304) * a5;
    v25 = (a3 + 16);
    if (v48 == (a3 + 16))
    {
      goto LABEL_12;
    }

    v26 = *(a3 + 72);
    if (v26)
    {
      atomic_fetch_add((v26 + 20), 1u);
      if (*&v48[56])
      {
        if (atomic_fetch_add((*&v48[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v48);
        }
      }
    }

    *&v48[56] = 0;
    memset(&v48[16], 0, 32);
    if (*v48 <= 0)
    {
      *v48 = *v25;
    }

    else
    {
      v27 = 0;
      v28 = v49;
      do
      {
        *&v28[4 * v27++] = 0;
      }

      while (v27 < *&v48[4]);
      *v48 = *v25;
      if (*&v48[4] > 2)
      {
        goto LABEL_110;
      }
    }

    if (*(a3 + 20) <= 2)
    {
      *&v48[4] = *(a3 + 20);
      *&v48[8] = *(a3 + 24);
      v44 = *(a3 + 88);
      v45 = v50;
      *v50 = *v44;
      v45[1] = v44[1];
LABEL_111:
      v46 = *(a3 + 48);
      *&v48[16] = *(a3 + 32);
      *&v48[32] = v46;
      v47 = *(a3 + 72);
      *&v48[48] = *(a3 + 64);
      *&v48[56] = v47;
      goto LABEL_12;
    }

LABEL_110:
    sub_100269B58(v48, a3 + 16);
    goto LABEL_111;
  }

LABEL_17:
  (*(*v11 + 24))(*a2, a2, v52, 0xFFFFFFFFLL);
  v12 = *a3;
  if (*a3 == &qword_1004BD538)
  {
    goto LABEL_65;
  }

LABEL_18:
  if (v12 != &qword_1004BD540 || *(a3 + 8) != 47 || *(a3 + 128) && *(a3 + 312) != 0.0)
  {
LABEL_68:
    (*(*v12 + 24))(v12, a3, v48, 0xFFFFFFFFLL);
LABEL_69:
    v24 = 42;
    goto LABEL_70;
  }

  v13 = (a3 + 16);
  if (v48 != (a3 + 16))
  {
    v14 = *(a3 + 72);
    if (v14)
    {
      atomic_fetch_add((v14 + 20), 1u);
    }

    if (*&v48[56] && atomic_fetch_add((*&v48[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v48);
    }

    *&v48[56] = 0;
    memset(&v48[16], 0, 32);
    if (*v48 <= 0)
    {
      *v48 = *v13;
    }

    else
    {
      v15 = 0;
      v16 = v49;
      do
      {
        *&v16[4 * v15++] = 0;
      }

      while (v15 < *&v48[4]);
      *v48 = *v13;
      if (*&v48[4] > 2)
      {
        goto LABEL_46;
      }
    }

    if (*(a3 + 20) <= 2)
    {
      *&v48[4] = *(a3 + 20);
      *&v48[8] = *(a3 + 24);
      v21 = *(a3 + 88);
      v22 = v50;
      *v50 = *v21;
      v22[1] = v21[1];
LABEL_47:
      v23 = *(a3 + 48);
      *&v48[16] = *(a3 + 32);
      *&v48[32] = v23;
      *&v48[48] = *(a3 + 64);
      goto LABEL_48;
    }

LABEL_46:
    sub_100269B58(v48, a3 + 16);
    goto LABEL_47;
  }

LABEL_48:
  v24 = 47;
  a5 = a5 / *(a3 + 304);
LABEL_70:
  sub_100260C18(a4, v24, v52, v48, a5);
LABEL_71:
  if (*&v48[56] && atomic_fetch_add((*&v48[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v48);
  }

  *&v48[56] = 0;
  memset(&v48[16], 0, 32);
  if (*&v48[4] >= 1)
  {
    v33 = 0;
    v34 = v49;
    do
    {
      *&v34[4 * v33++] = 0;
    }

    while (v33 < *&v48[4]);
  }

  if (v50 != v51)
  {
    j__free(v50);
  }

  if (*&v52[56] && atomic_fetch_add((*&v52[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v52);
  }

  *&v52[56] = 0;
  memset(&v52[16], 0, 32);
  if (*&v52[4] >= 1)
  {
    v35 = 0;
    v36 = v53;
    do
    {
      *&v36[4 * v35++] = 0;
    }

    while (v35 < *&v52[4]);
  }

  if (v54 != v55)
  {
    j__free(v54);
  }

LABEL_87:
  if (v57)
  {
    sub_1002ACC1C(v56);
  }
}

void sub_100260BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_100006D14(&a9);
  sub_100006D14(&a21);
  sub_1001D8BF4(v21 - 112);
  _Unwind_Resume(a1);
}

void sub_100260C18(uint64_t a1, int a2, uint64_t a3, uint64_t a4, double a5)
{
  LODWORD(v22[0]) = 1124007936;
  memset(v22 + 4, 0, 48);
  v22[3] = 0u;
  v23 = v22 + 8;
  v24 = v25;
  v25[0] = 0;
  v25[1] = 0;
  v6 = *(a4 + 16);
  memset(v21, 0, sizeof(v21));
  v7 = 0.0;
  if (v6)
  {
    v7 = 1.0;
  }

  sub_1002670C8(&v26, &qword_1004BD540, a2, a3, a4, v22, v21, a5, v7);
  *a1 = v26;
  *(a1 + 8) = v27;
  if (&v26 != a1)
  {
    v9 = *(a1 + 72);
    if (v9 && atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
      }

      while (v10 < *(a1 + 20));
    }

    v12 = *&v28[4];
    v13 = *&v28[16];
    *(a1 + 16) = *v28;
    *(a1 + 32) = v13;
    v14 = *&v28[48];
    *(a1 + 48) = *&v28[32];
    *(a1 + 64) = v14;
    v15 = *(a1 + 88);
    if (v15 == (a1 + 96))
    {
      v16 = v30;
      if (v12 <= 2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      j__free(v15);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v15 = (a1 + 96);
      v16 = v30;
      if (*&v28[4] <= 2)
      {
LABEL_12:
        *v15 = *v16;
        v15[1] = v16[1];
LABEL_15:
        *v28 = 1124007936;
        v8 = 0.0;
        memset(&v28[4], 0, 60);
        goto LABEL_16;
      }
    }

    *(a1 + 80) = v29;
    *(a1 + 88) = v16;
    v29 = &v28[8];
    v30 = &v31;
    goto LABEL_15;
  }

LABEL_16:
  v17 = sub_10025DAEC(a1 + 112, v32, v8);
  sub_10025DAEC(a1 + 208, v33, v17);
  v18 = v33[7];
  *(a1 + 304) = v33[6];
  *(a1 + 320) = v18;
  *(a1 + 336) = v33[8];
  sub_100008E50(&v26);
  if (*(&v22[3] + 1) && atomic_fetch_add((*(&v22[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v22);
  }

  *(&v22[3] + 1) = 0;
  memset(&v22[1], 0, 32);
  if (SDWORD1(v22[0]) >= 1)
  {
    v19 = 0;
    v20 = v23;
    do
    {
      *&v20[4 * v19++] = 0;
    }

    while (v19 < SDWORD1(v22[0]));
  }

  if (v24 != v25)
  {
    j__free(v24);
  }
}

void sub_100260E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100260E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_100008E50(va1);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100260E98(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1002ACE7C(v20, &off_100474168);
  LODWORD(v16[0]) = 1124007936;
  memset(v16 + 4, 0, 32);
  memset(&v16[4] + 4, 0, 28);
  v17 = &v16[1];
  v18 = v19;
  v19[0] = 0;
  v19[1] = 0;
  (*(**a3 + 24))(*a3, a3, v16, 0xFFFFFFFFLL);
  LODWORD(v12[0]) = 1124007936;
  memset(v12 + 4, 0, 48);
  v12[3] = 0u;
  v13 = v12 + 8;
  v14 = v15;
  v15[0] = 0;
  v15[1] = 0;
  memset(v11, 0, sizeof(v11));
  sub_10025F864(a4, v16, v12, v11, a1, 0.0);
  if (*(&v12[3] + 1) && atomic_fetch_add((*(&v12[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v12);
  }

  *(&v12[3] + 1) = 0;
  memset(&v12[1], 0, 32);
  if (SDWORD1(v12[0]) >= 1)
  {
    v7 = 0;
    v8 = v13;
    do
    {
      *&v8[4 * v7++] = 0;
    }

    while (v7 < SDWORD1(v12[0]));
  }

  if (v14 != v15)
  {
    j__free(v14);
  }

  if (v16[7] && atomic_fetch_add((v16[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v16);
  }

  v16[7] = 0;
  memset(&v16[2], 0, 32);
  if (SHIDWORD(v16[0]) >= 1)
  {
    v9 = 0;
    v10 = v17;
    do
    {
      *(v10 + v9++) = 0;
    }

    while (v9 < SHIDWORD(v16[0]));
  }

  if (v18 != v19)
  {
    j__free(v18);
  }

  if (v21)
  {
    sub_1002ACC1C(v20);
  }
}