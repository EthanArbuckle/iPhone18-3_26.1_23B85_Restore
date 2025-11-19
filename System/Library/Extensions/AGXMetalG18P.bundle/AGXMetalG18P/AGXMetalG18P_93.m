void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v213 = v15;
  v17 = v16;
  v19 = v18;
  v211 = v20;
  v212 = v21;
  v199 = v22;
  v23 = v12;
  v241 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v217 = v14;
  v24 = v14 >> 4;
  v198 = v14 + a10 - 1;
  v200 = v198 >> 4;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v218 = v23;
  if (*(v23 + 168))
  {
    v27 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v27 = 0;
  }

  v28 = (v27 & 0xD00) == 0 || v27 == 768;
  v29 = v27 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v220 = v31;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v33 = v23;
  v210 = isLevelTiled;
  v34 = v213;
  if (v24 <= v200)
  {
    v209 = v213 + a9 - 1;
    if (v213 >> 4 <= v209 >> 4)
    {
      v35 = a11;
      v219 = (v19 - 1) >> 4;
      v195 = v19 - 1;
      v203 = (v19 - 1) & 0xF;
      v196 = (v17 - 1) & 0xF;
      v197 = (v17 - 1) >> 4;
      v36 = vadd_s32(__PAIR64__(v19, v17), 0xF0000000FLL);
      v37 = vcgt_u32(v36, 0x1F0000001FLL);
      v208 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v36, 4uLL))))))), v37);
      v207 = v37;
      v194 = 8 * v26 * v25;
      v38 = 2 * a11;
      do
      {
        v39 = (16 * v24) | 0xF;
        if (16 * v24 <= v217)
        {
          v40 = v217;
        }

        else
        {
          v40 = 16 * v24;
        }

        if (v198 < v39)
        {
          v39 = v198;
        }

        v216 = 16 * v24;
        v206 = v40 - 16 * v24;
        v41 = v39 - v40;
        v42 = v41 + 1;
        v43 = v41 != v196;
        v205 = v42;
        v44 = v213 >> 4;
        if (v24 == v197)
        {
          v45 = v196 + 1;
        }

        else
        {
          v45 = 16;
        }

        if (v24 != v197)
        {
          v43 = v42 != 16;
        }

        v204 = v43;
        v215 = v199 + (v40 - v217) * v35;
        v214 = v45;
        v201 = v45;
        do
        {
          v46 = 16 * v44;
          v47 = 16 * (v44 + 1) - 1;
          if (16 * v44 <= v34)
          {
            v48 = v34;
          }

          else
          {
            v48 = 16 * v44;
          }

          if (v209 < v47)
          {
            v47 = v213 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v44 == v219)
          {
            v51 = v203 + 1;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (v216 >= v217 && v46 >= v34)
          {
            v53 = v49 != v203;
            if (v44 != v219)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v204;
          }

          if (v210)
          {
            v74 = 0;
            v75 = v194 >> (*(v33 + 57) != 0);
            v76 = 1;
            if (v75 <= 63)
            {
              if (v75 > 15)
              {
                if (v75 == 16)
                {
                  v76 = 0;
                  v77 = 0;
                  v78 = 64;
                  v74 = 128;
                }

                else
                {
                  v77 = 1;
                  v78 = 0;
                  if (v75 == 32)
                  {
                    v76 = 0;
                    v77 = 0;
                    v74 = 64;
                    v78 = 64;
                  }
                }
              }

              else if (v75 == 4)
              {
                v76 = 0;
                v77 = 0;
                v78 = 128;
                v74 = 256;
              }

              else
              {
                v77 = 1;
                v78 = 0;
                if (v75 == 8)
                {
                  v76 = 0;
                  v77 = 0;
                  v74 = 128;
                  v78 = 128;
                }
              }
            }

            else if (v75 <= 255)
            {
              if (v75 == 64)
              {
                v76 = 0;
                v77 = 0;
                v78 = 32;
                v74 = 64;
              }

              else
              {
                v77 = 1;
                v78 = 0;
                if (v75 == 128)
                {
                  v76 = 0;
                  v77 = 0;
                  v74 = 32;
                  v78 = 32;
                }
              }
            }

            else if (v75 == 256)
            {
              v76 = 0;
              v78 = 16;
              v77 = 1;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v74 = 16;
              v77 = 1;
              v78 = 16;
            }

            else
            {
              v77 = 1;
              v78 = 0;
              if (v75 == 1024)
              {
                v78 = 8;
                v74 = 16;
              }
            }

            v184 = (v74 >> 4) - 1;
            if (v76)
            {
              v185 = 0;
              if (v77)
              {
                goto LABEL_167;
              }

LABEL_156:
              v186 = 32 - __clz(~(-1 << -__clz(((v78 + 15) >> 4) - 1)));
              if (v186 | v185)
              {
                goto LABEL_157;
              }

LABEL_168:
              v193 = 0;
            }

            else
            {
              v185 = 32 - __clz(~(-1 << -__clz(v184)));
              if ((v77 & 1) == 0)
              {
                goto LABEL_156;
              }

LABEL_167:
              v186 = 0;
              if (!v185)
              {
                goto LABEL_168;
              }

LABEL_157:
              v187 = 0;
              v188 = 0;
              v189 = v44 & v184;
              v190 = v185 != 0;
              v191 = v186 != 0;
              v192 = 1;
              do
              {
                --v185;
                if (v190)
                {
                  v188 |= (v192 & v189) << v187++;
                }

                else
                {
                  v185 = 0;
                }

                --v186;
                if (v191)
                {
                  v188 |= (v192 & v24 & ((v78 >> 4) - 1)) << v187++;
                }

                else
                {
                  v186 = 0;
                }

                v192 *= 2;
                --v187;
                v191 = v186 != 0;
                v190 = v185 != 0;
              }

              while (v186 | v185);
              v193 = v188 << 11;
            }

            v61 = v193 + ((v46 / v74 + v216 / v78 * ((v74 + v195) / v74)) << 14);
            goto LABEL_55;
          }

          if (v208)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v57 = v207.i8[0];
            v58 = v207.i8[4];
            v60 = v208.i32[0];
            v59 = v208.i32[1];
            do
            {
              --v59;
              if (v58)
              {
                v55 |= (v56 & v44) << v54++;
              }

              else
              {
                v59 = 0;
              }

              --v60;
              if (v57)
              {
                v55 |= (v56 & v24) << v54++;
              }

              else
              {
                v60 = 0;
              }

              v56 *= 2;
              --v54;
              v57 = v60 != 0;
              v58 = v59 != 0;
            }

            while (v60 | v59);
            v61 = v55 << 11;
          }

          else
          {
            v61 = 0;
          }

LABEL_55:
          v62 = *(v33 + 128) >> (*(v33 + 144) + a12);
          if (v62 <= 1)
          {
            v62 = 1;
          }

          v63 = v62 + 15;
          if (v63 < 0x20)
          {
            v64 = 0;
          }

          else
          {
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 4) - 1)));
          }

          v65 = *(v33 + 132) >> (*(v33 + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 15;
          if (v66 < 0x20)
          {
            v67 = 0;
            if (!v64)
            {
LABEL_80:
              v73 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 4) - 1)));
            if (!(v67 | v64))
            {
              goto LABEL_80;
            }
          }

          v68 = 0;
          v69 = 0;
          v70 = v64 != 0;
          v71 = v67 != 0;
          v72 = 1;
          do
          {
            --v64;
            if (v70)
            {
              v69 |= (v72 & v44) << v68++;
            }

            else
            {
              v64 = 0;
            }

            --v67;
            if (v71)
            {
              v69 |= (v72 & v24) << v68++;
            }

            else
            {
              v67 = 0;
            }

            v72 *= 2;
            --v68;
            v71 = v67 != 0;
            v70 = v64 != 0;
          }

          while (v67 | v64);
          v73 = 8 * v69;
LABEL_81:
          v79 = (v212 + v73);
          v80 = v215 + 8 * (v48 - v34);
          v81 = (v211 + v61);
          if (v220)
          {
            if (!(v52 & 1 | (v51 < 0x10u) | (v214 < 0x10)))
            {
              v85 = __dst;
LABEL_89:
              v87 = &byte_29D2F2FD5;
              v88 = 16;
              v89 = v85;
              do
              {
                v112 = *v87;
                v113 = *(v87 - 1);
                if (v51 <= 8 * v113 || 4 * v112 >= v45)
                {
                  v111 = 0;
                }

                else
                {
                  v90 = (v80 + 4 * a11 * v112 + (v113 << 6));
                  v91 = (v90 + v35);
                  v93 = *v90;
                  v94 = v90[1];
                  v95 = v90[2];
                  v96 = v90[3];
                  v92 = (v90 + v38);
                  v97 = v91[2];
                  v98 = v91[3];
                  v99 = *v91;
                  v101 = *v92;
                  v102 = v92[1];
                  v103 = v92[2];
                  v104 = v92[3];
                  v100 = (v92 + v35);
                  v105 = v94;
                  v106 = v91[1];
                  v107 = v100[1];
                  v108 = v100[2];
                  v109 = v100[3];
                  v110 = *v100;
                  *v89 = v93;
                  v89[1] = v99;
                  v89[2] = v105;
                  v89[3] = v106;
                  v89[4] = v101;
                  v89[5] = v110;
                  v89[6] = v102;
                  v89[7] = v107;
                  v89[8] = v95;
                  v89[9] = v97;
                  v89[10] = v96;
                  v89[11] = v98;
                  v89[12] = v103;
                  v89[13] = v108;
                  v89[14] = v104;
                  v89[15] = v109;
                  v89 += 16;
                  v111 = -1;
                }

                *v79++ = v111;
                v87 += 2;
                v88 -= 2;
              }

              while (v88);
              goto LABEL_137;
            }

            v82 = v50;
            v83 = v52;
            v84 = v48;
            memcpy(__dst, v81, sizeof(__dst));
            v85 = __dst;
            v48 = v84;
            v52 = v83;
            v45 = v201;
            v50 = v82;
            v35 = a11;
            v38 = 2 * a11;
            v33 = v218;
          }

          else
          {
            v85 = (v211 + v61);
            if (!(v52 & 1 | (v51 < 0x10u) | (v214 < 0x10)))
            {
              goto LABEL_89;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v33;
          v222 = v85;
          v230 = v51;
          v231 = v45;
          v226 = v206;
          v227 = v48 - v46;
          v223 = v79;
          v224 = v80;
          v225 = v35;
          v228 = v205;
          v229 = v50;
          if (v52)
          {
            v86 = v85;
            dispatch_sync(*(*(v33 + 8) + 16552), block);
            v85 = v86;
            v33 = v218;
            v34 = v213;
            goto LABEL_137;
          }

          v202 = v85;
          v115 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v233, 128, v85, *v79)];
          v116 = v115 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v235, 128, v115, v79[1]);
          v117 = v116 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v234, 128, v116, v79[2]);
          v118 = v117 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v236, 128, v117, v79[3]);
          v119 = v118 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v237, 128, v118, v79[4]);
          v120 = v119 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v239, 128, v119, v79[5]);
          v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v238, 128, v120, v79[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v240, 128, v120 + v121, v79[7]);
          v122 = v228;
          if (v228)
          {
            v123 = v229;
            if (v229)
            {
              v124 = 0;
              v125 = v226 << 7;
              v126 = 8 * v227;
              v127 = v233 + v125 + v126;
              v128 = v224;
              v129 = v225;
              v130 = 8 * v229;
              if (8 * v229)
              {
                v131 = (8 * v229 - 1) >> 32 == 0;
              }

              else
              {
                v131 = 0;
              }

              v132 = !v131;
              v134 = v127 < v224 + v225 * (v228 - 1) + 8 * v229 && v224 < &__dst[128 * v228 + 1920 + 128 * v226 + 8 * v229 + v126];
              v135 = v130 & 0x1FFFFFFE0;
              v136 = v132 | (v225 < 0) | v134;
              v137 = &v233[1] + v125 + v126;
              v138 = (v224 + 16);
              v139 = v127;
              v140 = v224;
              do
              {
                v141 = (v128 + v124 * v129);
                v142 = &v127[128 * v124];
                if (v136)
                {
                  v143 = 0;
                }

                else
                {
                  if (v123 < 4)
                  {
                    v147 = 0;
LABEL_124:
                    v152 = -8 * v123 + v147;
                    v153 = (v140 + v147);
                    v154 = &v139[v147];
                    do
                    {
                      v155 = *v153++;
                      *v154 = v155;
                      v154 += 8;
                      v152 += 8;
                    }

                    while (v152);
                    goto LABEL_112;
                  }

                  v148 = v138;
                  v149 = v137;
                  v150 = v130 & 0x1FFFFFFE0;
                  do
                  {
                    v151 = *v148;
                    *(v149 - 1) = *(v148 - 1);
                    *v149 = v151;
                    v149 += 2;
                    v148 += 2;
                    v150 -= 32;
                  }

                  while (v150);
                  if (v130 == v135)
                  {
                    goto LABEL_112;
                  }

                  v147 = v130 & 0x1FFFFFFE0;
                  if ((v123 & 3) != 0)
                  {
                    goto LABEL_124;
                  }

                  v141 += v135;
                  v142 += v135;
                  v143 = v130 & 0xFFFFFFE0;
                }

                v144 = v143 + 1;
                do
                {
                  v145 = *v141++;
                  *v142++ = v145;
                }

                while (v130 > v144++);
LABEL_112:
                ++v124;
                v137 += 128;
                v138 = (v138 + v129);
                v140 += v129;
                v139 += 128;
              }

              while (v124 != v122);
            }
          }

          v156 = v222;
          v157 = v223;
          v158 = v230;
          v159 = &byte_29D2F2FD5;
          v160 = 16;
          v161 = v231;
          v34 = v213;
          v33 = v218;
          do
          {
            v181 = *v159;
            v182 = *(v159 - 1);
            if (v158 <= 8 * v182 || 4 * v181 >= v161)
            {
              v180 = 0;
            }

            else
            {
              v162 = &v233[32 * v181 + 4 * v182];
              v163 = v162[2];
              v164 = v162[10];
              v165 = v162[3];
              v166 = v162[11];
              v167 = *v162;
              v168 = v162[8];
              v169 = v162[1];
              v170 = v162[16];
              v171 = v162[17];
              v172 = v162[18];
              v173 = v162[19];
              v174 = v162[9];
              v162 += 24;
              v175 = v162[1];
              v176 = v162[2];
              v177 = v162[3];
              v178 = *v162;
              *v156 = v167;
              v156[1] = v168;
              v156[2] = v169;
              v156[3] = v174;
              v156[4] = v170;
              v156[5] = v178;
              v156[6] = v171;
              v156[7] = v175;
              v156[8] = v163;
              v156[9] = v164;
              v156[10] = v165;
              v156[11] = v166;
              v179 = v156 + 12;
              v156 += 16;
              v180 = -1;
              *v179 = v172;
              v179[1] = v176;
              v179[2] = v173;
              v179[3] = v177;
            }

            *v157++ = v180;
            v159 += 2;
            v160 -= 2;
          }

          while (v160);
          v85 = v202;
LABEL_137:
          if (v220)
          {
            memcpy(v81, v85, 0x800uLL);
            v33 = v218;
            v34 = v213;
          }

          v28 = v44++ == v209 >> 4;
        }

        while (!v28);
        v28 = v24++ == v200;
      }

      while (!v28);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v261 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v212 = a8;
  v194 = a8 + a10 - 1;
  v213 = a1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 4;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v193 = v194 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v216 = v24;
  result = a1;
  if (*(a1 + 232) == 1)
  {
    v26 = *(a1 + 273);
    v27 = *(a1 + 272);
    v28 = __clz(v19);
    if (1 << v26 >= a6 || a5 >> v27)
    {
      if (!(a6 >> v26) && 1 << v27 < a5)
      {
        if (a6 < 2)
        {
          v31 = 0;
        }

        else
        {
          v31 = __clz(~(-1 << -__clz(v20))) | 0xFFFFFFE0;
        }

        v27 += v26 + v31;
        v26 = -v31;
      }
    }

    else
    {
      v29 = 32 - __clz(~(-1 << -v28));
      v30 = v27 + v26;
      if (a5 < 2)
      {
        v29 = 0;
      }

      v26 = v30 - v29;
      v27 = v29;
    }

    if (a5 < 2)
    {
      if (v27)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v28)) < v27)
    {
LABEL_27:
      v206 = 0;
LABEL_32:
      v203 = v27 - 4;
      v197 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v191 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v32 = 0;
    }

    else
    {
      v32 = 32 - __clz(~(-1 << -__clz(v20)));
    }

    v206 = v32 >= v26;
    goto LABEL_32;
  }

  v206 = 0;
  v191 = 0;
  v197 = 0;
  v203 = 0;
