uint64_t sub_236740BF0(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, float32x4_t a12, uint64_t a13, uint64_t a14)
{
  v151 = result;
  __asm { FMOV            V0.4S, #-1.0 }

  v145 = a2;
  if (a2 < 33 || a3 <= 32)
  {
    if (a2 >= 1)
    {
      v50 = 0;
      v51 = 8 * a6;
      v52 = vnegq_f64(_Q0);
      do
      {
        v148 = v50;
        v53 = a2 - v50;
        if (a2 - v50 >= 32)
        {
          v54 = 32;
        }

        else
        {
          v54 = a2 - v50;
        }

        v55 = v151;
        if (a3 >= 1)
        {
          v56 = 0;
          result = v54;
          do
          {
            if (a3 - v56 >= 32)
            {
              v57 = 32;
            }

            else
            {
              v57 = a3 - v56;
            }

            v58 = v56;
            if (a3 - v56 < 1)
            {
              v59 = 0;
            }

            else
            {
              v59 = 0;
              v60 = a7 + 16 * v56;
              v61 = v56 + 1;
              v62 = 8 * v56;
              do
              {
                v63 = v60 + 8 * (2 * v59);
                if (v61 + v59 < a3)
                {
                  v64 = *(v63 + 16);
                  v65 = *(v63 + 20);
                }

                v66 = *v63;
                v67 = *(v63 + 4);
                v68 = fabsf(*v63) == INFINITY;
                if (fabsf(v67) == INFINITY)
                {
                  v68 = 1;
                }

                if (v68)
                {
                  a12.f32[0] = 0.0;
                }

                else
                {
                  a12.f32[0] = v66;
                }

                if (v68)
                {
                  v69 = 0.0;
                }

                else
                {
                  v69 = v67;
                }

                v70 = vmulq_n_f32(v52, v69);
                v71 = 4 * v59;
                v72 = v62 + 8 * v59;
                if (v53 < 4)
                {
                  v79 = 0;
                }

                else
                {
                  v73 = 0;
                  v74 = vdupq_lane_s32(*a12.f32, 0);
                  v75 = (a14 + 8 * v71);
                  v76 = a6 * v72;
                  do
                  {
                    v77 = *(a5 + v76 + 16);
                    v78 = v73 + 7;
                    *v75 = vmlaq_f32(vmulq_f32(v70, vrev64q_s32(*(a5 + v76))), v74, *(a5 + v76));
                    v75[1] = vmlaq_f32(vmulq_f32(v70, vrev64q_s32(v77)), v74, v77);
                    v73 += 4;
                    v75 += 66;
                    v76 += 32;
                  }

                  while (v78 < v54);
                  v79 = v73;
                }

                if (v79 < v54)
                {
                  *a12.f32 = vdup_lane_s32(*a12.f32, 0);
                  v80 = a5 + a6 * v72;
                  do
                  {
                    *(a14 + 8 * ((33 * (v79 & 0x7FFFFFFC) + v71) | v79 & 3)) = vmla_f32(vmul_f32(*v70.f32, vrev64_s32(*(v80 + 8 * v79))), *a12.f32, *(v80 + 8 * v79));
                    ++v79;
                  }

                  while (v79 < v54);
                }

                ++v59;
              }

              while (v59 < v57);
            }

            __asm { FMOV            V2.2S, #-1.0 }

            if (v53 < 4)
            {
              v136 = 0;
            }

            else
            {
              v82 = 0;
              do
              {
                v83 = v82 | 3;
                v84 = v82 * a13;
                if (v55 < 4)
                {
                  v120 = 0;
                }

                else
                {
                  v85 = 0;
                  v86 = (v82 | 1) * a13;
                  v87 = (v82 | 2) * a13;
                  v88 = a4 + 8 * v58 * a6;
                  v89 = v83 * a13;
                  do
                  {
                    if (v59 < 1)
                    {
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v94 = 0uLL;
                      v95 = 0uLL;
                      a12 = 0uLL;
                      v91 = 0uLL;
                    }

                    else
                    {
                      a12 = 0uLL;
                      v90 = v59;
                      v91 = 0uLL;
                      v92 = v88;
                      v93 = (a14 + 264 * v82);
                      v94 = 0uLL;
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      do
                      {
                        v100 = *(v92 + 16);
                        v101 = vrev64q_s32(*v92);
                        v102 = vrev64q_s32(v100);
                        v104 = *v93;
                        v103 = v93[1];
                        v93 += 2;
                        v105 = vmulq_lane_f32(v52, *v104.f32, 1);
                        v99 = vsubq_f32(v99, vmlaq_n_f32(vmulq_f32(v102, v105), v100, v104.f32[0]));
                        v98 = vsubq_f32(v98, vmlaq_n_f32(vmulq_f32(v101, v105), *v92, v104.f32[0]));
                        v106 = vmulq_laneq_f32(v52, v104, 3);
                        v97 = vsubq_f32(v97, vmlaq_laneq_f32(vmulq_f32(v102, v106), v100, v104, 2));
                        v96 = vsubq_f32(v96, vmlaq_laneq_f32(vmulq_f32(v101, v106), *v92, v104, 2));
                        v107 = vmulq_lane_f32(v52, *v103.f32, 1);
                        v95 = vsubq_f32(v95, vmlaq_n_f32(vmulq_f32(v102, v107), v100, v103.f32[0]));
                        v94 = vsubq_f32(v94, vmlaq_n_f32(vmulq_f32(v101, v107), *v92, v103.f32[0]));
                        v108 = vmulq_laneq_f32(v52, v103, 3);
                        v91 = vsubq_f32(v91, vmlaq_laneq_f32(vmulq_f32(v102, v108), v100, v103, 2));
                        a12 = vsubq_f32(a12, vmlaq_laneq_f32(vmulq_f32(v101, v108), *v92, v103, 2));
                        v92 += v51;
                        --v90;
                      }

                      while (v90);
                    }

                    v109 = (a8 + 8 * (v84 + v85));
                    if (v58)
                    {
                      v110 = vaddq_f32(v99, v109[1]);
                      *v109 = vaddq_f32(v98, *v109);
                      v109[1] = v110;
                      v111 = (a8 + 8 * (v86 + v85));
                      v112 = vaddq_f32(v97, v111[1]);
                      *v111 = vaddq_f32(v96, *v111);
                      v111[1] = v112;
                      v113 = (a8 + 8 * (v87 + v85));
                      v114 = vaddq_f32(v95, v113[1]);
                      *v113 = vaddq_f32(v94, *v113);
                      v113[1] = v114;
                      v115 = (a8 + 8 * (v89 + v85));
                      v91 = vaddq_f32(v91, v115[1]);
                      a12 = vaddq_f32(a12, *v115);
                    }

                    else
                    {
                      *v109 = v98;
                      v109[1] = v99;
                      v116 = (a8 + 8 * (v86 + v85));
                      *v116 = v96;
                      v116[1] = v97;
                      v117 = (a8 + 8 * (v87 + v85));
                      *v117 = v94;
                      v117[1] = v95;
                      v115 = (a8 + 8 * (v89 + v85));
                    }

                    *v115 = a12;
                    v115[1] = v91;
                    v118 = v85 + 4;
                    v119 = v85 + 7;
                    v88 += 32;
                    v85 += 4;
                  }

                  while (v119 < v151);
                  v120 = v118;
                  v55 = v151;
                }

                if (v120 < v55)
                {
                  v121 = (v82 | 1) * a13;
                  v122 = (v82 | 2) * a13;
                  v123 = a4 + v51 * v58 + 8 * v120;
                  v124 = v83 * a13;
                  do
                  {
                    if (v59 < 1)
                    {
                      v130 = 0;
                      v129 = 0;
                      v128 = 0;
                      a12.i64[0] = 0;
                    }

                    else
                    {
                      a12.i64[0] = 0;
                      v125 = v59;
                      v126 = v123;
                      v127 = (a14 + 264 * v82);
                      v128 = 0;
                      v129 = 0;
                      v130 = 0;
                      do
                      {
                        v131 = vrev64_s32(*v126);
                        v133 = *v127;
                        v132 = v127[1];
                        v127 += 2;
                        v130 = vsub_f32(v130, vmla_n_f32(vmul_f32(v131, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), *v133.f32, 1)), *v126, v133.f32[0]));
                        v129 = vsub_f32(v129, vmla_laneq_f32(vmul_f32(v131, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D2), v133, 3)), *v126, v133, 2));
                        v128 = vsub_f32(v128, vmla_n_f32(vmul_f32(v131, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), *v132.f32, 1)), *v126, v132.f32[0]));
                        *a12.f32 = vsub_f32(*a12.f32, vmla_laneq_f32(vmul_f32(v131, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D2), v132, 3)), *v126, v132, 2));
                        v126 = (v126 + v51);
                        --v125;
                      }

                      while (v125);
                    }

                    v134 = v84 + v120;
                    if (v58)
                    {
                      *(a8 + 8 * v134) = vadd_f32(v130, *(a8 + 8 * v134));
                      *(a8 + 8 * (v121 + v120)) = vadd_f32(v129, *(a8 + 8 * (v121 + v120)));
                      *(a8 + 8 * (v122 + v120)) = vadd_f32(v128, *(a8 + 8 * (v122 + v120)));
                      v135 = v124 + v120;
                      *a12.f32 = vadd_f32(*a12.f32, *(a8 + 8 * (v124 + v120)));
                    }

                    else
                    {
                      *(a8 + 8 * v134) = v130;
                      *(a8 + 8 * (v121 + v120)) = v129;
                      *(a8 + 8 * (v122 + v120)) = v128;
                      v135 = v124 + v120;
                    }

                    *(a8 + 8 * v135) = a12.i64[0];
                    ++v120;
                    v123 += 8;
                  }

                  while (v120 != v151);
                }

                LODWORD(v136) = v82 + 4;
                v137 = v82 + 7;
                v82 += 4;
              }

              while (v137 < v54);
              v136 = v136;
            }

            if (v136 < v54)
            {
              do
              {
                if (v55 >= 1)
                {
                  v138 = 0;
                  v139 = (a4 + 8 * v58 * a6);
                  do
                  {
                    a12.i64[0] = 0;
                    if (v59 >= 1)
                    {
                      v140 = v59;
                      v141 = v139;
                      v142 = (a14 + 8 * ((33 * (v136 & 0x7FFFFFFC)) & 0xFFFFFFFC | v136 & 3));
                      do
                      {
                        v143 = *v142;
                        v142 += 4;
                        *a12.f32 = vsub_f32(*a12.f32, vmla_n_f32(vmul_f32(vrev64_s32(*v141), vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), v143, 1)), *v141, v143.f32[0]));
                        v141 = (v141 + v51);
                        --v140;
                      }

                      while (v140);
                    }

                    v144 = v136 * a13 + v138;
                    if (v58)
                    {
                      *a12.f32 = vadd_f32(*a12.f32, *(a8 + 8 * v144));
                    }

                    *(a8 + 8 * v144) = a12.i64[0];
                    ++v138;
                    ++v139;
                  }

                  while (v138 != v151);
                }

                ++v136;
              }

              while (v136 < v54);
            }

            v56 = v59 + v58;
          }

          while (v59 + v58 < a3);
        }

        a5 += 256;
        a8 += a13 << 8;
        v50 = v148 + 32;
        a2 = v145;
      }

      while (v148 + 32 < v145);
    }
  }

  else
  {
    v23 = 0;
    v147 = vnegq_f64(_Q0);
    v24 = a2;
    do
    {
      v25 = 0;
      v146 = v23;
      v26 = v24 - v23;
      if (v24 - v23 >= 64)
      {
        v27 = 64;
      }

      else
      {
        v27 = v24 - v23;
      }

      v28 = v27;
      do
      {
        if (a3 - v25 >= 64)
        {
          v29 = 64;
        }

        else
        {
          v29 = a3 - v25;
        }

        v30 = v25;
        if (a3 - v25 < 1)
        {
          v31 = 0;
        }

        else
        {
          v31 = 0;
          v32 = a7 + 16 * v25;
          do
          {
            v33 = v32 + 16 * v31;
            if ((v30 + 1 + v31) < a3)
            {
              v34 = *(v33 + 16);
              v35 = *(v33 + 20);
            }

            v36 = *v33;
            v37 = *(v33 + 4);
            v38 = fabsf(*v33) == INFINITY;
            if (fabsf(v37) == INFINITY)
            {
              v38 = 1;
            }

            if (v38)
            {
              *&a10 = 0.0;
            }

            else
            {
              *&a10 = v36;
            }

            if (v38)
            {
              v39 = 0.0;
            }

            else
            {
              v39 = v37;
            }

            v40 = vmulq_n_f32(v147, v39);
            v41 = 8 * v30 + 8 * v31;
            if (v26 < 4)
            {
              v48 = 0;
            }

            else
            {
              v42 = 0;
              v43 = vdupq_lane_s32(*&a10, 0);
              v44 = (a14 + (v31 << 9));
              v45 = a6 * v41;
              do
              {
                v46 = *(a5 + v45 + 16);
                v47 = v42 + 7;
                *v44 = vmlaq_f32(vmulq_f32(v40, vrev64q_s32(*(a5 + v45))), v43, *(a5 + v45));
                v44[1] = vmlaq_f32(vmulq_f32(v40, vrev64q_s32(v46)), v43, v46);
                v44 += 2;
                v42 += 4;
                v45 += 32;
              }

              while (v47 < v28);
              v48 = v42;
            }

            if (v48 < v28)
            {
              a10 = COERCE_DOUBLE(vdup_lane_s32(*&a10, 0));
              v49 = a5 + a6 * v41;
              do
              {
                *(a14 + (v31 << 9) + 8 * v48) = vmla_f32(vmul_f32(*v40.f32, vrev64_s32(*(v49 + 8 * v48))), *&a10, *(v49 + 8 * v48));
                ++v48;
              }

              while (v48 < v28);
            }

            ++v31;
          }

          while (v31 < v29);
        }

        result = cblas_cgemm_NEWLAPACK();
        v25 = v31 + v30;
      }

      while ((v31 + v30) < a3);
      a5 += 512;
      a8 += a13 << 9;
      v24 = v145;
      v23 = v146 + 64;
    }

    while (v146 + 64 < v145);
  }

  return result;
}

uint64_t sub_236741754(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v210 = result;
  if (a2 < 33 || a3 <= 32)
  {
    if (a2 >= 1)
    {
      v45 = 0;
      v46 = 16 * a6;
      v47 = xmmword_23681FB50;
      v48 = a2;
      do
      {
        v206 = v45;
        v49 = v48 - v45;
        if (v48 - v45 >= 32)
        {
          v50 = 32;
        }

        else
        {
          v50 = v48 - v45;
        }

        v51 = v210;
        if (a3 >= 1)
        {
          v52 = 0;
          result = v50;
          do
          {
            if (a3 - v52 >= 32)
            {
              v53 = 32;
            }

            else
            {
              v53 = a3 - v52;
            }

            v54 = v52;
            if (a3 - v52 < 1)
            {
              v55 = 0;
            }

            else
            {
              v55 = 0;
              v56 = a7 + 32 * v52;
              v57 = v52 + 1;
              v58 = 16 * v52;
              do
              {
                v59 = v56 + 16 * (2 * v55);
                if (v57 + v55 < a3)
                {
                  v60 = *(v59 + 32);
                  v61 = *(v59 + 40);
                }

                v62 = *v59;
                v63 = *(v59 + 8);
                v64 = fabs(*v59) == INFINITY;
                if (fabs(v63) == INFINITY)
                {
                  v64 = 1;
                }

                if (v64)
                {
                  v65 = 0.0;
                }

                else
                {
                  v65 = v62;
                }

                if (v64)
                {
                  v66 = 0.0;
                }

                else
                {
                  v66 = v63;
                }

                v67 = vmulq_n_f64(v47, v66);
                v68 = 4 * v55;
                v69 = v58 + 16 * v55;
                if (v49 < 4)
                {
                  v78 = 0;
                }

                else
                {
                  v70 = 0;
                  v71 = vdupq_lane_s64(*&v65, 0);
                  v72 = (a10 + 16 * v68);
                  v73 = a6 * v69;
                  do
                  {
                    v74 = vmlaq_f64(vmulq_f64(v67, vextq_s8(*(a5 + v73 + 16), *(a5 + v73 + 16), 8uLL)), v71, *(a5 + v73 + 16));
                    v75 = vmlaq_f64(vmulq_f64(v67, vextq_s8(*(a5 + v73), *(a5 + v73), 8uLL)), v71, *(a5 + v73));
                    v76 = vmlaq_f64(vmulq_f64(v67, vextq_s8(*(a5 + v73 + 48), *(a5 + v73 + 48), 8uLL)), v71, *(a5 + v73 + 48));
                    v72[2] = vmlaq_f64(vmulq_f64(v67, vextq_s8(*(a5 + v73 + 32), *(a5 + v73 + 32), 8uLL)), v71, *(a5 + v73 + 32));
                    v72[3] = v76;
                    v77 = v70 + 7;
                    *v72 = v75;
                    v72[1] = v74;
                    v70 += 4;
                    v72 += 132;
                    v73 += 64;
                  }

                  while (v77 < v50);
                  v78 = v70;
                }

                if (v78 < v50)
                {
                  v79 = vdupq_lane_s64(*&v65, 0);
                  v80 = a5 + a6 * v69;
                  do
                  {
                    *(a10 + 16 * ((33 * (v78 & 0x7FFFFFFC) + v68) | v78 & 3)) = vmlaq_f64(vmulq_f64(v67, vextq_s8(*(v80 + 16 * v78), *(v80 + 16 * v78), 8uLL)), v79, *(v80 + 16 * v78));
                    ++v78;
                  }

                  while (v78 < v50);
                }

                ++v55;
              }

              while (v55 < v53);
            }

            if (v49 < 4)
            {
              v196 = 0;
            }

            else
            {
              v81 = 0;
              do
              {
                v82 = v81 | 3;
                v83 = v81 * a9;
                if (v51 < 4)
                {
                  v178 = 0;
                }

                else
                {
                  v84 = 0;
                  v85 = (v81 | 1) * a9;
                  v86 = (v81 | 2) * a9;
                  v87 = a4 + 16 * v54 * a6;
                  v88 = v82 * a9;
                  do
                  {
                    if (v55 < 1)
                    {
                      v104 = 0uLL;
                      v105 = 0uLL;
                      v106 = 0uLL;
                      v107 = 0uLL;
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v89 = 0uLL;
                      v91 = 0uLL;
                      v93 = 0uLL;
                      v95 = 0uLL;
                    }

                    else
                    {
                      v89 = 0uLL;
                      v90 = v55;
                      v91 = 0uLL;
                      v92 = v87;
                      v93 = 0uLL;
                      v94 = (a10 + 528 * v81);
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v104 = 0uLL;
                      v105 = 0uLL;
                      v106 = 0uLL;
                      v107 = 0uLL;
                      do
                      {
                        v211 = v104;
                        v213 = v103;
                        v214 = v102;
                        v215 = v101;
                        v216 = v100;
                        v109 = *(v92 + 32);
                        v108 = *(v92 + 48);
                        v110 = *(v92 + 16);
                        v111 = vextq_s8(*v92, *v92, 8uLL);
                        v112 = vextq_s8(v110, v110, 8uLL);
                        v113 = vextq_s8(v109, v109, 8uLL);
                        v114 = vextq_s8(v108, v108, 8uLL);
                        v115 = v94[2];
                        v116 = v94[3];
                        v118 = *v94;
                        v117 = v94[1];
                        v94 += 4;
                        v119 = vmulq_laneq_f64(xmmword_23681FB50, v118, 1);
                        v120 = vmulq_f64(v114, v119);
                        v121 = vmulq_f64(v113, v119);
                        v122 = vmulq_f64(v112, v119);
                        v123 = vmlaq_n_f64(vmulq_f64(v111, v119), *v92, v118.f64[0]);
                        v124 = vmlaq_n_f64(v122, v110, v118.f64[0]);
                        v125 = vmlaq_n_f64(v121, v109, v118.f64[0]);
                        v126 = vmlaq_n_f64(v120, v108, v118.f64[0]);
                        v127 = vmulq_laneq_f64(xmmword_23681FB50, v117, 1);
                        v128 = vmulq_f64(v114, v127);
                        v129 = vmulq_f64(v113, v127);
                        v130 = v99;
                        v131 = v97;
                        v132 = v89;
                        v133 = vmulq_f64(v112, v127);
                        v134 = vmlaq_n_f64(vmulq_f64(v111, v127), *v92, v117.f64[0]);
                        v135 = vmlaq_n_f64(v133, v110, v117.f64[0]);
                        v136 = vmlaq_n_f64(v129, v109, v117.f64[0]);
                        v137 = vmlaq_n_f64(v128, v108, v117.f64[0]);
                        v138 = vmulq_laneq_f64(xmmword_23681FB50, v115, 1);
                        v139 = v96;
                        v140 = v91;
                        v141 = vmulq_f64(v114, v138);
                        v142 = vmulq_f64(v113, v138);
                        v143 = vmulq_f64(v112, v138);
                        v144 = vmlaq_n_f64(vmulq_f64(v111, v138), *v92, v115.f64[0]);
                        v145 = vmlaq_n_f64(v143, v110, v115.f64[0]);
                        v146 = vmlaq_n_f64(v142, v109, v115.f64[0]);
                        v147 = vmlaq_n_f64(v141, v108, v115.f64[0]);
                        v148 = vmulq_laneq_f64(xmmword_23681FB50, v116, 1);
                        v149 = vmlaq_n_f64(vmulq_f64(v111, v148), *v92, v116.f64[0]);
                        v150 = vmlaq_n_f64(vmulq_f64(v112, v148), v110, v116.f64[0]);
                        v151 = vmlaq_n_f64(vmulq_f64(v113, v148), v109, v116.f64[0]);
                        v152 = vmlaq_n_f64(vmulq_f64(v114, v148), v108, v116.f64[0]);
                        v107 = vsubq_f64(v107, v126);
                        v106 = vsubq_f64(v106, v125);
                        v105 = vsubq_f64(v105, v124);
                        v104 = vsubq_f64(v211, v123);
                        v103 = vsubq_f64(v213, v137);
                        v102 = vsubq_f64(v214, v136);
                        v101 = vsubq_f64(v215, v135);
                        v153 = v132;
                        v154 = v131;
                        v155 = v130;
                        v100 = vsubq_f64(v216, v134);
                        v99 = vsubq_f64(v155, v147);
                        v156 = v140;
                        v98 = vsubq_f64(v98, v146);
                        v97 = vsubq_f64(v154, v145);
                        v96 = vsubq_f64(v139, v144);
                        v95 = vsubq_f64(v95, v152);
                        v93 = vsubq_f64(v93, v151);
                        v91 = vsubq_f64(v156, v150);
                        v89 = vsubq_f64(v153, v149);
                        v92 += v46;
                        --v90;
                      }

                      while (v90);
                    }

                    v157 = (a8 + 16 * (v83 + v84));
                    if (v54)
                    {
                      v158 = vaddq_f64(v107, v157[3]);
                      v159 = vaddq_f64(v106, v157[2]);
                      v160 = vaddq_f64(v105, v157[1]);
                      *v157 = vaddq_f64(v104, *v157);
                      v157[1] = v160;
                      v157[2] = v159;
                      v157[3] = v158;
                      v161 = (a8 + 16 * (v85 + v84));
                      v162 = vaddq_f64(v102, v161[2]);
                      v163 = vaddq_f64(v101, v161[1]);
                      v164 = vaddq_f64(v103, v161[3]);
                      *v161 = vaddq_f64(v100, *v161);
                      v161[1] = v163;
                      v161[2] = v162;
                      v161[3] = v164;
                      v165 = (a8 + 16 * (v86 + v84));
                      v166 = vaddq_f64(v98, v165[2]);
                      v167 = vaddq_f64(v97, v165[1]);
                      v168 = vaddq_f64(v99, v165[3]);
                      *v165 = vaddq_f64(v96, *v165);
                      v165[1] = v167;
                      v165[2] = v166;
                      v165[3] = v168;
                      v169 = (a8 + 16 * (v88 + v84));
                      v170 = vaddq_f64(v93, v169[2]);
                      v171 = vaddq_f64(v91, v169[1]);
                      v172 = vaddq_f64(v95, v169[3]);
                      *v169 = vaddq_f64(v89, *v169);
                      v169[1] = v171;
                      v169[2] = v170;
                      v169[3] = v172;
                    }

                    else
                    {
                      *v157 = v104;
                      v157[1] = v105;
                      v157[2] = v106;
                      v157[3] = v107;
                      v173 = (a8 + 16 * (v85 + v84));
                      *v173 = v100;
                      v173[1] = v101;
                      v173[2] = v102;
                      v173[3] = v103;
                      v174 = (a8 + 16 * (v86 + v84));
                      *v174 = v96;
                      v174[1] = v97;
                      v174[2] = v98;
                      v174[3] = v99;
                      v175 = (a8 + 16 * (v88 + v84));
                      v175[2] = v93;
                      v175[3] = v95;
                      *v175 = v89;
                      v175[1] = v91;
                    }

                    v47 = xmmword_23681FB50;
                    v176 = v84 + 4;
                    v177 = v84 + 7;
                    v87 += 64;
                    v84 += 4;
                  }

                  while (v177 < v210);
                  v178 = v176;
                  v51 = v210;
                }

                if (v178 < v51)
                {
                  v179 = (v81 | 1) * a9;
                  v180 = (v81 | 2) * a9;
                  v181 = a4 + v46 * v54 + 16 * v178;
                  v182 = v82 * a9;
                  do
                  {
                    if (v55 < 1)
                    {
                      v189 = 0uLL;
                      v188 = 0uLL;
                      v187 = 0uLL;
                      v183 = 0uLL;
                    }

                    else
                    {
                      v183 = 0uLL;
                      v184 = v55;
                      v185 = v181;
                      v186 = (a10 + 528 * v81);
                      v187 = 0uLL;
                      v188 = 0uLL;
                      v189 = 0uLL;
                      do
                      {
                        v190 = vextq_s8(*v185, *v185, 8uLL);
                        v192 = v186[2];
                        v191 = v186[3];
                        v194 = *v186;
                        v193 = v186[1];
                        v186 += 4;
                        v189 = vsubq_f64(v189, vmlaq_n_f64(vmulq_f64(v190, vmulq_laneq_f64(v47, v194, 1)), *v185, v194.f64[0]));
                        v188 = vsubq_f64(v188, vmlaq_n_f64(vmulq_f64(v190, vmulq_laneq_f64(v47, v193, 1)), *v185, v193.f64[0]));
                        v187 = vsubq_f64(v187, vmlaq_n_f64(vmulq_f64(v190, vmulq_laneq_f64(v47, v192, 1)), *v185, v192.f64[0]));
                        v183 = vsubq_f64(v183, vmlaq_n_f64(vmulq_f64(v190, vmulq_laneq_f64(v47, v191, 1)), *v185, v191.f64[0]));
                        v185 = (v185 + v46);
                        --v184;
                      }

                      while (v184);
                    }

                    v195 = v83 + v178;
                    if (v54)
                    {
                      *(a8 + 16 * v195) = vaddq_f64(v189, *(a8 + 16 * v195));
                      *(a8 + 16 * (v179 + v178)) = vaddq_f64(v188, *(a8 + 16 * (v179 + v178)));
                      *(a8 + 16 * (v180 + v178)) = vaddq_f64(v187, *(a8 + 16 * (v180 + v178)));
                      *(a8 + 16 * (v182 + v178)) = vaddq_f64(v183, *(a8 + 16 * (v182 + v178)));
                    }

                    else
                    {
                      *(a8 + 16 * v195) = v189;
                      *(a8 + 16 * (v179 + v178)) = v188;
                      *(a8 + 16 * (v180 + v178)) = v187;
                      *(a8 + 16 * (v182 + v178)) = v183;
                    }

                    ++v178;
                    v181 += 16;
                  }

                  while (v178 != v210);
                }

                LODWORD(v196) = v81 + 4;
                v197 = v81 + 7;
                v81 += 4;
              }

              while (v197 < v50);
              v196 = v196;
            }

            if (v196 < v50)
            {
              do
              {
                if (v51 >= 1)
                {
                  v198 = 0;
                  v199 = (a4 + 16 * v54 * a6);
                  do
                  {
                    v200 = 0uLL;
                    if (v55 >= 1)
                    {
                      v201 = v55;
                      v202 = v199;
                      v203 = (a10 + 16 * ((33 * (v196 & 0x7FFFFFFC)) & 0xFFFFFFFC | v196 & 3));
                      do
                      {
                        v204 = *v203;
                        v203 += 4;
                        v200 = vsubq_f64(v200, vmlaq_n_f64(vmulq_f64(vextq_s8(*v202, *v202, 8uLL), vmulq_laneq_f64(v47, v204, 1)), *v202, v204.f64[0]));
                        v202 = (v202 + v46);
                        --v201;
                      }

                      while (v201);
                    }

                    v205 = v196 * a9 + v198;
                    if (v54)
                    {
                      v200 = vaddq_f64(v200, *(a8 + 16 * v205));
                    }

                    *(a8 + 16 * v205) = v200;
                    ++v198;
                    ++v199;
                  }

                  while (v198 != v210);
                }

                ++v196;
              }

              while (v196 < v50);
            }

            v52 = v55 + v54;
          }

          while (v55 + v54 < a3);
        }

        a5 += 512;
        a8 += a9 << 9;
        v48 = a2;
        v45 = v206 + 32;
      }

      while (v206 + 32 < a2);
    }
  }

  else
  {
    v14 = 0;
    v15 = a2;
    do
    {
      v16 = 0;
      v212 = v14;
      v17 = v15 - v14;
      if (v15 - v14 >= 64)
      {
        v18 = 64;
      }

      else
      {
        v18 = v15 - v14;
      }

      v19 = v18;
      do
      {
        if (a3 - v16 >= 64)
        {
          v20 = 64;
        }

        else
        {
          v20 = a3 - v16;
        }

        v21 = v16;
        if (a3 - v16 < 1)
        {
          v22 = 0;
        }

        else
        {
          v22 = 0;
          v23 = a7 + 32 * v16;
          do
          {
            v24 = v23 + 32 * v22;
            if ((v21 + 1 + v22) < a3)
            {
              v25 = *(v24 + 32);
              v26 = *(v24 + 40);
            }

            v27 = *v24;
            v28 = *(v24 + 8);
            v29 = fabs(*v24) == INFINITY;
            if (fabs(v28) == INFINITY)
            {
              v29 = 1;
            }

            if (v29)
            {
              v30 = 0.0;
            }

            else
            {
              v30 = v27;
            }

            if (v29)
            {
              v31 = 0.0;
            }

            else
            {
              v31 = v28;
            }

            v32 = vmulq_n_f64(xmmword_23681FB50, v31);
            v33 = 16 * v21 + 16 * v22;
            if (v17 < 4)
            {
              v42 = 0;
            }

            else
            {
              v34 = 0;
              v35 = vdupq_lane_s64(*&v30, 0);
              v36 = (a10 + (v22 << 10));
              v37 = a6 * v33;
              do
              {
                v38 = vmlaq_f64(vmulq_f64(v32, vextq_s8(*(a5 + v37 + 16), *(a5 + v37 + 16), 8uLL)), v35, *(a5 + v37 + 16));
                v39 = vmlaq_f64(vmulq_f64(v32, vextq_s8(*(a5 + v37), *(a5 + v37), 8uLL)), v35, *(a5 + v37));
                v40 = vmlaq_f64(vmulq_f64(v32, vextq_s8(*(a5 + v37 + 48), *(a5 + v37 + 48), 8uLL)), v35, *(a5 + v37 + 48));
                v36[2] = vmlaq_f64(vmulq_f64(v32, vextq_s8(*(a5 + v37 + 32), *(a5 + v37 + 32), 8uLL)), v35, *(a5 + v37 + 32));
                v36[3] = v40;
                v41 = v34 + 7;
                *v36 = v39;
                v36[1] = v38;
                v36 += 4;
                v34 += 4;
                v37 += 64;
              }

              while (v41 < v19);
              v42 = v34;
            }

            if (v42 < v19)
            {
              v43 = vdupq_lane_s64(*&v30, 0);
              v44 = a5 + a6 * v33;
              do
              {
                *(a10 + (v22 << 10) + 16 * v42) = vmlaq_f64(vmulq_f64(v32, vextq_s8(*(v44 + 16 * v42), *(v44 + 16 * v42), 8uLL)), v43, *(v44 + 16 * v42));
                ++v42;
              }

              while (v42 < v19);
            }

            ++v22;
          }

          while (v22 < v20);
        }

        result = cblas_zgemm_NEWLAPACK();
        v16 = v22 + v21;
      }

      while ((v22 + v21) < a3);
      a5 += 1024;
      a8 += a9 << 10;
      v14 = v212 + 64;
      v15 = a2;
    }

    while (v212 + 64 < a2);
  }

  return result;
}

