void CmhBEAM2NOpt::calc_cr_ci_vect(CmhBEAM2NOpt *this, float *a2, float *a3)
{
  v6 = *(this + 4);
  v7 = v6 / 2;
  if (v6 >= -1)
  {
    v8 = 0;
    v9 = v6;
    v10 = ((*(this + 13) * *(this + 3)) / 343.0);
    do
    {
      v11 = __sincos_stret(v8 * 6.28318531 / v9 * v10);
      cosval = v11.__cosval;
      a2[v8] = cosval;
      sinval = v11.__sinval;
      a3[v8++] = -sinval;
    }

    while (v7 + 1 != v8);
  }

  *a2 = 1.0;
  a2[v7] = 1.0;
  *a3 = 0.0;
  a3[v7] = 0.0;
  *(this + 9) = 0;
}

void CmhBEAM2NOpt::calc_wng_beta_bound(void **this, float a2)
{
  v2 = fminf(a2, 1.0);
  v3 = *(this + 6);
  if (v2 <= 0.0)
  {
    if (v3 >= 1)
    {
      memset_pattern16(this[34], &unk_1DE095DF0, 4 * v3);
    }
  }

  else if (v3 >= 1)
  {
    v4 = *(this + 13) * 6.28318531 * *(this + 3) / (343 * *(this + 4));
    *&v4 = v4;
    *&v5 = sqrt(2.0 / v2);
    v6 = (v3 + 3) & 0xFFFFFFFC;
    v7 = vdupq_n_s64(v3 - 1);
    v8 = vdupq_lane_s64(v5, 0);
    v9 = xmmword_1DE095150;
    v10 = xmmword_1DE095160;
    v11 = (this[34] + 8);
    v12.i64[0] = 0x100000001;
    v12.i64[1] = 0x100000001;
    __asm
    {
      FMOV            V6.2D, #-1.0
      FMOV            V7.4S, #1.0
    }

    v19 = vdupq_n_s64(4uLL);
    do
    {
      v20 = vmovn_s64(vcgeq_u64(v7, v10));
      v21 = vmulq_n_f32(vcvtq_f32_u32(vaddq_s32(vuzp1q_s32(v10, v9), v12)), *&v4);
      v22 = vminnmq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(_Q6, vcvtq_f64_f32(*v21.f32), v8)), vmlaq_f64(_Q6, vcvt_hight_f64_f32(v21), v8)), _Q7);
      if (vuzp1_s16(v20, *&v4).u8[0])
      {
        *(v11 - 2) = fmaxf(v22.f32[0], -1.0);
      }

      if (vuzp1_s16(v20, *&v4).i8[2])
      {
        *(v11 - 1) = fmaxf(v22.f32[1], -1.0);
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v7, *&v9))).i32[1])
      {
        *v11 = fmaxf(v22.f32[2], -1.0);
        v11[1] = fmaxf(v22.f32[3], -1.0);
      }

      v9 = vaddq_s64(v9, v19);
      v10 = vaddq_s64(v10, v19);
      v11 += 4;
      v6 -= 4;
    }

    while (v6);
  }
}