LABEL_33:
  if (v18 <= v193)
  {
    v205 = a7 + a9 - 1;
    v190 = a7 >> 4;
    if (a7 >> 4 <= v205 >> 4)
    {
      v214 = v19 >> 4;
      v199 = v19 & 0xF;
      v188 = v20 & 0xF;
      v189 = v20 >> 4;
      v187 = ~(-1 << v197);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v35.i8 = vcgt_u32(v34, 0x1F0000001FLL);
      *v36.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), *v35.i8);
      v196 = v36.i64[0];
      v198 = v36.i32[0] | v36.i32[1];
      v195 = v35.i64[0];
      v204 = a7;
      do
      {
        v37 = (16 * v18) | 0xF;
        if (16 * v18 <= v212)
        {
          v38 = v212;
        }

        else
        {
          v38 = 16 * v18;
        }

        if (v194 < v37)
        {
          v37 = v194;
        }

        v202 = v38 - 16 * v18;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v188;
        v201 = v40;
        v42 = v40 != 16;
        v43 = v188 + 1;
        if (v18 != v189)
        {
          v43 = 16;
          v41 = v42;
        }

        v200 = v41;
        v44 = v190;
        v45 = v18 & v187;
        v210 = a3 + (v38 - v212) * a11;
        v211 = v43;
        v209 = v43;
        do
        {
          v46 = 16 * v44;
          v47 = 16 * (v44 + 1) - 1;
          if (16 * v44 <= a7)
          {
            v48 = a7;
          }

          else
          {
            v48 = 16 * v44;
          }

          if (v205 < v47)
          {
            v47 = v205;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v44 == v214)
          {
            v51 = v199 + 1;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (16 * v18 >= v212 && v46 >= a7)
          {
            v53 = v49 != v199;
            if (v44 != v214)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v200;
          }

          if (v206)
          {
            if (v203 | v197)
            {
              v54 = 0;
              v55 = 0;
              v56 = v197 != 0;
              v57 = 1;
              v59 = v203 != 0;
              v58 = v197;
              v60 = v203;
              do
              {
                --v60;
                if (v59)
                {
                  v55 |= (v44 & ~(-1 << v203) & v57) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                --v58;
                if (v56)
                {
                  v55 |= (v45 & v57) << v54++;
                }

                else
                {
                  v58 = 0;
                }

                v57 *= 2;
                --v54;
                v56 = v58 != 0;
                v59 = v60 != 0;
              }

              while (v58 | v60);
              v61 = v55 << 9;
            }

            else
            {
              v61 = 0;
            }

            v69 = v61 + *(result + 336) * ((v44 >> v203) + (v18 >> v197) * v191);
          }

          else if (v198)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v195;
            v66 = BYTE4(v195);
            v68 = v196;
            v67 = HIDWORD(v196);
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v44) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v65)
              {
                v63 |= (v64 & v18) << v62++;
              }

              else
              {
                v68 = 0;
              }

              v64 *= 2;
              --v62;
              v65 = v68 != 0;
              v66 = v67 != 0;
            }

            while (v68 | v67);
            v69 = v63 << 9;
          }

          else
          {
            v69 = 0;
          }

          v70 = *(result + 128) >> (*(result + 144) + a12);
          if (v70 <= 1)
          {
            v70 = 1;
          }

          v71 = v70 + 15;
          if (v71 < 0x20)
          {
            v72 = 0;
          }

          else
          {
            v72 = 32 - __clz(~(-1 << -__clz((v71 >> 4) - 1)));
          }

          v73 = *(result + 132) >> (*(result + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 15;
          if (v74 < 0x20)
          {
            v75 = 0;
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 4) - 1)));
          }

          if (v75 | v72)
          {
            v76 = 0;
            v77 = 0;
            v78 = v72 != 0;
            v79 = v75 != 0;
            v80 = 1;
            do
            {
              --v72;
              if (v78)
              {
                v77 |= (v80 & v44) << v76++;
              }

              else
              {
                v72 = 0;
              }

              --v75;
              if (v79)
              {
                v77 |= (v80 & v18) << v76++;
              }

              else
              {
                v75 = 0;
              }

              v80 *= 2;
              --v76;
              v79 = v75 != 0;
              v78 = v72 != 0;
            }

            while (v75 | v72);
            v81 = 8 * v77;
          }

          else
          {
            v81 = 0;
          }

          v82 = (a4 + v81);
          v83 = v210 + 2 * (v48 - a7);
          v215 = (a2 + v69);
          if (v216)
          {
            v84 = __dst;
            if (!(v52 & 1 | (v51 < 0x10u) | (v209 < 0x10)))
            {
              goto LABEL_109;
            }

            v85 = v50;
            v86 = (a4 + v81);
            v87 = v51;
            memcpy(__dst, (a2 + v69), sizeof(__dst));
            v50 = v85;
            v45 = v18 & v187;
            LOBYTE(v51) = v87;
            v82 = v86;
            result = v213;
          }

          else
          {
            v84 = (a2 + v69);
            if (!(v52 & 1 | (v51 < 0x10u) | (v209 < 0x10)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v83, a11, v84, v82, v51, v211);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v218 = v84;
          v226 = v51;
          v227 = v211;
          v222 = v202;
          v223 = v48 - v46;
          v219 = v82;
          v220 = v83;
          v221 = a11;
          v224 = v201;
          v225 = v50;
          if (v52)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v204;
            v88 = v44 + 1;
            goto LABEL_202;
          }

          v89 = *v82;
          a7 = v204;
          if (v89 == 63)
          {
            v91 = *(v84 + 1);
            v92 = *(v84 + 2);
            v93 = *(v84 + 3);
            v94 = vuzp2q_s32(*v84, v92);
            v229 = vuzp1q_s32(*v84, v92);
            v231 = v94;
            v36 = vuzp1q_s32(v91, v93);
            v35 = vuzp2q_s32(v91, v93);
            v233 = v36;
            v235 = v35;
            v90 = 64;
          }

          else if (v89 == 1)
          {
            v36 = vld1q_dup_s16(v84);
            v229 = v36;
            v231 = v36;
            v233 = v36;
            v235 = v36;
            v90 = 2;
          }

          else if (*v82)
          {
            v95 = v82;
            v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 32, v84, v89, *v36.i8, *v35.i8);
            v82 = v95;
          }

          else
          {
            v90 = 0;
            v229 = 0uLL;
            v231 = 0uLL;
            v233 = 0uLL;
            v235 = 0uLL;
          }

          v96 = v84 + v90;
          v97 = v82[1];
          if (v97 == 63)
          {
            v99 = *(v96 + 16);
            v100 = *(v96 + 32);
            v101 = *(v96 + 48);
            v102 = vuzp2q_s32(*v96, v100);
            v237 = vuzp1q_s32(*v96, v100);
            v239 = v102;
            v36 = vuzp1q_s32(v99, v101);
            v35 = vuzp2q_s32(v99, v101);
            v241 = v36;
            v243 = v35;
            v98 = 64;
          }

          else if (v97 == 1)
          {
            v36 = vld1q_dup_s16(v96);
            v237 = v36;
            v239 = v36;
            v241 = v36;
            v243 = v36;
            v98 = 2;
          }

          else if (v82[1])
          {
            v103 = v82;
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 32, v96, v97, *v36.i8, *v35.i8);
            v82 = v103;
          }

          else
          {
            v98 = 0;
            v237 = 0uLL;
            v239 = 0uLL;
            v241 = 0uLL;
            v243 = 0uLL;
          }

          v104 = v96 + v98;
          v105 = v82[2];
          if (v105 == 63)
          {
            v107 = *(v104 + 16);
            v108 = *(v104 + 32);
            v109 = *(v104 + 48);
            v110 = vuzp2q_s32(*v104, v108);
            v230 = vuzp1q_s32(*v104, v108);
            v232 = v110;
            v36 = vuzp1q_s32(v107, v109);
            v35 = vuzp2q_s32(v107, v109);
            v234 = v36;
            v236 = v35;
            v106 = 64;
          }

          else if (v105 == 1)
          {
            v36 = vld1q_dup_s16(v104);
            v230 = v36;
            v232 = v36;
            v234 = v36;
            v236 = v36;
            v106 = 2;
          }

          else if (v82[2])
          {
            v111 = v82;
            v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 32, v104, v105, *v36.i8, *v35.i8);
            v82 = v111;
          }

          else
          {
            v106 = 0;
            v230 = 0uLL;
            v232 = 0uLL;
            v234 = 0uLL;
            v236 = 0uLL;
          }

          v112 = v104 + v106;
          v113 = v82[3];
          if (v113 == 63)
          {
            v115 = *(v112 + 16);
            v116 = *(v112 + 32);
            v117 = *(v112 + 48);
            v118 = vuzp2q_s32(*v112, v116);
            v238 = vuzp1q_s32(*v112, v116);
            v240 = v118;
            v36 = vuzp1q_s32(v115, v117);
            v35 = vuzp2q_s32(v115, v117);
            v242 = v36;
            v244 = v35;
            v114 = 64;
          }

          else if (v113 == 1)
          {
            v36 = vld1q_dup_s16(v112);
            v238 = v36;
            v240 = v36;
            v242 = v36;
            v244 = v36;
            v114 = 2;
          }

          else if (v82[3])
          {
            v119 = v82;
            v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 32, v112, v113, *v36.i8, *v35.i8);
            v82 = v119;
          }

          else
          {
            v114 = 0;
            v238 = 0uLL;
            v240 = 0uLL;
            v242 = 0uLL;
            v244 = 0uLL;
          }

          v120 = v112 + v114;
          v121 = v82[4];
          if (v121 == 63)
          {
            v123 = *(v120 + 16);
            v124 = *(v120 + 32);
            v125 = *(v120 + 48);
            v126 = vuzp2q_s32(*v120, v124);
            v245 = vuzp1q_s32(*v120, v124);
            v247 = v126;
            v36 = vuzp1q_s32(v123, v125);
            v35 = vuzp2q_s32(v123, v125);
            v249 = v36;
            v251 = v35;
            v122 = 64;
          }

          else if (v121 == 1)
          {
            v36 = vld1q_dup_s16(v120);
            v245 = v36;
            v247 = v36;
            v249 = v36;
            v251 = v36;
            v122 = 2;
          }

          else if (v82[4])
          {
            v127 = v82;
            v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 32, v120, v121, *v36.i8, *v35.i8);
            v82 = v127;
          }

          else
          {
            v122 = 0;
            v245 = 0uLL;
            v247 = 0uLL;
            v249 = 0uLL;
            v251 = 0uLL;
          }

          v128 = v120 + v122;
          v129 = v82[5];
          if (v129 == 63)
          {
            v131 = *(v128 + 16);
            v132 = *(v128 + 32);
            v133 = *(v128 + 48);
            v134 = vuzp2q_s32(*v128, v132);
            v253 = vuzp1q_s32(*v128, v132);
            v255 = v134;
            v36 = vuzp1q_s32(v131, v133);
            v35 = vuzp2q_s32(v131, v133);
            v257 = v36;
            v259 = v35;
            v130 = 64;
          }

          else if (v129 == 1)
          {
            v36 = vld1q_dup_s16(v128);
            v253 = v36;
            v255 = v36;
            v257 = v36;
            v259 = v36;
            v130 = 2;
          }

          else if (v82[5])
          {
            v135 = v82;
            v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v253, 32, v128, v129, *v36.i8, *v35.i8);
            v82 = v135;
          }

          else
          {
            v130 = 0;
            v253 = 0uLL;
            v255 = 0uLL;
            v257 = 0uLL;
            v259 = 0uLL;
          }

          v136 = v128 + v130;
          v137 = v82[6];
          if (v137 == 63)
          {
            v139 = *(v136 + 16);
            v140 = *(v136 + 32);
            v141 = *(v136 + 48);
            v142 = vuzp2q_s32(*v136, v140);
            v246 = vuzp1q_s32(*v136, v140);
            v248 = v142;
            v36 = vuzp1q_s32(v139, v141);
            v35 = vuzp2q_s32(v139, v141);
            v250 = v36;
            v252 = v35;
            v138 = 64;
          }

          else if (v137 == 1)
          {
            v36 = vld1q_dup_s16(v136);
            v246 = v36;
            v248 = v36;
            v250 = v36;
            v252 = v36;
            v138 = 2;
          }

          else if (v82[6])
          {
            v143 = v82;
            v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v136, v137, *v36.i8, *v35.i8);
            v82 = v143;
          }

          else
          {
            v138 = 0;
            v246 = 0uLL;
            v248 = 0uLL;
            v250 = 0uLL;
            v252 = 0uLL;
          }

          v144 = v136 + v138;
          v145 = v82[7];
          if (v145 == 63)
          {
            v148 = *(v144 + 16);
            v149 = *(v144 + 32);
            v150 = *(v144 + 48);
            v151 = vuzp2q_s32(*v144, v149);
            v254 = vuzp1q_s32(*v144, v149);
            v256 = v151;
            v258 = vuzp1q_s32(v148, v150);
            v260 = vuzp2q_s32(v148, v150);
            v88 = v44 + 1;
            v146 = v224;
            if (!v224)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v88 = v44 + 1;
            if (v145 == 1)
            {
              v147 = vld1q_dup_s16(v144);
              v254 = v147;
              v256 = v147;
              v258 = v147;
              v260 = v147;
              v146 = v224;
              if (!v224)
              {
                goto LABEL_201;
              }
            }

            else if (v82[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 32, v144, v145, *v36.i8, *v35.i8);
              v146 = v224;
              if (!v224)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v254 = 0uLL;
              v256 = 0uLL;
              v258 = 0uLL;
              v260 = 0uLL;
              v146 = v224;
              if (!v224)
              {
                goto LABEL_201;
              }
            }
          }

          v152 = v225;
          if (v225)
          {
            v153 = 0;
            v154 = 32 * v222;
            v155 = 2 * v223;
            v156 = &v229.i8[v154 + v155];
            v157 = v220;
            v158 = v221;
            v159 = 2 * v225;
            if (2 * v225)
            {
              v160 = (2 * v225 - 1) >> 32 == 0;
            }

            else
            {
              v160 = 0;
            }

            v161 = !v160;
            v163 = v156 < v220 + v221 * (v146 - 1) + 2 * v225 && v220 < &__dst[2 * v146 + 30 + 2 * v222] + 2 * v225 + v155;
            v164 = v163 || v221 < 0;
            v165 = v159 & 0x1FFFFFFE0;
            v166 = v159 & 0x1FFFFFFF8;
            v167 = (v225 < 4) | v161 | v164;
            v168 = &v230.i8[v154 + v155];
            v169 = (v220 + 16);
            v170 = v156;
            v171 = v220;
            do
            {
              v172 = (v157 + v153 * v158);
              v173 = &v156[32 * v153];
              if (v167)
              {
                v174 = 0;
                goto LABEL_198;
              }

              if (v152 >= 0x10)
              {
                v176 = v169;
                v177 = v168;
                v178 = v159 & 0x1FFFFFFE0;
                do
                {
                  v179 = *v176;
                  *(v177 - 1) = *(v176 - 1);
                  *v177 = v179;
                  v177 += 32;
                  v176 += 2;
                  v178 -= 32;
                }

                while (v178);
                if (v159 == v165)
                {
                  goto LABEL_184;
                }

                v175 = v159 & 0x1FFFFFFE0;
                if ((v152 & 0xC) == 0)
                {
                  v172 += v165;
                  v173 += v165;
                  v174 = v159 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v175 = 0;
              }

              v173 += v166;
              v180 = v175 - (v159 & 0x1FFFFFFF8);
              v181 = (v171 + v175);
              v182 = &v170[v175];
              do
              {
                v183 = *v181++;
                *v182 = v183;
                v182 += 8;
                v180 += 8;
              }

              while (v180);
              if (v159 == v166)
              {
                goto LABEL_184;
              }

              v172 += v166;
              v174 = v159 & 0xFFFFFFF8;
LABEL_198:
              v184 = v174 + 1;
              do
              {
                v185 = *v172++;
                *v173++ = v185;
              }

              while (v159 > v184++);
LABEL_184:
              ++v153;
              v168 += 32;
              v169 = (v169 + v158);
              v171 += v158;
              v170 += 32;
            }

            while (v153 != v146);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v229, 32, v218, v219, v226, v227);
LABEL_202:
          if (v216)
          {
            memcpy(v215, v84, 0x200uLL);
          }

          v21 = v44 == v205 >> 4;
          v44 = v88;
          result = v213;
        }

        while (!v21);
        v21 = v18++ == v193;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v261 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v212 = a8;
  v194 = a8 + a10 - 1;
  v213 = a1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 4;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v193 = v194 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v216 = v24;
  result = a1;
  if (*(a1 + 232) == 1)
  {
    v26 = *(a1 + 273);
    v27 = *(a1 + 272);
    v28 = __clz(v19);
    if (1 << v26 >= a6 || a5 >> v27)
    {
      if (!(a6 >> v26) && 1 << v27 < a5)
      {
        if (a6 < 2)
        {
          v31 = 0;
        }

        else
        {
          v31 = __clz(~(-1 << -__clz(v20))) | 0xFFFFFFE0;
        }

        v27 += v26 + v31;
        v26 = -v31;
      }
    }

    else
    {
      v29 = 32 - __clz(~(-1 << -v28));
      v30 = v27 + v26;
      if (a5 < 2)
      {
        v29 = 0;
      }

      v26 = v30 - v29;
      v27 = v29;
    }

    if (a5 < 2)
    {
      if (v27)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v28)) < v27)
    {
LABEL_27:
      v206 = 0;
LABEL_32:
      v203 = v27 - 4;
      v197 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v191 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v32 = 0;
    }

    else
    {
      v32 = 32 - __clz(~(-1 << -__clz(v20)));
    }

    v206 = v32 >= v26;
    goto LABEL_32;
  }

  v206 = 0;
  v191 = 0;
  v197 = 0;
  v203 = 0;
LABEL_33:
  if (v18 <= v193)
  {
    v205 = a7 + a9 - 1;
    v190 = a7 >> 4;
    if (a7 >> 4 <= v205 >> 4)
    {
      v214 = v19 >> 4;
      v199 = v19 & 0xF;
      v188 = v20 & 0xF;
      v189 = v20 >> 4;
      v187 = ~(-1 << v197);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v35.i8 = vcgt_u32(v34, 0x1F0000001FLL);
      *v36.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), *v35.i8);
      v196 = v36.i64[0];
      v198 = v36.i32[0] | v36.i32[1];
      v195 = v35.i64[0];
      v204 = a7;
      do
      {
        v37 = (16 * v18) | 0xF;
        if (16 * v18 <= v212)
        {
          v38 = v212;
        }

        else
        {
          v38 = 16 * v18;
        }

        if (v194 < v37)
        {
          v37 = v194;
        }

        v202 = v38 - 16 * v18;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v188;
        v201 = v40;
        v42 = v40 != 16;
        v43 = v188 + 1;
        if (v18 != v189)
        {
          v43 = 16;
          v41 = v42;
        }

        v200 = v41;
        v44 = v190;
        v45 = v18 & v187;
        v210 = a3 + (v38 - v212) * a11;
        v211 = v43;
        v209 = v43;
        do
        {
          v46 = 16 * v44;
          v47 = 16 * (v44 + 1) - 1;
          if (16 * v44 <= a7)
          {
            v48 = a7;
          }

          else
          {
            v48 = 16 * v44;
          }

          if (v205 < v47)
          {
            v47 = v205;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v44 == v214)
          {
            v51 = v199 + 1;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (16 * v18 >= v212 && v46 >= a7)
          {
            v53 = v49 != v199;
            if (v44 != v214)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v200;
          }

          if (v206)
          {
            if (v203 | v197)
            {
              v54 = 0;
              v55 = 0;
              v56 = v197 != 0;
              v57 = 1;
              v59 = v203 != 0;
              v58 = v197;
              v60 = v203;
              do
              {
                --v60;
                if (v59)
                {
                  v55 |= (v44 & ~(-1 << v203) & v57) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                --v58;
                if (v56)
                {
                  v55 |= (v45 & v57) << v54++;
                }

                else
                {
                  v58 = 0;
                }

                v57 *= 2;
                --v54;
                v56 = v58 != 0;
                v59 = v60 != 0;
              }

              while (v58 | v60);
              v61 = v55 << 9;
            }

            else
            {
              v61 = 0;
            }

            v69 = v61 + *(result + 336) * ((v44 >> v203) + (v18 >> v197) * v191);
          }

          else if (v198)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v195;
            v66 = BYTE4(v195);
            v68 = v196;
            v67 = HIDWORD(v196);
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v44) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v65)
              {
                v63 |= (v64 & v18) << v62++;
              }

              else
              {
                v68 = 0;
              }

              v64 *= 2;
              --v62;
              v65 = v68 != 0;
              v66 = v67 != 0;
            }

            while (v68 | v67);
            v69 = v63 << 9;
          }

          else
          {
            v69 = 0;
          }

          v70 = *(result + 128) >> (*(result + 144) + a12);
          if (v70 <= 1)
          {
            v70 = 1;
          }

          v71 = v70 + 15;
          if (v71 < 0x20)
          {
            v72 = 0;
          }

          else
          {
            v72 = 32 - __clz(~(-1 << -__clz((v71 >> 4) - 1)));
          }

          v73 = *(result + 132) >> (*(result + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 15;
          if (v74 < 0x20)
          {
            v75 = 0;
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 4) - 1)));
          }

          if (v75 | v72)
          {
            v76 = 0;
            v77 = 0;
            v78 = v72 != 0;
            v79 = v75 != 0;
            v80 = 1;
            do
            {
              --v72;
              if (v78)
              {
                v77 |= (v80 & v44) << v76++;
              }

              else
              {
                v72 = 0;
              }

              --v75;
              if (v79)
              {
                v77 |= (v80 & v18) << v76++;
              }

              else
              {
                v75 = 0;
              }

              v80 *= 2;
              --v76;
              v79 = v75 != 0;
              v78 = v72 != 0;
            }

            while (v75 | v72);
            v81 = 8 * v77;
          }

          else
          {
            v81 = 0;
          }

          v82 = (a4 + v81);
          v83 = (v210 + 2 * (v48 - a7));
          v215 = (a2 + v69);
          if (v216)
          {
            v84 = __dst;
            if (!(v52 & 1 | (v51 < 0x10u) | (v209 < 0x10)))
            {
              goto LABEL_109;
            }

            v85 = v50;
            v86 = (a4 + v81);
            v87 = v51;
            memcpy(__dst, (a2 + v69), sizeof(__dst));
            v50 = v85;
            v45 = v18 & v187;
            LOBYTE(v51) = v87;
            v82 = v86;
            result = v213;
          }

          else
          {
            v84 = (a2 + v69);
            if (!(v52 & 1 | (v51 < 0x10u) | (v209 < 0x10)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v83, a11, v84, v82, v51, v211);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v218 = v84;
          v226 = v51;
          v227 = v211;
          v222 = v202;
          v223 = v48 - v46;
          v219 = v82;
          v220 = v83;
          v221 = a11;
          v224 = v201;
          v225 = v50;
          if (v52)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v204;
            v88 = v44 + 1;
            goto LABEL_202;
          }

          v89 = *v82;
          a7 = v204;
          if (v89 == 63)
          {
            v91 = v84[1];
            v92 = v84[2];
            v93 = v84[3];
            v94 = vuzp2q_s32(*v84, v92);
            v229 = vuzp1q_s32(*v84, v92);
            v231 = v94;
            v36 = vuzp1q_s32(v91, v93);
            v35 = vuzp2q_s32(v91, v93);
            v233 = v36;
            v235 = v35;
            v90 = 64;
          }

          else if (v89 == 1)
          {
            v36 = vld1q_dup_s16(v84->i16);
            v229 = v36;
            v231 = v36;
            v233 = v36;
            v235 = v36;
            v90 = 2;
          }

          else if (*v82)
          {
            v95 = v82;
            v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 32, v84, v89, *v36.i8, *v35.i8);
            v82 = v95;
          }

          else
          {
            v90 = 0;
            v229 = 0uLL;
            v231 = 0uLL;
            v233 = 0uLL;
            v235 = 0uLL;
          }

          v96 = v84->i64 + v90;
          v97 = v82[1];
          if (v97 == 63)
          {
            v99 = *(v96 + 16);
            v100 = *(v96 + 32);
            v101 = *(v96 + 48);
            v102 = vuzp2q_s32(*v96, v100);
            v237 = vuzp1q_s32(*v96, v100);
            v239 = v102;
            v36 = vuzp1q_s32(v99, v101);
            v35 = vuzp2q_s32(v99, v101);
            v241 = v36;
            v243 = v35;
            v98 = 64;
          }

          else if (v97 == 1)
          {
            v36 = vld1q_dup_s16(v96);
            v237 = v36;
            v239 = v36;
            v241 = v36;
            v243 = v36;
            v98 = 2;
          }

          else if (v82[1])
          {
            v103 = v82;
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 32, v96, v97, *v36.i8, *v35.i8);
            v82 = v103;
          }

          else
          {
            v98 = 0;
            v237 = 0uLL;
            v239 = 0uLL;
            v241 = 0uLL;
            v243 = 0uLL;
          }

          v104 = v96 + v98;
          v105 = v82[2];
          if (v105 == 63)
          {
            v107 = *(v104 + 16);
            v108 = *(v104 + 32);
            v109 = *(v104 + 48);
            v110 = vuzp2q_s32(*v104, v108);
            v230 = vuzp1q_s32(*v104, v108);
            v232 = v110;
            v36 = vuzp1q_s32(v107, v109);
            v35 = vuzp2q_s32(v107, v109);
            v234 = v36;
            v236 = v35;
            v106 = 64;
          }

          else if (v105 == 1)
          {
            v36 = vld1q_dup_s16(v104);
            v230 = v36;
            v232 = v36;
            v234 = v36;
            v236 = v36;
            v106 = 2;
          }

          else if (v82[2])
          {
            v111 = v82;
            v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 32, v104, v105, *v36.i8, *v35.i8);
            v82 = v111;
          }

          else
          {
            v106 = 0;
            v230 = 0uLL;
            v232 = 0uLL;
            v234 = 0uLL;
            v236 = 0uLL;
          }

          v112 = v104 + v106;
          v113 = v82[3];
          if (v113 == 63)
          {
            v115 = *(v112 + 16);
            v116 = *(v112 + 32);
            v117 = *(v112 + 48);
            v118 = vuzp2q_s32(*v112, v116);
            v238 = vuzp1q_s32(*v112, v116);
            v240 = v118;
            v36 = vuzp1q_s32(v115, v117);
            v35 = vuzp2q_s32(v115, v117);
            v242 = v36;
            v244 = v35;
            v114 = 64;
          }

          else if (v113 == 1)
          {
            v36 = vld1q_dup_s16(v112);
            v238 = v36;
            v240 = v36;
            v242 = v36;
            v244 = v36;
            v114 = 2;
          }

          else if (v82[3])
          {
            v119 = v82;
            v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 32, v112, v113, *v36.i8, *v35.i8);
            v82 = v119;
          }

          else
          {
            v114 = 0;
            v238 = 0uLL;
            v240 = 0uLL;
            v242 = 0uLL;
            v244 = 0uLL;
          }

          v120 = v112 + v114;
          v121 = v82[4];
          if (v121 == 63)
          {
            v123 = *(v120 + 16);
            v124 = *(v120 + 32);
            v125 = *(v120 + 48);
            v126 = vuzp2q_s32(*v120, v124);
            v245 = vuzp1q_s32(*v120, v124);
            v247 = v126;
            v36 = vuzp1q_s32(v123, v125);
            v35 = vuzp2q_s32(v123, v125);
            v249 = v36;
            v251 = v35;
            v122 = 64;
          }

          else if (v121 == 1)
          {
            v36 = vld1q_dup_s16(v120);
            v245 = v36;
            v247 = v36;
            v249 = v36;
            v251 = v36;
            v122 = 2;
          }

          else if (v82[4])
          {
            v127 = v82;
            v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 32, v120, v121, *v36.i8, *v35.i8);
            v82 = v127;
          }

          else
          {
            v122 = 0;
            v245 = 0uLL;
            v247 = 0uLL;
            v249 = 0uLL;
            v251 = 0uLL;
          }

          v128 = v120 + v122;
          v129 = v82[5];
          if (v129 == 63)
          {
            v131 = *(v128 + 16);
            v132 = *(v128 + 32);
            v133 = *(v128 + 48);
            v134 = vuzp2q_s32(*v128, v132);
            v253 = vuzp1q_s32(*v128, v132);
            v255 = v134;
            v36 = vuzp1q_s32(v131, v133);
            v35 = vuzp2q_s32(v131, v133);
            v257 = v36;
            v259 = v35;
            v130 = 64;
          }

          else if (v129 == 1)
          {
            v36 = vld1q_dup_s16(v128);
            v253 = v36;
            v255 = v36;
            v257 = v36;
            v259 = v36;
            v130 = 2;
          }

          else if (v82[5])
          {
            v135 = v82;
            v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v253, 32, v128, v129, *v36.i8, *v35.i8);
            v82 = v135;
          }

          else
          {
            v130 = 0;
            v253 = 0uLL;
            v255 = 0uLL;
            v257 = 0uLL;
            v259 = 0uLL;
          }

          v136 = v128 + v130;
          v137 = v82[6];
          if (v137 == 63)
          {
            v139 = *(v136 + 16);
            v140 = *(v136 + 32);
            v141 = *(v136 + 48);
            v142 = vuzp2q_s32(*v136, v140);
            v246 = vuzp1q_s32(*v136, v140);
            v248 = v142;
            v36 = vuzp1q_s32(v139, v141);
            v35 = vuzp2q_s32(v139, v141);
            v250 = v36;
            v252 = v35;
            v138 = 64;
          }

          else if (v137 == 1)
          {
            v36 = vld1q_dup_s16(v136);
            v246 = v36;
            v248 = v36;
            v250 = v36;
            v252 = v36;
            v138 = 2;
          }

          else if (v82[6])
          {
            v143 = v82;
            v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v136, v137, *v36.i8, *v35.i8);
            v82 = v143;
          }

          else
          {
            v138 = 0;
            v246 = 0uLL;
            v248 = 0uLL;
            v250 = 0uLL;
            v252 = 0uLL;
          }

          v144 = v136 + v138;
          v145 = v82[7];
          if (v145 == 63)
          {
            v148 = *(v144 + 16);
            v149 = *(v144 + 32);
            v150 = *(v144 + 48);
            v151 = vuzp2q_s32(*v144, v149);
            v254 = vuzp1q_s32(*v144, v149);
            v256 = v151;
            v258 = vuzp1q_s32(v148, v150);
            v260 = vuzp2q_s32(v148, v150);
            v88 = v44 + 1;
            v146 = v224;
            if (!v224)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v88 = v44 + 1;
            if (v145 == 1)
            {
              v147 = vld1q_dup_s16(v144);
              v254 = v147;
              v256 = v147;
              v258 = v147;
              v260 = v147;
              v146 = v224;
              if (!v224)
              {
                goto LABEL_201;
              }
            }

            else if (v82[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 32, v144, v145, *v36.i8, *v35.i8);
              v146 = v224;
              if (!v224)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v254 = 0uLL;
              v256 = 0uLL;
              v258 = 0uLL;
              v260 = 0uLL;
              v146 = v224;
              if (!v224)
              {
                goto LABEL_201;
              }
            }
          }

          v152 = v225;
          if (v225)
          {
            v153 = 0;
            v154 = 32 * v222;
            v155 = 2 * v223;
            v156 = &v229 + v154 + v155;
            v157 = v220;
            v158 = v221;
            v159 = 2 * v225;
            if (2 * v225)
            {
              v160 = (2 * v225 - 1) >> 32 == 0;
            }

            else
            {
              v160 = 0;
            }

            v161 = !v160;
            v163 = v156 < v220 + 2 * v225 + v221 * (v146 - 1) && v220 < (&__dst[2 * v146 + 30 + 2 * v222] + 2 * v225 + v155);
            v164 = v163 || v221 < 0;
            v165 = v159 & 0x1FFFFFFE0;
            v166 = v159 & 0x1FFFFFFF8;
            v167 = (v225 < 4) | v161 | v164;
            v168 = &v230.i8[v154 + v155];
            v169 = v220 + 1;
            v170 = v156;
            v171 = v220;
            do
            {
              v172 = v157 + v153 * v158;
              v173 = &v156[32 * v153];
              if (v167)
              {
                v174 = 0;
                goto LABEL_198;
              }

              if (v152 >= 0x10)
              {
                v176 = v169;
                v177 = v168;
                v178 = v159 & 0x1FFFFFFE0;
                do
                {
                  v179 = *v176;
                  *(v177 - 1) = v176[-1];
                  *v177 = v179;
                  v177 += 32;
                  v176 += 2;
                  v178 -= 32;
                }

                while (v178);
                if (v159 == v165)
                {
                  goto LABEL_184;
                }

                v175 = v159 & 0x1FFFFFFE0;
                if ((v152 & 0xC) == 0)
                {
                  v172 += v165;
                  v173 += v165;
                  v174 = v159 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v175 = 0;
              }

              v173 += v166;
              v180 = v175 - (v159 & 0x1FFFFFFF8);
              v181 = (v171 + v175);
              v182 = &v170[v175];
              do
              {
                v183 = *v181++;
                *v182 = v183;
                v182 += 8;
                v180 += 8;
              }

              while (v180);
              if (v159 == v166)
              {
                goto LABEL_184;
              }

              v172 += v166;
              v174 = v159 & 0xFFFFFFF8;
LABEL_198:
              v184 = v174 + 1;
              do
              {
                v185 = *v172++;
                *v173++ = v185;
              }

              while (v159 > v184++);
LABEL_184:
              ++v153;
              v168 += 32;
              v169 = (v169 + v158);
              v171 = (v171 + v158);
              v170 += 32;
            }

            while (v153 != v146);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v229, 32, v218, v219, v226, v227);
LABEL_202:
          if (v216)
          {
            memcpy(v215, v84, 0x200uLL);
          }

          v21 = v44 == v205 >> 4;
          v44 = v88;
          result = v213;
        }

        while (!v21);
        v21 = v18++ == v193;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v248 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v199 = a8;
  v17 = a8 >> 4;
  v181 = a8 + a10 - 1;
  v183 = v181 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v200 = a1;
  if (*(a1 + 168))
  {
    v20 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v20 = 0;
  }

  v21 = (v20 & 0xD00) == 0 || v20 == 768;
  v22 = v20 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v203 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v192 = result;
  if (v17 <= v183)
  {
    v191 = a7 + a9 - 1;
    v180 = a7 >> 4;
    if (a7 >> 4 <= v191 >> 4)
    {
      result = a1;
      v201 = (a5 - 1) >> 4;
      v177 = a5 - 1;
      v184 = (a5 - 1) & 0xF;
      v178 = (a6 - 1) & 0xF;
      v179 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v27.i8 = vcgt_u32(v26, 0x1F0000001FLL);
      *v28.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), *v27.i8);
      v189 = v28.i64[0];
      v190 = v28.i32[0] | v28.i32[1];
      v188 = v27.i64[0];
      v176 = 8 * v19 * v18;
      do
      {
        v29 = (16 * v17) | 0xF;
        if (16 * v17 <= v199)
        {
          v30 = v199;
        }

        else
        {
          v30 = 16 * v17;
        }

        if (v181 < v29)
        {
          v29 = v181;
        }

        v198 = 16 * v17;
        v187 = v30 - 16 * v17;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v178;
        v186 = v32;
        v34 = v32 != 16;
        v35 = v180;
        v36 = v178 + 1;
        if (v17 != v179)
        {
          v36 = 16;
          v33 = v34;
        }

        v185 = v33;
        v196 = a3 + (v30 - v199) * a11;
        v197 = v36;
        v195 = v36;
        do
        {
          v37 = 16 * v35;
          v38 = 16 * (v35 + 1) - 1;
          if (16 * v35 <= a7)
          {
            v39 = a7;
          }

          else
          {
            v39 = 16 * v35;
          }

          if (v191 < v38)
          {
            v38 = v191;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v35 == v201)
          {
            v42 = v184 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v198 >= v199 && v37 >= a7)
          {
            v44 = v40 != v184;
            if (v35 != v201)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v185;
          }

          if (v192)
          {
            v65 = 0;
            v66 = v176 >> (*(result + 57) != 0);
            v67 = 1;
            if (v66 <= 63)
            {
              if (v66 > 15)
              {
                if (v66 == 16)
                {
                  v67 = 0;
                  v68 = 0;
                  v69 = 64;
                  v65 = 128;
                }

                else
                {
                  v68 = 1;
                  v69 = 0;
                  if (v66 == 32)
                  {
                    v67 = 0;
                    v68 = 0;
                    v65 = 64;
                    v69 = 64;
                  }
                }
              }

              else if (v66 == 4)
              {
                v67 = 0;
                v68 = 0;
                v69 = 128;
                v65 = 256;
              }

              else
              {
                v68 = 1;
                v69 = 0;
                if (v66 == 8)
                {
                  v67 = 0;
                  v68 = 0;
                  v65 = 128;
                  v69 = 128;
                }
              }
            }

            else if (v66 <= 255)
            {
              if (v66 == 64)
              {
                v67 = 0;
                v68 = 0;
                v69 = 32;
                v65 = 64;
              }

              else
              {
                v68 = 1;
                v69 = 0;
                if (v66 == 128)
                {
                  v67 = 0;
                  v68 = 0;
                  v65 = 32;
                  v69 = 32;
                }
              }
            }

            else if (v66 == 256)
            {
              v67 = 0;
              v69 = 16;
              v68 = 1;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v65 = 16;
              v68 = 1;
              v69 = 16;
            }

            else
            {
              v68 = 1;
              v69 = 0;
              if (v66 == 1024)
              {
                v69 = 8;
                v65 = 16;
              }
            }

            v166 = (v65 >> 4) - 1;
            if (v67)
            {
              v167 = 0;
              if (v68)
              {
                goto LABEL_208;
              }

LABEL_197:
              v168 = 32 - __clz(~(-1 << -__clz(((v69 + 15) >> 4) - 1)));
              if (v168 | v167)
              {
                goto LABEL_198;
              }

LABEL_209:
              v175 = 0;
            }

            else
            {
              v167 = 32 - __clz(~(-1 << -__clz(v166)));
              if ((v68 & 1) == 0)
              {
                goto LABEL_197;
              }

LABEL_208:
              v168 = 0;
              if (!v167)
              {
                goto LABEL_209;
              }

LABEL_198:
              v169 = 0;
              v170 = 0;
              v171 = v35 & v166;
              v172 = v167 != 0;
              v173 = v168 != 0;
              v174 = 1;
              do
              {
                --v167;
                if (v172)
                {
                  v170 |= (v174 & v171) << v169++;
                }

                else
                {
                  v167 = 0;
                }

                --v168;
                if (v173)
                {
                  v170 |= (v174 & v17 & ((v69 >> 4) - 1)) << v169++;
                }

                else
                {
                  v168 = 0;
                }

                v174 *= 2;
                --v169;
                v173 = v168 != 0;
                v172 = v167 != 0;
              }

              while (v168 | v167);
              v175 = v170 << 9;
              result = v200;
            }

            v52 = v175 + ((v37 / v65 + v198 / v69 * ((v65 + v177) / v65)) << 14);
            goto LABEL_52;
          }

          if (v190)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v188;
            v49 = BYTE4(v188);
            v51 = v189;
            v50 = HIDWORD(v189);
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v35) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v17) << v45++;
              }

              else
              {
                v51 = 0;
              }

              v47 *= 2;
              --v45;
              v48 = v51 != 0;
              v49 = v50 != 0;
            }

            while (v51 | v50);
            v52 = v46 << 9;
          }

          else
          {
            v52 = 0;
          }