uint64_t sub_236742568(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, float32x4_t a13, uint64_t a14, uint64_t a15)
{
  v161 = result;
  __asm
  {
    FMOV            V0.4S, #-1.0
    FMOV            V8.2S, #1.0
    FMOV            V1.4S, #1.0
  }

  v154 = a2;
  if (a2 < 33 || a3 <= 32)
  {
    if (a2 >= 1)
    {
      v56 = 0;
      v57 = 8 * a6;
      v58 = vnegq_f64(_Q0);
      v59 = vnegq_f64(_Q1);
      do
      {
        v159 = v56;
        v60 = a2 - v56;
        if (a2 - v56 >= 32)
        {
          v61 = 32;
        }

        else
        {
          v61 = a2 - v56;
        }

        v62 = v161;
        if (a3 >= 1)
        {
          v63 = 0;
          result = v61;
          do
          {
            if (a3 - v63 >= 32)
            {
              v64 = 32;
            }

            else
            {
              v64 = a3 - v63;
            }

            v65 = v63;
            if (a3 - v63 < 1)
            {
              v66 = 0;
            }

            else
            {
              v66 = 0;
              v67 = a7 + 16 * v63;
              v68 = v63 + 1;
              v69 = 8 * v63;
              do
              {
                v70 = v67 + 8 * (2 * v66);
                if (v68 + v66 < a3)
                {
                  v71 = *(v70 + 16);
                  v72 = *(v70 + 20);
                }

                v73 = *v70;
                v74 = *(v70 + 4);
                v75 = fabsf(*v70) == INFINITY;
                if (fabsf(v74) == INFINITY)
                {
                  v75 = 1;
                }

                if (v75)
                {
                  a13.f32[0] = 0.0;
                }

                else
                {
                  a13.f32[0] = v73;
                }

                if (v75)
                {
                  v76 = 0.0;
                }

                else
                {
                  v76 = v74;
                }

                v77 = vmulq_n_f32(v58, v76);
                v78 = 4 * v66;
                v79 = v69 + 8 * v66;
                if (v60 < 4)
                {
                  v87 = 0;
                }

                else
                {
                  v80 = 0;
                  v81 = vdupq_lane_s32(*a13.f32, 0);
                  v82 = (a15 + 8 * v78);
                  v83 = a6 * v79;
                  do
                  {
                    v84 = vmulq_f32(*(a5 + v83 + 16), v59);
                    v85 = vmulq_f32(*(a5 + v83), v59);
                    v86 = v80 + 7;
                    *v82 = vmlaq_f32(vmulq_f32(v77, vrev64q_s32(v85)), v81, v85);
                    v82[1] = vmlaq_f32(vmulq_f32(v77, vrev64q_s32(v84)), v81, v84);
                    v80 += 4;
                    v82 += 66;
                    v83 += 32;
                  }

                  while (v86 < v61);
                  v87 = v80;
                }

                if (v87 < v61)
                {
                  *a13.f32 = vdup_lane_s32(*a13.f32, 0);
                  v88 = a5 + a6 * v79;
                  do
                  {
                    v89 = vmul_f32(*(v88 + 8 * v87), COERCE_FLOAT32X2_T(-_D8));
                    *(a15 + 8 * ((33 * (v87 & 0x7FFFFFFC) + v78) | v87 & 3)) = vmla_f32(vmul_f32(*v77.f32, vrev64_s32(v89)), *a13.f32, v89);
                    ++v87;
                  }

                  while (v87 < v61);
                }

                ++v66;
              }

              while (v66 < v64);
            }

            __asm { FMOV            V3.2S, #-1.0 }

            if (v60 < 4)
            {
              v145 = 0;
            }

            else
            {
              v91 = 0;
              do
              {
                v92 = v91 | 3;
                v93 = v91 * a14;
                if (v62 < 4)
                {
                  v129 = 0;
                }

                else
                {
                  v94 = 0;
                  v95 = (v91 | 1) * a14;
                  v96 = (v91 | 2) * a14;
                  v97 = a4 + 8 * v65 * a6;
                  v98 = v92 * a14;
                  do
                  {
                    if (v66 < 1)
                    {
                      v107 = 0uLL;
                      v108 = 0uLL;
                      v105 = 0uLL;
                      v106 = 0uLL;
                      v103 = 0uLL;
                      v104 = 0uLL;
                      a13 = 0uLL;
                      v100 = 0uLL;
                    }

                    else
                    {
                      a13 = 0uLL;
                      v99 = v66;
                      v100 = 0uLL;
                      v101 = v97;
                      v102 = (a15 + 264 * v91);
                      v103 = 0uLL;
                      v104 = 0uLL;
                      v105 = 0uLL;
                      v106 = 0uLL;
                      v107 = 0uLL;
                      v108 = 0uLL;
                      do
                      {
                        v109 = *(v101 + 16);
                        v110 = vrev64q_s32(*v101);
                        v111 = vrev64q_s32(v109);
                        v113 = *v102;
                        v112 = v102[1];
                        v102 += 2;
                        v114 = vmulq_lane_f32(v58, *v113.f32, 1);
                        v108 = vsubq_f32(v108, vmlaq_n_f32(vmulq_f32(v111, v114), v109, v113.f32[0]));
                        v107 = vsubq_f32(v107, vmlaq_n_f32(vmulq_f32(v110, v114), *v101, v113.f32[0]));
                        v115 = vmulq_laneq_f32(v58, v113, 3);
                        v106 = vsubq_f32(v106, vmlaq_laneq_f32(vmulq_f32(v111, v115), v109, v113, 2));
                        v105 = vsubq_f32(v105, vmlaq_laneq_f32(vmulq_f32(v110, v115), *v101, v113, 2));
                        v116 = vmulq_lane_f32(v58, *v112.f32, 1);
                        v104 = vsubq_f32(v104, vmlaq_n_f32(vmulq_f32(v111, v116), v109, v112.f32[0]));
                        v103 = vsubq_f32(v103, vmlaq_n_f32(vmulq_f32(v110, v116), *v101, v112.f32[0]));
                        v117 = vmulq_laneq_f32(v58, v112, 3);
                        v100 = vsubq_f32(v100, vmlaq_laneq_f32(vmulq_f32(v111, v117), v109, v112, 2));
                        a13 = vsubq_f32(a13, vmlaq_laneq_f32(vmulq_f32(v110, v117), *v101, v112, 2));
                        v101 += v57;
                        --v99;
                      }

                      while (v99);
                    }

                    v118 = (a8 + 8 * (v93 + v94));
                    if (v65)
                    {
                      v119 = vaddq_f32(v108, v118[1]);
                      *v118 = vaddq_f32(v107, *v118);
                      v118[1] = v119;
                      v120 = (a8 + 8 * (v95 + v94));
                      v121 = vaddq_f32(v106, v120[1]);
                      *v120 = vaddq_f32(v105, *v120);
                      v120[1] = v121;
                      v122 = (a8 + 8 * (v96 + v94));
                      v123 = v122[1];
                      *v122 = vaddq_f32(v103, *v122);
                      v122[1] = vaddq_f32(v104, v123);
                      v124 = (a8 + 8 * (v98 + v94));
                      v100 = vaddq_f32(v100, v124[1]);
                      a13 = vaddq_f32(a13, *v124);
                    }

                    else
                    {
                      *v118 = v107;
                      v118[1] = v108;
                      v125 = (a8 + 8 * (v95 + v94));
                      *v125 = v105;
                      v125[1] = v106;
                      v126 = (a8 + 8 * (v96 + v94));
                      *v126 = v103;
                      v126[1] = v104;
                      v124 = (a8 + 8 * (v98 + v94));
                    }

                    *v124 = a13;
                    v124[1] = v100;
                    v127 = v94 + 4;
                    v128 = v94 + 7;
                    v97 += 32;
                    v94 += 4;
                  }

                  while (v128 < v161);
                  v129 = v127;
                  v62 = v161;
                }

                if (v129 < v62)
                {
                  v130 = (v91 | 1) * a14;
                  v131 = (v91 | 2) * a14;
                  v132 = a4 + v57 * v65 + 8 * v129;
                  v133 = v92 * a14;
                  do
                  {
                    if (v66 < 1)
                    {
                      v139 = 0;
                      v138 = 0;
                      v137 = 0;
                      a13.i64[0] = 0;
                    }

                    else
                    {
                      a13.i64[0] = 0;
                      v134 = v66;
                      v135 = v132;
                      v136 = (a15 + 264 * v91);
                      v137 = 0;
                      v138 = 0;
                      v139 = 0;
                      do
                      {
                        v140 = vrev64_s32(*v135);
                        v142 = *v136;
                        v141 = v136[1];
                        v136 += 2;
                        v139 = vsub_f32(v139, vmla_n_f32(vmul_f32(v140, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), *v142.f32, 1)), *v135, v142.f32[0]));
                        v138 = vsub_f32(v138, vmla_laneq_f32(vmul_f32(v140, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D3), v142, 3)), *v135, v142, 2));
                        v137 = vsub_f32(v137, vmla_n_f32(vmul_f32(v140, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), *v141.f32, 1)), *v135, v141.f32[0]));
                        *a13.f32 = vsub_f32(*a13.f32, vmla_laneq_f32(vmul_f32(v140, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D3), v141, 3)), *v135, v141, 2));
                        v135 = (v135 + v57);
                        --v134;
                      }

                      while (v134);
                    }

                    v143 = v93 + v129;
                    if (v65)
                    {
                      *(a8 + 8 * v143) = vadd_f32(v139, *(a8 + 8 * v143));
                      *(a8 + 8 * (v130 + v129)) = vadd_f32(v138, *(a8 + 8 * (v130 + v129)));
                      *(a8 + 8 * (v131 + v129)) = vadd_f32(v137, *(a8 + 8 * (v131 + v129)));
                      v144 = v133 + v129;
                      *a13.f32 = vadd_f32(*a13.f32, *(a8 + 8 * (v133 + v129)));
                    }

                    else
                    {
                      *(a8 + 8 * v143) = v139;
                      *(a8 + 8 * (v130 + v129)) = v138;
                      *(a8 + 8 * (v131 + v129)) = v137;
                      v144 = v133 + v129;
                    }

                    *(a8 + 8 * v144) = a13.i64[0];
                    ++v129;
                    v132 += 8;
                  }

                  while (v129 != v161);
                }

                LODWORD(v145) = v91 + 4;
                v146 = v91 + 7;
                v91 += 4;
              }

              while (v146 < v61);
              v145 = v145;
            }

            if (v145 < v61)
            {
              do
              {
                if (v62 >= 1)
                {
                  v147 = 0;
                  v148 = (a4 + 8 * v65 * a6);
                  do
                  {
                    a13.i64[0] = 0;
                    if (v66 >= 1)
                    {
                      v149 = v66;
                      v150 = v148;
                      v151 = (a15 + 8 * ((33 * (v145 & 0x7FFFFFFC)) & 0xFFFFFFFC | v145 & 3));
                      do
                      {
                        v152 = *v151;
                        v151 += 4;
                        *a13.f32 = vsub_f32(*a13.f32, vmla_n_f32(vmul_f32(vrev64_s32(*v150), vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), v152, 1)), *v150, v152.f32[0]));
                        v150 = (v150 + v57);
                        --v149;
                      }

                      while (v149);
                    }

                    v153 = v145 * a14 + v147;
                    if (v65)
                    {
                      *a13.f32 = vadd_f32(*a13.f32, *(a8 + 8 * v153));
                    }

                    *(a8 + 8 * v153) = a13.i64[0];
                    ++v147;
                    ++v148;
                  }

                  while (v147 != v161);
                }

                ++v145;
              }

              while (v145 < v61);
            }

            v63 = v66 + v65;
          }

          while (v66 + v65 < a3);
        }

        a5 += 256;
        a8 += a14 << 8;
        v56 = v159 + 32;
        a2 = v154;
      }

      while (v159 + 32 < v154);
    }
  }

  else
  {
    v26 = 0;
    v156 = vnegq_f64(_Q0);
    v27 = vnegq_f64(_Q1);
    v28 = a2;
    v158 = v27;
    do
    {
      v29 = 0;
      v155 = v26;
      v30 = v28 - v26;
      if (v28 - v26 >= 64)
      {
        v31 = 64;
      }

      else
      {
        v31 = v28 - v26;
      }

      v32 = v31;
      do
      {
        if (a3 - v29 >= 64)
        {
          v33 = 64;
        }

        else
        {
          v33 = a3 - v29;
        }

        v34 = v29;
        if (a3 - v29 < 1)
        {
          v35 = 0;
        }

        else
        {
          v35 = 0;
          v36 = a7 + 16 * v29;
          do
          {
            v37 = v36 + 16 * v35;
            if ((v34 + 1 + v35) < a3)
            {
              v38 = *(v37 + 16);
              v39 = *(v37 + 20);
            }

            v40 = *v37;
            v41 = *(v37 + 4);
            v42 = fabsf(*v37) == INFINITY;
            if (fabsf(v41) == INFINITY)
            {
              v42 = 1;
            }

            if (v42)
            {
              *_Q1.f64 = 0.0;
            }

            else
            {
              *_Q1.f64 = v40;
            }

            if (v42)
            {
              v43 = 0.0;
            }

            else
            {
              v43 = v41;
            }

            v44 = vmulq_n_f32(v156, v43);
            v45 = 8 * v34 + 8 * v35;
            if (v30 < 4)
            {
              v53 = 0;
            }

            else
            {
              v46 = 0;
              v47 = vdupq_lane_s32(*&_Q1.f64[0], 0);
              v48 = (a15 + (v35 << 9));
              v49 = a6 * v45;
              do
              {
                v50 = vmulq_f32(*(a5 + v49 + 16), v27);
                v51 = vmulq_f32(*(a5 + v49), v27);
                v52 = v46 + 7;
                *v48 = vmlaq_f32(vmulq_f32(v44, vrev64q_s32(v51)), v47, v51);
                v48[1] = vmlaq_f32(vmulq_f32(v44, vrev64q_s32(v50)), v47, v50);
                v48 += 2;
                v46 += 4;
                v49 += 32;
              }

              while (v52 < v32);
              v53 = v46;
            }

            if (v53 < v32)
            {
              *&_Q1.f64[0] = vdup_lane_s32(*&_Q1.f64[0], 0);
              v54 = a5 + a6 * v45;
              do
              {
                v55 = vmul_f32(*(v54 + 8 * v53), COERCE_FLOAT32X2_T(-_D8));
                *(a15 + (v35 << 9) + 8 * v53++) = vmla_f32(vmul_f32(*v44.f32, vrev64_s32(v55)), *&_Q1.f64[0], v55);
              }

              while (v53 < v32);
            }

            ++v35;
          }

          while (v35 < v33);
        }

        result = cblas_cgemm_NEWLAPACK();
        v27 = v158;
        v29 = v35 + v34;
      }

      while ((v35 + v34) < a3);
      a5 += 512;
      a8 += a14 << 9;
      v28 = v154;
      v26 = v155 + 64;
    }

    while (v155 + 64 < v154);
  }

  return result;
}

uint64_t sub_236743144(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v214 = result;
  if (a2 < 33 || a3 <= 32)
  {
    if (a2 >= 1)
    {
      v47 = 0;
      v48 = 16 * a6;
      v49 = xmmword_23681FB50;
      v50 = xmmword_23681FD30;
      v51 = a2;
      do
      {
        v210 = v47;
        v52 = v51 - v47;
        if (v51 - v47 >= 32)
        {
          v53 = 32;
        }

        else
        {
          v53 = v51 - v47;
        }

        v54 = v214;
        if (a3 >= 1)
        {
          v55 = 0;
          result = v53;
          do
          {
            if (a3 - v55 >= 32)
            {
              v56 = 32;
            }

            else
            {
              v56 = a3 - v55;
            }

            v57 = v55;
            if (a3 - v55 < 1)
            {
              v58 = 0;
            }

            else
            {
              v58 = 0;
              v59 = a7 + 32 * v55;
              v60 = v55 + 1;
              v61 = 16 * v55;
              do
              {
                v62 = v59 + 16 * (2 * v58);
                if (v60 + v58 < a3)
                {
                  v63 = *(v62 + 32);
                  v64 = *(v62 + 40);
                }

                v65 = *v62;
                v66 = *(v62 + 8);
                v67 = fabs(*v62) == INFINITY;
                if (fabs(v66) == INFINITY)
                {
                  v67 = 1;
                }

                if (v67)
                {
                  v68 = 0.0;
                }

                else
                {
                  v68 = v65;
                }

                if (v67)
                {
                  v69 = 0.0;
                }

                else
                {
                  v69 = v66;
                }

                v70 = vmulq_n_f64(v49, v69);
                v71 = 4 * v58;
                v72 = v61 + 16 * v58;
                if (v52 < 4)
                {
                  v82 = 0;
                }

                else
                {
                  v73 = 0;
                  v74 = vdupq_lane_s64(*&v68, 0);
                  v75 = (a10 + 16 * v71);
                  v76 = a6 * v72;
                  do
                  {
                    v77 = vmulq_f64(*(a5 + v76 + 32), v50);
                    v78 = vmulq_f64(*(a5 + v76 + 48), v50);
                    v79 = vmulq_f64(*(a5 + v76), v50);
                    v80 = vmulq_f64(*(a5 + v76 + 16), v50);
                    v75[2] = vmlaq_f64(vmulq_f64(v70, vextq_s8(v77, v77, 8uLL)), v74, v77);
                    v75[3] = vmlaq_f64(vmulq_f64(v70, vextq_s8(v78, v78, 8uLL)), v74, v78);
                    v81 = v73 + 7;
                    *v75 = vmlaq_f64(vmulq_f64(v70, vextq_s8(v79, v79, 8uLL)), v74, v79);
                    v75[1] = vmlaq_f64(vmulq_f64(v70, vextq_s8(v80, v80, 8uLL)), v74, v80);
                    v73 += 4;
                    v75 += 132;
                    v76 += 64;
                  }

                  while (v81 < v53);
                  v82 = v73;
                }

                if (v82 < v53)
                {
                  v83 = vdupq_lane_s64(*&v68, 0);
                  v84 = a5 + a6 * v72;
                  do
                  {
                    v85 = vmulq_f64(*(v84 + 16 * v82), v50);
                    *(a10 + 16 * ((33 * (v82 & 0x7FFFFFFC) + v71) | v82 & 3)) = vmlaq_f64(vmulq_f64(v70, vextq_s8(v85, v85, 8uLL)), v83, v85);
                    ++v82;
                  }

                  while (v82 < v53);
                }

                ++v58;
              }

              while (v58 < v56);
            }

            if (v52 < 4)
            {
              v200 = 0;
            }

            else
            {
              v86 = 0;
              do
              {
                v87 = v86 | 3;
                v88 = v86 * a9;
                if (v54 < 4)
                {
                  v182 = 0;
                }

                else
                {
                  v89 = 0;
                  v90 = (v86 | 1) * a9;
                  v91 = (v86 | 2) * a9;
                  v92 = a4 + 16 * v57 * a6;
                  v93 = v87 * a9;
                  do
                  {
                    if (v58 < 1)
                    {
                      v109 = 0uLL;
                      v110 = 0uLL;
                      v111 = 0uLL;
                      v112 = 0uLL;
                      v105 = 0uLL;
                      v106 = 0uLL;
                      v107 = 0uLL;
                      v108 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v104 = 0uLL;
                      v94 = 0uLL;
                      v96 = 0uLL;
                      v98 = 0uLL;
                      v100 = 0uLL;
                    }

                    else
                    {
                      v94 = 0uLL;
                      v95 = v58;
                      v96 = 0uLL;
                      v97 = v92;
                      v98 = 0uLL;
                      v99 = (a10 + 528 * v86);
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v104 = 0uLL;
                      v105 = 0uLL;
                      v106 = 0uLL;
                      v107 = 0uLL;
                      v108 = 0uLL;
                      v109 = 0uLL;
                      v110 = 0uLL;
                      v111 = 0uLL;
                      v112 = 0uLL;
                      do
                      {
                        v215 = v104;
                        v217 = v109;
                        v218 = v108;
                        v219 = v107;
                        v220 = v106;
                        v221 = v105;
                        v114 = *(v97 + 32);
                        v113 = *(v97 + 48);
                        v115 = *(v97 + 16);
                        v116 = vextq_s8(*v97, *v97, 8uLL);
                        v117 = vextq_s8(v115, v115, 8uLL);
                        v118 = vextq_s8(v114, v114, 8uLL);
                        v119 = vextq_s8(v113, v113, 8uLL);
                        v120 = v99[2];
                        v121 = v99[3];
                        v123 = *v99;
                        v122 = v99[1];
                        v99 += 4;
                        v124 = vmulq_laneq_f64(xmmword_23681FB50, v123, 1);
                        v125 = vmulq_f64(v119, v124);
                        v126 = vmulq_f64(v118, v124);
                        v127 = vmulq_f64(v117, v124);
                        v128 = vmlaq_n_f64(vmulq_f64(v116, v124), *v97, v123.f64[0]);
                        v129 = vmlaq_n_f64(v127, v115, v123.f64[0]);
                        v130 = vmlaq_n_f64(v126, v114, v123.f64[0]);
                        v131 = vmlaq_n_f64(v125, v113, v123.f64[0]);
                        v132 = vmulq_laneq_f64(xmmword_23681FB50, v122, 1);
                        v133 = vmulq_f64(v119, v132);
                        v134 = v103;
                        v135 = v94;
                        v136 = vmulq_f64(v118, v132);
                        v137 = v102;
                        v138 = v96;
                        v139 = vmulq_f64(v117, v132);
                        v140 = vmlaq_n_f64(vmulq_f64(v116, v132), *v97, v122.f64[0]);
                        v141 = vmlaq_n_f64(v139, v115, v122.f64[0]);
                        v142 = vmlaq_n_f64(v136, v114, v122.f64[0]);
                        v143 = vmlaq_n_f64(v133, v113, v122.f64[0]);
                        v144 = vmulq_laneq_f64(xmmword_23681FB50, v120, 1);
                        v145 = vmulq_f64(v119, v144);
                        v146 = vmulq_f64(v118, v144);
                        v147 = vmulq_f64(v117, v144);
                        v148 = vmlaq_n_f64(vmulq_f64(v116, v144), *v97, v120.f64[0]);
                        v149 = vmlaq_n_f64(v147, v115, v120.f64[0]);
                        v150 = vmlaq_n_f64(v146, v114, v120.f64[0]);
                        v151 = vmlaq_n_f64(v145, v113, v120.f64[0]);
                        v152 = vmulq_laneq_f64(xmmword_23681FB50, v121, 1);
                        v153 = vmlaq_n_f64(vmulq_f64(v116, v152), *v97, v121.f64[0]);
                        v154 = vmlaq_n_f64(vmulq_f64(v117, v152), v115, v121.f64[0]);
                        v155 = vmlaq_n_f64(vmulq_f64(v118, v152), v114, v121.f64[0]);
                        v156 = vmlaq_n_f64(vmulq_f64(v119, v152), v113, v121.f64[0]);
                        v112 = vsubq_f64(v112, v131);
                        v111 = vsubq_f64(v111, v130);
                        v110 = vsubq_f64(v110, v129);
                        v109 = vsubq_f64(v217, v128);
                        v108 = vsubq_f64(v218, v143);
                        v107 = vsubq_f64(v219, v142);
                        v157 = v135;
                        v158 = v134;
                        v106 = vsubq_f64(v220, v141);
                        v159 = v138;
                        v160 = v137;
                        v105 = vsubq_f64(v221, v140);
                        v104 = vsubq_f64(v215, v151);
                        v103 = vsubq_f64(v158, v150);
                        v102 = vsubq_f64(v160, v149);
                        v101 = vsubq_f64(v101, v148);
                        v100 = vsubq_f64(v100, v156);
                        v98 = vsubq_f64(v98, v155);
                        v96 = vsubq_f64(v159, v154);
                        v94 = vsubq_f64(v157, v153);
                        v97 += v48;
                        --v95;
                      }

                      while (v95);
                    }

                    v161 = (a8 + 16 * (v88 + v89));
                    if (v57)
                    {
                      v162 = vaddq_f64(v112, v161[3]);
                      v163 = vaddq_f64(v111, v161[2]);
                      v164 = vaddq_f64(v110, v161[1]);
                      *v161 = vaddq_f64(v109, *v161);
                      v161[1] = v164;
                      v161[2] = v163;
                      v161[3] = v162;
                      v165 = (a8 + 16 * (v90 + v89));
                      v166 = vaddq_f64(v107, v165[2]);
                      v167 = vaddq_f64(v106, v165[1]);
                      v168 = vaddq_f64(v108, v165[3]);
                      *v165 = vaddq_f64(v105, *v165);
                      v165[1] = v167;
                      v165[2] = v166;
                      v165[3] = v168;
                      v169 = (a8 + 16 * (v91 + v89));
                      v170 = vaddq_f64(v103, v169[2]);
                      v171 = vaddq_f64(v102, v169[1]);
                      v172 = vaddq_f64(v104, v169[3]);
                      *v169 = vaddq_f64(v101, *v169);
                      v169[1] = v171;
                      v169[2] = v170;
                      v169[3] = v172;
                      v173 = (a8 + 16 * (v93 + v89));
                      v174 = vaddq_f64(v98, v173[2]);
                      v175 = vaddq_f64(v96, v173[1]);
                      v176 = vaddq_f64(v100, v173[3]);
                      *v173 = vaddq_f64(v94, *v173);
                      v173[1] = v175;
                      v173[2] = v174;
                      v173[3] = v176;
                    }

                    else
                    {
                      *v161 = v109;
                      v161[1] = v110;
                      v161[2] = v111;
                      v161[3] = v112;
                      v177 = (a8 + 16 * (v90 + v89));
                      *v177 = v105;
                      v177[1] = v106;
                      v177[2] = v107;
                      v177[3] = v108;
                      v178 = (a8 + 16 * (v91 + v89));
                      *v178 = v101;
                      v178[1] = v102;
                      v178[2] = v103;
                      v178[3] = v104;
                      v179 = (a8 + 16 * (v93 + v89));
                      v179[2] = v98;
                      v179[3] = v100;
                      *v179 = v94;
                      v179[1] = v96;
                    }

                    v50 = xmmword_23681FD30;
                    v49 = xmmword_23681FB50;
                    v180 = v89 + 4;
                    v181 = v89 + 7;
                    v92 += 64;
                    v89 += 4;
                  }

                  while (v181 < v214);
                  v182 = v180;
                  v54 = v214;
                }

                if (v182 < v54)
                {
                  v183 = (v86 | 1) * a9;
                  v184 = (v86 | 2) * a9;
                  v185 = a4 + v48 * v57 + 16 * v182;
                  v186 = v87 * a9;
                  do
                  {
                    if (v58 < 1)
                    {
                      v193 = 0uLL;
                      v192 = 0uLL;
                      v191 = 0uLL;
                      v187 = 0uLL;
                    }

                    else
                    {
                      v187 = 0uLL;
                      v188 = v58;
                      v189 = v185;
                      v190 = (a10 + 528 * v86);
                      v191 = 0uLL;
                      v192 = 0uLL;
                      v193 = 0uLL;
                      do
                      {
                        v194 = vextq_s8(*v189, *v189, 8uLL);
                        v196 = v190[2];
                        v195 = v190[3];
                        v198 = *v190;
                        v197 = v190[1];
                        v190 += 4;
                        v193 = vsubq_f64(v193, vmlaq_n_f64(vmulq_f64(v194, vmulq_laneq_f64(v49, v198, 1)), *v189, v198.f64[0]));
                        v192 = vsubq_f64(v192, vmlaq_n_f64(vmulq_f64(v194, vmulq_laneq_f64(v49, v197, 1)), *v189, v197.f64[0]));
                        v191 = vsubq_f64(v191, vmlaq_n_f64(vmulq_f64(v194, vmulq_laneq_f64(v49, v196, 1)), *v189, v196.f64[0]));
                        v187 = vsubq_f64(v187, vmlaq_n_f64(vmulq_f64(v194, vmulq_laneq_f64(v49, v195, 1)), *v189, v195.f64[0]));
                        v189 = (v189 + v48);
                        --v188;
                      }

                      while (v188);
                    }

                    v199 = v88 + v182;
                    if (v57)
                    {
                      *(a8 + 16 * v199) = vaddq_f64(v193, *(a8 + 16 * v199));
                      *(a8 + 16 * (v183 + v182)) = vaddq_f64(v192, *(a8 + 16 * (v183 + v182)));
                      *(a8 + 16 * (v184 + v182)) = vaddq_f64(v191, *(a8 + 16 * (v184 + v182)));
                      *(a8 + 16 * (v186 + v182)) = vaddq_f64(v187, *(a8 + 16 * (v186 + v182)));
                    }

                    else
                    {
                      *(a8 + 16 * v199) = v193;
                      *(a8 + 16 * (v183 + v182)) = v192;
                      *(a8 + 16 * (v184 + v182)) = v191;
                      *(a8 + 16 * (v186 + v182)) = v187;
                    }

                    ++v182;
                    v185 += 16;
                  }

                  while (v182 != v214);
                }

                LODWORD(v200) = v86 + 4;
                v201 = v86 + 7;
                v86 += 4;
              }

              while (v201 < v53);
              v200 = v200;
            }

            if (v200 < v53)
            {
              do
              {
                if (v54 >= 1)
                {
                  v202 = 0;
                  v203 = (a4 + 16 * v57 * a6);
                  do
                  {
                    v204 = 0uLL;
                    if (v58 >= 1)
                    {
                      v205 = v58;
                      v206 = v203;
                      v207 = (a10 + 16 * ((33 * (v200 & 0x7FFFFFFC)) & 0xFFFFFFFC | v200 & 3));
                      do
                      {
                        v208 = *v207;
                        v207 += 4;
                        v204 = vsubq_f64(v204, vmlaq_n_f64(vmulq_f64(vextq_s8(*v206, *v206, 8uLL), vmulq_laneq_f64(v49, v208, 1)), *v206, v208.f64[0]));
                        v206 = (v206 + v48);
                        --v205;
                      }

                      while (v205);
                    }

                    v209 = v200 * a9 + v202;
                    if (v57)
                    {
                      v204 = vaddq_f64(v204, *(a8 + 16 * v209));
                    }

                    *(a8 + 16 * v209) = v204;
                    ++v202;
                    ++v203;
                  }

                  while (v202 != v214);
                }

                ++v200;
              }

              while (v200 < v53);
            }

            v55 = v58 + v57;
          }

          while (v58 + v57 < a3);
        }

        a5 += 512;
        a8 += a9 << 9;
        v51 = a2;
        v47 = v210 + 32;
      }

      while (v210 + 32 < a2);
    }
  }

  else
  {
    v14 = 0;
    v15 = a2;
    do
    {
      v16 = 0;
      v216 = v14;
      v17 = v15 - v14;
      if (v15 - v14 >= 64)
      {
        v18 = 64;
      }

      else
      {
        v18 = v15 - v14;
      }

      v19 = v18;
      do
      {
        if (a3 - v16 >= 64)
        {
          v20 = 64;
        }

        else
        {
          v20 = a3 - v16;
        }

        v21 = v16;
        if (a3 - v16 < 1)
        {
          v22 = 0;
        }

        else
        {
          v22 = 0;
          v23 = a7 + 32 * v16;
          do
          {
            v24 = v23 + 32 * v22;
            if ((v21 + 1 + v22) < a3)
            {
              v25 = *(v24 + 32);
              v26 = *(v24 + 40);
            }

            v27 = *v24;
            v28 = *(v24 + 8);
            v29 = fabs(*v24) == INFINITY;
            if (fabs(v28) == INFINITY)
            {
              v29 = 1;
            }

            if (v29)
            {
              v30 = 0.0;
            }

            else
            {
              v30 = v27;
            }

            if (v29)
            {
              v31 = 0.0;
            }

            else
            {
              v31 = v28;
            }

            v32 = vmulq_n_f64(xmmword_23681FB50, v31);
            v33 = 16 * v21 + 16 * v22;
            if (v17 < 4)
            {
              v43 = 0;
            }

            else
            {
              v34 = 0;
              v35 = vdupq_lane_s64(*&v30, 0);
              v36 = (a10 + (v22 << 10));
              v37 = a6 * v33;
              do
              {
                v38 = vmulq_f64(*(a5 + v37 + 32), xmmword_23681FD30);
                v39 = vmulq_f64(*(a5 + v37 + 48), xmmword_23681FD30);
                v40 = vmulq_f64(*(a5 + v37), xmmword_23681FD30);
                v41 = vmulq_f64(*(a5 + v37 + 16), xmmword_23681FD30);
                v36[2] = vmlaq_f64(vmulq_f64(v32, vextq_s8(v38, v38, 8uLL)), v35, v38);
                v36[3] = vmlaq_f64(vmulq_f64(v32, vextq_s8(v39, v39, 8uLL)), v35, v39);
                v42 = v34 + 7;
                *v36 = vmlaq_f64(vmulq_f64(v32, vextq_s8(v40, v40, 8uLL)), v35, v40);
                v36[1] = vmlaq_f64(vmulq_f64(v32, vextq_s8(v41, v41, 8uLL)), v35, v41);
                v36 += 4;
                v34 += 4;
                v37 += 64;
              }

              while (v42 < v19);
              v43 = v34;
            }

            if (v43 < v19)
            {
              v44 = vdupq_lane_s64(*&v30, 0);
              v45 = a5 + a6 * v33;
              do
              {
                v46 = vmulq_f64(*(v45 + 16 * v43), xmmword_23681FD30);
                *(a10 + (v22 << 10) + 16 * v43++) = vmlaq_f64(vmulq_f64(v32, vextq_s8(v46, v46, 8uLL)), v44, v46);
              }

              while (v43 < v19);
            }

            ++v22;
          }

          while (v22 < v20);
        }

        result = cblas_zgemm_NEWLAPACK();
        v16 = v22 + v21;
      }

      while ((v22 + v21) < a3);
      a5 += 1024;
      a8 += a9 << 10;
      v14 = v216 + 64;
      v15 = a2;
    }

    while (v216 + 64 < a2);
  }

  return result;
}

