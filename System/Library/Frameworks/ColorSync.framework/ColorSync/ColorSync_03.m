CFDataRef NxMLUTCreateData(int a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a4;
  v11 = a3;
  if (a5)
  {
    v14 = 1;
    v15 = a5;
    do
    {
      v16 = v14 * v10;
      v18 = v14 * v10 >= v14 && v16 >= v10;
      CMMThrowExceptionWithLog(v18, "Overflow in Power", a3, a4, a5, a6, a7, a8);
      v14 = v16;
      --v15;
    }

    while (v15);
  }

  else
  {
    v16 = 1;
  }

  v19 = 0;
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {
        if (v11)
        {
          __assert_rtn("NxMLUTCreateData", "CMMNxMUtils.cpp", 819, "dataIsFloat == false");
        }

        switch(a5)
        {
          case 4:
            if (a6 != 3)
            {
              __assert_rtn("nxm_copy_CMYK_to_RGBX8_data", "CMMNxMUtils.cpp", 164, "inpChannels == 4 && outChannels == 3");
            }

            v94 = v10 * v10;
            Mutable = CFDataCreateMutable(0, 4 * v94 * v94);
            v19 = Mutable;
            if (Mutable)
            {
              CFDataSetLength(Mutable, 4 * v94 * v94);
              MutableBytePtr = CFDataGetMutableBytePtr(v19);
              if (v10)
              {
                if (MutableBytePtr)
                {
                  v97 = 0;
                  v98 = MutableBytePtr + 3;
                  v99 = a2 + 2;
                  do
                  {
                    v100 = 0;
                    v101 = v99;
                    v102 = v98;
                    do
                    {
                      v103 = 0;
                      v104 = v101;
                      v105 = v102;
                      do
                      {
                        v106 = v104;
                        v107 = v105;
                        v108 = v10;
                        do
                        {
                          v109 = (*(v106 - 2) + 128) >> 8;
                          if (v109 >= 0xFF)
                          {
                            LOBYTE(v109) = -1;
                          }

                          *(v107 - 3) = v109;
                          v110 = (*(v106 - 1) + 128) >> 8;
                          if (v110 >= 0xFF)
                          {
                            LOBYTE(v110) = -1;
                          }

                          *(v107 - 2) = v110;
                          v111 = (*v106 + 128) >> 8;
                          if (v111 >= 0xFF)
                          {
                            LOBYTE(v111) = -1;
                          }

                          *(v107 - 1) = v111;
                          *v107 = -1;
                          v107 += 4;
                          v106 += 3 * v10 * v94;
                          --v108;
                        }

                        while (v108);
                        ++v103;
                        v105 += 4 * v10;
                        v104 += 3 * v94;
                      }

                      while (v103 != v10);
                      ++v100;
                      v102 += 4 * v94;
                      v101 += 3 * v10;
                    }

                    while (v100 != v10);
                    ++v97;
                    v98 += 4 * v10 * v94;
                    v99 += 3;
                  }

                  while (v97 != v10);
                }
              }
            }

            break;
          case 3:
            if (a6 != 3)
            {
              __assert_rtn("nxm_copy_RGB_to_RGBX8_data", "CMMNxMUtils.cpp", 134, "inpChannels == 3 && outChannels == 3");
            }

            v79 = v10 * v10;
            v80 = CFDataCreateMutable(0, 4 * v10 * v10 * v10);
            v19 = v80;
            if (v80)
            {
              CFDataSetLength(v80, 4 * v10 * v10 * v10);
              v81 = CFDataGetMutableBytePtr(v19);
              if (v10)
              {
                if (v81)
                {
                  v82 = 0;
                  v83 = v81 + 3;
                  v84 = a2 + 2;
                  do
                  {
                    v85 = 0;
                    v86 = v84;
                    v87 = v83;
                    do
                    {
                      v88 = v86;
                      v89 = v87;
                      v90 = v10;
                      do
                      {
                        v91 = (*(v88 - 2) + 128) >> 8;
                        if (v91 >= 0xFF)
                        {
                          LOBYTE(v91) = -1;
                        }

                        *(v89 - 3) = v91;
                        v92 = (*(v88 - 1) + 128) >> 8;
                        if (v92 >= 0xFF)
                        {
                          LOBYTE(v92) = -1;
                        }

                        *(v89 - 2) = v92;
                        v93 = (*v88 + 128) >> 8;
                        if (v93 >= 0xFF)
                        {
                          LOBYTE(v93) = -1;
                        }

                        *(v89 - 1) = v93;
                        *v89 = -1;
                        v89 += 4;
                        v88 += 3 * v79;
                        --v90;
                      }

                      while (v90);
                      ++v85;
                      v87 += 4 * v10;
                      v86 += 3 * v10;
                    }

                    while (v85 != v10);
                    ++v82;
                    v83 += 4 * v79;
                    v84 += 3;
                  }

                  while (v82 != v10);
                }
              }
            }

            break;
          case 1:
            if (a6 != 3)
            {
              __assert_rtn("nxm_copy_GRAY_to_RGBX8_data", "CMMNxMUtils.cpp", 109, "inpChannels == 1 && outChannels == 3");
            }

            v39 = CFDataCreateMutable(0, 4 * v10);
            v19 = v39;
            if (v39)
            {
              CFDataSetLength(v39, 4 * v10);
              v40 = CFDataGetMutableBytePtr(v19);
              if (v10)
              {
                if (v40)
                {
                  v41 = v40 + 3;
                  v42 = a2 + 2;
                  do
                  {
                    v43 = (*(v42 - 2) + 128) >> 8;
                    if (v43 >= 0xFF)
                    {
                      LOBYTE(v43) = -1;
                    }

                    *(v41 - 3) = v43;
                    v44 = (*(v42 - 1) + 128) >> 8;
                    if (v44 >= 0xFF)
                    {
                      LOBYTE(v44) = -1;
                    }

                    *(v41 - 2) = v44;
                    v45 = *v42;
                    v42 += 3;
                    v46 = (v45 + 128) >> 8;
                    if (v46 >= 0xFF)
                    {
                      LOBYTE(v46) = -1;
                    }

                    *(v41 - 1) = v46;
                    *v41 = -1;
                    v41 += 4;
                    --v10;
                  }

                  while (v10);
                }
              }
            }

            break;
          default:
            __assert_rtn("nxm_create_NxM_to_RGBX8_from_fixed16", "CMMNxMUtils.cpp", 204, "0");
        }
      }

      else
      {
        if (v11)
        {
          __assert_rtn("NxMLUTCreateData", "CMMNxMUtils.cpp", 823, "dataIsFloat == false");
        }

        switch(a5)
        {
          case 4:
            if (a6 != 3)
            {
              __assert_rtn("nxm_copy_CMYK_to_RGBX16_data", "CMMNxMUtils.cpp", 352, "inpChannels == 4 && outChannels == 3");
            }

            v114 = CFDataCreateMutable(0, 8 * v10 * v10 * v10 * v10);
            v19 = v114;
            if (v114)
            {
              CFDataSetLength(v114, 8 * v10 * v10 * v10 * v10);
              v115 = CFDataGetMutableBytePtr(v19);
              repackage_CMYK16_to_RGBX16(v115, a2, v10);
            }

            break;
          case 3:
            if (a6 != 3)
            {
              __assert_rtn("nxm_copy_RGB_to_RGBX16_data", "CMMNxMUtils.cpp", 294, "inpChannels == 3 && outChannels == 3");
            }

            v112 = CFDataCreateMutable(0, 8 * v10 * v10 * v10);
            v19 = v112;
            if (v112)
            {
              CFDataSetLength(v112, 8 * v10 * v10 * v10);
              v113 = CFDataGetMutableBytePtr(v19);
              repackage_RGB16_to_RGBX16(v113, a2, v10);
            }

            break;
          case 1:
            if (a6 != 3)
            {
              __assert_rtn("nxm_copy_GRAY_to_RGBX16_data", "CMMNxMUtils.cpp", 240, "inpChannels == 1 && outChannels == 3");
            }

            v20 = CFDataCreateMutable(0, 8 * v10);
            v19 = v20;
            if (v20)
            {
              CFDataSetLength(v20, 8 * v10);
              v21 = CFDataGetMutableBytePtr(v19);
              if (v10)
              {
                if (v21)
                {
                  v22 = v21 + 4;
                  v23 = (a2 + 2);
                  do
                  {
                    *(v22 - 2) = *(v23 - 2);
                    *(v22 - 1) = *(v23 - 1);
                    v24 = *v23;
                    v23 += 3;
                    *v22 = v24;
                    v22[1] = -1;
                    v22 += 4;
                    --v10;
                  }

                  while (v10);
                }
              }
            }

            break;
          default:
            __assert_rtn("nxm_create_NxM_to_RGBX16_from_fixed16", "CMMNxMUtils.cpp", 376, "0");
        }
      }

      return v19;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        if (v11)
        {
          switch(a5)
          {
            case 4:
              if (a6 != 3)
              {
                __assert_rtn("nxm_copy_CMYK_float_to_RGBX_float32", "CMMNxMUtils.cpp", 727, "inpChannels == 4 && outChannels == 3");
              }

              v183 = v10 * v10;
              v184 = CFDataCreateMutable(0, 16 * v183 * v183);
              v19 = v184;
              if (v184)
              {
                CFDataSetLength(v184, 16 * v183 * v183);
                v185 = CFDataGetMutableBytePtr(v19);
                if (v10)
                {
                  if (v185)
                  {
                    v186 = 0;
                    v187 = v185 + 8;
                    v188 = a2 + 4;
                    do
                    {
                      v189 = 0;
                      v190 = v188;
                      v191 = v187;
                      do
                      {
                        v192 = 0;
                        v193 = v190;
                        v194 = v191;
                        do
                        {
                          v195 = v193;
                          v196 = v194;
                          v197 = v10;
                          do
                          {
                            *(v196 - 2) = *(v195 - 2);
                            *(v196 - 1) = *(v195 - 1);
                            *v196 = *v195;
                            *(v196 + 1) = 1065353216;
                            v196 += 16;
                            v195 += 6 * v10 * v183;
                            --v197;
                          }

                          while (v197);
                          ++v192;
                          v194 += 16 * v10;
                          v193 += 6 * v183;
                        }

                        while (v192 != v10);
                        ++v189;
                        v191 += 16 * v183;
                        v190 += 6 * v10;
                      }

                      while (v189 != v10);
                      ++v186;
                      v187 += 16 * v10 * v183;
                      v188 += 6;
                    }

                    while (v186 != v10);
                  }
                }
              }

              break;
            case 3:
              if (a6 != 3)
              {
                __assert_rtn("nxm_copy_RGB_float_to_RGBX_float32", "CMMNxMUtils.cpp", 697, "inpChannels == 3 && outChannels == 3");
              }

              v153 = v10 * v10;
              v154 = CFDataCreateMutable(0, 16 * v10 * v10 * v10);
              v19 = v154;
              if (v154)
              {
                CFDataSetLength(v154, 16 * v10 * v10 * v10);
                v155 = CFDataGetMutableBytePtr(v19);
                if (v10)
                {
                  if (v155)
                  {
                    v156 = 0;
                    v157 = v155 + 8;
                    v158 = a2 + 4;
                    do
                    {
                      v159 = 0;
                      v160 = v158;
                      v161 = v157;
                      do
                      {
                        v162 = v160;
                        v163 = v161;
                        v164 = v10;
                        do
                        {
                          *(v163 - 2) = *(v162 - 2);
                          *(v163 - 1) = *(v162 - 1);
                          *v163 = *v162;
                          *(v163 + 1) = 1065353216;
                          v163 += 16;
                          v162 += 6 * v153;
                          --v164;
                        }

                        while (v164);
                        ++v159;
                        v161 += 16 * v10;
                        v160 += 6 * v10;
                      }

                      while (v159 != v10);
                      ++v156;
                      v157 += 16 * v153;
                      v158 += 6;
                    }

                    while (v156 != v10);
                  }
                }
              }

              break;
            case 1:
              if (a6 != 3)
              {
                __assert_rtn("nxm_copy_GRAY_float_to_RGBX_float32", "CMMNxMUtils.cpp", 672, "inpChannels == 1 && outChannels == 3");
              }

              v30 = CFDataCreateMutable(0, 16 * v10);
              v19 = v30;
              if (v30)
              {
                CFDataSetLength(v30, 16 * v10);
                v31 = CFDataGetMutableBytePtr(v19);
                if (v10)
                {
                  if (v31)
                  {
                    v32 = v31 + 8;
                    v33 = (a2 + 4);
                    do
                    {
                      *(v32 - 2) = *(v33 - 2);
                      *(v32 - 1) = *(v33 - 1);
                      v34 = *v33;
                      v33 += 3;
                      *v32 = v34;
                      v32[1] = 1065353216;
                      v32 += 4;
                      --v10;
                    }

                    while (v10);
                  }
                }
              }

              break;
            default:
              __assert_rtn("nxm_copy_NxM_to_RGBX_float32_from_float", "CMMNxMUtils.cpp", 767, "0");
          }
        }

        else
        {
          switch(a5)
          {
            case 4:
              if (a6 != 3)
              {
                __assert_rtn("nxm_copy_CMYK_fixed16_to_RGBX_float32", "CMMNxMUtils.cpp", 624, "inpChannels == 4 && outChannels == 3");
              }

              v198 = v10 * v10;
              v199 = CFDataCreateMutable(0, 16 * v198 * v198);
              v19 = v199;
              if (v199)
              {
                CFDataSetLength(v199, 16 * v198 * v198);
                v200 = CFDataGetMutableBytePtr(v19);
                if (v10)
                {
                  if (v200)
                  {
                    v201 = 0;
                    v202 = a2 + 2;
                    v203 = v200 + 12;
                    v204 = vdup_n_s32(0x477FFF00u);
                    __asm { FMOV            V1.2S, #1.0 }

                    do
                    {
                      v206 = 0;
                      v207 = v203;
                      v208 = v202;
                      do
                      {
                        v209 = 0;
                        v210 = v207;
                        v211 = v208;
                        do
                        {
                          v212 = v210;
                          v213 = v211;
                          v214 = v10;
                          do
                          {
                            v215.i32[0] = *(v213 - 2);
                            v215.i32[1] = *(v213 - 1);
                            v216 = vdiv_f32(vcvt_f32_u32(v215), v204);
                            v217 = vbsl_s8(vcgt_f32(v216, _D1), _D1, v216);
                            *(v212 - 3) = v217;
                            v217.i16[0] = *v213;
                            v218 = v217.u32[0] / 65535.0;
                            if (v218 > 1.0)
                            {
                              v218 = 1.0;
                            }

                            *(v212 - 1) = v218;
                            *v212 = 1.0;
                            v212 += 4;
                            v213 += 3 * v10 * v198;
                            --v214;
                          }

                          while (v214);
                          ++v209;
                          v211 += 3 * v198;
                          v210 += 4 * v10;
                        }

                        while (v209 != v10);
                        ++v206;
                        v208 += 3 * v10;
                        v207 += 16 * v198;
                      }

                      while (v206 != v10);
                      ++v201;
                      v202 += 3;
                      v203 += 16 * v10 * v198;
                    }

                    while (v201 != v10);
                  }
                }
              }

              break;
            case 3:
              if (a6 != 3)
              {
                __assert_rtn("nxm_copy_RGB_fixed16_to_RGBX_float32", "CMMNxMUtils.cpp", 594, "inpChannels == 3 && outChannels == 3");
              }

              v165 = v10 * v10;
              v166 = CFDataCreateMutable(0, 16 * v10 * v10 * v10);
              v19 = v166;
              if (v166)
              {
                CFDataSetLength(v166, 16 * v10 * v10 * v10);
                v167 = CFDataGetMutableBytePtr(v19);
                if (v10)
                {
                  if (v167)
                  {
                    v168 = 0;
                    v169 = a2 + 2;
                    v170 = v167 + 8;
                    v171 = vdup_n_s32(0x477FFF00u);
                    __asm { FMOV            V1.2S, #1.0 }

                    do
                    {
                      v173 = 0;
                      v174 = v170;
                      v175 = v169;
                      do
                      {
                        v176 = v174;
                        v177 = v175;
                        v178 = v10;
                        do
                        {
                          v179.i32[0] = *(v177 - 2);
                          v179.i32[1] = *(v177 - 1);
                          v180 = vdiv_f32(vcvt_f32_u32(v179), v171);
                          v181 = vbsl_s8(vcgt_f32(v180, _D1), _D1, v180);
                          *(v176 - 1) = v181;
                          v181.i16[0] = *v177;
                          v182 = v181.u32[0] / 65535.0;
                          if (v182 > 1.0)
                          {
                            v182 = 1.0;
                          }

                          *v176 = v182;
                          *(v176 + 1) = 1065353216;
                          v177 += 3 * v165;
                          v176 += 16;
                          --v178;
                        }

                        while (v178);
                        ++v173;
                        v175 += 3 * v10;
                        v174 += 16 * v10;
                      }

                      while (v173 != v10);
                      ++v168;
                      v169 += 3;
                      v170 += 16 * v165;
                    }

                    while (v168 != v10);
                  }
                }
              }

              break;
            case 1:
              if (a6 != 3)
              {
                __assert_rtn("nxm_copy_GRAY_fixed16_to_RGBX_float32", "CMMNxMUtils.cpp", 569, "inpChannels == 1 && outChannels == 3");
              }

              v65 = CFDataCreateMutable(0, 16 * v10);
              v19 = v65;
              if (v65)
              {
                CFDataSetLength(v65, 16 * v10);
                v66 = CFDataGetMutableBytePtr(v19);
                if (v10)
                {
                  if (v66)
                  {
                    v67 = (a2 + 2);
                    v68 = vdup_n_s32(0x477FFF00u);
                    v69 = (v66 + 12);
                    __asm { FMOV            V1.2S, #1.0 }

                    do
                    {
                      v74.i32[0] = *(v67 - 2);
                      v74.i32[1] = *(v67 - 1);
                      v75 = vdiv_f32(vcvt_f32_u32(v74), v68);
                      v76 = vbsl_s8(vcgt_f32(v75, _D1), _D1, v75);
                      *(v69 - 3) = v76;
                      v76.i16[0] = *v67;
                      v77 = v76.u32[0] / 65535.0;
                      if (v77 > 1.0)
                      {
                        v77 = 1.0;
                      }

                      *(v69 - 1) = v77;
                      *v69 = 1.0;
                      v69 += 4;
                      v67 += 3;
                      --v10;
                    }

                    while (v10);
                  }
                }
              }

              break;
            default:
              __assert_rtn("nxm_copy_NxM_to_RGBX_float32_from_fixed16", "CMMNxMUtils.cpp", 664, "0");
          }
        }
      }

      return v19;
    }

    if (v11)
    {
      if (a5 == 4)
      {
        if (a6 != 3)
        {
          __assert_rtn("nxm_copy_CMYK_float_to_RGBX_float16", "CMMNxMUtils.cpp", 523, "inpChannels == 4 && outChannels == 3");
        }

        v134 = v10 * v10;
        v135 = v134 * v134;
        v47 = 8 * v134 * v134;
        v136 = CFDataCreateMutable(0, v47);
        v19 = v136;
        if (!v136)
        {
          return v19;
        }

        v49 = 4 * v135;
        CFDataSetLength(v136, 8 * v134 * v134);
        v50 = 16 * v135;
        if (((v135 >> 58) & 3) != 0)
        {
          v137 = -1;
        }

        else
        {
          v137 = v135 << 6;
        }

        v138 = operator new[](v137, MEMORY[0x1E69E5398]);
        v53 = v138;
        if (v10 && v138)
        {
          v139 = 0;
          v140 = a2 + 4;
          v141 = v138 + 12;
          do
          {
            v142 = 0;
            v143 = v141;
            v144 = v140;
            do
            {
              v145 = 0;
              v146 = v143;
              v147 = v144;
              do
              {
                v148 = v146;
                v149 = v147;
                v150 = v10;
                do
                {
                  *(v148 - 3) = *(v149 - 1);
                  *(v148 - 1) = *v149;
                  *v148 = 1065353216;
                  v148 += 4;
                  v149 += 6 * v10 * v134;
                  --v150;
                }

                while (v150);
                ++v145;
                v147 += 6 * v134;
                v146 += 4 * v10;
              }

              while (v145 != v10);
              ++v142;
              v144 += 6 * v10;
              v143 += 4 * v134;
            }

            while (v142 != v10);
            ++v139;
            v140 += 6;
            v141 += 16 * v10 * v134;
          }

          while (v139 != v10);
        }

        goto LABEL_192;
      }

      if (a5 != 3)
      {
        if (a5 != 1)
        {
          __assert_rtn("nxm_create_NxM_to_RGBX_float16_from_float", "CMMNxMUtils.cpp", 561, "0");
        }

        if (a6 != 3)
        {
          __assert_rtn("nxm_copy_GRAY_float_to_RGBX_float16", "CMMNxMUtils.cpp", 468, "inpChannels == 1 && outChannels == 3");
        }

        v47 = 8 * v10;
        v48 = CFDataCreateMutable(0, 8 * v10);
        v19 = v48;
        if (!v48)
        {
          return v19;
        }

        v49 = 4 * v10;
        CFDataSetLength(v48, 8 * v10);
        v50 = 16 * v10;
        if (((v10 >> 58) & 3) != 0)
        {
          v51 = -1;
        }

        else
        {
          v51 = v10 << 6;
        }

        v52 = operator new[](v51, MEMORY[0x1E69E5398]);
        v53 = v52;
        if (v10 && v52)
        {
          v54 = a2 + 4;
          v55 = v52 + 12;
          do
          {
            *(v55 - 3) = *(v54 - 1);
            v56 = *v54;
            v54 += 3;
            *(v55 - 1) = v56;
            *v55 = 1065353216;
            v55 += 4;
            --v10;
          }

          while (v10);
        }

        goto LABEL_192;
      }

      if (a6 != 3)
      {
        return 0;
      }

      v116 = v10 * v10;
      v117 = v10 * v10 * v10;
      v47 = 8 * v117;
      v118 = CFDataCreateMutable(0, 8 * v117);
      v19 = v118;
      if (v118)
      {
        v49 = 4 * v117;
        CFDataSetLength(v118, 8 * v117);
        v50 = 16 * v117;
        if (((v117 >> 58) & 3) != 0)
        {
          v119 = -1;
        }

        else
        {
          v119 = v117 << 6;
        }

        v120 = operator new[](v119, MEMORY[0x1E69E5398]);
        v53 = v120;
        if (v10 && v120)
        {
          v121 = 0;
          v122 = a2 + 4;
          v123 = v120 + 8;
          do
          {
            v124 = 0;
            v125 = v123;
            v126 = v122;
            do
            {
              v127 = v125;
              v128 = v126;
              v129 = v10;
              do
              {
                *(v127 - 1) = *(v128 - 1);
                *v127 = *v128;
                v127[1] = 1065353216;
                v128 += 6 * v116;
                v127 += 4;
                --v129;
              }

              while (v129);
              ++v124;
              v126 += 6 * v10;
              v125 += 4 * v10;
            }

            while (v124 != v10);
            ++v121;
            v122 += 6;
            v123 += 16 * v116;
          }

          while (v121 != v10);
        }

LABEL_192:
        v223 = v53;
        v224 = 1;
        v225 = v49;
        v226 = v50;
        v219 = CFDataGetMutableBytePtr(v19);
        v220 = 1;
        v221 = v49;
        v222 = v47;
        ColorSync_vImageConvert_Fto16F(&v223, &v219);
        if (v53)
        {
          MEMORY[0x19EAE45F0](v53, 0x1000C8052888210);
        }
      }

      return v19;
    }

    switch(a5)
    {
      case 4:
        if (a6 != 3)
        {
          __assert_rtn("nxm_copy_CMYK_fixed16_to_RGBX_float16", "CMMNxMUtils.cpp", 430, "inpChannels == 4 && outChannels == 3");
        }

        v151 = v10 * v10 * v10 * v10;
        v58 = 8 * v151;
        v152 = CFDataCreateMutable(0, 8 * v151);
        v19 = v152;
        if (!v152)
        {
          return v19;
        }

        v132 = 4 * v151;
        CFDataSetLength(v152, v58);
        v133 = CFDataGetMutableBytePtr(v19);
        repackage_CMYK16_to_RGBX16(v133, a2, v10);
        break;
      case 3:
        if (a6 != 3)
        {
          __assert_rtn("nxm_copy_RGB_fixed16_to_RGBX_float16", "CMMNxMUtils.cpp", 407, "inpChannels == 3 && outChannels == 3");
        }

        v130 = v10 * v10 * v10;
        v58 = 8 * v130;
        v131 = CFDataCreateMutable(0, 8 * v130);
        v19 = v131;
        if (!v131)
        {
          return v19;
        }

        v132 = 4 * v130;
        CFDataSetLength(v131, 8 * v130);
        v133 = CFDataGetMutableBytePtr(v19);
        repackage_RGB16_to_RGBX16(v133, a2, v10);
        break;
      case 1:
        if (a6 != 3)
        {
          __assert_rtn("nxm_copy_GRAY_fixed16_to_RGBX_float16", "CMMNxMUtils.cpp", 384, "inpChannels == 1 && outChannels == 3");
        }

        v58 = 8 * v10;
        v59 = CFDataCreateMutable(0, 8 * v10);
        v19 = v59;
        if (!v59)
        {
          return v19;
        }

        v60 = 4 * v10;
        CFDataSetLength(v59, 8 * v10);
        v61 = CFDataGetMutableBytePtr(v19);
        if (v10 && v61)
        {
          v62 = v61 + 4;
          v63 = (a2 + 2);
          do
          {
            *(v62 - 2) = *(v63 - 2);
            *(v62 - 1) = *(v63 - 1);
            v64 = *v63;
            v63 += 3;
            *v62 = v64;
            v62[1] = -1;
            v62 += 4;
            --v10;
          }

          while (v10);
        }

        v223 = v61;
        v224 = 1;
        v225 = v60;
        goto LABEL_198;
      default:
        __assert_rtn("nxm_create_NxM_to_RGBX_float16_from_fixed16", "CMMNxMUtils.cpp", 460, "0");
    }

    v223 = v133;
    v224 = 1;
    v225 = v132;
LABEL_198:
    v226 = v58;
    v78 = &v223;
    goto LABEL_199;
  }

  v25 = v16 * a6;
  if (a1)
  {
    if (a1 == 1)
    {
      v57 = CFDataCreateMutable(0, 2 * v25);
      v19 = v57;
      if (v11)
      {
        if (v57)
        {
          CFDataSetLength(v57, 2 * v25);
          v223 = a2;
          v224 = 1;
          v225 = v25;
          v226 = 4 * v25;
          v219 = CFDataGetMutableBytePtr(v19);
          v220 = 1;
          v221 = v25;
          v222 = 2 * v25;
          ColorSync_vImageConvert_Fto16F(&v223, &v219);
        }

        return v19;
      }

      if (!v57)
      {
        return v19;
      }

      CFDataSetLength(v57, 2 * v25);
      v223 = a2;
      v224 = 1;
      v225 = v25;
      v226 = 2 * v25;
      v219 = CFDataGetMutableBytePtr(v19);
      v220 = 1;
      v221 = v25;
      v222 = 2 * v25;
      v78 = &v219;
LABEL_199:
      ColorSync_vImageConvert_16Uto16F(&v223, v78);
      return v19;
    }

    if (a1 != 2)
    {
      return v19;
    }

    v26 = 4 * v25;
    if (!v11)
    {
      v27 = CFDataCreateMutable(0, 4 * v25);
      v19 = v27;
      if (v27)
      {
        CFDataSetLength(v27, 4 * v25);
        v223 = a2;
        v224 = 1;
        v225 = v25;
        v226 = 2 * v25;
        v219 = CFDataGetMutableBytePtr(v19);
        v220 = 1;
        v221 = v25;
        v222 = 4 * v25;
        ColorSync_vImageConvert_16UToF(&v223, &v219, v28, v29);
      }

      return v19;
    }
  }

  else
  {
    v26 = 2 * v25;
    if (v11)
    {
      v35 = CFDataCreateMutable(0, 2 * v25);
      v19 = v35;
      if (v35)
      {
        CFDataSetLength(v35, 2 * v25);
        v223 = a2;
        v224 = 1;
        v225 = v25;
        v226 = 4 * v25;
        v219 = CFDataGetMutableBytePtr(v19);
        v220 = 1;
        v221 = v25;
        v222 = 2 * v25;
        v36 = ColorSync_vImageConvert_Fto16U_ptr__;
        if (!ColorSync_vImageConvert_Fto16U_ptr__)
        {
          if (ColorSyncLoadvImageDYLD_once != -1)
          {
            dispatch_once(&ColorSyncLoadvImageDYLD_once, &__block_literal_global_1547);
          }

          v37 = ColorSyncLoadvImageDYLD_handle;
          if (ColorSyncLoadvImageDYLD_handle)
          {
            v37 = dlsym(ColorSyncLoadvImageDYLD_handle, "vImageConvert_FTo16U");
          }

          if (v37)
          {
            v36 = v37;
          }

          else
          {
            v36 = vImage_smart_null;
          }

          ColorSync_vImageConvert_Fto16U_ptr__ = v36;
        }

        (v36)(&v223, &v219, 0, 0.0, 0.000015259);
      }

      return v19;
    }
  }

  return CFDataCreate(0, a2, v26);
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxLabToXYZ,CMMConvMatrix>::FlattenConversion(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v4 = MEMORY[0x1E695E4D0];
    if (v3)
    {
      v5 = v3;
      v6 = *MEMORY[0x1E695E4D0];
      v7 = *MEMORY[0x1E695E4C0];
      if (*(a1 + 49))
      {
        v8 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = *MEMORY[0x1E695E4C0];
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelActiveMatrix", v8);
      if (*(a1 + 48))
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelInputMatrix", v9);
      v10 = 0;
      v11 = a1 + 100;
      v12 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v13 = CFArrayCreateMutable(0, 0, v12);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v15 = 0;
        while (1)
        {
          valuePtr = *(a1 + 160) * *(v11 + v15);
          v16 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          CFArrayAppendValue(v14, v16);
          CFRelease(v17);
          v15 += 4;
          if (v15 == 12)
          {
            goto LABEL_16;
          }
        }

        CFRelease(v14);
        v14 = 0;
LABEL_16:
        v22 = *(a1 + 160) * *(a1 + 148 + 4 * v10);
        v18 = CFNumberCreate(0, kCFNumberFloat32Type, &v22);
        if (!v18)
        {
          CFRelease(v14);
          break;
        }

        v19 = v18;
        CFArrayAppendValue(v14, v18);
        CFRelease(v19);
        if (!v14)
        {
          break;
        }

        CFArrayAppendValue(v5, v14);
        CFRelease(v14);
        ++v10;
        v11 += 12;
        if (v10 == 3)
        {
          CFDictionaryAddValue(Mutable, kColorSyncConversionMatrix, v5);
          goto LABEL_23;
        }
      }

      CFRelease(v5);
      v5 = Mutable;
      Mutable = 0;
LABEL_23:
      v4 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = Mutable;
      Mutable = 0;
    }

    CFRelease(v5);
    CMMConvNode::AddFixedPointClippingRange(Mutable, v20, *(a1 + 40), *(a1 + 44));
    if (*(a1 + 34) == 1)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v4);
    }

    CMMConvNode::AddClampingInfo(a1, Mutable);
  }

  return Mutable;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvMatrix>::FlattenConversion(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v4 = MEMORY[0x1E695E4D0];
    if (v3)
    {
      v5 = v3;
      v6 = *MEMORY[0x1E695E4D0];
      v7 = *MEMORY[0x1E695E4C0];
      if (*(a1 + 49))
      {
        v8 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = *MEMORY[0x1E695E4C0];
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelActiveMatrix", v8);
      if (*(a1 + 48))
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelInputMatrix", v9);
      v10 = 0;
      v11 = a1 + 100;
      v12 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v13 = CFArrayCreateMutable(0, 0, v12);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v15 = 0;
        while (1)
        {
          valuePtr = *(a1 + 160) * *(v11 + v15);
          v16 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          CFArrayAppendValue(v14, v16);
          CFRelease(v17);
          v15 += 4;
          if (v15 == 12)
          {
            goto LABEL_16;
          }
        }

        CFRelease(v14);
        v14 = 0;
LABEL_16:
        v22 = *(a1 + 160) * *(a1 + 148 + 4 * v10);
        v18 = CFNumberCreate(0, kCFNumberFloat32Type, &v22);
        if (!v18)
        {
          CFRelease(v14);
          break;
        }

        v19 = v18;
        CFArrayAppendValue(v14, v18);
        CFRelease(v19);
        if (!v14)
        {
          break;
        }

        CFArrayAppendValue(v5, v14);
        CFRelease(v14);
        ++v10;
        v11 += 12;
        if (v10 == 3)
        {
          CFDictionaryAddValue(Mutable, kColorSyncConversionMatrix, v5);
          goto LABEL_23;
        }
      }

      CFRelease(v5);
      v5 = Mutable;
      Mutable = 0;
LABEL_23:
      v4 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = Mutable;
      Mutable = 0;
    }

    CFRelease(v5);
    CMMConvNode::AddFixedPointClippingRange(Mutable, v20, *(a1 + 40), *(a1 + 44));
    if (*(a1 + 34) == 1)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v4);
    }

    CMMConvNode::AddClampingInfo(a1, Mutable);
  }

  return Mutable;
}

