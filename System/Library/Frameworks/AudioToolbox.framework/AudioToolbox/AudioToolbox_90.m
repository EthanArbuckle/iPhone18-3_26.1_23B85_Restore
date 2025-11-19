unint64_t assign_gain_bits(unint64_t result, int a2, __int16 *a3, __int16 *a4, _WORD *a5, _WORD *a6)
{
  if (result != 3)
  {
    if (a2 >= 1)
    {
      v22 = a2;
      v23 = a5;
      while (v23 + 1 <= &a5[a2] && v23 <= v23 + 1)
      {
        *v23++ = 0;
        if (!--v22)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_47;
    }

    v25 = 0;
    *a6 = 0;
    return v25;
  }

  if (a2 >= 1)
  {
    v6 = 0;
    v7 = a4;
    v8 = a5;
    v9 = a2;
    while (1)
    {
      v10 = *a3++;
      result = v10;
      v11 = &fg_inv_tbl_fx[v10 >> 3];
      v12 = v11 + 1;
      v13 = v11 < fg_inv_tbl_fx || v12 > fine_gain_bits;
      if (v13 || v11 > v12)
      {
        goto LABEL_47;
      }

      v15 = *v7;
      v16 = (*v11 * v15) >> 18;
      if (v15 == 8 * result * (v16 + 1))
      {
        v17 = v16 + 1;
      }

      else
      {
        v17 = v16;
      }

      if (v17 >= 7)
      {
        LOWORD(v17) = 7;
      }

      result = &fine_gain_bits[v17];
      v18 = result + 2;
      v19 = result < fine_gain_bits || v18 > &unk_19B35849A;
      if (v19 || result > v18)
      {
        goto LABEL_47;
      }

      result = *result;
      *v8++ = result;
      v6 += result;
      ++v7;
      if (!--v9)
      {
        if (v6)
        {
          goto LABEL_38;
        }

        break;
      }
    }
  }

  if (a5 + 1 <= &a5[a2] && a5 + 1 >= a5)
  {
    *a5 = 1;
LABEL_38:
    *a6 = 0;
    if (a2 < 1)
    {
      return 0;
    }

    else
    {
      v25 = 0;
      v26 = a2;
      do
      {
        v27 = *a4;
        if (v27 >= 1)
        {
          v28 = v27 - 8 * *a5;
          *a4 = v28;
          v25 += *a5;
          *a6 += v28;
        }

        ++a5;
        ++a4;
        --v26;
      }

      while (v26);
    }

    return v25;
  }

LABEL_47:
  __break(0x5519u);
  return result;
}

uint64_t pvq_encode_frame(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, unint64_t a18, __int16 a19, __int16 *a20, unsigned __int16 a21, __int16 a22)
{
  v22 = a20;
  v380[1] = *MEMORY[0x1E69E9840];
  v23 = a1 + 49152;
  v350 = -21846;
  v349 = 0;
  v358 = 0xAAAAAAAAAAAAAAAALL;
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v357[3] = v24;
  v357[4] = v24;
  v357[2] = v24;
  v357[0] = v24;
  v357[1] = v24;
  v355 = 0xAAAAAAAAAAAAAAAALL;
  v354[3] = v24;
  v354[4] = v24;
  v354[1] = v24;
  v354[2] = v24;
  v354[0] = v24;
  *(a1 + 52504) = 0xFFFFFFFF00000000;
  *(a1 + 52512) = 0xFFFFLL;
  *(a1 + 52520) = a21;
  if (a19 < 1)
  {
    if (a22)
    {
      goto LABEL_466;
    }

    v326 = 0;
    v22 = a20;
    goto LABEL_19;
  }

  v25 = 0;
  v26 = a20;
  v27 = a19;
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
  v326 = v25;
  if (!a22)
  {
LABEL_19:
    srt_vec_ind(v22, v357, v354, a19);
    v335 = 1;
    goto LABEL_20;
  }

  v29 = 0;
  v30 = 0;
  do
  {
    v31 = v354 + v29 + 2;
    if ((v354 + v29) < v354 || v31 > &v356 || v354 + v29 > v31)
    {
      goto LABEL_500;
    }

    *(v354 + v30) = v30;
    ++v30;
    v29 += 2;
  }

  while (a19 != v30);
  v335 = 0;
LABEL_20:
  if (a19 >= 1)
  {
    v34 = 0;
    v330 = 0;
    v351 = -21846;
    v325 = v23;
    do
    {
      v332 = v34;
      v35 = v354 + v34;
      v36 = v35 + 1;
      if (v35 < v354 || v36 > &v356 || v35 > v36)
      {
        goto LABEL_500;
      }

      v39 = *v35;
      v40 = a6 + 4 * v39;
      v41 = v40 + 4;
      v42 = v40 < a6 || v41 > a7;
      v333 = (a6 + 4 * v39);
      if (v42 || v40 > v41)
      {
        goto LABEL_500;
      }

      *v333 = 0.0;
      v44 = &a20[v39];
      v45 = (v44 + 1);
      v46 = v44 < a20 || v45 > &a20[a19];
      if (v46 || v44 > v45)
      {
        goto LABEL_500;
      }

      v48 = *v44;
      if (v48 < 1)
      {
        v93 = a13 + 2 * v39;
        v94 = (v93 + 2);
        v96 = v93 < a13 || v94 > a14 || v93 > v94;
        v97 = (a15 + 2 * v39);
        v98 = v97 + 1;
        v99 = !v96 && v97 >= a15;
        if (!v99 || v98 > a16 || v97 > v98)
        {
          goto LABEL_500;
        }

        LODWORD(v93) = *v93;
        if (v93 < *v97)
        {
          v93 = v93;
          v102 = 2 * v93;
          v103 = 4 * v93;
          do
          {
            v104 = a4 + v103 + 4;
            if (a4 + v103 < a4 || v104 > a5 || a4 + v103 > v104)
            {
              goto LABEL_500;
            }

            *(a4 + 4 * v93) = 0;
            v107 = a11 + v102;
            if (a11 + v102 < a11 || v107 + 2 > a12 || v107 > v107 + 2)
            {
              goto LABEL_500;
            }

            *(a11 + 2 * v93++) = 0;
            v102 += 2;
            v103 += 4;
          }

          while (v93 < *v97);
        }

        goto LABEL_465;
      }

      v49 = a17 + 2 * v39;
      v50 = v49 + 2;
      v51 = v49 < a17 || v50 > a18;
      v334 = (a17 + 2 * v39);
      if (v51 || v49 > v50)
      {
        goto LABEL_500;
      }

      bandBitsAdjustment(*(v23 + 3366), *(v23 + 3356), 8 * a21 - 8, v326, (v326 - v330), *v334, v48, v349, &v351, &v350, &v349);
      v53 = (a13 + 2 * v39);
      if (v53 < a13)
      {
        goto LABEL_500;
      }

      if ((v53 + 1) > a14)
      {
        goto LABEL_500;
      }

      if (v53 > v53 + 1)
      {
        goto LABEL_500;
      }

      v54 = *v53;
      v55 = (a2 + 4 * v54);
      if (v55 < a2)
      {
        goto LABEL_500;
      }

      v338 = a11 + 2 * v54;
      if (v338 < a11)
      {
        goto LABEL_500;
      }

      v340 = (a9 + 2 * v39);
      if (v340)
      {
        if (v340 < a9 || (v340 + 1) > a10 || v340 > v340 + 1)
        {
          goto LABEL_500;
        }
      }

      v337 = a4 + 4 * v54;
      if (v337 < a4)
      {
        goto LABEL_500;
      }

      v329 = (a13 + 2 * v39);
      v56 = *v334;
      v57 = *v334;
      v58 = v351;
      v353 = -21846;
      *&v59 = -1;
      *(&v59 + 1) = -1;
      *&v373[12] = v59;
      *v373 = v59;
      v372 = v59;
      memset(v370, 170, sizeof(v370));
      memset(v368, 170, sizeof(v368));
      memset(v366, 170, sizeof(v366));
      v365 = -1;
      v364[0] = v59;
      v364[1] = v59;
      memset(v362, 170, sizeof(v362));
      memset(v361, 170, 22);
      memset(v359, 170, sizeof(v359));
      if (-268 * (((0xF4898D8000 * v351) >> 32) >> 16) + v351)
      {
        v60 = 1;
      }

      else
      {
        v60 = ((64103990 * v351) >> 32) >> 2 << 16 == 0;
      }

      if (v60)
      {
        v61 = ((64103990 * v351) >> 34) + 1;
      }

      else
      {
        v61 = (64103990 * v351) >> 34;
      }

      v62 = v61;
      v345 = v55;
      if (v61 > 9 || v351 - 56 * v56 < 1)
      {
        v92 = 0;
        goto LABEL_149;
      }

      v378[0] = -1;
      v377 = v59;
      __A = v59;
      v63 = &intLimCDivInvDQ31[v61];
      if (v63 < intLimCDivInvDQ31 || v63 + 1 > obtainEnergyQuantizerDensity_f || v63 > v63 + 1)
      {
        goto LABEL_500;
      }

      if (v62 < 1)
      {
        v85 = -1.0;
        goto LABEL_145;
      }

      v64 = 0;
      v65 = 0;
      v66 = ((v57 * *v63) >> 15) >> 16;
      v67 = v62;
      v68 = 0.0;
      do
      {
        v69 = &__A + v64;
        v70 = v69 + 1;
        if (v69 < &__A || v70 > &v378[1] || v69 > v70)
        {
          goto LABEL_500;
        }

        *v69 = 1.0e-15;
        if (v66 < 1)
        {
          v80 = 1;
LABEL_97:
          v82 = 0;
          do
          {
            v83 = v80 >> 29;
            v80 *= 2;
            ++v82;
          }

          while (!v83);
          v81 = (30 - v82);
          goto LABEL_100;
        }

        v73 = 0;
        v74 = 1.0e-15;
        do
        {
          v75 = &v55[v65];
          v76 = v75 + 1;
          if (v75 < v55 || v76 > a3 || v75 > v76)
          {
            goto LABEL_500;
          }

          v74 = v74 + (*v75 * *v75);
          *v69 = v74;
          ++v73;
          ++v65;
        }

        while (v66 > v73);
        v79 = v74;
        if (v74 <= 1)
        {
          v80 = 1;
        }

        else
        {
          v80 = v74;
        }

        v81 = 30.0;
        if (v79 <= 0x3FFFFFFF)
        {
          goto LABEL_97;
        }

LABEL_100:
        *(&__A + v64) = v81;
        v68 = v68 + v81;
        ++v64;
      }

      while (v64 != v62);
      v84 = v68 / v62;
      v85 = -1.0;
      p_A = &__A;
      do
      {
        v87 = p_A + 1;
        if (p_A < &__A || v87 > &v378[1] || p_A > v87)
        {
          goto LABEL_500;
        }

        v90 = *p_A++;
        v91 = vabds_f32(v90, v84);
        if (v91 > v85)
        {
          v85 = v91;
        }

        --v67;
      }

      while (v67);
LABEL_145:
      v347 = v57;
      if (v85 <= (32 - v58 / (8 * v62)))
      {
        rc_enc_bits(a1, 0, 1);
      }

      else
      {
        rc_enc_bits(a1, 1, 1);
        LOWORD(v62) = v62 + 1;
      }

      v92 = -8;
      v55 = v345;
      v57 = v347;
LABEL_149:
      v108 = vcvtps_s32_f32(vcvts_n_f32_s32(v56, 6uLL));
      if (v62 > v108)
      {
        v108 = v62;
      }

      if (v108 >= v57)
      {
        v109 = v57;
      }

      else
      {
        v109 = v108;
      }

      if (v109 >= 10)
      {
        v110 = 10;
      }

      else
      {
        v110 = v109;
      }

      v344 = v110;
      if (v57 < 1)
      {
        v112 = 0.0;
      }

      else
      {
        v111 = v56;
        v112 = 0.0;
        v113 = v55;
        do
        {
          if (v113 < v55 || (v113 + 1) > a3 || v113 > v113 + 1)
          {
            goto LABEL_500;
          }

          v114 = *v113++;
          v112 = v112 + (v114 * v114);
          --v111;
          v55 = v345;
        }

        while (v111);
      }

      v115 = &intLimCDivInvDQ31[v344];
      if (v115 < intLimCDivInvDQ31 || v115 + 1 > obtainEnergyQuantizerDensity_f || v115 > v115 + 1)
      {
        goto LABEL_500;
      }

      v116 = v57 * intLimCDivInvDQ31[v344];
      v342 = v344 - 1;
      if (v342 >= 1)
      {
        v117 = -(v342 & 0x7FFF);
        v118 = v368;
        do
        {
          v119 = v118 + 1;
          if (v118 < v368 || v119 > v369 || v118 > v119)
          {
            goto LABEL_500;
          }

          *v118++ = v116 >> 31;
          v99 = __CFADD__(v117++, 1);
        }

        while (!v99);
      }

      v122 = &v368[v342];
      if (v122 < v368 || v122 + 1 > v369 || v122 > v122 + 1)
      {
        goto LABEL_500;
      }

      v123 = v92 + v58;
      *v122 = v56 - v342 * (v116 >> 31);
      v370[0] = 0;
      if (v109 >= 2)
      {
        v124 = 0;
        v125 = 0;
        if (v344 <= 2)
        {
          v126 = 2;
        }

        else
        {
          v126 = v344;
        }

        v127 = 2 * v126 - 2;
        do
        {
          v128 = &v370[v124 / 2];
          v129 = &v368[v124 / 2];
          v130 = &v368[v124 / 2 + 1];
          v133 = &v370[v124 / 2] < v370 || v129 < v368 || v130 > v369 || v129 > v130;
          v134 = v128 + 1;
          v135 = v128 + 2;
          if (v133 || v134 < v370 || v135 > v371 || v134 > v135)
          {
            goto LABEL_500;
          }

          v125 += v368[v124 / 2];
          *v134 = v125;
          v124 += 2;
        }

        while (v127 != v124);
        v139 = v344;
        v140 = v362;
        do
        {
          v141 = v140 + 1;
          if (v140 < v362 || v141 > v363 || v140 > v141)
          {
            goto LABEL_500;
          }

          *v140++ = 0x8000;
          --v139;
        }

        while (v139);
        encode_energies(a1, v345, a3, v344, v368, v369, &v372, &v374, v112, v366, v367, v362, v363, v123, &v350, v57, v335);
        goto LABEL_228;
      }

      if (v109 == 1)
      {
        v144 = v344;
        v145 = v362;
        do
        {
          v146 = v145 + 1;
          if (v145 < v362 || v146 > v363 || v145 > v146)
          {
            goto LABEL_500;
          }

          *v145++ = 0x8000;
          --v144;
        }

        while (v144);
        v366[0] = v123;
LABEL_228:
        v352 = 0;
        if (v344 <= 1)
        {
          v149 = 1;
        }

        else
        {
          v149 = v344;
        }

        v150 = v364;
        v151 = v362;
        do
        {
          v152 = v151 + 1;
          v154 = v151 < v362 || v152 > v363 || v151 > v152;
          v155 = v150 + 1;
          if (v154 || v150 < v364 || v155 > v366 || v150 > v155)
          {
            goto LABEL_500;
          }

          v159 = *v151;
          *v150++ = v159 * -0.000030518;
          *v151++ = -v159;
          --v149;
        }

        while (v149);
      }

      else
      {
        v366[0] = v123;
        v352 = 0;
      }

      if (v344 > 0xBu)
      {
        goto LABEL_500;
      }

      srt_vec_ind(v362, v361, v359, v344);
      if (v109)
      {
        v160 = 0;
        if ((v344 & 0xFFFE) != 0)
        {
          v161 = v344;
        }

        else
        {
          v161 = 1;
        }

        v336 = v161;
        while (1)
        {
          v348 = v160;
          v162 = &v359[v342 - v160];
          v163 = v162 + 1;
          if (v162 < v359 || v163 > &v360 || v162 > v163)
          {
            goto LABEL_500;
          }

          v166 = *v162;
          v167 = v352;
          v168 = shrtCDivSignedApprox(v352, (v344 - v160));
          v169 = &v366[v166];
          v170 = v169 + 1;
          v171 = v169 < v366 || v170 > v367;
          if (v171 || v169 > v170)
          {
            goto LABEL_500;
          }

          v173 = v366[v166] + v168;
          if (v173 >= 256)
          {
            v173 = 256;
          }

          v174 = v173 & ~(v173 >> 31);
          v366[v166] = v174;
          v175 = &v368[v166];
          if (v175 < v368)
          {
            goto LABEL_500;
          }

          if (v175 + 1 > v369 || v175 > v175 + 1)
          {
            goto LABEL_500;
          }

          conservativeL1Norm(v368[v166], v174, v335, v350, v167, *v340, &v353, &v350, &v352, v340);
          v177 = v353;
          v178 = &v370[v166];
          v181 = v178 + 1 <= v371 && v178 <= v178 + 1 && v178 >= v370;
          v182 = v353 - 1;
          if (v353 < 1)
          {
            if (!v181)
            {
              goto LABEL_500;
            }

            v213 = (v337 + 4 * *v178);
            if (v213 < v337)
            {
              goto LABEL_500;
            }

            v214 = *v175;
            LODWORD(__A) = 0;
            vDSP_vfill(&__A, v213, 1, v214);
            v215 = v338 + 2 * *v178;
            if (v215 < v338)
            {
              goto LABEL_500;
            }

            v216 = *v175;
            if (v216 >= 1)
            {
              v217 = (v338 + 2 * *v178);
              while (v217 >= v215 && (v217 + 1) <= a12 && v217 <= v217 + 1)
              {
                *v217++ = 0;
                if (!--v216)
                {
                  goto LABEL_450;
                }
              }

LABEL_500:
              __break(0x5519u);
            }

            goto LABEL_450;
          }

          if (!v181)
          {
            goto LABEL_500;
          }

          v183 = *v178;
          v184 = &v345[v183];
          if (v184 < v345)
          {
            goto LABEL_500;
          }

          v185 = v338 + 2 * v183;
          if (v185 < v338)
          {
            goto LABEL_500;
          }

          v186 = (v337 + 4 * v183);
          if (v186 < v337)
          {
            goto LABEL_500;
          }

          v187 = v364 + v166;
          if (v187 < v364 || v187 + 1 > v366 || v187 > v187 + 1)
          {
            goto LABEL_500;
          }

          v188 = *v175;
          v189 = *v187;
          memset(v379, 0, sizeof(v379));
          memset(v378, 0, sizeof(v378));
          __A = 0u;
          v377 = 0u;
          *&v190 = 0xAAAAAAAAAAAAAAAALL;
          *(&v190 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v375[7] = v190;
          v375[6] = v190;
          v375[5] = v190;
          v375[4] = v190;
          v375[3] = v190;
          v375[2] = v190;
          v375[1] = v190;
          v375[0] = v190;
          if (v188 < 1)
          {
            goto LABEL_408;
          }

          v191 = 0;
          v192 = 0.0;
          v193 = v375;
          do
          {
            v194 = &v184[v191 + 1];
            v196 = &v184[v191] < v184 || v194 > a3 || &v184[v191] > v194;
            if (v196 || v193 < v375 || v193 + 1 > &__A || v193 > v193 + 1)
            {
              goto LABEL_500;
            }

            v197 = v184[v191];
            v198 = v197 >= 0.0 ? 1.0 : -1.0;
            *v193 = v198;
            v199 = &__A + v191 * 4;
            if ((&__A + v191 * 4) < &__A || v199 + 4 > v379 || v199 > v199 + 4)
            {
              goto LABEL_500;
            }

            v200 = fabsf(v197);
            *(&__A + v191 * 4) = v200;
            v192 = v192 + v200;
            ++v191;
            ++v193;
          }

          while (v188 != v191);
          if (v189 > 0.0 && v177 > (v188 * 0.50189) && v192 > 0.0)
          {
            v201 = v182 / v192;
            v202 = v379;
            v203 = &__A;
            v204 = v188;
            while (1)
            {
              v205 = v203 + 1;
              v206 = v203 < &__A || v205 > v379;
              v207 = v206 || v203 > v205;
              v208 = v202 + 1;
              v209 = !v207 && v202 >= v379;
              v210 = !v209 || v208 > v380;
              if (v210 || v202 > v208)
              {
                goto LABEL_500;
              }

              v212 = *v203++;
              *v202++ = vcvtms_s32_f32(v201 * v212);
              if (!--v204)
              {
                goto LABEL_355;
              }
            }
          }

          v218 = v379;
          v219 = v188;
          do
          {
            v220 = v218 + 1;
            if (v218 < v379 || v220 > v380 || v218 > v220)
            {
              goto LABEL_500;
            }

            *v218++ = 0;
            --v219;
          }

          while (v219);
LABEL_355:
          if (v189 <= 0.0 || v192 <= 0.0)
          {
            break;
          }

          LOWORD(v223) = 0;
          v224 = 0.0;
          v225 = v379;
          v226 = &__A;
          v227 = v188;
          v228 = 0.0;
          do
          {
            v229 = v226 + 1;
            v231 = v226 < &__A || v229 > v379 || v226 > v229;
            v232 = v225 + 1;
            if (v231 || v225 < v379 || v232 > v380 || v225 > v232)
            {
              goto LABEL_500;
            }

            v236 = *v226++;
            v237 = v236;
            v238 = *v225++;
            v228 = v228 + (v237 * v238);
            v224 = v224 + (v238 * v238);
            v223 = (v238 + v223);
            --v227;
          }

          while (v227);
          v239 = v224 * 0.5;
          if (v223 < v177)
          {
            v240 = *&__A;
            do
            {
              v241 = v239 + 0.5;
              v242 = v379[0];
              v239 = (v239 + 0.5) + v379[0];
              if (v188 == 1)
              {
                v243 = 0;
              }

              else
              {
                v244 = 0;
                v245 = 0;
                v246 = 0;
                v247 = (v240 + v228) * (v240 + v228);
                for (i = 1; i != v188; ++i)
                {
                  v249 = &__A + v244 + 4;
                  v250 = &__A + v244 + 8;
                  v252 = v249 < &__A || v250 > v379 || v249 > v250;
                  v253 = &v379[v245 + 1];
                  v254 = &v379[v245 + 2];
                  if (v252 || v253 < v379 || v254 > v380 || v253 > v254)
                  {
                    goto LABEL_500;
                  }

                  v258 = v379[i];
                  if ((v247 * (v241 + v258)) < (v239 * ((v228 + *(&__A + i)) * (v228 + *(&__A + i)))))
                  {
                    v246 = i;
                    v247 = (v228 + *(&__A + i)) * (v228 + *(&__A + i));
                    v239 = v241 + v258;
                  }

                  ++v245;
                  v244 += 4;
                }

                v243 = v246;
                v242 = v379[v246];
              }

              v379[v243] = v242 + 1;
              v259 = &__A + v243;
              if (v259 < &__A)
              {
                goto LABEL_500;
              }

              if (v259 + 1 > v379 || v259 > v259 + 1)
              {
                goto LABEL_500;
              }

              v228 = v228 + *v259;
              v223 = (v223 + 1);
            }

            while (v223 < v177);
          }

LABEL_409:
          if (v188 >= 1)
          {
            v261 = v239 + v239;
            goto LABEL_416;
          }

          v263 = mpvq_encode_vec(v185, a12, v188, v177);
LABEL_442:
          v287 = v262;
          rc_enc_bits(a1, v263, 1);
          v288 = HIDWORD(v263);
          v289 = v287 - 1;
          if ((v287 - 1) < 1)
          {
            v290 = 0;
LABEL_448:
            v292 = 24 - v290;
            rc_encode(a1, v288 >> (24 - v290), 1, (v287 >> (24 - v290)) + 1);
            v286 = v292;
            v284 = v288 & ~(-1 << v292);
            v285 = a1;
LABEL_449:
            rc_enc_bits(v285, v284, v286);
            goto LABEL_450;
          }

          v290 = 0;
          do
          {
            v291 = v290;
            v289 *= 2;
            ++v290;
          }

          while ((v289 & 0x80000000) == 0);
          if ((v291 - 32) < -9)
          {
            goto LABEL_448;
          }

          rc_encode(a1, SHIDWORD(v263), 1, v287);
LABEL_450:
          v160 = v348 + 1;
          if (v348 + 1 == v336)
          {
            goto LABEL_451;
          }
        }

        if (v188 != 1)
        {
          v264 = vcvts_n_f32_u32(v177, 1uLL);
          v379[0] = v264;
          v265 = &v379[v188];
          v266 = v265 - 1;
          if (v265 - 1 < v379 || v265 > v380 || v266 > v265)
          {
            goto LABEL_500;
          }

          v267 = v264 - v177;
          *v266 = v267;
          v268 = vcvts_n_f32_u32(v267 * v267 + v379[0] * v379[0], 1uLL);
          v261 = v268 + v268;
LABEL_416:
          v269 = 0;
          v270 = v186;
          v271 = v188;
          v272 = v189 / sqrtf(v261);
          do
          {
            v273 = &v379[v269 / 2 + 1];
            v275 = &v379[v269 / 2] < v379 || v273 > v380 || &v379[v269 / 2] > v273;
            v276 = v375 + v269;
            v277 = v375 + v269 + 2;
            if (v275 || v276 < v375 || v277 > &__A || v276 > v277)
            {
              goto LABEL_500;
            }

            v281 = v185 + v269;
            if (v185 + v269 < v185)
            {
              goto LABEL_500;
            }

            if (v281 + 2 > a12)
            {
              goto LABEL_500;
            }

            if (v281 > v281 + 2)
            {
              goto LABEL_500;
            }

            v282 = *(v375 + v269) * v379[v269 / 2];
            *(v185 + v269) = v282;
            if (v270 < v186 || (v270 + 1) > a5 || v270 > v270 + 1)
            {
              goto LABEL_500;
            }

            *v270++ = v272 * v282;
            v269 += 2;
            --v271;
          }

          while (v271);
          v283 = mpvq_encode_vec(v185, a12, v188, v177);
          v263 = v283;
          if (v188 == 1)
          {
            v284 = v283;
            v285 = a1;
            v286 = 1;
            goto LABEL_449;
          }

          goto LABEL_442;
        }

LABEL_408:
        v379[0] = v177;
        v239 = vcvts_n_f32_u32(v177 * v177, 1uLL);
        goto LABEL_409;
      }

LABEL_451:
      v293 = *v329;
      v294 = (a2 + 4 * v293);
      v23 = v325;
      if (v294 > a3)
      {
        goto LABEL_500;
      }

      if (v294 < a2)
      {
        goto LABEL_500;
      }

      v295 = (a4 + 4 * v293);
      if (v295 < a4)
      {
        goto LABEL_500;
      }

      if (v295 > a5)
      {
        goto LABEL_500;
      }

      v296 = *v334;
      if ((v296 & 0x80000000) != 0)
      {
        goto LABEL_500;
      }

      if ((a3 - v294) >> 2 < v296)
      {
        goto LABEL_500;
      }

      if (v296 > (a5 - v295) >> 2)
      {
        goto LABEL_500;
      }

      LODWORD(__A) = -1;
      vDSP_dotpr(v295, 1, v294, 1, &__A, v296);
      v297 = (a4 + 4 * *v329);
      if (v297 > a5)
      {
        goto LABEL_500;
      }

      if (v297 < a4)
      {
        goto LABEL_500;
      }

      v298 = *v334;
      if ((v298 & 0x80000000) != 0 || (a5 - v297) >> 2 < v298)
      {
        goto LABEL_500;
      }

      v299 = *&__A;
      LODWORD(__A) = -1;
      vDSP_dotpr(v297, 1, v297, 1, &__A, v298);
      v300 = v299 / (*&__A + 1.0e-15);
      if (v300 == 0.0)
      {
        v300 = 1.0e-10;
      }

      *v333 = v300;
      ++v330;
LABEL_465:
      v34 = v332 + 1;
    }

    while (v332 + 1 != a19);
  }

LABEL_466:
  v301 = *(v23 + 3356);
  if (v301 < 1)
  {
    v302 = 0;
  }

  else
  {
    v302 = 0;
    v303 = *(v23 + 3356);
    do
    {
      v303 *= 2;
      ++v302;
    }

    while ((v303 & 0x80000000) == 0);
  }

  v304 = v302 + 1;
  v305 = 0xFFFFFFFF >> (v302 + 1);
  v306 = *(v23 + 3352);
  v307 = __CFADD__(v305, v306);
  v308 = v301 + v306;
  v309 = __CFADD__(v301, v306);
  v310 = (v305 + v306) & ~v305;
  if (v309 == v307)
  {
    v311 = v310 + v305 >= v308;
    v312 = ((0x7FFFFFFFu >> v304) + v306) & (0x80000000 >> v304);
    if (v311)
    {
      v304 = v302 + 2;
    }

    else
    {
      v304 = v302 + 1;
    }

    if (v311)
    {
      v310 = v312;
    }

    if (v310 < v306)
    {
      *(v23 + 3362) = 1;
    }
  }

  *(v23 + 3352) = v310;
  v313 = *(v23 + 3366);
  v314 = *(v23 + 3368) - v313;
  if (v314 >= v304)
  {
    LOWORD(v314) = v304;
  }

  v315 = v314;
  *(v23 + 3366) = v314 + v313;
  if (v314 >= 1)
  {
    do
    {
      rc_enc_shift(a1);
      LOWORD(v314) = v315 - 8;
      v316 = v315;
      v315 -= 8;
    }

    while (v316 > 8);
  }

  v317 = v314 + 8;
  v318 = *(v23 + 3360);
  if (*(v23 + 3364) < 1)
  {
    v320 = (*(v23 + 3362) + v318) >> (8 - v317);
  }

  else
  {
    push_indice(a1, 1057, *(v23 + 3362) + v318, 8);
    if (*(v23 + 3364) >= 2)
    {
      do
      {
        push_indice(a1, 1057, *(v23 + 3362) + 255, 8);
        v319 = --*(v23 + 3364);
      }

      while (v319 > 1);
    }

    v320 = (*(v23 + 3362) + 255) & ~(-1 << v317);
  }

  result = push_indice(a1, 1057, v320, v317);
  v322 = *(v23 + 3366);
  for (j = *(v23 + 3368); j - 16 > v322; j = *(v23 + 3368))
  {
    result = push_indice(a1, 1057, 0, 16);
    v322 += 16;
  }

  v324 = (j - v322);
  if (v324 >= 1)
  {
    return push_indice(a1, 1057, 0, v324);
  }

  return result;
}

unint64_t get_max_pulses(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, int a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12)
{
  if (a8 >= 1)
  {
    v12 = 0;
    v13 = a8;
    while (1)
    {
      v14 = *(a5 + 2 * v12);
      v15 = (a6 + 2 * v14);
      v16 = v15 + 1;
      v17 = v15 < a6 || v16 > a7;
      if (v17 || v15 >= v16)
      {
        break;
      }

      if (*v15 >= 1)
      {
        v19 = (result + 2 * v14);
        v20 = v19 + 1;
        v22 = v19 < result || v20 > a2 || v19 >= v20;
        v23 = (a3 + 2 * v14);
        v24 = v23 + 1;
        if (v22 || v23 < a3 || v24 > a4 || v23 >= v24)
        {
          break;
        }

        v28 = *v19;
        v29 = *v23;
        v30 = v28 <= v29 ? *v23 : v28;
        if (v28 < v29)
        {
          v31 = 0;
          v32 = v30 - v28;
          v33 = (a9 + 2 * v28);
          while (v33 >= a9 && (v33 + 1) <= a10 && v33 <= v33 + 1)
          {
            v35 = *v33++;
            v34 = v35;
            if (v35 < 0)
            {
              v34 = -v34;
            }

            if (v31 <= v34)
            {
              v31 = v34;
            }

            if (!--v32)
            {
              goto LABEL_42;
            }
          }

          break;
        }
      }

      LOWORD(v31) = 0;
LABEL_42:
      v36 = (a11 + 2 * v14);
      v37 = v36 + 1;
      if (v36 < a11 || v37 > a12 || v36 >= v37)
      {
        break;
      }

      *v36 = v31;
      if (++v12 == v13)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

unint64_t fine_gain_pred(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, __int16 a15, unint64_t a16, unint64_t a17, unint64_t a18, unint64_t a19, uint64_t a20, __int16 a21)
{
  if (a15 >= 1)
  {
    v21 = 0;
    if (a13)
    {
      v22 = a21 == 3;
    }

    else
    {
      v22 = 0;
    }

    v23 = !v22;
    while (1)
    {
      v24 = *(a7 + 2 * v21);
      v25 = (a9 + 2 * v24);
      v26 = v25 + 1;
      v27 = v25 < a9 || v26 > a10;
      if (v27 || v25 >= v26)
      {
        break;
      }

      v29 = *v25;
      if (v29 < 1)
      {
        *(a20 + 4 * v21) = 0;
        v57 = (result + 2 * v24);
        v58 = v57 + 1;
        v60 = v57 < result || v58 > a2 || v57 >= v58;
        v61 = (a3 + 2 * v24);
        v62 = v61 + 1;
        if (v60 || v61 < a3 || v62 > a4 || v61 >= v62)
        {
          break;
        }

        v66 = *v57;
        v67 = (a18 + 2 * v66);
        v68 = (a16 + 4 * v66);
        while (v66 < *v61)
        {
          if (v67 >= a18 && (v67 + 1) <= a19 && v67 <= v67 + 1)
          {
            *v67 = 0;
            if (v68 >= a16 && (v68 + 1) <= a17 && v68 <= v68 + 1)
            {
              *v68++ = 0;
              v61 = (a3 + 2 * *(a7 + 2 * v21));
              if (v61 >= a3 && (v61 + 1) <= a4)
              {
                ++v66;
                ++v67;
                if (v61 <= v61 + 1)
                {
                  continue;
                }
              }
            }
          }

          goto LABEL_90;
        }
      }

      else
      {
        v30 = (a5 + 2 * v24);
        v31 = v30 + 1;
        if (v30 < a5 || v31 > a6 || v30 >= v31)
        {
          break;
        }

        v34 = (result + 2 * v24);
        v35 = v34 + 1;
        v36 = v34 < result || v35 > a2;
        v37 = v36 || v34 >= v35;
        v38 = (a3 + 2 * v24);
        v39 = v38 + 1;
        v40 = !v37 && v38 >= a3;
        v41 = !v40 || v39 > a4;
        if (v41 || v38 >= v39)
        {
          break;
        }

        v43 = *v34;
        v44 = *v38;
        v45 = 0.0;
        v46 = v43 < v44;
        if (v43 > v44)
        {
          v44 = v43;
        }

        if (v46)
        {
          v47 = *v30;
          v48 = v43;
          v49 = v44 - v43;
          v50 = (a16 + 4 * v48);
          v51 = 0.0;
          while (v50 >= a16 && (v50 + 1) <= a17 && v50 <= v50 + 1)
          {
            v52 = *v50++;
            v51 = v51 + (v52 * v52);
            if (!--v49)
            {
              v45 = 0.0;
              if (v51 <= 0.0)
              {
                goto LABEL_60;
              }

              v53 = v47;
              v45 = sqrtf(v53 / v51);
              if (v23)
              {
                goto LABEL_60;
              }

              v54 = (a13 + 2 * v24);
              if (v54 >= a13 && (v54 + 1) <= a14 && v54 <= v54 + 1)
              {
                if (*v54 > 256)
                {
                  goto LABEL_60;
                }

                v55 = (a11 + 2 * v24);
                if (v55 >= a11 && (v55 + 1) <= a12 && v55 <= v55 + 1)
                {
                  v56 = (-0.05 / ((v29 / v53) * *v55)) + 1.0;
                  if (v56 < 0.8409)
                  {
                    v56 = 0.8409;
                  }

                  v45 = v45 * v56;
                  goto LABEL_60;
                }
              }

              goto LABEL_90;
            }
          }

          break;
        }

LABEL_60:
        *(a20 + 4 * v21) = v45;
      }

      if (++v21 == a15)
      {
        return result;
      }
    }

LABEL_90:
    __break(0x5519u);
  }

  return result;
}

uint64_t apply_gain_11468(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10)
{
  if (a6 >= 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = (a7 + 4 * *(result + 2 * v10));
      v12 = v11 + 1;
      v13 = v11 < a7 || v12 > a8;
      if (v13 || v11 > v12)
      {
        break;
      }

      v15 = (a2 + 2 * v10);
      if (v15 < a2)
      {
        break;
      }

      if ((v15 + 1) > a3)
      {
        break;
      }

      if (v15 > v15 + 1)
      {
        break;
      }

      v16 = (a4 + 2 * v10);
      if (v16 < a4 || (v16 + 1) > a5 || v16 > v16 + 1)
      {
        break;
      }

      v17 = *v15;
      v18 = *v16;
      v19 = v17 < v18;
      if (v17 > v18)
      {
        v18 = v17;
      }

      if (v19)
      {
        v20 = *v11;
        v21 = v18 - v17;
        v22 = (a9 + 4 * v17);
        while (v22 >= a9 && (v22 + 1) <= a10 && v22 <= v22 + 1)
        {
          *v22 = v20 * *v22;
          ++v22;
          if (!--v21)
          {
            goto LABEL_25;
          }
        }

        break;
      }

LABEL_25:
      if (++v10 == a6)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

__int16 *srt_vec_ind(__int16 *result, _WORD *a2, unint64_t a3, int a4)
{
  v73 = *MEMORY[0x1E69E9840];
  if (a4 >= 1)
  {
    v72 = -1;
    v6 = a4;
    v7 = &result[a4];
    *&v8 = -1;
    *(&v8 + 1) = -1;
    __src[12] = v8;
    __src[13] = v8;
    __src[10] = v8;
    __src[11] = v8;
    __src[8] = v8;
    __src[9] = v8;
    __src[6] = v8;
    __src[7] = v8;
    __src[4] = v8;
    __src[5] = v8;
    __src[2] = v8;
    __src[3] = v8;
    __src[0] = v8;
    __src[1] = v8;
    v68[0] = v8;
    v68[1] = v8;
    v68[2] = v8;
    v68[3] = v8;
    v68[4] = v8;
    v68[5] = v8;
    v68[6] = v8;
    v68[7] = v8;
    v68[8] = v8;
    v68[9] = v8;
    v68[10] = v8;
    v68[11] = v8;
    v68[12] = v8;
    v68[13] = v8;
    v69 = -1;
    if (__src >= result)
    {
      v17 = a4 + 1;
      v18 = &result[a4 - 1];
      v19 = __src + a4 - 1;
      do
      {
        if (v18 < result || (v18 + 1) > v7 || v18 > v18 + 1 || v19 < __src || v19 + 1 > &v73 || v19 > v19 + 1)
        {
          goto LABEL_114;
        }

        v20 = *v18--;
        *v19-- = v20;
        --v17;
      }

      while (v17 > 1);
LABEL_27:
      v21 = 0;
      v22 = vdupq_n_s64(a4 - 1);
      v23 = xmmword_19B0B2390;
      v24 = xmmword_19B0B23A0;
      v25 = xmmword_19B0A5840;
      v26 = xmmword_19B0A5850;
      v27 = (a3 + 8);
      v28 = vdupq_n_s64(8uLL);
      do
      {
        v29 = vmovn_s64(vcgeq_u64(v22, v26));
        if (vuzp1_s8(vuzp1_s16(v29, *v22.i8), *v22.i8).u8[0])
        {
          *(v27 - 4) = v21;
        }

        if (vuzp1_s8(vuzp1_s16(v29, *&v22), *&v22).i8[1])
        {
          *(v27 - 3) = v21 | 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v25))), *&v22).i8[2])
        {
          *(v27 - 2) = v21 | 2;
          *(v27 - 1) = v21 | 3;
        }

        v30 = vmovn_s64(vcgeq_u64(v22, v24));
        if (vuzp1_s8(*&v22, vuzp1_s16(v30, *&v22)).i32[1])
        {
          *v27 = v21 | 4;
        }

        if (vuzp1_s8(*&v22, vuzp1_s16(v30, *&v22)).i8[5])
        {
          v27[1] = v21 | 5;
        }

        if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v23)))).i8[6])
        {
          v27[2] = v21 | 6;
          v27[3] = v21 | 7;
        }

        v21 += 8;
        v24 = vaddq_s64(v24, v28);
        v25 = vaddq_s64(v25, v28);
        v26 = vaddq_s64(v26, v28);
        v23 = vaddq_s64(v23, v28);
        v27 += 8;
      }

      while (((a4 + 7) & 0xFFF8) != v21);
      v31 = v68 + 4 * a4;
      result = memcpy(v68, __src, 4 * a4);
      if (v31 >= v68)
      {
        if (v6 == 1)
        {
LABEL_82:
          v53 = &a2[v6];
          if (v68 <= a2)
          {
            v60 = v6 + 1;
            while (1)
            {
              v61 = v68 + (v60 - 2);
              v62 = v61 + 1;
              v63 = v61 < v68 || v62 > &v70;
              if (v63 || v61 >= v62)
              {
                break;
              }

              v65 = floorf(*v61 + 0.5);
              v66 = 32767.0;
              if (v65 <= 32767.0)
              {
                v66 = v65;
                if (v65 < -32768.0)
                {
                  v66 = -32768.0;
                }
              }

              v67 = &a2[(v60 - 2)];
              if (v67 < a2 || (v67 + 1) > v53 || v67 > v67 + 1)
              {
                break;
              }

              *v67 = v66;
              if (--v60 <= 1)
              {
                return result;
              }
            }
          }

          else
          {
            for (i = v68; ; ++i)
            {
              v55 = i + 1;
              v56 = i < v68 || v55 > &v70;
              if (v56 || i >= v55)
              {
                break;
              }

              v58 = floorf(*i + 0.5);
              v59 = 32767.0;
              if (v58 <= 32767.0)
              {
                v59 = v58;
                if (v58 < -32768.0)
                {
                  v59 = -32768.0;
                }
              }

              if ((a2 + 1) > v53 || a2 > a2 + 1)
              {
                break;
              }

              *a2++ = v59;
              if (!--v6)
              {
                return result;
              }
            }
          }
        }

        else
        {
          LOWORD(result) = 0;
          v32 = 1;
          v33 = a3 + 2 * v6;
          while (1)
          {
            v34 = (result + 1);
            if (v34 < v6)
            {
              break;
            }

LABEL_81:
            ++v32;
            result = v34;
            if (v6 - 1 <= v34)
            {
              goto LABEL_82;
            }
          }

          v35 = v68 + v32;
          v36 = (a3 + 2 * v32);
          v37 = v32 + 1;
          v38 = v68 + result;
          v41 = v38 + 1 > v31 || v38 >= v38 + 1 || v38 < v68;
          v42 = (a3 + 2 * result);
          v45 = (v42 + 1) <= v33 && v42 < v42 + 1 && v42 >= a3;
          while (1)
          {
            v46 = v35 + 1 > v31 || v35 >= v35 + 1;
            v47 = !v46 && v35 >= v68;
            v48 = !v47;
            if (v48 || v41)
            {
              break;
            }

            v49 = *v35;
            v50 = *v38;
            if (*v35 < *v38)
            {
              if (!v45 || v36 < a3 || (v36 + 1) > v33 || v36 > v36 + 1)
              {
                break;
              }

              v51 = *v42;
              *v42 = *v36;
              *v36 = v51;
              *v38 = v49;
              *v35 = v50;
            }

            ++v35;
            ++v36;
            if (v6 == v37++)
            {
              goto LABEL_81;
            }
          }
        }
      }
    }

    else
    {
      v9 = __src;
      v10 = a4;
      while (1)
      {
        v11 = (result + 1) > v7 || result >= result + 1;
        v12 = v9 + 1;
        v13 = !v11 && v9 >= __src;
        v14 = !v13 || v12 > &v73;
        if (v14 || v9 >= v12)
        {
          break;
        }

        v16 = *result++;
        *v9++ = v16;
        if (!--v10)
        {
          goto LABEL_27;
        }
      }
    }