LABEL_52:
          v53 = *(result + 128) >> (*(result + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 15;
          if (v54 < 0x20)
          {
            v55 = 0;
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
          }

          v56 = *(result + 132) >> (*(result + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 15;
          if (v57 < 0x20)
          {
            v58 = 0;
            if (!v55)
            {
LABEL_77:
              v64 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
            if (!(v58 | v55))
            {
              goto LABEL_77;
            }
          }

          v59 = 0;
          v60 = 0;
          v61 = v55 != 0;
          v62 = v58 != 0;
          v63 = 1;
          do
          {
            --v55;
            if (v61)
            {
              v60 |= (v63 & v35) << v59++;
            }

            else
            {
              v55 = 0;
            }

            --v58;
            if (v62)
            {
              v60 |= (v63 & v17) << v59++;
            }

            else
            {
              v58 = 0;
            }

            v63 *= 2;
            --v59;
            v62 = v58 != 0;
            v61 = v55 != 0;
          }

          while (v58 | v55);
          v64 = 8 * v60;
LABEL_78:
          v70 = (a4 + v64);
          v71 = a7;
          v72 = v196 + 2 * (v39 - a7);
          v73 = (a2 + v52);
          __src = (a2 + v52);
          if (v203)
          {
            if (!(v43 & 1 | (v42 < 0x10u) | (v195 < 0x10)))
            {
              v73 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v72, a11, v73, v70, v42, v197);
              goto LABEL_86;
            }

            v74 = v41;
            memcpy(__dst, __src, sizeof(__dst));
            v41 = v74;
            v73 = __dst;
            result = v200;
          }

          else if (!(v43 & 1 | (v42 < 0x10u) | (v195 < 0x10)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v205 = v73;
          v213 = v42;
          v214 = v197;
          v209 = v187;
          v210 = v39 - v37;
          v206 = v70;
          v207 = v72;
          v208 = a11;
          v211 = v186;
          v212 = v41;
          if ((v43 & 1) == 0)
          {
            v75 = *v70;
            a7 = v71;
            if (v75 == 63)
            {
              v77 = *(v73 + 1);
              v78 = *(v73 + 2);
              v79 = *(v73 + 3);
              v80 = vuzp2q_s32(*v73, v78);
              v216 = vuzp1q_s32(*v73, v78);
              v218 = v80;
              v28 = vuzp1q_s32(v77, v79);
              v27 = vuzp2q_s32(v77, v79);
              v220 = v28;
              v222 = v27;
              v76 = 64;
            }

            else if (v75 == 1)
            {
              v28 = vld1q_dup_s16(v73);
              v216 = v28;
              v218 = v28;
              v220 = v28;
              v222 = v28;
              v76 = 2;
            }

            else if (*v70)
            {
              v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v216, 32, v73, v75, *v28.i8, *v27.i8);
            }

            else
            {
              v76 = 0;
              v216 = 0uLL;
              v218 = 0uLL;
              v220 = 0uLL;
              v222 = 0uLL;
            }

            v81 = v73 + v76;
            v82 = v70[1];
            if (v82 == 63)
            {
              v84 = *(v81 + 16);
              v85 = *(v81 + 32);
              v86 = *(v81 + 48);
              v87 = vuzp2q_s32(*v81, v85);
              v224 = vuzp1q_s32(*v81, v85);
              v226 = v87;
              v28 = vuzp1q_s32(v84, v86);
              v27 = vuzp2q_s32(v84, v86);
              v228 = v28;
              v230 = v27;
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v28 = vld1q_dup_s16(v81);
              v224 = v28;
              v226 = v28;
              v228 = v28;
              v230 = v28;
              v83 = 2;
            }

            else if (v70[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v224, 32, v81, v82, *v28.i8, *v27.i8);
            }

            else
            {
              v83 = 0;
              v224 = 0uLL;
              v226 = 0uLL;
              v228 = 0uLL;
              v230 = 0uLL;
            }

            v88 = v81 + v83;
            v89 = v70[2];
            if (v89 == 63)
            {
              v91 = *(v88 + 16);
              v92 = *(v88 + 32);
              v93 = *(v88 + 48);
              v94 = vuzp2q_s32(*v88, v92);
              v217 = vuzp1q_s32(*v88, v92);
              v219 = v94;
              v28 = vuzp1q_s32(v91, v93);
              v27 = vuzp2q_s32(v91, v93);
              v221 = v28;
              v223 = v27;
              v90 = 64;
            }

            else if (v89 == 1)
            {
              v28 = vld1q_dup_s16(v88);
              v217 = v28;
              v219 = v28;
              v221 = v28;
              v223 = v28;
              v90 = 2;
            }

            else if (v70[2])
            {
              v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 32, v88, v89, *v28.i8, *v27.i8);
            }

            else
            {
              v90 = 0;
              v217 = 0uLL;
              v219 = 0uLL;
              v221 = 0uLL;
              v223 = 0uLL;
            }

            v95 = v88 + v90;
            v96 = v70[3];
            if (v96 == 63)
            {
              v98 = *(v95 + 16);
              v99 = *(v95 + 32);
              v100 = *(v95 + 48);
              v101 = vuzp2q_s32(*v95, v99);
              v225 = vuzp1q_s32(*v95, v99);
              v227 = v101;
              v28 = vuzp1q_s32(v98, v100);
              v27 = vuzp2q_s32(v98, v100);
              v229 = v28;
              v231 = v27;
              v97 = 64;
            }

            else if (v96 == 1)
            {
              v28 = vld1q_dup_s16(v95);
              v225 = v28;
              v227 = v28;
              v229 = v28;
              v231 = v28;
              v97 = 2;
            }

            else if (v70[3])
            {
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v225, 32, v95, v96, *v28.i8, *v27.i8);
            }

            else
            {
              v97 = 0;
              v225 = 0uLL;
              v227 = 0uLL;
              v229 = 0uLL;
              v231 = 0uLL;
            }

            v102 = v95 + v97;
            v103 = v70[4];
            if (v103 == 63)
            {
              v105 = *(v102 + 16);
              v106 = *(v102 + 32);
              v107 = *(v102 + 48);
              v108 = vuzp2q_s32(*v102, v106);
              v232 = vuzp1q_s32(*v102, v106);
              v234 = v108;
              v28 = vuzp1q_s32(v105, v107);
              v27 = vuzp2q_s32(v105, v107);
              v236 = v28;
              v238 = v27;
              v104 = 64;
            }

            else if (v103 == 1)
            {
              v28 = vld1q_dup_s16(v102);
              v232 = v28;
              v234 = v28;
              v236 = v28;
              v238 = v28;
              v104 = 2;
            }

            else if (v70[4])
            {
              v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 32, v102, v103, *v28.i8, *v27.i8);
            }

            else
            {
              v104 = 0;
              v232 = 0uLL;
              v234 = 0uLL;
              v236 = 0uLL;
              v238 = 0uLL;
            }

            v109 = v102 + v104;
            v110 = v70[5];
            if (v110 == 63)
            {
              v112 = *(v109 + 16);
              v113 = *(v109 + 32);
              v114 = *(v109 + 48);
              v115 = vuzp2q_s32(*v109, v113);
              v240 = vuzp1q_s32(*v109, v113);
              v242 = v115;
              v28 = vuzp1q_s32(v112, v114);
              v27 = vuzp2q_s32(v112, v114);
              v244 = v28;
              v246 = v27;
              v111 = 64;
            }

            else if (v110 == 1)
            {
              v28 = vld1q_dup_s16(v109);
              v240 = v28;
              v242 = v28;
              v244 = v28;
              v246 = v28;
              v111 = 2;
            }

            else if (v70[5])
            {
              v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v240, 32, v109, v110, *v28.i8, *v27.i8);
            }

            else
            {
              v111 = 0;
              v240 = 0uLL;
              v242 = 0uLL;
              v244 = 0uLL;
              v246 = 0uLL;
            }

            v116 = v109 + v111;
            v117 = v70[6];
            if (v117 == 63)
            {
              v119 = *(v116 + 16);
              v120 = *(v116 + 32);
              v121 = *(v116 + 48);
              v122 = vuzp2q_s32(*v116, v120);
              v233 = vuzp1q_s32(*v116, v120);
              v235 = v122;
              v28 = vuzp1q_s32(v119, v121);
              v27 = vuzp2q_s32(v119, v121);
              v237 = v28;
              v239 = v27;
              v118 = 64;
            }

            else if (v117 == 1)
            {
              v28 = vld1q_dup_s16(v116);
              v233 = v28;
              v235 = v28;
              v237 = v28;
              v239 = v28;
              v118 = 2;
            }

            else if (v70[6])
            {
              v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 32, v116, v117, *v28.i8, *v27.i8);
            }

            else
            {
              v118 = 0;
              v233 = 0uLL;
              v235 = 0uLL;
              v237 = 0uLL;
              v239 = 0uLL;
            }

            v123 = v116 + v118;
            v124 = v70[7];
            if (v124 == 63)
            {
              v127 = *(v123 + 16);
              v128 = *(v123 + 32);
              v129 = *(v123 + 48);
              v130 = vuzp2q_s32(*v123, v128);
              v241 = vuzp1q_s32(*v123, v128);
              v243 = v130;
              v245 = vuzp1q_s32(v127, v129);
              v247 = vuzp2q_s32(v127, v129);
              v125 = v211;
              if (v211)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v124 != 1)
              {
                if (v70[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v241, 32, v123, v124, *v28.i8, *v27.i8);
                  v125 = v211;
                  if (!v211)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v241 = 0uLL;
                  v243 = 0uLL;
                  v245 = 0uLL;
                  v247 = 0uLL;
                  v125 = v211;
                  if (!v211)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v131 = v212;
                if (!v212)
                {
                  goto LABEL_178;
                }

                v132 = 0;
                v133 = 32 * v209;
                v134 = 2 * v210;
                v135 = &v216.i8[v133 + v134];
                v136 = v207;
                v137 = v208;
                v138 = 2 * v212;
                if (2 * v212)
                {
                  v139 = (2 * v212 - 1) >> 32 == 0;
                }

                else
                {
                  v139 = 0;
                }

                v140 = !v139;
                v142 = v135 < v207 + v208 * (v125 - 1) + 2 * v212 && v207 < &__dst[2 * v125 + 30 + 2 * v209] + 2 * v212 + v134;
                v143 = v142 || v208 < 0;
                v144 = v138 & 0x1FFFFFFE0;
                v145 = v138 & 0x1FFFFFFF8;
                v146 = (v212 < 4) | v140 | v143;
                v147 = &v217.i8[v133 + v134];
                v148 = (v207 + 16);
                v149 = v135;
                v150 = v207;
                while (2)
                {
                  v151 = (v136 + v132 * v137);
                  v152 = &v135[32 * v132];
                  if (v146)
                  {
                    v153 = 0;
LABEL_175:
                    v163 = v153 + 1;
                    do
                    {
                      v164 = *v151++;
                      *v152++ = v164;
                    }

                    while (v138 > v163++);
                  }

                  else
                  {
                    if (v131 >= 0x10)
                    {
                      v155 = v148;
                      v156 = v147;
                      v157 = v138 & 0x1FFFFFFE0;
                      do
                      {
                        v158 = *v155;
                        *(v156 - 1) = *(v155 - 1);
                        *v156 = v158;
                        v156 += 32;
                        v155 += 2;
                        v157 -= 32;
                      }

                      while (v157);
                      if (v138 == v144)
                      {
                        goto LABEL_161;
                      }

                      v154 = v138 & 0x1FFFFFFE0;
                      if ((v131 & 0xC) == 0)
                      {
                        v151 += v144;
                        v152 += v144;
                        v153 = v138 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v154 = 0;
                    }

                    v152 += v145;
                    v159 = v154 - (v138 & 0x1FFFFFFF8);
                    v160 = (v150 + v154);
                    v161 = &v149[v154];
                    do
                    {
                      v162 = *v160++;
                      *v161 = v162;
                      v161 += 8;
                      v159 += 8;
                    }

                    while (v159);
                    if (v138 != v145)
                    {
                      v151 += v145;
                      v153 = v138 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v132;
                  v147 += 32;
                  v148 = (v148 + v137);
                  v150 += v137;
                  v149 += 32;
                  if (v132 == v125)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v126 = vld1q_dup_s16(v123);
              v241 = v126;
              v243 = v126;
              v245 = v126;
              v247 = v126;
              v125 = v211;
              if (v211)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v216, 32, v205, v206, v213, v214);
            if (!v203)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v71;
          if (!v203)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v73, 0x200uLL);
LABEL_26:
          v21 = v35++ == v191 >> 4;
          result = v200;
        }

        while (!v21);
        v21 = v17++ == v183;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v248 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v199 = a8;
  v17 = a8 >> 4;
  v181 = a8 + a10 - 1;
  v183 = v181 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v200 = a1;
  if (*(a1 + 168))
  {
    v20 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v20 = 0;
  }

  v21 = (v20 & 0xD00) == 0 || v20 == 768;
  v22 = v20 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v203 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v192 = result;
  if (v17 <= v183)
  {
    v191 = a7 + a9 - 1;
    v180 = a7 >> 4;
    if (a7 >> 4 <= v191 >> 4)
    {
      result = a1;
      v201 = (a5 - 1) >> 4;
      v177 = a5 - 1;
      v184 = (a5 - 1) & 0xF;
      v178 = (a6 - 1) & 0xF;
      v179 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v27.i8 = vcgt_u32(v26, 0x1F0000001FLL);
      *v28.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), *v27.i8);
      v189 = v28.i64[0];
      v190 = v28.i32[0] | v28.i32[1];
      v188 = v27.i64[0];
      v176 = 8 * v19 * v18;
      do
      {
        v29 = (16 * v17) | 0xF;
        if (16 * v17 <= v199)
        {
          v30 = v199;
        }

        else
        {
          v30 = 16 * v17;
        }

        if (v181 < v29)
        {
          v29 = v181;
        }

        v198 = 16 * v17;
        v187 = v30 - 16 * v17;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v178;
        v186 = v32;
        v34 = v32 != 16;
        v35 = v180;
        v36 = v178 + 1;
        if (v17 != v179)
        {
          v36 = 16;
          v33 = v34;
        }

        v185 = v33;
        v196 = a3 + (v30 - v199) * a11;
        v197 = v36;
        v195 = v36;
        do
        {
          v37 = 16 * v35;
          v38 = 16 * (v35 + 1) - 1;
          if (16 * v35 <= a7)
          {
            v39 = a7;
          }

          else
          {
            v39 = 16 * v35;
          }

          if (v191 < v38)
          {
            v38 = v191;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v35 == v201)
          {
            v42 = v184 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v198 >= v199 && v37 >= a7)
          {
            v44 = v40 != v184;
            if (v35 != v201)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v185;
          }

          if (v192)
          {
            v65 = 0;
            v66 = v176 >> (*(result + 57) != 0);
            v67 = 1;
            if (v66 <= 63)
            {
              if (v66 > 15)
              {
                if (v66 == 16)
                {
                  v67 = 0;
                  v68 = 0;
                  v69 = 64;
                  v65 = 128;
                }

                else
                {
                  v68 = 1;
                  v69 = 0;
                  if (v66 == 32)
                  {
                    v67 = 0;
                    v68 = 0;
                    v65 = 64;
                    v69 = 64;
                  }
                }
              }

              else if (v66 == 4)
              {
                v67 = 0;
                v68 = 0;
                v69 = 128;
                v65 = 256;
              }

              else
              {
                v68 = 1;
                v69 = 0;
                if (v66 == 8)
                {
                  v67 = 0;
                  v68 = 0;
                  v65 = 128;
                  v69 = 128;
                }
              }
            }

            else if (v66 <= 255)
            {
              if (v66 == 64)
              {
                v67 = 0;
                v68 = 0;
                v69 = 32;
                v65 = 64;
              }

              else
              {
                v68 = 1;
                v69 = 0;
                if (v66 == 128)
                {
                  v67 = 0;
                  v68 = 0;
                  v65 = 32;
                  v69 = 32;
                }
              }
            }

            else if (v66 == 256)
            {
              v67 = 0;
              v69 = 16;
              v68 = 1;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v65 = 16;
              v68 = 1;
              v69 = 16;
            }

            else
            {
              v68 = 1;
              v69 = 0;
              if (v66 == 1024)
              {
                v69 = 8;
                v65 = 16;
              }
            }

            v166 = (v65 >> 4) - 1;
            if (v67)
            {
              v167 = 0;
              if (v68)
              {
                goto LABEL_208;
              }

LABEL_197:
              v168 = 32 - __clz(~(-1 << -__clz(((v69 + 15) >> 4) - 1)));
              if (v168 | v167)
              {
                goto LABEL_198;
              }

LABEL_209:
              v175 = 0;
            }

            else
            {
              v167 = 32 - __clz(~(-1 << -__clz(v166)));
              if ((v68 & 1) == 0)
              {
                goto LABEL_197;
              }

LABEL_208:
              v168 = 0;
              if (!v167)
              {
                goto LABEL_209;
              }

LABEL_198:
              v169 = 0;
              v170 = 0;
              v171 = v35 & v166;
              v172 = v167 != 0;
              v173 = v168 != 0;
              v174 = 1;
              do
              {
                --v167;
                if (v172)
                {
                  v170 |= (v174 & v171) << v169++;
                }

                else
                {
                  v167 = 0;
                }

                --v168;
                if (v173)
                {
                  v170 |= (v174 & v17 & ((v69 >> 4) - 1)) << v169++;
                }

                else
                {
                  v168 = 0;
                }

                v174 *= 2;
                --v169;
                v173 = v168 != 0;
                v172 = v167 != 0;
              }

              while (v168 | v167);
              v175 = v170 << 9;
              result = v200;
            }

            v52 = v175 + ((v37 / v65 + v198 / v69 * ((v65 + v177) / v65)) << 14);
            goto LABEL_52;
          }

          if (v190)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v188;
            v49 = BYTE4(v188);
            v51 = v189;
            v50 = HIDWORD(v189);
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v35) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v17) << v45++;
              }

              else
              {
                v51 = 0;
              }

              v47 *= 2;
              --v45;
              v48 = v51 != 0;
              v49 = v50 != 0;
            }

            while (v51 | v50);
            v52 = v46 << 9;
          }

          else
          {
            v52 = 0;
          }

LABEL_52:
          v53 = *(result + 128) >> (*(result + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 15;
          if (v54 < 0x20)
          {
            v55 = 0;
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 4) - 1)));
          }

          v56 = *(result + 132) >> (*(result + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 15;
          if (v57 < 0x20)
          {
            v58 = 0;
            if (!v55)
            {
LABEL_77:
              v64 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
            if (!(v58 | v55))
            {
              goto LABEL_77;
            }
          }

          v59 = 0;
          v60 = 0;
          v61 = v55 != 0;
          v62 = v58 != 0;
          v63 = 1;
          do
          {
            --v55;
            if (v61)
            {
              v60 |= (v63 & v35) << v59++;
            }

            else
            {
              v55 = 0;
            }

            --v58;
            if (v62)
            {
              v60 |= (v63 & v17) << v59++;
            }

            else
            {
              v58 = 0;
            }

            v63 *= 2;
            --v59;
            v62 = v58 != 0;
            v61 = v55 != 0;
          }

          while (v58 | v55);
          v64 = 8 * v60;
LABEL_78:
          v70 = (a4 + v64);
          v71 = a7;
          v72 = (v196 + 2 * (v39 - a7));
          v73 = (a2 + v52);
          __src = (a2 + v52);
          if (v203)
          {
            if (!(v43 & 1 | (v42 < 0x10u) | (v195 < 0x10)))
            {
              v73 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v72, a11, v73, v70, v42, v197);
              goto LABEL_86;
            }

            v74 = v41;
            memcpy(__dst, __src, sizeof(__dst));
            v41 = v74;
            v73 = __dst;
            result = v200;
          }

          else if (!(v43 & 1 | (v42 < 0x10u) | (v195 < 0x10)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v205 = v73;
          v213 = v42;
          v214 = v197;
          v209 = v187;
          v210 = v39 - v37;
          v206 = v70;
          v207 = v72;
          v208 = a11;
          v211 = v186;
          v212 = v41;
          if ((v43 & 1) == 0)
          {
            v75 = *v70;
            a7 = v71;
            if (v75 == 63)
            {
              v77 = v73[1];
              v78 = v73[2];
              v79 = v73[3];
              v80 = vuzp2q_s32(*v73, v78);
              v216 = vuzp1q_s32(*v73, v78);
              v218 = v80;
              v28 = vuzp1q_s32(v77, v79);
              v27 = vuzp2q_s32(v77, v79);
              v220 = v28;
              v222 = v27;
              v76 = 64;
            }

            else if (v75 == 1)
            {
              v28 = vld1q_dup_s16(v73->i16);
              v216 = v28;
              v218 = v28;
              v220 = v28;
              v222 = v28;
              v76 = 2;
            }

            else if (*v70)
            {
              v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v216, 32, v73, v75, *v28.i8, *v27.i8);
            }

            else
            {
              v76 = 0;
              v216 = 0uLL;
              v218 = 0uLL;
              v220 = 0uLL;
              v222 = 0uLL;
            }

            v81 = v73->i64 + v76;
            v82 = v70[1];
            if (v82 == 63)
            {
              v84 = *(v81 + 16);
              v85 = *(v81 + 32);
              v86 = *(v81 + 48);
              v87 = vuzp2q_s32(*v81, v85);
              v224 = vuzp1q_s32(*v81, v85);
              v226 = v87;
              v28 = vuzp1q_s32(v84, v86);
              v27 = vuzp2q_s32(v84, v86);
              v228 = v28;
              v230 = v27;
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v28 = vld1q_dup_s16(v81);
              v224 = v28;
              v226 = v28;
              v228 = v28;
              v230 = v28;
              v83 = 2;
            }

            else if (v70[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v224, 32, v81, v82, *v28.i8, *v27.i8);
            }

            else
            {
              v83 = 0;
              v224 = 0uLL;
              v226 = 0uLL;
              v228 = 0uLL;
              v230 = 0uLL;
            }

            v88 = v81 + v83;
            v89 = v70[2];
            if (v89 == 63)
            {
              v91 = *(v88 + 16);
              v92 = *(v88 + 32);
              v93 = *(v88 + 48);
              v94 = vuzp2q_s32(*v88, v92);
              v217 = vuzp1q_s32(*v88, v92);
              v219 = v94;
              v28 = vuzp1q_s32(v91, v93);
              v27 = vuzp2q_s32(v91, v93);
              v221 = v28;
              v223 = v27;
              v90 = 64;
            }

            else if (v89 == 1)
            {
              v28 = vld1q_dup_s16(v88);
              v217 = v28;
              v219 = v28;
              v221 = v28;
              v223 = v28;
              v90 = 2;
            }

            else if (v70[2])
            {
              v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 32, v88, v89, *v28.i8, *v27.i8);
            }

            else
            {
              v90 = 0;
              v217 = 0uLL;
              v219 = 0uLL;
              v221 = 0uLL;
              v223 = 0uLL;
            }

            v95 = v88 + v90;
            v96 = v70[3];
            if (v96 == 63)
            {
              v98 = *(v95 + 16);
              v99 = *(v95 + 32);
              v100 = *(v95 + 48);
              v101 = vuzp2q_s32(*v95, v99);
              v225 = vuzp1q_s32(*v95, v99);
              v227 = v101;
              v28 = vuzp1q_s32(v98, v100);
              v27 = vuzp2q_s32(v98, v100);
              v229 = v28;
              v231 = v27;
              v97 = 64;
            }

            else if (v96 == 1)
            {
              v28 = vld1q_dup_s16(v95);
              v225 = v28;
              v227 = v28;
              v229 = v28;
              v231 = v28;
              v97 = 2;
            }

            else if (v70[3])
            {
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v225, 32, v95, v96, *v28.i8, *v27.i8);
            }

            else
            {
              v97 = 0;
              v225 = 0uLL;
              v227 = 0uLL;
              v229 = 0uLL;
              v231 = 0uLL;
            }

            v102 = v95 + v97;
            v103 = v70[4];
            if (v103 == 63)
            {
              v105 = *(v102 + 16);
              v106 = *(v102 + 32);
              v107 = *(v102 + 48);
              v108 = vuzp2q_s32(*v102, v106);
              v232 = vuzp1q_s32(*v102, v106);
              v234 = v108;
              v28 = vuzp1q_s32(v105, v107);
              v27 = vuzp2q_s32(v105, v107);
              v236 = v28;
              v238 = v27;
              v104 = 64;
            }

            else if (v103 == 1)
            {
              v28 = vld1q_dup_s16(v102);
              v232 = v28;
              v234 = v28;
              v236 = v28;
              v238 = v28;
              v104 = 2;
            }

            else if (v70[4])
            {
              v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 32, v102, v103, *v28.i8, *v27.i8);
            }

            else
            {
              v104 = 0;
              v232 = 0uLL;
              v234 = 0uLL;
              v236 = 0uLL;
              v238 = 0uLL;
            }

            v109 = v102 + v104;
            v110 = v70[5];
            if (v110 == 63)
            {
              v112 = *(v109 + 16);
              v113 = *(v109 + 32);
              v114 = *(v109 + 48);
              v115 = vuzp2q_s32(*v109, v113);
              v240 = vuzp1q_s32(*v109, v113);
              v242 = v115;
              v28 = vuzp1q_s32(v112, v114);
              v27 = vuzp2q_s32(v112, v114);
              v244 = v28;
              v246 = v27;
              v111 = 64;
            }

            else if (v110 == 1)
            {
              v28 = vld1q_dup_s16(v109);
              v240 = v28;
              v242 = v28;
              v244 = v28;
              v246 = v28;
              v111 = 2;
            }

            else if (v70[5])
            {
              v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v240, 32, v109, v110, *v28.i8, *v27.i8);
            }

            else
            {
              v111 = 0;
              v240 = 0uLL;
              v242 = 0uLL;
              v244 = 0uLL;
              v246 = 0uLL;
            }

            v116 = v109 + v111;
            v117 = v70[6];
            if (v117 == 63)
            {
              v119 = *(v116 + 16);
              v120 = *(v116 + 32);
              v121 = *(v116 + 48);
              v122 = vuzp2q_s32(*v116, v120);
              v233 = vuzp1q_s32(*v116, v120);
              v235 = v122;
              v28 = vuzp1q_s32(v119, v121);
              v27 = vuzp2q_s32(v119, v121);
              v237 = v28;
              v239 = v27;
              v118 = 64;
            }

            else if (v117 == 1)
            {
              v28 = vld1q_dup_s16(v116);
              v233 = v28;
              v235 = v28;
              v237 = v28;
              v239 = v28;
              v118 = 2;
            }

            else if (v70[6])
            {
              v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 32, v116, v117, *v28.i8, *v27.i8);
            }

            else
            {
              v118 = 0;
              v233 = 0uLL;
              v235 = 0uLL;
              v237 = 0uLL;
              v239 = 0uLL;
            }

            v123 = v116 + v118;
            v124 = v70[7];
            if (v124 == 63)
            {
              v127 = *(v123 + 16);
              v128 = *(v123 + 32);
              v129 = *(v123 + 48);
              v130 = vuzp2q_s32(*v123, v128);
              v241 = vuzp1q_s32(*v123, v128);
              v243 = v130;
              v245 = vuzp1q_s32(v127, v129);
              v247 = vuzp2q_s32(v127, v129);
              v125 = v211;
              if (v211)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v124 != 1)
              {
                if (v70[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v241, 32, v123, v124, *v28.i8, *v27.i8);
                  v125 = v211;
                  if (!v211)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v241 = 0uLL;
                  v243 = 0uLL;
                  v245 = 0uLL;
                  v247 = 0uLL;
                  v125 = v211;
                  if (!v211)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v131 = v212;
                if (!v212)
                {
                  goto LABEL_178;
                }

                v132 = 0;
                v133 = 32 * v209;
                v134 = 2 * v210;
                v135 = &v216 + v133 + v134;
                v136 = v207;
                v137 = v208;
                v138 = 2 * v212;
                if (2 * v212)
                {
                  v139 = (2 * v212 - 1) >> 32 == 0;
                }

                else
                {
                  v139 = 0;
                }

                v140 = !v139;
                v142 = v135 < v207 + 2 * v212 + v208 * (v125 - 1) && v207 < (&__dst[2 * v125 + 30 + 2 * v209] + 2 * v212 + v134);
                v143 = v142 || v208 < 0;
                v144 = v138 & 0x1FFFFFFE0;
                v145 = v138 & 0x1FFFFFFF8;
                v146 = (v212 < 4) | v140 | v143;
                v147 = &v217.i8[v133 + v134];
                v148 = v207 + 1;
                v149 = v135;
                v150 = v207;
                while (2)
                {
                  v151 = v136 + v132 * v137;
                  v152 = &v135[32 * v132];
                  if (v146)
                  {
                    v153 = 0;
LABEL_175:
                    v163 = v153 + 1;
                    do
                    {
                      v164 = *v151++;
                      *v152++ = v164;
                    }

                    while (v138 > v163++);
                  }

                  else
                  {
                    if (v131 >= 0x10)
                    {
                      v155 = v148;
                      v156 = v147;
                      v157 = v138 & 0x1FFFFFFE0;
                      do
                      {
                        v158 = *v155;
                        *(v156 - 1) = v155[-1];
                        *v156 = v158;
                        v156 += 32;
                        v155 += 2;
                        v157 -= 32;
                      }

                      while (v157);
                      if (v138 == v144)
                      {
                        goto LABEL_161;
                      }

                      v154 = v138 & 0x1FFFFFFE0;
                      if ((v131 & 0xC) == 0)
                      {
                        v151 += v144;
                        v152 += v144;
                        v153 = v138 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v154 = 0;
                    }

                    v152 += v145;
                    v159 = v154 - (v138 & 0x1FFFFFFF8);
                    v160 = (v150 + v154);
                    v161 = &v149[v154];
                    do
                    {
                      v162 = *v160++;
                      *v161 = v162;
                      v161 += 8;
                      v159 += 8;
                    }

                    while (v159);
                    if (v138 != v145)
                    {
                      v151 += v145;
                      v153 = v138 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v132;
                  v147 += 32;
                  v148 = (v148 + v137);
                  v150 = (v150 + v137);
                  v149 += 32;
                  if (v132 == v125)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v126 = vld1q_dup_s16(v123);
              v241 = v126;
              v243 = v126;
              v245 = v126;
              v247 = v126;
              v125 = v211;
              if (v211)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v216, 32, v205, v206, v213, v214);
            if (!v203)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v71;
          if (!v203)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v73, 0x200uLL);
LABEL_26:
          v21 = v35++ == v191 >> 4;
          result = v200;
        }

        while (!v21);
        v21 = v17++ == v183;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v311 = v21;
  v312 = v22;
  v295 = v23;
  v24 = v12;
  v462 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v317 = v14;
  v297 = v14 + a10 - 1;
  v318 = v24;
  if (*(v24 + 168))
  {
    v25 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v25 = 0;
  }

  v26 = v14 >> 4;
  v27 = v20 - 1;
  v28 = v18 - 1;
  v296 = v297 >> 4;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v321 = v32;
  result = v24;
  if (*(v24 + 232) == 1)
  {
    v34 = *(v24 + 273);
    v35 = *(v24 + 272);
    v36 = __clz(v27);
    if (1 << v34 >= v18 || v20 >> v35)
    {
      if (!(v18 >> v34) && 1 << v35 < v20)
      {
        if (v18 < 2)
        {
          v39 = 0;
        }

        else
        {
          v39 = __clz(~(-1 << -__clz(v28))) | 0xFFFFFFE0;
        }

        v35 += v34 + v39;
        v34 = -v39;
      }
    }

    else
    {
      v37 = 32 - __clz(~(-1 << -v36));
      v38 = v35 + v34;
      if (v20 < 2)
      {
        v37 = 0;
      }

      v34 = v38 - v37;
      v35 = v37;
    }

    if (v20 < 2)
    {
      if (v35)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v36)) < v35)
    {
LABEL_27:
      v310 = 0;
LABEL_32:
      v307 = v35 - 4;
      v301 = v34 - 4;
      v41 = -1 << *(*(v24 + 208) + 48);
      v294 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
      goto LABEL_33;
    }

    if (v18 < 2)
    {
      v40 = 0;
    }

    else
    {
      v40 = 32 - __clz(~(-1 << -__clz(v28)));
    }

    v310 = v40 >= v34;
    goto LABEL_32;
  }

  v310 = 0;
  v294 = 0;
  v301 = 0;
  v307 = 0;
LABEL_33:
  if (v26 <= v296)
  {
    v309 = v16 + a9 - 1;
    v293 = v16 >> 4;
    if (v16 >> 4 <= v309 >> 4)
    {
      v319 = v27 >> 4;
      v302 = v27 & 0xF;
      v291 = v28 & 0xF;
      v292 = v28 >> 4;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0xF0000000FLL);
      v43 = vcgt_u32(v42, 0x1F0000001FLL);
      v300 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v42, 4uLL))))))), v43);
      v299 = v43;
      v308 = v16;
      do
      {
        v44 = (16 * v26) | 0xF;
        if (16 * v26 <= v317)
        {
          v45 = v317;
        }

        else
        {
          v45 = 16 * v26;
        }

        if (v297 < v44)
        {
          v44 = v297;
        }

        v316 = 16 * v26;
        v306 = v45 - 16 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v291;
        v305 = v47;
        v49 = v47 != 16;
        v50 = v291 + 1;
        if (v26 != v292)
        {
          v50 = 16;
          v48 = v49;
        }

        v304 = v48;
        v51 = v293;
        v303 = (v26 >> v301) * v294;
        v52 = v26 & ~(-1 << v301);
        v314 = v295 + (v45 - v317) * a11;
        v315 = v50;
        v313 = v50;
        v298 = v26;
        do
        {
          v53 = 16 * v51;
          v54 = 16 * (v51 + 1) - 1;
          if (16 * v51 <= v16)
          {
            v55 = v16;
          }

          else
          {
            v55 = 16 * v51;
          }

          if (v309 < v54)
          {
            v54 = v309;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v319)
          {
            v58 = v302 + 1;
          }

          else
          {
            v58 = 16;
          }

          v59 = 1;
          if (v316 >= v317 && v53 >= v16)
          {
            v60 = v56 != v302;
            if (v51 != v319)
            {
              v60 = v57 != 16;
            }

            v59 = v60 || v304;
          }

          if (v310)
          {
            if (v307 | v301)
            {
              v61 = 0;
              v62 = 0;
              v63 = 1;
              v64 = v307 != 0;
              v65 = v301 != 0;
              v66 = v307;
              v67 = v301;
              do
              {
                --v66;
                if (v64)
                {
                  v62 |= (v51 & ~(-1 << v307) & v63) << v61++;
                }

                else
                {
                  v66 = 0;
                }

                --v67;
                if (v65)
                {
                  v62 |= (v52 & v63) << v61++;
                }

                else
                {
                  v67 = 0;
                }

                v63 *= 2;
                --v61;
                v65 = v67 != 0;
                v64 = v66 != 0;
              }

              while (v67 | v66);
              v68 = v62 << 11;
            }

            else
            {
              v68 = 0;
            }

            v76 = v68 + *(result + 336) * ((v51 >> v307) + v303);
          }

          else if (v300)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v299.i8[4];
            v73 = v299.i8[0];
            v74 = v300.i32[1];
            v75 = v300.i32[0];
            do
            {
              --v74;
              if (v72)
              {
                v70 |= (v71 & v51) << v69++;
              }

              else
              {
                v74 = 0;
              }

              --v75;
              if (v73)
              {
                v70 |= (v71 & v26) << v69++;
              }

              else
              {
                v75 = 0;
              }

              v71 *= 2;
              --v69;
              v73 = v75 != 0;
              v72 = v74 != 0;
            }

            while (v75 | v74);
            v76 = v70 << 11;
          }

          else
          {
            v76 = 0;
          }

          v77 = *(result + 128) >> (*(result + 144) + a12);
          if (v77 <= 1)
          {
            v77 = 1;
          }

          v78 = v77 + 15;
          if (v78 < 0x20)
          {
            v79 = 0;
          }

          else
          {
            v79 = 32 - __clz(~(-1 << -__clz((v78 >> 4) - 1)));
          }

          v80 = *(result + 132) >> (*(result + 144) + a12);
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = v80 + 15;
          if (v81 < 0x20)
          {
            v82 = 0;
            if (!v79)
            {
LABEL_103:
              v88 = 0;
              goto LABEL_104;
            }
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 4) - 1)));
            if (!(v82 | v79))
            {
              goto LABEL_103;
            }
          }

          v83 = 0;
          v84 = 0;
          v85 = v79 != 0;
          v86 = v82 != 0;
          v87 = 1;
          do
          {
            --v79;
            if (v85)
            {
              v84 |= (v87 & v51) << v83++;
            }

            else
            {
              v79 = 0;
            }

            --v82;
            if (v86)
            {
              v84 |= (v87 & v26) << v83++;
            }

            else
            {
              v82 = 0;
            }

            v87 *= 2;
            --v83;
            v86 = v82 != 0;
            v85 = v79 != 0;
          }

          while (v82 | v79);
          v88 = 8 * v84;