uint64_t sub_236743FF8(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, __n128 a11, double a12, double a13, __n128 a14)
{
  v16 = result;
  if (result < 65 || a2 <= 64)
  {
    if (result >= 1)
    {
      v37 = 0;
      v38 = a3;
      v39 = 4 * a4;
      do
      {
        v120 = v37;
        v40 = v16 - v37;
        if (v16 - v37 >= 32)
        {
          v41 = 32;
        }

        else
        {
          v41 = v16 - v37;
        }

        if (a2 >= 1)
        {
          v42 = 0;
          v43 = a6 + 4 * v120 * a7;
          result = v41;
          do
          {
            if (a2 - v42 >= 32)
            {
              v44 = 32;
            }

            else
            {
              v44 = a2 - v42;
            }

            v45 = v42;
            if (a2 - v42 < 1)
            {
              v46 = 0;
              v49 = a4;
            }

            else
            {
              v46 = 0;
              v47 = a5 + 8 * v42;
              v48 = v42 + 1;
              v49 = a4;
              do
              {
                v50 = (2 * v46);
                if (v48 + v46 < a2)
                {
                  v51 = *(v47 + 4 * v50 + 8);
                }

                v52 = *(v47 + 4 * v50);
                if (fabsf(v52) == INFINITY)
                {
                  v52 = 0.0;
                }

                v53 = 4 * v46;
                v54 = 4 * v45 + 4 * v46;
                if (v40 < 4)
                {
                  v60 = 0;
                }

                else
                {
                  v55 = 0;
                  v56 = (a8 + 4 * v53);
                  v57 = (v38 + a4 * v54);
                  do
                  {
                    v58 = *v57++;
                    a11 = vmulq_n_f32(v58, v52);
                    *v56 = a11;
                    v59 = v55 + 7;
                    v55 += 4;
                    v56 += 33;
                  }

                  while (v59 < v41);
                  v60 = v55;
                }

                if (v60 < v41)
                {
                  v61 = v38 + a4 * v54;
                  do
                  {
                    *(a8 + 4 * ((33 * (v60 & 0x7FFFFFFC) + v53) | v60 & 3)) = v52 * *(v61 + 4 * v60);
                    ++v60;
                  }

                  while (v60 < v41);
                }

                ++v46;
              }

              while (v46 < v44);
            }

            if (v40 < 4)
            {
              v99 = 0;
            }

            else
            {
              v62 = 0;
              v63 = (a3 + 4 * v45 * v49);
              do
              {
                v64 = v62 | 3;
                v65 = v62;
                if (v62 + 7 < v16)
                {
                  v66 = v63;
                  v67 = v62;
                  do
                  {
                    if (v46 < 1)
                    {
                      v77 = 0uLL;
                      v78 = 0uLL;
                      v75 = 0uLL;
                      v76 = 0uLL;
                      v73 = 0uLL;
                      v74 = 0uLL;
                      v68 = 0uLL;
                      v70 = 0uLL;
                    }

                    else
                    {
                      v68 = 0uLL;
                      v69 = v46;
                      v70 = 0uLL;
                      v71 = v66;
                      v72 = (a8 + 132 * v62);
                      v73 = 0uLL;
                      v74 = 0uLL;
                      v75 = 0uLL;
                      v76 = 0uLL;
                      v77 = 0uLL;
                      v78 = 0uLL;
                      do
                      {
                        v79 = v71[1];
                        v80 = *v72++;
                        v78 = vmlsq_lane_f32(v78, v79, *v80.f32, 0);
                        v77 = vmlsq_lane_f32(v77, *v71, *v80.f32, 0);
                        v76 = vmlsq_lane_f32(v76, v79, *v80.f32, 1);
                        v75 = vmlsq_lane_f32(v75, *v71, *v80.f32, 1);
                        v74 = vmlsq_laneq_f32(v74, v79, v80, 2);
                        v73 = vmlsq_laneq_f32(v73, *v71, v80, 2);
                        v70 = vmlsq_laneq_f32(v70, v79, v80, 3);
                        v68 = vmlsq_laneq_f32(v68, *v71, v80, 3);
                        v71 = (v71 + v39);
                        --v69;
                      }

                      while (v69);
                    }

                    v81 = (v43 + 4 * v62 * a7 + 4 * v67);
                    v82 = vaddq_f32(v78, v81[1]);
                    *v81 = vaddq_f32(v77, *v81);
                    v81[1] = v82;
                    v83 = (v43 + 4 * (v62 | 1) * a7 + 4 * v67);
                    v84 = vaddq_f32(v76, v83[1]);
                    *v83 = vaddq_f32(v75, *v83);
                    v83[1] = v84;
                    v85 = (v43 + 4 * (v62 | 2) * a7 + 4 * v67);
                    a14 = *v85;
                    v86 = vaddq_f32(v74, v85[1]);
                    *v85 = vaddq_f32(v73, *v85);
                    v85[1] = v86;
                    v87 = (v43 + 4 * v64 * a7 + 4 * v67);
                    a11 = vaddq_f32(v70, v87[1]);
                    *v87 = vaddq_f32(v68, *v87);
                    v87[1] = a11;
                    v65 = v67 + 8;
                    v88 = v67 + 15;
                    v66 += 2;
                    v67 += 8;
                  }

                  while (v88 < v16);
                }

                if (v65 < v16)
                {
                  v89 = v43 + 4 * v64 * a7;
                  v90 = v65;
                  v91 = a3 + v39 * v45 + 4 * v65;
                  do
                  {
                    v92 = 0uLL;
                    if (v46 >= 1)
                    {
                      v93 = v46;
                      v94 = v91;
                      v95 = (a8 + 132 * v62);
                      do
                      {
                        a11.n128_u32[0] = *v94;
                        v96 = *v95++;
                        v92 = vmlsq_lane_f32(v92, v96, a11.n128_u64[0], 0);
                        v94 = (v94 + v39);
                        --v93;
                      }

                      while (v93);
                    }

                    *(v43 + 4 * v62 * a7 + 4 * v90) = v92.f32[0] + *(v43 + 4 * v62 * a7 + 4 * v90);
                    *(v43 + 4 * (v62 | 1) * a7 + 4 * v90) = v92.f32[1] + *(v43 + 4 * (v62 | 1) * a7 + 4 * v90);
                    *(v43 + 4 * (v62 | 2) * a7 + 4 * v90) = v92.f32[2] + *(v43 + 4 * (v62 | 2) * a7 + 4 * v90);
                    *(v89 + 4 * v90) = v92.f32[3] + *(v89 + 4 * v90);
                    ++v90;
                    v91 += 4;
                  }

                  while (v90 < v16);
                }

                v97 = v62 + 4;
                v98 = v62 + 7;
                ++v63;
                v62 += 4;
              }

              while (v98 < v41);
              v99 = v97;
            }

            if (v99 < v41)
            {
              v100 = (a3 + v39 * v45 + 4 * v99);
              do
              {
                v101 = v99;
                if (v99 + 7 < v16)
                {
                  v102 = v100;
                  v103 = v99;
                  do
                  {
                    v104 = 0uLL;
                    if (v46 < 1)
                    {
                      v108 = 0uLL;
                    }

                    else
                    {
                      v105 = v46;
                      v106 = v102;
                      v107 = (a8 + ((4 * (v99 & 3)) | (528 * (v99 >> 2))));
                      v108 = 0uLL;
                      do
                      {
                        v109 = *v107;
                        v107 += 4;
                        a14.n128_u32[0] = v109;
                        v108 = vmlsq_lane_f32(v108, v106[1], a14.n128_u64[0], 0);
                        v104 = vmlsq_lane_f32(v104, *v106, a14.n128_u64[0], 0);
                        v106 = (v106 + v39);
                        --v105;
                      }

                      while (v105);
                    }

                    v110 = (v43 + 4 * v99 * a7 + 4 * v103);
                    a11 = vaddq_f32(v108, v110[1]);
                    *v110 = vaddq_f32(v104, *v110);
                    v110[1] = a11;
                    v101 = v103 + 8;
                    v111 = v103 + 15;
                    v102 += 2;
                    v103 += 8;
                  }

                  while (v111 < v16);
                }

                if (v101 < v16)
                {
                  v112 = v101;
                  v113 = a3 + v39 * v45 + 4 * v101;
                  do
                  {
                    v114 = 0.0;
                    if (v46 >= 1)
                    {
                      v115 = v46;
                      v116 = v113;
                      v117 = (a8 + ((4 * (v99 & 3)) | (528 * (v99 >> 2))));
                      do
                      {
                        v118 = *v117;
                        v117 += 4;
                        v114 = v114 - (*v116 * v118);
                        v116 = (v116 + v39);
                        --v115;
                      }

                      while (v115);
                    }

                    *(v43 + 4 * v99 * a7 + 4 * v112) = v114 + *(v43 + 4 * v99 * a7 + 4 * v112);
                    ++v112;
                    v113 += 4;
                  }

                  while (v112 < v16);
                }

                ++v99;
                v100 = (v100 + 4);
              }

              while (v99 < v41);
            }

            v42 = v46 + v45;
          }

          while (v46 + v45 < a2);
        }

        v37 = v120 + 32;
        v38 += 128;
      }

      while (v120 + 32 < v16);
    }
  }

  else
  {
    v17 = 0;
    v18 = a3;
    v119 = a7 << 8;
    do
    {
      v19 = 0;
      v121 = v17;
      v20 = v16 - v17;
      if (v16 - v17 >= 64)
      {
        v21 = 64;
      }

      else
      {
        v21 = v16 - v17;
      }

      v22 = v21;
      do
      {
        if (a2 - v19 >= 64)
        {
          v23 = 64;
        }

        else
        {
          v23 = a2 - v19;
        }

        v24 = v19;
        if (a2 - v19 < 1)
        {
          v25 = 0;
        }

        else
        {
          v25 = 0;
          v26 = a5 + 8 * v19;
          v27 = 4 * v24;
          do
          {
            v28 = 2 * v25;
            if ((v24 + 1 + v25) < a2)
            {
              v29 = *(v26 + 4 * v28 + 8);
            }

            v30 = *(v26 + 4 * v28);
            if (fabsf(v30) == INFINITY)
            {
              v30 = 0.0;
            }

            if (v20 < 4)
            {
              v36 = 0;
            }

            else
            {
              v31 = 0;
              v32 = (a8 + (v25 << 8));
              v33 = (v18 + a4 * (v27 + 4 * v25));
              do
              {
                v34 = *v33++;
                *v32++ = vmulq_n_f32(v34, v30);
                v35 = v31 + 7;
                v31 += 4;
              }

              while (v35 < v22);
              v36 = v31;
            }

            if (v36 < v22)
            {
              do
              {
                *(a8 + (v25 << 8) + 4 * v36) = v30 * *(v18 + a4 * (v27 + 4 * v25) + 4 * v36);
                ++v36;
              }

              while (v36 < v22);
            }

            ++v25;
          }

          while (v25 < v23);
        }

        cblas_sgemm_NEWLAPACK();
        result = 64;
        v19 = v25 + v24;
      }

      while ((v25 + v24) < a2);
      a6 += v119;
      v17 = v121 + 64;
      v18 += 256;
    }

    while (v121 + 64 < v16);
  }

  return result;
}

uint64_t sub_236744920(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = result;
  if (result < 65 || a2 <= 64)
  {
    if (result >= 1)
    {
      v33 = 0;
      v34 = a3;
      v35 = 8 * a4;
      do
      {
        v151 = v33;
        v36 = v11 - v33;
        if (v11 - v33 >= 32)
        {
          v37 = 32;
        }

        else
        {
          v37 = v11 - v33;
        }

        if (a2 >= 1)
        {
          v38 = 0;
          v39 = a6 + 8 * v151 * a7;
          result = v37;
          do
          {
            if (a2 - v38 >= 32)
            {
              v40 = 32;
            }

            else
            {
              v40 = a2 - v38;
            }

            v41 = v38;
            if (a2 - v38 < 1)
            {
              v42 = 0;
              v45 = a4;
            }

            else
            {
              v42 = 0;
              v43 = a5 + 16 * v38;
              v44 = v38 + 1;
              v45 = a4;
              do
              {
                v46 = (2 * v42);
                if (v44 + v42 < a2)
                {
                  v47 = *(v43 + 8 * v46 + 16);
                }

                v48 = *(v43 + 8 * v46);
                if (fabs(v48) == INFINITY)
                {
                  v48 = 0.0;
                }

                v49 = 4 * v42;
                v50 = 8 * v41 + 8 * v42;
                if (v36 < 4)
                {
                  v57 = 0;
                }

                else
                {
                  v51 = 0;
                  v52 = (a8 + 8 * v49);
                  v53 = (v34 + a4 * v50);
                  do
                  {
                    v55 = *v53;
                    v54 = v53[1];
                    v53 += 2;
                    v56 = v51 + 7;
                    *v52 = vmulq_n_f64(v55, v48);
                    v52[1] = vmulq_n_f64(v54, v48);
                    v51 += 4;
                    v52 += 66;
                  }

                  while (v56 < v37);
                  v57 = v51;
                }

                if (v57 < v37)
                {
                  v58 = v34 + a4 * v50;
                  do
                  {
                    *(a8 + 8 * ((33 * (v57 & 0x7FFFFFFC) + v49) | v57 & 3)) = v48 * *(v58 + 8 * v57);
                    ++v57;
                  }

                  while (v57 < v37);
                }

                ++v42;
              }

              while (v42 < v40);
            }

            if (v36 < 4)
            {
              v125 = 0;
            }

            else
            {
              v59 = 0;
              v60 = (a3 + 8 * v41 * v45);
              v153 = v41;
              v61 = a3 + v35 * v41;
              do
              {
                v62 = v59 | 3;
                v63 = v59;
                if (v59 + 7 < v11)
                {
                  v64 = v60;
                  v65 = v59;
                  do
                  {
                    if (v42 < 1)
                    {
                      v81 = 0uLL;
                      v82 = 0uLL;
                      v83 = 0uLL;
                      v84 = 0uLL;
                      v77 = 0uLL;
                      v78 = 0uLL;
                      v79 = 0uLL;
                      v80 = 0uLL;
                      v73 = 0uLL;
                      v74 = 0uLL;
                      v75 = 0uLL;
                      v76 = 0uLL;
                      v66 = 0uLL;
                      v68 = 0uLL;
                      v70 = 0uLL;
                      v72 = 0uLL;
                    }

                    else
                    {
                      v66 = 0uLL;
                      v67 = v42;
                      v68 = 0uLL;
                      v69 = v64;
                      v70 = 0uLL;
                      v71 = (a8 + 264 * v59);
                      v72 = 0uLL;
                      v73 = 0uLL;
                      v74 = 0uLL;
                      v75 = 0uLL;
                      v76 = 0uLL;
                      v77 = 0uLL;
                      v78 = 0uLL;
                      v79 = 0uLL;
                      v80 = 0uLL;
                      v81 = 0uLL;
                      v82 = 0uLL;
                      v83 = 0uLL;
                      v84 = 0uLL;
                      do
                      {
                        v86 = v69[2];
                        v85 = v69[3];
                        v87 = v69[1];
                        v89 = *v71;
                        v88 = v71[1];
                        v71 += 2;
                        v82 = vmlsq_lane_f64(v82, v87, v89.f64[0], 0);
                        v81 = vmlsq_lane_f64(v81, *v69, v89.f64[0], 0);
                        v83 = vmlsq_lane_f64(v83, v86, v89.f64[0], 0);
                        v84 = vmlsq_lane_f64(v84, v85, v89.f64[0], 0);
                        v78 = vmlsq_laneq_f64(v78, v87, v89, 1);
                        v77 = vmlsq_laneq_f64(v77, *v69, v89, 1);
                        v79 = vmlsq_laneq_f64(v79, v86, v89, 1);
                        v80 = vmlsq_laneq_f64(v80, v85, v89, 1);
                        v74 = vmlsq_lane_f64(v74, v87, v88.f64[0], 0);
                        v73 = vmlsq_lane_f64(v73, *v69, v88.f64[0], 0);
                        v75 = vmlsq_lane_f64(v75, v86, v88.f64[0], 0);
                        v76 = vmlsq_lane_f64(v76, v85, v88.f64[0], 0);
                        v68 = vmlsq_laneq_f64(v68, v87, v88, 1);
                        v66 = vmlsq_laneq_f64(v66, *v69, v88, 1);
                        v70 = vmlsq_laneq_f64(v70, v86, v88, 1);
                        v69 = (v69 + v35);
                        v72 = vmlsq_laneq_f64(v72, v85, v88, 1);
                        --v67;
                      }

                      while (v67);
                    }

                    v90 = (v39 + 8 * v59 * a7 + 8 * v65);
                    v91 = vaddq_f64(v84, v90[3]);
                    v92 = vaddq_f64(v82, v90[1]);
                    v93 = vaddq_f64(v83, v90[2]);
                    *v90 = vaddq_f64(v81, *v90);
                    v90[1] = v92;
                    v90[2] = v93;
                    v90[3] = v91;
                    v94 = (v39 + 8 * (v59 | 1) * a7 + 8 * v65);
                    v95 = vaddq_f64(v79, v94[2]);
                    v96 = vaddq_f64(v78, v94[1]);
                    v97 = vaddq_f64(v80, v94[3]);
                    *v94 = vaddq_f64(v77, *v94);
                    v94[1] = v96;
                    v94[2] = v95;
                    v94[3] = v97;
                    v98 = (v39 + 8 * (v59 | 2) * a7 + 8 * v65);
                    v99 = vaddq_f64(v75, v98[2]);
                    v100 = vaddq_f64(v74, v98[1]);
                    v101 = vaddq_f64(v76, v98[3]);
                    *v98 = vaddq_f64(v73, *v98);
                    v98[1] = v100;
                    v98[2] = v99;
                    v98[3] = v101;
                    v102 = (v39 + 8 * v62 * a7 + 8 * v65);
                    v103 = vaddq_f64(v70, v102[2]);
                    v104 = vaddq_f64(v68, v102[1]);
                    v105 = vaddq_f64(v72, v102[3]);
                    *v102 = vaddq_f64(v66, *v102);
                    v102[1] = v104;
                    v102[2] = v103;
                    v102[3] = v105;
                    v63 = v65 + 8;
                    LODWORD(v102) = v65 + 15;
                    v64 += 4;
                    v65 += 8;
                  }

                  while (v102 < v11);
                }

                if (v63 < v11)
                {
                  v106 = v39 + 8 * v62 * a7;
                  v107 = v63;
                  v108 = (v61 + 8 * v63);
                  do
                  {
                    if (v42 < 1)
                    {
                      v113 = 0.0;
                      _D3 = 0.0;
                      v112 = 0.0;
                      _D1 = 0.0;
                    }

                    else
                    {
                      v109 = v42;
                      v110 = v108;
                      v111 = (a8 + 264 * v59);
                      v112 = 0.0;
                      v113 = 0.0;
                      do
                      {
                        _D5 = *v110;
                        _Q7 = *v111;
                        _Q6 = v111[1];
                        v111 += 2;
                        v113 = v113 - *&_Q7 * *v110;
                        __asm { FMLS            D3, D5, V7.D[1] }

                        v112 = v112 - *&_Q6 * *v110;
                        __asm { FMLS            D1, D5, V6.D[1] }

                        v110 = (v110 + v35);
                        --v109;
                      }

                      while (v109);
                    }

                    *(v39 + 8 * v59 * a7 + 8 * v107) = v113 + *(v39 + 8 * v59 * a7 + 8 * v107);
                    *(v39 + 8 * (v59 | 1) * a7 + 8 * v107) = _D3 + *(v39 + 8 * (v59 | 1) * a7 + 8 * v107);
                    *(v39 + 8 * (v59 | 2) * a7 + 8 * v107) = v112 + *(v39 + 8 * (v59 | 2) * a7 + 8 * v107);
                    *(v106 + 8 * v107) = _D1 + *(v106 + 8 * v107);
                    ++v107;
                    ++v108;
                  }

                  while (v107 < v11);
                }

                v123 = v59 + 4;
                v124 = v59 + 7;
                v60 += 2;
                v59 += 4;
              }

              while (v124 < v37);
              v125 = v123;
              v41 = v153;
            }

            if (v125 < v37)
            {
              v126 = (a3 + v35 * v41 + 8 * v125);
              do
              {
                v127 = v125;
                if (v125 + 7 < v11)
                {
                  v128 = v126;
                  v129 = v125;
                  do
                  {
                    v130 = 0uLL;
                    if (v42 < 1)
                    {
                      v134 = 0uLL;
                      v135 = 0uLL;
                      v136 = 0uLL;
                    }

                    else
                    {
                      v131 = v42;
                      v132 = v128;
                      v133 = (a8 + ((8 * (v125 & 3)) | (1056 * (v125 >> 2))));
                      v134 = 0uLL;
                      v135 = 0uLL;
                      v136 = 0uLL;
                      do
                      {
                        v137 = *v133;
                        v133 += 4;
                        v135 = vmlsq_lane_f64(v135, v132[2], v137, 0);
                        v134 = vmlsq_lane_f64(v134, v132[1], v137, 0);
                        v130 = vmlsq_lane_f64(v130, *v132, v137, 0);
                        v136 = vmlsq_lane_f64(v136, v132[3], v137, 0);
                        v132 = (v132 + v35);
                        --v131;
                      }

                      while (v131);
                    }

                    v138 = (v39 + 8 * v125 * a7 + 8 * v129);
                    v139 = vaddq_f64(v136, v138[3]);
                    v140 = vaddq_f64(v134, v138[1]);
                    v141 = vaddq_f64(v135, v138[2]);
                    *v138 = vaddq_f64(v130, *v138);
                    v138[1] = v140;
                    v138[2] = v141;
                    v138[3] = v139;
                    v127 = v129 + 8;
                    v142 = v129 + 15;
                    v128 += 4;
                    v129 += 8;
                  }

                  while (v142 < v11);
                }

                if (v127 < v11)
                {
                  v143 = v127;
                  v144 = a3 + v35 * v41 + 8 * v127;
                  do
                  {
                    v145 = 0.0;
                    if (v42 >= 1)
                    {
                      v146 = v42;
                      v147 = v144;
                      v148 = (a8 + ((8 * (v125 & 3)) | (1056 * (v125 >> 2))));
                      do
                      {
                        v149 = *v148;
                        v148 += 4;
                        v145 = v145 - *v147 * v149;
                        v147 = (v147 + v35);
                        --v146;
                      }

                      while (v146);
                    }

                    *(v39 + 8 * v125 * a7 + 8 * v143) = v145 + *(v39 + 8 * v125 * a7 + 8 * v143);
                    ++v143;
                    v144 += 8;
                  }

                  while (v143 < v11);
                }

                ++v125;
                v126 = (v126 + 8);
              }

              while (v125 < v37);
            }

            v38 = v42 + v41;
          }

          while (v42 + v41 < a2);
        }

        v33 = v151 + 32;
        v34 += 256;
      }

      while (v151 + 32 < v11);
    }
  }

  else
  {
    v12 = 0;
    v13 = a3;
    v150 = a7 << 9;
    do
    {
      v14 = 0;
      v152 = v12;
      v15 = v11 - v12;
      if (v11 - v12 >= 64)
      {
        v16 = 64;
      }

      else
      {
        v16 = v11 - v12;
      }

      v17 = v16;
      do
      {
        if (a2 - v14 >= 64)
        {
          v18 = 64;
        }

        else
        {
          v18 = a2 - v14;
        }

        v19 = v14;
        if (a2 - v14 < 1)
        {
          v20 = 0;
        }

        else
        {
          v20 = 0;
          v21 = a5 + 16 * v14;
          v22 = 8 * v19;
          do
          {
            v23 = 2 * v20;
            if ((v19 + 1 + v20) < a2)
            {
              v24 = *(v21 + 8 * v23 + 16);
            }

            v25 = *(v21 + 8 * v23);
            if (fabs(v25) == INFINITY)
            {
              v25 = 0.0;
            }

            if (v15 < 4)
            {
              v32 = 0;
            }

            else
            {
              v26 = 0;
              v27 = (a8 + (v20 << 9));
              v28 = (v13 + a4 * (v22 + 8 * v20));
              do
              {
                v30 = *v28;
                v29 = v28[1];
                v28 += 2;
                v31 = v26 + 7;
                *v27 = vmulq_n_f64(v30, v25);
                v27[1] = vmulq_n_f64(v29, v25);
                v27 += 2;
                v26 += 4;
              }

              while (v31 < v17);
              v32 = v26;
            }

            if (v32 < v17)
            {
              do
              {
                *(a8 + (v20 << 9) + 8 * v32) = v25 * *(v13 + a4 * (v22 + 8 * v20) + 8 * v32);
                ++v32;
              }

              while (v32 < v17);
            }

            ++v20;
          }

          while (v20 < v18);
        }

        cblas_dgemm_NEWLAPACK();
        result = 64;
        v14 = v20 + v19;
      }

      while ((v20 + v19) < a2);
      a6 += v150;
      v12 = v152 + 64;
      v13 += 512;
    }

    while (v152 + 64 < v11);
  }

  return result;
}

uint64_t sub_236745364(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, __n128 a12)
{
  v16 = result;
  __asm { FMOV            V0.4S, #-1.0 }

  if (result < 33 || a2 <= 32)
  {
    if (result >= 1)
    {
      v50 = 0;
      v51 = 8 * a4;
      v52 = vnegq_f64(_Q0);
      v53 = a3;
      do
      {
        v159 = v50;
        v54 = v16 - v50;
        if (v16 - v50 >= 32)
        {
          v55 = 32;
        }

        else
        {
          v55 = v16 - v50;
        }

        if (a2 >= 1)
        {
          v56 = 0;
          v57 = a6 + 8 * v159 * a7;
          result = v55;
          do
          {
            if (a2 - v56 >= 32)
            {
              v58 = 32;
            }

            else
            {
              v58 = a2 - v56;
            }

            v163 = v56;
            v59 = 0;
            if (a2 - v56 >= 1)
            {
              v60 = a5 + 16 * v56;
              v61 = v56 + 1;
              v62 = 8 * v56;
              do
              {
                v63 = v60 + 8 * (2 * v59);
                if (v61 + v59 < a2)
                {
                  v64 = *(v63 + 16);
                  v65 = *(v63 + 20);
                }

                v66 = *v63;
                v67 = *(v63 + 4);
                v68 = fabsf(*v63) == INFINITY;
                if (fabsf(v67) == INFINITY)
                {
                  v68 = 1;
                }

                if (v68)
                {
                  a12.n128_f32[0] = 0.0;
                }

                else
                {
                  a12.n128_f32[0] = v66;
                }

                if (v68)
                {
                  v69 = 0.0;
                }

                else
                {
                  v69 = v67;
                }

                v70 = vmulq_n_f32(v52, v69);
                v71 = 4 * v59;
                v72 = v62 + 8 * v59;
                if (v54 < 4)
                {
                  v80 = 0;
                }

                else
                {
                  v73 = 0;
                  v74 = vdupq_lane_s32(a12.n128_u64[0], 0);
                  v75 = (a8 + 8 * v71);
                  v76 = (v53 + a4 * v72);
                  do
                  {
                    v78 = *v76;
                    v77 = v76[1];
                    v76 += 2;
                    v79 = v73 + 7;
                    *v75 = vmlaq_f32(vmulq_f32(v70, vrev64q_s32(v78)), v74, v78);
                    v75[1] = vmlaq_f32(vmulq_f32(v70, vrev64q_s32(v77)), v74, v77);
                    v73 += 4;
                    v75 += 66;
                  }

                  while (v79 < v55);
                  v80 = v73;
                }

                if (v80 < v55)
                {
                  a12.n128_u64[0] = vdup_lane_s32(a12.n128_u64[0], 0);
                  v81 = v53 + a4 * v72;
                  do
                  {
                    *(a8 + 8 * ((33 * (v80 & 0x7FFFFFFC) + v71) | v80 & 3)) = vmla_f32(vmul_f32(*v70.f32, vrev64_s32(*(v81 + 8 * v80))), a12.n128_u64[0], *(v81 + 8 * v80));
                    ++v80;
                  }

                  while (v80 < v55);
                }

                ++v59;
              }

              while (v59 < v58);
            }

            __asm { FMOV            V2.2S, #-1.0 }

            if (v54 < 4)
            {
              v133 = 0;
            }

            else
            {
              v83 = 0;
              v84 = a3 + 8 * v163 * a4;
              do
              {
                v85 = v83 | 3;
                v86 = v83;
                if ((v83 | 3uLL) < v16)
                {
                  v87 = v84;
                  v88 = v83;
                  do
                  {
                    if (v59 < 1)
                    {
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v94 = 0uLL;
                      v95 = 0uLL;
                      v89 = 0uLL;
                      v91 = 0uLL;
                    }

                    else
                    {
                      v89 = 0uLL;
                      v90 = v59;
                      v91 = 0uLL;
                      v92 = v87;
                      v93 = (a8 + 264 * v83);
                      v94 = 0uLL;
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      do
                      {
                        v100 = *(v92 + 16);
                        v101 = vrev64q_s32(*v92);
                        v102 = vrev64q_s32(v100);
                        v104 = *v93;
                        v103 = v93[1];
                        v93 += 2;
                        v105 = vmulq_lane_f32(v52, *v104.f32, 1);
                        v99 = vsubq_f32(v99, vmlaq_n_f32(vmulq_f32(v102, v105), v100, v104.f32[0]));
                        v98 = vsubq_f32(v98, vmlaq_n_f32(vmulq_f32(v101, v105), *v92, v104.f32[0]));
                        v106 = vmulq_laneq_f32(v52, v104, 3);
                        v97 = vsubq_f32(v97, vmlaq_laneq_f32(vmulq_f32(v102, v106), v100, v104, 2));
                        v96 = vsubq_f32(v96, vmlaq_laneq_f32(vmulq_f32(v101, v106), *v92, v104, 2));
                        v107 = vmulq_lane_f32(v52, *v103.f32, 1);
                        v95 = vsubq_f32(v95, vmlaq_n_f32(vmulq_f32(v102, v107), v100, v103.f32[0]));
                        v94 = vsubq_f32(v94, vmlaq_n_f32(vmulq_f32(v101, v107), *v92, v103.f32[0]));
                        v108 = vmulq_laneq_f32(v52, v103, 3);
                        v91 = vsubq_f32(v91, vmlaq_laneq_f32(vmulq_f32(v102, v108), v100, v103, 2));
                        v89 = vsubq_f32(v89, vmlaq_laneq_f32(vmulq_f32(v101, v108), *v92, v103, 2));
                        v92 += v51;
                        --v90;
                      }

                      while (v90);
                    }

                    v109 = (v57 + 8 * v83 * a7 + 8 * v88);
                    v110 = vaddq_f32(v99, v109[1]);
                    *v109 = vaddq_f32(v98, *v109);
                    v109[1] = v110;
                    v111 = (v57 + 8 * (v83 | 1) * a7 + 8 * v88);
                    v112 = vaddq_f32(v97, v111[1]);
                    *v111 = vaddq_f32(v96, *v111);
                    v111[1] = v112;
                    v113 = (v57 + 8 * (v83 | 2) * a7 + 8 * v88);
                    v114 = vaddq_f32(v95, v113[1]);
                    *v113 = vaddq_f32(v94, *v113);
                    v113[1] = v114;
                    v115 = v57 + 8 * v85 * a7 + 8 * v88;
                    v116 = *(v115 + 16);
                    a12 = vaddq_f32(v89, *v115);
                    *v115 = a12;
                    *(v115 + 16) = vaddq_f32(v91, v116);
                    v86 = v88 + 4;
                    v117 = v88 + 7;
                    v87 += 32;
                    v88 += 4;
                  }

                  while (v117 < v16);
                }

                if (v86 < v16)
                {
                  v118 = v57 + 8 * v85 * a7;
                  v119 = v86;
                  v120 = a3 + v51 * v163 + 8 * v86;
                  do
                  {
                    if (v59 < 1)
                    {
                      v127 = 0;
                      v126 = 0;
                      v125 = 0;
                      v121 = 0;
                    }

                    else
                    {
                      v121 = 0;
                      v122 = v59;
                      v123 = v120;
                      v124 = (a8 + 264 * v83);
                      v125 = 0;
                      v126 = 0;
                      v127 = 0;
                      do
                      {
                        v128 = vrev64_s32(*v123);
                        v130 = *v124;
                        v129 = v124[1];
                        v124 += 2;
                        v127 = vsub_f32(v127, vmla_n_f32(vmul_f32(v128, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), *v130.f32, 1)), *v123, v130.f32[0]));
                        v126 = vsub_f32(v126, vmla_laneq_f32(vmul_f32(v128, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D2), v130, 3)), *v123, v130, 2));
                        v125 = vsub_f32(v125, vmla_n_f32(vmul_f32(v128, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), *v129.f32, 1)), *v123, v129.f32[0]));
                        v121 = vsub_f32(v121, vmla_laneq_f32(vmul_f32(v128, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D2), v129, 3)), *v123, v129, 2));
                        v123 = (v123 + v51);
                        --v122;
                      }

                      while (v122);
                    }

                    *(v57 + 8 * v83 * a7 + 8 * v119) = vadd_f32(v127, *(v57 + 8 * v83 * a7 + 8 * v119));
                    *(v57 + 8 * (v83 | 1) * a7 + 8 * v119) = vadd_f32(v126, *(v57 + 8 * (v83 | 1) * a7 + 8 * v119));
                    *(v57 + 8 * (v83 | 2) * a7 + 8 * v119) = vadd_f32(v125, *(v57 + 8 * (v83 | 2) * a7 + 8 * v119));
                    a12.n128_u64[0] = vadd_f32(v121, *(v118 + 8 * v119));
                    *(v118 + 8 * v119++) = a12.n128_u64[0];
                    v120 += 8;
                  }

                  while (v119 != v16);
                }

                v131 = v83 + 4;
                v132 = v83 + 7;
                v84 += 32;
                v83 += 4;
              }

              while (v132 < v55);
              v133 = v131;
            }

            if (v133 < v55)
            {
              v134 = (a3 + v51 * v163 + 8 * v133);
              do
              {
                v135 = v133;
                if (v133 + 3 < v16)
                {
                  v136 = v134;
                  v137 = v133;
                  do
                  {
                    v138 = 0uLL;
                    if (v59 < 1)
                    {
                      v142 = 0uLL;
                    }

                    else
                    {
                      v139 = v59;
                      v140 = v136;
                      v141 = (a8 + 8 * ((33 * (v133 & 0x7FFFFFFC)) & 0xFFFFFFFC | v133 & 3));
                      v142 = 0uLL;
                      do
                      {
                        v143 = *v141;
                        v141 += 4;
                        v144 = vmulq_lane_f32(v52, v143, 1);
                        v142 = vsubq_f32(v142, vmlaq_n_f32(vmulq_f32(vrev64q_s32(v140[1]), v144), v140[1], v143.f32[0]));
                        v138 = vsubq_f32(v138, vmlaq_n_f32(vmulq_f32(vrev64q_s32(*v140), v144), *v140, v143.f32[0]));
                        v140 = (v140 + v51);
                        --v139;
                      }

                      while (v139);
                    }

                    v145 = v57 + 8 * v133 * a7 + 8 * v137;
                    v146 = *(v145 + 16);
                    a12 = vaddq_f32(v138, *v145);
                    *v145 = a12;
                    *(v145 + 16) = vaddq_f32(v142, v146);
                    v135 = v137 + 4;
                    v147 = v137 + 7;
                    v136 += 2;
                    v137 += 4;
                  }

                  while (v147 < v16);
                }

                if (v135 < v16)
                {
                  v148 = v57 + 8 * v133 * a7;
                  v149 = v135;
                  v150 = a3 + v51 * v163 + 8 * v135;
                  do
                  {
                    v151 = 0;
                    if (v59 >= 1)
                    {
                      v152 = v59;
                      v153 = v150;
                      v154 = (a8 + 8 * ((33 * (v133 & 0x7FFFFFFC)) & 0xFFFFFFFC | v133 & 3));
                      do
                      {
                        v155 = *v154;
                        v154 += 4;
                        v151 = vsub_f32(v151, vmla_n_f32(vmul_f32(vrev64_s32(*v153), vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), v155, 1)), *v153, v155.f32[0]));
                        v153 = (v153 + v51);
                        --v152;
                      }

                      while (v152);
                    }

                    a12.n128_u64[0] = vadd_f32(v151, *(v148 + 8 * v149));
                    *(v148 + 8 * v149++) = a12.n128_u64[0];
                    v150 += 8;
                  }

                  while (v149 < v16);
                }

                ++v133;
                v134 = (v134 + 8);
              }

              while (v133 < v55);
            }

            v56 = v59 + v163;
          }

          while (v59 + v163 < a2);
        }

        v50 = v159 + 32;
        v53 += 256;
      }

      while (v159 + 32 < v16);
    }
  }

  else
  {
    v22 = 0;
    v157 = a7 << 9;
    v162 = vnegq_f64(_Q0);
    v23 = a3;
    v156 = result;
    do
    {
      v24 = 0;
      v158 = v22;
      v25 = v156 - v22;
      if (v156 - v22 >= 64)
      {
        v26 = 64;
      }

      else
      {
        v26 = v156 - v22;
      }

      v27 = v26;
      do
      {
        if (a2 - v24 >= 64)
        {
          v28 = 64;
        }

        else
        {
          v28 = a2 - v24;
        }

        v29 = v24;
        if (a2 - v24 < 1)
        {
          v30 = 0;
        }

        else
        {
          v30 = 0;
          v31 = a5 + 16 * v24;
          do
          {
            v32 = v31 + 16 * v30;
            if ((v29 + 1 + v30) < a2)
            {
              v33 = *(v32 + 16);
              v34 = *(v32 + 20);
            }

            v35 = *v32;
            v36 = *(v32 + 4);
            v37 = fabsf(*v32) == INFINITY;
            if (fabsf(v36) == INFINITY)
            {
              v37 = 1;
            }

            if (v37)
            {
              *&a10 = 0.0;
            }

            else
            {
              *&a10 = v35;
            }

            if (v37)
            {
              v38 = 0.0;
            }

            else
            {
              v38 = v36;
            }

            v39 = vmulq_n_f32(v162, v38);
            v40 = 8 * v29 + 8 * v30;
            if (v25 < 4)
            {
              v48 = 0;
            }

            else
            {
              v41 = 0;
              v42 = vdupq_lane_s32(*&a10, 0);
              v43 = (a8 + (v30 << 9));
              v44 = (v23 + a4 * v40);
              do
              {
                v46 = *v44;
                v45 = v44[1];
                v44 += 2;
                v47 = v41 + 7;
                *v43 = vmlaq_f32(vmulq_f32(v39, vrev64q_s32(v46)), v42, v46);
                v43[1] = vmlaq_f32(vmulq_f32(v39, vrev64q_s32(v45)), v42, v45);
                v43 += 2;
                v41 += 4;
              }

              while (v47 < v27);
              v48 = v41;
            }

            if (v48 < v27)
            {
              a10 = COERCE_DOUBLE(vdup_lane_s32(*&a10, 0));
              v49 = v23 + a4 * v40;
              do
              {
                *(a8 + (v30 << 9) + 8 * v48) = vmla_f32(vmul_f32(*v39.f32, vrev64_s32(*(v49 + 8 * v48))), *&a10, *(v49 + 8 * v48));
                ++v48;
              }

              while (v48 < v27);
            }

            ++v30;
          }

          while (v30 < v28);
        }

        result = cblas_cgemm_NEWLAPACK();
        v24 = v30 + v29;
      }

      while ((v30 + v29) < a2);
      a6 += v157;
      v22 = v158 + 64;
      v23 += 512;
    }

    while (v158 + 64 < v16);
  }

  return result;
}