uint64_t CmhBEAM2NOpt::loadRVSSSuppressionLimits(CmhBEAM2NOpt *this)
{
  result = CmhBEAM2NOpt::interpolateFrequencyVector(&max_s_table, 0x41, *(this + 44), 125.0, *(this + 7), *(this + 3) / *(this + 4));
  v3 = *(this + 7);
  if (v3 >= 1)
  {
    v4 = *(this + 44);
    do
    {
      v5 = *v4;
      if (*v4 <= *(this + 90))
      {
        v5 = *(this + 90);
      }

      *v4++ = v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t CmhBEAM2NOpt::interpolateFrequencyVector(uint64_t this, float *a2, uint64_t a3, float a4, float *a5, float a6)
{
  if (a5 >= 1 && a4 > 0.0 && a6 > 0.0)
  {
    v6 = 0;
    do
    {
      v7 = (v6 * a6) / a4;
      v8 = vcvtps_s32_f32(v7);
      if (v8 >= a2)
      {
        v10 = *(this - 4 + 4 * a2);
      }

      else
      {
        v9 = vcvtms_s32_f32(v7);
        if (v8 == v9)
        {
          v10 = *(this + 4 * v9);
        }

        else
        {
          v10 = *(this + 4 * v9) + ((v7 - v9) * ((*(this + 4 * v8) - *(this + 4 * v9)) / (v8 - v9)));
        }
      }

      *(a3 + 4 * v6++) = v10;
    }

    while (a5 != v6);
  }

  return this;
}

void CmhBEAM2NOpt::process(CmhBEAM2NOpt *this, const DSPSplitComplex *__A, DSPSplitComplex *__C)
{
  v218 = *MEMORY[0x1E69E9840];
  if (!*this)
  {
    return;
  }

  v3 = __C;
  v4 = __A;
  if (*(this + 38) != 1)
  {
    v8 = __A[1];
    __Aa = *__C;
    v217 = v8;
    vDSP_zvmov(__A, 1, __C, 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
    if (!*(this + 60))
    {
      *(this + 33) = 5;
      if (*(this + 2) != 2)
      {
        v46 = *(this + 1);
        if (v46 == 1)
        {
          v47 = *(this + 51);
          v48 = (*(this + 4) + (*(this + 4) >> 31)) >> 1;
          p_Aa = &v217;
        }

        else
        {
          if (v46)
          {
            goto LABEL_76;
          }

          v47 = *(this + 51);
          v48 = (*(this + 4) + (*(this + 4) >> 31)) >> 1;
          p_Aa = &__Aa;
        }

        vDSP_zvmov(p_Aa, 1, v47, 1, v48);
        goto LABEL_76;
      }

      if (*(this + 11) >= 1)
      {
        v43 = 0;
        v44 = 0;
        v45 = &__Aa;
        do
        {
          vDSP_zvmov(v45, 1, (*(this + 51) + v43), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
          ++v44;
          v43 += 136;
          ++v45;
        }

        while (v44 < *(this + 11));
      }

LABEL_76:
      if (*(this + 94))
      {
        v90 = *(this + 6);
        if (v90 >= 1)
        {
          v91 = 0;
          v92 = *(this + 37);
          v93 = *(this + 38);
          v94 = v217.imagp + 1;
          v95 = __Aa.imagp + 1;
          v96 = v217.realp + 1;
          v97 = __Aa.realp + 1;
          v98 = *(this + 41) + 8;
          v99 = v93;
          v100 = v92;
          do
          {
            v101 = fabsf(*v97 + *v96) + fabsf(*v95 + *v94);
            *v100 = fmaxf(v101 + (*(v98 + 4 * (*v100 > v101)) * (*v100 - v101)), 0.000091553);
            ++v100;
            v102 = *v96++;
            v103 = v102;
            v104 = *v97++;
            v105 = v104;
            v106 = *v94++;
            v107 = v106;
            v108 = *v95++;
            v109 = vabds_f32(v103, v105) + vabds_f32(v107, v108);
            *v99 = fmaxf(v109 + (*(v98 + 4 * (*v99 > v109)) * (*v99 - v109)), 0.000030518);
            ++v99;
            ++v91;
            v98 += 8;
          }

          while (v90 > v91);
          v110 = 0;
          v111 = *(this + 39);
          v112 = v111;
          do
          {
            v113 = *v92++;
            v114 = v113;
            v115 = *v93++;
            *v112++ = (*(this + 91) * v114) / v115;
            ++v110;
          }

          while (v90 > v110);
          v116 = 0;
          v117 = *(this + 40);
          v118 = *(this + 44) + 4;
          v9.n128_u32[1] = 1072080879;
          v10.n128_u32[1] = 1072080879;
          do
          {
            v119 = *v111++;
            v120 = v119;
            if (v119 > 0.708)
            {
              v120 = 0.708000004;
            }

            if (v120 < 0.125)
            {
              v120 = 0.125;
            }

            v121 = v120;
            v122 = v121 * 108.2375 + -13.6263;
            if (v122 < 0.0)
            {
              v122 = 0.0;
            }

            if (v122 > 63.0)
            {
              v122 = 63.0;
            }

            v123 = rvss_table[v122];
            *v117 = v123;
            if (*(v118 + 4 * v116) > v123)
            {
              v123 = *(v118 + 4 * v116);
            }

            *v117++ = v123;
            ++v116;
          }

          while (v90 > v116);
        }
      }

      if (!*(this + 60))
      {
LABEL_138:
        if (*(this + 94))
        {
          v163 = *(this + 2);
          if (v163 >= 1)
          {
            v164 = 0;
            v165 = 0;
            while (1)
            {
              v166 = *(this + 51);
              *(this + 31) = 1;
              if (*(this + 32))
              {
                v167 = *(this + 33);
                v168 = &v217;
                if (v167 <= 1)
                {
                  if (!v167)
                  {
                    goto LABEL_153;
                  }

                  if (v167 == 1)
                  {
                    goto LABEL_152;
                  }
                }

                else
                {
                  switch(v167)
                  {
                    case 2:
                      goto LABEL_153;
                    case 3:
                      goto LABEL_152;
                    case 4:
                      v169 = *(this + 34);
                      if (v169 == 1)
                      {
LABEL_152:
                        v168 = &__Aa;
                      }

                      else
                      {
                        v168 = &v217;
                        if (!v169)
                        {
                          if (v163 == 2)
                          {
                            v170 = v164 == 0;
                          }

                          else
                          {
                            v170 = *(this + 1) == 0;
                          }

                          if (v170)
                          {
                            v168 = &__Aa;
                          }

                          else
                          {
                            v168 = &v217;
                          }
                        }
                      }

LABEL_153:
                      if ((v166 + v164) != v168)
                      {
                        v171 = v166 + v164;
                        memcpy(*(v166 + v164), v168->realp, 4 * (*(this + 4) / 2));
                        memcpy(*(v171 + 8), v168->imagp, 4 * (*(this + 4) / 2));
                        v163 = *(this + 2);
                      }

                      goto LABEL_156;
                  }
                }
              }

              *(this + 31) = 0;
LABEL_156:
              ++v165;
              v164 += 136;
              if (v165 >= v163)
              {
                if (*(this + 31))
                {
                  v172 = 1;
                }

                else
                {
                  v172 = v163 < 1;
                }

                if (v172)
                {
                  break;
                }

                v173 = 0;
                v174 = *(this + 34);
                v9.n128_u32[0] = 1.0;
                v10.n128_u32[0] = 786163455;
                v11.n128_u64[0] = 0;
                while (v174 != 1)
                {
                  if (v174)
                  {
                    v175 = &v217;
                    goto LABEL_176;
                  }

                  if (v163 == 2)
                  {
                    v175 = &__Aa + v173;
                    goto LABEL_176;
                  }

                  v176 = *(this + 1);
                  if (!v176)
                  {
                    break;
                  }

                  v175 = &v217;
                  if (v176 == 1)
                  {
                    goto LABEL_176;
                  }

LABEL_189:
                  if (++v173 == v163)
                  {
                    v197 = 0;
                    v198 = 0;
                    do
                    {
                      v199 = *(this + 40);
                      v200 = *(*(this + 51) + v197) + 4;
                      MEMORY[0x1E12BE7F0](v200, 1, v199, 1, v200, 1, *(this + 6), v9, v10, v11);
                      v201 = *(*(this + 51) + v197 + 8) + 4;
                      MEMORY[0x1E12BE7F0](v201, 1, v199, 1, v201, 1, *(this + 6));
                      ++v198;
                      v197 += 136;
                    }

                    while (v198 < *(this + 2));
                    goto LABEL_192;
                  }
                }

                v175 = &__Aa;
LABEL_176:
                v177 = *(this + 93);
                if (v177 >= 1)
                {
                  v178 = 0;
                  v179 = *(this + 95);
                  v180 = fabsf(v179);
                  v181 = (*(this + 51) + 136 * v173);
                  realp = v175->realp;
                  imagp = v175->imagp;
                  v184 = *(*(this + 101) + 8 * v173);
                  v185 = *v181;
                  v186 = v181[1] + 4;
                  v187 = v185 + 4;
                  v188 = imagp + 1;
                  v189 = realp + 1;
                  do
                  {
                    v190 = *(v187 + 4 * v178);
                    v191 = (fabsf(v189[v178]) + fabsf(v188[v178])) / (fabsf(v190) + fabsf(*(v186 + 4 * v178)));
                    v192 = 1.0;
                    if (v191 < *(this + 92))
                    {
                      *(v187 + 4 * v178) = v190 * v191;
                      *(v186 + 4 * v178) = v191 * *(v186 + 4 * v178);
                      v192 = v191;
                    }

                    *(v184 + 4 * v178) = v192;
                    if (*(this + 95) != 0.0 && *(this + 96) < (v178 + 1))
                    {
                      v193 = *(this + 97);
                      if (v191 < v193)
                      {
                        v194 = (v191 - *(this + 98)) / (vabds_f32(v193, *(this + 98)) + 1.0e-10);
                        if (v194 < 0.0)
                        {
                          v194 = 0.0;
                        }

                        v195 = (1.0 - v180) + (v180 * v194);
                        v196 = 1.0 - v195;
                        if (v179 >= 0.0)
                        {
                          v196 = -(1.0 - v195);
                        }

                        *(v187 + 4 * v178) = (v189[v178] * v196) + (v195 * *(v187 + 4 * v178));
                        *(v186 + 4 * v178) = (v188[v178] * v196) + (v195 * *(v186 + 4 * v178));
                      }
                    }

                    ++v178;
                  }

                  while (v177 != v178);
                }

                goto LABEL_189;
              }
            }
          }
        }

LABEL_192:
        if (*(this + 10))
        {
          if (*(this + 2) == 2)
          {
            v202 = 0;
            v203 = 0;
            do
            {
              v204 = *(*(this + 14) + 8 * v203);
              v205 = *(*(this + 51) + v202) + 4;
              MEMORY[0x1E12BE7F0](v205, 1, v204 + 4, 1, v205, 1, *(this + 6));
              v206 = *(*(this + 51) + v202 + 8) + 4;
              MEMORY[0x1E12BE7F0](v206, 1, v204 + 4, 1, v206, 1, *(this + 6));
              ++v203;
              v202 += 136;
            }

            while (v203 < *(this + 2));
          }

          else
          {
            v207 = *(*(this + 14) + 8 * *(this + 1));
            MEMORY[0x1E12BE7F0](**(this + 51) + 4, 1, v207 + 4, 1, **(this + 51) + 4, 1, *(this + 6));
            v208 = *(*(this + 51) + 8) + 4;
            MEMORY[0x1E12BE7F0](v208, 1, v207 + 4, 1, v208, 1, *(this + 6));
          }
        }

        v209 = *(this + 2);
        if (v209 < 1)
        {
          if (!*(this + 194))
          {
            return;
          }
        }

        else
        {
          v210 = (*(this + 51) + 8);
          do
          {
            **v210 = 0;
            **(v210 - 1) = 0;
            v210 += 17;
            --v209;
          }

          while (v209);
          v211 = 0;
          v212 = 0;
          do
          {
            vDSP_zvmov((*(this + 51) + v211), 1, v3, 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
            ++v212;
            v213 = *(this + 2);
            ++v3;
            v211 += 136;
          }

          while (v212 < v213);
          if (!*(this + 194))
          {
            return;
          }

          if (v213 == 2)
          {
            CmhBEAM2NOpt::getAuxVectors(this, 0);
            v214 = 1;
LABEL_208:
            CmhBEAM2NOpt::getAuxVectors(this, v214);
            return;
          }
        }

        v214 = *(this + 1);
        goto LABEL_208;
      }

      if (*(this + 11) >= 1)
      {
        v124 = 0;
        v125 = (this + 176);
        do
        {
          MEMORY[0x1E12BE7F0](*(*(this + 29) + 8 * v124), 1, *(v125 - 1), 1, *(v125 - 1), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
          v126 = *v125;
          v125 += 2;
          MEMORY[0x1E12BE7F0](*(*(this + 29) + 8 * v124++), 1, v126, 1, v126, 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
        }

        while (v124 < *(this + 11));
      }

      memcpy(**(this + 100), *(*(this + 51) + 48), 4 * (*(this + 4) >> 1));
      if (*(this + 2) == 2 && (memcpy(*(*(this + 100) + 8), *(*(this + 51) + 184), 4 * (*(this + 4) >> 1)), *(this + 2) == 2))
      {
        CmhBEAM2NOpt::abf(this, this + 21, this + 23, (*(this + 51) + 136), *(this + 51) + 136, 1u);
        v128 = *(this + 51);
        if (*(this + 66))
        {
          CmhBEAM2NOpt::abf(this, this + 23, this + 21, (v128 + 136), v128 + 136, 0);
        }

        else
        {
          CmhBEAM2NOpt::abf_output_only(this, *(this + 23), *(this + 24), *(this + 21), *(this + 22), (v128 + 136), v127);
        }

        CmhBEAM2NOpt::sns(this, *(this + 51) + 136);
      }

      else
      {
        v129 = *(this + 1);
        if (v129)
        {
          if (v129 != 1)
          {
            goto LABEL_120;
          }

          CmhBEAM2NOpt::abf(this, this + 21, this + 23, *(this + 51), *(this + 51), 1u);
          v131 = *(this + 51);
          if (*(this + 65))
          {
            v132 = (this + 184);
            v133 = (this + 168);
LABEL_113:
            CmhBEAM2NOpt::abf(this, v132, v133, v131, v131, 0);
            goto LABEL_116;
          }

          v134 = *(this + 23);
          v135 = *(this + 24);
          v136 = *(this + 21);
          v137 = *(this + 22);
LABEL_115:
          CmhBEAM2NOpt::abf_output_only(this, v134, v135, v136, v137, v131, v130);
LABEL_116:
          CmhBEAM2NOpt::sns(this, *(this + 51));
          if (*(this + 2) == 2)
          {
            v138 = 0;
            v139 = 0;
            do
            {
              MEMORY[0x1E12BE7F0](*(*(this + 13) + 8 * v139), 1, *(*(this + 51) + v138), 1, *(*(this + 51) + v138), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
              MEMORY[0x1E12BE7F0](*(*(this + 13) + 8 * v139++), 1, *(*(this + 51) + v138 + 8), 1, *(*(this + 51) + v138 + 8), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
              v140 = *(this + 2);
              v138 += 136;
            }

            while (v139 < v140);
LABEL_121:
            if (v140 == 2)
            {
              v141 = 0;
              v142 = 8;
              p_imagp = &__Aa.imagp;
              while (1)
              {
                v144 = *(this + 36);
                v145 = *(this + 64);
                v146 = v145 + 2;
                v147 = (*(*(this + 51) + v142 - 8) + 4 * v146);
                if (v144 == 1)
                {
                  break;
                }

                if (v144)
                {
                  memcpy(v147, &v217.realp[v146], 4 * (*(this + 6) + ~v145));
                  v152 = *(this + 64);
                  v149 = v152 + 2;
                  v150 = (*(*(this + 51) + v142) + 4 * (v152 + 2));
                  v151 = &v217.imagp;
                  goto LABEL_128;
                }

                memcpy(v147, &(*(p_imagp - 1))[v146], 4 * (*(this + 6) + ~v145));
                v148 = *(this + 64);
                v149 = v148 + 2;
                v150 = (*(*(this + 51) + v142) + 4 * (v148 + 2));
                v151 = p_imagp;
LABEL_129:
                memcpy(v150, &(*v151)[v149], 4 * (*(this + 6) + ~v148));
                ++v141;
                v142 += 136;
                p_imagp += 2;
                if (v141 >= *(this + 2))
                {
                  goto LABEL_138;
                }
              }

              memcpy(v147, &__Aa.realp[v146], 4 * (*(this + 6) + ~v145));
              v152 = *(this + 64);
              v149 = v152 + 2;
              v150 = (*(*(this + 51) + v142) + 4 * (v152 + 2));
              v151 = &__Aa.imagp;
LABEL_128:
              LODWORD(v148) = v152;
              goto LABEL_129;
            }

            v153 = *(this + 36);
            v154 = *(this + 64);
            v155 = v154 + 2;
            v156 = (**(this + 51) + 4 * v155);
            if (v153 == 1)
            {
              v157 = (this + 24);
              memcpy(v156, &__Aa.realp[v155], 4 * (*(this + 6) + ~v154));
              v162 = *(this + 64);
              v159 = v162 + 2;
              v160 = (*(*(this + 51) + 8) + 4 * (v162 + 2));
              v161 = &__Aa.imagp;
            }

            else
            {
              if (!v153)
              {
                v157 = (this + 24);
                memcpy(v156, (*(&__Aa.realp + 2 * *(this + 1)) + 4 * v155), 4 * (*(this + 6) + ~v154));
                v158 = *(this + 64);
                v159 = v158 + 2;
                v160 = (*(*(this + 51) + 8) + 4 * (v158 + 2));
                v161 = ((&__Aa + *(this + 1)) | 8);
LABEL_137:
                memcpy(v160, (*v161 + 4 * v159), 4 * (*v157 + ~v158));
                goto LABEL_138;
              }

              v157 = (this + 24);
              memcpy(v156, &v217.realp[v155], 4 * (*(this + 6) + ~v154));
              v162 = *(this + 64);
              v159 = v162 + 2;
              v160 = (*(*(this + 51) + 8) + 4 * (v162 + 2));
              v161 = &v217.imagp;
            }

            LODWORD(v158) = v162;
            goto LABEL_137;
          }

LABEL_120:
          MEMORY[0x1E12BE7F0](*(*(this + 13) + 8 * *(this + 1)), 1, **(this + 51), 1, **(this + 51), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
          MEMORY[0x1E12BE7F0](*(*(this + 13) + 8 * *(this + 1)), 1, *(*(this + 51) + 8), 1, *(*(this + 51) + 8), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
          LODWORD(v140) = *(this + 2);
          goto LABEL_121;
        }
      }

      CmhBEAM2NOpt::abf(this, this + 23, this + 21, *(this + 51), *(this + 51), 1u);
      v131 = *(this + 51);
      if (*(this + 65))
      {
        v132 = (this + 168);
        v133 = (this + 184);
        goto LABEL_113;
      }

      v134 = *(this + 21);
      v135 = *(this + 22);
      v136 = *(this + 23);
      v137 = *(this + 24);
      goto LABEL_115;
    }

    v12 = *(this + 103);
    if (!*(v12 + 44))
    {
LABEL_70:
      v86 = *(this + 27);
      v215.realp = *(this + 25);
      v215.imagp = v86;
      vDSP_zvmul(&v215, 1, &v217, 1, (this + 168), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1, 1);
      vDSP_zvsub(&__Aa, 1, (this + 168), 1, (this + 168), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
      v87 = *(this + 28);
      v215.realp = *(this + 26);
      v215.imagp = v87;
      vDSP_zvmul(&v215, 1, &__Aa, 1, (this + 184), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1, 1);
      vDSP_zvsub(&v217, 1, (this + 184), 1, (this + 184), 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
      if (*(this + 216))
      {
        v88 = 5;
      }

      else
      {
        v89 = *(*(this + 39) + 4 * *(this + 177)) * 32767.0;
        if (v89 > 32767.0)
        {
          v89 = 32767.0;
        }

        *(this + 155) = v89;
        CmhMicCheck::process((this + 464), __Aa.realp, __Aa.imagp, v217.realp, v217.imagp, this + 21, this + 23);
        v88 = *(this + 164);
      }

      *(this + 33) = v88;
      **(this + 22) = 0;
      **(this + 21) = 0;
      **(this + 24) = 0;
      **(this + 23) = 0;
      goto LABEL_76;
    }

    v13 = *(this + 51);
    v14 = *(v13 + 24);
    v15 = *(v13 + 40);
    v16 = *(this + 30);
    v17 = *(this + 213);
    v18 = __Aa.realp;
    v19 = __Aa.imagp;
    v20 = __Aa.realp[v17];
    v21 = v217;
    v22 = v217.realp[v17];
    v23 = __Aa.imagp[v17];
    v24 = v217.imagp[v17];
    v25 = v20 + v22;
    v26.f32[0] = v20 - v22;
    v27.f32[0] = v23 - v24;
    v26.f32[1] = v25;
    v28 = v12 + 36;
    v27.f32[1] = v23 + v24;
    v29 = vmul_f32(vadd_f32(vabs_f32(vmul_f32(v26, 0x3F0000003F000000)), vabs_f32(vmul_f32(v27, 0x3F0000003F000000))), 0x3F0000003F000000);
    v30 = vbsl_s8(vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3FD9996666666667uLL), vcvtq_f64_f32(v29))), v29, vdup_n_s32(0x3ECCCB33u));
    v31 = *(v12 + 28);
    v32 = vcgt_f32(v31, v30);
    v33 = 4;
    if (v32.i8[4])
    {
      v34 = 4;
    }

    else
    {
      v34 = 0;
    }

    v35 = (v28 + v34);
    if ((v32.i8[0] & 1) == 0)
    {
      v33 = 0;
    }

    v36.i32[0] = *(v28 + v33);
    v36.i32[1] = *v35;
    v37 = vmaxnm_f32(vmla_f32(v30, vsub_f32(v31, v30), v36), 0x3800000038000000);
    *(v12 + 28) = v37;
    v38 = v37.f32[1] - v37.f32[0];
    if ((v37.f32[1] - v37.f32[0]) < 0.0)
    {
      v38 = -(v37.f32[1] - v37.f32[0]);
    }

    if (v37.f32[1] > v37.f32[0])
    {
      v37.f32[0] = v37.f32[1];
    }

    v39 = fminf(v38 / v37.f32[0], 1.0);
    v40 = v39 * v39;
    v41 = 0.0;
    if (v40 > 0.25)
    {
      v41 = v40 * *(v12 + 24);
    }

    *(v12 + 20) = v41;
    if (v16)
    {
      goto LABEL_22;
    }

    v50 = *(this + 210);
    if (v50 > 0)
    {
      v51 = *(this + 209);
      v52 = *(v14 + 4 * v51 + 4);
      v53 = *(v15 + 4 * v51 + 4);
      if (v52 * 0.3 > v53 || v53 * 0.3 > v52)
      {
LABEL_22:
        *(this + 214) = 0;
LABEL_23:
        *(v12 + 20) = 0;
        v41 = 0.0;
        goto LABEL_52;
      }

      v55 = 0;
      v56 = 4 * v51 + 8;
      v57 = v15 + v56;
      v58 = v14 + v56;
      while (v50 - 1 != v55)
      {
        v59 = *(v58 + 4 * v55);
        v60 = *(v57 + 4 * v55++);
        if (v59 * 0.3 > v60 || v60 * 0.3 > v59)
        {
          *(this + 214) = v55 >= v50;
          if (v55 < v50)
          {
            goto LABEL_23;
          }

          goto LABEL_52;
        }
      }
    }

    *(this + 214) = 1;
LABEL_52:
    v62 = *(this + 208);
    v63 = (fabsf(v21.realp[v62]) + fabsf(v21.imagp[v62])) * 0.5;
    v64 = fmaxf(v63 + (*(v12 + 4 * (*(v12 + 76) > v63) + 80) * (*(v12 + 76) - v63)), 0.000030518);
    *(v12 + 76) = v64;
    v65 = *(this + 212);
    v66 = (fabsf(v18[v62]) + fabsf(v19[v62])) * 0.5;
    v67 = fmaxf(v66 + (*(v12 + 4 * (*v12 > v66) + 4) * (*v12 - v66)), 0.000030518);
    *v12 = v67;
    v69 = *(v12 + 12);
    v68 = *(v12 + 16);
    v70 = v69 * v65;
    if (v67 > v69)
    {
      v70 = v67;
    }

    if (v70 < 0.00048828)
    {
      v70 = 0.00048828;
    }

    *(v12 + 12) = v70;
    v71 = v64 + ((v68 * -4.0) * v67);
    v72 = *(v12 + 48);
    if (v41 <= 0.0075)
    {
      v75 = *(v12 + 52);
    }

    else
    {
      v73 = *(v12 + 56);
      v72 = v64 + (v73 * (v72 - v64));
      v74 = fabsf(v71);
      v75 = v74 + (v73 * (*(v12 + 52) - v74));
      *(v12 + 48) = v72;
      *(v12 + 52) = v75;
    }

    v76 = fmin(fmax(v75, 0.00000000305175781) / fmaxf(v72, 0.000015259), 1.0);
    v77 = *(v12 + 60);
    v78 = *(v12 + 64);
    v79 = (v67 * v77) < v64;
    v80 = v76;
    v81 = v77 * v64;
    v82 = !v79 && v67 <= v81;
    v83 = v80 * 0.01;
    if (v82)
    {
      v83 = v80;
    }

    v84 = v68 + ((v67 * (v71 * ((v41 / (v70 * v70)) * v83))) * 0.25);
    *(v12 + 16) = v84;
    *(v12 + 72) = v83;
    v85 = v84 * 4.0;
    if (v85 <= *(v12 + 68))
    {
      v85 = *(v12 + 68);
    }

    if (v85 >= v78)
    {
      v85 = v78;
    }

    *&v215.realp = v85;
    MEMORY[0x1E12BE940](v18, 1, &v215, v18, 1, *(this + 211) + 1);
    MEMORY[0x1E12BE940](__Aa.imagp, 1, &v215, __Aa.imagp, 1, *(this + 211) + 1);
    goto LABEL_70;
  }

  if (*(this + 2) == 2)
  {
    v6 = 0;
    do
    {
      vDSP_zvmov(v4, 1, v3, 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
      ++v6;
      ++v3;
      ++v4;
    }

    while (v6 < *(this + 2));
    if (*(this + 194))
    {
      LODWORD(__Aa.realp) = 1065353216;
      vDSP_vfill(&__Aa, **(this + 98), 1, *(this + 4));
      vDSP_vclr(**(this + 99), 1, *(this + 4));
      vDSP_vclr(*(*(this + 98) + 8), 1, *(this + 4));
      v7 = *(*(this + 99) + 8);
LABEL_27:
      vDSP_vfill(&__Aa, v7, 1, *(this + 4));
    }
  }

  else
  {
    vDSP_zvmov(&__A[*(this + 1)], 1, __C, 1, (*(this + 4) + (*(this + 4) >> 31)) >> 1);
    if (!*(this + 194))
    {
      return;
    }

    LODWORD(__Aa.realp) = 1065353216;
    v42 = *(this + 98);
    if (*(this + 1))
    {
      vDSP_vclr(*v42, 1, *(this + 4));
      v7 = **(this + 99);
      goto LABEL_27;
    }

    vDSP_vfill(&__Aa, *v42, 1, *(this + 4));
    vDSP_vclr(**(this + 99), 1, *(this + 4));
  }
}

void CmhBEAM2NOpt::abf(uint64_t a1, const float **a2, const float **a3, void *a4, uint64_t a5, unsigned int a6)
{
  v10 = a5 + 16;
  v11 = a6;
  v12 = *(a5 + 16 + 8 * a6);
  v68 = a5 + 32;
  v13 = *(a5 + 32 + 8 * a6);
  v14 = *(a1 + 64);
  v15 = *(a1 + 24);
  if (v15 >= 30)
  {
    v16 = 30;
  }

  else
  {
    v16 = v15;
  }

  v17 = a5 + 4 * a6;
  __B = *(v17 + 64);
  v74 = v14;
  __A = *(v17 + 88);
  vDSP_vabs(*a2, 1, *(a1 + 416), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  v71 = a2;
  vDSP_vabs(a2[1], 1, *(a1 + 424), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vasm(*(a1 + 416), 1, *(a1 + 424), 1, &CmhBEAM2NOpt::abf(DSPSplitComplex const&,DSPSplitComplex const&,DSPSplitComplex&,CmhBEAM2NOpt::DABF_STRUCT *,int)::kOneHalf, *(a1 + 416), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vclip(v12, 1, &CmhBEAM2NOpt::abf(DSPSplitComplex const&,DSPSplitComplex const&,DSPSplitComplex&,CmhBEAM2NOpt::DABF_STRUCT *,int)::kMinThreshold, &CmhBEAM2NOpt::abf(DSPSplitComplex const&,DSPSplitComplex const&,DSPSplitComplex&,CmhBEAM2NOpt::DABF_STRUCT *,int)::kMaxThreshold, v12, 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE940](v12, 1, &v74, *(a1 + 424), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  v18 = *(a1 + 16);
  v19 = v18 / 2;
  if (v18 >= 2)
  {
    v20 = 0;
    v21 = *(a1 + 416);
    v22 = *(v10 + 8 * v11);
    do
    {
      v23 = *(v21 + 4 * v20);
      if (v23 <= *(v22 + 4 * v20))
      {
        v23 = *(*(a1 + 424) + 4 * v20);
      }

      *(v22 + 4 * v20++) = v23;
    }

    while (v19 > v20);
  }

  vDSP_vthr(v12, 1, &CmhBEAM2NOpt::abf(DSPSplitComplex const&,DSPSplitComplex const&,DSPSplitComplex&,CmhBEAM2NOpt::DABF_STRUCT *,int)::kPeakMinValue0, v12, 1, v19);
  v24 = a3;
  vDSP_vabs(*a3, 1, *(a1 + 416), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vabs(a3[1], 1, *(a1 + 424), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vasm(*(a1 + 416), 1, *(a1 + 424), 1, &CmhBEAM2NOpt::abf(DSPSplitComplex const&,DSPSplitComplex const&,DSPSplitComplex&,CmhBEAM2NOpt::DABF_STRUCT *,int)::kOneHalf, *(a1 + 416), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vclip(v13, 1, &CmhBEAM2NOpt::abf(DSPSplitComplex const&,DSPSplitComplex const&,DSPSplitComplex&,CmhBEAM2NOpt::DABF_STRUCT *,int)::kMinThreshold, &CmhBEAM2NOpt::abf(DSPSplitComplex const&,DSPSplitComplex const&,DSPSplitComplex&,CmhBEAM2NOpt::DABF_STRUCT *,int)::kMaxThreshold, v13, 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE940](v13, 1, &v74, *(a1 + 424), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  v25 = *(a1 + 16);
  v26 = v25 / 2;
  if (v25 > 1)
  {
    v27 = 0;
    v28 = *(a1 + 416);
    v29 = *(v68 + 8 * v11);
    do
    {
      v30 = *(v28 + 4 * v27);
      if (v30 <= *(v29 + 4 * v27))
      {
        v30 = *(*(a1 + 424) + 4 * v27);
      }

      *(v29 + 4 * v27++) = v30;
    }

    while (v26 > v27);
  }

  vDSP_vthr(v13, 1, &CmhBEAM2NOpt::abf(DSPSplitComplex const&,DSPSplitComplex const&,DSPSplitComplex&,CmhBEAM2NOpt::DABF_STRUCT *,int)::kPeakMinValue0, v13, 1, v26);
  v31 = a5 + 72;
  *(a5 + 72 + 2 * v11) = 0;
  vDSP_vsmsb(v12, 1, &__B, v13, 1, *(a1 + 416), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  v33 = *(a1 + 416);
  if (v15 >= 1)
  {
    v34 = (v33 + 4);
    v35 = *(v31 + 2 * v11);
    do
    {
      v36 = *v34++;
      v32.n128_f32[0] = v36;
      if (v36 < 0.0)
      {
        ++v35;
      }

      else
      {
        --v35;
      }

      --v16;
    }

    while (v16);
    *(v31 + 2 * v11) = v35;
  }

  v37 = a5 + 48;
  MEMORY[0x1E12BE7F0](*(a5 + 48 + 8 * v11), 1, *v24, 1, v33, 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1, v32);
  MEMORY[0x1E12BE9A0](*(a1 + 416), 1, *v71, 1, *a4, 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE7F0](*(a5 + 48 + 8 * v11), 1, v24[1], 1, *(a1 + 416), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE9A0](*(a1 + 416), 1, v71[1], 1, a4[1], 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vmax(v12, 1, v13, 1, *(a1 + 416), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vthr(*(a1 + 416), 1, &CmhBEAM2NOpt::abf(DSPSplitComplex const&,DSPSplitComplex const&,DSPSplitComplex&,CmhBEAM2NOpt::DABF_STRUCT *,int)::kPeakMinValue, *(a1 + 416), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE990](*(a1 + 416), 1, *(a1 + 416), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vfill(&__A, *(a1 + 424), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vdiv(*(a1 + 416), 1, *(a1 + 424), 1, *(a1 + 432), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  if (*(v31 + 2 * v11) >= *(a5 + 2 * v11 + 76))
  {
    v46 = *(a1 + 256);
    v39 = a6;
    v47 = 0;
    if ((v46 & 0x80000000) == 0)
    {
      v48 = (*(a1 + 456) + 4);
      v49 = (*(a1 + 448) + 4);
      v50 = (*(a1 + 440) + 4);
      v51 = (*(a1 + 432) + 4);
      do
      {
        v52 = *v51++;
        v53 = *(a5 + 96 + 4 * v11);
        *v50++ = v52;
        *v49++ = 0;
        *v48++ = v53;
        ++v47;
      }

      while (v46 >= v47);
    }

    v54 = *(a1 + 24);
    if (v54 > v47)
    {
      v55 = v47;
      v56 = a6;
      v57 = *(a1 + 440);
      v58 = *(a1 + 448);
      v59 = *(a1 + 456);
      do
      {
        v60 = *(a5 + 96 + 4 * v11);
        v61 = *(a5 + 104) * v56;
        v62 = v55 + 1;
        *(v57 + 4 * v62) = 0;
        *(v58 + 4 * v62) = v56;
        *(v59 + 4 * v62) = v61 + ((1 - a6) * v60);
        v55 = ++v47;
      }

      while (v54 > v47);
    }
  }

  else
  {
    v38 = *(a1 + 24);
    v39 = a6;
    if (v38 >= 1)
    {
      v40 = 0;
      v41 = a6;
      v42 = (*(a1 + 456) + 4);
      v43 = (*(a1 + 448) + 4);
      v44 = (*(a1 + 440) + 4);
      do
      {
        v45 = (*(a5 + 104) * v41) + ((1 - a6) * *(a5 + 96 + 4 * v11));
        *v44++ = 0;
        *v43++ = v41;
        *v42++ = v45;
        ++v40;
      }

      while (v38 > v40);
    }
  }

  MEMORY[0x1E12BE7F0](*a4, 1, *v24, 1, *(a1 + 416), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE7F0](a4[1], 1, v24[1], 1, *(a1 + 424), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE5D0](*(a1 + 416), 1, *(a1 + 424), 1, *(a1 + 416), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE7F0](*(a1 + 416), 1, *(a1 + 440), 1, *(a1 + 416), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE7F0](*(a1 + 456), 1, *(v37 + 8 * v11), 1, *(a1 + 424), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE5D0](*(a1 + 416), 1, *(a1 + 424), 1, *(a1 + 416), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE7F0](*(a1 + 448), 1, *(a1 + 456), 1, *(a1 + 424), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE9A0](*(a1 + 424), 1, *(a1 + 448), 1, *(a1 + 424), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  MEMORY[0x1E12BE5D0](*(a1 + 416), 1, *(a1 + 424), 1, *(v37 + 8 * v11), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  vDSP_vclip(*(v37 + 8 * v11), 1, &CmhBEAM2NOpt::abf(DSPSplitComplex const&,DSPSplitComplex const&,DSPSplitComplex&,CmhBEAM2NOpt::DABF_STRUCT *,int)::kLmsHMin, &CmhBEAM2NOpt::abf(DSPSplitComplex const&,DSPSplitComplex const&,DSPSplitComplex&,CmhBEAM2NOpt::DABF_STRUCT *,int)::kLmsHMax, *(v37 + 8 * v11), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  if (!v39)
  {
    vDSP_vmin((*(v37 + 8 * v11) + 4), 1, *(a1 + 272), 1, (*(v37 + 8 * v11) + 4), 1, *(a1 + 16) / 2 - 1);
    if (!*(a1 + 284))
    {
      vDSP_vclip(*(v37 + 8 * v11), 1, &CmhBEAM2NOpt::abf(DSPSplitComplex const&,DSPSplitComplex const&,DSPSplitComplex&,CmhBEAM2NOpt::DABF_STRUCT *,int)::kLmsHMin, &CmhBEAM2NOpt::abf(DSPSplitComplex const&,DSPSplitComplex const&,DSPSplitComplex&,CmhBEAM2NOpt::DABF_STRUCT *,int)::zerof, *(v37 + 8 * v11), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
    }
  }

  v63 = *(a5 + 4 * v11 + 80) + -1.0;
  if (v63 >= (*(a1 + 24) - 1))
  {
    v63 = (*(a1 + 24) - 1);
  }

  v64 = v63 + 1.0;
  v65 = v64;
  if (v65 >= 1)
  {
    v66 = *(a1 + 200);
    v67 = *(a1 + 320);
    MEMORY[0x1E12BE940](*(v37 + 8 * v11) + 4, 1, v67 + 8, *(a1 + 416) + 4, 1, v64);
    MEMORY[0x1E12BE940](v66 + 4, 1, v67 + 8, *(a1 + 424) + 4, 1, v65);
    MEMORY[0x1E12BE5D0](*(a1 + 416) + 4, 1, *(a1 + 424) + 4, 1, *(a1 + 416) + 4, 1, v65);
    MEMORY[0x1E12BE9A0](v66 + 4, 1, *(a1 + 416) + 4, 1, *(a1 + 424) + 4, 1, v65);
    MEMORY[0x1E12BE7F0](*(a1 + 424) + 4, 1, *v24 + 1, 1, *(a1 + 416) + 4, 1, v65);
    MEMORY[0x1E12BE9A0](*(a1 + 416) + 4, 1, *v71 + 1, 1, *a4 + 4, 1, v65);
    MEMORY[0x1E12BE7F0](*(a1 + 424) + 4, 1, v24[1] + 1, 1, *(a1 + 416) + 4, 1, v65);
    MEMORY[0x1E12BE9A0](*(a1 + 416) + 4, 1, v71[1] + 1, 1, a4[1] + 4, 1, v65);
  }

  if (!v39)
  {
    MEMORY[0x1E12BE5D0](*v71, 1, *v24, 1, *(a1 + 416), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
    MEMORY[0x1E12BE940](*(a1 + 416), 1, a1 + 288, *(a1 + 416), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
    MEMORY[0x1E12BE5D0](*a4, 1, *(a1 + 416), 1, *a4, 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
    MEMORY[0x1E12BE5D0](v71[1], 1, v24[1], 1, *(a1 + 416), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
    MEMORY[0x1E12BE940](*(a1 + 416), 1, a1 + 288, *(a1 + 416), 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
    MEMORY[0x1E12BE5D0](a4[1], 1, *(a1 + 416), 1, a4[1], 1, (*(a1 + 16) + (*(a1 + 16) >> 31)) >> 1);
  }
}

float CmhBEAM2NOpt::abf_output_only(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, float result)
{
  v7 = *(a1 + 24);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 4 * v7;
    v10 = a6[1] + 4;
    v11 = *(a1 + 272);
    v12 = *a6 + 4;
    v13 = a6[6] + 4;
    do
    {
      v14 = *(v11 + v8);
      if (v14 >= *(v13 + v8))
      {
        v14 = *(v13 + v8);
      }

      *(v13 + v8) = v14;
      *(v12 + v8) = *(a2 + 4 + v8) - (v14 * *(a4 + 4 + v8));
      result = *(a3 + 4 + v8) - (*(v13 + v8) * *(a5 + 4 + v8));
      *(v10 + v8) = result;
      v8 += 4;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t CmhBEAM2NOpt::sns(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = 0.0;
  for (i = 8; i != 44; i += 4)
  {
    v5 = *(v2 + i);
    v6 = fminf(v5, 1.0);
    if (v5 > 0.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }

    v3 = v7 + v3;
  }

  v8 = *(a2 + 120);
  *v8 = sns_table[vcvts_n_s32_f32(fminf(fmaxf(*(a2 + 128) * v3, 0.0), 1.0), 6uLL) + 1];
  v9 = *(result + 24);
  if (v9 > 1)
  {
    v10 = v8 + 1;
    v11 = v9 - 1;
    v12 = (v2 + 8);
    do
    {
      v13 = *v12++;
      v14 = vcvtd_n_s64_f64(fminf(v13, 1.0), 6uLL);
      if (v13 > 0.0)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = 1;
      }

      *v10++ = LODWORD(sns_table[v15]);
      --v11;
    }

    while (v11);
  }

  if (v9 >= 1)
  {
    v16 = *(result + 248);
    v17 = 0.0;
    do
    {
      v17 = *v8 + (v17 - *v8) * 0.5;
      *v8 = v17;
      v18 = *v16++;
      v19 = v18;
      if (v18 < v17)
      {
        v19 = v17;
      }

      if (v19 <= *(a2 + 112))
      {
        v19 = *(a2 + 112);
      }

      *v8 = v19;
      v20 = *(a2 + 132) * (v19 + -1.0) + 1.0;
      *v8++ = v20;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t CmhBEAM2NOpt::getAuxVectors(uint64_t this, int a2)
{
  v2 = *(this + 784);
  v3 = *(this + 8);
  v4 = v3 - 1;
  if (v3 - 1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v3 - 1;
  }

  v6 = (v2 + 8 * v5);
  v7 = *(this + 16);
  v8 = (v7 + (v7 >> 31)) >> 1;
  v9 = *(this + 792);
  v10 = (v9 + 8 * v5);
  v11 = *(this + 216);
  v12 = *(this + 232);
  v13 = *(this + 408) + 136 * v5;
  v14 = *(this + 320);
  if (v3 > 2)
  {
    v4 = 1;
  }

  v15 = (v9 + 8 * v4);
  v16 = (v2 + 8 * v4);
  if (a2 == 1)
  {
    v17 = v12[1];
  }

  else
  {
    v17 = *v12;
  }

  if (a2 == 1)
  {
    v18 = *v12;
  }

  else
  {
    v18 = v12[1];
  }

  if (a2 == 1)
  {
    v19 = *(this + 216);
  }

  else
  {
    v19 = *(this + 224);
  }

  if (a2 == 1)
  {
    v20 = *(this + 200);
  }

  else
  {
    v20 = *(this + 208);
  }

  if (a2 == 1)
  {
    v11 = *(this + 224);
    v21 = *(this + 208);
  }

  else
  {
    v21 = *(this + 200);
  }

  if (a2 == 1)
  {
    v22 = v16;
  }

  else
  {
    v22 = v10;
  }

  if (a2 == 1)
  {
    v23 = v15;
  }

  else
  {
    v23 = v6;
  }

  v24 = *v23 + 4;
  v25 = v24 + 4 * v8;
  v26 = *v22 + 4;
  v27 = v26 + 4 * v8;
  v28 = *(this + 824);
  if (*(v28 + 44))
  {
    v29 = *(v28 + 16) * 4.0;
  }

  else
  {
    v29 = 1.0;
  }

  v30 = *(v13 + 48);
  v31 = *(*(this + 808) + 8 * v5);
  v32 = *(*(this + 112) + 8 * a2);
  v33 = *(v13 + 80);
  v34 = *(*(this + 104) + 8 * a2);
  v35 = *(v14 + 8);
  v36 = *(this + 288);
  if (!*(this + 124) || !*(this + 376))
  {
    v40 = *(this + 24);
    if (v40 < 1)
    {
      goto LABEL_77;
    }

    v71 = v32;
    v41 = 0;
    v42 = *(this + 200) + 4;
    v43 = *(*(this + 800) + 8 * v5) + 4;
    v44 = v30 + 4;
    v45 = v34 + 4;
    v46 = v11 + 4;
    v47 = v20 + 4;
    v48 = v19 + 4;
    v49 = v18 + 4;
    v50 = v17 + 4;
    v51 = *(this + 256);
    v52 = this + 260;
    v53 = v21 + 4;
    v54 = -v36;
    v55 = *(this + 376);
    while (v41 > v51)
    {
      *(v24 + 4 * v41) = 1065353216;
      *(v25 + 4 * v41) = 0;
      *(v26 + 4 * v41) = 0;
      *(v27 + 4 * v41) = 0;
      if (v55)
      {
        goto LABEL_58;
      }

LABEL_61:
      if (v40 == ++v41)
      {
        v32 = v71;
        goto LABEL_71;
      }
    }

    if (v41 >= v33)
    {
      v56 = *(this + 272);
      v57 = *(this + 284);
    }

    else
    {
      v56 = *(this + 272);
      v57 = *(this + 284);
      if (*(v52 + 4 * v5) == 1)
      {
        v58 = *(v56 + 4 * v41);
        if (v58 >= *(v44 + 4 * v41))
        {
          v58 = *(v44 + 4 * v41);
        }

        v59 = fminf(v58, 0.0);
        if (!v57)
        {
          v58 = v59;
        }

        v60 = (v58 * v35) - (*(v42 + 4 * v41) * (1.0 - v35));
        goto LABEL_53;
      }
    }

    v60 = *(v56 + 4 * v41);
    if (v60 >= *(v43 + 4 * v41))
    {
      v60 = *(v43 + 4 * v41);
    }

    v61 = fminf(v60, 0.0);
    if (!v57)
    {
      v60 = v61;
    }

LABEL_53:
    if (*(this + 240))
    {
      *(v24 + 4 * v41) = *(v50 + 4 * v41) + ((v60 * *(v47 + 4 * v41)) * *(v49 + 4 * v41));
      *(v25 + 4 * v41) = (v60 * *(v48 + 4 * v41)) * *(v49 + 4 * v41);
      *(v26 + 4 * v41) = -(*(v50 + 4 * v41) * *(v53 + 4 * v41)) - (*(v49 + 4 * v41) * v60);
      *(v27 + 4 * v41) = -(*(v50 + 4 * v41) * *(v46 + 4 * v41));
      if (*(v52 + 4 * v5) == 1)
      {
        *(v24 + 4 * v41) = *(v24 + 4 * v41) + (v36 * (*(v50 + 4 * v41) - (*(v47 + 4 * v41) * *(v49 + 4 * v41))));
        *(v25 + 4 * v41) = *(v25 + 4 * v41) + ((*(v48 + 4 * v41) * v54) * *(v49 + 4 * v41));
        *(v26 + 4 * v41) = *(v26 + 4 * v41) + (v36 * (*(v49 + 4 * v41) - (*(v53 + 4 * v41) * *(v50 + 4 * v41))));
        *(v27 + 4 * v41) = *(v27 + 4 * v41) + ((*(v46 + 4 * v41) * v54) * *(v50 + 4 * v41));
      }
    }

    else
    {
      *(v24 + 4 * v41) = 1065353216;
      *(v25 + 4 * v41) = 0;
      *(v26 + 4 * v41) = 0;
      *(v27 + 4 * v41) = 0;
    }

    *(v24 + 4 * v41) = *(v45 + 4 * v41) * *(v24 + 4 * v41);
    *(v25 + 4 * v41) = *(v45 + 4 * v41) * *(v25 + 4 * v41);
    *(v26 + 4 * v41) = *(v45 + 4 * v41) * *(v26 + 4 * v41);
    *(v27 + 4 * v41) = *(v45 + 4 * v41) * *(v27 + 4 * v41);
    if (!v55)
    {
      goto LABEL_61;
    }

LABEL_58:
    if (v41 < *(this + 372))
    {
      *(v24 + 4 * v41) = *(v31 + 4 * v41) * *(v24 + 4 * v41);
      *(v25 + 4 * v41) = *(v31 + 4 * v41) * *(v25 + 4 * v41);
      *(v26 + 4 * v41) = *(v31 + 4 * v41) * *(v26 + 4 * v41);
      *(v27 + 4 * v41) = *(v31 + 4 * v41) * *(v27 + 4 * v41);
    }

    *(v24 + 4 * v41) = *(v14 + 4 * v41) * *(v24 + 4 * v41);
    *(v25 + 4 * v41) = *(v14 + 4 * v41) * *(v25 + 4 * v41);
    *(v26 + 4 * v41) = *(v14 + 4 * v41) * *(v26 + 4 * v41);
    *(v27 + 4 * v41) = *(v14 + 4 * v41) * *(v27 + 4 * v41);
    goto LABEL_61;
  }

  v37 = *(this + 132);
  v38 = 1.0;
  v39 = 0.0;
  if (v37 != 4)
  {
    if (v37 != 2 && v37)
    {
      goto LABEL_68;
    }

LABEL_67:
    v38 = 0.0;
    v39 = 1.0;
    goto LABEL_68;
  }

  v62 = *(this + 136);
  if (v62 == 1)
  {
    goto LABEL_68;
  }

  if (v62)
  {
    goto LABEL_67;
  }

  if (v3 == 2)
  {
    v63 = a2 == 0;
  }

  else
  {
    v63 = *(this + 4) == 0;
  }

  if (v63)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = 1.0;
  }

  if (!v63)
  {
    v38 = 0.0;
  }

LABEL_68:
  LODWORD(v40) = *(this + 24);
  if (v40 >= 1)
  {
    v64 = (*v6 + 4);
    v65 = (*v10 + 4);
    v66 = *(this + 24);
    do
    {
      *v64 = v38;
      v64[v8] = 0.0;
      *v65 = v39;
      v65[v8] = 0.0;
      ++v65;
      ++v64;
      --v66;
    }

    while (v66);
LABEL_71:
    if (*(this + 40))
    {
      v67 = v40 < 1;
    }

    else
    {
      v67 = 1;
    }

    if (!v67)
    {
      v68 = 0;
      v69 = v32 + 4;
      do
      {
        *(v24 + v68) = *(v69 + v68) * *(v24 + v68);
        *(v25 + v68) = *(v69 + v68) * *(v25 + v68);
        *(v26 + v68) = *(v69 + v68) * *(v26 + v68);
        *(v27 + v68) = *(v69 + v68) * *(v27 + v68);
        v68 += 4;
      }

      while (4 * v40 != v68);
    }
  }

LABEL_77:
  if (v7 >= 1)
  {
    v70 = *v6;
    do
    {
      *v70 = v29 * *v70;
      ++v70;
      --v7;
    }

    while (v7);
  }

  return this;
}

void CmhBEAM2NOpt::setParameter(CmhBEAM2NOpt *this, int a2, CmhBEAM2NOpt *a3, int16x4_t a4)
{
  switch(a2)
  {
    case 3:
      *(*(this + 103) + 44) = *a3;
      return;
    case 4:
      v13 = *a3;
      *(this + 65) = *a3;
      goto LABEL_71;
    case 5:
      *(this + 94) = *a3;
      return;
    case 9:

      CmhBEAM2NOpt::setSpatialFilterReal(this, a3);
      return;
    case 10:

      CmhBEAM2NOpt::setSpatialFilterImag(this, a3);
      return;
    case 13:
      v23 = a3;
      v24 = 0;
      goto LABEL_49;
    case 14:
      v26 = a3;
      v27 = 0;
      goto LABEL_53;
    case 15:
      v23 = a3;
      v24 = 1;
LABEL_49:

      CmhBEAM2NOpt::setModelSpatialFilterReal(this, v23, v24);
      return;
    case 16:
      v26 = a3;
      v27 = 1;
LABEL_53:

      CmhBEAM2NOpt::setModelSpatialFilterImag(this, v26, v27);
      return;
    case 17:

      CmhBEAM2NOpt::setModelFreqCompVector(this, a3);
      return;
    case 18:

      CmhBEAM2NOpt::setModelOmniEQVector(this, a3);
      return;
    case 19:
      v14 = a3;
      v15 = 0;
      goto LABEL_66;
    case 20:
      v28 = a3;
      v29 = 0;
      goto LABEL_90;
    case 21:
      v14 = a3;
      v15 = 1;
LABEL_66:

      CmhBEAM2NOpt::setModelFreqCompVector(this, v14, v15);
      return;
    case 22:
      v28 = a3;
      v29 = 1;
LABEL_90:

      CmhBEAM2NOpt::setModelOmniEQVector(this, v28, v29);
      return;
    case 29:
      v38 = *(this + 2);
      if (v38 >= 1)
      {
        a4.i32[0] = *a3;
        v39 = *(this + 51);
        v40 = (v38 + 3) & 0xFFFFFFFC;
        v41 = xmmword_1DE095150;
        v42 = xmmword_1DE095160;
        v43 = vdupq_n_s64(v38 - 1);
        v44 = vdupq_n_s64(4uLL);
        do
        {
          v45 = vmovn_s64(vcgeq_u64(v43, v42));
          if (vuzp1_s16(v45, a4).u8[0])
          {
            v39[16] = a4.i32[0];
          }

          if (vuzp1_s16(v45, a4).i8[2])
          {
            v39[50] = a4.i32[0];
          }

          if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v43, *&v41))).i32[1])
          {
            v39[84] = a4.i32[0];
            v39[118] = a4.i32[0];
          }

          v41 = vaddq_s64(v41, v44);
          v42 = vaddq_s64(v42, v44);
          v39 += 136;
          v40 -= 4;
        }

        while (v40);
      }

      return;
    case 30:
      v50 = __exp10(*a3 * 0.1);
      *(this + 70) = v50;

      CmhBEAM2NOpt::calc_wng_beta_bound(this, v50);
      return;
    case 31:
      v48 = *a3;
      v49 = *(this + 51);
      *(v49 + 108) = *a3;
      if (*(this + 2) >= 2)
      {
        *(v49 + 244) = v48;
      }

      return;
    case 34:
      v11 = *a3;
      v12 = *(this + 51);
      *(v12 + 112) = *a3;
      if (*(this + 2) >= 2)
      {
        *(v12 + 248) = v11;
      }

      return;
    case 35:
      *(this + 71) = *a3;
      return;
    case 36:
      *(this + 72) = *a3;
      return;
    case 37:
      if (*a3 <= 1u)
      {
        *(this + 1) = *a3;
      }

      return;
    case 38:
      *(this + 30) = *a3;
      return;
    case 39:

      CmhBEAM2NOpt::setABFVector(this, a3);
      return;
    case 40:
      v30 = *(this + 6);
      if (v30 >= 1)
      {
        v31 = *(this + 2);
        if (v31 >= 1)
        {
          v31 = 1;
        }

        v32 = *(this + 51) + 136 * v31;
        v33 = *(v32 - 88);
        v34 = (*(v32 - 80) + 4);
        v35 = (v33 + 4);
        do
        {
          v36 = *a3;
          a3 = (a3 + 4);
          *v35++ = v36;
          *v34++ = v36;
          --v30;
        }

        while (v30);
      }

      return;
    case 41:
      v16 = *(this + 6);
      if (v16 >= 1)
      {
        v17 = *(this + 2);
        if (v17 >= 2)
        {
          v17 = 2;
        }

        v18 = *(this + 51) + 136 * v17;
        v19 = *(v18 - 88);
        v20 = (*(v18 - 80) + 4);
        v21 = (v19 + 4);
        do
        {
          v22 = *a3;
          a3 = (a3 + 4);
          *v21++ = v22;
          *v20++ = v22;
          --v16;
        }

        while (v16);
      }

      return;
    case 44:
      *(this + 38) = *a3;
      return;
    case 45:
      *(this + 32) = *a3;
      return;
    case 46:
      *(this + 31) = *a3;
      return;
    case 47:
      *(this + 33) = *a3;
      return;
    case 48:
      v37 = *a3;
      *(this + 34) = *a3;
      *(this + 143) = v37;
      goto LABEL_132;
    case 49:
      *(this + 60) = *a3;
      return;
    case 50:
      *(this + 65) = *a3;
      return;
    case 51:
      v13 = *a3;
LABEL_71:
      *(this + 66) = v13;
      return;
    case 52:
      v46 = *a3;
      v47 = *(this + 2);
      if (v47 >= 1)
      {
        v47 = 1;
      }

      goto LABEL_125;
    case 53:
      v46 = *a3;
      v47 = *(this + 2);
      if (v47 >= 2)
      {
        v47 = 2;
      }

LABEL_125:
      *(*(this + 51) + 136 * v47 - 28) = v46;
      return;
    case 54:
      v9 = *a3;
      v10 = *(this + 2);
      if (v10 >= 1)
      {
        v10 = 1;
      }

      goto LABEL_83;
    case 55:
      v9 = *a3;
      v10 = *(this + 2);
      if (v10 >= 2)
      {
        v10 = 2;
      }

LABEL_83:
      *(*(this + 51) + 136 * v10 - 24) = v9;
      return;
    case 56:
      v7 = ((*a3 / *(this + 3)) * *(this + 4));
      *(this + 8) = *a3;
      v8 = *(this + 6) - 1;
      if (v8 >= v7)
      {
        v8 = v7;
      }

      *(this + 64) = v8;
      return;
    case 58:
      *(this + 125) = *a3;
      goto LABEL_132;
    case 59:
      v25 = __exp10((*a3 / -20.0));
      *(this + 90) = v25;

      CmhBEAM2NOpt::loadRVSSSuppressionLimits(this);
      return;
    case 60:
      *(this + 126) = *a3;
      goto LABEL_132;
    case 61:
      *(this + 127) = *a3;
      goto LABEL_132;
    case 62:
      *(this + 128) = *a3;
      goto LABEL_132;
    case 63:
      *(this + 129) = *a3;
      goto LABEL_132;
    case 64:
      *(this + 130) = *a3;
      goto LABEL_132;
    case 65:
      *(this + 131) = *a3;
      goto LABEL_132;
    case 66:
      *(this + 132) = *a3;
      goto LABEL_132;
    case 67:
      *(this + 133) = *a3;
      goto LABEL_132;
    case 68:
      *(this + 134) = *a3;
      goto LABEL_132;
    case 69:
      *(this + 135) = *a3;
      goto LABEL_132;
    case 70:
      *(this + 136) = *a3;
      goto LABEL_132;
    case 71:
      *(this + 137) = *a3;
      goto LABEL_132;
    case 72:
      *(this + 138) = *a3;
      goto LABEL_132;
    case 73:
      *(this + 139) = *a3;
      goto LABEL_132;
    case 74:
      *(this + 140) = *a3;
      goto LABEL_132;
    case 75:
      *(this + 141) = *a3;
      goto LABEL_132;
    case 76:
      *(this + 142) = *a3;
      goto LABEL_132;
    case 77:
      v51 = 0;
      do
      {
        *(this + v51 + 500) = *(a3 + v51);
        v51 += 4;
      }

      while (v51 != 76);
LABEL_132:
      v54 = (this + 464);

      CmhMicCheck::init_check_mics(v54);
      return;
    case 78:

      CmhBEAM2NOpt::setModelFreqEQVector(this, a3);
      return;
    case 79:
      v52 = a3;
      v53 = 0;
      goto LABEL_136;
    case 80:
      v52 = a3;
      v53 = 1;
LABEL_136:

      CmhBEAM2NOpt::setModelFreqEQVector(this, v52, v53);
      break;
    case 84:
      *(this + 10) = *a3;
      break;
    case 85:
      *(this + 194) = *a3;
      break;
    case 90:
      *(this + 216) = *a3;
      break;
    case 91:
      *(this + 95) = *a3;
      break;
    case 92:
      v5 = *a3;
      *(this + 35) = *a3;
      v6 = ((v5 / *(this + 3)) * *(this + 4));
      if (*(this + 6) - 1 < v6)
      {
        v6 = *(this + 6) - 1;
      }

      *(this + 96) = v6;
      break;
    case 93:
      *(this + 97) = *a3;
      break;
    case 94:
      *(this + 98) = *a3;
      break;
    case 95:
      *(this + 36) = *a3;
      break;
    default:
      return;
  }
}

uint64_t CmhBEAM2NOpt::setSpatialFilterReal(uint64_t this, float *a2)
{
  v2 = *(this + 28);
  if (v2 >= 1)
  {
    v3 = *(this + 200);
    do
    {
      v4 = *a2++;
      *v3++ = v4;
      --v2;
    }

    while (v2);
  }

  v5 = ((*(this + 32) / *(this + 12)) * *(this + 16));
  if (*(this + 24) - 1 < v5)
  {
    v5 = *(this + 24) - 1;
  }

  *(this + 256) = v5;
  *(this + 36) = 1;
  return this;
}

uint64_t CmhBEAM2NOpt::setSpatialFilterImag(uint64_t this, float *a2)
{
  v2 = *(this + 28);
  if (v2 >= 1)
  {
    v3 = *(this + 216);
    do
    {
      v4 = *a2++;
      *v3++ = v4;
      --v2;
    }

    while (v2);
  }

  v5 = ((*(this + 32) / *(this + 12)) * *(this + 16));
  if (*(this + 24) - 1 < v5)
  {
    v5 = *(this + 24) - 1;
  }

  *(this + 256) = v5;
  *(this + 36) = 1;
  return this;
}

uint64_t CmhBEAM2NOpt::setModelSpatialFilterReal(CmhBEAM2NOpt *this, CmhBEAM2NOpt *a2, unsigned int a3)
{
  result = CmhBEAM2NOpt::interpolateFrequencyVector(a2, 0x101, *(this + a3 + 25), 93.75, *(this + 7), *(this + 3) / *(this + 4));
  v5 = ((*(this + 8) / *(this + 3)) * *(this + 4));
  if (*(this + 6) - 1 < v5)
  {
    v5 = *(this + 6) - 1;
  }

  *(this + 64) = v5;
  *(this + 9) = 1;
  return result;
}

uint64_t CmhBEAM2NOpt::setModelSpatialFilterImag(CmhBEAM2NOpt *this, CmhBEAM2NOpt *a2, unsigned int a3)
{
  v4 = (this + 216);
  CmhBEAM2NOpt::interpolateFrequencyVector(a2, 0x101, *(this + a3 + 27), 93.75, *(this + 7), *(this + 3) / *(this + 4));
  v5 = *(this + 3);
  v6 = *(this + 4);
  v7 = ((*(this + 8) / v5) * v6);
  v8 = *(this + 5);
  if (*(this + 6) - 1 < v7)
  {
    v7 = *(this + 6) - 1;
  }

  *(this + 64) = v7;
  *(this + 9) = 1;

  return CmhMicCheck::initialize((this + 464), v5, v8, v6 / 2 + 1, this + 25, v4);
}

float CmhBEAM2NOpt::setModelFreqCompVector(CmhBEAM2NOpt *this, CmhBEAM2NOpt *a2)
{
  CmhBEAM2NOpt::setModelFreqCompVector(this, a2, 0);

  return CmhBEAM2NOpt::setModelFreqCompVector(this, a2, 1u);
}

float CmhBEAM2NOpt::setModelFreqCompVector(CmhBEAM2NOpt *this, CmhBEAM2NOpt *a2, unsigned int a3)
{
  CmhBEAM2NOpt::interpolateFrequencyVector(a2, 0x101, *(*(this + 12) + 8 * a3), 93.75, *(this + 7), *(this + 3) / *(this + 4));
  v6 = *(this + 7);
  if (v6 >= 1)
  {
    v7 = *(*(this + 12) + 8 * a3);
    v8 = *(*(this + 29) + 8 * a3);
    do
    {
      v9 = *v7++;
      result = v9;
      *v8++ = v9;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t CmhBEAM2NOpt::setModelOmniEQVector(CmhBEAM2NOpt *this, CmhBEAM2NOpt *a2)
{
  CmhBEAM2NOpt::interpolateFrequencyVector(a2, 0x101, **(this + 13), 93.75, *(this + 7), *(this + 3) / *(this + 4));
  v4 = *(*(this + 13) + 8);
  v5 = *(this + 7);
  v6 = *(this + 3) / *(this + 4);

  return CmhBEAM2NOpt::interpolateFrequencyVector(a2, 0x101, v4, 93.75, v5, v6);
}

uint64_t CmhBEAM2NOpt::setABFVector(uint64_t this, float *a2)
{
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(this + 24);
    do
    {
      if (v4 >= 1)
      {
        v5 = *(this + 408) + 136 * v3;
        v6 = *(v5 + 48);
        v7 = (*(v5 + 56) + 4);
        v8 = (v6 + 4);
        v9 = a2;
        v10 = v4;
        do
        {
          v11 = *v9++;
          *v8++ = v11;
          *v7++ = v11;
          --v10;
        }

        while (v10);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return this;
}

uint64_t CmhBEAM2NOpt::setModelFreqEQVector(CmhBEAM2NOpt *this, CmhBEAM2NOpt *a2)
{
  CmhBEAM2NOpt::interpolateFrequencyVector(a2, 0x101, **(this + 14), 93.75, *(this + 7), *(this + 3) / *(this + 4));
  v4 = *(*(this + 14) + 8);
  v5 = *(this + 7);
  v6 = *(this + 3) / *(this + 4);

  return CmhBEAM2NOpt::interpolateFrequencyVector(a2, 0x101, v4, 93.75, v5, v6);
}

uint64_t CartesianSpatializer::processAccumulating(CartesianSpatializer *this, const float *a2, float *const *a3, int a4, float *const *a5, unsigned int a6, unsigned int a7, float a8, IR::ComplexDataCircBuffer *a9)
{
  v66 = *MEMORY[0x1E69E9840];
  if (*(this + 16))
  {
    if ((*(this + 288) & 1) == 0 && (*(this + 289) & 1) == 0 && (*(this + 17) & 1) == 0 && *(this + 296) != 1)
    {
      v30 = 0;
LABEL_53:
      v46 = *(*(this + 6) + 82);
      if (!v46)
      {
        a8 = 0.0;
      }

      if (a4)
      {
        v47 = 0;
        do
        {
          v48 = *(this + 38);
          v49 = *(v48 + 4 * v47);
          *&__Start.__r_.__value_.__l.__data_ = v49;
          v50 = a8 * *(*(this + 41) + 4 * v47);
          v51 = v50;
          if (!*(this + 73))
          {
            v51 = v50 + (*(this + 88) * (v49 - v50));
          }

          *(v48 + 4 * v47) = v51;
          if (a7)
          {
            *&__Step.__r_.__value_.__l.__data_ = (v51 - *&__Start.__r_.__value_.__l.__data_) / a7;
            if (fabsf(*&__Step.__r_.__value_.__l.__data_) <= 0.000001)
            {
              if (fabsf(*&__Start.__r_.__value_.__l.__data_) > 0.000001)
              {
                *(v48 + 4 * v47) = v50;
                MEMORY[0x1E12BE8F0](a2, 1, &__Start, a3[v47], 1, a3[v47], 1, a7);
              }
            }

            else
            {
              vDSP_vrampmuladd(a2, 1, &__Start, &__Step, a3[v47], 1, a7);
            }
          }

          ++v47;
        }

        while (a4 != v47);
        v46 = *(*(this + 6) + 82);
      }

      *(this + 146) = v46;
      *(this + 5) = a7;
      return v30;
    }

    *(this + 144) = 0;
    v15 = *(this + 6);
    v16 = *(v15 + 4);
    v17 = *(v15 + 8);
    v18 = __sincosf_stret(*v15 * 0.017453);
    v19 = __sincosf_stret(v16 * 0.017453);
    v20 = (v18.__cosval * v17) * v19.__cosval;
    v21 = (v18.__sinval * v17) * v19.__cosval;
    v22 = v17 * v19.__sinval;
    if ((*(this + 24) & 0x80) == 0)
    {
      goto LABEL_23;
    }

    v23 = fabsf(v21);
    v24 = fabsf(v20);
    v25 = fabsf(v22);
    if (v23 >= v24)
    {
      v26 = v23;
    }

    else
    {
      v26 = v24;
    }

    if (v26 < v25)
    {
      v26 = v25;
    }

    if (v26 == 0.0)
    {
LABEL_23:
      v33 = fabsf(v21);
      v34 = fabsf(v20);
      v35 = fabsf(v22);
      if (v33 < v34)
      {
        v33 = v34;
      }

      if (v33 < v35)
      {
        v33 = v35;
      }

      if (v33 > 1.0)
      {
        v36 = 1.0 / v33;
        v21 = v21 * v36;
        v20 = v20 * v36;
        v22 = v22 * v36;
      }

      v37 = *(this + 360);
      v38 = v16 < 0.0;
      if ((v37 & v38) != 0)
      {
        v20 = v19.__cosval * v20;
        v39 = 0.0;
      }

      else
      {
        v39 = v22;
      }

      if ((v37 & v38) != 0)
      {
        v40 = v19.__cosval * v21;
      }

      else
      {
        v40 = v21;
      }

      v41 = *(v15 + 12);
      if (v41 < *(v15 + 16))
      {
        v41 = *(v15 + 16);
      }

      if (v41 < *(v15 + 20))
      {
        v41 = *(v15 + 20);
      }

      if (*(v15 + 80) == 1)
      {
        v42 = *(this + 91);
      }

      else
      {
        v42 = 0;
      }

      v30 = CartesianPanner::pan((this + 264 * v42 + 368), v41, v40, v20, v39, *(this + 41), (*(this + 42) - *(this + 41)) >> 2);
      if (v30)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v43 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
        {
          std::string::basic_string[abi:ne200100]<0>(&v59, "CartesianSpatializer");
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__Step, &v59, "::");
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__Start, &__Step, "processAccumulating");
          if ((__Start.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_Start = &__Start;
          }

          else
          {
            p_Start = __Start.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          v63 = p_Start;
          v64 = 1024;
          v65 = v30;
          _os_log_debug_impl(&dword_1DDB85000, v43, OS_LOG_TYPE_DEBUG, "%s: ERROR: could not compute the panning gains, err=%d", buf, 0x12u);
          if (SHIBYTE(__Start.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__Start.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__Step.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__Step.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v59.__r_.__value_.__l.__data_);
          }
        }

        v44 = *(this + 41);
        v45 = *(this + 42) - v44;
        if (v45 >= 1)
        {
          bzero(v44, v45);
        }
      }

      if (*(*(this + 6) + 81) == 1)
      {
        AUSM::speakerSnap(*(this + 41), (*(this + 42) - *(this + 41)) >> 2);
      }

      if (*(this + 17) == 1)
      {
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 38, *(this + 41), *(this + 42), (*(this + 42) - *(this + 41)) >> 2);
      }

      *(this + 17) = 0;
      goto LABEL_53;
    }

    v27 = fmaxf(v23, fmaxf(v24, v25));
    if (v27 <= 1.8447e19)
    {
      v31 = 1.0;
      if (v27 >= 5.421e-20)
      {
LABEL_22:
        v32 = (sqrtf((((v20 * v31) * (v20 * v31)) + ((v21 * v31) * (v21 * v31))) + ((v22 * v31) * (v22 * v31))) / v31) / v26;
        v21 = v21 * v32;
        v20 = v20 * v32;
        v22 = v22 * v32;
        goto LABEL_23;
      }

      v28 = 1769996288;
    }

    else
    {
      v28 = 360710144;
    }

    v31 = *&v28;
    goto LABEL_22;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v29 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    std::string::basic_string[abi:ne200100]<0>(&v59, "CartesianSpatializer");
    v53 = std::string::append(&v59, "::", 2uLL);
    v54 = *&v53->__r_.__value_.__l.__data_;
    __Step.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
    *&__Step.__r_.__value_.__l.__data_ = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    v55 = std::string::append(&__Step, "processAccumulating", 0x13uLL);
    v56 = *&v55->__r_.__value_.__l.__data_;
    __Start.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
    *&__Start.__r_.__value_.__l.__data_ = v56;
    v55->__r_.__value_.__l.__size_ = 0;
    v55->__r_.__value_.__r.__words[2] = 0;
    v55->__r_.__value_.__r.__words[0] = 0;
    v57 = &__Start;
    if ((__Start.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v57 = __Start.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v63 = v57;
    _os_log_debug_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_DEBUG, "%s: ERROR: not initialized", buf, 0xCu);
    if (SHIBYTE(__Start.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__Start.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__Step.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__Step.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  return 4294956429;
}

void sub_1DDD66FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void AUSM::speakerSnap(AUSM *this, vDSP_Length __N)
{
  __C = 0.0;
  v3 = __N;
  vDSP_svesq(this, 1, &__C, __N);
  v4 = __C;
  MEMORY[0x1E12BE990](this, 1, this, 1, v3);
  MEMORY[0x1E12BE990](this, 1, this, 1, v3);
  MEMORY[0x1E12BE990](this, 1, this, 1, v3);
  MEMORY[0x1E12BE990](this, 1, this, 1, v3);
  MEMORY[0x1E12BE990](this, 1, this, 1, v3);
  __C = 0.0;
  vDSP_svesq(this, 1, &__C, v3);
  if (__C > 0.0)
  {
    __C = powf(__C, -0.5);
    MEMORY[0x1E12BE940](this, 1, &__C, this, 1, v3);
  }

  __B = 0.01;
  vDSP_vthres(this, 1, &__B, this, 1, v3);
  __C = 0.0;
  vDSP_svesq(this, 1, &__C, v3);
  if (__C > 0.0)
  {
    __C = sqrtf(v4) * powf(__C, -0.5);
    MEMORY[0x1E12BE940](this, 1, &__C, this, 1, v3);
  }
}

void CartesianSpatializer::reset(CartesianSpatializer *this)
{
  *(this + 17) = 1;
  *(this + 146) = *(*(this + 6) + 82);
  v2 = *(this + 38);
  v3 = *(this + 39) - v2;
  if (v3 >= 1)
  {
    bzero(v2, v3);
  }
}

uint64_t CartesianSpatializer::initialize(CartesianSpatializer *this, float a2, unsigned int a3, int a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v8 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    std::string::basic_string[abi:ne200100]<0>(&v31, "CartesianSpatializer");
    v20 = std::string::append(&v31, "::", 2uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v32, "initialize", 0xAuLL);
    v23 = *&v22->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v22->__r_.__value_.__l + 2);
    *__p = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = __p;
    if (__p[23] < 0)
    {
      v24 = *__p;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v24;
    _os_log_debug_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEBUG, "%s: Initializing.", &buf, 0xCu);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  *(this + 2) = a2;
  *(this + 3) = a4;
  v9 = a2 * 0.001953125 * 0.02;
  if (v9 < 2.22507386e-308)
  {
    v9 = 2.22507386e-308;
  }

  v10 = -6.90775528 / v9;
  v11 = exp(-6.90775528 / v9);
  if (v10 < -708.4)
  {
    v11 = 0.0;
  }

  v12 = v11;
  *(this + 88) = v12;
  if (a3 < ((*(this + 42) - *(this + 41)) >> 2))
  {
    return 4294900553;
  }

  v14 = 0;
  while (1)
  {
    v15 = dword_1DE114498[v14];
    v16 = CartesianPanner::initialize(this + 264 * v15 + 368, *(this + 75), v15);
    if (v16)
    {
      break;
    }

    if (++v14 == 6)
    {
      Spatializer::initialize(this, v17, a3);
      return 0;
    }
  }

  v13 = v16;
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v18 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    std::string::basic_string[abi:ne200100]<0>(&buf, "CartesianSpatializer");
    v25 = std::string::append(&buf, "::", 2uLL);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v31, "initialize", 0xAuLL);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = &v32;
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v29 = v32.__r_.__value_.__r.__words[0];
    }

    v30 = *(this + 75);
    *__p = 136315906;
    *&__p[4] = v29;
    *&__p[12] = 1024;
    *&__p[14] = v15;
    *&__p[18] = 1024;
    *&__p[20] = v30;
    v35 = 1024;
    v36 = v13;
    _os_log_debug_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_DEBUG, "%s: ERROR: could not initialize the cartesian panner #%i with channel layout tag %u: err=%d", __p, 0x1Eu);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  return v13;
}

void sub_1DDD67594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CartesianSpatializer::setExclusionZones(uint64_t a1, char **a2)
{
  Spatializer::setExclusionZones(a1, a2);
  if (*(a1 + 296) == 1)
  {
    PresetFromExclusionZones = AUSM::ExclusionZone::getPresetFromExclusionZones((*(a1 + 48) + 192));
    if (PresetFromExclusionZones == -1)
    {
      v4 = 0;
    }

    else
    {
      v4 = PresetFromExclusionZones;
    }

    *(a1 + 364) = v4;
  }

  return 0;
}

uint64_t CartesianSpatializer::setParams(_BYTE *a1, uint64_t a2)
{
  if ((a1[16] & 1) == 0)
  {
    (*(*a1 + 160))(a1, a2 + 192);
  }

  return Spatializer::setParams(a1, a2);
}

void CartesianSpatializer::~CartesianSpatializer(CartesianSpatializer *this)
{
  *this = &unk_1F5921148;
  for (i = 1688; i != 104; i -= 264)
  {
    CartesianPanner::~CartesianPanner((this + i));
  }

  v3 = *(this + 41);
  if (v3)
  {
    *(this + 42) = v3;
    operator delete(v3);
  }

  v4 = *(this + 38);
  if (v4)
  {
    *(this + 39) = v4;
    operator delete(v4);
  }

  Spatializer::~Spatializer(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5921148;
  for (i = 1688; i != 104; i -= 264)
  {
    CartesianPanner::~CartesianPanner((this + i));
  }

  v3 = *(this + 41);
  if (v3)
  {
    *(this + 42) = v3;
    operator delete(v3);
  }

  v4 = *(this + 38);
  if (v4)
  {
    *(this + 39) = v4;
    operator delete(v4);
  }

  Spatializer::~Spatializer(this);
}

uint64_t NeuralNet::NeuralNet(uint64_t a1, NSObject **theDict, NSObject **a3)
{
  v118 = *MEMORY[0x1E69E9840];
  v95[0] = a3;
  v95[1] = theDict;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  v76 = (a1 + 16);
  *(a1 + 24) = 0;
  v75 = (a1 + 24);
  if (a3)
  {
    v4 = *a3;
    if (!*a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "NeuralNet.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 48;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preparing a NeuralNet from topLevelDict.", buf, 0x12u);
  }

LABEL_7:
  Value = CFDictionaryGetValue(theDict, @"NeuralNetImplementationType");
  v6 = Value;
  if (Value)
  {
    CFRetain(Value);
    v94 = v6;
    applesauce::CF::TypeRef::operator applesauce::CF::StringRef(cf, &v94);
    v7 = *v76;
    if (*v76)
    {
      v8 = *v7;
      if (!*v7)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = CFCopyDescription(cf[0]);
      v117.__r_.__value_.__r.__words[0] = v11;
      applesauce::CF::details::CFString_get_value<true>(v112, v11);
      if (v11)
      {
        CFRelease(v11);
      }

      v12 = v112;
      if (SBYTE3(v116) < 0)
      {
        v12 = *v112;
      }

      *buf = 136315650;
      *&buf[4] = "NeuralNet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 57;
      v102 = 2080;
      *v103 = v12;
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved implementation type (%s).", buf, 0x1Cu);
      if (SBYTE3(v116) < 0)
      {
        operator delete(*v112);
      }
    }

LABEL_22:
    v13 = cf[0];
    if (cf[0])
    {
      CFRetain(cf[0]);
    }

    v93 = v13;
    std::string::basic_string[abi:ne200100]<0>(__p, "BNNS");
    v14 = matchiString(&v93, __p);
    if (v92 < 0)
    {
      operator delete(__p[0]);
      if (!v13)
      {
        goto LABEL_29;
      }
    }

    else if (!v13)
    {
LABEL_29:
      if (v14)
      {
        v15 = 0;
        goto LABEL_68;
      }

      v16 = cf[0];
      if (cf[0])
      {
        CFRetain(cf[0]);
      }

      v90 = v16;
      std::string::basic_string[abi:ne200100]<0>(v88, "Espresso");
      v17 = matchiString(&v90, v88);
      if (v89 < 0)
      {
        operator delete(v88[0]);
        if (!v16)
        {
          goto LABEL_41;
        }
      }

      else if (!v16)
      {
LABEL_41:
        if (v17)
        {
          v15 = 1;
LABEL_68:
          *(a1 + 8) = v15;
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          goto LABEL_70;
        }

        v18 = cf[0];
        if (cf[0])
        {
          CFRetain(cf[0]);
        }

        v87 = v18;
        std::string::basic_string[abi:ne200100]<0>(v85, "EspressoV2");
        v19 = matchiString(&v87, v85);
        if (v86 < 0)
        {
          operator delete(v85[0]);
          if (!v18)
          {
            goto LABEL_50;
          }
        }

        else if (!v18)
        {
LABEL_50:
          if (v19)
          {
            v15 = 2;
          }

          else
          {
            v20 = cf[0];
            if (cf[0])
            {
              CFRetain(cf[0]);
            }

            v84 = v20;
            std::string::basic_string[abi:ne200100]<0>(v82, "MIL2BNNS");
            v21 = matchiString(&v84, v82);
            if (v83 < 0)
            {
              operator delete(v82[0]);
            }

            if (v20)
            {
              CFRelease(v20);
            }

            if (v21)
            {
              v15 = 3;
            }

            else
            {
              v22 = cf[0];
              if (cf[0])
              {
                CFRetain(cf[0]);
              }

              v81 = v22;
              std::string::basic_string[abi:ne200100]<0>(v79, "MIL2BNNS_PREPROCESSED");
              v23 = matchiString(&v81, v79);
              if (v80 < 0)
              {
                operator delete(v79[0]);
              }

              if (v22)
              {
                CFRelease(v22);
              }

              if (!v23)
              {
                if (*v76)
                {
                  v72 = **v76;
                }

                else
                {
                  v72 = 0;
                }

                if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                {
                  applesauce::CF::ObjectRef<__CFString const*>::to_description(v112, cf[0]);
                  v73 = SBYTE3(v116) >= 0 ? v112 : *v112;
                  *buf = 136315906;
                  *&buf[4] = "NeuralNet.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 85;
                  v102 = 1024;
                  *v103 = -66743;
                  *&v103[4] = 2080;
                  *&v103[6] = v73;
                  _os_log_impl(&dword_1DDB85000, v72, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unknown implementation type (%s).", buf, 0x22u);
                  if (SBYTE3(v116) < 0)
                  {
                    operator delete(*v112);
                  }
                }

                exception = __cxa_allocate_exception(0x10uLL);
                *exception = &unk_1F593B0D8;
                exception[2] = -66743;
              }

              v15 = 4;
            }
          }

          goto LABEL_68;
        }

        CFRelease(v18);
        goto LABEL_50;
      }

      CFRelease(v16);
      goto LABEL_41;
    }

    CFRelease(v13);
    goto LABEL_29;
  }

  v94 = 0;
  *(a1 + 8) = 0;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *v9;
    if (!*v9)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "NeuralNet.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 92;
    _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Missing dictionary NeuralNetImplementationType, set mImplType to default value.", buf, 0x12u);
  }

LABEL_70:
  v9 = *v76;
  if (*v76)
  {
    v24 = *v9;
    if (!*v9)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v24 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 8);
    *buf = 136315650;
    *&buf[4] = "NeuralNet.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 95;
    v102 = 1024;
    *v103 = v25;
    _os_log_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mImplType set to value (%u).", buf, 0x18u);
    v9 = *(a1 + 16);
  }

LABEL_76:
  v26 = *(a1 + 8);
  if (v26 > 1)
  {
    if (v26 != 2)
    {
      if (v26 != 3)
      {
        if (v26 == 4)
        {
          if (v9)
          {
            v27 = *v9;
            if (!*v9)
            {
              goto LABEL_114;
            }
          }

          else
          {
            v27 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "NeuralNet.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 246;
            _os_log_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d Preparing MIL2BNNS_PREPROCESSED NeuralNet implementation.", buf, 0x12u);
          }

LABEL_114:
          NeuralNet::getModelInformationFromPlist(buf, a1, theDict);
          operator new();
        }

LABEL_210:
        if (v9)
        {
          v71 = *v9;
        }

        else
        {
          v71 = 0;
        }

        v64 = -66743;
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "NeuralNet.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 240;
          v102 = 1024;
          *v103 = -66743;
          *&v103[4] = 1024;
          *&v103[6] = v26;
          v65 = "%25s:%-5d EXCEPTION (%d): Unknown value for mType (%u).";
          v66 = v71;
          v67 = 30;
          goto LABEL_202;
        }

        goto LABEL_203;
      }

      if (v9)
      {
        v30 = *v9;
        if (!*v9)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v30 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "NeuralNet.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 222;
        _os_log_impl(&dword_1DDB85000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d Preparing MIL2BNNS NeuralNet implementation.", buf, 0x12u);
      }

LABEL_104:
      NeuralNet::getModelInformationFromPlist(buf, a1, theDict);
      LODWORD(v117.__r_.__value_.__l.__data_) = v111;
      std::make_unique[abi:ne200100]<MIL2BNNS,std::string &,std::string &,std::string &,std::string &,std::string &,StreamingMode,__CFDictionary const* const&,CALog::Scope const*&,0>();
    }

    if (v9)
    {
      v29 = *v9;
      if (!*v9)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "NeuralNet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 210;
      _os_log_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d Preparing EspressoV2 NeuralNet implementation.", buf, 0x12u);
    }

LABEL_100:
    NeuralNet::getModelInformationFromPlist(buf, a1, theDict);
    operator new();
  }

  if (!v26)
  {
    if (v9)
    {
      v31 = *v9;
      if (!*v9)
      {
        LODWORD(v97.__r_.__value_.__l.__data_) = 0;
        goto LABEL_126;
      }
    }

    else
    {
      v31 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "NeuralNet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 102;
      _os_log_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d Preparing BNNS NeuralNet implementation.", buf, 0x12u);
      v9 = *v76;
    }

    LODWORD(v97.__r_.__value_.__l.__data_) = 0;
    if (v9)
    {
      v32 = *v9;
      if (!*v9)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "NeuralNet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 106;
      _os_log_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_INFO, "%25s:%-5d Loading NumLayers from topLevelDict.", buf, 0x12u);
    }

LABEL_126:
    if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(v95, theDict, @"NumLayers", &v97))
    {
      if (*v76)
      {
        v69 = **v76;
      }

      else
      {
        v69 = 0;
      }

      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "NeuralNet.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 108;
        v102 = 1024;
        *v103 = -66741;
        _os_log_impl(&dword_1DDB85000, v69, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Failed to retrieve NumLayers.", buf, 0x18u);
      }

      v70 = __cxa_allocate_exception(0x10uLL);
      *v70 = &unk_1F593B0D8;
      v70[2] = -66741;
    }

    v38 = CFDictionaryGetValue(theDict, @"Quantization");
    LODWORD(valuePtr.__r_.__value_.__l.__data_) = 8;
    if (v38)
    {
      CFNumberGetValue(v38, kCFNumberIntType, &valuePtr);
      v39 = *v76;
      if (*v76)
      {
        v40 = *v39;
        if (!*v39)
        {
          goto LABEL_141;
        }
      }

      else
      {
        v40 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_141;
      }

      *buf = 136315650;
      *&buf[4] = "NeuralNet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 116;
      v102 = 1024;
      *v103 = valuePtr.__r_.__value_.__l.__data_;
      v43 = "%25s:%-5d Successfully retrieved Quantization (%u).\n";
      v44 = v40;
      v45 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      v41 = *v76;
      if (*v76)
      {
        v42 = *v41;
        if (!*v41)
        {
LABEL_141:
          HIDWORD(v47) = valuePtr.__r_.__value_.__l.__data_;
          LODWORD(v47) = valuePtr.__r_.__value_.__l.__data_;
          v46 = v47 >> 3;
          if (v46 != 4)
          {
            if (v46 != 2)
            {
              if (!v46)
              {
                cf[1] = 0;
                cf[0] = 0;
                v100 = 0;
                std::vector<FullyConnectedLayerBNNS<float>>::resize(cf, LODWORD(v97.__r_.__value_.__l.__data_));
                v98.__r_.__value_.__r.__words[2] = *v76;
                operator new();
              }

              cf[1] = 0;
              cf[0] = 0;
              v100 = 0;
              std::vector<FullyConnectedLayerBNNS<int>>::resize(cf, LODWORD(v97.__r_.__value_.__l.__data_));
              v98.__r_.__value_.__r.__words[2] = *v76;
              operator new();
            }

            cf[1] = 0;
            cf[0] = 0;
            v100 = 0;
            std::vector<FullyConnectedLayerBNNS<int>>::resize(cf, LODWORD(v97.__r_.__value_.__l.__data_));
            v98.__r_.__value_.__r.__words[2] = *v76;
            operator new();
          }

          cf[1] = 0;
          cf[0] = 0;
          v100 = 0;
          std::vector<FullyConnectedLayerBNNS<int>>::resize(cf, LODWORD(v97.__r_.__value_.__l.__data_));
          v98.__r_.__value_.__r.__words[2] = *v76;
          operator new();
        }
      }

      else
      {
        v42 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_141;
      }

      *buf = 136315650;
      *&buf[4] = "NeuralNet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 120;
      v102 = 1024;
      *v103 = 8;
      v43 = "%25s:%-5d Quantization not found, using default (%u) bit.\n";
      v44 = v42;
      v45 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_1DDB85000, v44, v45, v43, buf, 0x18u);
    goto LABEL_141;
  }

  if (v26 != 1)
  {
    goto LABEL_210;
  }

  if (v9)
  {
    v28 = *v9;
    if (!*v9)
    {
      goto LABEL_118;
    }
  }

  else
  {
    v28 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "NeuralNet.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 181;
    _os_log_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d Preparing Espresso NeuralNet implementation.", buf, 0x12u);
  }

LABEL_118:
  NeuralNet::getModelInformationFromPlist(buf, a1, theDict);
  v33 = CFDictionaryGetValue(theDict, @"CacheImplementation");
  v34 = v33;
  if (!v33)
  {
    goto LABEL_173;
  }

  CFRetain(v33);
  *v112 = v34;
  v35 = applesauce::CF::convert_to<BOOL,0>(v34);
  CFRelease(v34);
  if (!v35)
  {
    goto LABEL_173;
  }

  v36 = *v76;
  if (!*v76)
  {
    v37 = MEMORY[0x1E69E9C10];
LABEL_149:
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *v112 = 136315394;
      *&v112[4] = "NeuralNet.cpp";
      v113 = 1024;
      v114 = 186;
      _os_log_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_INFO, "%25s:%-5d Implementation cache enabled.", v112, 0x12u);
    }

    goto LABEL_151;
  }

  v37 = *v36;
  if (*v36)
  {
    goto LABEL_149;
  }

LABEL_151:
  if (v103[3] >= 0)
  {
    v48 = buf;
  }

  else
  {
    v48 = *buf;
  }

  if (v48)
  {
    if (v103[3] >= 0)
    {
      v49 = v103[3];
    }

    else
    {
      v49 = *&buf[8];
    }

    v50 = CFStringCreateWithBytes(0, v48, v49, 0x8000100u, 0);
    *v112 = v50;
    if (!v50)
    {
      v51 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v51, "Could not construct");
    }
  }

  else
  {
    v50 = 0;
  }

  v52 = *v75;
  *v75 = v50;
  *v112 = v52;
  if (v52)
  {
    CFRelease(v52);
    v50 = *v75;
  }

  if (v50)
  {
    CFRetain(v50);
  }

  v78 = v50;
  v53 = +[NeuralNetCache sharedCache];
  v54 = [v53 objectForKey:v50];

  if (v54)
  {
    v55 = +[NeuralNetCache sharedCache];
    [v55 removeObjectForKey:v78];

    [v54 impl];
  }

  else
  {
    *v112 = 0;
  }

  v56 = *v112;
  *v112 = 0;
  v57 = *a1;
  *a1 = v56;
  if (v57)
  {
    (*(*v57 + 8))(v57);
    v58 = *v112;
    *v112 = 0;
    if (v58)
    {
      (*(*v58 + 8))(v58);
    }
  }

  if (v78)
  {
    CFRelease(v78);
  }

LABEL_173:
  if (!*a1)
  {
    LODWORD(v117.__r_.__value_.__l.__data_) = v111;
    std::make_unique[abi:ne200100]<NeuralNetEspresso,std::string &,std::string &,std::string &,std::string &,std::string &,StreamingMode,__CFDictionary const* const&,CALog::Scope const*&,0>();
  }

  v59 = *v76;
  if (*v76)
  {
    v60 = *v59;
    if (!*v59)
    {
      goto LABEL_183;
    }
  }

  else
  {
    v60 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
  {
    v61 = buf;
    if (v103[3] < 0)
    {
      v61 = *buf;
    }

    *v112 = 136315650;
    *&v112[4] = "NeuralNet.cpp";
    v113 = 1024;
    v114 = 192;
    v115 = 2080;
    v116 = v61;
    _os_log_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_INFO, "%25s:%-5d Loaded implementation from cache for model at %s.", v112, 0x1Cu);
  }

LABEL_183:
  if (v110 < 0)
  {
    operator delete(v109);
  }

  if (v108 < 0)
  {
    operator delete(v107);
  }

  if (v106 < 0)
  {
    operator delete(v105);
  }

  if (v104 < 0)
  {
    operator delete(*&v103[4]);
  }

  if ((v103[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (!*a1)
  {
    if (*v76)
    {
      v63 = **v76;
    }

    else
    {
      v63 = 0;
    }

    v64 = -10875;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "NeuralNet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 260;
      v102 = 1024;
      *v103 = -10875;
      v65 = "%25s:%-5d EXCEPTION (%d) [pNeuralNetImpl == nullptr is false]: NeuralNet implementation not initialized.";
      v66 = v63;
      v67 = 24;
LABEL_202:
      _os_log_impl(&dword_1DDB85000, v66, OS_LOG_TYPE_ERROR, v65, buf, v67);
    }

LABEL_203:
    v68 = __cxa_allocate_exception(0x10uLL);
    *v68 = &unk_1F593B0D8;
    v68[2] = v64;
  }

  if (v94)
  {
    CFRelease(v94);
  }

  return a1;
}

void sub_1DDD6C698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void **a11, uint64_t a12, CFTypeRef cf, uint64_t a14, uint64_t a15, uint64_t a16, CFTypeRef a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t exception_object, uint64_t exception_object_8, uint64_t exception_object_16, uint64_t exception_object_24, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, const void *a42)
{
  applesauce::CF::StringRef::~StringRef(&STACK[0x220]);
  applesauce::CF::TypeRef::~TypeRef(&a42);
  applesauce::CF::StringRef::~StringRef(a11);
  v43 = *a20;
  *a20 = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  _Unwind_Resume(a1);
}

void sub_1DDD6CC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  *(v16 - 224) = v15;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100](v16 - 224);
  *a15 = &unk_1F592AE40;
  if (a15[4])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  *(v16 - 224) = v16 - 160;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100](v16 - 224);
  MEMORY[0x1E12BD160](a15, 0x10E1C401318458CLL);
  if (STACK[0x200])
  {
    MEMORY[0x1E12BD160](STACK[0x200], 0x60C4044C4A2DFLL);
  }

  *(v16 - 224) = &STACK[0x220];
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100](v16 - 224);
  JUMPOUT(0x1DDD6D680);
}

void sub_1DDD6CC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  *(v11 - 224) = v10;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100](v11 - 224);
  *a10 = &unk_1F592AE40;
  if (a10[4])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  *(v11 - 224) = v11 - 160;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100](v11 - 224);
  MEMORY[0x1E12BD160](a10, 0x10E1C401318458CLL);
  if (STACK[0x200])
  {
    MEMORY[0x1E12BD160](STACK[0x200], 0x60C4044C4A2DFLL);
  }

  *(v11 - 224) = &STACK[0x220];
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100](v11 - 224);
  JUMPOUT(0x1DDD6D680);
}

void sub_1DDD6CC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  *(v16 - 224) = v15;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100](v16 - 224);
  *a15 = &unk_1F592AE40;
  if (a15[4])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  *(v16 - 224) = v16 - 160;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100](v16 - 224);
  MEMORY[0x1E12BD160](a15, 0x10E1C401318458CLL);
  if (STACK[0x200])
  {
    MEMORY[0x1E12BD160](STACK[0x200], 0x60C4044C4A2DFLL);
  }

  *(v16 - 224) = &STACK[0x220];
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100](v16 - 224);
  JUMPOUT(0x1DDD6D680);
}

void sub_1DDD6CD34()
{
  if (*(v0 - 137) < 0)
  {
    operator delete(*(v0 - 160));
  }

  JUMPOUT(0x1DDD6CE24);
}

void sub_1DDD6CD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, const void *a60, const void *a61, const void *a62, uint64_t a63)
{
  std::pair<std::string,std::string>::~pair(v65 - 224);
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  applesauce::CF::TypeRef::~TypeRef(&a60);
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  applesauce::CF::TypeRef::~TypeRef(&a61);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a62);
  CFRelease(v64);
  if (cf)
  {
    CFRelease(cf);
  }

  if (*(v65 - 137) < 0)
  {
    operator delete(*(v65 - 160));
  }

  JUMPOUT(0x1DDD6CE24);
}

void sub_1DDD6CE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16, const void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if ((*(v65 - 201) & 0x80000000) == 0)
  {
    CFRelease(a13);
    if (a65)
    {
      CFRelease(a65);
    }

    if (a17)
    {
      CFRelease(a17);
    }

    JUMPOUT(0x1DDD6CFBCLL);
  }

  JUMPOUT(0x1DDD6CE00);
}

void sub_1DDD6CE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  v13 = STACK[0x5E8];
  if (STACK[0x5E8])
  {
    STACK[0x5F0] = v13;
    operator delete(v13);
  }

  v14 = STACK[0x5D0];
  if (STACK[0x5D0])
  {
    STACK[0x5D8] = v14;
    operator delete(v14);
  }

  v15 = STACK[0x5B8];
  if (STACK[0x5B8])
  {
    STACK[0x5C0] = v15;
    operator delete(v15);
  }

  v16 = STACK[0x5A0];
  if (STACK[0x5A0])
  {
    STACK[0x5A8] = v16;
    operator delete(v16);
  }

  v17 = STACK[0x588];
  if (STACK[0x588])
  {
    STACK[0x590] = v17;
    operator delete(v17);
  }

  v18 = STACK[0x570];
  if (STACK[0x570])
  {
    STACK[0x578] = v18;
    operator delete(v18);
  }

  v19 = STACK[0x558];
  if (STACK[0x558])
  {
    STACK[0x560] = v19;
    operator delete(v19);
  }

  *(v12 - 224) = a12;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100]((v12 - 224));
  *a10 = &unk_1F592AE40;
  v20 = a10[4];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  *(v12 - 224) = v12 - 160;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100]((v12 - 224));
  MEMORY[0x1E12BD160](a10, 0x10E1C401318458CLL);
  if (STACK[0x200])
  {
    MEMORY[0x1E12BD160](STACK[0x200], 0x60C4044C4A2DFLL);
  }

  *(v12 - 224) = &STACK[0x220];
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100]((v12 - 224));
  JUMPOUT(0x1DDD6D680);
}

void sub_1DDD6CE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17)
{
  v18 = STACK[0x5E8];
  if (STACK[0x5E8])
  {
    STACK[0x5F0] = v18;
    operator delete(v18);
  }

  v19 = STACK[0x5D0];
  if (STACK[0x5D0])
  {
    STACK[0x5D8] = v19;
    operator delete(v19);
  }

  v20 = STACK[0x5B8];
  if (STACK[0x5B8])
  {
    STACK[0x5C0] = v20;
    operator delete(v20);
  }

  v21 = STACK[0x5A0];
  if (STACK[0x5A0])
  {
    STACK[0x5A8] = v21;
    operator delete(v21);
  }

  v22 = STACK[0x588];
  if (STACK[0x588])
  {
    STACK[0x590] = v22;
    operator delete(v22);
  }

  v23 = STACK[0x570];
  if (STACK[0x570])
  {
    STACK[0x578] = v23;
    operator delete(v23);
  }

  v24 = STACK[0x558];
  if (STACK[0x558])
  {
    STACK[0x560] = v24;
    operator delete(v24);
  }

  *(v17 - 224) = a17;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100]((v17 - 224));
  *a15 = &unk_1F592AE40;
  v25 = a15[4];
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  *(v17 - 224) = v17 - 160;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100]((v17 - 224));
  MEMORY[0x1E12BD160](a15, 0x10E1C401318458CLL);
  if (STACK[0x200])
  {
    MEMORY[0x1E12BD160](STACK[0x200], 0x60C4044C4A2DFLL);
  }

  *(v17 - 224) = &STACK[0x220];
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100]((v17 - 224));
  JUMPOUT(0x1DDD6D680);
}

void sub_1DDD6CE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17)
{
  v18 = STACK[0x5E8];
  if (STACK[0x5E8])
  {
    STACK[0x5F0] = v18;
    operator delete(v18);
  }

  v19 = STACK[0x5D0];
  if (STACK[0x5D0])
  {
    STACK[0x5D8] = v19;
    operator delete(v19);
  }

  v20 = STACK[0x5B8];
  if (STACK[0x5B8])
  {
    STACK[0x5C0] = v20;
    operator delete(v20);
  }

  v21 = STACK[0x5A0];
  if (STACK[0x5A0])
  {
    STACK[0x5A8] = v21;
    operator delete(v21);
  }

  v22 = STACK[0x588];
  if (STACK[0x588])
  {
    STACK[0x590] = v22;
    operator delete(v22);
  }

  v23 = STACK[0x570];
  if (STACK[0x570])
  {
    STACK[0x578] = v23;
    operator delete(v23);
  }

  v24 = STACK[0x558];
  if (STACK[0x558])
  {
    STACK[0x560] = v24;
    operator delete(v24);
  }

  *(v17 - 224) = a17;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100]((v17 - 224));
  *a15 = &unk_1F592AE40;
  v25 = a15[4];
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  *(v17 - 224) = v17 - 160;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100]((v17 - 224));
  MEMORY[0x1E12BD160](a15, 0x10E1C401318458CLL);
  if (STACK[0x200])
  {
    MEMORY[0x1E12BD160](STACK[0x200], 0x60C4044C4A2DFLL);
  }

  *(v17 - 224) = &STACK[0x220];
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100]((v17 - 224));
  JUMPOUT(0x1DDD6D680);
}

void sub_1DDD6D0F8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDD6D57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, const void *a42)
{
  v44 = STACK[0x5E8];
  if (STACK[0x5E8])
  {
    STACK[0x5F0] = v44;
    operator delete(v44);
  }

  v45 = STACK[0x5D0];
  if (STACK[0x5D0])
  {
    STACK[0x5D8] = v45;
    operator delete(v45);
  }

  v46 = STACK[0x5B8];
  if (STACK[0x5B8])
  {
    STACK[0x5C0] = v46;
    operator delete(v46);
  }

  v47 = STACK[0x5A0];
  if (STACK[0x5A0])
  {
    STACK[0x5A8] = v47;
    operator delete(v47);
  }

  v48 = STACK[0x588];
  if (STACK[0x588])
  {
    STACK[0x590] = v48;
    operator delete(v48);
  }

  v49 = STACK[0x570];
  if (STACK[0x570])
  {
    STACK[0x578] = v49;
    operator delete(v49);
  }

  v50 = STACK[0x558];
  if (STACK[0x558])
  {
    STACK[0x560] = v50;
    operator delete(v50);
  }

  *(v43 - 224) = a12;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100]((v43 - 224));
  *v42 = &unk_1F592AE40;
  v51 = v42[4];
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  *(v43 - 224) = v43 - 160;
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100]((v43 - 224));
  MEMORY[0x1E12BD160](v42, 0x10E1C401318458CLL);
  if (STACK[0x200])
  {
    MEMORY[0x1E12BD160](STACK[0x200], 0x60C4044C4A2DFLL);
  }

  *(v43 - 224) = &STACK[0x220];
  std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100]((v43 - 224));
  applesauce::CF::TypeRef::~TypeRef(&a42);
  applesauce::CF::StringRef::~StringRef(a11);
  v52 = *a20;
  *a20 = 0;
  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  JUMPOUT(0x1DDD6D6C4);
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::StringRef(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFStringGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFStringGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_1DDD6D7B0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::ObjectRef<__CFString const*>::to_description(_BYTE *a1, CFTypeRef cf)
{
  v3 = CFCopyDescription(cf);
  applesauce::CF::details::CFString_get_value<true>(a1, v3);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_1DDD6D844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void std::vector<FullyConnectedLayerBNNS<float>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0x1B810ECF56BE69C9 * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 968 * a2);
      while (v4 != v11)
      {
        v4 -= 121;
        FullyConnectedLayerBNNS<float>::~FullyConnectedLayerBNNS(v4);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0x1B810ECF56BE69C9 * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0x43B3D5AF9A723FLL)
      {
        v8 = 0x1B810ECF56BE69C9 * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x21D9EAD7CD391FLL)
        {
          v10 = 0x43B3D5AF9A723FLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<FullyConnectedLayerBNNS<float>>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 968 * ((968 * v6 - 968) / 0x3C8) + 968);
    a1[1] = &v4[121 * ((968 * v6 - 968) / 0x3C8) + 121];
  }
}

void std::vector<FullyConnectedLayerBNNS<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = FullyConnectedLayerBNNS<float>::~FullyConnectedLayerBNNS(v4 - 121);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<FullyConnectedLayerBNNS<int>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0x1B810ECF56BE69C9 * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 968 * a2);
      while (v4 != v11)
      {
        v4 -= 121;
        FullyConnectedLayerBNNS<float>::~FullyConnectedLayerBNNS(v4);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0x1B810ECF56BE69C9 * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0x43B3D5AF9A723FLL)
      {
        v8 = 0x1B810ECF56BE69C9 * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x21D9EAD7CD391FLL)
        {
          v10 = 0x43B3D5AF9A723FLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<FullyConnectedLayerBNNS<int>>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 968 * ((968 * v6 - 968) / 0x3C8) + 968);
    a1[1] = &v4[121 * ((968 * v6 - 968) / 0x3C8) + 121];
  }
}