LABEL_104:
          v89 = (v312 + v88);
          v90 = v314 + 8 * (v55 - v16);
          v320 = (v311 + v76);
          if (v321)
          {
            v91 = __dst;
            if (!(v59 & 1 | (v58 < 0x10u) | (v313 < 0x10)))
            {
              goto LABEL_110;
            }

            v92 = v52;
            v93 = (v312 + v88);
            v94 = v59;
            memcpy(__dst, (v311 + v76), sizeof(__dst));
            v53 = 16 * v51;
            v26 = v298;
            v59 = v94;
            v89 = v93;
            v52 = v92;
            result = v318;
          }

          else
          {
            v91 = (v311 + v76);
            if (!(v59 & 1 | (v58 < 0x10u) | (v313 < 0x10)))
            {
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v90, a11, v91, v89, v58, v315);
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v95 = v55 - v53;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v323 = v91;
          v331 = v58;
          v332 = v315;
          v327 = v306;
          v328 = v55 - v53;
          v324 = v89;
          v325 = v90;
          v326 = a11;
          v329 = v305;
          v330 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            v16 = v308;
            v96 = v51 + 1;
            goto LABEL_202;
          }

          v97 = *v89;
          v16 = v308;
          if (v97 == 255)
          {
            v100 = *(v91 + 1);
            v101 = *(v91 + 3);
            v102 = *(v91 + 9);
            v103 = *(v91 + 11);
            v104 = *(v91 + 2);
            v105 = *(v91 + 8);
            v106 = *(v91 + 4);
            v107 = *(v91 + 6);
            v108 = *(v91 + 10);
            v109 = *(v91 + 12);
            v110 = *(v91 + 13);
            v111 = *(v91 + 14);
            v112 = *(v91 + 15);
            v113 = *(v91 + 5);
            v114 = *(v91 + 7);
            v334 = *v91;
            v335 = v104;
            v336 = v105;
            v337 = v108;
            v342 = v100;
            v343 = v101;
            v344 = v102;
            v345 = v103;
            v350 = v106;
            v351 = v107;
            v352 = v109;
            v353 = v111;
            v98 = 256;
            v358 = v113;
            v359 = v114;
            v360 = v110;
            v361 = v112;
          }

          else if (v97 == 7)
          {
            v99 = vld1q_dup_f64(v91);
            v334 = v99;
            v335 = v99;
            v336 = v99;
            v337 = v99;
            v342 = v99;
            v343 = v99;
            v344 = v99;
            v345 = v99;
            v350 = v99;
            v351 = v99;
            v352 = v99;
            v353 = v99;
            v358 = v99;
            v359 = v99;
            v98 = 8;
            v360 = v99;
            v361 = v99;
          }

          else if (*v89)
          {
            v115 = v89;
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v334, 128, v91, v97);
            v89 = v115;
          }

          else
          {
            v98 = 0;
            v337 = 0u;
            v336 = 0u;
            v335 = 0u;
            v334 = 0u;
            v342 = 0u;
            v343 = 0u;
            v344 = 0u;
            v345 = 0u;
            v350 = 0u;
            v351 = 0u;
            v352 = 0u;
            v353 = 0u;
            v358 = 0u;
            v359 = 0u;
            v360 = 0u;
            v361 = 0u;
          }

          v116 = &v91[v98];
          v117 = v89[1];
          if (v117 == 255)
          {
            v120 = *(v116 + 16);
            v121 = *(v116 + 48);
            v122 = *(v116 + 144);
            v123 = *(v116 + 176);
            v124 = *(v116 + 32);
            v125 = *(v116 + 128);
            v126 = *(v116 + 64);
            v127 = *(v116 + 96);
            v128 = *(v116 + 160);
            v129 = *(v116 + 192);
            v130 = *(v116 + 208);
            v131 = *(v116 + 224);
            v132 = *(v116 + 240);
            v133 = *(v116 + 80);
            v134 = *(v116 + 112);
            v366 = *v116;
            v367 = v124;
            v368 = v125;
            v369 = v128;
            v374 = v120;
            v375 = v121;
            v376 = v122;
            v377 = v123;
            v382 = v126;
            v383 = v127;
            v384 = v129;
            v385 = v131;
            v118 = 256;
            v390 = v133;
            v391 = v134;
            v392 = v130;
            v393 = v132;
            v96 = v51 + 1;
          }

          else
          {
            v96 = v51 + 1;
            if (v117 == 7)
            {
              v119 = vld1q_dup_f64(v116);
              v366 = v119;
              v367 = v119;
              v368 = v119;
              v369 = v119;
              v374 = v119;
              v375 = v119;
              v376 = v119;
              v377 = v119;
              v382 = v119;
              v383 = v119;
              v384 = v119;
              v385 = v119;
              v390 = v119;
              v391 = v119;
              v118 = 8;
              v392 = v119;
              v393 = v119;
            }

            else if (v89[1])
            {
              v135 = v89;
              v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v366, 128, v116, v117);
              v89 = v135;
            }

            else
            {
              v118 = 0;
              v368 = 0u;
              v369 = 0u;
              v366 = 0u;
              v367 = 0u;
              v374 = 0u;
              v375 = 0u;
              v376 = 0u;
              v377 = 0u;
              v382 = 0u;
              v383 = 0u;
              v384 = 0u;
              v385 = 0u;
              v390 = 0u;
              v391 = 0u;
              v392 = 0u;
              v393 = 0u;
            }
          }

          v136 = v116 + v118;
          v137 = v89[2];
          if (v137 == 255)
          {
            v140 = *(v136 + 16);
            v141 = *(v136 + 48);
            v142 = *(v136 + 144);
            v143 = *(v136 + 176);
            v144 = *(v136 + 32);
            v145 = *(v136 + 128);
            v146 = *(v136 + 64);
            v147 = *(v136 + 96);
            v148 = *(v136 + 160);
            v149 = *(v136 + 192);
            v150 = *(v136 + 208);
            v151 = *(v136 + 224);
            v152 = *(v136 + 240);
            v153 = *(v136 + 80);
            v154 = *(v136 + 112);
            v338 = *v136;
            v339 = v144;
            v340 = v145;
            v341 = v148;
            v346 = v140;
            v347 = v141;
            v348 = v142;
            v349 = v143;
            v354 = v146;
            v355 = v147;
            v356 = v149;
            v357 = v151;
            v138 = 256;
            v362 = v153;
            v363 = v154;
            v364 = v150;
            v365 = v152;
          }

          else if (v137 == 7)
          {
            v139 = vld1q_dup_f64(v136);
            v338 = v139;
            v339 = v139;
            v340 = v139;
            v341 = v139;
            v346 = v139;
            v347 = v139;
            v348 = v139;
            v349 = v139;
            v354 = v139;
            v355 = v139;
            v356 = v139;
            v357 = v139;
            v362 = v139;
            v363 = v139;
            v138 = 8;
            v364 = v139;
            v365 = v139;
          }

          else if (v89[2])
          {
            v155 = v89;
            v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v338, 128, v136, v137);
            v89 = v155;
          }

          else
          {
            v138 = 0;
            v340 = 0u;
            v341 = 0u;
            v338 = 0u;
            v339 = 0u;
            v346 = 0u;
            v347 = 0u;
            v348 = 0u;
            v349 = 0u;
            v354 = 0u;
            v355 = 0u;
            v356 = 0u;
            v357 = 0u;
            v362 = 0u;
            v363 = 0u;
            v364 = 0u;
            v365 = 0u;
          }

          v156 = v136 + v138;
          v157 = v89[3];
          if (v157 == 255)
          {
            v160 = *(v156 + 16);
            v161 = *(v156 + 48);
            v162 = *(v156 + 144);
            v163 = *(v156 + 176);
            v164 = *(v156 + 32);
            v165 = *(v156 + 128);
            v166 = *(v156 + 64);
            v167 = *(v156 + 96);
            v168 = *(v156 + 160);
            v169 = *(v156 + 192);
            v170 = *(v156 + 208);
            v171 = *(v156 + 224);
            v172 = *(v156 + 240);
            v173 = *(v156 + 80);
            v174 = *(v156 + 112);
            v370 = *v156;
            v371 = v164;
            v372 = v165;
            v373 = v168;
            v378 = v160;
            v379 = v161;
            v380 = v162;
            v381 = v163;
            v386 = v166;
            v387 = v167;
            v388 = v169;
            v389 = v171;
            v158 = 256;
            v394 = v173;
            v395 = v174;
            v396 = v170;
            v397 = v172;
          }

          else if (v157 == 7)
          {
            v159 = vld1q_dup_f64(v156);
            v370 = v159;
            v371 = v159;
            v372 = v159;
            v373 = v159;
            v378 = v159;
            v379 = v159;
            v380 = v159;
            v381 = v159;
            v386 = v159;
            v387 = v159;
            v388 = v159;
            v389 = v159;
            v394 = v159;
            v395 = v159;
            v158 = 8;
            v396 = v159;
            v397 = v159;
          }

          else if (v89[3])
          {
            v175 = v89;
            v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v370, 128, v156, v157);
            v89 = v175;
          }

          else
          {
            v158 = 0;
            v372 = 0u;
            v373 = 0u;
            v370 = 0u;
            v371 = 0u;
            v378 = 0u;
            v379 = 0u;
            v380 = 0u;
            v381 = 0u;
            v386 = 0u;
            v387 = 0u;
            v388 = 0u;
            v389 = 0u;
            v394 = 0u;
            v395 = 0u;
            v396 = 0u;
            v397 = 0u;
          }

          v176 = v156 + v158;
          v177 = v89[4];
          if (v177 == 255)
          {
            v180 = *(v176 + 16);
            v181 = *(v176 + 48);
            v182 = *(v176 + 144);
            v183 = *(v176 + 176);
            v184 = *(v176 + 32);
            v185 = *(v176 + 128);
            v186 = *(v176 + 64);
            v187 = *(v176 + 96);
            v188 = *(v176 + 160);
            v189 = *(v176 + 192);
            v190 = *(v176 + 208);
            v191 = *(v176 + 224);
            v192 = *(v176 + 240);
            v193 = *(v176 + 80);
            v194 = *(v176 + 112);
            v398 = *v176;
            v399 = v184;
            v400 = v185;
            v401 = v188;
            v406 = v180;
            v407 = v181;
            v408 = v182;
            v409 = v183;
            v414 = v186;
            v415 = v187;
            v416 = v189;
            v417 = v191;
            v178 = 256;
            v422 = v193;
            v423 = v194;
            v424 = v190;
            v425 = v192;
          }

          else if (v177 == 7)
          {
            v179 = vld1q_dup_f64(v176);
            v398 = v179;
            v399 = v179;
            v400 = v179;
            v401 = v179;
            v406 = v179;
            v407 = v179;
            v408 = v179;
            v409 = v179;
            v414 = v179;
            v415 = v179;
            v416 = v179;
            v417 = v179;
            v422 = v179;
            v423 = v179;
            v424 = v179;
            v178 = 8;
            v425 = v179;
          }

          else if (v89[4])
          {
            v195 = v89;
            v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v398, 128, v176, v177);
            v89 = v195;
          }

          else
          {
            v178 = 0;
            v400 = 0u;
            v401 = 0u;
            v398 = 0u;
            v399 = 0u;
            v406 = 0u;
            v407 = 0u;
            v408 = 0u;
            v409 = 0u;
            v414 = 0u;
            v415 = 0u;
            v416 = 0u;
            v417 = 0u;
            v422 = 0u;
            v423 = 0u;
            v424 = 0u;
            v425 = 0u;
          }

          v196 = v176 + v178;
          v197 = v89[5];
          if (v197 == 255)
          {
            v200 = *(v196 + 16);
            v201 = *(v196 + 48);
            v202 = *(v196 + 144);
            v203 = *(v196 + 176);
            v204 = *(v196 + 32);
            v205 = *(v196 + 128);
            v206 = *(v196 + 64);
            v207 = *(v196 + 96);
            v208 = *(v196 + 160);
            v209 = *(v196 + 192);
            v210 = *(v196 + 208);
            v211 = *(v196 + 224);
            v212 = *(v196 + 240);
            v213 = *(v196 + 80);
            v214 = *(v196 + 112);
            v430 = *v196;
            v431 = v204;
            v432 = v205;
            v433 = v208;
            v438 = v200;
            v439 = v201;
            v440 = v202;
            v441 = v203;
            v446 = v206;
            v447 = v207;
            v448 = v209;
            v449 = v211;
            v198 = 256;
            v454 = v213;
            v455 = v214;
            v456 = v210;
            v457 = v212;
          }

          else if (v197 == 7)
          {
            v199 = vld1q_dup_f64(v196);
            v430 = v199;
            v431 = v199;
            v432 = v199;
            v433 = v199;
            v438 = v199;
            v439 = v199;
            v440 = v199;
            v441 = v199;
            v446 = v199;
            v447 = v199;
            v448 = v199;
            v449 = v199;
            v454 = v199;
            v455 = v199;
            v456 = v199;
            v198 = 8;
            v457 = v199;
          }

          else if (v89[5])
          {
            v215 = v89;
            v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v430, 128, v196, v197);
            v89 = v215;
          }

          else
          {
            v198 = 0;
            v432 = 0u;
            v433 = 0u;
            v430 = 0u;
            v431 = 0u;
            v438 = 0u;
            v439 = 0u;
            v440 = 0u;
            v441 = 0u;
            v446 = 0u;
            v447 = 0u;
            v448 = 0u;
            v449 = 0u;
            v454 = 0u;
            v455 = 0u;
            v456 = 0u;
            v457 = 0u;
          }

          v216 = v196 + v198;
          v217 = v89[6];
          if (v217 == 255)
          {
            v220 = *(v216 + 16);
            v221 = *(v216 + 48);
            v222 = *(v216 + 144);
            v223 = *(v216 + 176);
            v224 = *(v216 + 32);
            v225 = *(v216 + 128);
            v226 = *(v216 + 64);
            v227 = *(v216 + 96);
            v228 = *(v216 + 160);
            v229 = *(v216 + 192);
            v230 = *(v216 + 208);
            v231 = *(v216 + 224);
            v232 = *(v216 + 240);
            v233 = *(v216 + 80);
            v234 = *(v216 + 112);
            v402 = *v216;
            v403 = v224;
            v404 = v225;
            v405 = v228;
            v410 = v220;
            v411 = v221;
            v412 = v222;
            v413 = v223;
            v418 = v226;
            v419 = v227;
            v420 = v229;
            v421 = v231;
            v218 = 256;
            v426 = v233;
            v427 = v234;
            v428 = v230;
            v429 = v232;
          }

          else if (v217 == 7)
          {
            v219 = vld1q_dup_f64(v216);
            v402 = v219;
            v403 = v219;
            v404 = v219;
            v405 = v219;
            v410 = v219;
            v411 = v219;
            v412 = v219;
            v413 = v219;
            v418 = v219;
            v419 = v219;
            v420 = v219;
            v421 = v219;
            v426 = v219;
            v427 = v219;
            v428 = v219;
            v218 = 8;
            v429 = v219;
          }

          else if (v89[6])
          {
            v235 = v89;
            v218 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v402, 128, v216, v217);
            v89 = v235;
          }

          else
          {
            v218 = 0;
            v404 = 0u;
            v405 = 0u;
            v402 = 0u;
            v403 = 0u;
            v410 = 0u;
            v411 = 0u;
            v412 = 0u;
            v413 = 0u;
            v418 = 0u;
            v419 = 0u;
            v420 = 0u;
            v421 = 0u;
            v426 = 0u;
            v427 = 0u;
            v428 = 0u;
            v429 = 0u;
          }

          v236 = v216 + v218;
          v237 = v89[7];
          if (v237 == 255)
          {
            v241 = *(v236 + 16);
            v242 = *(v236 + 48);
            v243 = *(v236 + 144);
            v244 = *(v236 + 176);
            v245 = *(v236 + 32);
            v246 = *(v236 + 128);
            v247 = *(v236 + 160);
            v248 = *(v236 + 64);
            v249 = *(v236 + 96);
            v250 = *(v236 + 192);
            v251 = *(v236 + 224);
            v252 = *(v236 + 240);
            v253 = *(v236 + 80);
            v254 = *(v236 + 112);
            v255 = *(v236 + 208);
            v434 = *v236;
            v435 = v245;
            v436 = v246;
            v437 = v247;
            v442 = v241;
            v443 = v242;
            v444 = v243;
            v445 = v244;
            v450 = v248;
            v451 = v249;
            v452 = v250;
            v453 = v251;
            v238 = v305;
            v239 = v306;
            v458 = v253;
            v459 = v254;
            v460 = v255;
            v461 = v252;
            if (!v305)
            {
              goto LABEL_201;
            }
          }

          else if (v237 == 7)
          {
            v240 = vld1q_dup_f64(v236);
            v434 = v240;
            v435 = v240;
            v436 = v240;
            v437 = v240;
            v442 = v240;
            v443 = v240;
            v444 = v240;
            v445 = v240;
            v450 = v240;
            v451 = v240;
            v452 = v240;
            v453 = v240;
            v458 = v240;
            v459 = v240;
            v460 = v240;
            v238 = v305;
            v239 = v306;
            v461 = v240;
            if (!v305)
            {
              goto LABEL_201;
            }
          }

          else if (v89[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v434, 128, v236, v237);
            v239 = v327;
            v95 = v328;
            v238 = v329;
            if (!v329)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v436 = 0u;
            v437 = 0u;
            v434 = 0u;
            v435 = 0u;
            v442 = 0u;
            v443 = 0u;
            v444 = 0u;
            v445 = 0u;
            v450 = 0u;
            v451 = 0u;
            v452 = 0u;
            v453 = 0u;
            v458 = 0u;
            v459 = 0u;
            v238 = v305;
            v239 = v306;
            v460 = 0u;
            v461 = 0u;
            if (!v305)
            {
              goto LABEL_201;
            }
          }

          v256 = v330;
          if (v330)
          {
            v257 = 0;
            v258 = v239;
            v259 = v239 << 7;
            v260 = 8 * v95;
            v261 = &v334 + v259 + v260;
            v262 = v325;
            v263 = v326;
            v264 = 8 * v330;
            v265 = &__dst[128 * v238 + 1920 + 128 * v258 + v264 + v260];
            if (8 * v330)
            {
              v266 = (8 * v330 - 1) >> 32 == 0;
            }

            else
            {
              v266 = 0;
            }

            v267 = !v266;
            v269 = v261 < v325 + v326 * (v238 - 1) + 8 * v330 && v325 < v265;
            v270 = v264 & 0x1FFFFFFE0;
            v271 = v267 | (v326 < 0) | v269;
            v272 = &v335 + v259 + v260;
            v273 = (v325 + 16);
            v274 = v261;
            v275 = v325;
            do
            {
              v276 = (v262 + v257 * v263);
              v277 = &v261[128 * v257];
              if (v271)
              {
                v278 = 0;
              }

              else
              {
                if (v256 < 4)
                {
                  v282 = 0;
LABEL_197:
                  v287 = -8 * v256 + v282;
                  v288 = (v275 + v282);
                  v289 = &v274[v282];
                  do
                  {
                    v290 = *v288++;
                    *v289 = v290;
                    v289 += 8;
                    v287 += 8;
                  }

                  while (v287);
                  goto LABEL_185;
                }

                v283 = v273;
                v284 = v272;
                v285 = v264 & 0x1FFFFFFE0;
                do
                {
                  v286 = *v283;
                  *(v284 - 1) = *(v283 - 1);
                  *v284 = v286;
                  v284 += 2;
                  v283 += 2;
                  v285 -= 32;
                }

                while (v285);
                if (v264 == v270)
                {
                  goto LABEL_185;
                }

                v282 = v264 & 0x1FFFFFFE0;
                if ((v256 & 3) != 0)
                {
                  goto LABEL_197;
                }

                v276 += v270;
                v277 += v270;
                v278 = v264 & 0xFFFFFFE0;
              }

              v279 = v278 + 1;
              do
              {
                v280 = *v276++;
                *v277++ = v280;
              }

              while (v264 > v279++);
LABEL_185:
              ++v257;
              v272 += 128;
              v273 = (v273 + v263);
              v275 += v263;
              v274 += 128;
            }

            while (v257 != v238);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v334, 128, v323, v324, v331, v332);