LABEL_114:
    __break(0x5519u);
  }

  return result;
}

uint64_t bandBitsAdjustment(uint64_t a1, int a2, __int16 a3, int a4, int a5, __int16 a6, int a7, int a8, _WORD *a9, _WORD *a10, _WORD *a11)
{
  v22 = -21846;
  rangeCoderFinalizationFBits(a1, a2, &v22);
  if (a5 >= a4)
  {
    result = 0;
    v18 = v22;
    LOWORD(a8) = v22;
  }

  else
  {
    if (a5 >= 3)
    {
      v17 = 3;
    }

    else
    {
      v17 = a5;
    }

    v18 = v22;
    result = intLimCDivSigned((a8 - v22), v17);
  }

  *a11 = a8 + a7;
  v20 = (80 * a6);
  if (v20 >= a7)
  {
    LOWORD(v20) = a7;
  }

  if ((a3 - v18) >= (result + v20))
  {
    v21 = (result + v20);
  }

  else
  {
    v21 = (a3 - v18);
  }

  *a9 = v21 & ~(v21 >> 31);
  *a10 = a3 - v18;
  return result;
}

uint64_t rc_enc_bits(uint64_t result, int a2, int a3)
{
  v3 = a2;
  v4 = result;
  v5 = result + 49152;
  v6 = *(result + 52518);
  v7 = *(result + 52508);
  if (v7 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v7 *= 2;
      ++v8;
    }

    while ((v7 & 0x80000000) == 0);
  }

  if (a3 + (v6 + 2 + v8) <= *(result + 52520))
  {
    *(result + 52518) = v6 + a3;
    v9 = *(result + 52522);
    if (a3 < 17)
    {
      *(result + 52522) = v9 + 1;

      return push_indice(result, (1377 - v9), a2, a3);
    }

    else
    {
      push_indice(result, (1377 - v9), SHIWORD(a2), a3 - 16);
      v10 = *(v5 + 3370);
      *(v5 + 3370) = v10 + 1;
      result = push_indice(v4, (1376 - v10), v3, 16);
      ++*(v5 + 3370);
    }
  }

  return result;
}