void NeuralNet::getModelInformationFromPlist(uint64_t a1, uint64_t a2, CFDictionaryRef theDict)
{
  v101[2] = *MEMORY[0x1E69E9840];
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v97 = *(a2 + 16);
  Value = CFDictionaryGetValue(theDict, @"NeuralNetImplementationType");
  v7 = Value;
  if (!Value)
  {
    v96 = 0;
LABEL_12:
    v11 = *(a2 + 16);
    if (v11)
    {
      v12 = *v11;
      if (!*v11)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_52;
    }

    *buf = 136315394;
    *&buf[4] = "NeuralNet.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 348;
    v13 = "%25s:%-5d Model path not required for MIL2BNNS_PREPROCESSED";
    v14 = v12;
    v15 = 18;
LABEL_51:
    _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEBUG, v13, buf, v15);
    goto LABEL_52;
  }

  CFRetain(Value);
  v96 = v7;
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&cf, &v96);
  std::string::basic_string[abi:ne200100]<0>(__p, "MIL2BNNS_PREPROCESSED");
  v8 = matchiString(&cf, __p);
  if (v94 < 0)
  {
    operator delete(__p[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    goto LABEL_12;
  }

  if (CFDictionaryContainsKey(theDict, @"ModelNetPathBase"))
  {
    v9 = *(a2 + 16);
    if (v9)
    {
      v10 = *v9;
      if (!*v9)
      {
LABEL_25:
        v18 = CFDictionaryGetValue(theDict, @"ModelNetPathBase");
        v19 = v18;
        if (!v18)
        {
          v78 = 0;
          v92 = 0;
          v79 = *(a2 + 16);
          if (v79)
          {
            v78 = *v79;
          }

          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "NeuralNet.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 337;
            *&buf[18] = 1024;
            *&buf[20] = -66741;
            _os_log_impl(&dword_1DDB85000, v78, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [modelNetPathBase_ref.get_cf() == nullptr is false]: Failed to retrieve ModelNetPathBase.", buf, 0x18u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &unk_1F593B0D8;
          exception[2] = -66741;
        }

        CFRetain(v18);
        v92 = v19;
        v20 = CFDictionaryGetValue(theDict, @"ModelNetPath");
        v21 = v20;
        if (!v20)
        {
          v81 = 0;
          v91 = 0;
          v82 = *(a2 + 16);
          if (v82)
          {
            v81 = *v82;
          }

          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "NeuralNet.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 339;
            *&buf[18] = 1024;
            *&buf[20] = -66741;
            _os_log_impl(&dword_1DDB85000, v81, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [modelNetPathRelative_ref.get_cf() == nullptr is false]: Failed to retrieve ModelNetPath.", buf, 0x18u);
          }

          v83 = __cxa_allocate_exception(0x10uLL);
          *v83 = &unk_1F593B0D8;
          v83[2] = -66741;
        }

        CFRetain(v20);
        v91 = v21;
        applesauce::CF::convert_to<std::string,0>(&v90, v19);
        v22 = std::string::append(&v90, "/", 1uLL);
        v23 = *&v22->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v22->__r_.__value_.__l + 2);
        *buf = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        applesauce::CF::convert_to<std::string,0>(v88, v21);
        if ((v89 & 0x80u) == 0)
        {
          v24 = v88;
        }

        else
        {
          v24 = v88[0];
        }

        if ((v89 & 0x80u) == 0)
        {
          v25 = v89;
        }

        else
        {
          v25 = v88[1];
        }

        v26 = std::string::append(buf, v24, v25);
        v27 = v26->__r_.__value_.__r.__words[0];
        v101[0] = v26->__r_.__value_.__l.__size_;
        *(v101 + 7) = *(&v26->__r_.__value_.__r.__words[1] + 7);
        v28 = HIBYTE(v26->__r_.__value_.__r.__words[2]);
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v29 = v101[0];
        *a1 = v27;
        *(a1 + 8) = v29;
        *(a1 + 15) = *(v101 + 7);
        *(a1 + 23) = v28;
        if (v89 < 0)
        {
          operator delete(v88[0]);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        CFRelease(v21);
        CFRelease(v19);
        goto LABEL_42;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "NeuralNet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 335;
      _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d ModelNetPathBase is provided - retriving base path and relative path of the model.", buf, 0x12u);
    }

    goto LABEL_25;
  }

  v16 = CFDictionaryGetValue(theDict, @"ModelNetPath");
  v17 = v16;
  if (!v16)
  {
    v84 = 0;
    v90.__r_.__value_.__r.__words[0] = 0;
    v85 = *(a2 + 16);
    if (v85)
    {
      v84 = *v85;
    }

    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "NeuralNet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 343;
      *&buf[18] = 1024;
      *&buf[20] = -66741;
      _os_log_impl(&dword_1DDB85000, v84, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [modelNetPath_ref.get_cf() == nullptr is false]: Failed to retrieve ModelNetPath.", buf, 0x18u);
    }

    v86 = __cxa_allocate_exception(0x10uLL);
    *v86 = &unk_1F593B0D8;
    v86[2] = -66741;
  }

  CFRetain(v16);
  v90.__r_.__value_.__r.__words[0] = v17;
  applesauce::CF::convert_to<std::string,0>(buf, v17);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = *buf;
  *(a1 + 16) = *&buf[16];
  CFRelease(v17);
LABEL_42:
  v30 = *(a2 + 16);
  if (!v30)
  {
    v31 = MEMORY[0x1E69E9C10];
    goto LABEL_46;
  }

  v31 = *v30;
  if (*v30)
  {
LABEL_46:
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_52;
    }

    if (*(a1 + 23) >= 0)
    {
      v32 = a1;
    }

    else
    {
      v32 = *a1;
    }

    *buf = 136315650;
    *&buf[4] = "NeuralNet.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 346;
    *&buf[18] = 2080;
    *&buf[20] = v32;
    v13 = "%25s:%-5d Successfully retrieved model path (%s).";
    v14 = v31;
    v15 = 28;
    goto LABEL_51;
  }

LABEL_52:
  v33 = CFDictionaryGetValue(theDict, @"InputName");
  v34 = v33;
  if (!v33)
  {
    v72 = 0;
    v90.__r_.__value_.__r.__words[0] = 0;
    v73 = *(a2 + 16);
    if (v73)
    {
      v72 = *v73;
    }

    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "NeuralNet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 353;
      *&buf[18] = 1024;
      *&buf[20] = -66741;
      _os_log_impl(&dword_1DDB85000, v72, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [inputName_ref.get_cf() == nullptr is false]: Failed to retrieve InputName.", buf, 0x18u);
    }

    v74 = __cxa_allocate_exception(0x10uLL);
    *v74 = &unk_1F593B0D8;
    v74[2] = -66741;
  }

  CFRetain(v33);
  v90.__r_.__value_.__r.__words[0] = v34;
  applesauce::CF::convert_to<std::string,0>(buf, v34);
  v35 = (a1 + 24);
  if (*(a1 + 47) < 0)
  {
    operator delete(*v35);
  }

  *v35 = *buf;
  *(a1 + 40) = *&buf[16];
  v36 = *(a2 + 16);
  if (v36)
  {
    v37 = *v36;
    if (!*v36)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v37 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 47) >= 0)
    {
      v38 = a1 + 24;
    }

    else
    {
      v38 = *(a1 + 24);
    }

    *buf = 136315650;
    *&buf[4] = "NeuralNet.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 355;
    *&buf[18] = 2080;
    *&buf[20] = v38;
    _os_log_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved input name (%s).", buf, 0x1Cu);
  }

LABEL_64:
  v39 = CFDictionaryGetValue(theDict, @"EmbeddingName");
  v40 = v39;
  if (v39)
  {
    CFRetain(v39);
    v88[0] = v40;
    applesauce::CF::convert_to<std::string,0>(buf, v40);
    goto LABEL_73;
  }

  v88[0] = 0;
  v41 = *(a2 + 16);
  if (!v41)
  {
    v42 = MEMORY[0x1E69E9C10];
LABEL_70:
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "NeuralNet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 362;
      _os_log_impl(&dword_1DDB85000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d Embedding name not found, using empty.\n", buf, 0x12u);
    }

    goto LABEL_72;
  }

  v42 = *v41;
  if (*v41)
  {
    goto LABEL_70;
  }

LABEL_72:
  std::string::basic_string[abi:ne200100]<0>(buf, "");
LABEL_73:
  v43 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    operator delete(*v43);
  }

  *v43 = *buf;
  *(a1 + 88) = *&buf[16];
  v44 = *(a2 + 16);
  if (v44)
  {
    v45 = *v44;
    if (!*v44)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v45 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 95) >= 0)
    {
      v46 = a1 + 72;
    }

    else
    {
      v46 = *(a1 + 72);
    }

    *buf = 136315650;
    *&buf[4] = "NeuralNet.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 366;
    *&buf[18] = 2080;
    *&buf[20] = v46;
    _os_log_impl(&dword_1DDB85000, v45, OS_LOG_TYPE_DEBUG, "%25s:%-5d Embedding name set to (%s).", buf, 0x1Cu);
  }

