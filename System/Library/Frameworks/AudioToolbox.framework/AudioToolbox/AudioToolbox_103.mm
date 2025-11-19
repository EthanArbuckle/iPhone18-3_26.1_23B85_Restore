uint64_t pvq_core_dec(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, __int16 *a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, __int16 a11, __int16 a12, __int16 *a13, __int16 *a14, unint64_t a15, unint64_t a16, unint64_t a17, unint64_t a18, unint64_t a19, __int16 a20)
{
  v60 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  v55 = 0xAAAAAAAAAAAAAAAALL;
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v54[3] = v24;
  v54[4] = v24;
  v54[1] = v24;
  v54[2] = v24;
  v54[0] = v24;
  v52 = -1;
  *&v24 = -1;
  *(&v24 + 1) = -1;
  __C[12] = v24;
  __C[13] = v24;
  __C[10] = v24;
  __C[11] = v24;
  __C[8] = v24;
  __C[9] = v24;
  __C[6] = v24;
  __C[7] = v24;
  __C[4] = v24;
  __C[5] = v24;
  __C[2] = v24;
  __C[3] = v24;
  __C[0] = v24;
  __C[1] = v24;
  v45 = a1;
  *(a1 + 96624) = 0;
  v49 = 8 * a11;
  v44 = a6;
  v25 = a7 - a6;
  if (a7 < a6)
  {
    goto LABEL_30;
  }

  v26 = a12;
  if (a12 > v25 >> 1)
  {
    goto LABEL_30;
  }

  assign_gain_bits(a20, a12, v44, a13, v54, &v49);
  v27 = a12;
  pvq_decode_frame(v45, a9, a10, a16, a17, __b, v58, v28, a2, a3, a4, a5, v44, a7, a12, a13, v49 >> 3, a20);
  if (a14 && a12)
  {
    v29 = a14;
    v30 = a16;
    v31 = a12;
    while (v29 >= a14 && (v29 + 1) <= a15 && v29 <= v29 + 1 && v30 >= a16 && (v30 + 1) <= a17 && v30 <= v30 + 1)
    {
      v32 = *v30++;
      if (v32 <= 0)
      {
        v33 = 0;
      }

      else
      {
        v33 = *v29;
      }

      *v29++ = v33;
      if (!--v31)
      {
        goto LABEL_16;
      }
    }

LABEL_30:
    __break(0x5519u);
  }

LABEL_16:
  v59 = -1431655766;
  *&v34 = 0xAAAAAAAAAAAAAAAALL;
  *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58[6] = v34;
  v58[5] = v34;
  v58[4] = v34;
  v58[3] = v34;
  v58[2] = v34;
  v58[1] = v34;
  v58[0] = v34;
  if (a12)
  {
    v35 = 0;
    v36 = a16;
    v37 = a13;
    do
    {
      *(v58 + v35) = v35;
      if (v36 < a16 || (v36 + 1) > a17 || v36 > v36 + 1)
      {
        goto LABEL_30;
      }

      v38 = *v36++;
      if (v38 <= 0)
      {
        v39 = 0;
      }

      else
      {
        v39 = *v37;
      }

      *v37++ = v39;
      ++v35;
      --v26;
    }

    while (v26);
    get_max_pulses(a2, a3, a4, a5, v58, a16, a17, a12, __b, v58, a18, a19);
    v40 = a10;
    v41 = a2;
    v27 = a12;
    fine_gain_pred(a2, a3, a4, a5, v44, a7, v58, v42, a16, a17, a18, a19, a13, &a13[a12], a12, a9, a10, __b, v58, __C, a20);
    fine_gain_dec(v45, v58, a12, v54, &v56, __C);
  }

  else
  {
    v41 = a2;
    v40 = a10;
  }

  if (*(v45 + 96624))
  {
    __A = 0.00012207;
    vDSP_vfill(&__A, __C, 1, v27);
  }

  apply_gain_11468(v58, v41, a3, a4, a5, v27, __C, &v53, a9, v40);
  return a11;
}