uint64_t ColorSyncNxMCreate(const void *a1, int a2, __int128 *a3, int a4, const __CFArray *a5, const __CFArray *a6)
{
  v12 = CFGetTypeID(a1);
  if (v12 != CFDataGetTypeID())
  {
    __assert_rtn("ColorSyncNxMCreate", "ColorSyncTransformFunctions.c", 852, "tableData != NULL && CFGetTypeID(tableData) == CFDataGetTypeID()");
  }

  if (ColorSyncNxMGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
  }

  Instance = _CFRuntimeCreateInstance();
  v14 = Instance;
  if (Instance)
  {
    *(Instance + 80) = 0;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 56) = CFRetain(a1);
    *(v14 + 16) = a2;
    v16 = *a3;
    v15 = a3[1];
    v17 = *(a3 + 8);
    if ((a4 & 4) != 0)
    {
      v18 = 0x3F80000000000000;
    }

    else
    {
      v18 = 0x7F7FFFFFFF7FFFFFLL;
    }

    *(v14 + 68) = v18;
    *(v14 + 52) = v17;
    *(v14 + 20) = v16;
    *(v14 + 36) = v15;
    if (a5)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a5, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, (v14 + 68));
      v20 = CFArrayGetValueAtIndex(a5, 1);
      CFNumberGetValue(v20, kCFNumberFloat32Type, (v14 + 72));
    }

    if ((a4 & 2) != 0)
    {
      v21 = 0x3F80000000000000;
    }

    else
    {
      v21 = 0x7F7FFFFFFF7FFFFFLL;
    }

    *(v14 + 76) = v21;
    if (a6)
    {
      v22 = CFArrayGetValueAtIndex(a6, 0);
      CFNumberGetValue(v22, kCFNumberFloat32Type, (v14 + 76));
      v23 = CFArrayGetValueAtIndex(a6, 1);
      CFNumberGetValue(v23, kCFNumberFloat32Type, (v14 + 80));
    }

    *(v14 + 64) = a4;
  }

  return v14;
}

BOOL matrix_equal_matrix(char *cf, uint64_t a2)
{
  if (cf == a2)
  {
    return 1;
  }

  result = 0;
  if (cf && a2)
  {
    v5 = CFGetTypeID(cf);
    if (ColorSyncMatrixGetTypeID_predicate != -1)
    {
      dispatch_once(&ColorSyncMatrixGetTypeID_predicate, &__block_literal_global_7);
    }

    if (v5 != ColorSyncMatrixGetTypeID_kColorSyncMatrixRuntimeID)
    {
      return 0;
    }

    v6 = CFGetTypeID(a2);
    if (ColorSyncMatrixGetTypeID_predicate != -1)
    {
      dispatch_once(&ColorSyncMatrixGetTypeID_predicate, &__block_literal_global_7);
    }

    if (v6 != ColorSyncMatrixGetTypeID_kColorSyncMatrixRuntimeID)
    {
      return 0;
    }

    if (*(cf + 4) == *(a2 + 16))
    {
      v7 = 0;
      if ((vminv_u8(vmovn_s16(vuzp1q_s16(vceqq_f32(*(cf + 20), *(a2 + 20)), vceqq_f32(*(cf + 36), *(a2 + 36))))) & 1) == 0 || *(cf + 13) != *(a2 + 52) || *(cf + 14) != *(a2 + 56) || *(cf + 15) != *(a2 + 60))
      {
        return v7;
      }

      Properties = ColorSyncMatrixGetProperties(cf);
      if (Properties == ColorSyncMatrixGetProperties(a2))
      {
        InputRange = ColorSyncMatrixGetInputRange(cf);
        v10 = ColorSyncMatrixGetInputRange(a2);
        v7 = 0;
        if (InputRange == v10)
        {
          OutputRange = ColorSyncMatrixGetOutputRange(cf);
          v13 = v12;
          v14 = ColorSyncMatrixGetOutputRange(a2);
          return v13 == v15 && OutputRange == v14;
        }

        return v7;
      }
    }

    return 0;
  }

  return result;
}

__n128 ColorSyncNxMGetFunction@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = CFGetTypeID(a1);
  if (ColorSyncNxMGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncNxMGetTypeID_predicate, &__block_literal_global_11_1459);
  }

  if (v4 != ColorSyncNxMGetTypeID_kColorSyncNxMLUTRuntimeID)
  {
    __assert_rtn("ColorSyncNxMGetFunction", "ColorSyncTransformFunctions.c", 887, "CFGetTypeID(ref) == ColorSyncNxMGetTypeID()");
  }

  result = *(a1 + 20);
  v6 = *(a1 + 36);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = *(a1 + 52);
  return result;
}