LABEL_84:
  v47 = CFDictionaryGetValue(theDict, @"OutputName");
  v48 = v47;
  if (!v47)
  {
    v75 = 0;
    v101[0] = 0;
    v76 = *(a2 + 16);
    if (v76)
    {
      v75 = *v76;
    }

    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "NeuralNet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 370;
      *&buf[18] = 1024;
      *&buf[20] = -66741;
      _os_log_impl(&dword_1DDB85000, v75, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [outputName_ref.get_cf() == nullptr is false]: Failed to retrieve OutputName.", buf, 0x18u);
    }

    v77 = __cxa_allocate_exception(0x10uLL);
    *v77 = &unk_1F593B0D8;
    v77[2] = -66741;
  }

  CFRetain(v47);
  v87 = v7;
  v101[0] = v48;
  applesauce::CF::convert_to<std::string,0>(buf, v48);
  v49 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    operator delete(*v49);
  }

  *v49 = *buf;
  *(a1 + 64) = *&buf[16];
  v50 = *(a2 + 16);
  if (v50)
  {
    v51 = *v50;
    if (!*v50)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v51 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 71) >= 0)
    {
      v52 = a1 + 48;
    }

    else
    {
      v52 = *(a1 + 48);
    }

    *buf = 136315650;
    *&buf[4] = "NeuralNet.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 372;
    *&buf[18] = 2080;
    *&buf[20] = v52;
    _os_log_impl(&dword_1DDB85000, v51, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved output name (%s).", buf, 0x1Cu);
  }