uint64_t encode_energies(uint64_t a1, float *a2, unint64_t a3, int a4, __int16 *a5, unint64_t a6, float *a7, unint64_t a8, float a9, _WORD *a10, unint64_t a11, unint64_t a12, unint64_t a13, __int16 a14, __int16 *a15, __int16 a16, __int16 a17)
{
  while (1)
  {
    v17 = a8;
    v80 = a7;
    v18 = a6;
    v19 = a5;
    v20 = a2;
    v79 = a1;
    result = a16;
    LODWORD(v22) = a4 >> 1;
    v23 = 0.0;
    v87[0] = 0;
    v78 = (a4 >> 1);
    v76 = a3;
    v77 = a4;
    v24 = 0;
    if (a4 >> 1 >= 1)
    {
      v22 = v22;
      v25 = a5;
      while (v25 >= a5 && (v25 + 1) <= a6 && v25 <= v25 + 1)
      {
        v26 = *v25++;
        v24 = (v26 + v24);
        if (!--v22)
        {
          if (v24 < 1)
          {
            goto LABEL_13;
          }

          v27 = v24;
          v23 = 0.0;
          v28 = a2;
          while (v28 >= a2 && (v28 + 1) <= a3 && v28 <= v28 + 1)
          {
            v29 = *v28++;
            v23 = v23 + (v29 * v29);
            if (!--v27)
            {
              goto LABEL_13;
            }
          }

          goto LABEL_97;
        }
      }

      goto LABEL_97;
    }

LABEL_13:
    v81 = -21846;
    v30 = a9 - v23;
    obtainEnergyQuantizerDensity(result, a14, &v81);
    v75 = v17;
    if (v30 == 0.0)
    {
      v31 = 0;
    }

    else if (v23 == 0.0)
    {
      v31 = 0x4000;
    }

    else
    {
      v31 = (atan2(sqrtf(v30), sqrtf(v23)) * 10430.3818 + 0.5);
    }

    v85 = -21846;
    v84 = -21846;
    v83 = -21846;
    v82 = -21846;
    rangeCoderFinalizationFBits(*(v79 + 52518), *(v79 + 52508), &v82);
    v32 = v81;
    v33 = (v31 * v81 + 0x2000) >> 14;
    v34 = v81 & 0xFFFE;
    if (!v34)
    {
      LOWORD(v33) = -1;
    }

    v35 = v33;
    result = densityAngle2RmsProjDec(v81, v33, &v84, &v85, &v83);
    if (v34)
    {
      v36 = &SQRT_DIM_fx[(a16 - v24)];
      if (v36 < SQRT_DIM_fx)
      {
        goto LABEL_97;
      }

      if (v36 + 1 > ACELP_BPF_MODE)
      {
        goto LABEL_97;
      }

      if (v36 > v36 + 1)
      {
        goto LABEL_97;
      }

      v37 = &SQRT_DIM_fx[v24];
      if (v37 < SQRT_DIM_fx || v37 + 1 > ACELP_BPF_MODE || v37 > v37 + 1)
      {
        goto LABEL_97;
      }

      v38 = atan2_fx(*v36, *v37);
      v39 = 2 * v38;
      if (v38 > 0)
      {
        v40 = 0x7FFF;
      }

      else
      {
        v40 = 0x8000;
      }

      if (v39 != v39)
      {
        LOWORD(v39) = v40;
      }

      v41 = (20861 * v39 + 0x4000) >> 15;
      if ((v41 & 0x10000) != 0)
      {
        v42 = v41 | 0xFFFF0000;
      }

      else
      {
        v42 = (20861 * v39 + 0x4000) >> 15;
      }

      v43 = v42;
      if (v42 < -32768)
      {
        v43 = -32768;
      }

      v44 = (v43 * v32 + 0x4000) >> 15;
      if ((v44 & 0x10000) != 0)
      {
        v44 |= 0xFFFF0000;
      }

      if (v44 <= -32768)
      {
        v45 = -32768;
      }

      else
      {
        v45 = v44;
      }

      if (v45 >= 0x7FFF)
      {
        v45 = 0x7FFF;
      }

      v46 = (v32 + 1);
      v47 = v46 * v32 + 2;
      v48 = 2 * v35;
      v49 = (2 * v35) | 1;
      v50 = v35 * v35;
      if (v44)
      {
        if (v32 != v45)
        {
          v51 = (v32 - v45);
          v52 = v45 * v32 * v51;
          v47 = v52 + v46;
          v53 = v48 * v51;
          v54 = (v32 - v35);
          if (v35 > v45)
          {
            v53 = 2 * v54 * v45;
          }

          v49 = v53 | 1;
          if (v35 <= v45)
          {
            v50 = v35 + v35 * (v35 - 1) * v51;
          }

          else
          {
            v50 = v35 + ~v54 * v54 * v45 + v52;
          }
        }
      }

      else
      {
        v49 = 2 * v46 - v49;
        v50 = v48 * v46 - v50;
      }

      rc_encode(v79, v50, v49, v47);
    }

    result = a14;
    if (v78 >= 1)
    {
      v55 = v78;
      v56 = v85;
      v57 = a12;
      while (v57 >= a12 && (v57 + 1) <= a13 && v57 <= v57 + 1)
      {
        *v57 = (v56 * *v57 + 0x4000) >> 15;
        ++v57;
        if (!--v55)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_97;
    }

LABEL_59:
    if (v77 >= 1)
    {
      v58 = v78;
      v59 = v84;
      v60 = 2 * v78;
      do
      {
        v61 = a12 + v60 + 2;
        v62 = a12 + v60 < a12 || v61 > a13;
        if (v62 || a12 + v60 > v61)
        {
          goto LABEL_97;
        }

        *(a12 + 2 * v58) = (v59 * *(a12 + 2 * v58) + 0x4000) >> 15;
        ++v58;
        v60 += 2;
      }

      while (v58 < v77);
    }

    if ((v19 + 1) > v18)
    {
      goto LABEL_97;
    }

    if (v19 + 1 < v19)
    {
      goto LABEL_97;
    }

    v64 = &v19[v77];
    v65 = v64 - 1;
    if (v64 - 1 < v19 || v64 > v18 || v65 > v64)
    {
      goto LABEL_97;
    }

    v66 = *(v79 + 52518);
    v67 = *(v79 + 52508);
    v68 = *a15;
    v86 = -21846;
    result = NearOppSplitAdjustment(result, v82, v66, v67, v68, a17, v77, *v19, *v65, v24, a16 - v24, v83, v87, &v86, a15);
    v69 = v78;
    if (v78 < 2)
    {
      v70 = v75;
      if ((v80 + 1) > v75)
      {
        goto LABEL_97;
      }

      if (v80 + 1 < v80)
      {
        goto LABEL_97;
      }

      *v80 = v23;
      if ((a10 + 1) > a11 || a10 + 1 < a10)
      {
        goto LABEL_97;
      }

      *a10 = v87[0];
    }

    else
    {
      HIWORD(v74) = a17;
      LOWORD(v74) = v24;
      LOWORD(v73) = v87[0];
      v70 = v75;
      result = encode_energies(v79, v20, v76, v78, v19, v18, v80, v75, v23, a10, a11, a12, a13, v73, a15, v74);
      v69 = v78;
    }

    a4 = (v77 - (v77 >> 1));
    if (a4 < 2)
    {
      break;
    }

    a2 = &v20[v24];
    if (a2 < v20)
    {
      goto LABEL_97;
    }

    a5 = &v19[v69];
    if (a5 < v19)
    {
      goto LABEL_97;
    }

    a7 = &v80[v69];
    if (a7 < v80 || &a10[v69] < a10 || a12 + 2 * v69 < a12)
    {
      goto LABEL_97;
    }

    a10 += v69;
    a12 += 2 * v69;
    a14 = v86;
    a16 -= v24;
    a1 = v79;
    a9 = v30;
    a3 = v76;
    a6 = v18;
    a8 = v70;
  }

  v71 = v80 + 1;
  if (v80 + 1 >= v80 && (v80 + 2) <= v70 && v71 <= v80 + 2)
  {
    *v71 = v30;
    v72 = a10 + 1;
    if (a10 + 1 >= a10 && (a10 + 2) <= a11 && v72 <= a10 + 2)
    {
      *v72 = v86;
      return result;
    }
  }

LABEL_97:
  __break(0x5519u);
  return result;
}

uint64_t shrtCDivSignedApprox(uint64_t result, int a2)
{
  v2 = &lim_neg_inv_tbl_fx[a2];
  v3 = v2 + 1;
  if (v2 < lim_neg_inv_tbl_fx || v3 > &word_19B36F366 || v2 >= v3)
  {
    __break(0x5519u);
  }

  else
  {
    if (result >= 0)
    {
      LOWORD(v6) = result;
    }

    else
    {
      v6 = -result;
    }

    if (result == -32768)
    {
      LOWORD(v6) = 0x7FFF;
    }

    v7 = (*v2 * -v6) >> 15;
    if (v7 == 0x8000)
    {
      LOWORD(v8) = 0x7FFF;
    }

    else
    {
      v8 = -v7;
    }

    if (result >= 0)
    {
      LOWORD(v8) = v7;
    }

    return v8;
  }

  return result;
}

uint64_t conservativeL1Norm(uint64_t result, __int16 a2, int a3, __int16 a4, __int16 a5, __int16 a6, _WORD *a7, _WORD *a8, _WORD *a9, _WORD *a10)
{
  v10 = &hBitsN + 2 * result;
  v11 = v10 + 2;
  if (v10 >= &hBitsN && v11 <= FLAC__StreamDecoderErrorStatusString && v10 < v11)
  {
    v29 = -21846;
    v18 = *v10;
    v19 = v10[1];
    *a9 = a2 + a5 - 1;
    result = dsDiracPerQuanta(result, a2, a3, &v29);
    v20 = v29;
    v21 = v29;
    do
    {
      LODWORD(v22) = v21;
      v23 = (v18 + v21);
      if (v23 >= v19 || v23 < v18)
      {
        goto LABEL_27;
      }

      v25 = a4 - *v23;
      *a8 = v25;
      v21 = (v22 - 1);
    }

    while (((v22 - 1) & 0x8000) == 0 && v25 < 1);
    if (v21 < 0)
    {
      *a8 = a4 + 1;
    }

    else
    {
      *a7 = v22;
      if (v22 < 22)
      {
LABEL_24:
        *a10 = v22 + a6;
        v28 = (v18 + v20);
        if (v28 < v19 && v28 >= v18)
        {
          *a9 -= *v28;
          --*a8;
          return result;
        }

        goto LABEL_27;
      }

      v26 = &dsHighDiracsTab[2 * v22];
      v22 = v26 - 44;
      if (v26 - 44 < dsHighDiracsTab)
      {
        goto LABEL_27;
      }

      v27 = v26 - 42;
      if (v27 > gain_cb_size || v22 > v27)
      {
        goto LABEL_27;
      }

      LOWORD(v22) = *v22;
    }

    *a7 = v22;
    goto LABEL_24;
  }

LABEL_27:
  __break(0x5519u);
  return result;
}

uint64_t rc_enc_shift(uint64_t result)
{
  v1 = result;
  v2 = result + 49152;
  v3 = *(result + 52504);
  if (HIBYTE(v3) == 255 && !*(result + 52514))
  {
    ++*(result + 52516);
  }

  else
  {
    v4 = *(result + 52512);
    if ((v4 & 0x80000000) == 0)
    {
      result = push_indice(result, 1057, *(result + 52514) + v4, 8);
    }

    if (*(v2 + 3364) >= 1)
    {
      do
      {
        result = push_indice(v1, 1057, (*(v2 + 3362) - 1), 8);
        v5 = --*(v2 + 3364);
      }

      while (v5 > 0);
    }

    v3 = *(v2 + 3352);
    *(v2 + 3360) = HIBYTE(v3);
  }

  *(v2 + 3352) = v3 << 8;
  return result;
}

unint64_t mpvq_encode_vec(unint64_t a1, unint64_t a2, int a3, unsigned int a4)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v32 = a4;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v34 = -1431655766;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39[22] = v7;
  v39[23] = v7;
  v39[20] = v7;
  v39[21] = v7;
  v39[18] = v7;
  v39[19] = v7;
  v39[16] = v7;
  v39[17] = v7;
  v39[14] = v7;
  v39[15] = v7;
  v39[12] = v7;
  v39[13] = v7;
  v39[10] = v7;
  v39[11] = v7;
  v39[8] = v7;
  v39[9] = v7;
  v39[6] = v7;
  v39[7] = v7;
  v39[4] = v7;
  v39[5] = v7;
  v39[2] = v7;
  v39[3] = v7;
  v39[0] = v7;
  v39[1] = v7;
  v31 = -1431655766;
  v38[0] = 0;
  v38[1] = vec2mind_one;
  v38[2] = vec2mind_two;
  v38[3] = vec2mind_three;
  v38[4] = vec2mind_four;
  v38[5] = vec2mind_five;
  v36 = a4;
  v35 = a3;
  if (a3 >= 6)
  {
    v31 = 0x80000000;
    v8 = (a1 + 2 * a3 - 4);
    if (v8 < a1)
    {
      goto LABEL_48;
    }

    v37 = -21846;
    vec2mind_two(v8, a2, &v37, &v31, &v33 + 1);
    initOffsets(v39, v41, a4);
    v10 = a1 + 2 * (a3 - 3);
    if (v10 < a1 || v10 + 2 > a2 || v10 > v10 + 2)
    {
      goto LABEL_48;
    }

    v11 = v37;
    v12 = v31;
    v13 = 2 * (a3 - 3);
    while (1)
    {
      v14 = a1 + v13;
      v15 = *(a1 + v13);
      if (v12 < 0 || !*(a1 + v13))
      {
        if (!*(a1 + v13))
        {
          goto LABEL_12;
        }
      }

      else
      {
        HIDWORD(v33) = v12 + 2 * HIDWORD(v33);
      }

      v12 = v15 >> 15;
LABEL_12:
      v16 = v39 + v11;
      v17 = v16 + 1;
      if (v16 < v39 || v17 > v41 || v16 >= v17)
      {
        goto LABEL_48;
      }

      v13 -= 2;
      HIDWORD(v33) += *v16;
      if ((v15 & 0x8000u) != 0)
      {
        v15 = -v15;
      }

      v11 += v15;
      if (v13 == -2)
      {
        v21 = v39 + v11;
        v22 = v21 + 1;
        v24 = v21 < v39 || v22 > v41 || v21 >= v22;
        v25 = v39 + (a4 + 1);
        v26 = v25 + 1;
        if (!v24 && v25 >= v39 && v26 <= v41 && v25 < v26)
        {
          v34 = *v25 + (*v21 >> 1) + 1;
          goto LABEL_47;
        }

LABEL_48:
        __break(0x5519u);
      }

      a_u_fwd(v39, v41, a4, (a4 + 1));
      if (v14 - 2 < a1 || v14 > a2 || v14 - 2 > v14)
      {
        goto LABEL_48;
      }
    }
  }

  v20 = &v38[a3];
  if (v20 < v38 || v20 + 1 > v39 || v20 > v20 + 1)
  {
    goto LABEL_48;
  }

  (*v20)(a1, a2, &v32, &v31, &v33 + 4);
  v34 = direct_msize(a3, v32);
  LOWORD(v12) = v31;
LABEL_47:
  LOWORD(v33) = v12;
  return v33;
}

uint64_t rc_encode(uint64_t a1, int a2, int a3, int a4)
{
  v7 = a1 + 49152;
  v12 = -21846;
  result = UL_inverse(a4, &v12);
  v9 = ((*(v7 + 3356) * result) >> 32) >> v12;
  v10 = *(v7 + 3352);
  *(v7 + 3352) = v9 * a2 + v10;
  if (__CFADD__(v9 * a2, v10))
  {
    *(v7 + 3362) = 1;
  }

  v11 = v9 * a3;
  *(v7 + 3356) = v11;
  while (!HIBYTE(v11))
  {
    *(v7 + 3356) = v11 << 8;
    *(v7 + 3366) += 8;
    result = rc_enc_shift(a1);
    v11 = *(v7 + 3356);
  }

  return result;
}

uint64_t UL_inverse(int a1, _WORD *a2)
{
  if (a1 < 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = a1;
    do
    {
      v3 *= 2;
      ++v2;
    }

    while ((v3 & 0x80000000) == 0);
  }

  v4 = 0;
  *a2 = 63 - v2;
  LODWORD(v5) = ~(a1 << v2);
  LODWORD(result) = 0x80000000;
  do
  {
    result = (result + ((v5 * result) >> 32));
    v5 = (v5 * v5) >> 32;
  }

  while (v4++ < 4);
  return result;
}

unsigned __int16 *vec2mind_two(unsigned __int16 *result, unint64_t a2, _WORD *a3, int *a4, _DWORD *a5)
{
  v5 = result + 1;
  v6 = (result + 1) <= a2 && v5 >= result;
  v7 = result + 2;
  if (!v6 || v7 > a2 || v5 > v7)
  {
    goto LABEL_27;
  }

  v10 = *result;
  if ((v10 & 0x8000u) == 0)
  {
    LOWORD(v11) = *result;
  }

  else
  {
    v11 = -v10;
  }

  v12 = result[1];
  LOWORD(v13) = v12;
  if ((v12 & 0x8000u) != 0)
  {
    v13 = -v12;
  }

  v14 = v13 + v11;
  *a3 = v14;
  if (!v14)
  {
    *a4 = 0x80000000;
    *a5 = 0;
    return result;
  }

  *a4 = 0;
  if (v12)
  {
    if (v10)
    {
      *a5 = ((*v5 >> 15) | (2 * v13)) - 1;
    }

    else
    {
      *a5 = 2 * v13 - 1;
      *a4 = 1;
    }
  }

  else
  {
    *a5 = 0;
  }

  v15 = &result[*a4];
  if (v15 < result || (v15 + 1) > a2 || v15 > v15 + 1)
  {
LABEL_27:
    __break(0x5519u);
  }

  else
  {
    *a4 = *v15 >> 15;
  }

  return result;
}