uint64_t sub_236745F3C(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  if (result < 33 || a2 <= 32)
  {
    if (result >= 1)
    {
      v44 = 0;
      v45 = 16 * a4;
      v46 = xmmword_23681FB50;
      v47 = a3;
      do
      {
        v215 = v44;
        v48 = v12 - v44;
        if (v12 - v44 >= 32)
        {
          v49 = 32;
        }

        else
        {
          v49 = v12 - v44;
        }

        if (a2 >= 1)
        {
          v50 = 0;
          v51 = a6 + 16 * v44 * a7;
          result = v49;
          do
          {
            if (a2 - v50 >= 32)
            {
              v52 = 32;
            }

            else
            {
              v52 = a2 - v50;
            }

            v218 = v50;
            v53 = 0;
            if (a2 - v50 >= 1)
            {
              v54 = a5 + 32 * v50;
              v55 = v50 + 1;
              v56 = 16 * v50;
              do
              {
                v57 = v54 + 16 * (2 * v53);
                if (v55 + v53 < a2)
                {
                  v58 = *(v57 + 32);
                  v59 = *(v57 + 40);
                }

                v60 = *v57;
                v61 = *(v57 + 8);
                v62 = fabs(*v57) == INFINITY;
                if (fabs(v61) == INFINITY)
                {
                  v62 = 1;
                }

                if (v62)
                {
                  v63 = 0.0;
                }

                else
                {
                  v63 = v60;
                }

                if (v62)
                {
                  v64 = 0.0;
                }

                else
                {
                  v64 = v61;
                }

                v65 = vmulq_n_f64(v46, v64);
                v66 = 4 * v53;
                v67 = v56 + 16 * v53;
                if (v48 < 4)
                {
                  v76 = 0;
                }

                else
                {
                  v68 = 0;
                  v69 = vdupq_lane_s64(*&v63, 0);
                  v70 = (a8 + 16 * v66);
                  v71 = (v47 + a4 * v67);
                  do
                  {
                    v72 = vmlaq_f64(vmulq_f64(v65, vextq_s8(v71[3], v71[3], 8uLL)), v69, v71[3]);
                    v73 = vmlaq_f64(vmulq_f64(v65, vextq_s8(v71[1], v71[1], 8uLL)), v69, v71[1]);
                    v74 = vmlaq_f64(vmulq_f64(v65, vextq_s8(v71[2], v71[2], 8uLL)), v69, v71[2]);
                    *v70 = vmlaq_f64(vmulq_f64(v65, vextq_s8(*v71, *v71, 8uLL)), v69, *v71);
                    v70[1] = v73;
                    v75 = v68 + 7;
                    v70[2] = v74;
                    v70[3] = v72;
                    v68 += 4;
                    v70 += 132;
                    v71 += 4;
                  }

                  while (v75 < v49);
                  v76 = v68;
                }

                if (v76 < v49)
                {
                  v77 = vdupq_lane_s64(*&v63, 0);
                  v78 = v47 + a4 * v67;
                  do
                  {
                    *(a8 + 16 * ((33 * (v76 & 0x7FFFFFFC) + v66) | v76 & 3)) = vmlaq_f64(vmulq_f64(v65, vextq_s8(*(v78 + 16 * v76), *(v78 + 16 * v76), 8uLL)), v77, *(v78 + 16 * v76));
                    ++v76;
                  }

                  while (v76 < v49);
                }

                ++v53;
              }

              while (v53 < v52);
            }

            if (v48 < 4)
            {
              v188 = 0;
            }

            else
            {
              v79 = 0;
              v80 = a3 + 16 * v218 * a4;
              do
              {
                v81 = v79 | 3;
                v82 = v79;
                if ((v79 | 3uLL) < v12)
                {
                  v83 = v80;
                  v84 = v79;
                  do
                  {
                    if (v53 < 1)
                    {
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v92 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v95 = 0uLL;
                      v85 = 0uLL;
                      v87 = 0uLL;
                      v89 = 0uLL;
                      v91 = 0uLL;
                    }

                    else
                    {
                      v85 = 0uLL;
                      v86 = v53;
                      v87 = 0uLL;
                      v88 = v83;
                      v89 = 0uLL;
                      v90 = (a8 + 528 * v79);
                      v91 = 0uLL;
                      v92 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      do
                      {
                        v222 = v98;
                        v224 = v99;
                        v225 = v96;
                        v226 = v94;
                        v227 = v85;
                        v105 = *(v88 + 32);
                        v104 = *(v88 + 48);
                        v106 = *(v88 + 16);
                        v107 = vextq_s8(*v88, *v88, 8uLL);
                        v108 = vextq_s8(v106, v106, 8uLL);
                        v109 = vextq_s8(v105, v105, 8uLL);
                        v110 = vextq_s8(v104, v104, 8uLL);
                        v111 = v90[2];
                        v112 = v90[3];
                        v114 = *v90;
                        v113 = v90[1];
                        v90 += 4;
                        v115 = vmulq_laneq_f64(xmmword_23681FB50, v114, 1);
                        v116 = vmulq_f64(v110, v115);
                        v117 = vmulq_f64(v109, v115);
                        v118 = vmulq_f64(v108, v115);
                        v119 = vmlaq_n_f64(vmulq_f64(v107, v115), *v88, v114.f64[0]);
                        v120 = vmlaq_n_f64(v118, v106, v114.f64[0]);
                        v121 = vmlaq_n_f64(v117, v105, v114.f64[0]);
                        v122 = vmlaq_n_f64(v116, v104, v114.f64[0]);
                        v123 = vmulq_laneq_f64(xmmword_23681FB50, v113, 1);
                        v124 = v95;
                        v125 = v87;
                        v126 = vmulq_f64(v110, v123);
                        v127 = v89;
                        v128 = vmulq_f64(v109, v123);
                        v129 = v92;
                        v130 = vmulq_f64(v108, v123);
                        v131 = vmlaq_n_f64(vmulq_f64(v107, v123), *v88, v113.f64[0]);
                        v132 = vmlaq_n_f64(v130, v106, v113.f64[0]);
                        v133 = vmlaq_n_f64(v128, v105, v113.f64[0]);
                        v134 = vmlaq_n_f64(v126, v104, v113.f64[0]);
                        v135 = vmulq_laneq_f64(xmmword_23681FB50, v111, 1);
                        v136 = v91;
                        v137 = vmulq_f64(v110, v135);
                        v138 = v93;
                        v139 = vmulq_f64(v109, v135);
                        v140 = vmulq_f64(v108, v135);
                        v141 = vmlaq_n_f64(vmulq_f64(v107, v135), *v88, v111.f64[0]);
                        v142 = vmlaq_n_f64(v140, v106, v111.f64[0]);
                        v143 = vmlaq_n_f64(v139, v105, v111.f64[0]);
                        v144 = vmlaq_n_f64(v137, v104, v111.f64[0]);
                        v145 = vmulq_laneq_f64(xmmword_23681FB50, v112, 1);
                        v146 = vmlaq_n_f64(vmulq_f64(v107, v145), *v88, v112.f64[0]);
                        v147 = vmlaq_n_f64(vmulq_f64(v108, v145), v106, v112.f64[0]);
                        v148 = vmlaq_n_f64(vmulq_f64(v109, v145), v105, v112.f64[0]);
                        v149 = vmlaq_n_f64(vmulq_f64(v110, v145), v104, v112.f64[0]);
                        v103 = vsubq_f64(v103, v122);
                        v102 = vsubq_f64(v102, v121);
                        v101 = vsubq_f64(v101, v120);
                        v100 = vsubq_f64(v100, v119);
                        v99 = vsubq_f64(v224, v134);
                        v150 = v125;
                        v151 = v124;
                        v98 = vsubq_f64(v222, v133);
                        v152 = v127;
                        v97 = vsubq_f64(v97, v132);
                        v96 = vsubq_f64(v225, v131);
                        v95 = vsubq_f64(v151, v144);
                        v94 = vsubq_f64(v226, v143);
                        v93 = vsubq_f64(v138, v142);
                        v92 = vsubq_f64(v129, v141);
                        v91 = vsubq_f64(v136, v149);
                        v89 = vsubq_f64(v152, v148);
                        v87 = vsubq_f64(v150, v147);
                        v85 = vsubq_f64(v227, v146);
                        v88 += v45;
                        --v86;
                      }

                      while (v86);
                    }

                    v153 = (v51 + 16 * v79 * a7 + 16 * v84);
                    v154 = vaddq_f64(v103, v153[3]);
                    v155 = vaddq_f64(v101, v153[1]);
                    v156 = vaddq_f64(v100, *v153);
                    v157 = vaddq_f64(v102, v153[2]);
                    *v153 = v156;
                    v153[1] = v155;
                    v153[2] = v157;
                    v153[3] = v154;
                    v158 = (v51 + 16 * (v79 | 1) * a7 + 16 * v84);
                    v159 = vaddq_f64(v98, v158[2]);
                    v160 = vaddq_f64(v97, v158[1]);
                    v161 = vaddq_f64(v99, v158[3]);
                    *v158 = vaddq_f64(v96, *v158);
                    v158[1] = v160;
                    v158[2] = v159;
                    v158[3] = v161;
                    v162 = (v51 + 16 * (v79 | 2) * a7 + 16 * v84);
                    v163 = vaddq_f64(v94, v162[2]);
                    v164 = vaddq_f64(v93, v162[1]);
                    v165 = vaddq_f64(v95, v162[3]);
                    *v162 = vaddq_f64(v92, *v162);
                    v162[1] = v164;
                    v162[2] = v163;
                    v162[3] = v165;
                    v166 = (v51 + 16 * v81 * a7 + 16 * v84);
                    v167 = vaddq_f64(v89, v166[2]);
                    v168 = vaddq_f64(v87, v166[1]);
                    v169 = vaddq_f64(v91, v166[3]);
                    *v166 = vaddq_f64(v85, *v166);
                    v166[1] = v168;
                    v166[2] = v167;
                    v166[3] = v169;
                    v82 = v84 + 4;
                    v170 = v84 + 7;
                    v83 += 64;
                    v84 += 4;
                  }

                  while (v170 < v12);
                }

                v46 = xmmword_23681FB50;
                if (v82 < v12)
                {
                  v171 = v51 + 16 * v81 * a7;
                  v172 = v82;
                  v173 = a3 + v45 * v218 + 16 * v82;
                  do
                  {
                    if (v53 < 1)
                    {
                      v180 = 0uLL;
                      v179 = 0uLL;
                      v178 = 0uLL;
                      v174 = 0uLL;
                    }

                    else
                    {
                      v174 = 0uLL;
                      v175 = v53;
                      v176 = v173;
                      v177 = (a8 + 528 * v79);
                      v178 = 0uLL;
                      v179 = 0uLL;
                      v180 = 0uLL;
                      do
                      {
                        v181 = vextq_s8(*v176, *v176, 8uLL);
                        v183 = v177[2];
                        v182 = v177[3];
                        v185 = *v177;
                        v184 = v177[1];
                        v177 += 4;
                        v180 = vsubq_f64(v180, vmlaq_n_f64(vmulq_f64(v181, vmulq_laneq_f64(xmmword_23681FB50, v185, 1)), *v176, v185.f64[0]));
                        v179 = vsubq_f64(v179, vmlaq_n_f64(vmulq_f64(v181, vmulq_laneq_f64(xmmword_23681FB50, v184, 1)), *v176, v184.f64[0]));
                        v178 = vsubq_f64(v178, vmlaq_n_f64(vmulq_f64(v181, vmulq_laneq_f64(xmmword_23681FB50, v183, 1)), *v176, v183.f64[0]));
                        v174 = vsubq_f64(v174, vmlaq_n_f64(vmulq_f64(v181, vmulq_laneq_f64(xmmword_23681FB50, v182, 1)), *v176, v182.f64[0]));
                        v176 = (v176 + v45);
                        --v175;
                      }

                      while (v175);
                    }

                    *(v51 + 16 * v79 * a7 + 16 * v172) = vaddq_f64(v180, *(v51 + 16 * v79 * a7 + 16 * v172));
                    *(v51 + 16 * (v79 | 1) * a7 + 16 * v172) = vaddq_f64(v179, *(v51 + 16 * (v79 | 1) * a7 + 16 * v172));
                    *(v51 + 16 * (v79 | 2) * a7 + 16 * v172) = vaddq_f64(v178, *(v51 + 16 * (v79 | 2) * a7 + 16 * v172));
                    *(v171 + 16 * v172) = vaddq_f64(v174, *(v171 + 16 * v172));
                    ++v172;
                    v173 += 16;
                  }

                  while (v172 != v12);
                }

                v186 = v79 + 4;
                v187 = v79 + 7;
                v80 += 64;
                v79 += 4;
              }

              while (v187 < v49);
              v188 = v186;
            }

            if (v188 < v49)
            {
              v189 = (a3 + v45 * v218 + 16 * v188);
              do
              {
                v190 = v188;
                if (v188 + 3 < v12)
                {
                  v191 = v189;
                  v192 = v188;
                  do
                  {
                    v193 = 0uLL;
                    if (v53 < 1)
                    {
                      v197 = 0uLL;
                      v198 = 0uLL;
                      v199 = 0uLL;
                    }

                    else
                    {
                      v194 = v53;
                      v195 = v191;
                      v196 = (a8 + 16 * ((33 * (v188 & 0x7FFFFFFC)) & 0xFFFFFFFC | v188 & 3));
                      v197 = 0uLL;
                      v198 = 0uLL;
                      v199 = 0uLL;
                      do
                      {
                        v200 = *v196;
                        v196 += 4;
                        v201 = vmulq_laneq_f64(v46, v200, 1);
                        v199 = vsubq_f64(v199, vmlaq_n_f64(vmulq_f64(vextq_s8(v195[3], v195[3], 8uLL), v201), v195[3], v200.f64[0]));
                        v198 = vsubq_f64(v198, vmlaq_n_f64(vmulq_f64(vextq_s8(v195[2], v195[2], 8uLL), v201), v195[2], v200.f64[0]));
                        v197 = vsubq_f64(v197, vmlaq_n_f64(vmulq_f64(vextq_s8(v195[1], v195[1], 8uLL), v201), v195[1], v200.f64[0]));
                        v193 = vsubq_f64(v193, vmlaq_n_f64(vmulq_f64(vextq_s8(*v195, *v195, 8uLL), v201), *v195, v200.f64[0]));
                        v195 = (v195 + v45);
                        --v194;
                      }

                      while (v194);
                    }

                    v202 = (v51 + 16 * v188 * a7 + 16 * v192);
                    v203 = vaddq_f64(v199, v202[3]);
                    v204 = vaddq_f64(v197, v202[1]);
                    v205 = vaddq_f64(v193, *v202);
                    v206 = vaddq_f64(v198, v202[2]);
                    *v202 = v205;
                    v202[1] = v204;
                    v202[2] = v206;
                    v202[3] = v203;
                    v190 = v192 + 4;
                    v207 = v192 + 7;
                    v191 += 4;
                    v192 += 4;
                  }

                  while (v207 < v12);
                }

                if (v190 < v12)
                {
                  v208 = v190;
                  v209 = a3 + v45 * v218 + 16 * v190;
                  do
                  {
                    v210 = 0uLL;
                    if (v53 >= 1)
                    {
                      v211 = v53;
                      v212 = v209;
                      v213 = (a8 + 16 * ((33 * (v188 & 0x7FFFFFFC)) & 0xFFFFFFFC | v188 & 3));
                      do
                      {
                        v214 = *v213;
                        v213 += 4;
                        v210 = vsubq_f64(v210, vmlaq_n_f64(vmulq_f64(vextq_s8(*v212, *v212, 8uLL), vmulq_laneq_f64(v46, v214, 1)), *v212, v214.f64[0]));
                        v212 = (v212 + v45);
                        --v211;
                      }

                      while (v211);
                    }

                    *(v51 + 16 * v188 * a7 + 16 * v208) = vaddq_f64(v210, *(v51 + 16 * v188 * a7 + 16 * v208));
                    ++v208;
                    v209 += 16;
                  }

                  while (v208 < v12);
                }

                ++v188;
                ++v189;
              }

              while (v188 < v49);
            }

            v50 = v53 + v218;
          }

          while (v53 + v218 < a2);
        }

        v44 = v215 + 32;
        v47 += 512;
      }

      while (v215 + 32 < v12);
    }
  }

  else
  {
    v13 = 0;
    v221 = a7 << 10;
    v14 = a3;
    v220 = result;
    do
    {
      v15 = 0;
      v223 = v13;
      v16 = v220 - v13;
      if (v220 - v13 >= 64)
      {
        v17 = 64;
      }

      else
      {
        v17 = v220 - v13;
      }

      v18 = v17;
      do
      {
        if (a2 - v15 >= 64)
        {
          v19 = 64;
        }

        else
        {
          v19 = a2 - v15;
        }

        v20 = v15;
        if (a2 - v15 < 1)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0;
          v22 = a5 + 32 * v15;
          do
          {
            v23 = v22 + 32 * v21;
            if ((v20 + 1 + v21) < a2)
            {
              v24 = *(v23 + 32);
              v25 = *(v23 + 40);
            }

            v26 = *v23;
            v27 = *(v23 + 8);
            v28 = fabs(*v23) == INFINITY;
            if (fabs(v27) == INFINITY)
            {
              v28 = 1;
            }

            if (v28)
            {
              v29 = 0.0;
            }

            else
            {
              v29 = v26;
            }

            if (v28)
            {
              v30 = 0.0;
            }

            else
            {
              v30 = v27;
            }

            v31 = vmulq_n_f64(xmmword_23681FB50, v30);
            v32 = 16 * v20 + 16 * v21;
            if (v16 < 4)
            {
              v41 = 0;
            }

            else
            {
              v33 = 0;
              v34 = vdupq_lane_s64(*&v29, 0);
              v35 = (a8 + (v21 << 10));
              v36 = (v14 + a4 * v32);
              do
              {
                v37 = vmlaq_f64(vmulq_f64(v31, vextq_s8(v36[3], v36[3], 8uLL)), v34, v36[3]);
                v38 = vmlaq_f64(vmulq_f64(v31, vextq_s8(v36[1], v36[1], 8uLL)), v34, v36[1]);
                v39 = vmlaq_f64(vmulq_f64(v31, vextq_s8(v36[2], v36[2], 8uLL)), v34, v36[2]);
                *v35 = vmlaq_f64(vmulq_f64(v31, vextq_s8(*v36, *v36, 8uLL)), v34, *v36);
                v35[1] = v38;
                v40 = v33 + 7;
                v35[2] = v39;
                v35[3] = v37;
                v33 += 4;
                v36 += 4;
                v35 += 4;
              }

              while (v40 < v18);
              v41 = v33;
            }

            if (v41 < v18)
            {
              v42 = vdupq_lane_s64(*&v29, 0);
              v43 = v14 + a4 * v32;
              do
              {
                *(a8 + (v21 << 10) + 16 * v41) = vmlaq_f64(vmulq_f64(v31, vextq_s8(*(v43 + 16 * v41), *(v43 + 16 * v41), 8uLL)), v42, *(v43 + 16 * v41));
                ++v41;
              }

              while (v41 < v18);
            }

            ++v21;
          }

          while (v21 < v19);
        }

        result = cblas_zgemm_NEWLAPACK();
        v15 = v21 + v20;
      }

      while ((v21 + v20) < a2);
      a6 += v221;
      v13 = v223 + 64;
      v14 += 1024;
    }

    while (v223 + 64 < v12);
  }

  return result;
}

uint64_t sub_236746DEC(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, __n128 a13)
{
  v17 = result;
  __asm
  {
    FMOV            V0.4S, #-1.0
    FMOV            V8.2S, #1.0
    FMOV            V1.4S, #1.0
  }

  if (result < 33 || a2 <= 32)
  {
    if (result >= 1)
    {
      v57 = 0;
      v58 = 8 * a4;
      v59 = vnegq_f64(_Q0);
      v60 = vnegq_f64(_Q1);
      v61 = a3;
      do
      {
        v171 = v57;
        v62 = v17 - v57;
        if (v17 - v57 >= 32)
        {
          v63 = 32;
        }

        else
        {
          v63 = v17 - v57;
        }

        if (a2 >= 1)
        {
          v64 = 0;
          v65 = a6 + 8 * v171 * a7;
          result = v63;
          do
          {
            if (a2 - v64 >= 32)
            {
              v66 = 32;
            }

            else
            {
              v66 = a2 - v64;
            }

            v175 = v64;
            v67 = 0;
            if (a2 - v64 >= 1)
            {
              v68 = a5 + 16 * v64;
              v69 = v64 + 1;
              v70 = 8 * v64;
              do
              {
                v71 = v68 + 8 * (2 * v67);
                if (v69 + v67 < a2)
                {
                  v72 = *(v71 + 16);
                  v73 = *(v71 + 20);
                }

                v74 = *v71;
                v75 = *(v71 + 4);
                v76 = fabsf(*v71) == INFINITY;
                if (fabsf(v75) == INFINITY)
                {
                  v76 = 1;
                }

                if (v76)
                {
                  a13.n128_f32[0] = 0.0;
                }

                else
                {
                  a13.n128_f32[0] = v74;
                }

                if (v76)
                {
                  v77 = 0.0;
                }

                else
                {
                  v77 = v75;
                }

                v78 = vmulq_n_f32(v59, v77);
                v79 = 4 * v67;
                v80 = v70 + 8 * v67;
                if (v62 < 4)
                {
                  v90 = 0;
                }

                else
                {
                  v81 = 0;
                  v82 = vdupq_lane_s32(a13.n128_u64[0], 0);
                  v83 = (a8 + 8 * v79);
                  v84 = (v61 + a4 * v80);
                  do
                  {
                    v85 = *v84;
                    v86 = v84[1];
                    v84 += 2;
                    v87 = vmulq_f32(v86, v60);
                    v88 = vmulq_f32(v85, v60);
                    v89 = v81 + 7;
                    *v83 = vmlaq_f32(vmulq_f32(v78, vrev64q_s32(v88)), v82, v88);
                    v83[1] = vmlaq_f32(vmulq_f32(v78, vrev64q_s32(v87)), v82, v87);
                    v81 += 4;
                    v83 += 66;
                  }

                  while (v89 < v63);
                  v90 = v81;
                }

                if (v90 < v63)
                {
                  a13.n128_u64[0] = vdup_lane_s32(a13.n128_u64[0], 0);
                  v91 = v61 + a4 * v80;
                  do
                  {
                    v92 = vmul_f32(*(v91 + 8 * v90), COERCE_FLOAT32X2_T(-_D8));
                    *(a8 + 8 * ((33 * (v90 & 0x7FFFFFFC) + v79) | v90 & 3)) = vmla_f32(vmul_f32(*v78.f32, vrev64_s32(v92)), a13.n128_u64[0], v92);
                    ++v90;
                  }

                  while (v90 < v63);
                }

                ++v67;
              }

              while (v67 < v66);
            }

            __asm { FMOV            V3.2S, #-1.0 }

            if (v62 < 4)
            {
              v144 = 0;
            }

            else
            {
              v94 = 0;
              v95 = a3 + 8 * v175 * a4;
              do
              {
                v96 = v94 | 3;
                v97 = v94;
                if ((v94 | 3uLL) < v17)
                {
                  v98 = v95;
                  v99 = v94;
                  do
                  {
                    if (v67 < 1)
                    {
                      v109 = 0uLL;
                      v110 = 0uLL;
                      v107 = 0uLL;
                      v108 = 0uLL;
                      v105 = 0uLL;
                      v106 = 0uLL;
                      v100 = 0uLL;
                      v102 = 0uLL;
                    }

                    else
                    {
                      v100 = 0uLL;
                      v101 = v67;
                      v102 = 0uLL;
                      v103 = v98;
                      v104 = (a8 + 264 * v94);
                      v105 = 0uLL;
                      v106 = 0uLL;
                      v107 = 0uLL;
                      v108 = 0uLL;
                      v109 = 0uLL;
                      v110 = 0uLL;
                      do
                      {
                        v111 = *(v103 + 16);
                        v112 = vrev64q_s32(*v103);
                        v113 = vrev64q_s32(v111);
                        v115 = *v104;
                        v114 = v104[1];
                        v104 += 2;
                        v116 = vmulq_lane_f32(v59, *v115.f32, 1);
                        v110 = vsubq_f32(v110, vmlaq_n_f32(vmulq_f32(v113, v116), v111, v115.f32[0]));
                        v109 = vsubq_f32(v109, vmlaq_n_f32(vmulq_f32(v112, v116), *v103, v115.f32[0]));
                        v117 = vmulq_laneq_f32(v59, v115, 3);
                        v108 = vsubq_f32(v108, vmlaq_laneq_f32(vmulq_f32(v113, v117), v111, v115, 2));
                        v107 = vsubq_f32(v107, vmlaq_laneq_f32(vmulq_f32(v112, v117), *v103, v115, 2));
                        v118 = vmulq_lane_f32(v59, *v114.f32, 1);
                        v106 = vsubq_f32(v106, vmlaq_n_f32(vmulq_f32(v113, v118), v111, v114.f32[0]));
                        v105 = vsubq_f32(v105, vmlaq_n_f32(vmulq_f32(v112, v118), *v103, v114.f32[0]));
                        v119 = vmulq_laneq_f32(v59, v114, 3);
                        v102 = vsubq_f32(v102, vmlaq_laneq_f32(vmulq_f32(v113, v119), v111, v114, 2));
                        v100 = vsubq_f32(v100, vmlaq_laneq_f32(vmulq_f32(v112, v119), *v103, v114, 2));
                        v103 += v58;
                        --v101;
                      }

                      while (v101);
                    }

                    v120 = (v65 + 8 * v94 * a7 + 8 * v99);
                    v121 = vaddq_f32(v110, v120[1]);
                    *v120 = vaddq_f32(v109, *v120);
                    v120[1] = v121;
                    v122 = (v65 + 8 * (v94 | 1) * a7 + 8 * v99);
                    v123 = vaddq_f32(v108, v122[1]);
                    *v122 = vaddq_f32(v107, *v122);
                    v122[1] = v123;
                    v124 = v65 + 8 * (v94 | 2) * a7 + 8 * v99;
                    v125 = *(v124 + 16);
                    *v124 = vaddq_f32(v105, *v124);
                    *(v124 + 16) = vaddq_f32(v106, v125);
                    v126 = v65 + 8 * v96 * a7 + 8 * v99;
                    v127 = *(v126 + 16);
                    a13 = vaddq_f32(v100, *v126);
                    *v126 = a13;
                    *(v126 + 16) = vaddq_f32(v102, v127);
                    v97 = v99 + 4;
                    v128 = v99 + 7;
                    v98 += 32;
                    v99 += 4;
                  }

                  while (v128 < v17);
                }

                if (v97 < v17)
                {
                  v129 = v65 + 8 * v96 * a7;
                  v130 = v97;
                  v131 = a3 + v58 * v175 + 8 * v97;
                  do
                  {
                    if (v67 < 1)
                    {
                      v138 = 0;
                      v137 = 0;
                      v136 = 0;
                      v132 = 0;
                    }

                    else
                    {
                      v132 = 0;
                      v133 = v67;
                      v134 = v131;
                      v135 = (a8 + 264 * v94);
                      v136 = 0;
                      v137 = 0;
                      v138 = 0;
                      do
                      {
                        v139 = vrev64_s32(*v134);
                        v141 = *v135;
                        v140 = v135[1];
                        v135 += 2;
                        v138 = vsub_f32(v138, vmla_n_f32(vmul_f32(v139, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), *v141.f32, 1)), *v134, v141.f32[0]));
                        v137 = vsub_f32(v137, vmla_laneq_f32(vmul_f32(v139, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D3), v141, 3)), *v134, v141, 2));
                        v136 = vsub_f32(v136, vmla_n_f32(vmul_f32(v139, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), *v140.f32, 1)), *v134, v140.f32[0]));
                        v132 = vsub_f32(v132, vmla_laneq_f32(vmul_f32(v139, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D3), v140, 3)), *v134, v140, 2));
                        v134 = (v134 + v58);
                        --v133;
                      }

                      while (v133);
                    }

                    *(v65 + 8 * v94 * a7 + 8 * v130) = vadd_f32(v138, *(v65 + 8 * v94 * a7 + 8 * v130));
                    *(v65 + 8 * (v94 | 1) * a7 + 8 * v130) = vadd_f32(v137, *(v65 + 8 * (v94 | 1) * a7 + 8 * v130));
                    *(v65 + 8 * (v94 | 2) * a7 + 8 * v130) = vadd_f32(v136, *(v65 + 8 * (v94 | 2) * a7 + 8 * v130));
                    a13.n128_u64[0] = vadd_f32(v132, *(v129 + 8 * v130));
                    *(v129 + 8 * v130++) = a13.n128_u64[0];
                    v131 += 8;
                  }

                  while (v130 != v17);
                }

                v142 = v94 + 4;
                v143 = v94 + 7;
                v95 += 32;
                v94 += 4;
              }

              while (v143 < v63);
              v144 = v142;
            }

            if (v144 < v63)
            {
              v145 = (a3 + v58 * v175 + 8 * v144);
              do
              {
                v146 = v144;
                if (v144 + 3 < v17)
                {
                  v147 = v145;
                  v148 = v144;
                  do
                  {
                    v149 = 0uLL;
                    if (v67 < 1)
                    {
                      v153 = 0uLL;
                    }

                    else
                    {
                      v150 = v67;
                      v151 = v147;
                      v152 = (a8 + 8 * ((33 * (v144 & 0x7FFFFFFC)) & 0xFFFFFFFC | v144 & 3));
                      v153 = 0uLL;
                      do
                      {
                        v154 = *v152;
                        v152 += 4;
                        v155 = vmulq_lane_f32(v59, v154, 1);
                        v153 = vsubq_f32(v153, vmlaq_n_f32(vmulq_f32(vrev64q_s32(v151[1]), v155), v151[1], v154.f32[0]));
                        v149 = vsubq_f32(v149, vmlaq_n_f32(vmulq_f32(vrev64q_s32(*v151), v155), *v151, v154.f32[0]));
                        v151 = (v151 + v58);
                        --v150;
                      }

                      while (v150);
                    }

                    v156 = v65 + 8 * v144 * a7 + 8 * v148;
                    v157 = *(v156 + 16);
                    a13 = vaddq_f32(v149, *v156);
                    *v156 = a13;
                    *(v156 + 16) = vaddq_f32(v153, v157);
                    v146 = v148 + 4;
                    v158 = v148 + 7;
                    v147 += 2;
                    v148 += 4;
                  }

                  while (v158 < v17);
                }

                if (v146 < v17)
                {
                  v159 = v65 + 8 * v144 * a7;
                  v160 = v146;
                  v161 = a3 + v58 * v175 + 8 * v146;
                  do
                  {
                    v162 = 0;
                    if (v67 >= 1)
                    {
                      v163 = v67;
                      v164 = v161;
                      v165 = (a8 + 8 * ((33 * (v144 & 0x7FFFFFFC)) & 0xFFFFFFFC | v144 & 3));
                      do
                      {
                        v166 = *v165;
                        v165 += 4;
                        v162 = vsub_f32(v162, vmla_n_f32(vmul_f32(vrev64_s32(*v164), vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), v166, 1)), *v164, v166.f32[0]));
                        v164 = (v164 + v58);
                        --v163;
                      }

                      while (v163);
                    }

                    a13.n128_u64[0] = vadd_f32(v162, *(v159 + 8 * v160));
                    *(v159 + 8 * v160++) = a13.n128_u64[0];
                    v161 += 8;
                  }

                  while (v160 < v17);
                }

                ++v144;
                v145 = (v145 + 8);
              }

              while (v144 < v63);
            }

            v64 = v67 + v175;
          }

          while (v67 + v175 < a2);
        }

        v57 = v171 + 32;
        v61 += 256;
      }

      while (v171 + 32 < v17);
    }
  }

  else
  {
    v25 = 0;
    v168 = a7 << 9;
    v170 = vnegq_f64(_Q0);
    v26 = vnegq_f64(_Q1);
    v27 = a3;
    v167 = result;
    v174 = v26;
    do
    {
      v28 = 0;
      v169 = v25;
      v29 = v167 - v25;
      if (v167 - v25 >= 64)
      {
        v30 = 64;
      }

      else
      {
        v30 = v167 - v25;
      }

      v31 = v30;
      do
      {
        if (a2 - v28 >= 64)
        {
          v32 = 64;
        }

        else
        {
          v32 = a2 - v28;
        }

        v33 = v28;
        if (a2 - v28 < 1)
        {
          v34 = 0;
        }

        else
        {
          v34 = 0;
          v35 = a5 + 16 * v28;
          do
          {
            v36 = v35 + 16 * v34;
            if ((v33 + 1 + v34) < a2)
            {
              v37 = *(v36 + 16);
              v38 = *(v36 + 20);
            }

            v39 = *v36;
            v40 = *(v36 + 4);
            v41 = fabsf(*v36) == INFINITY;
            if (fabsf(v40) == INFINITY)
            {
              v41 = 1;
            }

            if (v41)
            {
              *_Q1.f64 = 0.0;
            }

            else
            {
              *_Q1.f64 = v39;
            }

            if (v41)
            {
              v42 = 0.0;
            }

            else
            {
              v42 = v40;
            }

            v43 = vmulq_n_f32(v170, v42);
            v44 = 8 * v33 + 8 * v34;
            if (v29 < 4)
            {
              v54 = 0;
            }

            else
            {
              v45 = 0;
              v46 = vdupq_lane_s32(*&_Q1.f64[0], 0);
              v47 = (a8 + (v34 << 9));
              v48 = (v27 + a4 * v44);
              do
              {
                v49 = *v48;
                v50 = v48[1];
                v48 += 2;
                v51 = vmulq_f32(v50, v26);
                v52 = vmulq_f32(v49, v26);
                v53 = v45 + 7;
                *v47 = vmlaq_f32(vmulq_f32(v43, vrev64q_s32(v52)), v46, v52);
                v47[1] = vmlaq_f32(vmulq_f32(v43, vrev64q_s32(v51)), v46, v51);
                v47 += 2;
                v45 += 4;
              }

              while (v53 < v31);
              v54 = v45;
            }

            if (v54 < v31)
            {
              *&_Q1.f64[0] = vdup_lane_s32(*&_Q1.f64[0], 0);
              v55 = v27 + a4 * v44;
              do
              {
                v56 = vmul_f32(*(v55 + 8 * v54), COERCE_FLOAT32X2_T(-_D8));
                *(a8 + (v34 << 9) + 8 * v54++) = vmla_f32(vmul_f32(*v43.f32, vrev64_s32(v56)), *&_Q1.f64[0], v56);
              }

              while (v54 < v31);
            }

            ++v34;
          }

          while (v34 < v32);
        }

        result = cblas_cgemm_NEWLAPACK();
        v26 = v174;
        v28 = v34 + v33;
      }

      while ((v34 + v33) < a2);
      a6 += v168;
      v25 = v169 + 64;
      v27 += 512;
    }

    while (v169 + 64 < v17);
  }

  return result;
}