LABEL_96:
  v53 = CFDictionaryGetValue(theDict, @"ComputeEngineName");
  v54 = v53;
  if (v53)
  {
    CFRetain(v53);
    v92 = v54;
    applesauce::CF::convert_to<std::string,0>(buf, v54);
    goto LABEL_105;
  }

  v92 = 0;
  v55 = *(a2 + 16);
  if (!v55)
  {
    v56 = MEMORY[0x1E69E9C10];
LABEL_102:
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "NeuralNet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 379;
      _os_log_impl(&dword_1DDB85000, v56, OS_LOG_TYPE_DEBUG, "%25s:%-5d ComputeEngineName not found, using default.\n", buf, 0x12u);
    }

    goto LABEL_104;
  }

  v56 = *v55;
  if (*v55)
  {
    goto LABEL_102;
  }

LABEL_104:
  std::string::basic_string[abi:ne200100]<0>(buf, "CPU");
LABEL_105:
  v57 = (a1 + 96);
  if (*(a1 + 119) < 0)
  {
    operator delete(*v57);
  }

  *v57 = *buf;
  *(a1 + 112) = *&buf[16];
  v58 = *(a2 + 16);
  if (v58)
  {
    v59 = *v58;
    if (!*v58)
    {
      *(a1 + 120) = 0;
      v60 = (a1 + 120);
      goto LABEL_122;
    }
  }

  else
  {
    v59 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 119) >= 0)
    {
      v61 = a1 + 96;
    }

    else
    {
      v61 = *(a1 + 96);
    }

    *buf = 136315650;
    *&buf[4] = "NeuralNet.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 382;
    *&buf[18] = 2080;
    *&buf[20] = v61;
    _os_log_impl(&dword_1DDB85000, v59, OS_LOG_TYPE_DEBUG, "%25s:%-5d Compute engine name set to (%s).", buf, 0x1Cu);
    v58 = *(a2 + 16);
  }

  *(a1 + 120) = 0;
  v60 = (a1 + 120);
  if (v58)
  {
    v62 = *v58;
    if (!*v58)
    {
      goto LABEL_122;
    }
  }

  else
  {
    v62 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "NeuralNet.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 387;
    _os_log_impl(&dword_1DDB85000, v62, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading StreamingMode.", buf, 0x12u);
  }

LABEL_122:
  v63 = DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(&v97, theDict, @"StreamingMode", v60);
  v64 = *(a2 + 16);
  if (!v63)
  {
    goto LABEL_130;
  }

  if (!v64)
  {
    v65 = MEMORY[0x1E69E9C10];
LABEL_127:
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "NeuralNet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 391;
      _os_log_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_DEBUG, "%25s:%-5d StreamingMode not found, using default.", buf, 0x12u);
      v64 = *(a2 + 16);
    }

    goto LABEL_129;
  }

  v65 = *v64;
  if (*v64)
  {
    goto LABEL_127;
  }

LABEL_129:
  *v60 = 0;
LABEL_130:
  if (v64)
  {
    v66 = *v64;
    if (!*v64)
    {
      goto LABEL_136;
    }
  }

  else
  {
    v66 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
  {
    v67 = *v60;
    *buf = 136315650;
    *&buf[4] = "NeuralNet.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 394;
    *&buf[18] = 1024;
    *&buf[20] = v67;
    _os_log_impl(&dword_1DDB85000, v66, OS_LOG_TYPE_DEBUG, "%25s:%-5d StreamingMode set to (%d).", buf, 0x18u);
  }

LABEL_136:
  v68 = *v60;
  if (*v60 >= 3)
  {
    v69 = *(a2 + 16);
    if (v69)
    {
      v70 = *v69;
    }

    else
    {
      v70 = 0;
    }

    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = "NeuralNet.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 397;
      *&buf[18] = 1024;
      *&buf[20] = -66743;
      *&buf[24] = 1024;
      *&buf[26] = v68;
      v99 = 1024;
      v100 = 3;
      _os_log_impl(&dword_1DDB85000, v70, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [modelPlistInfo.streamingMode_int >= static_cast<UInt32>(StreamingMode::NumModes) is false]: StreamingMode (%u) is out of range, a value smaller than (%d) is expected.", buf, 0x24u);
    }

    v71 = __cxa_allocate_exception(0x10uLL);
    *v71 = &unk_1F593B0D8;
    v71[2] = -66743;
  }

  if (v54)
  {
    CFRelease(v54);
  }

  CFRelease(v48);
  if (v40)
  {
    CFRelease(v40);
  }

  CFRelease(v34);
  if (v87)
  {
    CFRelease(v87);
  }
}

void sub_1DDD6EEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDD70F60(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (*(v56 + 119) < 0)
  {
    operator delete(*a12);
  }

  if (*(v56 + 95) < 0)
  {
    operator delete(*a16);
  }

  if (*(v56 + 71) < 0)
  {
    operator delete(*a17);
  }

  *v56 = &unk_1F592AE40;
  v57 = *(v56 + 32);
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  MEMORY[0x1E12BD160](v56, 0x10F3C4046D81F07);
  JUMPOUT(0x1DDD71450);
}

void sub_1DDD70FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, void **a12, uint64_t a13, void **a14, void **a15, void **a16, void **a17, audiodsp::espresso::v1::plan *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  CFRelease(v57);
  if (STACK[0x2D0])
  {
    CFRelease(STACK[0x2D0]);
  }

  if (STACK[0x2D8])
  {
    CFRelease(STACK[0x2D8]);
  }

  v58 = *a11;
  if (*a11)
  {
    *(v56 + 864) = v58;
    operator delete(v58);
  }

  v59 = *(v56 + 832);
  if (v59)
  {
    *(v56 + 840) = v59;
    operator delete(v59);
  }

  STACK[0x300] = a22;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x300]);
  v60 = *a14;
  if (*a14)
  {
    *(v56 + 792) = v60;
    operator delete(v60);
  }

  if (*(v56 + 248) == 1)
  {
    v61 = *(v56 + 240);
    if (v61)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v61);
    }
  }

  if (*(v56 + 208) == 1)
  {
    audiodsp::espresso::v1::plan::~plan(a18);
  }

  if (*(v56 + 168) == 1)
  {
    v62 = *(v56 + 160);
    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v62);
    }
  }

  if (*(v56 + 143) < 0)
  {
    operator delete(*a15);
  }

  if (*(v56 + 119) < 0)
  {
    operator delete(*a12);
  }

  if (*(v56 + 95) < 0)
  {
    operator delete(*a16);
  }

  if (*(v56 + 71) < 0)
  {
    operator delete(*a17);
  }

  *v56 = &unk_1F592AE40;
  v63 = *(v56 + 32);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  MEMORY[0x1E12BD160](v56, 0x10F3C4046D81F07);
  JUMPOUT(0x1DDD71450);
}

void sub_1DDD71044(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    audiodsp::espresso::v1::plan::plan(std::shared_ptr<void>,int)::{lambda(void *)#1}::operator()();
    __cxa_rethrow();
  }

  JUMPOUT(0x1DDD71450);
}

void sub_1DDD71064()
{
  __cxa_end_catch();
  if (STACK[0x318])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x318]);
  }

  if (STACK[0x308])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x308]);
  }

  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x1DDD71128);
}

void sub_1DDD71084(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    espresso_context_destroy();
    __cxa_rethrow();
  }

  JUMPOUT(0x1DDD71450);
}

void sub_1DDD71104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&STACK[0x270]);
  if (a70 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DDD7126CLL);
}

void sub_1DDD7115C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a70 < 0)
  {
    operator delete(a65);
  }

  JUMPOUT(0x1DDD7126CLL);
}

void sub_1DDD71190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::pair<std::string,std::string>::~pair(&STACK[0x300]);
  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  applesauce::CF::TypeRef::~TypeRef(&STACK[0x2B0]);
  if (a48 < 0)
  {
    operator delete(a43);
  }

  applesauce::CF::TypeRef::~TypeRef(&STACK[0x2B8]);
  applesauce::CF::DictionaryRef::~DictionaryRef(&STACK[0x2C0]);
  CFRelease(v73);
  if (STACK[0x270])
  {
    CFRelease(STACK[0x270]);
  }

  if (a73 < 0)
  {
    operator delete(a68);
  }

  JUMPOUT(0x1DDD7126CLL);
}

void sub_1DDD71250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, void **a11, uint64_t a12, uint64_t a13, void **a14, void **a15, uint64_t a16, uint64_t a17, audiodsp::espresso::v1::plan *a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22)
{
  CFRelease(a10);
  if (STACK[0x2D0])
  {
    CFRelease(STACK[0x2D0]);
  }

  if (STACK[0x2D8])
  {
    CFRelease(STACK[0x2D8]);
  }

  v23 = *a11;
  if (*a11)
  {
    *(v22 + 864) = v23;
    operator delete(v23);
  }

  v24 = *(v22 + 832);
  if (v24)
  {
    *(v22 + 840) = v24;
    operator delete(v24);
  }

  STACK[0x300] = a22;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x300]);
  v25 = *a14;
  if (*a14)
  {
    *(v22 + 792) = v25;
    operator delete(v25);
  }

  if (*(v22 + 248) == 1 && *(v22 + 240))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (*(v22 + 208) == 1)
  {
    audiodsp::espresso::v1::plan::~plan(a18);
  }

  if (*(v22 + 168) == 1 && *(v22 + 160))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (*(v22 + 143) < 0)
  {
    operator delete(*a15);
  }

  JUMPOUT(0x1DDD7137CLL);
}

void sub_1DDD71288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, void **a11, uint64_t a12, uint64_t a13, void **a14, void **a15, uint64_t a16, uint64_t a17, audiodsp::espresso::v1::plan *a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22)
{
  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  CFRelease(a10);
  if (STACK[0x2D0])
  {
    CFRelease(STACK[0x2D0]);
  }

  if (STACK[0x2D8])
  {
    CFRelease(STACK[0x2D8]);
  }

  v23 = *a11;
  if (*a11)
  {
    *(v22 + 864) = v23;
    operator delete(v23);
  }

  v24 = *(v22 + 832);
  if (v24)
  {
    *(v22 + 840) = v24;
    operator delete(v24);
  }

  STACK[0x300] = a22;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x300]);
  v25 = *a14;
  if (*a14)
  {
    *(v22 + 792) = v25;
    operator delete(v25);
  }

  if (*(v22 + 248) == 1)
  {
    v26 = *(v22 + 240);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }
  }

  if (*(v22 + 208) == 1)
  {
    audiodsp::espresso::v1::plan::~plan(a18);
  }

  if (*(v22 + 168) == 1)
  {
    v27 = *(v22 + 160);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }
  }

  if (*(v22 + 143) < 0)
  {
    operator delete(*a15);
  }

  JUMPOUT(0x1DDD7137CLL);
}

void sub_1DDD71448(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ModelPlistInfo::~ModelPlistInfo(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_1DDD73324(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DDD73878);
}

void sub_1DDD7332C(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x1DDD73878);
}

void sub_1DDD73338(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (*(v53 - 233) < 0)
  {
    operator delete(*(v53 - 256));
  }

  if (a53 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DDD73380);
}

void sub_1DDD733A8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDD73878);
  }

  if (a2 == 3)
  {
    v6 = __cxa_begin_catch(a1);
    v7 = *(v2 + 8);
    if (v7)
    {
      v8 = *v7;
      if (!*v7)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v6[2];
      v14 = (*(*v6 + 16))(v6);
      *(v4 - 256) = 136315906;
      *(v3 + 52) = "NeuralNetImpl.cpp";
      *(v4 - 244) = 1024;
      *(v3 + 62) = 1379;
      *(v4 - 238) = 1024;
      *(v4 - 236) = v17;
      *(v4 - 232) = 2080;
      *(v3 + 74) = v14;
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d BNNSGraphCompileFromFile failed with CAException %d: %s.", (v4 - 256), 0x22u);
    }
  }

  else
  {
    v9 = __cxa_begin_catch(a1);
    v10 = *(v2 + 8);
    if (a2 == 2)
    {
      v11 = v9;
      if (v10)
      {
        v12 = *v10;
        if (!*v10)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = (*(*v11[3] + 16))(v11[3]);
        v18 = *(v11 + 4);
        v15 = ((*v11)[2])(v11);
        *(v4 - 256) = 136316162;
        *(v3 + 52) = "NeuralNetImpl.cpp";
        *(v4 - 244) = 1024;
        *(v3 + 62) = 1381;
        *(v4 - 238) = 2080;
        *(v3 + 68) = v16;
        *(v4 - 228) = 1024;
        *(v3 + 78) = v18;
        *(v4 - 222) = 2080;
        *(v3 + 84) = v15;
        _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d BNNSGraphCompileFromFile failed with %s error %d: %s.", (v4 - 256), 0x2Cu);
      }
    }

    else
    {
      if (v10)
      {
        v13 = *v10;
        if (!*v10)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *(v4 - 256) = 136315394;
        *(v3 + 52) = "NeuralNetImpl.cpp";
        *(v4 - 244) = 1024;
        *(v3 + 62) = 1383;
        _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d BNNSGraphCompileFromFile failed with unknown exception.", (v4 - 256), 0x12u);
      }
    }
  }

LABEL_24:
  __cxa_end_catch();
  JUMPOUT(0x1DDD724C4);
}

void sub_1DDD736A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  close(v14);
  caulk::pooled_semaphore_mutex::_unlock((v13 + 232));
  JUMPOUT(0x1DDD73700);
}

void sub_1DDD736C4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DDD73878);
}

void sub_1DDD736D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void **a14, void **a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a74 < 0)
  {
    operator delete(__p);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (*(v74 + 351) < 0)
  {
    operator delete(*v75);
  }

  a72 = a13;
  std::vector<MIL2BNNS::GraphTensor>::__destroy_vector::operator()[abi:ne200100](&a72);
  v78 = *(v74 + 248);
  *(v74 + 248) = 0;
  if (v78)
  {
    MEMORY[0x1E12BD130](v78, 0x1000C8077774924);
  }

  v79 = *(v74 + 240);
  *(v74 + 240) = 0;
  if (v79)
  {
    MEMORY[0x1E12BD130](v79, 0x1000C8077774924);
  }

  v80 = (v74 + 200);
  v81 = -48;
  while (1)
  {
    v82 = *(v80 - 1);
    if (v82)
    {
      *v80 = v82;
      operator delete(v82);
    }

    v80 -= 3;
    v81 += 24;
    if (!v81)
    {
      applesauce::CF::DataRef::~DataRef(a14);
      v83 = *v76;
      if (*v76)
      {
        *(v74 + 128) = v83;
        operator delete(v83);
      }

      if (*(v74 + 111) < 0)
      {
        operator delete(*(v74 + 88));
      }

      if (*(v74 + 87) < 0)
      {
        operator delete(*(v74 + 64));
      }

      if (*(v74 + 63) < 0)
      {
        operator delete(*a15);
      }

      *v74 = &unk_1F592AE40;
      v84 = *(v74 + 32);
      if (v84)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v84);
      }

      if (a22 < 0)
      {
        operator delete(a17);
      }

      if (a29 < 0)
      {
        operator delete(a24);
      }

      if (a36 < 0)
      {
        operator delete(a31);
      }

      if (a43 < 0)
      {
        operator delete(a38);
      }

      if (a50 < 0)
      {
        operator delete(a45);
      }

      MEMORY[0x1E12BD160](v74, 0x10F3C4028A7295ELL);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t FullyConnectedLayerBNNS<signed char>::FullyConnectedLayerBNNS(uint64_t a1, uint64_t *a2)
{
  memcpy(a1, a2, 0x318uLL);
  *(a1 + 792) = 0;
  *(a1 + 800) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 792, a2[99], a2[100], (a2[100] - a2[99]) >> 2);
  *(a1 + 832) = 0;
  *(a1 + 816) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 816, a2[102], a2[103], (a2[103] - a2[102]) >> 2);
  *(a1 + 856) = 0;
  *(a1 + 840) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 840, a2[105], a2[106], (a2[106] - a2[105]) >> 2);
  *(a1 + 880) = 0;
  *(a1 + 864) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 864, a2[108], a2[109], (a2[109] - a2[108]) >> 2);
  *(a1 + 904) = 0;
  *(a1 + 888) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 888, a2[111], a2[112], (a2[112] - a2[111]) >> 2);
  *(a1 + 928) = 0;
  *(a1 + 912) = 0u;
  std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(a1 + 912, a2[114], a2[115], a2[115] - a2[114]);
  *(a1 + 952) = 0;
  *(a1 + 936) = 0u;
  std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(a1 + 936, a2[117], a2[118], a2[118] - a2[117]);
  *(a1 + 960) = a2[120];
  return a1;
}

void sub_1DDD739DC(_Unwind_Exception *exception_object)
{
  v9 = *v7;
  if (*v7)
  {
    v1[115] = v9;
    operator delete(v9);
  }

  v10 = *v6;
  if (*v6)
  {
    v1[112] = v10;
    operator delete(v10);
  }

  v11 = *v5;
  if (*v5)
  {
    v1[109] = v11;
    operator delete(v11);
  }

  v12 = *v4;
  if (*v4)
  {
    v1[106] = v12;
    operator delete(v12);
  }

  v13 = *v3;
  if (*v3)
  {
    v1[103] = v13;
    operator delete(v13);
  }

  v14 = *v2;
  if (*v2)
  {
    v1[100] = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDD73AD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FullyConnectedLayerBNNS<short>::FullyConnectedLayerBNNS(uint64_t a1, uint64_t *a2)
{
  memcpy(a1, a2, 0x318uLL);
  *(a1 + 792) = 0;
  *(a1 + 800) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 792, a2[99], a2[100], (a2[100] - a2[99]) >> 2);
  *(a1 + 832) = 0;
  *(a1 + 816) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 816, a2[102], a2[103], (a2[103] - a2[102]) >> 2);
  *(a1 + 856) = 0;
  *(a1 + 840) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 840, a2[105], a2[106], (a2[106] - a2[105]) >> 2);
  *(a1 + 880) = 0;
  *(a1 + 864) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 864, a2[108], a2[109], (a2[109] - a2[108]) >> 2);
  *(a1 + 904) = 0;
  *(a1 + 888) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 888, a2[111], a2[112], (a2[112] - a2[111]) >> 2);
  *(a1 + 928) = 0;
  *(a1 + 912) = 0u;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1 + 912, a2[114], a2[115], (a2[115] - a2[114]) >> 1);
  *(a1 + 952) = 0;
  *(a1 + 936) = 0u;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1 + 936, a2[117], a2[118], (a2[118] - a2[117]) >> 1);
  *(a1 + 960) = a2[120];
  return a1;
}

void sub_1DDD73C50(_Unwind_Exception *exception_object)
{
  v9 = *v7;
  if (*v7)
  {
    v1[115] = v9;
    operator delete(v9);
  }

  v10 = *v6;
  if (*v6)
  {
    v1[112] = v10;
    operator delete(v10);
  }

  v11 = *v5;
  if (*v5)
  {
    v1[109] = v11;
    operator delete(v11);
  }

  v12 = *v4;
  if (*v4)
  {
    v1[106] = v12;
    operator delete(v12);
  }

  v13 = *v3;
  if (*v3)
  {
    v1[103] = v13;
    operator delete(v13);
  }

  v14 = *v2;
  if (*v2)
  {
    v1[100] = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDD73D44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

uint64_t FullyConnectedLayerBNNS<int>::FullyConnectedLayerBNNS(uint64_t a1, uint64_t *a2)
{
  memcpy(a1, a2, 0x318uLL);
  *(a1 + 792) = 0;
  *(a1 + 800) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 792, a2[99], a2[100], (a2[100] - a2[99]) >> 2);
  *(a1 + 832) = 0;
  *(a1 + 816) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 816, a2[102], a2[103], (a2[103] - a2[102]) >> 2);
  *(a1 + 856) = 0;
  *(a1 + 840) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 840, a2[105], a2[106], (a2[106] - a2[105]) >> 2);
  *(a1 + 880) = 0;
  *(a1 + 864) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 864, a2[108], a2[109], (a2[109] - a2[108]) >> 2);
  *(a1 + 904) = 0;
  *(a1 + 888) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 888, a2[111], a2[112], (a2[112] - a2[111]) >> 2);
  *(a1 + 928) = 0;
  *(a1 + 912) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 912, a2[114], a2[115], (a2[115] - a2[114]) >> 2);
  *(a1 + 952) = 0;
  *(a1 + 936) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 936, a2[117], a2[118], (a2[118] - a2[117]) >> 2);
  *(a1 + 960) = a2[120];
  return a1;
}