uint64_t ColorSyncProfileProducesMatrixTransform(void *a1)
{
  v2 = ColorSyncProfileCreateWithName(kColorSyncSRGBProfile);
  colorsync_transform = create_colorsync_transform(v2, a1, 0);
  v4 = ColorSyncTransformIterate(colorsync_transform, 0, &__block_literal_global, &__block_literal_global_4, &__block_literal_global_8, &__block_literal_global_11);
  if (colorsync_transform)
  {
    CFRelease(colorsync_transform);
  }

  if (v4)
  {
    v5 = create_colorsync_transform(a1, v2, 0);
    v6 = ColorSyncTransformIterate(v5, 0, &__block_literal_global_14, &__block_literal_global_17, &__block_literal_global_20, &__block_literal_global_23);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v6;
}

BOOL InvertMatrix(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = -(*a1 * v6);
  v11 = v4 * -(v7 * v5) + *a1 * v5 * v9 + v4 * v3 * v8 + -(v3 * v2) * v9 + v2 * v6 * v7 + v10 * v8;
  v12 = fabs(v11);
  if (v12 >= 1.17549435e-38)
  {
    *a1 = (v5 * v9 - v8 * v6) / v11;
    a1[1] = (v8 * v4 - v2 * v9) / v11;
    a1[2] = (v2 * v6 - v5 * v4) / v11;
    a1[3] = (v9 * -v3 + v7 * v6) / v11;
    a1[4] = (v4 * -v7 + v1 * v9) / v11;
    a1[5] = (v10 + v3 * v4) / v11;
    a1[6] = (v3 * v8 - v7 * v5) / v11;
    a1[7] = (v8 * -v1 + v7 * v2) / v11;
    a1[8] = (v1 * v5 - v3 * v2) / v11;
  }

  return v12 >= 1.17549435e-38;
}

void ColorSyncLog(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1 >= 1)
  {
    if (ColorSyncLog_predicate != -1)
    {
      dispatch_once(&ColorSyncLog_predicate, &__block_literal_global_1);
    }

    v11 = *MEMORY[0x1E695E480];
    v12 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s", a2);
    v13 = CFStringCreateWithFormatAndArguments(v11, 0, v12, &a9);
    if (v12)
    {
      CFRelease(v12);
    }

    if (v13)
    {
      CStringPtr = CFStringGetCStringPtr(v13, 0x8000100u);
      if (CStringPtr)
      {
        v15 = CStringPtr;
        v16 = 0;
      }

      else
      {
        Length = CFStringGetLength(v13);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v16 = malloc_type_calloc(MaximumSizeForEncoding, 1uLL, 0xFA682526uLL);
        if (v16 && CFStringGetCString(v13, v16, MaximumSizeForEncoding, 0x8000100u))
        {
          v15 = v16;
        }

        else
        {
          v15 = &unk_19AA95E0B;
        }
      }

      if (a1 == 3)
      {
        puts(v15);
      }

      else if (a1 == 2)
      {
        v19 = ColorSyncLog_log;
        if (os_log_type_enabled(ColorSyncLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v23 = v15;
          _os_log_error_impl(&dword_19A910000, v19, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
        }
      }

      else
      {
        v20 = ColorSyncLog_log;
        if (os_log_type_enabled(ColorSyncLog_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v23 = v15;
          _os_log_impl(&dword_19A910000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }
      }

      free(v16);
      CFRelease(v13);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

os_log_t __ColorSyncLog_block_invoke()
{
  MainBundleIfLooksLikeBundle = _CFBundleGetMainBundleIfLooksLikeBundle();
  if (MainBundleIfLooksLikeBundle)
  {
    Identifier = CFBundleGetIdentifier(MainBundleIfLooksLikeBundle);
    if (Identifier)
    {
      v2 = Identifier;
      Length = CFStringGetLength(Identifier);
      if (!CFStringGetCString(v2, fetch_process_name_name, 1024, 0x8000100u))
      {
        v5.location = 0;
        v5.length = Length;
        CFStringGetBytes(v2, v5, 0x600u, 0x3Fu, 0, fetch_process_name_name, 1024, 0);
      }
    }
  }

  if (!LOBYTE(fetch_process_name_name[0]))
  {
    strcpy(fetch_process_name_name, "Unknown process name");
  }

  result = os_log_create("com.apple.colorsync", fetch_process_name_name);
  ColorSyncLog_log = result;
  return result;
}

uint64_t ColorSyncEvaluateConstrainedHeadroomForReferenceWhiteToneMapping(const void *a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 8.0;
  v11 = 0.0;
  v12 = 0.5;
  v13 = 1.0;
  v14 = 0.9;
  v15 = 0.35;
  v16 = 2.6667;
  if (a1)
  {
    v18 = CFGetTypeID(a1);
    if (v18 == CFDictionaryGetTypeID())
    {
      v31 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMSourcePeak", 1000.0);
      v30 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMSourceReferenceWhite", 203.0);
      v29 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMEDRHeadroom", 1.0);
      v28 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMTargetReferenceWhiteBase", 0.5);
      v16 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMReferenceWhiteThreshold", 2.6667);
      v19 = float_from_dictionary_with_default(a1, @"com.apple.cmm.ContentEDRStrength", 1.0);
      v20 = int32_from_dictionary_with_default(a1, @"com.apple.cmm.ContentAverageLightLevelNits", 0);
      v11 = float_from_dictionary_with_default(a1, @"com.apple.cmm.ConstrainedDynamicRange", 0.0);
      v15 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMMinimumSDRExposure", 0.35);
      v21 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMOffsetAnchor", 2.6667);
      v22 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMHighlightsTradeOffRatio", 0.35);
      v14 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMMinimumGammaAdjustment", 0.9);
      v10 = float_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMStopAnchor", 8.0);
      v23 = int32_from_dictionary_with_default(a1, @"com.apple.cmm.RWTMVersion", 2);
      v25 = v30;
      v24 = v31;
      v12 = v28;
      v13 = v29;
      v26 = v23;
    }

    else
    {
      v20 = 0;
      v26 = 2;
      v24 = 1000.0;
      v25 = 203.0;
      v19 = 1.0;
      v21 = 2.6667;
      v22 = 0.35;
      v13 = 1.0;
      v12 = 0.5;
    }
  }

  else
  {
    v20 = 0;
    v26 = 2;
    v24 = 1000.0;
    v25 = 203.0;
    v19 = 1.0;
    v21 = 2.6667;
    v22 = 0.35;
  }

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  memset(v32, 0, sizeof(v32));
  CMMConvRWToneMapping::CMMConvRWToneMapping(v32, 1000.0, v24, v25, v13, v12, v16, v19, v20, v11, v26, 0, a5, a6, a7, a8, v15, v21, v22, v14, v10);
  if (a2)
  {
    *a2 = DWORD1(v33);
  }

  if (a3)
  {
    *a3 = v33;
  }

  return 1;
}

uint64_t xyFromTemp(unsigned int a1, double *a2, double *a3)
{
  *a2 = 0.0;
  *a3 = 0.0;
  if (a1 < 0xFA0)
  {
    return 0;
  }

  if (a1 >> 3 >= 0x36B)
  {
    if (a1 >> 3 > 0xC34)
    {
      return 0;
    }

    v4 = 0.23704;
    v5 = 247.48;
    v6 = 1901800.0;
    v7 = 2006400000.0;
  }

  else
  {
    v4 = 0.244063;
    v5 = 99.11;
    v6 = 2967800.0;
    v7 = 4607000000.0;
  }

  v8 = v5 / (a1 * 1.00055633) + v6 / (a1 * 1.00055633 * (a1 * 1.00055633)) - v7 / (a1 * 1.00055633 * (a1 * 1.00055633 * (a1 * 1.00055633))) + v4;
  *a2 = v8;
  *a3 = v8 * 2.87 + v8 * v8 * -3.0 + -0.2751;
  return 1;
}

void addAbstractA2B(ColorSyncProfile *a1, uint64_t a2, void (*a3)(float *, float *, float *, uint64_t), uint64_t a4)
{
  v8 = 6 * a2 * a2 * a2;
  Mutable = CFDataCreateMutable(0, v8 + 76);
  if (Mutable)
  {
    v10 = Mutable;
    CFDataSetLength(Mutable, v8 + 76);
    MutableBytePtr = CFDataGetMutableBytePtr(v10);
    if (MutableBytePtr)
    {
      v12 = MutableBytePtr;
      prof = a1;
      v13 = CFDataGetMutableBytePtr(v10);
      bzero(v12, v8 + 76);
      *v12 = 846489197;
      *(v13 + 4) = 771;
      v13[10] = a2;
      *(v13 + 44) = 0x200020000000100;
      *(v13 + 7) = 256;
      *(v13 + 3) = 256;
      v14 = &v13[v8];
      *(v13 + 31) = -1;
      *(v13 + 29) = -1;
      *(v13 + 27) = -1;
      *(v14 + 37) = -1;
      *(v14 + 35) = -1;
      *(v14 + 33) = -1;
      v15 = a2 - 1;
      if (a2 >= 1)
      {
        v16 = 0;
        v33 = 100.0 / v15;
        v17 = v13 + 64;
        v18 = 0.0;
        v19 = 256.0 / v15;
        do
        {
          v20 = 0;
          v34 = v18;
          v21 = v18;
          v22 = -128.0;
          do
          {
            v35 = v22;
            v23 = v22;
            v24 = -128.0;
            v25 = a2;
            do
            {
              v37 = v23;
              v38 = v21;
              v26 = v24;
              v36 = v26;
              a3(&v38, &v37, &v36, a4);
              v27 = (v38 * 652.8 + 0.5) & ~((v38 * 652.8 + 0.5) >> 31);
              if (v27 >= 65280)
              {
                v27 = 65280;
              }

              v28 = v37 + 128.0;
              *v17 = bswap32(v27) >> 16;
              v29 = (v28 * 255.0 + 0.5) & ~((v28 * 255.0 + 0.5) >> 31);
              if (v29 >= 0xFFFF)
              {
                v29 = 0xFFFF;
              }

              v30 = bswap32(v29) >> 16;
              v31 = ((v36 + 128.0) * 255.0 + 0.5) & ~(((v36 + 128.0) * 255.0 + 0.5) >> 31);
              if (v31 >= 0xFFFF)
              {
                v31 = 0xFFFF;
              }

              v17[1] = v30;
              v17[2] = bswap32(v31) >> 16;
              v17 += 3;
              v24 = v19 + v24;
              --v25;
            }

            while (v25);
            ++v20;
            v22 = v19 + v35;
          }

          while (v20 != a2);
          ++v16;
          v18 = v33 + v34;
        }

        while (v16 != a2);
      }

      ColorSyncProfileSetTag(prof, @"A2B0", v10);
    }

    CFRelease(v10);
  }
}

const ColorSyncProfile *makeAppleCopy(uint64_t a1, CFDictionaryRef theDict)
{
  result = CFDictionaryGetValue(theDict, @"profileToCopy");
  if (result)
  {
    v4 = result;
    v5 = ColorSyncProfileCopyHeader(result);
    BytePtr = CFDataGetBytePtr(v5);
    if (BytePtr)
    {
      *(a1 + 8) = *(BytePtr + 8);
      *(a1 + 64) = *(BytePtr + 16);
      v7 = *(BytePtr + 84);
      v8 = *(BytePtr + 100);
      *(a1 + 112) = *(BytePtr + 7);
      *(a1 + 100) = v8;
      *(a1 + 84) = v7;
    }

    if (v5)
    {
      CFRelease(v5);
    }

    ColorSyncProfileRemoveTag(v4, @"cprt");

    return CFRetain(v4);
  }

  return result;
}

ColorSyncProfile *makeCalGray(uint64_t a1, const __CFDictionary *a2)
{
  v4 = create(0, 0, 1, 0);
  if (v4)
  {
    qmemcpy((a1 + 12), "rtnmYARG ZYX", 12);
    v5 = icXYZFromDictionary(a2, @"wtpt");
    addXYZTag(v4, @"wtpt", v5, v6);
    if (CFDictionaryContainsKey(a2, @"bkpt") == 1)
    {
      v7 = icXYZFromDictionary(a2, @"bkpt");
      addXYZTag(v4, @"bkpt", v7, v8);
    }

    if (CFDictionaryContainsKey(a2, @"paraK") == 1)
    {
      gammaCurveFromDictionary(&v14, a2, @"paraK");
      v9.f64[0] = v15;
      v10.f64[0] = v17;
      v11.f64[0] = v19;
      ColorSyncProfileSetParametricTRCTag(v4, @"kTRC", v14, v9, v16, v10, v18, v11, v20, v21);
    }

    else
    {
      v12 = floatFromDictionary(a2, @"kGamma");
      addGammaTag(v4, @"kTRC", v12);
    }
  }

  return v4;
}

const ColorSyncProfile *makeConcatenated(uint64_t a1, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  Value = CFDictionaryGetValue(cf, @"profileSequence");
  Link = ColorSyncProfileCreateLink(Value, 0);
  if (!Link)
  {
    return 0;
  }

  v7 = Link;
  MutableCopy = ColorSyncProfileCreateMutableCopy(Link);
  v9 = ColorSyncProfileCopyHeader(MutableCopy);
  if (v9)
  {
    v10 = v9;
    BytePtr = CFDataGetBytePtr(v9);
    if (BytePtr)
    {
      *(a1 + 12) = *(BytePtr + 12);
      *(a1 + 20) = *(BytePtr + 5);
    }

    CFRelease(v10);
  }

  v12 = CFDictionaryGetValue(cf, @"profileClass");
  if (v12)
  {
    *(a1 + 12) = classSignatureFromClassString(v12);
  }

  CFRelease(v7);
  return MutableCopy;
}

uint64_t makeTableBasedRGB(uint64_t a1, const void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = create(0, 0, 1, 0);
  v5 = CFGetTypeID(a2);
  if (v5 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(a2, @"A2B0");
    v34 = Value;
    v35 = CFDictionaryGetValue(a2, @"A2B1");
    v7 = CFDictionaryGetValue(a2, @"A2B2");
    v36 = v7;
    if (!v35)
    {
      v35 = Value;
    }

    prof = v4;
    if (!v7)
    {
      v36 = Value;
    }

    v8 = CFDictionaryGetValue(a2, @"gridPoints");
    valuePtr = 0;
    CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
    for (i = 0; i != 3; ++i)
    {
      if (valuePtr)
      {
        v10 = *(&v34 + i);
        if (v10)
        {
          BytePtr = CFDataGetBytePtr(v10);
          if (BytePtr)
          {
            v12 = BytePtr;
            v13 = valuePtr;
            v14 = 6 * (v13 * v13 * v13);
            v15 = malloc_type_calloc((v14 + 81) & 0xFFFFFFFFCLL, 1uLL, 0x10000409C08D13AuLL);
            if (v15)
            {
              v16 = v15;
              *v15 = 846489197;
              *(v15 + 4) = 771;
              v15[10] = v13;
              *(v15 + 44) = 0x200020000000100;
              *(v15 + 7) = 256;
              *(v15 + 3) = 256;
              *(v15 + 31) = -1;
              *(v15 + 29) = -1;
              *(v15 + 27) = -1;
              if (v13)
              {
                v17 = 0;
                v18 = v15 + 64;
                v19 = 2;
                do
                {
                  v20 = 0;
                  v21 = v19;
                  do
                  {
                    v22 = v21;
                    v23 = v13;
                    do
                    {
                      v24 = bswap32(*&v12[2 * (v22 - 1)]);
                      v25 = bswap32(*&v12[2 * v22]);
                      *v18 = bswap32(*&v12[2 * (v22 - 2)]) >> 16;
                      v18[1] = HIWORD(v24);
                      v18[2] = HIWORD(v25);
                      v18 += 3;
                      ++v22;
                      --v23;
                    }

                    while (v23);
                    ++v20;
                    v21 += v13;
                  }

                  while (v20 != v13);
                  ++v17;
                  v19 += v13 * v13;
                }

                while (v17 != v13);
              }

              v26 = &v16[v14 + 52];
              *(v26 + 11) = -1;
              *(v26 + 9) = -1;
              *(v26 + 7) = -1;
              v27 = CFDataCreate(0, v16, (v14 + 81) & 0xFFFFFFFFCLL);
              free(v16);
              if (v27)
              {
                ColorSyncProfileSetTag(prof, off_1E7522DF0[i], v27);
                CFRelease(v27);
              }
            }
          }
        }
      }
    }

    v28 = CFDictionaryGetValue(a2, @"aapy");
    v4 = prof;
    if (v28)
    {
      ColorSyncProfileSetTag(prof, @"aapy", v28);
    }

    v29 = CFDictionaryGetValue(a2, @"profileClass");
    *(a1 + 16) = 0x58595A2052474220;
    addXYZTag(prof, @"wtpt", *(a1 + 68), *(a1 + 76));
    if (v29)
    {
      *(a1 + 12) = classSignatureFromClassString(v29);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v4;
}

void *makeByCopyingTags(uint64_t a1, const void *a2)
{
  v4 = create(0, 0, 1, 0);
  v5 = CFGetTypeID(a2);
  if (v5 == CFDictionaryGetTypeID() && CFDictionaryContainsKey(a2, @"tags"))
  {
    Value = CFDictionaryGetValue(a2, @"tags");
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 == CFDictionaryGetTypeID())
      {
        CFDictionaryApplyFunction(v7, tag_adder, v4);
      }
    }

    v9 = CFDictionaryGetValue(a2, @"profileClass");
    if (v9)
    {
      *(a1 + 12) = classSignatureFromClassString(v9);
    }

    v10 = CFDictionaryGetValue(a2, @"profileColorSpace");
    if (v10)
    {
      *(a1 + 16) = ColorSyncGetFourCharCodeFromSignature(v10);
    }

    v11 = CFDictionaryGetValue(a2, @"profilePCS");
    if (v11)
    {
      *(a1 + 20) = ColorSyncGetFourCharCodeFromSignature(v11);
    }

    if (!ColorSyncProfileGetTag(v4, @"wtpt"))
    {
      addXYZTag(v4, @"wtpt", *(a1 + 68), *(a1 + 76));
    }
  }

  return v4;
}

ColorSyncProfile *makeCopyWithFlexGTC(uint64_t a1, CFDictionaryRef theDict)
{
  v91 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, @"profileToCopy");
  if (!Value || (v5 = Value, !ColorSyncProfileIsPQBased(Value)) || (CICPInfo = ColorSyncProfileGetCICPInfo(v5)) == 0)
  {
    MutableCopy = 0;
    goto LABEL_11;
  }

  v7 = CICPInfo;
  v8 = *CICPInfo;
  MutableCopy = ColorSyncProfileCreateMutableCopy(v5);
  if (MutableCopy)
  {
    v86 = v8;
    v10 = CFDictionaryGetValue(theDict, kColorSyncPreGainMapCICP);
    if (v10 && (v11 = v10, v12 = CFGetTypeID(v10), v12 == CFNumberGetTypeID()))
    {
      valuePtr.A = 0;
      if (CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr) == 1)
      {
        A = valuePtr.A;
      }

      else
      {
        A = 0;
      }
    }

    else
    {
      A = 0;
    }

    v16 = (A & 0xFF00) != 0 && A != 0;
    v17 = CFDictionaryGetValue(theDict, kColorSyncPostGainMapCICP);
    if (v17 && (v18 = v17, v19 = CFGetTypeID(v17), v19 == CFNumberGetTypeID()))
    {
      valuePtr.A = 0;
      if (CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr) == 1)
      {
        v20 = valuePtr.A;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = (v20 & 0xFF00) == 0 || v20 == 0;
    v22 = CFGetTypeID(theDict);
    if (v22 != CFDictionaryGetTypeID())
    {
      goto LABEL_88;
    }

    v84 = v16;
    v23 = CFDictionaryGetValue(theDict, kColorSyncMonoFlexGTCNodeTable);
    if (!v23)
    {
      goto LABEL_88;
    }

    v24 = v23;
    v25 = CFGetTypeID(v23);
    if (v25 != CFArrayGetTypeID())
    {
      goto LABEL_88;
    }

    Count = CFArrayGetCount(v24);
    if (Count < 1)
    {
      goto LABEL_88;
    }

    v27 = Count;
    v82 = v21;
    v83 = A;
    v28 = 1;
    theArray = v24;
    do
    {
      v29 = v27;
      ValueAtIndex = CFArrayGetValueAtIndex(v24, v28 - 1);
      if (!ValueAtIndex)
      {
        goto LABEL_88;
      }

      v31 = ValueAtIndex;
      v32 = CFGetTypeID(ValueAtIndex);
      if (v32 != CFDictionaryGetTypeID() || !verified_float_from_dictionary(v31, kColorSyncFlexGTCNodeX, 0) || !verified_float_from_dictionary(v31, kColorSyncFlexGTCNodeY, 0))
      {
        goto LABEL_88;
      }

      v33 = verified_float_from_dictionary(v31, kColorSyncFlexGTCNodeSlope, 0);
      v24 = theArray;
      v27 = v29;
      if ((v33 & 1) == 0)
      {
        break;
      }
    }

    while (v28++ < v29);
    if (((v29 != 0) & v33) == 0 || (v35 = malloc_type_calloc(1uLL, (12 * v29 + 158), 0x100004079E30E38uLL)) == 0)
    {
LABEL_88:
      CopyWithFlexGTCBasedA2B0 = 0;
      goto LABEL_89;
    }

    data = v35;
    v36 = CFDictionaryGetValue(theDict, kColorSyncMonoGainMapParams);
    if (v36)
    {
      v37 = v36;
      v38 = CFGetTypeID(v36);
      if (v38 == CFDictionaryGetTypeID())
      {
        len = (12 * v29 + 158);
        valuePtr.A = 0;
        if (verified_float_from_dictionary(v37, kColorSyncGainMapMin, &valuePtr))
        {
          v39 = valuePtr.A;
          if (verified_float_from_dictionary(v37, kColorSyncGainMapMax, &valuePtr))
          {
            v79 = valuePtr.A;
            if (verified_float_from_dictionary(v37, kColorSyncGainMapGamma, &valuePtr))
            {
              v78 = valuePtr.A;
              if (verified_float_from_dictionary(v37, kColorSyncGainMapBaselineConst, &valuePtr))
              {
                v77 = valuePtr.A;
                if (verified_float_from_dictionary(v37, kColorSyncGainMapAlternateConst, &valuePtr))
                {
                  v76 = valuePtr.A;
                  if (verified_float_from_dictionary(v37, kColorSyncGainMapBaselineHeadroom, &valuePtr))
                  {
                    v40 = valuePtr.A;
                    if (verified_float_from_dictionary(v37, kColorSyncGainMapAlternateHeadroom, &valuePtr))
                    {
                      v75 = valuePtr.A;
                      if (CFDictionaryContainsKey(v37, kColorSyncGUID) == 1)
                      {
                        v41 = CFDictionaryGetValue(v37, kColorSyncGUID);
                        if (!v41)
                        {
                          goto LABEL_87;
                        }

                        v42 = v41;
                        v74 = CFGetTypeID(v41);
                        if (v74 != CFUUIDGetTypeID())
                        {
                          goto LABEL_87;
                        }

                        *(data + 106) = CFUUIDGetUUIDBytes(v42);
                        *(data + 122) = bswap32(v39);
                        *(data + 126) = bswap32(v79);
                        *(data + 130) = bswap32(v78);
                        *(data + 134) = bswap32(v77);
                        *(data + 138) = bswap32(v76);
                        *(data + 142) = bswap32(v40);
                        *(data + 146) = bswap32(v75);
                      }

                      if (v84)
                      {
                        v43 = v83;
                      }

                      else
                      {
                        v43 = v86 & 0xFFFF00FF | 0x800;
                      }

                      if (v82)
                      {
                        v44 = 0;
                      }

                      else
                      {
                        v44 = 1711276032;
                      }

                      if (v82)
                      {
                        v20 = 0;
                      }

                      v45 = CFDictionaryGetValue(theDict, @"FlexGTC.based.A2B0");
                      v46 = *MEMORY[0x1E695E4D0];
                      v47 = bswap32(v43);
                      v48 = bswap32(v20);
                      *data = 1885433191;
                      *(data + 2) = 0;
                      *(data + 3) = bswap32(len);
                      *(data + 1) = xmmword_19A96E090;
                      *(data + 8) = v44;
                      *(data + 9) = -1778384896;
                      v49 = bswap32(12 * v29 + 8);
                      *(data + 10) = v49;
                      *(data + 11) = -1778384896;
                      *(data + 12) = v49;
                      *(data + 13) = -1778384896;
                      v87 = v46;
                      if (v45 == v46)
                      {
                        v50 = 809644609;
                      }

                      else
                      {
                        v50 = 0;
                      }

                      *(data + 14) = v49;
                      *(data + 15) = v50;
                      *(data + 8) = 0;
                      *(data + 98) = v47;
                      *(data + 102) = v48;
                      *(data + 150) = 0;
                      *(data + 154) = bswap32(v29);
                      v51 = malloc_type_calloc(v29, 0xCuLL, 0x10000403E1C8BA9uLL);
                      if (v51)
                      {
                        v52 = v51;
                        v53 = 0;
                        v54 = v51 + 2;
                        do
                        {
                          v55 = CFArrayGetValueAtIndex(theArray, v53);
                          valuePtr.A = 0;
                          verified_float_from_dictionary(v55, kColorSyncFlexGTCNodeX, &valuePtr);
                          *(v54 - 2) = bswap32(valuePtr.A);
                          verified_float_from_dictionary(v55, kColorSyncFlexGTCNodeY, &valuePtr);
                          *(v54 - 1) = bswap32(valuePtr.A);
                          verified_float_from_dictionary(v55, kColorSyncFlexGTCNodeSlope, &valuePtr);
                          *v54 = bswap32(valuePtr.A);
                          v54 += 3;
                          ++v53;
                        }

                        while (v29 != v53);
                        memcpy(data + 158, v52, 12 * v29);
                        free(v52);
                      }

                      v56 = CFDictionaryGetValue(theDict, kColorSyncMonoGainMapParams);
                      if (CFDictionaryGetValue(v56, kColorSyncGUID))
                      {
                        v57 = *(data + 106);
                        v58 = *(data + 114);
                      }

                      else
                      {
                        *md = 0;
                        v90 = 0;
                        memset(&valuePtr, 0, sizeof(valuePtr));
                        CC_MD5_Init(&valuePtr);
                        CC_MD5_Update(&valuePtr, data, len);
                        CC_MD5_Final(md, &valuePtr);
                        v57 = *md;
                        v58 = v90;
                      }

                      v59 = CFDataCreate(0, data, len);
                      if (v59)
                      {
                        v60 = v59;
                        ColorSyncProfileSetTag(MutableCopy, @"hdgm", v59);
                        CFRelease(v60);
                        v61 = CFDictionaryGetValue(theDict, kColorSyncFlexGTCName);
                        v62 = *v7 - 1 > 0xB ? @"Unknown primaries" : off_1E7522E08[(*v7 - 1)];
                        v63 = v7[1] - 1 > 0x11 ? 0 : *(&off_1E7522E68 + (v7[1] - 1));
                        v64 = CFStringCreateWithFormat(0, 0, @"%@; %@", v62, v63);
                        *&valuePtr.A = v57;
                        *&valuePtr.C = v58;
                        v65 = XXH64(&valuePtr);
                        v66 = @"Adaptive Gain Curve";
                        if (v61)
                        {
                          v66 = v61;
                        }

                        v67 = CFStringCreateWithFormat(0, 0, @"%@ %02X%02X%02X%02X%02X%02X%02X%02X", v66, v65, BYTE1(v65), BYTE2(v65), BYTE3(v65), BYTE4(v65), BYTE5(v65), BYTE6(v65), HIBYTE(v65));
                        v68 = CFStringCreateWithFormat(0, 0, @"%@ (%@)", v64, v67);
                        CFRelease(v64);
                        CFRelease(v67);
                        if (v68)
                        {
                          ColorSyncProfileRemoveTag(MutableCopy, @"dscm");
                          ColorSyncProfileSetDescriptionTag(MutableCopy, v68, 0);
                          CFRelease(v68);
                          v69 = ColorSyncProfileCopyHeader(v5);
                          if (v69)
                          {
                            v70 = v69;
                            v71 = CFGetTypeID(v69);
                            if (v71 == CFDataGetTypeID())
                            {
                              BytePtr = CFDataGetBytePtr(v70);
                              if (BytePtr)
                              {
                                if (*(BytePtr + 9) == 1633907568)
                                {
                                  *(a1 + 8) = *(BytePtr + 8);
                                  CFRelease(v70);
                                  free(data);
                                  if (CFDictionaryGetValue(theDict, @"FlexGTC.based.A2B0") != v87)
                                  {
                                    goto LABEL_11;
                                  }

                                  CopyWithFlexGTCBasedA2B0 = makeCopyWithFlexGTCBasedA2B0(a1, theDict, MutableCopy);
                                  if (!CopyWithFlexGTCBasedA2B0)
                                  {
                                    goto LABEL_11;
                                  }

LABEL_89:
                                  CFRelease(MutableCopy);
                                  MutableCopy = CopyWithFlexGTCBasedA2B0;
                                  goto LABEL_11;
                                }
                              }
                            }

                            CFRelease(v70);
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

LABEL_87:
    free(data);
    goto LABEL_88;
  }

LABEL_11:
  v14 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

const ColorSyncProfile *makeCopyWithFlexGTCBasedA2B0(uint64_t a1, CFDictionaryRef theDict, const ColorSyncProfile *a3)
{
  v80 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, @"profileToCopy");
  if (a3)
  {
    MutableCopy = a3;
  }

  else
  {
    MutableCopy = Value;
  }

  if (!MutableCopy)
  {
    goto LABEL_49;
  }

  if (!ColorSyncProfileIsPQBased(MutableCopy))
  {
    MutableCopy = 0;
    goto LABEL_49;
  }

  valuePtr = 0;
  v8 = CFDictionaryGetValue(theDict, @"gridPoints");
  if (v8 && (v9 = v8, v10 = CFGetTypeID(v8), v10 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v9, kCFNumberLongLongType, &valuePtr);
    v11 = valuePtr;
  }

  else
  {
    v11 = 13;
  }

  if (v11 <= 5)
  {
    v11 = 5;
  }

  valuePtr = v11;
  v52 = CFDictionaryGetValue(theDict, @"FlexGTC.input.profile");
  v12 = *MEMORY[0x1E695E4D0];
  v53 = valuePtr;
  v13 = ColorSyncProfileCreateWithName(kColorSyncGenericXYZProfile);
  v75 = 0u;
  v76 = 0u;
  v69 = 0u;
  v68 = 0u;
  keys = @"com.apple.cmm.FlexGTCTargetHeadroom";
  LODWORD(v56[0]) = 1065353216;
  values = CFNumberCreate(0, kCFNumberFloatType, v56);
  v14 = MEMORY[0x1E695E9D8];
  v15 = MEMORY[0x1E695E9E8];
  v16 = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *&v75 = @"com.apple.cmm.ApplyFlexLumaScaling";
  *&v68 = v16;
  v17 = CFDictionaryCreate(0, &v75, &v68, 1, v14, v15);
  *(&v75 + 1) = @"com.apple.cmm.ApplyToneMaping";
  *&v76 = @"com.apple.cmm.PQEOTFTable";
  *(&v68 + 1) = v17;
  *&v69 = v12;
  *(&v76 + 1) = @"com.apple.cmm.PQEOTFTableSize";
  LODWORD(v56[0]) = 1024;
  *(&v69 + 1) = CFNumberCreate(0, kCFNumberSInt32Type, v56);
  v18 = CFDictionaryCreate(0, &v75 + 1, &v68 + 1, 3, v14, v15);
  CFRelease(values);
  CFRelease(*(&v69 + 1));
  CFRelease(v16);
  CFRelease(v17);
  colorsync_transform = create_colorsync_transform(MutableCopy, v13, v18);
  if (v13)
  {
    CFRelease(v13);
  }

  v20 = pow(v53, 3.0);
  v21 = 3 * v20;
  v22 = (6 * v20) & 0xFFFFFFFFFFFFFFFCLL;
  v23 = malloc_type_calloc(1uLL, v22 + 6298, 0xB54B97A0uLL);
  if (v23)
  {
    v24 = v23;
    v23->i32[0] = 541213037;
    v23[1].i16[0] = 771;
    v23[3] = 0x2000001850;
    v25 = (v22 + 6248);
    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x2000000000;
    v66[3] = v23 + 4;
    v23[778].i8[2] = v53;
    v23[778].i8[1] = v53;
    v23[778].i8[0] = v53;
    v23[780].i8[0] = 2;
    v65[0] = 0;
    v65[1] = v65;
    v65[2] = 0x2000000000;
    v65[3] = v23 + 6244;
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x2000000000;
    v64[3] = v23 + v25;
    v23[3] = vrev32_s8(v23[3]);
    v23[2].i32[0] = bswap32(v25);
    keys = 0;
    *&v75 = &keys;
    *(&v75 + 1) = 0x6800000000;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    memset(v79, 0, sizeof(v79));
    v62[0] = 0;
    v62[1] = v62;
    v62[2] = 0x2000000000;
    v63 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2000000000;
    v61 = malloc_type_calloc(1uLL, 4 * v21, 0x100004052888210uLL);
    if (v59[3])
    {
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 0x40000000;
      v57[2] = __ColorSyncMakeCopyWithLUTBasedLumaScaling_block_invoke;
      v57[3] = &unk_1E7524588;
      v57[4] = &keys;
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 0x40000000;
      v56[2] = __ColorSyncMakeCopyWithLUTBasedLumaScaling_block_invoke_2;
      v56[3] = &unk_1E75245B0;
      v56[4] = &keys;
      v56[5] = v66;
      v56[6] = 1024;
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 0x40000000;
      v55[2] = __ColorSyncMakeCopyWithLUTBasedLumaScaling_block_invoke_3;
      v55[3] = &unk_1E75245D8;
      v55[4] = &keys;
      v55[5] = v64;
      v55[6] = v62;
      values = MEMORY[0x1E69E9820];
      *&v68 = 0x40000000;
      *(&v68 + 1) = __ColorSyncMakeCopyWithLUTBasedLumaScaling_block_invoke_4;
      *&v69 = &unk_1E7524600;
      *(&v69 + 1) = &keys;
      v70 = v65;
      v72 = v62;
      v73 = v53;
      v71 = &v58;
      if (ColorSyncTransformIterate(colorsync_transform, v18, v57, v56, v55, &values))
      {
        v32 = CFDataCreate(0, v24, v22 + 6298);
        MutableCopy = ColorSyncProfileCreateMutableCopy(MutableCopy);
        ColorSyncProfileSetTag(MutableCopy, @"A2B0", v32);
        if (v32)
        {
          CFRelease(v32);
        }

        v33 = ColorSyncProfileCopyHeader(MutableCopy);
        if (v33)
        {
          v36 = v33;
          v37 = CFDataCreateMutableCopy(0, 0, v33);
          if (v37)
          {
            v38 = v37;
            MutableBytePtr = CFDataGetMutableBytePtr(v37);
            *(MutableBytePtr + 2) = 71303168;
            if (v52 == v12 && *(MutableBytePtr + 3) != 1935896178)
            {
              *(MutableBytePtr + 3) = 1935896178;
              ColorSyncProfileRemoveTag(MutableCopy, @"B2A0");
            }

            ColorSyncProfileSetHeader(MutableCopy, v38);
            CFRelease(v38);
            ColorSyncProfileRemoveTag(MutableCopy, @"lumi");
            ColorSyncProfileGetMD5(MutableCopy);
          }

          CFRelease(v36);
        }

        if (!ColorSyncProfileVerify(MutableCopy, v34, v35))
        {
          ColorSyncLog(2, "%s failed to create a valid profile", v40, v41, v42, v43, v44, v45, "ColorSyncMakeCopyWithLUTBasedLumaScaling");
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
            MutableCopy = 0;
          }
        }
      }

      else
      {
        ColorSyncLog(2, "ColorSyncTransformIterate failed in %s", v26, v27, v28, v29, v30, v31, "ColorSyncMakeCopyWithLUTBasedLumaScaling");
        MutableCopy = 0;
      }

      free(v59[3]);
    }

    else
    {
      MutableCopy = 0;
    }

    free(v24);
    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(v62, 8);
    _Block_object_dispose(&keys, 8);
    _Block_object_dispose(v64, 8);
    _Block_object_dispose(v65, 8);
    _Block_object_dispose(v66, 8);
    if (colorsync_transform)
    {
      goto LABEL_36;
    }
  }

  else
  {
    MutableCopy = 0;
    if (colorsync_transform)
    {
LABEL_36:
      CFRelease(colorsync_transform);
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (MutableCopy)
  {
    v46 = ColorSyncProfileCopyHeader(MutableCopy);
    if (v46)
    {
      v47 = v46;
      v48 = CFGetTypeID(v46);
      if (v48 == CFDataGetTypeID())
      {
        BytePtr = CFDataGetBytePtr(v47);
        if (BytePtr)
        {
          if (*(BytePtr + 9) == 1633907568)
          {
            *(a1 + 8) = *(BytePtr + 8);
LABEL_48:
            CFRelease(v47);
            goto LABEL_49;
          }
        }
      }

      CFRelease(MutableCopy);
    }

    else
    {
      v47 = MutableCopy;
    }

    MutableCopy = 0;
    goto LABEL_48;
  }

LABEL_49:
  v50 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

ColorSyncProfile *makeXYZProfile(uint64_t a1)
{
  v2 = create(0, 0, 1, 0);
  if (v2)
  {
    qmemcpy((a1 + 12), "caps ZYX ZYX", 12);
    v5 = 846489197;
    v6 = 131843;
    v7 = xmmword_19A96E0A0;
    v8 = xmmword_19A96E0A0;
    v10 = xmmword_19A96E5F0;
    v11 = unk_19A96E600;
    v12 = xmmword_19A96E610;
    v9 = 0x200020000000100;
    v14 = 0xFFFF0000FFFF0000;
    v13 = unk_19A96E620;
    v3 = CFDataCreateWithBytesNoCopy(0, &v5, 124, *MEMORY[0x1E695E498]);
    ColorSyncProfileSetTag(v2, @"A2B0", v3);
    ColorSyncProfileSetTag(v2, @"B2A0", v3);
    CFRelease(v3);
    ColorSyncProfileSetDescriptionTag(v2, @"Custom XYZ Profile", 0);
    addXYZTag(v2, @"wtpt", *(a1 + 68), *(a1 + 76));
  }

  return v2;
}

ColorSyncProfile *makeLabProfile(uint64_t a1, const __CFDictionary *a2)
{
  v4 = create(0, 0, 1, 0);
  if (v4)
  {
    qmemcpy((a1 + 12), "caps baL baL", 12);
    v11 = 846489197;
    v12 = 131843;
    v13 = xmmword_19A96E0A0;
    v14 = xmmword_19A96E0A0;
    v16 = xmmword_19A96E5F0;
    v17 = unk_19A96E600;
    v18 = xmmword_19A96E610;
    v15 = 0x200020000000100;
    v20 = 0xFFFF0000FFFF0000;
    v19 = unk_19A96E620;
    v5 = CFDataCreateWithBytesNoCopy(0, &v11, 124, *MEMORY[0x1E695E498]);
    ColorSyncProfileSetTag(v4, @"A2B0", v5);
    ColorSyncProfileSetTag(v4, @"B2A0", v5);
    CFRelease(v5);
    ColorSyncProfileSetDescriptionTag(v4, @"Custom Lab Profile", 0);
    v6 = icXYZFromDictionary(a2, @"wtpt");
    addXYZTag(v4, @"wtpt", v6, v7);
    v8 = icXYZFromDictionary(a2, @"bkpt");
    addXYZTag(v4, @"bkpt", v8, v9);
  }

  return v4;
}

unint64_t verified_float_from_dictionary(const __CFDictionary *a1, const void *a2, _DWORD *a3)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFNumberGetTypeID())
    {
      result = CFNumberIsFloatType(v5);
      if (result)
      {
        valuePtr = 0;
        Value = CFNumberGetValue(v5, kCFNumberFloatType, &valuePtr);
        result = Value != 0;
        if (a3)
        {
          if (Value)
          {
            *a3 = valuePtr;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t classSignatureFromClassString(const void *a1)
{
  v2 = 1935896178;
  v3 = CFGetTypeID(a1);
  if (v3 == CFStringGetTypeID())
  {
    if (CFEqual(a1, kColorSyncSigDisplayClass))
    {
      return 1835955314;
    }

    else if (CFEqual(a1, kColorSyncSigOutputClass))
    {
      return 1886549106;
    }

    else if (CFEqual(a1, kColorSyncSigLinkClass))
    {
      return 1818848875;
    }

    else if (CFEqual(a1, kColorSyncSigAbstractClass))
    {
      return 1633842036;
    }

    else if (CFEqual(a1, kColorSyncSigColorSpaceClass))
    {
      return 1936744803;
    }

    else if (CFEqual(a1, kColorSyncSigColorSpaceClass))
    {
      return 1852662636;
    }

    else
    {
      return 1935896178;
    }
  }

  return v2;
}

BOOL checkPrimaries(double *a1)
{
  result = 0;
  v3 = *a1;
  if (*a1 > 0.0)
  {
    v4 = a1[1];
    if (v4 > 0.0)
    {
      result = 0;
      if (v3 + v4 <= 1.0 && v3 + v4 * -2.0 < 0.2)
      {
        result = 0;
        if (v3 + v4 > 0.7 && v4 - v3 < 0.0)
        {
          result = 0;
          v5 = a1[2];
          if (v5 > 0.0)
          {
            v6 = a1[3];
            if (v6 > 0.0)
            {
              result = 0;
              if (v5 + v6 < 1.0 && v5 + v6 > 0.6 && v6 - v5 > 0.0)
              {
                result = 0;
                v7 = a1[4];
                if (v7 > 0.0)
                {
                  v8 = a1[5];
                  if (v8 > 0.0)
                  {
                    result = 0;
                    if (v7 + v8 < 1.0 && v7 + v8 * -2.0 < 0.2)
                    {
                      result = 0;
                      if (v7 + v8 < 0.5 && v8 - v7 < 0.2)
                      {
                        result = 0;
                        v9 = a1[6];
                        v10 = a1[7];
                        if (v9 + v10 < 0.9 && v9 + v10 > 0.4)
                        {
                          return fmax(v9 - v10, v10 - v9) < 0.1;
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

  return result;
}

CFIndex gammaTableFromDictionary(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFDataGetTypeID() || (CFDataGetLength(v3) & 1) != 0)
  {
    return 0;
  }

  v5 = CFDataGetLength(v3) / 2;
  CFDataGetBytePtr(v3);
  return v5;
}

float _LabToLabValsProc(float *a1, float *a2, float *a3, double *a4)
{
  v8 = a4[8];
  v9 = a4[9];
  if (v8 == 0.0 && v9 == 0.0)
  {
    v10 = *a3;
    v11 = 1.0;
  }

  else
  {
    v12 = v8;
    v13 = v9;
    v10 = *a3;
    v14 = atan2(v10, *a2) * 57.2957795;
    v15 = v14 < v12;
    v16 = v14 > v13;
    v17 = v14 > v13 || v14 < v12;
    v11 = 1.0;
    if (v12 > v13 && v15 && v16 || v12 < v13 && v17)
    {
      v11 = 0.0;
    }
  }

  v18 = *a1 / 100.0;
  v19 = (v18 * 2.0) + -1.0;
  v20 = (v18 * -2.0) + 2.0;
  if (v18 < 0.5)
  {
    v20 = v18 + v18;
  }

  v21 = (v18 * -2.0) + 1.0;
  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  if (v20 < 0.0)
  {
    v20 = 0.0;
  }

  if (v21 < 0.0)
  {
    v21 = 0.0;
  }

  v22 = a4[6];
  v23 = v10 + (v11 * v19) * a4[5];
  v24 = v23 + (v11 * v20) * a4[4];
  v25 = v24 + (v11 * v21) * a4[3];
  *a3 = v25;
  v26 = *a2;
  v27 = sqrtf((v25 * v25) + (v26 * v26));
  v28 = v11;
  v29 = a4[7] * v11;
  if (v29 <= 0.0)
  {
    v31 = (v29 / 100.0 + 1.0) * v27;
  }

  else
  {
    if (v27 >= 130.0)
    {
      goto LABEL_22;
    }

    v30 = v29 / 50.0 + 1.0;
    v31 = pow(v27 / -130.0 + 1.0, v30) * -130.0 + 130.0;
  }

  v27 = v31;
LABEL_22:
  v32 = 0.0 - v28 * *a4;
  v33 = 50.0 - v28 * a4[1];
  v34 = 100.0 - v28 * a4[2];
  v35 = v34 - v32;
  v36 = log(1.0 / ((v33 - v32) / (v34 - v32)));
  v37 = (*a1 - v32) / v35;
  v38 = 0.0;
  if (v37 >= 0.0)
  {
    if (v37 <= 1.0)
    {
      v39 = 0.693147181 / v36;
      v38 = pow(v37, v39) * 100.0;
    }

    else
    {
      v38 = 100.0;
    }
  }

  *a1 = v38;
  v40 = atan2(v25, v26) * 57.2957795;
  v41 = v40 + v28 * v22;
  v42 = v41 * 0.0174532925;
  v43 = __sincos_stret(v42);
  v44 = v43.__cosval * v27;
  *a2 = v44;
  result = v43.__sinval * v27;
  *a3 = result;
  return result;
}

CFStringRef colorSyncTransformCopyDebugDescription(uint64_t a1)
{
  if (a1)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v3 = *(a1 + 120);
      if (v3)
      {
        v10.length = CFArrayGetCount(v3);
        v10.location = 0;
        CFArrayApplyFunction(*(a1 + 120), v10, description_adder, Mutable);
      }
    }

    v4 = CFGetAllocator(a1);
    v5 = *(a1 + 80);
    v6 = CFStringCreateWithFormat(v4, 0, @"<ColorSyncTransform %p;cmm:%@;\nproperties:%@;\noptions:%@;\nsequence:%@>", a1, v5, *(a1 + 112), *(a1 + 128), Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return v6;
  }

  else
  {
    v8 = CFGetAllocator(0);

    return CFStringCreateWithFormat(v8, 0, @"<NULL ColorSyncTransform>");
  }
}

void description_adder(const void *a1, __CFArray *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFDictionaryGetTypeID())
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1);
    if (MutableCopy)
    {
      v6 = MutableCopy;
      Value = CFDictionaryGetValue(MutableCopy, kColorSyncProfile);
      if (Value)
      {
        v8 = ColorSyncProfileCopyDescriptionString(Value);
        if (v8)
        {
          v9 = v8;
          CFDictionarySetValue(v6, kColorSyncProfile, v8);
          CFRelease(v9);
          CFArrayAppendValue(a2, v6);
        }
      }

      CFRelease(v6);
    }
  }
}

uint64_t colorSyncTransformEqual(void *cf, void *a2)
{
  if (cf == a2)
  {
    return 1;
  }

  result = 0;
  if (!cf || !a2)
  {
    return result;
  }

  v5 = CFGetTypeID(cf);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  if (v5 != ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
  {
    return 0;
  }

  v6 = CFGetTypeID(a2);
  if (ColorSyncTransformGetTypeID_predicate != -1)
  {
    dispatch_once(&ColorSyncTransformGetTypeID_predicate, &__block_literal_global_21);
  }

  if (v6 != ColorSyncTransformGetTypeID_kColorSyncTransformRuntimeID)
  {
    return 0;
  }

  v7 = cf[15];
  v8 = a2[15];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = cf[14];
  v10 = a2[14];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = a2[16];
  if (cf[16])
  {
    if (v11)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v11)
  {
    return 0;
  }

LABEL_21:
  if (v7 && v8)
  {
    result = CFEqual(v7, v8);
    if (!result)
    {
      return result;
    }

    v9 = cf[14];
  }

  if (!v9 || (v12 = a2[14]) == 0 || (result = CFEqual(v9, v12), result))
  {
    v13 = cf[16];
    if (!v13)
    {
      return 1;
    }

    v14 = a2[16];
    if (!v14)
    {
      return 1;
    }

    result = CFEqual(v13, v14);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void ColorSyncTransformSetProperty(ColorSyncTransformRef transform, CFTypeRef key, CFTypeRef property)
{
  if (!key || (v6 = CFGetTypeID(key), v6 != CFStringGetTypeID()) || !CFStringHasPrefix(key, @"com.apple.cmm") && !CFEqual(key, kColorSyncTransformCreator) && !CFEqual(key, kColorSyncTransformSrcSpace) && !CFEqual(key, kColorSyncTransformDstSpace))
  {

    ColorSyncTransformInternalSetProperty(transform, key, property);
  }
}

uint64_t ColorSyncTransformGetDstComponentCount(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

uint64_t ColorSyncTransformCreateWithName()
{
  if (createRuntimeInstance(0x52474220u, 0x52474220u, 0))
  {
    ColorSyncCMMCreateAppleCMM();
    operator new();
  }

  return 0;
}

void sub_19A93F43C(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = *v4;
    v6 = *(v2 - 88);
    if (v6)
    {
      v7 = *v6;
      if (*v6)
      {
        do
        {
          v8 = *v7;
          free(v7);
          v7 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v9 = *(v2 - 88);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        do
        {
          v11 = *v10;
          free(v10);
          v10 = v11;
        }

        while (v11);
      }
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x19A93F34CLL);
}

CFTypeRef ColorSyncCreateCodeFragmentPriv(const void *a1, uint64_t a2)
{
  pthread_mutex_lock(&ColorSyncCreateCodeFragmentPriv_mtx);
  v4 = 0;
  if (a1 && ColorSyncCreateCodeFragmentPriv_lastSequence)
  {
    v4 = CFEqual(a1, ColorSyncCreateCodeFragmentPriv_lastSequence) != 0;
  }

  if (a2 | ColorSyncCreateCodeFragmentPriv_lastOptions)
  {
    v5 = 0;
    if (a2 && ColorSyncCreateCodeFragmentPriv_lastOptions)
    {
      v5 = CFEqual(a2, ColorSyncCreateCodeFragmentPriv_lastOptions) != 0;
    }
  }

  else
  {
    v5 = 1;
  }

  if (!v4)
  {
    goto LABEL_14;
  }

  if (!ColorSyncCreateCodeFragmentPriv_lastCodeFragment)
  {
    v5 = 0;
  }

  if (!v5)
  {
LABEL_14:
    if (ColorSyncCreateCodeFragmentPriv_lastSequence)
    {
      CFRelease(ColorSyncCreateCodeFragmentPriv_lastSequence);
    }

    ColorSyncCreateCodeFragmentPriv_lastSequence = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    if (ColorSyncCreateCodeFragmentPriv_lastOptions)
    {
      CFRelease(ColorSyncCreateCodeFragmentPriv_lastOptions);
    }

    ColorSyncCreateCodeFragmentPriv_lastOptions = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (ColorSyncCreateCodeFragmentPriv_lastCodeFragment)
    {
      CFRelease(ColorSyncCreateCodeFragmentPriv_lastCodeFragment);
    }

    v7 = ColorSyncTransformCreate(a1, a2);
    v8 = v7;
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, kColorSyncTransformCodeFragmentType);
      v10 = Value != 0;
      if (Value)
      {
        v11 = Value;
      }

      else
      {
        v11 = kColorSyncTransformParametricConversionData;
      }

      v12 = ColorSyncTransformInternalCopyProperty(v8, v11, a2);
    }

    else
    {
      v12 = ColorSyncTransformInternalCopyProperty(v7, kColorSyncTransformParametricConversionData, 0);
      v10 = 0;
    }

    ColorSyncCreateCodeFragmentPriv_lastCodeFragment = v12;
    if (!v10 && !v12)
    {
      v12 = ColorSyncTransformInternalCopyProperty(v8, kColorSyncTransformSimplifiedConversionData, a2);
      ColorSyncCreateCodeFragmentPriv_lastCodeFragment = v12;
    }

    if (v12)
    {
      v6 = CFRetain(v12);
      if (!v8)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v6 = 0;
      if (!v8)
      {
        goto LABEL_36;
      }
    }

    CFRelease(v8);
    goto LABEL_36;
  }

  v6 = CFRetain(ColorSyncCreateCodeFragmentPriv_lastCodeFragment);
LABEL_36:
  pthread_mutex_unlock(&ColorSyncCreateCodeFragmentPriv_mtx);
  return v6;
}

ColorSyncTransformRef create_colorsync_transform(void *a1, void *a2, const __CFDictionary *a3)
{
  keys[5] = *MEMORY[0x1E69E9840];
  keys[0] = kColorSyncProfile;
  keys[1] = kColorSyncRenderingIntent;
  keys[2] = kColorSyncTransformTag;
  keys[3] = kColorSyncExtendedRange;
  keys[4] = 0;
  values[0] = a1;
  values[1] = kColorSyncRenderingIntentUseProfileHeader;
  v4 = *MEMORY[0x1E695E4C0];
  values[2] = kColorSyncTransformDeviceToPCS;
  values[3] = v4;
  values[4] = 0;
  v5 = MEMORY[0x1E695E9D8];
  v6 = MEMORY[0x1E695E9E8];
  v7 = CFDictionaryCreate(0, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v16[0] = kColorSyncProfile;
  v16[1] = kColorSyncRenderingIntent;
  v16[2] = kColorSyncTransformTag;
  v16[3] = kColorSyncExtendedRange;
  v15[0] = a2;
  v15[1] = kColorSyncRenderingIntentUseProfileHeader;
  v15[2] = kColorSyncTransformPCSToDevice;
  v15[3] = v4;
  v8 = CFDictionaryCreate(0, v16, v15, 4, v5, v6);
  v14[0] = v7;
  v14[1] = v8;
  v9 = CFArrayCreate(0, v14, 2, MEMORY[0x1E695E9C0]);
  CFRelease(v7);
  CFRelease(v8);
  v10 = ColorSyncTransformCreate(v9, a3);
  CFRelease(v9);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t ColorSyncDefaultsGetBoolean(const char *a1, char *a2)
{
  v4 = getenv(a1);
  if (v4)
  {
    v5 = CFStringCreateWithCString(0, v4, 0x600u);
    if (v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v10 = CFStringCreateWithCString(0, a1, 0x600u);
  v9 = v10;
  if (v10)
  {
    v11 = *MEMORY[0x1E695E8B8];
    v12 = *MEMORY[0x1E695E898];
    v13 = CFPreferencesCopyValue(v10, *MEMORY[0x1E695E8A8], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    if (!v13)
    {
      v13 = CFPreferencesCopyValue(v9, *MEMORY[0x1E695E890], v11, v12);
      if (!v13)
      {
        v13 = CFPreferencesCopyValue(v9, @"com.apple.ColorSync", v11, v12);
      }
    }

    v5 = v13;
    CFRelease(v9);
    if (v5)
    {
LABEL_3:
      v6 = CFGetTypeID(v5);
      if (v6 == CFBooleanGetTypeID())
      {
        if (a2)
        {
          v7 = CFBooleanGetValue(v5) == 0;
LABEL_6:
          v8 = !v7;
          *a2 = v8;
        }
      }

      else
      {
        if (v6 == CFStringGetTypeID())
        {
          if (CFStringCompare(v5, @"Yes", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"True", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"1", 1uLL) == kCFCompareEqualTo)
          {
            v9 = 1;
            if (a2)
            {
              *a2 = 1;
            }

            goto LABEL_31;
          }

          if (CFStringCompare(v5, @"No", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"False", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"0", 1uLL) == kCFCompareEqualTo)
          {
            if (a2)
            {
              *a2 = 0;
            }

            goto LABEL_10;
          }
        }

        if (v6 != CFNumberGetTypeID() || (valuePtr = 0, !CFNumberGetValue(v5, kCFNumberIntType, &valuePtr)))
        {
          v9 = 0;
          goto LABEL_31;
        }

        if (a2)
        {
          v7 = valuePtr == 0;
          goto LABEL_6;
        }
      }

LABEL_10:
      v9 = 1;
LABEL_31:
      CFRelease(v5);
      return v9;
    }

    return 0;
  }

  return v9;
}

CFStringRef colorSyncProfileCopyDebugDescription(const ColorSyncProfile *a1)
{
  if (a1)
  {
    v2 = ColorSyncProfileCopyDescriptionString(a1);
    if (v2)
    {
      v3 = v2;
      v4 = ColorSyncProfileCopyHeader(a1);
      v5 = v4;
      if (v4 && (v6 = CFGetTypeID(v4), v6 == CFDataGetTypeID()) && CFDataGetLength(v5) >= 0x80)
      {
        Mutable = CFStringCreateMutable(0, 0);
        if (Mutable)
        {
          BytePtr = CFDataGetBytePtr(v5);
          CFStringAppendFormat(Mutable, 0, @"\n\tProfile size:\t%d", *BytePtr);
          CFStringAppendFormat(Mutable, 0, @"\n\tVersion:\t\t%x", *(BytePtr + 2));
          v9 = *(BytePtr + 3);
          v10 = @"???";
          if (v9 <= 1852662635)
          {
            switch(v9)
            {
              case 1633842036:
                v10 = @"Abstract profile";
                break;
              case 1818848875:
                v10 = @"Link profile";
                break;
              case 1835955314:
                v10 = @"Display profile";
                break;
            }
          }

          else if (v9 > 1935896177)
          {
            if (v9 == 1936744803)
            {
              v10 = @"Color Space profile";
            }

            else if (v9 == 1935896178)
            {
              v10 = @"Input profile";
            }
          }

          else if (v9 == 1852662636)
          {
            v10 = @"Named Color profile";
          }

          else if (v9 == 1886549106)
          {
            v10 = @"Output profile";
          }

          CFStringAppendFormat(Mutable, 0, @"\n\tClass:\t\t\t%@", v10);
          v17 = color_space(*(BytePtr + 4));
          CFStringAppendFormat(Mutable, 0, @"\n\tColor Space:\t%@", v17);
          v18 = color_space(*(BytePtr + 5));
          CFStringAppendFormat(Mutable, 0, @"\n\tPCS:\t\t\t%@", v18);
        }
      }

      else
      {
        Mutable = 0;
      }

      v13 = ColorSyncProfileCopyTagSignatures(a1);
      v14 = CFGetAllocator(a1);
      v15 = CFStringCreateWithFormat(v14, 0, @"<ColorSyncProfile %p\nheader:%@\ntags:\n%@;\ntagCopies:\n%@;\ndata: %@;\nurl:  %@;\ndesc: %@>", a1, Mutable, v13, *(a1 + 13), *(a1 + 14), *(a1 + 16), v3);
      if (v5)
      {
        CFRelease(v5);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      CFRelease(v3);
      return v15;
    }

    v11 = CFGetAllocator(a1);
    v12 = @"<NULL ColorSyncProfile description>";
  }

  else
  {
    v11 = CFGetAllocator(0);
    v12 = @"<NULL ColorSyncProfile>";
  }

  return CFStringCreateWithFormat(v11, 0, v12);
}

__CFString *color_space(int a1)
{
  v1 = @"???";
  if (a1 <= 1129142602)
  {
    if (a1 > 943934545)
    {
      v2 = 1111706705;
      v4 = @"11 Color";
      v13 = @"CMY";
      if (a1 != 1129142560)
      {
        v13 = @"???";
      }

      if (a1 == 1128483922)
      {
        v14 = @"12 Color";
      }

      else
      {
        v14 = v13;
      }

      if (a1 != 1111706706)
      {
        v4 = v14;
      }

      v7 = 943934546;
      v8 = @"2 Color";
      v9 = @"8 Color";
      v10 = 960711762;
      v11 = a1 == 1094929490;
      v12 = @"10 Color";
    }

    else
    {
      v2 = 893602897;
      v4 = @"5 Color";
      v5 = @"7 Color";
      if (a1 != 927157330)
      {
        v5 = @"???";
      }

      if (a1 == 910380114)
      {
        v6 = @"6 Color";
      }

      else
      {
        v6 = v5;
      }

      if (a1 != 893602898)
      {
        v4 = v6;
      }

      v7 = 843271250;
      v8 = @"2 Color";
      v9 = @"3 Color";
      v10 = 860048466;
      v11 = a1 == 876825682;
      v12 = @"4 Color";
    }

    goto LABEL_39;
  }

  if (a1 <= 1213421087)
  {
    v2 = 1178815569;
    v4 = @"15 Color";
    v15 = @"HLS";
    if (a1 != 1212961568)
    {
      v15 = @"???";
    }

    if (a1 == 1196573017)
    {
      v16 = @"GRAY";
    }

    else
    {
      v16 = v15;
    }

    if (a1 != 1178815570)
    {
      v4 = v16;
    }

    v7 = 1129142603;
    v8 = @"CMYK";
    v9 = @"13 Color";
    v10 = 1145261138;
    v11 = a1 == 1162038354;
    v12 = @"14 Color";
LABEL_39:
    if (v11)
    {
      v1 = v12;
    }

    if (a1 == v10)
    {
      v1 = v9;
    }

    if (a1 == v7)
    {
      v1 = v8;
    }

    goto LABEL_45;
  }

  if (a1 > 1380401695)
  {
    v2 = 1497588337;
    v3 = @"Yxy";
    if (a1 != 1501067552)
    {
      v3 = @"???";
    }

    if (a1 == 1497588338)
    {
      v4 = @"YCbCr";
    }

    else
    {
      v4 = v3;
    }

    if (a1 == 1482250784)
    {
      v1 = @"XYZ";
    }

    if (a1 == 1380401696)
    {
      v1 = @"RGB";
    }

LABEL_45:
    if (a1 <= v2)
    {
      return v1;
    }

    else
    {
      return v4;
    }
  }

  if (a1 == 1282766368)
  {
    v1 = @"Luv";
  }

  if (a1 == 1281450528)
  {
    v1 = @"Lab";
  }

  if (a1 == 1213421088)
  {
    return @"HSV";
  }

  else
  {
    return v1;
  }
}

int8x16_t ColorSyncSwapProfileHeader(uint64_t a1)
{
  *a1 = vrev32q_s8(*a1);
  v1 = vrev16_s8(*(a1 + 24));
  *(a1 + 16) = vrev32_s8(*(a1 + 16));
  *(a1 + 24) = v1;
  *(a1 + 32) = bswap32(*(a1 + 32)) >> 16;
  *(a1 + 34) = bswap32(*(a1 + 34)) >> 16;
  *(a1 + 36) = vrev32q_s8(*(a1 + 36));
  *(a1 + 52) = vrev32q_s8(*(a1 + 52));
  result = vrev32q_s8(*(a1 + 68));
  *(a1 + 68) = result;
  return result;
}

CFTypeRef copyLoacalizedStringFromResources(const __CFString *cf, int a2)
{
  v3 = cf;
  if (copyLoacalizedStringFromResources_predicate != -1)
  {
    dispatch_once(&copyLoacalizedStringFromResources_predicate, &__block_literal_global_546);
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!cf)
  {
    return 0;
  }

LABEL_3:
  if (copyLoacalizedStringFromResources_csBundle)
  {
    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(copyLoacalizedStringFromResources_csBundle, v3);
    v5 = a2 ? v3 : 0;
    v3 = ValueForInfoDictionaryKey ? ValueForInfoDictionaryKey : v5;
    if (!v3)
    {
      return 0;
    }
  }

  return CFRetain(v3);
}

CFBundleRef __copyLoacalizedStringFromResources_block_invoke()
{
  result = CFBundleGetBundleWithIdentifier(@"com.apple.ColorSync");
  copyLoacalizedStringFromResources_csBundle = result;
  return result;
}

uint64_t findDescByLanguage(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  result = CFStringHasPrefix(a1, *a3);
  if (result)
  {
    *(a3 + 8) = a2;
  }

  return result;
}

CFDataRef *system_profile_for_profile_from_data(CFDataRef *result)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_5;
  }

  v1 = result;
  if (!result[14] || *(result + 39))
  {
    result = 0;
LABEL_5:
    v2 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (*(CFDataGetBytePtr(result[15]) + 4) == 1380401696)
  {
    if (ColorSyncProfileContainsTag(v1, @"aarg") && ColorSyncProfileContainsTag(v1, @"aagg") && ColorSyncProfileContainsTag(v1, @"aabg") && ColorSyncProfileContainsTag(v1, @"aaRc") && ColorSyncProfileContainsTag(v1, @"aaGc") && ColorSyncProfileContainsTag(v1, @"aaBc"))
    {
      Tag = getTag(v1, @"aarg");
      v4 = getTag(v1, @"aagg");
      v5 = getTag(v1, @"aabg");
      LODWORD(v6) = 0;
      if (Tag)
      {
        if (v4)
        {
          v7 = v5;
          if (v5)
          {
            if (CFEqual(Tag, v4) == 1 && CFEqual(v4, v7))
            {
              BytePtr = CFDataGetBytePtr(Tag);
              v9 = Tag;
              v10 = BytePtr;
              LODWORD(v6) = 0;
              if (CFDataGetLength(v9) >= 0xC && v10)
              {
                if (get_preliminary_PQ_curve_data_predicate != -1)
                {
                  dispatch_once(&get_preliminary_PQ_curve_data_predicate, &__block_literal_global_555);
                }

                if (get_preliminary_PQ_curve_data_preliminary_PQ_data == *v10 && dword_1EAFE00E0 == *(v10 + 2))
                {
                  LODWORD(v6) = 16;
                }

                else
                {
                  if (get_preliminary_HLG_curve_data_predicate != -1)
                  {
                    dispatch_once(&get_preliminary_HLG_curve_data_predicate, &__block_literal_global_558);
                  }

                  if (get_preliminary_HLG_curve_data_preliminary_HLG_data ^ *v10 | dword_1EAFE00F8 ^ *(v10 + 2))
                  {
                    LODWORD(v6) = 0;
                  }

                  else
                  {
                    LODWORD(v6) = 18;
                  }
                }
              }
            }

            else
            {
              LODWORD(v6) = 0;
            }
          }
        }
      }

      v27 = ColorSyncProfileGetTag(v1, @"aaRc");
      v28 = ColorSyncProfileGetTag(v1, @"aaGc");
      v29 = @"aaBc";
    }

    else
    {
      if (!ColorSyncProfileContainsTag(v1, @"hdTF"))
      {
        LegacyDisplayP3 = ColorSyncProfileCreateLegacyDisplayP3();
        MD5 = ColorSyncProfileGetMD5(LegacyDisplayP3);
        Legacy2DisplayP3 = ColorSyncProfileCreateLegacy2DisplayP3();
        v20 = ColorSyncProfileGetMD5(Legacy2DisplayP3);
        v21 = *(v1 + 17);
        v22 = *(v1 + 18);
        v24 = v21 != *MD5.digest || v22 != *&MD5.digest[8];
        v26 = v21 != *v20.digest || v22 != *&v20.digest[8];
        if (v24 && v26)
        {
          goto LABEL_61;
        }

        result = create_DisplayP3Profile();
        goto LABEL_60;
      }

      v12 = ColorSyncProfileGetTag(v1, @"hdTF");
      v6 = v12;
      if (v12)
      {
        v13 = CFDataGetBytePtr(v12);
        Length = CFDataGetLength(v6);
        LODWORD(v6) = 0;
        if (v13)
        {
          if (Length >= 0xC)
          {
            if (*v13 == 543648115)
            {
              v15 = *(v13 + 2);
              if (v15 == 541543496)
              {
                v16 = 18;
              }

              else
              {
                v16 = 0;
              }

              if (v15 == 538988880)
              {
                LODWORD(v6) = 16;
              }

              else
              {
                LODWORD(v6) = v16;
              }
            }

            else
            {
              LODWORD(v6) = 0;
            }
          }
        }
      }

      v27 = ColorSyncProfileGetTag(v1, @"rXYZ");
      v28 = ColorSyncProfileGetTag(v1, @"gXYZ");
      v29 = @"bXYZ";
    }

    v30 = ColorSyncProfileGetTag(v1, v29);
    v31 = primaries_from_tag_data(v27, v28, v30);
    result = system_profile_from_cicp(v31, v6);
LABEL_60:
    if (result)
    {
      goto LABEL_5;
    }
  }

LABEL_61:
  v32 = *MEMORY[0x1E69E9840];

  return ColorSyncProfileFindMatchingSystemProfile(v1);
}

void evaluate_cicp(uint64_t a1)
{
  if (!a1 || !*(a1 + 112) || *(a1 + 156) || *(CFDataGetBytePtr(*(a1 + 120)) + 4) != 1380401696 || ColorSyncProfileGetCICPInfo(a1))
  {
    return;
  }

  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID || ColorSyncProfileGetCICPInfo(a1))
  {
    return;
  }

  v3 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v3 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
LABEL_64:
    v22 = CFGetTypeID(a1);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v22 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      v23 = 0;
      while (1)
      {
        Tag = ColorSyncProfileGetTag(a1, off_1E7524508[v23]);
        if (!Tag)
        {
          break;
        }

        v25 = Tag;
        BytePtr = CFDataGetBytePtr(Tag);
        if (CFDataGetLength(v25) < 0x14)
        {
          break;
        }

        if (v23 == 2)
        {
          if (ColorSyncProfileGetDisplayP3BluePrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetDisplayP3BluePrimary_predicate, &__block_literal_global_337);
          }

          v27 = &ColorSyncProfileGetDisplayP3BluePrimary_bXYZ;
        }

        else if (v23 == 1)
        {
          if (ColorSyncProfileGetDisplayP3GreenPrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetDisplayP3GreenPrimary_predicate, &__block_literal_global_334);
          }

          v27 = &ColorSyncProfileGetDisplayP3GreenPrimary_gXYZ;
        }

        else
        {
          if (ColorSyncProfileGetDisplayP3RedPrimary_predicate[0] != -1)
          {
            dispatch_once(ColorSyncProfileGetDisplayP3RedPrimary_predicate, &__block_literal_global_331);
          }

          v27 = &ColorSyncProfileGetDisplayP3RedPrimary_rXYZ;
        }

        v28 = *v27;
        v29 = *(v27 + 1);
        v30 = *(v27 + 4);
        v33 = v28 != *BytePtr || v29 != *(BytePtr + 1) || v30 != *(BytePtr + 4);
        if (v23 <= 1)
        {
          ++v23;
          if (!v33)
          {
            continue;
          }
        }

        if (v33)
        {
          break;
        }

        if (ColorSyncProfileHasSRGB_Transfer(a1))
        {
          v21 = 5;
          goto LABEL_149;
        }

        if (ColorSyncProfileHasLinear_Transfer(a1))
        {
          v21 = 6;
          goto LABEL_149;
        }

        if (ColorSyncProfileIsPQBased(a1))
        {
          v21 = 7;
          goto LABEL_149;
        }

        v46 = !ColorSyncProfileIsHLGBased(a1);
        v47 = 9;
        goto LABEL_145;
      }
    }

    v34 = CFGetTypeID(a1);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v34 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      v35 = 0;
      while (1)
      {
        v36 = ColorSyncProfileGetTag(a1, off_1E7524508[v35]);
        if (!v36)
        {
          break;
        }

        v37 = v36;
        v38 = CFDataGetBytePtr(v36);
        if (CFDataGetLength(v37) < 0x14)
        {
          break;
        }

        if (v35 == 2)
        {
          if (ColorSyncProfileGetBT2020BluePrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetBT2020BluePrimary_predicate, &__block_literal_global_328);
          }

          v39 = &ColorSyncProfileGetBT2020BluePrimary_bXYZ;
        }

        else if (v35 == 1)
        {
          if (ColorSyncProfileGetBT2020GreenPrimary_predicate != -1)
          {
            dispatch_once(&ColorSyncProfileGetBT2020GreenPrimary_predicate, &__block_literal_global_325);
          }

          v39 = &ColorSyncProfileGetBT2020GreenPrimary_gXYZ;
        }

        else
        {
          if (ColorSyncProfileGetBT2020RedPrimary_predicate[0] != -1)
          {
            dispatch_once(ColorSyncProfileGetBT2020RedPrimary_predicate, &__block_literal_global_322);
          }

          v39 = &ColorSyncProfileGetBT2020RedPrimary_rXYZ;
        }

        v40 = *v39;
        v41 = *(v39 + 1);
        v42 = *(v39 + 4);
        v45 = v40 != *v38 || v41 != *(v38 + 1) || v42 != *(v38 + 4);
        if (v35 <= 1)
        {
          ++v35;
          if (!v45)
          {
            continue;
          }
        }

        if (v45)
        {
          return;
        }

        if (ColorSyncProfileHasBT709_Transfer(a1))
        {
          v21 = 9;
          goto LABEL_149;
        }

        if (ColorSyncProfileHasLinear_Transfer(a1))
        {
          v21 = 10;
          goto LABEL_149;
        }

        if (ColorSyncProfileIsPQBased(a1))
        {
          v21 = 11;
          goto LABEL_149;
        }

        if (ColorSyncProfileIsHLGBased(a1))
        {
          v21 = 12;
          goto LABEL_149;
        }

        v46 = !ColorSyncProfileHasSRGB_Transfer(a1);
        v47 = 14;
        goto LABEL_145;
      }
    }

    return;
  }

  v4 = 0;
  do
  {
    v5 = ColorSyncProfileGetTag(a1, off_1E7524508[v4]);
    if (!v5)
    {
      goto LABEL_64;
    }

    v6 = v5;
    v7 = CFDataGetBytePtr(v5);
    if (CFDataGetLength(v6) < 0x14)
    {
      goto LABEL_64;
    }

    if (v4 == 2)
    {
      if (ColorSyncProfileGetBT709BluePrimary_predicate != -1)
      {
        dispatch_once(&ColorSyncProfileGetBT709BluePrimary_predicate, &__block_literal_global_319);
      }

      v18 = ColorSyncProfileGetBT709BluePrimary_bXYZ == *v7 && *(&ColorSyncProfileGetBT709BluePrimary_bXYZ + 1) == *(v7 + 1) && dword_1ED4E2600 == *(v7 + 4);
      v10 = "XYZ ";
      if (v18)
      {
LABEL_46:
        v16 = 1;
        goto LABEL_47;
      }
    }

    else if (v4 == 1)
    {
      if (ColorSyncProfileGetBT709GreenPrimary_predicate != -1)
      {
        dispatch_once(&ColorSyncProfileGetBT709GreenPrimary_predicate, &__block_literal_global_316);
      }

      v9 = ColorSyncProfileGetBT709GreenPrimary_gXYZ == *v7 && *(&ColorSyncProfileGetBT709GreenPrimary_gXYZ + 1) == *(v7 + 1) && dword_1ED4E25E0 == *(v7 + 4);
      v10 = "XYZ ";
      if (v9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (ColorSyncProfileGetBT709RedPrimary_predicate[0] != -1)
      {
        dispatch_once(ColorSyncProfileGetBT709RedPrimary_predicate, &__block_literal_global_313);
      }

      v20 = ColorSyncProfileGetBT709RedPrimary_rXYZ == *v7 && *(&ColorSyncProfileGetBT709RedPrimary_rXYZ + 1) == *(v7 + 1) && dword_1ED4E25B0 == *(v7 + 4);
      v10 = "XYZ ";
      if (v20)
      {
        goto LABEL_46;
      }
    }

    v11 = *v10;
    v12 = *(v10 + 1);
    v13 = *(v10 + 4);
    v16 = v11 == *v7 && v12 == *(v7 + 1) && v13 == *(v7 + 4);
LABEL_47:
    if (v4 > 1)
    {
      break;
    }

    ++v4;
  }

  while (v16);
  if (!v16)
  {
    goto LABEL_64;
  }

  if (ColorSyncProfileHasBT709_Transfer(a1))
  {
    v21 = 0;
LABEL_149:
    *(a1 + 248) = &valid_cicp + 4 * v21;
    return;
  }

  if (ColorSyncProfileIsPQBased(a1))
  {
    v21 = 1;
    goto LABEL_149;
  }

  if (ColorSyncProfileIsHLGBased(a1))
  {
    v21 = 2;
    goto LABEL_149;
  }

  if (ColorSyncProfileHasSRGB_Transfer(a1))
  {
    v21 = 3;
    goto LABEL_149;
  }

  v46 = !ColorSyncProfileHasLinear_Transfer(a1);
  v47 = 5;
LABEL_145:
  if (v46)
  {
    v47 = 0;
  }

  v21 = v47 - 1;
  if (v21 <= 0xD)
  {
    goto LABEL_149;
  }
}

uint64_t primaries_from_tag_data(CFTypeRef cf1, const void *a2, const void *a3)
{
  if (tags_define_709_primaries_predicate != -1)
  {
    dispatch_once(&tags_define_709_primaries_predicate, &__block_literal_global_615);
  }

  if (cf1)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 || a3 == 0;
  v8 = !v7;
  if (!v7 && CFEqual(cf1, tags_define_709_primaries_r709) && CFEqual(a2, tags_define_709_primaries_g709) && CFEqual(a3, tags_define_709_primaries_b709))
  {
    return 1;
  }

  if (tags_define_DisplayP3_primaries_predicate == -1)
  {
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  else
  {
    dispatch_once(&tags_define_DisplayP3_primaries_predicate, &__block_literal_global_618);
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (CFEqual(cf1, tags_define_DisplayP3_primaries_rDP3) && CFEqual(a2, tags_define_DisplayP3_primaries_gDP3) && CFEqual(a3, tags_define_DisplayP3_primaries_bDP3))
  {
    return 12;
  }

LABEL_24:
  if (tags_define_BT2020_primaries_predicate != -1)
  {
    dispatch_once(&tags_define_BT2020_primaries_predicate, &__block_literal_global_621);
    if (v8)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

LABEL_26:
  result = CFEqual(cf1, tags_define_BT2020_primaries_r2020);
  if (result)
  {
    result = CFEqual(a2, tags_define_BT2020_primaries_g2020);
    if (result)
    {
      if (CFEqual(a3, tags_define_BT2020_primaries_b2020))
      {
        return 9;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

ColorSyncProfileRef system_profile_from_cicp(int a1, int a2)
{
  if (a2 == 18)
  {
    switch(a1)
    {
      case 1:
        v2 = kColorSyncITUR709_HLGProfile;
        return ColorSyncProfileCreateWithName(*v2);
      case 12:
        v2 = kColorSyncDisplayP3_HLGProfile;
        return ColorSyncProfileCreateWithName(*v2);
      case 9:
        v2 = kColorSyncITUR2100_HLGProfile;
        return ColorSyncProfileCreateWithName(*v2);
    }

    return 0;
  }

  if (a2 != 16)
  {
    return 0;
  }

  if (a1 == 1)
  {
    v2 = kColorSyncITUR709_PQProfile;
    return ColorSyncProfileCreateWithName(*v2);
  }

  if (a1 == 12)
  {
    v2 = kColorSyncDisplayP3_PQProfile;
    return ColorSyncProfileCreateWithName(*v2);
  }

  if (a1 != 9)
  {
    return 0;
  }

  v2 = kColorSyncITUR2100_PQProfile;
  return ColorSyncProfileCreateWithName(*v2);
}

const void *__tags_define_709_primaries_block_invoke()
{
  v0 = ColorSyncProfileCreateWithName(kColorSyncSRGBProfile);
  tags_define_709_primaries_r709 = ColorSyncProfileGetTag(v0, @"rXYZ");
  tags_define_709_primaries_g709 = ColorSyncProfileGetTag(v0, @"gXYZ");
  result = ColorSyncProfileGetTag(v0, @"bXYZ");
  tags_define_709_primaries_b709 = result;
  return result;
}

void *ColorSyncProfileCreateSingleton(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFString *a5, uint64_t a6, uint64_t a7)
{
  v11 = create(a1, a2, 2, a6);
  v12 = v11;
  if (v11)
  {
    v11[17] = a3;
    v11[18] = a4;
    if (a5)
    {
      v11[16] = CFURLCreateWithFileSystemPath(0, a5, kCFURLPOSIXPathStyle, 0);
    }

    if ((a7 - 1) <= 0xD)
    {
      v12[31] = &valid_cicp + 4 * a7 - 4;
    }
  }

  return v12;
}

char *__use_xpc_only_block_invoke()
{
  result = getenv("COLORSYNC_XPC_ONLY");
  if (result)
  {
    use_xpc_only_xpc_only = 1;
  }

  return result;
}

uint64_t ColorSyncProfileCreateWithURLAndOptions(const void *a1, CFDictionaryRef theDict, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_12;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFURLGetTypeID())
  {
    goto LABEL_12;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFURLGetTypeID())
  {
    goto LABEL_12;
  }

  bzero(buffer, 0x401uLL);
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1025) || access(buffer, 4))
  {
    goto LABEL_12;
  }

  if (use_xpc_only_predicate != -1)
  {
    dispatch_once(&use_xpc_only_predicate, &__block_literal_global_541);
  }

  if (use_xpc_only_xpc_only)
  {
    goto LABEL_12;
  }

  v8 = open(buffer, 0, 0);
  if (v8 < 0)
  {
    goto LABEL_12;
  }

  v9 = v8;
  memset(&v22, 0, sizeof(v22));
  if (fstat(v8, &v22))
  {
    goto LABEL_11;
  }

  if ((v22.st_mode & 0xF000) != 0x8000)
  {
    goto LABEL_11;
  }

  if ((v22.st_size - 1) > 0x1FFFFFFE)
  {
    goto LABEL_11;
  }

  v16 = malloc_type_malloc(v22.st_size, 0x5BC13B6FuLL);
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = v16;
  bzero(v16, v22.st_size);
  v18 = read(v9, v17, v22.st_size);
  if (v18 != v22.st_size)
  {
    free(v17);
LABEL_11:
    close(v9);
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v19 = v18;
  close(v9);
  if (colorSyncBytesDeallocator_predicate != -1)
  {
    dispatch_once(&colorSyncBytesDeallocator_predicate, &__block_literal_global_1023);
  }

  v20 = CFDataCreateWithBytesNoCopy(0, v17, v19, colorSyncBytesDeallocator_colorSyncAllocator);
  if (!v20)
  {
    goto LABEL_12;
  }

  v21 = v20;
  v10 = create(0, v20, 0, 0);
  CFRelease(v21);
  if (v10)
  {
    *(v10 + 128) = CFRetain(a1);
  }

LABEL_13:
  if (!theDict || !CFDictionaryContainsKey(theDict, kColorSyncDoNotSubstituteProfiles) || (Value = CFDictionaryGetValue(theDict, kColorSyncDoNotSubstituteProfiles), CFEqual(Value, *MEMORY[0x1E695E4D0]) != 1))
  {
    v12 = system_profile_for_profile_from_data(v10);
    if (v12)
    {
      v13 = v12;
      CFRelease(v10);
      v10 = v13;
    }
  }

  evaluate_cicp(v10);
  if (a3)
  {
    *a3 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t ColorSyncProfileCreateWithURLWithoutSubstitution(const void *a1)
{
  if (ColorSyncProfileCreateWithURLWithoutSubstitution_once != -1)
  {
    dispatch_once(&ColorSyncProfileCreateWithURLWithoutSubstitution_once, &__block_literal_global_277);
  }

  v2 = ColorSyncProfileCreateWithURLWithoutSubstitution_options;

  return ColorSyncProfileCreateWithURLAndOptions(a1, v2, 0);
}

CFDictionaryRef __ColorSyncProfileCreateWithURLWithoutSubstitution_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = kColorSyncDoNotSubstituteProfiles;
  values = *MEMORY[0x1E695E4D0];
  result = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  ColorSyncProfileCreateWithURLWithoutSubstitution_options = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

CFURLRef ColorSyncProfileGetURL(CFURLRef prof, CFErrorRef *error)
{
  if (!prof)
  {
LABEL_6:
    if (!error)
    {
      return prof;
    }

    goto LABEL_7;
  }

  v3 = prof;
  v4 = CFGetTypeID(prof);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v4 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    prof = *(v3 + 16);
    goto LABEL_6;
  }

  prof = 0;
  if (!error)
  {
    return prof;
  }

LABEL_7:
  *error = 0;
  return prof;
}

ColorSyncProfileRef ColorSyncProfileCreateLink(CFArrayRef profileInfo, CFDictionaryRef options)
{
  if (!profileInfo)
  {
    return 0;
  }

  v4 = CFGetTypeID(profileInfo);
  if (v4 != CFArrayGetTypeID())
  {
    return 0;
  }

  v5 = create(0, 0, 1, 0);
  if (v5)
  {
    if ((v6 = ColorSyncCMMCreateAppleCMM(), v7 = CFGetTypeID(profileInfo), v7 != CFArrayGetTypeID()) || options && (v8 = CFGetTypeID(options), v8 != CFDictionaryGetTypeID()) || (v9 = v6[9]) == 0 || (v9(v5, profileInfo, options) & 1) == 0)
    {
      CFRelease(v5);
      return 0;
    }
  }

  return v5;
}

__CFDictionary *ColorSyncProfileCopyLocalizedStringDictionary(void *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v4 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  v5 = a1[12];
  if (!v5)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v5, a2);
  if (!Value)
  {
    return 0;
  }

  v7 = Value;
  if (*CFDataGetBytePtr(Value) != 1668639853 || *CFDataGetBytePtr(v7) != 1668639853)
  {
    return 0;
  }

  return copy_description_dict_from_DSCMTag(v7);
}

void removeReference(uint64_t a1, const void *a2)
{
  v8 = a2;
  key = 0;
  CFDictionaryApplyFunction(*(a1 + 96), tagValueComparer, &v8);
  v4 = key;
  if (key)
  {
    v5 = *(a1 + 96);
    Value = CFDictionaryGetValue(v5, a2);
    CFDictionarySetValue(v5, v4, Value);
    CFDictionaryRemoveValue(*(a1 + 96), a2);
    v7 = key;
    do
    {
      key = 0;
      CFDictionaryApplyFunction(*(a1 + 96), tagValueComparer, &v8);
      if (!key)
      {
        break;
      }

      CFDictionarySetValue(*(a1 + 96), key, v7);
    }

    while (key);
  }
}

void ColorSyncProfileRemoveTag(ColorSyncMutableProfileRef prof, CFStringRef signature)
{
  if (prof)
  {
    v4 = CFGetTypeID(prof);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v4 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      if (signature)
      {
        if (*(prof + 39) == 1)
        {
          v5 = CFGetTypeID(signature);
          if (v5 == CFStringGetTypeID())
          {
            pthread_mutex_lock((prof + 24));
            if (CFDictionaryContainsKey(*(prof + 12), signature))
            {
              if (CFDictionaryContainsValue(*(prof + 12), signature))
              {
                removeReference(prof, signature);
              }

              else
              {
                CFDictionaryRemoveValue(*(prof + 12), signature);
              }

              v6 = *(prof + 14);
              if (v6)
              {
                CFRelease(v6);
                *(prof + 14) = 0;
              }

              *(prof + 17) = 0;
              *(prof + 18) = 0;
            }

            pthread_mutex_unlock((prof + 24));
          }
        }
      }
    }
  }
}

void ColorSyncIterateInstalledProfiles(ColorSyncProfileIterateCallback callBack, uint32_t *seed, void *userInfo, CFErrorRef *error)
{
  v4 = userInfo;
  v36 = *MEMORY[0x1E69E9840];
  if (error)
  {
    *error = 0;
  }

  if (callBack)
  {
    v33 = seed;
    v34[0] = kColorSyncACESCGLinearProfile;
    v34[1] = kColorSyncAdobeRGB1998Profile;
    v34[2] = kColorSyncDCIP3Profile;
    v34[3] = kColorSyncDisplayP3Profile;
    v34[4] = kColorSyncGenericCMYKProfile;
    v34[5] = kColorSyncGenericGrayGamma22Profile;
    v34[6] = kColorSyncGenericGrayProfile;
    v34[7] = kColorSyncGenericLabProfile;
    v34[8] = kColorSyncGenericRGBProfile;
    v34[9] = kColorSyncGenericXYZProfile;
    v34[10] = kColorSyncITUR2020Profile;
    v34[11] = kColorSyncITUR709Profile;
    v34[12] = kColorSyncROMMRGBProfile;
    v34[13] = kColorSyncSRGBProfile;
    v34[14] = kColorSyncWebSafeColorsProfile;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v7 = 0;
      v8 = MEMORY[0x1E695E9D8];
      v9 = MEMORY[0x1E695E9E8];
      do
      {
        v10 = ColorSyncProfileCreateWithName(v34[v7]);
        v11 = CFDictionaryCreateMutable(0, 0, v8, v9);
        if (v11)
        {
          URL = ColorSyncProfileGetURL(v10, 0);
          if (URL)
          {
            CFDictionarySetValue(v11, kColorSyncProfileURL, URL);
          }

          v13 = ColorSyncProfileCopyHeader(v10);
          if (v13)
          {
            v14 = v13;
            v15 = v8;
            BytePtr = CFDataGetBytePtr(v13);
            CFDictionarySetValue(v11, kColorSyncProfileHeader, v14);
            SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode(BytePtr[3]);
            CFDictionarySetValue(v11, kColorSyncProfileClass, SignatureFromFourCharCode);
            CFRelease(SignatureFromFourCharCode);
            v18 = ColorSyncCreateSignatureFromFourCharCode(BytePtr[4]);
            CFDictionarySetValue(v11, kColorSyncProfileColorSpace, v18);
            CFRelease(v18);
            v19 = ColorSyncCreateSignatureFromFourCharCode(BytePtr[5]);
            CFDictionarySetValue(v11, kColorSyncProfilePCS, v19);
            CFRelease(v19);
            v20 = ColorSyncProfileCopyDescriptionString(v10);
            if (v20)
            {
              v21 = v20;
              CFDictionarySetValue(v11, kColorSyncProfileDescription, v20);
              CFRelease(v21);
            }

            v22 = ColorSyncProfileCopyASCIIDescriptionString(v10);
            if (v22)
            {
              v23 = v22;
              CFDictionarySetValue(v11, kColorSyncProfileASCIIDescription, v22);
              CFRelease(v23);
            }

            bytes = ColorSyncProfileGetMD5(v10);
            v24 = CFDataCreate(0, bytes.digest, 16);
            if (v24)
            {
              v25 = v24;
              CFDictionarySetValue(v11, kColorSyncProfileMD5Digest, v24);
              CFRelease(v25);
            }

            CFRelease(v14);
            v8 = v15;
          }
        }

        if (v10)
        {
          CFRelease(v10);
        }

        CFArrayAppendValue(Mutable, v11);
        CFRelease(v11);
        ++v7;
      }

      while (v7 != 15);
    }

    v4 = userInfo;
    seed = v33;
    if (v33)
    {
      goto LABEL_21;
    }
  }

  else
  {
    Mutable = 0;
    if (seed)
    {
LABEL_21:
      ++*seed;
    }
  }

  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
    v27 = Count - 1;
    if (Count >= 1)
    {
      v28 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v28);
        if (!(callBack)(ValueAtIndex, v4))
        {
          break;
        }
      }

      while (v27 != v28++);
    }

    CFRelease(Mutable);
  }

  v31 = *MEMORY[0x1E69E9840];
}

float ColorSyncProfileEstimateGamma(ColorSyncProfileRef prof, CFErrorRef *error)
{
  v17 = 0;
  v2 = 0.0;
  if (prof)
  {
    v4 = CFGetTypeID(prof);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v4 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      v19 = 0;
      CMMMemMgr::CMMMemMgr(&v19);
      v18 = &unk_1F0E0A3B8;
      Profile = CMMProfileMaker::MakeProfile(prof, &v19, 0);
      Tag = CMMProfile::GetTag(Profile, 1800688195);
      {
        v10 = (*(*v8 + 80))(v8, &v17, 0.05);
      }

      v12 = *(Profile + 2) - 1;
      *(Profile + 2) = v12;
      if (!v12)
      {
        (*(*Profile + 8))(Profile);
      }

      if (v19)
      {
        v13 = *v19;
        if (*v19)
        {
          do
          {
            v14 = *v13;
            free(v13);
            v13 = v14;
          }

          while (v14);
        }
      }

      CMMMemMgr::ReleaseMemList(&v19);
      if (v17)
      {
        return v10;
      }

      else
      {
        return floor(v10 * 10.0 + 0.5) / 10.0;
      }
    }
  }

  return v2;
}

void sub_19A941DEC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  v13 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v14 = *v13;
    if (a12)
    {
      v15 = *a12;
      if (*a12)
      {
        do
        {
          v16 = *v15;
          free(v15);
          v15 = v16;
        }

        while (v16);
      }
    }
  }

  else if (a12)
  {
    v17 = *a12;
    if (*a12)
    {
      do
      {
        v18 = *v17;
        free(v17);
        v17 = v18;
      }

      while (v18);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x19A941D78);
}

void sub_19A941EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

double __ColorSyncProfileGetDCIP3BluePrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetDCIP3BluePrimary_bXYZ = xmmword_19A96E130;
  dword_1EAFE01E0 = 1355284480;
  return result;
}

double __ColorSyncProfileGetDCIP3GreenPrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetDCIP3GreenPrimary_gXYZ = xmmword_19A96E140;
  dword_1EAFE01C0 = 285933568;
  return result;
}

double __ColorSyncProfileGetDCIP3RedPrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetDCIP3RedPrimary_rXYZ = xmmword_19A96E150;
  dword_1EAFE01A0 = -872415233;
  return result;
}

double __ColorSyncProfileGetBT601BluePrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetBT601BluePrimary_bXYZ = xmmword_19A96E190;
  dword_1EAFE0180 = -1682702336;
  return result;
}

double __ColorSyncProfileGetBT601GreenPrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetBT601GreenPrimary_gXYZ = xmmword_19A96E1A0;
  dword_1EAFE0160 = -652607488;
  return result;
}

double __ColorSyncProfileGetBT601RedPrimary_block_invoke()
{
  *&result = 542792024;
  ColorSyncProfileGetBT601RedPrimary_rXYZ = xmmword_19A96E1B0;
  dword_1EAFE0140 = -1207762944;
  return result;
}

CFIndex ColorSyncProfileGetTagCount(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  v3 = ColorSyncProfileCopyTagSignatures(a1);
  if (!v3)
  {
    return 0;
  }

  return CFArrayGetCount(v3);
}

BOOL ColorSyncProfileWriteToFile(const ColorSyncProfile *a1, char *a2)
{
  v2 = 0;
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = ColorSyncProfileCopyData(a1, 0);
      if (v4)
      {
        v5 = v4;
        bzero(__str, 0x401uLL);
        if (*v3 == 42 && v3[1] == 47)
        {
          if (ColorSyncGetTempDirPath_predicate != -1)
          {
            dispatch_once(&ColorSyncGetTempDirPath_predicate, &__block_literal_global_540);
          }

          v12 = v3 + 2;
          v3 = __str;
          snprintf(__str, 0x400uLL, "%s%s", &ColorSyncGetTempDirPath_tempDirPath, v12);
        }

        v6 = fopen(v3, "wb");
        if (v6)
        {
          v7 = v6;
          BytePtr = CFDataGetBytePtr(v5);
          Length = CFDataGetLength(v5);
          v2 = fwrite(BytePtr, Length, 1uLL, v7) == 1;
          fclose(v7);
        }

        else
        {
          v2 = 0;
        }

        CFRelease(v5);
      }

      else
      {
        v2 = 0;
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

const ColorSyncProfile *ColorSyncDataCanBeIgnoredOnSRGBDevice(const __CFData *a1)
{
  result = ColorSyncProfileCreate(a1, 0);
  if (result)
  {
    v2 = result;
    v3 = ColorSyncProfileContainsTag(result, @"aapy");
    CFRelease(v2);
    return v3;
  }

  return result;
}

BOOL ColorSyncProfileUsesSRGBGamma(uint64_t a1)
{
  Tag = ColorSyncProfileGetTag(a1, @"rTRC");
  if (!Tag)
  {
    Tag = ColorSyncProfileGetTag(a1, @"aarg");
  }

  if (!AppleCMMVerifySRGBGamma(Tag))
  {
    return 0;
  }

  v3 = ColorSyncProfileGetTag(a1, @"gTRC");
  if (!v3)
  {
    v3 = ColorSyncProfileGetTag(a1, @"aagg");
  }

  if (!AppleCMMVerifySRGBGamma(v3))
  {
    return 0;
  }

  v4 = ColorSyncProfileGetTag(a1, @"bTRC");
  if (!v4)
  {
    v4 = ColorSyncProfileGetTag(a1, @"aabg");
  }

  return AppleCMMVerifySRGBGamma(v4);
}

double ColorSyncProfileGetWhitePoint(const void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  XYZColor = ColorSyncProfileGetXYZColor(a1, @"wtpt");
  v3 = vcvtd_n_f64_s32(XYZColor, 0x10uLL);
  v4 = vcvtd_n_f64_s32(HIDWORD(XYZColor), 0x10uLL);
  v6 = vcvtd_n_f64_s32(v5, 0x10uLL);
  if (a1)
  {
    v7 = CFGetTypeID(a1);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v7 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      v8 = ColorSyncProfileCopyHeader(a1);
      if (v8)
      {
        v9 = v8;
        BytePtr = CFDataGetBytePtr(v8);
        if (BytePtr && *(BytePtr + 9) == 1633907568)
        {
          v11 = *(BytePtr + 2);
          CFRelease(v9);
          if (v11 >> 26)
          {
            Tag = ColorSyncProfileGetTag(a1, @"chad");
            if (Tag)
            {
              v13 = Tag;
              v14 = CFDataGetBytePtr(Tag);
              if (v14)
              {
                v15 = v14;
                if (CFDataGetLength(v13) >= 1 && CFDataGetLength(v13) >= 0x2C)
                {
                  v16 = vrev32_s8(v15[1]);
                  v17.i64[0] = v16.i32[0];
                  v17.i64[1] = v16.i32[1];
                  v18 = vdupq_n_s64(0x3EF0000000000000uLL);
                  v19 = vmulq_f64(vcvtq_f64_s64(v17), v18);
                  v20 = vrev32_s8(v15[2]);
                  v17.i64[0] = v20.i32[0];
                  v17.i64[1] = v20.i32[1];
                  v25 = v19;
                  v26 = vmulq_f64(vcvtq_f64_s64(v17), v18);
                  *&v19.f64[0] = vrev32_s8(v15[3]);
                  v17.i64[0] = SLODWORD(v19.f64[0]);
                  v17.i64[1] = SHIDWORD(v19.f64[0]);
                  v21 = vmulq_f64(vcvtq_f64_s64(v17), v18);
                  v22 = vrev32_s8(v15[4]);
                  v17.i64[0] = v22.i32[0];
                  v17.i64[1] = v22.i32[1];
                  v27 = v21;
                  v28 = vmulq_f64(vcvtq_f64_s64(v17), v18);
                  v29 = vcvtd_n_f64_s32(bswap32(v15[5].u32[0]), 0x10uLL);
                  if (InvertMatrix(v25.f64))
                  {
                    v3 = v4 * v25.f64[1] + v3 * v25.f64[0] + v6 * v26.f64[0];
                  }
                }
              }
            }
          }
        }

        else
        {
          CFRelease(v9);
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v3;
}

float *ColorSyncProfileGetLuminanceCoefficients(float *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  v3 = a1 + 40;
  if (a1[40] == 0.0)
  {
    add_basic_formulas(a1);
    if (a1[40] == 0.0)
    {
      return 0;
    }
  }

  return v3;
}

void add_basic_formulas(uint64_t a1)
{
  v94[9] = *MEMORY[0x1E69E9840];
  v2 = ColorSyncProfileCopyHeader(a1);
  if (!v2)
  {
    v44 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = v2;
  BytePtr = CFDataGetBytePtr(v2);
  if (BytePtr && *(BytePtr + 4) == 1380401696)
  {
    pthread_mutex_lock((a1 + 24));
    if (*(a1 + 160) == 0.0 || *(a1 + 176) == 0.0 || *(a1 + 212) == 0.0)
    {
      Tag = ColorSyncProfileGetTag(a1, @"wtpt");
      v6 = ColorSyncProfileGetTag(a1, @"rXYZ");
      v81 = v6;
      v7 = ColorSyncProfileGetTag(a1, @"gXYZ");
      v80 = v7;
      v8 = ColorSyncProfileGetTag(a1, @"bXYZ");
      v79 = v8;
      if (v6)
      {
        if (v7)
        {
          v9 = v8;
          if (v8)
          {
LABEL_12:
            v10 = verified_icXYZType_data_ptr(Tag);
            v11 = verified_icXYZType_data_ptr(v6);
            v12 = verified_icXYZType_data_ptr(v7);
            v13 = verified_icXYZType_data_ptr(v9);
            if (v10)
            {
              if (v11)
              {
                if (v12)
                {
                  v14 = v13;
                  if (v13)
                  {
                    WhitePoint = ColorSyncProfileGetWhitePoint(a1);
                    v17 = v16;
                    v19 = v18;
                    v77.f64[0] = WhitePoint;
                    v77.f64[1] = v16;
                    v78 = v18;
                    v20 = vrev32_s8(v11[1]);
                    v21.i64[0] = v20.i32[0];
                    v21.i64[1] = v20.i32[1];
                    v22 = vdupq_n_s64(0x3EF0000000000000uLL);
                    v75 = vmulq_f64(vcvtq_f64_s64(v21), v22);
                    v76 = vcvtd_n_f64_s32(bswap32(v11[2].u32[0]), 0x10uLL);
                    v23 = vrev32_s8(v12[1]);
                    v21.i64[0] = v23.i32[0];
                    v21.i64[1] = v23.i32[1];
                    v73 = vmulq_f64(vcvtq_f64_s64(v21), v22);
                    v74 = vcvtd_n_f64_s32(bswap32(v12[2].u32[0]), 0x10uLL);
                    v24 = vrev32_s8(v14[1]);
                    v21.i64[0] = v24.i32[0];
                    v21.i64[1] = v24.i32[1];
                    v71 = vmulq_f64(vcvtq_f64_s64(v21), v22);
                    v72 = vcvtd_n_f64_s32(bswap32(v14[2].u32[0]), 0x10uLL);
                    v69 = 0uLL;
                    v70 = 0.0;
                    v67 = 0uLL;
                    v68 = 0.0;
                    v65 = 0uLL;
                    v66 = 0.0;
                    ColorSyncConvertDoubleXYZFromD50(&v75, &v77, &v69, 3, 0);
                    ColorSyncConvertDoubleXYZFromD50(&v73, &v77, &v67, 3, 0);
                    ColorSyncConvertDoubleXYZFromD50(&v71, &v77, &v65, 3, 0);
                    v25 = v69.f64[0] + v69.f64[1] + v70;
                    v26 = v67.f64[0] + v67.f64[1] + v68;
                    v27 = v65.f64[0] + v65.f64[1] + v66;
                    v94[0] = v69.f64[0] / v25;
                    v94[1] = v67.f64[0] / v26;
                    v94[2] = v65.f64[0] / v27;
                    v94[3] = v69.f64[1] / v25;
                    v94[4] = v67.f64[1] / v26;
                    v94[5] = v65.f64[1] / v27;
                    v94[6] = v70 / v25;
                    v94[7] = v68 / v26;
                    v94[8] = v66 / v27;
                    v85 = v69.f64[0] / v25;
                    v86 = v67.f64[0] / v26;
                    v87 = v65.f64[0] / v27;
                    v88 = v69.f64[1] / v25;
                    v89 = v67.f64[1] / v26;
                    v90 = v65.f64[1] / v27;
                    v91 = v70 / v25;
                    v92 = v68 / v26;
                    v93 = v66 / v27;
                    if (InvertMatrix(&v85))
                    {
                      v28 = WhitePoint + v17 + v19;
                      v29 = v19 / v28;
                      v30 = v17 / v28;
                      v31 = WhitePoint / v28 / (v17 / v28);
                      v32 = v29 / v30;
                      v84[0] = v86 + v31 * v85 + v32 * v87;
                      memset(&v84[1], 0, 24);
                      v84[4] = v89 + v31 * v88 + v32 * v90;
                      memset(&v84[5], 0, 24);
                      v84[8] = v92 + v31 * v91 + v32 * v93;
                      v83 = 0;
                      memset(v82, 0, sizeof(v82));
                      MatrixMatrix(v84, v94, v82[0].f64);
                      v33 = *(&v82[1] + 8);
                      v34 = v82[2].f64[1];
                      v35 = v82[1].f64[1];
                      if (v35 <= 0.2626 || v35 >= 0.2628 || (v36 = v82[2].f64[0], v36 <= 0.6779) || v36 >= 0.6781 || (v37 = v82[2].f64[1], v37 <= 0.0592) || v37 >= 0.0594)
                      {
                        if (v35 <= 0.2289 || v35 >= 0.2291 || (v45 = v82[2].f64[0], v45 <= 0.6916) || v45 >= 0.6918 || (v46 = v82[2].f64[1], v46 <= 0.0792) || v46 >= 0.0794)
                        {
                          v47 = vdupq_n_s64(0x40C3880000000000uLL);
                          v48 = vdivq_f64(vrndaq_f64(vmulq_f64(*(&v82[1] + 8), v47)), v47);
                          v49 = round(v82[2].f64[1] * 10000.0) / 10000.0;
                          v42 = vcvt_f32_f64(v48);
                          v43 = v49;
                          __asm { FMOV            V5.2D, #-0.5 }

                          v55 = vmulq_f64(v48, _Q5);
                          *&v56.f64[0] = vdupq_laneq_s64(v55, 1).u64[0];
                          v56.f64[1] = v49 * -0.5;
                          v57 = vdupq_lane_s64(*&v48.f64[0], 0);
                          v57.f64[0] = v49;
                          __asm { FMOV            V3.2D, #1.0 }

                          v59 = vsubq_f64(_Q3, v57);
                          v41 = vcvt_f32_f64(vdivq_f64(v55, vdupq_lane_s64(*&v59.f64[0], 0)));
                          v40 = vcvt_f32_f64(vdivq_f64(v56, vdupq_laneq_s64(v59, 1)));
                          __asm { FMOV            V3.2D, #-2.0 }

                          v39 = vcvt_f32_f64(vdivq_f64(vmulq_f64(v57, vmulq_f64(v59, _Q3)), vdupq_laneq_s64(v48, 1)));
                          v38 = vcvt_f32_f64(vaddq_f64(v59, v59));
                          if (v35 > 0.2125 && v35 < 0.2127)
                          {
                            v61 = v82[2].f64[0];
                            if (v61 > 0.7151 && v61 < 0.7153)
                            {
                              v62 = v82[2].f64[1];
                              if (v62 > 0.0721 && v62 < 0.0723)
                              {
                                v38 = 0x3FC98FC53FED844DLL;
                                v39 = 0xBEEFB7E9BE3FCB92;
                                v40 = 0xBD3B98C8BEE88CE7;
                                v41 = 0xBEC55326BDEAB368;
                                v42 = 0x3F3717593E59B3D0;
                                v33 = xmmword_19A96E210;
                                v43 = 0.0722;
                                v34 = 0.0722000003;
                              }
                            }
                          }
                        }

                        else
                        {
                          v38 = 0x3FC563883FEBB2FFLL;
                          v39 = 0xBF02A993BE582A99;
                          v40 = 0xBD52934BBEE5AEE6;
                          v41 = 0xBEC05BC0BDFE9100;
                          v42 = 0x3F3113403E6A7EFALL;
                          v33 = xmmword_19A96E200;
                          v43 = 0.0793;
                          v34 = 0.0793000013;
                        }
                      }

                      else
                      {
                        v38 = 0x3FBCBFB13FF0D1B7;
                        v39 = 0xBF124745BE288CE7;
                        v40 = 0xBD24A8C1BEEB6AE8;
                        v41 = 0xBEB88659BE0EF34DLL;
                        v42 = 0x3F2D91683E86809DLL;
                        v33 = xmmword_19A96E1F0;
                        v43 = 0.0593;
                        v34 = 0.0593000017;
                      }

                      *(a1 + 160) = vcvt_f32_f64(v33);
                      v63 = v34;
                      *(a1 + 168) = v63;
                      *(a1 + 176) = v42;
                      *(a1 + 184) = v43;
                      *(a1 + 188) = v41;
                      *(a1 + 196) = 0x3F0000003F000000;
                      *(a1 + 204) = v40;
                      *(a1 + 212) = 1065353216;
                      *(a1 + 220) = v38.i32[1];
                      *(a1 + 224) = 1065353216;
                      *(a1 + 228) = v39;
                      *(a1 + 236) = 1065353216;
                      *(a1 + 240) = v38.i32[0];
                      *(a1 + 244) = 0;
                    }
                  }
                }
              }
            }

            goto LABEL_40;
          }
        }
      }

      if (get_primaries_data_from_cicp(a1, &v81, &v80, &v79))
      {
        v7 = v80;
        v6 = v81;
        v9 = v79;
        goto LABEL_12;
      }
    }

LABEL_40:
    pthread_mutex_unlock((a1 + 24));
  }

  v64 = *MEMORY[0x1E69E9840];

  CFRelease(v3);
}

float *ColorSyncProfileGetRGBtoYCCMatrix(float *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  v3 = a1 + 44;
  if (a1[44] == 0.0)
  {
    add_basic_formulas(a1);
    if (a1[44] == 0.0)
    {
      return 0;
    }
  }

  return v3;
}

float *ColorSyncProfileGetYCCtoRGBMatrix(float *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (ColorSyncProfileGetTypeID_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
  }

  if (v2 != ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
  {
    return 0;
  }

  v3 = a1 + 53;
  if (a1[53] == 0.0)
  {
    add_basic_formulas(a1);
    if (a1[53] == 0.0)
    {
      return 0;
    }
  }

  return v3;
}

ColorSyncProfile *ColorSyncProfileCreateCopyWithFlexGTC(const ColorSyncProfile *a1, const __CFDictionary *a2, CFErrorRef *a3)
{
  v24[6] = *MEMORY[0x1E69E9840];
  if (ColorSyncProfileVerify(a1, a2, a3) && ColorSyncProfileIsPQBased(a1))
  {
    Count = CFDictionaryGetCount(a2);
    v6 = malloc_type_calloc(1uLL, 16 * (Count + 5), 0x8545CF49uLL);
    v7 = &v6[Count + 5];
    CFDictionaryGetKeysAndValues(a2, v6, v7);
    v24[0] = time(0);
    v8 = localtime(v24);
    v9 = LOWORD(v8->tm_min) | (v8->tm_sec << 16);
    valuePtr = (v8->tm_hour << 48) | (LOWORD(v8->tm_mday) << 32) | ((v8->tm_mon << 16) + 0x10000) | (v8->tm_year + 1900);
    v23 = v9;
    v24[0] = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
    v24[1] = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr + 2);
    v24[2] = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr + 4);
    v24[3] = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr + 6);
    v24[4] = CFNumberCreate(0, kCFNumberSInt16Type, &v23);
    v24[5] = CFNumberCreate(0, kCFNumberSInt16Type, &v23 + 2);
    v10 = CFArrayCreate(*MEMORY[0x1E695E480], v24, 6, MEMORY[0x1E695E9C0]);
    for (i = 0; i != 6; ++i)
    {
      v12 = v24[i];
      if (v12)
      {
        CFRelease(v12);
      }
    }

    v6[Count] = @"profileType";
    v13 = 8 * Count + 8;
    *(v6 + v13) = @"profileToCopy";
    v14 = 8 * Count + 16;
    *(v6 + v14) = @"Date";
    v15 = 8 * Count + 24;
    *(v6 + v15) = @"FlexGTC.based.A2B0";
    v16 = 8 * Count + 32;
    *(v6 + v16) = @"createImmutableCopy";
    v7[Count] = @"copyWithGTC";
    *(v7 + v13) = a1;
    *(v7 + v14) = v10;
    v17 = *MEMORY[0x1E695E4D0];
    *(v7 + v15) = *MEMORY[0x1E695E4D0];
    *(v7 + v16) = v17;
    v18 = CFDictionaryCreate(0, v6, v7, Count + 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(v10);
    free(v6);
    Profile = ColorSyncMakeProfile(v18);
    CFRelease(v18);
  }

  else
  {
    Profile = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return Profile;
}

ColorSyncProfile *ColorSyncProfileCreateCopyWithLUTBasedLumaScaling(void *a1, const void *a2)
{
  values[6] = *MEMORY[0x1E69E9840];
  v4 = ColorSyncProfileCopyFlexGTCInfo(a1);
  if (v4)
  {
    v5 = v4;
    values[0] = CFNumberCreate(0, kCFNumberSInt16Type, &ColorSyncProfileCreateCopyWithLUTBasedLumaScaling_iccDate);
    values[1] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19A96E6A2);
    values[2] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19A96E6A4);
    values[3] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19A96E6A6);
    values[4] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19A96E6A8);
    values[5] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_19A96E6AA);
    v6 = CFArrayCreate(*MEMORY[0x1E695E480], values, 6, MEMORY[0x1E695E9C0]);
    for (i = 0; i != 6; ++i)
    {
      v8 = values[i];
      if (v8)
      {
        CFRelease(v8);
      }
    }

    if (a2 && (v9 = CFGetTypeID(a2), v9 == CFDictionaryGetTypeID()) && (Value = CFDictionaryGetValue(a2, kColorSyncConversionGridPoints)) != 0)
    {
      v11 = Value;
      CFRetain(Value);
    }

    else
    {
      v11 = CFNumberCreate(0, kCFNumberLongLongType, &ColorSyncProfileCreateCopyWithLUTBasedLumaScaling_kFlexGTCGridPoints);
    }

    *keys = xmmword_1E7523518;
    v18 = *off_1E7523528;
    v19 = @"createImmutableCopy";
    v16[0] = @"FlexGTC.based.A2B0";
    v16[1] = a1;
    v16[2] = v6;
    v16[3] = v11;
    v16[4] = *MEMORY[0x1E695E4D0];
    v12 = CFDictionaryCreate(0, keys, v16, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(v6);
    Profile = ColorSyncMakeProfile(v12);
    CFRelease(v12);
    CFRelease(v5);
  }

  else
  {
    Profile = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return Profile;
}

BOOL validate_gmap_tag(uint64_t a1, unint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a1 == 1885433191 && !*(a1 + 8) && bswap32(*(a1 + 12)) <= a2 && ((v2 = *(a1 + 16)) == 0 || ((v3 = bswap32(v2), v3 >= 0x59) ? (v4 = a2 - 4 >= v3) : (v4 = 0), v4)))
  {
    v8 = *(a1 + 32);
    if (!v8 || (v5 = 0, v9 = bswap32(v8), v9 >= 0x59) && a2 - 4 >= v9)
    {
      v10 = *(a1 + 20);
      if (!v10 || (v5 = 0, v11 = bswap32(v10), v11 >= 0x59) && a2 - 44 >= v11)
      {
        v12 = *(a1 + 24);
        if (!v12 || (v5 = 0, v13 = bswap32(v12), v13 >= 0x59) && a2 - 44 >= v13)
        {
          v14 = *(a1 + 28);
          if (!v14 || (v5 = 0, v15 = bswap32(v14), v15 >= 0x59) && a2 - 44 >= v15)
          {
            v16 = 0;
            v5 = 0;
            v23 = *(a1 + 36);
            v24 = *(a1 + 52);
            v17 = &v23 + 1;
            do
            {
              v18 = *(v17 - 1);
              if (v18)
              {
                v19 = bswap32(v18);
                if (v19 < 0x59)
                {
                  break;
                }

                v20 = bswap32(*v17);
                v4 = a2 >= v20;
                v21 = a2 - v20;
                if (!v4 || v21 < v19)
                {
                  break;
                }
              }

              v17 += 2;
              v5 = v16++ > 1;
            }

            while (v16 != 3);
          }
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

CFDictionaryRef create_gain_map_info(uint64_t a1)
{
  keys[8] = *MEMORY[0x1E69E9840];
  keys[0] = kColorSyncGUID;
  keys[1] = kColorSyncGainMapMin;
  keys[2] = kColorSyncGainMapMax;
  keys[3] = kColorSyncGainMapGamma;
  keys[4] = kColorSyncGainMapBaselineConst;
  keys[5] = kColorSyncGainMapAlternateConst;
  keys[6] = kColorSyncGainMapBaselineHeadroom;
  keys[7] = kColorSyncGainMapAlternateHeadroom;
  v1 = *(a1 + 16);
  v2 = *(a1 + 20);
  v3 = *(a1 + 24);
  v4 = *(a1 + 28);
  v6 = *(a1 + 32);
  v5 = *(a1 + 36);
  v7 = *(a1 + 40);
  values[0] = CFUUIDCreateFromUUIDBytes(0, *a1);
  valuePtr = bswap32(v1);
  values[1] = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  valuePtr = bswap32(v2);
  values[2] = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  valuePtr = bswap32(v3);
  values[3] = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  valuePtr = bswap32(v4);
  values[4] = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  valuePtr = bswap32(v6);
  values[5] = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  valuePtr = bswap32(v5);
  values[6] = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  valuePtr = bswap32(v7);
  values[7] = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
  v8 = CFDictionaryCreate(0, keys, values, 8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = 0; i != 8; ++i)
  {
    CFRelease(values[i]);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t ColorSyncProfileCreateFlexGTCLookupData(void *a1, float a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v4 = ColorSyncProfileCreateWithName(kColorSyncGenericXYZProfile);
  v26 = 0u;
  v25 = 0u;
  v31 = 0u;
  v32 = 0u;
  keys = @"com.apple.cmm.FlexGTCTargetHeadroom";
  valuePtr = LODWORD(a2);
  values = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  v5 = MEMORY[0x1E695E9D8];
  v6 = MEMORY[0x1E695E9E8];
  v7 = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *&v25 = @"com.apple.cmm.ApplyFlexLumaScaling";
  *&v31 = v7;
  v8 = CFDictionaryCreate(0, &v25, &v31, 1, v5, v6);
  *(&v25 + 1) = @"com.apple.cmm.ApplyToneMaping";
  *&v26 = @"com.apple.cmm.PQEOTFTable";
  v9 = *MEMORY[0x1E695E4D0];
  *(&v31 + 1) = v8;
  *&v32 = v9;
  *(&v26 + 1) = @"com.apple.cmm.PQEOTFTableSize";
  valuePtr = 1024;
  *(&v32 + 1) = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v10 = CFDictionaryCreate(0, &v25 + 1, &v31 + 1, 3, v5, v6);
  CFRelease(values);
  CFRelease(*(&v32 + 1));
  CFRelease(v7);
  CFRelease(v8);
  colorsync_transform = create_colorsync_transform(a1, v4, v10);
  keys = 0;
  *&v25 = &keys;
  *(&v25 + 1) = 0x6800000000;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = __ColorSyncProfileCreateFlexGTCLookupData_block_invoke;
  v18[3] = &unk_1E7523548;
  v18[4] = &keys;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = __ColorSyncProfileCreateFlexGTCLookupData_block_invoke_4;
  v17[3] = &unk_1E75235B0;
  v17[4] = &keys;
  v17[5] = &v19;
  v12 = ColorSyncTransformIterate(colorsync_transform, v10, v18, &__block_literal_global_388, &__block_literal_global_392, v17);
  v13 = v20;
  v14 = v20[3];
  if ((v12 & 1) == 0)
  {
    if (v14)
    {
      CFRelease(v20[3]);
      v13 = v20;
    }

    v14 = 0;
    v13[3] = 0;
  }

  _Block_object_dispose(&keys, 8);
  _Block_object_dispose(&v19, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __ColorSyncProfileCreateFlexGTCLookupData_block_invoke(uint64_t a1, _OWORD *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = a2[2];
  v3 = a2[3];
  v5 = *(a2 + 60);
  *(v2 + 40) = a2[1];
  *(v2 + 84) = v5;
  *(v2 + 72) = v3;
  *(v2 + 56) = v4;
  *(v2 + 24) = *a2;
  return 1;
}

uint64_t __ColorSyncProfileCreateFlexGTCLookupData_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 40) + 8);
  v5 = *(*(*(a1 + 32) + 8) + 92);
  memset(v8, 0, 36);
  ColorSyncNxMGetFunction(*(v5 + 8 * a3), v8);
  ColorSyncNxMGetProperties(*(v5 + 8 * a3));
  if (LODWORD(v8[0]) == 11)
  {
    v6 = *(*(&v8[1] + 12) + 28);
    if (v6)
    {
      *(v4 + 24) = CFDataCreate(0, (*(&v8[1] + 12) + 36), 4 * v6);
    }
  }

  return 1;
}

ColorSyncProfile *ColorSyncProfileCreateCopyWithISO5Metadata(const ColorSyncProfile *a1, CFErrorRef *a2, CFErrorRef *a3)
{
  v148 = *MEMORY[0x1E69E9840];
  if (!ColorSyncProfileVerify(a1, a2, a3))
  {
    goto LABEL_84;
  }

  if (ColorSyncProfileIsHLGBased(a1))
  {
    if (!a2)
    {
      goto LABEL_84;
    }
  }

  else
  {
    IsPQBased = ColorSyncProfileIsPQBased(a1);
    MutableCopy = 0;
    if (!a2 || !IsPQBased)
    {
      goto LABEL_85;
    }
  }

  v7 = CFGetTypeID(a2);
  if (v7 != CFDictionaryGetTypeID())
  {
LABEL_84:
    MutableCopy = 0;
    goto LABEL_85;
  }

  if (CFDictionaryContainsKey(a2, kColorSyncMDCVInfo[0]) != 1)
  {
    LODWORD(MaximumSizeForEncoding) = 0;
    LODWORD(v15) = 0;
    LODWORD(v16) = 0;
    v137 = 0;
    v9 = 0;
    goto LABEL_32;
  }

  Value = CFDictionaryGetValue(a2, kColorSyncMDCVInfo[0]);
  v9 = Value;
  if (!Value)
  {
    goto LABEL_27;
  }

  v10 = CFGetTypeID(Value);
  if (v10 != CFDictionaryGetTypeID())
  {
    LODWORD(MaximumSizeForEncoding) = 0;
    LODWORD(v15) = 0;
    LODWORD(v16) = 0;
    v9 = 0;
    goto LABEL_31;
  }

  if (get_float_from_dictionary(v9, kColorSyncMaxLuminance) < 0.0 || (float_from_dictionary = 10000.0, get_float_from_dictionary(v9, kColorSyncMaxLuminance) <= 10000.0))
  {
    float_from_dictionary = 0.0;
    if (get_float_from_dictionary(v9, kColorSyncMaxLuminance) >= 0.0)
    {
      float_from_dictionary = get_float_from_dictionary(v9, kColorSyncMaxLuminance);
    }
  }

  if (get_float_from_dictionary(v9, kColorSyncMinLuminance) < 0.0 || (v12 = 10000.0, get_float_from_dictionary(v9, kColorSyncMinLuminance) <= 10000.0))
  {
    v12 = 0.0;
    if (get_float_from_dictionary(v9, kColorSyncMinLuminance) >= 0.0)
    {
      v12 = get_float_from_dictionary(v9, kColorSyncMinLuminance);
    }
  }

  primaries_from_dictionary = get_primaries_from_dictionary(v9, kColorSyncPrimaries);
  v9 = 0;
  LODWORD(MaximumSizeForEncoding) = 0;
  if (float_from_dictionary <= 0.0)
  {
    goto LABEL_30;
  }

  LODWORD(v15) = 0;
  LODWORD(v16) = 0;
  if (v12 <= 0.0)
  {
    goto LABEL_31;
  }

  v17 = primaries_from_dictionary;
  v9 = 0;
  LODWORD(MaximumSizeForEncoding) = 0;
  if (primaries_from_dictionary > 0xC)
  {
LABEL_30:
    LODWORD(v15) = 0;
    LODWORD(v16) = 0;
    goto LABEL_31;
  }

  LODWORD(v15) = 0;
  LODWORD(v16) = 0;
  if (((1 << primaries_from_dictionary) & 0x1A23) != 0)
  {
    v9 = malloc_type_calloc(1uLL, 0xACuLL, 0x10000402F7E722EuLL);
    if (v9)
    {
      Length = CFStringGetLength(@"MDCV");
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x10000100u);
      CFStringGetCString(@"MDCV", v9, MaximumSizeForEncoding + 1, 0x10000100u);
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      *__str = 0u;
      v141 = 0u;
      snprintf(__str, 0x60uLL, "%06.6f,%06.6f,%d", float_from_dictionary, v12, v17);
      v19 = CFStringCreateWithCString(0, __str, 0x8000100u);
      if (v19)
      {
        v20 = v19;
        v21 = CFStringGetLength(v19);
        v15 = CFStringGetMaximumSizeForEncoding(v21, 0x10000100u);
        CFStringGetCString(v20, v9 + 12, v15 + 1, 0x10000100u);
        v22 = CFStringGetLength(@"Mastering Display Color Volume");
        v16 = CFStringGetMaximumSizeForEncoding(v22, 0x10000100u);
        CFStringGetCString(@"Mastering Display Color Volume", v9 + 108, v16 + 1, 0x10000100u);
        CFRelease(v20);
        goto LABEL_31;
      }

LABEL_28:
      LODWORD(v15) = 0;
      LODWORD(v16) = 0;
      goto LABEL_31;
    }

LABEL_27:
    LODWORD(MaximumSizeForEncoding) = 0;
    goto LABEL_28;
  }

LABEL_31:
  v137 = v9 != 0;
LABEL_32:
  v134 = MaximumSizeForEncoding;
  v135 = v16;
  if (CFDictionaryContainsKey(a2, kColorSyncCCVInfo[0]) != 1)
  {
    LODWORD(v28) = 0;
    v131 = 0;
    v132 = 0;
    v136 = 0;
    v29 = 0;
    goto LABEL_45;
  }

  v23 = CFDictionaryGetValue(a2, kColorSyncCCVInfo[0]);
  if (v23 && (v24 = v23, v25 = CFGetTypeID(v23), v25 == CFDictionaryGetTypeID()))
  {
    if (get_float_from_dictionary(v24, kColorSyncMaxLuminance) < 0.0 || (v26 = 10000.0, get_float_from_dictionary(v24, kColorSyncMaxLuminance) <= 10000.0))
    {
      v26 = 0.0;
      if (get_float_from_dictionary(v24, kColorSyncMaxLuminance) >= 0.0)
      {
        v26 = get_float_from_dictionary(v24, kColorSyncMaxLuminance);
      }
    }

    if (get_float_from_dictionary(v24, kColorSyncAverageLuminance) < 0.0 || get_float_from_dictionary(v24, kColorSyncAverageLuminance) <= 10000.0)
    {
      v27 = 0.0;
      if (get_float_from_dictionary(v24, kColorSyncAverageLuminance) >= 0.0)
      {
        v27 = get_float_from_dictionary(v24, kColorSyncAverageLuminance);
      }
    }

    else
    {
      v27 = 10000.0;
    }

    if (get_float_from_dictionary(v24, kColorSyncMinLuminance) < 0.0 || (v113 = 10000.0, get_float_from_dictionary(v24, kColorSyncMinLuminance) <= 10000.0))
    {
      v113 = 0.0;
      if (get_float_from_dictionary(v24, kColorSyncMinLuminance) >= 0.0)
      {
        v113 = get_float_from_dictionary(v24, kColorSyncMinLuminance);
      }
    }

    v30 = v15;
    v114 = get_primaries_from_dictionary(v24, kColorSyncPrimaries);
    v29 = 0;
    LODWORD(v28) = 0;
    if (v26 <= 0.0)
    {
LABEL_121:
      LODWORD(v31) = 0;
      LODWORD(v15) = 0;
      goto LABEL_44;
    }

    LODWORD(v31) = 0;
    LODWORD(v15) = 0;
    if (v113 > 0.0)
    {
      v115 = v114;
      v29 = 0;
      LODWORD(v28) = 0;
      if (v114 <= 0xC)
      {
        LODWORD(v31) = 0;
        LODWORD(v15) = 0;
        if (((1 << v114) & 0x1A23) != 0)
        {
          v29 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10000400D840072uLL);
          v116 = CFStringGetLength(@"CCV");
          v28 = CFStringGetMaximumSizeForEncoding(v116, 0x10000100u);
          CFStringGetCString(@"CCV", v29, v28 + 1, 0x10000100u);
          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          *__str = 0u;
          v141 = 0u;
          snprintf(__str, 0x80uLL, "%06.6f,%06.6f,%06.6f,%d", v26, v27, v113, v115);
          v117 = CFStringCreateWithCString(0, __str, 0x8000100u);
          if (v117)
          {
            v118 = v117;
            v119 = CFStringGetLength(v117);
            v31 = CFStringGetMaximumSizeForEncoding(v119, 0x10000100u);
            CFStringGetCString(v118, v29 + 12, v31 + 1, 0x10000100u);
            v120 = CFStringGetLength(@"Content Color Volume");
            v15 = CFStringGetMaximumSizeForEncoding(v120, 0x10000100u);
            CFStringGetCString(@"Content Color Volume", v29 + 140, v15 + 1, 0x10000100u);
            CFRelease(v118);
          }

          else
          {
            LODWORD(v31) = 0;
            LODWORD(v15) = 0;
          }
        }

        goto LABEL_44;
      }

      goto LABEL_121;
    }
  }

  else
  {
    v30 = v15;
    LODWORD(v28) = 0;
    LODWORD(v31) = 0;
    LODWORD(v15) = 0;
    v29 = 0;
  }

LABEL_44:
  v131 = v15;
  v132 = v31;
  v136 = v29 != 0;
  LODWORD(v15) = v30;
LABEL_45:
  if (CFDictionaryContainsKey(a2, kColorSyncCLLInfo[0]) != 1)
  {
    v39 = 0;
    v129 = 0;
    v130 = 0;
    v50 = 0;
    v38 = 0;
    goto LABEL_65;
  }

  v32 = CFDictionaryGetValue(a2, kColorSyncCLLInfo[0]);
  if (v32 && (v33 = v32, v34 = CFGetTypeID(v32), v34 == CFDictionaryGetTypeID()))
  {
    if (get_float_from_dictionary(v33, kColorSyncMaxLightLevel) < 0.0 || (v35 = 10000.0, get_float_from_dictionary(v33, kColorSyncMaxLightLevel) <= 10000.0))
    {
      v35 = 0.0;
      if (get_float_from_dictionary(v33, kColorSyncMaxLightLevel) >= 0.0)
      {
        v35 = get_float_from_dictionary(v33, kColorSyncMaxLightLevel);
      }
    }

    if (get_float_from_dictionary(v33, kColorSyncAverageLightLevel) < 0.0 || (v36 = 10000.0, get_float_from_dictionary(v33, kColorSyncAverageLightLevel) <= 10000.0))
    {
      v36 = 0.0;
      if (get_float_from_dictionary(v33, kColorSyncAverageLightLevel) >= 0.0)
      {
        v36 = get_float_from_dictionary(v33, kColorSyncAverageLightLevel);
      }
    }

    v37 = get_primaries_from_dictionary(v33, kColorSyncPrimaries);
    v38 = 0;
    v39 = 0;
    if (v35 <= 0.0)
    {
LABEL_120:
      v40 = 0;
      v41 = 0;
      goto LABEL_64;
    }

    v40 = 0;
    v41 = 0;
    if (v36 > 0.0)
    {
      v42 = v37;
      v38 = 0;
      v39 = 0;
      if (v37 <= 0xC)
      {
        v40 = 0;
        v41 = 0;
        if (((1 << v37) & 0x1A23) != 0)
        {
          v122 = v15;
          v38 = malloc_type_calloc(1uLL, 0xB0uLL, 0x1000040C3A7E6FCuLL);
          v43 = CFStringGetLength(@"CLL");
          v124 = CFStringGetMaximumSizeForEncoding(v43, 0x10000100u);
          CFStringGetCString(@"CLL", v38, v124 + 1, 0x10000100u);
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          *__str = 0u;
          v141 = 0u;
          snprintf(__str, 0x60uLL, "%06.6f,%06.6f,%d", v35, v36, v42);
          v44 = CFStringCreateWithCString(0, __str, 0x8000100u);
          if (v44)
          {
            v45 = v44;
            v46 = CFStringGetLength(v44);
            v47 = CFStringGetMaximumSizeForEncoding(v46, 0x10000100u);
            CFStringGetCString(v45, v38 + 12, v47 + 1, 0x10000100u);
            v48 = CFStringGetLength(@"Content Light Level");
            v49 = CFStringGetMaximumSizeForEncoding(v48, 0x10000100u);
            CFStringGetCString(@"Content Light Level", v38 + 108, v49 + 1, 0x10000100u);
            CFRelease(v45);
            v41 = v49;
            v40 = v47;
          }

          else
          {
            v40 = 0;
            v41 = 0;
          }

          LODWORD(v15) = v122;
          v39 = v124;
        }

        goto LABEL_64;
      }

      goto LABEL_120;
    }
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v38 = 0;
  }

LABEL_64:
  v129 = v41;
  v130 = v40;
  v50 = v38 != 0;
LABEL_65:
  v133 = v28;
  if (CFDictionaryContainsKey(a2, kColorSyncCRWLInfo[0]) == 1)
  {
    v51 = CFDictionaryGetValue(a2, kColorSyncCRWLInfo[0]);
    if (v51 && (v52 = v51, v53 = CFGetTypeID(v51), v53 == CFDictionaryGetTypeID()) && (v54 = CFDictionaryGetValue(v52, kColorSyncReferenceWhite)) != 0 && (v55 = v54, v56 = CFGetTypeID(v54), v56 == CFNumberGetTypeID()) && (valuePtr = 0.0, CFNumberGetValue(v55, kCFNumberFloatType, &valuePtr) == 1))
    {
      v57 = valuePtr;
      if (valuePtr < 0.0)
      {
        v57 = 0.0;
      }

      if (v57 > 10000.0)
      {
        v57 = 10000.0;
      }

      valuePtr = v57;
      v58 = malloc_type_calloc(1uLL, 0x78uLL, 0x1000040A9FC9F90uLL);
      v59 = CFStringGetLength(@"CRWL");
      v127 = CFStringGetMaximumSizeForEncoding(v59, 0x10000100u);
      CFStringGetCString(@"CRWL", v58, v127 + 1, 0x10000100u);
      memset(__str, 0, sizeof(__str));
      DWORD2(v141) = 0;
      *&v141 = 0;
      snprintf(__str, 0x1CuLL, "%06.6f", valuePtr);
      v60 = CFStringCreateWithCString(0, __str, 0x8000100u);
      if (v60)
      {
        v61 = v60;
        v62 = CFStringGetLength(v60);
        v125 = CFStringGetMaximumSizeForEncoding(v62, 0x10000100u);
        CFStringGetCString(v61, v58 + 12, v125 + 1, 0x10000100u);
        v63 = CFStringGetLength(@"Content HDR Reference White Luminance");
        v64 = CFStringGetMaximumSizeForEncoding(v63, 0x10000100u);
        CFStringGetCString(@"Content HDR Reference White Luminance", v58 + 40, v64 + 1, 0x10000100u);
        CFRelease(v61);
        v65 = v64;
        v66 = v125;
      }

      else
      {
        v66 = 0;
        v65 = 0;
      }

      v67 = v127;
    }

    else
    {
      v67 = 0;
      v66 = 0;
      v65 = 0;
      v58 = 0;
    }

    v68 = v58 != 0;
  }

  else
  {
    v67 = 0;
    v66 = 0;
    v65 = 0;
    v68 = 0;
    v58 = 0;
  }

  if (!v9 && !v29 && !v38 && !v58)
  {
    goto LABEL_84;
  }

  v123 = v65;
  v126 = v66;
  v128 = v67;
  MutableCopy = ColorSyncProfileCreateMutableCopy(a1);
  if (!MutableCopy)
  {
    goto LABEL_100;
  }

  v138 = v9;
  v71 = v136 + v137 + v50 + v68;
  v121 = 184 * v136 + 172 * v137 + 176 * v50 + 120 * v68 + 24 * v71;
  v72 = malloc_type_calloc(1uLL, v121 + 16, 0x1000040A86A77D5uLL);
  if (v72)
  {
    v73 = v72;
    *v72 = 1952672100;
    *(v72 + 2) = v71 << 24;
    *(v72 + 3) = 402653184;
    v74 = &v72[24 * v137 + 16];
    v75 = &v74[24 * v136];
    v76 = &v75[24 * v50];
    v77 = &v76[24 * v68];
    if (v137)
    {
      v78 = *v138;
      v79 = v138[2];
      *(v77 + 1) = v138[1];
      *(v77 + 2) = v79;
      *v77 = v78;
      v80 = v138[3];
      v81 = v138[4];
      v82 = v138[6];
      *(v77 + 5) = v138[5];
      *(v77 + 6) = v82;
      *(v77 + 3) = v80;
      *(v77 + 4) = v81;
      v83 = v138[7];
      v84 = v138[8];
      v85 = v138[9];
      *(v77 + 156) = *(v138 + 156);
      *(v77 + 8) = v84;
      *(v77 + 9) = v85;
      *(v77 + 7) = v83;
      *(v72 + 4) = bswap32(v77 - v72);
      *(v72 + 5) = bswap32(v134);
      *(v72 + 6) = bswap32(v77 - v72 + 12);
      *(v72 + 7) = bswap32(v15);
      *(v72 + 8) = bswap32(v77 - v72 + 108);
      *(v72 + 9) = bswap32(v135);
    }

    v86 = &v77[172 * v137];
    if (v136)
    {
      v87 = *v29;
      v88 = *(v29 + 1);
      v89 = *(v29 + 3);
      *(v86 + 2) = *(v29 + 2);
      *(v86 + 3) = v89;
      *v86 = v87;
      *(v86 + 1) = v88;
      v90 = *(v29 + 4);
      v91 = *(v29 + 5);
      v92 = *(v29 + 7);
      *(v86 + 6) = *(v29 + 6);
      *(v86 + 7) = v92;
      *(v86 + 4) = v90;
      *(v86 + 5) = v91;
      v93 = *(v29 + 8);
      v94 = *(v29 + 9);
      v95 = *(v29 + 10);
      *(v86 + 22) = *(v29 + 22);
      *(v86 + 9) = v94;
      *(v86 + 10) = v95;
      *(v86 + 8) = v93;
      *v74 = bswap32(v86 - v72);
      *&v72[24 * v137 + 20] = bswap32(v133);
      *&v72[24 * v137 + 24] = bswap32(v86 - v72 + 12);
      *&v72[24 * v137 + 28] = bswap32(v132);
      *&v72[24 * v137 + 32] = bswap32(v86 - v72 + 140);
      *&v72[24 * v137 + 36] = bswap32(v131);
    }

    v96 = &v86[184 * v136];
    v9 = v138;
    if (v50)
    {
      v97 = *v38;
      v98 = *(v38 + 2);
      *(v96 + 1) = *(v38 + 1);
      *(v96 + 2) = v98;
      *v96 = v97;
      v99 = *(v38 + 3);
      v100 = *(v38 + 4);
      v101 = *(v38 + 6);
      *(v96 + 5) = *(v38 + 5);
      *(v96 + 6) = v101;
      *(v96 + 3) = v99;
      *(v96 + 4) = v100;
      v102 = *(v38 + 7);
      v103 = *(v38 + 8);
      v104 = *(v38 + 10);
      *(v96 + 9) = *(v38 + 9);
      *(v96 + 10) = v104;
      *(v96 + 7) = v102;
      *(v96 + 8) = v103;
      *v75 = bswap32(v96 - v72);
      *(v75 + 1) = bswap32(v39);
      *(v75 + 2) = bswap32(v96 - v72 + 12);
      *(v75 + 3) = bswap32(v130);
      *(v75 + 4) = bswap32(v96 - v72 + 108);
      *(v75 + 5) = bswap32(v129);
    }

    if (v68)
    {
      v105 = *v58;
      v106 = *(v58 + 1);
      v107 = &v96[176 * v50];
      v108 = *(v58 + 3);
      *(v107 + 2) = *(v58 + 2);
      *(v107 + 3) = v108;
      *v107 = v105;
      *(v107 + 1) = v106;
      v109 = *(v58 + 4);
      v110 = *(v58 + 5);
      v111 = *(v58 + 6);
      *(v107 + 14) = *(v58 + 14);
      *(v107 + 5) = v110;
      *(v107 + 6) = v111;
      *(v107 + 4) = v109;
      *v76 = bswap32(v107 - v72);
      *(v76 + 1) = bswap32(v128);
      *(v76 + 2) = bswap32(v107 - v72 + 12);
      *(v76 + 3) = bswap32(v126);
      *(v76 + 4) = bswap32(v107 - v72 + 40);
      *(v76 + 5) = bswap32(v123);
    }

    v112 = CFDataCreate(0, v72, v121 + 16);
    free(v73);
    if (!v112)
    {
      goto LABEL_100;
    }

    ColorSyncProfileSetTag(MutableCopy, @"meta", v112);
  }

  else
  {
    v112 = MutableCopy;
    MutableCopy = 0;
    v9 = v138;
  }

  CFRelease(v112);
LABEL_100:
  if (v9)
  {
    free(v9);
  }

  if (v29)
  {
    free(v29);
  }

  if (v38)
  {
    free(v38);
  }

  if (v58)
  {
    free(v58);
  }

LABEL_85:
  v69 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

float get_float_from_dictionary(const __CFDictionary *a1, const void *a2)
{
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(a1, a2);
  v3 = 0.0;
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberFloatType, &valuePtr))
      {
        return valuePtr;
      }

      else
      {
        return 0.0;
      }
    }
  }

  return v3;
}

uint64_t get_primaries_from_dictionary(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value && (v3 = Value, v4 = CFGetTypeID(Value), v4 == CFNumberGetTypeID()))
  {
    valuePtr = 0;
    v5 = CFNumberGetValue(v3, kCFNumberSInt8Type, &valuePtr);
    v6 = valuePtr;
    if (v5 != 1)
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

__CFDictionary *ColorSyncProfileCopyISO5Metadata(const void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v2 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      v3 = ColorSyncProfileCopyTag(a1, @"meta");
      if (v3)
      {
        v4 = v3;
        Length = CFDataGetLength(v3);
        BytePtr = CFDataGetBytePtr(v4);
        Mutable = 0;
        if (!BytePtr || Length < 0x15)
        {
          goto LABEL_57;
        }

        v8 = BytePtr;
        if (*(BytePtr + 3) != 402653184)
        {
          goto LABEL_56;
        }

        v9 = *(BytePtr + 2);
        v10 = bswap32(v9);
        if (Length <= 24 * v10 + 16)
        {
          goto LABEL_56;
        }

        if (v9)
        {
          v11 = 0;
          v12 = (BytePtr + 20);
          v13 = v10;
          do
          {
            LODWORD(v14) = bswap32(*v12) + bswap32(*(v12 - 1));
            v15 = bswap32(v12[2]) + bswap32(v12[1]);
            v16 = bswap32(v12[4]) + bswap32(v12[3]);
            if (v14 <= v15)
            {
              LODWORD(v14) = v15;
            }

            if (v16 <= v14)
            {
              v14 = v14;
            }

            else
            {
              v14 = v16;
            }

            if (v11 <= v14)
            {
              v11 = v14;
            }

            v12 += 6;
            --v13;
          }

          while (v13);
          if (v11 <= Length)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (Mutable)
            {
              v17 = (v8 + 20);
              while (1)
              {
                v18 = CFStringCreateWithBytes(0, &v8[bswap32(*(v17 - 1))], bswap32(*v17), 0x10000100u, 0);
                if (v18)
                {
                  break;
                }

LABEL_49:
                v17 += 6;
                if (!--v10)
                {
                  goto LABEL_54;
                }
              }

              v19 = v18;
              if (CFEqual(v18, @"MDCV") == 1)
              {
                v20 = 0;
              }

              else if (CFEqual(v19, @"CCV") == 1)
              {
                v20 = 1;
              }

              else if (CFEqual(v19, @"CLL") == 1)
              {
                v20 = 2;
              }

              else
              {
                if (CFEqual(v19, @"CRWL") != 1)
                {
LABEL_48:
                  CFRelease(v19);
                  goto LABEL_49;
                }

                v20 = 3;
              }

              v21 = CFStringCreateWithBytes(0, &v8[bswap32(v17[1])], bswap32(v17[2]), 0x10000100u, 0);
              v22 = CFStringCreateWithBytes(0, &v8[bswap32(v17[3])], bswap32(v17[4]), 0x10000100u, 0);
              if (v20 > 1)
              {
                if (v20 == 2)
                {
                  content_light_level_dict = create_content_light_level_dict(v21, v22);
                  if (content_light_level_dict)
                  {
                    v24 = content_light_level_dict;
                    v25 = kColorSyncCLLInfo;
                    goto LABEL_43;
                  }
                }

                else
                {
                  content_reference_white_dict = create_content_reference_white_dict(v21, v22);
                  if (content_reference_white_dict)
                  {
                    v24 = content_reference_white_dict;
                    v25 = kColorSyncCRWLInfo;
                    goto LABEL_43;
                  }
                }
              }

              else if (v20)
              {
                content_color_volume_dict = create_content_color_volume_dict(v21, v22);
                if (content_color_volume_dict)
                {
                  v24 = content_color_volume_dict;
                  v25 = kColorSyncCCVInfo;
                  goto LABEL_43;
                }
              }

              else
              {
                master_display_color_volume_dict = create_master_display_color_volume_dict(v21, v22);
                if (master_display_color_volume_dict)
                {
                  v24 = master_display_color_volume_dict;
                  v25 = kColorSyncMDCVInfo;
LABEL_43:
                  CFDictionarySetValue(Mutable, *v25, v24);
                  CFRelease(v24);
                }
              }

              if (v22)
              {
                CFRelease(v22);
              }

              if (v21)
              {
                CFRelease(v21);
              }

              goto LABEL_48;
            }

            goto LABEL_57;
          }

          goto LABEL_56;
        }

        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
LABEL_54:
          if (!CFDictionaryGetCount(Mutable))
          {
            CFRelease(Mutable);
LABEL_56:
            Mutable = 0;
          }
        }

LABEL_57:
        CFRelease(v4);
        return Mutable;
      }
    }
  }

  return 0;
}

CFDictionaryRef create_master_display_color_volume_dict(const __CFString *a1, const void *a2)
{
  keys[4] = *MEMORY[0x1E69E9840];
  if (a1 && (Length = CFStringGetLength(a1), MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u), (v6 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0x87FDB2D3uLL)) != 0))
  {
    v7 = v6;
    CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x8000100u);
    v16 = 0;
    v15 = 0;
    if (sscanf(v7, "%f, %f, %i", &v16, &v15 + 4, &v15) == 3)
    {
      v8 = v15 & ~(v15 >> 31);
      if (v8 >= 255)
      {
        v8 = 255;
      }

      LODWORD(v15) = v8;
      keys[0] = kColorSyncMaxLuminance;
      keys[1] = kColorSyncMinLuminance;
      keys[2] = kColorSyncPrimaries;
      keys[3] = kColorSyncMetadataDisplayName;
      LODWORD(valuePtr[0]) = v16;
      valuePtr[0] = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
      v17 = HIDWORD(v15);
      valuePtr[1] = CFNumberCreate(0, kCFNumberFloatType, &v17);
      LOBYTE(v17) = v15;
      valuePtr[2] = CFNumberCreate(0, kCFNumberSInt8Type, &v17);
      valuePtr[3] = a2;
      if (a2)
      {
        v9 = 4;
      }

      else
      {
        v9 = 3;
      }

      v10 = CFDictionaryCreate(0, keys, valuePtr, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      for (i = 0; i != 3; ++i)
      {
        v12 = valuePtr[i];
        if (v12)
        {
          CFRelease(v12);
        }
      }
    }

    else
    {
      v10 = 0;
    }

    free(v7);
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

CFDictionaryRef create_content_color_volume_dict(const __CFString *a1, const void *a2)
{
  keys[5] = *MEMORY[0x1E69E9840];
  if (a1 && (Length = CFStringGetLength(a1), MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u), (v6 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0xA160E2AuLL)) != 0))
  {
    v7 = v6;
    CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x8000100u);
    v17 = 0;
    v16 = 0;
    v15 = 0;
    if (sscanf(v7, "%f, %f, %f, %i", &v17, &v16 + 4, &v16, &v15) == 4)
    {
      v8 = v15 & ~(v15 >> 31);
      if (v8 >= 255)
      {
        v8 = 255;
      }

      v15 = v8;
      keys[0] = kColorSyncMaxLuminance;
      keys[1] = kColorSyncAverageLuminance;
      keys[2] = kColorSyncMinLuminance;
      keys[3] = kColorSyncPrimaries;
      keys[4] = kColorSyncMetadataDisplayName;
      LODWORD(valuePtr[0]) = v17;
      valuePtr[0] = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
      v18 = HIDWORD(v16);
      valuePtr[1] = CFNumberCreate(0, kCFNumberFloatType, &v18);
      v18 = v16;
      valuePtr[2] = CFNumberCreate(0, kCFNumberFloatType, &v18);
      LOBYTE(v18) = v15;
      valuePtr[3] = CFNumberCreate(0, kCFNumberSInt8Type, &v18);
      valuePtr[4] = a2;
      if (a2)
      {
        v9 = 5;
      }

      else
      {
        v9 = 4;
      }

      v10 = CFDictionaryCreate(0, keys, valuePtr, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      for (i = 0; i != 4; ++i)
      {
        v12 = valuePtr[i];
        if (v12)
        {
          CFRelease(v12);
        }
      }
    }

    else
    {
      v10 = 0;
    }

    free(v7);
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

CFDictionaryRef create_content_light_level_dict(const __CFString *a1, const void *a2)
{
  keys[5] = *MEMORY[0x1E69E9840];
  if (a1 && (Length = CFStringGetLength(a1), MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u), (v6 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0x595D26BuLL)) != 0))
  {
    v7 = v6;
    CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x8000100u);
    v16 = 0;
    v15 = 0;
    if (sscanf(v7, "%f, %f, %i", &v16, &v15 + 4, &v15) == 3)
    {
      v8 = v15 & ~(v15 >> 31);
      if (v8 >= 255)
      {
        v8 = 255;
      }

      LODWORD(v15) = v8;
      keys[0] = kColorSyncMaxLightLevel;
      keys[1] = kColorSyncAverageLightLevel;
      keys[2] = kColorSyncPrimaries;
      keys[3] = kColorSyncMetadataDisplayName;
      keys[4] = 0;
      LODWORD(valuePtr[0]) = v16;
      valuePtr[0] = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
      v17 = HIDWORD(v15);
      valuePtr[1] = CFNumberCreate(0, kCFNumberFloatType, &v17);
      LOBYTE(v17) = v15;
      valuePtr[2] = CFNumberCreate(0, kCFNumberSInt8Type, &v17);
      valuePtr[3] = a2;
      valuePtr[4] = 0;
      if (a2)
      {
        v9 = 4;
      }

      else
      {
        v9 = 3;
      }

      v10 = CFDictionaryCreate(0, keys, valuePtr, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      for (i = 0; i != 3; ++i)
      {
        v12 = valuePtr[i];
        if (v12)
        {
          CFRelease(v12);
        }
      }
    }

    else
    {
      v10 = 0;
    }

    free(v7);
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

CFDictionaryRef create_content_reference_white_dict(const __CFString *a1, void *a2)
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  if (a1 && (Length = CFStringGetLength(a1), MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u), (v6 = malloc_type_calloc(1uLL, MaximumSizeForEncoding + 1, 0x78FA0CE2uLL)) != 0))
  {
    v7 = v6;
    CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x8000100u);
    v14 = 0;
    if (sscanf(v7, "%f", &v14) == 1 && (LODWORD(valuePtr[0]) = v14, (v8 = CFNumberCreate(0, kCFNumberFloatType, valuePtr)) != 0))
    {
      v9 = v8;
      valuePtr[0] = kColorSyncReferenceWhite;
      valuePtr[1] = kColorSyncMetadataDisplayName;
      values[0] = v8;
      values[1] = a2;
      if (a2)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      v11 = CFDictionaryCreate(0, valuePtr, values, v10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFRelease(v9);
    }

    else
    {
      v11 = 0;
    }

    free(v7);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void *ColorSyncProfileGetID(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (ColorSyncProfileGetTypeID_predicate[0] != -1)
    {
      dispatch_once(ColorSyncProfileGetTypeID_predicate, &__block_literal_global_485);
    }

    if (v2 == ColorSyncProfileGetTypeID_kColorSyncProfileRuntimeID)
    {
      return v1[11];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double ColorSyncConvertDoubleXYZFromD50(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3, int a4, double *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = xmmword_19A96E220;
  v20 = 0x3FEA6594AF4F0D84;
  v8 = a1[1].f64[0];
  *a3 = *a1;
  a3[1].f64[0] = v8;
  v25 = 0.0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  if (!a5 || (v9 = *(a5 + 1), v21 = *a5, v22 = v9, v10 = *(a5 + 3), v23 = *(a5 + 2), v24 = v10, v25 = a5[8], !InvertMatrix(&v21)))
  {
    ColorSyncGetAdaptationMtx(a4, &v21, &v19, a2);
  }

  v11 = *a3;
  v12 = a3[1].f64[0];
  v13 = a3->f64[1];
  v14 = vmuld_lane_f64(*&v23, *a3, 1) + a3->f64[0] * *(&v22 + 1) + v12 * *(&v23 + 1);
  v15 = 0.0;
  if (v14 < 0.0 || (v15 = 1.0, v14 > 1.0))
  {
    v14 = v15;
  }

  v16 = v13 * *(&v24 + 1) + v11.f64[0] * *&v24 + v12 * v25;
  result = v13 * *(&v21 + 1) + v11.f64[0] * *&v21 + v12 * *&v22;
  a3->f64[0] = result;
  a3->f64[1] = v14;
  a3[1].f64[0] = v16;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

float64x2_t *ColorSyncConvertXYZToXYZWithChromaticAdaptationMatrix(float64x2_t *result, double *a2, double *a3)
{
  v3 = result[1].f64[0];
  v4 = vmuld_lane_f64(a3[1], *result, 1) + result->f64[0] * *a3 + v3 * a3[2];
  v5 = vmuld_lane_f64(a3[4], *result, 1) + result->f64[0] * a3[3] + v3 * a3[5];
  v6 = vmuld_lane_f64(a3[7], *result, 1) + result->f64[0] * a3[6];
  *&v7 = 0.0;
  if (v4 < 0.0 || (*&v7 = 1.99996948, v4 > 1.99996948))
  {
    v4 = *&v7;
  }

  v8 = v6 + v3 * a3[8];
  v9 = 0.0;
  if (v5 < 0.0 || (v9 = 1.0, v5 > 1.0))
  {
    v5 = v9;
  }

  *&v10 = 0.0;
  if (v8 < 0.0 || (*&v10 = 1.99996948, v8 > 1.99996948))
  {
    v8 = *&v10;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v8;
  return result;
}

size_t __ColorSyncGetTempDirPath_block_invoke()
{
  result = confstr(65537, &ColorSyncGetTempDirPath_tempDirPath, 0x400uLL);
  if (!result)
  {
    ColorSyncGetTempDirPath_tempDirPath = 0;
  }

  return result;
}

void CMMFloatBitNChanEncoder::DoEncode()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

BOOL CMMDataBaseClass::IsSameData(uint64_t a1, uint64_t a2)
{
  if (!a1 || !*a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  return *(a1 + 8) == *(*a2 + 8);
}

void *CMMFloatBitNChanEncoder::DoEncode(void *result, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v5 = 0;
  result[18] = result[21] + result[16] * result[22];
  do
  {
    v6 = result[20];
    if (!v6)
    {
      break;
    }

    v7 = result[19];
    v8 = result[22];
    v9 = v7 - v8;
    if (v7 - v8 >= result[1] - *a4)
    {
      v9 = result[1] - *a4;
    }

    if (v9)
    {
      v10 = result[3];
      v11 = v9;
      while (1)
      {
        if (v5 >= v10)
        {
          goto LABEL_40;
        }

        --v11;
        v12 = result[2];
        v13 = result[13];
        v14 = *v13;
        if (*v13)
        {
          break;
        }

        if (!v5)
        {
          v18 = result[18];
          goto LABEL_28;
        }

LABEL_25:
        if (v5 < v12)
        {
          goto LABEL_40;
        }

        *(a2 + 4 * v5 - 4) = *(a2 + 4 * v5 - 4) + 1.0;
        result[18] += result[16];
LABEL_29:
        if (!v11)
        {
          goto LABEL_32;
        }
      }

      v15 = 0;
      v16 = v5 - v12;
      v17 = v13 + 1;
      v18 = result[18];
      v19 = result[14];
      v20 = v5;
      do
      {
        if (v19)
        {
          v21 = (v17[v15] + 4 * v18);
          v22 = v19;
          do
          {
            v23 = *v21++;
            v24 = v20 + 1;
            *(a2 + 4 * v20++) = v23;
            --v22;
          }

          while (v22);
        }

        else
        {
          v24 = v20;
        }

        ++v15;
        v20 = v24;
      }

      while (v15 != v14);
      if (v5)
      {
        v25 = 0;
        v26 = (a2 + 4 * v5);
        v27 = v5;
        while (!v19)
        {
LABEL_22:
          ++v25;
          v26 += v19;
          if (v25 == v14)
          {
            goto LABEL_25;
          }
        }

        v27 += v19;
        v16 += v19;
        v28 = v19;
        v29 = v26;
        while (v29[-v12] == *v29)
        {
          ++v29;
          if (!--v28)
          {
            goto LABEL_22;
          }
        }
      }

LABEL_28:
      v5 += v12;
      *(a2 + 4 * v5 - 4) = 1065353216;
      result[18] = v18 + result[16];
      if (v5 >= v10)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    v11 = 0;
LABEL_32:
    v30 = v9 - v11;
    v31 = v30 + v8;
    if (v31 == v7)
    {
      v31 = 0;
      v32 = result[21] + result[17];
      result[18] = v32;
      result[20] = v6 - 1;
      result[21] = v32;
    }

    else if (v31 >= v7)
    {
      goto LABEL_40;
    }

    result[22] = v31;
    v33 = *a4 + v30;
    *a4 = v33;
    v34 = result[3];
    if (v5 <= v34)
    {
      v35 = result[1];
      if (v33 <= v35)
      {
        continue;
      }
    }

LABEL_40:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  while (v5 != v34 && v33 != v35);
  *a5 = v5 / result[2];
  return result;
}

void CMMFloatBitNChanDecoder::DoDecode()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

void *CMMFloatBitNChanDecoder::DoDecode(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = result[1];
  v9 = v8 * a4;
  v10 = result[14];
  v11 = result[19];
  v12 = result[20];
  v13 = result[18];
  v14 = v11 + v12 * v10;
  result[16] = v14;
  do
  {
    if (!v13)
    {
      break;
    }

    v15 = result[17];
    if (v15 == v12)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 - v12;
      while (1)
      {
        if (v4 >= 0xC00 / v8 * v8)
        {
          goto LABEL_37;
        }

        v17 = result[11];
        v18 = *v17;
        if (v7)
        {
          if (v18)
          {
            v19 = 0;
            v20 = v17 + 1;
            v21 = result[12];
            do
            {
              if (v21)
              {
                v22 = v20[v19];
                v23 = (v22 + 4 * v14);
                v24 = (v22 + 4 * v5);
                v25 = v21;
                do
                {
                  v26 = *v24++;
                  *v23++ = v26;
                  --v25;
                }

                while (v25);
              }

              ++v19;
            }

            while (v19 != v18);
          }
        }

        else
        {
          if (v18)
          {
            v27 = 0;
            v28 = v17 + 1;
            v29 = result[12];
            v30 = v4;
            do
            {
              if (v29)
              {
                v31 = (v28[v27] + 4 * v14);
                v32 = v29;
                do
                {
                  v33 = v30 + 1;
                  *v31++ = *(a2 + 4 * v30++);
                  --v32;
                }

                while (v32);
              }

              else
              {
                v33 = v30;
              }

              ++v27;
              v30 = v33;
            }

            while (v27 != v18);
          }

          v34 = *(a2 + 4 * (v8 - 1 + v4));
          if (!v34)
          {
            goto LABEL_37;
          }

          v6 = v34;
          v5 = v14;
        }

        if (!v6)
        {
          goto LABEL_37;
        }

        --v16;
        v14 += v10;
        v7 = --v6 != 0;
        if (!v6)
        {
          v4 += v8;
          if (v4 == v9)
          {
            break;
          }
        }

        if (!v16)
        {
          goto LABEL_31;
        }
      }

      v6 = 0;
      v7 = 0;
      v4 = v9;
    }

LABEL_31:
    v12 = v15 - v16;
    if (v15 - v16 == v15)
    {
      v12 = 0;
      v11 += result[15];
      result[18] = --v13;
      result[19] = v11;
      v14 = v11;
    }

    else if (v12 >= v15)
    {
      goto LABEL_37;
    }

    result[20] = v12;
    if (v4 > v9)
    {
LABEL_37:
      exception = __cxa_allocate_exception(4uLL);
      *exception = -171;
    }
  }

  while (v4 != v9);
  result[16] = v14;
  return result;
}

uint64_t CMMAlphaCopier::Copy(uint64_t this, unint64_t a2)
{
  while (a2)
  {
    v3 = *(this + 24);
    v2 = *(this + 32);
    v5 = *(this + 88);
    v4 = *(this + 96);
    v7 = *(this + 40);
    v6 = *(this + 48);
    v8 = *(this + 120);
    if (v8)
    {
      v9 = *(this + 80);
      v10 = v9 - v4;
      if (v9 - v4 >= a2)
      {
        v10 = a2;
      }
    }

    else
    {
      v11 = *(this + 72);
      v9 = *(this + 80);
      v10 = v11 - v5;
      if (v11 - v5 >= v9 - v4)
      {
        v10 = v9 - v4;
      }

      if (v10 >= a2)
      {
        v10 = a2;
      }

      v12 = v10 + v5;
      *(this + 88) = (v10 + v5) % v11;
      if ((v10 + v5) / v11 != 1 && v11 <= v12)
      {
LABEL_56:
        exception = __cxa_allocate_exception(4uLL);
        *exception = -171;
      }

      if (v11 <= v12)
      {
        *(this + 24) = v3 + *(this + 56);
      }
    }

    *(this + 96) = (v10 + v4) % v9;
    if (v9 <= v10 + v4 && (v10 + v4) / v9 != 1)
    {
      goto LABEL_56;
    }

    if (v9 <= v10 + v4)
    {
      *(this + 32) = v2 + *(this + 64);
    }

    v14 = (v2 + v6 * v4);
    if (v8)
    {
      if (*(this + 112) == 1)
      {
        if (v10)
        {
          v15 = v10;
          do
          {
            *v14 = -1;
            v14 += *(this + 48);
            --v15;
          }

          while (v15);
        }
      }

      else
      {
        for (i = v10; i; --i)
        {
          *v14 = -1;
          v14 += v6;
        }
      }
    }

    else
    {
      v16 = (v3 + v7 * v5);
      v17 = *(this + 104);
      v18 = *(this + 112);
      if (v17 == v18)
      {
        if (v10)
        {
          v19 = v7 - v17;
          v20 = v6 - v17;
          v21 = v10;
          do
          {
            for (j = *(this + 112); j; --j)
            {
              v23 = *v16++;
              *v14++ = v23;
            }

            v16 += v19;
            v14 += v20;
            --v21;
          }

          while (v21);
        }
      }

      else if (v17 <= v18)
      {
        if (v17 != 1 || v18 != 2)
        {
          goto LABEL_56;
        }

        for (k = v10; k; --k)
        {
          *v14 = *v16 | (*v16 << 8);
          v16 += v7;
          v14 += v6;
        }
      }

      else
      {
        if (v17 != 2 || v18 != 1)
        {
          goto LABEL_56;
        }

        for (m = v10; m; --m)
        {
          if (*v16)
          {
            v26 = *v16 / 0x101u;
            if (v26 - 1 > v26 || v26 + 1 < v26)
            {
              goto LABEL_56;
            }
          }

          else
          {
            LOBYTE(v26) = 0;
          }

          *v14 = v26;
          v16 += *(this + 40);
          v14 += *(this + 48);
        }
      }
    }

    a2 -= v10;
  }

  return this;
}

uint64_t CMMFloatAlphaCopier::Copy(uint64_t this, unint64_t a2)
{
  if (a2)
  {
    v2 = *(this + 120);
    do
    {
      if (v2)
      {
        v3 = 0;
        v4 = *(this + 152);
        v5 = *(this + 216);
        v6 = *(this + 168);
        v7 = (v4 + 4 * v6 * v5);
        v8 = *(this + 200);
        v9 = v8 - v5;
        if (v8 - v5 >= a2)
        {
          v9 = a2;
        }
      }

      else
      {
        v10 = *(this + 144);
        v4 = *(this + 152);
        v11 = *(this + 208);
        v5 = *(this + 216);
        v12 = *(this + 160);
        v6 = *(this + 168);
        v13 = *(this + 192);
        v8 = *(this + 200);
        v9 = v13 - v11;
        if (v13 - v11 >= v8 - v5)
        {
          v9 = v8 - v5;
        }

        if (v9 >= a2)
        {
          v9 = a2;
        }

        v14 = v9 + v11;
        *(this + 208) = (v9 + v11) % v13;
        if ((v9 + v11) / v13 != 1 && v13 <= v14)
        {
LABEL_30:
          exception = __cxa_allocate_exception(4uLL);
          *exception = -171;
        }

        v3 = (v10 + 4 * v12 * v11);
        v7 = (v4 + 4 * v6 * v5);
        if (v13 <= v14)
        {
          *(this + 144) = v10 + 4 * *(this + 176);
        }
      }

      v16 = v5 + v9;
      *(this + 216) = v16 % v8;
      if (v8 <= v16 && v16 / v8 != 1)
      {
        goto LABEL_30;
      }

      if (v8 <= v16)
      {
        *(this + 152) = v4 + 4 * *(this + 184);
      }

      if (v9)
      {
        v17 = 4 * v6;
        v18 = 4 * *(this + 160);
        v19 = v9;
        do
        {
          if (v2)
          {
            v20 = (this + 224);
          }

          else
          {
            v20 = v3;
          }

          *v7 = *v20;
          v7 = (v7 + v17);
          v3 = (v3 + v18);
          --v19;
        }

        while (v19);
      }

      a2 -= v9;
    }

    while (a2);
  }

  return this;
}

void CMMConvTRC::ConvertFloat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v186 = *MEMORY[0x1E69E9840];
  if (a5 && (*(a1 + 33) & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    if (*(a1 + 35))
    {
      v183 = 0;
      goto LABEL_8;
    }

    v8 = *(a1 + 36) == 0;
  }

  v183 = v8;
LABEL_8:
  v9 = a4 * a3;
  v10 = *(a1 + 88);
  if (v10 == 1)
  {
    v38 = *(a1 + 100);
    if (v38 <= 4)
    {
      if (v38 <= 1)
      {
        if (v38)
        {
          if (v38 == 1)
          {
            v81 = *(a1 + 72);
            if (v9 > v81)
            {
              v82 = *(a1 + 112);
              v83 = *(a1 + 116);
              v84 = *(a1 + 120);
              do
              {
                v85 = *(a2 + 4 * v81);
                v86 = *(a1 + 34);
                if ((LODWORD(v85) & 0x7FFFFFFFu) >= 0x7F800000)
                {
                  bzero(__str, 0x400uLL);
                  snprintf(__str, 0x400uLL, "CMMConvTRC::ConvertFloat input is not a valid value (%f)", v85);
                  CMMThrowExceptionWithLog(0, __str, v87, v88, v89, v90, v91, v92);
                }

                v93 = fabsf(v85);
                if (v86)
                {
                  v94 = v93;
                }

                else
                {
                  v94 = v85;
                }

                v95 = 0.0;
                if (v94 >= (-v84 / v83))
                {
                  v95 = powf(v84 + (v83 * v94), v82);
                  if (((v85 < 0.0) & v86) != 0)
                  {
                    v95 = -v95;
                  }
                }

                *(a2 + 4 * v81) = v95;
                if ((v183 & *(a1 + 33) & 1) == 0)
                {
                  if (v95 <= 1.0)
                  {
                    v96 = v95;
                  }

                  else
                  {
                    v96 = 1.0;
                  }

                  if (v95 >= 0.0)
                  {
                    v97 = v96;
                  }

                  else
                  {
                    v97 = 0.0;
                  }

                  *(a2 + 4 * v81) = v97;
                }

                v81 += a3;
              }

              while (v81 < v9);
            }
          }
        }

        else
        {
          v135 = *(a1 + 72);
          if (v9 > v135)
          {
            v136 = *(a1 + 112);
            do
            {
              v137 = *(a2 + 4 * v135);
              v138 = *(a1 + 34);
              if ((LODWORD(v137) & 0x7FFFFFFFu) >= 0x7F800000)
              {
                bzero(__str, 0x400uLL);
                snprintf(__str, 0x400uLL, "CMMConvTRC::ConvertFloat input is not a valid value (%f)", v137);
                CMMThrowExceptionWithLog(0, __str, v139, v140, v141, v142, v143, v144);
              }

              if (v136 != 1.0)
              {
                v145 = fabsf(v137);
                if (!v138)
                {
                  v145 = v137;
                }

                v146 = powf(v145, v136);
                if (((v137 < 0.0) & v138) != 0)
                {
                  v146 = -v146;
                }

                *(a2 + 4 * v135) = v146;
              }

              if ((v183 & *(a1 + 33) & 1) == 0)
              {
                v147 = *(a2 + 4 * v135);
                if (v147 <= 1.0)
                {
                  v148 = *(a2 + 4 * v135);
                }

                else
                {
                  v148 = 1.0;
                }

                if (v147 >= 0.0)
                {
                  v149 = v148;
                }

                else
                {
                  v149 = 0.0;
                }

                *(a2 + 4 * v135) = v149;
              }

              v135 += a3;
            }

            while (v135 < v9);
          }
        }
      }

      else if (v38 == 2)
      {
        v98 = *(a1 + 72);
        if (v9 > v98)
        {
          v99 = *(a1 + 116);
          v181 = *(a1 + 112);
          v100 = *(a1 + 120);
          v101 = *(a1 + 124);
          do
          {
            v102 = *(a2 + 4 * v98);
            v103 = *(a1 + 34);
            if ((LODWORD(v102) & 0x7FFFFFFFu) >= 0x7F800000)
            {
              bzero(__str, 0x400uLL);
              snprintf(__str, 0x400uLL, "CMMConvTRC::ConvertFloat input is not a valid value (%f)", v102);
              CMMThrowExceptionWithLog(0, __str, v104, v105, v106, v107, v108, v109);
            }

            v110 = fabsf(v102);
            if (((v102 < 0.0) & v103) != 0)
            {
              v111 = -1.0;
            }

            else
            {
              v111 = 1.0;
            }

            if (!v103)
            {
              v110 = v102;
            }

            if (v110 >= (-v100 / v99))
            {
              v112 = v101 + (v111 * powf(v100 + (v99 * v110), v181));
            }

            else
            {
              v112 = v101 * v111;
            }

            *(a2 + 4 * v98) = v112;
            if ((v183 & *(a1 + 33) & 1) == 0)
            {
              if (v112 <= 1.0)
              {
                v113 = v112;
              }

              else
              {
                v113 = 1.0;
              }

              v67 = v112 < 0.0;
              v114 = 0.0;
              if (!v67)
              {
                v114 = v113;
              }

              *(a2 + 4 * v98) = v114;
            }

            v98 += a3;
          }

          while (v98 < v9);
        }
      }

      else if (v38 == 3)
      {
        v150 = *(a1 + 72);
        if (v9 > v150)
        {
          v151 = *(a1 + 112);
          v182 = *(a1 + 116);
          v152 = *(a1 + 120);
          v153 = *(a1 + 124);
          v154 = *(a1 + 128);
          do
          {
            v155 = *(a2 + 4 * v150);
            v156 = *(a1 + 34);
            if ((LODWORD(v155) & 0x7FFFFFFFu) >= 0x7F800000)
            {
              bzero(__str, 0x400uLL);
              snprintf(__str, 0x400uLL, "CMMConvTRC::ConvertFloat input is not a valid value (%f)", v155);
              CMMThrowExceptionWithLog(0, __str, v157, v158, v159, v160, v161, v162);
            }

            v163 = fabsf(v155);
            if (((v155 < 0.0) & v156) != 0)
            {
              v164 = -1.0;
            }

            else
            {
              v164 = 1.0;
            }

            if (!v156)
            {
              v163 = v155;
            }

            if (v163 >= v154)
            {
              v165 = v164 * powf(v152 + (v182 * v163), v151);
            }

            else
            {
              v165 = v163 * (v153 * v164);
            }

            *(a2 + 4 * v150) = v165;
            if ((v183 & *(a1 + 33) & 1) == 0)
            {
              if (v165 <= 1.0)
              {
                v166 = v165;
              }

              else
              {
                v166 = 1.0;
              }

              v67 = v165 < 0.0;
              v167 = 0.0;
              if (!v67)
              {
                v167 = v166;
              }

              *(a2 + 4 * v150) = v167;
            }

            v150 += a3;
          }

          while (v150 < v9);
        }
      }

      else
      {
        v48 = *(a1 + 72);
        if (v9 > v48)
        {
          v49 = *(a1 + 112);
          v180 = *(a1 + 116);
          v50 = *(a1 + 120);
          v51 = *(a1 + 124);
          v52 = *(a1 + 128);
          v53 = *(a1 + 132);
          v54 = *(a1 + 136);
          do
          {
            v55 = *(a2 + 4 * v48);
            v56 = *(a1 + 34);
            if ((LODWORD(v55) & 0x7FFFFFFFu) >= 0x7F800000)
            {
              bzero(__str, 0x400uLL);
              snprintf(__str, 0x400uLL, "CMMConvTRC::ConvertFloat input is not a valid value (%f)", v55);
              CMMThrowExceptionWithLog(0, __str, v57, v58, v59, v60, v61, v62);
            }

            v63 = fabsf(v55);
            if (v55 < 0.0)
            {
              v64 = v56;
            }

            else
            {
              v64 = 0;
            }

            if (!v56)
            {
              v63 = v55;
            }

            if (v63 >= v52)
            {
              v65 = v53 + powf(v50 + (v180 * v63), v49);
            }

            else
            {
              v65 = v54 + (v51 * v63);
            }

            if (v64)
            {
              v65 = -v65;
            }

            *(a2 + 4 * v48) = v65;
            if ((v183 & *(a1 + 33) & 1) == 0)
            {
              if (v65 <= 1.0)
              {
                v66 = v65;
              }

              else
              {
                v66 = 1.0;
              }

              v67 = v65 < 0.0;
              v68 = 0.0;
              if (!v67)
              {
                v68 = v66;
              }

              *(a2 + 4 * v48) = v68;
            }

            v48 += a3;
          }

          while (v48 < v9);
        }
      }
    }

    else if (v38 > 7)
    {
      switch(v38)
      {
        case 8:
          v115 = *(a1 + 72);
          if (v9 > v115)
          {
            v116 = *(a1 + 124);
            v117 = *(a1 + 128);
            v118 = *(a1 + 116);
            v119 = -*(a1 + 120);
            do
            {
              v120 = *(a2 + 4 * v115);
              v121 = fabsf(v120);
              if (v121 <= v117)
              {
                v123 = sqrtf(v121 * 3.0);
              }

              else
              {
                v122 = v119 + v121 * 12.0;
                v123 = v116 + (v118 * logf(v122));
              }

              if (v120 < 0.0)
              {
                v123 = -v123;
              }

              *(a2 + 4 * v115) = v123;
              v115 += a3;
            }

            while (v115 < v9);
          }

          break;
        case 9:
          v69 = *(a1 + 72);
          if (v9 > v69)
          {
            v70 = *(a1 + 116);
            v184 = *(a1 + 112);
            v71 = *(a1 + 120);
            v72 = *(a1 + 124);
            v73 = *(a1 + 128);
            v74 = *(a1 + 132);
            do
            {
              v75 = *(a2 + 4 * v69);
              v76 = fabsf(v75) - v184;
              if (v76 < 0.0)
              {
                v76 = 0.0;
              }

              v77 = v70 * v76;
              if (v77 > v71)
              {
                v77 = v71 + (logf(((v77 - v71) * v72) + 1.0) / v72);
              }

              v78 = v74 * powf(v77, v73);
              if (v78 <= 1.0)
              {
                v79 = v78;
              }

              else
              {
                v79 = 1.0;
              }

              if (v78 >= 0.0)
              {
                v80 = v79;
              }

              else
              {
                v80 = 0.0;
              }

              if (v75 < 0.0)
              {
                v80 = -v80;
              }

              *(a2 + 4 * v69) = v80;
              v69 += a3;
            }

            while (v69 < v9);
          }

          break;
        case 10:
          exception = __cxa_allocate_exception(4uLL);
          *exception = -171;
      }
    }

    else if (v38 == 5)
    {
      v124 = *(a1 + 72);
      if (v9 > v124)
      {
        v125 = *(a1 + 116);
        v126 = *(a1 + 120);
        v127 = *(a1 + 124);
        v128 = *(a1 + 128);
        v129 = *(a1 + 136);
        v130 = -*(a1 + 132);
        do
        {
          v131 = *(a2 + 4 * v124);
          v132 = powf(fabsf(v131), v125);
          v133 = v129 * powf(fmaxf(v132 - v127, 0.0) / (v128 + (v130 * v132)), v126);
          v134 = -v133;
          if (v131 >= 0.0)
          {
            v134 = v133;
          }

          *(a2 + 4 * v124) = v134;
          v124 += a3;
        }

        while (v124 < v9);
      }
    }

    else if (v38 == 6)
    {
      v168 = *(a1 + 72);
      if (v9 > v168)
      {
        v169 = *(a1 + 116);
        v170 = *(a1 + 120);
        v171 = *(a1 + 124);
        v172 = *(a1 + 128);
        v173 = *(a1 + 132);
        v174 = 1.0 / *(a1 + 136);
        do
        {
          v175 = *(a2 + 4 * v168);
          v176 = powf(v174 * fabsf(v175), v169);
          v177 = (v171 + (v172 * v176)) / ((v173 * v176) + 1.0);
          v178 = powf(v177, v170);
          if (v175 < 0.0)
          {
            v178 = -v178;
          }

          *(a2 + 4 * v168) = v178;
          v168 += a3;
        }

        while (v168 < v9);
      }
    }

    else
    {
      v39 = *(a1 + 72);
      if (v9 > v39)
      {
        v40 = *(a1 + 116);
        v41 = *(a1 + 120);
        v42 = *(a1 + 124);
        v43 = *(a1 + 128);
        v44 = *(a1 + 132);
        do
        {
          v45 = *(a2 + 4 * v39);
          v46 = fabsf(v45);
          if (v46 <= 0.5)
          {
            v47 = (v45 * v45) / 3.0;
          }

          else
          {
            v47 = v43 * (v41 + expf((v46 - v42) / v40));
          }

          if (v45 < 0.0)
          {
            v47 = -v47;
          }

          *(a2 + 4 * v39) = v44 * v47;
          v39 += a3;
        }

        while (v39 < v9);
      }
    }
  }

  else if (!v10)
  {
    v11 = *(a1 + 104);
    v12 = v11[4];
    v13 = CMMTable::UInt8Data(v11[2], v11[3]);
    v14 = *(a1 + 72);
    if (v9 > v14)
    {
      v15 = v13;
      v16 = (v12 >> 2) - 1;
      v17 = *(a1 + 144);
      v18 = *(a1 + 148);
      v19 = *(a1 + 152);
      v20 = *(a1 + 156);
      v21 = (v13 + 0x4000);
      do
      {
        v22 = *(a2 + 4 * v14);
        v23 = *(a1 + 34);
        if ((LODWORD(v22) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          bzero(__str, 0x400uLL);
          snprintf(__str, 0x400uLL, "CMMConvTRC::ConvertFloat input is not a valid value (%f)", v22);
          CMMThrowExceptionWithLog(0, __str, v24, v25, v26, v27, v28, v29);
        }

        v30 = fabsf(v22);
        if (v22 < 0.0)
        {
          v31 = v23;
        }

        else
        {
          v31 = 0;
        }

        if (!v23)
        {
          v30 = v22;
        }

        if (v30 <= 1.0)
        {
          if (v30 >= 0.0)
          {
            v33 = v30 * v16;
            v35 = v33 + 1;
            if (v16 < v35)
            {
              v35 = v16;
            }

            v34 = v15[v33];
            v36 = v34 + ((v15[v35] - v34) * (v33 - v33));
            v32 = -v36;
            if (!v31)
            {
              v32 = v36;
            }
          }

          else if (v183)
          {
            v32 = v18 + (v17 * v30);
          }

          else
          {
            v32 = *v15;
          }
        }

        else if (v183)
        {
          v32 = v20 + (v19 * v30);
        }

        else
        {
          v32 = *v21;
        }

        *(a2 + 4 * v14) = v32;
        v14 += a3;
      }

      while (v14 < v9);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

CFDataRef CMMConvTRC::create_flattened_TRC_data(CMMConvTRC *this, CFDictionaryRef theDict, unsigned int *a3)
{
  *a3 = 4097;
  if (!theDict || !CFDictionaryContainsKey(theDict, kColorSyncTransformTRCSize))
  {
    goto LABEL_21;
  }

  Value = CFDictionaryGetValue(theDict, kColorSyncTransformTRCSize);
  valuePtr = 4097;
  if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr) == 1)
  {
    v7 = valuePtr;
    *a3 = valuePtr;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = *a3;
    if (!*a3)
    {
LABEL_8:
      v7 = *(this + 20);
      *a3 = v7;
    }
  }

  if (v7 == 4097 || (v8 = 4 * v7, (Mutable = CFDataCreateMutable(0, v8)) == 0))
  {
LABEL_21:
    v21 = CMMTable::UInt8Data(*(*(this + 13) + 16), *(*(this + 13) + 24));
    return CFDataCreate(0, v21, 16388);
  }

  v10 = Mutable;
  CFDataSetLength(Mutable, v8);
  v11 = CMMTable::UInt8Data(*(*(this + 13) + 16), *(*(this + 13) + 24));
  MutableBytePtr = CFDataGetMutableBytePtr(v10);
  v13 = *a3;
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = (i * 4096.0) / (v13 - 1);
      v16 = vcvtms_u32_f32(v15);
      if (v16 >= 0x1000)
      {
        v17 = 4096;
      }

      else
      {
        v17 = v16;
      }

      v18 = (v11 + 4 * v17);
      v19 = *v18;
      if (v16 <= 0xFFF)
      {
        v20 = v15 - v17;
        if (v20 != 0.0)
        {
          v19 = v19 + ((v18[1] - v19) * v20);
        }
      }

      *&MutableBytePtr[4 * i] = v19;
    }
  }

  return v10;
}

void CMMConvNode::PrintInfo(CMMConvNode *this)
{
  v4 = 0;
  CMMMemMgr::CMMMemMgr(&v4);
  v2 = (*(*this + 208))(this, 0);
  v3 = v2;
  if (v2)
  {
    CFShow(v2);
    CFRelease(v3);
  }

  CMMMemMgr::ReleaseMemList(&v4);
}

void sub_19A946F90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

uint64_t CMMConvTRC::ClampOutput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = *(result + 72); i < a4 * a3; i += a3)
  {
    v5 = *(a2 + 4 * i);
    v6 = *(result + 44);
    if (v5 <= v6)
    {
      v6 = *(a2 + 4 * i);
    }

    if (v5 >= *(result + 40))
    {
      v7 = v6;
    }

    else
    {
      v7 = *(result + 40);
    }

    *(a2 + 4 * i) = v7;
  }

  return result;
}

uint64_t CMMConvTRC::ClampInput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = *(result + 72); i < a4 * a3; i += a3)
  {
    v5 = *(a2 + 4 * i);
    v6 = *(result + 44);
    if (v5 <= v6)
    {
      v6 = *(a2 + 4 * i);
    }

    if (v5 >= *(result + 40))
    {
      v7 = v6;
    }

    else
    {
      v7 = *(result + 40);
    }

    *(a2 + 4 * i) = v7;
  }

  return result;
}

uint64_t CMMConvTRC::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(*a1 + 256))(a1, a2, a4, a5, *(a3 + 1));
}

{
  v5 = a4;
  v8 = a5 * a4;
  result = CMMTable::UInt8Data(*(*(a1 + 64) + 16), *(*(a1 + 64) + 24));
  v10 = *(a1 + 72);
  if (v8 > v10)
  {
    v11 = v10 + v5;
    do
    {
      v12 = *(a2 + 4 * v10);
      if (v12 >= 0x1000001)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = -171;
      }

      v13 = (result + ((v12 >> 10) & 0x3FFFFC));
      v14 = *v13;
      v15 = v12 & 0xFFF;
      if (v15)
      {
        v14 += ((v13[1] - v14) * v15 + 2048) >> 12;
      }

      *(a2 + 4 * v10) = v14;
      v10 = v11;
      v16 = v8 > v11;
      v11 += v5;
    }

    while (v16);
  }

  return result;
}

_DWORD *CMMConvTRC::SetOutputClamp(CMMConvTRC *this)
{
  *(this + 36) = 1;
  result = *(this + 3);
  if (result)
  {
    v3 = **result;
    if (result)
    {
      if (result[18] < *(this + 18))
      {
        v4 = *(*result + 48);

        return v4();
      }
    }
  }

  return result;
}

int *InvertLUT(int *result, int *a2)
{
  v2 = 0;
  v3 = *result;
  v4 = result[4096];
  v5 = 4096;
  do
  {
    if (v3 <= v4)
    {
      v6 = v2;
    }

    else
    {
      v6 = v5;
    }

    v7 = result[v6];
    if (v2)
    {
      if (v7 <= 1)
      {
        v7 = 1;
      }

      v8 = &a2[v2];
      if (*(v8 - 1) > v7)
      {
        v7 = *(v8 - 1);
      }

      *v8 = v7;
    }

    else
    {
      *a2 = v7;
    }

    ++v2;
    --v5;
  }

  while (v2 != 4097);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = a2 + 2;
  v13 = *a2;
  v14 = a2[1];
  v15 = 4096;
  do
  {
    v16 = v9 << 12;
    if (v10 <= 4094 && v16 >= a2[v10 + 1])
    {
      v17 = v10;
      v18 = v15 - (v10 << 12);
      v19 = v18 + 16773120;
      v11 = v18 + 16769024;
      while (1)
      {
        v13 = v14;
        v14 = v12[v17];
        if (v17 == 4094)
        {
          break;
        }

        v20 = v15;
        v15 += 4096;
        v21 = v12[v17++];
        if (v16 < v21)
        {
          v11 = v20;
          v10 = v17;
          goto LABEL_21;
        }
      }

      v10 = 4095;
      v15 = v19;
    }

LABEL_21:
    v22 = (v14 - v13);
    v23 = v15;
    if (v22 >= 1)
    {
      v23 = v11 + ((v22 >> 1) + ((v16 - v13) << 12)) / v22;
    }

    result[v9] = v23;
    if ((v23 & 0x80000000) != 0)
    {
      v23 = 0;
    }

    else
    {
      if (v23 < 0x1000001)
      {
        goto LABEL_28;
      }

      v23 = 0x1000000;
    }

    result[v9] = v23;
LABEL_28:
    if (v3 > v4)
    {
      result[v9] = 0x1000000 - v23;
    }

    ++v9;
  }

  while (v9 != 4097);
  v24 = result[4096];
  v25 = result[1] - *result;
  if (v25 < 0)
  {
    v25 = *result - result[1];
  }

  if (v25 < 0x800)
  {
    result[1] = *result;
  }

  v26 = v24 - result[4095];
  if (v26 < 0)
  {
    v26 = result[4095] - v24;
  }

  if (v26 <= 0x7FF)
  {
    result[4095] = v24;
  }

  return result;
}

void CMMConvPQEOTF::ConvertFloat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 92) == 17)
  {

    CMMConvTRC::ConvertFloat(a1, a2, a3, a4, 0);
  }

  else
  {
    v7 = a4 * a3;
    v8 = *(a1 + 72);
    if (a4 * a3 > v8)
    {
      do
      {
        v9 = *(a2 + 4 * v8);
        v10 = powf(fabsf(v9), 0.012683);
        v11 = powf(fmaxf(v10 + -0.83594, 0.0) / ((v10 * -18.688) + 18.852), 6.2774);
        if (v9 < 0.0)
        {
          v11 = -v11;
        }

        *(a2 + 4 * v8) = *(a1 + 164) * v11;
        v8 += a3;
      }

      while (v8 < v7);
    }
  }
}

CFDataRef CMMConvPQEOTF::create_flattened_TRC_data(CMMConvPQEOTF *this, CFDictionaryRef theDict, unsigned int *a3)
{
  *a3 = 0;
  if (!theDict)
  {
    valuePtr = 4097;
LABEL_10:
    v6 = 65552;
    *a3 = 65552;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(theDict, @"com.apple.cmm.PQEOTFTableSize");
  valuePtr = 4097;
  if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr) == 1)
  {
    v6 = valuePtr;
    *a3 = valuePtr;
  }

  else
  {
    v6 = *a3;
  }

  if (v6 != 1024)
  {
    if (v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*(this + 41) == 1.0)
  {
    return CFDataCreate(0, kPQEOTFFloat1024Data, 4096);
  }

  v6 = 1024;
LABEL_11:
  v7 = 4 * v6;
  Mutable = CFDataCreateMutable(0, v7);
  v9 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, v7);
    MutableBytePtr = CFDataGetMutableBytePtr(v9);
    v12 = *a3;
    if (v12)
    {
      v13 = *(this + 41);
      *v11.i32 = (v12 - 1);
      v28 = vdupq_n_s64(v12 - 1);
      v14 = vdup_lane_s32(v11, 0);
      v15 = (v12 + 1) & 0x1FFFFFFFELL;
      v16 = 0x100000000;
      v17 = xmmword_19A96E050;
      v18 = (MutableBytePtr + 4);
      v19 = vdup_n_s32(0xBF560000);
      v20 = vdup_n_s32(0xC1958000);
      v21 = vdup_n_s32(0x4196D000u);
      v27 = vdupq_n_s64(2uLL);
      do
      {
        v33 = vmovn_s64(vcgeq_u64(v28, v17));
        v34 = v17;
        v22 = vabs_f32(vdiv_f32(vcvt_f32_u32(v16), v14));
        v29 = v22.f32[0];
        v31 = powf(v22.f32[1], 0.012683);
        v23.f32[0] = powf(v29, 0.012683);
        v23.f32[1] = v31;
        v24 = vdiv_f32(vmaxnm_f32(vadd_f32(v23, v19), 0), vmla_f32(v21, v20, v23));
        v30 = v24.f32[0];
        v32 = powf(v24.f32[1], 6.2774);
        v25.f32[0] = powf(v30, 6.2774);
        v25.f32[1] = v32;
        if (v33.i8[0])
        {
          *(v18 - 1) = v13 * v25.f32[0];
        }

        if (v33.i8[4])
        {
          *v18 = vmuls_lane_f32(v13, v25, 1);
        }

        v17 = vaddq_s64(v34, v27);
        v16 = vadd_s32(v16, 0x200000002);
        v18 += 2;
        v15 -= 2;
      }

      while (v15);
    }
  }

  return v9;
}

__CFDictionary *CMMConvPQEOTF::FlattenConversion(CMMConvPQEOTF *this, const __CFDictionary *a2)
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_29;
  }

  v5 = CFNumberCreate(0, kCFNumberSInt32Type, this + 72);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(Mutable, kColorSyncConversionChannelID, v5);
    CFRelease(v6);
  }

  v7 = CFNumberCreate(0, kCFNumberSInt32Type, this + 76);
  if (v7)
  {
    v8 = v7;
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.ChannelsInStageCount", v7);
    CFRelease(v8);
  }

  v9 = MEMORY[0x1E695E4D0];
  if (!a2 || CFDictionaryGetValue(a2, @"com.apple.cmm.PQEOTFTable") != *v9)
  {
    if (*(this + 23) != 17)
    {
      v10 = kColorSyncConversionParamPQEOTF;
      v11 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (v11)
      {
        v12 = v11;
        v13 = this + 112;
        v14 = 6;
        while (1)
        {
          v15 = CFNumberCreate(0, kCFNumberFloat32Type, v13);
          if (!v15)
          {
            break;
          }

          v16 = v15;
          CFArrayAppendValue(v12, v15);
          CFRelease(v16);
          v13 += 4;
          if (!--v14)
          {
            v17 = CFNumberCreate(0, kCFNumberFloat32Type, this + 140);
            if (v17)
            {
              v18 = v17;
              CFArrayAppendValue(v12, v17);
              CFRelease(v18);
            }

            CFDictionaryAddValue(Mutable, v10, v12);
            break;
          }
        }

        v19 = v12;
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    goto LABEL_18;
  }

  if (*(this + 23) == 17)
  {
LABEL_18:
    v20 = CMMTable::UInt8Data(*(*(this + 13) + 16), *(*(this + 13) + 24));
    v21 = CFDataCreate(0, v20, *(*(this + 13) + 32));
    if (v21)
    {
      v22 = v21;
      CFDictionaryAddValue(Mutable, kColorSyncConversion1DLut, v21);
      CFRelease(v22);
    }

    LODWORD(valuePtr[0]) = 1024;
    goto LABEL_21;
  }

  LODWORD(valuePtr[0]) = 0;
  v32 = (*(*this + 248))(this, a2, valuePtr);
  if (v32)
  {
    v33 = v32;
    CFDictionaryAddValue(Mutable, kColorSyncConversion1DLut, v32);
    CFRelease(v33);
  }

LABEL_21:
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  if (v23)
  {
    v24 = v23;
    CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v23);
    v19 = v24;
LABEL_23:
    CFRelease(v19);
  }

LABEL_24:
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, this + 92);
  CFDictionaryAddValue(Mutable, kColorSyncTransformGammaID, v25);
  CFRelease(v25);
  CFDictionaryAddValue(Mutable, kColorSyncTransformPureGammaOriginalTRC, *MEMORY[0x1E695E4C0]);
  CMMConvNode::AddFixedPointClippingRange(Mutable, v26, *(this + 10), *(this + 11));
  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v9);
  }

  CMMConvNode::AddClampingInfo(this, Mutable);
  v35 = 0;
  v34 = *(this + 41);
  if (v34 != 1.0)
  {
    v27 = CFNumberCreate(0, kCFNumberFloat32Type, &v35);
    v28 = CFNumberCreate(0, kCFNumberFloat32Type, &v34);
    valuePtr[0] = v27;
    valuePtr[1] = v28;
    v29 = CFArrayCreate(0, valuePtr, 2, MEMORY[0x1E695E9C0]);
    CFRelease(v27);
    CFRelease(v28);
    if (v29)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionOutputRange", v29);
      CFRelease(v29);
    }
  }

LABEL_29:
  v30 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t CMMConvPQEOTF::ClampOutput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = *(result + 72); i < a4 * a3; i += a3)
  {
    v5 = *(a2 + 4 * i);
    v6 = *(result + 164);
    if (v5 <= v6)
    {
      v6 = *(a2 + 4 * i);
    }

    if (v5 >= 0.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }

    *(a2 + 4 * i) = v7;
  }

  return result;
}

uint64_t CMMConvPQEOTF::ClampInput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = *(result + 72); i < a4 * a3; i += a3)
  {
    v5 = *(a2 + 4 * i);
    if (v5 <= 1.0)
    {
      v6 = *(a2 + 4 * i);
    }

    else
    {
      v6 = 1.0;
    }

    if (v5 >= 0.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }

    *(a2 + 4 * i) = v7;
  }

  return result;
}

void CMMConvPQEOTF::~CMMConvPQEOTF(CMMConvPQEOTF *this)
{
  CMMConvTRC::~CMMConvTRC(this);

  CMMBase::operator delete(v1);
}

void CMMConvHLGInvOETF::ConvertFloat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 * a3;
  v5 = *(a1 + 72);
  if (a4 * a3 > v5)
  {
    do
    {
      v9 = *(a2 + 4 * v5);
      v10 = *(a1 + 136);
      v11 = fabsf(v9);
      if (v11 <= 0.5)
      {
        v12 = v9 * v9;
        v13 = 3.0;
      }

      else
      {
        v12 = expf((v11 + -0.55991) / 0.17883) + 0.28467;
        v13 = 12.0;
      }

      v14 = v12 / v13;
      v15 = -v10;
      if (v9 >= 0.0)
      {
        v15 = v10;
      }

      *(a2 + 4 * v5) = v15 * v14;
      v5 += a3;
    }

    while (v5 < v4);
  }
}

__CFData *CMMConvHLGInvOETF::create_flattened_TRC_data(CMMConvHLGInvOETF *this, CFDictionaryRef theDict, unsigned int *a3)
{
  *a3 = 0;
  if (!theDict)
  {
    valuePtr = 4097;
LABEL_9:
    v6 = 65552;
    *a3 = 65552;
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(theDict, @"com.apple.cmm.HLGInvOETFTableSize");
  valuePtr = 4097;
  if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr) == 1)
  {
    v6 = valuePtr;
    *a3 = valuePtr;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = *a3;
    if (!*a3)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v7 = 4 * v6;
  Mutable = CFDataCreateMutable(0, v7);
  v9 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, v7);
    MutableBytePtr = CFDataGetMutableBytePtr(v9);
    v11 = *a3;
    if (v11)
    {
      v12 = MutableBytePtr;
      for (i = 0; i != v11; ++i)
      {
        v14 = i / (v11 - 1);
        v15 = *(this + 34);
        v16 = fabsf(v14);
        if (v16 <= 0.5)
        {
          v17 = v14 * v14;
          v18 = 3.0;
        }

        else
        {
          v17 = expf((v16 + -0.55991) / 0.17883) + 0.28467;
          v18 = 12.0;
        }

        v19 = v17 / v18;
        *&v12[4 * i] = v15 * v19;
      }
    }
  }

  return v9;
}