uint64_t sub_236747A40(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  if (result < 33 || a2 <= 32)
  {
    if (result >= 1)
    {
      v46 = 0;
      v47 = 16 * a4;
      v48 = xmmword_23681FB50;
      v49 = xmmword_23681FD30;
      v50 = a3;
      do
      {
        v220 = v46;
        v51 = v12 - v46;
        if (v12 - v46 >= 32)
        {
          v52 = 32;
        }

        else
        {
          v52 = v12 - v46;
        }

        if (a2 >= 1)
        {
          v53 = 0;
          v54 = a6 + 16 * v46 * a7;
          result = v52;
          do
          {
            if (a2 - v53 >= 32)
            {
              v55 = 32;
            }

            else
            {
              v55 = a2 - v53;
            }

            v224 = v53;
            v56 = 0;
            if (a2 - v53 >= 1)
            {
              v57 = a5 + 32 * v53;
              v58 = v53 + 1;
              v59 = 16 * v53;
              do
              {
                v60 = v57 + 16 * (2 * v56);
                if (v58 + v56 < a2)
                {
                  v61 = *(v60 + 32);
                  v62 = *(v60 + 40);
                }

                v63 = *v60;
                v64 = *(v60 + 8);
                v65 = fabs(*v60) == INFINITY;
                if (fabs(v64) == INFINITY)
                {
                  v65 = 1;
                }

                if (v65)
                {
                  v66 = 0.0;
                }

                else
                {
                  v66 = v63;
                }

                if (v65)
                {
                  v67 = 0.0;
                }

                else
                {
                  v67 = v64;
                }

                v68 = vmulq_n_f64(v48, v67);
                v69 = 4 * v56;
                v70 = v59 + 16 * v56;
                if (v51 < 4)
                {
                  v80 = 0;
                }

                else
                {
                  v71 = 0;
                  v72 = vdupq_lane_s64(*&v66, 0);
                  v73 = (a8 + 16 * v69);
                  v74 = (v50 + a4 * v70);
                  do
                  {
                    v75 = vmulq_f64(v74[2], v49);
                    v76 = vmulq_f64(v74[3], v49);
                    v77 = vmulq_f64(*v74, v49);
                    v78 = vmulq_f64(v74[1], v49);
                    v73[2] = vmlaq_f64(vmulq_f64(v68, vextq_s8(v75, v75, 8uLL)), v72, v75);
                    v73[3] = vmlaq_f64(vmulq_f64(v68, vextq_s8(v76, v76, 8uLL)), v72, v76);
                    v79 = v71 + 7;
                    *v73 = vmlaq_f64(vmulq_f64(v68, vextq_s8(v77, v77, 8uLL)), v72, v77);
                    v73[1] = vmlaq_f64(vmulq_f64(v68, vextq_s8(v78, v78, 8uLL)), v72, v78);
                    v71 += 4;
                    v73 += 132;
                    v74 += 4;
                  }

                  while (v79 < v52);
                  v80 = v71;
                }

                if (v80 < v52)
                {
                  v81 = vdupq_lane_s64(*&v66, 0);
                  v82 = v50 + a4 * v70;
                  do
                  {
                    v83 = vmulq_f64(*(v82 + 16 * v80), v49);
                    *(a8 + 16 * ((33 * (v80 & 0x7FFFFFFC) + v69) | v80 & 3)) = vmlaq_f64(vmulq_f64(v68, vextq_s8(v83, v83, 8uLL)), v81, v83);
                    ++v80;
                  }

                  while (v80 < v52);
                }

                ++v56;
              }

              while (v56 < v55);
            }

            if (v51 < 4)
            {
              v194 = 0;
            }

            else
            {
              v84 = 0;
              v85 = a3 + 16 * v224 * a4;
              do
              {
                v86 = v84 | 3;
                v87 = v84;
                if ((v84 | 3uLL) < v12)
                {
                  v88 = v85;
                  v89 = v84;
                  do
                  {
                    if (v56 < 1)
                    {
                      v105 = 0uLL;
                      v106 = 0uLL;
                      v107 = 0uLL;
                      v108 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v104 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v100 = 0uLL;
                      v90 = 0uLL;
                      v92 = 0uLL;
                      v94 = 0uLL;
                      v96 = 0uLL;
                    }

                    else
                    {
                      v90 = 0uLL;
                      v91 = v56;
                      v92 = 0uLL;
                      v93 = v88;
                      v94 = 0uLL;
                      v95 = (a8 + 528 * v84);
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v104 = 0uLL;
                      v105 = 0uLL;
                      v106 = 0uLL;
                      v107 = 0uLL;
                      v108 = 0uLL;
                      do
                      {
                        v228 = v104;
                        v229 = v102;
                        v230 = v101;
                        v231 = v92;
                        v232 = v90;
                        v110 = *(v93 + 32);
                        v109 = *(v93 + 48);
                        v111 = *(v93 + 16);
                        v112 = vextq_s8(*v93, *v93, 8uLL);
                        v113 = vextq_s8(v111, v111, 8uLL);
                        v114 = vextq_s8(v110, v110, 8uLL);
                        v115 = vextq_s8(v109, v109, 8uLL);
                        v116 = v95[2];
                        v117 = v95[3];
                        v119 = *v95;
                        v118 = v95[1];
                        v95 += 4;
                        v120 = vmulq_laneq_f64(xmmword_23681FB50, v119, 1);
                        v121 = vmulq_f64(v115, v120);
                        v122 = vmulq_f64(v114, v120);
                        v123 = vmulq_f64(v113, v120);
                        v124 = vmlaq_n_f64(vmulq_f64(v112, v120), *v93, v119.f64[0]);
                        v125 = vmlaq_n_f64(v123, v111, v119.f64[0]);
                        v126 = vmlaq_n_f64(v122, v110, v119.f64[0]);
                        v127 = vmlaq_n_f64(v121, v109, v119.f64[0]);
                        v128 = vmulq_laneq_f64(xmmword_23681FB50, v118, 1);
                        v129 = v100;
                        v130 = v94;
                        v131 = vmulq_f64(v115, v128);
                        v132 = v97;
                        v133 = vmulq_f64(v114, v128);
                        v134 = v98;
                        v135 = vmulq_f64(v113, v128);
                        v136 = vmlaq_n_f64(vmulq_f64(v112, v128), *v93, v118.f64[0]);
                        v137 = vmlaq_n_f64(v135, v111, v118.f64[0]);
                        v138 = vmlaq_n_f64(v133, v110, v118.f64[0]);
                        v139 = vmlaq_n_f64(v131, v109, v118.f64[0]);
                        v140 = vmulq_laneq_f64(xmmword_23681FB50, v116, 1);
                        v141 = v96;
                        v142 = vmulq_f64(v115, v140);
                        v143 = v99;
                        v144 = vmulq_f64(v114, v140);
                        v145 = vmulq_f64(v113, v140);
                        v146 = vmlaq_n_f64(vmulq_f64(v112, v140), *v93, v116.f64[0]);
                        v147 = vmlaq_n_f64(v145, v111, v116.f64[0]);
                        v148 = vmlaq_n_f64(v144, v110, v116.f64[0]);
                        v149 = vmlaq_n_f64(v142, v109, v116.f64[0]);
                        v150 = vmulq_laneq_f64(xmmword_23681FB50, v117, 1);
                        v151 = vmlaq_n_f64(vmulq_f64(v112, v150), *v93, v117.f64[0]);
                        v152 = vmlaq_n_f64(vmulq_f64(v113, v150), v111, v117.f64[0]);
                        v153 = vmlaq_n_f64(vmulq_f64(v114, v150), v110, v117.f64[0]);
                        v154 = vmlaq_n_f64(vmulq_f64(v115, v150), v109, v117.f64[0]);
                        v108 = vsubq_f64(v108, v127);
                        v107 = vsubq_f64(v107, v126);
                        v106 = vsubq_f64(v106, v125);
                        v105 = vsubq_f64(v105, v124);
                        v104 = vsubq_f64(v228, v139);
                        v155 = v130;
                        v156 = v129;
                        v103 = vsubq_f64(v103, v138);
                        v157 = v132;
                        v102 = vsubq_f64(v229, v137);
                        v101 = vsubq_f64(v230, v136);
                        v100 = vsubq_f64(v156, v149);
                        v99 = vsubq_f64(v143, v148);
                        v98 = vsubq_f64(v134, v147);
                        v97 = vsubq_f64(v157, v146);
                        v96 = vsubq_f64(v141, v154);
                        v94 = vsubq_f64(v155, v153);
                        v92 = vsubq_f64(v231, v152);
                        v90 = vsubq_f64(v232, v151);
                        v93 += v47;
                        --v91;
                      }

                      while (v91);
                    }

                    v158 = (v54 + 16 * v84 * a7 + 16 * v89);
                    v159 = vaddq_f64(v108, v158[3]);
                    v160 = vaddq_f64(v106, v158[1]);
                    v161 = vaddq_f64(v105, *v158);
                    v162 = vaddq_f64(v107, v158[2]);
                    *v158 = v161;
                    v158[1] = v160;
                    v158[2] = v162;
                    v158[3] = v159;
                    v163 = (v54 + 16 * (v84 | 1) * a7 + 16 * v89);
                    v164 = vaddq_f64(v103, v163[2]);
                    v165 = vaddq_f64(v102, v163[1]);
                    v166 = vaddq_f64(v101, *v163);
                    v167 = vaddq_f64(v104, v163[3]);
                    *v163 = v166;
                    v163[1] = v165;
                    v163[2] = v164;
                    v163[3] = v167;
                    v168 = (v54 + 16 * (v84 | 2) * a7 + 16 * v89);
                    v169 = vaddq_f64(v99, v168[2]);
                    v170 = vaddq_f64(v98, v168[1]);
                    v171 = vaddq_f64(v100, v168[3]);
                    *v168 = vaddq_f64(v97, *v168);
                    v168[1] = v170;
                    v168[2] = v169;
                    v168[3] = v171;
                    v172 = v54 + 16 * v86 * a7 + 16 * v89;
                    v174 = *(v172 + 32);
                    v173 = *(v172 + 48);
                    v175 = vaddq_f64(v92, *(v172 + 16));
                    *v172 = vaddq_f64(v90, *v172);
                    *(v172 + 16) = v175;
                    *(v172 + 32) = vaddq_f64(v94, v174);
                    *(v172 + 48) = vaddq_f64(v96, v173);
                    v87 = v89 + 4;
                    v176 = v89 + 7;
                    v88 += 64;
                    v89 += 4;
                  }

                  while (v176 < v12);
                }

                v48 = xmmword_23681FB50;
                if (v87 < v12)
                {
                  v177 = v54 + 16 * v86 * a7;
                  v178 = v87;
                  v179 = a3 + v47 * v224 + 16 * v87;
                  do
                  {
                    if (v56 < 1)
                    {
                      v186 = 0uLL;
                      v185 = 0uLL;
                      v184 = 0uLL;
                      v180 = 0uLL;
                    }

                    else
                    {
                      v180 = 0uLL;
                      v181 = v56;
                      v182 = v179;
                      v183 = (a8 + 528 * v84);
                      v184 = 0uLL;
                      v185 = 0uLL;
                      v186 = 0uLL;
                      do
                      {
                        v187 = vextq_s8(*v182, *v182, 8uLL);
                        v189 = v183[2];
                        v188 = v183[3];
                        v191 = *v183;
                        v190 = v183[1];
                        v183 += 4;
                        v186 = vsubq_f64(v186, vmlaq_n_f64(vmulq_f64(v187, vmulq_laneq_f64(xmmword_23681FB50, v191, 1)), *v182, v191.f64[0]));
                        v185 = vsubq_f64(v185, vmlaq_n_f64(vmulq_f64(v187, vmulq_laneq_f64(xmmword_23681FB50, v190, 1)), *v182, v190.f64[0]));
                        v184 = vsubq_f64(v184, vmlaq_n_f64(vmulq_f64(v187, vmulq_laneq_f64(xmmword_23681FB50, v189, 1)), *v182, v189.f64[0]));
                        v180 = vsubq_f64(v180, vmlaq_n_f64(vmulq_f64(v187, vmulq_laneq_f64(xmmword_23681FB50, v188, 1)), *v182, v188.f64[0]));
                        v182 = (v182 + v47);
                        --v181;
                      }

                      while (v181);
                    }

                    *(v54 + 16 * v84 * a7 + 16 * v178) = vaddq_f64(v186, *(v54 + 16 * v84 * a7 + 16 * v178));
                    *(v54 + 16 * (v84 | 1) * a7 + 16 * v178) = vaddq_f64(v185, *(v54 + 16 * (v84 | 1) * a7 + 16 * v178));
                    *(v54 + 16 * (v84 | 2) * a7 + 16 * v178) = vaddq_f64(v184, *(v54 + 16 * (v84 | 2) * a7 + 16 * v178));
                    *(v177 + 16 * v178) = vaddq_f64(v180, *(v177 + 16 * v178));
                    ++v178;
                    v179 += 16;
                  }

                  while (v178 != v12);
                }

                v192 = v84 + 4;
                v193 = v84 + 7;
                v85 += 64;
                v84 += 4;
              }

              while (v193 < v52);
              v194 = v192;
            }

            if (v194 < v52)
            {
              v195 = (a3 + v47 * v224 + 16 * v194);
              do
              {
                v196 = v194;
                if (v194 + 3 < v12)
                {
                  v197 = v195;
                  v198 = v194;
                  do
                  {
                    v199 = 0uLL;
                    if (v56 < 1)
                    {
                      v203 = 0uLL;
                      v204 = 0uLL;
                      v205 = 0uLL;
                    }

                    else
                    {
                      v200 = v56;
                      v201 = v197;
                      v202 = (a8 + 16 * ((33 * (v194 & 0x7FFFFFFC)) & 0xFFFFFFFC | v194 & 3));
                      v203 = 0uLL;
                      v204 = 0uLL;
                      v205 = 0uLL;
                      do
                      {
                        v206 = *v202;
                        v202 += 4;
                        v207 = vmulq_laneq_f64(v48, v206, 1);
                        v205 = vsubq_f64(v205, vmlaq_n_f64(vmulq_f64(vextq_s8(v201[3], v201[3], 8uLL), v207), v201[3], v206.f64[0]));
                        v204 = vsubq_f64(v204, vmlaq_n_f64(vmulq_f64(vextq_s8(v201[2], v201[2], 8uLL), v207), v201[2], v206.f64[0]));
                        v203 = vsubq_f64(v203, vmlaq_n_f64(vmulq_f64(vextq_s8(v201[1], v201[1], 8uLL), v207), v201[1], v206.f64[0]));
                        v199 = vsubq_f64(v199, vmlaq_n_f64(vmulq_f64(vextq_s8(*v201, *v201, 8uLL), v207), *v201, v206.f64[0]));
                        v201 = (v201 + v47);
                        --v200;
                      }

                      while (v200);
                    }

                    v208 = (v54 + 16 * v194 * a7 + 16 * v198);
                    v209 = vaddq_f64(v205, v208[3]);
                    v210 = vaddq_f64(v203, v208[1]);
                    v211 = vaddq_f64(v204, v208[2]);
                    *v208 = vaddq_f64(v199, *v208);
                    v208[1] = v210;
                    v208[2] = v211;
                    v208[3] = v209;
                    v196 = v198 + 4;
                    v212 = v198 + 7;
                    v197 += 4;
                    v198 += 4;
                  }

                  while (v212 < v12);
                }

                if (v196 < v12)
                {
                  v213 = v196;
                  v214 = a3 + v47 * v224 + 16 * v196;
                  do
                  {
                    v215 = 0uLL;
                    if (v56 >= 1)
                    {
                      v216 = v56;
                      v217 = v214;
                      v218 = (a8 + 16 * ((33 * (v194 & 0x7FFFFFFC)) & 0xFFFFFFFC | v194 & 3));
                      do
                      {
                        v219 = *v218;
                        v218 += 4;
                        v215 = vsubq_f64(v215, vmlaq_n_f64(vmulq_f64(vextq_s8(*v217, *v217, 8uLL), vmulq_laneq_f64(v48, v219, 1)), *v217, v219.f64[0]));
                        v217 = (v217 + v47);
                        --v216;
                      }

                      while (v216);
                    }

                    *(v54 + 16 * v194 * a7 + 16 * v213) = vaddq_f64(v215, *(v54 + 16 * v194 * a7 + 16 * v213));
                    ++v213;
                    v214 += 16;
                  }

                  while (v213 < v12);
                }

                ++v194;
                ++v195;
              }

              while (v194 < v52);
            }

            v53 = v56 + v224;
            v49 = xmmword_23681FD30;
          }

          while (v56 + v224 < a2);
        }

        v46 = v220 + 32;
        v50 += 512;
      }

      while (v220 + 32 < v12);
    }
  }

  else
  {
    v13 = 0;
    v226 = a7 << 10;
    v14 = a3;
    v223 = result;
    do
    {
      v15 = 0;
      v227 = v13;
      v16 = v223 - v13;
      if (v223 - v13 >= 64)
      {
        v17 = 64;
      }

      else
      {
        v17 = v223 - v13;
      }

      v18 = v17;
      do
      {
        if (a2 - v15 >= 64)
        {
          v19 = 64;
        }

        else
        {
          v19 = a2 - v15;
        }

        v20 = v15;
        if (a2 - v15 < 1)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0;
          v22 = a5 + 32 * v15;
          do
          {
            v23 = v22 + 32 * v21;
            if ((v20 + 1 + v21) < a2)
            {
              v24 = *(v23 + 32);
              v25 = *(v23 + 40);
            }

            v26 = *v23;
            v27 = *(v23 + 8);
            v28 = fabs(*v23) == INFINITY;
            if (fabs(v27) == INFINITY)
            {
              v28 = 1;
            }

            if (v28)
            {
              v29 = 0.0;
            }

            else
            {
              v29 = v26;
            }

            if (v28)
            {
              v30 = 0.0;
            }

            else
            {
              v30 = v27;
            }

            v31 = vmulq_n_f64(xmmword_23681FB50, v30);
            v32 = 16 * v20 + 16 * v21;
            if (v16 < 4)
            {
              v42 = 0;
            }

            else
            {
              v33 = 0;
              v34 = vdupq_lane_s64(*&v29, 0);
              v35 = (a8 + (v21 << 10));
              v36 = (v14 + a4 * v32);
              do
              {
                v37 = vmulq_f64(v36[2], xmmword_23681FD30);
                v38 = vmulq_f64(v36[3], xmmword_23681FD30);
                v39 = vmulq_f64(*v36, xmmword_23681FD30);
                v40 = vmulq_f64(v36[1], xmmword_23681FD30);
                v35[2] = vmlaq_f64(vmulq_f64(v31, vextq_s8(v37, v37, 8uLL)), v34, v37);
                v35[3] = vmlaq_f64(vmulq_f64(v31, vextq_s8(v38, v38, 8uLL)), v34, v38);
                v41 = v33 + 7;
                *v35 = vmlaq_f64(vmulq_f64(v31, vextq_s8(v39, v39, 8uLL)), v34, v39);
                v35[1] = vmlaq_f64(vmulq_f64(v31, vextq_s8(v40, v40, 8uLL)), v34, v40);
                v35 += 4;
                v33 += 4;
                v36 += 4;
              }

              while (v41 < v18);
              v42 = v33;
            }

            if (v42 < v18)
            {
              v43 = vdupq_lane_s64(*&v29, 0);
              v44 = v14 + a4 * v32;
              do
              {
                v45 = vmulq_f64(*(v44 + 16 * v42), xmmword_23681FD30);
                *(a8 + (v21 << 10) + 16 * v42++) = vmlaq_f64(vmulq_f64(v31, vextq_s8(v45, v45, 8uLL)), v43, v45);
              }

              while (v42 < v18);
            }

            ++v21;
          }

          while (v21 < v19);
        }

        result = cblas_zgemm_NEWLAPACK();
        v15 = v21 + v20;
      }

      while ((v21 + v20) < a2);
      a6 += v226;
      v13 = v227 + 64;
      v14 += 1024;
    }

    while (v227 + 64 < v12);
  }

  return result;
}

uint64_t sub_2367489AC(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, float32x4_t a11, uint64_t a12, uint64_t a13)
{
  v95 = result;
  v93 = a2;
  if (a2 < 65 || a3 <= 64)
  {
    if (a2 >= 1)
    {
      v29 = 0;
      v30 = 4 * a6;
      do
      {
        v92 = v29;
        v31 = a2 - v29;
        if (a2 - v29 >= 32)
        {
          v32 = 32;
        }

        else
        {
          v32 = a2 - v29;
        }

        v33 = a4;
        if (a3 >= 1)
        {
          v34 = 0;
          result = v32;
          do
          {
            if (a3 - v34 >= 32)
            {
              v35 = 32;
            }

            else
            {
              v35 = a3 - v34;
            }

            v36 = v34;
            v97 = v34;
            v37 = 0;
            if (a3 - v34 < 1)
            {
              v41 = a6;
            }

            else
            {
              v38 = a7 + 8 * v34;
              v39 = v36 + 1;
              v40 = 4 * v36;
              v41 = a6;
              do
              {
                v42 = (2 * v37);
                if (v39 + v37 < a3)
                {
                  v43 = *(v38 + 4 * v42 + 8);
                }

                v44 = *(v38 + 4 * v42);
                if (fabsf(v44) == INFINITY)
                {
                  v44 = 0.0;
                }

                if (v31 >= 1)
                {
                  v45 = 0;
                  do
                  {
                    *(a13 + 4 * ((33 * (v45 & 0x7FFFFFFC) + 4 * v37) | v45 & 3)) = v44 * *(a5 + a6 * (v40 + 4 * v37) + 4 * v45);
                    ++v45;
                  }

                  while (v45 < v32);
                }

                ++v37;
              }

              while (v37 < v35);
            }

            v46 = (v33 + 4 * v97 * v41);
            if (v31 < 4)
            {
              v83 = 0;
            }

            else
            {
              v47 = 0;
              v48 = v33 + v30 * v97;
              do
              {
                v49 = v47 | 3;
                v50 = v47 * a12;
                if (v95 < 8)
                {
                  v75 = 0;
                }

                else
                {
                  v51 = 0;
                  v52 = v46;
                  do
                  {
                    if (v37 < 1)
                    {
                      v62 = 0uLL;
                      v63 = 0uLL;
                      v60 = 0uLL;
                      v61 = 0uLL;
                      v58 = 0uLL;
                      v59 = 0uLL;
                      v53 = 0uLL;
                      v55 = 0uLL;
                    }

                    else
                    {
                      v53 = 0uLL;
                      v54 = v37;
                      v55 = 0uLL;
                      v56 = v52;
                      v57 = (a13 + 132 * v47);
                      v58 = 0uLL;
                      v59 = 0uLL;
                      v60 = 0uLL;
                      v61 = 0uLL;
                      v62 = 0uLL;
                      v63 = 0uLL;
                      do
                      {
                        v64 = v56[1];
                        v65 = *v57++;
                        v63 = vmlsq_lane_f32(v63, v64, *v65.f32, 0);
                        v62 = vmlsq_lane_f32(v62, *v56, *v65.f32, 0);
                        v61 = vmlsq_lane_f32(v61, v64, *v65.f32, 1);
                        v60 = vmlsq_lane_f32(v60, *v56, *v65.f32, 1);
                        v59 = vmlsq_laneq_f32(v59, v64, v65, 2);
                        v58 = vmlsq_laneq_f32(v58, *v56, v65, 2);
                        v55 = vmlsq_laneq_f32(v55, v64, v65, 3);
                        v53 = vmlsq_laneq_f32(v53, *v56, v65, 3);
                        v56 = (v56 + v30);
                        --v54;
                      }

                      while (v54);
                    }

                    v66 = (a8 + 4 * (v50 + v51));
                    v67 = vaddq_f32(v63, v66[1]);
                    *v66 = vaddq_f32(v62, *v66);
                    v66[1] = v67;
                    v68 = (a8 + 4 * ((v47 | 1) * a12 + v51));
                    v69 = vaddq_f32(v61, v68[1]);
                    *v68 = vaddq_f32(v60, *v68);
                    v68[1] = v69;
                    v70 = (a8 + 4 * ((v47 | 2) * a12 + v51));
                    v71 = vaddq_f32(v59, v70[1]);
                    *v70 = vaddq_f32(v58, *v70);
                    v70[1] = v71;
                    v72 = (a8 + 4 * (v49 * a12 + v51));
                    a11 = vaddq_f32(v55, v72[1]);
                    *v72 = vaddq_f32(v53, *v72);
                    v72[1] = a11;
                    v73 = v51 + 8;
                    v74 = v51 + 15;
                    v52 += 2;
                    v51 += 8;
                  }

                  while (v74 < v95);
                  v75 = v73;
                }

                if (v75 < v95)
                {
                  v76 = (v48 + 4 * v75);
                  v77 = v49 * a12;
                  do
                  {
                    v78 = 0uLL;
                    if (v37 >= 1)
                    {
                      v79 = v37;
                      v80 = v76;
                      v81 = (a13 + 132 * v47);
                      do
                      {
                        a11.i32[0] = *v80;
                        v82 = *v81++;
                        v78 = vmlsq_lane_f32(v78, v82, *a11.f32, 0);
                        v80 = (v80 + v30);
                        --v79;
                      }

                      while (v79);
                    }

                    *(a8 + 4 * (v50 + v75)) = v78.f32[0] + *(a8 + 4 * (v50 + v75));
                    *(a8 + 4 * ((v47 | 1) * a12 + v75)) = v78.f32[1] + *(a8 + 4 * ((v47 | 1) * a12 + v75));
                    *(a8 + 4 * ((v47 | 2) * a12 + v75)) = v78.f32[2] + *(a8 + 4 * ((v47 | 2) * a12 + v75));
                    *(a8 + 4 * (v77 + v75)) = v78.f32[3] + *(a8 + 4 * (v77 + v75));
                    ++v75;
                    ++v76;
                  }

                  while (v75 != v95);
                }

                LODWORD(v83) = v47 + 4;
                v84 = v47 + 7;
                v47 += 4;
              }

              while (v84 < v32);
              v83 = v83;
              v33 = a4;
            }

            if (v83 < v32)
            {
              do
              {
                if (v95 >= 1)
                {
                  v85 = 0;
                  v86 = v46;
                  do
                  {
                    v87 = 0.0;
                    if (v37 >= 1)
                    {
                      v88 = v37;
                      v89 = v86;
                      v90 = (a13 + ((4 * (v83 & 3)) | (528 * (v83 >> 2))));
                      do
                      {
                        v91 = *v90;
                        v90 += 4;
                        v87 = v87 - (*v89 * v91);
                        v89 = (v89 + v30);
                        --v88;
                      }

                      while (v88);
                    }

                    *(a8 + 4 * (v83 * a12 + v85)) = v87 + *(a8 + 4 * (v83 * a12 + v85));
                    ++v85;
                    ++v86;
                  }

                  while (v85 != v95);
                }

                ++v83;
              }

              while (v83 < v32);
            }

            v34 = v37 + v97;
          }

          while (v37 + v97 < a3);
        }

        a5 += 128;
        a8 += a12 << 7;
        v29 = v92 + 32;
        a2 = v93;
      }

      while (v92 + 32 < v93);
    }
  }

  else
  {
    v16 = 0;
    do
    {
      v17 = 0;
      v96 = v16;
      v18 = a2 - v16;
      if (a2 - v16 >= 64)
      {
        v19 = 64;
      }

      else
      {
        v19 = a2 - v16;
      }

      v20 = v19;
      do
      {
        if (a3 - v17 >= 64)
        {
          v21 = 64;
        }

        else
        {
          v21 = a3 - v17;
        }

        v22 = v17;
        if (a3 - v17 < 1)
        {
          v23 = 0;
        }

        else
        {
          v23 = 0;
          v24 = a7 + 8 * v17;
          do
          {
            v25 = 2 * v23;
            if ((v22 + 1 + v23) < a3)
            {
              v26 = *(v24 + 4 * v25 + 8);
            }

            v27 = *(v24 + 4 * v25);
            if (fabsf(v27) == INFINITY)
            {
              v27 = 0.0;
            }

            if (v18 >= 1)
            {
              v28 = 0;
              do
              {
                *(a13 + (v23 << 8) + 4 * v28) = v27 * *(a5 + a6 * (4 * v22 + 4 * v23) + 4 * v28);
                ++v28;
              }

              while (v28 < v20);
            }

            ++v23;
          }

          while (v23 < v21);
        }

        result = cblas_sgemm_NEWLAPACK();
        v17 = v23 + v22;
      }

      while ((v23 + v22) < a3);
      a5 += 256;
      a8 += a12 << 8;
      v16 = v96 + 64;
      a2 = v93;
    }

    while (v96 + 64 < v93);
  }

  return result;
}