void sub_1DDD73F14(_Unwind_Exception *exception_object)
{
  v9 = *v7;
  if (*v7)
  {
    v1[115] = v9;
    operator delete(v9);
  }

  v10 = *v6;
  if (*v6)
  {
    v1[112] = v10;
    operator delete(v10);
  }

  v11 = *v5;
  if (*v5)
  {
    v1[109] = v11;
    operator delete(v11);
  }

  v12 = *v4;
  if (*v4)
  {
    v1[106] = v12;
    operator delete(v12);
  }

  v13 = *v3;
  if (*v3)
  {
    v1[103] = v13;
    operator delete(v13);
  }

  v14 = *v2;
  if (*v2)
  {
    v1[100] = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<FullyConnectedLayerBNNS<int>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x43B3D5AF9A7240)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *FullyConnectedLayerBNNS<float>::~FullyConnectedLayerBNNS(void *a1)
{
  v2 = a1[117];
  if (v2)
  {
    a1[118] = v2;
    operator delete(v2);
  }

  v3 = a1[114];
  if (v3)
  {
    a1[115] = v3;
    operator delete(v3);
  }

  v4 = a1[111];
  if (v4)
  {
    a1[112] = v4;
    operator delete(v4);
  }

  v5 = a1[108];
  if (v5)
  {
    a1[109] = v5;
    operator delete(v5);
  }

  v6 = a1[105];
  if (v6)
  {
    a1[106] = v6;
    operator delete(v6);
  }

  v7 = a1[102];
  if (v7)
  {
    a1[103] = v7;
    operator delete(v7);
  }

  v8 = a1[99];
  if (v8)
  {
    a1[100] = v8;
    operator delete(v8);
  }

  return a1;
}

uint64_t FullyConnectedLayerBNNS<float>::FullyConnectedLayerBNNS(uint64_t a1, uint64_t *a2)
{
  memcpy(a1, a2, 0x318uLL);
  *(a1 + 792) = 0;
  *(a1 + 800) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 792, a2[99], a2[100], (a2[100] - a2[99]) >> 2);
  *(a1 + 832) = 0;
  *(a1 + 816) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 816, a2[102], a2[103], (a2[103] - a2[102]) >> 2);
  *(a1 + 856) = 0;
  *(a1 + 840) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 840, a2[105], a2[106], (a2[106] - a2[105]) >> 2);
  *(a1 + 880) = 0;
  *(a1 + 864) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 864, a2[108], a2[109], (a2[109] - a2[108]) >> 2);
  *(a1 + 904) = 0;
  *(a1 + 888) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 888, a2[111], a2[112], (a2[112] - a2[111]) >> 2);
  *(a1 + 928) = 0;
  *(a1 + 912) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 912, a2[114], a2[115], (a2[115] - a2[114]) >> 2);
  *(a1 + 952) = 0;
  *(a1 + 936) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 936, a2[117], a2[118], (a2[118] - a2[117]) >> 2);
  *(a1 + 960) = a2[120];
  return a1;
}

void sub_1DDD741FC(_Unwind_Exception *exception_object)
{
  v9 = *v7;
  if (*v7)
  {
    v1[115] = v9;
    operator delete(v9);
  }

  v10 = *v6;
  if (*v6)
  {
    v1[112] = v10;
    operator delete(v10);
  }

  v11 = *v5;
  if (*v5)
  {
    v1[109] = v11;
    operator delete(v11);
  }

  v12 = *v4;
  if (*v4)
  {
    v1[106] = v12;
    operator delete(v12);
  }

  v13 = *v3;
  if (*v3)
  {
    v1[103] = v13;
    operator delete(v13);
  }

  v14 = *v2;
  if (*v2)
  {
    v1[100] = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<FullyConnectedLayerBNNS<float>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x43B3D5AF9A7240)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void NeuralNet::~NeuralNet(NeuralNet *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (!v2)
  {
    goto LABEL_17;
  }

  CFRetain(*(this + 3));
  v3 = *this;
  *this = 0;
  *buf = v3;
  v4 = [[NeuralNetCache alloc] initWithImpl:buf];
  v5 = *buf;
  *buf = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = +[NeuralNetCache sharedCache];
  [v6 setObject:v4 forKey:v2];

  CFRelease(v2);
  v7 = *(this + 2);
  if (!v7)
  {
    v8 = MEMORY[0x1E69E9C10];
LABEL_8:
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(this + 3);
      if (!v9)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      applesauce::CF::convert_to<std::string,0>(__p, v9);
      if (v15 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "NeuralNet.cpp";
      v17 = 1024;
      v18 = 269;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Saved implementation to cache for model %s.", buf, 0x1Cu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_15;
  }

  v8 = *v7;
  if (*v7)
  {
    goto LABEL_8;
  }

LABEL_15:
  v11 = *(this + 3);
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_17:
  v12 = *this;
  *this = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }
}

void sub_1DDD7450C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    __cxa_free_exception(v13);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL AUMicSelectorV2::ValidFormat(AUMicSelectorV2 *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  if (ausdk::ASBD::IsCommonFloat32(a4, a2))
  {
    v5 = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  else
  {
    v5 = 0;
  }

  return a4->mChannelsPerFrame == 1 && v5;
}

uint64_t AUMicSelectorV2::SupportedNumChannels(AUMicSelectorV2 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUMicSelectorV2::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUMicSelectorV2::GetParameterValueStrings(AUMicSelectorV2 *this, int a2, int a3, const __CFArray **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (!a4)
    {
      return 0;
    }

    if (!a3)
    {
      v7[0] = xmmword_1E866AD90;
      v7[1] = off_1E866ADA0;
      v8 = @"BeamMics";
      v6 = CFArrayCreate(0, v7, 5, 0);
      result = 0;
      *a4 = v6;
      return result;
    }
  }

  return 4294956417;
}

uint64_t AUMicSelectorV2::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  v3 = ausdk::AUBase::RestoreState(this, a2);
  if (!v3)
  {
    AUMicSelectorV2::CalculateTimeConstants(this);
    AUMicSelectorV2::SetNoiseFloorDetectorLength(this);
  }

  return v3;
}

void AUMicSelectorV2::CalculateTimeConstants(AUMicSelectorV2 *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v2, 1u), v5 = -1.0 / (AUDspLib::GetSampleRate(this) * Parameter / *(this + 84)), v6 = expf(v5), *(this + 292) = v6, *(this + 293) = v6, v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v8 & 1) == 0) || (v9 = ausdk::AUElement::GetParameter(v7, 2u), v10 = -1.0 / (AUDspLib::GetSampleRate(this) * v9 / *(this + 84)), *(this + 295) = expf(v10), v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v12 & 1) == 0) || (v13 = ausdk::AUElement::GetParameter(v11, 3u), v14 = -1.0 / (AUDspLib::GetSampleRate(this) * v13 / *(this + 84)), *(this + 296) = expf(v14), v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v16 & 1) == 0))
  {
    abort();
  }

  v17 = ausdk::AUElement::GetParameter(v15, 0x35u);
  v18 = -1.0 / (AUDspLib::GetSampleRate(this) * v17 / *(this + 84));
  *(this + 294) = expf(v18);
}

void AUMicSelectorV2::SetNoiseFloorDetectorLength(AUMicSelectorV2 *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v2, 0x12u);
  if (Parameter > 10.0)
  {
    Parameter = 10.0;
  }

  v5 = AUDspLib::GetSampleRate(this) * Parameter / *(this + 84);
  v6 = vcvtps_u32_f32(v5);
  v7 = (this + 1192);
  v8 = 3;
  do
  {
    AUMicSelectorV2::NoiseFloorDetectorV2::SetDetectorLength(v7, v6);
    v7 = (v7 + 24);
    --v8;
  }

  while (v8);

  AUMicSelectorV2::NoiseFloorDetectorV2::SetDetectorLength((this + 1264), v6);
}

void AUMicSelectorV2::NoiseFloorDetectorV2::SetDetectorLength(AUMicSelectorV2::NoiseFloorDetectorV2 *this, unsigned int a2)
{
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  v4 = *(this + 3);
  if (*(this + 4) >= a2)
  {
    v5 = v3;
  }

  else
  {
    v5 = *(this + 4);
  }

  if (v5 <= v4)
  {
    if (*(this + 2) > v5)
    {
      *(this + 2) = 0;
    }
  }

  else
  {
    vDSP_vfill(*this, (*this + 4 * v4), 1, v5 - v4);
  }

  *(this + 3) = v5;
}