LABEL_202:
          if (v321)
          {
            memcpy(v320, v91, 0x800uLL);
          }

          v29 = v51 == v309 >> 4;
          v51 = v96;
          result = v318;
        }

        while (!v29);
        v29 = v26++ == v296;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v311 = v21;
  v312 = v22;
  v295 = v23;
  v24 = v12;
  v462 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v317 = v14;
  v297 = v14 + a10 - 1;
  v318 = v24;
  if (*(v24 + 168))
  {
    v25 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v25 = 0;
  }

  v26 = v14 >> 4;
  v27 = v20 - 1;
  v28 = v18 - 1;
  v296 = v297 >> 4;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v321 = v32;
  result = v24;
  if (*(v24 + 232) == 1)
  {
    v34 = *(v24 + 273);
    v35 = *(v24 + 272);
    v36 = __clz(v27);
    if (1 << v34 >= v18 || v20 >> v35)
    {
      if (!(v18 >> v34) && 1 << v35 < v20)
      {
        if (v18 < 2)
        {
          v39 = 0;
        }

        else
        {
          v39 = __clz(~(-1 << -__clz(v28))) | 0xFFFFFFE0;
        }

        v35 += v34 + v39;
        v34 = -v39;
      }
    }

    else
    {
      v37 = 32 - __clz(~(-1 << -v36));
      v38 = v35 + v34;
      if (v20 < 2)
      {
        v37 = 0;
      }

      v34 = v38 - v37;
      v35 = v37;
    }

    if (v20 < 2)
    {
      if (v35)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v36)) < v35)
    {
LABEL_27:
      v310 = 0;
LABEL_32:
      v307 = v35 - 4;
      v301 = v34 - 4;
      v41 = -1 << *(*(v24 + 208) + 48);
      v294 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
      goto LABEL_33;
    }

    if (v18 < 2)
    {
      v40 = 0;
    }

    else
    {
      v40 = 32 - __clz(~(-1 << -__clz(v28)));
    }

    v310 = v40 >= v34;
    goto LABEL_32;
  }

  v310 = 0;
  v294 = 0;
  v301 = 0;
  v307 = 0;
LABEL_33:
  if (v26 <= v296)
  {
    v309 = v16 + a9 - 1;
    v293 = v16 >> 4;
    if (v16 >> 4 <= v309 >> 4)
    {
      v319 = v27 >> 4;
      v302 = v27 & 0xF;
      v291 = v28 & 0xF;
      v292 = v28 >> 4;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0xF0000000FLL);
      v43 = vcgt_u32(v42, 0x1F0000001FLL);
      v300 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v42, 4uLL))))))), v43);
      v299 = v43;
      v308 = v16;
      do
      {
        v44 = (16 * v26) | 0xF;
        if (16 * v26 <= v317)
        {
          v45 = v317;
        }

        else
        {
          v45 = 16 * v26;
        }

        if (v297 < v44)
        {
          v44 = v297;
        }

        v316 = 16 * v26;
        v306 = v45 - 16 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v291;
        v305 = v47;
        v49 = v47 != 16;
        v50 = v291 + 1;
        if (v26 != v292)
        {
          v50 = 16;
          v48 = v49;
        }

        v304 = v48;
        v51 = v293;
        v303 = (v26 >> v301) * v294;
        v52 = v26 & ~(-1 << v301);
        v314 = v295 + (v45 - v317) * a11;
        v315 = v50;
        v313 = v50;
        v298 = v26;
        do
        {
          v53 = 16 * v51;
          v54 = 16 * (v51 + 1) - 1;
          if (16 * v51 <= v16)
          {
            v55 = v16;
          }

          else
          {
            v55 = 16 * v51;
          }

          if (v309 < v54)
          {
            v54 = v309;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v319)
          {
            v58 = v302 + 1;
          }

          else
          {
            v58 = 16;
          }

          v59 = 1;
          if (v316 >= v317 && v53 >= v16)
          {
            v60 = v56 != v302;
            if (v51 != v319)
            {
              v60 = v57 != 16;
            }

            v59 = v60 || v304;
          }

          if (v310)
          {
            if (v307 | v301)
            {
              v61 = 0;
              v62 = 0;
              v63 = 1;
              v64 = v307 != 0;
              v65 = v301 != 0;
              v66 = v307;
              v67 = v301;
              do
              {
                --v66;
                if (v64)
                {
                  v62 |= (v51 & ~(-1 << v307) & v63) << v61++;
                }

                else
                {
                  v66 = 0;
                }

                --v67;
                if (v65)
                {
                  v62 |= (v52 & v63) << v61++;
                }

                else
                {
                  v67 = 0;
                }

                v63 *= 2;
                --v61;
                v65 = v67 != 0;
                v64 = v66 != 0;
              }

              while (v67 | v66);
              v68 = v62 << 11;
            }

            else
            {
              v68 = 0;
            }

            v76 = v68 + *(result + 336) * ((v51 >> v307) + v303);
          }

          else if (v300)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v299.i8[4];
            v73 = v299.i8[0];
            v74 = v300.i32[1];
            v75 = v300.i32[0];
            do
            {
              --v74;
              if (v72)
              {
                v70 |= (v71 & v51) << v69++;
              }

              else
              {
                v74 = 0;
              }

              --v75;
              if (v73)
              {
                v70 |= (v71 & v26) << v69++;
              }

              else
              {
                v75 = 0;
              }

              v71 *= 2;
              --v69;
              v73 = v75 != 0;
              v72 = v74 != 0;
            }

            while (v75 | v74);
            v76 = v70 << 11;
          }

          else
          {
            v76 = 0;
          }

          v77 = *(result + 128) >> (*(result + 144) + a12);
          if (v77 <= 1)
          {
            v77 = 1;
          }

          v78 = v77 + 15;
          if (v78 < 0x20)
          {
            v79 = 0;
          }

          else
          {
            v79 = 32 - __clz(~(-1 << -__clz((v78 >> 4) - 1)));
          }

          v80 = *(result + 132) >> (*(result + 144) + a12);
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = v80 + 15;
          if (v81 < 0x20)
          {
            v82 = 0;
            if (!v79)
            {
LABEL_103:
              v88 = 0;
              goto LABEL_104;
            }
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 4) - 1)));
            if (!(v82 | v79))
            {
              goto LABEL_103;
            }
          }

          v83 = 0;
          v84 = 0;
          v85 = v79 != 0;
          v86 = v82 != 0;
          v87 = 1;
          do
          {
            --v79;
            if (v85)
            {
              v84 |= (v87 & v51) << v83++;
            }

            else
            {
              v79 = 0;
            }

            --v82;
            if (v86)
            {
              v84 |= (v87 & v26) << v83++;
            }

            else
            {
              v82 = 0;
            }

            v87 *= 2;
            --v83;
            v86 = v82 != 0;
            v85 = v79 != 0;
          }

          while (v82 | v79);
          v88 = 8 * v84;