uint64_t sub_2367490DC(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v128 = result;
  v122 = a2;
  if (a2 < 65 || a3 <= 64)
  {
    if (a2 >= 1)
    {
      v26 = 0;
      v27 = 8 * a6;
      do
      {
        v121 = v26;
        v28 = a2 - v26;
        if (a2 - v26 >= 32)
        {
          v29 = 32;
        }

        else
        {
          v29 = a2 - v26;
        }

        v30 = a4;
        v31 = v128;
        if (a3 >= 1)
        {
          v32 = 0;
          result = v29;
          do
          {
            if (a3 - v32 >= 32)
            {
              v33 = 32;
            }

            else
            {
              v33 = a3 - v32;
            }

            v34 = v32;
            if (a3 - v32 < 1)
            {
              v38 = v32;
              v35 = 0;
              v40 = a6;
            }

            else
            {
              v35 = 0;
              v36 = a7 + 16 * v32;
              v37 = v34 + 1;
              v38 = v34;
              v39 = 8 * v34;
              v40 = a6;
              do
              {
                v41 = (2 * v35);
                if (v37 + v35 < a3)
                {
                  v42 = *(v36 + 8 * v41 + 16);
                }

                v43 = *(v36 + 8 * v41);
                if (fabs(v43) == INFINITY)
                {
                  v43 = 0.0;
                }

                if (v28 >= 1)
                {
                  v44 = 0;
                  do
                  {
                    *(a10 + 8 * ((33 * (v44 & 0x7FFFFFFC) + 4 * v35) | v44 & 3)) = v43 * *(a5 + a6 * (v39 + 8 * v35) + 8 * v44);
                    ++v44;
                  }

                  while (v44 < v29);
                }

                ++v35;
              }

              while (v35 < v33);
            }

            v45 = v38;
            v46 = (v30 + 8 * v38 * v40);
            if (v28 < 4)
            {
              v112 = 0;
            }

            else
            {
              v47 = 0;
              v124 = v38;
              v48 = v30 + v27 * v38;
              do
              {
                v49 = v47 | 3;
                v50 = v47 * a9;
                if (v31 < 8)
                {
                  v95 = 0;
                }

                else
                {
                  v51 = 0;
                  v52 = v46;
                  do
                  {
                    if (v35 < 1)
                    {
                      v68 = 0uLL;
                      v69 = 0uLL;
                      v70 = 0uLL;
                      v71 = 0uLL;
                      v64 = 0uLL;
                      v65 = 0uLL;
                      v66 = 0uLL;
                      v67 = 0uLL;
                      v60 = 0uLL;
                      v61 = 0uLL;
                      v62 = 0uLL;
                      v63 = 0uLL;
                      v53 = 0uLL;
                      v55 = 0uLL;
                      v57 = 0uLL;
                      v59 = 0uLL;
                    }

                    else
                    {
                      v53 = 0uLL;
                      v54 = v35;
                      v55 = 0uLL;
                      v56 = v52;
                      v57 = 0uLL;
                      v58 = (a10 + 264 * v47);
                      v59 = 0uLL;
                      v60 = 0uLL;
                      v61 = 0uLL;
                      v62 = 0uLL;
                      v63 = 0uLL;
                      v64 = 0uLL;
                      v65 = 0uLL;
                      v66 = 0uLL;
                      v67 = 0uLL;
                      v68 = 0uLL;
                      v69 = 0uLL;
                      v70 = 0uLL;
                      v71 = 0uLL;
                      do
                      {
                        v73 = v56[2];
                        v72 = v56[3];
                        v74 = v56[1];
                        v76 = *v58;
                        v75 = v58[1];
                        v58 += 2;
                        v69 = vmlsq_lane_f64(v69, v74, v76.f64[0], 0);
                        v68 = vmlsq_lane_f64(v68, *v56, v76.f64[0], 0);
                        v70 = vmlsq_lane_f64(v70, v73, v76.f64[0], 0);
                        v71 = vmlsq_lane_f64(v71, v72, v76.f64[0], 0);
                        v65 = vmlsq_laneq_f64(v65, v74, v76, 1);
                        v64 = vmlsq_laneq_f64(v64, *v56, v76, 1);
                        v66 = vmlsq_laneq_f64(v66, v73, v76, 1);
                        v67 = vmlsq_laneq_f64(v67, v72, v76, 1);
                        v61 = vmlsq_lane_f64(v61, v74, v75.f64[0], 0);
                        v60 = vmlsq_lane_f64(v60, *v56, v75.f64[0], 0);
                        v62 = vmlsq_lane_f64(v62, v73, v75.f64[0], 0);
                        v63 = vmlsq_lane_f64(v63, v72, v75.f64[0], 0);
                        v55 = vmlsq_laneq_f64(v55, v74, v75, 1);
                        v53 = vmlsq_laneq_f64(v53, *v56, v75, 1);
                        v57 = vmlsq_laneq_f64(v57, v73, v75, 1);
                        v56 = (v56 + v27);
                        v59 = vmlsq_laneq_f64(v59, v72, v75, 1);
                        --v54;
                      }

                      while (v54);
                    }

                    v77 = (a8 + 8 * (v50 + v51));
                    v78 = vaddq_f64(v69, v77[1]);
                    v79 = vaddq_f64(v68, *v77);
                    v80 = vaddq_f64(v71, v77[3]);
                    v77[2] = vaddq_f64(v70, v77[2]);
                    v77[3] = v80;
                    *v77 = v79;
                    v77[1] = v78;
                    v81 = (a8 + 8 * ((v47 | 1) * a9 + v51));
                    v82 = vaddq_f64(v66, v81[2]);
                    v83 = vaddq_f64(v65, v81[1]);
                    v84 = vaddq_f64(v67, v81[3]);
                    *v81 = vaddq_f64(v64, *v81);
                    v81[1] = v83;
                    v81[2] = v82;
                    v81[3] = v84;
                    v85 = (a8 + 8 * ((v47 | 2) * a9 + v51));
                    v86 = vaddq_f64(v62, v85[2]);
                    v87 = vaddq_f64(v61, v85[1]);
                    v88 = vaddq_f64(v63, v85[3]);
                    *v85 = vaddq_f64(v60, *v85);
                    v85[1] = v87;
                    v85[2] = v86;
                    v85[3] = v88;
                    v89 = (a8 + 8 * (v49 * a9 + v51));
                    v90 = vaddq_f64(v57, v89[2]);
                    v91 = vaddq_f64(v55, v89[1]);
                    v92 = vaddq_f64(v59, v89[3]);
                    *v89 = vaddq_f64(v53, *v89);
                    v89[1] = v91;
                    v89[2] = v90;
                    v89[3] = v92;
                    v93 = v51 + 8;
                    v94 = v51 + 15;
                    v52 += 4;
                    v51 += 8;
                  }

                  while (v94 < v128);
                  v95 = v93;
                  v31 = v128;
                }

                if (v95 < v31)
                {
                  v96 = (v48 + 8 * v95);
                  v97 = v49 * a9;
                  do
                  {
                    if (v35 < 1)
                    {
                      v102 = 0.0;
                      _D3 = 0.0;
                      v101 = 0.0;
                      _D1 = 0.0;
                    }

                    else
                    {
                      v98 = v35;
                      v99 = v96;
                      v100 = (a10 + 264 * v47);
                      v101 = 0.0;
                      v102 = 0.0;
                      do
                      {
                        _D5 = *v99;
                        _Q7 = *v100;
                        _Q6 = v100[1];
                        v100 += 2;
                        v102 = v102 - *&_Q7 * *v99;
                        __asm { FMLS            D3, D5, V7.D[1] }

                        v101 = v101 - *&_Q6 * *v99;
                        __asm { FMLS            D1, D5, V6.D[1] }

                        v99 = (v99 + v27);
                        --v98;
                      }

                      while (v98);
                    }

                    *(a8 + 8 * (v50 + v95)) = v102 + *(a8 + 8 * (v50 + v95));
                    *(a8 + 8 * ((v47 | 1) * a9 + v95)) = _D3 + *(a8 + 8 * ((v47 | 1) * a9 + v95));
                    *(a8 + 8 * ((v47 | 2) * a9 + v95)) = v101 + *(a8 + 8 * ((v47 | 2) * a9 + v95));
                    *(a8 + 8 * (v97 + v95)) = _D1 + *(a8 + 8 * (v97 + v95));
                    ++v95;
                    ++v96;
                  }

                  while (v95 != v128);
                }

                LODWORD(v112) = v47 + 4;
                v113 = v47 + 7;
                v47 += 4;
              }

              while (v113 < v29);
              v112 = v112;
              v30 = a4;
              v45 = v124;
            }

            if (v112 < v29)
            {
              do
              {
                if (v31 >= 1)
                {
                  v114 = 0;
                  v115 = v46;
                  do
                  {
                    v116 = 0.0;
                    if (v35 >= 1)
                    {
                      v117 = v35;
                      v118 = v115;
                      v119 = (a10 + ((8 * (v112 & 3)) | (1056 * (v112 >> 2))));
                      do
                      {
                        v120 = *v119;
                        v119 += 4;
                        v116 = v116 - *v118 * v120;
                        v118 = (v118 + v27);
                        --v117;
                      }

                      while (v117);
                    }

                    *(a8 + 8 * (v112 * a9 + v114)) = v116 + *(a8 + 8 * (v112 * a9 + v114));
                    ++v114;
                    ++v115;
                  }

                  while (v114 != v128);
                }

                ++v112;
              }

              while (v112 < v29);
            }

            v32 = v35 + v45;
          }

          while (v35 + v45 < a3);
        }

        a5 += 256;
        a8 += a9 << 8;
        v26 = v121 + 32;
        a2 = v122;
      }

      while (v121 + 32 < v122);
    }
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = 0;
      v123 = v13;
      v15 = a2 - v13;
      if (a2 - v13 >= 64)
      {
        v16 = 64;
      }

      else
      {
        v16 = a2 - v13;
      }

      v17 = v16;
      do
      {
        if (a3 - v14 >= 64)
        {
          v18 = 64;
        }

        else
        {
          v18 = a3 - v14;
        }

        v19 = v14;
        if (a3 - v14 < 1)
        {
          v20 = 0;
        }

        else
        {
          v20 = 0;
          v21 = a7 + 16 * v14;
          do
          {
            v22 = 2 * v20;
            if ((v19 + 1 + v20) < a3)
            {
              v23 = *(v21 + 8 * v22 + 16);
            }

            v24 = *(v21 + 8 * v22);
            if (fabs(v24) == INFINITY)
            {
              v24 = 0.0;
            }

            if (v15 >= 1)
            {
              v25 = 0;
              do
              {
                *(a10 + (v20 << 9) + 8 * v25) = v24 * *(a5 + a6 * (8 * v19 + 8 * v20) + 8 * v25);
                ++v25;
              }

              while (v25 < v17);
            }

            ++v20;
          }

          while (v20 < v18);
        }

        result = cblas_dgemm_NEWLAPACK();
        v14 = v20 + v19;
      }

      while ((v20 + v19) < a3);
      a5 += 512;
      a8 += a9 << 9;
      a2 = v122;
      v13 = v123 + 64;
    }

    while (v123 + 64 < v122);
  }

  return result;
}

uint64_t sub_2367498E8(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, float32x4_t a12, uint64_t a13, uint64_t a14)
{
  v146 = result;
  __asm { FMOV            V0.4S, #-1.0 }

  v139 = a2;
  if (a2 < 33 || a3 <= 32)
  {
    if (a2 >= 1)
    {
      v50 = 0;
      v51 = 8 * a6;
      v52 = vnegq_f64(_Q0);
      do
      {
        v141 = v50;
        v53 = a2 - v50;
        if (a2 - v50 >= 32)
        {
          v54 = 32;
        }

        else
        {
          v54 = a2 - v50;
        }

        v55 = v146;
        if (a3 >= 1)
        {
          v56 = 0;
          result = v54;
          do
          {
            if (a3 - v56 >= 32)
            {
              v57 = 32;
            }

            else
            {
              v57 = a3 - v56;
            }

            v144 = v56;
            v58 = 0;
            if (a3 - v56 >= 1)
            {
              v59 = a7 + 16 * v56;
              v60 = v56 + 1;
              v61 = 8 * v56;
              do
              {
                v62 = v59 + 8 * (2 * v58);
                if (v60 + v58 < a3)
                {
                  v63 = *(v62 + 16);
                  v64 = *(v62 + 20);
                }

                v65 = *v62;
                v66 = *(v62 + 4);
                v67 = fabsf(*v62) == INFINITY;
                if (fabsf(v66) == INFINITY)
                {
                  v67 = 1;
                }

                if (v67)
                {
                  a12.f32[0] = 0.0;
                }

                else
                {
                  a12.f32[0] = v65;
                }

                if (v67)
                {
                  v68 = 0.0;
                }

                else
                {
                  v68 = v66;
                }

                v69 = vmulq_n_f32(v52, v68);
                v70 = 4 * v58;
                v71 = v61 + 8 * v58;
                if (v53 < 4)
                {
                  v78 = 0;
                }

                else
                {
                  v72 = 0;
                  v73 = vdupq_lane_s32(*a12.f32, 0);
                  v74 = (a14 + 8 * v70);
                  v75 = a6 * v71;
                  do
                  {
                    v76 = *(a5 + v75 + 16);
                    v77 = v72 + 7;
                    *v74 = vmlaq_f32(vmulq_f32(v69, vrev64q_s32(*(a5 + v75))), v73, *(a5 + v75));
                    v74[1] = vmlaq_f32(vmulq_f32(v69, vrev64q_s32(v76)), v73, v76);
                    v72 += 4;
                    v74 += 66;
                    v75 += 32;
                  }

                  while (v77 < v54);
                  v78 = v72;
                }

                if (v78 < v54)
                {
                  *a12.f32 = vdup_lane_s32(*a12.f32, 0);
                  v79 = a5 + a6 * v71;
                  do
                  {
                    *(a14 + 8 * ((33 * (v78 & 0x7FFFFFFC) + v70) | v78 & 3)) = vmla_f32(vmul_f32(*v69.f32, vrev64_s32(*(v79 + 8 * v78))), *a12.f32, *(v79 + 8 * v78));
                    ++v78;
                  }

                  while (v78 < v54);
                }

                ++v58;
              }

              while (v58 < v57);
            }

            __asm { FMOV            V2.2S, #-1.0 }

            if (v53 < 4)
            {
              v129 = 0;
            }

            else
            {
              v81 = 0;
              do
              {
                v82 = v81 | 3;
                v83 = v81 * a13;
                if (v55 < 4)
                {
                  v116 = 0;
                }

                else
                {
                  v84 = 0;
                  v85 = a4 + 8 * v144 * a6;
                  do
                  {
                    if (v58 < 1)
                    {
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v91 = 0uLL;
                      v92 = 0uLL;
                      v86 = 0uLL;
                      v88 = 0uLL;
                    }

                    else
                    {
                      v86 = 0uLL;
                      v87 = v58;
                      v88 = 0uLL;
                      v89 = v85;
                      v90 = (a14 + 264 * v81);
                      v91 = 0uLL;
                      v92 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v95 = 0uLL;
                      v96 = 0uLL;
                      do
                      {
                        v97 = *(v89 + 16);
                        v98 = vrev64q_s32(*v89);
                        v99 = vrev64q_s32(v97);
                        v101 = *v90;
                        v100 = v90[1];
                        v90 += 2;
                        v102 = vmulq_lane_f32(v52, *v101.f32, 1);
                        v96 = vsubq_f32(v96, vmlaq_n_f32(vmulq_f32(v99, v102), v97, v101.f32[0]));
                        v95 = vsubq_f32(v95, vmlaq_n_f32(vmulq_f32(v98, v102), *v89, v101.f32[0]));
                        v103 = vmulq_laneq_f32(v52, v101, 3);
                        v94 = vsubq_f32(v94, vmlaq_laneq_f32(vmulq_f32(v99, v103), v97, v101, 2));
                        v93 = vsubq_f32(v93, vmlaq_laneq_f32(vmulq_f32(v98, v103), *v89, v101, 2));
                        v104 = vmulq_lane_f32(v52, *v100.f32, 1);
                        v92 = vsubq_f32(v92, vmlaq_n_f32(vmulq_f32(v99, v104), v97, v100.f32[0]));
                        v91 = vsubq_f32(v91, vmlaq_n_f32(vmulq_f32(v98, v104), *v89, v100.f32[0]));
                        v105 = vmulq_laneq_f32(v52, v100, 3);
                        v88 = vsubq_f32(v88, vmlaq_laneq_f32(vmulq_f32(v99, v105), v97, v100, 2));
                        v86 = vsubq_f32(v86, vmlaq_laneq_f32(vmulq_f32(v98, v105), *v89, v100, 2));
                        v89 += v51;
                        --v87;
                      }

                      while (v87);
                    }

                    v106 = (a8 + 8 * (v83 + v84));
                    v107 = vaddq_f32(v96, v106[1]);
                    *v106 = vaddq_f32(v95, *v106);
                    v106[1] = v107;
                    v108 = (a8 + 8 * ((v81 | 1) * a13 + v84));
                    v109 = vaddq_f32(v94, v108[1]);
                    *v108 = vaddq_f32(v93, *v108);
                    v108[1] = v109;
                    v110 = (a8 + 8 * ((v81 | 2) * a13 + v84));
                    v111 = vaddq_f32(v92, v110[1]);
                    *v110 = vaddq_f32(v91, *v110);
                    v110[1] = v111;
                    v112 = (a8 + 8 * (v82 * a13 + v84));
                    v113 = v112[1];
                    a12 = vaddq_f32(v86, *v112);
                    *v112 = a12;
                    v112[1] = vaddq_f32(v88, v113);
                    v114 = v84 + 4;
                    v115 = v84 + 7;
                    v85 += 32;
                    v84 += 4;
                  }

                  while (v115 < v146);
                  v116 = v114;
                  v55 = v146;
                }

                if (v116 < v55)
                {
                  v117 = a4 + v51 * v144 + 8 * v116;
                  v118 = v82 * a13;
                  do
                  {
                    if (v58 < 1)
                    {
                      v125 = 0;
                      v124 = 0;
                      v123 = 0;
                      v119 = 0;
                    }

                    else
                    {
                      v119 = 0;
                      v120 = v58;
                      v121 = v117;
                      v122 = (a14 + 264 * v81);
                      v123 = 0;
                      v124 = 0;
                      v125 = 0;
                      do
                      {
                        v126 = vrev64_s32(*v121);
                        v128 = *v122;
                        v127 = v122[1];
                        v122 += 2;
                        v125 = vsub_f32(v125, vmla_n_f32(vmul_f32(v126, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), *v128.f32, 1)), *v121, v128.f32[0]));
                        v124 = vsub_f32(v124, vmla_laneq_f32(vmul_f32(v126, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D2), v128, 3)), *v121, v128, 2));
                        v123 = vsub_f32(v123, vmla_n_f32(vmul_f32(v126, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), *v127.f32, 1)), *v121, v127.f32[0]));
                        v119 = vsub_f32(v119, vmla_laneq_f32(vmul_f32(v126, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D2), v127, 3)), *v121, v127, 2));
                        v121 = (v121 + v51);
                        --v120;
                      }

                      while (v120);
                    }

                    *(a8 + 8 * (v83 + v116)) = vadd_f32(v125, *(a8 + 8 * (v83 + v116)));
                    *(a8 + 8 * ((v81 | 1) * a13 + v116)) = vadd_f32(v124, *(a8 + 8 * ((v81 | 1) * a13 + v116)));
                    *(a8 + 8 * ((v81 | 2) * a13 + v116)) = vadd_f32(v123, *(a8 + 8 * ((v81 | 2) * a13 + v116)));
                    *a12.f32 = vadd_f32(v119, *(a8 + 8 * (v118 + v116)));
                    *(a8 + 8 * (v118 + v116++)) = a12.i64[0];
                    v117 += 8;
                  }

                  while (v116 != v146);
                }

                LODWORD(v129) = v81 + 4;
                v130 = v81 + 7;
                v81 += 4;
              }

              while (v130 < v54);
              v129 = v129;
            }

            if (v129 < v54)
            {
              do
              {
                if (v55 >= 1)
                {
                  v131 = 0;
                  v132 = v129 * a13;
                  v133 = (a4 + 8 * v144 * a6);
                  do
                  {
                    v134 = 0;
                    if (v58 >= 1)
                    {
                      v135 = v58;
                      v136 = v133;
                      v137 = (a14 + 8 * ((33 * (v129 & 0x7FFFFFFC)) & 0xFFFFFFFC | v129 & 3));
                      do
                      {
                        v138 = *v137;
                        v137 += 4;
                        v134 = vsub_f32(v134, vmla_n_f32(vmul_f32(vrev64_s32(*v136), vmul_lane_f32(COERCE_FLOAT32X2_T(-_D2), v138, 1)), *v136, v138.f32[0]));
                        v136 = (v136 + v51);
                        --v135;
                      }

                      while (v135);
                    }

                    *a12.f32 = vadd_f32(v134, *(a8 + 8 * (v132 + v131)));
                    *(a8 + 8 * (v132 + v131++)) = a12.i64[0];
                    ++v133;
                  }

                  while (v131 != v146);
                }

                ++v129;
              }

              while (v129 < v54);
            }

            v56 = v58 + v144;
          }

          while (v58 + v144 < a3);
        }

        a5 += 256;
        a8 += a13 << 8;
        a2 = v139;
        v50 = v141 + 32;
      }

      while (v141 + 32 < v139);
    }
  }

  else
  {
    v23 = 0;
    v143 = vnegq_f64(_Q0);
    v24 = a2;
    do
    {
      v25 = 0;
      v140 = v23;
      v26 = v24 - v23;
      if (v24 - v23 >= 64)
      {
        v27 = 64;
      }

      else
      {
        v27 = v24 - v23;
      }

      v28 = v27;
      do
      {
        if (a3 - v25 >= 64)
        {
          v29 = 64;
        }

        else
        {
          v29 = a3 - v25;
        }

        v30 = v25;
        if (a3 - v25 < 1)
        {
          v31 = 0;
        }

        else
        {
          v31 = 0;
          v32 = a7 + 16 * v25;
          do
          {
            v33 = v32 + 16 * v31;
            if ((v30 + 1 + v31) < a3)
            {
              v34 = *(v33 + 16);
              v35 = *(v33 + 20);
            }

            v36 = *v33;
            v37 = *(v33 + 4);
            v38 = fabsf(*v33) == INFINITY;
            if (fabsf(v37) == INFINITY)
            {
              v38 = 1;
            }

            if (v38)
            {
              *&a10 = 0.0;
            }

            else
            {
              *&a10 = v36;
            }

            if (v38)
            {
              v39 = 0.0;
            }

            else
            {
              v39 = v37;
            }

            v40 = vmulq_n_f32(v143, v39);
            v41 = 8 * v30 + 8 * v31;
            if (v26 < 4)
            {
              v48 = 0;
            }

            else
            {
              v42 = 0;
              v43 = vdupq_lane_s32(*&a10, 0);
              v44 = (a14 + (v31 << 9));
              v45 = a6 * v41;
              do
              {
                v46 = *(a5 + v45 + 16);
                v47 = v42 + 7;
                *v44 = vmlaq_f32(vmulq_f32(v40, vrev64q_s32(*(a5 + v45))), v43, *(a5 + v45));
                v44[1] = vmlaq_f32(vmulq_f32(v40, vrev64q_s32(v46)), v43, v46);
                v44 += 2;
                v42 += 4;
                v45 += 32;
              }

              while (v47 < v28);
              v48 = v42;
            }

            if (v48 < v28)
            {
              a10 = COERCE_DOUBLE(vdup_lane_s32(*&a10, 0));
              v49 = a5 + a6 * v41;
              do
              {
                *(a14 + (v31 << 9) + 8 * v48) = vmla_f32(vmul_f32(*v40.f32, vrev64_s32(*(v49 + 8 * v48))), *&a10, *(v49 + 8 * v48));
                ++v48;
              }

              while (v48 < v28);
            }

            ++v31;
          }

          while (v31 < v29);
        }

        result = cblas_cgemm_NEWLAPACK();
        v25 = v31 + v30;
      }

      while ((v31 + v30) < a3);
      a5 += 512;
      a8 += a13 << 9;
      v24 = v139;
      v23 = v140 + 64;
    }

    while (v140 + 64 < v139);
  }

  return result;
}