uint64_t AUMicSelectorV2::GetParameterInfo(AUMicSelectorV2 *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  switch(a3)
  {
    case 0:
      buffer->cfNameString = @"Auto/Manual";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Auto/Manual", buffer->name, 52, 0x8000100u);
      v8 = 512.0;
      v7 = buffer->flags | 0x80000000;
      goto LABEL_39;
    case 1:
      buffer->cfNameString = @"Signal time constant sec";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Signal time constant sec", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 2;
      v7 = buffer->flags | 0x81100000;
      v8 = 2.00000045;
      v9 = 0.25;
      goto LABEL_55;
    case 2:
      buffer->cfNameString = @"Active time constant sec";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Active time constant sec", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 2;
      v7 = buffer->flags | 0x81100000;
      v8 = 524288.121;
      goto LABEL_33;
    case 3:
      buffer->cfNameString = @"Inactive time constant sec";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Inactive time constant sec", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 2;
      v7 = buffer->flags | 0x81100000;
      v8 = 524288.121;
      v9 = 2.0;
      goto LABEL_55;
    case 4:
      buffer->cfNameString = @"HF min level diff thd";
      buffer->flags = 1207959552;
      CFStringGetCString(@"HF min level diff thd", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      v7 = buffer->flags | 0x80100000;
      v8 = 4294967300.0;
      v9 = 6.0;
      goto LABEL_70;
    case 5:
      buffer->cfNameString = @"HF level diff ceiling";
      buffer->flags = 1207959552;
      CFStringGetCString(@"HF level diff ceiling", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      v7 = buffer->flags | 0x80100000;
      v8 = 4294967300.0;
      v9 = 15.0;
      goto LABEL_70;
    case 6:
      buffer->cfNameString = @"HF normal level diff";
      buffer->flags = 1207959552;
      CFStringGetCString(@"HF normal level diff", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      v7 = buffer->flags | 0x80100000;
      v8 = 134217728.0;
      goto LABEL_53;
    case 7:
      buffer->cfNameString = @"Deprecated";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Deprecated", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 3;
      v7 = buffer->flags | 0x84100000;
      __asm { FMOV            V0.2S, #-15.0 }

      goto LABEL_78;
    case 8:
      buffer->cfNameString = @"LF min level diff thd";
      buffer->flags = 1207959552;
      CFStringGetCString(@"LF min level diff thd", buffer->name, 52, 0x8000100u);
      v22 = 4;
      goto LABEL_58;
    case 9:
      buffer->cfNameString = @"LF level diff ceiling";
      buffer->flags = 1207959552;
      CFStringGetCString(@"LF level diff ceiling", buffer->name, 52, 0x8000100u);
      v23 = 4;
      goto LABEL_50;
    case 10:
      buffer->cfNameString = @"LF normal level diff";
      buffer->flags = 1207959552;
      CFStringGetCString(@"LF normal level diff", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 4;
      v7 = buffer->flags | 0x80100000;
      v8 = 134217728.0;
      v9 = 5.0;
      goto LABEL_70;
    case 11:
      buffer->cfNameString = @"Deprecated";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Deprecated", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 4;
      flags = buffer->flags;
      v21 = -2079326208;
      goto LABEL_77;
    case 12:
      buffer->cfNameString = @"Echo min level diff thd";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Echo min level diff thd", buffer->name, 52, 0x8000100u);
      v22 = 5;
LABEL_58:
      buffer->clumpID = v22;
      v7 = buffer->flags | 0x80100000;
      v8 = 4294967300.0;
      v9 = 7.0;
      goto LABEL_70;
    case 13:
      buffer->cfNameString = @"Echo level diff ceiling";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Echo level diff ceiling", buffer->name, 52, 0x8000100u);
      v23 = 5;
LABEL_50:
      buffer->clumpID = v23;
      v29 = buffer->flags;
      v30 = -2146435072;
      goto LABEL_51;
    case 14:
      buffer->cfNameString = @"Echo normal level diff";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Echo normal level diff", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 5;
      v7 = buffer->flags | 0x80100000;
      v8 = 524288.0;
LABEL_53:
      v9 = 4.0;
      goto LABEL_70;
    case 15:
      buffer->cfNameString = @"Echo high gain thd";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Echo high gain thd", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 5;
      v7 = buffer->flags | 0x80100000;
      v8 = 524288.379;
      v9 = -10.0;
      goto LABEL_70;
    case 16:
      buffer->cfNameString = @"Echo hardware bias";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Echo hardware bias", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 5;
      v13 = buffer->flags;
      v14 = -2146435072;
      goto LABEL_20;
    case 17:
      buffer->cfNameString = @"Normal X-corr coeff lim";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Normal X-corr coeff lim", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 7;
      v7 = buffer->flags | 0x80100000;
      __asm { FMOV            V0.2S, #-1.0 }

      v8 = -_D0;
      v9 = 0.95;
      goto LABEL_85;
    case 18:
      buffer->cfNameString = @"Noise floor det length sec";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Noise floor det length sec", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 6;
      v7 = buffer->flags | 0x80100000;
      v8 = 524288.121;
      v9 = 8.0;
LABEL_55:
      v6 = kAudioUnitParameterUnit_Seconds;
      goto LABEL_85;
    case 19:
      buffer->cfNameString = @"Noise floor thd mic";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Noise floor thd mic", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 6;
      v7 = buffer->flags | 0x80100000;
      v8 = 4294967300.0;
      v9 = 8.0;
      goto LABEL_70;
    case 20:
      buffer->cfNameString = @"Noise floor thd echo";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Noise floor thd echo", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 6;
      v29 = buffer->flags;
      v30 = -2129657856;
LABEL_51:
      v7 = v29 | v30;
      v8 = 4294967300.0;
      v9 = 20.0;
      goto LABEL_70;
    case 21:
      buffer->cfNameString = @"Switch to front thd";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Switch to front thd", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 7;
      v7 = buffer->flags | 0x80100000;
      v8 = 524288.0;
      v9 = 3.0;
      goto LABEL_85;
    case 22:
      v31 = @"Switch to back thd";
      goto LABEL_75;
    case 23:
      v31 = @"Return to normal thd";
LABEL_75:
      buffer->cfNameString = v31;
      buffer->flags = 1207959552;
      CFStringGetCString(v31, buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 7;
      v7 = buffer->flags | 0x80100000;
      v8 = 524288.0;
      goto LABEL_82;
    case 24:
      buffer->cfNameString = @"Return to normal ceiling";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Return to normal ceiling", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 7;
      v7 = buffer->flags | 0x80100000;
      v8 = 4294967300.0;
      v9 = 15.0;
      goto LABEL_85;
    case 25:
    case 26:
      buffer->cfNameString = @"Deprecated";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Deprecated", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 8;
      v7 = buffer->flags | 0x84100000;
      v8 = 0.0078125;
      v9 = 0.5;
      goto LABEL_85;
    case 27:
      buffer->cfNameString = @"Beam direction (set by VP)";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Beam direction (set by VP)", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 10;
      v7 = buffer->flags & 0x3BEF7FFF | 0x44108000;
      v8 = 2.0;
LABEL_39:
      v9 = 0.0;
      v6 = kAudioUnitParameterUnit_Indexed;
      goto LABEL_85;
    case 28:
      buffer->cfNameString = @"Output Mode (to Beam)";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Output Mode (to Beam)", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 10;
      v7 = buffer->flags & 0x3BEF7FFF | 0x44108000;
      v8 = 2.0;
      v9 = 2.0;
      goto LABEL_85;
    case 29:
      buffer->cfNameString = @"Occlusion state";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Occlusion state", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 9;
      v7 = buffer->flags & 0x3FEF7FFF | 0x40108000;
      v8 = 2.0;
      goto LABEL_79;
    case 30:
      v27 = @"Front VAD";
      goto LABEL_61;
    case 31:
      v27 = @"Back VAD";
      goto LABEL_61;
    case 32:
      v27 = @"Echo VAD";
LABEL_61:
      buffer->cfNameString = v27;
      buffer->flags = 1207959552;
      CFStringGetCString(v27, buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 9;
      v24 = buffer->flags & 0x7FFFFFFF;
      v25 = 1074823168;
      goto LABEL_62;
    case 33:
      buffer->cfNameString = @"Front/back ratio";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Front/back ratio", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 9;
      v13 = buffer->flags & 0x7FFFFFFF;
      v14 = 1141932032;
      goto LABEL_20;
    case 34:
      v12 = @"LF front/back ratio";
      goto LABEL_16;
    case 35:
      v12 = @"HF front/back ratio";
      goto LABEL_16;
    case 36:
      v12 = @"Echo front/back ratio";
LABEL_16:
      buffer->cfNameString = v12;
      buffer->flags = 1207959552;
      CFStringGetCString(v12, buffer->name, 52, 0x8000100u);
      buffer->clumpID = 9;
      v13 = buffer->flags & 0x7FFFFFFF;
      v14 = 1074823168;
LABEL_20:
      v7 = v13 | v14;
      __asm { FMOV            V0.2S, #-20.0 }

      v8 = -_D0;
      goto LABEL_69;
    case 37:
      buffer->cfNameString = @"Max echo gain";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Max echo gain", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 9;
      v7 = buffer->flags & 0x3FEF7FFF | 0x40108000;
      v8 = 524288.379;
      goto LABEL_69;
    case 38:
      buffer->cfNameString = @"X-corr";
      buffer->flags = 1207959552;
      CFStringGetCString(@"X-corr", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 9;
      flags = buffer->flags & 0x7FFFFFFF;
      v21 = 1074823168;
LABEL_77:
      v7 = flags | v21;
      __asm { FMOV            V0.2S, #-1.0 }

      goto LABEL_78;
    case 39:
      buffer->cfNameString = @"Occlusion bias detector";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Occlusion bias detector", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 9;
      v7 = buffer->flags & 0x3FEF7FFF | 0x40108000;
      __asm { FMOV            V0.2S, #-20.0 }

      goto LABEL_78;
    case 40:
      buffer->cfNameString = @"Return to normal detector";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Return to normal detector", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 9;
      v7 = buffer->flags & 0x3FEF7FFF | 0x40108000;
      v8 = 134217728.0;
      goto LABEL_79;
    case 41:
      v10 = @"Front input level";
      goto LABEL_68;
    case 42:
      v10 = @"Back input level";
      goto LABEL_68;
    case 43:
      v10 = @"HF bottom input level";
      goto LABEL_68;
    case 44:
      buffer->cfNameString = @"VP pre gain (set by VP)";
      buffer->flags = 1207959552;
      CFStringGetCString(@"VP pre gain (set by VP)", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 10;
      v7 = buffer->flags & 0x3BEF7FFF | 0x44108000;
      v8 = 2.0615853e11;
      goto LABEL_69;
    case 45:
      buffer->cfNameString = @"HF max el. noise level (3-mic)";
      buffer->flags = 1207959552;
      CFStringGetCString(@"HF max el. noise level (3-mic)", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 6;
      v7 = buffer->flags | 0x80100000;
      v8 = -3.43597633e10;
      v6 = kAudioUnitParameterUnit_Decibels;
      v11 = -1029308416;
      goto LABEL_84;
    case 46:
      buffer->cfNameString = @"HF level where el. noise masked (3-mic)";
      buffer->flags = 1207959552;
      CFStringGetCString(@"HF level where el. noise masked (3-mic)", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 6;
      v7 = buffer->flags | 0x80100000;
      v8 = -3.43597633e10;
      v6 = kAudioUnitParameterUnit_Decibels;
      v11 = -1031667712;
      goto LABEL_84;
    case 47:
      buffer->cfNameString = @"Dead mic thd";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Dead mic thd", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 6;
      v7 = buffer->flags | 0x80100000;
      v8 = -1.09951243e12;
      v6 = kAudioUnitParameterUnit_Decibels;
      v11 = -1028390912;
      goto LABEL_84;
    case 48:
      v10 = @"HF front input level";
      goto LABEL_68;
    case 49:
      v10 = @"HF back input level";
LABEL_68:
      buffer->cfNameString = v10;
      buffer->flags = 1207959552;
      CFStringGetCString(v10, buffer->name, 52, 0x8000100u);
      buffer->clumpID = 9;
      v7 = buffer->flags & 0x3FEF7FFF | 0x40108000;
      *&v8 = 3267887104;
LABEL_69:
      v9 = 0.0;
LABEL_70:
      v6 = kAudioUnitParameterUnit_Decibels;
      goto LABEL_85;
    case 50:
    case 51:
    case 52:
      buffer->cfNameString = @"Deprecated";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Deprecated", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 10;
      v7 = buffer->flags & 0x3BEF7FFF | 0x44108000;
      v8 = 3.96316767e17;
      goto LABEL_79;
    case 53:
      buffer->cfNameString = @"HF level cov time constant";
      buffer->flags = 1207959552;
      CFStringGetCString(@"HF level cov time constant", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 2;
      v7 = buffer->flags | 0x80100000;
      v8 = 2.0;
LABEL_33:
      v6 = kAudioUnitParameterUnit_Seconds;
      v9 = 0.6;
      goto LABEL_85;
    case 54:
      buffer->cfNameString = @"HF min level cov f/b diff";
      buffer->flags = 1207959552;
      CFStringGetCString(@"HF min level cov f/b diff", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 3;
      v7 = buffer->flags | 0x80100000;
      v8 = 2048.0;
      v9 = 1.25;
      goto LABEL_85;
    case 55:
      buffer->cfNameString = @"HF level cov f/b diff ceiling";
      buffer->flags = 1207959552;
      CFStringGetCString(@"HF level cov f/b diff ceiling", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 3;
      v7 = buffer->flags | 0x80100000;
      v8 = 2048.0;
LABEL_82:
      v9 = 4.0;
      goto LABEL_85;
    case 56:
      buffer->cfNameString = @"HF normal level cov f/b diff";
      buffer->flags = 1207959552;
      CFStringGetCString(@"HF normal level cov f/b diff", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 3;
      v7 = buffer->flags | 0x80100000;
      v8 = 2048.0;
      v9 = 1.0;
      goto LABEL_85;
    case 57:
      buffer->cfNameString = @"HF level cov f/b diff";
      buffer->flags = 1207959552;
      CFStringGetCString(@"HF level cov f/b diff", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 9;
      v7 = buffer->flags & 0x3FEF7FFF | 0x40108000;
      __asm { FMOV            V0.2S, #-5.0 }

LABEL_78:
      v8 = -_D0;
      goto LABEL_79;
    case 58:
      buffer->cfNameString = @"Device orientation";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Device orientation", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 9;
      v7 = buffer->flags & 0x3FEF7FFF | 0x40108000;
      v8 = 8192.0;
      goto LABEL_79;
    case 59:
    case 60:
    case 61:
      buffer->cfNameString = @"Deprecated";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Deprecated", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 10;
      v7 = buffer->flags & 0x3BEF7FFF | 0x44108000;
      v8 = 3.45876451e18;
      v9 = 0.0;
      v6 = kAudioUnitParameterUnit_Milliseconds;
      goto LABEL_85;
    case 62:
      buffer->cfNameString = @"Echo low gain thd";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Echo low gain thd", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 5;
      v7 = buffer->flags | 0x80100000;
      v8 = -524288.379;
      v6 = kAudioUnitParameterUnit_Decibels;
      v11 = -1039400960;
      goto LABEL_84;
    case 63:
      buffer->cfNameString = @"Echo canceler converged";
      buffer->flags = 1207959552;
      CFStringGetCString(@"Echo canceler converged", buffer->name, 52, 0x8000100u);
      v6 = kAudioUnitParameterUnit_Generic;
      buffer->clumpID = 9;
      v24 = buffer->flags & 0x7FFFFFFF;
      v25 = 1141932032;
LABEL_62:
      v7 = v24 | v25;
      v8 = 0.0078125;
LABEL_79:
      v9 = 0.0;
      goto LABEL_85;
    case 64:
      buffer->cfNameString = @"HF self noise floor";
      buffer->flags = 1207959552;
      CFStringGetCString(@"HF self noise floor", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      v7 = buffer->flags | 0x80100000;
      v8 = -1.09951243e12;
      v6 = kAudioUnitParameterUnit_Decibels;
      v11 = -1024458752;
      goto LABEL_84;
    case 65:
      buffer->cfNameString = @"LF min level";
      buffer->flags = 1207959552;
      CFStringGetCString(@"LF min level", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 4;
      v7 = buffer->flags | 0x80100000;
      v8 = -3.43597633e10;
      v6 = kAudioUnitParameterUnit_Decibels;
      v11 = -1022623744;
LABEL_84:
      v9 = *&v11;
LABEL_85:
      result = 0;
      buffer->flags = v7;
      buffer->unit = v6;
      *&buffer->minValue = v8;
      buffer->defaultValue = v9;
      break;
    default:
      return 4294956418;
  }

  return result;
}

unint64_t AUMicSelectorV2::Render(AUMicSelectorV2 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v14 = 0;
  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  v8 = v7;
  if (v9)
  {
    v8 = ausdk::AUInputElement::PullInput(v7, &v14, a3, 0, a4);
  }

  if (!v8)
  {
    Element = ausdk::AUScope::GetElement((this + 128), 0);
    if (!Element || (v11 = Element, (v12 = ausdk::AUScope::GetElement((this + 80), 0)) == 0))
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (!*(v12 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    ausdk::AUBufferList::CopyBufferContentsTo(v11 + 6, (*(v12 + 152) + 48));
  }

  return v8;
}

uint64_t AUMicSelectorV2::ProcessMultipleBufferLists(AUMicSelectorV2 *this, unsigned int *a2, unsigned int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v333 = *MEMORY[0x1E69E9840];
  v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v10 & 1) == 0)
  {
    goto LABEL_371;
  }

  Parameter = ausdk::AUElement::GetParameter(v9, 0x1Bu);
  if (!(*(*this + 576))(this))
  {
    mData = (*a5)->mBuffers[0].mData;
    v16 = a5[1]->mBuffers[0].mData;
    v331[1] = mData;
    v332 = 0;
    v331[0] = v16;
    __N_4 = this;
    if ((*(this + 1416) & 1) != 0 || (v17 = a5[2]) == 0)
    {
      v18 = 0;
      v19 = 2;
    }

    else
    {
      v332 = v17->mBuffers[0].mData;
      v18 = 1;
      v19 = 3;
    }

    v20 = a5[3]->mBuffers[0].mData;
    v21 = a5[4]->mBuffers[0].mData;
    v22 = a5[5]->mBuffers[0].mData;
    v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v24 & 1) == 0)
    {
      goto LABEL_371;
    }

    v25 = ausdk::AUElement::GetParameter(v23, 4u);
    v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v27 & 1) == 0)
    {
      goto LABEL_371;
    }

    v28 = ausdk::AUElement::GetParameter(v26, 5u);
    v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v30 & 1) == 0)
    {
      goto LABEL_371;
    }

    v299 = ausdk::AUElement::GetParameter(v29, 6u);
    v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v32 & 1) == 0)
    {
      goto LABEL_371;
    }

    v33 = ausdk::AUElement::GetParameter(v31, 8u);
    v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v35 & 1) == 0)
    {
      goto LABEL_371;
    }

    v36 = ausdk::AUElement::GetParameter(v34, 9u);
    v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v38 & 1) == 0)
    {
      goto LABEL_371;
    }

    v298 = ausdk::AUElement::GetParameter(v37, 0xAu);
    v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v40 & 1) == 0)
    {
      goto LABEL_371;
    }

    v41 = ausdk::AUElement::GetParameter(v39, 0xCu);
    v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v43 & 1) == 0)
    {
      goto LABEL_371;
    }

    v44 = ausdk::AUElement::GetParameter(v42, 0xDu);
    v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v46 & 1) == 0)
    {
      goto LABEL_371;
    }

    v296 = ausdk::AUElement::GetParameter(v45, 0xFu);
    v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v48 & 1) == 0)
    {
      goto LABEL_371;
    }

    v292 = ausdk::AUElement::GetParameter(v47, 0x3Eu);
    v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v50 & 1) == 0)
    {
      goto LABEL_371;
    }

    v287 = v44;
    v51 = ausdk::AUElement::GetParameter(v49, 0xEu);
    v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v53 & 1) == 0)
    {
      goto LABEL_371;
    }

    v54 = ausdk::AUElement::GetParameter(v52, 0x10u);
    v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v56 & 1) == 0)
    {
      goto LABEL_371;
    }

    v314 = ausdk::AUElement::GetParameter(v55, 0x13u);
    v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v58 & 1) == 0)
    {
      goto LABEL_371;
    }

    v307 = ausdk::AUElement::GetParameter(v57, 0x14u);
    v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v60 & 1) == 0)
    {
      goto LABEL_371;
    }

    v291 = v36;
    v61 = ausdk::AUElement::GetParameter(v59, 0x15u);
    v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v63 & 1) == 0)
    {
      goto LABEL_371;
    }

    v290 = v28;
    v64 = ausdk::AUElement::GetParameter(v62, 0x16u);
    v65 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v66 & 1) == 0)
    {
      goto LABEL_371;
    }

    v310 = ausdk::AUElement::GetParameter(v65, 0x17u);
    v67 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v68 & 1) == 0)
    {
      goto LABEL_371;
    }

    v301 = ausdk::AUElement::GetParameter(v67, 0x18u);
    v69 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v70 & 1) == 0)
    {
      goto LABEL_371;
    }

    v300 = ausdk::AUElement::GetParameter(v69, 0x11u);
    v71 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v72 & 1) == 0)
    {
      goto LABEL_371;
    }

    v288 = v51;
    v73 = ausdk::AUElement::GetParameter(v71, 0x2Cu);
    v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v75 & 1) == 0)
    {
      goto LABEL_371;
    }

    v295 = ausdk::AUElement::GetParameter(v74, 0x2Du);
    v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v77 & 1) == 0)
    {
      goto LABEL_371;
    }

    v283 = ausdk::AUElement::GetParameter(v76, 0x2Eu);
    v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v79 & 1) == 0)
    {
      goto LABEL_371;
    }

    v297 = v33;
    v80 = ausdk::AUElement::GetParameter(v78, 0x2Fu);
    v81 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v82 & 1) == 0)
    {
      goto LABEL_371;
    }

    v285 = ausdk::AUElement::GetParameter(v81, 0x38u);
    v83 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v84 & 1) == 0)
    {
      goto LABEL_371;
    }

    __src = mData;
    v306 = v16;
    v293 = v41;
    v289 = v25;
    v312 = Parameter;
    v313 = v80;
    v303 = v64;
    v304 = v61;
    v308 = v54;
    v294 = ausdk::AUElement::GetParameter(v83, 0);
    v85 = 0;
    __C = 0.0;
    v86 = a3;
    v87 = -v73;
    do
    {
      vDSP_svesq(v331[v85], 1, &__C, a3);
      *(__N_4 + v85 + 322) = ((1.0 - *(__N_4 + 292)) * ((log10f((__C / v86) + 1.0e-12) * 10.0) - v73)) + (*(__N_4 + 292) * *(__N_4 + v85 + 322));
      ++v85;
    }

    while (v19 != v85);
    if (v18)
    {
      if (*(__N_4 + 324) >= v80)
      {
        v311 = 1;
      }

      else
      {
        v311 = 0;
        *(__N_4 + 342) = 0;
        v19 = 2;
      }
    }

    else
    {
      v311 = 0;
    }

    vDSP_svesq(v20, 1, &__C, a3);
    *(__N_4 + 331) = ((1.0 - *(__N_4 + 292)) * (log10f((__C / v86) + 1.0e-12) * 10.0)) + (*(__N_4 + 292) * *(__N_4 + 331));
    vDSP_svesq(v22, 1, &__C, a3);
    *(__N_4 + 332) = ((1.0 - *(__N_4 + 292)) * ((log10f((__C / v86) + 1.0e-12) * 10.0) - v73)) + (*(__N_4 + 292) * *(__N_4 + 332));
    vDSP_svesq(v21, 1, &__C, a3);
    *(__N_4 + 333) = ((1.0 - *(__N_4 + 292)) * ((log10f((__C / v86) + 1.0e-12) * 10.0) - v73)) + (*(__N_4 + 292) * *(__N_4 + 333));
    v89 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
    if ((v90 & 1) == 0)
    {
      goto LABEL_371;
    }

    v91 = ausdk::AUElement::GetParameter(v89, 0x40u);
    v92 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
    if ((v93 & 1) == 0)
    {
      goto LABEL_371;
    }

    v94 = ausdk::AUElement::GetParameter(v92, 0x41u);
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v98 = __N_4;
    v99 = (__N_4 + 1080);
    v100 = a3;
    v316 = 4 * v19;
    v302 = v19;
    do
    {
      v101 = ausdk::AUBufferList::PrepareBufferOrError(v99, v98 + 26, a3);
      if ((v102 & 1) == 0)
      {
        ausdk::Throw(v101);
      }

      if (!*v99)
      {
        ausdk::Throw(0xFFFFFFFFLL);
      }

      v103 = *(v98 + 136);
      v105 = *(v103 + 64);
      v104 = (v103 + 64);
      v106 = v331[v95];
      memcpy(v105, v106, 4 * a3);
      v107 = (v98 + v96 + 560);
      AudioUnitProcess(*(v98 + v95 * 8 + 536), a2, v107, a3, (v104 - 2));
      v107->mSampleTime = v107->mSampleTime + v100;
      vDSP_svesq(*v104, 1, &__C, a3);
      v108 = v87 + (log10f((__C / v86) + 1.0e-12) * 10.0);
      if (v108 < v91)
      {
        v108 = v91;
      }

      v329.f32[v97 / 4] = v108;
      *(__N_4 + v97 + 1300) = ((1.0 - *(__N_4 + 292)) * v108) + (*(__N_4 + 292) * *(__N_4 + v97 + 1300));
      memcpy(*v104, v106, 4 * a3);
      v109 = (__N_4 + v96 + 776);
      AudioUnitProcess(*(__N_4 + v95 * 8 + 752), a2, v109, a3, (v104 - 2));
      v109->mSampleTime = v109->mSampleTime + v100;
      vDSP_svesq(*v104, 1, &__C, a3);
      v98 = __N_4;
      v110 = v87 + (log10f((__C / v86) + 1.0e-12) * 10.0);
      if (v110 < v94)
      {
        v110 = v94;
      }

      *(__N_4 + v97 + 1312) = ((1.0 - *(__N_4 + 292)) * v110) + (*(__N_4 + 292) * *(__N_4 + v97 + 1312));
      v97 += 4;
      v96 += 64;
      ++v95;
    }

    while (v316 != v97);
    v111 = *(__N_4 + 325);
    v112 = *(__N_4 + 326);
    if (v311)
    {
      v113 = *(__N_4 + 327);
      v286 = v111 - v113;
      v284 = v112 - v113;
      v114 = *(__N_4 + 328);
      v115 = *(__N_4 + 329);
      v116 = v114 - v115;
      v117 = *(__N_4 + 330);
      v118 = v114 - v117;
      v119 = v115 - v117;
    }

    else
    {
      v116 = *(__N_4 + 328) - *(__N_4 + 329);
      v284 = 0.0;
      v286 = 0.0;
      v118 = 0.0;
      v119 = 0.0;
    }

    v120 = ausdk::AUBufferList::PrepareBufferOrError((__N_4 + 1144), (__N_4 + 1104), a3);
    if ((v121 & 1) == 0)
    {
      ausdk::Throw(v120);
    }

    v309 = v116;
    if (!*(__N_4 + 286))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v122 = *(__N_4 + 144);
    v123 = (v122 + 64);
    memcpy(*(v122 + 64), __src, 4 * a3);
    v124 = *(v122 + 80);
    v122 += 80;
    memcpy(v124, v306, 4 * a3);
    v88 = AudioUnitProcess(*(__N_4 + 121), a2, (__N_4 + 976), a3, (v122 - 32));
    *(__N_4 + 122) = *(__N_4 + 122) + v100;
    vDSP_svesq(*v122, 1, &__C, a3);
    *(__N_4 + 336) = ((1.0 - *(__N_4 + 293)) * __C) + (*(__N_4 + 293) * *(__N_4 + 336));
    vDSP_svesq(*v123, 1, &__C, a3);
    *(__N_4 + 337) = ((1.0 - *(__N_4 + 293)) * __C) + (*(__N_4 + 293) * *(__N_4 + 337));
    vDSP_dotpr(*v123, 1, *v122, 1, &__C, a3);
    v125 = 0;
    v126 = v111 - v112;
    v127 = __N_4;
    v128 = ((1.0 - *(__N_4 + 293)) * __C) + (*(__N_4 + 293) * *(__N_4 + 338));
    *(__N_4 + 338) = v128;
    v129 = (*(__N_4 + 336) * *(__N_4 + 337)) + 1.0e-10;
    v130 = (__N_4 + 1204);
    do
    {
      v131 = *(v130 - 1);
      *(*(v130 - 3) + 4 * v131) = *(__N_4 + v125 + 1288);
      *(v130 - 1) = (v131 + 1) % *v130;
      v125 += 4;
      v130 += 6;
    }

    while (v125 != 12);
    v132 = 0;
    v133 = *(__N_4 + 318);
    *(*(__N_4 + 158) + 4 * v133) = *(__N_4 + 331);
    *(__N_4 + 318) = (v133 + 1) % *(__N_4 + 319);
    for (i = 1192; i != 1264; i += 24)
    {
      Minimum = AUMicSelectorV2::NoiseFloorDetectorV2::FindMinimum((v127 + i));
      v127 = __N_4;
      *(&v323 + v132) = *(__N_4 + v132 + 322) > (v314 + Minimum);
      ++v132;
    }

    v136 = AUMicSelectorV2::NoiseFloorDetectorV2::FindMinimum(__N_4 + 158);
    v137 = v323;
    v138 = sqrtf(v129);
    v139 = v126;
    v140 = (v323 & 1) != 0 || v324 == 1;
    v141 = __N_4;
    v142 = v312;
    v143 = v313;
    v144 = v302;
    __Na = *(__N_4 + 331);
    ioActionFlagsa = v307 + v136;
    v145 = *(__N_4 + 322);
    v146 = *(__N_4 + 323);
    v317 = v128 / v138;
    if (v145 < v313 || v146 < v313)
    {
      v161 = ((v145 - v146) * 0.5);
      v150 = 32;
      v162 = 0.0;
      v147 = 0.0;
      v157 = -100.0;
      v158 = -100.0;
      v163 = 0.0;
      v164 = 0.0;
      v315 = 0.0;
      goto LABEL_100;
    }

    if (__Na > ioActionFlagsa)
    {
      v147 = 0.0;
      if (v140)
      {
        v148 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
        if ((v149 & 1) == 0)
        {
          goto LABEL_371;
        }

        v150 = 0;
        if (ausdk::AUElement::GetParameter(v148, 0x3Fu) <= 0.1)
        {
          v157 = -100.0;
          v158 = -100.0;
          v141 = __N_4;
        }

        else
        {
          v141 = __N_4;
          v151 = *(__N_4 + 332);
          v152 = *(__N_4 + 333);
          v153 = v151 - v152;
          v154 = *(__N_4 + 331);
          v155 = v151 - v154;
          v156 = v152 - v154;
          if (v155 <= v156)
          {
            v157 = v156;
          }

          else
          {
            v157 = v155;
          }

          if (v155 <= v156)
          {
            v158 = v155;
          }

          else
          {
            v158 = v156;
          }

          if (vabds_f32(v153, v308) > v293)
          {
            v159 = v153 - v308;
            if ((v139 * v159) > 0.0)
            {
              if (v157 <= v296)
              {
                v160 = v287;
                if (v158 >= v292)
                {
                  v150 = 0;
                  v159 = 0.0;
                }

                else
                {
                  v159 = -v159;
                  v150 = 8;
                }
              }

              else
              {
                v150 = 8;
                v160 = v287;
              }

              v147 = -v160;
              if (v159 >= -v160)
              {
                if (v159 <= v160)
                {
                  v147 = v159;
                }

                else
                {
                  v147 = v160;
                }
              }
            }
          }
        }
      }

      else
      {
        v150 = 0;
        v157 = -100.0;
        v158 = -100.0;
      }

      SampleRate = AUDspLib::GetSampleRate(v141);
      v141 = __N_4;
      *(__N_4 + 334) = (((SampleRate * 0.2) / *(__N_4 + 84)) + 0.5);
      v163 = 0.0;
      v161 = 0.0;
      v164 = 0.0;
      v315 = 0.0;
      v162 = 0.0;
      v142 = v312;
      v143 = v313;
      goto LABEL_100;
    }

    v315 = 0.0;
    if (v311)
    {
      v165 = *(__N_4 + 294);
      v166 = 1.0 - v165;
      v167 = (__N_4 + 1388);
      v168 = &v326;
      v169 = &v329;
      do
      {
        v170 = v169->f32[0];
        v169 = (v169 + 4);
        v171 = (v166 * v170) + (v165 * *(v167 - 3));
        *(v167 - 3) = v171;
        v172 = ((v170 - v171) * (v166 * (v170 - v171))) + (v165 * *v167);
        *v167++ = v172;
        *v168++ = sqrtf(v172);
        --v144;
      }

      while (v144);
      v173 = vmla_n_f32(vmul_n_f32(vmul_n_f32(vsub_f32(v329, *(__N_4 + 1376)), v166), v330 - *(__N_4 + 346)), *(__N_4 + 1400), v165);
      *(__N_4 + 175) = v173;
      v174 = vadd_f32(v173, vdup_n_s32(0x3DCCCCCDu));
      v315 = log10f(vdiv_f32(v174, vdup_lane_s32(v174, 1)).f32[0]) * 10.0;
    }

    v175 = *(__N_4 + 334);
    v176 = __OFSUB__(v175, 1);
    v177 = v175 - 1;
    if (v177 < 0 == v176)
    {
      v150 = 0;
      *(__N_4 + 334) = v177;
      v147 = 0.0;
      v161 = 0.0;
LABEL_91:
      v157 = -100.0;
LABEL_92:
      v158 = -100.0;
      v163 = 0.0;
LABEL_93:
      v164 = 0.0;
LABEL_94:
      v162 = 0.0;
      goto LABEL_100;
    }

    if (v140)
    {
      v178 = AUDspLib::GetSampleRate(__N_4);
      v141 = __N_4;
      v179 = (((v178 * 0.2) / *(__N_4 + 84)) + 0.5);
      *(__N_4 + 335) = v179;
      v180 = v309;
      v181 = v297;
    }

    else
    {
      v179 = *(__N_4 + 335);
      v180 = v309;
      v181 = v297;
      if (v179 >= 1)
      {
        *(__N_4 + 335) = --v179;
      }
    }

    if (fabsf(v180) > v181)
    {
      v204 = v180 >= 0.0 && v294 == 1.0;
      v147 = 0.0;
      if (v204)
      {
        v205 = 0.0;
      }

      else
      {
        v205 = v180;
      }

      v206 = -v291;
      if (v205 >= -v291)
      {
        v206 = v205;
      }

      if (v205 <= v291)
      {
        v163 = v206;
      }

      else
      {
        v163 = v291;
      }

      v161 = 0.0;
      v142 = v312;
      v143 = v313;
      if (!v311)
      {
        v150 = 1;
        v157 = -100.0;
LABEL_214:
        v158 = -100.0;
        goto LABEL_93;
      }

      if (v180 >= 0.0 || v119 >= v298)
      {
        v150 = 0;
        v157 = -100.0;
        if (v309 <= 0.0 || v118 >= v298)
        {
          goto LABEL_214;
        }
      }

LABEL_232:
      v150 = 0;
      goto LABEL_91;
    }

    v142 = v312;
    v143 = v313;
    if (v311)
    {
      v164 = v290;
      if (v140)
      {
        v207 = fabsf(v139);
        if (v207 <= v289)
        {
          v150 = 0;
          v209 = 0.0;
        }

        else
        {
          v208 = -v289;
          if (v139 >= 0.0 || v286 >= v208)
          {
            v150 = 2;
            if (v139 <= 0.0 || (v267 = v284 < v208, v209 = v139, !v267))
            {
              v209 = 0.0;
              v267 = v284 > v299 && v139 < 0.0;
              v268 = v267;
              v270 = v286 > v299 && v139 > 0.0;
              if (v268 | v270)
              {
                v209 = -v139;
                v150 = 2;
              }

              else
              {
                v150 = 0;
              }
            }
          }

          else
          {
            v150 = 2;
            v209 = v139;
          }
        }

        if (v209 <= v290)
        {
          v164 = v209;
          if (v209 < -v290)
          {
            v164 = -v290;
          }
        }

        v147 = 0.0;
        v161 = 0.0;
        if (v207 < v299)
        {
          v215 = *(v141 + 325);
          if (v215 > v295)
          {
            v216 = *(v141 + 326);
            v157 = -100.0;
            if (v216 <= v295)
            {
              goto LABEL_357;
            }

            if (v215 >= v283)
            {
              goto LABEL_357;
            }

            if (v216 >= v283)
            {
              goto LABEL_357;
            }

            v157 = -100.0;
            if (fmaxf(v326, v327) <= 2.4 || v328 <= 2.4)
            {
              goto LABEL_357;
            }

            if (*(v141 + 350) > 0.1 && *(v141 + 351) > 0.1 && vabds_f32(v326, v327) < 5.0)
            {
              v217 = v164;
              if (vabds_f32(v326, v328) >= 5.0 || vabds_f32(v327, v328) >= 5.0)
              {
                goto LABEL_256;
              }

              v218 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
              if ((v219 & 1) == 0)
              {
                goto LABEL_371;
              }

              if (fabsf(v315) >= ausdk::AUElement::GetParameter(v218, 0x36u))
              {
                v275 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                if ((v276 & 1) == 0)
                {
                  goto LABEL_371;
                }

                v277 = v315 > ausdk::AUElement::GetParameter(v275, 0x37u);
                v278 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                if (v277)
                {
                  if ((v279 & 1) == 0)
                  {
                    goto LABEL_371;
                  }

                  v280 = ausdk::AUElement::GetParameter(v278, 0x37u);
                }

                else
                {
                  if ((v279 & 1) == 0)
                  {
                    goto LABEL_371;
                  }

                  v267 = v315 < -ausdk::AUElement::GetParameter(v278, 0x37u);
                  v280 = v315;
                  if (v267)
                  {
                    v281 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                    if ((v282 & 1) == 0)
                    {
                      goto LABEL_371;
                    }

                    v280 = -ausdk::AUElement::GetParameter(v281, 0x37u);
                  }
                }

                v150 |= 4u;
                v162 = (v280 * 3.0);
                v157 = -100.0;
                v158 = -100.0;
                v163 = 0.0;
              }

              else
              {
LABEL_256:
                v157 = -100.0;
                v158 = -100.0;
                v163 = 0.0;
                v162 = 0.0;
              }

              v141 = __N_4;
              v142 = v312;
              v143 = v313;
              v164 = v217;
LABEL_100:
              v183 = v162 + v161 + v164 * 1.5 - v163 - v147;
              v184 = 1180;
              if (v183 == 0.0)
              {
                v184 = 1184;
              }

              *(v141 + 339) = ((1.0 - *(v141 + v184)) * v183) + (*(v141 + v184) * *(v141 + 339));
              if (v142 == 2.0)
              {
                v188 = *(v141 + 353);
                if (v188 == 6)
                {
                  v190 = v303;
                  v189 = v304 + v304;
                }

                else
                {
                  v190 = v303;
                  v189 = v304;
                  if (v188 == 5)
                  {
                    v188 = 5;
                    v190 = v303 + v303;
                  }
                }
              }

              else
              {
                v185 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v141 + 32, 0);
                if ((v186 & 1) == 0)
                {
                  goto LABEL_371;
                }

                v187 = ausdk::AUElement::GetParameter(v185, 0x1Bu);
                v141 = __N_4;
                v188 = *(__N_4 + 353);
                if (v187 == 0.0)
                {
                  v190 = v303;
                  v189 = v304;
                  if (v188 != 6)
                  {
                    v190 = v303 + v303;
                  }
                }

                else
                {
                  v190 = v303;
                  v189 = v304;
                  if (v188 != 5)
                  {
                    v189 = v304 + v304;
                  }
                }

                v143 = v313;
              }

              v191 = *(v141 + 341);
              if (!v191)
              {
                if ((v188 - 5) >= 2)
                {
                  v190 = v190 * 1.4;
                  v189 = v189 * 1.4;
                }

                v193 = *(v141 + 339);
                goto LABEL_129;
              }

              v192 = *(v141 + 343);
              if (v188 == v192)
              {
                v310 = v310 * 0.7;
                goto LABEL_117;
              }

              if (v191 == 1 && v188 == 5 && v192 == 6)
              {
                v193 = *(v141 + 339);
                if (v193 < 0.0)
                {
LABEL_127:
                  *(v141 + 339) = 0;
                  v193 = 0.0;
                }
              }

              else
              {
                if (v191 != 2 || v188 != 6 || v192 != 5)
                {
                  v310 = v310 + v310;
                  v190 = v190 * 1.4;
                  v189 = v189 * 1.4;
                  v300 = *"fff?";
LABEL_117:
                  v193 = *(v141 + 339);
                  if (v191 == 1)
                  {
                    if (v193 <= v189)
                    {
                      v194 = -v190;
                      goto LABEL_144;
                    }

                    goto LABEL_133;
                  }

LABEL_129:
                  v194 = -v190;
                  if (v193 < -v190)
                  {
                    v195 = 1;
                    goto LABEL_134;
                  }

                  if (v191 != 2)
                  {
                    if (v193 > v189)
                    {
LABEL_133:
                      v195 = 2;
LABEL_134:
                      *(v141 + 341) = v195;
                      *(v141 + 340) = v301;
                      *(v141 + 343) = v188;
                      if (v150)
                      {
                        *(v141 + 342) = v150;
                      }

                      else
                      {
                        *(v141 + 342) = 64;
                      }

                      goto LABEL_267;
                    }

                    if (!v191)
                    {
                      goto LABEL_267;
                    }
                  }

LABEL_144:
                  if (v193 < v194 || v193 > v189)
                  {
                    *(v141 + 342) |= v150;
                  }

                  v197 = fabsf(v183);
                  if (v197 > v310)
                  {
                    v198 = (v197 * (1.0 - *(v141 + 295))) + (*(v141 + 295) * *(v141 + 340));
                    *(v141 + 340) = v198;
                    if (v198 > v301)
                    {
                      *(v141 + 340) = v301;
                    }

                    goto LABEL_267;
                  }

                  if (v317 <= v300)
                  {
                    goto LABEL_267;
                  }

                  v199 = *(v141 + 342);
                  if ((v199 & 0x20) != 0 && *(v141 + 322) > v143 && *(v141 + 323) > v143)
                  {
                    *(v141 + 340) = *(v141 + 295) * *(v141 + 340);
                    v200 = -33;
                  }

                  else if (__Na > ioActionFlagsa && (v199 & 8) != 0 && fabsf(v147) < v288 && v157 < v296 && v158 > v292)
                  {
                    *(v141 + 340) = *(v141 + 295) * *(v141 + 340);
                    v200 = -9;
                  }

                  else
                  {
                    if (v140)
                    {
                      v201 = fabsf(v139);
                      v202 = fabsf(v309);
                      v203 = v295;
                      if ((v199 & 0x57) != 0 && v201 < v299 && v202 < v298 && fabsf(v315) < v285)
                      {
                        *(v141 + 340) = *(v141 + 295) * *(v141 + 340);
                        v200 = -72;
                        goto LABEL_262;
                      }
                    }

                    else
                    {
                      v201 = fabsf(v139);
                      v202 = fabsf(v309);
                      v203 = v295;
                    }

                    v210 = v311 ^ 1;
                    if (__Na > ioActionFlagsa)
                    {
                      v210 = 1;
                    }

                    if (((v210 | v140) & 1) != 0 || v201 >= v299 || v202 >= v298 || v286 >= v299 || v284 >= v299 || (v211 = *(v141 + 325), v211 >= v203) && (v212 = *(v141 + 326), v212 >= v203) && (v211 <= v283 || v212 <= v283))
                    {
                      if ((v199 & 0x80) != 0)
                      {
                        v200 = -1;
                        if (v294 == 1.0)
                        {
                          if (v188 == 5)
                          {
                            goto LABEL_262;
                          }
                        }

                        else if (v188 == 6)
                        {
                          goto LABEL_262;
                        }

                        if (v201 < v299 && v202 < v298)
                        {
                          *(v141 + 340) = *(v141 + 295) * *(v141 + 340);
                          v200 = -129;
                        }

                        goto LABEL_262;
                      }

                      v200 = -1;
                    }

                    else if (*(v141 + 335) >= 1)
                    {
                      v200 = -1;
                    }

                    else
                    {
                      v200 = -17;
                    }
                  }

LABEL_262:
                  if (*(v141 + 340) < v310 && v193 > (v190 * -0.75) && v193 < (v189 * 0.75))
                  {
                    *(v141 + 342) = v200 & v199;
                    if ((v200 & v199) == 0)
                    {
                      *(v141 + 170) = 0;
                    }
                  }

LABEL_267:
                  v220 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v141 + 32, 0);
                  if ((v221 & 1) == 0)
                  {
                    goto LABEL_371;
                  }

                  v222 = ausdk::AUElement::GetParameter(v220, 0);
                  if (v222 > 1)
                  {
                    v223 = __N_4;
                    if (v222 == 2)
                    {
                      goto LABEL_280;
                    }

                    if (v222 != 3)
                    {
                      if (v312 != 2.0)
                      {
LABEL_278:
                        v224 = 2;
                        goto LABEL_279;
                      }

LABEL_280:
                      *(v223 + 352) = 0;
LABEL_281:
                      v225 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v223 + 32, 0);
                      if (v226)
                      {
                        ausdk::AUElement::SetParameter(v225, 0x1Cu, *(__N_4 + 352));
                        v227 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                        if (v228)
                        {
                          ausdk::AUElement::SetParameter(v227, 0x1Du, *(__N_4 + 341));
                          v229 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                          if (v230)
                          {
                            ausdk::AUElement::SetParameter(v229, 0x1Eu, v137);
                            v231 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                            if (v233)
                            {
                              LOBYTE(v232) = v324;
                              ausdk::AUElement::SetParameter(v231, 0x1Fu, v232);
                              v234 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                              if (v235)
                              {
                                v236 = 0.0;
                                if (__Na > ioActionFlagsa)
                                {
                                  v236 = 1.0;
                                }

                                ausdk::AUElement::SetParameter(v234, 0x20u, v236);
                                v237 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                                if (v238)
                                {
                                  ausdk::AUElement::SetParameter(v237, 0x22u, v309);
                                  v239 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                                  if (v240)
                                  {
                                    ausdk::AUElement::SetParameter(v239, 0x23u, v139);
                                    v241 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                                    if (v242)
                                    {
                                      ausdk::AUElement::SetParameter(v241, 0x24u, (*(__N_4 + 332) - *(__N_4 + 333)) - v308);
                                      v243 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                                      if (v244)
                                      {
                                        ausdk::AUElement::SetParameter(v243, 0x25u, fmaxf(*(__N_4 + 332), *(__N_4 + 333)) - *(__N_4 + 331));
                                        v245 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                                        if (v246)
                                        {
                                          ausdk::AUElement::SetParameter(v245, 0x26u, v317);
                                          v247 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                                          if (v248)
                                          {
                                            ausdk::AUElement::SetParameter(v247, 0x27u, *(__N_4 + 339));
                                            v249 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                                            if (v250)
                                            {
                                              ausdk::AUElement::SetParameter(v249, 0x28u, *(__N_4 + 340));
                                              v251 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                                              if (v252)
                                              {
                                                ausdk::AUElement::SetParameter(v251, 0x29u, *(__N_4 + 322));
                                                v253 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                                                if (v254)
                                                {
                                                  ausdk::AUElement::SetParameter(v253, 0x2Au, *(__N_4 + 323));
                                                  v255 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                                                  if (v256)
                                                  {
                                                    ausdk::AUElement::SetParameter(v255, 0x2Bu, *(__N_4 + 327));
                                                    v257 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                                                    if (v258)
                                                    {
                                                      ausdk::AUElement::SetParameter(v257, 0x30u, *(__N_4 + 325));
                                                      v259 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                                                      if (v260)
                                                      {
                                                        ausdk::AUElement::SetParameter(v259, 0x31u, *(__N_4 + 326));
                                                        v261 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                                                        if (v262)
                                                        {
                                                          ausdk::AUElement::SetParameter(v261, 0x39u, v315);
                                                          v263 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(__N_4 + 32, 0);
                                                          if (v264)
                                                          {
                                                            ausdk::AUElement::SetParameter(v263, 0x3Au, *(__N_4 + 353));
                                                            return v88;
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
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

LABEL_371:
                      abort();
                    }

                    v224 = 1;
                  }

                  else
                  {
                    v223 = __N_4;
                    v224 = *(__N_4 + 341);
                    if (v224 != 1)
                    {
                      if (!v224)
                      {
                        if (v312 == 2.0)
                        {
                          if (*(__N_4 + 352) == 1)
                          {
                            goto LABEL_281;
                          }

                          goto LABEL_280;
                        }

                        goto LABEL_278;
                      }

                      goto LABEL_280;
                    }
                  }

LABEL_279:
                  *(v223 + 352) = v224;
                  goto LABEL_281;
                }

                v193 = *(v141 + 339);
                if (v193 > 0.0)
                {
                  goto LABEL_127;
                }
              }

              v191 = 0;
              *(v141 + 170) = 0;
              *(v141 + 342) = 0;
              goto LABEL_129;
            }
          }
        }

LABEL_356:
        v157 = -100.0;
LABEL_357:
        v158 = -100.0;
        goto LABEL_358;
      }

      v147 = 0.0;
      v161 = 0.0;
      if (v179 > 0)
      {
        goto LABEL_232;
      }

      if (fabsf(v139) <= v289)
      {
        v271 = *(v141 + 353);
        if (v271 == 6 && v286 > v289 && v139 > v299)
        {
          v164 = -v286;
          v150 = 16;
        }

        else
        {
          v273 = v284 > v289 && v271 == 5;
          v274 = v139 < -v299;
          if (v273 && v274)
          {
            v164 = v284;
          }

          else
          {
            v164 = 0.0;
          }

          if (v273 && v274)
          {
            v150 = 16;
          }

          else
          {
            v150 = 0;
          }
        }

        goto LABEL_356;
      }

      if (v139 >= 0.0 || v284 <= v299)
      {
        v150 = 0;
        v157 = -100.0;
        if (v139 <= 0.0 || v286 <= v299)
        {
          goto LABEL_92;
        }
      }

      v266 = -v290;
      if (v139 <= v290)
      {
        v266 = -v139;
      }

      v157 = -100.0;
      v158 = -100.0;
      if (v290 >= -v139)
      {
        v164 = v266;
      }

      v150 = 16;
LABEL_358:
      v163 = 0.0;
      goto LABEL_94;
    }

    v150 = 0;
    v213 = fabsf(v139);
    v147 = 0.0;
    v161 = 0.0;
    v157 = -100.0;
    v164 = v290;
    if (v213 <= v289 || v317 >= v300)
    {
      goto LABEL_92;
    }

    if ((*(v141 + 1368) & 8) != 0)
    {
      goto LABEL_232;
    }

    if (v294 == 1.0)
    {
      if (*(v141 + 341) && v309 >= 0.0)
      {
        goto LABEL_232;
      }
    }

    else
    {
      v214 = *(v141 + 341);
      if (*(v141 + 353) == 6)
      {
        if (v214 && v309 <= -2.0)
        {
          goto LABEL_232;
        }

        v157 = -100.0;
        v158 = -100.0;
        if (v213 > v290)
        {
          v164 = -v290;
        }

        else
        {
          v164 = -v213;
        }

        goto LABEL_343;
      }

      if (v214 && v309 >= 2.0)
      {
        goto LABEL_232;
      }
    }

    v157 = -100.0;
    v158 = -100.0;
    if (v213 <= v290)
    {
      v164 = v213;
    }

LABEL_343:
    v150 = 128;
    goto LABEL_358;
  }

  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  v14 = 2.0;
  if (Parameter == 2.0)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_371;
    }

    v14 = 0.0;
  }

  else if ((v13 & 1) == 0)
  {
    goto LABEL_371;
  }

  ausdk::AUElement::SetParameter(v12, 0x1Cu, v14);
  return 0;
}

float AUMicSelectorV2::NoiseFloorDetectorV2::FindMinimum(const float **this)
{
  v1 = *(this + 3);
  result = 0.0;
  if (v1)
  {
    if (*(this + 4))
    {
      __C = 0.0;
      vDSP_minv(*this, 1, &__C, v1);
      return __C;
    }
  }

  return result;
}

uint64_t AUMicSelectorV2::SetParameter(AUMicSelectorV2 *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  if (!result)
  {
    if (a3)
    {
      return 4294956418;
    }

    else
    {
      if (a2 - 1 >= 3)
      {
        if (a2 == 18)
        {
          AUMicSelectorV2::SetNoiseFloorDetectorLength(this);
        }
      }

      else
      {
        AUMicSelectorV2::CalculateTimeConstants(this);
      }

      return 0;
    }
  }

  return result;
}

uint64_t AUMicSelectorV2::SetProperty(AUMicSelectorV2 *this, int a2, int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  switch(a2)
  {
    case 846031203:
      result = 0;
      *(this + 1416) = *a5 != 0;
      break;
    case 1111:
      result = 0;
      *(this + 353) = *a5;
      break;
    case 21:
      if (a6 >= 4)
      {
        v8 = *a5;
        v9 = *a5 != 0;
        if (v9 != (*(*this + 576))(this))
        {
          (*(*this + 584))(this, v8 != 0);
        }

        return 0;
      }

      else
      {
        return 4294956445;
      }

    default:
      return 4294956417;
  }

  return result;
}

uint64_t AUMicSelectorV2::GetProperty(AUMicSelectorV2 *this, int a2, int a3, unsigned int a4, unsigned int *a5)
{
  if (!a3)
  {
    v5 = 4294956417;
    if (a2 <= 3699)
    {
      if (a2 == 21)
      {
        Parameter = (*(*this + 576))(this);
      }

      else
      {
        if (a2 != 1111)
        {
          return v5;
        }

        Parameter = *(this + 353);
      }
    }

    else
    {
      switch(a2)
      {
        case 3700:
          Parameter = *(this + 376);
          break;
        case 846031203:
          Parameter = *(this + 1416);
          break;
        case 1869968493:
          v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v8 & 1) == 0)
          {
            abort();
          }

          Parameter = ausdk::AUElement::GetParameter(v7, 0x1Cu);
          break;
        default:
          return v5;
      }
    }

    v5 = 0;
    *a5 = Parameter;
    return v5;
  }

  return 4294956417;
}

uint64_t AUMicSelectorV2::GetPropertyInfo(AUMicSelectorV2 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  v7 = 1;
  result = 4294956417;
  if (a2 > 3699)
  {
    if (a2 != 1869968493)
    {
      if (a2 == 846031203)
      {
LABEL_10:
        result = 0;
        *a6 = v7;
        *a5 = 4;
        return result;
      }

      if (a2 != 3700)
      {
        return result;
      }
    }

    v7 = 0;
    goto LABEL_10;
  }

  if (a2 == 21 || a2 == 1111)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t AUMicSelectorV2::Reset(OpaqueAudioComponentInstance **this)
{
  AUMicSelectorV2::ClearState(this);
  v2 = this + 94;
  v3 = 3;
  while (1)
  {
    result = AudioUnitReset(*(v2 - 27), 0, 0);
    if (result)
    {
      break;
    }

    result = AudioUnitReset(*v2, 0, 0);
    if (result)
    {
      break;
    }

    ++v2;
    if (!--v3)
    {
      v5 = this[121];

      return AudioUnitReset(v5, 0, 0);
    }
  }

  return result;
}

double AUMicSelectorV2::ClearState(AUMicSelectorV2 *this)
{
  v2 = (this + 1288);
  v3 = (this + 1204);
  v4 = 3;
  do
  {
    *v2 = -1032847360;
    v2[3] = -1032847360;
    v2[6] = -1032847360;
    v2[22] = -1032847360;
    v2[25] = 0;
    __A = -60.0;
    vDSP_vfill(&__A, *(v3 - 3), 1, *v3);
    *(v3 - 1) = 0;
    ++v2;
    v3 += 6;
    --v4;
  }

  while (v4);
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 175) = _D0;
  *(this + 331) = -1032847360;
  *(this + 166) = vdup_n_s32(0xC2700000);
  v11 = -60.0;
  vDSP_vfill(&v11, *(this + 158), 1, *(this + 319));
  *(this + 318) = 0;
  *(this + 334) = 0;
  result = 0.0;
  *(this + 84) = 0u;
  *(this + 85) = 0u;
  *(this + 352) = 2;
  return result;
}

uint64_t AUMicSelectorV2::Cleanup(AUMicSelectorV2 *this)
{
  if (*(this + 136))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))(&ausdk::BufferAllocator::instance(void)::global);
    *(this + 136) = 0;
  }

  *(this + 137) = 0;
  *(this + 270) = 0;
  if (*(this + 144))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))(&ausdk::BufferAllocator::instance(void)::global);
    *(this + 144) = 0;
  }

  *(this + 145) = 0;
  *(this + 286) = 0;
  v2 = (this + 752);
  v3 = 3;
  while (1)
  {
    result = AudioUnitUninitialize(*(v2 - 27));
    if (result)
    {
      break;
    }

    result = AudioUnitUninitialize(*v2);
    if (result)
    {
      break;
    }

    ++v2;
    if (!--v3)
    {
      v5 = *(this + 121);

      return AudioUnitUninitialize(v5);
    }
  }

  return result;
}

uint64_t AUMicSelectorV2::Initialize(AUMicSelectorV2 *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_8;
  }

  v3 = *(Element + 80);
  v4 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v4)
  {
    goto LABEL_8;
  }

  if (v3 == *(v4 + 80))
  {
    v6 = ausdk::AUScope::GetElement((this + 80), 0);
    if (v6)
    {
      v7 = *(v6 + 80);
      v8 = *(v6 + 96);
      *(this + 134) = *(v6 + 112);
      *(this + 66) = v8;
      *(this + 65) = v7;
      ausdk::AUBufferList::Allocate((this + 1080), this + 26, *(this + 84));
      v9 = ausdk::AUScope::GetElement((this + 80), 0);
      if (v9)
      {
        v10 = *(v9 + 112);
        v11 = *(v9 + 80);
        *(this + 70) = *(v9 + 96);
        *(this + 142) = v10;
        *(this + 69) = v11;
        *(this + 283) = 2;
        ausdk::AUBufferList::Allocate((this + 1144), (this + 1104), *(this + 84));
        v12 = AUDspLib::GetSampleRate(this) * 10.0 / *(this + 84);
        AUMicSelectorV2::NoiseFloorDetectorV2::Initialize((this + 1192), vcvtps_u32_f32(v12));
      }
    }

LABEL_8:
    ausdk::Throw(0xFFFFD583);
  }

  return 4294956428;
}

void AUMicSelectorV2::NoiseFloorDetectorV2::Initialize(AUMicSelectorV2::NoiseFloorDetectorV2 *this, unsigned int a2)
{
  if (a2 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  *(this + 3) = v2;
  *(this + 4) = v2;
  v3 = *this;
  if (v3)
  {
    MEMORY[0x1E12BD130](v3, 0x1000C8052888210);
  }

  operator new[]();
}

uint64_t SetDoNotAllocateInternalBuffers(OpaqueAudioComponentInstance *a1)
{
  ioDataSize = 4;
  outData = 0;
  if (!AudioUnitGetProperty(a1, 0xBu, 1u, 0, &outData, &ioDataSize) && outData)
  {
    for (i = 0; i < outData; ++i)
    {
      inData = 0;
      AudioUnitSetProperty(a1, 0x33u, 1u, 0, &inData, 4u);
    }
  }

  outData = 0;
  Property = AudioUnitGetProperty(a1, 0xBu, 2u, 0, &outData, &ioDataSize);
  if (!Property && outData)
  {
    for (j = 0; j < outData; ++j)
    {
      inData = 0;
      AudioUnitSetProperty(a1, 0x33u, 2u, 0, &inData, 4u);
    }
  }

  return Property;
}

void AUMicSelectorV2::~AUMicSelectorV2(AUMicSelectorV2 *this)
{
  AUMicSelectorV2::~AUMicSelectorV2(this);

  JUMPOUT(0x1E12BD160);
}

{
  v2 = 0;
  *this = &unk_1F59212B8;
  do
  {
    v3 = this + v2;
    v4 = *(this + v2 + 536);
    if (v4)
    {
      AudioComponentInstanceDispose(v4);
      *(v3 + 67) = 0;
    }

    v5 = *(v3 + 94);
    if (v5)
    {
      AudioComponentInstanceDispose(v5);
      *(v3 + 94) = 0;
    }

    v2 += 8;
  }

  while (v2 != 24);
  v6 = *(this + 121);
  if (v6)
  {
    AudioComponentInstanceDispose(v6);
    *(this + 121) = 0;
  }

  (*(*this + 64))(this);
  v7 = *(this + 158);
  if (v7)
  {
    MEMORY[0x1E12BD130](v7, 0x1000C8052888210);
  }

  *(this + 158) = 0;
  for (i = 1240; i != 1168; i -= 24)
  {
    v9 = *(this + i);
    if (v9)
    {
      MEMORY[0x1E12BD130](v9, 0x1000C8052888210);
    }

    *(this + i) = 0;
  }

  if (*(this + 144))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))(&ausdk::BufferAllocator::instance(void)::global);
    *(this + 144) = 0;
  }

  *(this + 145) = 0;
  *(this + 286) = 0;
  if (*(this + 136))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))(&ausdk::BufferAllocator::instance(void)::global);
    *(this + 136) = 0;
  }

  *(this + 137) = 0;
  *(this + 270) = 0;

  ausdk::AUBase::~AUBase(this);
}