LABEL_104:
          v89 = (v312 + v88);
          v90 = (v314 + 8 * (v55 - v16));
          v320 = (v311 + v76);
          if (v321)
          {
            v91 = __dst;
            if (!(v59 & 1 | (v58 < 0x10u) | (v313 < 0x10)))
            {
              goto LABEL_110;
            }

            v92 = v52;
            v93 = (v312 + v88);
            v94 = v59;
            memcpy(__dst, (v311 + v76), sizeof(__dst));
            v53 = 16 * v51;
            v26 = v298;
            v59 = v94;
            v89 = v93;
            v52 = v92;
            result = v318;
          }

          else
          {
            v91 = (v311 + v76);
            if (!(v59 & 1 | (v58 < 0x10u) | (v313 < 0x10)))
            {
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v90, a11, v91, v89, v58, v315);
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v95 = v55 - v53;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v323 = v91;
          v331 = v58;
          v332 = v315;
          v327 = v306;
          v328 = v55 - v53;
          v324 = v89;
          v325 = v90;
          v326 = a11;
          v329 = v305;
          v330 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            v16 = v308;
            v96 = v51 + 1;
            goto LABEL_202;
          }

          v97 = *v89;
          v16 = v308;
          if (v97 == 255)
          {
            v100 = *(v91 + 1);
            v101 = *(v91 + 3);
            v102 = *(v91 + 9);
            v103 = *(v91 + 11);
            v104 = *(v91 + 2);
            v105 = *(v91 + 8);
            v106 = *(v91 + 4);
            v107 = *(v91 + 6);
            v108 = *(v91 + 10);
            v109 = *(v91 + 12);
            v110 = *(v91 + 13);
            v111 = *(v91 + 14);
            v112 = *(v91 + 15);
            v113 = *(v91 + 5);
            v114 = *(v91 + 7);
            v334 = *v91;
            v335 = v104;
            v336 = v105;
            v337 = v108;
            v342 = v100;
            v343 = v101;
            v344 = v102;
            v345 = v103;
            v350 = v106;
            v351 = v107;
            v352 = v109;
            v353 = v111;
            v98 = 256;
            v358 = v113;
            v359 = v114;
            v360 = v110;
            v361 = v112;
          }

          else if (v97 == 7)
          {
            v99 = vld1q_dup_f64(v91);
            v334 = v99;
            v335 = v99;
            v336 = v99;
            v337 = v99;
            v342 = v99;
            v343 = v99;
            v344 = v99;
            v345 = v99;
            v350 = v99;
            v351 = v99;
            v352 = v99;
            v353 = v99;
            v358 = v99;
            v359 = v99;
            v98 = 8;
            v360 = v99;
            v361 = v99;
          }

          else if (*v89)
          {
            v115 = v89;
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v334, 128, v91, v97);
            v89 = v115;
          }

          else
          {
            v98 = 0;
            v337 = 0u;
            v336 = 0u;
            v335 = 0u;
            v334 = 0u;
            v342 = 0u;
            v343 = 0u;
            v344 = 0u;
            v345 = 0u;
            v350 = 0u;
            v351 = 0u;
            v352 = 0u;
            v353 = 0u;
            v358 = 0u;
            v359 = 0u;
            v360 = 0u;
            v361 = 0u;
          }

          v116 = v91 + v98;
          v117 = v89[1];
          if (v117 == 255)
          {
            v120 = *(v116 + 16);
            v121 = *(v116 + 48);
            v122 = *(v116 + 144);
            v123 = *(v116 + 176);
            v124 = *(v116 + 32);
            v125 = *(v116 + 128);
            v126 = *(v116 + 64);
            v127 = *(v116 + 96);
            v128 = *(v116 + 160);
            v129 = *(v116 + 192);
            v130 = *(v116 + 208);
            v131 = *(v116 + 224);
            v132 = *(v116 + 240);
            v133 = *(v116 + 80);
            v134 = *(v116 + 112);
            v366 = *v116;
            v367 = v124;
            v368 = v125;
            v369 = v128;
            v374 = v120;
            v375 = v121;
            v376 = v122;
            v377 = v123;
            v382 = v126;
            v383 = v127;
            v384 = v129;
            v385 = v131;
            v118 = 256;
            v390 = v133;
            v391 = v134;
            v392 = v130;
            v393 = v132;
            v96 = v51 + 1;
          }

          else
          {
            v96 = v51 + 1;
            if (v117 == 7)
            {
              v119 = vld1q_dup_f64(v116);
              v366 = v119;
              v367 = v119;
              v368 = v119;
              v369 = v119;
              v374 = v119;
              v375 = v119;
              v376 = v119;
              v377 = v119;
              v382 = v119;
              v383 = v119;
              v384 = v119;
              v385 = v119;
              v390 = v119;
              v391 = v119;
              v118 = 8;
              v392 = v119;
              v393 = v119;
            }

            else if (v89[1])
            {
              v135 = v89;
              v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v366, 128, v116, v117);
              v89 = v135;
            }

            else
            {
              v118 = 0;
              v368 = 0u;
              v369 = 0u;
              v366 = 0u;
              v367 = 0u;
              v374 = 0u;
              v375 = 0u;
              v376 = 0u;
              v377 = 0u;
              v382 = 0u;
              v383 = 0u;
              v384 = 0u;
              v385 = 0u;
              v390 = 0u;
              v391 = 0u;
              v392 = 0u;
              v393 = 0u;
            }
          }

          v136 = v116 + v118;
          v137 = v89[2];
          if (v137 == 255)
          {
            v140 = *(v136 + 16);
            v141 = *(v136 + 48);
            v142 = *(v136 + 144);
            v143 = *(v136 + 176);
            v144 = *(v136 + 32);
            v145 = *(v136 + 128);
            v146 = *(v136 + 64);
            v147 = *(v136 + 96);
            v148 = *(v136 + 160);
            v149 = *(v136 + 192);
            v150 = *(v136 + 208);
            v151 = *(v136 + 224);
            v152 = *(v136 + 240);
            v153 = *(v136 + 80);
            v154 = *(v136 + 112);
            v338 = *v136;
            v339 = v144;
            v340 = v145;
            v341 = v148;
            v346 = v140;
            v347 = v141;
            v348 = v142;
            v349 = v143;
            v354 = v146;
            v355 = v147;
            v356 = v149;
            v357 = v151;
            v138 = 256;
            v362 = v153;
            v363 = v154;
            v364 = v150;
            v365 = v152;
          }

          else if (v137 == 7)
          {
            v139 = vld1q_dup_f64(v136);
            v338 = v139;
            v339 = v139;
            v340 = v139;
            v341 = v139;
            v346 = v139;
            v347 = v139;
            v348 = v139;
            v349 = v139;
            v354 = v139;
            v355 = v139;
            v356 = v139;
            v357 = v139;
            v362 = v139;
            v363 = v139;
            v138 = 8;
            v364 = v139;
            v365 = v139;
          }

          else if (v89[2])
          {
            v155 = v89;
            v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v338, 128, v136, v137);
            v89 = v155;
          }

          else
          {
            v138 = 0;
            v340 = 0u;
            v341 = 0u;
            v338 = 0u;
            v339 = 0u;
            v346 = 0u;
            v347 = 0u;
            v348 = 0u;
            v349 = 0u;
            v354 = 0u;
            v355 = 0u;
            v356 = 0u;
            v357 = 0u;
            v362 = 0u;
            v363 = 0u;
            v364 = 0u;
            v365 = 0u;
          }

          v156 = v136 + v138;
          v157 = v89[3];
          if (v157 == 255)
          {
            v160 = *(v156 + 16);
            v161 = *(v156 + 48);
            v162 = *(v156 + 144);
            v163 = *(v156 + 176);
            v164 = *(v156 + 32);
            v165 = *(v156 + 128);
            v166 = *(v156 + 64);
            v167 = *(v156 + 96);
            v168 = *(v156 + 160);
            v169 = *(v156 + 192);
            v170 = *(v156 + 208);
            v171 = *(v156 + 224);
            v172 = *(v156 + 240);
            v173 = *(v156 + 80);
            v174 = *(v156 + 112);
            v370 = *v156;
            v371 = v164;
            v372 = v165;
            v373 = v168;
            v378 = v160;
            v379 = v161;
            v380 = v162;
            v381 = v163;
            v386 = v166;
            v387 = v167;
            v388 = v169;
            v389 = v171;
            v158 = 256;
            v394 = v173;
            v395 = v174;
            v396 = v170;
            v397 = v172;
          }

          else if (v157 == 7)
          {
            v159 = vld1q_dup_f64(v156);
            v370 = v159;
            v371 = v159;
            v372 = v159;
            v373 = v159;
            v378 = v159;
            v379 = v159;
            v380 = v159;
            v381 = v159;
            v386 = v159;
            v387 = v159;
            v388 = v159;
            v389 = v159;
            v394 = v159;
            v395 = v159;
            v158 = 8;
            v396 = v159;
            v397 = v159;
          }

          else if (v89[3])
          {
            v175 = v89;
            v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v370, 128, v156, v157);
            v89 = v175;
          }

          else
          {
            v158 = 0;
            v372 = 0u;
            v373 = 0u;
            v370 = 0u;
            v371 = 0u;
            v378 = 0u;
            v379 = 0u;
            v380 = 0u;
            v381 = 0u;
            v386 = 0u;
            v387 = 0u;
            v388 = 0u;
            v389 = 0u;
            v394 = 0u;
            v395 = 0u;
            v396 = 0u;
            v397 = 0u;
          }

          v176 = v156 + v158;
          v177 = v89[4];
          if (v177 == 255)
          {
            v180 = *(v176 + 16);
            v181 = *(v176 + 48);
            v182 = *(v176 + 144);
            v183 = *(v176 + 176);
            v184 = *(v176 + 32);
            v185 = *(v176 + 128);
            v186 = *(v176 + 64);
            v187 = *(v176 + 96);
            v188 = *(v176 + 160);
            v189 = *(v176 + 192);
            v190 = *(v176 + 208);
            v191 = *(v176 + 224);
            v192 = *(v176 + 240);
            v193 = *(v176 + 80);
            v194 = *(v176 + 112);
            v398 = *v176;
            v399 = v184;
            v400 = v185;
            v401 = v188;
            v406 = v180;
            v407 = v181;
            v408 = v182;
            v409 = v183;
            v414 = v186;
            v415 = v187;
            v416 = v189;
            v417 = v191;
            v178 = 256;
            v422 = v193;
            v423 = v194;
            v424 = v190;
            v425 = v192;
          }

          else if (v177 == 7)
          {
            v179 = vld1q_dup_f64(v176);
            v398 = v179;
            v399 = v179;
            v400 = v179;
            v401 = v179;
            v406 = v179;
            v407 = v179;
            v408 = v179;
            v409 = v179;
            v414 = v179;
            v415 = v179;
            v416 = v179;
            v417 = v179;
            v422 = v179;
            v423 = v179;
            v424 = v179;
            v178 = 8;
            v425 = v179;
          }

          else if (v89[4])
          {
            v195 = v89;
            v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v398, 128, v176, v177);
            v89 = v195;
          }

          else
          {
            v178 = 0;
            v400 = 0u;
            v401 = 0u;
            v398 = 0u;
            v399 = 0u;
            v406 = 0u;
            v407 = 0u;
            v408 = 0u;
            v409 = 0u;
            v414 = 0u;
            v415 = 0u;
            v416 = 0u;
            v417 = 0u;
            v422 = 0u;
            v423 = 0u;
            v424 = 0u;
            v425 = 0u;
          }

          v196 = v176 + v178;
          v197 = v89[5];
          if (v197 == 255)
          {
            v200 = *(v196 + 16);
            v201 = *(v196 + 48);
            v202 = *(v196 + 144);
            v203 = *(v196 + 176);
            v204 = *(v196 + 32);
            v205 = *(v196 + 128);
            v206 = *(v196 + 64);
            v207 = *(v196 + 96);
            v208 = *(v196 + 160);
            v209 = *(v196 + 192);
            v210 = *(v196 + 208);
            v211 = *(v196 + 224);
            v212 = *(v196 + 240);
            v213 = *(v196 + 80);
            v214 = *(v196 + 112);
            v430 = *v196;
            v431 = v204;
            v432 = v205;
            v433 = v208;
            v438 = v200;
            v439 = v201;
            v440 = v202;
            v441 = v203;
            v446 = v206;
            v447 = v207;
            v448 = v209;
            v449 = v211;
            v198 = 256;
            v454 = v213;
            v455 = v214;
            v456 = v210;
            v457 = v212;
          }

          else if (v197 == 7)
          {
            v199 = vld1q_dup_f64(v196);
            v430 = v199;
            v431 = v199;
            v432 = v199;
            v433 = v199;
            v438 = v199;
            v439 = v199;
            v440 = v199;
            v441 = v199;
            v446 = v199;
            v447 = v199;
            v448 = v199;
            v449 = v199;
            v454 = v199;
            v455 = v199;
            v456 = v199;
            v198 = 8;
            v457 = v199;
          }

          else if (v89[5])
          {
            v215 = v89;
            v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v430, 128, v196, v197);
            v89 = v215;
          }

          else
          {
            v198 = 0;
            v432 = 0u;
            v433 = 0u;
            v430 = 0u;
            v431 = 0u;
            v438 = 0u;
            v439 = 0u;
            v440 = 0u;
            v441 = 0u;
            v446 = 0u;
            v447 = 0u;
            v448 = 0u;
            v449 = 0u;
            v454 = 0u;
            v455 = 0u;
            v456 = 0u;
            v457 = 0u;
          }

          v216 = v196 + v198;
          v217 = v89[6];
          if (v217 == 255)
          {
            v220 = *(v216 + 16);
            v221 = *(v216 + 48);
            v222 = *(v216 + 144);
            v223 = *(v216 + 176);
            v224 = *(v216 + 32);
            v225 = *(v216 + 128);
            v226 = *(v216 + 64);
            v227 = *(v216 + 96);
            v228 = *(v216 + 160);
            v229 = *(v216 + 192);
            v230 = *(v216 + 208);
            v231 = *(v216 + 224);
            v232 = *(v216 + 240);
            v233 = *(v216 + 80);
            v234 = *(v216 + 112);
            v402 = *v216;
            v403 = v224;
            v404 = v225;
            v405 = v228;
            v410 = v220;
            v411 = v221;
            v412 = v222;
            v413 = v223;
            v418 = v226;
            v419 = v227;
            v420 = v229;
            v421 = v231;
            v218 = 256;
            v426 = v233;
            v427 = v234;
            v428 = v230;
            v429 = v232;
          }

          else if (v217 == 7)
          {
            v219 = vld1q_dup_f64(v216);
            v402 = v219;
            v403 = v219;
            v404 = v219;
            v405 = v219;
            v410 = v219;
            v411 = v219;
            v412 = v219;
            v413 = v219;
            v418 = v219;
            v419 = v219;
            v420 = v219;
            v421 = v219;
            v426 = v219;
            v427 = v219;
            v428 = v219;
            v218 = 8;
            v429 = v219;
          }

          else if (v89[6])
          {
            v235 = v89;
            v218 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v402, 128, v216, v217);
            v89 = v235;
          }

          else
          {
            v218 = 0;
            v404 = 0u;
            v405 = 0u;
            v402 = 0u;
            v403 = 0u;
            v410 = 0u;
            v411 = 0u;
            v412 = 0u;
            v413 = 0u;
            v418 = 0u;
            v419 = 0u;
            v420 = 0u;
            v421 = 0u;
            v426 = 0u;
            v427 = 0u;
            v428 = 0u;
            v429 = 0u;
          }

          v236 = v216 + v218;
          v237 = v89[7];
          if (v237 == 255)
          {
            v241 = *(v236 + 16);
            v242 = *(v236 + 48);
            v243 = *(v236 + 144);
            v244 = *(v236 + 176);
            v245 = *(v236 + 32);
            v246 = *(v236 + 128);
            v247 = *(v236 + 160);
            v248 = *(v236 + 64);
            v249 = *(v236 + 96);
            v250 = *(v236 + 192);
            v251 = *(v236 + 224);
            v252 = *(v236 + 240);
            v253 = *(v236 + 80);
            v254 = *(v236 + 112);
            v255 = *(v236 + 208);
            v434 = *v236;
            v435 = v245;
            v436 = v246;
            v437 = v247;
            v442 = v241;
            v443 = v242;
            v444 = v243;
            v445 = v244;
            v450 = v248;
            v451 = v249;
            v452 = v250;
            v453 = v251;
            v238 = v305;
            v239 = v306;
            v458 = v253;
            v459 = v254;
            v460 = v255;
            v461 = v252;
            if (!v305)
            {
              goto LABEL_201;
            }
          }

          else if (v237 == 7)
          {
            v240 = vld1q_dup_f64(v236);
            v434 = v240;
            v435 = v240;
            v436 = v240;
            v437 = v240;
            v442 = v240;
            v443 = v240;
            v444 = v240;
            v445 = v240;
            v450 = v240;
            v451 = v240;
            v452 = v240;
            v453 = v240;
            v458 = v240;
            v459 = v240;
            v460 = v240;
            v238 = v305;
            v239 = v306;
            v461 = v240;
            if (!v305)
            {
              goto LABEL_201;
            }
          }

          else if (v89[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v434, 128, v236, v237);
            v239 = v327;
            v95 = v328;
            v238 = v329;
            if (!v329)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v436 = 0u;
            v437 = 0u;
            v434 = 0u;
            v435 = 0u;
            v442 = 0u;
            v443 = 0u;
            v444 = 0u;
            v445 = 0u;
            v450 = 0u;
            v451 = 0u;
            v452 = 0u;
            v453 = 0u;
            v458 = 0u;
            v459 = 0u;
            v238 = v305;
            v239 = v306;
            v460 = 0u;
            v461 = 0u;
            if (!v305)
            {
              goto LABEL_201;
            }
          }

          v256 = v330;
          if (v330)
          {
            v257 = 0;
            v258 = v239;
            v259 = v239 << 7;
            v260 = 8 * v95;
            v261 = &v334 + v259 + v260;
            v262 = v325;
            v263 = v326;
            v264 = 8 * v330;
            v265 = &__dst[128 * v238 + 1920 + 128 * v258 + v264 + v260];
            if (8 * v330)
            {
              v266 = (8 * v330 - 1) >> 32 == 0;
            }

            else
            {
              v266 = 0;
            }

            v267 = !v266;
            v269 = v261 < v325 + 8 * v330 + v326 * (v238 - 1) && v325 < v265;
            v270 = v264 & 0x1FFFFFFE0;
            v271 = v267 | (v326 < 0) | v269;
            v272 = &v335 + v259 + v260;
            v273 = v325 + 1;
            v274 = v261;
            v275 = v325;
            do
            {
              v276 = v262 + v257 * v263;
              v277 = &v261[128 * v257];
              if (v271)
              {
                v278 = 0;
              }

              else
              {
                if (v256 < 4)
                {
                  v282 = 0;
LABEL_197:
                  v287 = -8 * v256 + v282;
                  v288 = (v275 + v282);
                  v289 = &v274[v282];
                  do
                  {
                    v290 = *v288++;
                    *v289 = v290;
                    v289 += 8;
                    v287 += 8;
                  }

                  while (v287);
                  goto LABEL_185;
                }

                v283 = v273;
                v284 = v272;
                v285 = v264 & 0x1FFFFFFE0;
                do
                {
                  v286 = *v283;
                  *(v284 - 1) = *(v283 - 1);
                  *v284 = v286;
                  v284 += 2;
                  v283 += 2;
                  v285 -= 32;
                }

                while (v285);
                if (v264 == v270)
                {
                  goto LABEL_185;
                }

                v282 = v264 & 0x1FFFFFFE0;
                if ((v256 & 3) != 0)
                {
                  goto LABEL_197;
                }

                v276 += v270;
                v277 += v270;
                v278 = v264 & 0xFFFFFFE0;
              }

              v279 = v278 + 1;
              do
              {
                v280 = *v276++;
                *v277++ = v280;
              }

              while (v264 > v279++);
LABEL_185:
              ++v257;
              v272 += 128;
              v273 = (v273 + v263);
              v275 = (v275 + v263);
              v274 += 128;
            }

            while (v257 != v238);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v334, 128, v323, v324, v331, v332);