uint64_t sub_23674A3FC(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v200 = result;
  v196 = a2;
  if (a2 < 33 || a3 <= 32)
  {
    if (a2 >= 1)
    {
      v44 = 0;
      v45 = 16 * a6;
      v46 = xmmword_23681FB50;
      do
      {
        v195 = v44;
        v47 = a2 - v44;
        if (a2 - v44 >= 32)
        {
          v48 = 32;
        }

        else
        {
          v48 = a2 - v44;
        }

        v49 = a4;
        v50 = v200;
        if (a3 >= 1)
        {
          v51 = 0;
          result = v48;
          do
          {
            if (a3 - v51 >= 32)
            {
              v52 = 32;
            }

            else
            {
              v52 = a3 - v51;
            }

            v198 = v51;
            v53 = 0;
            if (a3 - v51 >= 1)
            {
              v54 = a7 + 32 * v51;
              v55 = v51 + 1;
              v56 = 16 * v51;
              do
              {
                v57 = v54 + 16 * (2 * v53);
                if (v55 + v53 < a3)
                {
                  v58 = *(v57 + 32);
                  v59 = *(v57 + 40);
                }

                v60 = *v57;
                v61 = *(v57 + 8);
                v62 = fabs(*v57) == INFINITY;
                if (fabs(v61) == INFINITY)
                {
                  v62 = 1;
                }

                if (v62)
                {
                  v63 = 0.0;
                }

                else
                {
                  v63 = v60;
                }

                if (v62)
                {
                  v64 = 0.0;
                }

                else
                {
                  v64 = v61;
                }

                v65 = vmulq_n_f64(v46, v64);
                v66 = 4 * v53;
                v67 = v56 + 16 * v53;
                if (v47 < 4)
                {
                  v76 = 0;
                }

                else
                {
                  v68 = 0;
                  v69 = vdupq_lane_s64(*&v63, 0);
                  v70 = (a10 + 16 * v66);
                  v71 = a6 * v67;
                  do
                  {
                    v72 = vmlaq_f64(vmulq_f64(v65, vextq_s8(*(a5 + v71 + 16), *(a5 + v71 + 16), 8uLL)), v69, *(a5 + v71 + 16));
                    v73 = vmlaq_f64(vmulq_f64(v65, vextq_s8(*(a5 + v71), *(a5 + v71), 8uLL)), v69, *(a5 + v71));
                    v74 = vmlaq_f64(vmulq_f64(v65, vextq_s8(*(a5 + v71 + 48), *(a5 + v71 + 48), 8uLL)), v69, *(a5 + v71 + 48));
                    v70[2] = vmlaq_f64(vmulq_f64(v65, vextq_s8(*(a5 + v71 + 32), *(a5 + v71 + 32), 8uLL)), v69, *(a5 + v71 + 32));
                    v70[3] = v74;
                    v75 = v68 + 7;
                    *v70 = v73;
                    v70[1] = v72;
                    v68 += 4;
                    v70 += 132;
                    v71 += 64;
                  }

                  while (v75 < v48);
                  v76 = v68;
                }

                if (v76 < v48)
                {
                  v77 = vdupq_lane_s64(*&v63, 0);
                  v78 = a5 + a6 * v67;
                  do
                  {
                    *(a10 + 16 * ((33 * (v76 & 0x7FFFFFFC) + v66) | v76 & 3)) = vmlaq_f64(vmulq_f64(v65, vextq_s8(*(v78 + 16 * v76), *(v78 + 16 * v76), 8uLL)), v77, *(v78 + 16 * v76));
                    ++v76;
                  }

                  while (v76 < v48);
                }

                ++v53;
              }

              while (v53 < v52);
            }

            v79 = (v49 + 16 * v198 * a6);
            if (v47 < 4)
            {
              v186 = 0;
            }

            else
            {
              v80 = 0;
              v81 = v49 + v45 * v198;
              do
              {
                v82 = v80 | 3;
                v83 = v80 * a9;
                if (v50 < 4)
                {
                  v171 = 0;
                }

                else
                {
                  v84 = 0;
                  v85 = v79;
                  do
                  {
                    if (v53 < 1)
                    {
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v104 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v100 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v86 = 0uLL;
                      v88 = 0uLL;
                      v90 = 0uLL;
                      v92 = 0uLL;
                    }

                    else
                    {
                      v86 = 0uLL;
                      v87 = v53;
                      v88 = 0uLL;
                      v89 = v85;
                      v90 = 0uLL;
                      v91 = (a10 + 528 * v80);
                      v92 = 0uLL;
                      v93 = 0uLL;
                      v94 = 0uLL;
                      v95 = 0uLL;
                      v96 = 0uLL;
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v104 = 0uLL;
                      do
                      {
                        v201 = v93;
                        v202 = v99;
                        v204 = v100;
                        v205 = v97;
                        v206 = v95;
                        v207 = v86;
                        v106 = v89[2];
                        v105 = v89[3];
                        v107 = v89[1];
                        v108 = vextq_s8(*v89, *v89, 8uLL);
                        v109 = vextq_s8(v107, v107, 8uLL);
                        v110 = vextq_s8(v106, v106, 8uLL);
                        v111 = vextq_s8(v105, v105, 8uLL);
                        v112 = v91[2];
                        v113 = v91[3];
                        v115 = *v91;
                        v114 = v91[1];
                        v91 += 4;
                        v116 = vmulq_laneq_f64(xmmword_23681FB50, v115, 1);
                        v117 = vmulq_f64(v111, v116);
                        v118 = vmulq_f64(v110, v116);
                        v119 = vmulq_f64(v109, v116);
                        v120 = vmlaq_n_f64(vmulq_f64(v108, v116), *v89, v115.f64[0]);
                        v121 = vmlaq_n_f64(v119, v107, v115.f64[0]);
                        v122 = vmlaq_n_f64(v118, v106, v115.f64[0]);
                        v123 = vmlaq_n_f64(v117, v105, v115.f64[0]);
                        v124 = vmulq_laneq_f64(xmmword_23681FB50, v114, 1);
                        v125 = v96;
                        v126 = v88;
                        v127 = vmulq_f64(v111, v124);
                        v128 = v90;
                        v129 = vmulq_f64(v110, v124);
                        v130 = vmulq_f64(v109, v124);
                        v131 = vmlaq_n_f64(vmulq_f64(v108, v124), *v89, v114.f64[0]);
                        v132 = vmlaq_n_f64(v130, v107, v114.f64[0]);
                        v133 = vmlaq_n_f64(v129, v106, v114.f64[0]);
                        v134 = vmlaq_n_f64(v127, v105, v114.f64[0]);
                        v135 = vmulq_laneq_f64(xmmword_23681FB50, v112, 1);
                        v136 = v92;
                        v137 = vmulq_f64(v111, v135);
                        v138 = v94;
                        v139 = vmulq_f64(v110, v135);
                        v140 = vmulq_f64(v109, v135);
                        v141 = vmlaq_n_f64(vmulq_f64(v108, v135), *v89, v112.f64[0]);
                        v142 = vmlaq_n_f64(v140, v107, v112.f64[0]);
                        v143 = vmlaq_n_f64(v139, v106, v112.f64[0]);
                        v144 = vmlaq_n_f64(v137, v105, v112.f64[0]);
                        v145 = vmulq_laneq_f64(xmmword_23681FB50, v113, 1);
                        v146 = vmlaq_n_f64(vmulq_f64(v108, v145), *v89, v113.f64[0]);
                        v147 = vmlaq_n_f64(vmulq_f64(v109, v145), v107, v113.f64[0]);
                        v148 = vmlaq_n_f64(vmulq_f64(v110, v145), v106, v113.f64[0]);
                        v149 = vmlaq_n_f64(vmulq_f64(v111, v145), v105, v113.f64[0]);
                        v104 = vsubq_f64(v104, v123);
                        v103 = vsubq_f64(v103, v122);
                        v102 = vsubq_f64(v102, v121);
                        v101 = vsubq_f64(v101, v120);
                        v100 = vsubq_f64(v204, v134);
                        v150 = v126;
                        v151 = v125;
                        v99 = vsubq_f64(v202, v133);
                        v152 = v128;
                        v98 = vsubq_f64(v98, v132);
                        v97 = vsubq_f64(v205, v131);
                        v96 = vsubq_f64(v151, v144);
                        v95 = vsubq_f64(v206, v143);
                        v94 = vsubq_f64(v138, v142);
                        v93 = vsubq_f64(v201, v141);
                        v92 = vsubq_f64(v136, v149);
                        v90 = vsubq_f64(v152, v148);
                        v88 = vsubq_f64(v150, v147);
                        v86 = vsubq_f64(v207, v146);
                        v89 = (v89 + v45);
                        --v87;
                      }

                      while (v87);
                    }

                    v153 = (a8 + 16 * (v83 + v84));
                    v154 = vaddq_f64(v102, v153[1]);
                    v155 = vaddq_f64(v101, *v153);
                    v156 = vaddq_f64(v104, v153[3]);
                    v153[2] = vaddq_f64(v103, v153[2]);
                    v153[3] = v156;
                    *v153 = v155;
                    v153[1] = v154;
                    v157 = (a8 + 16 * ((v80 | 1) * a9 + v84));
                    v158 = vaddq_f64(v99, v157[2]);
                    v159 = vaddq_f64(v98, v157[1]);
                    v160 = vaddq_f64(v100, v157[3]);
                    *v157 = vaddq_f64(v97, *v157);
                    v157[1] = v159;
                    v157[2] = v158;
                    v157[3] = v160;
                    v161 = (a8 + 16 * ((v80 | 2) * a9 + v84));
                    v162 = vaddq_f64(v95, v161[2]);
                    v163 = vaddq_f64(v94, v161[1]);
                    v164 = vaddq_f64(v96, v161[3]);
                    *v161 = vaddq_f64(v93, *v161);
                    v161[1] = v163;
                    v161[2] = v162;
                    v161[3] = v164;
                    v165 = (a8 + 16 * (v82 * a9 + v84));
                    v166 = vaddq_f64(v90, v165[2]);
                    v167 = vaddq_f64(v88, v165[1]);
                    v168 = vaddq_f64(v92, v165[3]);
                    *v165 = vaddq_f64(v86, *v165);
                    v165[1] = v167;
                    v165[2] = v166;
                    v165[3] = v168;
                    v169 = v84 + 4;
                    v170 = v84 + 7;
                    v85 += 4;
                    v84 += 4;
                  }

                  while (v170 < v200);
                  v171 = v169;
                  v50 = v200;
                  v46 = xmmword_23681FB50;
                }

                if (v171 < v50)
                {
                  v172 = (v81 + 16 * v171);
                  v173 = v82 * a9;
                  do
                  {
                    if (v53 < 1)
                    {
                      v180 = 0uLL;
                      v179 = 0uLL;
                      v178 = 0uLL;
                      v174 = 0uLL;
                    }

                    else
                    {
                      v174 = 0uLL;
                      v175 = v53;
                      v176 = v172;
                      v177 = (a10 + 528 * v80);
                      v178 = 0uLL;
                      v179 = 0uLL;
                      v180 = 0uLL;
                      do
                      {
                        v181 = vextq_s8(*v176, *v176, 8uLL);
                        v183 = v177[2];
                        v182 = v177[3];
                        v185 = *v177;
                        v184 = v177[1];
                        v177 += 4;
                        v180 = vsubq_f64(v180, vmlaq_n_f64(vmulq_f64(v181, vmulq_laneq_f64(v46, v185, 1)), *v176, v185.f64[0]));
                        v179 = vsubq_f64(v179, vmlaq_n_f64(vmulq_f64(v181, vmulq_laneq_f64(v46, v184, 1)), *v176, v184.f64[0]));
                        v178 = vsubq_f64(v178, vmlaq_n_f64(vmulq_f64(v181, vmulq_laneq_f64(v46, v183, 1)), *v176, v183.f64[0]));
                        v174 = vsubq_f64(v174, vmlaq_n_f64(vmulq_f64(v181, vmulq_laneq_f64(v46, v182, 1)), *v176, v182.f64[0]));
                        v176 = (v176 + v45);
                        --v175;
                      }

                      while (v175);
                    }

                    *(a8 + 16 * (v83 + v171)) = vaddq_f64(v180, *(a8 + 16 * (v83 + v171)));
                    *(a8 + 16 * ((v80 | 1) * a9 + v171)) = vaddq_f64(v179, *(a8 + 16 * ((v80 | 1) * a9 + v171)));
                    *(a8 + 16 * ((v80 | 2) * a9 + v171)) = vaddq_f64(v178, *(a8 + 16 * ((v80 | 2) * a9 + v171)));
                    *(a8 + 16 * (v173 + v171)) = vaddq_f64(v174, *(a8 + 16 * (v173 + v171)));
                    ++v171;
                    ++v172;
                  }

                  while (v171 != v200);
                }

                LODWORD(v186) = v80 + 4;
                v187 = v80 + 7;
                v80 += 4;
              }

              while (v187 < v48);
              v186 = v186;
              v49 = a4;
            }

            if (v186 < v48)
            {
              do
              {
                if (v50 >= 1)
                {
                  v188 = 0;
                  v189 = v79;
                  do
                  {
                    v190 = 0uLL;
                    if (v53 >= 1)
                    {
                      v191 = v53;
                      v192 = v189;
                      v193 = (a10 + 16 * ((33 * (v186 & 0x7FFFFFFC)) & 0xFFFFFFFC | v186 & 3));
                      do
                      {
                        v194 = *v193;
                        v193 += 4;
                        v190 = vsubq_f64(v190, vmlaq_n_f64(vmulq_f64(vextq_s8(*v192, *v192, 8uLL), vmulq_laneq_f64(v46, v194, 1)), *v192, v194.f64[0]));
                        v192 = (v192 + v45);
                        --v191;
                      }

                      while (v191);
                    }

                    *(a8 + 16 * (v186 * a9 + v188)) = vaddq_f64(v190, *(a8 + 16 * (v186 * a9 + v188)));
                    ++v188;
                    ++v189;
                  }

                  while (v188 != v200);
                }

                ++v186;
              }

              while (v186 < v48);
            }

            v51 = v53 + v198;
          }

          while (v53 + v198 < a3);
        }

        a5 += 512;
        a8 += a9 << 9;
        a2 = v196;
        v44 = v195 + 32;
      }

      while (v195 + 32 < v196);
    }
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = 0;
      v203 = v14;
      v16 = a2 - v14;
      if (a2 - v14 >= 64)
      {
        v17 = 64;
      }

      else
      {
        v17 = a2 - v14;
      }

      v18 = v17;
      do
      {
        if (a3 - v15 >= 64)
        {
          v19 = 64;
        }

        else
        {
          v19 = a3 - v15;
        }

        v20 = v15;
        if (a3 - v15 < 1)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0;
          v22 = a7 + 32 * v15;
          do
          {
            v23 = v22 + 32 * v21;
            if ((v20 + 1 + v21) < a3)
            {
              v24 = *(v23 + 32);
              v25 = *(v23 + 40);
            }

            v26 = *v23;
            v27 = *(v23 + 8);
            v28 = fabs(*v23) == INFINITY;
            if (fabs(v27) == INFINITY)
            {
              v28 = 1;
            }

            if (v28)
            {
              v29 = 0.0;
            }

            else
            {
              v29 = v26;
            }

            if (v28)
            {
              v30 = 0.0;
            }

            else
            {
              v30 = v27;
            }

            v31 = vmulq_n_f64(xmmword_23681FB50, v30);
            v32 = 16 * v20 + 16 * v21;
            if (v16 < 4)
            {
              v41 = 0;
            }

            else
            {
              v33 = 0;
              v34 = vdupq_lane_s64(*&v29, 0);
              v35 = (a10 + (v21 << 10));
              v36 = a6 * v32;
              do
              {
                v37 = vmlaq_f64(vmulq_f64(v31, vextq_s8(*(a5 + v36 + 16), *(a5 + v36 + 16), 8uLL)), v34, *(a5 + v36 + 16));
                v38 = vmlaq_f64(vmulq_f64(v31, vextq_s8(*(a5 + v36), *(a5 + v36), 8uLL)), v34, *(a5 + v36));
                v39 = vmlaq_f64(vmulq_f64(v31, vextq_s8(*(a5 + v36 + 48), *(a5 + v36 + 48), 8uLL)), v34, *(a5 + v36 + 48));
                v35[2] = vmlaq_f64(vmulq_f64(v31, vextq_s8(*(a5 + v36 + 32), *(a5 + v36 + 32), 8uLL)), v34, *(a5 + v36 + 32));
                v35[3] = v39;
                v40 = v33 + 7;
                *v35 = v38;
                v35[1] = v37;
                v35 += 4;
                v33 += 4;
                v36 += 64;
              }

              while (v40 < v18);
              v41 = v33;
            }

            if (v41 < v18)
            {
              v42 = vdupq_lane_s64(*&v29, 0);
              v43 = a5 + a6 * v32;
              do
              {
                *(a10 + (v21 << 10) + 16 * v41) = vmlaq_f64(vmulq_f64(v31, vextq_s8(*(v43 + 16 * v41), *(v43 + 16 * v41), 8uLL)), v42, *(v43 + 16 * v41));
                ++v41;
              }

              while (v41 < v18);
            }

            ++v21;
          }

          while (v21 < v19);
        }

        result = cblas_zgemm_NEWLAPACK();
        v15 = v21 + v20;
      }

      while ((v21 + v20) < a3);
      a5 += 1024;
      a8 += a9 << 10;
      v14 = v203 + 64;
      a2 = v196;
    }

    while (v203 + 64 < v196);
  }

  return result;
}

uint64_t sub_23674B1A8(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, float32x4_t a13, uint64_t a14, uint64_t a15)
{
  v156 = result;
  __asm
  {
    FMOV            V0.4S, #-1.0
    FMOV            V8.2S, #1.0
    FMOV            V1.4S, #1.0
  }

  v148 = a2;
  if (a2 < 33 || a3 <= 32)
  {
    if (a2 >= 1)
    {
      v56 = 0;
      v57 = 8 * a6;
      v58 = vnegq_f64(_Q0);
      v59 = vnegq_f64(_Q1);
      do
      {
        v151 = v56;
        v60 = a2 - v56;
        if (a2 - v56 >= 32)
        {
          v61 = 32;
        }

        else
        {
          v61 = a2 - v56;
        }

        v62 = v156;
        if (a3 >= 1)
        {
          v63 = 0;
          result = v61;
          do
          {
            if (a3 - v63 >= 32)
            {
              v64 = 32;
            }

            else
            {
              v64 = a3 - v63;
            }

            v154 = v63;
            v65 = 0;
            if (a3 - v63 >= 1)
            {
              v66 = a7 + 16 * v63;
              v67 = v63 + 1;
              v68 = 8 * v63;
              do
              {
                v69 = v66 + 8 * (2 * v65);
                if (v67 + v65 < a3)
                {
                  v70 = *(v69 + 16);
                  v71 = *(v69 + 20);
                }

                v72 = *v69;
                v73 = *(v69 + 4);
                v74 = fabsf(*v69) == INFINITY;
                if (fabsf(v73) == INFINITY)
                {
                  v74 = 1;
                }

                if (v74)
                {
                  a13.f32[0] = 0.0;
                }

                else
                {
                  a13.f32[0] = v72;
                }

                if (v74)
                {
                  v75 = 0.0;
                }

                else
                {
                  v75 = v73;
                }

                v76 = vmulq_n_f32(v58, v75);
                v77 = 4 * v65;
                v78 = v68 + 8 * v65;
                if (v60 < 4)
                {
                  v86 = 0;
                }

                else
                {
                  v79 = 0;
                  v80 = vdupq_lane_s32(*a13.f32, 0);
                  v81 = (a15 + 8 * v77);
                  v82 = a6 * v78;
                  do
                  {
                    v83 = vmulq_f32(*(a5 + v82 + 16), v59);
                    v84 = vmulq_f32(*(a5 + v82), v59);
                    v85 = v79 + 7;
                    *v81 = vmlaq_f32(vmulq_f32(v76, vrev64q_s32(v84)), v80, v84);
                    v81[1] = vmlaq_f32(vmulq_f32(v76, vrev64q_s32(v83)), v80, v83);
                    v79 += 4;
                    v81 += 66;
                    v82 += 32;
                  }

                  while (v85 < v61);
                  v86 = v79;
                }

                if (v86 < v61)
                {
                  *a13.f32 = vdup_lane_s32(*a13.f32, 0);
                  v87 = a5 + a6 * v78;
                  do
                  {
                    v88 = vmul_f32(*(v87 + 8 * v86), COERCE_FLOAT32X2_T(-_D8));
                    *(a15 + 8 * ((33 * (v86 & 0x7FFFFFFC) + v77) | v86 & 3)) = vmla_f32(vmul_f32(*v76.f32, vrev64_s32(v88)), *a13.f32, v88);
                    ++v86;
                  }

                  while (v86 < v61);
                }

                ++v65;
              }

              while (v65 < v64);
            }

            __asm { FMOV            V3.2S, #-1.0 }

            if (v60 < 4)
            {
              v138 = 0;
            }

            else
            {
              v90 = 0;
              do
              {
                v91 = v90 | 3;
                v92 = v90 * a14;
                if (v62 < 4)
                {
                  v125 = 0;
                }

                else
                {
                  v93 = 0;
                  v94 = a4 + 8 * v154 * a6;
                  do
                  {
                    if (v65 < 1)
                    {
                      v104 = 0uLL;
                      v105 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v95 = 0uLL;
                      v97 = 0uLL;
                    }

                    else
                    {
                      v95 = 0uLL;
                      v96 = v65;
                      v97 = 0uLL;
                      v98 = v94;
                      v99 = (a15 + 264 * v90);
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v104 = 0uLL;
                      v105 = 0uLL;
                      do
                      {
                        v106 = *(v98 + 16);
                        v107 = vrev64q_s32(*v98);
                        v108 = vrev64q_s32(v106);
                        v110 = *v99;
                        v109 = v99[1];
                        v99 += 2;
                        v111 = vmulq_lane_f32(v58, *v110.f32, 1);
                        v105 = vsubq_f32(v105, vmlaq_n_f32(vmulq_f32(v108, v111), v106, v110.f32[0]));
                        v104 = vsubq_f32(v104, vmlaq_n_f32(vmulq_f32(v107, v111), *v98, v110.f32[0]));
                        v112 = vmulq_laneq_f32(v58, v110, 3);
                        v103 = vsubq_f32(v103, vmlaq_laneq_f32(vmulq_f32(v108, v112), v106, v110, 2));
                        v102 = vsubq_f32(v102, vmlaq_laneq_f32(vmulq_f32(v107, v112), *v98, v110, 2));
                        v113 = vmulq_lane_f32(v58, *v109.f32, 1);
                        v101 = vsubq_f32(v101, vmlaq_n_f32(vmulq_f32(v108, v113), v106, v109.f32[0]));
                        v100 = vsubq_f32(v100, vmlaq_n_f32(vmulq_f32(v107, v113), *v98, v109.f32[0]));
                        v114 = vmulq_laneq_f32(v58, v109, 3);
                        v97 = vsubq_f32(v97, vmlaq_laneq_f32(vmulq_f32(v108, v114), v106, v109, 2));
                        v95 = vsubq_f32(v95, vmlaq_laneq_f32(vmulq_f32(v107, v114), *v98, v109, 2));
                        v98 += v57;
                        --v96;
                      }

                      while (v96);
                    }

                    v115 = (a8 + 8 * (v92 + v93));
                    v116 = vaddq_f32(v105, v115[1]);
                    *v115 = vaddq_f32(v104, *v115);
                    v115[1] = v116;
                    v117 = (a8 + 8 * ((v90 | 1) * a14 + v93));
                    v118 = vaddq_f32(v103, v117[1]);
                    *v117 = vaddq_f32(v102, *v117);
                    v117[1] = v118;
                    v119 = (a8 + 8 * ((v90 | 2) * a14 + v93));
                    v120 = v119[1];
                    *v119 = vaddq_f32(v100, *v119);
                    v119[1] = vaddq_f32(v101, v120);
                    v121 = (a8 + 8 * (v91 * a14 + v93));
                    v122 = v121[1];
                    a13 = vaddq_f32(v95, *v121);
                    *v121 = a13;
                    v121[1] = vaddq_f32(v97, v122);
                    v123 = v93 + 4;
                    v124 = v93 + 7;
                    v94 += 32;
                    v93 += 4;
                  }

                  while (v124 < v156);
                  v125 = v123;
                  v62 = v156;
                }

                if (v125 < v62)
                {
                  v126 = a4 + v57 * v154 + 8 * v125;
                  v127 = v91 * a14;
                  do
                  {
                    if (v65 < 1)
                    {
                      v134 = 0;
                      v133 = 0;
                      v132 = 0;
                      v128 = 0;
                    }

                    else
                    {
                      v128 = 0;
                      v129 = v65;
                      v130 = v126;
                      v131 = (a15 + 264 * v90);
                      v132 = 0;
                      v133 = 0;
                      v134 = 0;
                      do
                      {
                        v135 = vrev64_s32(*v130);
                        v137 = *v131;
                        v136 = v131[1];
                        v131 += 2;
                        v134 = vsub_f32(v134, vmla_n_f32(vmul_f32(v135, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), *v137.f32, 1)), *v130, v137.f32[0]));
                        v133 = vsub_f32(v133, vmla_laneq_f32(vmul_f32(v135, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D3), v137, 3)), *v130, v137, 2));
                        v132 = vsub_f32(v132, vmla_n_f32(vmul_f32(v135, vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), *v136.f32, 1)), *v130, v136.f32[0]));
                        v128 = vsub_f32(v128, vmla_laneq_f32(vmul_f32(v135, vmul_laneq_f32(COERCE_FLOAT32X2_T(-_D3), v136, 3)), *v130, v136, 2));
                        v130 = (v130 + v57);
                        --v129;
                      }

                      while (v129);
                    }

                    *(a8 + 8 * (v92 + v125)) = vadd_f32(v134, *(a8 + 8 * (v92 + v125)));
                    *(a8 + 8 * ((v90 | 1) * a14 + v125)) = vadd_f32(v133, *(a8 + 8 * ((v90 | 1) * a14 + v125)));
                    *(a8 + 8 * ((v90 | 2) * a14 + v125)) = vadd_f32(v132, *(a8 + 8 * ((v90 | 2) * a14 + v125)));
                    *a13.f32 = vadd_f32(v128, *(a8 + 8 * (v127 + v125)));
                    *(a8 + 8 * (v127 + v125++)) = a13.i64[0];
                    v126 += 8;
                  }

                  while (v125 != v156);
                }

                LODWORD(v138) = v90 + 4;
                v139 = v90 + 7;
                v90 += 4;
              }

              while (v139 < v61);
              v138 = v138;
            }

            if (v138 < v61)
            {
              do
              {
                if (v62 >= 1)
                {
                  v140 = 0;
                  v141 = v138 * a14;
                  v142 = (a4 + 8 * v154 * a6);
                  do
                  {
                    v143 = 0;
                    if (v65 >= 1)
                    {
                      v144 = v65;
                      v145 = v142;
                      v146 = (a15 + 8 * ((33 * (v138 & 0x7FFFFFFC)) & 0xFFFFFFFC | v138 & 3));
                      do
                      {
                        v147 = *v146;
                        v146 += 4;
                        v143 = vsub_f32(v143, vmla_n_f32(vmul_f32(vrev64_s32(*v145), vmul_lane_f32(COERCE_FLOAT32X2_T(-_D3), v147, 1)), *v145, v147.f32[0]));
                        v145 = (v145 + v57);
                        --v144;
                      }

                      while (v144);
                    }

                    *a13.f32 = vadd_f32(v143, *(a8 + 8 * (v141 + v140)));
                    *(a8 + 8 * (v141 + v140++)) = a13.i64[0];
                    ++v142;
                  }

                  while (v140 != v156);
                }

                ++v138;
              }

              while (v138 < v61);
            }

            v63 = v65 + v154;
          }

          while (v65 + v154 < a3);
        }

        a5 += 256;
        a8 += a14 << 8;
        v56 = v151 + 32;
        a2 = v148;
      }

      while (v151 + 32 < v148);
    }
  }

  else
  {
    v26 = 0;
    v150 = vnegq_f64(_Q0);
    v27 = vnegq_f64(_Q1);
    v28 = a2;
    v153 = v27;
    do
    {
      v29 = 0;
      v149 = v26;
      v30 = v28 - v26;
      if (v28 - v26 >= 64)
      {
        v31 = 64;
      }

      else
      {
        v31 = v28 - v26;
      }

      v32 = v31;
      do
      {
        if (a3 - v29 >= 64)
        {
          v33 = 64;
        }

        else
        {
          v33 = a3 - v29;
        }

        v34 = v29;
        if (a3 - v29 < 1)
        {
          v35 = 0;
        }

        else
        {
          v35 = 0;
          v36 = a7 + 16 * v29;
          do
          {
            v37 = v36 + 16 * v35;
            if ((v34 + 1 + v35) < a3)
            {
              v38 = *(v37 + 16);
              v39 = *(v37 + 20);
            }

            v40 = *v37;
            v41 = *(v37 + 4);
            v42 = fabsf(*v37) == INFINITY;
            if (fabsf(v41) == INFINITY)
            {
              v42 = 1;
            }

            if (v42)
            {
              *_Q1.f64 = 0.0;
            }

            else
            {
              *_Q1.f64 = v40;
            }

            if (v42)
            {
              v43 = 0.0;
            }

            else
            {
              v43 = v41;
            }

            v44 = vmulq_n_f32(v150, v43);
            v45 = 8 * v34 + 8 * v35;
            if (v30 < 4)
            {
              v53 = 0;
            }

            else
            {
              v46 = 0;
              v47 = vdupq_lane_s32(*&_Q1.f64[0], 0);
              v48 = (a15 + (v35 << 9));
              v49 = a6 * v45;
              do
              {
                v50 = vmulq_f32(*(a5 + v49 + 16), v27);
                v51 = vmulq_f32(*(a5 + v49), v27);
                v52 = v46 + 7;
                *v48 = vmlaq_f32(vmulq_f32(v44, vrev64q_s32(v51)), v47, v51);
                v48[1] = vmlaq_f32(vmulq_f32(v44, vrev64q_s32(v50)), v47, v50);
                v48 += 2;
                v46 += 4;
                v49 += 32;
              }

              while (v52 < v32);
              v53 = v46;
            }

            if (v53 < v32)
            {
              *&_Q1.f64[0] = vdup_lane_s32(*&_Q1.f64[0], 0);
              v54 = a5 + a6 * v45;
              do
              {
                v55 = vmul_f32(*(v54 + 8 * v53), COERCE_FLOAT32X2_T(-_D8));
                *(a15 + (v35 << 9) + 8 * v53++) = vmla_f32(vmul_f32(*v44.f32, vrev64_s32(v55)), *&_Q1.f64[0], v55);
              }

              while (v53 < v32);
            }

            ++v35;
          }

          while (v35 < v33);
        }

        result = cblas_cgemm_NEWLAPACK();
        v27 = v153;
        v29 = v35 + v34;
      }

      while ((v35 + v34) < a3);
      a5 += 512;
      a8 += a14 << 9;
      v28 = v148;
      v26 = v149 + 64;
    }

    while (v149 + 64 < v148);
  }

  return result;
}

uint64_t sub_23674BD38(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v206 = result;
  v202 = a2;
  if (a2 < 33 || a3 <= 32)
  {
    if (a2 >= 1)
    {
      v46 = 0;
      v47 = 16 * a6;
      v48 = xmmword_23681FB50;
      v49 = xmmword_23681FD30;
      do
      {
        v201 = v46;
        v50 = a2 - v46;
        if (a2 - v46 >= 32)
        {
          v51 = 32;
        }

        else
        {
          v51 = a2 - v46;
        }

        v52 = a4;
        v53 = v206;
        if (a3 >= 1)
        {
          v54 = 0;
          result = v51;
          do
          {
            if (a3 - v54 >= 32)
            {
              v55 = 32;
            }

            else
            {
              v55 = a3 - v54;
            }

            v204 = v54;
            v56 = 0;
            if (a3 - v54 >= 1)
            {
              v57 = a7 + 32 * v54;
              v58 = v54 + 1;
              v59 = 16 * v54;
              do
              {
                v60 = v57 + 16 * (2 * v56);
                if (v58 + v56 < a3)
                {
                  v61 = *(v60 + 32);
                  v62 = *(v60 + 40);
                }

                v63 = *v60;
                v64 = *(v60 + 8);
                v65 = fabs(*v60) == INFINITY;
                if (fabs(v64) == INFINITY)
                {
                  v65 = 1;
                }

                if (v65)
                {
                  v66 = 0.0;
                }

                else
                {
                  v66 = v63;
                }

                if (v65)
                {
                  v67 = 0.0;
                }

                else
                {
                  v67 = v64;
                }

                v68 = vmulq_n_f64(v48, v67);
                v69 = 4 * v56;
                v70 = v59 + 16 * v56;
                if (v50 < 4)
                {
                  v80 = 0;
                }

                else
                {
                  v71 = 0;
                  v72 = vdupq_lane_s64(*&v66, 0);
                  v73 = (a10 + 16 * v69);
                  v74 = a6 * v70;
                  do
                  {
                    v75 = vmulq_f64(*(a5 + v74 + 32), v49);
                    v76 = vmulq_f64(*(a5 + v74 + 48), v49);
                    v77 = vmulq_f64(*(a5 + v74), v49);
                    v78 = vmulq_f64(*(a5 + v74 + 16), v49);
                    v73[2] = vmlaq_f64(vmulq_f64(v68, vextq_s8(v75, v75, 8uLL)), v72, v75);
                    v73[3] = vmlaq_f64(vmulq_f64(v68, vextq_s8(v76, v76, 8uLL)), v72, v76);
                    v79 = v71 + 7;
                    *v73 = vmlaq_f64(vmulq_f64(v68, vextq_s8(v77, v77, 8uLL)), v72, v77);
                    v73[1] = vmlaq_f64(vmulq_f64(v68, vextq_s8(v78, v78, 8uLL)), v72, v78);
                    v71 += 4;
                    v73 += 132;
                    v74 += 64;
                  }

                  while (v79 < v51);
                  v80 = v71;
                }

                if (v80 < v51)
                {
                  v81 = vdupq_lane_s64(*&v66, 0);
                  v82 = a5 + a6 * v70;
                  do
                  {
                    v83 = vmulq_f64(*(v82 + 16 * v80), v49);
                    *(a10 + 16 * ((33 * (v80 & 0x7FFFFFFC) + v69) | v80 & 3)) = vmlaq_f64(vmulq_f64(v68, vextq_s8(v83, v83, 8uLL)), v81, v83);
                    ++v80;
                  }

                  while (v80 < v51);
                }

                ++v56;
              }

              while (v56 < v55);
            }

            v84 = (v52 + 16 * v204 * a6);
            if (v50 < 4)
            {
              v192 = 0;
            }

            else
            {
              v85 = 0;
              v86 = v52 + v47 * v204;
              do
              {
                v87 = v85 | 3;
                v88 = v85 * a9;
                if (v53 < 4)
                {
                  v177 = 0;
                }

                else
                {
                  v89 = 0;
                  v90 = v84;
                  do
                  {
                    if (v56 < 1)
                    {
                      v106 = 0uLL;
                      v107 = 0uLL;
                      v108 = 0uLL;
                      v109 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v104 = 0uLL;
                      v105 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v91 = 0uLL;
                      v93 = 0uLL;
                      v95 = 0uLL;
                      v97 = 0uLL;
                    }

                    else
                    {
                      v91 = 0uLL;
                      v92 = v56;
                      v93 = 0uLL;
                      v94 = v90;
                      v95 = 0uLL;
                      v96 = (a10 + 528 * v85);
                      v97 = 0uLL;
                      v98 = 0uLL;
                      v99 = 0uLL;
                      v100 = 0uLL;
                      v101 = 0uLL;
                      v102 = 0uLL;
                      v103 = 0uLL;
                      v104 = 0uLL;
                      v105 = 0uLL;
                      v106 = 0uLL;
                      v107 = 0uLL;
                      v108 = 0uLL;
                      v109 = 0uLL;
                      do
                      {
                        v208 = v99;
                        v209 = v105;
                        v210 = v103;
                        v211 = v102;
                        v212 = v93;
                        v213 = v91;
                        v111 = v94[2];
                        v110 = v94[3];
                        v112 = v94[1];
                        v113 = vextq_s8(*v94, *v94, 8uLL);
                        v114 = vextq_s8(v112, v112, 8uLL);
                        v115 = vextq_s8(v111, v111, 8uLL);
                        v116 = vextq_s8(v110, v110, 8uLL);
                        v117 = v96[2];
                        v118 = v96[3];
                        v120 = *v96;
                        v119 = v96[1];
                        v96 += 4;
                        v121 = vmulq_laneq_f64(xmmword_23681FB50, v120, 1);
                        v122 = vmulq_f64(v116, v121);
                        v123 = vmulq_f64(v115, v121);
                        v124 = vmulq_f64(v114, v121);
                        v125 = vmlaq_n_f64(vmulq_f64(v113, v121), *v94, v120.f64[0]);
                        v126 = vmlaq_n_f64(v124, v112, v120.f64[0]);
                        v127 = vmlaq_n_f64(v123, v111, v120.f64[0]);
                        v128 = vmlaq_n_f64(v122, v110, v120.f64[0]);
                        v129 = vmulq_laneq_f64(xmmword_23681FB50, v119, 1);
                        v130 = v101;
                        v131 = v95;
                        v132 = vmulq_f64(v116, v129);
                        v133 = v98;
                        v134 = vmulq_f64(v115, v129);
                        v135 = vmulq_f64(v114, v129);
                        v136 = vmlaq_n_f64(vmulq_f64(v113, v129), *v94, v119.f64[0]);
                        v137 = vmlaq_n_f64(v135, v112, v119.f64[0]);
                        v138 = vmlaq_n_f64(v134, v111, v119.f64[0]);
                        v139 = vmlaq_n_f64(v132, v110, v119.f64[0]);
                        v140 = vmulq_laneq_f64(xmmword_23681FB50, v117, 1);
                        v141 = v97;
                        v142 = vmulq_f64(v116, v140);
                        v143 = v100;
                        v144 = vmulq_f64(v115, v140);
                        v145 = vmulq_f64(v114, v140);
                        v146 = vmlaq_n_f64(vmulq_f64(v113, v140), *v94, v117.f64[0]);
                        v147 = vmlaq_n_f64(v145, v112, v117.f64[0]);
                        v148 = vmlaq_n_f64(v144, v111, v117.f64[0]);
                        v149 = vmlaq_n_f64(v142, v110, v117.f64[0]);
                        v150 = vmulq_laneq_f64(xmmword_23681FB50, v118, 1);
                        v151 = vmlaq_n_f64(vmulq_f64(v113, v150), *v94, v118.f64[0]);
                        v152 = vmlaq_n_f64(vmulq_f64(v114, v150), v112, v118.f64[0]);
                        v153 = vmlaq_n_f64(vmulq_f64(v115, v150), v111, v118.f64[0]);
                        v154 = vmlaq_n_f64(vmulq_f64(v116, v150), v110, v118.f64[0]);
                        v109 = vsubq_f64(v109, v128);
                        v108 = vsubq_f64(v108, v127);
                        v107 = vsubq_f64(v107, v126);
                        v106 = vsubq_f64(v106, v125);
                        v105 = vsubq_f64(v209, v139);
                        v155 = v131;
                        v156 = v130;
                        v104 = vsubq_f64(v104, v138);
                        v157 = v133;
                        v103 = vsubq_f64(v210, v137);
                        v102 = vsubq_f64(v211, v136);
                        v101 = vsubq_f64(v156, v149);
                        v100 = vsubq_f64(v143, v148);
                        v99 = vsubq_f64(v208, v147);
                        v98 = vsubq_f64(v157, v146);
                        v97 = vsubq_f64(v141, v154);
                        v95 = vsubq_f64(v155, v153);
                        v93 = vsubq_f64(v212, v152);
                        v91 = vsubq_f64(v213, v151);
                        v94 = (v94 + v47);
                        --v92;
                      }

                      while (v92);
                    }

                    v158 = (a8 + 16 * (v88 + v89));
                    v159 = vaddq_f64(v107, v158[1]);
                    v160 = vaddq_f64(v106, *v158);
                    v161 = vaddq_f64(v109, v158[3]);
                    v158[2] = vaddq_f64(v108, v158[2]);
                    v158[3] = v161;
                    *v158 = v160;
                    v158[1] = v159;
                    v162 = (a8 + 16 * ((v85 | 1) * a9 + v89));
                    v163 = vaddq_f64(v104, v162[2]);
                    v164 = vaddq_f64(v103, v162[1]);
                    v165 = vaddq_f64(v102, *v162);
                    v166 = vaddq_f64(v105, v162[3]);
                    *v162 = v165;
                    v162[1] = v164;
                    v162[2] = v163;
                    v162[3] = v166;
                    v167 = (a8 + 16 * ((v85 | 2) * a9 + v89));
                    v168 = vaddq_f64(v100, v167[2]);
                    v169 = vaddq_f64(v99, v167[1]);
                    v170 = vaddq_f64(v101, v167[3]);
                    *v167 = vaddq_f64(v98, *v167);
                    v167[1] = v169;
                    v167[2] = v168;
                    v167[3] = v170;
                    v171 = (a8 + 16 * (v87 * a9 + v89));
                    v173 = v171[2];
                    v172 = v171[3];
                    v174 = vaddq_f64(v93, v171[1]);
                    *v171 = vaddq_f64(v91, *v171);
                    v171[1] = v174;
                    v171[2] = vaddq_f64(v95, v173);
                    v171[3] = vaddq_f64(v97, v172);
                    v175 = v89 + 4;
                    v176 = v89 + 7;
                    v90 += 4;
                    v89 += 4;
                  }

                  while (v176 < v206);
                  v177 = v175;
                  v53 = v206;
                  v48 = xmmword_23681FB50;
                }

                if (v177 < v53)
                {
                  v178 = (v86 + 16 * v177);
                  v179 = v87 * a9;
                  do
                  {
                    if (v56 < 1)
                    {
                      v186 = 0uLL;
                      v185 = 0uLL;
                      v184 = 0uLL;
                      v180 = 0uLL;
                    }

                    else
                    {
                      v180 = 0uLL;
                      v181 = v56;
                      v182 = v178;
                      v183 = (a10 + 528 * v85);
                      v184 = 0uLL;
                      v185 = 0uLL;
                      v186 = 0uLL;
                      do
                      {
                        v187 = vextq_s8(*v182, *v182, 8uLL);
                        v189 = v183[2];
                        v188 = v183[3];
                        v191 = *v183;
                        v190 = v183[1];
                        v183 += 4;
                        v186 = vsubq_f64(v186, vmlaq_n_f64(vmulq_f64(v187, vmulq_laneq_f64(v48, v191, 1)), *v182, v191.f64[0]));
                        v185 = vsubq_f64(v185, vmlaq_n_f64(vmulq_f64(v187, vmulq_laneq_f64(v48, v190, 1)), *v182, v190.f64[0]));
                        v184 = vsubq_f64(v184, vmlaq_n_f64(vmulq_f64(v187, vmulq_laneq_f64(v48, v189, 1)), *v182, v189.f64[0]));
                        v180 = vsubq_f64(v180, vmlaq_n_f64(vmulq_f64(v187, vmulq_laneq_f64(v48, v188, 1)), *v182, v188.f64[0]));
                        v182 = (v182 + v47);
                        --v181;
                      }

                      while (v181);
                    }

                    *(a8 + 16 * (v88 + v177)) = vaddq_f64(v186, *(a8 + 16 * (v88 + v177)));
                    *(a8 + 16 * ((v85 | 1) * a9 + v177)) = vaddq_f64(v185, *(a8 + 16 * ((v85 | 1) * a9 + v177)));
                    *(a8 + 16 * ((v85 | 2) * a9 + v177)) = vaddq_f64(v184, *(a8 + 16 * ((v85 | 2) * a9 + v177)));
                    *(a8 + 16 * (v179 + v177)) = vaddq_f64(v180, *(a8 + 16 * (v179 + v177)));
                    ++v177;
                    ++v178;
                  }

                  while (v177 != v206);
                }

                LODWORD(v192) = v85 + 4;
                v193 = v85 + 7;
                v85 += 4;
              }

              while (v193 < v51);
              v192 = v192;
              v52 = a4;
            }

            if (v192 < v51)
            {
              do
              {
                if (v53 >= 1)
                {
                  v194 = 0;
                  v195 = v84;
                  do
                  {
                    v196 = 0uLL;
                    if (v56 >= 1)
                    {
                      v197 = v56;
                      v198 = v195;
                      v199 = (a10 + 16 * ((33 * (v192 & 0x7FFFFFFC)) & 0xFFFFFFFC | v192 & 3));
                      do
                      {
                        v200 = *v199;
                        v199 += 4;
                        v196 = vsubq_f64(v196, vmlaq_n_f64(vmulq_f64(vextq_s8(*v198, *v198, 8uLL), vmulq_laneq_f64(v48, v200, 1)), *v198, v200.f64[0]));
                        v198 = (v198 + v47);
                        --v197;
                      }

                      while (v197);
                    }

                    *(a8 + 16 * (v192 * a9 + v194)) = vaddq_f64(v196, *(a8 + 16 * (v192 * a9 + v194)));
                    ++v194;
                    ++v195;
                  }

                  while (v194 != v206);
                }

                ++v192;
              }

              while (v192 < v51);
            }

            v54 = v56 + v204;
            v49 = xmmword_23681FD30;
          }

          while (v56 + v204 < a3);
        }

        a5 += 512;
        a8 += a9 << 9;
        a2 = v202;
        v46 = v201 + 32;
      }

      while (v201 + 32 < v202);
    }
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = 0;
      v207 = v14;
      v16 = a2 - v14;
      if (a2 - v14 >= 64)
      {
        v17 = 64;
      }

      else
      {
        v17 = a2 - v14;
      }

      v18 = v17;
      do
      {
        if (a3 - v15 >= 64)
        {
          v19 = 64;
        }

        else
        {
          v19 = a3 - v15;
        }

        v20 = v15;
        if (a3 - v15 < 1)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0;
          v22 = a7 + 32 * v15;
          do
          {
            v23 = v22 + 32 * v21;
            if ((v20 + 1 + v21) < a3)
            {
              v24 = *(v23 + 32);
              v25 = *(v23 + 40);
            }

            v26 = *v23;
            v27 = *(v23 + 8);
            v28 = fabs(*v23) == INFINITY;
            if (fabs(v27) == INFINITY)
            {
              v28 = 1;
            }

            if (v28)
            {
              v29 = 0.0;
            }

            else
            {
              v29 = v26;
            }

            if (v28)
            {
              v30 = 0.0;
            }

            else
            {
              v30 = v27;
            }

            v31 = vmulq_n_f64(xmmword_23681FB50, v30);
            v32 = 16 * v20 + 16 * v21;
            if (v16 < 4)
            {
              v42 = 0;
            }

            else
            {
              v33 = 0;
              v34 = vdupq_lane_s64(*&v29, 0);
              v35 = (a10 + (v21 << 10));
              v36 = a6 * v32;
              do
              {
                v37 = vmulq_f64(*(a5 + v36 + 32), xmmword_23681FD30);
                v38 = vmulq_f64(*(a5 + v36 + 48), xmmword_23681FD30);
                v39 = vmulq_f64(*(a5 + v36), xmmword_23681FD30);
                v40 = vmulq_f64(*(a5 + v36 + 16), xmmword_23681FD30);
                v35[2] = vmlaq_f64(vmulq_f64(v31, vextq_s8(v37, v37, 8uLL)), v34, v37);
                v35[3] = vmlaq_f64(vmulq_f64(v31, vextq_s8(v38, v38, 8uLL)), v34, v38);
                v41 = v33 + 7;
                *v35 = vmlaq_f64(vmulq_f64(v31, vextq_s8(v39, v39, 8uLL)), v34, v39);
                v35[1] = vmlaq_f64(vmulq_f64(v31, vextq_s8(v40, v40, 8uLL)), v34, v40);
                v35 += 4;
                v33 += 4;
                v36 += 64;
              }

              while (v41 < v18);
              v42 = v33;
            }

            if (v42 < v18)
            {
              v43 = vdupq_lane_s64(*&v29, 0);
              v44 = a5 + a6 * v32;
              do
              {
                v45 = vmulq_f64(*(v44 + 16 * v42), xmmword_23681FD30);
                *(a10 + (v21 << 10) + 16 * v42++) = vmlaq_f64(vmulq_f64(v31, vextq_s8(v45, v45, 8uLL)), v43, v45);
              }

              while (v42 < v18);
            }

            ++v21;
          }

          while (v21 < v19);
        }

        result = cblas_zgemm_NEWLAPACK();
        v15 = v21 + v20;
      }

      while ((v21 + v20) < a3);
      a5 += 1024;
      a8 += a9 << 10;
      v14 = v207 + 64;
      a2 = v202;
    }

    while (v207 + 64 < v202);
  }

  return result;
}