void ScottyLite::STFT_state_t::~STFT_state_t(ScottyLite::STFT_state_t *this)
{
  v2 = *(this + 52);
  if (v2)
  {
    *(this + 53) = v2;
    operator delete(v2);
  }

  for (i = 0; i != -72; i -= 24)
  {
    v4 = *(this + i + 384);
    if (v4)
    {
      *(this + i + 392) = v4;
      operator delete(v4);
    }
  }

  for (j = 0; j != -72; j -= 24)
  {
    v6 = *(this + j + 312);
    if (v6)
    {
      *(this + j + 320) = v6;
      operator delete(v6);
    }
  }

  for (k = 0; k != -144; k -= 24)
  {
    v8 = *(this + k + 240);
    if (v8)
    {
      *(this + k + 248) = v8;
      operator delete(v8);
    }
  }

  for (m = 0; m != -72; m -= 24)
  {
    v10 = *(this + m + 96);
    if (v10)
    {
      *(this + m + 104) = v10;
      operator delete(v10);
    }
  }

  for (n = 0; n != -48; n -= 24)
  {
    v12 = *(this + n + 24);
    if (v12)
    {
      *(this + n + 32) = v12;
      operator delete(v12);
    }
  }
}

void ScottyLite::UnInitialize(ScottyLite *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v2 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 760);
    if (*(this + 783) < 0)
    {
      v3 = *v3;
    }

    v7 = 136315394;
    v8 = v3;
    v9 = 2080;
    v10 = "UnInitialize";
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Uninitializing ScottyLite", &v7, 0x16u);
  }

  *(this + 756) = 0;
  v4 = *(this + 58);
  *(this + 58) = 0;
  if (v4)
  {
    MultiRadixFFT_Dispose(v4);
  }

  std::vector<float>::resize(this + 55, 0);
  std::vector<float>::resize(this + 3, 0);
  std::vector<float>::resize(this + 77, 0);
  std::vector<float>::resize(this + 6, 0);
  std::vector<float>::resize(this + 80, 0);
  v5 = -72;
  do
  {
    std::vector<float>::resize((this + v5 + 144), 0);
    std::vector<float>::resize((this + v5 + 360), 0);
    std::vector<float>::resize((this + v5 + 432), 0);
    std::vector<float>::resize((this + v5 + 736), 0);
    v5 += 24;
  }

  while (v5);
  for (i = 144; i != 288; i += 24)
  {
    std::vector<float>::resize((this + i), 0);
  }

  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 568) = 0u;
  std::vector<float>::resize(this, 0);
}

void ScottyLite::Reset(ScottyLite *this)
{
  v15 = *MEMORY[0x1E69E9840];
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v2 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 760);
    if (*(this + 783) < 0)
    {
      v3 = *v3;
    }

    v11 = 136315394;
    v12 = v3;
    v13 = 2080;
    v14 = "Reset";
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Resetting ScottyLite", &v11, 0x16u);
  }

  vDSP_vclr(*(this + 3), 1, *(this + 187));
  vDSP_vclr(*(this + 6), 1, *(this + 187));
  v4 = (this + 288);
  v5 = 3;
  do
  {
    vDSP_vclr(*(v4 - 27), 1, *(this + 187));
    vDSP_vclr(*v4, 1, *(this + 186));
    vDSP_vclr(v4[9], 1, *(this + 186));
    v4 += 3;
    --v5;
  }

  while (v5);
  vDSP_vclr(this + 108, 1, 2uLL);
  vDSP_vclr(*(this + 55), 1, *(this + 187));
  for (i = 0; i != 144; i += 24)
  {
    vDSP_vclr(*(this + i + 144), 1, *(this + 186));
  }

  v7 = (this + 624);
  v8 = 48;
  do
  {
    vDSP_vclr(*(v7 - 1), 1, (*v7 - *(v7 - 1)) >> 2);
    v7 += 3;
    v8 -= 24;
  }

  while (v8);
  v9 = (this + 672);
  v10 = 72;
  do
  {
    vDSP_vclr(*(v9 - 1), 1, (*v9 - *(v9 - 1)) >> 2);
    v9 += 3;
    v10 -= 24;
  }

  while (v10);
  *(this + 184) = 0;
  *(this + 185) = *(this + 186);
}

uint64_t EndpointVADObservationFeatures::GetFeatureDimensions(EndpointVADObservationFeatures *this)
{
  result = EndpointVADObservationFeatures::GetFeatureDimensions(void)::featureDimensions;
  if (!EndpointVADObservationFeatures::GetFeatureDimensions(void)::featureDimensions)
  {
    operator new();
  }

  return result;
}

void *std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<float>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

uint64_t AUSM::Properties::setPropertyDictionary(AUSM::Properties *this, CFDictionaryRef *a2, uint64_t a3)
{
  v79 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v6 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v48 = (this + 8);
    if (*(this + 31) < 0)
    {
      v48 = *v48;
    }

    v49 = *(this + 8);
    v50 = *(this + 9);
    *__p = 136315650;
    *&__p[4] = v48;
    v73 = 1024;
    v74 = v49;
    v75 = 1024;
    v76 = v50;
    _os_log_debug_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEBUG, "[%s|setPropertyDictionary] (scope=%u, element=%u): ", __p, 0x18u);
  }

  Count = CFDictionaryGetCount(*a2);
  std::vector<__CFString const*>::vector[abi:ne200100](&keys, Count);
  CFDictionaryGetKeysAndValues(*a2, keys, 0);
  v8 = keys;
  v9 = v71;
  if (keys != v71)
  {
    v10 = 0;
    v68 = (this + 8);
    while (1)
    {
      IntValue = CFStringGetIntValue(*v8);
      if (!IntValue)
      {
        if (CFStringCompare(*v8, @"ElementNumber", 0) == kCFCompareEqualTo)
        {
          goto LABEL_49;
        }

        if (CFStringCompare(*v8, @"LFELowPassFrequency", 0))
        {
          IntValue = 0;
        }

        else
        {
          IntValue = 3108;
        }
      }

      Value = CFDictionaryGetValue(*a2, *v8);
      v13 = CFGetTypeID(Value);
      if (v13 == CFNumberGetTypeID())
      {
        if (!*a2)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        v14 = applesauce::CF::details::at_key<__CFString const* const&>(*a2, *v8);
        if (!v14)
        {
          v51 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v51, "Could not find item");
        }

        v15 = v14;
        CFRetain(v14);
        number = v15;
        v16 = CFGetTypeID(v15);
        if (v16 != CFNumberGetTypeID())
        {
          v52 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v52, "Could not construct");
        }

        Type = CFNumberGetType(number);
        if (Type > kCFNumberFloatType)
        {
          goto LABEL_58;
        }

        if (((1 << Type) & 0x218) != 0)
        {
          if (!number)
          {
            v56 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v56, "Could not construct");
          }

          *__p = applesauce::CF::convert_to<unsigned int,0>(number);
          v18 = (*(*this + 16))(this, IntValue, __p, 4, a3);
LABEL_39:
          v22 = v18;
        }

        else
        {
          if (((1 << Type) & 0x1060) != 0)
          {
            if (!number)
            {
              v57 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v57, "Could not construct");
            }

            *__p = applesauce::CF::convert_to<float,0>(number);
            v18 = (*(*this + 16))(this, IntValue, __p, 4, a3);
            goto LABEL_39;
          }

LABEL_58:
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v33 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            v41 = this + 8;
            if (*(this + 31) < 0)
            {
              v41 = *v68;
            }

            v42 = *(this + 8);
            v43 = *(this + 9);
            *__p = 136315906;
            *&__p[4] = v41;
            v73 = 1024;
            v74 = v42;
            v75 = 1024;
            v76 = v43;
            v77 = 1024;
            v78 = IntValue;
            _os_log_error_impl(&dword_1DDB85000, v33, OS_LOG_TYPE_ERROR, "[%s|setPropertyDictionary] (scope=%u, element=%u): unsupported number type for dictionary entry %u", __p, 0x1Eu);
          }

          v22 = 4294956445;
        }

        v26 = number;
        if (!number)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      if (v13 == CFStringGetTypeID())
      {
        if (!*a2)
        {
          v55 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v55, "Could not construct");
        }

        v19 = applesauce::CF::details::at_key<__CFString const* const&>(*a2, *v8);
        if (!v19)
        {
          v54 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v54, "Could not find item");
        }

        applesauce::CF::convert_to<std::string,0>(__p, v19);
        if (v76 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = *__p;
        }

        if (v76 >= 0)
        {
          v21 = HIBYTE(v76);
        }

        else
        {
          v21 = *&__p[8];
        }

        v22 = (*(*this + 16))(this, IntValue, v20, v21, a3);
        if (SHIBYTE(v76) < 0)
        {
          operator delete(*__p);
        }

        goto LABEL_42;
      }

      if (v13 == CFURLGetTypeID())
      {
        if (!*a2)
        {
          v60 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v60, "Could not construct");
        }

        v23 = applesauce::CF::details::at_key<__CFString const* const&>(*a2, *v8);
        if (!v23)
        {
          v59 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v59, "Could not find item");
        }

        v24 = v23;
        CFRetain(v23);
        *__p = v24;
        v25 = CFGetTypeID(v24);
        if (v25 != CFURLGetTypeID())
        {
          v58 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v58, "Could not construct");
        }

        v22 = (*(*this + 16))(this, IntValue, *__p, 8, a3);
        v26 = *__p;
        if (*__p)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v13 == CFDataGetTypeID())
        {
          if (!*a2)
          {
            v63 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v63, "Could not construct");
          }

          v28 = applesauce::CF::details::at_key<__CFString const* const&>(*a2, *v8);
          if (!v28)
          {
            v62 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v62, "Could not find item");
          }

          v29 = v28;
          CFRetain(v28);
          *__p = v29;
          v30 = CFGetTypeID(v29);
          if (v30 != CFDataGetTypeID())
          {
            v61 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v61, "Could not construct");
          }

          if (*__p)
          {
            BytePtr = CFDataGetBytePtr(*__p);
            if (*__p)
            {
              Length = CFDataGetLength(*__p);
              goto LABEL_73;
            }
          }

          else
          {
            BytePtr = 0;
          }

          Length = 0;
LABEL_73:
          v22 = (*(*this + 16))(this, IntValue, BytePtr, Length, a3);
          v26 = *__p;
          if (*__p)
          {
            goto LABEL_41;
          }

          goto LABEL_42;
        }

        if (v13 != CFBooleanGetTypeID())
        {
          if (v13 != CFDictionaryGetTypeID())
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v40 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
            {
              v44 = this + 8;
              if (*(this + 31) < 0)
              {
                v44 = *v68;
              }

              v45 = *(this + 8);
              v46 = *(this + 9);
              *__p = 136315906;
              *&__p[4] = v44;
              v73 = 1024;
              v74 = v45;
              v75 = 1024;
              v76 = v46;
              v77 = 1024;
              v78 = IntValue;
              _os_log_error_impl(&dword_1DDB85000, v40, OS_LOG_TYPE_ERROR, "[%s|setPropertyDictionary] (scope=%u, element=%u): unsupported data type for dictionary entry %u", __p, 0x1Eu);
            }

            v22 = 4294956445;
            goto LABEL_48;
          }

          if (!*a2)
          {
            v67 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v67, "Could not construct");
          }

          v34 = applesauce::CF::details::at_key<__CFString const* const&>(*a2, *v8);
          if (!v34)
          {
            v66 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v66, "Could not find item");
          }

          v35 = v34;
          CFRetain(v34);
          *__p = v35;
          v36 = CFGetTypeID(v35);
          if (v36 != CFDictionaryGetTypeID())
          {
            v65 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v65, "Could not construct");
          }

          number = *__p;
          v22 = (*(*this + 16))(this, IntValue, &number, 8, a3);
          v26 = *__p;
          if (!*__p)
          {
            goto LABEL_42;
          }

LABEL_41:
          CFRelease(v26);
          goto LABEL_42;
        }

        if (!*a2)
        {
          v64 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v64, "Could not construct");
        }

        *__p = applesauce::CF::details::find_at_key<BOOL,__CFString const* const&>(*a2, *v8);
        v22 = (*(*this + 16))(this, IntValue, __p, 4, a3);
      }

LABEL_42:
      if (v22)
      {
        if (v22 == -10879)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v27 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            v37 = this + 8;
            if (*(this + 31) < 0)
            {
              v37 = *v68;
            }

            v38 = *(this + 8);
            v39 = *(this + 9);
            *__p = 136315906;
            *&__p[4] = v37;
            v73 = 1024;
            v74 = v38;
            v75 = 1024;
            v76 = v39;
            v77 = 1024;
            v78 = IntValue;
            _os_log_error_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_ERROR, "[%s|setPropertyDictionary] (scope=%u, element=%u): invalid property ID %u", __p, 0x1Eu);
          }

          v22 = 4294956417;
        }

LABEL_48:
        v10 = v22;
      }

LABEL_49:
      if (++v8 == v9)
      {
        v8 = keys;
        if (keys)
        {
          goto LABEL_89;
        }

        return v10;
      }
    }
  }

  v10 = 0;
  if (keys)
  {
LABEL_89:
    v71 = v8;
    operator delete(v8);
  }

  return v10;
}