void pvq_decode_frame(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, __int16 a15, __int16 *a16, __int16 a17, __int16 a18)
{
  v20 = a1;
  v21 = 0;
  v22 = 0;
  v309 = *MEMORY[0x1E69E9840];
  v23 = *(a1 + 5160) + a17;
  *(a1 + 68598) = v23;
  *(a1 + 68600) = v23;
  v280 = 0;
  *(a1 + 68584) = 0xFFFFFFFF00000000;
  *(a1 + 68596) = 0;
  v268 = a1 + 0x10000;
  do
  {
    v21 = rc_dec_read(v20) + (v21 << 8);
    *(v268 + 3048) = v21;
    v82 = v22++ >= 3;
  }

  while (!v82);
  v281 = -21846;
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v288[0] = v24;
  v288[1] = v24;
  v288[2] = v24;
  v288[3] = v24;
  v288[4] = v24;
  v289 = 0xAAAAAAAAAAAAAAAALL;
  v285[0] = v24;
  v285[1] = v24;
  v285[2] = v24;
  v285[3] = v24;
  v285[4] = v24;
  v286 = 0xAAAAAAAAAAAAAAAALL;
  if (a15 < 1)
  {
    if (a18)
    {
      goto LABEL_414;
    }

    v255 = 0;
    goto LABEL_22;
  }

  v25 = 0;
  v26 = a16;
  v27 = a15;
  do
  {
    v28 = *v26++;
    if (v28 > 0)
    {
      ++v25;
    }

    --v27;
  }

  while (v27);
  v255 = v25;
  if (!a18)
  {
LABEL_22:
    if (a15 > 0x2C)
    {
      goto LABEL_415;
    }

    srt_vec_ind(a16, v288, v285, a15);
    v266 = 1;
    goto LABEL_24;
  }

  v29 = 0;
  v30 = 0;
  do
  {
    v31 = v285 + v29 + 2;
    if ((v285 + v29) < v285 || v31 > &v287 || v285 + v29 > v31)
    {
      goto LABEL_415;
    }

    *(v285 + v30) = v30;
    ++v30;
    v29 += 2;
  }

  while (a15 != v30);
  v266 = 0;
LABEL_24:
  if (a15 >= 1)
  {
    v34 = 0;
    v257 = 0;
    v282 = -21846;
    v261 = a7;
    v262 = v20;
    v260 = a3;
    while (1)
    {
      v258 = v34;
      v35 = v285 + v34;
      v36 = v35 + 1;
      if (v35 < v285 || v36 > &v287 || v35 > v36)
      {
        goto LABEL_415;
      }

      v39 = *v35;
      v40 = &a16[v39];
      v41 = (v40 + 1);
      v42 = v40 < a16 || v41 > &a16[a15];
      if (v42 || v40 > v41)
      {
        goto LABEL_415;
      }

      v44 = *v40;
      if (v44 < 1)
      {
        v96 = a9 + 2 * v39;
        v97 = (v96 + 2);
        v99 = v96 < a9 || v97 > a10 || v96 > v97;
        v100 = (a11 + 2 * v39);
        v101 = v100 + 1;
        if (v99 || v100 < a11 || v101 > a12 || v100 > v101)
        {
          goto LABEL_415;
        }

        LODWORD(v96) = *v96;
        if (v96 < *v100)
        {
          v96 = v96;
          v105 = 2 * v96;
          v106 = 4 * v96;
          do
          {
            v107 = a2 + v106 + 4;
            if (a2 + v106 < a2 || v107 > a3 || a2 + v106 > v107)
            {
              goto LABEL_415;
            }

            *(a2 + 4 * v96) = 0;
            v110 = a6 + v105;
            if (a6 + v105 < a6 || v110 + 2 > a7 || v110 > v110 + 2)
            {
              goto LABEL_415;
            }

            *(a6 + 2 * v96++) = 0;
            v105 += 2;
            v106 += 4;
          }

          while (v96 < *v100);
        }

        goto LABEL_413;
      }

      v45 = (a13 + 2 * v39);
      v46 = v45 + 1;
      if (v45 < a13 || v46 > a14 || v45 > v46)
      {
        goto LABEL_415;
      }

      bandBitsAdjustment(*(v268 + 3060), *(v268 + 3052), 8 * a17 - 8, v255, (v255 - v257), *v45, v44, v280, &v282, &v281, &v280);
      v49 = (a9 + 2 * v39);
      if (v49 < a9)
      {
        goto LABEL_415;
      }

      if ((v49 + 1) > a10)
      {
        goto LABEL_415;
      }

      if (v49 > v49 + 1)
      {
        goto LABEL_415;
      }

      v50 = *v49;
      v276 = a6 + 2 * v50;
      if (v276 < a6)
      {
        goto LABEL_415;
      }

      v269 = (a4 + 2 * v39);
      if (v269)
      {
        if (v269 < a4 || (v269 + 1) > a5 || v269 > v269 + 1)
        {
          goto LABEL_415;
        }
      }

      v275 = a2 + 4 * v50;
      if (v275 < a2)
      {
        goto LABEL_415;
      }

      v51 = *v45;
      v52 = v282;
      memset(v301, 170, sizeof(v301));
      memset(v299, 170, sizeof(v299));
      memset(v297, 170, sizeof(v297));
      memset(v293, 170, sizeof(v293));
      memset(v292, 170, 22);
      memset(v290, 170, sizeof(v290));
      v53 = -268 * (((0xF4898D8000 * v282) >> 32) >> 16) + v282 || ((64103990 * v282) >> 32) >> 2 << 16 == 0;
      v54 = v53 ? ((64103990 * v282) >> 34) + 1 : (64103990 * v282) >> 34;
      v55 = v54;
      if (v54 > 9 || v282 - 56 * v51 < 1)
      {
        v57 = 0;
      }

      else
      {
        ++*(v268 + 3060);
        v56 = *(v268 + 3062) - 1;
        *(v268 + 3062) = v56;
        if (get_indice(v20, v56, 1))
        {
          ++v55;
        }

        v57 = -8;
      }

      v284 = -21846;
      *&v58 = -1;
      *(&v58 + 1) = -1;
      v295[0] = v58;
      v295[1] = v58;
      v296 = -1;
      v59 = vcvtps_s32_f32(vcvts_n_f32_s32(v51, 6uLL));
      if (v55 > v59)
      {
        v59 = v55;
      }

      v60 = v59 >= v51 ? v51 : v59;
      v61 = v60 >= 10 ? 10 : v60;
      v62 = &intLimCDivInvDQ31[v61];
      v63 = v62 + 1;
      v64 = v62 < intLimCDivInvDQ31 || v63 > obtainEnergyQuantizerDensity_f;
      if (v64 || v62 > v63)
      {
        goto LABEL_415;
      }

      v66 = v61;
      v67 = v51 * intLimCDivInvDQ31[v61];
      v271 = v66;
      v270 = v66 - 1;
      if ((v66 - 1) >= 1)
      {
        v68 = -(v270 & 0x7FFF);
        v69 = v299;
        do
        {
          v70 = v69 + 1;
          if (v69 < v299 || v70 > v300 || v69 > v70)
          {
            goto LABEL_415;
          }

          *v69++ = v67 >> 31;
          v82 = __CFADD__(v68++, 1);
        }

        while (!v82);
      }

      v73 = &v299[v270];
      if (v73 < v299 || v73 + 1 > v300 || v73 > v73 + 1)
      {
        goto LABEL_415;
      }

      v74 = (v57 + v52);
      *v73 = v51 - v270 * (v67 >> 31);
      v301[0] = 0;
      if (v60 >= 2)
      {
        break;
      }

      if (v60 == 1)
      {
        v90 = v271;
        v111 = v271;
        v112 = v293;
        do
        {
          v113 = v112 + 1;
          if (v112 < v293 || v113 > v294 || v112 > v113)
          {
            goto LABEL_415;
          }

          *v112++ = 0x8000;
          --v111;
        }

        while (v111);
        v297[0] = v74;
        goto LABEL_173;
      }

      v297[0] = v57 + v52;
      v283 = 0;
LABEL_196:
      if (v271 > 0xBu)
      {
        goto LABEL_415;
      }

      srt_vec_ind(v293, v292, v290, v271);
      if (v60)
      {
        v127 = 0;
        if ((v271 & 0xFFFE) != 0)
        {
          v128 = v271;
        }

        else
        {
          v128 = 1;
        }

        v267 = v128;
        do
        {
          v279 = v127;
          v129 = &v290[v270 - v127];
          v130 = v129 + 1;
          if (v129 < v290 || v130 > &v291 || v129 > v130)
          {
            goto LABEL_415;
          }

          v133 = *v129;
          v134 = v283;
          v135 = shrtCDivSignedApprox(v283, (v271 - v127));
          v136 = &v297[v133];
          v137 = v136 + 1;
          v138 = v136 < v297 || v137 > v298;
          if (v138 || v136 > v137)
          {
            goto LABEL_415;
          }

          v140 = v297[v133] + v135;
          if (v140 >= 256)
          {
            v140 = 256;
          }

          v141 = v140 & ~(v140 >> 31);
          v297[v133] = v141;
          v142 = &v299[v133];
          if (v142 < v299)
          {
            goto LABEL_415;
          }

          if (v142 + 1 > v300 || v142 > v142 + 1)
          {
            goto LABEL_415;
          }

          conservativeL1Norm(v299[v133], v141, v266, v281, v134, *v269, &v284, &v281, &v283, v269);
          v144 = &v301[v133];
          v147 = v144 + 1 <= v302 && v144 <= v144 + 1 && v144 >= v301;
          v278 = v284;
          if (v284 < 1)
          {
            if (!v147)
            {
              goto LABEL_415;
            }

            v159 = (v275 + 4 * *v144);
            if (v159 < v275)
            {
              goto LABEL_415;
            }

            v160 = *v142;
            LODWORD(__A[0]) = 0;
            vDSP_vfill(__A, v159, 1, v160);
            v161 = v276 + 2 * *v144;
            if (v161 < v276)
            {
              goto LABEL_415;
            }

            v162 = *v142;
            if (v162 >= 1)
            {
              v163 = (v276 + 2 * *v144);
              do
              {
                if (v163 < v161 || (v163 + 1) > a7 || v163 > v163 + 1)
                {
                  goto LABEL_415;
                }

                *v163++ = 0;
                --v162;
              }

              while (v162);
            }

            goto LABEL_401;
          }

          if (!v147)
          {
            goto LABEL_415;
          }

          v148 = v295 + v133;
          if (v148 < v295)
          {
            goto LABEL_415;
          }

          if (v148 + 1 > v297)
          {
            goto LABEL_415;
          }

          if (v148 > v148 + 1)
          {
            goto LABEL_415;
          }

          v149 = v301[v133];
          v150 = v276 + 2 * v149;
          if (v150 > a7)
          {
            goto LABEL_415;
          }

          if (v150 < v276)
          {
            goto LABEL_415;
          }

          v151 = v299[v133];
          v152 = v299[v133];
          if ((v152 & 0x8000) != 0)
          {
            goto LABEL_415;
          }

          if ((a7 - v150) >> 1 < v151)
          {
            goto LABEL_415;
          }

          v153 = (v275 + 4 * v149);
          if (v153 > a3 || v153 < v275 || v151 > (a3 - v153) >> 2)
          {
            goto LABEL_415;
          }

          v154 = *v148;
          *&v155 = 0xAAAAAAAAAAAAAAAALL;
          *(&v155 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v306[6] = v155;
          v306[7] = v155;
          v306[4] = v155;
          v306[5] = v155;
          v306[2] = v155;
          v306[3] = v155;
          v306[0] = v155;
          v306[1] = v155;
          v304 = 0xAAAAAAAAAAAAAAAALL;
          __A[22] = v155;
          __A[23] = v155;
          __A[20] = v155;
          __A[21] = v155;
          __A[18] = v155;
          __A[19] = v155;
          __A[16] = v155;
          __A[17] = v155;
          __A[14] = v155;
          __A[15] = v155;
          __A[12] = v155;
          __A[13] = v155;
          __A[10] = v155;
          __A[11] = v155;
          __A[8] = v155;
          __A[9] = v155;
          __A[6] = v155;
          __A[7] = v155;
          __A[4] = v155;
          __A[5] = v155;
          __A[2] = v155;
          __A[3] = v155;
          __A[0] = v155;
          __A[1] = v155;
          v277 = v151;
          v272 = (v276 + 2 * v149);
          if (v151 < 6)
          {
            v164 = direct_msize(v151, v278);
          }

          else
          {
            v263 = v284;
            v156 = v284 + 1;
            v157 = (v284 + 1);
            if (v278 < 97)
            {
              *&__A[0] = 0x100000000;
              v165 = 2 * v151;
              v166 = (2 * v151 - 1);
              DWORD2(__A[0]) = v165 - 1;
              v259 = (v284 + 1);
              if (v157 <= 3)
              {
                v156 = (v284 + 1);
              }

              else
              {
                v167 = 1;
                v168 = __A + 3;
                v169 = 3;
                v170 = v165 - 1;
                v171 = 1;
                v273 = v165 - 1;
                do
                {
                  v172 = f_even_exact_div_opt(v166, v170, v171, v169 - 1);
                  if (v168 < __A || v168 + 1 > &v305 || v168 > v168 + 1)
                  {
                    goto LABEL_415;
                  }

                  v171 += v172;
                  *v168 = v171;
                  if (v169 + 1 >= v156)
                  {
                    break;
                  }

                  v173 = &exactdivodd[v167 & 0x7FFF];
                  if (v173 < exactdivodd || v173 + 1 > tbl_gain_trans_tc || v173 > v173 + 1 || v168 + 1 < __A || v168 + 2 > &v305 || v168 + 1 > v168 + 2)
                  {
                    goto LABEL_415;
                  }

                  v166 = v273;
                  v170 += *v173 * (v171 * v273 - v170);
                  v168[1] = v170;
                  v169 += 2;
                  ++v167;
                  v168 += 2;
                }

                while (v169 < v156);
              }

              v174 = __A + v156;
              v175 = v174 - 2;
              if (v174 - 2 < __A)
              {
                goto LABEL_415;
              }

              if (v174 - 1 > &v305)
              {
                goto LABEL_415;
              }

              if (v175 > v174 - 1)
              {
                goto LABEL_415;
              }

              v176 = __A + v263;
              if (v176 < __A || v176 + 1 > &v305 || v176 > v176 + 1)
              {
                goto LABEL_415;
              }

              v177 = *v176;
              v178 = v259 - 1;
              v179 = *v175 >> 1;
              v180 = v179 + (*v176 >> 1) + 1;
              if ((v259 - 1))
              {
                v182 = &exactdivodd[v178 >> 1];
                if (v182 < exactdivodd || v182 + 1 > tbl_gain_trans_tc || v182 > v182 + 1)
                {
                  goto LABEL_415;
                }

                v181 = *v182 * (v177 * v277 - v180);
              }

              else
              {
                v181 = f_even_exact_div_opt(v277, v177, v180, v178);
              }

              if (v174 < __A || v174 + 1 > &v305 || v174 > v174 + 1)
              {
                goto LABEL_415;
              }

              *v174 = v181 + v179;
            }

            else
            {
              initOffsets(__A, &v305, v278);
              LOWORD(v158) = 3;
              do
              {
                a_u_fwd(__A, &v305, v278, v157);
                v158 = (v158 + 1);
              }

              while (v158 < v152);
              v156 = (v278 + 1);
            }

            v183 = __A + v156;
            if (v183 < __A)
            {
              goto LABEL_415;
            }

            if (v183 + 1 > &v305)
            {
              goto LABEL_415;
            }

            if (v183 > v183 + 1)
            {
              goto LABEL_415;
            }

            v184 = __A + v263;
            if (v184 < __A || v184 + 1 > &v305 || v184 > v184 + 1)
            {
              goto LABEL_415;
            }

            v164 = *v183 + (*v184 >> 1) + 1;
            a7 = v261;
            v20 = v262;
            a3 = v260;
          }

          ++*(v268 + 3060);
          v185 = *(v268 + 3062) - 1;
          *(v268 + 3062) = v185;
          indice = get_indice(v20, v185, 1);
          v187 = indice;
          if (v152 == 1)
          {
            v188 = v277;
          }

          else
          {
            v189 = v164 - 1;
            v274 = indice;
            v190 = 0;
            if ((v164 - 1) < 1)
            {
              goto LABEL_304;
            }

            do
            {
              v191 = v190;
              v189 *= 2;
              ++v190;
            }

            while ((v189 & 0x80000000) == 0);
            if ((v191 - 32) < -9)
            {
LABEL_304:
              v193 = 24 - v190;
              v194 = rc_decode(v262, (v164 >> (24 - v190)) + 1);
              rc_dec_update(v262, v194, 1);
              *(v268 + 3060) += 24 - v190;
              if (v190 > 7)
              {
                v199 = *(v268 + 3062) - v193;
                *(v268 + 3062) = v199;
                v198 = get_indice(v262, v199, v193);
              }

              else
              {
                v195 = *(v268 + 3062) - (8 - v190);
                *(v268 + 3062) = v195;
                v196 = get_indice(v262, v195, (8 - v190));
                v197 = *(v268 + 3062) - 16;
                *(v268 + 3062) = v197;
                v198 = get_indice(v262, v197, 16) | (v196 << 16);
              }

              v20 = v262;
              v192 = v198 | (v194 << v193);
              a3 = v260;
              a7 = v261;
            }

            else
            {
              v20 = v262;
              v192 = rc_decode(v262, v164);
              rc_dec_update(v262, v192, 1);
            }

            v188 = v277;
            v187 = v274;
            if (v192 >= v164 || v20[48312])
            {
              v20[48312] = 1;
              v20[2584] = 1;
            }

            else
            {
              v187 = v274 | (v192 << 32);
            }
          }

          v308[0] = 0;
          v308[1] = mind2vec_one;
          v308[2] = mind2vec_two;
          v308[3] = mind2vec_three;
          v308[4] = mind2vec_four;
          v308[5] = mind2vec_five;
          if (v188 < 1)
          {
            if (v187)
            {
              v205 = -1;
            }

            else
            {
              v205 = 1;
            }
          }

          else
          {
            v200 = v306;
            v201 = v152;
            do
            {
              v202 = (v200 + 2);
              if (v200 < v306 || v202 > &v307 || v200 > v202)
              {
                goto LABEL_415;
              }

              *v200 = 0;
              v200 = (v200 + 2);
              --v201;
            }

            while (v201);
            if (v187)
            {
              v205 = -1;
            }

            else
            {
              v205 = 1;
            }

            if (v188 >= 6)
            {
              v206 = 0;
              v207 = HIDWORD(v187);
              v208 = v278;
              while (v207)
              {
                v209 = __A + 4 * v208;
                v210 = v209 + 4;
                if (v209 < __A || v210 > &v305 || v209 > v210)
                {
                  goto LABEL_415;
                }

                v213 = v208;
                while (1)
                {
                  v214 = *v209;
                  v82 = v207 >= v214;
                  v215 = v207 - v214;
                  if (v82)
                  {
                    break;
                  }

                  v213 = (v213 - 1);
                  v209 = __A + 4 * v213;
                  v216 = v209 + 4;
                  if (v209 < __A || v216 > &v305 || v209 > v216)
                  {
                    goto LABEL_415;
                  }
                }

                v219 = v306 + v206;
                if (v219)
                {
                  if (v219 < v306 || v219 + 1 > &v307 || v219 > v219 + 1)
                  {
                    goto LABEL_415;
                  }
                }

                if (v208 == v213)
                {
                  LODWORD(v207) = v215;
                }

                else
                {
                  *v219 = (v208 - v213) * v205;
                  if (v215)
                  {
                    v205 = -1;
                  }

                  else
                  {
                    v205 = 1;
                  }

                  LODWORD(v207) = v215 >> 1;
                  v208 = v213;
                }

                if (v208 <= 0x7FFEu)
                {
                  v222 = 0;
                  v223 = 0;
                  LOWORD(v224) = 1;
                  while (1)
                  {
                    v225 = __A + v223;
                    v223 = v224;
                    v226 = __A + 4 * v224;
                    v227 = v226 + 4;
                    v228 = v226 < __A || v227 > &v305;
                    v229 = v228 || v226 > v227;
                    v230 = v225 + 1;
                    v231 = !v229 && v225 >= __A;
                    v232 = !v231 || v230 > &v305;
                    if (v232 || v225 > v230)
                    {
                      break;
                    }

                    v220 = v223;
                    v221 = *(__A + v223) - v222 - *v225;
                    *v225 = v222;
                    v224 = (v223 + 1);
                    v222 = v221;
                    if (v224 > (v208 + 1))
                    {
                      goto LABEL_375;
                    }
                  }

LABEL_415:
                  __break(0x5519u);
                }

                v220 = 0;
                v221 = 0;
LABEL_375:
                v234 = __A + v220;
                if (v234 < __A || v234 + 1 > &v305 || v234 > v234 + 1)
                {
                  goto LABEL_415;
                }

                *v234 = v221;
                if (++v206 == v152)
                {
                  goto LABEL_387;
                }
              }

              v250 = (v306 + 2 * v206);
              v251 = (v250 + 2);
              if (v250 < v306 || v251 > &v307 || v250 > v251)
              {
                goto LABEL_415;
              }

              *v250 = v205 * v208;
              goto LABEL_387;
            }
          }

          v235 = &v308[v152];
          if (v235 < v308 || v235 + 1 > &v309 || v235 > v235 + 1)
          {
            goto LABEL_415;
          }

          (*v235)(v278, v205, HIDWORD(v187), v306, &v307);
          v188 = v277;
LABEL_387:
          v236 = v272;
          if (v188 >= 1)
          {
            v237 = v306;
            v238 = v272;
            v239 = v152;
            do
            {
              v240 = (v237 + 1);
              if (v237 < v306 || v240 > &v307 || v237 > v240)
              {
                goto LABEL_415;
              }

              v243 = *v237++;
              *v238++ = v243;
              --v239;
            }

            while (v239);
            v244 = 0.0;
            v245 = v272;
            v246 = v152;
            do
            {
              v247 = *v245++;
              v244 = v244 + (v247 * v247);
              --v246;
            }

            while (v246);
            v248 = v154 / sqrtf(v244);
            do
            {
              v249 = *v236++;
              *v153++ = v248 * v249;
              --v152;
            }

            while (v152);
          }

LABEL_401:
          v127 = v279 + 1;
        }

        while (v279 + 1 != v267);
      }

      ++v257;
LABEL_413:
      v34 = v258 + 1;
      if (v258 + 1 == a15)
      {
        goto LABEL_414;
      }
    }

    v75 = 0;
    v76 = 0;
    v77 = v271;
    if (v271 <= 2)
    {
      v77 = 2;
    }

    v78 = 2 * v77 - 2;
    do
    {
      v79 = &v301[v75 / 2];
      v80 = &v299[v75 / 2];
      v81 = &v299[v75 / 2 + 1];
      v82 = &v301[v75 / 2] >= v301 && v80 >= v299;
      v84 = !v82 || v81 > v300 || v80 > v81;
      v85 = v79 + 1;
      v86 = v79 + 2;
      if (v84 || v85 < v301 || v86 > v302 || v85 > v86)
      {
        goto LABEL_415;
      }

      v76 += v299[v75 / 2];
      *v85 = v76;
      v75 += 2;
    }

    while (v78 != v75);
    v90 = v271;
    v91 = v271;
    v92 = v293;
    do
    {
      v93 = v92 + 1;
      if (v92 < v293 || v93 > v294 || v92 > v93)
      {
        goto LABEL_415;
      }

      *v92++ = 0x8000;
      --v91;
    }

    while (v91);
    decode_energies(v20, v271, v299, v297, v298, v293, v294, v74, &v281, v51, v266);
LABEL_173:
    v283 = 0;
    if (v90 <= 1)
    {
      v116 = 1;
    }

    else
    {
      v116 = v90;
    }

    v117 = v295;
    v118 = v293;
    do
    {
      v119 = v118 + 1;
      v121 = v118 < v293 || v119 > v294 || v118 > v119;
      v122 = v117 + 1;
      if (v121 || v117 < v295 || v122 > v297 || v117 > v122)
      {
        goto LABEL_415;
      }

      v126 = *v118;
      *v117++ = v126 * -0.000030518;
      *v118++ = -v126;
      --v116;
    }

    while (v116);
    goto LABEL_196;
  }

LABEL_414:
  v20[2580] = *(v268 + 3064);
}

void fine_gain_dec(uint64_t a1, __int16 *a2, int a3, unint64_t a4, unint64_t a5, float *a6)
{
  if (a3 >= 1)
  {
    v11 = a3;
    while (1)
    {
      v12 = *a2++;
      v13 = (a4 + 2 * v12);
      v14 = v13 + 1;
      v15 = v13 < a4 || v14 > a5;
      if (v15 || v13 >= v14)
      {
        break;
      }

      v17 = *v13;
      if (*a6 != 0.0 && v17 >= 1)
      {
        next_indice = get_next_indice(a1, *v13);
        v20 = &finegain + 2 * (v17 - 1);
        v21 = v20 + 2;
        if (v20 < &finegain || v21 > &sort_ptr || v20 >= v21)
        {
          break;
        }

        v24 = *v20;
        v25 = v20[1];
        v26 = (*v20 + 4 * next_indice);
        v27 = v26 + 1;
        v28 = v26 < v24 || v27 > v25;
        if (v28 || v26 >= v27)
        {
          break;
        }

        v30 = __exp10((*v26 * 0.05));
        *a6 = *a6 * v30;
      }

      ++a6;
      if (!--v11)
      {
        return;
      }
    }

    __break(0x5519u);
  }
}

uint64_t decode_energies(uint64_t a1, int a2, __int16 *a3, _WORD *a4, unint64_t a5, __int16 *a6, unint64_t a7, int a8, __int16 *a9, __int16 a10, __int16 a11)
{
  while (1)
  {
    v11 = a7;
    v12 = a6;
    v13 = a5;
    v85 = a4;
    v14 = a3;
    v15 = a1;
    result = a10;
    v17 = (a2 >> 1);
    v91 = 0;
    if (v17 >= 1)
    {
      v18 = 0;
      v19 = v17;
      v20 = a3;
      while (v20 >= a3 && v20 + 1 <= &a3[a2] && v20 <= v20 + 1)
      {
        v21 = *v20++;
        v18 += v21;
        if (!--v19)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_108;
    }

    v18 = 0;
LABEL_9:
    v84 = a2;
    v92 = -21846;
    v86 = -21846;
    v83 = a8;
    obtainEnergyQuantizerDensity(result, a8, &v92);
    v82 = v15 + 0x10000;
    result = rangeCoderFinalizationFBits(*(v15 + 68596), *(v15 + 68588), &v86);
    v22 = v92;
    if ((v92 & 0xFFFE) == 0)
    {
      LOWORD(v43) = -1;
      goto LABEL_64;
    }

    v23 = &SQRT_DIM_fx[(a10 - v18)];
    v24 = v23 + 1;
    v26 = v23 < SQRT_DIM_fx || v24 > ACELP_BPF_MODE || v23 > v24;
    v27 = &SQRT_DIM_fx[v18];
    v28 = v27 + 1;
    v29 = !v26 && v27 >= SQRT_DIM_fx;
    if (!v29 || v28 > ACELP_BPF_MODE || v27 > v28)
    {
      goto LABEL_108;
    }

    v32 = atan2_fx(*v23, *v27);
    v33 = 2 * v32;
    v34 = 0x7FFF;
    if (v32 > 0)
    {
      v35 = 0x7FFF;
    }

    else
    {
      v35 = 0x8000;
    }

    if (v33 != v33)
    {
      LOWORD(v33) = v35;
    }

    v36 = (20861 * v33 + 0x4000) >> 15;
    if ((v36 & 0x10000) != 0)
    {
      v37 = v36 | 0xFFFF0000;
    }

    else
    {
      v37 = (20861 * v33 + 0x4000) >> 15;
    }

    if (v37 >= -32768)
    {
      v37 = v37;
    }

    else
    {
      v37 = -32768;
    }

    v38 = (v37 * v22 + 0x4000) >> 15;
    if ((v38 & 0x10000) != 0)
    {
      v39 = v38 | 0xFFFF0000;
    }

    else
    {
      v39 = (v37 * v22 + 0x4000) >> 15;
    }

    v81 = v15;
    if (v39 >= 0x8000)
    {
      goto LABEL_43;
    }

    if (v39 <= -32769)
    {
      v34 = 0x8000;
LABEL_43:
      v40 = v34;
      goto LABEL_44;
    }

    if (!v39)
    {
      v73 = v22 + 1;
      v74 = rc_decode(v81, (v22 + 1) * v22 + 1);
      v75 = sqrt((v73 * v73 - v74));
      if (v73 * v73 == v74)
      {
        LOWORD(v75) = 0;
      }

      LOWORD(v43) = v73 + v75;
      v76 = (v73 + v75);
      v44 = 2 * (v22 - v76);
      v77 = 2 * v73;
      v15 = v81;
      v45 = (v77 - v43) * v76;
      goto LABEL_63;
    }

    v40 = v39;
    v34 = v39;
LABEL_44:
    if (v34 == v22)
    {
      v15 = v81;
      v41 = rc_decode(v81, v22 + v22 * v22 + 1);
      v42 = sqrt(v41);
      LOWORD(v43) = v41 ? v42 : 0;
      v44 = 2 * v43;
      v45 = v43 * v43;
    }

    else
    {
      v80 = v13;
      v46 = v22 - v40;
      v47 = v40 * v22 * (v22 - v40);
      v79 = v22 + v47 + 1;
      v48 = rc_decode(v81, v79);
      if (v48 <= v47 + v40 + v46 * v40 + v46 * v40 * (v40 - v22))
      {
        v54 = (4 * v48 + v46 - 2) * v46;
        v29 = __CFADD__(v54, 1);
        v55 = sqrt((v54 + 1));
        if (v29)
        {
          v55 = 0;
        }

        v43 = (v55 + v46 - 1) / (2 * v46);
        v44 = 2 * v43 * v46;
        v45 = v43 * (v43 - 1) * v46 + v43;
      }

      else
      {
        v49 = ((2 * v22) | 1) * v40 + 1;
        v50 = v49 * v49 + 4 * v40 * (v79 - v48 - ((v22 + 1) * v22 * v40 + (v22 + 1)));
        v51 = sqrt(v50);
        if (!v50)
        {
          LOWORD(v51) = 0;
        }

        v52 = v51 * v51 == v50 ? v51 : v51 + 1;
        v43 = (((2 * v22) | 1) * v40 - v52 + 1) / (2 * v40);
        v53 = (v22 - v43);
        v44 = 2 * v40 * v53;
        v45 = v40 * v22 * v46 + v43 + v40 * v53 * ~v53;
      }

      v13 = v80;
      v15 = v81;
    }

LABEL_63:
    rc_dec_update(v15, v45, v44 | 1);
LABEL_64:
    v89 = -21846;
    v88 = -21846;
    v87 = -21846;
    densityAngle2RmsProjDec(v22, v43, &v88, &v89, &v87);
    result = v83;
    if (v17 >= 1)
    {
      v56 = v17;
      v57 = v89;
      v58 = v12;
      while (v58 >= v12 && (v58 + 1) <= v11 && v58 <= v58 + 1)
      {
        *v58 = (v57 * *v58 + 0x4000) >> 15;
        ++v58;
        if (!--v56)
        {
          goto LABEL_70;
        }
      }

      goto LABEL_108;
    }

LABEL_70:
    if (v84 > 0)
    {
      v59 = v17;
      v60 = v84;
      v61 = v88;
      v62 = v17;
      while (1)
      {
        v63 = &v12[v62 + 1];
        v64 = &v12[v62] < v12 || v63 > v11;
        if (v64 || &v12[v62] > v63)
        {
          goto LABEL_108;
        }

        v12[v59] = (v61 * v12[v59] + 0x4000) >> 15;
        ++v59;
        ++v62;
        if (v59 >= v84)
        {
          goto LABEL_82;
        }
      }
    }

    v60 = v84;
LABEL_82:
    if (v14 + 1 < v14)
    {
      goto LABEL_108;
    }

    v66 = &v14[v60];
    if ((v14 + 1) > v66)
    {
      goto LABEL_108;
    }

    v67 = (v66 - 2);
    if (v66 - 2 < v14 || v67 > v66)
    {
      goto LABEL_108;
    }

    v68 = *(v82 + 3060);
    v69 = *(v82 + 3052);
    v70 = *a9;
    v90 = -21846;
    v71 = v84;
    result = NearOppSplitAdjustment(v83, v86, v68, v69, v70, a11, v84, *v14, *v67, v18, a10 - v18, v87, &v91, &v90, a9);
    if (v17 < 2)
    {
      if ((v85 + 1) > v13 || v85 + 1 < v85)
      {
        goto LABEL_108;
      }

      *v85 = v91;
    }

    else
    {
      if (v84 < v17)
      {
        goto LABEL_108;
      }

      HIWORD(v78) = a11;
      LOWORD(v78) = v18;
      result = decode_energies(v15, v17, v14, v85, v13, v12, v11, v91, a9, v78);
      v71 = v84;
    }

    a2 = (v71 - (v71 >> 1));
    if (a2 < 2)
    {
      break;
    }

    a3 = &v14[v17];
    if (a3 > v66)
    {
      goto LABEL_108;
    }

    if (a3 < v14)
    {
      goto LABEL_108;
    }

    if ((v71 - (v71 >> 1)) > (2 * v60 - 2 * v17) >> 1)
    {
      goto LABEL_108;
    }

    a4 = &v85[v17];
    if (a4 < v85)
    {
      goto LABEL_108;
    }

    a6 = &v12[v17];
    if (a6 < v12)
    {
      goto LABEL_108;
    }

    a8 = v90;
    a10 -= v18;
    a1 = v15;
    a5 = v13;
    a7 = v11;
  }

  v72 = v85 + 1;
  if (v85 + 1 >= v85 && (v85 + 2) <= v13 && v72 <= v85 + 2)
  {
    *v72 = v90;
    return result;
  }

LABEL_108:
  __break(0x5519u);
  return result;
}

uint64_t mind2vec_five(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a4;
  v6[1] = a5;
  v6[2] = a4;
  return mind2vec_direct(a1, a2, a3, a_five, mind2vec_four, v6);
}

uint64_t mind2vec_direct(uint64_t result, __int16 a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, void, uint64_t), uint64_t a6)
{
  v7 = a2;
  v8 = result;
  if (!a3)
  {
    v21 = *a6;
    v22 = *a6 + 2;
    if (v22 <= *(a6 + 8) && v21 <= v22 && v21 >= *(a6 + 16))
    {
      *v21 = a2 * result;
      return result;
    }

    goto LABEL_36;
  }

  v11 = 0;
  v12 = result;
  do
  {
    v13 = v11;
    while (1)
    {
      v14 = v13 + v12;
      v15 = v14 >> 1;
      v16 = v14 >> 1;
      result = a4((v14 >> 1));
      if (result < a3)
      {
        break;
      }

      v12 = v15 - 1;
      if (result == a3)
      {
        result = a3;
        goto LABEL_8;
      }
    }

    v11 = v15 + 1;
  }

  while (v16 < v12);
LABEL_8:
  v17 = *a6;
  if (*a6 && (v17 < v17 + 1 ? (v18 = (v17 + 1) > *(a6 + 8)) : (v18 = 1), !v18 ? (v19 = v17 >= *(a6 + 16)) : (v19 = 0), !v19) || ((v20 = (a3 - result), v8 != v15) ? ((*v17 = (v8 - v15) * v7, ((a3 - result) & 1) == 0) ? (v7 = 1) : (v7 = -1), v20 = v20 >> 1, v17 = *a6) : (LOWORD(v15) = v8), (v17 + 1) < *(a6 + 16)))
  {
LABEL_36:
    __break(0x5519u);
    return result;
  }

  return a5(v15, v7, v20);
}

uint64_t mind2vec_four(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a4;
  v6[1] = a5;
  v6[2] = a4;
  return mind2vec_direct(a1, a2, a3, a_four, mind2vec_three, v6);
}

uint64_t mind2vec_three(uint64_t result, __int16 a2, int a3, _WORD *a4, unint64_t a5)
{
  if (a3)
  {
    v5 = sqrt((2 * a3 - 1)) + 1;
    if (v5 >= 2)
    {
      v6 = ~(((v5 & 0xFFFFFFFE) - 2) * (v5 >> 1));
    }

    else
    {
      v6 = 0;
    }

    if (!a4 || (a4 + 1) <= a5 && a4 + 1 >= a4)
    {
      v7 = v6 + a3;
      if ((v5 >> 1) != result)
      {
        *a4 = (result - (v5 >> 1)) * a2;
        if (v7)
        {
          a2 = -1;
        }

        else
        {
          a2 = 1;
        }

        v7 >>= 1;
        result = v5 >> 1;
      }

      if (a4 + 1 >= a4)
      {
        return mind2vec_two(result, a2, v7, a4 + 1, a5);
      }
    }
  }

  else if ((a4 + 1) <= a5 && a4 + 1 >= a4)
  {
    *a4 = a2 * result;
    return result;
  }

  __break(0x5519u);
  return result;
}

uint64_t mind2vec_two(uint64_t result, __int16 a2, int a3, _WORD *a4, unint64_t a5)
{
  if (result >= 1)
  {
    if (a3)
    {
      if (2 * (result & 0x7FFF) - 1 == a3)
      {
        v5 = a4 + 1;
        if ((a4 + 1) <= a5 && v5 >= a4)
        {
          *a4 = 0;
          v6 = a4 + 2;
          if (v6 <= a5 && v5 <= v6)
          {
            LOWORD(v7) = a2 * result;
LABEL_28:
            *v5 = v7;
            return result;
          }
        }

        goto LABEL_29;
      }

      v5 = a4 + 1;
      if ((a4 + 1) <= a5 && v5 >= a4)
      {
        v10 = a3 - 1;
        *a4 = (result - (((a3 - 1) >> 1) + 1)) * a2;
        v11 = a4 + 2;
        v13 = v11 <= a5 && v5 <= v11;
        if (v10)
        {
          if (v13)
          {
            v7 = ~(v10 >> 1);
            goto LABEL_28;
          }

          goto LABEL_29;
        }

        if (v13)
        {
          *v5 = ((a3 - 1) >> 1) + 1;
          return result;
        }
      }
    }

    else
    {
      v8 = a4 + 1;
      if ((a4 + 1) <= a5 && v8 >= a4)
      {
        *a4 = a2 * result;
        v9 = a4 + 2;
        if (v9 <= a5 && v8 <= v9)
        {
          *v8 = 0;
          return result;
        }
      }
    }

LABEL_29:
    __break(0x5519u);
  }

  return result;
}

uint64_t mind2vec_one(uint64_t result, __int16 a2, uint64_t a3, _WORD *a4, unint64_t a5)
{
  if ((a4 + 1) <= a5 && a4 + 1 >= a4)
  {
    *a4 = a2 * result;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t rc_decode(uint64_t a1, unsigned int a2)
{
  v4 = (a1 + 0x10000);
  v8 = -21846;
  v5 = UL_inverse(a2, &v8);
  v6 = ((v4[763] * v5) >> 32) >> v8;
  v4[764] = v6;
  result = v4[762] / v6;
  if (result > a2)
  {
    result = 0;
    *(a1 + 5168) = 1;
  }

  return result;
}

_DWORD *rc_dec_update(_DWORD *result, int a2, int a3)
{
  v3 = result + 0x4000;
  v4 = result[17148];
  v5 = result[17146] - v4 * a2;
  result[17146] = v5;
  result[17147] = v4 * a3;
  if (!((v4 * a3) >> 24))
  {
    v6 = result;
    do
    {
      *(v3 + 1530) += 8;
      result = rc_dec_read(v6);
      v5 = result + (v5 << 8);
      v3[762] = v5;
      v7 = v3[763];
      v3[763] = v7 << 8;
    }

    while (!BYTE2(v7));
  }

  return result;
}

uint64_t rc_dec_read(uint64_t a1)
{
  v1 = *(a1 + 5160);
  v2 = (*(a1 + 68600) - v1);
  if (v2 > 7)
  {
    LOWORD(v3) = get_next_indice(a1, 8);
  }

  else
  {
    v3 = get_next_indice(a1, (*(a1 + 68600) - v1)) << (8 - v2);
  }

  return v3;
}

uint64_t f_even_exact_div_opt(uint64_t result, unsigned int a2, unsigned int a3, int a4)
{
  v4 = (a4 - 1) ^ a4;
  if (v4 == -1)
  {
    v6 = 31;
  }

  else
  {
    v5 = v4 ^ (v4 >> 31);
    if (v5 > 0x3FFFFFFF)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v7 = v5 >> 29;
        v5 *= 2;
        ++v6;
      }

      while (!v7);
    }
  }

  v8 = &exactdivodd[(a4 - 1) >> (31 - v6)];
  v9 = v8 + 1;
  v11 = v8 < exactdivodd || v9 > tbl_gain_trans_tc || v8 >= v9;
  if (v11)
  {
    __break(0x5519u);
  }

  else
  {
    v12 = *v8;
    v13 = a2 * result;
    v14 = HIDWORD(v13);
    v11 = v13 >= a3;
    v15 = v13 - a3;
    v16 = !v11;
    return v12 * (((2 * (v14 - v16)) << ~(30 - v6)) | (v15 >> (30 - v6)));
  }

  return result;
}

uint64_t get_indice(uint64_t result, int a2, int a3)
{
  if (*(result + 5176) / 50 < a3 + a2)
  {
    v3 = 0;
    *(result + 5168) = 1;
    return v3;
  }

  if (a3 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = a3;
  for (i = (result + 8 + 2 * a2); i >= result + 8 && (i + 1) <= result + 5160 && i <= i + 1; ++i)
  {
    v6 = *i;
    v3 = v6 + 2 * v3;
    if (!--v4)
    {
      return v3;
    }
  }

  __break(0x5519u);
  return result;
}

float *VDQ_vec(float *result, float *a2, unint64_t a3, unint64_t a4, uint64_t a5, unsigned __int16 a6)
{
  v6 = a6 * a5;
  v7 = a6;
  v8 = result;
  v9 = a6;
  do
  {
    v10 = (a3 + 4 * v6);
    v11 = v10 + 1;
    if (v10 < a3 || v11 > a4 || v10 > v11)
    {
      __break(0x5519u);
      return result;
    }

    ++v6;
    *v8++ = *v10;
    --v9;
  }

  while (v9);
  do
  {
    v14 = *a2++;
    *result = v14 + *result;
    ++result;
    --v7;
  }

  while (v7);
  return a5;
}

unint64_t hq_ecu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, float *a12, __int16 *a13, __int16 a14, _WORD *a15, char *a16, unint64_t a17, __int16 a18, unsigned __int16 *a19, unint64_t a20, unint64_t a21, float *a22, float *a23, unsigned __int16 a24, uint64_t a25)
{
  v26 = MEMORY[0x1EEE9AC00](a1);
  v28 = v27;
  v977 = v29;
  v969 = v30;
  __dst = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v26;
  v39 = a24;
  v1011[480] = *MEMORY[0x1E69E9840];
  bzero(v992, 0x500uLL);
  v41 = *v38;
  v40 = v38[1];
  v42 = v38[2];
  LODWORD(v1008[15]) = -1;
  *&v43 = -1;
  *(&v43 + 1) = -1;
  v1008[14] = v43;
  v1008[13] = v43;
  v1008[12] = v43;
  v1008[11] = v43;
  v1008[10] = v43;
  v1008[9] = v43;
  v1008[8] = v43;
  v1008[7] = v43;
  v1008[6] = v43;
  v1008[5] = v43;
  v1008[4] = v43;
  v1008[3] = v43;
  v1008[2] = v43;
  v1008[1] = v43;
  v1008[0] = v43;
  switch(a24)
  {
    case 0x140u:
      LODWORD(v1008[5]) = 0;
      v1008[2] = xmmword_19B35C180;
      v1008[3] = unk_19B35C190;
      v1008[4] = xmmword_19B35C1A0;
      v1008[1] = unk_19B35C170;
      v1008[0] = Asr_LP16;
      v44 = 20;
      v25 = 2;
      break;
    case 0x280u:
      LODWORD(v1008[10]) = 0;
      v1008[6] = xmmword_19B35C11C;
      v1008[7] = unk_19B35C12C;
      v1008[8] = xmmword_19B35C13C;
      v1008[9] = unk_19B35C14C;
      v1008[2] = xmmword_19B35C0DC;
      v1008[3] = unk_19B35C0EC;
      v1008[4] = xmmword_19B35C0FC;
      v1008[5] = unk_19B35C10C;
      v44 = 40;
      v25 = 4;
      v1008[0] = Asr_LP32;
      v1008[1] = unk_19B35C0CC;
      break;
    case 0x3C0u:
      LODWORD(v1008[15]) = 0;
      v1008[12] = xmmword_19B35C088;
      v1008[13] = unk_19B35C098;
      v1008[14] = xmmword_19B35C0A8;
      v1008[8] = xmmword_19B35C048;
      v1008[9] = unk_19B35C058;
      v1008[11] = unk_19B35C078;
      v1008[10] = xmmword_19B35C068;
      v1008[4] = xmmword_19B35C008;
      v1008[5] = unk_19B35C018;
      v1008[7] = unk_19B35C038;
      v1008[6] = xmmword_19B35C028;
      v1008[0] = Asr_LP48;
      v1008[1] = unk_19B35BFD8;
      v44 = 60;
      v25 = 6;
      v1008[3] = unk_19B35BFF8;
      v1008[2] = xmmword_19B35BFE8;
      break;
    default:
      goto LABEL_1543;
  }

  v45 = v41 + 4 * -((a24 & 0xFFF8u) >> 3);
  v46 = (2 * a24);
  if ((v44 >> 1) < v46)
  {
    v47 = 0;
    v48 = v44 >> 1;
    LODWORD(v49) = v44 >> 1;
    while (1)
    {
      v50 = (v45 + 4 * v49);
      v52 = v50 + 1 <= v40 && v50 <= v50 + 1 && v50 >= v42;
      if (!v52)
      {
        goto LABEL_1543;
      }

      v53 = *v50 * 0.0;
      if (v48 >= v44)
      {
        v54 = v44;
      }

      else
      {
        v54 = v49;
      }

      if (v54 >= 1)
      {
        v55 = 1;
        do
        {
          v56 = v1008 + v55;
          v57 = v56 + 1;
          if (v56 < v1008 || v57 > &v1008[15] + 1 || v56 > v57)
          {
            goto LABEL_1543;
          }

          v60 = (v45 + 4 * (v48 - v55));
          v61 = v60 + 1 > v40 || v60 > v60 + 1;
          if (v61 || v60 < v42)
          {
            goto LABEL_1543;
          }

          v53 = v53 + (*v56 * *v60);
          v55 = (v55 + 1);
        }

        while (v55 <= v54);
      }

      v63 = v992 + v47;
      if (v63 < v992 || v63 + 1 > &v993 || v63 > v63 + 1)
      {
        goto LABEL_1543;
      }

      *v63 = v53;
      ++v47;
      LOWORD(v49) = v48 + v25;
      v48 = (v48 + v25);
      if (v48 >= v46)
      {
        goto LABEL_44;
      }
    }
  }

  v47 = 0;
  v48 = v44 >> 1;
  LODWORD(v49) = v44 >> 1;
LABEL_44:
  for (i = (v44 >> 1) + v46; v48 < i; v48 = (v48 + v25))
  {
    v65 = (v49 - v46 + 1);
    v66 = 0.0;
    if (v65 <= v44)
    {
      v67 = (v49 - v46 + 1) + 1;
      v68 = v48 - v65;
      v69 = v1008 + v65;
      do
      {
        v70 = v69 + 1;
        v72 = v69 < v1008 || v70 > &v1008[15] + 1 || v69 > v70;
        v73 = (v45 + 4 * v68);
        v74 = v73 + 1;
        if (v72 || v74 > v40 || v73 > v74 || v73 < v42)
        {
          goto LABEL_1543;
        }

        v78 = *v69++;
        v66 = v66 + (v78 * *v73);
        v385 = (v44 | 1) == v67++;
        --v68;
      }

      while (!v385);
    }

    v49 = v992 + v47;
    v79 = v49 + 1;
    v80 = v49 < v992 || v79 > &v993;
    if (v80 || v49 > v79)
    {
      goto LABEL_1543;
    }

    *v49 = v66;
    ++v47;
    LOWORD(v49) = v48 + v25;
  }

  v987 = v40;
  v978 = (2 * a24);
  v976 = v33;
  v971 = v37;
  v972 = v35;
  v82 = 0;
  v83 = 0;
  v967 = a17;
  v980 = a12;
  v984 = a11;
  v982 = a10;
  v84 = a9;
  v975 = a23;
  v986 = a22;
  v85 = a19;
  LODWORD(v983) = a18;
  v968 = a16;
  v86 = (a25 + 92680);
  v87 = a24 / 0x14u / v25;
  v88 = 6 * v87;
  v89 = 17 * v87;
  v90 = 0.0;
  do
  {
    v91 = v992 + (v82 + 34 * v87);
    v92 = v91 + 1;
    if (v91 < v992 || v92 > &v993 || v91 > v92)
    {
      goto LABEL_1543;
    }

    v90 = v90 + (*v91 * *v91);
    v82 = ++v83;
  }

  while (v88 > v83);
  v95 = 0;
  v96 = 0;
  v97 = 0;
  if (a14 == 1)
  {
    v98 = 2162688;
  }

  else
  {
    v98 = 1835008;
  }

  v99 = (v98 * v87) >> 16;
  v100 = 2 * (v89 & 0x7FFF);
  v101 = 0.0;
  v102 = 0.0;
  v103 = 0.0;
  v104 = 0.0;
  do
  {
    if (v96)
    {
      v105 = v992 + v96;
      v106 = v105 - 1;
      if (v105 - 1 >= v992 && v105 <= &v993 && v106 <= v105)
      {
        v109 = v992 + v95 + v88;
        v110 = v109 - 1;
        if (v109 - 1 >= v992 && v109 <= &v993 && v110 <= v109)
        {
          v111 = 0;
          v112 = 0;
          v104 = (v104 - (*v106 * *v106)) + (*v110 * *v110);
          v113 = 0.0;
          while (1)
          {
            v114 = v992 + v111 + v95;
            v115 = v114 + 1;
            v116 = v114 < v992 || v115 > &v993;
            v117 = v116 || v114 > v115;
            v118 = v992 + v111 + v100;
            v119 = v118 + 1;
            v120 = !v117 && v118 >= v992;
            v121 = !v120 || v119 > &v993;
            if (v121 || v118 > v119)
            {
              break;
            }

            v113 = v113 + (*v114 * *v118);
            v111 = ++v112;
            if (v88 <= v112)
            {
              goto LABEL_135;
            }
          }
        }
      }

      goto LABEL_1543;
    }

    v123 = 0;
    v124 = 0;
    v113 = 0.0;
    v104 = 0.0;
    do
    {
      v125 = v992 + v124;
      v126 = v125 + 1;
      v128 = v125 < v992 || v126 > &v993 || v125 > v126;
      v129 = v992 + v123 + v100;
      v130 = v129 + 1;
      if (v128 || v129 < v992 || v130 > &v993 || v129 > v130)
      {
        goto LABEL_1543;
      }

      v113 = v113 + (*v125 * *v129);
      v104 = v104 + (*v125 * *v125);
      v123 = ++v124;
    }

    while (v88 > v124);
LABEL_135:
    if (v104 <= 0.0)
    {
      v104 = 1.0;
    }

    if (v90 <= 0.0)
    {
      v90 = 1.0;
    }

    if ((v90 * v104) > 0.0)
    {
      v113 = v113 / sqrtf(v90 * v104);
    }

    if (v113 > v103)
    {
      v101 = v113;
      v102 = v113;
      v103 = v113;
      v97 = v96;
    }

    if (!a14)
    {
      v103 = v102;
      if (v102 > 0.95)
      {
        break;
      }
    }

    v95 = ++v96;
  }

  while (v99 > v96);
  v134 = *(a25 + 5176);
  v979 = a24;
  v970 = a15;
  v973 = a13;
  if (!v983 && v134 >= 48000)
  {
    if (*a19 && !a19[1])
    {
      goto LABEL_160;
    }

    if (!a14)
    {
      v135 = v101;
      if ((*v86 <= 0.5 || v135 >= 0.6) && (*v86 >= 0.5 || v135 <= 0.85))
      {
        goto LABEL_160;
      }
    }

LABEL_316:
    LODWORD(v986) = 2 * a24;
    v985 = v41 + 4 * -(a24 >> 3);
    if (v985 >= v42)
    {
      v983 = (a25 + 96622);
      if (a25 + 96622 <= (a25 + 96624))
      {
        v220 = (v100 - v97);
        memset(v1011, 255, 0x800uLL);
        memset(v1010, 255, 0x800uLL);
        bzero(v1006, 0x400uLL);
        memset(v1008, 255, sizeof(v1008));
        bzero(__b, 0x500uLL);
        v977 = v220;
        if (v220 < 1)
        {
LABEL_337:
          v233 = log(v977);
          v234 = ldexp(1.0, vcvtpd_s64_f64(v233 / 0.693147181));
          LODWORD(v997[0]) = 0;
          vDSP_vfill(v997, v1011, 1, v234);
          LODWORD(v997[0]) = 0;
          vDSP_vfill(v997, v1010, 1, v234);
          LODWORD(v1011[0]) = __b[0];
          v235 = __b + 4 * v977;
          v236 = v235 - 4;
          if (v235 - 4 >= __b && v235 <= &__b[80] && v236 <= v235)
          {
            v237 = v1011 + 4 * v234;
            v238 = v237 - 4;
            v239 = v237 - 4 < v1011 || v237 > &v1011[256];
            if (!v239 && v238 <= v237)
            {
              v28 = v977;
              *v238 = *v236;
              if (v234 < 3)
              {
LABEL_370:
                if (v234 <= 0x200)
                {
                  DoRTFTn(v1011);
                  v258 = 0.0;
                  if (v234 < 2)
                  {
LABEL_400:
                    *&v274 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v274 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    __b[31] = v274;
                    __b[30] = v274;
                    __b[29] = v274;
                    __b[28] = v274;
                    __b[27] = v274;
                    __b[26] = v274;
                    __b[25] = v274;
                    __b[24] = v274;
                    __b[23] = v274;
                    __b[22] = v274;
                    __b[21] = v274;
                    __b[20] = v274;
                    __b[19] = v274;
                    __b[18] = v274;
                    __b[17] = v274;
                    __b[16] = v274;
                    __b[15] = v274;
                    __b[14] = v274;
                    __b[13] = v274;
                    __b[12] = v274;
                    __b[11] = v274;
                    __b[10] = v274;
                    __b[9] = v274;
                    __b[8] = v274;
                    __b[7] = v274;
                    __b[6] = v274;
                    __b[5] = v274;
                    __b[4] = v274;
                    __b[3] = v274;
                    __b[2] = v274;
                    __b[1] = v274;
                    __b[0] = v274;
                    *&v275 = -1;
                    *(&v275 + 1) = -1;
                    v997[4] = v275;
                    v997[3] = v275;
                    v997[2] = v275;
                    v997[1] = v275;
                    v997[0] = v275;
                    *&v1004[64] = v275;
                    *&v1004[48] = v275;
                    *&v1004[32] = v275;
                    *&v1004[16] = v275;
                    *v1004 = v275;
                    v995[2] = v275;
                    v995[1] = v275;
                    v995[0] = v275;
                    if (a14)
                    {
                      v276 = 0;
                    }

                    else
                    {
                      v276 = v977 <= 80;
                    }

                    v277 = !v276;
                    v994 = v275;
                    v993 = v275;
                    if (v977 < 6)
                    {
LABEL_519:
                      LODWORD(v1001[0]) = 0;
                      vDSP_vfill(v1001, v1008, 1, v978);
LABEL_1417:
                      v891 = v25 * v977;
                      memset(v997, 255, sizeof(v997));
                      memset(__b, 255, sizeof(__b));
                      LODWORD(v981) = 3 * v979;
                      v984 = (3 * v979) / 0x14uLL;
                      v980 = (v985 + 4 * v986 + 4 * -v984);
                      v892 = &v980[-(v25 * v977)];
                      if (v892 >= v985)
                      {
                        if (v891 < 1 || v987 >= v892 && (v893 = 4 * v891, v893 <= v987 - v892) && v891 < 0x661 && (v25 = __b, memmove(__b, v892, 4 * v891), (__b + v893) >= __b))
                        {
                          v25 = &v1009;
                          v894 = v891 - v979;
                          if (v891 >= v979)
                          {
                            v907 = v979;
                            v908 = __b;
                            while (1)
                            {
                              v909 = v894;
                              v910 = __b + 4 * v894;
                              v911 = v910 + 4;
                              v912 = v910 < __b || v911 > v997;
                              v913 = v912 || v910 > v911;
                              v914 = v1008 + 4 * v909;
                              v915 = v914 + 4;
                              v916 = !v913 && v914 >= v1008;
                              v917 = !v916 || v915 > &v1009;
                              v918 = v917 || v914 > v915;
                              v919 = v908 + 1;
                              v920 = !v918 && v908 >= __b;
                              v921 = !v920 || v919 > v997;
                              if (v921 || v908 > v919)
                              {
                                break;
                              }

                              *v908++ = *(__b + v909) - *(v1008 + v909);
                              v894 = v909 + 1;
                              if (!--v907)
                              {
                                v906 = v979;
LABEL_1472:
                                LODWORD(v982) = v906 / 2;
                                if (a14 && v891 >= 1)
                                {
                                  v923 = 4 * v891;
                                  v924 = __b;
                                  while (1)
                                  {
                                    v925 = v924 + 1;
                                    v926 = v924 < __b || v925 > v997;
                                    if (v926 || v924 > v925)
                                    {
                                      goto LABEL_1543;
                                    }

                                    *v924 = *v924 * 0.25;
                                    ++v924;
                                    v923 -= 4;
                                    if (!v923)
                                    {
                                      goto LABEL_1485;
                                    }
                                  }
                                }

                                goto LABEL_1485;
                              }
                            }
                          }

                          else if (v891 <= 0)
                          {
                            LODWORD(v982) = -((-v891 & 0xFFFEu) >> 1);
LABEL_1485:
                            v928 = 0;
                            v929 = 0;
                            v28 = v982;
                            v930 = __b + 4 * v982;
                            while (1)
                            {
                              v931 = (31821 * *v983 + 13849);
                              *v983 = 31821 * *v983 + 13849;
                              v932 = vcvts_n_f32_s32(v931, 0xFuLL);
                              v933 = (v932 * 0.2) + 0.5;
                              v934 = (v932 * 0.3) + 0.7;
                              if (!v929)
                              {
                                v934 = v933;
                              }

                              v935 = (v934 * v28);
                              if (v935 > 0x1E0)
                              {
                                break;
                              }

                              sinq((v934 * v28), v997, 3.1416 / (2 * ((v934 * v28) & 0x7FFFu)), 3.1416 / (4 * ((v934 * v28) & 0x3FFFu)));
                              if (v935)
                              {
                                v936 = 0;
                                v937 = __b + 4 * (v982 - v935);
                                v938 = 4 * v935;
                                v939 = v997;
                                v940 = v986;
                                while (1)
                                {
                                  if (v940 > v928)
                                  {
                                    v941 = &v937[v936];
                                    if (&v937[v936] < __b)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v941 + 1 > v997)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v941 > v941 + 1)
                                    {
                                      goto LABEL_1543;
                                    }

                                    v942 = &v930[v936];
                                    if (&v930[v936] < __b)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v942 + 1 > v997)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v942 > v942 + 1)
                                    {
                                      goto LABEL_1543;
                                    }

                                    v943 = v939 + v938;
                                    v944 = (v939 + v938 - 4);
                                    if (v944 < v997)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v943 > v998)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v944 > v943)
                                    {
                                      goto LABEL_1543;
                                    }

                                    v945 = v1008 + v928;
                                    if (v945 < v1008 || v945 + 1 > &v1009 || v945 > v945 + 1)
                                    {
                                      goto LABEL_1543;
                                    }

                                    *v945 = *v945 + ((*v942 * *v944) + (*v941 * *(v997 + v936)));
                                  }

                                  ++v928;
                                  v936 += 4;
                                  v939 = (v939 - 4);
                                  if (v938 == v936)
                                  {
                                    goto LABEL_1508;
                                  }
                                }
                              }

                              v940 = v986;
LABEL_1508:
                              v929 ^= 1u;
                              if (v940 <= v928)
                              {
                                if (v979 <= 0xC86)
                                {
                                  v946 = 7 * v979 / 0x14u;
                                  v28 = v979;
                                  sinq(v984, v997, 3.1416 / ((2 * (v981 & 0x7FFF)) / 20.0), 3.1416 / ((4 * (v981 & 0x3FFF)) / 20.0));
                                  v947 = v986;
                                  v948 = 0;
                                  LOWORD(v949) = 0;
                                  v950 = 37 * v979 / 0x14u;
                                  while (1)
                                  {
                                    v951 = v997 + v949;
                                    v952 = v951 + 1;
                                    v953 = v951 < v997 || v952 > v998;
                                    if (v953 || v951 > v952)
                                    {
                                      break;
                                    }

                                    v955 = (v985 + 4 * (v948 + v950));
                                    if (v955 < v985)
                                    {
                                      break;
                                    }

                                    if (v955 + 1 > v987)
                                    {
                                      break;
                                    }

                                    if (v955 > v955 + 1)
                                    {
                                      break;
                                    }

                                    v949 = v949;
                                    v956 = v1008 + 4 * v949;
                                    if (v956 < v1008 || v956 + 4 > &v1009 || v956 > v956 + 4)
                                    {
                                      break;
                                    }

                                    *(v1008 + v949) = ((*v951 * *v951) * *(v1008 + v949)) + (*v955 * (1.0 - (*v951 * *v951)));
                                    LOWORD(v949) = v949 + 1;
                                    v948 = v949;
                                    if (v984 <= v949)
                                    {
                                      v957 = v1008 + 4 * v946;
                                      if (v957 >= v1008)
                                      {
                                        if ((v947 - v946) < 1 || v957 <= &v1009 && (v958 = 4 * ((v947 - v946) & 0x7FFFu), v958 <= 0x1E00) && 7680 - 4 * v946 >= v958 && (memmove(v1008 + 4 * v946, v1008, v958), &v957[v958] >= v957))
                                        {
                                          v959 = v1008 + 4 * v979;
                                          if (v959 >= v1008)
                                          {
                                            if (!v979)
                                            {
                                              goto LABEL_1544;
                                            }

                                            if (v967 >= v968 && v959 <= &v1009)
                                            {
                                              v960 = 4 * (v979 & 0x3FFF);
                                              if (7680 - 4 * v979 >= v960 && v967 - v968 >= v960)
                                              {
                                                memmove(v968, v959, 4 * (v979 & 0x3FFF));
                                                if (&v968[v960] >= v968)
                                                {
                                                  v961 = &v980[-v946];
                                                  if (v961 >= v985)
                                                  {
                                                    if (v979 < 3)
                                                    {
                                                      goto LABEL_1545;
                                                    }

                                                    if (v987 >= v961)
                                                    {
                                                      v962 = 4 * v946;
                                                      if (v987 - v961 >= v962)
                                                      {
                                                        memmove(v1008, v961, 4 * v946);
                                                        if ((v1008 + v962) >= v1008)
                                                        {
                                                          goto LABEL_1545;
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }

                                      goto LABEL_1543;
                                    }
                                  }
                                }

                                goto LABEL_1543;
                              }
                            }
                          }

                          else
                          {
                            v895 = 4 * v891;
                            v896 = __b;
                            v897 = v1008;
                            while (1)
                            {
                              v898 = v896 + 1;
                              v899 = v896 < __b || v898 > v997;
                              v900 = v899 || v896 > v898;
                              v901 = v897 + 1;
                              v902 = !v900 && v897 >= v1008;
                              v903 = !v902 || v901 > &v1009;
                              if (v903 || v897 > v901)
                              {
                                break;
                              }

                              v905 = *v897++;
                              *v896 = *v896 - v905;
                              ++v896;
                              v895 -= 4;
                              if (!v895)
                              {
                                v906 = v891;
                                goto LABEL_1472;
                              }
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      v278 = 0;
                      v279 = 0;
                      LODWORD(v280) = 0;
                      v281 = ((v977 + ((v977 & 0x8000) >> 15)) << 16 >> 17) - 3;
                      v282 = &v1006[2];
                      if (v277)
                      {
                        v283 = 3;
                      }

                      else
                      {
                        v283 = 2;
                      }

                      v284 = 0.0;
                      v285 = __b;
                      while (1)
                      {
                        v286 = &v1006[2 * v280];
                        v287 = v286 + 1;
                        v288 = v286 < v1006 || v287 > &v1006[512];
                        if (v288 || v286 > v287)
                        {
                          break;
                        }

                        v290 = *v286;
                        if (*v286 <= v284 || v290 <= *v282)
                        {
                          v282 = v286 + 2;
                          v292 = v286 + 3;
                          if (v286 + 2 < v1006 || v292 > &v1006[512] || v282 > v292)
                          {
                            goto LABEL_1543;
                          }
                        }

                        else
                        {
                          v295 = v278 + v277;
                          if (v278 + v277 >= v280)
                          {
                            while (1)
                            {
                              v296 = v285 + 1;
                              v297 = v285 < __b || v296 > &__b[32];
                              if (v297 || v285 > v296)
                              {
                                goto LABEL_1543;
                              }

                              *v285 = v280;
                              ++v279;
                              LODWORD(v280) = v280 + 1;
                              ++v285;
                              if (v295 < v280)
                              {
                                goto LABEL_442;
                              }
                            }
                          }

                          v296 = v285;
LABEL_442:
                          v280 = &v1006[2 * v295];
                          if (v280 < v1006)
                          {
                            goto LABEL_1543;
                          }

                          if (v280 + 4 > &v1006[512])
                          {
                            goto LABEL_1543;
                          }

                          if (v280 > v280 + 4)
                          {
                            goto LABEL_1543;
                          }

                          v282 = &v1006[2 * v278 + 2 * v283];
                          if (v282 < v1006 || v282 + 1 > &v1006[512] || v282 > v282 + 1)
                          {
                            goto LABEL_1543;
                          }

                          v290 = *v280;
                          v285 = v296;
                          LOWORD(v280) = v278 + v277;
                        }

                        v278 = (v280 + 1);
                        LODWORD(v280) = v278;
                        v284 = v290;
                        if (v278 > v281)
                        {
                          if (v279 >= 20)
                          {
                            v299 = 20;
                          }

                          else
                          {
                            v299 = v279;
                          }

                          if (v279 < 1)
                          {
                            goto LABEL_519;
                          }

                          v300 = 0;
                          v301 = 0;
                          v984 = &v997[5];
                          v981 = &v1004[80];
                          v302 = 1.0 / (v234 >> 1);
                          v982 = __b;
                          v303 = 0.0;
LABEL_455:
                          v304 = __b;
                          v305 = v279;
                          v306 = 0.0;
                          while (1)
                          {
                            v307 = v304 + 1;
                            v308 = v304 < __b || v307 > &__b[32];
                            if (v308 || v304 > v307)
                            {
                              goto LABEL_1543;
                            }

                            v310 = &v1006[2 * *v304];
                            v311 = v310 + 1;
                            v312 = v310 < v1006 || v311 > &v1006[512];
                            if (v312 || v310 > v311)
                            {
                              goto LABEL_1543;
                            }

                            if (*v310 > v306)
                            {
                              v306 = *v310;
                              v301 = *v304;
                            }

                            ++v304;
                            if (!--v305)
                            {
                              v314 = &v1006[2 * v301];
                              v315 = v314 + 1;
                              if (v314 >= v1006 && v315 <= &v1006[512] && v314 <= v315)
                              {
                                v303 = v303 + *v314;
                                if (a14 || v303 < v258)
                                {
                                  v318 = v1011 + 4 * v301;
                                  v319 = v318 + 4;
                                  v321 = v318 < v1011 || v319 > &v1011[256] || v318 > v319;
                                  v322 = v997 + v300;
                                  v323 = v322 + 1;
                                  if (v321 || v322 < v997 || v323 > v984 || v322 > v323)
                                  {
                                    goto LABEL_1543;
                                  }

                                  *v322 = v302 * *(v1011 + v301);
                                  v327 = v1010 + v301;
                                  v328 = v327 + 1;
                                  v329 = v327 < v1010 || v328 > &v1010[256];
                                  v330 = v329 || v327 > v328;
                                  v331 = &v1004[4 * v300];
                                  v332 = v331 + 4;
                                  v333 = !v330 && v331 >= v1004;
                                  v334 = !v333 || v332 > v981;
                                  if (v334 || v331 > v332)
                                  {
                                    goto LABEL_1543;
                                  }

                                  *&v1004[4 * v300] = v302 * *v327;
                                  v336 = &v993 + 4 * v300;
                                  if (v336 < &v993 || v336 + 4 > v982 || v336 > v336 + 4)
                                  {
                                    goto LABEL_1543;
                                  }

                                  *(&v993 + v300++) = (v301 + v301) / v28;
                                  *v314 = -1.0;
                                  if (v300 != v299)
                                  {
                                    goto LABEL_455;
                                  }
                                }

                                else
                                {
                                  v848 = v1011 + 4 * v301;
                                  v849 = v848 + 4;
                                  v851 = v848 < v1011 || v849 > &v1011[256] || v848 > v849;
                                  v852 = v997 + v300;
                                  v853 = v852 + 1;
                                  if (v851 || v852 < v997 || v853 > v984 || v852 > v853)
                                  {
                                    goto LABEL_1543;
                                  }

                                  *v852 = v302 * *(v1011 + v301);
                                  v857 = v1010 + v301;
                                  v858 = v857 + 1;
                                  v859 = v857 < v1010 || v858 > &v1010[256];
                                  v860 = v859 || v857 > v858;
                                  v861 = &v1004[4 * v300];
                                  v862 = v861 + 4;
                                  v863 = !v860 && v861 >= v1004;
                                  v864 = !v863 || v862 > v981;
                                  if (v864 || v861 > v862)
                                  {
                                    goto LABEL_1543;
                                  }

                                  *&v1004[4 * v300] = v302 * *v857;
                                  v866 = &v993 + v300;
                                  if (v866 < &v993 || v866 + 1 > v982 || v866 > v866 + 1)
                                  {
                                    goto LABEL_1543;
                                  }

                                  *v866 = (v301 + v301) / v28;
                                  v299 = v300 + 1;
                                }

                                LODWORD(v1001[0]) = 0;
                                vDSP_vfill(v1001, v1008, 1, v978);
                                if (v299 < 1)
                                {
                                  goto LABEL_1417;
                                }

                                v867 = 0;
                                v28 = v25;
                                v980 = v1008 + 1;
                                v868 = (v979 & 0x7FFF) - 1;
                                v869 = v299;
                                v870 = v1008 + v978;
LABEL_1384:
                                v871 = &v993 + 4 * v867;
                                v872 = (v871 + 4);
                                if (v871 >= &v993 && v872 <= v982 && v871 <= v872)
                                {
                                  v875 = __sincos_stret(((*(&v993 + v867) * 3.1416) / v28));
                                  v876 = v997 + 4 * v867;
                                  if (v876 >= v997 && (v876 + 4) <= v984 && v876 <= v876 + 4)
                                  {
                                    v877 = &v1004[4 * v867];
                                    if (v877 >= v1004 && (v877 + 1) <= v981 && v877 <= v877 + 1 && v979 <= 0x3C0 && v978 > 0)
                                    {
                                      LOWORD(v878) = 0;
                                      cosval = v875.__cosval;
                                      v880 = *(v997 + v867);
                                      sinval = v875.__sinval;
                                      v882 = *v877;
                                      *v1008 = v880 + *v1008;
                                      v883 = v980;
                                      while (1)
                                      {
                                        v884 = v883 + 1;
                                        v885 = v883 < v1008 || v884 > v870;
                                        if (v885 || v883 > v884)
                                        {
                                          break;
                                        }

                                        v887 = (v880 * cosval) - (v882 * sinval);
                                        *v883 = v887 + *v883;
                                        v883 += 2;
                                        if (v883 > v870 || v884 > v883)
                                        {
                                          break;
                                        }

                                        v889 = (v880 * sinval) + (v882 * cosval);
                                        v882 = (v887 * sinval) + (v889 * cosval);
                                        v880 = (v887 * cosval) - (v889 * sinval);
                                        *v884 = v880 + *v884;
                                        v878 = (v878 + 1);
                                        if (v878 >= v868)
                                        {
                                          if (v883 + 1 > v870 || v883 > v883 + 1)
                                          {
                                            goto LABEL_1543;
                                          }

                                          *v883 = ((v880 * cosval) - (v882 * sinval)) + *v883;
                                          if (++v867 != v869)
                                          {
                                            goto LABEL_1384;
                                          }

                                          goto LABEL_1417;
                                        }
                                      }
                                    }
                                  }
                                }
                              }

                              goto LABEL_1543;
                            }
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    v259 = 0;
                    while (1)
                    {
                      v260 = v1011 + v259 + 4;
                      v261 = (v1011 + v259) < v1011 || v260 > &v1011[256];
                      v262 = v261 || v1011 + v259 > v260;
                      v263 = v1010 + v259;
                      v264 = v1010 + v259 + 4;
                      v265 = !v262 && v263 >= v1010;
                      v266 = !v265 || v264 > &v1010[256];
                      v267 = v266 || v263 > v264;
                      v268 = &v1006[v259 / 2];
                      v269 = &v1006[v259 / 2 + 2];
                      v270 = !v267 && v268 >= v1006;
                      v271 = !v270 || v269 > &v1006[512];
                      if (v271 || v268 > v269)
                      {
                        break;
                      }

                      v273 = sqrtf((*(v1010 + v259) * *(v1010 + v259)) + (*(v1011 + v259) * *(v1011 + v259)));
                      *&v1006[v259 / 2] = v273;
                      v258 = v258 + v273;
                      v259 += 4;
                      if (4 * (v234 >> 1) == v259)
                      {
                        v258 = v258 * 0.7;
                        goto LABEL_400;
                      }
                    }
                  }
                }
              }

              else
              {
                v241 = (v28 + -1.0) / (v234 + -1.0);
                v242 = 1;
                while (1)
                {
                  v243 = v242;
                  v244 = vcvtms_s32_f32(v241 * v243);
                  v245 = __b + v244;
                  v246 = v245 + 1;
                  v247 = v245 < __b || v246 > &__b[80];
                  if (v247 || v245 > v246)
                  {
                    break;
                  }

                  v250 = *v245;
                  v249 = v245 + 2;
                  v251 = v250;
                  v252 = v249 > &__b[80] || v246 > v249;
                  v253 = v1011 + v242;
                  v254 = v253 + 1;
                  v255 = !v252 && v253 >= v1011;
                  v256 = !v255 || v254 > &v1011[256];
                  if (v256 || v253 > v254)
                  {
                    break;
                  }

                  *v253 = v251 + (-(v244 - (v243 * v241)) * (*v246 - v251));
                  if (v234 - 1 <= ++v242)
                  {
                    goto LABEL_370;
                  }
                }
              }
            }
          }
        }

        else
        {
          v221 = 0;
          v222 = 4 * v977;
          v223 = (v992 - v222);
          while (1)
          {
            v224 = &v223[v221 / 4 + 296];
            v225 = &v223[v221 / 4 + 297];
            v226 = v224 < v992 || v225 > &v993;
            v227 = v226 || v224 > v225;
            v228 = __b + v221;
            v229 = __b + v221 + 4;
            v230 = !v227 && v228 >= __b;
            v231 = !v230 || v229 > &__b[80];
            if (v231 || v228 > v229)
            {
              break;
            }

            *(__b + v221) = *v224;
            v221 += 4;
            if (v222 == v221)
            {
              goto LABEL_337;
            }
          }
        }
      }
    }

    goto LABEL_1543;
  }

  if (v134 <= 47999 && (a14 || v101 > 0.85) && !v983 && (!*a19 || a19[1]))
  {
    goto LABEL_316;
  }

LABEL_160:
  v967 = *(a25 + 5242);
  LODWORD(v995[0]) = -1;
  *&v136 = -1;
  *(&v136 + 1) = -1;
  v994 = v136;
  v993 = v136;
  *&v988 = NAN;
  memset(__b, 255, 0x1800uLL);
  v1002 = -1;
  *&v137 = -1;
  *(&v137 + 1) = -1;
  v1001[1] = v137;
  v1001[0] = v137;
  v999 = -1;
  v998[1] = v137;
  v998[0] = v137;
  v138 = (1717986919 * (8 * a24)) >> 33;
  v139 = v41 + 4 * (2 * a24);
  LODWORD(v968) = a24 << 11;
  v981 = a9;
  v140 = v983;
  if (!v983)
  {
    v25 = v976;
    *v976 = 0;
LABEL_168:
    v966 = (1717986919 * (8 * a24)) >> 33;
    v146 = v139 + 4 * -v138;
    v147 = (v146 - 4 * v140);
    if (v147 < v42)
    {
      goto LABEL_1543;
    }

    trans_ana(v147, v987, &v993, v995 + 4, &v988, a20, a21, a24, v28, v140, *a13, v1001, v998, v975, v986);
    v148 = (v146 - 4 * *v25);
    if (v148 < v42)
    {
      goto LABEL_1543;
    }

    v149 = v25;
    v965 = a19;
    memset(v1008, 255, 0x1800uLL);
    *&v989 = NAN;
    *&v990 = NAN;
    if (a24 == 960)
    {
      v150 = 0;
      v25 = &v1008[384];
      v151 = &w_hamm_sana48k_2;
      v152 = &w_hamm_sana32k_2;
      v153 = 288;
      v154 = 288;
    }

    else
    {
      v152 = gwlpr;
      if (a24 == 640)
      {
        v152 = &w_hamm_sana16k_2;
        v151 = &w_hamm_sana32k_2;
      }

      else
      {
        v151 = &w_hamm_sana16k_2;
      }

      if (a24 == 640)
      {
        v154 = 192;
      }

      else
      {
        v154 = 96;
      }

      if (a24 == 640)
      {
        v150 = 10;
      }

      else
      {
        v150 = 9;
      }

      if (a24 == 640)
      {
        v153 = 192;
      }

      else
      {
        v153 = 96;
      }

      if (v151 > v152)
      {
        goto LABEL_1543;
      }

      v25 = &v1008[384];
    }

    if (v148 > v987)
    {
      goto LABEL_1543;
    }

    if (v152 - v151 < v153)
    {
      goto LABEL_1543;
    }

    if (v153 > v987 - v148)
    {
      goto LABEL_1543;
    }

    v155 = 0;
    v156 = (1717986919 * v968) >> 41;
    v157 = (0x3333333380 * v968) >> 48;
    v985 = ((((((1717986919 * v968) >> 32) >> 9) + (((((1717986919 * v968) >> 32) >> 9) & 0x8000) >> 15)) << 16) >> 17);
    v158 = v985 + 1;
    v159 = v154;
    do
    {
      *(v1008 + v155 * 4) = v148[v155] * v151[v155];
      ++v155;
    }

    while (v154 != v155);
    v160 = &v148[v153];
    if (v160 < v148)
    {
      goto LABEL_1543;
    }

    v161 = &v1008[v153 / 4];
    if (v161 < v1008)
    {
      goto LABEL_1543;
    }

    if ((v156 - 2 * v154) >= 1)
    {
      v964 = v156;
      if (&v1008[384] < v161)
      {
        goto LABEL_1543;
      }

      if (v160 > v987)
      {
        goto LABEL_1543;
      }

      v162 = 4 * (v156 - 2 * v154);
      if (v162 > v987 - v160)
      {
        goto LABEL_1543;
      }

      if (v162 > &v1008[384] - v161)
      {
        goto LABEL_1543;
      }

      v163 = v157;
      v164 = v158;
      v165 = v154;
      v166 = v150;
      memmove(&v1008[v153 / 4], v160, v162);
      v52 = &v161[v162] >= v161;
      v149 = v976;
      v150 = v166;
      v159 = v165;
      v158 = v164;
      LODWORD(v157) = v163;
      LODWORD(v156) = v964;
      if (!v52)
      {
        goto LABEL_1543;
      }
    }

    v167 = v1008 + 4 * v157 + -4 * v153;
    if (v167 > &v1008[384])
    {
      goto LABEL_1543;
    }

    if (v1008 > v167)
    {
      goto LABEL_1543;
    }

    v168 = &v148[v157 - v153];
    if (v168 < v148 || v168 > v987 || (&v1008[384] - v167) >> 2 < v153 || v153 > v987 - v168)
    {
      goto LABEL_1543;
    }

    v169 = 0;
    v170 = &v151[v159];
    v171 = 4 * v157 - 4 * v153;
    v172 = v979;
    do
    {
      v173 = &v170[v169];
      v174 = &v170[v169 - 1];
      if (v174 < v151 || v173 > &v151[v153] || v174 > v173)
      {
        goto LABEL_1543;
      }

      v177 = *v168++;
      *(v1008 + v171) = v177 * *v174;
      --v169;
      v171 += 4;
    }

    while (4 * v153 + v169 * 4);
    if (v172 == 960)
    {
      v1011[0] = v1008;
      v1011[1] = &v1008[384];
      v1011[2] = v1008;
      v1010[0] = v1008;
      v1010[1] = &v1008[384];
      v1010[2] = v1008;
      fft3(v1011);
    }

    else
    {
      if (v156 > 1536 || (v157 & 0x80000000) != 0)
      {
        goto LABEL_1543;
      }

      fft_rel(v1008, v156, v150);
    }

    v178 = &inner_frame_tbl[v967];
    if (v178 < inner_frame_tbl || v178 + 1 > GEWB2_Ave || v178 > v178 + 1)
    {
      goto LABEL_1543;
    }

    if (*v178 < v979)
    {
      v179 = v1008 + ((0x800000 << v967 >> 16) | 1);
      if (v179 < v1008)
      {
        goto LABEL_1543;
      }

      LODWORD(v1011[0]) = 0;
      vDSP_vfill(v1011, v179, 1, ((-256 << v967) + v156));
    }

    if (v156 >= 1)
    {
      if (v969 < __dst)
      {
        goto LABEL_1543;
      }

      v180 = (4 * v156);
      if (&v1008[384] - v1008 < v180)
      {
        goto LABEL_1543;
      }

      if (v969 - __dst < v180)
      {
        goto LABEL_1543;
      }

      memmove(__dst, v1008, (4 * v156));
      if (__dst + v180 < __dst)
      {
        goto LABEL_1543;
      }
    }

    if (v156 > 1536 || (v157 & 0x80000000) != 0)
    {
      goto LABEL_1543;
    }

    fft_spec2(v1008, v156);
    if (v156 >= -1)
    {
      v181 = v158;
      v182 = v1008;
      do
      {
        v183 = v182 + 1;
        v184 = v182 < v1008 || v183 > &v1008[384];
        if (v184 || v182 > v183)
        {
          goto LABEL_1543;
        }

        *v182 = sqrtf(*v182);
        ++v182;
      }

      while (--v181);
    }

    if (v157 > 0xBFF)
    {
      goto LABEL_1543;
    }

    maximum(v1008, v158, &v990);
    minimum(v1008, v158, &v989);
    v186 = *&v989;
    v28 = *&v990;
    v991 = NAN;
    memset(v1010, 255, 0xC00uLL);
    memset(v1011, 255, 0xC04uLL);
    memset(v997, 255, 0x604uLL);
    memset(v1006, 170, sizeof(v1006));
    memset(v1004, 170, sizeof(v1004));
    v187 = v977;
    if (v156 < -1 || v158 > 0x301 || (v985 & 0x8000) != 0 || v985 > (4 * v158 - 4) >> 2)
    {
      goto LABEL_1543;
    }

    if (v156 >= 2)
    {
      v188 = v1008 + 1;
      v189 = v985;
      v190 = v1010;
      do
      {
        *v190++ = *v188 - *(v188 - 1);
        ++v188;
        --v189;
      }

      while (v189);
    }

    v191 = v1008 + 4 * v158;
    if (v158 < 2)
    {
      LODWORD(v1011[0]) = v1008[0];
      v197 = &v1006[1];
      v1006[0] = 0;
    }

    else
    {
      v192 = v985;
      v193 = v1010;
      do
      {
        v194 = v193 + 1;
        if (v193 < v1010 || v194 > &v1010[384] || v193 > v194)
        {
          goto LABEL_1543;
        }

        if (*v193 == 0.0)
        {
          *v193 = -1.0e-12;
        }

        ++v193;
        --v192;
      }

      while (v192);
      LODWORD(v1011[0]) = v1008[0];
      v197 = &v1006[1];
      v1006[0] = 0;
      if (v156 >= 4)
      {
        v198 = 0;
        if (v985 <= 2)
        {
          v199 = 2;
        }

        else
        {
          v199 = v985;
        }

        v200 = 4 * v199 - 4;
        v201 = 1;
        v202 = 1;
        while (1)
        {
          v203 = (v1010 + v198 + 4);
          v204 = (&v1010[1] + v198);
          v205 = (v1010 + v198) < v1010 || v204 > &v1010[384];
          if (v205 || v203 > v204)
          {
            goto LABEL_1543;
          }

          if ((*(v1010 + v198) * *v203) < 0.0)
          {
            v207 = &v1006[v202];
            if (v207 < v1006)
            {
              goto LABEL_1543;
            }

            if (v207 + 1 > v1007)
            {
              goto LABEL_1543;
            }

            if (v207 > v207 + 1)
            {
              goto LABEL_1543;
            }

            *v207 = v201;
            v208 = v1008 + v198 + 4;
            if (v208 < v1008)
            {
              goto LABEL_1543;
            }

            v209 = v1008 + v198 + 8;
            if (v209 > v191)
            {
              goto LABEL_1543;
            }

            if (v208 > v209)
            {
              goto LABEL_1543;
            }

            v210 = v1011 + v202;
            if (v210 < v1011 || v210 + 1 > &v1011[384] + 1 || v210 > v210 + 1)
            {
              goto LABEL_1543;
            }

            ++v202;
            *v210 = *v208;
          }

          ++v201;
          v198 += 4;
          if (v200 == v198)
          {
            goto LABEL_290;
          }
        }
      }
    }

    v202 = 1;
LABEL_290:
    v211 = &v1006[v202];
    if (v211 < v1006)
    {
      goto LABEL_1543;
    }

    if (v211 + 1 > v1007)
    {
      goto LABEL_1543;
    }

    if (v211 > v211 + 1)
    {
      goto LABEL_1543;
    }

    v212 = v985;
    *v211 = v985;
    v213 = v1008 + v212;
    if (v213 < v1008)
    {
      goto LABEL_1543;
    }

    if (v213 + 1 > v191)
    {
      goto LABEL_1543;
    }

    if (v213 > v213 + 1)
    {
      goto LABEL_1543;
    }

    v214 = v1011 + v202;
    if (v214 < v1011)
    {
      goto LABEL_1543;
    }

    if (v214 + 1 > &v1011[384] + 1)
    {
      goto LABEL_1543;
    }

    if (v214 > v214 + 1)
    {
      goto LABEL_1543;
    }

    *v214 = *v213;
    v215 = (v202 + 1);
    if (v215 > 0x301)
    {
      goto LABEL_1543;
    }

    v28 = (v28 - v186) * 0.03;
    minimum(v1011, (v202 + 1), &v991);
    if (v215 < 3)
    {
      v217 = v1011 + (*v1011 <= *(v1011 + 1));
      v84 = v981;
      if (v217 < v1011 || v217 + 1 > &v1011[384] + 1 || v217 > v217 + 1)
      {
        goto LABEL_1543;
      }

      LODWORD(v997[0]) = *v217;
      if (*v997 <= (v28 + v991))
      {
        v219 = 0;
      }

      else
      {
        v218 = &v1006[*v1011 <= *(v1011 + 1)];
        if (v218 < v1006 || v218 + 1 > v1007 || v218 > v218 + 1 || v981 + 2 > v982 || v981 + 2 < v981)
        {
          goto LABEL_1543;
        }

        *v981 = *v218;
        v219 = 1;
      }

      *v187 = v219;
      goto LABEL_609;
    }

    if (*v1011 >= *(v1011 + 1))
    {
      v216 = -1;
      v84 = v981;
      if (*(v1011 + 1) < *&v1011[1])
      {
        goto LABEL_303;
      }
    }

    else
    {
      v216 = 0;
      v84 = v981;
      if (*(v1011 + 1) >= *&v1011[1])
      {
LABEL_303:
        v197 = v1006;
        ++v202;
LABEL_522:
        v337 = 0;
        v338 = 0;
        v339 = 0;
        v340 = v991;
        *v187 = 0;
        v341 = v202 - 1;
        v342 = v340;
        v343 = v340;
        while (1)
        {
          v344 = v216 + 1;
          if (v339)
          {
            v342 = v340;
          }

          if (v341 == v344)
          {
            break;
          }

          v345 = v1011 + v344;
          v346 = v345 + 1;
          if (v345 < v1011 || v346 > &v1011[384] + 1 || v345 > v346)
          {
            goto LABEL_1543;
          }

          if (*v345 > v342 && *v345 > (v28 + v343))
          {
            v338 = v216 + 1;
            v342 = *v345;
          }

          v216 += 2;
          v349 = v1011 + v216;
          if (v349 < v1011 || v349 + 1 > &v1011[384] + 1 || v349 > v349 + 1)
          {
            goto LABEL_1543;
          }

          v350 = *v349;
          if (v342 <= (v28 + *v349))
          {
            v339 = 0;
            if (v350 >= v343)
            {
              v350 = v343;
            }
          }

          else
          {
            v351 = &v1004[2 * v337];
            if (v351 < v1004)
            {
              goto LABEL_1543;
            }

            if (v351 + 2 > v1005)
            {
              goto LABEL_1543;
            }

            if (v351 > v351 + 2)
            {
              goto LABEL_1543;
            }

            *&v1004[2 * v337] = v338;
            v352 = v997 + v337;
            if (v352 < v997 || v352 + 1 > &v997[96] + 1 || v352 > v352 + 1)
            {
              goto LABEL_1543;
            }

            *v352 = v342;
            *v187 = ++v337;
            v339 = 1;
          }

          v343 = v350;
          if (v341 <= v216)
          {
            goto LABEL_551;
          }
        }

        v339 = 0;
        v350 = v343;
LABEL_551:
        v353 = v1011 + v341;
        v354 = v353 + 1;
        if (v353 < v1011 || v354 > &v1011[384] + 1 || v353 > v354)
        {
          goto LABEL_1543;
        }

        v357 = *v353;
        v358 = v28 + v350;
        if (*v353 <= v342 || v357 <= v358)
        {
          if (v339 || v342 <= v340)
          {
            goto LABEL_582;
          }

          v360 = &v1004[2 * v337];
          if (v360 < v1004)
          {
            goto LABEL_1543;
          }

          if (v360 + 2 > v1005)
          {
            goto LABEL_1543;
          }

          if (v360 > v360 + 2)
          {
            goto LABEL_1543;
          }

          *&v1004[2 * v337] = v338;
          v361 = v997 + v337;
          if (v361 < v997 || v361 + 1 > &v997[96] + 1 || v361 > v361 + 1)
          {
            goto LABEL_1543;
          }

          *v361 = v342;
        }

        else
        {
          v362 = &v1004[2 * v337];
          if (v362 < v1004)
          {
            goto LABEL_1543;
          }

          if (v362 + 2 > v1005)
          {
            goto LABEL_1543;
          }

          if (v362 > v362 + 2)
          {
            goto LABEL_1543;
          }

          *&v1004[2 * v337] = v202 - 1;
          v363 = v997 + v337;
          if (v363 < v997 || v363 + 1 > &v997[96] + 1 || v363 > v363 + 1)
          {
            goto LABEL_1543;
          }

          *v363 = v357;
        }

        *v187 = ++v337;
LABEL_582:
        if (v337 < 1)
        {
LABEL_639:
          if (v983)
          {
            v145 = __dst;
            v39 = v979;
            v85 = v965;
            LODWORD(v144) = v966;
            v25 = v149;
            if (*v973)
            {
              *v149 += v979;
            }
          }

          else
          {
            v39 = v979;
            v145 = __dst;
            v85 = v965;
            LODWORD(v144) = v966;
            v25 = v149;
          }

          goto LABEL_643;
        }

        v364 = 0;
        v365 = v982;
        do
        {
          v366 = &v1004[2 * v364];
          v367 = v366 + 1;
          if (v366 < v1004 || v367 > v1005 || v366 > v367)
          {
            goto LABEL_1543;
          }

          v370 = &v197[*v366];
          v371 = v370 + 1;
          v372 = v370 < v1006 || v371 > v1007;
          v373 = v372 || v370 > v371;
          v374 = &v84[v364];
          v375 = v374 + 1;
          v376 = !v373 && v374 >= v84;
          v377 = !v376 || v375 > v365;
          if (v377 || v374 > v375)
          {
            goto LABEL_1543;
          }

          *v374 = *v370;
          ++v364;
        }

        while (v364 < *v187);
        v219 = *v187;
LABEL_609:
        if (v219 >= 1)
        {
          v28 = 0.0;
          v379 = v84;
          v380 = v984;
          v381 = v219;
          while (v379 >= v84 && v379 + 1 <= v982 && v379 <= v379 + 1)
          {
            v382 = *v379;
            if (*v379)
            {
              if (v985 == v382)
              {
                v383 = v382 - 2;
                v384 = v1008 + v382 - 2;
                v385 = v384 > &v1008[384] || v1008 > v384;
              }

              else
              {
                v383 = v382 - 1;
                v384 = v1008 + v382 - 1;
                if (v382 > 1534)
                {
                  goto LABEL_1543;
                }

                v385 = v384 > &v1008[384] || v1008 > v384;
              }

              v387 = v380 + 1;
              if (v385 || v380 < v984 || v387 > v980 || v380 > v387)
              {
                goto LABEL_1543;
              }

              v386 = imax(v384) + v383;
            }

            else
            {
              if (v380 < v984 || v380 + 1 > v980 || v380 > v380 + 1)
              {
                goto LABEL_1543;
              }

              v386 = imax(v1008) + 0.0;
            }

            *v380++ = v386;
            ++v379;
            --v381;
            v84 = v981;
            if (!v381)
            {
              goto LABEL_639;
            }
          }

          goto LABEL_1543;
        }

        goto LABEL_639;
      }
    }

    HIDWORD(v1011[0]) = v1011[0];
    v1006[1] = v1006[0];
    goto LABEL_522;
  }

  v25 = v976;
  v141 = *v976;
  if (*a13)
  {
    v140 = a24;
    if (v141 == a24)
    {
      goto LABEL_168;
    }
  }

  v142 = v141 + a24;
  if ((v141 + a24) < 1)
  {
    v142 = 0x7FFF;
  }

  *v976 = v142;
  v143 = (v139 + 4 * -v138);
  if (v143 < v42)
  {
    goto LABEL_1543;
  }

  v144 = (1717986919 * (8 * a24)) >> 33;
  trans_ana(v143, v987, &v993, v995 + 4, &v988, a20, a21, a24, v28, v142, 0, v1001, v998, v975, v986);
  v145 = __dst;
LABEL_643:
  if (v144 >= 1)
  {
    if (v969 < v145)
    {
      goto LABEL_1543;
    }

    v391 = (4 * v144);
    if (v969 - v145 < v391)
    {
      goto LABEL_1543;
    }

    if (v39 >= 0x3C1)
    {
      goto LABEL_1543;
    }

    memmove(__b, v145, v391);
    if ((__b + v391) < __b)
    {
      goto LABEL_1543;
    }
  }

  v392 = *v25;
  v25 = *v25;
  v393 = *v977;
  if (v393 >= 1)
  {
    v394 = &v84[(v393 - 1)];
    if (v394 < v84 || v394 + 1 > v982 || v394 > v394 + 1)
    {
      goto LABEL_1543;
    }

    v25 = *v394 + v25;
  }

  v28 = *&v988;
  v395 = *v975;
  memset(v1008, 255, 0x604uLL);
  v396 = v85 + 1;
  if (v85 + 1 > v85 + 2 || v396 < v85)
  {
    goto LABEL_1543;
  }

  v397 = &__b[384];
  v987 = v995 + 1;
  v398 = v1003;
  v983 = &v1000;
  v399 = (1717986919 * (v979 << 10)) >> 40;
  v400 = *v85;
  v985 = v1003;
  if (!v400 && !*v396)
  {
    if (v393 < 1)
    {
      goto LABEL_658;
    }

    v733 = (0x6666666700 * (v979 << 10)) >> 48;
    v734 = (1.0 / v733) * ((v978 - ((v979 + ((v979 >> 28) & 7)) >> 3) - ((v979 + ((v979 & 0x8000) >> 15)) >> 1) - (v978 - v733) / 2 + v392) * 6.2832);
    v978 = &v1008[96] + 4;
    v735 = v984;
    v736 = v1008;
    v737 = v393;
    do
    {
      if (v735 < v984 || v735 + 1 > v980 || v735 > v735 + 1 || v736 < v1008 || (v736 + 1) > v978 || v736 > v736 + 1)
      {
        goto LABEL_1543;
      }

      v738 = *v735++;
      *v736++ = v734 * v738;
      --v737;
    }

    while (v737);
    v739 = 0;
    v740 = 0;
    v402 = v399 - 1;
    v984 = (v986 + 9);
    LODWORD(v980) = v733 / 2;
    LODWORD(v969) = v733 / 2 - 1;
    LOWORD(v404) = 1;
    v741 = v395;
    while (1)
    {
      if (v739)
      {
        v742 = (v981 + 2 * v739);
        v743 = (v742 + 1);
        if (v742 < v981 || v743 > v982 || v742 > v743)
        {
          goto LABEL_1543;
        }

        if ((v742 - 1) < v981 || v742 - 1 > v742)
        {
          goto LABEL_1543;
        }

        v747 = *v742 + ~*(v742 - 1);
        v748 = v747 > 11 ? 4294967290 : (v747 / -2);
        v749 = v981;
      }

      else
      {
        v748 = 4294967290;
        v749 = v981;
      }

      v750 = v393 - 1;
      v976 = v739;
      v751 = (v749 + 2 * v739);
      __dst = v739;
      if (v750 <= v739)
      {
        LODWORD(v975) = 6;
      }

      else
      {
        v752 = v751 + 1;
        v753 = (v751 + 2);
        if ((v751 + 1) < v749 || v753 > v982 || v752 > v753 || v751 < v749 || v751 > v752)
        {
          goto LABEL_1543;
        }

        v758 = (v751[1] + ~*v751) / 2;
        if (v751[1] + ~*v751 > 11)
        {
          v758 = 6;
        }

        LODWORD(v975) = v758;
        v749 = v981;
      }

      if (v751 < v749 || v751 + 1 > v982 || v751 > v751 + 1)
      {
        goto LABEL_1543;
      }

      v759 = *v751;
      if (v748 + v759 > v404)
      {
        v760 = v740;
        do
        {
          v761 = 31821 * v25 + 13849;
          v25 = v761;
          v762 = &sincos_t_ext[v761 >> 8];
          v763 = v762 + 128;
          v764 = v762 + 129;
          v767 = v764 <= stab_trans_fx && v763 <= v764 && v763 >= sincos_t_ext;
          if ((v25 & 0x40) != 0)
          {
            if (!v767)
            {
              goto LABEL_1543;
            }

            v768 = *v763;
          }

          else
          {
            if (!v767)
            {
              goto LABEL_1543;
            }

            v768 = -*v763;
          }

          *v1010 = v768;
          v769 = &sincos_t_ext[-(v25 >> 8)];
          v770 = v769 + 128;
          v771 = v769 + 129;
          v774 = v771 <= stab_trans_fx && v770 <= v771 && v770 >= sincos_t_ext;
          if ((v25 & 0x80) != 0)
          {
            if (!v774)
            {
              goto LABEL_1543;
            }

            v775 = *v770;
          }

          else
          {
            if (!v774)
            {
              goto LABEL_1543;
            }

            v775 = -*v770;
          }

          *v1011 = v775;
          v776 = __b + v404;
          if (v776 < __b)
          {
            goto LABEL_1543;
          }

          if (v776 + 1 > &__b[384])
          {
            goto LABEL_1543;
          }

          if (v776 > v776 + 1)
          {
            goto LABEL_1543;
          }

          v777 = __b + v402;
          if (v777 < __b)
          {
            goto LABEL_1543;
          }

          if (v777 + 1 > &__b[384])
          {
            goto LABEL_1543;
          }

          if (v777 > v777 + 1)
          {
            goto LABEL_1543;
          }

          v778 = *v776;
          v779 = *v777;
          *v777 = (v775 * *v777) + (*v776 * v768);
          v780 = v1001 + v760;
          if (v780 < v1001 || v780 + 1 > v398 || v780 > v780 + 1)
          {
            goto LABEL_1543;
          }

          v781 = (v778 * v775) - (v779 * v768);
          if (*v780 >= 1.0)
          {
            v789 = &v993 + v760;
            if (v789 < &v993 || v789 + 1 > v987 || v789 > v789 + 1)
            {
              goto LABEL_1543;
            }

            v790 = *v789;
            *v776 = v781 * *v789;
            v788 = v790 * *v777;
          }

          else
          {
            v782 = v748;
            v783 = rand_phase(v25, v1010, v1011);
            v748 = v782;
            v398 = v985;
            v25 = v783;
            v784 = v998 + v760;
            if (v784 < v998)
            {
              goto LABEL_1543;
            }

            if (v784 + 1 > v983)
            {
              goto LABEL_1543;
            }

            if (v784 > v784 + 1)
            {
              goto LABEL_1543;
            }

            v785 = &v986[v760];
            if (v785 < v986 || (v785 + 1) > v984 || v785 > v785 + 1)
            {
              goto LABEL_1543;
            }

            v786 = *(v1001 + v760);
            v787 = *v784 * *v785;
            *v776 = (v787 * *v1011) + (v786 * v781);
            v788 = (v787 * *v1010) + (v786 * *v777);
          }

          *v777 = v788;
          v791 = &gwlpr[2 * v760];
          v792 = (v791 + 2);
          if (v791 + 2 < gwlpr)
          {
            goto LABEL_1543;
          }

          v793 = v791 + 4;
          if (v793 > byte_19B35D0DA || v792 > v793)
          {
            goto LABEL_1543;
          }

          --v402;
          v794 = v404 + 1;
          v404 = (v404 + 1);
          if (v404 >= *v792)
          {
            ++v760;
          }
        }

        while (v748 + *v751 > v794);
        LOWORD(v759) = *v751;
        v740 = v760;
      }

      v795 = v759 + v975;
      if (v980 <= v795)
      {
        v795 = v969;
      }

      v796 = v1008 + v976;
      if (v796 < v1008 || (v796 + 1) > v978 || v796 > v796 + 1)
      {
        goto LABEL_1543;
      }

      v797 = ((*v796 * 512.0) / 3.1416) & 0x3FF;
      v798 = &sincos_t_ext[v797];
      if (v797 < 0x200)
      {
        break;
      }

      v799 = v798 - 512;
      v800 = v798 - 511;
      if (v798 - 512 < sincos_t_ext || v800 > stab_trans_fx || v799 > v800)
      {
        goto LABEL_1543;
      }

      v803 = -*v799;
      *v1010 = v803;
      if (v797 <= 0x2FF)
      {
        v804 = v798 - 256;
        v805 = v798 - 255;
        if (v804 < sincos_t_ext || v805 > stab_trans_fx || v804 > v805)
        {
          goto LABEL_1543;
        }

        v808 = *v804;
LABEL_1282:
        v812 = -v808;
        goto LABEL_1283;
      }

      v813 = &sincos_t_ext[(1280 - v797)];
      if (v813 < sincos_t_ext)
      {
        goto LABEL_1543;
      }

      v812 = *v813;
LABEL_1283:
      *v1011 = v812;
      v814 = v795;
      if (v795 >= v404)
      {
        while (1)
        {
          v815 = &v993 + v740;
          v816 = v815 + 1;
          if (v815 < &v993 || v816 > v987 || v815 > v816)
          {
            goto LABEL_1543;
          }

          v819 = *v815;
          if (v28 != 0.0)
          {
            break;
          }

LABEL_1318:
          v832 = __b + v404;
          if (v832 < __b)
          {
            goto LABEL_1543;
          }

          if (v832 + 1 > &__b[384])
          {
            goto LABEL_1543;
          }

          if (v832 > v832 + 1)
          {
            goto LABEL_1543;
          }

          v833 = __b + v402;
          if (v833 < __b)
          {
            goto LABEL_1543;
          }

          if (v833 + 1 > &__b[384])
          {
            goto LABEL_1543;
          }

          if (v833 > v833 + 1)
          {
            goto LABEL_1543;
          }

          v834 = v740;
          v835 = *v832;
          v836 = *v833;
          *v833 = (v812 * *v833) + (*v832 * v803);
          v837 = v1001 + v740;
          if (v837 < v1001 || v837 + 1 > v398 || v837 > v837 + 1)
          {
            goto LABEL_1543;
          }

          v838 = (v835 * v812) - (v836 * v803);
          if (*v837 >= 1.0)
          {
            *v832 = v819 * v838;
            v844 = v819 * *v833;
          }

          else
          {
            v839 = rand_phase(v25, v1010, v1011);
            v398 = v985;
            v25 = v839;
            v840 = &v986[v834];
            if (v840 < v986 || (v840 + 1) > v984 || v840 > v840 + 1)
            {
              goto LABEL_1543;
            }

            v841 = sqrt((1.0 - (v819 * v819))) * v741;
            v842 = v841 * 0.1;
            if (v834 == 5)
            {
              v841 = v841 * 0.5;
            }

            if (v834 > 5)
            {
              v841 = v842;
            }

            v843 = v841 * *v840;
            v812 = *v1011;
            *v832 = (v843 * *v1011) + (v819 * v838);
            v803 = *v1010;
            v844 = (v843 * *v1010) + (v819 * *v833);
          }

          *v833 = v844;
          v845 = &gwlpr[2 * v834];
          v846 = (v845 + 2);
          if (v845 + 2 < gwlpr)
          {
            goto LABEL_1543;
          }

          v847 = v845 + 4;
          if (v847 > byte_19B35D0DA || v846 > v847)
          {
            goto LABEL_1543;
          }

          --v402;
          v404 = (v404 + 1);
          if (v404 < *v846)
          {
            v740 = v834;
          }

          else
          {
            v740 = v834 + 1;
          }

          if (v404 > v814)
          {
            goto LABEL_1344;
          }
        }

        v25 = (31821 * v25 + 13849);
        if (v28 > 0.0)
        {
          v819 = ((((v28 * -0.15915) + 1.0) * 0.5) + 0.5) * v819;
        }

        v820 = (((*v796 + ((v28 * v25) * 0.000015259)) * 512.0) / 3.1416) & 0x3FF;
        v821 = &sincos_t_ext[v820];
        if (v820 < 0x200)
        {
          v803 = *v821;
          *v1010 = *v821;
          if (v820 > 0xFF)
          {
            v830 = sincos_t_ext[768 - v820];
            goto LABEL_1314;
          }

          v812 = sincos_t_ext[v820 | 0x100];
        }

        else
        {
          v822 = v821 - 512;
          v823 = v821 - 511;
          if (v821 - 512 < sincos_t_ext || v823 > stab_trans_fx || v822 > v823)
          {
            goto LABEL_1543;
          }

          v803 = -*v822;
          *v1010 = v803;
          if (v820 > 0x2FF)
          {
            v831 = &sincos_t_ext[1280 - v820];
            if (v831 < sincos_t_ext)
            {
              goto LABEL_1543;
            }

            v812 = *v831;
          }

          else
          {
            v826 = v821 - 256;
            v827 = v821 - 255;
            if (v826 < sincos_t_ext || v827 > stab_trans_fx || v826 > v827)
            {
              goto LABEL_1543;
            }

            v830 = *v826;
LABEL_1314:
            v812 = -v830;
          }
        }

        *v1011 = v812;
        goto LABEL_1318;
      }

LABEL_1344:
      v739 = (__dst + 1);
      LODWORD(v393) = *v977;
      if (v739 >= v393)
      {
        v401 = v740;
        v403 = v980;
        goto LABEL_659;
      }
    }

    v809 = v798 + 1;
    if (v798 < sincos_t_ext || v809 > stab_trans_fx || v798 > v809)
    {
      goto LABEL_1543;
    }

    v803 = *v798;
    *v1010 = *v798;
    if (v797 <= 0xFF)
    {
      v812 = sincos_t_ext[v797 | 0x100];
      goto LABEL_1283;
    }

    v808 = sincos_t_ext[(768 - v797)];
    goto LABEL_1282;
  }

  *v977 = 0;
LABEL_658:
  v401 = 0;
  LOWORD(v402) = v399 - 1;
  v403 = (v399 + ((v399 & 0x8000) >> 15)) >> 1;
  LOWORD(v404) = 1;
LABEL_659:
  if (v403 > v404)
  {
    v984 = (v986 + 9);
    v405 = sincos_t_ext;
    v28 = 1.0;
    LOWORD(v406) = v25;
    v407 = byte_19B35D0DA;
    LODWORD(v980) = v403;
    do
    {
      v406 = (31821 * v406 + 13849);
      v408 = &v405[v406 >> 8];
      v409 = v408 + 128;
      v410 = (v408 + 129);
      v411 = v410 > (v405 + 641) || v409 > v410;
      v412 = !v411 && v409 >= v405;
      v413 = v412;
      if ((v406 & 0x40) != 0)
      {
        if (!v413)
        {
          goto LABEL_1543;
        }

        v414 = *v409;
      }

      else
      {
        if (!v413)
        {
          goto LABEL_1543;
        }

        v414 = -*v409;
      }

      *v1010 = v414;
      v415 = &v405[-(v406 >> 8)];
      v416 = v415 + 128;
      v417 = (v415 + 129);
      v418 = v417 > (v405 + 641) || v416 > v417;
      v419 = !v418 && v416 >= v405;
      v420 = v419;
      if ((v406 & 0x80) != 0)
      {
        if (!v420)
        {
          goto LABEL_1543;
        }

        v421 = *v416;
      }

      else
      {
        if (!v420)
        {
          goto LABEL_1543;
        }

        v421 = -*v416;
      }

      *v1011 = v421;
      v422 = __b + v404;
      if (v422 < __b)
      {
        goto LABEL_1543;
      }

      if (v422 + 1 > v397)
      {
        goto LABEL_1543;
      }

      if (v422 > v422 + 1)
      {
        goto LABEL_1543;
      }

      v25 = __b + 4 * v402;
      if (v25 < __b)
      {
        goto LABEL_1543;
      }

      if (v25 + 4 > v397)
      {
        goto LABEL_1543;
      }

      if (v25 > v25 + 4)
      {
        goto LABEL_1543;
      }

      v423 = *v422;
      v424 = *v25;
      *v25 = (v421 * *v25) + (*v422 * v414);
      v425 = v1001 + v401;
      if (v425 < v1001 || v425 + 1 > v398 || v425 > v425 + 1)
      {
        goto LABEL_1543;
      }

      v426 = (v423 * v421) - (v424 * v414);
      if (*v425 >= 1.0)
      {
        v435 = &v993 + v401;
        if (v435 < &v993 || v435 + 1 > v987 || v435 > v435 + 1)
        {
          goto LABEL_1543;
        }

        v436 = *v435;
        *v422 = v426 * *v435;
        v434 = v436 * *v25;
      }

      else
      {
        v427 = v407;
        v428 = v397;
        v429 = v405;
        LOWORD(v406) = rand_phase(v406, v1010, v1011);
        v398 = v985;
        v430 = v998 + v401;
        if (v430 < v998)
        {
          goto LABEL_1543;
        }

        if (v430 + 1 > v983)
        {
          goto LABEL_1543;
        }

        if (v430 > v430 + 1)
        {
          goto LABEL_1543;
        }

        v431 = &v986[v401];
        if (v431 < v986 || (v431 + 1) > v984 || v431 > v431 + 1)
        {
          goto LABEL_1543;
        }

        v405 = v429;
        v397 = v428;
        v407 = v427;
        v432 = *(v1001 + v401);
        v433 = *v430 * *v431;
        *v422 = (v433 * *v1011) + (v432 * v426);
        v434 = (v433 * *v1010) + (v432 * *v25);
      }

      *v25 = v434;
      v437 = &gwlpr[2 * v401];
      v438 = (v437 + 2);
      if (v437 + 2 < gwlpr)
      {
        goto LABEL_1543;
      }

      v439 = v437 + 4;
      if (v439 > v407 || v438 > v439)
      {
        goto LABEL_1543;
      }

      v440 = v404 + 1;
      v404 = (v404 + 1);
      LOWORD(v402) = v402 - 1;
      if (v404 >= *v438)
      {
        ++v401;
      }
    }

    while (v980 > v440);
  }

  v441 = (1717986919 * v968) >> 41;
  v442 = v979;
  if (v979 == 640)
  {
    v443 = 10;
  }

  else
  {
    v443 = 9;
  }

  v444 = v441;
  if (v979 == 960)
  {
    LODWORD(v977) = v441;
    memset(v1008, 255, 0x1800uLL);
    v981 = (1717986919 * v968) >> 41;
    v978 = v441 >> 1;
    v445 = __b + v978;
    v446 = v445 - 256;
    if (v445 - 255 <= v397 && v446 <= v445 - 255 && v445 - 256 >= __b)
    {
      v982 = &v1008[128];
      v983 = &v1008[256];
      v447 = __b + 4 * v981;
      v987 = (v447 - 2048);
      v976 = -v978;
      v984 = &__b[128];
      v985 = v447;
      v980 = &v447[-4 * v978];
      v986 = v980 + 256;
      v448 = *__b;
      v449 = *&__b[128];
      v450 = *v446;
      *v1008 = (*__b + *&__b[128]) + *v446;
      v451 = -1;
      v452 = 1;
      while (1)
      {
        v453 = __b + v452;
        v454 = v453 + 1 > v397 || v453 > v453 + 1;
        if (v454 || v453 < __b)
        {
          break;
        }

        v456 = (v984 + 4 * v452);
        if (v456 + 1 > v397)
        {
          break;
        }

        if (v456 > v456 + 1)
        {
          break;
        }

        if (v456 < __b)
        {
          break;
        }

        v457 = &v446[v451];
        if (v457 + 1 > v397)
        {
          break;
        }

        if (v457 > v457 + 1)
        {
          break;
        }

        if (v457 < __b)
        {
          break;
        }

        v458 = v1008 + v452;
        if (v458 < v1008)
        {
          break;
        }

        if (v458 + 1 > &v1008[384])
        {
          break;
        }

        if (v458 > v458 + 1)
        {
          break;
        }

        *v458 = (*v453 + *v456) + *v457;
        v459 = (v985 + 4 * v451);
        if (v459 + 1 > v397)
        {
          break;
        }

        if (v459 > v459 + 1)
        {
          break;
        }

        if (v459 < __b)
        {
          break;
        }

        v460 = &v987[v451];
        if (v460 + 1 > v397)
        {
          break;
        }

        if (v460 > v460 + 1)
        {
          break;
        }

        if (v460 < __b)
        {
          break;
        }

        v461 = &v986[v452];
        if (v461 + 1 > v397)
        {
          break;
        }

        if (v461 > v461 + 1)
        {
          break;
        }

        if (v461 < __b)
        {
          break;
        }

        v462 = &v982[4 * v451];
        if (v462 < v1008 || v462 + 1 > &v1008[384] || v462 > v462 + 1)
        {
          break;
        }

        *v462 = (*v459 + *v460) - *v461;
        v463 = v452 + 1;
        --v451;
        v52 = v452++ >= 0xFF;
        if (v52)
        {
          v464 = &v446[-v463];
          if (v464 + 1 <= v397 && v464 <= v464 + 1 && v464 >= __b)
          {
            *&v1008[64] = (*&__b[64] + *&__b[192]) + *v464;
            if (v985 - 2044 <= v397 && v987 <= v985 - 2044 && v987 >= __b && v980 + 257 <= v397 && v986 <= v980 + 257 && v986 >= __b)
            {
              v465 = *v987;
              v466 = (v448 + (v449 * -0.5)) + (v450 * -0.5);
              v467 = *v986;
              v468 = 127;
              v469 = 255;
              v470 = 383;
              v471 = -1;
              v472 = 257;
              *&v1008[128] = (v466 - (*v987 * 0.86603)) - (*v986 * 0.86603);
              v473 = 129;
              v474 = 1;
              while (1)
              {
                v475 = __b + v474;
                v476 = v475 + 1 > v397 || v475 > v475 + 1;
                if (v476 || v475 < __b)
                {
                  break;
                }

                v478 = &sincos_t_rad3[v470];
                if (v478 < sincos_t_rad3)
                {
                  break;
                }

                if (v478 + 1 > RotVector_256)
                {
                  break;
                }

                if (v478 > v478 + 1)
                {
                  break;
                }

                v479 = (v984 + 4 * v474);
                if (v479 + 1 > v397)
                {
                  break;
                }

                if (v479 > v479 + 1)
                {
                  break;
                }

                if (v479 < __b)
                {
                  break;
                }

                v480 = &sincos_t_rad3[v473];
                if (v480 < sincos_t_rad3)
                {
                  break;
                }

                if (v480 + 1 > RotVector_256)
                {
                  break;
                }

                if (v480 > v480 + 1)
                {
                  break;
                }

                v481 = &v446[v471];
                if (v481 + 1 > v397)
                {
                  break;
                }

                if (v481 > v481 + 1)
                {
                  break;
                }

                if (v481 < __b)
                {
                  break;
                }

                v482 = &sincos_t_rad3[v468];
                if (v482 < sincos_t_rad3)
                {
                  break;
                }

                if (v482 + 1 > RotVector_256)
                {
                  break;
                }

                if (v482 > v482 + 1)
                {
                  break;
                }

                v25 = v471;
                v483 = (v985 + 4 * v471);
                if (v483 + 1 > v397)
                {
                  break;
                }

                if (v483 > v483 + 1)
                {
                  break;
                }

                if (v483 < __b)
                {
                  break;
                }

                v484 = &sincos_t_rad3[v474];
                if (v484 < sincos_t_rad3)
                {
                  break;
                }

                if (v484 + 1 > RotVector_256)
                {
                  break;
                }

                if (v484 > v484 + 1)
                {
                  break;
                }

                v485 = &v987[v471];
                if (v485 + 1 > v397)
                {
                  break;
                }

                if (v485 > v485 + 1)
                {
                  break;
                }

                if (v485 < __b)
                {
                  break;
                }

                v486 = &sincos_t_rad3[v469];
                if (v486 < sincos_t_rad3)
                {
                  break;
                }

                if (v486 + 1 > RotVector_256)
                {
                  break;
                }

                if (v486 > v486 + 1)
                {
                  break;
                }

                v487 = &v986[v474];
                if (v487 + 1 > v397)
                {
                  break;
                }

                if (v487 > v487 + 1)
                {
                  break;
                }

                if (v487 < __b)
                {
                  break;
                }

                v488 = &sincos_t_rad3[v472];
                if (v488 < sincos_t_rad3)
                {
                  break;
                }

                if (v488 + 1 > RotVector_256)
                {
                  break;
                }

                if (v488 > v488 + 1)
                {
                  break;
                }

                v489 = &v982[4 * v474];
                if (v489 < v1008)
                {
                  break;
                }

                if (v489 + 1 > &v1008[384])
                {
                  break;
                }

                if (v489 > v489 + 1)
                {
                  break;
                }

                v490 = *v475;
                v491 = *v478;
                v492 = *v479;
                v493 = *v480;
                v494 = *v481;
                v495 = *v482;
                v496 = *v483;
                v497 = *v484;
                v498 = *v485;
                v499 = *v486;
                v500 = *v487;
                v501 = *v488;
                *v489 = (((((*v475 * *v478) - (*v479 * *v480)) - (*v481 * *v482)) - (*v483 * *v484)) - (*v485 * *v486)) - (*v487 * *v488);
                v502 = &v983[v471];
                if (v502 < v1008 || v502 + 1 > &v1008[384] || v502 > v502 + 1)
                {
                  break;
                }

                *v502 = (((((v493 * -v498) + (v496 * v491)) + (v500 * v495)) + (v490 * v497)) + (v492 * v499)) + (-v494 * v501);
                v503 = v474 + 1;
                ++v473;
                ++v472;
                --v468;
                --v469;
                --v470;
                --v471;
                v52 = v474++ >= 0x7F;
                if (v52)
                {
                  v504 = 0;
                  v505 = v503;
                  v506 = 384;
                  v507 = 128;
                  v508 = 256;
                  v509 = 256;
                  v510 = 128;
                  while (1)
                  {
                    v511 = __b + v507;
                    v512 = v511 + 1 > v397 || v511 > v511 + 1;
                    if (v512 || v511 < __b)
                    {
                      goto LABEL_1543;
                    }

                    v514 = &sincos_t_rad3[v509];
                    if (v514 < sincos_t_rad3)
                    {
                      goto LABEL_1543;
                    }

                    if (v514 + 1 > RotVector_256)
                    {
                      goto LABEL_1543;
                    }

                    if (v514 > v514 + 1)
                    {
                      goto LABEL_1543;
                    }

                    v515 = (v984 + 4 * v507);
                    if (v515 + 1 > v397)
                    {
                      goto LABEL_1543;
                    }

                    if (v515 > v515 + 1)
                    {
                      goto LABEL_1543;
                    }

                    if (v515 < __b)
                    {
                      goto LABEL_1543;
                    }

                    v516 = &sincos_t_rad3[v508];
                    if (v516 < sincos_t_rad3)
                    {
                      goto LABEL_1543;
                    }

                    if (v516 + 1 > RotVector_256)
                    {
                      goto LABEL_1543;
                    }

                    if (v516 > v516 + 1)
                    {
                      goto LABEL_1543;
                    }

                    v517 = -v505;
                    v518 = &v446[-v505];
                    if (v518 + 1 > v397)
                    {
                      goto LABEL_1543;
                    }

                    if (v518 > v518 + 1)
                    {
                      goto LABEL_1543;
                    }

                    if (v518 < __b)
                    {
                      goto LABEL_1543;
                    }

                    v519 = &sincos_t_rad3[v504];
                    if (v519 < sincos_t_rad3)
                    {
                      goto LABEL_1543;
                    }

                    if (v519 + 1 > RotVector_256)
                    {
                      goto LABEL_1543;
                    }

                    if (v519 > v519 + 1)
                    {
                      goto LABEL_1543;
                    }

                    v25 = v517;
                    v520 = (v985 + 4 * v517);
                    if (v520 + 1 > v397)
                    {
                      goto LABEL_1543;
                    }

                    if (v520 > v520 + 1)
                    {
                      goto LABEL_1543;
                    }

                    if (v520 < __b)
                    {
                      goto LABEL_1543;
                    }

                    v521 = &sincos_t_rad3[v507];
                    if (v521 < sincos_t_rad3)
                    {
                      goto LABEL_1543;
                    }

                    if (v521 + 1 > RotVector_256)
                    {
                      goto LABEL_1543;
                    }

                    if (v521 > v521 + 1)
                    {
                      goto LABEL_1543;
                    }

                    v522 = &v987[v517];
                    if (v522 + 1 > v397)
                    {
                      goto LABEL_1543;
                    }

                    if (v522 > v522 + 1)
                    {
                      goto LABEL_1543;
                    }

                    if (v522 < __b)
                    {
                      goto LABEL_1543;
                    }

                    v523 = &sincos_t_rad3[v510];
                    if (v523 < sincos_t_rad3)
                    {
                      goto LABEL_1543;
                    }

                    if (v523 + 1 > RotVector_256)
                    {
                      goto LABEL_1543;
                    }

                    if (v523 > v523 + 1)
                    {
                      goto LABEL_1543;
                    }

                    v524 = &v986[v507];
                    if (v524 + 1 > v397)
                    {
                      goto LABEL_1543;
                    }

                    if (v524 > v524 + 1)
                    {
                      goto LABEL_1543;
                    }

                    if (v524 < __b)
                    {
                      goto LABEL_1543;
                    }

                    v525 = &sincos_t_rad3[v506];
                    if (v525 < sincos_t_rad3)
                    {
                      goto LABEL_1543;
                    }

                    if (v525 + 1 > RotVector_256)
                    {
                      goto LABEL_1543;
                    }

                    if (v525 > v525 + 1)
                    {
                      goto LABEL_1543;
                    }

                    v526 = &v982[4 * v507];
                    if (v526 < v1008)
                    {
                      goto LABEL_1543;
                    }

                    if (v526 + 1 > &v1008[384])
                    {
                      goto LABEL_1543;
                    }

                    if (v526 > v526 + 1)
                    {
                      goto LABEL_1543;
                    }

                    v527 = *v511;
                    v528 = *v514;
                    v529 = *v515;
                    v530 = *v516;
                    v531 = *v518;
                    v532 = *v519;
                    v533 = *v520;
                    v534 = *v521;
                    v535 = *v522;
                    v536 = *v523;
                    v537 = *v524;
                    v538 = *v525;
                    *v526 = (((((*v511 * *v514) - (*v515 * *v516)) + (*v518 * *v519)) - (*v520 * *v521)) - (*v522 * *v523)) - (*v524 * *v525);
                    v539 = &v983[v25];
                    if (v539 < v1008 || v539 + 1 > &v1008[384] || v539 > v539 + 1)
                    {
                      goto LABEL_1543;
                    }

                    *v539 = (((((v530 * -v535) + (v533 * v528)) + (-v537 * v532)) + (v527 * v534)) + (v529 * v536)) - (v531 * v538);
                    --v509;
                    ++v508;
                    --v510;
                    ++v504;
                    --v506;
                    v505 = (v507 + 1);
                    v52 = v507++ >= 0xFF;
                    if (v52)
                    {
                      v540 = -v505;
                      v541 = &v446[-v505];
                      if (v541 + 1 <= v397 && v541 <= v541 + 1 && v541 >= __b)
                      {
                        v542 = (v985 + 4 * v540);
                        if (v542 + 1 <= v397 && v542 <= v542 + 1 && v542 >= __b)
                        {
                          v543 = &v987[v540];
                          if (v543 + 1 <= v397 && v543 <= v543 + 1 && v543 >= __b)
                          {
                            v544 = v980 + 513;
                            v980 += 512;
                            if (v544 <= v397 && v980 <= v544 && v980 >= __b)
                            {
                              *&v1008[192] = ((((*v541 * 0.5) - (*&__b[192] - (*&__b[64] * 0.5))) - (*v542 * 0.86603)) + (*v543 * -0.0)) - (*v980 * 0.86603);
                              v545 = 254;
                              v546 = 126;
                              v547 = 382;
                              v548 = -1;
                              v549 = 130;
                              v550 = 258;
                              *&v1008[256] = (v466 + (v465 * 0.86603)) + (v467 * 0.86603);
                              v551 = 2;
                              v552 = 1;
                              while (1)
                              {
                                v553 = __b + v552;
                                v554 = v553 + 1 > v397 || v553 > v553 + 1;
                                if (v554 || v553 < __b)
                                {
                                  break;
                                }

                                v556 = &sincos_t_rad3[v547];
                                if (v556 < sincos_t_rad3)
                                {
                                  break;
                                }

                                if (v556 + 1 > RotVector_256)
                                {
                                  break;
                                }

                                if (v556 > v556 + 1)
                                {
                                  break;
                                }

                                v557 = (v984 + 4 * v552);
                                if (v557 + 1 > v397)
                                {
                                  break;
                                }

                                if (v557 > v557 + 1)
                                {
                                  break;
                                }

                                if (v557 < __b)
                                {
                                  break;
                                }

                                v558 = &sincos_t_rad3[v546];
                                if (v558 < sincos_t_rad3)
                                {
                                  break;
                                }

                                if (v558 + 1 > RotVector_256)
                                {
                                  break;
                                }

                                if (v558 > v558 + 1)
                                {
                                  break;
                                }

                                v25 = &v446[v548];
                                if (v25 + 4 > v397)
                                {
                                  break;
                                }

                                if (v25 > v25 + 4)
                                {
                                  break;
                                }

                                if (v25 < __b)
                                {
                                  break;
                                }

                                v559 = &sincos_t_rad3[v549];
                                if (v559 < sincos_t_rad3)
                                {
                                  break;
                                }

                                if (v559 + 1 > RotVector_256)
                                {
                                  break;
                                }

                                if (v559 > v559 + 1)
                                {
                                  break;
                                }

                                v560 = (v985 + 4 * v548);
                                if (v560 + 1 > v397)
                                {
                                  break;
                                }

                                if (v560 > v560 + 1)
                                {
                                  break;
                                }

                                if (v560 < __b)
                                {
                                  break;
                                }

                                v561 = &sincos_t_rad3[v551];
                                if (v561 < sincos_t_rad3)
                                {
                                  break;
                                }

                                if (v561 + 1 > RotVector_256)
                                {
                                  break;
                                }

                                if (v561 > v561 + 1)
                                {
                                  break;
                                }

                                v562 = &v987[v548];
                                if (v562 + 1 > v397)
                                {
                                  break;
                                }

                                if (v562 > v562 + 1)
                                {
                                  break;
                                }

                                if (v562 < __b)
                                {
                                  break;
                                }

                                v563 = &sincos_t_rad3[v550];
                                if (v563 < sincos_t_rad3)
                                {
                                  break;
                                }

                                if (v563 + 1 > RotVector_256)
                                {
                                  break;
                                }

                                if (v563 > v563 + 1)
                                {
                                  break;
                                }

                                v564 = &v986[v552];
                                if (v564 + 1 > v397)
                                {
                                  break;
                                }

                                if (v564 > v564 + 1)
                                {
                                  break;
                                }

                                if (v564 < __b)
                                {
                                  break;
                                }

                                v565 = &sincos_t_rad3[v545];
                                if (v565 < sincos_t_rad3)
                                {
                                  break;
                                }

                                if (v565 + 1 > RotVector_256)
                                {
                                  break;
                                }

                                if (v565 > v565 + 1)
                                {
                                  break;
                                }

                                v566 = &v983[v552];
                                if (v566 < v1008)
                                {
                                  break;
                                }

                                if (v566 + 1 > &v1008[384])
                                {
                                  break;
                                }

                                if (v566 > v566 + 1)
                                {
                                  break;
                                }

                                v567 = *v553;
                                v568 = *v556;
                                v569 = *v557;
                                v570 = *v558;
                                v571 = *v25;
                                v572 = *v559;
                                v573 = *v560;
                                v574 = *v561;
                                v575 = *v562;
                                v576 = *v563;
                                v577 = *v564;
                                v578 = *v565;
                                *v566 = (((((*v553 * *v556) - (*v557 * *v558)) - (*v25 * *v559)) - (*v560 * *v561)) + (*v562 * *v563)) + (*v564 * *v565);
                                v579 = &v1008[384] + v548;
                                if (v579 < v1008 || v579 + 1 > &v1008[384] || v579 > v579 + 1)
                                {
                                  break;
                                }

                                *v579 = (((((v573 * v568) - (v575 * v570)) + (v577 * v572)) + (v567 * v574)) + (-v569 * v576)) + (v571 * v578);
                                v580 = v552 + 1;
                                v551 += 2;
                                v550 += 2;
                                v549 += 2;
                                v545 -= 2;
                                v546 -= 2;
                                v547 -= 2;
                                --v548;
                                v52 = v552++ >= 0x3F;
                                if (v52)
                                {
                                  v581 = 0;
                                  v582 = v580;
                                  v583 = 128;
                                  v584 = 384;
                                  v585 = 256;
                                  v586 = 64;
                                  v587 = 256;
                                  v588 = 128;
                                  while (1)
                                  {
                                    v589 = __b + v586;
                                    v590 = v589 + 1 > v397 || v589 > v589 + 1;
                                    if (v590 || v589 < __b)
                                    {
                                      goto LABEL_1543;
                                    }

                                    v592 = &sincos_t_rad3[v587];
                                    if (v592 < sincos_t_rad3)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v592 + 1 > RotVector_256)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v592 > v592 + 1)
                                    {
                                      goto LABEL_1543;
                                    }

                                    v593 = (v984 + 4 * v586);
                                    if (v593 + 1 > v397)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v593 > v593 + 1)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v593 < __b)
                                    {
                                      goto LABEL_1543;
                                    }

                                    v594 = &sincos_t_rad3[v581];
                                    if (v594 < sincos_t_rad3)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v594 + 1 > RotVector_256)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v594 > v594 + 1)
                                    {
                                      goto LABEL_1543;
                                    }

                                    v595 = -v582;
                                    v596 = &v446[-v582];
                                    if (v596 + 1 > v397)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v596 > v596 + 1)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v596 < __b)
                                    {
                                      goto LABEL_1543;
                                    }

                                    v597 = &sincos_t_rad3[v585];
                                    if (v597 < sincos_t_rad3)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v597 + 1 > RotVector_256)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v597 > v597 + 1)
                                    {
                                      goto LABEL_1543;
                                    }

                                    v25 = v595;
                                    v598 = (v985 + 4 * v595);
                                    if (v598 + 1 > v397)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v598 > v598 + 1)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v598 < __b)
                                    {
                                      goto LABEL_1543;
                                    }

                                    v599 = &sincos_t_rad3[v583];
                                    if (v599 < sincos_t_rad3)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v599 + 1 > RotVector_256)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v599 > v599 + 1)
                                    {
                                      goto LABEL_1543;
                                    }

                                    v600 = &v987[v595];
                                    if (v600 + 1 > v397)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v600 > v600 + 1)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v600 < __b)
                                    {
                                      goto LABEL_1543;
                                    }

                                    v601 = &sincos_t_rad3[v584];
                                    if (v601 < sincos_t_rad3)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v601 + 1 > RotVector_256)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v601 > v601 + 1)
                                    {
                                      goto LABEL_1543;
                                    }

                                    v602 = &v986[v586];
                                    if (v602 + 1 > v397)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v602 > v602 + 1)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v602 < __b)
                                    {
                                      goto LABEL_1543;
                                    }

                                    v603 = &sincos_t_rad3[v588];
                                    if (v603 < sincos_t_rad3)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v603 + 1 > RotVector_256)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v603 > v603 + 1)
                                    {
                                      goto LABEL_1543;
                                    }

                                    v604 = &v983[v586];
                                    if (v604 < v1008)
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v604 + 1 > &v1008[384])
                                    {
                                      goto LABEL_1543;
                                    }

                                    if (v604 > v604 + 1)
                                    {
                                      goto LABEL_1543;
                                    }

                                    v605 = *v589;
                                    v606 = *v592;
                                    v607 = *v593;
                                    v608 = *v594;
                                    v609 = *v596;
                                    v610 = *v597;
                                    v611 = *v598;
                                    v612 = *v599;
                                    v613 = *v600;
                                    v614 = *v601;
                                    v615 = *v602;
                                    v616 = *v603;
                                    *v604 = (((((*v593 * *v594) + (*v589 * *v592)) - (*v596 * *v597)) - (*v598 * *v599)) + (*v600 * *v601)) + (*v602 * *v603);
                                    v617 = &v1008[384] + v25;
                                    if (v617 < v1008 || v617 + 1 > &v1008[384] || v617 > v617 + 1)
                                    {
                                      goto LABEL_1543;
                                    }

                                    v587 -= 2;
                                    *v617 = (((((v608 * v613) + (v611 * v606)) + (v615 * v610)) + (v605 * v612)) - (v607 * v614)) + (v609 * v616);
                                    v583 += 2;
                                    v581 += 2;
                                    v584 -= 2;
                                    v585 += 2;
                                    v588 -= 2;
                                    v582 = (v586 + 1);
                                    v52 = v586++ >= 0x7F;
                                    if (v52)
                                    {
                                      v618 = 0;
                                      v619 = 384;
                                      v620 = 256;
                                      v621 = 128;
                                      v622 = 128;
                                      v623 = 128;
                                      v624 = 256;
                                      while (1)
                                      {
                                        v625 = __b + v621;
                                        v626 = v625 + 1 > v397 || v625 > v625 + 1;
                                        if (v626 || v625 < __b)
                                        {
                                          goto LABEL_1543;
                                        }

                                        v628 = &sincos_t_rad3[v622];
                                        if (v628 < sincos_t_rad3)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v628 + 1 > RotVector_256)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v628 > v628 + 1)
                                        {
                                          goto LABEL_1543;
                                        }

                                        v629 = (v984 + 4 * v621);
                                        if (v629 + 1 > v397)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v629 > v629 + 1)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v629 < __b)
                                        {
                                          goto LABEL_1543;
                                        }

                                        v630 = &sincos_t_rad3[v623];
                                        if (v630 < sincos_t_rad3)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v630 + 1 > RotVector_256)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v630 > v630 + 1)
                                        {
                                          goto LABEL_1543;
                                        }

                                        v631 = -v582;
                                        v632 = &v446[-v582];
                                        if (v632 + 1 > v397)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v632 > v632 + 1)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v632 < __b)
                                        {
                                          goto LABEL_1543;
                                        }

                                        v25 = &sincos_t_rad3[v619];
                                        if (v25 < sincos_t_rad3)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v25 + 4 > RotVector_256)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v25 > v25 + 4)
                                        {
                                          goto LABEL_1543;
                                        }

                                        v633 = v631;
                                        v634 = (v985 + 4 * v631);
                                        if (v634 + 1 > v397)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v634 > v634 + 1)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v634 < __b)
                                        {
                                          goto LABEL_1543;
                                        }

                                        v635 = &sincos_t_rad3[v620];
                                        if (v635 < sincos_t_rad3)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v635 + 1 > RotVector_256)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v635 > v635 + 1)
                                        {
                                          goto LABEL_1543;
                                        }

                                        v636 = &v987[v631];
                                        if (v636 + 1 > v397)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v636 > v636 + 1)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v636 < __b)
                                        {
                                          goto LABEL_1543;
                                        }

                                        v637 = &sincos_t_rad3[v624];
                                        if (v637 < sincos_t_rad3)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v637 + 1 > RotVector_256)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v637 > v637 + 1)
                                        {
                                          goto LABEL_1543;
                                        }

                                        v638 = &v986[v621];
                                        if (v638 + 1 > v397)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v638 > v638 + 1)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v638 < __b)
                                        {
                                          goto LABEL_1543;
                                        }

                                        v639 = &sincos_t_rad3[v618];
                                        if (v639 < sincos_t_rad3)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v639 + 1 > RotVector_256)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v639 > v639 + 1)
                                        {
                                          goto LABEL_1543;
                                        }

                                        v640 = &v983[v621];
                                        if (v640 < v1008)
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v640 + 1 > &v1008[384])
                                        {
                                          goto LABEL_1543;
                                        }

                                        if (v640 > v640 + 1)
                                        {
                                          goto LABEL_1543;
                                        }

                                        v641 = *v625;
                                        v642 = *v628;
                                        v643 = *v629;
                                        v644 = *v630;
                                        v645 = *v632;
                                        v646 = *v25;
                                        v647 = *v634;
                                        v648 = *v635;
                                        v649 = *v636;
                                        v650 = *v637;
                                        v651 = *v638;
                                        v652 = *v639;
                                        *v640 = (((((*v629 * *v630) + (*v625 * *v628)) - (*v632 * *v25)) - (*v634 * *v635)) + (*v636 * *v637)) - (*v638 * *v639);
                                        v653 = &v1008[384] + v633;
                                        if (v653 < v1008 || v653 + 1 > &v1008[384] || v653 > v653 + 1)
                                        {
                                          goto LABEL_1543;
                                        }

                                        v622 -= 2;
                                        *v653 = (((((v644 * v649) + (v647 * v642)) + (v651 * v646)) + (v641 * v648)) - (v643 * v650)) + (-v645 * v652);
                                        v620 += 2;
                                        v623 += 2;
                                        v624 -= 2;
                                        v619 -= 2;
                                        v618 += 2;
                                        v582 = (v621 + 1);
                                        v52 = v621++ >= 0xBF;
                                        if (v52)
                                        {
                                          v654 = 0;
                                          v655 = 256;
                                          v656 = 128;
                                          v657 = 384;
                                          v658 = 192;
                                          v659 = 128;
                                          v660 = 256;
                                          while (1)
                                          {
                                            v661 = __b + v658;
                                            v662 = v661 + 1 > v397 || v661 > v661 + 1;
                                            if (v662 || v661 < __b)
                                            {
                                              goto LABEL_1543;
                                            }

                                            v664 = &sincos_t_rad3[v654];
                                            if (v664 < sincos_t_rad3)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v664 + 1 > RotVector_256)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v664 > v664 + 1)
                                            {
                                              goto LABEL_1543;
                                            }

                                            v665 = (v984 + 4 * v658);
                                            if (v665 + 1 > v397)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v665 > v665 + 1)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v665 < __b)
                                            {
                                              goto LABEL_1543;
                                            }

                                            v666 = &sincos_t_rad3[v655];
                                            if (v666 < sincos_t_rad3)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v666 + 1 > RotVector_256)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v666 > v666 + 1)
                                            {
                                              goto LABEL_1543;
                                            }

                                            v667 = -v582;
                                            v668 = &v446[-v582];
                                            if (v668 + 1 > v397)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v668 > v668 + 1)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v668 < __b)
                                            {
                                              goto LABEL_1543;
                                            }

                                            v669 = &sincos_t_rad3[v660];
                                            if (v669 < sincos_t_rad3)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v669 + 1 > RotVector_256)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v669 > v669 + 1)
                                            {
                                              goto LABEL_1543;
                                            }

                                            v25 = v667;
                                            v670 = (v985 + 4 * v667);
                                            if (v670 + 1 > v397)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v670 > v670 + 1)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v670 < __b)
                                            {
                                              goto LABEL_1543;
                                            }

                                            v671 = &sincos_t_rad3[v657];
                                            if (v671 < sincos_t_rad3)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v671 + 1 > RotVector_256)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v671 > v671 + 1)
                                            {
                                              goto LABEL_1543;
                                            }

                                            v672 = &v987[v667];
                                            if (v672 + 1 > v397)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v672 > v672 + 1)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v672 < __b)
                                            {
                                              goto LABEL_1543;
                                            }

                                            v673 = &sincos_t_rad3[v659];
                                            if (v673 < sincos_t_rad3)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v673 + 1 > RotVector_256)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v673 > v673 + 1)
                                            {
                                              goto LABEL_1543;
                                            }

                                            v674 = &v986[v658];
                                            if (v674 + 1 > v397)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v674 > v674 + 1)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v674 < __b)
                                            {
                                              goto LABEL_1543;
                                            }

                                            v675 = &sincos_t_rad3[v656];
                                            if (v675 < sincos_t_rad3)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v675 + 1 > RotVector_256)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v675 > v675 + 1)
                                            {
                                              goto LABEL_1543;
                                            }

                                            v676 = &v983[v658];
                                            if (v676 < v1008)
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v676 + 1 > &v1008[384])
                                            {
                                              goto LABEL_1543;
                                            }

                                            if (v676 > v676 + 1)
                                            {
                                              goto LABEL_1543;
                                            }

                                            v677 = *v661;
                                            v678 = *v664;
                                            v679 = *v665;
                                            v680 = *v666;
                                            v681 = *v668;
                                            v682 = *v669;
                                            v683 = *v670;
                                            v684 = *v671;
                                            v685 = *v672;
                                            v686 = *v673;
                                            v687 = *v674;
                                            v688 = *v675;
                                            *v676 = (((((*v665 * *v666) + (-*v661 * *v664)) - (*v668 * *v669)) - (*v670 * *v671)) + (*v672 * *v673)) - (*v674 * *v675);
                                            v689 = &v1008[384] + v25;
                                            if (v689 < v1008 || v689 + 1 > &v1008[384] || v689 > v689 + 1)
                                            {
                                              goto LABEL_1543;
                                            }

                                            v654 += 2;
                                            *v689 = (((((v680 * v685) + (-v683 * v678)) + (v687 * v682)) + (v677 * v684)) - (v679 * v686)) + (-v681 * v688);
                                            v657 -= 2;
                                            v655 += 2;
                                            v659 -= 2;
                                            v660 -= 2;
                                            v656 += 2;
                                            v582 = (v658 + 1);
                                            v52 = v658++ >= 0xFF;
                                            if (v52)
                                            {
                                              v690 = -v582;
                                              v691 = &v446[-v582];
                                              if (v691 + 1 <= v397 && v691 <= v691 + 1 && v691 >= __b)
                                              {
                                                v692 = (v985 + 4 * v690);
                                                if (v692 + 1 <= v397 && v692 <= v692 + 1 && v692 >= __b)
                                                {
                                                  v693 = &v987[v690];
                                                  if (v693 + 1 <= v397 && v693 <= v693 + 1 && v693 >= __b)
                                                  {
                                                    *&v1008[320] = ((((*&__b[192] - (*&__b[64] * 0.5)) - (*v691 * 0.5)) - (*v692 * 0.86603)) + (*v693 * 0.0)) - (*v980 * 0.86603);
                                                    ifft_rel(v1008, 512, 9);
                                                    ifft_rel(v982, 512, 9);
                                                    ifft_rel(v983, 512, 9);
                                                    v694 = 0;
                                                    LOWORD(v695) = 0;
                                                    v696 = 4100;
                                                    while (1)
                                                    {
                                                      v697 = v1008 + v694;
                                                      v698 = v1008 + v694 + 4;
                                                      v699 = (v1008 + v694) < v1008 || v698 > &v1008[384];
                                                      if (v699 || v697 > v698)
                                                      {
                                                        break;
                                                      }

                                                      v701 = __b + v695;
                                                      v702 = v701 + 1;
                                                      if (v701 + 1 > v397)
                                                      {
                                                        break;
                                                      }

                                                      if (v701 > v702)
                                                      {
                                                        break;
                                                      }

                                                      if (v701 < __b)
                                                      {
                                                        break;
                                                      }

                                                      v703 = (v697 + 2048);
                                                      *v701 = *(v1008 + v694) * 0.33333;
                                                      if (v697 + 2048 < v1008)
                                                      {
                                                        break;
                                                      }

                                                      v704 = (&v1008[128] + v694 + 4);
                                                      if (v704 > &v1008[384])
                                                      {
                                                        break;
                                                      }

                                                      if (v703 > v704)
                                                      {
                                                        break;
                                                      }

                                                      if (v701 + 2 > v397)
                                                      {
                                                        break;
                                                      }

                                                      if (v702 > v701 + 2)
                                                      {
                                                        break;
                                                      }

                                                      if (v702 < __b)
                                                      {
                                                        break;
                                                      }

                                                      v705 = (v697 + 4096);
                                                      *v702 = *v703 * 0.33333;
                                                      if (v705 < v1008)
                                                      {
                                                        break;
                                                      }

                                                      if ((v1008 + v696) > &v1008[384])
                                                      {
                                                        break;
                                                      }

                                                      if (v705 > (v1008 + v696))
                                                      {
                                                        break;
                                                      }

                                                      v706 = __b + (v695 + 2);
                                                      if (v706 + 1 > v397 || v706 > v706 + 1 || v706 < __b)
                                                      {
                                                        break;
                                                      }

                                                      v695 = (v695 + 3);
                                                      *v706 = *v705 * 0.33333;
                                                      v694 += 4;
                                                      v696 += 4;
                                                      if (v695 >= v981)
                                                      {
                                                        LODWORD(v441) = v981;
                                                        LODWORD(v986) = v981;
                                                        v444 = v977;
                                                        v707 = v978;
                                                        v442 = v979;
                                                        v25 = v976;
                                                        if (v977 <= 1536)
                                                        {
                                                          goto LABEL_1107;
                                                        }

                                                        goto LABEL_1543;
                                                      }
                                                    }
                                                  }
                                                }
                                              }

                                              goto LABEL_1543;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      goto LABEL_1543;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_1543;
        }
      }
    }

    goto LABEL_1543;
  }

  if (v441 <= 1536 && v979 < 0x5000)
  {
    ifft_rel(__b, v441, v443);
    LODWORD(v986) = v441 & 0x7FFF;
    v707 = v441 >> 1;
    v25 = -v707;
LABEL_1107:
    memset(v1011, 255, 0xF00uLL);
    memset(v1010, 255, sizeof(v1010));
    memset(v1008, 255, sizeof(v1008));
    v708 = v707;
    v709 = v442 - v707;
    LODWORD(v997[0]) = 0;
    v710 = (v442 - v707);
    vDSP_vfill(v997, v1008, 1, v710);
    v987 = v1008 + v442;
    v711 = &v987[v25];
    if (v711 >= v1008)
    {
      if (v444 < 1 || &v1009 >= v711 && v441 <= v986 && (v25 = (4 * v441), &v1009 - v711 >= v25) && (memcpy(v711, __b, (4 * v441)), (v711 + v25) >= v711))
      {
        v712 = &v987[v708];
        if (v712 >= v1008)
        {
          v28 = v442;
          LODWORD(v997[0]) = 0;
          vDSP_vfill(v997, v712, 1, v710);
          v713 = (((v28 * 5625000.0) / 20000000.0) - v709);
          if (v713 >= 1)
          {
            LOWORD(v714) = 0;
            v716 = v1008 + v709;
            do
            {
              v715 = 64.0 / v713;
              v717 = &sincos_t[(v715 * v714)];
              v718 = v717 + 1;
              v719 = v717 < sincos_t || v718 > win_flatten_4k;
              v720 = v719 || v717 > v718;
              v721 = v716 + 1;
              v722 = !v720 && v716 >= v1008;
              v723 = !v722 || v721 > &v1009;
              if (v723 || v716 > v721)
              {
                goto LABEL_1543;
              }

              *v716 = (*v717 * *v717) * *v716;
              v714 = (v714 + 1);
              ++v716;
            }

            while (v714 < v713);
          }

          v725 = 56250 * ((v28 * 50.0) / 100) / 100000;
          LODWORD(v997[0]) = 0;
          v726 = v725;
          vDSP_vfill(v997, v1010, 1, v725);
          v25 = v1010 + 4 * v725;
          if (v25 >= v1010)
          {
            v727 = v442 - v725;
            if ((v442 - v725) < 1 || v25 <= v1011 && ((v728 = 4 * v725, v729 = 4 * (v442 - v725), v730 = 3840 - v728, v727 <= 0x780u) ? (v731 = v729 > v730) : (v731 = 1), !v731 && (memcpy(v25, v1008, v729), v25 + v729 >= v25)))
            {
              LODWORD(v997[0]) = 0;
              vDSP_vfill(v997, v1011, 1, v442);
              *&v997[0] = v1010;
              *(&v997[0] + 1) = v1011;
              *&v997[1] = v1010;
              wtda(v997);
              *&v997[0] = &v987[-v726];
              *(&v997[0] + 1) = &v1009;
              *&v997[1] = v1008;
              result = wtda(v997);
              *v973 = 0;
              *v970 = 1;
              return result;
            }
          }
        }
      }
    }
  }

  do
  {
LABEL_1543:
    __break(0x5519u);
LABEL_1544:
    ;
  }

  while (v980 < v985);