void *sub_23674CB90(int *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = malloc_type_malloc(8 * (v3 + v4) + 96, 0x10900405D25300CuLL);
  v6 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  v7 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  v8 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  v9 = v8;
  if (v4 >= 1)
  {
    v10 = (a1 + 5);
    v11 = v4;
    v12 = v6;
    v13 = v7;
    v14 = v8;
    do
    {
      *v12++ = *(v10 - 2);
      *v13++ = *(v10 - 1);
      v15 = *v10;
      v10 += 2;
      v16 = v15;
      *v14++ = v16;
      --v11;
    }

    while (v11);
  }

  v17 = malloc_type_malloc(4 * v2, 0x100004052888210uLL);
  v18 = v17;
  if ((v2 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D34C();
    }

LABEL_14:
    _SparseTrap();
  }

  if ((v3 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D3C4();
    }

    goto LABEL_14;
  }

  if ((v4 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D43C();
    }

    goto LABEL_14;
  }

  v19 = 0;
  _SparseConvertFromCoordinate_Float(&v23, v2, v3, v4, 1u, v19, v6, v7, v9, ((v5 + 55) & 0xFFFFFFFFFFFFFFF0), v17);
  v20 = *&v23.structure.rowCount;
  v21 = *&v23.structure.rowIndices;
  v5[4] = v23.data;
  *v5 = v20;
  *(v5 + 1) = v21;
  free(v18);
  free(v9);
  free(v7);
  free(v6);
  return v5;
}

_DWORD *sub_23674CD8C(int a1, int *a2, uint64_t a3, int a4)
{
  v4 = &a2[4 * a2[2]];
  v5 = v4[3];
  v6 = v4 + 4;
  if (a1)
  {
    v6 += v5;
    v5 = *v6;
  }

  if (!v5)
  {
    return 0;
  }

  v7 = *a2;
  v8 = v5 / *a2;
  if (a4)
  {
    v9 = malloc_type_malloc(0x18uLL, 0x108004032FBF093uLL);
    *v9 = v7;
    v9[1] = v8;
    v9[2] = v7;
    v9[3] = 0;
    *(v9 + 2) = v6;
  }

  else
  {
    v10 = 4 * v8 * v7;
    v9 = malloc_type_malloc(v10 + 40, 0x108004032FBF093uLL);
    v11 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF0);
    *v9 = v7;
    v9[1] = v8;
    v9[2] = v7;
    v9[3] = 0;
    *(v9 + 2) = v11;
    memcpy(v11, v6, v10);
  }

  return v9;
}

void *sub_23674CE54(int *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = malloc_type_malloc(8 * v3 + 4 * v4 + 8 * v4 + 96, 0x10900405D25300CuLL);
  v6 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  v7 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  v8 = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
  v9 = v8;
  if (v4 >= 1)
  {
    v10 = (v8 + 4);
    v11 = (a1 + 5);
    v12 = v6;
    v13 = v7;
    v14 = v4;
    do
    {
      *v12++ = *(v11 - 2);
      *v13++ = *(v11 - 1);
      v15 = *v11;
      v11 += 2;
      v16 = v15;
      *(v10 - 1) = v16;
      *v10 = 0.0;
      v10 += 2;
      --v14;
    }

    while (v14);
  }

  v17 = malloc_type_malloc(4 * v2, 0x100004052888210uLL);
  v18 = v17;
  if ((v2 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D34C();
    }

LABEL_14:
    _SparseTrap();
  }

  if ((v3 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D3C4();
    }

    goto LABEL_14;
  }

  if ((v4 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D43C();
    }

    goto LABEL_14;
  }

  _SparseConvertFromCoordinate_Complex_Float(v2, v3, v4, 1u, 0, v6, v7, v9, v22, (v5 + 55) & 0xFFFFFFFFFFFFFFF0, v17);
  v19 = v22[0];
  v20 = v22[1];
  v5[4] = v23;
  *v5 = v19;
  *(v5 + 1) = v20;
  free(v18);
  free(v9);
  free(v7);
  free(v6);
  return v5;
}

void *sub_23674D068(int *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = malloc_type_malloc(8 * v3 + 4 * v4 + 16 * v4 + 96, 0x10900405D25300CuLL);
  v6 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  v7 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
  v8 = malloc_type_malloc(16 * v4, 0x1000040451B5BE8uLL);
  v9 = v8;
  if (v4 >= 1)
  {
    v10 = v8 + 8;
    v11 = a1 + 5;
    v12 = v6;
    v13 = v7;
    v14 = v4;
    do
    {
      *v12++ = *(v11 - 2);
      *v13++ = *(v11 - 1);
      v15 = *v11;
      v11 += 2;
      *(v10 - 1) = v15;
      *v10 = 0;
      v10 += 2;
      --v14;
    }

    while (v14);
  }

  v16 = malloc_type_malloc(4 * v2, 0x100004052888210uLL);
  v17 = v16;
  if ((v2 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D34C();
    }

LABEL_14:
    _SparseTrap();
  }

  if ((v3 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D3C4();
    }

    goto LABEL_14;
  }

  if ((v4 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23674D43C();
    }

    goto LABEL_14;
  }

  _SparseConvertFromCoordinate_Complex_Double(v2, v3, v4, 1u, 0, v6, v7, v9, v21, (v5 + 55) & 0xFFFFFFFFFFFFFFF0, v16);
  v18 = v21[0];
  v19 = v21[1];
  v5[4] = v22;
  *v5 = v18;
  *(v5 + 1) = v19;
  free(v17);
  free(v9);
  free(v7);
  free(v6);
  return v5;
}

_DWORD *sub_23674D278(int a1, int *a2, uint64_t a3, int a4)
{
  v4 = &a2[4 * a2[2]];
  v5 = v4[3];
  v6 = v4 + 4;
  if (a1)
  {
    v6 += 4 * v5;
    v5 = *v6;
  }

  if (!v5)
  {
    return 0;
  }

  v7 = *a2;
  v8 = v5 / *a2;
  if (a4)
  {
    v9 = malloc_type_malloc(0x18uLL, 0x108004032FBF093uLL);
    *v9 = v7;
    v9[1] = v8;
    v9[2] = v7;
    v9[3] = 0;
    *(v9 + 2) = v6;
  }

  else
  {
    v10 = 16 * v8 * v7;
    v9 = malloc_type_malloc(v10 + 40, 0x108004032FBF093uLL);
    v11 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF0);
    *v9 = v7;
    v9[1] = v8;
    v9[2] = v7;
    v9[3] = 0;
    *(v9 + 2) = v11;
    memcpy(v11, v6, v10);
  }

  return v9;
}

void sub_23674D34C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23674D340();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23674D3C4()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_23674D340();
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23674D43C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2366F7110();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23674D4B8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a1 + 20);
  if (!v4)
  {
    v4 = 16;
  }

  v5 = *(a1 + 16);
  v6 = 8 * ((v4 + 3) * v4 + (2 * v4 + 2) * a3) * a4;
  v7 = a4 + a4 * (v4 + a3) * (v4 + 3);
  v8 = a4 * a3 * v4;
  if (v5 != 2)
  {
    v8 = 0;
  }

  v9 = 8 * (v8 + v7) + 4 * a4;
  if ((v5 - 1) <= 1)
  {
    return v9;
  }

  else
  {
    return v6;
  }
}

void _SparseGMRESIterate_Double(const SparseGMRESOptions *options, int iteration, char *state, const BOOL *converged, DenseMatrix_Double *X, DenseMatrix_Double *B, DenseMatrix_Double *R, const SparseOpaquePreconditioner_Double *Preconditioner, void *ApplyOperator)
{
  v212 = R;
  v9 = state;
  v10 = ApplyOperator;
  variant = options->variant;
  if ((variant - 1) >= 2)
  {
    if (options->variant == SparseVariantDQGMRES)
    {
      v17 = *&X->attributes;
      v18 = 4;
      if (v17)
      {
        v19 = 4;
      }

      else
      {
        v19 = 0;
      }

      if (v17)
      {
        v18 = 0;
      }

      if (options->nvec)
      {
        nvec = options->nvec;
      }

      else
      {
        nvec = 16;
      }

      if (v17)
      {
        columnStride = X->columnStride;
      }

      if (*&R->attributes)
      {
        v46 = R->columnStride;
      }

      else
      {
        v46 = 1;
      }

      if (iteration < 0)
      {

        sub_23674EB10(&X->rowCount, B, &R->rowCount, ApplyOperator);
      }

      else
      {
        v47 = *(&X->rowCount + v19);
        v48 = *(&X->rowCount + v18);
        v211 = v48;
        v205 = nvec * v48 * nvec;
        v179 = &state[8 * nvec * v48 * v47 + 8 * v205];
        v182 = &state[8 * nvec * v48 * v47];
        v202 = 2 * nvec * v48;
        v215 = 8 * v48 * v47;
        v49 = &v179[8 * v202 + v215];
        v208 = nvec * v48 * v47;
        __dst = &v49[8 * v208];
        v193 = &__dst[v215];
        v199 = iteration % nvec;
        v222 = v48 * v47;
        v50 = iteration % nvec * v48 * v47;
        __srca = &v49[8 * v50];
        if (!iteration && v48 >= 1)
        {
          v51 = 0;
          v52 = state;
          v53 = 8 * v46;
          do
          {
            if (!converged[v51])
            {
              v54 = (*&R->attributes & 1) != 0 ? v51 : R->columnStride * v51;
              v55 = &R->data[v54];
              cblas_dnrm2_NEWLAPACK();
              R = v212;
              *&v193[8 * v51 * nvec] = v56;
              if (v47 >= 1)
              {
                v57 = v52;
                v58 = v47;
                do
                {
                  *v57++ = *v55 / *&v193[8 * v51 * nvec];
                  v55 = (v55 + v53);
                  --v58;
                }

                while (v58);
              }
            }

            ++v51;
            v52 += 8 * v47;
          }

          while (v51 != v211);
        }

        v59 = 8 * v208;
        v60 = 8 * v205;
        v209 = 8 * v202;
        memcpy(__dst, __srca, v215);
        if (Preconditioner)
        {
          mem = Preconditioner->mem;
          apply = Preconditioner->apply;
          v228 = __PAIR64__(v211, v47);
          v229 = v47;
          v230 = 0;
          v231 = &v9[8 * v50];
          v223 = v47;
          v224 = v211;
          v225 = v47;
          v226 = 0;
          v227 = __srca;
          (apply)(mem, 0, &v228, &v223);
        }

        else if (v211 >= 1)
        {
          v63 = 8 * v47;
          v64 = &v9[8 * v50 + v60 + v59 + v209 + v215];
          v65 = converged;
          v66 = v211;
          do
          {
            v67 = *v65++;
            if ((v67 & 1) == 0)
            {
              memcpy(v64, &v9[8 * v50], v63);
            }

            v50 += v47;
            v64 += v63;
            --v66;
          }

          while (v66);
        }

        v68 = *(ApplyOperator + 2);
        v228 = __PAIR64__(v211, v47);
        v229 = v47;
        v230 = 0;
        v231 = __srca;
        v223 = v47;
        v224 = v211;
        v225 = v47;
        v226 = 0;
        v227 = &v179[8 * v202];
        v68(ApplyOperator, 0, 111, &v228, &v223);
        if (v211 >= 1)
        {
          v69 = 0;
          v70 = nvec - iteration;
          if (nvec <= iteration)
          {
            v70 = 1;
          }

          v216 = nvec - v70;
          v71 = nvec < 1 || nvec - v70 < 0;
          v72 = v71;
          v176 = v72;
          v220 = (v199 * nvec);
          v196 = (iteration + 1) % nvec;
          v73 = &v9[8 * v196 * v222];
          v218 = v70 + v199;
          v74 = 8 * v47;
          v75 = &v9[v209 + v60 + v59];
          v191 = (iteration - nvec) & ~((iteration - nvec) >> 31);
          do
          {
            if (!converged[v69])
            {
              v206 = v75;
              v210 = v73;
              v76 = &v182[8 * v69 * nvec * nvec];
              if ((v176 & 1) == 0)
              {
                v77 = 0;
                do
                {
                  cblas_ddot_NEWLAPACK();
                  *&v76[8 * ((v218 + v77) % nvec) + 8 * v220] = v78;
                  cblas_daxpy_NEWLAPACK();
                  if (v77 + 1 >= nvec)
                  {
                    break;
                  }

                  v71 = v77++ < v216;
                }

                while (v71);
              }

              cblas_dnrm2_NEWLAPACK();
              if (v79 == 0.0)
              {
                v79 = 2.22507386e-308;
              }

              v228 = *&v79;
              v80 = v206;
              v81 = v210;
              v82 = v47;
              if (v47 >= 1)
              {
                do
                {
                  v83 = *v80++;
                  *v81++ = v83 / v79;
                  --v82;
                }

                while (v82);
              }

              v84 = &v179[8 * v69 * 2 * nvec];
              v85 = &v76[8 * v220];
              if (iteration > v191)
              {
                v86 = iteration - v191;
                v87 = (iteration - nvec) & ~((iteration - nvec) >> 31);
                do
                {
                  v88 = v87 % nvec;
                  v89 = *&v84[16 * (v87 % nvec)];
                  if (v87 % nvec + 1 < nvec)
                  {
                    v90 = v88 + 1;
                  }

                  else
                  {
                    v90 = 0;
                  }

                  v91 = *&v84[8 * ((2 * (v88 & 0x3FFFFFFF)) | 1)];
                  if (nvec == v86)
                  {
                    v92 = v89 * *&v85[8 * v90];
                  }

                  else
                  {
                    v93 = *&v85[8 * v88];
                    v94 = *&v85[8 * v90];
                    *&v85[8 * v88] = v91 * v94 + v89 * v93;
                    v92 = v89 * v94 - v91 * v93;
                  }

                  *&v85[8 * v90] = v92;
                  ++v87;
                  --v86;
                }

                while (v86);
              }

              v95 = &v193[8 * v69 * nvec];
              v96 = &v84[16 * v199];
              v97 = &v84[8 * ((2 * (v199 & 0x3FFFFFFF)) | 1)];
              cblas_drotg_NEWLAPACK();
              *&v95[8 * v196] = -(*v97 * *&v95[8 * v199]);
              *&v95[8 * v199] = *v96 * *&v95[8 * v199];
              data = X->data;
              if ((*&X->attributes & 1) == 0)
              {
                v99 = X->columnStride * v69;
              }

              if (nvec <= iteration)
              {
                v203 = X->data;
                cblas_daxpy_NEWLAPACK();
                cblas_dgemm_NEWLAPACK();
              }

              cblas_dgemm_NEWLAPACK();
              v100 = 1.0 / *&v76[8 * (v199 * nvec + v199)];
              cblas_dscal_NEWLAPACK();
              v101 = *&v95[8 * v199];
              cblas_daxpy_NEWLAPACK();
              if (*&v212->attributes)
              {
                v102 = v69;
              }

              else
              {
                v102 = v212->columnStride * v69;
              }

              v73 = v210;
              v74 = 8 * v47;
              v75 = v206;
              v212->data[v102] = fabs(*&v95[8 * v196]);
            }

            ++v69;
            v73 += v74;
            v75 += v74;
          }

          while (v69 != v211);
        }
      }
    }

    return;
  }

  v12 = 4;
  if (*&X->attributes)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(&X->rowCount + v13);
  if (*&X->attributes)
  {
    v12 = 0;
  }

  v15 = *(&X->rowCount + v12);
  if (*&R->attributes)
  {
    v16 = R->columnStride;
  }

  else
  {
    v16 = 1;
  }

  v194 = v16;
  if (options->nvec)
  {
    v22 = options->nvec;
  }

  else
  {
    v22 = 16;
  }

  v214 = (iteration % v22);
  v184 = v22 + 1;
  v23 = (v22 + 1) * v15;
  v178 = 8 * v23 * v14;
  v221 = v22 * v22;
  v198 = &state[v178];
  v173 = 16 * v15 * v22;
  v174 = 8 * v22 * v22 * v15;
  v192 = &state[v178 + v174];
  v195 = v15 * v14;
  v187 = &v192[8 * v195 + v173];
  __src = v15 * v14;
  v24 = v187 + 8 * v195;
  v201 = v22;
  v25 = 8 * v22 * v15 * v14;
  if (variant == 2)
  {
    v26 = v187 + 8 * v15 * v14;
  }

  else
  {
    v26 = 0;
  }

  v190 = v26;
  if (variant != 2)
  {
    v25 = 0;
  }

  v204 = v24 + v25;
  v217 = v15;
  v219 = v24 + v25 + 8 * v23;
  if (iteration < 0 || !v214)
  {
    if (!iteration)
    {
LABEL_131:
      if (v15 >= 1)
      {
        v124 = 0;
        v125 = v9;
        do
        {
          *(v219 + 4 * v124) = 0;
          if (!converged[v124])
          {
            v126 = (*&R->attributes & 1) != 0 ? v124 : R->columnStride * v124;
            v127 = &R->data[v126];
            cblas_dnrm2_NEWLAPACK();
            R = v212;
            *(v204 + 8 * v124 * v184) = v128;
            v15 = v217;
            if (v14 >= 1)
            {
              v129 = v125;
              v130 = v14;
              do
              {
                *v129++ = *v127 / *(v204 + 8 * v124 * v184);
                v127 += v194;
                --v130;
              }

              while (v130);
            }
          }

          ++v124;
          v125 += v14;
        }

        while (v124 != v15);
      }

      goto LABEL_141;
    }

    if (v15 < 1)
    {
      v34 = X;
      if (variant == 2)
      {
        goto LABEL_130;
      }
    }

    else
    {
      v27 = 0;
      v28 = 8 * v23;
      v171 = v25 + 16 * v195;
      v29 = v171 + v174 + v178 + v173;
      v30 = &state[v29];
      v172 = v28;
      v31 = &state[v28 + v29];
      v32 = v15;
      do
      {
        v33 = *v31;
        v31 += 4;
        if (v33)
        {
          cblas_dtrsv_NEWLAPACK();
        }

        v30 += 8 * v184;
        v27 += v221;
        --v32;
      }

      while (v32);
      v34 = X;
      v35 = 0;
      if (variant == 2)
      {
        v36 = v217;
        do
        {
          if (*(v219 + 4 * v35))
          {
            cblas_dgemv_NEWLAPACK();
            v36 = v217;
            if (v14 >= 1)
            {
              v37 = X->data;
              v38 = X->columnStride;
              v39 = v38 * v35;
              v40 = &v9[v174 + v178 + v173];
              v41 = v35;
              v42 = v14;
              do
              {
                v43 = *v40++;
                v44 = v43;
                if (*&X->attributes)
                {
                  v45 = v41;
                }

                else
                {
                  v45 = v39;
                }

                v37[v45] = v44 + v37[v45];
                ++v39;
                v41 += v38;
                --v42;
              }

              while (v42);
            }
          }

          ++v35;
        }

        while (v35 != v36);
        goto LABEL_130;
      }

      v103 = v174 + v178 + v173;
      v104 = v103 + 8 * __src;
      v105 = 8 * v14;
      v106 = v103 + v171;
      v107 = v103 + v171 + v172;
      v15 = v217;
      v108 = v217;
      do
      {
        if (*&v9[v107])
        {
          cblas_dgemv_NEWLAPACK();
          v15 = v217;
        }

        v104 += v105;
        v35 += v105;
        v106 += 8 * v184;
        v107 += 4;
        --v108;
      }

      while (v108);
    }

    if (Preconditioner)
    {
      v109 = Preconditioner->mem;
      v110 = Preconditioner->apply;
      v228 = __PAIR64__(v15, v14);
      v229 = v14;
      v230 = 0;
      v231 = &v192[8 * v195 + v173];
      v223 = v14;
      v224 = v15;
      v225 = v14;
      v226 = 0;
      v227 = &v192[v173];
      (v110)(v109, 0, &v228, &v223);
      v15 = v217;
      v111 = &v192[v173];
    }

    else
    {
      v111 = &v192[8 * v195 + v173];
    }

    if (v15 >= 1)
    {
      v112 = 0;
      for (i = 0; i != v15; ++i)
      {
        if (v14 >= 1 && *(v219 + 4 * i))
        {
          v114 = (v111 + 8 * v112);
          v115 = v34->data;
          v116 = v34->columnStride;
          v117 = v116 * i;
          v118 = i;
          v119 = v14;
          do
          {
            v120 = *v114++;
            v121 = v120;
            if (*&v34->attributes)
            {
              v122 = v118;
            }

            else
            {
              v122 = v117;
            }

            v115[v122] = v121 + v115[v122];
            ++v117;
            v118 += v116;
            --v119;
          }

          while (v119);
        }

        v112 += v14;
      }
    }

LABEL_130:
    p_rowCount = &v34->rowCount;
    v10 = ApplyOperator;
    sub_23674EB10(p_rowCount, B, &v212->rowCount, ApplyOperator);
    v15 = v217;
    R = v212;
    if (iteration < 0)
    {
      return;
    }

    goto LABEL_131;
  }

LABEL_141:
  if (Preconditioner)
  {
    v131 = Preconditioner->mem;
    v132 = Preconditioner->apply;
    if (options->variant == SparseVariantFGMRES)
    {
      v133 = v190 + 8 * v214 * __src;
    }

    else
    {
      v133 = &v192[8 * v195 + v173];
    }

    v228 = __PAIR64__(v15, v14);
    v229 = v14;
    v230 = 0;
    v231 = &v9[8 * v214 * __src];
    v223 = v14;
    v224 = v15;
    v225 = v14;
    v226 = 0;
    v227 = v133;
    v134 = v15;
    (v132)(v131, 0, &v228, &v223);
    v135 = v10[2];
    v228 = __PAIR64__(v134, v14);
    v229 = v14;
    v230 = 0;
    v231 = v133;
    v223 = v14;
    v224 = v134;
    v225 = v14;
    v226 = 0;
    v227 = &v192[v173];
    v135(v10, 0, 111, &v228, &v223);
  }

  else
  {
    v136 = v10[2];
    v228 = __PAIR64__(v15, v14);
    v229 = v14;
    v230 = 0;
    v231 = &v9[8 * v214 * __src];
    v223 = v14;
    v224 = v15;
    v225 = v14;
    v226 = 0;
    v227 = &v192[v173];
    v134 = v15;
    v136(v10, 0, 111, &v228, &v223, B);
  }

  if (v134 >= 1)
  {
    v137 = v134;
    v138 = 0;
    v139 = 0;
    v186 = 2 * v201;
    v140 = &v9[8 * v201 * v214 + v178];
    v141 = 8 * v14;
    v142 = 8 * v195;
    v183 = 8 * (v214 + 1) * v195;
    v143 = v174 + v178;
    v180 = v174 + v178 + v173;
    v144 = &v9[v143 + 8];
    v145 = 8 * v186;
    v197 = v140;
    v177 = v140 + 8;
    while (converged[v139])
    {
LABEL_164:
      ++v139;
      v138 += v221;
      v9 += v141;
      v144 += v145;
      if (v139 == v137)
      {
        return;
      }
    }

    ++*(v219 + 4 * v139);
    if ((v214 & 0x80000000) == 0)
    {
      v146 = &v197[8 * v138];
      v147 = v9;
      v148 = (v214 + 1);
      do
      {
        cblas_ddot_NEWLAPACK();
        *v146 = v149;
        v146 += 8;
        cblas_daxpy_NEWLAPACK();
        v147 += v142;
        --v148;
      }

      while (v148);
    }

    cblas_dnrm2_NEWLAPACK();
    v228 = *&v150;
    if (v150 == 0.0)
    {
      v151 = v212;
      v152 = v212->data;
      v153 = 0.0;
      if (*&v212->attributes)
      {
LABEL_155:
        v154 = v139;
LABEL_163:
        v137 = v217;
        v145 = 8 * v186;
        v141 = 8 * v14;
        v152[v154] = v153;
        goto LABEL_164;
      }
    }

    else
    {
      v155 = v180;
      v156 = v183;
      v157 = v14;
      if (v14 >= 1)
      {
        do
        {
          *&v9[v156] = *&v9[v155] / v150;
          v156 += 8;
          v155 += 8;
          --v157;
        }

        while (v157);
      }

      if (v214 >= 1)
      {
        v158 = *&v198[8 * v221 * v139 + 8 * v201 * v214];
        v159 = v144;
        v160 = v214;
        v161 = &v177[8 * v138];
        do
        {
          v162 = *(v159 - 1);
          v163 = *v159 * *v161 + v162 * v158;
          v158 = v162 * *v161 - *v159 * v158;
          *(v161 - 1) = v163;
          *v161 = v158;
          v159 += 2;
          ++v161;
          --v160;
        }

        while (v160);
      }

      v164 = &v192[8 * v139 * v186];
      v165 = v204 + 8 * v139 * v184;
      v166 = &v164[16 * v214];
      v167 = &v164[8 * ((2 * v214) | 1)];
      cblas_drotg_NEWLAPACK();
      v168 = *(v165 + 8 * v214);
      v169 = -(*v167 * v168);
      *(v165 + 8 * (v214 + 1)) = v169;
      *(v165 + 8 * v214) = v168 * *v166;
      v153 = fabs(v169);
      v151 = v212;
      v152 = v212->data;
      if (*&v212->attributes)
      {
        goto LABEL_155;
      }
    }

    v154 = v151->columnStride * v139;
    goto LABEL_163;
  }
}