int *initOffsets(int *result, unint64_t a2, unsigned int a3)
{
  v3 = result + 1;
  if ((result + 1) <= a2 && v3 >= result)
  {
    *result = 0;
    if ((result + 2) <= a2 && v3 <= result + 2)
    {
      v5 = 1;
      *v3 = 1;
      if (a3 >= 2)
      {
        v7 = 0;
        v5 = 1;
        v8 = 2;
        while (1)
        {
          v9 = &result[v7 + 2];
          v10 = &result[v7 + 3];
          v11 = v9 < result || v10 > a2;
          if (v11 || v9 > v10)
          {
            break;
          }

          ++v5;
          *v9 = (v8 * v5) | 1;
          ++v7;
          v8 += 2;
          if (4 * a3 - 4 == (v7 * 4))
          {
            v6 = v5 + 1;
            goto LABEL_20;
          }
        }
      }

      else
      {
        v6 = 2;
LABEL_20:
        v13 = &result[v6];
        if (v13 >= result && (v13 + 1) <= a2 && v13 <= v13 + 1)
        {
          *v13 = v6 * v5;
          return result;
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t a_u_fwd(unint64_t result, unint64_t a2, int a3, int a4)
{
  v4 = (result + 4 * a4);
  v5 = v4 + 1;
  if (v4 >= result && v5 <= a2 && v4 < v5)
  {
    v8 = (result + 4 * a3);
    if (v8 >= result && (v8 + 1) <= a2 && v8 <= v8 + 1)
    {
      v9 = result + 4;
      if (result + 4 >= result)
      {
        v10 = 0;
        v11 = *v4;
        v12 = *v8;
        LOWORD(v13) = 1;
        v14 = 1;
        while (1)
        {
          v15 = (v9 + 4 * v10);
          v10 = v13;
          v16 = v15 + 1;
          v17 = v15 < v9 || v16 > a2;
          v18 = v17 || v15 >= v16;
          v19 = (v9 + 4 * v13);
          v20 = v19 + 1;
          v21 = !v18 && v19 >= v9;
          v22 = !v21 || v20 > a2;
          if (v22 || v19 >= v20)
          {
            break;
          }

          result = (*v15 + v14 + *v19);
          *v15 = v14;
          v13 = (v10 + 1);
          v14 = result;
          if (v13 > a3)
          {
            *v19 = result;
            *v4 = v11 + (v12 >> 1) + (*v8 >> 1) + 1;
            return result;
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t direct_msize(int a1, int a2)
{
  if (!a2)
  {
    return 1;
  }

  v3 = a2 * a2;
  result = 1;
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return -1431655764 * a2 * (v3 | 2u);
    }

    else if (a1 == 5)
    {
      return (1431655766 * v3 * (v3 + 5)) | 1u;
    }
  }

  else
  {
    v5 = (2 * v3) | 1;
    if (a1 != 3)
    {
      v5 = 1;
    }

    if (a1 == 2)
    {
      return (2 * a2);
    }

    else
    {
      return v5;
    }
  }

  return result;
}

unint64_t vec2mind_gen345(unsigned __int16 *a1, unint64_t a2, __int16 *a3, unsigned int *a4, _DWORD *a5, void (*a6)(void), uint64_t (*a7)(void))
{
  result = (a1 + 1);
  if (result > a2 || result < a1)
  {
    __break(0x5519u);
    return result;
  }

  v14 = *a1;
  a6();
  if ((*a4 & 0x80000000) == 0 && v14)
  {
    *a5 = *a4 + 2 * *a5;
LABEL_10:
    *a4 = v14 >> 15;
    goto LABEL_11;
  }

  if (v14)
  {
    goto LABEL_10;
  }

LABEL_11:
  result = a7(*a3);
  *a5 += result;
  if ((v14 & 0x8000u) == 0)
  {
    LOWORD(v15) = v14;
  }

  else
  {
    v15 = -v14;
  }

  *a3 += v15;
  return result;
}

uint64_t a_five(uint64_t result)
{
  if (result >= 2)
  {
    return (1431655766 * result * (((result - 2) * result + 5) * result + 2147483644)) | 1u;
  }

  return result;
}

uint64_t a_four(uint64_t result)
{
  if (result)
  {
    return (1431655766 * result * ((2 * result - 3) * result + 4) - 1);
  }

  return result;
}

uint64_t a_three(int a1)
{
  if (a1)
  {
    return ((2 * a1 - 2) * a1 + 1);
  }

  else
  {
    return 0;
  }
}

unsigned __int16 *vec2mind_one(unsigned __int16 *result, unint64_t a2, _WORD *a3, int *a4, _DWORD *a5)
{
  *a3 = -1;
  *a5 = 0;
  if ((result + 1) <= a2 && result + 1 >= result)
  {
    *a4 = *result >> 15;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t dsDiracPerQuanta(uint64_t result, __int16 a2, int a3, _WORD *a4)
{
  v4 = (&hBitsN + 2 * result);
  v5 = v4 + 2;
  if (v4 < &hBitsN || v5 > FLAC__StreamDecoderErrorStatusString || v4 >= v5)
  {
    goto LABEL_71;
  }

  v8 = *v4;
  v9 = v4[1];
  if (*v4 >= v9)
  {
    goto LABEL_71;
  }

  v10 = *v8;
  v11 = &v8[v10];
  if (&v8[v10] >= v9 || v11 < v8)
  {
    goto LABEL_71;
  }

  v14 = (a2 - 1);
  if (v14 >= *v11)
  {
    goto LABEL_70;
  }

  v15 = v8 + 1;
  if ((v8 + 1) >= v9 || v15 < v8)
  {
    goto LABEL_71;
  }

  if (v14 <= *v15)
  {
    LOWORD(v10) = 1;
    goto LABEL_70;
  }

  v17 = &f_log2_n[result];
  if (v17 >= byte_1EAFE0A19 || v17 < f_log2_n)
  {
    goto LABEL_71;
  }

  v18 = &v8[v10 >> 1];
  if (v18 >= v9 || v18 < v8)
  {
    goto LABEL_71;
  }

  LOWORD(v21) = *v17;
  v22 = (-1 << v21) + v10;
  if (v14 <= *v18)
  {
    v23 = 1 << v21;
  }

  else
  {
    LOWORD(v23) = v22;
  }

  if (*v17)
  {
    while (1)
    {
      v24 = &v8[v23];
      if (v24 >= v9 || v24 < v8)
      {
        goto LABEL_71;
      }

      v26 = *v24;
      v27 = (((v26 - v14) >> 14) & 2) - 1;
      v28 = v26 - v14;
      v29 = v21;
      if (v28)
      {
        v30 = v28 <= 0x7FFF;
      }

      else
      {
        v30 = 0;
      }

      if (v30)
      {
        v31 = v27;
      }

      else
      {
        v31 = 0xFFFFFFFFLL;
      }

      v21 = (v21 - 1);
      result = shl(v31, v21, &v42);
      LOWORD(v23) = v23 + result;
      v32 = v23;
      if (v29 <= 1)
      {
        goto LABEL_47;
      }
    }
  }

  v32 = v23;
LABEL_47:
  v33 = &v8[v32];
  if (v33 >= v9 || v33 < v8)
  {
    goto LABEL_71;
  }

  v35 = v14 <= *v33 ? v23 : v23 + 1;
  v36 = v35 - (v35 > 1);
  LOWORD(v10) = v36;
  if (a3 == 1)
  {
LABEL_70:
    *a4 = v10;
    return result;
  }

  v37 = &v8[v36 + 1];
  v38 = v37 < v9 && v37 >= v8;
  v39 = &v8[v36];
  if (v38 && v39 < v9 && v39 >= v8)
  {
    if (*v39 + *v37 >= 2 * v14)
    {
      LOWORD(v10) = v36;
    }

    else
    {
      LOWORD(v10) = v36 + 1;
    }

    goto LABEL_70;
  }

LABEL_71:
  __break(0x5519u);
  return result;
}

uint64_t obtainEnergyQuantizerDensity(uint64_t result, int a2, _WORD *a3)
{
  v3 = (2 * result - 1);
  if (v3 > 67)
  {
    LODWORD(v8) = (a2 / v3);
  }

  else
  {
    v4 = &intLimCDivInvDQ31[(2 * result - 1)];
    v5 = v4 + 1;
    if (v4 < intLimCDivInvDQ31 || v5 > obtainEnergyQuantizerDensity_f || v4 >= v5)
    {
      goto LABEL_26;
    }

    v8 = (*v4 * 2 * a2) >> 32;
  }

  v9 = v8 + 28;
  if (v9 >= 56)
  {
    v10 = 56;
  }

  else
  {
    v10 = v9;
  }

  if (a2 - 96 < v9 && a2 < 152)
  {
    v12 = a2 - 96;
  }

  else
  {
    v12 = v10;
  }

  v13 = &obtainEnergyQuantizerDensity_f[v12 & ~(v12 >> 31)];
  if (v13 < &unk_19B36F4B1 && v13 >= obtainEnergyQuantizerDensity_f)
  {
    *a3 = *v13;
    return result;
  }

LABEL_26:
  __break(0x5519u);
  return result;
}

uint64_t rangeCoderFinalizationFBits(uint64_t result, int a2, _WORD *a3)
{
  if (a2 < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = a2;
    do
    {
      v4 *= 2;
      ++v3;
    }

    while ((v4 & 0x80000000) == 0);
  }

  v5 = 30 - v3;
  v6 = (a2 >> (16 - v3)) & ~((16 - v3) >> 15);
  LOBYTE(v7) = 2;
  v8 = 1;
  do
  {
    v9 = (v6 >> (v7 & 1)) * (v6 >> (v7 & 1));
    v6 = v9 >> 15;
    v7 = __PAIR64__(v5, v9) >> 31;
    v5 = v7;
  }

  while (v8++ < 3);
  *a3 = 8 * result - v7 + 256;
  return result;
}

uint64_t atan2_fx(int a1, int a2)
{
  if (a2 == -1)
  {
    v4 = 31;
  }

  else
  {
    if (!a2)
    {
      LOWORD(v3) = 25736;
      return v3;
    }

    v5 = a2 ^ (a2 >> 31);
    if (v5 > 0x3FFFFFFF)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      do
      {
        v6 = v5 >> 29;
        v5 *= 2;
        ++v4;
      }

      while (!v6);
    }
  }

  v7 = L_shl(a2, v4);
  if (!a1)
  {
    goto LABEL_17;
  }

  if (a1 == -1)
  {
    v8 = 31;
    goto LABEL_18;
  }

  v9 = a1 ^ (a1 >> 31);
  if (v9 <= 0x3FFFFFFF)
  {
    v8 = 0;
    do
    {
      v10 = v9 >> 29;
      v9 *= 2;
      ++v8;
    }

    while (!v10);
  }

  else
  {
LABEL_17:
    v8 = 0;
  }

LABEL_18:
  v11 = v8;
  v12 = L_shl(a1, v8);
  v13 = div_s(v12 >> 17, v7 >> 16);
  v14 = v11 - v4;
  if (v14 < 0x8000)
  {
    if (v14 >= -32768 && v14 >= -32767)
    {
      v15 = v14 - 1;
    }

    else
    {
      v15 = 0x8000;
    }
  }

  else
  {
    v15 = 32766;
  }

  v16 = L_shr(v13, v15);
  v17 = v16;
  if (v16 >= 0x40000)
  {
    if (v16 == -1)
    {
      v23 = 31;
    }

    else
    {
      v33 = v16 ^ (v16 >> 31);
      if (v33 > 0x3FFFFFFF)
      {
        v23 = 0;
      }

      else
      {
        v23 = 0;
        do
        {
          v34 = v33 >> 29;
          v33 *= 2;
          ++v23;
        }

        while (!v34);
      }
    }

    v35 = L_shl(v16, v23);
    v36 = div_s(0x3FFF, v35 >> 16);
    v37 = 16 - v23;
    if (v23 < -32751)
    {
      v37 = 0x7FFF;
    }

    v38 = shr(v36, v37, &v57);
    LOWORD(v3) = 25736 - v38;
    if (v38 < -7031)
    {
      LOWORD(v3) = 0x7FFF;
    }

    if (v17 < 327680)
    {
      if (v3 <= 32759)
      {
        LOWORD(v3) = v3 + 8;
      }

      else
      {
        LOWORD(v3) = 0x7FFF;
      }
    }

    return v3;
  }

  if (v16 >= 0x20000)
  {
    v24 = v16 >> 3;
    v25 = -4322 * (v16 >> 3) + 533658105;
    v26 = v25 ^ (-4322 * (v16 >> 3) + 533625337);
    v27 = HIWORD(v25);
    if (v26 < 0)
    {
      v28 = 0x7FFF;
    }

    else
    {
      v28 = v27;
    }

    v29 = (v16 >> 3);
    v30 = mac_r(-797517542, v29, v28, &v57);
    v31 = v24 * mac_r(592675551, v29, v30, &v57);
    if (v31 == 0x40000000)
    {
      v32 = -1946369637;
LABEL_67:
      v3 = v32 >> 14;
      return v3;
    }

    v32 = 2 * v31 + 201114012;
    v46 = -100557007;
LABEL_66:
    if (v31 > v46)
    {
      v3 = v32 >> 14;
      return v3;
    }

    goto LABEL_67;
  }

  if (v16 >= 0x10000)
  {
    v39 = v16 >> 2;
    v40 = -5502 * (v16 >> 2) + 702635651;
    v41 = v40 ^ (-5502 * (v16 >> 2) + 702602883);
    v42 = HIWORD(v40);
    if (v41 < 0)
    {
      v43 = 0x7FFF;
    }

    else
    {
      v43 = v42;
    }

    v44 = (v16 >> 2);
    v45 = mac_r(-1100849465, v44, v43, &v57);
    v31 = v39 * mac_r(877095185, v44, v45, &v57);
    if (v31 == 0x40000000)
    {
      v32 = -2090151015;
      goto LABEL_67;
    }

    v32 = 2 * v31 + 57332634;
    v46 = -28666318;
    goto LABEL_66;
  }

  if (v16 >= 0x8000)
  {
    v47 = v16 >> 1;
    v48 = -4212 * (v16 >> 1) + 655920017;
    v49 = v48 ^ (-4212 * (v16 >> 1) + 655887249);
    v50 = HIWORD(v48);
    if (v49 < 0)
    {
      v51 = 0x7FFF;
    }

    else
    {
      v51 = v50;
    }

    v52 = (v16 >> 1);
    v53 = mac_r(-1314948992, v52, v51, &v57);
    v54 = v47 * mac_r(1428924557, v52, v53, &v57);
    if (v54 == 0x40000000)
    {
      v55 = 2110058946;
LABEL_64:
      v3 = v55 >> 15;
      return v3;
    }

    if (v54 < -1055029473)
    {
      v55 = 0x80000000;
    }

    else
    {
      v55 = 2 * v54 - 37424701;
      if (v54 > 18712350)
      {
        goto LABEL_64;
      }
    }

    v3 = v55 >> 15;
    return v3;
  }

  v18 = mac_r(1188376431, v16, -3547, &v57);
  if (v17 * v18 <= -1152429078)
  {
    v19 = 0x8000;
  }

  else
  {
    v19 = (v17 * v18 - 995054571) >> 16;
  }

  v20 = mac_r(61673254, v17, v19, &v57);
  v21 = v17 * mac_r(2141982059, v17, v20, &v57);
  if (v21 == 0x40000000)
  {
    v22 = -2147368510;
  }

  else
  {
    v22 = 2 * v21 + 115139;
    if (v21 > -57570)
    {
      v3 = v22 >> 17;
      return v3;
    }
  }

  v3 = v22 >> 17;
  return v3;
}

uint64_t NearOppSplitAdjustment(int a1, int a2, uint64_t a3, int a4, __int16 a5, int a6, int a7, int a8, __int16 a9, __int16 a10, __int16 a11, __int16 a12, _WORD *a13, _WORD *a14, _WORD *a15)
{
  v41 = -21846;
  result = rangeCoderFinalizationFBits(a3, a4, &v41);
  v22 = v41;
  v23 = a2 - v41 + a1;
  if (a8 < 2)
  {
    v29 = 0;
  }

  else
  {
    v40 = -21846;
    v24 = intLimCDivSigned((a2 - v41 + a1), a7);
    result = dsDiracPerQuanta(a9, v24, a6, &v40);
    v25 = v40;
    if (v40)
    {
      v26 = (&hBitsN + 2 * a8);
      if (v26 < &hBitsN || v26 + 2 > FLAC__StreamDecoderErrorStatusString || v26 > v26 + 2)
      {
        goto LABEL_36;
      }

      v27 = &(*v26)[v40];
      if (v27 >= v26[1] || v27 < *v26)
      {
        goto LABEL_36;
      }

      v25 = ~*v27;
    }

    v29 = (v25 + v24) & ~((v25 + v24) >> 31);
  }

  v30 = &intLimCDivInvDQ31[a10];
  v31 = v30 + 1;
  if (v30 < intLimCDivInvDQ31 || v31 > obtainEnergyQuantizerDensity_f || v30 >= v31)
  {
    goto LABEL_36;
  }

  v34 = a2 + a1 - v22 - (v29 + a12 * a11);
  if (v34 < 1)
  {
    v39 = 0;
    goto LABEL_31;
  }

  v35 = &intLimCDivInvDQ31[(((2 * a11 * *v30) << 16) + 0x1000000000000) >> 48];
  v36 = v35 + 1;
  v37 = v35 < intLimCDivInvDQ31 || v36 > obtainEnergyQuantizerDensity_f;
  if (v37 || v35 >= v36)
  {
LABEL_36:
    __break(0x5519u);
    return result;
  }

  v39 = (*v35 * (2 * v34)) >> 32;
LABEL_31:
  if (v39 >= 0x7FFF)
  {
    LOWORD(v39) = 0x7FFF;
  }

  if (v23 < v39)
  {
    LOWORD(v39) = v23;
  }

  *a13 = v39;
  *a14 = v23 - v39;
  *a15 = a5 + a2 - v22;
  return result;
}

uint64_t intLimCDivSigned(uint64_t result, int a2)
{
  v2 = &intLimCDivInvDQ31[a2];
  v3 = v2 + 1;
  if (v2 < intLimCDivInvDQ31 || v3 > obtainEnergyQuantizerDensity_f || v2 >= v3)
  {
    __break(0x5519u);
  }

  else
  {
    if (result >= 0)
    {
      v6 = result;
    }

    else
    {
      v6 = -result;
    }

    v7 = (*v2 * (2 * v6)) >> 32;
    if (result >= 0)
    {
      return v7;
    }

    else
    {
      return -v7;
    }
  }

  return result;
}

uint64_t densityAngle2RmsProjDec(uint64_t result, int a2, __int16 *a3, __int16 *a4, __int16 *a5)
{
  v7 = &intLimCDivInvDQ31[result >> 1];
  v8 = v7 + 1;
  if (v7 < intLimCDivInvDQ31 || v8 > obtainEnergyQuantizerDensity_f || v7 > v8)
  {
    __break(0x5519u);
    return result;
  }

  v38 = v5;
  v39 = v6;
  if (a2 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = -a2;
  }

  v13 = ((*v7 * v12) >> 2) >> 16;
  if (result < 2)
  {
    v13 = 0x2000;
  }

  if ((v13 - 16320) < 0xFFFFC080)
  {
    if (v13 <= 16319)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0x7FFF;
    }

    v15 = v13 < 64;
    if (v13 < 64)
    {
      v16 = -16384;
    }

    else
    {
      v16 = 0x4000;
    }

    *a5 = v16;
    *a3 = v14;
    if (v15)
    {
      v17 = 0x7FFF;
    }

    else
    {
      v17 = 0;
    }

    *a4 = v17;
    return result;
  }

  *a3 = ((((((((14967 * ((0x8000 - 2 * v13) & 0xFFFEu)) >> 16) - 25518) * ((0x8000 - 2 * v13) & 0xFFFE)) >> 14) + 3415) * ((0x8000 - 2 * v13) & 0xFFFEu)) >> 15) + 32351;
  v18 = ((((((29934 * (v13 & 0x7FFFu)) >> 16) - 25518) * 2 * (v13 & 0x7FFF)) >> 14) + 3415) * 2 * (v13 & 0x7FFF);
  v19 = (v18 >> 15) + 32351;
  *a4 = (v18 >> 15) + 32351;
  v20 = *a3;
  if (v20 == 0xFFFF)
  {
    v22 = 15;
  }

  else if (*a3 && (v21 = (v20 ^ (v20 >> 15)), v21 < 0x4000))
  {
    v22 = 0;
    do
    {
      v21 = (2 * v21);
      ++v22;
    }

    while (v21 < 0x4000);
  }

  else
  {
    v22 = 0;
  }

  v23 = (v18 >> 15);
  if (v23 == 33184)
  {
    v25 = 15;
  }

  else if (v23 == 33185 || (v24 = (v19 ^ (v19 >> 15)), v24 >= 0x4000))
  {
    v25 = 0;
  }

  else
  {
    v25 = 0;
    do
    {
      v24 = (2 * v24);
      ++v25;
    }

    while (v24 < 0x4000);
  }

  v26 = v19 << v25;
  v27 = (v20 << v22);
  result = mac_r(-5552 * (v19 << v25) + 538500224, v27, -2776, &v37);
  v28 = v27 - v26;
  if (v28 >= -32768)
  {
    v29 = (v27 - v26);
  }

  else
  {
    v29 = -32768;
  }

  if (v28 < 0x8000)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0x7FFF;
  }

  v31 = (v30 * result + 0x4000) >> 15;
  if ((v31 & 0x10000) != 0)
  {
    v32 = v31 | 0xFFFF0000;
  }

  else
  {
    v32 = (v30 * result + 0x4000) >> 15;
  }

  if (v32 < 0x8000)
  {
    if (v32 >= -32768)
    {
      v32 = v32;
    }

    else
    {
      v32 = -32768;
    }
  }

  else
  {
    v32 = 0x7FFF;
  }

  v33 = v25 - v22;
  if (v33 >= 0x8000)
  {
    goto LABEL_55;
  }

  if (v33 < -32768)
  {
    goto LABEL_57;
  }

  v34 = v33 << 11;
  if (v34 == (v33 << 11))
  {
    goto LABEL_59;
  }

  if (v33 >= 1)
  {
LABEL_55:
    LOWORD(v34) = 0x7FFF;
  }

  else
  {
LABEL_57:
    LOWORD(v34) = 0x8000;
  }

LABEL_59:
  v35 = v32 + v34;
  if (v35 == v35)
  {
    v36 = (v35 + 128) >> 8;
  }

  else
  {
    v36 = -128;
  }

  *a5 = v36;
  return result;
}

float *logqnorm(float *result, unint64_t a2, _WORD *a3, int a4, int a5, float *a6, unint64_t a7)
{
  if (a5 >= 1)
  {
    v7 = a5;
    v8 = 0.0;
    v9 = result;
    while (v9 >= result && (v9 + 1) <= a2 && v9 <= v9 + 1)
    {
      v10 = *v9++;
      v8 = v8 + (v10 * v10);
      if (!--v7)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_38;
  }

  v8 = 0.0;
LABEL_9:
  v11 = &inv_tbl[a5];
  v12 = v11 + 1;
  v14 = v11 < inv_tbl || v12 > dicnlg2 || v11 > v12;
  if (v14 || (a6 + 1) > a7 || a6 + 1 < a6)
  {
    goto LABEL_38;
  }

  v15 = v8 * *v11;
  if (-(v15 - (*a6 * *a6)) <= 0.0)
  {
    v19 = 0;
    goto LABEL_37;
  }

  v16 = &a6[a4];
  v17 = v16 - 2;
  if (v16 - 2 >= a6)
  {
    v18 = (v16 - 1);
    if (v18 <= a7 && v17 <= v18)
    {
      if (((*v17 * *v17) - v15) > 0.0)
      {
        v19 = a4 - 1;
LABEL_37:
        *a3 = v19;
        return result;
      }

      v20 = 0;
      v21 = 0;
      v19 = a4 - 1;
      v22 = (a4 - 1);
      v23 = sqrtf(v15);
      while (1)
      {
        v24 = (v20 + v22) >> 1;
        v25 = &a6[v24];
        v26 = v25 + 1;
        v27 = v25 < a6 || v26 > a7;
        if (v27 || v25 > v26)
        {
          break;
        }

        if (v23 < *v25)
        {
          v21 = v24;
        }

        else
        {
          v19 = v24;
        }

        v22 = v19;
        v20 = v21;
        if (v19 - v21 <= 1)
        {
          goto LABEL_37;
        }
      }
    }
  }

LABEL_38:
  __break(0x5519u);
  return result;
}

uint64_t diffcod(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (result >= 2)
  {
    v4 = a2 + 2 * result;
    v5 = result + 1;
    v6 = (v4 - 4);
    while ((v6 + 1) >= a2 && v6 + 1 <= v6 + 2)
    {
      if (v6 < a2)
      {
        break;
      }

      v8 = v6[1];
      if ((v6 + 1) > v4 || v6 > v6 + 1)
      {
        break;
      }

      if ((v8 - *v6) <= -16)
      {
        *v6 = v8 + 15;
      }

      --v5;
      --v6;
      if (v5 <= 2)
      {
        v9 = 0;
        while (1)
        {
          v10 = (a2 + v9);
          v11 = (a2 + v9 + 2);
          v12 = a2 + v9 + 4;
          v13 = v11 < a2 || v12 > v4;
          v14 = v13 || v11 > v12;
          v15 = v14 || v11 > v4;
          if (v15 || v10 > v11)
          {
            break;
          }

          v17 = *v10;
          v18 = (*v11 - *v10);
          if (v18 >= 17)
          {
            *v11 = v17 + 16;
            LOWORD(v18) = 16;
          }

          v19 = (a3 + v9);
          if (a3 + v9 < a3 || (v19 + 1) > a4 || v19 > v19 + 1)
          {
            break;
          }

          *v19 = v18 + 15;
          v9 += 2;
          if (2 * result - 2 == v9)
          {
            return result;
          }
        }

        break;
      }
    }

    __break(0x5519u);
  }

  return result;
}

int *floating_point_add(int *result, __int16 *a2, int a3, __int16 a4)
{
  v4 = *result >> 1;
  v5 = a3 >> 1;
  v6 = *a2;
  v7 = (*a2 - a4);
  v8 = v4 >> (*a2 - a4);
  if (v7 >= 0x20)
  {
    v8 = 0;
  }

  v9 = v8 + v5;
  v10 = (v5 >> (a4 - v6)) + v4;
  if (v7 < 0xFFFFFFE1)
  {
    v10 = *result >> 1;
  }

  if (((v6 - a4) & 0x8000) != 0)
  {
    v11 = *a2;
  }

  else
  {
    v11 = a4;
  }

  if (((v6 - a4) & 0x8000) == 0)
  {
    v10 = v9;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  if (v10 == -1)
  {
    v12 = 31;
    goto LABEL_18;
  }

  v13 = v10 ^ (v10 >> 31);
  if (v13 > 0x3FFFFFFF)
  {
LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v12 = 0;
  do
  {
    v14 = v13 >> 29;
    v13 *= 2;
    ++v12;
  }

  while (!v14);
LABEL_18:
  *result = v10 << v12;
  *a2 = v12 + v11 - 1;
  return result;
}

float quant_peaks(uint64_t a1, float *a2, unint64_t a3, float *a4, unint64_t a5, uint64_t a6, _WORD *a7, int a8, __int16 a9, __int16 a10)
{
  v15 = 0;
  v66 = *MEMORY[0x1E69E9840];
  v64 = -1;
  v65 = -1;
  v62 = -1;
  v63 = -1;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  do
  {
    v16 = &v61 + v15 + 2;
    if ((&v61 + v15) < &v61 || v16 > &v62 || &v61 + v15 > v16)
    {
      goto LABEL_90;
    }

    *(&v61 + v15) = 1;
    v15 += 2;
  }

  while (v15 != 8);
  v19 = (a2 + 1);
  if ((a2 + 1) > a3)
  {
    goto LABEL_90;
  }

  if (v19 < a2)
  {
    goto LABEL_90;
  }

  v20 = *a6;
  v21 = *(a6 + 8);
  v22 = (*a6 + 4);
  if (v22 > v21)
  {
    goto LABEL_90;
  }

  if (v20 > v22)
  {
    goto LABEL_90;
  }

  v23 = *(a6 + 16);
  if (v20 < v23)
  {
    goto LABEL_90;
  }

  v24 = *v20;
  *&v64 = *a2 / *v20;
  if ((a2 + 2) > a3)
  {
    goto LABEL_90;
  }

  if (v19 > (a2 + 2))
  {
    goto LABEL_90;
  }

  *(&v64 + 1) = a2[1] / v24;
  if (a2 + 3 < a2)
  {
    goto LABEL_90;
  }

  v25 = a2 + 4;
  if ((a2 + 4) > a3)
  {
    goto LABEL_90;
  }

  if (a2 + 3 > v25)
  {
    goto LABEL_90;
  }

  *&v65 = a2[3] / v24;
  if (v25 < a2)
  {
    goto LABEL_90;
  }

  if ((a2 + 5) > a3)
  {
    goto LABEL_90;
  }

  if (v25 > a2 + 5)
  {
    goto LABEL_90;
  }

  *(&v65 + 1) = *v25 / v24;
  v26 = a4 + 1;
  if ((a4 + 1) > a5 || v26 < a4)
  {
    goto LABEL_90;
  }

  v27 = fabsf(v24);
  if (*a4 != 0.0)
  {
    v28 = v20 - 1;
    if (v20 < 4 || v28 < v23)
    {
      goto LABEL_90;
    }

    if (fabsf(*v28) > v27)
    {
      LOWORD(v61) = 0;
      if ((a4 + 2) > a5 || v26 > a4 + 2)
      {
        goto LABEL_90;
      }

      if (*v26 != 0.0)
      {
        WORD1(v61) = 0;
      }
    }
  }

  if (a8 >= 1)
  {
    v29 = v20 + 2;
    if (v29 > v21 || v22 > v29)
    {
      goto LABEL_90;
    }

    if (fabsf(*v22) > v27)
    {
      v30 = 0;
      v31 = 3;
      do
      {
        v32 = &v61 + v30 + 6;
        v33 = &v61 + v30 + 8;
        v34 = v32 < &v61 || v33 > &v62;
        if (v34 || v32 > v33)
        {
          goto LABEL_90;
        }

        *(&v61 + v31--) = 0;
        v30 -= 2;
      }

      while (v31 > (3 - a8));
    }
  }

  v36 = w_vquant(&v64, &v61, 0, 0, &hvq_class_c, hvq_cb_search_overlap24k, 4, 0);
  if (a9 == 24400)
  {
    v37 = &hvq_cb_search_overlap24k[2 * (17 - a10)];
    if (v37 < hvq_cb_search_overlap24k)
    {
      goto LABEL_90;
    }

    v38 = v37 + 2;
    v39 = hvq_cb_search_overlap32k;
  }

  else
  {
    v37 = &hvq_cb_search_overlap32k[2 * (23 - a10)];
    if (v37 < hvq_cb_search_overlap32k)
    {
      goto LABEL_90;
    }

    v38 = v37 + 2;
    v39 = hvq_peak_cb;
  }

  if (v38 > v39 || v37 > v38)
  {
LABEL_90:
    __break(0x5519u);
  }

  v40 = *v37;
  if (v36 == 2)
  {
    v45 = &hvq_peak_cb[4 * (512 - 4 * v40)];
    if (v45 < hvq_peak_cb)
    {
      goto LABEL_90;
    }

    v42 = 1;
    v44 = w_vquant(&v64, &v61, &v62, &v64, v45, &hvq_cp_huff_len, v40 + 128, 1);
    goto LABEL_61;
  }

  if (v36 == 1)
  {
    v43 = &hvq_peak_cb[4 * (512 - 4 * v40)];
    if (v43 < hvq_peak_cb)
    {
      goto LABEL_90;
    }

    v44 = w_vquant(&v64, &v61, &v62, &v64, v43, &hvq_cp_huff_len, v40 + 128, 0);
    v42 = 0;
LABEL_61:
    v41 = v44 - v40 + 128;
    goto LABEL_63;
  }

  if (v36)
  {
    v42 = 1;
    v41 = w_vquant(&v64, &v61, &v62, &v64, hvq_peak_cb, &hvq_cp_huff_len, v40 + 128, 1);
  }

  else
  {
    v41 = w_vquant(&v64, &v61, &v62, &v64, hvq_peak_cb, &hvq_cp_huff_len, v40 + 128, 0);
    v42 = 0;
  }

LABEL_63:
  *a7 = v41;
  push_indice(a1, 831, v42, 1);
  v46 = *a6;
  v47 = *a6 + 4;
  if (v47 > *(a6 + 8))
  {
    goto LABEL_90;
  }

  if (v46 > v47)
  {
    goto LABEL_90;
  }

  v48 = *(a6 + 16);
  if (v46 < v48)
  {
    goto LABEL_90;
  }

  *a4 = (*a4 * (v61 ^ 1)) + (v61 * (*&v62 * *v46));
  v49 = *a6;
  v50 = *a6 + 4;
  if (v50 > *(a6 + 8))
  {
    goto LABEL_90;
  }

  if (v49 > v50)
  {
    goto LABEL_90;
  }

  if (v49 < v48)
  {
    goto LABEL_90;
  }

  v51 = a4 + 2;
  if ((a4 + 2) > a5)
  {
    goto LABEL_90;
  }

  if (v26 > v51)
  {
    goto LABEL_90;
  }

  *v26 = (*v26 * (WORD1(v61) ^ 1)) + (SWORD1(v61) * (*(&v62 + 1) * *v49));
  v52 = *a6;
  v53 = *a6 + 4;
  if (v53 > *(a6 + 8))
  {
    goto LABEL_90;
  }

  if (v52 > v53)
  {
    goto LABEL_90;
  }

  if (v52 < v48)
  {
    goto LABEL_90;
  }

  if (v51 < a4)
  {
    goto LABEL_90;
  }

  v54 = a4 + 3;
  if ((a4 + 3) > a5)
  {
    goto LABEL_90;
  }

  if (v51 > v54)
  {
    goto LABEL_90;
  }

  *v51 = *v52;
  v55 = *a6;
  v56 = *a6 + 4;
  if (v56 > *(a6 + 8))
  {
    goto LABEL_90;
  }

  if (v55 > v56)
  {
    goto LABEL_90;
  }

  if (v55 < v48)
  {
    goto LABEL_90;
  }

  if (v54 < a4)
  {
    goto LABEL_90;
  }

  v57 = a4 + 4;
  if ((a4 + 4) > a5)
  {
    goto LABEL_90;
  }

  if (v54 > v57)
  {
    goto LABEL_90;
  }

  *v54 = (*v54 * (WORD2(v61) ^ 1)) + (SWORD2(v61) * (*&v63 * *v55));
  v58 = *a6;
  v59 = *a6 + 4;
  if (v59 > *(a6 + 8) || v58 > v59 || v58 < v48 || v57 < a4 || (a4 + 5) > a5 || v57 > a4 + 5)
  {
    goto LABEL_90;
  }

  result = (*v57 * (HIWORD(v61) ^ 1)) + (SHIWORD(v61) * (*v58 * *(&v63 + 1)));
  *v57 = result;
  return result;
}

uint64_t hvq_pvq_bitalloc(int a1, int a2, int a3, unint64_t a4, unint64_t a5, int a6, __int16 a7, uint64_t a8, _WORD *a9, unint64_t a10, unint64_t a11, unint64_t a12, __int16 *a13, unint64_t a14, _WORD *a15)
{
  if (a3 == 3)
  {
    v15 = 33;
  }

  else
  {
    v15 = 31;
  }

  if (a3 == 3)
  {
    v16 = 5462;
  }

  else
  {
    v16 = 6554;
  }

  if (a3 == 3)
  {
    v17 = 7282;
  }

  else
  {
    v17 = 9362;
  }

  if (a2 == 24400)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  if (a2 == 24400)
  {
    v19 = 80;
  }

  else
  {
    v19 = 95;
  }

  v20 = a1 / v19;
  v21 = a1 % v19;
  v22 = (a1 % v19);
  if (v22 > 29)
  {
    LOWORD(v20) = v20 + 1;
  }

  result = v20;
  if (v22 <= 29)
  {
    v24 = v19;
  }

  else
  {
    v24 = 0;
  }

  v25 = v20 - 1;
  if (result < 1)
  {
    return 0;
  }

  v26 = 0;
  v27 = v24 + v21;
  if (a2 == 24400)
  {
    v28 = 22;
  }

  else
  {
    v28 = 25;
  }

  *a15 = 0;
  v29 = 0.0;
  v30 = v28;
  do
  {
    v31 = (a4 + 2 * v28);
    v32 = v31 + 1;
    if (v31 < a4 || v32 > a5 || v31 >= v32)
    {
      goto LABEL_110;
    }

    v35 = *v31;
    v36 = &dicn[v35];
    v37 = v36 + 1;
    v38 = v36 < dicn || v37 > band_len_harm;
    if (v38 || v36 >= v37)
    {
      goto LABEL_110;
    }

    v26 += v35;
    if (*v36 > v29)
    {
      v29 = *v36;
      v30 = v28;
    }

    ++v28;
  }

  while (v15 > v28);
  v40 = &band_len_harm[2 * v30];
  v41 = v40 + 1;
  if (v40 < band_len_harm || v41 > &word_19B3A21A2 || v40 >= v41)
  {
    goto LABEL_110;
  }

  v44 = *v40;
  if (v44 == 96)
  {
    v45 = 61;
  }

  else
  {
    v46 = &hBitsN + 2 * v44;
    v47 = v46 + 2;
    if (v46 < &hBitsN || v47 > FLAC__StreamDecoderErrorStatusString || v46 >= v47)
    {
      goto LABEL_110;
    }

    v50 = *v46;
    v51 = v46[1];
    v52 = *v46 + 1;
    if (v52 >= v51 || v52 < v50)
    {
      goto LABEL_110;
    }

    v45 = *v52 + 1;
  }

  v54 = (a4 + 2 * v30);
  v55 = (v54 + 1);
  if (v54 < a4 || v55 > a5 || v54 >= v55)
  {
    goto LABEL_110;
  }

  v58 = &E_max5_tbl[*v54];
  v59 = v58 + 1;
  v60 = v58 < E_max5_tbl || v59 > dword_19B3A2244;
  if (v60 || v58 >= v59)
  {
    goto LABEL_110;
  }

  v62 = *v54;
  if (v62 <= 0)
  {
    v63 = 0;
  }

  else
  {
    v63 = (v62 - 1) >> 1;
  }

  v64 = *v58;
  v65 = v63 - a7 - 2;
  v66 = (v64 >> v65) - a6;
  v67 = v64 - (a6 >> -v65);
  if ((v65 & 0x8000) == 0)
  {
    v67 = v66;
  }

  if (v67 >= 1 && result != 1 && v18 * v26 - (v62 << 16) > 196608)
  {
    if (8 * v27 - 40 >= v45)
    {
      if ((a13 + 1) > a14)
      {
        goto LABEL_110;
      }

      if (a13 + 1 < a13)
      {
        goto LABEL_110;
      }

      *a13 = v30;
      ++*a15;
      v68 = (a11 + 2 * v30);
      if (v68 < a11 || (v68 + 1) > a12 || v68 > v68 + 1)
      {
        goto LABEL_110;
      }

      *v68 = 1;
    }

    goto LABEL_97;
  }

  if (result != 1)
  {
LABEL_97:
    v70 = v19 - 5;
    if (v25 <= 1)
    {
      v71 = 1;
    }

    else
    {
      v71 = v25;
    }

    v72 = a9;
    while (v72 >= a9 && (v72 + 1) <= a10 && v72 <= v72 + 1)
    {
      *v72++ = v70;
      if (!--v71)
      {
        v69 = (v20 - 1);
        goto LABEL_106;
      }
    }

    goto LABEL_110;
  }

  v69 = 0;
LABEL_106:
  v73 = &a9[v69];
  if (v73 >= a9 && (v73 + 1) <= a10 && v73 <= v73 + 1)
  {
    *v73 = v27 - 5;
    return result;
  }

LABEL_110:
  __break(0x5519u);
  return result;
}

const char *hvq_concat_bands(const char *result, unint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (result >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = result;
    v10 = result - a4;
    v11 = a7;
    do
    {
      if (v7 >= v10)
      {
        v12 = v11 - 1;
        if ((v11 - 1) < a7 || v12 > v11 || (*(a5 + 2 * v7) = *v12, v13 = (a2 + 2 * v8), v13 < a2) || (v13 + 1) > a3 || v13 > v13 + 1 || ((v14 = &band_len_harm[2 * *v13], result = v14 + 2, v14 >= band_len_harm) ? (v15 = result > &word_19B3A21A2) : (v15 = 1), !v15 ? (v16 = v14 > result) : (v16 = 1), v16 || (*(a6 + 2 * v7) = *v14, v17 = &band_len_harm[2 * *v13], v17 < band_len_harm) || v17 + 2 > &word_19B3A21A2 || v17 > v17 + 2))
        {
          __break(0x5519u);
          return result;
        }

        *v11 = *v17 + *(v11 - 1);
        ++v8;
      }

      else
      {
        *(a5 + 2 * v7) = 24 * v7;
        *(a6 + 2 * v7) = 24;
        *v11 = 24 * v7 + 24;
      }

      ++v7;
      ++v11;
    }

    while (v9 != v7);
  }

  return result;
}

uint64_t w_vquant(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int a7, int a8)
{
  if (a8)
  {
    if (a7 >= 1)
    {
      v9 = 0;
      result = 0;
      v11 = 0;
      v12 = 1.0e16;
LABEL_4:
      v13 = (a5 + 4 * v11);
      v11 += 4;
      v14 = 3;
      v15 = 0.0;
      while (1)
      {
        v16 = v14;
        v17 = (a1 + 4 * v14);
        v18 = (v17 + 1);
        v19 = v17 < a1 || v18 > a1 + 16;
        v20 = v19 || v17 > v18;
        v21 = v13 + 1;
        v22 = !v20 && v13 >= a5;
        v23 = !v22 || v21 > a6;
        v24 = v23 || v13 > v21;
        v25 = (a2 + 2 * v16);
        v26 = (v25 + 1);
        v27 = !v24 && v25 >= a2;
        v28 = !v27 || v26 > a2 + 8;
        if (v28 || v25 > v26)
        {
          goto LABEL_84;
        }

        v30 = *v13++;
        v15 = v15 + (*v25 * ((*v17 - v30) * (*v17 - v30)));
        v14 = v16 - 1;
        if (!v16)
        {
          if (v15 >= v12)
          {
            result = result;
          }

          else
          {
            result = v9;
          }

          if (v15 < v12)
          {
            v12 = v15;
          }

          if (++v9 != a7)
          {
            goto LABEL_4;
          }

          if (a3)
          {
            goto LABEL_55;
          }

          return result;
        }
      }
    }

    result = 0;
    if (a3)
    {
LABEL_55:
      v38 = (a5 + 16 * result);
      v39 = 3;
      while (v38 >= a5)
      {
        if ((v38 + 1) > a6)
        {
          break;
        }

        if (v38 > v38 + 1)
        {
          break;
        }

        v40 = (a3 + 4 * v39);
        if (v40 < a3 || (v40 + 1) > a4 || v40 > v40 + 1)
        {
          break;
        }

        v41 = *v38++;
        *v40 = v41;
        if (--v39 == -1)
        {
          return result;
        }
      }

LABEL_84:
      __break(0x5519u);
    }
  }

  else
  {
    if (a7 >= 1)
    {
      v31 = 0;
      result = 0;
      v32 = 0;
      v33 = 1.0e16;
LABEL_41:
      v34 = 0;
      v35 = (a5 + 4 * v32);
      v32 += 4;
      v36 = 0.0;
      while (v35 >= a5 && (v35 + 1) <= a6 && v35 <= v35 + 1)
      {
        v37 = *v35++;
        v36 = v36 + (*(a2 + 2 * v34) * ((*(a1 + 4 * v34) - v37) * (*(a1 + 4 * v34) - v37)));
        if (++v34 == 4)
        {
          if (v36 >= v33)
          {
            result = result;
          }

          else
          {
            result = v31;
          }

          if (v36 < v33)
          {
            v33 = v36;
          }

          if (++v31 != a7)
          {
            goto LABEL_41;
          }

          if (a3)
          {
            goto LABEL_65;
          }

          return result;
        }
      }

      goto LABEL_84;
    }

    result = 0;
    if (a3)
    {
LABEL_65:
      v42 = 0;
      v43 = a5 + 16 * result;
      while (1)
      {
        v44 = (v43 + v42);
        v45 = v43 + v42 + 4;
        v46 = v43 + v42 < a5 || v45 > a6;
        v47 = v46 || v44 > v45;
        v48 = (a3 + v42);
        v49 = a3 + v42 + 4;
        v50 = !v47 && v48 >= a3;
        v51 = !v50 || v49 > a4;
        if (v51 || v48 > v49)
        {
          break;
        }

        *v48 = *v44;
        v42 += 4;
        if (v42 == 16)
        {
          return result;
        }
      }

      goto LABEL_84;
    }
  }

  return result;
}

uint64_t update_rsubband(uint64_t result, unint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    while (result < 1)
    {
LABEL_16:
      if (a3 < 1)
      {
        return result;
      }
    }

    v3 = 2 * result;
    v4 = result;
    while (1)
    {
      v5 = a2 + v3;
      v6 = a2 + v3 - 2;
      v7 = v6 < a2 || v5 > a2 + 2 * result;
      if (v7 || v6 > v5)
      {
        break;
      }

      v9 = a2 + 2 * v4;
      v10 = *(v9 - 2);
      if (v10 >= 25)
      {
        *(v9 - 2) = v10 - 8;
        LOWORD(a3) = a3 - 1;
      }

      v3 -= 2;
      v11 = __OFSUB__(v4--, 1);
      if (!a3 || (v4 < 0) ^ v11 | (v4 == 0))
      {
        goto LABEL_16;
      }
    }

    __break(0x5519u);
  }

  return result;
}

unint64_t reordvct(unint64_t result, unint64_t a2, int a3, unint64_t a4, unint64_t a5)
{
  if ((a3 - 1) >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = a3;
    v8 = a3;
    v9 = 1;
    while (1)
    {
      v10 = v6 + 1;
      if (v6 + 1 < v8)
      {
        break;
      }

      v13 = v6;
LABEL_26:
      v23 = (result + 2 * v6);
      if (v23 < result)
      {
        goto LABEL_42;
      }

      if ((v23 + 1) > a2 || v23 > v23 + 1)
      {
        goto LABEL_42;
      }

      v25 = (result + 2 * v13);
      if (v25 < result)
      {
        goto LABEL_42;
      }

      if ((v25 + 1) > a2)
      {
        goto LABEL_42;
      }

      if (v25 > v25 + 1)
      {
        goto LABEL_42;
      }

      v26 = *v23;
      *v23 = *v25;
      *v25 = v26;
      v27 = (a4 + 2 * v6);
      if (v27 < a4)
      {
        goto LABEL_42;
      }

      if ((v27 + 1) > a5)
      {
        goto LABEL_42;
      }

      if (v27 > v27 + 1)
      {
        goto LABEL_42;
      }

      v28 = (a4 + 2 * v13);
      if (v28 < a4 || (v28 + 1) > a5 || v28 > v28 + 1)
      {
        goto LABEL_42;
      }

      v29 = *v27;
      *v27 = *v28;
      *v28 = v29;
      ++v9;
      v5 += 2;
      v6 = v10;
      if (v9 == v7)
      {
        return result;
      }
    }

    v11 = v5;
    v12 = v9;
    v13 = v6;
    while (1)
    {
      v14 = (result + 2 * v13);
      v15 = v14 + 1;
      v16 = v14 < result || v15 > a2;
      v17 = v16 || v14 > v15;
      v18 = result + v11 + 2;
      v19 = result + v11 + 4;
      v20 = !v17 && v18 >= result;
      v21 = !v20 || v19 > a2;
      if (v21 || v18 > v19)
      {
        break;
      }

      if (*v14 < *(result + 2 * v12))
      {
        v13 = v12;
      }

      ++v12;
      v11 += 2;
      if (v7 == v12)
      {
        goto LABEL_26;
      }
    }

LABEL_42:
    __break(0x5519u);
  }

  return result;
}

__int16 *bitalloc(__int16 *result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, int a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, __int16 a11)
{
  if (a11 == 2)
  {
    v11 = 22;
  }

  else
  {
    v11 = 24;
  }

  v12 = a5 >> 3;
  if (a5 >> 3 >= 1)
  {
    if ((result + 1) > a2 || result + 1 < result)
    {
LABEL_187:
      __break(0x5519u);
      return result;
    }

    LOWORD(v13) = 0;
    v14 = (a6 - 1);
    LOWORD(v15) = 1;
    do
    {
      v16 = a5;
      v17 = *result;
      if (v15 >= 2)
      {
        v18 = 0;
        v19 = 0;
        v20 = 1;
        while (1)
        {
          v21 = &result[v18 + 1];
          v22 = &result[v18 + 2];
          v23 = v21 < result || v22 > a2;
          if (v23 || v21 > v22)
          {
            goto LABEL_187;
          }

          v25 = result[v20];
          v26 = v17 < v25;
          if (v17 <= v25)
          {
            v17 = result[v20];
          }

          if (v26)
          {
            v19 = v20;
          }

          ++v20;
          ++v18;
          if (v15 == v20)
          {
            v27 = v15;
            goto LABEL_24;
          }
        }
      }

      v19 = 0;
      v27 = 1;
LABEL_24:
      v28 = &result[v27];
      v29 = v28 + 1;
      if (v28 < result || v29 > a2 || v28 > v29)
      {
        goto LABEL_187;
      }

      v32 = v17 < *v28;
      if (v32)
      {
        v19 = v27;
      }

      v33 = v14 > v15 && v32;
      v34 = (a3 + 2 * v19);
      v35 = v34 + 1;
      v36 = v34 < a3 || v35 > a4;
      if (v36 || v34 > v35)
      {
        goto LABEL_187;
      }

      v38 = *v34;
      v39 = (a9 + 2 * v38);
      v40 = (v39 + 1);
      v41 = v39 < a9 || v40 > a10;
      if (v41 || v39 > v40)
      {
        goto LABEL_187;
      }

      v15 = (v15 + v33);
      if (*v39 > v16)
      {
        goto LABEL_65;
      }

      v43 = (a7 + 2 * v38);
      v44 = v43 + 1;
      if (v43 < a7 || v44 > a8 || v43 > v44)
      {
        goto LABEL_187;
      }

      if (*v43 > 6)
      {
LABEL_65:
        v49 = &result[v19];
        v50 = v49 + 1;
        if (v49 < result || v50 > a2 || v49 > v50)
        {
          goto LABEL_187;
        }

        *v49 = 0x8000;
        if (++v19 == v15 && v15 < v14)
        {
          LOWORD(v15) = v15 + 1;
        }

        a5 = v16;
      }

      else
      {
        v47 = &result[v19];
        if (v47 < result || (v47 + 1) > a2 || v47 > v47 + 1)
        {
          goto LABEL_187;
        }

        *v47 -= 3;
        v48 = ++*v43;
        if (v48 >= 7)
        {
          *v47 = 0x8000;
        }

        a5 = v16 - *v39;
      }

      if (a5 < 8 || v16 == a5)
      {
        break;
      }

      if ((a6 - 2) < v19 && a6 >= 1)
      {
        LOWORD(v54) = 0;
        do
        {
          v55 = &result[v54];
          v56 = v55 + 1;
          v57 = v55 < result || v56 > a2;
          if (v57 || v55 > v56)
          {
            goto LABEL_187;
          }

          if (*v55 != -32768)
          {
            if (v14 > v54)
            {
              LOWORD(v15) = v54 + 1;
            }

            break;
          }

          v54 = (v54 + 1);
        }

        while (v54 < a6);
      }

      v13 = (v13 + 1);
    }

    while (v13 < v12);
    if (a5 >= 16)
    {
      if (a6 < 1)
      {
        return result;
      }

      v59 = 0;
      while (1)
      {
        v60 = (a3 + 2 * v59);
        v61 = v60 + 1;
        v62 = v60 < a3 || v61 > a4;
        if (v62 || v60 > v61)
        {
          goto LABEL_187;
        }

        v64 = *v60;
        if (v64 >= 16 && v11 > v64)
        {
          v66 = (a7 + 2 * v64);
          v67 = v66 + 1;
          if (v66 < a7 || v67 > a8 || v66 > v67)
          {
            goto LABEL_187;
          }

          if (!*v66)
          {
            *v66 = 1;
            v70 = a5 - 16;
            v71 = a5;
            LOWORD(a5) = a5 - 16;
            if (v71 < 32)
            {
              goto LABEL_144;
            }
          }
        }

        if (a6 <= ++v59)
        {
          v72 = 0;
          v70 = a5;
          while (1)
          {
            v73 = (a3 + 2 * v72);
            v74 = v73 + 1;
            v75 = v73 < a3 || v74 > a4;
            if (v75 || v73 > v74)
            {
              goto LABEL_187;
            }

            v77 = *v73;
            if (v77 >= 16 && v11 > v77)
            {
              v79 = (a7 + 2 * v77);
              v80 = v79 + 1;
              if (v79 < a7 || v80 > a8 || v79 > v80)
              {
                goto LABEL_187;
              }

              if (*v79 == 1)
              {
                *v79 = 2;
                v83 = v70;
                v70 -= 16;
                if (v83 < 32)
                {
                  goto LABEL_144;
                }
              }
            }

            if (a6 <= ++v72)
            {
              goto LABEL_144;
            }
          }
        }
      }
    }

    v70 = a5;
LABEL_144:
    if (v70 >= 8 && a6 >= 1)
    {
      v84 = 0;
      while (1)
      {
        v85 = (a3 + 2 * v84);
        v86 = v85 + 1;
        v87 = v85 < a3 || v86 > a4;
        if (v87 || v85 > v86)
        {
          goto LABEL_187;
        }

        v89 = *v85;
        if (v89 <= 15)
        {
          v90 = (a7 + 2 * v89);
          v91 = v90 + 1;
          if (v90 < a7 || v91 > a8 || v90 > v91)
          {
            goto LABEL_187;
          }

          if (!*v90)
          {
            *v90 = 1;
            if (v70 < 16)
            {
              return result;
            }

            v70 -= 8;
          }
        }

        if (a6 <= ++v84)
        {
          v94 = 0;
          while (1)
          {
            v95 = (a3 + 2 * v94);
            v96 = v95 + 1;
            v97 = v95 < a3 || v96 > a4;
            if (v97 || v95 > v96)
            {
              goto LABEL_187;
            }

            v99 = *v95;
            if (v99 <= 15)
            {
              v100 = (a7 + 2 * v99);
              v101 = v100 + 1;
              if (v100 < a7 || v101 > a8 || v100 > v101)
              {
                goto LABEL_187;
              }

              if (*v100 == 1)
              {
                *v100 = 2;
                if (v70 < 16)
                {
                  return result;
                }

                v70 -= 8;
              }
            }

            if (a6 <= ++v94)
            {
              return result;
            }
          }
        }
      }
    }
  }

  return result;
}

__int16 *bitallocsum(__int16 *result, int a2, _WORD *a3, _WORD *a4, __int16 a5, int a6, __int16 *a7)
{
  if (a2 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = a2;
    v9 = result;
    v10 = a4;
    do
    {
      v12 = *v9++;
      v11 = v12;
      v13 = *a7++;
      v14 = v13 * v11;
      *v10++ = 8 * v14;
      v7 += v14;
      --v8;
    }

    while (v8);
  }

  *a3 = v7;
  if (a6 <= 640)
  {
    v15 = (a5 - v7);
    if (v15 >= 1)
    {
      v16 = 0;
      while (1)
      {
        v17 = &result[v16];
        v18 = (v17 + 1);
        v19 = v17 < result || v18 > &result[a2];
        if (v19 || v17 >= v18)
        {
          break;
        }

        if (*v17 >= 1)
        {
          v21 = &a4[v16];
          if (v21 < a4 || v21 + 1 > &a4[a2] || v21 > v21 + 1)
          {
            break;
          }

          *v21 += 8;
          LOWORD(v15) = v15 - 1;
          ++*a3;
        }

        if (a2 > (v16 + 1))
        {
          ++v16;
        }

        else
        {
          v16 = 0;
        }

        if (v15 <= 0)
        {
          return result;
        }
      }

      __break(0x5519u);
    }
  }

  return result;
}

uint64_t Bit_group_fx(unint64_t a1, unint64_t a2, int a3, int a4, int a5, int a6, unint64_t a7, unint64_t a8, __int16 *a9, unint64_t a10)
{
  *v204 = *MEMORY[0x1E69E9840];
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v203[0] = v11;
  v203[1] = v11;
  v202[0] = v11;
  v202[1] = v11;
  memset(v201, 0, sizeof(v201));
  v198 = 0;
  v199 = -1431655766;
  v12 = 6554;
  if (a6 < -32762 || (a6 != 6 ? (v12 = 6554) : (v12 = 5462), a6 == -32762))
  {
    v13 = 1;
    v198 = 1;
  }

  else
  {
    v13 = 0;
    if (a6 == 7)
    {
      v12 = 4682;
    }
  }

  v14 = (a5 * v12) >> 15;
  if ((v14 & 0x10000) != 0)
  {
    v14 |= 0xFFFF0000;
  }

  v191 = v14;
  if (v14 <= -32769)
  {
    v13 = 1;
    v198 = 1;
    v191 = 0x8000;
  }

  LODWORD(v15) = a4 - a3;
  if (a4 - a3 >= 0x8000)
  {
    LODWORD(v15) = 0x7FFF;
    v13 = 1;
    goto LABEL_18;
  }

  if (v15 > -32769)
  {
    if (v15 >= 1)
    {
LABEL_18:
      v16 = 0;
      v17 = v15;
      v15 = v15;
      v18 = v203;
      v19 = v202;
      do
      {
        v20 = a3 + v16;
        v21 = (a3 + v16);
        if (v20 >= -32768)
        {
          v22 = v13;
        }

        else
        {
          v22 = 1;
        }

        if (v20 < -32768)
        {
          v21 = -32768;
        }

        if (v20 < 0x8000)
        {
          v13 = v22;
        }

        else
        {
          v13 = 1;
        }

        if (v20 < 0x8000)
        {
          v23 = v21;
        }

        else
        {
          v23 = 0x7FFFLL;
        }

        v24 = (a1 + 2 * v23);
        v25 = v24 + 1;
        v27 = v24 < a1 || v25 > a2 || v24 > v25;
        v28 = v18 + 1;
        if (v27 || v18 < v203 || v28 > v204 || v18 > v28)
        {
          goto LABEL_414;
        }

        *v18 = *v24;
        if (v19 < v202 || v19 + 1 > v203 || v19 > v19 + 1)
        {
          goto LABEL_414;
        }

        *v19++ = v16++;
        ++v18;
        --v15;
      }

      while (v15);
      v198 = v13;
      v186 = 1;
      LODWORD(v15) = v17;
      goto LABEL_51;
    }

    v186 = 0;
  }

  else
  {
    v186 = 0;
    v13 = 1;
    v198 = 1;
    LODWORD(v15) = 0x8000;
  }

LABEL_51:
  v189 = v15;
  v32 = v15;
  reordvct(v203, v204, v15, v202, v203);
  result = div_s(1, v32);
  if (a6 <= -32764)
  {
    v198 = 1;
    v13 = 1;
LABEL_94:
    if (!v186)
    {
      goto LABEL_131;
    }

    v49 = 0;
    v51 = (a9 + 1) <= a10 && a9 + 1 >= a9;
    v52 = v189;
    v53 = v203;
    while (1)
    {
      v54 = (v49 >> 16) * result;
      if (v54 == 0x40000000)
      {
        v13 = 1;
      }

      if (!v51)
      {
        goto LABEL_414;
      }

      if (v54 == 0x40000000)
      {
        v55 = 0x7FFFFFFF;
      }

      else
      {
        v55 = 2 * v54;
      }

      v56 = v55 - 0x40000;
      v57 = v55 << 13;
      if (v55 >= 0)
      {
        v58 = 2147418112;
      }

      else
      {
        v58 = 0x80000000;
      }

      if (v56 >= 0xFFF80000)
      {
        v58 = v57;
      }

      v59 = *a9 - (v58 >> 16);
      if (v59 >= 0x8000)
      {
        break;
      }

      if (v59 < -32768)
      {
        v59 = -32768;
        goto LABEL_117;
      }

      v59 = v59;
LABEL_119:
      if (v53 < v203 || v53 + 1 > v204 || v53 > v53 + 1)
      {
        goto LABEL_414;
      }

      v60 = v59 * *v53;
      if (v60 == 0x40000000)
      {
        HIWORD(v61) = 0x7FFF;
        v13 = 1;
      }

      else
      {
        if (v60 >= 0)
        {
          HIWORD(v61) = 0x7FFF;
        }

        else
        {
          HIWORD(v61) = 0x8000;
        }

        if ((2 * v60 - 0x20000000) >> 30 == 3)
        {
          v61 = 8 * v60;
        }
      }

      *v53++ = HIWORD(v61);
      v49 += 0x10000;
      if (!--v52)
      {
        goto LABEL_130;
      }
    }

    v59 = 0x7FFF;
LABEL_117:
    v13 = 1;
    goto LABEL_119;
  }

  if ((a6 - 5) <= 0)
  {
    goto LABEL_94;
  }

  if (!v186)
  {
    goto LABEL_131;
  }

  v34 = 0;
  v35 = a9 + 1;
  v38 = (a9 + 2) <= a10 && v35 <= a9 + 2 && v35 >= a9;
  v39 = v189;
  v40 = v203;
  do
  {
    v41 = (v34 >> 16) * result;
    if (v41 == 0x40000000)
    {
      v13 = 1;
    }

    if (!v38)
    {
      goto LABEL_414;
    }

    if (v41 == 0x40000000)
    {
      v42 = 0x7FFFFFFF;
    }

    else
    {
      v42 = 2 * v41;
    }

    v43 = v42 - 0x40000;
    v44 = v42 << 13;
    if (v42 >= 0)
    {
      v45 = 2147418112;
    }

    else
    {
      v45 = 0x80000000;
    }

    if (v43 >= 0xFFF80000)
    {
      v45 = v44;
    }

    v46 = *v35 - (v45 >> 16);
    if (v46 < 0x8000)
    {
      if (v46 >= -32768)
      {
        v46 = v46;
        goto LABEL_82;
      }

      v46 = -32768;
    }

    else
    {
      v46 = 0x7FFF;
    }

    v13 = 1;
LABEL_82:
    if (v40 < v203 || v40 + 1 > v204 || v40 > v40 + 1)
    {
      goto LABEL_414;
    }

    v47 = v46 * *v40;
    if (v47 == 0x40000000)
    {
      HIWORD(v48) = 0x7FFF;
      v13 = 1;
    }

    else
    {
      if (v47 >= 0)
      {
        HIWORD(v48) = 0x7FFF;
      }

      else
      {
        HIWORD(v48) = 0x8000;
      }

      if ((2 * v47 - 0x20000000) >> 30 == 3)
      {
        v48 = 8 * v47;
      }
    }

    *v40++ = HIWORD(v48);
    v34 += 0x10000;
    --v39;
  }

  while (v39);
LABEL_130:
  v198 = v13;
LABEL_131:
  v200 = 49152 * v189;
  if (v32 >= 0)
  {
    v62 = 2147418112;
  }

  else
  {
    v62 = 0x80000000;
  }

  if ((49152 * v189 - 0x1000000) >> 25 == 127)
  {
    v63 = 6291456 * v189;
  }

  else
  {
    v63 = v62;
  }

  v64 = v191 << 7;
  if (v64 != (v191 << 7))
  {
    v13 = 1;
    v198 = 1;
    if (v191 > 0)
    {
      LOWORD(v64) = 0x7FFF;
    }

    else
    {
      LOWORD(v64) = 0x8000;
    }
  }

  v65 = v64 - (v63 >> 16);
  if (v65 >= 0x8000)
  {
    v13 = 1;
    v198 = 1;
    goto LABEL_146;
  }

  if (v65 <= -32769)
  {
    v13 = 1;
    v198 = 1;
    goto LABEL_163;
  }

  if ((v65 & 0x80000000) == 0)
  {
LABEL_146:
    if (v186)
    {
      v66 = v189;
      v67 = v203;
      v68 = v201;
      do
      {
        v69 = v67 + 1;
        if (v67 < v203 || v69 > v204 || v67 > v69)
        {
          goto LABEL_414;
        }

        if (*v67 < 0)
        {
          *v67 = 0;
        }

        if (v68 < v201 || v68 + 1 > v202 || v68 > v68 + 1)
        {
          goto LABEL_414;
        }

        *v68++ = 0x200000;
        ++v67;
        --v66;
      }

      while (v66);
    }

    if (v189 == 0x8000)
    {
      LOWORD(v72) = 0;
      v198 = 1;
      LOWORD(v73) = 0x8000;
    }

    else
    {
      v73 = (v189 - 1);
      if (v73 < 0)
      {
        LOWORD(v72) = 0;
      }

      else
      {
        LOWORD(v138) = 0;
        v72 = 0;
        do
        {
          v139 = v203 + v138;
          v140 = v139 + 1;
          if (v139 < v203 || v140 > v204 || v139 > v140)
          {
            goto LABEL_414;
          }

          v143 = v72 + *v139;
          if (v143 <= -32768)
          {
            v144 = -32768;
          }

          else
          {
            v144 = v143;
          }

          if (v143 != v143)
          {
            v13 = 1;
          }

          if (v144 >= 0x7FFF)
          {
            v72 = 0x7FFF;
          }

          else
          {
            v72 = v144;
          }

          v138 = (v138 + 1);
        }

        while (v138 <= v73);
        v198 = v13;
      }
    }

    if (!v186)
    {
      return result;
    }

    LOWORD(v145) = 0;
    if (((a6 - 1024) >> 11) >= 0x1Fu)
    {
      v146 = a6 << 21;
    }

    else
    {
      v146 = (a6 >> 15) ^ 0x7FFFFFFF;
    }

    v196 = v146;
    while (2)
    {
      v147 = v72;
      v192 = v72;
      if (v72 == 0xFFFF)
      {
        v153 = 15;
      }

      else
      {
        if (!v72)
        {
          if ((v73 & 0x8000) == 0)
          {
            LOWORD(v148) = 0;
            do
            {
              v149 = v201 + v148;
              v150 = v149 + 1;
              v151 = v149 < v201 || v150 > v202;
              if (v151 || v149 > v150)
              {
                goto LABEL_414;
              }

              *v149 = 0;
              v148 = (v148 + 1);
            }

            while (v148 <= v73);
          }

LABEL_369:
          v200 = v196;
          v166 = v201 + v73;
          if (v166 < v201 || v166 + 1 > v202 || v166 > v166 + 1)
          {
            goto LABEL_414;
          }

          v167 = *v166;
          v168 = v167 - v196;
          if ((v196 ^ v167) < 0 && (v168 ^ v167) < 0)
          {
            v198 = 1;
            if ((v167 & 0x80000000) == 0)
            {
              goto LABEL_385;
            }
          }

          else if ((v168 & 0x80000000) == 0)
          {
            goto LABEL_385;
          }

          *(v201 + v73) = 0;
          v169 = v203 + v73;
          if (v169 < v203 || v169 + 1 > v204 || v169 > v169 + 1)
          {
            goto LABEL_414;
          }

          v72 = v192 - *v169;
          if (v72 < 0x8000)
          {
            v170 = v189;
            if (v72 <= -32769)
            {
              v198 = 1;
              LOWORD(v72) = 0x8000;
            }
          }

          else
          {
            v198 = 1;
            LOWORD(v72) = 0x7FFF;
            v170 = v189;
          }

          LOWORD(v73) = v73 - 1;
          v145 = (v145 + 1);
          if (v145 >= v170)
          {
            goto LABEL_385;
          }

          continue;
        }

        v154 = (v72 ^ (v147 >> 15));
        if (v154 >= 0x4000)
        {
          v153 = 0;
        }

        else
        {
          v153 = 0;
          do
          {
            v154 = (2 * v154);
            ++v153;
          }

          while (v154 < 0x4000);
        }
      }

      break;
    }

    v155 = shl(v147, v153, &v198);
    result = div_s(0x4000, v155);
    if (a5 * result == 0x40000000)
    {
      v198 = 1;
      v156 = 0x7FFFFFFFLL;
      if ((v73 & 0x8000) == 0)
      {
        goto LABEL_352;
      }
    }

    else
    {
      v156 = (2 * a5 * result);
      if ((v73 & 0x8000) == 0)
      {
LABEL_352:
        LOWORD(v157) = 0;
        while (1)
        {
          v158 = v203 + v157;
          v159 = v158 + 1;
          v160 = v158 < v203 || v159 > v204;
          if (v160 || v158 > v159)
          {
            break;
          }

          v162 = *v158;
          if (v162 == v162)
          {
            v163 = v162 << 24;
          }

          else
          {
            v163 = (v162 >> 15) ^ 0x7FFFFFFF;
          }

          v200 = v163;
          Mpy_32_32_ss(v156, v163, &v200, &v199, &v198);
          v164 = v153 - 2;
          if (v153 <= -32767)
          {
            v198 = 1;
            v164 = 0x8000;
          }

          v157 = v157;
          v165 = v201 + 4 * v157;
          if (v165 < v201 || v165 + 4 > v202 || v165 > v165 + 4)
          {
            break;
          }

          result = L_shl(v200, v164);
          *(v201 + v157) = result;
          LODWORD(v157) = (v157 + 1);
          if (v157 > v73)
          {
            goto LABEL_369;
          }
        }

LABEL_414:
        __break(0x5519u);
      }
    }

    goto LABEL_369;
  }

LABEL_163:
  if (v191 >= 1)
  {
    v74 = v191;
    v75 = v203;
    v76 = v201;
    do
    {
      v77 = v75 + 1;
      if (v75 < v203 || v77 > v204 || v75 > v77)
      {
        goto LABEL_414;
      }

      if (*v75 < 0)
      {
        *v75 = 0;
      }

      if (v76 < v201 || v76 + 1 > v202 || v76 > v76 + 1)
      {
        goto LABEL_414;
      }

      *v76++ = 0x200000;
      ++v75;
      --v74;
    }

    while (v74);
  }

  if (v191 < v189)
  {
    v80 = v189 - v191;
    v81 = v201 + v191;
    do
    {
      v82 = v81 + 1;
      if (v81 < v201 || v82 > v202 || v81 > v82)
      {
        goto LABEL_414;
      }

      *v81++ = 0;
      --v80;
    }

    while (v80);
  }

  if (v191 < 1)
  {
    goto LABEL_385;
  }

  v85 = 0;
  v86 = v191;
  v87 = v203;
  do
  {
    v88 = v87 + 1;
    if (v87 < v203 || v88 > v204 || v87 > v88)
    {
      goto LABEL_414;
    }

    v91 = *v87++;
    v92 = v85 + v91;
    if (v85 + v91 <= -32768)
    {
      v93 = -32768;
    }

    else
    {
      v93 = v92;
    }

    if (v92 != v92)
    {
      v13 = 1;
    }

    if (v93 >= 0x7FFF)
    {
      v85 = 0x7FFF;
    }

    else
    {
      v85 = v93;
    }

    --v86;
  }

  while (v86);
  LOWORD(v94) = 0;
  v95 = 0;
  v198 = v13;
  if (((a6 - 1024) >> 11) >= 0x1Fu)
  {
    v96 = a6 << 21;
  }

  else
  {
    v96 = (a6 >> 15) ^ 0x7FFFFFFF;
  }

  v195 = v191;
  while (2)
  {
    if (v85 == 0xFFFF)
    {
      v102 = 15;
    }

    else
    {
      if (!v85)
      {
        if (v195 < 1)
        {
          goto LABEL_274;
        }

        v188 = v94;
        v187 = v95;
        v97 = v195;
        v98 = v201;
        do
        {
          v99 = v98 + 1;
          if (v98 < v201 || v99 > v202 || v98 > v99)
          {
            goto LABEL_414;
          }

          *v98++ = 0;
          --v97;
        }

        while (v97);
        goto LABEL_250;
      }

      v103 = (v85 ^ (v85 >> 15));
      if (v103 >= 0x4000)
      {
        v102 = 0;
      }

      else
      {
        v102 = 0;
        do
        {
          v103 = (2 * v103);
          ++v102;
        }

        while (v103 < 0x4000);
      }
    }

    v104 = shl(v85, v102, &v198);
    result = div_s(0x4000, v104);
    if (a5 * result == 0x40000000)
    {
      v198 = 1;
      v105 = 0x7FFFFFFFLL;
    }

    else
    {
      v105 = (2 * a5 * result);
    }

    if (v195 < 1)
    {
LABEL_274:
      v117 = 0;
      v200 = v96;
      goto LABEL_298;
    }

    v188 = v94;
    v187 = v95;
    v106 = v195;
    v107 = v201;
    v108 = v203;
    do
    {
      v109 = v108 + 1;
      if (v108 < v203 || v109 > v204 || v108 > v109)
      {
        goto LABEL_414;
      }

      v112 = *v108;
      if (v112 == v112)
      {
        v113 = v112 << 24;
      }

      else
      {
        v113 = (v112 >> 15) ^ 0x7FFFFFFF;
      }

      v200 = v113;
      Mpy_32_32_ss(v105, v113, &v200, &v199, &v198);
      v114 = v102 - 2;
      if (v102 <= -32767)
      {
        v198 = 1;
        v114 = 0x8000;
      }

      if (v107 < v201 || v107 + 1 > v202 || v107 > v107 + 1)
      {
        goto LABEL_414;
      }

      *v107++ = L_shl(v200, v114);
      ++v108;
      --v106;
    }

    while (v106);
LABEL_250:
    v200 = v96;
    v115 = 0;
    v116 = 0;
    v117 = 0;
    v118 = v201;
    v119 = v203;
    v120 = v198;
    v121 = v195;
    while (2)
    {
      v122 = v201 + v115 + 4;
      if ((v201 + v115) < v201 || v122 > v202 || v201 + v115 > v122)
      {
        goto LABEL_414;
      }

      v125 = *(v201 + v116);
      v126 = v125 - v96;
      result = v96 ^ v125;
      if ((result & 0x80000000) != 0)
      {
        result = v126 ^ v125;
        if ((result & 0x80000000) != 0)
        {
          v120 = 1;
          if ((v125 & 0x80000000) != 0)
          {
            break;
          }

          goto LABEL_263;
        }
      }

      if ((v126 & 0x80000000) == 0)
      {
LABEL_263:
        v127 = v125 + v117;
        v128 = ((v125 ^ v117) & 0x80000000) != 0;
        v129 = (v125 + v117) ^ v117;
        v131 = v128 || v129 >= 0;
        v117 = (v117 >> 31) ^ 0x7FFFFFFF;
        if (v131)
        {
          v117 = v127;
        }

        else
        {
          v120 = 1;
        }

        ++v116;
        v115 += 4;
        --v121;
        ++v118;
        ++v119;
        if (v195 == v116)
        {
          v198 = v120;
          goto LABEL_297;
        }

        continue;
      }

      break;
    }

    v198 = v120;
    if (v116 < v195)
    {
      do
      {
        v132 = v119 + 1;
        if (v119 < v203 || v132 > v204 || v119 > v132)
        {
          goto LABEL_414;
        }

        v135 = v85 - *v119;
        if (v135 <= -32768)
        {
          v136 = -32768;
        }

        else
        {
          v136 = v85 - *v119;
        }

        if (v135 != v135)
        {
          v120 = 1;
        }

        LOWORD(v85) = v136 >= 0x7FFF ? 0x7FFF : v136;
        if (v118 < v201 || v118 + 1 > v202 || v118 > v118 + 1)
        {
          goto LABEL_414;
        }

        *v118++ = 0;
        ++v119;
        --v121;
      }

      while (v121);
      v198 = v120;
    }

    v195 = v116;
LABEL_297:
    v95 = v187;
    LOWORD(v94) = v188;
LABEL_298:
    v137 = v117 - v95;
    if ((v95 ^ v117) < 0 && (v137 ^ v117) < 0)
    {
      v137 = 1;
      v198 = 1;
    }

    if (v137)
    {
      v94 = (v94 + 1);
      v95 = v117;
      if (v94 < v191)
      {
        continue;
      }
    }

    break;
  }

LABEL_385:
  if (v186)
  {
    v171 = v189;
    v172 = v202;
    v173 = v201;
    result = a8;
    while (1)
    {
      v174 = v172 + 1;
      v175 = v172 < v202 || v174 > v203;
      v176 = v175 || v172 > v174;
      v177 = v173 + 1;
      v178 = !v176 && v173 >= v201;
      v179 = !v178 || v177 > v202;
      if (v179 || v173 > v177)
      {
        break;
      }

      v181 = a3 + *v172;
      v182 = (a3 + *v172);
      if (v181 < -32768)
      {
        v182 = -32768;
      }

      v183 = v181 < 0x8000 ? v182 : 0x7FFFLL;
      v184 = (a7 + 4 * v183);
      if (v184 < a7 || (v184 + 1) > a8 || v184 > v184 + 1)
      {
        break;
      }

      v185 = *v173++;
      *v184 = v185;
      ++v172;
      if (!--v171)
      {
        return result;
      }
    }

    goto LABEL_414;
  }

  return result;
}

uint64_t Pow2_11469(int a1, int a2, _DWORD *a3)
{
  v4 = a2;
  result = mac_r(-32768, a2, 32, a3);
  v7 = &table_pow2[result];
  v8 = v7 + 1;
  v10 = v7 < table_pow2 || v8 > table_pow2_diff_x32 || v7 >= v8;
  v11 = &table_pow2_diff_x32[result];
  v12 = v11 + 1;
  if (v10 || v11 < table_pow2_diff_x32 || v12 > L_table || v11 >= v12)
  {
    __break(0x5519u);
  }

  else
  {
    v16 = *v7;
    v17 = 2 * (v4 & 0x3FF) * *v11;
    v18 = v17 + (v16 << 16);
    if (((v17 ^ (v16 << 16)) & 0x80000000) == 0 && ((v18 ^ (v16 << 16)) & 0x80000000) != 0)
    {
      v18 = (v16 >> 15) ^ 0x7FFFFFFF;
      *a3 = 1;
    }

    if (a1 > -32738)
    {
      v19 = (30 - a1);
      if (v19 <= 31)
      {
        result = L_shr(v18, (30 - a1));
        if (v19 >= 1)
        {
          return result + ((v18 >> (29 - a1)) & 1);
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      *a3 = 1;
    }
  }

  return result;
}

__int16 *recovernorm(__int16 *result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int a7)
{
  if (a7 == 39)
  {
    v7 = &norm_order_32;
    v8 = &norm_order_16;
  }

  else if (a7 == 26)
  {
    v7 = &norm_order_16;
    v8 = &unk_19B35E872;
  }

  else
  {
    if (a7 < 1)
    {
      return result;
    }

    v7 = &norm_order_48;
    v8 = &norm_order_32;
  }

  v9 = a7;
  v10 = result;
  v11 = v7;
  while (v10 >= result)
  {
    if ((v10 + 1) > a2)
    {
      break;
    }

    if (v10 > v10 + 1)
    {
      break;
    }

    if (v11 < v7)
    {
      break;
    }

    if (v11 + 1 > v8)
    {
      break;
    }

    if (v11 > v11 + 1)
    {
      break;
    }

    v12 = *v11;
    v13 = (a3 + 2 * v12);
    if (v13 < a3)
    {
      break;
    }

    if ((v13 + 1) > a4)
    {
      break;
    }

    if (v13 > v13 + 1)
    {
      break;
    }

    *v13 = *v10;
    v14 = &dicnlg2[*v10];
    if (v14 < dicnlg2)
    {
      break;
    }

    if (v14 + 1 > thren_HQ)
    {
      break;
    }

    if (v14 > v14 + 1)
    {
      break;
    }

    v15 = (a5 + 2 * v12);
    if (v15 < a5 || (v15 + 1) > a6 || v15 > v15 + 1)
    {
      break;
    }

    *v15 = *v14;
    ++v11;
    ++v10;
    if (!--v9)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t peak_avrg_ratio(uint64_t a1, unint64_t a2, int a3, __int16 *a4, __int16 *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  v10 = 0;
  v11 = a3 - 96;
  do
  {
    v12 = (a2 + v10 * 4 + 384);
    v13 = a2 + v10 * 4 + 388;
    v15 = v12 < a2 || v13 > a2 + 4 * a3 || v12 > v13;
    v16 = &__b[v10 + 96];
    v17 = &__b[v10 + 97];
    v18 = !v15 && v16 >= __b;
    if (!v18 || v17 > &v49 || v16 > v17)
    {
LABEL_77:
      __break(0x5519u);
    }

    *v16 = fabsf(*v12);
    ++v10;
    --v11;
  }

  while (v11);
  v21 = 0;
  v22 = 0;
  v23 = 3;
  v24 = 96;
  do
  {
    v25 = 0;
    v26 = v24;
    v24 += 32;
    v27 = 0.0;
    v28 = 1.0e-15;
    do
    {
      v29 = &__b[v26];
      v30 = v29 + 1;
      if (v29 < __b || v30 > &v49 || v29 > v30)
      {
        goto LABEL_77;
      }

      v33 = __b[v26];
      v28 = v28 + v33;
      if (v33 > v27)
      {
        v27 = __b[v26];
      }

      ++v26;
      v18 = v25++ >= 0x1F;
    }

    while (!v18);
    v34 = (v27 * 32.0) / v28;
    if (v23 > 7)
    {
      v35 = v34 > 3.6;
      if (v27 <= 10.0)
      {
        v35 = 0;
      }

      v21 += v35;
    }

    else if (v34 > 4.5)
    {
      ++v22;
    }

    v18 = v23++ >= 0x10;
  }

  while (!v18);
  v36 = v21;
  v37 = v21 + v22;
  v39 = v37 > 9 && v36 > 5;
  v40 = *a4;
  if (v39)
  {
    if (v40 <= 7)
    {
      *a4 = v40 + 1;
    }

    v41 = *a5;
    v42 = __OFSUB__(v41, 1);
    v43 = v41 - 1;
    if (v43 < 0 != v42)
    {
      return 2;
    }
  }

  else
  {
    v42 = __OFSUB__(v40, 1);
    v44 = v40 - 1;
    if (v44 < 0 == v42)
    {
      *a4 = v44;
    }

    v43 = *a5;
    if (v43 > 7)
    {
      result = 0;
      if (a1 == 24400 && v37 >= 5 && v36 > 2)
      {
        return 2;
      }

      return result;
    }

    LOWORD(v43) = v43 + 1;
  }

  *a5 = v43;
  if (a1 == 24400 && v37 >= 5 && v36 > 2)
  {
    return 2;
  }

  if (v39)
  {
    if (v43 > 4)
    {
      return 0;
    }

    return 2;
  }

  result = 0;
  if (*a4 >= 5 && v43 < 5)
  {
    return 2;
  }

  return result;
}

uint64_t hvq_classifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 *a9, unint64_t a10, uint64_t a11, __int16 a12, unint64_t a13, unint64_t a14, __int16 *a15, unint64_t a16, unint64_t a17)
{
  result = MEMORY[0x1EEE9AC00](a1);
  v185 = v22;
  v186 = v23;
  *v208 = *MEMORY[0x1E69E9840];
  memset(v194, 170, sizeof(v194));
  if ((a12 & 0xFFFB) == 0 || *v20 != 2)
  {
    *v19 = 0;
    *a15 = 0;
    return result;
  }

  v24 = v18;
  v25 = result;
  v182 = v20;
  v183 = v19;
  v184 = v21;
  v192 = NAN;
  memset(__b, 255, sizeof(__b));
  memset(__C, 255, sizeof(__C));
  *&v27 = -1;
  *(&v27 + 1) = -1;
  v203[0] = v27;
  v203[1] = v27;
  v204 = -1;
  v200[0] = v27;
  v200[1] = v27;
  v201 = -1;
  v197[0] = v27;
  v197[1] = v27;
  v198 = -1;
  memset(v196, 170, sizeof(v196));
  __A = 0.0;
  vDSP_vfill(&__A, __C, 1, 0x140uLL);
  v30 = 0;
  if (a11 == 24400)
  {
    v31 = 7;
  }

  else
  {
    v31 = 10;
  }

  v189 = 32 * v31;
  v32 = v208;
  do
  {
    v33 = v30;
    v34 = (v25 + 4 * v30);
    v35 = v34 + 1;
    v37 = v34 < v25 || v35 > v24 || v34 > v35;
    v38 = &__b[v33];
    v39 = v38 + 4;
    v40 = !v37 && v38 >= __b;
    if (!v40 || v39 > v208 || v38 > v39)
    {
      goto LABEL_256;
    }

    __b[v33] = fabsf(*v34);
    v30 = v33 + 1;
  }

  while (v189 > (v33 + 1));
  v191 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  *v184 = 0;
  v46 = vdup_n_s32(0x44480000u);
  v47 = 0.0;
  v48 = &v205;
  v187 = vdup_n_s32(0x26901D7Du);
  v188 = v31;
  do
  {
    v49 = v200 + v43;
    v50 = v49 + 1;
    if (v49 < v200 || v50 > &v202 || v49 > v50)
    {
      goto LABEL_256;
    }

    v53 = v43;
    *(v200 + v43) = 646978941;
    v54 = v203 + v43;
    if (v54 < v203 || v54 + 1 > v48 || v54 > v54 + 1)
    {
      goto LABEL_256;
    }

    v55 = 0;
    *v54 = 1.0e-15;
    v56 = 0.0;
    v57 = v187;
    do
    {
      v58 = &__b[v45];
      v59 = v58 + 1;
      if (v58 < __b || v59 > v32 || v58 > v59)
      {
        goto LABEL_256;
      }

      v28.i32[0] = *v58;
      v46 = vbsl_s8(vcgt_f32(vdup_lane_s32(v28, 0), v46), vmla_f32(vmul_n_f32(0x3D2CD9F03F13DF90, *v58), 0x3F7532613ED840E1, v46), vmla_f32(vmul_n_f32(0x3EB4A2343E49E1B0, *v58), 0x3F25AEE63F4D8794, v46));
      v57 = vadd_f32(v57, v46);
      *v49 = v57.f32[1];
      *v54 = v57.f32[0];
      if (*v28.i32 > v56)
      {
        v56 = *v28.i32;
      }

      ++v45;
      v40 = v55++ >= 0x1F;
    }

    while (!v40);
    v62 = v57.f32[1] * 0.03125;
    *v49 = v57.f32[1] * 0.03125;
    v63 = v57.f32[0] * 0.03125;
    *v54 = v63;
    if (&__C[v44] < __C)
    {
      goto LABEL_256;
    }

    v64 = a16;
    v65 = a14;
    v66 = v32;
    v67 = v48;
    v68 = pow((v63 / v62), 0.879999995);
    __A = v62 * v68;
    vDSP_vfill(&__A, &__C[v44], 1, 0x20uLL);
    v48 = v67;
    v32 = v66;
    a14 = v65;
    a16 = v64;
    v69 = v197 + 4 * v53;
    if (v69 < v197 || v69 + 4 > &v199 || v69 > v69 + 4)
    {
      goto LABEL_256;
    }

    v70 = v56 / *(v200 + v53);
    v44 += 32;
    *(v197 + v53) = v70;
    v47 = v47 + (v70 + -9.0);
    v71 = v191;
    if (v70 > 9.0)
    {
      v71 = v191 + 1;
    }

    v191 = v71;
    v43 = v53 + 1;
  }

  while (v188 > (v53 + 1));
  v72 = 0;
  v73 = 0;
  v74 = v188 & 1;
  do
  {
    v75 = v72 + v74;
    v76 = v200 + 4 * v72 + 4 * v74;
    v77 = v76 + 4;
    if (v76 < v200 || v77 > &v202 || v76 > v77)
    {
      goto LABEL_256;
    }

    v80 = ((2 * v72) | 1) / v188;
    v81 = (a13 + 4 * v80);
    v82 = v81 + 1;
    v83 = v81 < a13 || v82 > a14;
    if (v83 || v81 > v82)
    {
      goto LABEL_256;
    }

    *v81 = *(v200 + v75) + *v81;
    v85 = v203 + v75;
    if (v85 < v203 || v85 + 1 > v48 || v85 > v85 + 1)
    {
      goto LABEL_256;
    }

    v86 = (v64 + 4 * v80);
    v87 = v86 + 1;
    v88 = v86 < v64 || v87 > a17;
    if (v88 || v86 > v87)
    {
      goto LABEL_256;
    }

    *v86 = *v85 + *v86;
    v72 = ++v73;
  }

  while ((v188 & 0xE) > v73);
  v90 = 0;
  v91 = (v188 >> 1);
  v92 = 1;
  do
  {
    v93 = v92;
    v94 = (a13 + 4 * v90);
    v95 = v94 + 1;
    if (v94 < a13 || v95 > a14 || v94 > v95)
    {
      goto LABEL_256;
    }

    *v94 = *v94 / v91;
    v98 = (v64 + 4 * v90);
    if (v98 < v64 || (v98 + 1) > a17 || v98 > v98 + 1)
    {
      goto LABEL_256;
    }

    v92 = 0;
    *v98 = *v98 / v91;
    v90 = 1;
  }

  while ((v93 & 1) != 0);
  v99 = 0;
  LOWORD(v100) = 0;
  do
  {
    v101 = &v194[2 * v100];
    v102 = v101 + 1;
    if (v101 < v194 || v102 > v195 || v101 > v102)
    {
      goto LABEL_256;
    }

    v100 = v100;
    *&v194[2 * v100] = 9;
    v105 = v200 + v100;
    if (v105 < v200 || v105 + 1 > &v202 || v105 > v105 + 1)
    {
      goto LABEL_256;
    }

    v106 = (a13 + 4 * (((2 * v99) | 1) / v188));
    v107 = v106 + 1;
    v108 = v106 < a13 || v107 > a14;
    if (v108 || v106 > v107)
    {
      goto LABEL_256;
    }

    if (*v105 < (*v106 * 0.7071))
    {
      v110 = v197 + v100;
      if (v110 < v197 || v110 + 1 > &v199 || v110 > v110 + 1)
      {
        goto LABEL_256;
      }

      if (*v110 >= 12.0)
      {
        if (*v110 >= 16.0)
        {
          goto LABEL_119;
        }

        v111 = 3;
      }

      else
      {
        v111 = 2;
      }

      *v101 = v111;
    }

LABEL_119:
    LOWORD(v100) = v100 + 1;
    v99 = v100;
  }

  while (v188 > v100);
  v112 = *v183;
  if (v112 >= 1)
  {
    v113 = 0;
    while (1)
    {
      v114 = &v185[v113];
      v115 = v114 + 1;
      if (v114 < v185 || v115 > v186 || v114 > v115)
      {
        goto LABEL_256;
      }

      v118 = *v114;
      v119 = (*v114 - 2);
      v120 = v118 + 2;
      if (v119 < v120)
      {
        break;
      }

LABEL_143:
      if (++v113 == v112)
      {
        goto LABEL_144;
      }
    }

    v121 = v120;
    v122 = v119 + 1;
    v123 = &__C[v119];
    v124 = &unk_19B39B4B0;
    while (1)
    {
      v125 = v123 + 1;
      v126 = v124 <= tbl_mid_unv_wb_5b && v123 >= __C;
      v127 = !v126 || v125 > __b;
      if (v127 || v123 > v125)
      {
        break;
      }

      *v123 = *(v124 - 1) * *v123;
      ++v123;
      v129 = v121 == v122++;
      ++v124;
      if (v129)
      {
        goto LABEL_143;
      }
    }

LABEL_256:
    __break(0x5519u);
  }

LABEL_144:
  *__b = 0;
  v130 = &__b[v189 - 2];
  if (v130 < __b)
  {
    goto LABEL_256;
  }

  if ((v130 + 1) > v66)
  {
    goto LABEL_256;
  }

  if (v130 > v130 + 1)
  {
    goto LABEL_256;
  }

  *v130 = 0.0;
  v131 = &__b[v189 - 1];
  if (v131 < __b || (v131 + 1) > v66 || v131 > v131 + 1)
  {
    goto LABEL_256;
  }

  v132 = 0;
  v133 = 0;
  *v131 = 0.0;
  do
  {
    v134 = &__b[v132];
    v135 = v134 + 1;
    if (v134 < __b || v135 > v66 || v134 > v135)
    {
      goto LABEL_256;
    }

    v138 = &__C[v132];
    if (v138 < __C || v138 + 1 > __b || v138 > v138 + 1)
    {
      goto LABEL_256;
    }

    v139 = __b[v132];
    if (v139 >= *v138)
    {
      v140 = &__b[v133];
      if (v140 < __b)
      {
        goto LABEL_256;
      }

      if ((v140 + 4) > v66)
      {
        goto LABEL_256;
      }

      if (v140 > v140 + 4)
      {
        goto LABEL_256;
      }

      __b[v133] = v139;
      v141 = &v196[v133];
      if (v141 < v196 || v141 + 1 > v197 || v141 > v141 + 1)
      {
        goto LABEL_256;
      }

      *v141 = v132;
      ++v133;
    }

    else
    {
      *v134 = 0.0;
    }

    ++v132;
  }

  while (v189 - 2 > v132);
  v142 = a11 == 24400 ? 20 : 23;
  v190 = v142;
  if (v133 > 0x280u)
  {
    goto LABEL_256;
  }

  result = maximum(__b, v133, &v192);
  if (v192 <= 0.0)
  {
    v173 = v184;
    *v184 = 0;
LABEL_244:
    v178 = -1;
    v174 = a15;
LABEL_245:
    *v174 = v178;
    goto LABEL_246;
  }

  v143 = 0;
  do
  {
    v144 = &v196[result];
    v145 = v144 + 1;
    if (v144 < v196 || v145 > v197 || v144 > v145)
    {
      goto LABEL_256;
    }

    v148 = *v144;
    v149 = &v194[2 * (((v148 + ((v148 >> 26) & 0x1F)) << 16) >> 21)];
    v150 = v149 + 1;
    v151 = v149 < v194 || v150 > v195;
    if (v151 || v149 > v150)
    {
      goto LABEL_256;
    }

    v153 = *v149;
    v154 = __OFSUB__(v153, 1);
    v155 = v153 - 1;
    if (v155 < 0 == v154)
    {
      v156 = &a9[v143];
      if (v156 < a9 || (v156 + 1) > a10 || v156 > v156 + 1)
      {
        goto LABEL_256;
      }

      ++v143;
      *v156 = v148;
      *v149 = v155;
    }

    v157 = result + 2;
    LODWORD(v158) = (result - 2) & ~((result - 2) >> 31);
    if ((result + 2) >= v133)
    {
      v157 = v133 - 1;
    }

    v159 = v148 + 2;
    if (v189 <= (v148 + 2))
    {
      v159 = v189 - 1;
    }

    if (v158 <= result)
    {
      v160 = (v148 - 2) & ~((v148 - 2) >> 31);
      do
      {
        v161 = &v196[v158];
        v162 = v161 + 1;
        v163 = v161 < v196 || v162 > v197;
        if (v163 || v161 > v162)
        {
          goto LABEL_256;
        }

        v158 = v158;
        if (*v161 >= v160)
        {
          v196[v158] = 0;
          v165 = &__b[v158];
          if (v165 < __b || (v165 + 1) > v66 || v165 > v165 + 1)
          {
            goto LABEL_256;
          }

          *v165 = 0.0;
        }

        LODWORD(v158) = (v158 + 1);
      }

      while (v158 <= result);
    }

    if (v157 > result)
    {
      LOWORD(v166) = result + 1;
      do
      {
        v167 = &v196[v166];
        v168 = v167 + 1;
        v169 = v167 < v196 || v168 > v197;
        if (v169 || v167 > v168)
        {
          goto LABEL_256;
        }

        v166 = v166;
        if (*v167 <= v159)
        {
          v196[v166] = 0;
          v171 = &__b[v166];
          if (v171 < __b || (v171 + 1) > v66 || v171 > v171 + 1)
          {
            goto LABEL_256;
          }

          *v171 = 0.0;
        }

        LODWORD(v166) = (v166 + 1);
      }

      while (v166 <= v157);
    }

    result = maximum(__b, v133, &v192);
  }

  while (v192 > 0.0 && v190 >= v143);
  v173 = v184;
  *v184 = v143;
  if (v143 < 3)
  {
    goto LABEL_244;
  }

  v174 = a15;
  if (v188 - 3 >= v191 || v190 < v143)
  {
    if (*a15 < 1)
    {
      v178 = -1;
    }

    else
    {
      *v182 = 3;
      v178 = *a15 - 1;
    }

    goto LABEL_245;
  }

  if ((v47 / v188) <= 22.2 && (v175 = *a15, v175 < 0))
  {
    v176 = v175 + 1;
  }

  else
  {
    *v182 = 3;
    v176 = 2;
  }

  *a15 = v176;
  v177 = *v184;
  *v183 = *v184;
  result = mvs2s(a9, a10, v185, v186, v177);
LABEL_246:
  v179 = *v173;
  if (a11 == 24400)
  {
    v180 = v179 < 17;
    v181 = 17;
  }

  else
  {
    v180 = v179 < 23;
    v181 = 23;
  }

  if (!v180)
  {
    LOWORD(v179) = v181;
  }

  *v173 = v179;
  return result;
}

__int16 *hq2_core_configure(__int16 *result, int a2, int a3, unsigned __int16 *a4, _WORD *a5, __int16 *a6, unint64_t a7, uint64_t a8, _WORD *a9, unint64_t a10, _WORD *a11, unint64_t a12, _DWORD *a13, _WORD *a14, _WORD *a15, _WORD *a16, _WORD *a17, _WORD *a18, _DWORD *a19, _DWORD *a20, _DWORD *a21, _DWORD *a22, _DWORD *a23, uint64_t a24)
{
  if (result == 320)
  {
    v29 = &xcore_config_16kHz_016400bps_long;
    v30 = &xcore_config_32kHz_013200bps_short;
    if (a2 < 265)
    {
      v30 = &xcore_config_16kHz_016400bps_long;
      v29 = &xcore_config_16kHz_013200bps_long;
    }

    v35 = L"\aP";
    v36 = &xcore_config_16kHz_013200bps_long;
    if (a2 < 265)
    {
      v36 = L"\aP";
      v35 = L"\aP";
    }
  }

  else
  {
    if (result != 160)
    {
      v41 = &codesTnsCoeffSWBTCX20;
      v42 = &xcore_config_32kHz_013200bps_long;
      if (a24 == 13200)
      {
        v41 = &xcore_config_32kHz_016400bps_long;
      }

      v43 = &xcore_config_32kHz_016400bps_short;
      if (a24 == 13200)
      {
        v44 = &xcore_config_32kHz_016400bps_short;
      }

      else
      {
        v42 = &xcore_config_32kHz_016400bps_long;
        v44 = &xcore_config_32kHz_013200bps_long;
      }

      if (a24 == 13200)
      {
        v43 = &xcore_config_32kHz_013200bps_short;
      }

      if (a3)
      {
        v30 = v44;
      }

      else
      {
        v30 = v41;
      }

      if (a3)
      {
        v29 = v43;
      }

      else
      {
        v29 = v42;
      }

      goto LABEL_35;
    }

    v29 = &xcore_config_8kHz_007200bps_long;
    v30 = &xcore_config_8kHz_008000bps_long;
    v31 = &xcore_config_8kHz_008000bps_long;
    v32 = &xcore_config_8kHz_013200bps_long;
    v33 = &xcore_config_8kHz_016400bps_long;
    v34 = L"\aP";
    if (a2 < 0x109)
    {
      v34 = &xcore_config_8kHz_016400bps_long;
      v33 = &xcore_config_8kHz_013200bps_long;
    }

    if (a2 >= 0xA1)
    {
      v32 = v34;
      v31 = v33;
    }

    if (a2 >= 145)
    {
      v30 = v32;
      v29 = v31;
    }

    v35 = &xcore_config_8kHz_007200bps_short;
    v36 = &xcore_config_8kHz_008000bps_short;
    v37 = &xcore_config_8kHz_008000bps_short;
    v38 = &xcore_config_8kHz_013200bps_short;
    v39 = &xcore_config_8kHz_016400bps_short;
    v40 = &xcore_config_8kHz_007200bps_long;
    if (a2 < 0x109)
    {
      v40 = &xcore_config_8kHz_016400bps_short;
      v39 = &xcore_config_8kHz_013200bps_short;
    }

    if (a2 >= 0xA1)
    {
      v38 = v40;
      v37 = v39;
    }

    if (a2 >= 145)
    {
      v36 = v38;
      v35 = v37;
    }
  }

  if (a3)
  {
    v30 = v36;
    v29 = v35;
  }

LABEL_35:
  if (v29 + 32 > v30)
  {
    goto LABEL_71;
  }

  *a4 = *v29;
  *a5 = v29[1];
  *a13 = *(v29 + 6);
  *a14 = v29[14];
  *a15 = v29[15];
  *a16 = v29[16];
  *a17 = v29[17];
  *a18 = v29[18];
  *a19 = *(v29 + 10);
  *a20 = *(v29 + 11);
  *a21 = *(v29 + 12);
  *a22 = *(v29 + 13);
  *a23 = *(v29 + 14);
  result = mvs2s(*(v29 + 1), *(v29 + 2), a6, a7, *a4);
  if (a3)
  {
    v45 = *a4;
    *a4 = 4 * v45;
    *a5 *= 4;
    v46 = 1;
    v47 = v45 << 32;
    while (v45 < 1)
    {
LABEL_47:
      ++v46;
      v47 += v45 << 32;
      if (v46 == 4)
      {
        goto LABEL_48;
      }
    }

    v48 = a6;
    v49 = v47;
    v50 = v45;
    while (v48 >= a6)
    {
      if ((v48 + 1) > a7)
      {
        break;
      }

      if (v48 > v48 + 1)
      {
        break;
      }

      v51 = (a6 + (v49 >> 31));
      if (v51 < a6)
      {
        break;
      }

      result = v51 + 1;
      if ((v51 + 1) > a7 || v51 > result)
      {
        break;
      }

      v52 = *v48++;
      result = v52;
      *v51 = v52;
      v49 += 0x100000000;
      if (!--v50)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_71;
  }

LABEL_48:
  if ((a9 + 1) > a10 || a9 + 1 < a9 || (*a9 = 0, (a6 + 1) > a7) || a6 + 1 < a6 || (a11 + 1) > a12 || a11 + 1 < a11)
  {
LABEL_71:
    __break(0x5519u);
    return result;
  }

  *a11 = *a6 - 1;
  if (*a4 >= 2)
  {
    v53 = 0;
    v54 = 1;
    while (1)
    {
      v55 = &a9[v53 + 1];
      v56 = &a9[v53 + 2];
      v57 = v55 < a9 || v56 > a10;
      if (v57 || v55 > v56)
      {
        break;
      }

      v59 = a6[v53] + a9[v53];
      *v55 = v59;
      v60 = &a6[v53 + 1];
      if (v60 < a6)
      {
        break;
      }

      v61 = &a6[v53 + 2];
      if (v61 > a7)
      {
        break;
      }

      if (v60 > v61)
      {
        break;
      }

      v62 = &a11[v53 + 1];
      if (v62 < a11)
      {
        break;
      }

      v63 = &a11[v53 + 2];
      if (v63 > a12 || v62 > v63)
      {
        break;
      }

      *v62 = v59 + *v60 - 1;
      ++v54;
      ++v53;
      if (v54 >= *a4)
      {
        return result;
      }
    }

    goto LABEL_71;
  }

  return result;
}

uint64_t get_usebit_npswb(uint64_t result)
{
  if (result)
  {
    if (result != 2)
    {
      return 0;
    }

    v1 = &bits_lagIndices_mode0_Har;
    v2 = &bits_lagIndices_modeNormal;
    v3 = 2;
  }

  else
  {
    v1 = &bits_lagIndices_modeNormal;
    v2 = &unk_19B3A1240;
    v3 = 4;
  }

  v4 = 0;
  while (1)
  {
    v5 = &v1[v4];
    v6 = v5 + 1;
    v7 = v5 < v1 || v6 > v2;
    if (v7 || v5 > v6)
    {
      break;
    }

    result = *v5 + result;
    if (v3 <= ++v4)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t reverse_transient_frame_energies(unint64_t result, unint64_t a2, int a3)
{
  if (a3 >= 8)
  {
    v3 = 0;
    v4 = ((a3 + ((a3 >> 28) & 7)) << 16) >> 19;
    v5 = a3 >> 2;
    v6 = (result + 4 * (a3 >> 1) - 4);
    while (1)
    {
      v7 = (result + 4 * v5);
      v8 = v7 + 1;
      v9 = v7 < result || v8 > a2;
      v10 = v9 || v7 >= v8;
      v11 = v6 + 1;
      v12 = !v10 && v6 >= result;
      v13 = !v12 || v11 > a2;
      if (v13 || v6 >= v11)
      {
        break;
      }

      v15 = *v7;
      *v7 = *v6;
      *v6-- = v15;
      ++v5;
      if (v4 <= ++v3)
      {
        v16 = 0;
        v17 = (3 * a3) >> 2;
        while (1)
        {
          LOWORD(a3) = a3 - 1;
          v18 = (result + 4 * v17);
          v19 = v18 + 1;
          v20 = v18 < result || v19 > a2;
          v21 = v20 || v18 >= v19;
          v22 = (result + 4 * a3);
          v23 = v22 + 1;
          v24 = !v21 && v22 >= result;
          v25 = !v24 || v23 > a2;
          if (v25 || v22 >= v23)
          {
            break;
          }

          v27 = *v18;
          *v18 = *v22;
          *v22 = v27;
          LOWORD(v17) = v17 + 1;
          if (v4 <= ++v16)
          {
            return result;
          }
        }

        break;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t large_symbol_enc(uint64_t a1, __int16 *a2, int a3, _WORD *a4, int a5)
{
  v7 = a2;
  *v197 = *MEMORY[0x1E69E9840];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v196[2] = v8;
  v196[3] = v8;
  v196[0] = v8;
  v196[1] = v8;
  memset(v195, 0, sizeof(v195));
  memset(v194, 0, sizeof(v194));
  if (a5)
  {
    v9 = *a4;
    if (*a4)
    {
      v10 = 0;
      v11 = 0;
      LOWORD(v6) = 0;
      v12 = 0;
      goto LABEL_98;
    }
  }

  if (a2 + 2 < a2)
  {
    goto LABEL_263;
  }

  v13 = &a2[2 * a3];
  if ((a2 + 2) > v13)
  {
    goto LABEL_263;
  }

  v14 = *a2 + 64;
  v15 = v14 < 0x80;
  if (v14 > 0x7F)
  {
    v12 = 2;
    goto LABEL_10;
  }

  if ((*a2 - 4) <= 0xFFFFFFF7)
  {
    v12 = 1;
LABEL_10:
    if (a3 > 1)
    {
      v16 = 0;
      goto LABEL_15;
    }

    v11 = 0;
    LOWORD(v6) = -1;
    v17 = 1;
LABEL_50:
    v10 = 20000;
    if (v15 && v17)
    {
      LOWORD(v195[0]) = *a2;
      if (v11 == 1)
      {
        v35 = v6;
      }

      else
      {
        v35 = 0;
      }

      LODWORD(v6) = v35;
      if (v11 == 1)
      {
        v10 = 22;
      }

      else
      {
        v10 = 10;
      }

      if (v35 >= 2)
      {
        v36 = 0;
        v37 = a2 + 2;
        while (v37 >= a2)
        {
          if ((v37 + 2) > v13)
          {
            break;
          }

          if (v37 > v37 + 2)
          {
            break;
          }

          v38 = v195 + v36 + 2;
          if (v38 < v195)
          {
            break;
          }

          v39 = v195 + v36 + 4;
          if (v39 > v196)
          {
            break;
          }

          if (v38 > v39)
          {
            break;
          }

          v40 = *v37;
          *v38 = v40;
          v41 = &hessize[v40];
          v42 = v41 + 8;
          if (v41 + 8 < hessize)
          {
            break;
          }

          v43 = v41 + 10;
          if (v43 > hescode || v42 > v43)
          {
            break;
          }

          v10 += *v42;
          v36 += 2;
          v37 += 2;
          if (2 * v6 - 2 == v36)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_263;
      }

LABEL_70:
      if ((v6 + 1) < a3)
      {
        v44 = &a2[2 * (v6 + 1)];
        v45 = (v6 + 1) + 1;
        v46 = v195 + (v6 + 1);
        while (v44 >= a2)
        {
          if ((v44 + 2) > v13)
          {
            break;
          }

          if (v44 > v44 + 2)
          {
            break;
          }

          if (v46 < v195)
          {
            break;
          }

          if (v46 + 1 > v196)
          {
            break;
          }

          if (v46 > v46 + 1)
          {
            break;
          }

          v47 = *v44;
          *v46 = v47;
          v48 = &hessize[v47];
          v49 = v48 + 8;
          if (v48 + 8 < hessize)
          {
            break;
          }

          v50 = v48 + 10;
          if (v50 > hescode || v49 > v50)
          {
            break;
          }

          v10 += *v49;
          v51 = v45;
          v44 += 2;
          ++v46;
          ++v45;
          if (v51 == a3)
          {
            goto LABEL_96;
          }
        }

        goto LABEL_263;
      }
    }

    goto LABEL_96;
  }

  if (a3 >= 2)
  {
    v12 = 0;
    v15 = 0;
    v16 = 1;
LABEL_15:
    v18 = 0;
    LOWORD(v11) = 0;
    LOWORD(v6) = -1;
    v19 = 1;
    while (1)
    {
      v20 = &a2[v18 + 2];
      v21 = &a2[v18 + 4];
      v22 = v20 < a2 || v21 > v13;
      if (v22 || v20 > v21)
      {
        goto LABEL_263;
      }

      v24 = *&a2[2 * v19];
      if ((v24 - 4) >= 0xFFFFFFF8)
      {
        v25 = v6;
      }

      else
      {
        v25 = v19;
      }

      LODWORD(v6) = v25;
      if ((v24 - 4) >= 0xFFFFFFF8)
      {
        v26 = v11;
      }

      else
      {
        v26 = v11 + 1;
      }

      if ((v24 - 64) >= 0xFFFFFF80)
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 + 1;
      }

      v11 = v27;
      ++v19;
      v18 += 2;
      if (a3 == v19)
      {
        v17 = v27 < 2;
        if ((v16 & v17) != 1)
        {
          goto LABEL_50;
        }

        if (v27 == 1)
        {
          v10 = 15;
        }

        else
        {
          v10 = 3;
        }

        if (v6 >= 1)
        {
          v28 = v6;
          v29 = a2;
          v30 = v195;
          while (v29 >= a2)
          {
            if ((v29 + 2) > v13)
            {
              break;
            }

            if (v29 > v29 + 2)
            {
              break;
            }

            if (v30 < v195)
            {
              break;
            }

            if (v30 + 1 > v196)
            {
              break;
            }

            if (v30 > v30 + 1)
            {
              break;
            }

            v31 = *v29;
            *v30 = v31;
            v32 = &hessize[v31];
            v33 = v32 + 8;
            if (v32 + 8 < hessize)
            {
              break;
            }

            v34 = v32 + 10;
            if (v34 > hescode || v33 > v34)
            {
              break;
            }

            v10 += *v33;
            ++v30;
            v29 += 2;
            if (!--v28)
            {
              goto LABEL_84;
            }
          }

          goto LABEL_263;
        }

        goto LABEL_84;
      }
    }
  }

  v12 = 0;
  v11 = 0;
  v10 = 3;
  LOWORD(v6) = -1;
LABEL_84:
  if ((v6 + 1) < a3)
  {
    v52 = &a2[2 * (v6 + 1)];
    v53 = (v6 + 1) + 1;
    v54 = v195 + (v6 + 1);
    while (v52 >= a2)
    {
      if ((v52 + 2) > v13)
      {
        break;
      }

      if (v52 > v52 + 2)
      {
        break;
      }

      if (v54 < v195)
      {
        break;
      }

      if (v54 + 1 > v196)
      {
        break;
      }

      if (v54 > v54 + 1)
      {
        break;
      }

      v55 = *v52;
      *v54 = v55;
      v56 = &hessize[v55];
      v57 = v56 + 8;
      if (v56 + 8 < hessize)
      {
        break;
      }

      v58 = v56 + 10;
      if (v58 > hescode || v57 > v58)
      {
        break;
      }

      v10 += *v57;
      v59 = v53;
      v52 += 2;
      ++v54;
      ++v53;
      if (v59 == a3)
      {
        goto LABEL_96;
      }
    }

    goto LABEL_263;
  }

LABEL_96:
  if (!a5)
  {
    goto LABEL_99;
  }

  v9 = *a4;
LABEL_98:
  if (v9 != 1)
  {
    v67 = 0;
LABEL_145:
    v192 = a3;
    v193 = a1;
    if (v9)
    {
      v90 = a1;
      push_indice(a1, 889, 1, 1);
      push_indice(v90, 893, v67, 3);
      v91 = v192;
      if (v192 < 1)
      {
        v10 = 4;
        if (v67 > 0)
        {
LABEL_196:
          v10 += v67 * v91;
        }

        return v10;
      }

      v5 = v192;
      v10 = 4;
      v92 = v194;
      v6 = v192;
      v7 = hescode;
      a1 = v193;
      while (1)
      {
        v93 = v92 + 1;
        v94 = v92 < v194 || v93 > v195;
        if (v94 || v92 > v93)
        {
          break;
        }

        v96 = *v92 + 4;
        v97 = &hescode[v96];
        v98 = v97 + 1;
        v99 = v97 < hescode || v98 > &hann_window_320;
        v100 = v99 || v97 > v98;
        v101 = &hessize[v96];
        v102 = v101 + 1;
        v103 = !v100 && v101 >= hessize;
        v104 = !v103 || v102 > hescode;
        if (v104 || v101 > v102)
        {
          break;
        }

        push_indice(a1, 895, *v97, *v101);
        a1 = v193;
        v106 = &hessize[*v92];
        v107 = v106 + 8;
        if (v106 + 8 < hessize)
        {
          break;
        }

        v108 = v106 + 10;
        if (v108 > hescode || v107 > v108)
        {
          break;
        }

        v10 += *v107;
        ++v92;
        v6 = (v6 - 1);
        if (!v6)
        {
          v7 = v67;
          if (v7 <= 0)
          {
            return v10;
          }

          v6 = v197;
          v109 = v196;
          while (1)
          {
            v110 = v109 + 1;
            v111 = v109 < v196 || v110 > v197;
            if (v111 || v109 > v110)
            {
              goto LABEL_263;
            }

            v113 = *v109++;
            push_indice(a1, 895, v113, v67);
            v91 = v192;
            a1 = v193;
            if (!--v5)
            {
              goto LABEL_196;
            }
          }
        }
      }
    }

    else
    {
      v10 = 1;
      push_indice(a1, 889, 0, 1);
      if (v12 == 1)
      {
        v5 = v193;
        push_indice(v193, 890, 1, 1);
        a1 = v193;
        LODWORD(a2) = 891;
        if (v11 != 1)
        {
          goto LABEL_264;
        }

        push_indice(v193, 891, 1, 1);
        a1 = push_indice(v193, 892, v6, 5);
        if (v7 + 4 >= v7)
        {
          a1 = v193;
          v5 = v7 + 4 * v192;
          if (v7 + 4 <= v5)
          {
            push_indice(v193, 895, *v7 + 64, 7);
            a1 = v193;
            v115 = v7 + 4 * v6;
            if (v115 >= v7 && v115 + 4 <= v5 && v115 <= v115 + 4)
            {
              v10 = 22;
              v7 += 4 * v6;
              goto LABEL_267;
            }
          }
        }

        goto LABEL_263;
      }

      v5 = v193;
      if (v12)
      {
        return v10;
      }

      push_indice(v193, 890, 0, 1);
      if (v11 == 1)
      {
        push_indice(v193, 891, 1, 1);
        a1 = push_indice(v193, 892, v6, 5);
        v114 = (v7 + 4 * v6);
        if (v114 < v7 || (v114 + 2) > v7 + 4 * v192 || v114 > v114 + 2)
        {
          goto LABEL_263;
        }

        push_indice(v193, 895, *v114 + 64, 7);
        v10 = 15;
      }

      else
      {
        push_indice(v193, 891, 0, 1);
        v10 = 3;
      }

      v116 = v192;
      a1 = v193;
      if (v6 < 1)
      {
LABEL_235:
        v5 = v195;
        v7 = hescode;
        while (1)
        {
          LODWORD(v6) = (v6 + 1);
          if (v6 >= v116)
          {
            return v10;
          }

          v135 = v195 + v6;
          v136 = v135 + 1;
          if (v135 >= v195 && v136 <= v196 && v135 <= v136)
          {
            v139 = *v135 + 4;
            v140 = &hescode[v139];
            v141 = v140 + 1;
            v142 = v140 < hescode || v141 > &hann_window_320;
            v143 = v142 || v140 > v141;
            v144 = &hessize[v139];
            v145 = v144 + 1;
            v146 = !v143 && v144 >= hessize;
            v147 = !v146 || v145 > hescode;
            if (!v147 && v144 <= v145)
            {
              push_indice(a1, 895, *v140, *v144);
              v116 = v192;
              a1 = v193;
              v149 = &hessize[*v135];
              v150 = v149 + 8;
              if (v149 + 8 >= hessize)
              {
                v151 = v149 + 10;
                if (v151 <= hescode && v150 <= v151)
                {
                  continue;
                }
              }
            }
          }

          goto LABEL_263;
        }
      }

      v7 = v195;
      v5 = hescode;
      v117 = v6;
      v118 = v195;
      while (1)
      {
        v119 = v118 + 1;
        v120 = v118 < v195 || v119 > v196;
        if (v120 || v118 > v119)
        {
          break;
        }

        v122 = *v118 + 4;
        v123 = &hescode[v122];
        v124 = v123 + 1;
        v125 = v123 < hescode || v124 > &hann_window_320;
        v126 = v125 || v123 > v124;
        v127 = &hessize[v122];
        v128 = v127 + 1;
        v129 = !v126 && v127 >= hessize;
        v130 = !v129 || v128 > hescode;
        if (v130 || v127 > v128)
        {
          break;
        }

        push_indice(a1, 895, *v123, *v127);
        v116 = v192;
        a1 = v193;
        v132 = &hessize[*v118];
        v133 = v132 + 8;
        if (v132 + 8 < hessize)
        {
          break;
        }

        v134 = v132 + 10;
        if (v134 > hescode || v133 > v134)
        {
          break;
        }

        ++v118;
        if (!--v117)
        {
          goto LABEL_235;
        }
      }
    }

    while (1)
    {
      while (1)
      {
        do
        {
LABEL_263:
          __break(0x5519u);
LABEL_264:
          a1 = push_indice(a1, a2, 0, 1);
        }

        while (v7 + 4 < v7 || v7 + 4 > v7 + 4 * v192);
        a1 = v5;
        v10 = 10;
LABEL_267:
        push_indice(a1, 895, *v7 + 64, 7);
        if (v6 < 2)
        {
          break;
        }

        v5 = v195;
        v152 = v6 - 1;
        v153 = v195 + 1;
        v7 = hessize;
        a1 = v193;
        while (1)
        {
          v154 = v153 + 1;
          v155 = v153 < v195 || v154 > v196;
          if (v155 || v153 > v154)
          {
            break;
          }

          v157 = *v153 + 4;
          v158 = &hescode[v157];
          v159 = v158 + 1;
          v160 = v158 < hescode || v159 > &hann_window_320;
          v161 = v160 || v158 > v159;
          v162 = &hessize[v157];
          v163 = v162 + 1;
          v164 = !v161 && v162 >= hessize;
          v165 = !v164 || v163 > hescode;
          if (v165 || v162 > v163)
          {
            break;
          }

          push_indice(a1, 895, *v158, *v162);
          v167 = v192;
          a1 = v193;
          v168 = &hessize[*v153];
          v169 = v168 + 8;
          if (v168 + 8 < hessize)
          {
            break;
          }

          v170 = v168 + 10;
          if (v170 > hescode || v169 > v170)
          {
            break;
          }

          v10 += *v169;
          ++v153;
          if (!--v152)
          {
            goto LABEL_298;
          }
        }
      }

      v167 = v192;
      a1 = v193;
LABEL_298:
      v171 = (v6 + 1);
      if (v171 >= v167)
      {
        return v10;
      }

      v5 = v195;
      v6 = v196;
      v172 = v195 + v171;
      v173 = v171 + 1;
      v7 = hescode;
      while (1)
      {
        v174 = v172 + 1;
        v175 = v172 < v195 || v174 > v196;
        if (v175 || v172 > v174)
        {
          break;
        }

        v177 = *v172 + 4;
        v178 = &hescode[v177];
        v179 = v178 + 1;
        v180 = v178 < hescode || v179 > &hann_window_320;
        v181 = v180 || v178 > v179;
        v182 = &hessize[v177];
        v183 = v182 + 1;
        v184 = !v181 && v182 >= hessize;
        v185 = !v184 || v183 > hescode;
        if (v185 || v182 > v183)
        {
          break;
        }

        push_indice(a1, 895, *v178, *v182);
        a1 = v193;
        v187 = &hessize[*v172];
        v188 = v187 + 8;
        if (v187 + 8 < hessize)
        {
          break;
        }

        v189 = v187 + 10;
        if (v189 > hescode || v188 > v189)
        {
          break;
        }

        v10 += *v188;
        v190 = v173;
        ++v172;
        ++v173;
        if (v190 == v192)
        {
          return v10;
        }
      }
    }
  }

LABEL_99:
  if (a3 < 1)
  {
    v66 = 255;
    v61 = -256;
  }

  else
  {
    v60 = a3;
    LOWORD(v61) = -256;
    v62 = 255;
    v63 = a2;
    do
    {
      v65 = *v63;
      v63 += 2;
      v64 = v65;
      if (v65 > v61)
      {
        LOWORD(v61) = v64;
      }

      if (v64 < v62)
      {
        v62 = v64;
      }

      --v60;
    }

    while (v60);
    v66 = v62;
    v61 = v61;
  }

  v68 = 0;
  v69 = -v66;
  do
  {
    v70 = v68;
    v71 = v68;
    v72 = 2 << ++v68;
  }

  while (v72 <= v61 || v72 < v69);
  v74 = v71 + 3;
  v75 = a3;
  v76 = 1000;
  v67 = v70;
  do
  {
    v77 = 4;
    if (a3 >= 1)
    {
      v78 = v7;
      v79 = a3;
      do
      {
        v80 = *v78;
        v78 += 2;
        v81 = &hessize[v80 >> v71];
        v82 = (v81 + 8);
        a2 = (v81 + 10);
        v83 = v82 < hessize || a2 > hescode;
        if (v83 || v82 > a2)
        {
          goto LABEL_263;
        }

        v77 += v70 + *v82;
      }

      while (--v79);
    }

    if (v76 > v77)
    {
      v67 = v70;
    }

    if (v76 >= v77)
    {
      v76 = v77;
    }

    LOBYTE(v71) = ++v70;
  }

  while (v74 > v70);
  if (a3 >= 1)
  {
    v85 = v196;
    v86 = v7;
    v87 = v194;
    do
    {
      a2 = v85 + 1;
      v88 = v85 < v196 || a2 > v197;
      if (v88 || v85 > a2)
      {
        goto LABEL_263;
      }

      LODWORD(a2) = *v86;
      *v85 = *v86 & ~(-1 << v67);
      if (v87 < v194 || v87 + 1 > v195 || v87 > v87 + 1)
      {
        goto LABEL_263;
      }

      *v87++ = a2 >> v67;
      ++v86;
      ++v85;
    }

    while (--v75);
  }

  if (a5)
  {
    v9 = *a4;
    goto LABEL_145;
  }

  if (v10 >= v76)
  {
    *a4 = 1;
    return v76;
  }

  else
  {
    *a4 = 0;
  }

  return v10;
}

uint64_t small_symbol_enc_tran(uint64_t a1, __int16 *a2, int a3, __int16 *a4, int a5)
{
  v20[1] = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[2] = v5;
  v19[3] = v5;
  v19[0] = v5;
  v19[1] = v5;
  if (a3 < 1)
  {
LABEL_21:
    if (a5)
    {
      v17 = 1;
      encode_envelope_indices(a1, a3, -1, v19, v20, a4, 1, 2u, 1);
    }

    else
    {
      return (encode_envelope_indices(a1, a3, -1, v19, v20, a4, 0, 2u, 1) + 6);
    }
  }

  else
  {
    v6 = a3;
    v7 = v19;
    v8 = a3;
    do
    {
      v9 = v7 + 1;
      if (v7 < v19 || v9 > v20 || v7 > v9)
      {
LABEL_26:
        __break(0x5519u);
      }

      v12 = *a2;
      a2 += 2;
      *v7++ = v12 + 15;
      --v8;
    }

    while (v8);
    v13 = v19;
    while (1)
    {
      v14 = v13 + 1;
      if (v13 < v19 || v14 > v20 || v13 > v14)
      {
        goto LABEL_26;
      }

      if (*v13 > 0x1Fu)
      {
        break;
      }

      ++v13;
      if (!--v6)
      {
        goto LABEL_21;
      }
    }

    return -1;
  }

  return v17;
}

uint64_t small_symbol_enc(uint64_t a1, __int16 *a2, int a3, __int16 *a4, int a5)
{
  v40[1] = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39[2] = v5;
  v39[3] = v5;
  v39[0] = v5;
  v39[1] = v5;
  v38[2] = v5;
  v38[3] = v5;
  v38[0] = v5;
  v38[1] = v5;
  v6 = a2 + 2;
  if (a2 + 2 < a2)
  {
    goto LABEL_56;
  }

  v8 = &a2[2 * a3];
  if (v6 > v8)
  {
    goto LABEL_56;
  }

  v10 = a3;
  LOWORD(v39[0]) = *a2 + 46;
  if (a3 > 1)
  {
    v11 = 0;
    do
    {
      if (v6 < a2)
      {
        goto LABEL_56;
      }

      if ((v6 + 2) > v8)
      {
        goto LABEL_56;
      }

      if (v6 > v6 + 2)
      {
        goto LABEL_56;
      }

      v12 = v39 + v11 + 2;
      if (v12 < v39)
      {
        goto LABEL_56;
      }

      v13 = v39 + v11 + 4;
      if (v13 > v40 || v12 > v13)
      {
        goto LABEL_56;
      }

      v14 = *v6;
      v6 += 2;
      *v12 = v14 + 32;
      v11 += 2;
    }

    while (2 * a3 - 2 != v11);
  }

  if (a3 < 1)
  {
LABEL_41:
    if (a5)
    {
      v31 = 1;
      encode_envelope_indices(a1, a3, -1, v39, v40, a4, 1, 1u, 0);
      if (a3 >= 1)
      {
        v32 = v38;
        while (1)
        {
          v33 = v32 + 1;
          v34 = v32 < v38 || v33 > v39;
          if (v34 || v32 > v33)
          {
            break;
          }

          v36 = *v32++;
          v31 = 1;
          push_indice(a1, 895, v36, 1);
          if (!--v10)
          {
            return v31;
          }
        }

        goto LABEL_56;
      }
    }

    else
    {
      return (a3 + encode_envelope_indices(a1, a3, -1, v39, v40, a4, 0, 1u, 0) + 6);
    }
  }

  else
  {
    v15 = a3;
    v16 = v39;
    while (1)
    {
      v17 = v16 + 1;
      if (v16 < v39 || v17 > v40 || v16 > v17)
      {
        goto LABEL_56;
      }

      if (*v16 > 0x3Fu)
      {
        break;
      }

      ++v16;
      if (!--v15)
      {
        v20 = v39;
        v21 = v38;
        v22 = a3;
        while (1)
        {
          v23 = v20 + 1;
          v24 = v20 < v39 || v23 > v40;
          v25 = v24 || v20 > v23;
          v26 = v21 + 1;
          v27 = !v25 && v21 >= v38;
          v28 = !v27 || v26 > v39;
          if (v28 || v21 > v26)
          {
            break;
          }

          v30 = *v20;
          *v21++ = *v20 & 1;
          *v20++ = v30 >> 1;
          if (!--v22)
          {
            goto LABEL_41;
          }
        }

LABEL_56:
        __break(0x5519u);
      }
    }

    return -1;
  }

  return v31;
}

void p2a_threshold_quant(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, float a8, uint64_t a9, unint64_t a10, unint64_t a11, unsigned __int16 a12, __int16 a13, __int16 *a14)
{
  v20 = &a14[a12];
  if (a12 >= 1)
  {
    v21 = a12;
    v22 = a14;
    while ((v22 + 1) <= v20 && v22 <= v22 + 1)
    {
      *v22++ = 1;
      if (!--v21)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_53;
  }

LABEL_8:
  if ((a12 - a13) < a12)
  {
    v24 = (a12 - a13);
    while (1)
    {
      v25 = (a4 + 2 * v24);
      v26 = v25 + 1;
      v27 = v25 < a4 || v26 > a5;
      v28 = v27 || v25 > v26;
      v29 = (a6 + 2 * v24);
      v30 = v29 + 1;
      v31 = !v28 && v29 >= a6;
      v32 = !v31 || v30 > a7;
      if (v32 || v29 > v30)
      {
        break;
      }

      v34 = *v25;
      v35 = *v29;
      v36 = &a14[v24];
      if (v34 <= v35)
      {
        v37 = 0.0;
        v38 = 0.0;
        while (1)
        {
          v39 = (a2 + 4 * v34);
          v40 = v39 + 1;
          v41 = v39 < a2 || v40 > a3;
          if (v41 || v39 > v40)
          {
            goto LABEL_53;
          }

          v43 = *v39 * *v39;
          if (v43 > v38)
          {
            v38 = *v39 * *v39;
          }

          v37 = v37 + v43;
          v34 = (v34 + 1);
          if (v34 > v35)
          {
            if (v37 <= 0.0)
            {
              break;
            }

            v44 = (a10 + 2 * v24);
            if (v44 >= a10 && (v44 + 1) <= a11 && v44 <= v44 + 1)
            {
              v45 = log10((v38 / (v37 / *v44)));
              if ((v45 * 10.0) > a8)
              {
                break;
              }

              if (v36 >= a14 && (v36 + 1) <= v20 && v36 <= v36 + 1)
              {
                *v36 = 0;
                break;
              }
            }

            goto LABEL_53;
          }
        }
      }

      if (v36 < a14 || (v36 + 1) > v20 || v36 > v36 + 1)
      {
        break;
      }

      push_indice(a1, 995, *v36, 1);
      if (++v24 == a12)
      {
        return;
      }
    }

LABEL_53:
    __break(0x5519u);
  }
}

_WORD *return_bits_normal2(_WORD *result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = 0;
  v5 = a2 + 2 * a4;
  while (1)
  {
    v6 = (v5 + v4 * 2 - 8);
    v7 = v5 + v4 * 2 - 6;
    v8 = v6 < a2 || v7 > a3;
    if (v8 || v6 > v7)
    {
      break;
    }

    if (*v6 == 1)
    {
      v10 = &bits_lagIndices_modeNormal[v4];
      if (&bits_lagIndices_modeNormal[v4] < bits_lagIndices_modeNormal || v10 + 1 > word_19B3A1240 || v10 > v10 + 1)
      {
        break;
      }

      *result += *v10;
    }

    if (++v4 == 4)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t spt_shorten_domain_band_save(int a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14)
{
  v14 = 0;
  v15 = a6 + 2 * a1;
  v16 = a4 + 2 * a1;
  v17 = a2 + 2 * a1;
  while (1)
  {
    result = v17 + v14 - 8;
    v19 = v17 + v14 - 6;
    v20 = result < a2 || v19 > a3;
    v21 = v20 || result > v19;
    v22 = (a9 + v14);
    v23 = a9 + v14 + 2;
    v24 = !v21 && v22 >= a9;
    v25 = !v24 || v23 > a10;
    if (v25 || v22 > v23)
    {
      break;
    }

    *v22 = *result;
    result = v16 + v14 - 8;
    if (result < a4)
    {
      break;
    }

    v27 = v16 + v14 - 6;
    if (v27 > a5)
    {
      break;
    }

    if (result > v27)
    {
      break;
    }

    v28 = (a11 + v14);
    if (a11 + v14 < a11)
    {
      break;
    }

    if ((v28 + 1) > a12)
    {
      break;
    }

    if (v28 > v28 + 1)
    {
      break;
    }

    *v28 = *result;
    result = v15 + v14 - 8;
    if (result < a6)
    {
      break;
    }

    v29 = v15 + v14 - 6;
    if (v29 > a7)
    {
      break;
    }

    if (result > v29)
    {
      break;
    }

    v30 = (a13 + v14);
    if (a13 + v14 < a13 || (v30 + 1) > a14 || v30 > v30 + 1)
    {
      break;
    }

    result = *result;
    *v30 = result;
    v14 += 2;
    if (v14 == 8)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t spt_shorten_domain_pre(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14)
{
  v14 = 0;
  v15 = &bw_SPT_tbl;
  v16 = &basop_weight_a_inv_inv_gamma_tab_12k8;
  if (a8 == 16400)
  {
    v15 = &unk_19B358878;
  }

  else
  {
    v16 = &unk_19B358878;
  }

  v17 = a3 + 2 * a7;
  v18 = result + 2 * a7;
  while (1)
  {
    v19 = (a5 + v14);
    v20 = a5 + v14 + 2;
    v21 = a5 + v14 < a5 || v20 > a6;
    if (v21 || v19 > v20)
    {
      break;
    }

    v23 = &v15[v14 / 2];
    v24 = &v15[v14 / 2 + 1];
    v27 = v24 <= v16 && v23 <= v24 && v23 >= v15;
    v28 = !v27;
    v29 = (a13 + v14);
    if (*v19)
    {
      v30 = v29 + 1;
      if (v28 || v29 < a13 || v30 > a14 || v29 > v30)
      {
        break;
      }

      v34 = *v23;
      *v29 = v34;
      v35 = (a9 + v14);
      if (a9 + v14 < a9)
      {
        break;
      }

      if ((v35 + 1) > a10)
      {
        break;
      }

      if (v35 > v35 + 1)
      {
        break;
      }

      v36 = (v34 + (v34 >> 15));
      *v35 = *v19 - ((v34 + (v34 >> 15)) >> 1);
      v37 = (a11 + v14);
      if (a11 + v14 < a11)
      {
        break;
      }

      if ((v37 + 1) > a12)
      {
        break;
      }

      if (v37 > v37 + 1)
      {
        break;
      }

      v38 = (*v19 + (v36 >> 1));
      *v37 = v38;
      v39 = (v18 + v14 - 8);
      if (v39 < result)
      {
        break;
      }

      v40 = v18 + v14 - 6;
      if (v40 > a2 || v39 > v40)
      {
        break;
      }

      v41 = *v39;
      if (*v35 >= v41)
      {
        v54 = (v17 + v14 - 8);
        if (v54 < a3)
        {
          break;
        }

        v55 = v17 + v14 - 6;
        if (v55 > a4 || v54 > v55)
        {
          break;
        }

        v56 = *v54;
        if (v38 > v56)
        {
          *v37 = v56;
          *v35 = v56 - *v29 + 1;
        }
      }

      else
      {
        *v35 = v41;
        *v37 = v41 + *v29 - 1;
      }
    }

    else
    {
      v42 = v29 + 1;
      if (v28 || v29 < a13 || v42 > a14 || v29 > v42)
      {
        break;
      }

      v46 = *v23;
      *v29 = v46;
      v47 = (v18 + v14 - 8);
      if (v47 < result)
      {
        break;
      }

      v48 = v18 + v14 - 6;
      if (v48 > a2)
      {
        break;
      }

      if (v47 > v48)
      {
        break;
      }

      v49 = (v17 + v14 - 8);
      if (v49 < a3)
      {
        break;
      }

      v50 = v17 + v14 - 6;
      if (v50 > a4)
      {
        break;
      }

      if (v49 > v50)
      {
        break;
      }

      v51 = (a9 + v14);
      if (a9 + v14 < a9)
      {
        break;
      }

      if ((v51 + 1) > a10)
      {
        break;
      }

      if (v51 > v51 + 1)
      {
        break;
      }

      v52 = ((v46 + (v46 >> 15)) << 16) >> 17;
      *v51 = (*v49 + *v47) / 2 - v52;
      v53 = (a11 + v14);
      if (a11 + v14 < a11 || (v53 + 1) > a12 || v53 > v53 + 1)
      {
        break;
      }

      *v53 = v52 + (*v49 + *v47) / 2;
    }

    v14 += 2;
    if (v14 == 8)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t Isqrt_lc1(uint64_t result, __int16 *a2, _DWORD *a3)
{
  if (result <= 0)
  {
    *a2 = 0;
    return 0x7FFFFFFFLL;
  }

  v4 = &shift[*a2 & 1];
  v5 = v4 + 1;
  if (v4 < shift || v5 > L_table_isqrt || v4 >= v5)
  {
    goto LABEL_39;
  }

  v9 = *a2;
  v10 = L_shr(result, *v4);
  result = mac_r(0x8000, v9, -16384, a3);
  *a2 = result;
  v11 = v10 >> 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = v10 - 1081344;
  if (v10 < 0 && (v12 ^ v10) < 0)
  {
    HIWORD(v13) = 0x8000;
  }

  else
  {
    v13 = v10 - 0x100000;
    if (v10 < 1081344 || ((v13 ^ v12) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    HIWORD(v13) = 0x7FFF;
  }

  *a3 = 1;
LABEL_19:
  v14 = SHIWORD(v13);
  v15 = &L_table_isqrt[SHIWORD(v13)];
  v16 = v15 + 1;
  v18 = v15 < L_table_isqrt || v16 > table_isqrt_diff || v15 >= v16;
  v19 = table_isqrt_diff + v14;
  v20 = v19 + 1;
  if (v18 || v19 < table_isqrt_diff || v20 > sqrt_table_11487 || v19 >= v20)
  {
LABEL_39:
    __break(0x5519u);
    return result;
  }

  v24 = *v15;
  v25 = v11 * *v19;
  result = (v24 - 2 * v25);
  if ((v24 ^ (2 * v25)) < 0 && ((result ^ v24) & 0x80000000) != 0)
  {
    result = (v24 >> 31) ^ 0x7FFFFFFFu;
    *a3 = 1;
  }

  return result;
}