LABEL_1545:
  v963 = v979;
  *&__b[0] = v1008 + 4 * (v979 - ((v28 * 5625000.0) / 20000000.0));
  *(&__b[0] + 1) = v25;
  *&__b[1] = v1008;
  result = wtda(__b);
  *v973 = 1;
  *v970 = 0;
  *v976 = v963;
  return result;
}

void hq_lr_dec(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v1266 = v2;
  v4 = v3;
  v6 = v5;
  v1257 = v7;
  __C = v8;
  v9 = v1;
  v1397[1] = *MEMORY[0x1E69E9840];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1346[2] = v10;
  v1346[3] = v10;
  v1346[0] = v10;
  v1346[1] = v10;
  v1305 = -21846;
  v1300 = -21846;
  v1345 = v10;
  v1344 = v10;
  v1343 = v10;
  v1342 = v10;
  v1341[3] = v10;
  v1341[2] = v10;
  v1341[1] = v10;
  v1341[0] = v10;
  v1340[3] = v10;
  v1340[2] = v10;
  v1340[1] = v10;
  v1340[0] = v10;
  v1339[3] = v10;
  v1339[2] = v10;
  v1339[1] = v10;
  v1339[0] = v10;
  v1338[7] = v10;
  v1338[6] = v10;
  v1338[5] = v10;
  v1338[4] = v10;
  v1338[3] = v10;
  v1338[2] = v10;
  v1338[1] = v10;
  v1338[0] = v10;
  memset(v1337, 170, sizeof(v1337));
  *&v11 = -1;
  *(&v11 + 1) = -1;
  v1336[7] = v11;
  v1336[6] = v11;
  v1336[5] = v11;
  v1336[4] = v11;
  v1336[3] = v11;
  v1336[2] = v11;
  v1336[1] = v11;
  v1336[0] = v11;
  v1335[7] = v11;
  v1335[6] = v11;
  v1335[5] = v11;
  v1335[4] = v11;
  v1335[3] = v11;
  v1335[2] = v11;
  v1335[1] = v11;
  v1335[0] = v11;
  memset(v1334, 255, sizeof(v1334));
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1333[7] = v12;
  v1333[6] = v12;
  v1333[5] = v12;
  v1333[4] = v12;
  v1333[3] = v12;
  v1333[2] = v12;
  v1333[1] = v12;
  v1333[0] = v12;
  memset(v1332, 255, sizeof(v1332));
  v1291 = -21846;
  v1289 = 0;
  memset(__b, 255, sizeof(__b));
  *&v13 = -1;
  *(&v13 + 1) = -1;
  v1330[6] = v13;
  v1330[7] = v13;
  v1330[4] = v13;
  v1330[5] = v13;
  v1330[2] = v13;
  v1330[3] = v13;
  v1330[0] = v13;
  v1330[1] = v13;
  v1329[6] = v13;
  v1329[7] = v13;
  v1329[4] = v13;
  v1329[5] = v13;
  v1329[2] = v13;
  v1329[3] = v13;
  v1329[0] = v13;
  v1329[1] = v13;
  v1328[6] = v13;
  v1328[7] = v13;
  v1328[4] = v13;
  v1328[5] = v13;
  v1328[2] = v13;
  v1328[3] = v13;
  v1328[0] = v13;
  v1328[1] = v13;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1327[2] = v13;
  v1327[3] = v13;
  v1327[0] = v13;
  v1327[1] = v13;
  memset(v1326, 170, sizeof(v1326));
  memset(v1325, 170, sizeof(v1325));
  v1324 = 0xAAAAAAAAAAAAAAAALL;
  v1287 = -21846;
  v1322[6] = v13;
  v1322[7] = v13;
  v1322[4] = v13;
  v1322[5] = v13;
  v1322[2] = v13;
  v1322[3] = v13;
  v1322[0] = v13;
  v1322[1] = v13;
  v1321[6] = v13;
  v1321[7] = v13;
  v1321[4] = v13;
  v1321[5] = v13;
  v1321[2] = v13;
  v1321[3] = v13;
  v1321[0] = v13;
  v1321[1] = v13;
  v1319[6] = v13;
  v1320 = v13;
  v1319[4] = v13;
  v1319[5] = v13;
  v1319[2] = v13;
  v1319[3] = v13;
  v1319[0] = v13;
  v1319[1] = v13;
  v1318[6] = v13;
  v1318[7] = v13;
  v1318[4] = v13;
  v1318[5] = v13;
  v1318[2] = v13;
  v1318[3] = v13;
  v1318[1] = v13;
  v1318[0] = v13;
  v1286 = 0;
  v1288 = 0;
  LODWORD(v1396[0]) = 0;
  vDSP_vfill(v1396, v1334, 1, 0x3C0uLL);
  if (v6 >= 1)
  {
    v14 = v6;
    v15 = v1337;
    do
    {
      v16 = v15 + 1;
      if (v15 < v1337 || v16 > v1338 || v15 > v16)
      {
        goto LABEL_2359;
      }

      *v15++ = 0;
      --v14;
    }

    while (v14);
  }

  v19 = 0;
  v1259 = (v9 + 64056);
  v1278 = &v1288 + 2;
  v1270 = (v9 + 68560);
  v1271 = &v1289;
  v1281 = &v1356 + 2;
  __N = &v1309 + 4;
  do
  {
    v20 = &v1326[v19 + 18];
    if (&v1326[v19 + 16] < &v1326[16] || v20 > v1327 || &v1326[v19 + 16] > v20)
    {
      goto LABEL_2359;
    }

    *&v1326[v19 + 16] = 0;
    v19 += 2;
  }

  while (v19 != 8);
  *v1275 = v1335;
  v23 = *(v9 + 5208);
  v24 = *(v9 + 5242);
  v1283 = v9;
  v1258 = v1327;
  if (v24 == 2 && (v23 == 16400 || v23 == 13200))
  {
    next_indice = get_next_indice(v9, 2);
    v27 = v4 - 2;
    *v1262 = next_indice;
    v28 = next_indice == 1;
    *v1266 = v28;
  }

  else
  {
    v28 = get_next_indice(v9, 1);
    *v1262 = 0;
    *v1266 = v28;
    v27 = v4 - 1;
  }

  v1304 = -1431655766;
  v1303 = -21846;
  v1302 = -21846;
  v1301 = -21846;
  v1299 = -1;
  v1298 = -1;
  v1297 = NAN;
  v1296 = NAN;
  v1295 = -1;
  v1293 = -21846;
  v1292 = -21846;
  v1294 = -1431655766;
  *v1265 = v23;
  LODWORD(v1264) = v27;
  v1273 = v1341;
  v1274 = &v1342;
  v1285 = v1346;
  *v1263 = v6;
  hq2_core_configure(v6, v27, v28, &v1304 + 1, &v1304, v1340, v1341, v26, &v1342, v1346, v1341, &v1342, &v1294, &v1293, &v1292, &v1303, &v1302, &v1301, &v1295, &v1297, &v1296, &v1299, &v1298, v23);
  v1284 = SHIWORD(v1304);
  v29 = v1341 + SHIWORD(v1304);
  v30 = v29 - 1;
  if (v29 - 1 < v1341 || v29 > v1274 || v30 > v29)
  {
    goto LABEL_2359;
  }

  v1290 = *v30;
  v1289 = v1284;
  if (*(v1283 + 5242) == 2)
  {
    v31 = *v1265;
    if (!*v1266 && (*v1265 == 16400 || *v1265 == 13200))
    {
      LODWORD(v1261) = *v1262 == 0;
      if ((*v1262 | 2) == 2)
      {
        LODWORD(v1264) = v1264 - get_usebit_npswb(v1262[0]);
      }
    }

    else
    {
      LODWORD(v1261) = 0;
    }
  }

  else
  {
    LODWORD(v1261) = 0;
    v31 = *v1265;
  }

  if ((v31 == 16400 || *v1265 == 13200) && *(v1283 + 5242) == 2 && *v1259)
  {
    v32 = v1259 + 42;
    v33 = v1283 + 64148;
    v34 = 4;
    v35 = v1259 + 42;
    do
    {
      if (v35 < v32 || (v35 + 1) > v33 || v35 > v35 + 1)
      {
        goto LABEL_2359;
      }

      *v35++ = 0;
      --v34;
    }

    while (v34);
  }

  if (v1284 > 0x20)
  {
    goto LABEL_2359;
  }

  v36 = v1284;
  v37 = v1284;
  v38 = *v1266;
  v39 = v1294;
  *&v40 = 0xAAAAAAAAAAAAAAAALL;
  *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1396[7] = v40;
  v1396[6] = v40;
  v1396[5] = v40;
  v1396[4] = v40;
  v1396[3] = v40;
  v1396[2] = v40;
  v1396[1] = v40;
  v1396[0] = v40;
  memset(v1395, 0, 128);
  v1394[7] = v40;
  v1394[6] = v40;
  v1394[5] = v40;
  v1394[4] = v40;
  v1394[3] = v40;
  v1394[2] = v40;
  v1394[1] = v40;
  v1394[0] = v40;
  v41 = v1283;
  LODWORD(v1279) = v38;
  LODWORD(v1280) = v1293;
  if (!get_next_indice(v1283, 1))
  {
    LOWORD(v1373[0]) = -21846;
    if (get_next_indice(v1283, 1))
    {
      v51 = get_next_indice(v1283, 3);
      if (v1284)
      {
        v52 = v51;
        v53 = 4;
        v54 = v1395;
        v55 = v1284;
        do
        {
          LOWORD(v1373[0]) = 0;
          v56 = decode_huff_8s(v1283, v1373, v1373 + 2);
          if (v54 < v1395 || v54 + 1 > &v1395[8] || v54 > v54 + 1)
          {
            goto LABEL_2359;
          }

          *v54++ = (v56 - 4) << v52;
          v53 += LOWORD(v1373[0]);
          --v55;
        }

        while (v55);
        v50 = v53 + v52 * v1284;
        v57 = v1395;
        v58 = v37;
        do
        {
          v59 = get_next_indice(v1283, v52);
          if (v57 < v1395 || v57 + 1 > &v1395[8] || v57 > v57 + 1)
          {
            goto LABEL_2359;
          }

          *v57++ += v59;
          --v58;
        }

        while (v58);
      }

      else
      {
        v50 = 4;
      }
    }

    else
    {
      v76 = get_next_indice(v1283, 1);
      v77 = get_next_indice(v1283, 1);
      if (v76)
      {
        if (v77 == 1)
        {
          v78 = get_next_indice(v1283, 5);
          LODWORD(v1395[0]) = get_next_indice(v1283, 7) - 64;
          v79 = get_next_indice(v1283, 7);
          v80 = v1395 + v78;
          if (v80 < v1395 || v80 + 1 > &v1395[8] || v80 > v80 + 1)
          {
            goto LABEL_2359;
          }

          v90 = v78;
          *v80 = v79 - 64;
          if (v78 < 2)
          {
            v50 = 22;
            v41 = v1283;
            v36 = v1284;
          }

          else
          {
            v1277 = v78;
            v81 = v78 - 1;
            v82 = v1395 + 1;
            v50 = 22;
            v41 = v1283;
            do
            {
              LOWORD(v1373[0]) = 0;
              v83 = decode_huff_8s(v41, v1373, v1373 + 2);
              if (v82 < v1395 || v82 + 1 > &v1395[8] || v82 > v82 + 1)
              {
                goto LABEL_2359;
              }

              *v82++ = v83 - 4;
              v50 += LOWORD(v1373[0]);
              --v81;
              v41 = v1283;
            }

            while (v81);
            v36 = v1284;
            v90 = v1277;
          }
        }

        else
        {
          v89 = get_next_indice(v1283, 7);
          v90 = 0;
          LODWORD(v1395[0]) = v89 - 64;
          v50 = 10;
        }

        if ((v90 + 1) < v36)
        {
          v92 = (v90 + 1) + 1;
          v93 = v1395 + (v90 + 1);
          do
          {
            LOWORD(v1373[0]) = 0;
            v94 = decode_huff_8s(v41, v1373, v1373 + 2);
            if (v93 < v1395 || v93 + 1 > &v1395[8] || v93 > v93 + 1)
            {
              goto LABEL_2359;
            }

            *v93++ = v94 - 4;
            v50 += LOWORD(v1373[0]);
            v41 = v1283;
            v533 = v1284 == v92++;
          }

          while (!v533);
        }
      }

      else
      {
        if (v77 == 1)
        {
          v91 = get_next_indice(v1283, 5);
          v84 = get_next_indice(v1283, 7);
          v85 = v1395 + v91;
          if (v85 < v1395 || v85 + 1 > &v1395[8] || v85 > v85 + 1)
          {
            goto LABEL_2359;
          }

          *v85 = v84 - 64;
          if (v91 < 1)
          {
            v50 = 15;
          }

          else
          {
            v86 = v91;
            v50 = 15;
            v87 = v1395;
            do
            {
              LOWORD(v1373[0]) = 0;
              v88 = decode_huff_8s(v1283, v1373, v1373 + 2);
              if (v87 < v1395 || v87 + 1 > &v1395[8] || v87 > v87 + 1)
              {
                goto LABEL_2359;
              }

              *v87++ = v88 - 4;
              v50 += LOWORD(v1373[0]);
              --v86;
            }

            while (v86);
          }

          v41 = v1283;
          v36 = v1284;
        }

        else
        {
          v50 = 3;
          v91 = -1;
        }

        if ((v91 + 1) < v36)
        {
          v95 = (v91 + 1) + 1;
          v96 = v1395 + (v91 + 1);
          do
          {
            LOWORD(v1373[0]) = 0;
            v97 = decode_huff_8s(v41, v1373, v1373 + 2);
            if (v96 < v1395 || v96 + 1 > &v1395[8] || v96 > v96 + 1)
            {
              goto LABEL_2359;
            }

            *v96++ = v97 - 4;
            v50 += LOWORD(v1373[0]);
            v41 = v1283;
            v533 = v1284 == v95++;
          }

          while (!v533);
        }
      }
    }

    v36 = v1284;
    goto LABEL_141;
  }

  *&v42 = 0xAAAAAAAAAAAAAAAALL;
  *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (!v38)
  {
    v1373[2] = v42;
    v1373[3] = v42;
    v1373[0] = v42;
    v1373[1] = v42;
    v60 = decode_envelope_indices(v1283, 0, v1284, 0, v1373, &v1373[4], 1u, 0);
    if (!v1284)
    {
      goto LABEL_2359;
    }

    v61 = v60;
    v62 = v1373;
    v63 = v1284;
    do
    {
      v64 = get_next_indice(v41, 1);
      if (v62 < v1373 || v62 + 1 > &v1373[4] || v62 > v62 + 1)
      {
        goto LABEL_2359;
      }

      *v62 = v64 | (2 * *v62);
      ++v62;
      --v63;
    }

    while (v63);
    if (v1284 != 1)
    {
      v65 = v37 - 1;
      v66 = v1395 + 1;
      v67 = v1373 + 1;
      do
      {
        v68 = v67 + 1;
        v70 = v67 < v1373 || v68 > &v1373[4] || v67 > v68;
        v71 = v66 + 1;
        if (v70 || v66 < v1395 || v71 > v1395 + v37 || v66 > v71)
        {
          goto LABEL_2359;
        }

        v75 = *v67++;
        *v66++ = v75 - 32;
        --v65;
      }

      while (v65);
    }

    v36 = v1284;
    v50 = v1284 + v61 + 6;
    LODWORD(v1395[0]) = SLOWORD(v1373[0]) - 46;
LABEL_141:
    v44 = v37;
    if (!v39)
    {
      goto LABEL_148;
    }

    goto LABEL_142;
  }

  v1373[2] = v42;
  v1373[3] = v42;
  v1373[0] = v42;
  v1373[1] = v42;
  v43 = decode_envelope_indices(v1283, 0, v1284, 0, v1373, &v1373[4], 2u, v38);
  v44 = v1284;
  if (v1284)
  {
    v45 = v1395;
    v46 = v1373;
    v47 = v1284;
    do
    {
      if (v46 + 1 > &v1373[4] || v46 > v46 + 1)
      {
        goto LABEL_2359;
      }

      v49 = *v46++;
      *v45++ = v49 - 15;
      --v47;
    }

    while (v47);
  }

  v50 = v43 + 6;
  if (!v39)
  {
    goto LABEL_148;
  }

LABEL_142:
  if (v39 == -1)
  {
    v98 = 31;
    goto LABEL_149;
  }

  v99 = v39 ^ (v39 >> 31);
  if (v99 <= 0x3FFFFFFF)
  {
    v98 = 0;
    do
    {
      v100 = v99 >> 29;
      v99 *= 2;
      ++v98;
    }

    while (!v100);
    goto LABEL_149;
  }

LABEL_148:
  v98 = 0;
LABEL_149:
  v101 = L_shl(v39, v98);
  v102 = ((v101 + 0x8000) ^ v101) > -1 || v101 < 0;
  v103 = (v101 + 0x8000) >> 16;
  if (!v102)
  {
    LOWORD(v103) = 0x7FFF;
  }

  v104 = div_s(0x4000, v103);
  v105 = 5 - (16 - v98);
  if (v105 >= 0x7FFF)
  {
    LOWORD(v105) = 0x7FFF;
  }

  if (v104 * v1280 == 0x40000000)
  {
    v106 = 0x7FFFFFFF;
  }

  else
  {
    v106 = 2 * v104 * v1280;
  }

  if (v98 < -32751)
  {
    LOWORD(v105) = -32762;
  }

  v107 = L_shl(v106, v105);
  v108 = ((v107 + 0x8000) ^ v107) > -1 || v107 < 0;
  v109 = (v107 + 0x8000) >> 16;
  if (!v108)
  {
    v109 = 0x7FFF;
  }

  LODWORD(v1396[0]) = LODWORD(v1395[0]) + v109;
  if (v36 >= 2)
  {
    v110 = 0;
    do
    {
      v111 = v1395 + v110 + 4;
      v112 = v1395 + v110 + 8;
      v114 = v111 < v1395 || v112 > &v1395[8] || v111 > v112;
      v115 = v1396 + v110;
      v116 = v1396 + v110 + 4;
      v117 = !v114 && v115 >= v1396;
      v118 = v115 + 8;
      if (!v117 || v118 > &v1396[8] || v116 > v118)
      {
        goto LABEL_2359;
      }

      *v116 = *(v1396 + v110) + *v111;
      v110 += 4;
    }

    while (4 * v44 - 4 != v110);
  }

  if (v36)
  {
    v121 = v1394;
    v122 = v39 >> 16;
    v123 = v1335;
    v124 = v1396;
    v125 = v44;
    do
    {
      v126 = v124 + 2 > &v1396[8] || v124 > v124 + 2;
      v127 = v121 + 1;
      if (v126 || v127 > &v1394[8] || v121 > v127)
      {
        goto LABEL_2359;
      }

      v131 = *v124;
      v124 += 2;
      v130 = v131;
      v132 = 2 * v122 * v131;
      if (v122 * v131 == 0x40000000)
      {
        v133 = 0x7FFFFFFF;
      }

      else
      {
        v133 = v132;
      }

      v134 = v39 * v130;
      v135 = v133 ^ (v134 >> 15);
      v136 = v133 + (v134 >> 15);
      v137 = (v136 ^ (v134 >> 15)) > -1 || v135 < 0;
      v138 = (v134 >> 31) ^ 0x7FFFFFFF;
      if (v137)
      {
        v138 = v136;
      }

      *v121++ = v138;
      v139 = vcvtd_n_f64_s32(v138, 0xEuLL);
      *v123++ = v139;
      --v125;
    }

    while (v125);
  }

  if (v1279)
  {
    reverse_transient_frame_energies(v1335, v1335 + 4 * v44, v36);
  }

  v1276 = v1336;
  if (v36)
  {
    v140 = v44;
    v141 = v1335;
    while (1)
    {
      v142 = (v141 + 1);
      if (v141 < v1335 || v142 > v1276 || v141 > v142)
      {
        goto LABEL_2359;
      }

      if (*v141 > 45.0 || *v141 < -6.7)
      {
        break;
      }

      ++v141;
      if (!--v140)
      {
        v145 = v1335;
        v146 = v1319;
        v147 = v44;
        v148 = v1276;
        do
        {
          v149 = v145 + 1;
          v151 = v145 < v1335 || v149 > v148 || v145 > v149;
          v152 = v146 + 1;
          if (v151 || v146 < v1319 || v152 > v1321 || v146 > v152)
          {
            goto LABEL_2359;
          }

          v156 = *v145++;
          *v146++ = vcvtd_n_s64_f64(v156, 0xEuLL);
          --v147;
        }

        while (v147);
        goto LABEL_238;
      }
    }

    *(v1283 + 5168) = 1;
    LODWORD(v1396[0]) = 0;
    v189 = v1263[0];
    goto LABEL_384;
  }

LABEL_238:
  v158 = log(v1303) / 0.693147181;
  v159 = vcvtps_s32_f32(v50 + 1.0);
  LODWORD(v1269) = v158;
  v160 = v1264 - (v159 + v1302 * v158);
  v1305 = v1264 - (v159 + v1302 * v158);
  v161 = v1283;
  v162 = *v1265;
  if (*(v1283 + 5242) == 2 && (*v1265 == 16400 || *v1265 == 13200))
  {
    v163 = v1284;
    if (*v1262 == 2)
    {
      if (v1284)
      {
        v164 = v1346;
        do
        {
          v165 = (v164 + 2);
          if (v164 < v1346 || v165 > &v1347 || v164 > v165)
          {
            goto LABEL_2359;
          }

          *v164 = 1;
          v164 = (v164 + 2);
          --v44;
        }

        while (v44);
      }
    }

    else
    {
      v1305 = v160 - p2a_threshold_dequant(v1283, v1346, &v1347, v1284, v1301);
      if (!*v1262)
      {
        return_bits_normal2(&v1305, v1346, &v1347, v1284);
      }
    }
  }

  else
  {
    v163 = v1284;
    v1305 = v160 - p2a_threshold_dequant(v1283, v1346, &v1347, v1284, v1301);
  }

  if (v1261)
  {
    spt_shorten_domain_band_save(v163, &v1342, v1285, v1341, v1274, v1340, v1273, v157, &v1326[8], &v1326[16], v1326, &v1326[8], &v1325[16], v1326);
    v1268 = v1325;
    v1277 = &v1325[8];
    v1280 = &v1325[16];
    spt_shorten_domain_pre(&v1342, v1285, v1341, v1274, v161 + 64140, v161 + 64148, v163, v162, &v1325[8], &v1325[16], v1325, &v1325[8], &v1324, v1325);
    v168 = v163;
    v169 = 0;
    *&v1396[0] = 0xAAAAAAAAAAAAAAAALL;
    v1267 = (v1340 + 2 * v168);
    v170 = v1305;
    v1272 = v1341 + v168;
    v1279 = &v1342 + 2 * v168;
    v171 = v1346 + 2 * v168;
    do
    {
      v172 = v1396 + v169;
      v173 = v1396 + v169 + 2;
      if ((v1396 + v169) < v1396 || v173 > v1396 + 8 || v172 > v173)
      {
        goto LABEL_2359;
      }

      *(v1396 + v169) = 0;
      v176 = &v171[v169 - 8];
      if (v176 < v1346)
      {
        goto LABEL_2359;
      }

      v177 = &v171[v169 - 6];
      if (v177 > &v1347 || v176 > v177)
      {
        goto LABEL_2359;
      }

      if (*v176 == 1)
      {
        v178 = get_next_indice(v1283, 1);
        *v172 = v178;
        --v170;
        if (v178 == 1)
        {
          v179 = &v1325[v169 + 8];
          if (&v1325[v169 + 8] < &v1325[8])
          {
            goto LABEL_2359;
          }

          if ((v179 + 2) > v1280)
          {
            goto LABEL_2359;
          }

          if (v179 > v179 + 2)
          {
            goto LABEL_2359;
          }

          v180 = (v1279 + v169 - 8);
          if (v180 < &v1342)
          {
            goto LABEL_2359;
          }

          v181 = v1279 + v169 - 6;
          if (v181 > v1285)
          {
            goto LABEL_2359;
          }

          if (v180 > v181)
          {
            goto LABEL_2359;
          }

          *v180 = *&v1325[v169 + 8];
          v182 = &v1325[v169];
          if (&v1325[v169] < v1325)
          {
            goto LABEL_2359;
          }

          if ((v182 + 2) > v1277)
          {
            goto LABEL_2359;
          }

          if (v182 > v182 + 2)
          {
            goto LABEL_2359;
          }

          v183 = &v1272[v169 / 2 - 4];
          if (v183 < v1341)
          {
            goto LABEL_2359;
          }

          v184 = &v1272[v169 / 2 - 3];
          if (v184 > v1274)
          {
            goto LABEL_2359;
          }

          if (v183 > v184)
          {
            goto LABEL_2359;
          }

          *v183 = *&v1325[v169];
          v185 = &v1325[v169 - 8];
          if (&v1325[v169 - 8] < &v1324)
          {
            goto LABEL_2359;
          }

          if ((v185 + 1) > v1268)
          {
            goto LABEL_2359;
          }

          if (v185 > v185 + 1)
          {
            goto LABEL_2359;
          }

          v186 = v1267 + v169 - 8;
          if (v186 < v1340)
          {
            goto LABEL_2359;
          }

          v187 = v1267 + v169 - 6;
          if (v187 > v1273 || v186 > v187)
          {
            goto LABEL_2359;
          }

          *v186 = *v185;
        }
      }

      v169 += 2;
    }

    while (v169 != 8);
    v1305 = v170;
    v188 = v1263[0];
    v161 = v1283;
    v163 = v1284;
  }

  else
  {
    v170 = v1305;
    v188 = v1263[0];
  }

  if (v170 < 2)
  {
    *(v161 + 5168) = 1;
    LODWORD(v1396[0]) = 0;
    v189 = v188;
LABEL_384:
    vDSP_vfill(v1396, __C, 1, v189);
    return;
  }

  LODWORD(v1277) = v170;
  if (v163)
  {
    v190 = 0;
    v191 = v163;
    do
    {
      v192 = (v1319 + v190);
      v193 = v1319 + v190 + 4;
      if ((v1319 + v190) < v1319 || v193 > v1321 || v192 > v193)
      {
        goto LABEL_2359;
      }

      v196 = *v192;
      v197 = v196 - 0x20000000;
      v198 = 4 * v196;
      v199 = (v196 >> 31) ^ 0x7FFFFFFF;
      v200 = v197 >> 30 == 3 ? v198 : v199;
      v201 = Pow2_11469(30, v200 >> 1, &v1286);
      if (v200 >= -2145517568 && (v200 - 1966080) >> 16 > -32763)
      {
        v202 = ((v200 - 1966080) >> 16) - 6;
      }

      else
      {
        v1286 = 1;
        LOWORD(v202) = 0x8000;
      }

      v203 = L_shl(v201, v202);
      v204 = v1322 + v190;
      if ((v1322 + v190) < v1322)
      {
        goto LABEL_2359;
      }

      if (v204 + 4 > &v1323)
      {
        goto LABEL_2359;
      }

      if (v204 > v204 + 4)
      {
        goto LABEL_2359;
      }

      *(v1322 + v190) = v203;
      v205 = v1330 + v190;
      if ((v1330 + v190) < v1330 || v205 + 4 > __b || v205 > v205 + 4)
      {
        goto LABEL_2359;
      }

      v206 = v203 * 64.0;
      *(v1330 + v190) = v206;
      v190 += 4;
      --v191;
    }

    while (v191);
    v207 = 0;
    v1279 = v1330;
    v1280 = v1322;
    while (1)
    {
      v208 = v1322 + v207;
      v209 = v208 + 1;
      if (v208 < v1322 || v209 > &v1323 || v208 > v209)
      {
        goto LABEL_2359;
      }

      v212 = *v208;
      v213 = v212 <= 1 ? 1 : v212;
      if (v212 > 0x3FFFFFFF)
      {
        LOWORD(v214) = 0;
      }

      else
      {
        v214 = 0;
        v215 = v213;
        do
        {
          v216 = v215 >> 29;
          v215 *= 2;
          ++v214;
        }

        while (!v216);
      }

      v217 = v214;
      v218 = L_shl(v213, v214);
      v219 = v1340 + v207;
      if (v219 < v1340)
      {
        goto LABEL_2359;
      }

      if (v219 + 1 > v1273 || v219 > v219 + 1)
      {
        goto LABEL_2359;
      }

      v221 = v218;
      v222 = *v219;
      v223 = *v219;
      if (*v219)
      {
        if (v223 == 0xFFFF)
        {
          LOWORD(v223) = 31;
        }

        else
        {
          v224 = v222 ^ (v222 >> 31);
          if (v224 > 0x3FFFFFFF)
          {
            LOWORD(v223) = 0;
          }

          else
          {
            LOWORD(v223) = 0;
            do
            {
              v225 = v224 >> 29;
              v224 *= 2;
              LOWORD(v223) = v223 + 1;
            }

            while (!v225);
          }
        }
      }

      v226 = L_shl(v222, v223);
      v227 = v217 - v223;
      if (v227 < 0x8000)
      {
        if (v227 <= -32769)
        {
          v1286 = 1;
          LOWORD(v227) = 0x8000;
        }
      }

      else
      {
        v1286 = 1;
        LOWORD(v227) = 0x7FFF;
      }

      v1287 = v227;
      v228 = (v226 >> 16) - (v221 >> 16);
      if (v228 >= 0x8000)
      {
        break;
      }

      v229 = HIWORD(v226);
      if (v228 > -32769)
      {
        if (v228 >= 1)
        {
          goto LABEL_353;
        }
      }

      else
      {
        v1286 = 1;
      }

LABEL_357:
      v231 = div_s(v229, v221 >> 16);
      v232 = Isqrt_lc1((v231 << 16), &v1287, &v1286);
      if (v1287 > -32753)
      {
        v233 = 15 - v1287;
      }

      else
      {
        v1286 = 1;
        v233 = 0x7FFF;
      }

      v234 = L_shr(v232, v233);
      v235 = v1321 + 4 * v207;
      if (v235 < v1321)
      {
        goto LABEL_2359;
      }

      if ((v235 + 4) > v1280)
      {
        goto LABEL_2359;
      }

      if (v235 > v235 + 4)
      {
        goto LABEL_2359;
      }

      *(v1321 + v207) = v234;
      v236 = v1329 + 4 * v207;
      if (v236 < v1329 || (v236 + 4) > v1279 || v236 > v236 + 4)
      {
        goto LABEL_2359;
      }

      v237 = vcvtd_n_f64_s32(v234, 0xDuLL);
      *(v1329 + v207++) = v237;
      v163 = v1284;
      if (v207 == v1284)
      {
        goto LABEL_367;
      }
    }

    v1286 = 1;
LABEL_353:
    if (v227 == 0x7FFF)
    {
      v1286 = 1;
      v230 = 0x7FFF;
    }

    else
    {
      v230 = v227 + 1;
    }

    v229 = v226 >> 17;
    v1287 = v230;
    goto LABEL_357;
  }

LABEL_367:
  if (v1263[0] != 160 || *v1266)
  {
    v238 = v1283;
    if (v1263[0] != 320 || *v1266)
    {
      goto LABEL_405;
    }

    v1305 = v1277 - 2;
    v249 = &v1288;
    v250 = 1;
    do
    {
      v251 = v250;
      v252 = get_next_indice(v1283, 1);
      if (v249 + 2 > v1271)
      {
        goto LABEL_2359;
      }

      v250 = 0;
      *v249 = v252;
      v249 = v1278;
    }

    while ((v251 & 1) != 0);
    v253 = v1284;
    if (v1284)
    {
      v254 = v1321;
      do
      {
        v255 = v254 + 1;
        if (v254 < v1321 || v255 > v1322 || v254 > v255)
        {
          goto LABEL_2359;
        }

        v258 = (*v254 >> 31) ^ 0x7FFFFFFF;
        if ((*v254 - 0x20000000) >> 30 == 3)
        {
          v258 = 4 * *v254;
        }

        *v254++ = v258;
        --v253;
      }

      while (v253);
    }

    if (*(v1283 + 5208) == 13200)
    {
      v259 = SHIWORD(v1343) - v1343;
      if (v259 < 0x8000)
      {
        if (v259 > -32769)
        {
          LODWORD(v1256) = SHIWORD(v1343) - v1343;
          goto LABEL_659;
        }

        v1286 = 1;
        v260 = 0x8000;
      }

      else
      {
        v1286 = 1;
        v260 = 0x7FFF;
      }

      LODWORD(v1256) = v260;
LABEL_659:
      v351 = HIWORD(v1304);
      if (HIWORD(v1304) == 0x8000)
      {
        v1286 = 1;
        v352 = -32768;
      }

      else
      {
        v352 = (HIWORD(v1304) - 1);
      }

      v353 = v1341 + 2 * v352;
      if (v353 < v1341 || v353 + 2 > v1274 || v353 > v353 + 2)
      {
        goto LABEL_2359;
      }

      v354 = HIWORD(v1343);
      v355 = -15;
LABEL_674:
      v357 = *v353;
      if (v357 == 0x7FFF)
      {
        v1286 = 1;
        v358 = 0x7FFF;
      }

      else
      {
        v358 = (v357 + 1);
      }

      v359 = v358 - v354;
      if (v359 < 0x8000)
      {
        if (v359 <= -32769)
        {
          v1286 = 1;
          v359 = 0x8000;
        }
      }

      else
      {
        v1286 = 1;
        v359 = 0x7FFF;
      }

      LODWORD(v1255) = v359;
      v1247 = v351;
      if (v351 > 0)
      {
        v360 = 0;
        v361 = 0;
        v362 = 0;
        v363 = 0;
        LODWORD(v1280) = 0;
        v364 = 0;
        while (1)
        {
          if (((v361 - 8) & 0x8000) != 0)
          {
            goto LABEL_711;
          }

          LOWORD(v365) = v361 - v351;
          if ((v361 - v351) > -32769)
          {
            v365 = v365;
          }

          else
          {
            v1286 = 1;
            v365 = -32768;
          }

          v366 = v365 + v1301;
          if (v366 >= 0x8000)
          {
            goto LABEL_709;
          }

          if (v366 > -32769)
          {
            if ((v366 & 0x80000000) == 0)
            {
              goto LABEL_711;
            }
          }

          else
          {
            v1286 = 1;
          }

          v367 = v1321 + v360;
          if ((v1321 + v360) < v1321)
          {
            goto LABEL_2359;
          }

          if (v367 + 4 > v1322)
          {
            goto LABEL_2359;
          }

          if (v367 > v367 + 4)
          {
            goto LABEL_2359;
          }

          v368 = v1321 + v360;
          v370 = &v1320 + v360 + 12;
          v369 = *(v1321 + v360);
          if ((&v1320 + v360 + 12) < v1321 || v368 > v1322 || v370 > v368)
          {
            goto LABEL_2359;
          }

          v371 = *v370;
          v372 = v369 - *v370;
          if ((v371 ^ v369) < 0 && (v372 ^ v369) < 0)
          {
            v372 = (v369 >> 31) ^ 0x7FFFFFFF;
            v1286 = 1;
          }

          v373 = v372 >= 0 ? v372 : -v372;
          v374 = v372 == 0x80000000 ? 0x7FFFFFFF : v373;
          v364 += v374;
          if (((v369 ^ v1280) & 0x80000000) == 0 && (((v369 + v1280) ^ v1280) & 0x80000000) != 0)
          {
            break;
          }

          LODWORD(v1280) = v369 + v1280;
LABEL_711:
          v375 = v355 + v361;
          if (v375 >= 0x8000)
          {
            v1286 = 1;
LABEL_716:
            v376 = (v1322 + v360);
            if ((v1322 + v360) < v1322 || v376 + 1 > &v1323 || v376 > v376 + 1)
            {
              goto LABEL_2359;
            }

            v377 = *v376;
            v378 = v377 - 0x20000000;
            v379 = 4 * v377;
            v380 = (v377 >> 31) ^ 0x7FFFFFFF;
            if (v378 >> 30 == 3)
            {
              v381 = v379;
            }

            else
            {
              v381 = v380;
            }

            if ((v381 ^ v362) < 0 || (((v381 + v362) ^ v362) & 0x80000000) == 0)
            {
              v362 += v381;
              goto LABEL_738;
            }

            v362 = (v362 >> 31) ^ 0x7FFFFFFF;
LABEL_735:
            v1286 = 1;
            goto LABEL_738;
          }

          if (v375 > -32769)
          {
            if ((v375 & 0x80000000) == 0)
            {
              goto LABEL_716;
            }
          }

          else
          {
            v1286 = 1;
          }

          if (((v361 - 8) & 0x80000000) == 0)
          {
            v382 = (v1322 + v360);
            if ((v1322 + v360) < v1322 || v382 + 1 > &v1323 || v382 > v382 + 1)
            {
              goto LABEL_2359;
            }

            v383 = *v382;
            v384 = v383 - 0x20000000;
            v385 = 4 * v383;
            v386 = (v383 >> 31) ^ 0x7FFFFFFF;
            if (v384 >> 30 == 3)
            {
              v387 = v385;
            }

            else
            {
              v387 = v386;
            }

            if ((v387 ^ v363) < 0 || (((v387 + v363) ^ v363) & 0x80000000) == 0)
            {
              v363 += v387;
              goto LABEL_738;
            }

            v363 = (v363 >> 31) ^ 0x7FFFFFFF;
            goto LABEL_735;
          }

LABEL_738:
          ++v361;
          v360 += 4;
          if (4 * v351 == v360)
          {
            LODWORD(v1267) = v364;
            v388 = v351;
            v389 = v363;
            goto LABEL_741;
          }
        }

        LODWORD(v1280) = (v1280 >> 31) ^ 0x7FFFFFFF;
LABEL_709:
        v1286 = 1;
        goto LABEL_711;
      }

      LODWORD(v1267) = 0;
      LODWORD(v1280) = 0;
      v388 = v351;
      v389 = 0;
      v362 = 0;
LABEL_741:
      v1284 = v1319;
      mvi2i(v1319, v1321, v1318, v1319, v388);
      if (v362 <= v389)
      {
        v390 = v389;
      }

      else
      {
        v390 = v362;
      }

      v391 = v1256;
      if (v391 <= v1255)
      {
        v392 = v1255;
      }

      else
      {
        v392 = v1256;
      }

      if (v390)
      {
        if (v390 == -1)
        {
          LOWORD(v390) = 31;
        }

        else
        {
          v393 = v390 ^ (v390 >> 31);
          if (v393 > 0x3FFFFFFF)
          {
            LOWORD(v390) = 0;
          }

          else
          {
            v390 = 0;
            do
            {
              v394 = v393 >> 29;
              v393 *= 2;
              ++v390;
            }

            while (!v394);
          }
        }
      }

      LODWORD(v1279) = v388;
      if (v392)
      {
        if (v392 == 0xFFFF)
        {
          v392 = 15;
        }

        else
        {
          v395 = (v392 ^ (v392 >> 15));
          if (v395 >= 0x4000)
          {
            v392 = 0;
          }

          else
          {
            v392 = 0;
            do
            {
              v395 = (2 * v395);
              ++v392;
            }

            while (v395 < 0x4000);
          }
        }
      }

      v396 = v390;
      v397 = L_shl(v362, v390);
      v398 = v392;
      v399 = shl(v391, v392, &v1286);
      if (v397 == 0x80000000 && v399 == -32768)
      {
        v400 = 0x7FFFFFFF;
      }

      else
      {
        v400 = ((v397 * v399) >> 15) + 2 * v399 * (v397 >> 16);
      }

      v1246 = v389;
      v401 = L_shl(v389, v396);
      v402 = shl(v1255, v398, &v1286);
      if (v401 == 0x80000000 && v402 == -32768)
      {
        v403 = 0x7FFFFFFF;
      }

      else
      {
        v403 = ((v401 * v402) >> 15) + 2 * v402 * (v401 >> 16);
      }

      v404 = v400 - v403;
      if ((v403 ^ v400) < 0 && (v404 ^ v400) < 0)
      {
        v404 = (v400 >> 31) ^ 0x7FFFFFFF;
        v1286 = 1;
      }

      LODWORD(v1277) = v1301;
      v405 = v1279 - v1301;
      if (v405 >= 0x8000)
      {
        v1286 = 1;
        goto LABEL_949;
      }

      LODWORD(v1272) = v404;
      LODWORD(v1254) = v1279 - v1301;
      if (v405 > -32769)
      {
        v406 = v1279 - v1301;
      }

      else
      {
        v1286 = 1;
        v406 = 0x8000;
      }

      if (v406 >= v351)
      {
LABEL_949:
        if (v1247 >= 1)
        {
          v471 = 0;
          v472 = 0;
          v473 = 0;
          v474 = 0;
          if (SHIWORD(v1304) <= 1)
          {
            v475 = 1;
          }

          else
          {
            v475 = SHIWORD(v1304);
          }

          v476 = v1321;
          while (1)
          {
            if (v471 > -32763)
            {
              v480 = v476 + 1 <= v1322 && v476 <= v476 + 1 && v476 >= v1321;
              if (((v471 - 6) & 0x8000) == 0)
              {
                if (!v480)
                {
                  goto LABEL_2359;
                }

                if (((*v476 ^ v472) & 0x80000000) != 0 || (((*v476 + v472) ^ v472) & 0x80000000) == 0)
                {
                  v481 = v474;
                  v482 = v473;
                  v472 += *v476;
                }

                else
                {
                  v472 = (v472 >> 31) ^ 0x7FFFFFFF;
                  v1286 = 1;
                  v481 = v474;
                  v482 = v473;
                }

                goto LABEL_985;
              }

              if (!v480)
              {
                goto LABEL_2359;
              }

              v477 = v1321 + v471;
            }

            else
            {
              v1286 = 1;
              if (v476 < v1321)
              {
                goto LABEL_2359;
              }

              if (v476 + 1 > v1322)
              {
                goto LABEL_2359;
              }

              v477 = v476;
              if (v476 > v476 + 1)
              {
                goto LABEL_2359;
              }
            }

            v481 = *v477;
            v482 = (v481 + v473);
            if (((v481 ^ v473) & 0x80000000) == 0 && ((v482 ^ v473) & 0x80000000) != 0)
            {
              v482 = (v473 >> 31) ^ 0x7FFFFFFFu;
              v1286 = 1;
            }

            v483 = v481 - v474;
            if (((v474 ^ v481) & 0x80000000) != 0 && ((v483 ^ v481) & 0x80000000) != 0)
            {
              v1286 = 1;
              if ((v481 & 0x80000000) != 0)
              {
                goto LABEL_983;
              }
            }

            else if (v483 < 1)
            {
LABEL_983:
              v481 = v474;
            }

LABEL_985:
            ++v471;
            ++v476;
            v473 = v482;
            v474 = v481;
            if (v475 == v471)
            {
              goto LABEL_988;
            }
          }
        }

        LODWORD(v481) = 0;
        LODWORD(v482) = 0;
        v472 = 0;
LABEL_988:
        v1280 = v481;
        v1279 = SWORD1(v481);
        v484 = 49152 * SWORD1(v481) + ((24576 * v481) >> 15);
        v485 = v482 >> 1;
        v486 = (v482 >> 1) - v472;
        if ((v472 ^ (v482 >> 1)) < 0 && (v486 ^ (v482 >> 1)) < 0)
        {
          v1286 = 1;
          if (v485 < 0)
          {
            goto LABEL_1003;
          }
        }

        else if (v486 < 1)
        {
          goto LABEL_1003;
        }

        v487 = v484 - (v482 >> 2);
        if (((v484 ^ (v482 >> 2)) & 0x80000000) != 0 && ((v487 ^ v484) & 0x80000000) != 0)
        {
          v1286 = 1;
          if ((v484 & 0x80000000) != 0)
          {
            goto LABEL_1003;
          }
        }

        else if (v487 < 1)
        {
          goto LABEL_1003;
        }

        v488 = 39322 * v1279 + ((19661 * v1280) >> 15);
        v489 = v485 - v488;
        if ((v488 ^ v485) < 0 && (v489 ^ v485) < 0)
        {
          v1286 = 1;
          if (v485 < 0)
          {
            goto LABEL_1019;
          }
        }

        else if (v489 < 0)
        {
          goto LABEL_1019;
        }

LABEL_1003:
        v490 = (v472 >> 1) - v482;
        if (((v482 ^ (v472 >> 1)) & 0x80000000) != 0 && (v490 ^ (v472 >> 1)) < 0)
        {
          v1286 = 1;
          if (v472 >> 1 < 0)
          {
            goto LABEL_1013;
          }
        }

        else if (v490 < 1)
        {
          goto LABEL_1013;
        }

        v491 = 49152 * (v482 >> 16) + ((24576 * v482) >> 15);
        v492 = (v472 >> 3) - v491;
        if (((v491 ^ (v472 >> 3)) & 0x80000000) != 0 && ((v492 ^ (v472 >> 3)) & 0x80000000) != 0)
        {
          v1286 = 1;
          if (((v472 >> 3) & 0x80000000) == 0)
          {
            goto LABEL_1013;
          }
        }

        else if ((v492 & 0x80000000) == 0)
        {
          goto LABEL_1013;
        }

        v493 = v484 - (v482 >> 2);
        if (((v484 ^ (v482 >> 2)) & 0x80000000) != 0 && ((v493 ^ v484) & 0x80000000) != 0)
        {
          v1286 = 1;
          if ((v484 & 0x80000000) != 0)
          {
            goto LABEL_1013;
          }

          goto LABEL_1019;
        }

        if (v493 >= 1)
        {
LABEL_1019:
          v494 = 0;
          v495 = v482 - 0x40000000;
          v496 = 2 * v482;
          if (v482 >= 0)
          {
            v497 = 2147418112;
          }

          else
          {
            v497 = 0x80000000;
          }

          if (v495 >= 0)
          {
            v498 = v497;
          }

          else
          {
            v498 = v496;
          }

          v499 = ((v498 >> 31) ^ HIWORD(v498));
          while (v498 >= 0x10000)
          {
            v503 = v499;
            v504 = HIWORD(v498);
            if (HIWORD(v498))
            {
              if (v504 == 0xFFFF)
              {
                LOWORD(v504) = 15;
              }

              else if (v503 >= 0x4000)
              {
                LOWORD(v504) = 0;
              }

              else
              {
                LOWORD(v505) = v503;
                LOWORD(v504) = 0;
                do
                {
                  v505 = (2 * v505);
                  LOWORD(v504) = v504 + 1;
                }

                while (v505 < 0x4000);
              }
            }

            v506 = shl((v498 >> 16), v504, &v1286);
            v501 = div_s(0x4000, v506);
            if (v504 > -32739)
            {
              v500 = v504 - 1;
            }

            else
            {
              v1286 = 1;
              v500 = -32739;
            }

            v499 = v503;
            if (v481 != 0x80000000 || v501 != -32768)
            {
              goto LABEL_1028;
            }

            v502 = 0x7FFFFFFF;
LABEL_1043:
            v507 = v1318 + v494;
            if (v507 < v1318 || (v507 + 1) > v1284 || v507 > v507 + 1)
            {
              goto LABEL_2359;
            }

            v508 = L_shl(12 * (v502 >> 16) + ((6 * v502) >> 15), v500);
            if (v508 >= 19661)
            {
              v509 = 19661;
            }

            else
            {
              v509 = v508;
            }

            if (*v507 == 0x80000000 && v509 == 0x8000)
            {
              v510 = 0x7FFFFFFF;
            }

            else
            {
              v511 = 2 * v509 * (*v507 >> 16) + ((*v507 * v509) >> 15);
              v512 = v511 - 0x40000000;
              v513 = 2 * v511;
              v510 = (v511 >> 31) ^ 0x7FFFFFFF;
              if (v512 < 0)
              {
                v510 = v513;
              }
            }

            *(v1318 + v494++) = v510;
            if (v494 == 6)
            {
              v262 = 1;
              goto LABEL_1056;
            }
          }

          v500 = 28;
          v501 = 0x7FFF;
LABEL_1028:
          v502 = ((v1280 * v501) >> 15) + 2 * v501 * v1279;
          goto LABEL_1043;
        }

LABEL_1013:
        v262 = 0;
LABEL_1056:
        v514 = SHIWORD(v1304);
        if (SHIWORD(v1304) >= 1)
        {
          v515 = v1318;
          v516 = v1328;
          v517 = SHIWORD(v1304);
          v518 = v1284;
          do
          {
            v519 = v515 + 1;
            v521 = v515 < v1318 || v519 > v518 || v515 > v519;
            v522 = v516 + 1;
            if (v521 || v516 < v1328 || v522 > v1329 || v516 > v522)
            {
              goto LABEL_2359;
            }

            v526 = *v515++;
            v527 = vcvtd_n_f64_s32(v526, 0xEuLL);
            *v516++ = v527;
            --v517;
          }

          while (v517);
        }

        v528 = v1246 * 16.0;
        v529 = v362 * 16.0;
        v238 = v1283;
        hq2_bit_alloc(v1328, v1329, v514, v1333, v1334, &v1305, v1346, &v1347, v1292, v1340, v1273, v1264, v1262[0], *(v1283 + 5242), *v1266);
        v530 = v1256;
        v531 = v1255;
        goto LABEL_1202;
      }

      v407 = 2 * v1280;
      if ((v1280 & 0x80000000) == 0)
      {
        v408 = 2147418112;
      }

      else
      {
        v408 = 0x80000000;
      }

      if (v1280 - 0x40000000 >= 0)
      {
        v407 = v408;
      }

      v1268 = &v1347;
      v1278 = v1322;
      v409 = v406;
      v1248 = v407 >> 16;
      v1249 = v1254;
      v410 = v407;
      v1243 = (((v407 >> 16) >> 15) ^ HIWORD(v407));
      v1251 = v1267 >> 16;
      v1250 = v1267;
      v1244 = SWORD1(v1280);
      v1245 = v1280;
      v1267 = v351;
      v412 = v1254 < -32768 || v1254 < -32760;
      LODWORD(v1253) = v412;
      LODWORD(v1252) = v1254 - 8;
      while (1)
      {
        v413 = v1346 + v409;
        v414 = (v413 + 1);
        if (v413 < v1346 || v414 > v1268 || v413 > v414)
        {
          goto LABEL_2359;
        }

        v417 = *v413;
        v418 = v1321 + v409;
        if (v417 == 0x8000)
        {
          v1286 = 1;
          if (v1272 <= 0)
          {
            goto LABEL_810;
          }
        }

        else if (v417 != 1 && v1272 < 1)
        {
LABEL_810:
          LOWORD(v423) = 0x4000;
          goto LABEL_848;
        }

        v419 = v1252;
        if (v1253)
        {
          v1286 = 1;
          v419 = 0x8000;
        }

        if (v410 >= 0x10000)
        {
          v424 = HIWORD(v410);
          if (HIWORD(v410))
          {
            if (v424 == 0xFFFF)
            {
              LOWORD(v424) = 15;
            }

            else
            {
              LOWORD(v425) = v1243;
              if (v1243 >= 0x4000)
              {
                LOWORD(v424) = 0;
              }

              else
              {
                LOWORD(v424) = 0;
                do
                {
                  v425 = (2 * v425);
                  LOWORD(v424) = v424 + 1;
                }

                while (v425 < 0x4000);
              }
            }
          }

          v426 = shl(v1248, v424, &v1286);
          v421 = div_s(0x4000, v426);
          if (v424 > -32739)
          {
            v420 = (29 - v424);
          }

          else
          {
            v1286 = 1;
            v420 = 0x7FFF;
          }
        }

        else
        {
          v420 = 0;
          v421 = 0x7FFF;
        }

        if (v418 < v1321 || (v418 + 1) > v1278 || v418 > v418 + 1)
        {
          goto LABEL_2359;
        }

        if (*v418 == 0x80000000 && v421 == -32768)
        {
          v427 = 0x7FFFFFFF;
        }

        else
        {
          v427 = ((*v418 * v421) >> 15) + 2 * v421 * (*v418 >> 16);
          if (v427 == 0x80000000 && v419 == 0x8000)
          {
            v428 = 0x7FFFFFFF;
            goto LABEL_832;
          }
        }

        v428 = ((v427 * v419) >> 15) + 2 * v419 * (v427 >> 16);
LABEL_832:
        if (v420 > -32736)
        {
          v429 = 32 - v420;
        }

        else
        {
          v1286 = 1;
          v429 = 0x7FFF;
        }

        v430 = L_shl((SHIWORD(v428) << 15) | (v428 >> 1), v429);
        if (v430 >= 6554)
        {
          v431 = 6554;
        }

        else
        {
          v431 = v430;
        }

        v432 = 2 * v1251 * v421 + ((v1250 * v421) >> 15);
        if (v432 == 0x80000000 && v431 == 0x8000)
        {
          v433 = 0x7FFFFFFF;
        }

        else
        {
          v433 = ((v432 * v431) >> 15) + 2 * v431 * (v432 >> 16);
        }

        v434 = L_shl(v433, (15 - v420));
        if (v434 >= 13107)
        {
          v435 = 13107;
        }

        else
        {
          v435 = v434;
        }

        if ((v435 >> 1) < 0x4000)
        {
          v423 = (v435 >> 1) + 0x4000;
        }

        else
        {
          v1286 = 1;
          LOWORD(v423) = 0x7FFF;
        }

LABEL_848:
        v436 = v409 - v1279;
        if (v436 < 0x8000)
        {
          if (v436 > -32769)
          {
            v436 = v436;
          }

          else
          {
            v1286 = 1;
            v436 = -32768;
          }
        }

        else
        {
          v1286 = 1;
          v436 = 0x7FFF;
        }

        v437 = v436 + v1277;
        if (v437 >= 0x8000)
        {
          v1286 = 1;
LABEL_858:
          if (v1254 <= -32769)
          {
            v1286 = 1;
            v438 = -32768;
            goto LABEL_862;
          }

          v438 = v1249;
          if (v1249 < 0x7FFF)
          {
LABEL_862:
            v439 = (v438 + 1);
          }

          else
          {
            v1286 = 1;
            v439 = 0x7FFF;
            v438 = v1249;
          }

          LODWORD(v440) = v409 - v439;
          if (v440 < 0x8000)
          {
            if (v440 > -32769)
            {
              v440 = v440;
            }

            else
            {
              v1286 = 1;
              v440 = -32768;
            }
          }

          else
          {
            v1286 = 1;
            v440 = 0x7FFFLL;
          }

          v441 = &v1288 + v440;
          if (v441 < &v1288 || v441 + 1 > v1271 || v441 > v441 + 1)
          {
            goto LABEL_2359;
          }

          v442 = *v441;
          if (v442 == 0x8000)
          {
            v443 = 0;
            v1286 = 1;
          }

          else
          {
            v443 = v442 == 1;
          }

          if (v438 > -32761)
          {
            v444 = v438 - 8;
          }

          else
          {
            v1286 = 1;
            v444 = 0x8000;
          }

          if (v443)
          {
            if (v418 < v1321 || (v418 + 1) > v1278 || v418 > v418 + 1)
            {
              goto LABEL_2359;
            }

            if (*v418 == 0x80000000 && v444 == 0x8000)
            {
              LOWORD(v445) = 0x7FFF;
              goto LABEL_884;
            }

            v445 = ((*v418 * v444) >> 15) + 2 * v444 * (*v418 >> 16);
            if (v445)
            {
              if (v445 <= -32768)
              {
                v445 = -32768;
              }

              if (v445 >= 0x7FFF)
              {
                LOWORD(v445) = 0x7FFF;
              }

              if (v445 == 0xFFFF)
              {
                v447 = 15;
              }

              else
              {
LABEL_884:
                v446 = (v445 ^ (v445 >> 15));
                if (v446 >= 0x4000)
                {
                  v447 = 0;
                }

                else
                {
                  v447 = 0;
                  do
                  {
                    v446 = (2 * v446);
                    ++v447;
                  }

                  while (v446 < 0x4000);
                }
              }

              v454 = shl(v445, v447, &v1286);
              v452 = div_s(0x4000, v454);
              if (v447 > -32739)
              {
                v451 = v447 - 15;
              }

              else
              {
                v1286 = 1;
                v451 = -32753;
              }

              if (v1280 == 0x80000000 && v452 == -32768)
              {
                v455 = 0x7FFFFFFF;
                goto LABEL_913;
              }
            }

            else
            {
              v451 = 14;
              v452 = 0x7FFF;
            }

            v455 = ((v1245 * v452) >> 15) + 2 * v452 * v1244;
LABEL_913:
            v456 = L_shl(v455, v451);
            if (v456 <= 0x4000)
            {
              v457 = 0x4000;
            }

            else
            {
              v457 = v456;
            }

            v458 = v457 < 20480;
            v459 = 20480;
LABEL_935:
            if (!v458)
            {
              v457 = v459;
            }

            v464 = v457 * v423;
            if (v464 >= 0)
            {
              LOWORD(v423) = v464 >> 14;
            }

            else
            {
              LOWORD(v423) = v464 >> 14;
            }

            goto LABEL_940;
          }

          if (v410 >= 0x10000)
          {
            v450 = HIWORD(v410);
            if (HIWORD(v410))
            {
              if (v450 == 0xFFFF)
              {
                LOWORD(v450) = 15;
              }

              else
              {
                LOWORD(v453) = v1243;
                if (v1243 >= 0x4000)
                {
                  LOWORD(v450) = 0;
                }

                else
                {
                  LOWORD(v450) = 0;
                  do
                  {
                    v453 = (2 * v453);
                    LOWORD(v450) = v450 + 1;
                  }

                  while (v453 < 0x4000);
                }
              }
            }

            v460 = shl(v1248, v450, &v1286);
            v448 = div_s(0x4000, v460);
            if (v450 > -32739)
            {
              v449 = v450;
            }

            else
            {
              v1286 = 1;
              v449 = -32738;
            }
          }

          else
          {
            v448 = 0x7FFF;
            v449 = 29;
          }

          if (v418 < v1321 || (v418 + 1) > v1278 || v418 > v418 + 1)
          {
            goto LABEL_2359;
          }

          if (*v418 == 0x80000000 && v448 == -32768)
          {
            v461 = 0x7FFFFFFF;
            goto LABEL_927;
          }

          v461 = ((*v418 * v448) >> 15) + 2 * v448 * (*v418 >> 16);
          if (v461 == 0x80000000 && v444 == 0x8000)
          {
            v462 = 0x7FFFFFFF;
          }

          else
          {
LABEL_927:
            v462 = ((v461 * v444) >> 15) + 2 * v444 * (v461 >> 16);
          }

          v463 = L_shl(v462, v449);
          if (v463 <= 13926)
          {
            v457 = 13926;
          }

          else
          {
            v457 = v463;
          }

          v458 = v457 < 0x4000;
          v459 = 0x4000;
          goto LABEL_935;
        }

        if (v437 > -32769)
        {
          if (v437 >= 1)
          {
            goto LABEL_858;
          }
        }

        else
        {
          v1286 = 1;
        }

LABEL_940:
        v465 = v1318 + v409;
        if (v465 < v1318 || (v465 + 1) > v1284 || v465 > v465 + 1)
        {
          goto LABEL_2359;
        }

        v466 = *v465;
        if (v466 == 0x80000000 && v423 == 0x8000)
        {
          v467 = 0x7FFFFFFF;
        }

        else
        {
          v468 = 2 * v423 * (v466 >> 16) + ((v466 * v423) >> 15);
          v469 = v468 - 0x40000000;
          v470 = 2 * v468;
          v467 = (v468 >> 31) ^ 0x7FFFFFFF;
          if (v469 < 0)
          {
            v467 = v470;
          }
        }

        *(v1318 + v409) = v467;
        v409 = (v409 + 1);
        if (v409 == v1267)
        {
          goto LABEL_949;
        }
      }
    }

    v263 = v1344 - v1343;
    if (v263 < 0x8000)
    {
      if (v263 > -32769)
      {
        LODWORD(v1256) = v1344 - v1343;
        goto LABEL_667;
      }

      v1286 = 1;
      v264 = 0x8000;
    }

    else
    {
      v1286 = 1;
      v264 = 0x7FFF;
    }

    LODWORD(v1256) = v264;
LABEL_667:
    v351 = HIWORD(v1304);
    if (HIWORD(v1304) == 0x8000)
    {
      v1286 = 1;
      v356 = -32768;
    }

    else
    {
      v356 = (HIWORD(v1304) - 1);
    }

    v353 = v1341 + 2 * v356;
    if (v353 < v1341 || v353 + 2 > v1274 || v353 > v353 + 2)
    {
      goto LABEL_2359;
    }

    v354 = v1344;
    v355 = -16;
    goto LABEL_674;
  }

  v238 = v1283;
  if (*(v1283 + 5208) > 13200)
  {
LABEL_405:
    v261 = *(v238 + 5242);
    if (*v1262 == 2 && v261 == 2 && (*v1265 == 16400 || *v1265 == 13200))
    {
      hq2_bit_alloc_har(v1335, v1276, v1277, v163, v1333, v1334, v1301, v1265[0], v1346, &v1347, v1340, v1273);
    }

    else
    {
      hq2_bit_alloc(v1335, v1276, v163, v1333, v1334, &v1305, v1346, &v1347, v1292, v1340, v1273, v1264, v1262[0], v261, *v1266);
    }

    v262 = 0;
    goto LABEL_1201;
  }

  v239 = &v1288;
  v240 = 1;
  do
  {
    v241 = v240;
    v242 = get_next_indice(v1283, 1);
    if (v239 + 2 > v1271)
    {
      goto LABEL_2359;
    }

    v240 = 0;
    *v239 = v242;
    v239 = v1278;
  }

  while ((v241 & 1) != 0);
  v1305 = v1277 - 2;
  v243 = &v1326[2 * SHIWORD(v1304) + 20];
  if (v243 < v1327)
  {
    goto LABEL_2359;
  }

  v244 = SHIWORD(v1304);
  v245 = 2;
  v246 = &v1326[2 * SHIWORD(v1304) + 20];
  do
  {
    if (v246 < v243 || v246 + 1 > v1328 || v246 > v246 + 1)
    {
      goto LABEL_2359;
    }

    *v246++ = 0;
    --v245;
  }

  while (v245);
  if (*(v1283 + 5208) != 13200)
  {
    v265 = 27852;
    v266 = 17203;
    goto LABEL_427;
  }

  if (v244 > -32767)
  {
    LOWORD(v248) = v244 - 2;
    v247 = v1346 + (v244 - 2);
    if (v247 < v1346)
    {
      goto LABEL_2359;
    }

    v248 = v248;
  }

  else
  {
    v1286 = 1;
    v247 = &v1346[-4096];
    if (&v1346[-4096] < v1346)
    {
      goto LABEL_2359;
    }

    v1286 = 1;
    v248 = -32768;
  }

  v267 = v1327 + v248;
  if (v267 < v1327)
  {
LABEL_2359:
    __break(0x5519u);
  }

  mvs2s(v247, &v1347, v267, v1328, 2);
  v265 = 31130;
  v266 = 13107;
LABEL_427:
  LODWORD(v1272) = v266;
  if (v244 >= 1)
  {
    v268 = 0;
    v269 = 0;
    v270 = 0;
    v271 = 0;
    v272 = 0;
    v273 = v1321;
    while (1)
    {
      v276 = v273 + 1 <= v1322 && v273 <= v273 + 1 && v273 >= v1321;
      if (((v268 - 6) & 0x8000) == 0)
      {
        if (!v276)
        {
          goto LABEL_2359;
        }

        v277 = v273 - 1;
        v278 = *v273;
        if (v273 - 1 < v1321 || v273 > v1322 || v277 > v273)
        {
          goto LABEL_2359;
        }

        v279 = *v277;
        v280 = v278 - *v277;
        if ((v279 ^ v278) < 0 && (v280 ^ v278) < 0)
        {
          v280 = (v278 >> 31) ^ 0x7FFFFFFF;
          v1286 = 1;
        }

        if (v280 >= 0)
        {
          v281 = v280;
        }

        else
        {
          v281 = -v280;
        }

        if (v280 == 0x80000000)
        {
          v282 = 0x7FFFFFFF;
        }

        else
        {
          v282 = v281;
        }

        v270 += v282;
        if ((v278 ^ v269) < 0 || (((v278 + v269) ^ v269) & 0x80000000) == 0)
        {
          v283 = v272;
          v284 = v271;
          v269 += v278;
        }

        else
        {
          v269 = (v269 >> 31) ^ 0x7FFFFFFF;
          v1286 = 1;
          v283 = v272;
          v284 = v271;
        }

        goto LABEL_466;
      }

      if (!v276)
      {
        goto LABEL_2359;
      }

      v283 = *v273;
      v284 = (v283 + v271);
      if (((v283 ^ v271) & 0x80000000) == 0 && ((v284 ^ v271) & 0x80000000) != 0)
      {
        v284 = (v271 >> 31) ^ 0x7FFFFFFFu;
        v1286 = 1;
      }

      v285 = v283 - v272;
      if (((v272 ^ v283) & 0x80000000) != 0 && ((v285 ^ v283) & 0x80000000) != 0)
      {
        v1286 = 1;
        if ((v283 & 0x80000000) != 0)
        {
          goto LABEL_465;
        }
      }

      else if (v285 < 1)
      {
LABEL_465:
        v283 = v272;
      }

LABEL_466:
      ++v268;
      ++v273;
      v271 = v284;
      v272 = v283;
      if (v244 == v268)
      {
        goto LABEL_469;
      }
    }
  }

  LODWORD(v283) = 0;
  LODWORD(v284) = 0;
  v270 = 0;
  v269 = 0;
LABEL_469:
  v1284 = v1319;
  mvi2i(v1319, v1321, v1318, v1319, v244);
  v286 = 49152 * SWORD1(v283) + ((24576 * v283) >> 15);
  v287 = (v244 - 6);
  if (v244 > -32763)
  {
    v288 = v287 << 9;
    if (v287 << 9 == (v287 << 9))
    {
      goto LABEL_473;
    }

    v1286 = 1;
    if (v287 > 0)
    {
      v288 = 0x7FFF;
LABEL_478:
      v289 = ((v283 * v288) >> 15) + 2 * v288 * SWORD1(v283);
      goto LABEL_479;
    }
  }

  else
  {
    v1286 = 1;
  }

  v288 = 0x8000;
LABEL_473:
  if (v283 != 0x80000000 || v288 != 0x8000)
  {
    goto LABEL_478;
  }

  v289 = 0x7FFFFFFF;
LABEL_479:
  v1252 = SHIWORD(v269);
  v290 = v286 - (v284 >> 1);
  if ((v286 ^ (v284 >> 1)) < 0 && (v290 ^ v286) < 0)
  {
    v290 = (v286 >> 31) ^ 0x7FFFFFFF;
    v1286 = 1;
  }

  v1251 = v269;
  v291 = *(v1283 + 5208);
  v292 = v291 == 13200 && v290 < 0;
  if (v292 || v291 <= 13199)
  {
    v293 = 2252 * v1252 + ((1126 * v1251) >> 15);
    v294 = v289 - v293;
    if ((v293 ^ v289) < 0 && (v294 ^ v289) < 0)
    {
      v1286 = 1;
      if ((v289 & 0x80000000) == 0)
      {
        goto LABEL_492;
      }
    }

    else if ((v294 & 0x80000000) == 0)
    {
      goto LABEL_492;
    }

    v350 = v289 - (v269 >> 7);
    if ((v289 ^ (v269 >> 7)) < 0 && (v350 ^ v289) < 0)
    {
      v1286 = 1;
      if (v289 < 0)
      {
        goto LABEL_492;
      }
    }

    else if (v350 < 1)
    {
      goto LABEL_492;
    }

    if (v244 < 7)
    {
      goto LABEL_1131;
    }

    v532 = 49152 * v1252 + ((24576 * v1251) >> 15);
    v533 = v283 == 0x80000000 && (v244 - 6) == -32768;
    v534 = v533;
    LODWORD(v1280) = v534;
    v535 = 2 * SWORD1(v283) * (v244 - 6) + ((v283 * (v244 - 6)) >> 15);
    LODWORD(v1278) = v535 - 0x20000;
    LODWORD(v1277) = (v535 >> 31) ^ 0x7FFF;
    v536 = v535 << 14;
    v537 = 6;
    LODWORD(v1279) = v535 << 14;
    while (1)
    {
      v538 = v1321 + v537;
      v539 = v538 + 1;
      if (v538 < v1321 || v539 > v1322 || v538 > v539)
      {
        goto LABEL_2359;
      }

      v542 = *v538;
      v543 = (*v538 >> 1) - v532;
      if ((v532 ^ (*v538 >> 1)) < 0 && (v543 ^ (v542 >> 1)) < 0)
      {
        v1286 = 1;
        if (v542 >> 1 < 0)
        {
          goto LABEL_1097;
        }
      }

      else if (v543 < 0)
      {
LABEL_1097:
        if (v1280)
        {
          LOWORD(v544) = 0x7FFF;
LABEL_1099:
          v545 = (v544 ^ (v544 >> 15));
          if (v545 >= 0x4000)
          {
            v546 = 0;
          }

          else
          {
            v546 = 0;
            do
            {
              v545 = (2 * v545);
              ++v546;
            }

            while (v545 < 0x4000);
          }

          goto LABEL_1112;
        }

        v544 = HIWORD(v536);
        if (v1278 < 0xFFFC0000)
        {
          LOWORD(v544) = v1277;
          goto LABEL_1108;
        }

        if (v536 < 0x10000)
        {
          v547 = 13;
          v548 = 0x7FFF;
          goto LABEL_1118;
        }

LABEL_1108:
        if (v544)
        {
          if (v544 != 0xFFFF)
          {
            goto LABEL_1099;
          }

          v546 = 15;
        }

        else
        {
          v546 = v544;
        }

LABEL_1112:
        v549 = shl(v544, v546, &v1286);
        v548 = div_s(0x4000, v549);
        if (v546 > -32739)
        {
          v547 = v546 - 16;
        }

        else
        {
          v1286 = 1;
          v547 = -32754;
        }

        v536 = v1279;
        if (v269 == 0x80000000 && v548 == -32768)
        {
          v550 = 0x7FFFFFFF;
        }

        else
        {
LABEL_1118:
          v550 = ((v1251 * v548) >> 15) + 2 * v548 * v1252;
        }

        v551 = L_shl(v550, v547);
        v552 = v551 + 13107;
        if ((v551 & 0x80000000) == 0 && (v552 ^ v551) < 0)
        {
          v1286 = 1;
          v552 = 0x7FFFFFFF;
        }

        v553 = v1318 + v537;
        if (v553 < v1318 || (v553 + 1) > v1284 || v553 > v553 + 1)
        {
          goto LABEL_2359;
        }

        if (v552 <= 0x4000)
        {
          v552 = 0x4000;
        }

        if (v552 >= v265)
        {
          v552 = v265;
        }

        *v553 = 2 * v552 * (*v553 >> 16) + ((*v553 * v552) >> 15);
      }

      if (++v537 == v244)
      {
        goto LABEL_1131;
      }
    }
  }

LABEL_492:
  v1279 = HIWORD(v269);
  if (v244 > -32767)
  {
    v295 = v244 - 2;
  }

  else
  {
    v1286 = 1;
    v295 = 0x8000;
  }

  if (v244 > v295)
  {
    v296 = 0;
    v1280 = v1322;
    v297 = v295;
    v1267 = (6554 * HIWORD(v270) + ((3277 * v270) >> 15));
    v1268 = (6554 * HIWORD(v270) + ((3277 * v270) >> 15)) >> 16;
    LODWORD(v1278) = v269 >> 16;
    LODWORD(v1250) = (((v269 >> 16) >> 15) ^ HIWORD(v269));
    v1255 = (13108 * HIWORD(v270) + ((6554 * v270) >> 15));
    v1256 = (13108 * HIWORD(v270) + ((6554 * v270) >> 15)) >> 16;
    LODWORD(v1254) = v287 << 9;
    LODWORD(v1253) = (v287 << 9) + 0x8000;
    LODWORD(v1277) = (v244 - 6);
    while (1)
    {
      v298 = v1327 + v297;
      v299 = v298 + 1;
      if (v298 < v1327 || v299 > v1328 || v298 > v299)
      {
        goto LABEL_2359;
      }

      v302 = *v298;
      v303 = v1321 + v297;
      if (v302 != 1)
      {
        if (v302 == 0x8000)
        {
          v1286 = 1;
        }

        v304 = 0x4000;
        goto LABEL_556;
      }

      if (v303 < v1321 || (v303 + 1) > v1280 || v303 > v303 + 1)
      {
        goto LABEL_2359;
      }

      v305 = v287;
      if (v244 <= -32763)
      {
        v1286 = 1;
        v305 = 0x8000;
      }

      if (*v303 == 0x80000000 && v305 == 0x8000)
      {
        break;
      }

      v306 = 2 * v305 * (*v303 >> 16) + ((*v303 * v305) >> 15);
      if ((v306 - 0x20000) < 0xFFFC0000)
      {
        LODWORD(v306) = (v306 >> 31) ^ 0x7FFF;
        goto LABEL_526;
      }

      if (v306 << 14 >= 0x10000u)
      {
        LOWORD(v306) = v306 >> 2;
LABEL_526:
        if (!v306)
        {
          v308 = v306;
LABEL_530:
          v311 = shl(v306, v308, &v1286);
          v309 = div_s(0x4000, v311);
          if (v308 > -32739)
          {
            v310 = v308 - 17;
          }

          else
          {
            v1286 = 1;
            v310 = -32755;
          }

          goto LABEL_533;
        }

        if (v306 == 0xFFFF)
        {
          v308 = 15;
          goto LABEL_530;
        }

LABEL_516:
        v307 = (v306 ^ (v306 >> 15));
        if (v307 >= 0x4000)
        {
          v308 = 0;
        }

        else
        {
          v308 = 0;
          do
          {
            v307 = (2 * v307);
            ++v308;
          }

          while (v307 < 0x4000);
        }

        goto LABEL_530;
      }

      v309 = 0x7FFF;
      v310 = 12;
LABEL_533:
      v312 = L_shl(((v1267 * v309) >> 15) + 2 * v309 * v1268, v310);
      if (v269 >= 0x10000)
      {
        if (v1279)
        {
          if (v1279 == 0xFFFF)
          {
            v315 = 15;
          }

          else
          {
            LOWORD(v316) = v1250;
            if (v1250 >= 0x4000)
            {
              v315 = 0;
            }

            else
            {
              v315 = 0;
              do
              {
                v316 = (2 * v316);
                ++v315;
              }

              while (v316 < 0x4000);
            }
          }
        }

        else
        {
          v315 = 0;
        }

        v317 = shl(v1278, v315, &v1286);
        v313 = div_s(0x4000, v317);
        if (v315 > -32739)
        {
          v314 = v315 - 16;
        }

        else
        {
          v1286 = 1;
          v314 = -32754;
        }

        v287 = v1277;
      }

      else
      {
        v313 = 0x7FFF;
        v314 = 13;
      }

      v318 = L_shl(((v1255 * v313) >> 15) + 2 * v313 * v1256, v314);
      if (v312 >= v318)
      {
        v319 = v318;
      }

      else
      {
        v319 = v312;
      }

      if (v319 >= 13107)
      {
        LOWORD(v319) = 13107;
      }

      if (v319 < 0x4000)
      {
        v304 = (v319 + 0x4000);
      }

      else
      {
        v1286 = 1;
        v304 = 0x7FFF;
      }

LABEL_556:
      v320 = &v1288 + v296;
      if (v320 < &v1288 || v320 + 1 > v1271 || v320 > v320 + 1)
      {
        goto LABEL_2359;
      }

      v321 = *v320;
      if (v321 == 1)
      {
        if (v303 < v1321 || (v303 + 1) > v1280 || v303 > v303 + 1)
        {
          goto LABEL_2359;
        }

        v324 = v287;
        if (v244 <= -32763)
        {
          v1286 = 1;
          v324 = 0x8000;
        }

        if (*v303 == 0x80000000 && v324 == 0x8000)
        {
          LOWORD(v325) = 0x7FFF;
LABEL_572:
          v326 = (v325 ^ (v325 >> 15));
          if (v326 >= 0x4000)
          {
            v327 = 0;
          }

          else
          {
            v327 = 0;
            do
            {
              v326 = (2 * v326);
              ++v327;
            }

            while (v326 < 0x4000);
          }

          goto LABEL_619;
        }

        v325 = 2 * v324 * (*v303 >> 16) + ((*v303 * v324) >> 15);
        if ((v325 - 0x20000) < 0xFFFC0000)
        {
          LODWORD(v325) = (v325 >> 31) ^ 0x7FFF;
          goto LABEL_615;
        }

        if (v325 << 14 < 0x10000u)
        {
          v330 = 14;
          v331 = 0x7FFF;
          goto LABEL_625;
        }

        LOWORD(v325) = v325 >> 2;
LABEL_615:
        if (v325)
        {
          if (v325 != 0xFFFF)
          {
            goto LABEL_572;
          }

          v327 = 15;
        }

        else
        {
          v327 = v325;
        }

LABEL_619:
        v339 = shl(v325, v327, &v1286);
        v331 = div_s(0x4000, v339);
        if (v327 > -32739)
        {
          v330 = v327 - 15;
        }

        else
        {
          v1286 = 1;
          v330 = -32753;
        }

        if (v269 == 0x80000000 && v331 == -32768)
        {
          v340 = 0x7FFFFFFF;
        }

        else
        {
LABEL_625:
          v340 = ((v1251 * v331) >> 15) + 2 * v331 * v1252;
        }

        v341 = L_shl(v340, v330);
        if (v341 <= 0x4000)
        {
          v336 = 0x4000;
        }

        else
        {
          v336 = v341;
        }

        v338 = v1272;
        v337 = v336 < v1272;
        goto LABEL_630;
      }

      if (v321 == 0x8000)
      {
        v1286 = 1;
      }

      if (v269 >= 0x10000)
      {
        if (v1279)
        {
          if (v1279 == 0xFFFF)
          {
            v328 = 15;
          }

          else
          {
            LOWORD(v329) = v1250;
            if (v1250 >= 0x4000)
            {
              v328 = 0;
            }

            else
            {
              v328 = 0;
              do
              {
                v329 = (2 * v329);
                ++v328;
              }

              while (v329 < 0x4000);
            }
          }
        }

        else
        {
          v328 = 0;
        }

        v332 = shl(v1278, v328, &v1286);
        v322 = div_s(0x4000, v332);
        if (v328 > -32739)
        {
          v323 = v328 - 10;
        }

        else
        {
          v1286 = 1;
          v323 = -32748;
        }

        v287 = v1277;
      }

      else
      {
        v322 = 0x7FFF;
        v323 = 19;
      }

      if (v303 < v1321 || (v303 + 1) > v1280 || v303 > v303 + 1)
      {
        goto LABEL_2359;
      }

      if (*v303 == 0x80000000 && v322 == -32768)
      {
        v333 = 0x7FFFFFFF;
      }

      else
      {
        v333 = ((*v303 * v322) >> 15) + 2 * v322 * (*v303 >> 16);
      }

      v334 = L_shl(v333, v323);
      if (v244 > -32763)
      {
        v335 = v1254;
        if (v1253 < 0x10000)
        {
          goto LABEL_605;
        }

        v1286 = 1;
        if (v287 > 0)
        {
          v335 = 0x7FFF;
LABEL_610:
          v336 = ((v334 * v335) >> 15) + 2 * v335 * (v334 >> 16);
          goto LABEL_611;
        }
      }

      else
      {
        v1286 = 1;
      }

      v335 = 0x8000;
LABEL_605:
      if (v334 != 0x80000000 || v335 != 0x8000)
      {
        goto LABEL_610;
      }

      v336 = 0x7FFFFFFF;
LABEL_611:
      if (v336 <= 13926)
      {
        v336 = 13926;
      }

      v337 = v336 < 0x4000;
      v338 = 0x4000;
LABEL_630:
      if (!v337)
      {
        v336 = v338;
      }

      v342 = (v336 * v304) >> 15;
      if ((v342 & 0x10000) != 0)
      {
        v342 |= 0xFFFF0000;
      }

      if (v342 >= 0x8000)
      {
        v1286 = 1;
LABEL_636:
        v343 = 0x7FFF;
        goto LABEL_642;
      }

      if (v342 <= -32769)
      {
        v1286 = 1;
LABEL_639:
        v343 = 0x8000;
        goto LABEL_642;
      }

      if (2 * v342 != (2 * v342))
      {
        v1286 = 1;
        if (v342 >= 1)
        {
          goto LABEL_636;
        }

        goto LABEL_639;
      }

      v343 = 2 * v342;
LABEL_642:
      v344 = v1318 + v297;
      if (v344 < v1318 || (v344 + 1) > v1284 || v344 > v344 + 1)
      {
        goto LABEL_2359;
      }

      v345 = *v344;
      if (v345 == 0x80000000 && v343 == 0x8000)
      {
        v346 = 0x7FFFFFFF;
      }

      else
      {
        v347 = 2 * v343 * (v345 >> 16) + ((v345 * v343) >> 15);
        v348 = v347 - 0x40000000;
        v349 = 2 * v347;
        v346 = (v347 >> 31) ^ 0x7FFFFFFF;
        if (v348 < 0)
        {
          v346 = v349;
        }
      }

      ++v296;
      *(v1318 + v297++) = v346;
      if (v297 >= v244)
      {
        goto LABEL_1131;
      }
    }

    LOWORD(v306) = 0x7FFF;
    goto LABEL_516;
  }

LABEL_1131:
  if (v244 >= 1)
  {
    v554 = 0;
    v555 = 0;
    v556 = 0;
    v557 = 0;
    if (SHIWORD(v1304) <= 1)
    {
      v558 = 1;
    }

    else
    {
      v558 = SHIWORD(v1304);
    }

    v559 = v1321;
    while (1)
    {
      if (v554 > -32766)
      {
        v563 = v559 + 1 <= v1322 && v559 <= v559 + 1 && v559 >= v1321;
        if (((v554 - 3) & 0x8000) == 0)
        {
          if (!v563)
          {
            goto LABEL_2359;
          }

          if (((*v559 ^ v555) & 0x80000000) != 0 || (((*v559 + v555) ^ v555) & 0x80000000) == 0)
          {
            v564 = v557;
            v565 = v556;
            v555 += *v559;
          }

          else
          {
            v555 = (v555 >> 31) ^ 0x7FFFFFFF;
            v1286 = 1;
            v564 = v557;
            v565 = v556;
          }

          goto LABEL_1167;
        }

        if (!v563)
        {
          goto LABEL_2359;
        }

        v560 = v1321 + v554;
      }

      else
      {
        v1286 = 1;
        if (v559 < v1321)
        {
          goto LABEL_2359;
        }

        if (v559 + 1 > v1322)
        {
          goto LABEL_2359;
        }

        v560 = v559;
        if (v559 > v559 + 1)
        {
          goto LABEL_2359;
        }
      }

      v564 = *v560;
      v565 = (v556 + (v564 >> 1));
      if (((v556 ^ (v564 >> 1)) & 0x80000000) == 0 && ((v565 ^ v556) & 0x80000000) != 0)
      {
        v565 = (v556 >> 31) ^ 0x7FFFFFFFu;
        v1286 = 1;
      }

      v566 = v564 - v557;
      if (((v557 ^ v564) & 0x80000000) != 0 && ((v566 ^ v564) & 0x80000000) != 0)
      {
        v1286 = 1;
        if ((v564 & 0x80000000) != 0)
        {
          goto LABEL_1165;
        }
      }

      else if (v566 < 1)
      {
LABEL_1165:
        v564 = v557;
      }

LABEL_1167:
      ++v554;
      ++v559;
      v556 = v565;
      v557 = v564;
      if (v558 == v554)
      {
        goto LABEL_1170;
      }
    }
  }

  LODWORD(v564) = 0;
  LODWORD(v565) = 0;
  v555 = 0;
LABEL_1170:
  LODWORD(v1278) = v565 >> 16;
  v567 = 49152 * (v565 >> 16) + ((24576 * v565) >> 15);
  v568 = (v555 >> 2) - v567;
  if (((v567 ^ (v555 >> 2)) & 0x80000000) != 0 && (v568 ^ (v555 >> 2)) < 0)
  {
    v1286 = 1;
    if (v555 >> 2 < 0)
    {
      goto LABEL_1180;
    }
  }

  else if (v568 < 1)
  {
    goto LABEL_1180;
  }

  v569 = (v555 >> 4) - v567;
  if (((v567 ^ (v555 >> 4)) & 0x80000000) != 0 && ((v569 ^ (v555 >> 4)) & 0x80000000) != 0)
  {
    v1286 = 1;
    if (((v555 >> 4) & 0x80000000) == 0)
    {
      goto LABEL_1180;
    }
  }

  else if ((v569 & 0x80000000) == 0)
  {
    goto LABEL_1180;
  }

  v1280 = v564;
  v1279 = SWORD1(v564);
  v1154 = 56524 * SWORD1(v564) + ((28262 * v564) >> 15);
  v1155 = v1154 - v565;
  if (((v565 ^ v1154) & 0x80000000) != 0 && ((v1155 ^ v1154) & 0x80000000) != 0)
  {
    v1286 = 1;
    if ((v1154 & 0x80000000) != 0)
    {
      goto LABEL_1180;
    }

    goto LABEL_2328;
  }

  if (v1155 < 1)
  {
LABEL_1180:
    v262 = 0;
    goto LABEL_1181;
  }

LABEL_2328:
  v1224 = 0;
  v1225 = ((v565 >> 31) ^ WORD1(v565));
  do
  {
    if (v565 >= 0x10000)
    {
      v1229 = v1225;
      v1230 = WORD1(v565);
      if (WORD1(v565))
      {
        if (v1230 == 0xFFFF)
        {
          LOWORD(v1230) = 15;
        }

        else if (v1229 >= 0x4000)
        {
          LOWORD(v1230) = 0;
        }

        else
        {
          LOWORD(v1231) = v1229;
          LOWORD(v1230) = 0;
          do
          {
            v1231 = (2 * v1231);
            LOWORD(v1230) = v1230 + 1;
          }

          while (v1231 < 0x4000);
        }
      }

      v1232 = shl(v1278, v1230, &v1286);
      v1227 = div_s(0x4000, v1232);
      if (v1230 > -32739)
      {
        v1226 = v1230 - 2;
      }

      else
      {
        v1286 = 1;
        v1226 = -32740;
      }

      v1225 = v1229;
      if (v564 == 0x80000000 && v1227 == -32768)
      {
        v1228 = 0x7FFFFFFF;
        goto LABEL_2346;
      }
    }

    else
    {
      v1226 = 27;
      v1227 = 0x7FFF;
    }

    v1228 = ((v1280 * v1227) >> 15) + 2 * v1227 * v1279;
LABEL_2346:
    v1233 = v1318 + v1224;
    if (v1233 < v1318 || (v1233 + 1) > v1284 || v1233 > v1233 + 1)
    {
      goto LABEL_2359;
    }

    v1234 = 6 * (v1228 >> 16) + ((3 * v1228) >> 15);
    v1235 = L_shl(37684 * (v1234 >> 16) + ((18842 * v1234) >> 15), v1226);
    if (v1235 >= 19661)
    {
      v1236 = 19661;
    }

    else
    {
      v1236 = v1235;
    }

    if (*v1233 == 0x80000000 && v1236 == 0x8000)
    {
      v1237 = 0x7FFFFFFF;
    }

    else
    {
      v1238 = 2 * v1236 * (*v1233 >> 16) + ((*v1233 * v1236) >> 15);
      v1239 = v1238 - 0x40000000;
      v1240 = 2 * v1238;
      v1237 = (v1238 >> 31) ^ 0x7FFFFFFF;
      if (v1239 < 0)
      {
        v1237 = v1240;
      }
    }

    *(v1318 + v1224++) = v1237;
  }

  while (v1224 != 3);
  v262 = 1;
LABEL_1181:
  v570 = SHIWORD(v1304);
  if (SHIWORD(v1304) >= 1)
  {
    v571 = v1318;
    v572 = v1328;
    v573 = SHIWORD(v1304);
    v574 = v1284;
    do
    {
      v575 = v571 + 1;
      v577 = v571 < v1318 || v575 > v574 || v571 > v575;
      v578 = v572 + 1;
      if (v577 || v572 < v1328 || v578 > v1329 || v572 > v578)
      {
        goto LABEL_2359;
      }

      v582 = *v571++;
      v583 = vcvtd_n_f64_s32(v582, 0xEuLL);
      *v572++ = v583;
      --v573;
    }

    while (v573);
  }

  v238 = v1283;
  hq2_bit_alloc(v1328, v1329, v570, v1333, v1334, &v1305, v1346, &v1347, v1292, v1340, v1273, v1264, v1262[0], *(v1283 + 5242), *v1266);
LABEL_1201:
  v530 = 0;
  v528 = 0.0;
  v531 = 20;
  v529 = 0.0;
LABEL_1202:
  LODWORD(v1255) = v531;
  LODWORD(v1256) = v530;
  v584 = v1305;
  if (v1305 < 0)
  {
    v584 = 0;
    *(v238 + 5168) = 1;
    v1305 = 0;
  }

  v585 = HIWORD(v1304);
  if (HIWORD(v1304) > 0x20uLL)
  {
    goto LABEL_2359;
  }

  v1248 = v1301;
  *&v586 = -1;
  *(&v586 + 1) = -1;
  v1384 = v586;
  v1278 = v1339;
  v1383 = v586;
  v1268 = v1340;
  v1382 = v586;
  v1264 = &v1347;
  v1381 = v586;
  v1380 = v586;
  v1379 = v586;
  v1378 = v586;
  v1377 = v586;
  v1376 = v586;
  v1375 = v586;
  v1374 = v586;
  v1351 = 0xAAAAAAAAAAAAAAAALL;
  *&v586 = 0xAAAAAAAAAAAAAAAALL;
  *(&v586 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1350[2] = v586;
  v1350[3] = v586;
  v1350[0] = v586;
  v1350[1] = v586;
  v1349 = v586;
  LOWORD(v1354) = -21846;
  memset(v1396, 170, sizeof(v1396));
  LODWORD(v1356) = -1431655766;
  *&v587 = 0xAAAAAAAAAAAAAAAALL;
  *(&v587 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1347 = v587;
  v1348 = v587;
  memset(v1394, 170, 0x410uLL);
  memset(v1373, 170, 0x230uLL);
  LOWORD(v1353) = 0;
  memset(v1395, 255, 0x8C0uLL);
  v588 = 0;
  *&v589 = 0xAAAAAAAAAAAAAAAALL;
  *(&v589 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1366 = v589;
  v1367 = v589;
  v1364 = v589;
  v1365 = v589;
  v1362 = v589;
  v1363 = v589;
  v1360 = v589;
  v1361 = v589;
  v1358 = v589;
  v1359 = v589;
  v1357 = v589;
  LODWORD(v1355) = -1431655766;
  v1309 = 0xAAAAAAAAAAAAAAAALL;
  do
  {
    v590 = v1373 + v588 + 2;
    if ((v1373 + v588) < v1373 || v590 > &v1373[35] || v1373 + v588 > v590)
    {
      goto LABEL_2359;
    }

    *(v1373 + v588) = 0;
    v588 += 2;
  }

  while (v588 != 560);
  LODWORD(__A) = 0;
  vDSP_vfill(&__A, v1395, 1, 0x230uLL);
  LODWORD(__A) = 0;
  vDSP_vfill(&__A, &v1374, 1, 0x2CuLL);
  v593 = 0;
  v1277 = &v1352;
  v594 = v1263[0];
  do
  {
    v595 = &v1350[-1] + v593 + 2;
    if ((&v1350[-1] + v593) < &v1349 || v595 > &v1352 || &v1350[-1] + v593 > v595)
    {
      goto LABEL_2359;
    }

    *(&v1350[-1] + v593) = 0;
    v593 += 2;
  }

  while (v593 != 88);
  v598 = 0;
  v1279 = v1397;
  v599 = v1283;
  do
  {
    v600 = v1396 + v598 + 4;
    if ((v1396 + v598) < v1396 || v600 > v1397 || v1396 + v598 > v600)
    {
      goto LABEL_2359;
    }

    *(v1396 + v598) = 0;
    v598 += 4;
  }

  while (v598 != 2560);
  v603 = v594 < 321 && v262 == 0;
  v604 = v603;
  v1267 = &v1395[140];
  v1250 = v1334;
  v1253 = &v1373[35];
  LODWORD(v1284) = v584;
  LODWORD(v1254) = v604;
  if (v603 && !*v1266)
  {
    v605 = 0;
    v1249 = 0;
    LODWORD(v1251) = 0;
    LODWORD(v1252) = 1;
  }

  else
  {
    LODWORD(v1252) = 0;
    LODWORD(v1251) = 1;
    v1249 = 10;
    v605 = 2;
  }

  LOBYTE(v1394[64]) = 7;
  *(&v1394[64] + 4) = 0;
  v1272 = v585;
  if (v585)
  {
    v606 = 0;
    v607 = 0;
    do
    {
      v608 = *(v1333 + v606);
      *(&v1350[-1] + v606) = ar_div(v608, *(v1340 + v606)) >= 49152;
      if (v608 > 0)
      {
        ++v607;
      }

      v606 = (v606 + 1);
    }

    while (v585 != v606);
    v609 = 0;
    v610 = 0;
    do
    {
      if (*(v1333 + v609) > 0)
      {
        ++v610;
      }

      v609 += 4;
    }

    while (4 * v585 != v609);
    if (v1249 + v605)
    {
      v611 = ((v1249 + v605) << 16) | 0x800;
    }

    else
    {
      v611 = 0;
    }

    v612 = v1333 + v585;
    v613 = v585;
    v614 = v612 - 1;
    while (2)
    {
      v615 = v614 + 1;
      if (v614 < v1333 || v615 > v612 || v614 > v615)
      {
        goto LABEL_2359;
      }

      v618 = *v614;
      if (*v614 < 1)
      {
        goto LABEL_1275;
      }

      v619 = ar_div(v611, v610);
      v620 = v618 - v619;
      v621 = v611 >> 31;
      if ((v619 ^ v618) < 0 && (v620 ^ v618) < 0)
      {
        *v614 = 0x7FFFFFFF;
        goto LABEL_1267;
      }

      *v614 = v620;
      if (v620 < 0)
      {
        v624 = v620 ^ v619;
        v625 = (v619 ^ v618) > -1 || v624 < 0;
        v626 = (v619 >> 31) ^ 0x7FFFFFFF;
        if (v625)
        {
          v626 = v618;
        }

        v627 = v621 ^ 0x7FFFFFFF;
        if (((v626 ^ v611) & ((v611 - v626) ^ v611)) < 0)
        {
          v611 = v627;
        }

        else
        {
          v611 -= v626;
        }

        *v614 = 0;
      }

      else
      {
LABEL_1267:
        v622 = v621 ^ 0x7FFFFFFF;
        if (((v611 - v619) ^ v611) >= 0)
        {
          v622 = v611 - v619;
        }

        if ((v619 ^ v611) < 0)
        {
          v611 = v622;
        }

        else
        {
          v611 -= v619;
        }
      }

      if (v610 == 0x8000)
      {
        v610 = 0x8000;
      }

      else
      {
        --v610;
      }

LABEL_1275:
      v623 = v613;
      --v614;
      v613 = (v613 - 1);
      if (v623 <= 1)
      {
        v599 = v1283;
        LOWORD(v585) = v1272;
        goto LABEL_1287;
      }

      continue;
    }
  }

  v607 = 0;
LABEL_1287:
  srt_vec_ind_fx(v1333, &v1357, v1339, v585);
  v628 = v1284;
  v629 = v1284 >> 3;
  if (v1284 >= 8)
  {
    v631 = v1394;
    v632 = v1284 >> 3;
    do
    {
      v633 = get_next_indice(v599, 8);
      if (v631 >= &v1394[64] || v631 < v1394)
      {
        goto LABEL_2359;
      }

      *v631++ = v633;
      --v632;
      v599 = v1283;
    }

    while (v632);
    v630 = v629;
  }

  else
  {
    v630 = 0;
  }

  if ((v628 & 7) != 0)
  {
    v634 = get_next_indice(v599, v628 & 7);
    v635 = v1394 + v629;
    if (v635 >= &v1394[64] || v635 < v1394)
    {
      goto LABEL_2359;
    }

    *v635 = v634 << (8 - (v628 & 7));
    ++v630;
    ++v629;
  }

  if (v629 >= 1022)
  {
    v636 = 1022;
  }

  else
  {
    v636 = v629;
  }

  v637 = v636 + 2;
  if (v630 < v636 + 2)
  {
    v638 = v636 - v630 + 2;
    v639 = v1394 + v630;
    do
    {
      if (v639 >= &v1394[64] || v639 < v1394)
      {
        goto LABEL_2359;
      }

      *v639++ = 0;
      --v638;
    }

    while (v638);
  }

  v640 = 0;
  v641 = v1272;
  v1280 = v1333 + 4 * v1272;
  HIDWORD(v1394[64]) = v637;
  *&v1347 = v1394;
  *(&v1347 + 1) = 0xFFFF00000000;
  v642 = 16;
  do
  {
    v640 = bitstream_load_bit(v1394) | (2 * v640);
    --v642;
  }

  while (v642);
  LODWORD(v1348) = v640;
  LODWORD(v1355) = 0;
  if (v1254 && !*v1266)
  {
    LODWORD(v1355) = -131072;
    v1284 = v1340 + 2 * v641;
    bit_allocation_second_fx(v1333, v1280, &v1357, v641, v1340, v1284, v1339, v643, &v1356, &v1356 + 4, v1346, v1264, v1248, &v1288, v1271, v1263[0]);
    if (v641)
    {
      v787 = 0;
      v788 = 0;
      v789 = 0;
      v790 = 0;
      do
      {
        if (v787 - v1356 == (v787 - v1356) && v1356 == v787 || v787 - SWORD1(v1356) == (v787 - WORD1(v1356)) && SWORD1(v1356) == v787)
        {
          v791 = v1333 + *(v1339 + v787);
          v792 = (v791 + 1);
          if (v791 < v1333 || v792 > v1280 || v791 > v792)
          {
            goto LABEL_2359;
          }

          v795 = *v791;
          v796 = v795 + v790;
          v797 = v795 ^ v790;
          if ((v796 ^ v790) < 0)
          {
            v798 = (v790 >> 31) ^ 0x7FFFFFFF;
          }

          else
          {
            v798 = v796;
          }

          if (v797 >= 0)
          {
            v790 = v798;
          }

          else
          {
            v790 = v796;
          }
        }

        else
        {
          v799 = v1333 + *(v1339 + v787);
          v800 = (v799 + 1);
          if (v799 < v1333 || v800 > v1280 || v799 > v800)
          {
            goto LABEL_2359;
          }

          v803 = *v799;
          if (((v803 + v789) ^ v789) > -1 || (v803 ^ v789) < 0)
          {
            v789 += v803;
          }

          else
          {
            v789 = (v789 >> 31) ^ 0x7FFFFFFF;
          }

          v805 = (v788 + 1);
          if (v788 == 0x7FFF)
          {
            v805 = 0x7FFF;
          }

          if (v803 >= 1)
          {
            v788 = v805;
          }
        }

        v787 = (v787 + 1);
      }

      while (v1272 != v787);
      v806 = 0;
      v807 = 0;
      while (v806 == v1356 || v806 == WORD1(v1356))
      {
LABEL_1845:
        if (++v806 == v1272)
        {
          goto LABEL_1846;
        }
      }

      v809 = *(v1339 + v806);
      v810 = v1333 + v809;
      v811 = (v810 + 1);
      if (v810 < v1333 || v811 > v1280 || v810 > v811)
      {
        goto LABEL_2359;
      }

      v814 = *v810;
      if (v814 >= 1)
      {
        v815 = &v1350[-1] + v809;
        v816 = v815 + 1;
        if (v815 < &v1349 || v816 > v1277 || v815 > v816)
        {
          goto LABEL_2359;
        }

        v819 = *v815;
        if (v819 == 1)
        {
          v854 = (v807 ^ v814) < 0 || ((v807 + v814) ^ v814) >= 0;
          v855 = v1340 + v809;
          v858 = (v855 + 1) <= v1284 && v855 <= v855 + 1 && v855 >= v1340;
          if (v854 && v807 + v814 < 0)
          {
            if (!v858)
            {
              goto LABEL_2359;
            }

            v859 = *(v1340 + v809);
            v860 = &v1342 + v809;
            v863 = v860 + 1 <= v1285 && v860 <= v860 + 1 && v860 >= &v1342;
            if (v859 >= 1)
            {
              v864 = v859 & ~(v859 >> 31);
              v865 = v1337;
              do
              {
                if (!v863)
                {
                  goto LABEL_2359;
                }

                v866 = &v865[*v860];
                v867 = v866 + 1;
                v868 = v866 < v1337 || v867 > v1338;
                if (v868 || v866 > v867)
                {
                  goto LABEL_2359;
                }

                *v866 = 0;
                ++v865;
                --v864;
              }

              while (v864);
            }

            goto LABEL_1720;
          }

          if (!v858)
          {
            goto LABEL_2359;
          }

          v897 = v854 ? v807 + v814 : 0x7FFFFFFF;
          Scale_fx = GetScale_fx(*v855, v897, &v1355);
          v899 = *(v1339 + v806);
          v900 = v1333 + 4 * v899;
          if (v900 < v1333 || (v900 + 4) > v1280 || v900 > v900 + 4)
          {
            goto LABEL_2359;
          }

          v901 = *(v1333 + v899);
          v902 = v807 + v901;
          v903 = ((v807 + v901) ^ v901) > -1 || (v807 ^ v901) < 0;
          v904 = (v901 >> 31) ^ 0x7FFFFFFF;
          if (v903)
          {
            v904 = v902;
          }

          if (((v904 ^ v789) & ((v789 - v904) ^ v789)) < 0)
          {
            v789 = (v789 >> 31) ^ 0x7FFFFFFF;
          }

          else
          {
            v789 -= v904;
          }

          v905 = v1340 + 2 * v899;
          if (v905 < v1340)
          {
            goto LABEL_2359;
          }

          if ((v905 + 2) > v1284)
          {
            goto LABEL_2359;
          }

          if (v905 > v905 + 2)
          {
            goto LABEL_2359;
          }

          v906 = &v1342 + v899;
          if (v906 < &v1342)
          {
            goto LABEL_2359;
          }

          if (v906 + 1 > v1285)
          {
            goto LABEL_2359;
          }

          if (v906 > v906 + 1)
          {
            goto LABEL_2359;
          }

          v907 = *(v1340 + v899);
          __A = v1396 + 2 * *v906;
          v1307 = v1279;
          v1308 = v1396;
          v888 = Scale_fx;
          decode_position_ari_fx(&v1347, v907, Scale_fx, &v1354, &__A);
          v908 = *(v1339 + v806);
          v909 = v1340 + 2 * v908;
          if (v909 < v1340)
          {
            goto LABEL_2359;
          }

          if ((v909 + 2) > v1284)
          {
            goto LABEL_2359;
          }

          if (v909 > v909 + 2)
          {
            goto LABEL_2359;
          }

          v910 = &v1342 + v908;
          if (v910 < &v1342)
          {
            goto LABEL_2359;
          }

          if (v910 + 1 > v1285)
          {
            goto LABEL_2359;
          }

          if (v910 > v910 + 1)
          {
            goto LABEL_2359;
          }

          v911 = *v910;
          v912 = &v1337[v911];
          if (v912 > v1338)
          {
            goto LABEL_2359;
          }

          if (v912 < v1337)
          {
            goto LABEL_2359;
          }

          v913 = *(v1340 + v908);
          v914 = v1396 + v911;
          if ((v913 & 0x80000000) != 0)
          {
            goto LABEL_2359;
          }

          v915 = 4 * v911;
          if ((3840 - v915) >> 2 < v913 || v914 > v1279 || v1396 > v914 || v913 > (2560 - v915) >> 2)
          {
            goto LABEL_2359;
          }

          decode_magnitude_usq_fx(&v1347, v913, v888, v1354, v914, v912);
LABEL_1803:
          v916 = *(v1339 + v806);
          v917 = v1340 + 2 * v916;
          if (v917 < v1340)
          {
            goto LABEL_2359;
          }

          if ((v917 + 2) > v1284)
          {
            goto LABEL_2359;
          }

          if (v917 > v917 + 2)
          {
            goto LABEL_2359;
          }

          v918 = &v1342 + v916;
          if (v918 < &v1342)
          {
            goto LABEL_2359;
          }

          if (v918 + 1 > v1285)
          {
            goto LABEL_2359;
          }

          if (v918 > v918 + 1)
          {
            goto LABEL_2359;
          }

          v919 = *v918;
          v920 = &v1337[v919];
          if (v920 > v1338)
          {
            goto LABEL_2359;
          }

          if (v920 < v1337)
          {
            goto LABEL_2359;
          }

          v921 = *(v1340 + v916);
          if ((v921 & 0x80000000) != 0 || (3840 - 4 * v919) >> 2 < v921)
          {
            goto LABEL_2359;
          }

          decode_signs_fx(&v1347, v921, v920);
          v852 = v888;
          goto LABEL_1815;
        }

        if (!v819)
        {
          v821 = (v807 ^ v814) < 0 || ((v807 + v814) ^ v814) >= 0;
          v822 = v1340 + v809;
          v825 = (v822 + 1) <= v1284 && v822 <= v822 + 1 && v822 >= v1340;
          if (v821 && v807 + v814 < 0)
          {
            if (!v825)
            {
              goto LABEL_2359;
            }

            v826 = *(v1340 + v809);
            v827 = &v1342 + v809;
            v830 = v827 + 1 <= v1285 && v827 <= v827 + 1 && v827 >= &v1342;
            if (v826 >= 1)
            {
              v831 = v826 & ~(v826 >> 31);
              v832 = v1337;
              do
              {
                if (!v830)
                {
                  goto LABEL_2359;
                }

                v833 = &v832[*v827];
                v834 = v833 + 1;
                v835 = v833 < v1337 || v834 > v1338;
                if (v835 || v833 > v834)
                {
                  goto LABEL_2359;
                }

                *v833 = 0;
                ++v832;
                --v831;
              }

              while (v831);
            }

LABEL_1720:
            if (v1355)
            {
              v852 = 0;
              if (((v1355 + v814) ^ v814) > -1 || ((v1355 ^ v814) & 0x80000000) != 0)
              {
                v871 = v1355 + v814;
              }

              else
              {
                v871 = 0x7FFFFFFF;
              }

              v872 = v871 + v807;
              v873 = (v871 + v807) ^ v807;
              v874 = v871 ^ v807;
              v875 = v873 > -1 || v874 < 0;
              v876 = (v807 >> 31) ^ 0x7FFFFFFF;
              if (v875)
              {
                v876 = v872;
              }

              LODWORD(v1355) = v876;
            }

            else
            {
              v852 = 0;
            }

LABEL_1815:
            --v788;
            goto LABEL_1816;
          }

          if (!v825)
          {
            goto LABEL_2359;
          }

          v877 = v821 ? v807 + v814 : 0x7FFFFFFF;
          v878 = GetScale_fx(*v822, v877, &v1355);
          v879 = *(v1339 + v806);
          v880 = v1333 + 4 * v879;
          if (v880 < v1333 || (v880 + 4) > v1280 || v880 > v880 + 4)
          {
            goto LABEL_2359;
          }

          v881 = *(v1333 + v879);
          v882 = v807 + v881;
          v883 = ((v807 + v881) ^ v881) > -1 || (v807 ^ v881) < 0;
          v884 = (v881 >> 31) ^ 0x7FFFFFFF;
          if (v883)
          {
            v884 = v882;
          }

          if (((v884 ^ v789) & ((v789 - v884) ^ v789)) < 0)
          {
            v789 = (v789 >> 31) ^ 0x7FFFFFFF;
          }

          else
          {
            v789 -= v884;
          }

          v885 = v1340 + 2 * v879;
          if (v885 < v1340)
          {
            goto LABEL_2359;
          }

          if ((v885 + 2) > v1284)
          {
            goto LABEL_2359;
          }

          if (v885 > v885 + 2)
          {
            goto LABEL_2359;
          }

          v886 = &v1342 + v879;
          if (v886 < &v1342)
          {
            goto LABEL_2359;
          }

          if (v886 + 1 > v1285)
          {
            goto LABEL_2359;
          }

          if (v886 > v886 + 1)
          {
            goto LABEL_2359;
          }

          v887 = *(v1340 + v879);
          __A = v1396 + 2 * *v886;
          v1307 = v1279;
          v1308 = v1396;
          v888 = v878;
          decode_position_ari_fx(&v1347, v887, v878, &v1354, &__A);
          v889 = *(v1339 + v806);
          v890 = v1340 + 2 * v889;
          if (v890 < v1340)
          {
            goto LABEL_2359;
          }

          if ((v890 + 2) > v1284)
          {
            goto LABEL_2359;
          }

          if (v890 > v890 + 2)
          {
            goto LABEL_2359;
          }

          v891 = &v1342 + v889;
          if (v891 < &v1342)
          {
            goto LABEL_2359;
          }

          if (v891 + 1 > v1285)
          {
            goto LABEL_2359;
          }

          if (v891 > v891 + 1)
          {
            goto LABEL_2359;
          }

          v892 = *v891;
          v893 = &v1337[v892];
          if (v893 > v1338)
          {
            goto LABEL_2359;
          }

          if (v893 < v1337)
          {
            goto LABEL_2359;
          }

          v894 = *(v1340 + v889);
          v895 = v1396 + v892;
          if ((v894 & 0x80000000) != 0)
          {
            goto LABEL_2359;
          }

          v896 = 4 * v892;
          if ((3840 - v896) >> 2 < v894 || v895 > v1279 || v1396 > v895 || v894 > (2560 - v896) >> 2)
          {
            goto LABEL_2359;
          }

          decode_mangitude_tcq_fx(&v1347, v894, v888, v1354, v895, v893, &v1355);
          goto LABEL_1803;
        }
      }

      v837 = v1340 + 2 * v809;
      v838 = (v837 + 2);
      if (v837 < v1340 || v838 > v1284 || v837 > v838)
      {
        goto LABEL_2359;
      }

      v841 = *(v1340 + v809);
      v842 = &v1342 + v809;
      v845 = v842 + 1 <= v1285 && v842 <= v842 + 1 && v842 >= &v1342;
      if (v841 >= 1)
      {
        v846 = v841 & ~(v841 >> 31);
        v847 = v1337;
        do
        {
          if (!v845)
          {
            goto LABEL_2359;
          }

          v848 = &v847[*v842];
          v849 = v848 + 1;
          v850 = v848 < v1337 || v849 > v1338;
          if (v850 || v848 > v849)
          {
            goto LABEL_2359;
          }

          *v848 = 0;
          ++v847;
          --v846;
        }

        while (v846);
      }

      v852 = 0;
LABEL_1816:
      v922 = *(v1339 + v806);
      v923 = v1338 + 4 * v922;
      v924 = (v923 + 4);
      if (v923 < v1338 || v924 > v1278 || v923 > v924)
      {
        goto LABEL_2359;
      }

      *(v1338 + v922) = v852;
      v927 = v1333 + v922;
      if (v927 < v1333 || (v927 + 1) > v1280 || v927 > v927 + 1)
      {
        goto LABEL_2359;
      }

      v807 = 0;
      if (*v927 < 1)
      {
        goto LABEL_1845;
      }

      v928 = v1355;
      if ((v1355 & 0x80000000) == 0)
      {
        goto LABEL_1845;
      }

      if (((v790 + v1355) ^ v1355) > -1 || ((v790 ^ v1355) & 0x80000000) != 0)
      {
        v930 = v790 + v1355;
      }

      else
      {
        v930 = 0x80000000;
      }

      v932 = ar_div(v789, 2 * (v788 > 1));
      v933 = v932 + v930;
      if (((v932 ^ v930) & 0x80000000) != 0 || ((v933 ^ v930) & 0x80000000) == 0)
      {
        if (v933 < 0)
        {
          goto LABEL_1837;
        }
      }

      else if ((v930 & 0x80000000) != 0)
      {
LABEL_1837:
        v807 = ar_div(v790 + v928, v788);
LABEL_1841:
        v934 = v928 - v807;
        if (((v807 ^ v928) & ((v928 - v807) ^ v928)) < 0 != v931)
        {
          v934 = 0x80000000;
        }

        LODWORD(v1355) = v934;
        goto LABEL_1845;
      }

      v807 = 0;
      goto LABEL_1841;
    }

LABEL_1846:
    if (v1355 > 0x80000 && v1263[0] == 160 || v1355 > 786432 && v1263[0] == 320)
    {
      LODWORD(v1309) = 49152 * (v1355 >> 16) + ((24576 * v1355) >> 15);
      v935 = ((WORD1(v1355) << 16) >> 2) & 0xFFFFC000 | (v1355 >> 2);
    }

    else
    {
      v935 = 0;
      LODWORD(v1309) = v1355;
    }

    HIDWORD(v1309) = v935;
    if (!v1272)
    {
      goto LABEL_1398;
    }

    v1156 = 0;
LABEL_2214:
    v1157 = 0;
    v1158 = &v1356;
    v1159 = &v1309;
    while (1)
    {
      v1160 = v1157;
      if (v1156 == *v1158)
      {
        break;
      }

LABEL_2324:
      v1157 = 1;
      v1158 = v1281;
      v1159 = __N;
      if (v1160)
      {
        if (++v1156 == v1272)
        {
          goto LABEL_1398;
        }

        goto LABEL_2214;
      }
    }

    v1161 = *(v1339 + v1156);
    v1162 = v1333 + v1161;
    v1163 = (v1162 + 1);
    if (v1162 < v1333 || v1163 > v1280 || v1162 > v1163)
    {
      goto LABEL_2359;
    }

    v1166 = *v1159;
    v1167 = v1166 + *v1162;
    v1168 = v1166 ^ *v1162;
    if ((v1167 ^ *v1162) > -1 || v1168 < 0)
    {
      v1170 = v1167;
    }

    else
    {
      v1170 = (*v1162 >> 31) ^ 0x7FFFFFFF;
    }

    *v1162 = v1170;
    if (v1170 >= 1)
    {
      v1171 = &v1350[-1] + v1161;
      if (v1171 < &v1349 || (v1171 + 1) > v1277 || v1171 > v1171 + 1)
      {
        goto LABEL_2359;
      }

      v1172 = *v1171;
      if (v1172 == 1)
      {
        v1200 = v1340 + v1161;
        if (v1200 < v1340)
        {
          goto LABEL_2359;
        }

        if ((v1200 + 1) > v1284)
        {
          goto LABEL_2359;
        }

        if (v1200 > v1200 + 1)
        {
          goto LABEL_2359;
        }

        v1201 = GetScale_fx(*v1200, v1170, &v1355);
        v1202 = *(v1339 + v1156);
        v1203 = v1340 + 2 * v1202;
        if (v1203 < v1340)
        {
          goto LABEL_2359;
        }

        if ((v1203 + 2) > v1284)
        {
          goto LABEL_2359;
        }

        if (v1203 > v1203 + 2)
        {
          goto LABEL_2359;
        }

        v1204 = &v1342 + v1202;
        if (v1204 < &v1342)
        {
          goto LABEL_2359;
        }

        if (v1204 + 1 > v1285)
        {
          goto LABEL_2359;
        }

        if (v1204 > v1204 + 1)
        {
          goto LABEL_2359;
        }

        v1178 = v1201;
        v1205 = *(v1340 + v1202);
        __A = v1396 + 2 * *v1204;
        v1307 = v1279;
        v1308 = v1396;
        decode_position_ari_fx(&v1347, v1205, v1201, &v1354, &__A);
        v1206 = *(v1339 + v1156);
        v1207 = v1340 + 2 * v1206;
        if (v1207 < v1340)
        {
          goto LABEL_2359;
        }

        if ((v1207 + 2) > v1284)
        {
          goto LABEL_2359;
        }

        if (v1207 > v1207 + 2)
        {
          goto LABEL_2359;
        }

        v1208 = &v1342 + v1206;
        if (v1208 < &v1342)
        {
          goto LABEL_2359;
        }

        if (v1208 + 1 > v1285)
        {
          goto LABEL_2359;
        }

        if (v1208 > v1208 + 1)
        {
          goto LABEL_2359;
        }

        v1209 = *v1208;
        v1210 = &v1337[v1209];
        if (v1210 > v1338)
        {
          goto LABEL_2359;
        }

        if (v1210 < v1337)
        {
          goto LABEL_2359;
        }

        v1211 = *(v1340 + v1206);
        v1212 = v1396 + v1209;
        if ((v1211 & 0x80000000) != 0)
        {
          goto LABEL_2359;
        }

        v1213 = 4 * v1209;
        if ((3840 - v1213) >> 2 < v1211 || v1212 > v1279 || v1396 > v1212 || v1211 > (2560 - v1213) >> 2)
        {
          goto LABEL_2359;
        }

        decode_magnitude_usq_fx(&v1347, v1211, v1178, v1354, v1212, v1210);
        goto LABEL_2305;
      }

      if (!v1172)
      {
        v1173 = v1340 + v1161;
        if (v1173 < v1340)
        {
          goto LABEL_2359;
        }

        if ((v1173 + 1) > v1284)
        {
          goto LABEL_2359;
        }

        if (v1173 > v1173 + 1)
        {
          goto LABEL_2359;
        }

        v1174 = GetScale_fx(*v1173, v1170, &v1355);
        v1175 = *(v1339 + v1156);
        v1176 = v1340 + 2 * v1175;
        if (v1176 < v1340)
        {
          goto LABEL_2359;
        }

        if ((v1176 + 2) > v1284)
        {
          goto LABEL_2359;
        }

        if (v1176 > v1176 + 2)
        {
          goto LABEL_2359;
        }

        v1177 = &v1342 + v1175;
        if (v1177 < &v1342)
        {
          goto LABEL_2359;
        }

        if (v1177 + 1 > v1285)
        {
          goto LABEL_2359;
        }

        if (v1177 > v1177 + 1)
        {
          goto LABEL_2359;
        }

        v1178 = v1174;
        v1179 = *(v1340 + v1175);
        __A = v1396 + 2 * *v1177;
        v1307 = v1279;
        v1308 = v1396;
        decode_position_ari_fx(&v1347, v1179, v1174, &v1354, &__A);
        v1180 = *(v1339 + v1156);
        v1181 = v1340 + 2 * v1180;
        if (v1181 < v1340)
        {
          goto LABEL_2359;
        }

        if ((v1181 + 2) > v1284)
        {
          goto LABEL_2359;
        }

        if (v1181 > v1181 + 2)
        {
          goto LABEL_2359;
        }

        v1182 = &v1342 + v1180;
        if (v1182 < &v1342)
        {
          goto LABEL_2359;
        }

        if (v1182 + 1 > v1285)
        {
          goto LABEL_2359;
        }

        if (v1182 > v1182 + 1)
        {
          goto LABEL_2359;
        }

        v1183 = *v1182;
        v1184 = &v1337[v1183];
        if (v1184 > v1338)
        {
          goto LABEL_2359;
        }

        if (v1184 < v1337)
        {
          goto LABEL_2359;
        }

        v1185 = *(v1340 + v1180);
        v1186 = v1396 + v1183;
        if ((v1185 & 0x80000000) != 0)
        {
          goto LABEL_2359;
        }

        v1187 = 4 * v1183;
        if ((3840 - v1187) >> 2 < v1185 || v1186 > v1279 || v1396 > v1186 || v1185 > (2560 - v1187) >> 2)
        {
          goto LABEL_2359;
        }

        decode_mangitude_tcq_fx(&v1347, v1185, v1178, v1354, v1186, v1184, &v1355);
LABEL_2305:
        v1214 = *(v1339 + v1156);
        v1215 = v1340 + 2 * v1214;
        if (v1215 < v1340)
        {
          goto LABEL_2359;
        }

        if ((v1215 + 2) > v1284)
        {
          goto LABEL_2359;
        }

        if (v1215 > v1215 + 2)
        {
          goto LABEL_2359;
        }

        v1216 = &v1342 + v1214;
        if (v1216 < &v1342)
        {
          goto LABEL_2359;
        }

        if (v1216 + 1 > v1285)
        {
          goto LABEL_2359;
        }

        if (v1216 > v1216 + 1)
        {
          goto LABEL_2359;
        }

        v1217 = *v1216;
        v1218 = &v1337[v1217];
        if (v1218 > v1338)
        {
          goto LABEL_2359;
        }

        if (v1218 < v1337)
        {
          goto LABEL_2359;
        }

        v1219 = *(v1340 + v1214);
        if ((v1219 & 0x80000000) != 0 || (3840 - 4 * v1217) >> 2 < v1219)
        {
          goto LABEL_2359;
        }

        decode_signs_fx(&v1347, v1219, v1218);
LABEL_2316:
        v1220 = v1338 + *(v1339 + v1156);
        v1221 = (v1220 + 1);
        if (v1220 < v1338 || v1221 > v1278 || v1220 > v1221)
        {
          goto LABEL_2359;
        }

        *v1220 = v1178;
        goto LABEL_2324;
      }
    }

    v1188 = v1340 + 2 * v1161;
    if (v1188 < v1340 || (v1188 + 2) > v1284 || v1188 > v1188 + 2)
    {
      goto LABEL_2359;
    }

    v1189 = *(v1340 + v1161);
    v1190 = &v1342 + v1161;
    v1193 = v1190 + 1 <= v1285 && v1190 <= v1190 + 1 && v1190 >= &v1342;
    if (v1189 >= 1)
    {
      v1194 = v1189 & ~(v1189 >> 31);
      v1195 = v1337;
      do
      {
        if (!v1193)
        {
          goto LABEL_2359;
        }

        v1196 = &v1195[*v1190];
        v1197 = v1196 + 1;
        v1198 = v1196 < v1337 || v1197 > v1338;
        if (v1198 || v1196 > v1197)
        {
          goto LABEL_2359;
        }

        *v1196 = 0;
        ++v1195;
        --v1194;
      }

      while (v1194);
    }

    v1178 = 0;
    goto LABEL_2316;
  }

  if (v641)
  {
    v644 = 0;
    v645 = 0;
    if (v1272 <= 1)
    {
      v646 = 1;
    }

    else
    {
      v646 = v1272;
    }

    v1284 = v646;
    v647 = v1340 + 2 * v1272;
    do
    {
      v648 = *(v1339 + v644);
      v649 = v1333 + 4 * v648;
      v650 = (v649 + 4);
      if (v649 < v1333 || v650 > v1280 || v649 > v650)
      {
        goto LABEL_2359;
      }

      v653 = *(v1333 + v648);
      v654 = v1340 + v648;
      v657 = v654 + 1 <= v647 && v654 <= v654 + 1 && v654 >= v1340;
      if (v653 <= 0)
      {
        if (!v657)
        {
          goto LABEL_2359;
        }

        v678 = *(v1340 + v648);
        v679 = &v1342 + v648;
        v682 = v679 + 1 <= v1285 && v679 <= v679 + 1 && v679 >= &v1342;
        if (v678 >= 1)
        {
          v683 = v678 & ~(v678 >> 31);
          v684 = v1337;
          while (v682)
          {
            v685 = &v684[*v679];
            v686 = v685 + 1;
            v687 = v685 < v1337 || v686 > v1338;
            if (v687 || v685 > v686)
            {
              break;
            }

            *v685 = 0;
            ++v684;
            if (!--v683)
            {
              goto LABEL_1387;
            }
          }

          goto LABEL_2359;
        }

LABEL_1387:
        v662 = 0;
      }

      else
      {
        if (!v657)
        {
          goto LABEL_2359;
        }

        v658 = GetScale_fx(*v654, v653 + v645, &v1355);
        v659 = *(v1339 + v644);
        v660 = v1340 + 2 * v659;
        if (v660 < v1340)
        {
          goto LABEL_2359;
        }

        if (v660 + 2 > v647)
        {
          goto LABEL_2359;
        }

        if (v660 > v660 + 2)
        {
          goto LABEL_2359;
        }

        v661 = &v1342 + v659;
        if (v661 < &v1342)
        {
          goto LABEL_2359;
        }

        if (v661 + 1 > v1285)
        {
          goto LABEL_2359;
        }

        if (v661 > v661 + 1)
        {
          goto LABEL_2359;
        }

        v662 = v658;
        v663 = *(v1340 + v659);
        __A = v1396 + 2 * *v661;
        v1307 = v1279;
        v1308 = v1396;
        decode_position_ari_fx(&v1347, v663, v658, &v1354, &__A);
        v664 = *(v1339 + v644);
        v665 = v1340 + 2 * v664;
        if (v665 < v1340)
        {
          goto LABEL_2359;
        }

        if (v665 + 2 > v647)
        {
          goto LABEL_2359;
        }

        if (v665 > v665 + 2)
        {
          goto LABEL_2359;
        }

        v666 = &v1342 + v664;
        if (v666 < &v1342)
        {
          goto LABEL_2359;
        }

        if (v666 + 1 > v1285)
        {
          goto LABEL_2359;
        }

        if (v666 > v666 + 1)
        {
          goto LABEL_2359;
        }

        v667 = *v666;
        v668 = &v1337[v667];
        if (v668 > v1338)
        {
          goto LABEL_2359;
        }

        if (v668 < v1337)
        {
          goto LABEL_2359;
        }

        v669 = *(v1340 + v664);
        v670 = v1396 + v667;
        if ((v669 & 0x80000000) != 0)
        {
          goto LABEL_2359;
        }

        v671 = 4 * v667;
        if ((3840 - v671) >> 2 < v669)
        {
          goto LABEL_2359;
        }

        if (v670 > v1279)
        {
          goto LABEL_2359;
        }

        if (v1396 > v670)
        {
          goto LABEL_2359;
        }

        if (v669 > (2560 - v671) >> 2)
        {
          goto LABEL_2359;
        }

        decode_magnitude_usq_fx(&v1347, v669, v662, v1354, v670, v668);
        v672 = *(v1339 + v644);
        v673 = v1340 + 2 * v672;
        if (v673 < v1340)
        {
          goto LABEL_2359;
        }

        if (v673 + 2 > v647)
        {
          goto LABEL_2359;
        }

        if (v673 > v673 + 2)
        {
          goto LABEL_2359;
        }

        v674 = &v1342 + v672;
        if (v674 < &v1342)
        {
          goto LABEL_2359;
        }

        if (v674 + 1 > v1285)
        {
          goto LABEL_2359;
        }

        if (v674 > v674 + 1)
        {
          goto LABEL_2359;
        }

        v675 = *v674;
        v676 = &v1337[v675];
        if (v676 > v1338)
        {
          goto LABEL_2359;
        }

        if (v676 < v1337)
        {
          goto LABEL_2359;
        }

        v677 = *(v1340 + v672);
        if ((v677 & 0x80000000) != 0 || (3840 - 4 * v675) >> 2 < v677)
        {
          goto LABEL_2359;
        }

        decode_signs_fx(&v1347, v677, v676);
        if (v607 == 0x8000)
        {
          v607 = -32768;
        }

        else
        {
          v607 = (v607 - 1);
        }

        v648 = *(v1339 + v644);
      }

      v689 = v1338 + v648;
      if (v689 < v1338 || (v689 + 1) > v1278 || v689 > v689 + 1)
      {
        goto LABEL_2359;
      }

      *v689 = v662;
      v690 = v1355;
      if (v1355 >= 1 && v607 >= 1)
      {
        v645 = ar_div(v1355, v607);
        v691 = v690 - v645;
        if (((v645 ^ v690) & ((v690 - v645) ^ v690)) < 0 != v931)
        {
          v691 = 0x7FFFFFFF;
        }

        LODWORD(v1355) = v691;
      }

      ++v644;
    }

    while (v644 != v1284);
  }

LABEL_1398:
  v692 = v1272;
  v693 = v1267;
  v694 = v1253;
  if ((v1252 & 1) == 0)
  {
    v695 = 0;
    v696 = v1249;
    do
    {
      *(v1373 + v695++) = ar_decode(&v1347, uniform_model, &step_LSB);
    }

    while (v696 != v695);
    v697 = 0;
    v698 = v1395 + 1;
    v699 = v1373;
    do
    {
      v700 = v699 + 1;
      v701 = v699 < v1373 || v700 > v694;
      if (v701 || v699 > v700)
      {
        goto LABEL_2359;
      }

      v703 = &ddec_LSB + 4 * v697;
      v704 = *v699;
      v705 = &v703[2 * v704];
      v706 = (v705 + 2);
      v707 = v705 < v703 || v706 > (v703 + 4);
      if (v707 || v705 > v706)
      {
        goto LABEL_2359;
      }

      if (v698 - 1 < v1395)
      {
        goto LABEL_2359;
      }

      if (v698 > v693)
      {
        goto LABEL_2359;
      }

      if (v698 - 1 > v698)
      {
        goto LABEL_2359;
      }

      v709 = *v705;
      *(v698 - 1) = flt_19B0AF9D0[(v709 & 1) == 0];
      if (v698 < v1395)
      {
        goto LABEL_2359;
      }

      if (v698 + 1 > v693)
      {
        goto LABEL_2359;
      }

      if (v698 > v698 + 1)
      {
        goto LABEL_2359;
      }

      *v698 = flt_19B0AF9D0[(v709 & 2) == 0];
      v710 = (&dstep_LSB + 4 * v697);
      v711 = &v710[v704];
      if (v711 < v710 || v711 + 1 > v710 + 2 || v711 > v711 + 1)
      {
        goto LABEL_2359;
      }

      v697 = *v711;
      ++v699;
      v698 += 2;
    }

    while (--v696);
  }

  v712 = v1347;
  v713 = *(v1347 + 1024);
  v714 = *(v1347 + 1032);
  for (i = 15; i > 1; --i)
  {
    if (++v713 == 8)
    {
      v713 = 0;
      --*(v712 + 1028);
    }
  }

  *(v712 + 1024) = v713;
  *(v712 + 1032) = v714 - 14;
  if (v1251)
  {
    if (v692)
    {
      v716 = v1340 + v692;
      v717 = v1339;
      do
      {
        v719 = *v717++;
        v718 = v719;
        v720 = v1333 + v719;
        v721 = (v720 + 1);
        v722 = v720 < v1333 || v721 > v1280;
        if (v722 || v720 > v721)
        {
          goto LABEL_2359;
        }

        if (*v720 >= 1)
        {
          v724 = &v1342 + 2 * v718;
          v725 = (v724 + 2);
          if (v724 < &v1342 || v725 > v1285 || v724 > v725)
          {
            goto LABEL_2359;
          }

          v728 = v1340 + v718;
          if (v728 < v1340)
          {
            goto LABEL_2359;
          }

          if (v728 + 1 > v716)
          {
            goto LABEL_2359;
          }

          if (v728 > v728 + 1)
          {
            goto LABEL_2359;
          }

          v729 = *(&v1342 + v718);
          v730 = &v1337[v729];
          if (v730 > v1338)
          {
            goto LABEL_2359;
          }

          if (v730 < v1337)
          {
            goto LABEL_2359;
          }

          v731 = *v728;
          if (v731 < 0 || (3840 - 4 * v729) >> 2 < *v728)
          {
            goto LABEL_2359;
          }

          RestoreTCQdec(v730, v731, &v1353, v1395, v1267);
        }

        v692 = (v692 - 1);
      }

      while (v692);
    }
  }

  else if (v692)
  {
    v732 = 0;
    v733 = v1340 + v692;
    do
    {
      v734 = *(v1339 + v732);
      v735 = v1333 + v734;
      v736 = (v735 + 1);
      if (v735 < v1333 || v736 > v1280 || v735 > v736)
      {
        goto LABEL_2359;
      }

      if (*v735 >= 1 && v732 != v1356 && v732 != WORD1(v1356))
      {
        v741 = &v1342 + 2 * v734;
        v742 = (v741 + 2);
        if (v741 < &v1342 || v742 > v1285 || v741 > v742)
        {
          goto LABEL_2359;
        }

        v745 = v1340 + v734;
        if (v745 < v1340)
        {
          goto LABEL_2359;
        }

        if (v745 + 1 > v733)
        {
          goto LABEL_2359;
        }

        if (v745 > v745 + 1)
        {
          goto LABEL_2359;
        }

        v746 = *(&v1342 + v734);
        v747 = &v1337[v746];
        if (v747 > v1338)
        {
          goto LABEL_2359;
        }

        if (v747 < v1337)
        {
          goto LABEL_2359;
        }

        v748 = *v745;
        if (v748 < 0 || (3840 - 4 * v746) >> 2 < *v745)
        {
          goto LABEL_2359;
        }

        RestoreTCQdec(v747, v748, &v1353, v1395, v1267);
      }

      v732 = (v732 + 1);
    }

    while (v1272 != v732);
    v749 = 0;
    do
    {
      v750 = *(v1339 + v749);
      v751 = v1333 + v750;
      v752 = (v751 + 1);
      v753 = v751 < v1333 || v752 > v1280;
      if (v753 || v751 > v752)
      {
        goto LABEL_2359;
      }

      if (*v751 >= 1 && (v749 == v1356 || v749 == WORD1(v1356)))
      {
        v756 = &v1342 + 2 * v750;
        v757 = (v756 + 2);
        if (v756 < &v1342 || v757 > v1285 || v756 > v757)
        {
          goto LABEL_2359;
        }

        v760 = v1340 + v750;
        if (v760 < v1340)
        {
          goto LABEL_2359;
        }

        if (v760 + 1 > v733)
        {
          goto LABEL_2359;
        }

        if (v760 > v760 + 1)
        {
          goto LABEL_2359;
        }

        v761 = *(&v1342 + v750);
        v762 = &v1337[v761];
        if (v762 > v1338)
        {
          goto LABEL_2359;
        }

        if (v762 < v1337)
        {
          goto LABEL_2359;
        }

        v763 = *v760;
        if (v763 < 0 || (3840 - 4 * v761) >> 2 < *v760)
        {
          goto LABEL_2359;
        }

        RestoreTCQdec(v762, v763, &v1353, v1395, v1267);
      }
    }

    while (v1272 != ++v749);
  }

  v764 = SHIWORD(v1304);
  v765 = v1250;
  if (SHIWORD(v1304) >= 1)
  {
    v766 = v1333;
    v767 = v1336;
    v768 = SHIWORD(v1304);
    do
    {
      v769 = v766 + 1;
      v770 = v766 < v1333 || v769 > v765;
      v771 = v770 || v766 > v769;
      v772 = v767 + 1;
      v773 = !v771 && v767 >= v1336;
      v774 = !v773 || v772 > v1337;
      if (v774 || v767 > v772)
      {
        goto LABEL_2359;
      }

      v776 = *v766++;
      *v767++ = v776 * 0.000015259;
    }

    while (--v768);
  }

  mdct_spectrum_denorm(v1337, v1338, v1334, *v1275, &v1342, v1285, v1341, v1274, v1296, v1297, v1340, v1273, v1335, v1276, v1338, v1278, v764);
  v777 = v1294;
  v778 = v1303;
  v779 = v1303;
  *&v780 = -1;
  *(&v780 + 1) = -1;
  v1396[7] = v780;
  v1396[6] = v780;
  v1396[5] = v780;
  v1396[4] = v780;
  v1396[3] = v780;
  v1396[2] = v780;
  v1396[1] = v780;
  v1396[0] = v780;
  *&v780 = 0xAAAAAAAAAAAAAAAALL;
  *(&v780 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1395[3] = v780;
  v1395[2] = v780;
  v1395[1] = v780;
  v1395[0] = v780;
  LODWORD(__N) = v1302;
  if (!v1294)
  {
    goto LABEL_1547;
  }

  if (v1294 == -1)
  {
    v781 = 30;
    goto LABEL_1548;
  }

  v782 = v1294 ^ (v1294 >> 31);
  if (v782 <= 0x3FFFFFFF)
  {
    v783 = 0;
    do
    {
      v781 = v783;
      v784 = v782 >> 29;
      v782 *= 2;
      ++v783;
    }

    while (!v784);
    if (v783 == 0x8000)
    {
      LODWORD(v1394[0]) = 1;
      v781 = 0x8000;
    }
  }

  else
  {
LABEL_1547:
    v781 = -1;
  }

LABEL_1548:
  v785 = v1303;
  if (v1303)
  {
    if (v1303 == 0xFFFF)
    {
      v785 = 15;
    }

    else
    {
      v786 = v779 ^ (v779 >> 15);
      if (v786 >= 0x4000)
      {
        v785 = 0;
      }

      else
      {
        v785 = 0;
        do
        {
          v786 = (2 * v786);
          ++v785;
        }

        while (v786 < 0x4000);
      }
    }
  }

  v936 = v781;
  v937 = L_shl(v1294, v781);
  v938 = shl(v779, v785, v1394);
  v939 = div_l(v937, v938, v1394);
  v940 = v936 - v785;
  v1284 = v764;
  if (v940 < 0x8000)
  {
    if (v940 > -32769)
    {
      if (v940 >= 32740)
      {
        goto LABEL_1853;
      }

      v1068 = v940 + 28;
      v941 = v939 << 16;
      if (v1068 >= -32754)
      {
        v942 = 13 - v1068;
      }

      else
      {
        v942 = 0x7FFF;
      }
    }

    else
    {
      v941 = v939 << 16;
      v942 = 32753;
    }
  }

  else
  {
LABEL_1853:
    v941 = v939 << 16;
    v942 = -32754;
  }

  v943 = L_shl(v941, v942);
  if (v779 >= 1)
  {
    v945 = v943;
    if (v943 >= 0)
    {
      v946 = 2147483646;
    }

    else
    {
      v946 = 0x80000000;
    }

    if (((v777 ^ v943) & ((v943 - v777) ^ v943)) < 0)
    {
      v947 = v946;
    }

    else
    {
      v947 = v943 - v777;
    }

    v948 = v947 >> 1;
    v949 = v1395;
    v950 = v1396;
    do
    {
      v951 = Pow2_11469(14, (v948 >> 15) & 0x7FFF, v1394);
      if (v949 < v1395 || v949 + 1 > &v1395[4] || v949 > v949 + 1)
      {
        goto LABEL_2359;
      }

      v952 = v945 + v948;
      if (((v945 ^ v948) & 0x80000000) == 0 && (v952 ^ v948) < 0)
      {
        v952 = (v948 >> 31) ^ 0x7FFFFFFF;
        LODWORD(v1394[0]) = 1;
      }

      v953 = shl(v951, v948 >> 30, v1394);
      *v949 = v953;
      if (v950 < v1396 || v950 + 1 > &v1396[8] || v950 > v950 + 1)
      {
        goto LABEL_2359;
      }

      v954 = vcvtd_n_f64_s32(v953, 0xEuLL);
      *v950++ = v954;
      ++v949;
      v948 = v952;
    }

    while (--v778);
  }

  v955 = v1284;
  if ((v1284 - __N) < v1284)
  {
    v956 = (v1284 - __N);
    while (1)
    {
      v957 = v1396 + get_next_indice(v1283, v1269);
      v958 = v957 + 1;
      v960 = v957 < v1396 || v958 > &v1396[8] || v957 > v958;
      v961 = *v1275;
      if (v960)
      {
        goto LABEL_2359;
      }

      v962 = v1339 + v956;
      if (v962 < v1339 || (v962 + 1) > v1268 || v962 > v962 + 1)
      {
        goto LABEL_2359;
      }

      v963 = *v962;
      v964 = &v1342 + v963;
      v965 = (v964 + 1);
      v966 = v964 < &v1342 || v965 > v1285;
      v967 = v966 || v964 > v965;
      v968 = v1341 + v963;
      v969 = (v968 + 1);
      v970 = !v967 && v968 >= v1341;
      v971 = !v970 || v969 > v1274;
      if (v971 || v968 > v969)
      {
        goto LABEL_2359;
      }

      v973 = *v964;
      v974 = *v968;
      if (v973 <= v974)
      {
        break;
      }

LABEL_1912:
      v955 = v1284;
      if (v1284 == ++v956)
      {
        goto LABEL_1913;
      }
    }

    v975 = *v957;
    while (1)
    {
      v976 = &v1334[v973];
      v977 = v976 + 1;
      v978 = v976 < v1334 || v977 > v961;
      if (v978 || v976 > v977)
      {
        goto LABEL_2359;
      }

      *v976 = v975 * *v976;
      v973 = (v973 + 1);
      if (v973 > v974)
      {
        goto LABEL_1912;
      }
    }
  }

LABEL_1913:
  if (v1261)
  {
    spt_shorten_domain_band_restore(v955, &v1342, v1285, v1341, v1274, v1340, v1273, v944, &v1326[8], &v1326[16], v1326, &v1326[8], &v1325[16], v1326);
  }

  v980 = WORD2(v1338[0]) + LOWORD(v1338[0]) + WORD4(v1338[0]) + WORD6(v1338[0]);
  v1300 = v980;
  v981 = v1341 + v955;
  v982 = (v981 - 1);
  if (v981 - 1 < v1341 || v981 > v1274 || v982 > v981)
  {
    goto LABEL_2359;
  }

  v983 = *v982;
  if ((v983 & 0x80000000) == 0)
  {
    v984 = 0;
    v985 = *v1275;
    do
    {
      v986 = v984;
      v987 = &v1334[v984];
      v988 = v987 + 1;
      v989 = v987 < v1334 || v988 > v985;
      v990 = v989 || v987 > v988;
      v991 = &v1332[v986];
      v992 = v991 + 1;
      v993 = !v990 && v991 >= v1332;
      v994 = !v993 || v992 > v1333;
      if (v994 || v991 > v992)
      {
        goto LABEL_2359;
      }

      v1332[v986] = v1334[v986];
      v984 = v986 + 1;
    }

    while (v983 >= (v986 + 1));
  }

  v996 = v1283;
  v997 = v1301;
  v998 = *v1265;
  v999 = *v1262;
  hq2_noise_inject(v1332, v1333, &v1342, v1285, v1341, v1274, v1340, v1273, v528, v529, v1330, __b, v1336, v1337, v1338, v1278, v980, v955, v1256, v1255, (v1283 + 68272), v1283 + 68400, (v1283 + 68400), v1283 + 68528, (v1283 + 68528), v1283 + 68530, v1346, v1264, v1301, v1262[0], *(v1283 + 5242), *v1265);
  if (*(v996 + 5242) == 2 && (v998 == 16400 || v998 == 13200) && (v999 | 2) == 2)
  {
    if (v1304 > 0x280u)
    {
      goto LABEL_2359;
    }

    v1000 = v1262[0];
    preset_hq2_swb(v1262[0], v1341, v1274, &v1289, v997, v1304, v955, &v1291, &v1290, __b);
    if (v1270 > v1283 + 68562)
    {
      goto LABEL_2359;
    }

    v1267 = (v1283 + 68564);
    if (v1283 + 68562 > (v1283 + 68564))
    {
      goto LABEL_2359;
    }

    v1261 = (v1283 + 68562);
    v1281 = v1289;
    v1314 = -21846;
    v1313 = -21846;
    *&v1347 = -1;
    *(&v1347 + 1) = -1;
    v1312 = -21846;
    HIWORD(v1311) = -21846;
    __A = &subband_search_offsets_13p2kbps_Har;
    v1307 = &subband_offsets_sub5_13p2kbps_Har;
    v1309 = &subband_offsets_sub5_13p2kbps_Har;
    v1310 = &unk_19B3A0FF4;
    v1353 = 0;
    v1354 = 0xAAAAAAAAAAAAAAAALL;
    v1279 = v1291;
    LODWORD(v1277) = v1290;
    v1268 = &v1355;
    hf_parinitiz(*v1265, v1000, v1291, v1290, &v1354, &v1355, &__A, &v1308, &v1309, &v1311, &v1314, &v1313, &v1312, &v1311 + 3);
    v1001 = *v1262;
    if (v1313 >= 5u)
    {
      goto LABEL_2359;
    }

    LODWORD(v1280) = v1000;
    if (v1313)
    {
      v1002 = 0;
      v1003 = 0;
      v1004 = 2 * v1313;
      v1005 = v1346 + 2 * v1284;
      while (v1001 != 2)
      {
        v1010 = &v1005[v1002 - 8];
        if (v1010 < v1346)
        {
          goto LABEL_2359;
        }

        v1011 = &v1005[v1002 - 6];
        if (v1011 > v1264 || v1010 > v1011)
        {
          goto LABEL_2359;
        }

        if (!*v1010)
        {
          v1013 = &bits_lagIndices_modeNormal[v1002 / 2 + 1];
          if (v1013 > word_19B3A1240 || &bits_lagIndices_modeNormal[v1002 / 2] > v1013)
          {
            goto LABEL_2359;
          }

          v1006 = &bits_lagIndices_modeNormal[v1003];
LABEL_1965:
          v1012 = get_next_indice(v1283, *v1006);
          goto LABEL_1966;
        }

        v1012 = 0;
LABEL_1966:
        *(&v1353 + v1002) = v1012;
        ++v1003;
        v1002 += 2;
        if (v1004 == v1002)
        {
          goto LABEL_1967;
        }
      }

      v1006 = &bits_lagIndices_mode0_Har[v1002 / 2];
      v1007 = &bits_lagIndices_mode0_Har[v1002 / 2 + 1];
      if (&bits_lagIndices_mode0_Har[v1002 / 2] < bits_lagIndices_mode0_Har || v1007 > bits_lagIndices_modeNormal || v1006 > v1007)
      {
        goto LABEL_2359;
      }

      goto LABEL_1965;
    }

LABEL_1967:
    v1014 = v1312;
    __N = SHIWORD(v1311);
    if ((HIWORD(v1311) + v1312) >= 1)
    {
      if ((HIWORD(v1311) + v1312) >= 0x281u)
      {
        goto LABEL_2359;
      }

      v1015 = (HIWORD(v1311) + v1312) & 0x3FFF;
      memcpy(__b, v1334, v1015 * 4);
      if (&__b[v1015] < __b)
      {
        goto LABEL_2359;
      }
    }

    v1256 = v1314;
    v1269 = v1314;
    v1271 = v1307;
    v1272 = __A;
    v1016 = v1309;
    v1017 = v1310;
    memset(v1396, 255, sizeof(v1396));
    memset(v1395, 255, sizeof(v1395));
    memset(v1394, 255, sizeof(v1394));
    *&v1349 = -1;
    *(&v1349 + 1) = -1;
    *&v1018 = -1;
    *(&v1018 + 1) = -1;
    v1393 = v1018;
    v1392 = v1018;
    v1391 = v1018;
    v1390 = v1018;
    v1389 = v1018;
    v1388 = v1018;
    v1387 = v1018;
    v1386 = v1018;
    v1385 = v1018;
    v1384 = v1018;
    v1383 = v1018;
    v1382 = v1018;
    v1381 = v1018;
    v1380 = v1018;
    v1379 = v1018;
    v1378 = v1018;
    v1377 = v1018;
    v1376 = v1018;
    v1375 = v1018;
    v1374 = v1018;
    memset(v1373, 255, sizeof(v1373));
    v1019 = 0;
    v1369 = xmmword_19B3A1420;
    v1370 = unk_19B3A1430;
    v1371 = xmmword_19B3A1440;
    v1372 = unk_19B3A1450;
    v1365 = xmmword_19B3A13E0;
    v1366 = unk_19B3A13F0;
    v1367 = xmmword_19B3A1400;
    v1368 = unk_19B3A1410;
    v1361 = xmmword_19B3A13A0;
    v1362 = unk_19B3A13B0;
    v1363 = xmmword_19B3A13C0;
    v1364 = unk_19B3A13D0;
    v1357 = xmmword_19B3A1360;
    v1358 = unk_19B3A1370;
    v1359 = xmmword_19B3A1380;
    v1360 = unk_19B3A1390;
    v1355 = 0xAAAAAAAAAAAAAAAALL;
    v1356 = 0xAAAAAAAAAAAAAAAALL;
    v1316 = 0;
    v1315 = 1;
    do
    {
      v1020 = &v1355 + v1019 + 2;
      if ((&v1355 + v1019) < &v1355 || v1020 > &v1356 || &v1355 + v1019 > v1020)
      {
        goto LABEL_2359;
      }

      *(&v1355 + v1019) = 0;
      v1019 += 2;
    }

    while (v1019 != 8);
    v1254 = v1017;
    v1255 = v1016;
    v1317 = 0.0;
    vDSP_vfill(&v1317, v1373, 1, __N);
    if (v1001)
    {
      if (v1001 == 2)
      {
        LODWORD(v1269) = har_est(__b, v1332, v1014, &v1316 + 1, &v1316, &v1315, v1270, v1023, v1272, v1271, &v1354, v1261);
        if (v1267 > v1283 + 68568)
        {
          goto LABEL_2359;
        }

        noise_extr_corcod(__b, v1332, v1332, v1333, v1396, v1397, v1394, v1395, v1395, v1396, v1014, *v1259, v1267);
        v1024 = v1316;
        LOWORD(v1025) = v1316;
        if (!v1315)
        {
          if (v1316 != 80 || (v1025 = *v1270, v1025 != 80))
          {
            LOWORD(v1025) = v1353 + v1316;
          }

          v1024 = 0;
        }

        LODWORD(v1267) = v1024;
        v1242 = v1272;
        v1026 = __N;
        v1272 = v1373;
        genhf_noise(v1394, v1395, v1373, &v1374, v1396, v1397, v1284, v1281, v1025, v1269, &v1355, &v1356, &v1357, v1373, v1014, __N, &v1354, v1268, &v1353, &v1354, v1255, v1254, v1242, v1271);
        v1027 = get_next_indice(v1283, 2);
        if (v1026 > 0x280)
        {
          goto LABEL_2359;
        }

        v1028 = &gain_table_SWB_BWE[v1027];
        if (v1028 < gain_table_SWB_BWE || v1028 + 1 > subband_search_offsets || v1028 > v1028 + 1)
        {
          goto LABEL_2359;
        }

        v1271 = v1394;
        v1029 = __exp10(*v1028);
        v1030 = v1274;
        v1031 = v1285;
        ton_ene_est(v1373, &v1374, v1394, v1335, v1276, &v1342, v1285, v1029, v1032, v1341, v1274, v1340, v1273, v1014, __N, v1284, v1281, &v1357, v1272, &v1355, &v1356);
        v1241 = v1031;
        LODWORD(v1031) = v1281;
        v1033 = v1284;
        Gettonl_scalfact(v1373, &v1374, v1332, v1333, v1014, __N, v1281, v1284, v1335, v1276, &v1342, v1241, v1341, v1030, v1346, v1264, &v1374, v1271, &v1357, v1272, &v1355, &v1356);
        *v1270 = v1267;
        if (v1031 < v1033)
        {
          v1034 = v1281;
          do
          {
            v1035 = &v1342 + v1034;
            v1036 = (v1035 + 1);
            v1037 = v1035 < &v1342 || v1036 > v1285;
            v1038 = v1037 || v1035 > v1036;
            v1039 = v1341 + v1034;
            v1040 = (v1039 + 1);
            v1041 = !v1038 && v1039 >= v1341;
            v1042 = !v1041 || v1040 > v1274;
            if (v1042 || v1039 > v1040)
            {
              goto LABEL_2359;
            }

            LODWORD(v1044) = *v1035;
            v1045 = *v1039;
            while (v1044 <= v1045)
            {
              v1044 = v1044;
              v1046 = v1373 + v1044 - v1014;
              v1047 = v1046 + 1;
              v1049 = v1046 < v1373 || v1047 > &v1374 || v1046 > v1047;
              v1050 = &__b[v1044];
              v1051 = v1050 + 1;
              if (v1049 || v1050 < __b || v1051 > v1332 || v1050 > v1051)
              {
                goto LABEL_2359;
              }

              __b[v1044] = *v1046;
              LODWORD(v1044) = (v1044 + 1);
            }
          }

          while (v1284 != ++v1034);
        }
      }
    }

    else
    {
      v1273 = v1396;
      v1069 = spectrumsmooth_noiseton(__b, v1332, v1332, v1333, v1396, v1397, v1394, v1395, v1395, v1396, v1014, &v1300);
      v1070 = v1256;
      if (v1269 > 4)
      {
        goto LABEL_2359;
      }

      v1071 = v1069;
      convert_lagIndices_pls2smp(&v1353, v1256, &v1356, v1396, v1397, &v1354, v1014);
      v1072 = v1269;
      if (v1269)
      {
        v1073 = &v1345 + v1284 + 4;
        v1074 = &v1356;
        v1075 = v1269;
        v1076 = v1264;
        do
        {
          v1077 = v1073 + 1;
          v1078 = v1073 < v1346 || v1077 > v1076;
          if (v1078 || v1073 > v1077)
          {
            goto LABEL_2359;
          }

          if (*v1073 == 1)
          {
            *v1074 = 0;
          }

          v1074 = (v1074 + 2);
          ++v1073;
        }

        while (--v1075);
      }

      v1080 = v1284 - 4;
      v1081 = &v1335[-1] + 4 * v1284;
      if (v1081 > v1276 || v1081 < v1335 || v1070 > (128 - 4 * v1080) >> 2)
      {
        goto LABEL_2359;
      }

      v1082 = v1080;
      GetlagGains(v1395, v1273, v1081, v1072, &v1354, &v1356, v1014, &v1347);
      for (j = 0; j != 16; j += 4)
      {
        v1085 = &v1347 + j + 4;
        if ((&v1347 + j) < &v1347 || v1085 > &v1348 || &v1347 + j > v1085)
        {
          goto LABEL_2359;
        }

        *(&v1347 + j) = *(&v1347 + j) * 0.9;
      }

      v1088 = 0;
      v1089 = v1346 + v1082;
      do
      {
        *(&v1350[-1] + v1088) = 0;
        if (v1089 < v1346 || v1089 + 1 > v1264 || v1089 > v1089 + 1)
        {
          goto LABEL_2359;
        }

        if (!*v1089)
        {
          v1090 = &v1347 + v1088;
          if ((&v1347 + v1088) < &v1347 || v1090 + 4 > &v1348 || v1090 > v1090 + 4)
          {
            goto LABEL_2359;
          }

          *(&v1350[-1] + v1088) = v1071 * *(&v1347 + v1088);
        }

        v1088 += 4;
        ++v1089;
      }

      while (v1088 != 16);
      GetSynthesizedSpecThinOut(v1395, v1273, v1373, &v1374, v1070, &v1354, v1268, v1083, &v1356, &v1357, &v1347, &v1348, v1014);
      v1091 = v1284;
      noiseinj_hf(v1373, &v1374, &v1349, v1350, v1335, v1276, v1283 + 68568, v1283 + 68584, v1346, v1264, v1284, &v1342, v1285, v1341, v1274, v1014);
      if (v1091 > v1082)
      {
        v1092 = v1082;
        do
        {
          v1093 = v1346 + 2 * v1092;
          v1094 = (v1093 + 2);
          v1095 = v1093 < v1346 || v1094 > v1264;
          if (v1095 || v1093 > v1094)
          {
            goto LABEL_2359;
          }

          v1097 = &v1342 + v1092;
          v1100 = v1097 + 1 <= v1285 && v1097 <= v1097 + 1 && v1097 >= &v1342;
          v1101 = !v1100;
          if (*(v1346 + v1092))
          {
            v1102 = v1341 + v1092;
            v1103 = (v1102 + 1);
            if (v1101 || v1102 < v1341 || v1103 > v1274 || v1102 > v1103)
            {
              goto LABEL_2359;
            }

            v1107 = *v1097;
            v1108 = *v1102;
            while (v1107 <= v1108)
            {
              v1109 = v1107;
              v1110 = &v1332[v1107];
              v1111 = v1110 + 1;
              v1113 = v1110 < v1332 || v1111 > v1333 || v1110 > v1111;
              v1114 = &__b[v1109];
              v1115 = v1114 + 1;
              if (v1113 || v1114 < __b || v1115 > v1332 || v1114 > v1115)
              {
                goto LABEL_2359;
              }

              __b[v1109] = v1332[v1109];
              v1107 = (v1109 + 1);
            }
          }

          else
          {
            v1119 = v1341 + v1092;
            v1120 = (v1119 + 1);
            if (v1101 || v1119 < v1341 || v1120 > v1274 || v1119 > v1120)
            {
              goto LABEL_2359;
            }

            LODWORD(v1124) = *v1097;
            v1125 = *v1119;
            while (v1124 <= v1125)
            {
              v1124 = v1124;
              v1126 = v1373 + v1124 - v1014;
              v1127 = v1126 + 1;
              v1129 = v1126 < v1373 || v1127 > &v1374 || v1126 > v1127;
              v1130 = &__b[v1124];
              v1131 = v1130 + 1;
              if (v1129 || v1130 < __b || v1131 > v1332 || v1130 > v1131)
              {
                goto LABEL_2359;
              }

              __b[v1124] = *v1126;
              LODWORD(v1124) = (v1124 + 1);
            }
          }
        }

        while (v1284 != ++v1092);
      }
    }

    v1135 = &__b[v1014 + __N];
    v1136 = v1135 - 1;
    v1137 = v1280;
    if (v1135 - 1 < __b)
    {
      goto LABEL_2359;
    }

    if (v1135 > v1332)
    {
      goto LABEL_2359;
    }

    if (v1136 > v1135)
    {
      goto LABEL_2359;
    }

    *(v1135 - 1) = *(v1135 - 1) * 0.0625;
    v1138 = v1135 - 2;
    if (v1135 - 2 < __b)
    {
      goto LABEL_2359;
    }

    if (v1138 > v1136)
    {
      goto LABEL_2359;
    }

    *(v1135 - 2) = *(v1135 - 2) * 0.125;
    v1139 = v1135 - 3;
    if (v1135 - 3 < __b)
    {
      goto LABEL_2359;
    }

    if (v1139 > v1138)
    {
      goto LABEL_2359;
    }

    *(v1135 - 3) = *(v1135 - 3) * 0.25;
    v1140 = v1135 - 4;
    if (v1140 < __b || v1140 > v1139)
    {
      goto LABEL_2359;
    }

    *v1140 = *v1140 * 0.5;
    if (!v1001 && v1014 >= 1)
    {
      v1141 = __b;
      do
      {
        v1142 = v1141 + 1;
        v1143 = v1141 < __b || v1142 > v1332;
        if (v1143 || v1141 > v1142)
        {
          goto LABEL_2359;
        }

        *v1141++ = 0.0;
      }

      while (--v1014);
    }

    v955 = v1284;
    v1055 = v1279;
    if (v1284 > 0x20)
    {
      goto LABEL_2359;
    }

    v1145 = *v1275;
    post_hq2_swb(__b, v1332, v1279, v1277, v1137, v1281, v1284, v1346, &v1342, v1341, v1334, *v1275, v1338);
    if (!*v1262)
    {
      spt_swb_peakpos_tmp_save(v1334, v1145, v955, &v1342, v1285, v1341, v1274, v1146, &v1326[16], v1258);
      v1147 = 0;
      v1148 = (v955 << 32) - 0x400000000;
      do
      {
        v1149 = (v1346 + (v1148 >> 31));
        v1150 = (v1149 + 1);
        v1151 = v1149 < v1346 || v1150 > v1264;
        if (v1151 || v1149 > v1150)
        {
          goto LABEL_2359;
        }

        if (!*v1149)
        {
          goto LABEL_2203;
        }

        v1153 = v1338 + (v1148 >> 32);
        if (v1153 < v1338 || (v1153 + 1) > v1278 || v1153 > v1153 + 1)
        {
          goto LABEL_2359;
        }

        if (!*v1153)
        {
LABEL_2203:
          *&v1326[v1147 + 16] = 0;
        }

        v1147 += 2;
        v1148 += 0x100000000;
      }

      while (v1147 != 8);
    }
  }

  else
  {
    v1055 = *v982 + 1;
  }

  if (v1055 >= 1)
  {
    if (v1055 >= 0x3C1u)
    {
      goto LABEL_2359;
    }

    memcpy(v1334, v1332, 4 * (v1055 & 0x3FFF));
    if (&v1334[v1055 & 0x3FFF] < v1334)
    {
      goto LABEL_2359;
    }
  }

  v1056 = v1270[1922];
  if (v1056 < 320 || v1270[1918] <= 0)
  {
    v1057 = *v1266 ? -2 : -6;
    v1058 = (v1057 + v955);
    *(v1270 + 953) = 0;
    if (v1058 < v955)
    {
      v1059 = (v955 - v1058);
      v1060 = v955 - (v1057 + v955);
      v1061 = v1329 + (v1057 + v955);
      v1062 = 0.0;
      do
      {
        v1063 = v1061 + 1;
        v1064 = v1061 < v1329 || v1063 > v1330;
        if (v1064 || v1061 > v1063)
        {
          goto LABEL_2359;
        }

        v1066 = *v1061++;
        v1062 = v1062 + (v1066 / v1059);
        *(v1270 + 953) = v1062;
      }

      while (--v1060);
    }
  }

  v1067 = v1283;
  if (v1056 >= 640)
  {
    LODWORD(v1396[0]) = *(v1270 + 953);
    vDSP_vfill(v1396, (v1283 + 80028), 1, 0xEuLL);
  }

  updat_prev_frm(v1334, *v1275, __C, v1257, *v1265, v1304, v1263[0], v955, v1067[2621], *v1266, v1262[0], v1067 + 32028, (v1067 + 32070), (v1067 + 32074), &v1326[16], v1258, v1067 + 34280, v1067 + 34281, v1270[1918]);
}