LABEL_202:
          if (v321)
          {
            memcpy(v320, v91, 0x800uLL);
          }

          v29 = v51 == v309 >> 4;
          v51 = v96;
          result = v318;
        }

        while (!v29);
        v29 = v26++ == v296;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v297 = v21;
  v298 = v22;
  v286 = v23;
  v24 = v12;
  v448 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v303 = v14;
  v25 = v14 >> 4;
  v285 = v14 + a10 - 1;
  v287 = v285 >> 4;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v304 = v24;
  if (*(v24 + 168))
  {
    v28 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v28 = 0;
  }

  v29 = (v28 & 0xD00) == 0 || v28 == 768;
  v30 = v28 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v307 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v296 = result;
  if (v25 <= v287)
  {
    v295 = v16 + a9 - 1;
    v284 = v16 >> 4;
    if (v16 >> 4 <= v295 >> 4)
    {
      result = v24;
      v305 = (v20 - 1) >> 4;
      v281 = v20 - 1;
      v288 = (v20 - 1) & 0xF;
      v282 = (v18 - 1) & 0xF;
      v283 = (v18 - 1) >> 4;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v291 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v290 = v35;
      v280 = 8 * v27 * v26;
      v294 = v16;
      do
      {
        v36 = (16 * v25) | 0xF;
        if (16 * v25 <= v303)
        {
          v37 = v303;
        }

        else
        {
          v37 = 16 * v25;
        }

        if (v285 < v36)
        {
          v36 = v285;
        }

        v302 = 16 * v25;
        v293 = v37 - 16 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v282;
        v292 = v39;
        v41 = v39 != 16;
        v42 = v284;
        v43 = v282 + 1;
        if (v25 != v283)
        {
          v43 = 16;
          v40 = v41;
        }

        v289 = v40;
        v300 = v286 + (v37 - v303) * a11;
        v301 = v43;
        v299 = v43;
        do
        {
          v44 = 16 * v42;
          v45 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= v16)
          {
            v46 = v16;
          }

          else
          {
            v46 = 16 * v42;
          }

          if (v295 < v45)
          {
            v45 = v295;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v305)
          {
            v49 = v288 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (v302 >= v303 && v44 >= v16)
          {
            v51 = v47 != v288;
            if (v42 != v305)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v289;
          }

          if (v296)
          {
            v72 = 0;
            v73 = v280 >> (*(result + 57) != 0);
            v74 = 1;
            if (v73 <= 63)
            {
              if (v73 > 15)
              {
                if (v73 == 16)
                {
                  v74 = 0;
                  v75 = 0;
                  v76 = 64;
                  v72 = 128;
                }

                else
                {
                  v75 = 1;
                  v76 = 0;
                  if (v73 == 32)
                  {
                    v74 = 0;
                    v75 = 0;
                    v72 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v73 == 4)
              {
                v74 = 0;
                v75 = 0;
                v76 = 128;
                v72 = 256;
              }

              else
              {
                v75 = 1;
                v76 = 0;
                if (v73 == 8)
                {
                  v74 = 0;
                  v75 = 0;
                  v72 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v73 <= 255)
            {
              if (v73 == 64)
              {
                v74 = 0;
                v75 = 0;
                v76 = 32;
                v72 = 64;
              }

              else
              {
                v75 = 1;
                v76 = 0;
                if (v73 == 128)
                {
                  v74 = 0;
                  v75 = 0;
                  v72 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v73 == 256)
            {
              v74 = 0;
              v76 = 16;
              v75 = 1;
              v72 = 32;
            }

            else if (v73 == 512)
            {
              v72 = 16;
              v75 = 1;
              v76 = 16;
            }

            else
            {
              v75 = 1;
              v76 = 0;
              if (v73 == 1024)
              {
                v76 = 8;
                v72 = 16;
              }
            }

            v270 = (v72 >> 4) - 1;
            if (v74)
            {
              v271 = 0;
              if (v75)
              {
                goto LABEL_206;
              }

LABEL_195:
              v272 = 32 - __clz(~(-1 << -__clz(((v76 + 15) >> 4) - 1)));
              if (v272 | v271)
              {
                goto LABEL_196;
              }

LABEL_207:
              v279 = 0;
            }

            else
            {
              v271 = 32 - __clz(~(-1 << -__clz(v270)));
              if ((v75 & 1) == 0)
              {
                goto LABEL_195;
              }

LABEL_206:
              v272 = 0;
              if (!v271)
              {
                goto LABEL_207;
              }

LABEL_196:
              v273 = 0;
              v274 = 0;
              v275 = v42 & v270;
              v276 = v271 != 0;
              v277 = v272 != 0;
              v278 = 1;
              do
              {
                --v271;
                if (v276)
                {
                  v274 |= (v278 & v275) << v273++;
                }

                else
                {
                  v271 = 0;
                }

                --v272;
                if (v277)
                {
                  v274 |= (v278 & v25 & ((v76 >> 4) - 1)) << v273++;
                }

                else
                {
                  v272 = 0;
                }

                v278 *= 2;
                --v273;
                v277 = v272 != 0;
                v276 = v271 != 0;
              }

              while (v272 | v271);
              v279 = v274 << 11;
              result = v304;
            }

            v59 = v279 + ((v44 / v72 + v302 / v76 * ((v72 + v281) / v72)) << 14);
            goto LABEL_52;
          }

          if (v291)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v290.i8[4];
            v56 = v290.i8[0];
            v57 = v291.i32[1];
            v58 = v291.i32[0];
            do
            {
              --v57;
              if (v55)
              {
                v53 |= (v54 & v42) << v52++;
              }

              else
              {
                v57 = 0;
              }

              --v58;
              if (v56)
              {
                v53 |= (v54 & v25) << v52++;
              }

              else
              {
                v58 = 0;
              }

              v54 *= 2;
              --v52;
              v56 = v58 != 0;
              v55 = v57 != 0;
            }

            while (v58 | v57);
            v59 = v53 << 11;
          }

          else
          {
            v59 = 0;
          }

LABEL_52:
          v60 = *(result + 128) >> (*(result + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 15;
          if (v61 < 0x20)
          {
            v62 = 0;
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 4) - 1)));
          }

          v63 = *(result + 132) >> (*(result + 144) + a12);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v63 + 15;
          if (v64 < 0x20)
          {
            v65 = 0;
            if (!v62)
            {
LABEL_77:
              v71 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 4) - 1)));
            if (!(v65 | v62))
            {
              goto LABEL_77;
            }
          }

          v66 = 0;
          v67 = 0;
          v68 = v62 != 0;
          v69 = v65 != 0;
          v70 = 1;
          do
          {
            --v62;
            if (v68)
            {
              v67 |= (v70 & v42) << v66++;
            }

            else
            {
              v62 = 0;
            }

            --v65;
            if (v69)
            {
              v67 |= (v70 & v25) << v66++;
            }

            else
            {
              v65 = 0;
            }

            v70 *= 2;
            --v66;
            v69 = v65 != 0;
            v68 = v62 != 0;
          }

          while (v65 | v62);
          v71 = 8 * v67;
LABEL_78:
          v77 = (v298 + v71);
          v78 = v300 + 8 * (v46 - v16);
          v306 = (v297 + v59);
          if (v307)
          {
            v79 = __dst;
            if (!(v50 & 1 | (v49 < 0x10u) | (v299 < 0x10)))
            {
              goto LABEL_84;
            }

            v80 = (v298 + v71);
            v81 = v48;
            memcpy(__dst, (v297 + v59), sizeof(__dst));
            v44 = 16 * v42;
            v48 = v81;
            v77 = v80;
            result = v304;
          }

          else
          {
            v79 = (v297 + v59);
            if (!(v50 & 1 | (v49 < 0x10u) | (v299 < 0x10)))
            {
LABEL_84:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v78, a11, v79, v77, v49, v301);
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v82 = v46 - v44;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v309 = v79;
          v317 = v49;
          v318 = v301;
          v313 = v293;
          v314 = v82;
          v310 = v77;
          v311 = v78;
          v312 = a11;
          v315 = v292;
          v316 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_85:
            v16 = v294;
            goto LABEL_176;
          }

          v83 = *v77;
          v16 = v294;
          if (v83 == 255)
          {
            v86 = *(v79 + 1);
            v87 = *(v79 + 3);
            v88 = *(v79 + 9);
            v89 = *(v79 + 11);
            v90 = *(v79 + 2);
            v91 = *(v79 + 8);
            v92 = *(v79 + 4);
            v93 = *(v79 + 6);
            v94 = *(v79 + 10);
            v95 = *(v79 + 12);
            v96 = *(v79 + 13);
            v97 = *(v79 + 14);
            v98 = *(v79 + 15);
            v99 = *(v79 + 5);
            v100 = *(v79 + 7);
            v320 = *v79;
            v321 = v90;
            v322 = v91;
            v323 = v94;
            v328 = v86;
            v329 = v87;
            v330 = v88;
            v331 = v89;
            v336 = v92;
            v337 = v93;
            v338 = v95;
            v339 = v97;
            v84 = 256;
            v344 = v99;
            v345 = v100;
            v346 = v96;
            v347 = v98;
          }

          else if (v83 == 7)
          {
            v85 = vld1q_dup_f64(v79);
            v320 = v85;
            v321 = v85;
            v322 = v85;
            v323 = v85;
            v328 = v85;
            v329 = v85;
            v330 = v85;
            v331 = v85;
            v336 = v85;
            v337 = v85;
            v338 = v85;
            v339 = v85;
            v344 = v85;
            v345 = v85;
            v84 = 8;
            v346 = v85;
            v347 = v85;
          }

          else if (*v77)
          {
            v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v320, 128, v79, v83);
          }

          else
          {
            v84 = 0;
            v323 = 0u;
            v322 = 0u;
            v321 = 0u;
            v320 = 0u;
            v328 = 0u;
            v329 = 0u;
            v330 = 0u;
            v331 = 0u;
            v336 = 0u;
            v337 = 0u;
            v338 = 0u;
            v339 = 0u;
            v344 = 0u;
            v345 = 0u;
            v346 = 0u;
            v347 = 0u;
          }

          v101 = &v79[v84];
          v102 = v77[1];
          if (v102 == 255)
          {
            v105 = *(v101 + 16);
            v106 = *(v101 + 48);
            v107 = *(v101 + 144);
            v108 = *(v101 + 176);
            v109 = *(v101 + 32);
            v110 = *(v101 + 128);
            v111 = *(v101 + 64);
            v112 = *(v101 + 96);
            v113 = *(v101 + 160);
            v114 = *(v101 + 192);
            v115 = *(v101 + 208);
            v116 = *(v101 + 224);
            v117 = *(v101 + 240);
            v118 = *(v101 + 80);
            v119 = *(v101 + 112);
            v352 = *v101;
            v353 = v109;
            v354 = v110;
            v355 = v113;
            v360 = v105;
            v361 = v106;
            v362 = v107;
            v363 = v108;
            v368 = v111;
            v369 = v112;
            v370 = v114;
            v371 = v116;
            v103 = 256;
            v376 = v118;
            v377 = v119;
            v378 = v115;
            v379 = v117;
          }

          else if (v102 == 7)
          {
            v104 = vld1q_dup_f64(v101);
            v352 = v104;
            v353 = v104;
            v354 = v104;
            v355 = v104;
            v360 = v104;
            v361 = v104;
            v362 = v104;
            v363 = v104;
            v368 = v104;
            v369 = v104;
            v370 = v104;
            v371 = v104;
            v376 = v104;
            v377 = v104;
            v103 = 8;
            v378 = v104;
            v379 = v104;
          }

          else if (v77[1])
          {
            v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v352, 128, v101, v102);
          }

          else
          {
            v103 = 0;
            v354 = 0u;
            v355 = 0u;
            v352 = 0u;
            v353 = 0u;
            v360 = 0u;
            v361 = 0u;
            v362 = 0u;
            v363 = 0u;
            v368 = 0u;
            v369 = 0u;
            v370 = 0u;
            v371 = 0u;
            v376 = 0u;
            v377 = 0u;
            v378 = 0u;
            v379 = 0u;
          }

          v120 = v101 + v103;
          v121 = v77[2];
          if (v121 == 255)
          {
            v124 = *(v120 + 16);
            v125 = *(v120 + 48);
            v126 = *(v120 + 144);
            v127 = *(v120 + 176);
            v128 = *(v120 + 32);
            v129 = *(v120 + 128);
            v130 = *(v120 + 64);
            v131 = *(v120 + 96);
            v132 = *(v120 + 160);
            v133 = *(v120 + 192);
            v134 = *(v120 + 208);
            v135 = *(v120 + 224);
            v136 = *(v120 + 240);
            v137 = *(v120 + 80);
            v138 = *(v120 + 112);
            v324 = *v120;
            v325 = v128;
            v326 = v129;
            v327 = v132;
            v332 = v124;
            v333 = v125;
            v334 = v126;
            v335 = v127;
            v340 = v130;
            v341 = v131;
            v342 = v133;
            v343 = v135;
            v122 = 256;
            v348 = v137;
            v349 = v138;
            v350 = v134;
            v351 = v136;
          }

          else if (v121 == 7)
          {
            v123 = vld1q_dup_f64(v120);
            v324 = v123;
            v325 = v123;
            v326 = v123;
            v327 = v123;
            v332 = v123;
            v333 = v123;
            v334 = v123;
            v335 = v123;
            v340 = v123;
            v341 = v123;
            v342 = v123;
            v343 = v123;
            v348 = v123;
            v349 = v123;
            v122 = 8;
            v350 = v123;
            v351 = v123;
          }

          else if (v77[2])
          {
            v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v324, 128, v120, v121);
          }

          else
          {
            v122 = 0;
            v326 = 0u;
            v327 = 0u;
            v324 = 0u;
            v325 = 0u;
            v332 = 0u;
            v333 = 0u;
            v334 = 0u;
            v335 = 0u;
            v340 = 0u;
            v341 = 0u;
            v342 = 0u;
            v343 = 0u;
            v348 = 0u;
            v349 = 0u;
            v350 = 0u;
            v351 = 0u;
          }

          v139 = v120 + v122;
          v140 = v77[3];
          if (v140 == 255)
          {
            v143 = *(v139 + 16);
            v144 = *(v139 + 48);
            v145 = *(v139 + 144);
            v146 = *(v139 + 176);
            v147 = *(v139 + 32);
            v148 = *(v139 + 128);
            v149 = *(v139 + 64);
            v150 = *(v139 + 96);
            v151 = *(v139 + 160);
            v152 = *(v139 + 192);
            v153 = *(v139 + 208);
            v154 = *(v139 + 224);
            v155 = *(v139 + 240);
            v156 = *(v139 + 80);
            v157 = *(v139 + 112);
            v356 = *v139;
            v357 = v147;
            v358 = v148;
            v359 = v151;
            v364 = v143;
            v365 = v144;
            v366 = v145;
            v367 = v146;
            v372 = v149;
            v373 = v150;
            v374 = v152;
            v375 = v154;
            v141 = 256;
            v380 = v156;
            v381 = v157;
            v382 = v153;
            v383 = v155;
          }

          else if (v140 == 7)
          {
            v142 = vld1q_dup_f64(v139);
            v356 = v142;
            v357 = v142;
            v358 = v142;
            v359 = v142;
            v364 = v142;
            v365 = v142;
            v366 = v142;
            v367 = v142;
            v372 = v142;
            v373 = v142;
            v374 = v142;
            v375 = v142;
            v380 = v142;
            v381 = v142;
            v141 = 8;
            v382 = v142;
            v383 = v142;
          }

          else if (v77[3])
          {
            v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v356, 128, v139, v140);
          }

          else
          {
            v141 = 0;
            v358 = 0u;
            v359 = 0u;
            v356 = 0u;
            v357 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
            v367 = 0u;
            v372 = 0u;
            v373 = 0u;
            v374 = 0u;
            v375 = 0u;
            v380 = 0u;
            v381 = 0u;
            v382 = 0u;
            v383 = 0u;
          }

          v158 = v139 + v141;
          v159 = v77[4];
          if (v159 == 255)
          {
            v162 = *(v158 + 16);
            v163 = *(v158 + 48);
            v164 = *(v158 + 144);
            v165 = *(v158 + 176);
            v166 = *(v158 + 32);
            v167 = *(v158 + 128);
            v168 = *(v158 + 64);
            v169 = *(v158 + 96);
            v170 = *(v158 + 160);
            v171 = *(v158 + 192);
            v172 = *(v158 + 208);
            v173 = *(v158 + 224);
            v174 = *(v158 + 240);
            v175 = *(v158 + 80);
            v176 = *(v158 + 112);
            v384 = *v158;
            v385 = v166;
            v386 = v167;
            v387 = v170;
            v392 = v162;
            v393 = v163;
            v394 = v164;
            v395 = v165;
            v400 = v168;
            v401 = v169;
            v402 = v171;
            v403 = v173;
            v160 = 256;
            v408 = v175;
            v409 = v176;
            v410 = v172;
            v411 = v174;
          }

          else if (v159 == 7)
          {
            v161 = vld1q_dup_f64(v158);
            v384 = v161;
            v385 = v161;
            v386 = v161;
            v387 = v161;
            v392 = v161;
            v393 = v161;
            v394 = v161;
            v395 = v161;
            v400 = v161;
            v401 = v161;
            v402 = v161;
            v403 = v161;
            v408 = v161;
            v409 = v161;
            v410 = v161;
            v160 = 8;
            v411 = v161;
          }

          else if (v77[4])
          {
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v384, 128, v158, v159);
          }

          else
          {
            v160 = 0;
            v386 = 0u;
            v387 = 0u;
            v384 = 0u;
            v385 = 0u;
            v392 = 0u;
            v393 = 0u;
            v394 = 0u;
            v395 = 0u;
            v400 = 0u;
            v401 = 0u;
            v402 = 0u;
            v403 = 0u;
            v408 = 0u;
            v409 = 0u;
            v410 = 0u;
            v411 = 0u;
          }

          v177 = v158 + v160;
          v178 = v77[5];
          if (v178 == 255)
          {
            v181 = *(v177 + 16);
            v182 = *(v177 + 48);
            v183 = *(v177 + 144);
            v184 = *(v177 + 176);
            v185 = *(v177 + 32);
            v186 = *(v177 + 128);
            v187 = *(v177 + 64);
            v188 = *(v177 + 96);
            v189 = *(v177 + 160);
            v190 = *(v177 + 192);
            v191 = *(v177 + 208);
            v192 = *(v177 + 224);
            v193 = *(v177 + 240);
            v194 = *(v177 + 80);
            v195 = *(v177 + 112);
            v416 = *v177;
            v417 = v185;
            v418 = v186;
            v419 = v189;
            v424 = v181;
            v425 = v182;
            v426 = v183;
            v427 = v184;
            v432 = v187;
            v433 = v188;
            v434 = v190;
            v435 = v192;
            v179 = 256;
            v440 = v194;
            v441 = v195;
            v442 = v191;
            v443 = v193;
          }

          else if (v178 == 7)
          {
            v180 = vld1q_dup_f64(v177);
            v416 = v180;
            v417 = v180;
            v418 = v180;
            v419 = v180;
            v424 = v180;
            v425 = v180;
            v426 = v180;
            v427 = v180;
            v432 = v180;
            v433 = v180;
            v434 = v180;
            v435 = v180;
            v440 = v180;
            v441 = v180;
            v442 = v180;
            v179 = 8;
            v443 = v180;
          }

          else if (v77[5])
          {
            v179 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v416, 128, v177, v178);
          }

          else
          {
            v179 = 0;
            v418 = 0u;
            v419 = 0u;
            v416 = 0u;
            v417 = 0u;
            v424 = 0u;
            v425 = 0u;
            v426 = 0u;
            v427 = 0u;
            v432 = 0u;
            v433 = 0u;
            v434 = 0u;
            v435 = 0u;
            v440 = 0u;
            v441 = 0u;
            v442 = 0u;
            v443 = 0u;
          }

          v196 = v177 + v179;
          v197 = v77[6];
          if (v197 == 255)
          {
            v200 = *(v196 + 16);
            v201 = *(v196 + 48);
            v202 = *(v196 + 144);
            v203 = *(v196 + 176);
            v204 = *(v196 + 32);
            v205 = *(v196 + 128);
            v206 = *(v196 + 64);
            v207 = *(v196 + 96);
            v208 = *(v196 + 160);
            v209 = *(v196 + 192);
            v210 = *(v196 + 208);
            v211 = *(v196 + 224);
            v212 = *(v196 + 240);
            v213 = *(v196 + 80);
            v214 = *(v196 + 112);
            v388 = *v196;
            v389 = v204;
            v390 = v205;
            v391 = v208;
            v396 = v200;
            v397 = v201;
            v398 = v202;
            v399 = v203;
            v404 = v206;
            v405 = v207;
            v406 = v209;
            v407 = v211;
            v198 = 256;
            v412 = v213;
            v413 = v214;
            v414 = v210;
            v415 = v212;
          }

          else if (v197 == 7)
          {
            v199 = vld1q_dup_f64(v196);
            v388 = v199;
            v389 = v199;
            v390 = v199;
            v391 = v199;
            v396 = v199;
            v397 = v199;
            v398 = v199;
            v399 = v199;
            v404 = v199;
            v405 = v199;
            v406 = v199;
            v407 = v199;
            v412 = v199;
            v413 = v199;
            v414 = v199;
            v198 = 8;
            v415 = v199;
          }

          else if (v77[6])
          {
            v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v388, 128, v196, v197);
          }

          else
          {
            v198 = 0;
            v390 = 0u;
            v391 = 0u;
            v388 = 0u;
            v389 = 0u;
            v396 = 0u;
            v397 = 0u;
            v398 = 0u;
            v399 = 0u;
            v404 = 0u;
            v405 = 0u;
            v406 = 0u;
            v407 = 0u;
            v412 = 0u;
            v413 = 0u;
            v414 = 0u;
            v415 = 0u;
          }

          v215 = v196 + v198;
          v216 = v77[7];
          if (v216 == 255)
          {
            v220 = *(v215 + 16);
            v221 = *(v215 + 48);
            v222 = *(v215 + 144);
            v223 = *(v215 + 176);
            v224 = *(v215 + 32);
            v225 = *(v215 + 128);
            v226 = *(v215 + 160);
            v227 = *(v215 + 64);
            v228 = *(v215 + 96);
            v229 = *(v215 + 192);
            v230 = *(v215 + 224);
            v231 = *(v215 + 240);
            v232 = *(v215 + 80);
            v233 = *(v215 + 112);
            v234 = *(v215 + 208);
            v420 = *v215;
            v421 = v224;
            v422 = v225;
            v423 = v226;
            v428 = v220;
            v429 = v221;
            v430 = v222;
            v431 = v223;
            v436 = v227;
            v437 = v228;
            v438 = v229;
            v439 = v230;
            v217 = v292;
            v218 = v293;
            v444 = v232;
            v445 = v233;
            v446 = v234;
            v447 = v231;
            if (!v292)
            {
              goto LABEL_175;
            }
          }

          else if (v216 == 7)
          {
            v219 = vld1q_dup_f64(v215);
            v420 = v219;
            v421 = v219;
            v422 = v219;
            v423 = v219;
            v428 = v219;
            v429 = v219;
            v430 = v219;
            v431 = v219;
            v436 = v219;
            v437 = v219;
            v438 = v219;
            v439 = v219;
            v444 = v219;
            v445 = v219;
            v446 = v219;
            v217 = v292;
            v218 = v293;
            v447 = v219;
            if (!v292)
            {
              goto LABEL_175;
            }
          }

          else if (v77[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v420, 128, v215, v216);
            v218 = v313;
            v82 = v314;
            v217 = v315;
            if (!v315)
            {
              goto LABEL_175;
            }
          }

          else
          {
            v422 = 0u;
            v423 = 0u;
            v420 = 0u;
            v421 = 0u;
            v428 = 0u;
            v429 = 0u;
            v430 = 0u;
            v431 = 0u;
            v436 = 0u;
            v437 = 0u;
            v438 = 0u;
            v439 = 0u;
            v444 = 0u;
            v445 = 0u;
            v217 = v292;
            v218 = v293;
            v446 = 0u;
            v447 = 0u;
            if (!v292)
            {
              goto LABEL_175;
            }
          }

          v235 = v316;
          if (v316)
          {
            v236 = 0;
            v237 = v218;
            v238 = v218 << 7;
            v239 = 8 * v82;
            v240 = &v320 + v238 + v239;
            v241 = v311;
            v242 = v312;
            v243 = 8 * v316;
            v244 = &__dst[128 * v217 + 1920 + 128 * v237 + v243 + v239];
            if (8 * v316)
            {
              v245 = (8 * v316 - 1) >> 32 == 0;
            }

            else
            {
              v245 = 0;
            }

            v246 = !v245;
            v248 = v240 < v311 + v312 * (v217 - 1) + 8 * v316 && v311 < v244;
            v249 = v243 & 0x1FFFFFFE0;
            v250 = v246 | (v312 < 0) | v248;
            v251 = &v321 + v238 + v239;
            v252 = (v311 + 16);
            v253 = v240;
            v254 = v311;
            do
            {
              v255 = (v241 + v236 * v242);
              v256 = &v240[128 * v236];
              if (v250)
              {
                v257 = 0;
              }

              else
              {
                if (v235 < 4)
                {
                  v261 = 0;
LABEL_171:
                  v266 = -8 * v235 + v261;
                  v267 = (v254 + v261);
                  v268 = &v253[v261];
                  do
                  {
                    v269 = *v267++;
                    *v268 = v269;
                    v268 += 8;
                    v266 += 8;
                  }

                  while (v266);
                  goto LABEL_159;
                }

                v262 = v252;
                v263 = v251;
                v264 = v243 & 0x1FFFFFFE0;
                do
                {
                  v265 = *v262;
                  *(v263 - 1) = *(v262 - 1);
                  *v263 = v265;
                  v263 += 2;
                  v262 += 2;
                  v264 -= 32;
                }

                while (v264);
                if (v243 == v249)
                {
                  goto LABEL_159;
                }

                v261 = v243 & 0x1FFFFFFE0;
                if ((v235 & 3) != 0)
                {
                  goto LABEL_171;
                }

                v255 += v249;
                v256 += v249;
                v257 = v243 & 0xFFFFFFE0;
              }

              v258 = v257 + 1;
              do
              {
                v259 = *v255++;
                *v256++ = v259;
              }

              while (v243 > v258++);
LABEL_159:
              ++v236;
              v251 += 128;
              v252 = (v252 + v242);
              v254 += v242;
              v253 += 128;
            }

            while (v236 != v217);
          }

LABEL_175:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v320, 128, v309, v310, v317, v318);
LABEL_176:
          if (v307)
          {
            memcpy(v306, v79, 0x800uLL);
          }

          v29 = v42++ == v295 >> 4;
          result = v304;
        }

        while (!v29);
        v29 = v25++ == v287;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v297 = v21;
  v298 = v22;
  v286 = v23;
  v24 = v12;
  v448 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v303 = v14;
  v25 = v14 >> 4;
  v285 = v14 + a10 - 1;
  v287 = v285 >> 4;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v304 = v24;
  if (*(v24 + 168))
  {
    v28 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v28 = 0;
  }

  v29 = (v28 & 0xD00) == 0 || v28 == 768;
  v30 = v28 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v307 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v296 = result;
  if (v25 <= v287)
  {
    v295 = v16 + a9 - 1;
    v284 = v16 >> 4;
    if (v16 >> 4 <= v295 >> 4)
    {
      result = v24;
      v305 = (v20 - 1) >> 4;
      v281 = v20 - 1;
      v288 = (v20 - 1) & 0xF;
      v282 = (v18 - 1) & 0xF;
      v283 = (v18 - 1) >> 4;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v291 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v290 = v35;
      v280 = 8 * v27 * v26;
      v294 = v16;
      do
      {
        v36 = (16 * v25) | 0xF;
        if (16 * v25 <= v303)
        {
          v37 = v303;
        }

        else
        {
          v37 = 16 * v25;
        }

        if (v285 < v36)
        {
          v36 = v285;
        }

        v302 = 16 * v25;
        v293 = v37 - 16 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v282;
        v292 = v39;
        v41 = v39 != 16;
        v42 = v284;
        v43 = v282 + 1;
        if (v25 != v283)
        {
          v43 = 16;
          v40 = v41;
        }

        v289 = v40;
        v300 = v286 + (v37 - v303) * a11;
        v301 = v43;
        v299 = v43;
        do
        {
          v44 = 16 * v42;
          v45 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= v16)
          {
            v46 = v16;
          }

          else
          {
            v46 = 16 * v42;
          }

          if (v295 < v45)
          {
            v45 = v295;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v305)
          {
            v49 = v288 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (v302 >= v303 && v44 >= v16)
          {
            v51 = v47 != v288;
            if (v42 != v305)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v289;
          }

          if (v296)
          {
            v72 = 0;
            v73 = v280 >> (*(result + 57) != 0);
            v74 = 1;
            if (v73 <= 63)
            {
              if (v73 > 15)
              {
                if (v73 == 16)
                {
                  v74 = 0;
                  v75 = 0;
                  v76 = 64;
                  v72 = 128;
                }

                else
                {
                  v75 = 1;
                  v76 = 0;
                  if (v73 == 32)
                  {
                    v74 = 0;
                    v75 = 0;
                    v72 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v73 == 4)
              {
                v74 = 0;
                v75 = 0;
                v76 = 128;
                v72 = 256;
              }

              else
              {
                v75 = 1;
                v76 = 0;
                if (v73 == 8)
                {
                  v74 = 0;
                  v75 = 0;
                  v72 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v73 <= 255)
            {
              if (v73 == 64)
              {
                v74 = 0;
                v75 = 0;
                v76 = 32;
                v72 = 64;
              }

              else
              {
                v75 = 1;
                v76 = 0;
                if (v73 == 128)
                {
                  v74 = 0;
                  v75 = 0;
                  v72 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v73 == 256)
            {
              v74 = 0;
              v76 = 16;
              v75 = 1;
              v72 = 32;
            }

            else if (v73 == 512)
            {
              v72 = 16;
              v75 = 1;
              v76 = 16;
            }

            else
            {
              v75 = 1;
              v76 = 0;
              if (v73 == 1024)
              {
                v76 = 8;
                v72 = 16;
              }
            }

            v270 = (v72 >> 4) - 1;
            if (v74)
            {
              v271 = 0;
              if (v75)
              {
                goto LABEL_206;
              }

LABEL_195:
              v272 = 32 - __clz(~(-1 << -__clz(((v76 + 15) >> 4) - 1)));
              if (v272 | v271)
              {
                goto LABEL_196;
              }

LABEL_207:
              v279 = 0;
            }

            else
            {
              v271 = 32 - __clz(~(-1 << -__clz(v270)));
              if ((v75 & 1) == 0)
              {
                goto LABEL_195;
              }

LABEL_206:
              v272 = 0;
              if (!v271)
              {
                goto LABEL_207;
              }

LABEL_196:
              v273 = 0;
              v274 = 0;
              v275 = v42 & v270;
              v276 = v271 != 0;
              v277 = v272 != 0;
              v278 = 1;
              do
              {
                --v271;
                if (v276)
                {
                  v274 |= (v278 & v275) << v273++;
                }

                else
                {
                  v271 = 0;
                }

                --v272;
                if (v277)
                {
                  v274 |= (v278 & v25 & ((v76 >> 4) - 1)) << v273++;
                }

                else
                {
                  v272 = 0;
                }

                v278 *= 2;
                --v273;
                v277 = v272 != 0;
                v276 = v271 != 0;
              }

              while (v272 | v271);
              v279 = v274 << 11;
              result = v304;
            }

            v59 = v279 + ((v44 / v72 + v302 / v76 * ((v72 + v281) / v72)) << 14);
            goto LABEL_52;
          }

          if (v291)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v290.i8[4];
            v56 = v290.i8[0];
            v57 = v291.i32[1];
            v58 = v291.i32[0];
            do
            {
              --v57;
              if (v55)
              {
                v53 |= (v54 & v42) << v52++;
              }

              else
              {
                v57 = 0;
              }

              --v58;
              if (v56)
              {
                v53 |= (v54 & v25) << v52++;
              }

              else
              {
                v58 = 0;
              }

              v54 *= 2;
              --v52;
              v56 = v58 != 0;
              v55 = v57 != 0;
            }

            while (v58 | v57);
            v59 = v53 << 11;
          }

          else
          {
            v59 = 0;
          }

LABEL_52:
          v60 = *(result + 128) >> (*(result + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 15;
          if (v61 < 0x20)
          {
            v62 = 0;
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 4) - 1)));
          }

          v63 = *(result + 132) >> (*(result + 144) + a12);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v63 + 15;
          if (v64 < 0x20)
          {
            v65 = 0;
            if (!v62)
            {
LABEL_77:
              v71 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 4) - 1)));
            if (!(v65 | v62))
            {
              goto LABEL_77;
            }
          }

          v66 = 0;
          v67 = 0;
          v68 = v62 != 0;
          v69 = v65 != 0;
          v70 = 1;
          do
          {
            --v62;
            if (v68)
            {
              v67 |= (v70 & v42) << v66++;
            }

            else
            {
              v62 = 0;
            }

            --v65;
            if (v69)
            {
              v67 |= (v70 & v25) << v66++;
            }

            else
            {
              v65 = 0;
            }

            v70 *= 2;
            --v66;
            v69 = v65 != 0;
            v68 = v62 != 0;
          }

          while (v65 | v62);
          v71 = 8 * v67;
LABEL_78:
          v77 = (v298 + v71);
          v78 = (v300 + 8 * (v46 - v16));
          v306 = (v297 + v59);
          if (v307)
          {
            v79 = __dst;
            if (!(v50 & 1 | (v49 < 0x10u) | (v299 < 0x10)))
            {
              goto LABEL_84;
            }

            v80 = (v298 + v71);
            v81 = v48;
            memcpy(__dst, (v297 + v59), sizeof(__dst));
            v44 = 16 * v42;
            v48 = v81;
            v77 = v80;
            result = v304;
          }

          else
          {
            v79 = (v297 + v59);
            if (!(v50 & 1 | (v49 < 0x10u) | (v299 < 0x10)))
            {
LABEL_84:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v78, a11, v79, v77, v49, v301);
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v82 = v46 - v44;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v309 = v79;
          v317 = v49;
          v318 = v301;
          v313 = v293;
          v314 = v82;
          v310 = v77;
          v311 = v78;
          v312 = a11;
          v315 = v292;
          v316 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_85:
            v16 = v294;
            goto LABEL_176;
          }

          v83 = *v77;
          v16 = v294;
          if (v83 == 255)
          {
            v86 = *(v79 + 1);
            v87 = *(v79 + 3);
            v88 = *(v79 + 9);
            v89 = *(v79 + 11);
            v90 = *(v79 + 2);
            v91 = *(v79 + 8);
            v92 = *(v79 + 4);
            v93 = *(v79 + 6);
            v94 = *(v79 + 10);
            v95 = *(v79 + 12);
            v96 = *(v79 + 13);
            v97 = *(v79 + 14);
            v98 = *(v79 + 15);
            v99 = *(v79 + 5);
            v100 = *(v79 + 7);
            v320 = *v79;
            v321 = v90;
            v322 = v91;
            v323 = v94;
            v328 = v86;
            v329 = v87;
            v330 = v88;
            v331 = v89;
            v336 = v92;
            v337 = v93;
            v338 = v95;
            v339 = v97;
            v84 = 256;
            v344 = v99;
            v345 = v100;
            v346 = v96;
            v347 = v98;
          }

          else if (v83 == 7)
          {
            v85 = vld1q_dup_f64(v79);
            v320 = v85;
            v321 = v85;
            v322 = v85;
            v323 = v85;
            v328 = v85;
            v329 = v85;
            v330 = v85;
            v331 = v85;
            v336 = v85;
            v337 = v85;
            v338 = v85;
            v339 = v85;
            v344 = v85;
            v345 = v85;
            v84 = 8;
            v346 = v85;
            v347 = v85;
          }

          else if (*v77)
          {
            v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v320, 128, v79, v83);
          }

          else
          {
            v84 = 0;
            v323 = 0u;
            v322 = 0u;
            v321 = 0u;
            v320 = 0u;
            v328 = 0u;
            v329 = 0u;
            v330 = 0u;
            v331 = 0u;
            v336 = 0u;
            v337 = 0u;
            v338 = 0u;
            v339 = 0u;
            v344 = 0u;
            v345 = 0u;
            v346 = 0u;
            v347 = 0u;
          }

          v101 = v79 + v84;
          v102 = v77[1];
          if (v102 == 255)
          {
            v105 = *(v101 + 16);
            v106 = *(v101 + 48);
            v107 = *(v101 + 144);
            v108 = *(v101 + 176);
            v109 = *(v101 + 32);
            v110 = *(v101 + 128);
            v111 = *(v101 + 64);
            v112 = *(v101 + 96);
            v113 = *(v101 + 160);
            v114 = *(v101 + 192);
            v115 = *(v101 + 208);
            v116 = *(v101 + 224);
            v117 = *(v101 + 240);
            v118 = *(v101 + 80);
            v119 = *(v101 + 112);
            v352 = *v101;
            v353 = v109;
            v354 = v110;
            v355 = v113;
            v360 = v105;
            v361 = v106;
            v362 = v107;
            v363 = v108;
            v368 = v111;
            v369 = v112;
            v370 = v114;
            v371 = v116;
            v103 = 256;
            v376 = v118;
            v377 = v119;
            v378 = v115;
            v379 = v117;
          }

          else if (v102 == 7)
          {
            v104 = vld1q_dup_f64(v101);
            v352 = v104;
            v353 = v104;
            v354 = v104;
            v355 = v104;
            v360 = v104;
            v361 = v104;
            v362 = v104;
            v363 = v104;
            v368 = v104;
            v369 = v104;
            v370 = v104;
            v371 = v104;
            v376 = v104;
            v377 = v104;
            v103 = 8;
            v378 = v104;
            v379 = v104;
          }

          else if (v77[1])
          {
            v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v352, 128, v101, v102);
          }

          else
          {
            v103 = 0;
            v354 = 0u;
            v355 = 0u;
            v352 = 0u;
            v353 = 0u;
            v360 = 0u;
            v361 = 0u;
            v362 = 0u;
            v363 = 0u;
            v368 = 0u;
            v369 = 0u;
            v370 = 0u;
            v371 = 0u;
            v376 = 0u;
            v377 = 0u;
            v378 = 0u;
            v379 = 0u;
          }

          v120 = v101 + v103;
          v121 = v77[2];
          if (v121 == 255)
          {
            v124 = *(v120 + 16);
            v125 = *(v120 + 48);
            v126 = *(v120 + 144);
            v127 = *(v120 + 176);
            v128 = *(v120 + 32);
            v129 = *(v120 + 128);
            v130 = *(v120 + 64);
            v131 = *(v120 + 96);
            v132 = *(v120 + 160);
            v133 = *(v120 + 192);
            v134 = *(v120 + 208);
            v135 = *(v120 + 224);
            v136 = *(v120 + 240);
            v137 = *(v120 + 80);
            v138 = *(v120 + 112);
            v324 = *v120;
            v325 = v128;
            v326 = v129;
            v327 = v132;
            v332 = v124;
            v333 = v125;
            v334 = v126;
            v335 = v127;
            v340 = v130;
            v341 = v131;
            v342 = v133;
            v343 = v135;
            v122 = 256;
            v348 = v137;
            v349 = v138;
            v350 = v134;
            v351 = v136;
          }

          else if (v121 == 7)
          {
            v123 = vld1q_dup_f64(v120);
            v324 = v123;
            v325 = v123;
            v326 = v123;
            v327 = v123;
            v332 = v123;
            v333 = v123;
            v334 = v123;
            v335 = v123;
            v340 = v123;
            v341 = v123;
            v342 = v123;
            v343 = v123;
            v348 = v123;
            v349 = v123;
            v122 = 8;
            v350 = v123;
            v351 = v123;
          }

          else if (v77[2])
          {
            v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v324, 128, v120, v121);
          }

          else
          {
            v122 = 0;
            v326 = 0u;
            v327 = 0u;
            v324 = 0u;
            v325 = 0u;
            v332 = 0u;
            v333 = 0u;
            v334 = 0u;
            v335 = 0u;
            v340 = 0u;
            v341 = 0u;
            v342 = 0u;
            v343 = 0u;
            v348 = 0u;
            v349 = 0u;
            v350 = 0u;
            v351 = 0u;
          }

          v139 = v120 + v122;
          v140 = v77[3];
          if (v140 == 255)
          {
            v143 = *(v139 + 16);
            v144 = *(v139 + 48);
            v145 = *(v139 + 144);
            v146 = *(v139 + 176);
            v147 = *(v139 + 32);
            v148 = *(v139 + 128);
            v149 = *(v139 + 64);
            v150 = *(v139 + 96);
            v151 = *(v139 + 160);
            v152 = *(v139 + 192);
            v153 = *(v139 + 208);
            v154 = *(v139 + 224);
            v155 = *(v139 + 240);
            v156 = *(v139 + 80);
            v157 = *(v139 + 112);
            v356 = *v139;
            v357 = v147;
            v358 = v148;
            v359 = v151;
            v364 = v143;
            v365 = v144;
            v366 = v145;
            v367 = v146;
            v372 = v149;
            v373 = v150;
            v374 = v152;
            v375 = v154;
            v141 = 256;
            v380 = v156;
            v381 = v157;
            v382 = v153;
            v383 = v155;
          }

          else if (v140 == 7)
          {
            v142 = vld1q_dup_f64(v139);
            v356 = v142;
            v357 = v142;
            v358 = v142;
            v359 = v142;
            v364 = v142;
            v365 = v142;
            v366 = v142;
            v367 = v142;
            v372 = v142;
            v373 = v142;
            v374 = v142;
            v375 = v142;
            v380 = v142;
            v381 = v142;
            v141 = 8;
            v382 = v142;
            v383 = v142;
          }

          else if (v77[3])
          {
            v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v356, 128, v139, v140);
          }

          else
          {
            v141 = 0;
            v358 = 0u;
            v359 = 0u;
            v356 = 0u;
            v357 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
            v367 = 0u;
            v372 = 0u;
            v373 = 0u;
            v374 = 0u;
            v375 = 0u;
            v380 = 0u;
            v381 = 0u;
            v382 = 0u;
            v383 = 0u;
          }

          v158 = v139 + v141;
          v159 = v77[4];
          if (v159 == 255)
          {
            v162 = *(v158 + 16);
            v163 = *(v158 + 48);
            v164 = *(v158 + 144);
            v165 = *(v158 + 176);
            v166 = *(v158 + 32);
            v167 = *(v158 + 128);
            v168 = *(v158 + 64);
            v169 = *(v158 + 96);
            v170 = *(v158 + 160);
            v171 = *(v158 + 192);
            v172 = *(v158 + 208);
            v173 = *(v158 + 224);
            v174 = *(v158 + 240);
            v175 = *(v158 + 80);
            v176 = *(v158 + 112);
            v384 = *v158;
            v385 = v166;
            v386 = v167;
            v387 = v170;
            v392 = v162;
            v393 = v163;
            v394 = v164;
            v395 = v165;
            v400 = v168;
            v401 = v169;
            v402 = v171;
            v403 = v173;
            v160 = 256;
            v408 = v175;
            v409 = v176;
            v410 = v172;
            v411 = v174;
          }

          else if (v159 == 7)
          {
            v161 = vld1q_dup_f64(v158);
            v384 = v161;
            v385 = v161;
            v386 = v161;
            v387 = v161;
            v392 = v161;
            v393 = v161;
            v394 = v161;
            v395 = v161;
            v400 = v161;
            v401 = v161;
            v402 = v161;
            v403 = v161;
            v408 = v161;
            v409 = v161;
            v410 = v161;
            v160 = 8;
            v411 = v161;
          }

          else if (v77[4])
          {
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v384, 128, v158, v159);
          }

          else
          {
            v160 = 0;
            v386 = 0u;
            v387 = 0u;
            v384 = 0u;
            v385 = 0u;
            v392 = 0u;
            v393 = 0u;
            v394 = 0u;
            v395 = 0u;
            v400 = 0u;
            v401 = 0u;
            v402 = 0u;
            v403 = 0u;
            v408 = 0u;
            v409 = 0u;
            v410 = 0u;
            v411 = 0u;
          }

          v177 = v158 + v160;
          v178 = v77[5];
          if (v178 == 255)
          {
            v181 = *(v177 + 16);
            v182 = *(v177 + 48);
            v183 = *(v177 + 144);
            v184 = *(v177 + 176);
            v185 = *(v177 + 32);
            v186 = *(v177 + 128);
            v187 = *(v177 + 64);
            v188 = *(v177 + 96);
            v189 = *(v177 + 160);
            v190 = *(v177 + 192);
            v191 = *(v177 + 208);
            v192 = *(v177 + 224);
            v193 = *(v177 + 240);
            v194 = *(v177 + 80);
            v195 = *(v177 + 112);
            v416 = *v177;
            v417 = v185;
            v418 = v186;
            v419 = v189;
            v424 = v181;
            v425 = v182;
            v426 = v183;
            v427 = v184;
            v432 = v187;
            v433 = v188;
            v434 = v190;
            v435 = v192;
            v179 = 256;
            v440 = v194;
            v441 = v195;
            v442 = v191;
            v443 = v193;
          }

          else if (v178 == 7)
          {
            v180 = vld1q_dup_f64(v177);
            v416 = v180;
            v417 = v180;
            v418 = v180;
            v419 = v180;
            v424 = v180;
            v425 = v180;
            v426 = v180;
            v427 = v180;
            v432 = v180;
            v433 = v180;
            v434 = v180;
            v435 = v180;
            v440 = v180;
            v441 = v180;
            v442 = v180;
            v179 = 8;
            v443 = v180;
          }

          else if (v77[5])
          {
            v179 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v416, 128, v177, v178);
          }

          else
          {
            v179 = 0;
            v418 = 0u;
            v419 = 0u;
            v416 = 0u;
            v417 = 0u;
            v424 = 0u;
            v425 = 0u;
            v426 = 0u;
            v427 = 0u;
            v432 = 0u;
            v433 = 0u;
            v434 = 0u;
            v435 = 0u;
            v440 = 0u;
            v441 = 0u;
            v442 = 0u;
            v443 = 0u;
          }

          v196 = v177 + v179;
          v197 = v77[6];
          if (v197 == 255)
          {
            v200 = *(v196 + 16);
            v201 = *(v196 + 48);
            v202 = *(v196 + 144);
            v203 = *(v196 + 176);
            v204 = *(v196 + 32);
            v205 = *(v196 + 128);
            v206 = *(v196 + 64);
            v207 = *(v196 + 96);
            v208 = *(v196 + 160);
            v209 = *(v196 + 192);
            v210 = *(v196 + 208);
            v211 = *(v196 + 224);
            v212 = *(v196 + 240);
            v213 = *(v196 + 80);
            v214 = *(v196 + 112);
            v388 = *v196;
            v389 = v204;
            v390 = v205;
            v391 = v208;
            v396 = v200;
            v397 = v201;
            v398 = v202;
            v399 = v203;
            v404 = v206;
            v405 = v207;
            v406 = v209;
            v407 = v211;
            v198 = 256;
            v412 = v213;
            v413 = v214;
            v414 = v210;
            v415 = v212;
          }

          else if (v197 == 7)
          {
            v199 = vld1q_dup_f64(v196);
            v388 = v199;
            v389 = v199;
            v390 = v199;
            v391 = v199;
            v396 = v199;
            v397 = v199;
            v398 = v199;
            v399 = v199;
            v404 = v199;
            v405 = v199;
            v406 = v199;
            v407 = v199;
            v412 = v199;
            v413 = v199;
            v414 = v199;
            v198 = 8;
            v415 = v199;
          }

          else if (v77[6])
          {
            v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v388, 128, v196, v197);
          }

          else
          {
            v198 = 0;
            v390 = 0u;
            v391 = 0u;
            v388 = 0u;
            v389 = 0u;
            v396 = 0u;
            v397 = 0u;
            v398 = 0u;
            v399 = 0u;
            v404 = 0u;
            v405 = 0u;
            v406 = 0u;
            v407 = 0u;
            v412 = 0u;
            v413 = 0u;
            v414 = 0u;
            v415 = 0u;
          }

          v215 = v196 + v198;
          v216 = v77[7];
          if (v216 == 255)
          {
            v220 = *(v215 + 16);
            v221 = *(v215 + 48);
            v222 = *(v215 + 144);
            v223 = *(v215 + 176);
            v224 = *(v215 + 32);
            v225 = *(v215 + 128);
            v226 = *(v215 + 160);
            v227 = *(v215 + 64);
            v228 = *(v215 + 96);
            v229 = *(v215 + 192);
            v230 = *(v215 + 224);
            v231 = *(v215 + 240);
            v232 = *(v215 + 80);
            v233 = *(v215 + 112);
            v234 = *(v215 + 208);
            v420 = *v215;
            v421 = v224;
            v422 = v225;
            v423 = v226;
            v428 = v220;
            v429 = v221;
            v430 = v222;
            v431 = v223;
            v436 = v227;
            v437 = v228;
            v438 = v229;
            v439 = v230;
            v217 = v292;
            v218 = v293;
            v444 = v232;
            v445 = v233;
            v446 = v234;
            v447 = v231;
            if (!v292)
            {
              goto LABEL_175;
            }
          }

          else if (v216 == 7)
          {
            v219 = vld1q_dup_f64(v215);
            v420 = v219;
            v421 = v219;
            v422 = v219;
            v423 = v219;
            v428 = v219;
            v429 = v219;
            v430 = v219;
            v431 = v219;
            v436 = v219;
            v437 = v219;
            v438 = v219;
            v439 = v219;
            v444 = v219;
            v445 = v219;
            v446 = v219;
            v217 = v292;
            v218 = v293;
            v447 = v219;
            if (!v292)
            {
              goto LABEL_175;
            }
          }

          else if (v77[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v420, 128, v215, v216);
            v218 = v313;
            v82 = v314;
            v217 = v315;
            if (!v315)
            {
              goto LABEL_175;
            }
          }

          else
          {
            v422 = 0u;
            v423 = 0u;
            v420 = 0u;
            v421 = 0u;
            v428 = 0u;
            v429 = 0u;
            v430 = 0u;
            v431 = 0u;
            v436 = 0u;
            v437 = 0u;
            v438 = 0u;
            v439 = 0u;
            v444 = 0u;
            v445 = 0u;
            v217 = v292;
            v218 = v293;
            v446 = 0u;
            v447 = 0u;
            if (!v292)
            {
              goto LABEL_175;
            }
          }

          v235 = v316;
          if (v316)
          {
            v236 = 0;
            v237 = v218;
            v238 = v218 << 7;
            v239 = 8 * v82;
            v240 = &v320 + v238 + v239;
            v241 = v311;
            v242 = v312;
            v243 = 8 * v316;
            v244 = &__dst[128 * v217 + 1920 + 128 * v237 + v243 + v239];
            if (8 * v316)
            {
              v245 = (8 * v316 - 1) >> 32 == 0;
            }

            else
            {
              v245 = 0;
            }

            v246 = !v245;
            v248 = v240 < v311 + 8 * v316 + v312 * (v217 - 1) && v311 < v244;
            v249 = v243 & 0x1FFFFFFE0;
            v250 = v246 | (v312 < 0) | v248;
            v251 = &v321 + v238 + v239;
            v252 = v311 + 1;
            v253 = v240;
            v254 = v311;
            do
            {
              v255 = v241 + v236 * v242;
              v256 = &v240[128 * v236];
              if (v250)
              {
                v257 = 0;
              }

              else
              {
                if (v235 < 4)
                {
                  v261 = 0;
LABEL_171:
                  v266 = -8 * v235 + v261;
                  v267 = (v254 + v261);
                  v268 = &v253[v261];
                  do
                  {
                    v269 = *v267++;
                    *v268 = v269;
                    v268 += 8;
                    v266 += 8;
                  }

                  while (v266);
                  goto LABEL_159;
                }

                v262 = v252;
                v263 = v251;
                v264 = v243 & 0x1FFFFFFE0;
                do
                {
                  v265 = *v262;
                  *(v263 - 1) = *(v262 - 1);
                  *v263 = v265;
                  v263 += 2;
                  v262 += 2;
                  v264 -= 32;
                }

                while (v264);
                if (v243 == v249)
                {
                  goto LABEL_159;
                }

                v261 = v243 & 0x1FFFFFFE0;
                if ((v235 & 3) != 0)
                {
                  goto LABEL_171;
                }

                v255 += v249;
                v256 += v249;
                v257 = v243 & 0xFFFFFFE0;
              }

              v258 = v257 + 1;
              do
              {
                v259 = *v255++;
                *v256++ = v259;
              }

              while (v243 > v258++);
LABEL_159:
              ++v236;
              v251 += 128;
              v252 = (v252 + v242);
              v254 = (v254 + v242);
              v253 += 128;
            }

            while (v236 != v217);
          }

LABEL_175:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v320, 128, v309, v310, v317, v318);
LABEL_176:
          if (v307)
          {
            memcpy(v306, v79, 0x800uLL);
          }

          v29 = v42++ == v295 >> 4;
          result = v304;
        }

        while (!v29);
        v29 = v25++ == v287;
      }

      while (!v29);
    }
  }

  return result;
}