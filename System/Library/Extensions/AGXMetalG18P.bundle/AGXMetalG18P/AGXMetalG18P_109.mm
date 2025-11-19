void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v218 = v15;
  v17 = v16;
  v19 = v18;
  v216 = v20;
  v217 = v21;
  v204 = v22;
  v23 = v12;
  v246 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v222 = v14;
  v24 = v14 >> 3;
  v203 = v14 + a10 - 1;
  v205 = v203 >> 3;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v223 = v23;
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
  v225 = v31;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v33 = v23;
  v215 = isLevelTiled;
  v34 = v218;
  if (v24 <= v205)
  {
    v214 = v218 + a9 - 1;
    if (v218 >> 4 <= v214 >> 4)
    {
      v35 = a11;
      v224 = (v19 - 1) >> 4;
      v200 = v19 - 1;
      v208 = (v19 - 1) & 0xF;
      v201 = (v17 - 1) & 7;
      v202 = (v17 - 1) >> 3;
      v36 = vadd_s32(__PAIR64__(v19, v17), 0xF00000007);
      v37 = vcgt_u32(v36, 0x1F0000000FLL);
      v213 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v36, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v37);
      v212 = v37;
      v199 = 8 * v26 * v25;
      v38 = 4 * a11;
      v39 = 2 * a11;
      do
      {
        v40 = (8 * v24) | 7;
        if (8 * v24 <= v222)
        {
          v41 = v222;
        }

        else
        {
          v41 = 8 * v24;
        }

        if (v203 < v40)
        {
          v40 = v203;
        }

        v221 = 8 * v24;
        v211 = v41 - 8 * v24;
        v42 = v40 - v41;
        v43 = v42 + 1;
        v44 = v42 != v201;
        v210 = v43;
        v45 = v218 >> 4;
        if (v24 == v202)
        {
          v46 = v201 + 1;
        }

        else
        {
          v46 = 8;
        }

        if (v24 != v202)
        {
          v44 = v43 != 8;
        }

        v209 = v44;
        v220 = v204 + (v41 - v222) * v35;
        v219 = v46;
        v206 = v46;
        do
        {
          v47 = 16 * v45;
          v48 = 16 * (v45 + 1) - 1;
          if (16 * v45 <= v34)
          {
            v49 = v34;
          }

          else
          {
            v49 = 16 * v45;
          }

          if (v214 < v48)
          {
            v48 = v218 + a9 - 1;
          }

          v50 = v48 - v49;
          v51 = v50 + 1;
          if (v45 == v224)
          {
            v52 = v208 + 1;
          }

          else
          {
            v52 = 16;
          }

          v53 = 1;
          if (v221 >= v222 && v47 >= v34)
          {
            v54 = v50 != v208;
            if (v45 != v224)
            {
              v54 = v51 != 16;
            }

            v53 = v54 || v209;
          }

          if (v215)
          {
            v75 = 0;
            v76 = v199 >> (*(v33 + 57) != 0);
            v77 = 1;
            if (v76 <= 63)
            {
              if (v76 > 15)
              {
                if (v76 == 16)
                {
                  v77 = 0;
                  v78 = 0;
                  v79 = 64;
                  v75 = 128;
                }

                else
                {
                  v78 = 1;
                  v79 = 0;
                  if (v76 == 32)
                  {
                    v77 = 0;
                    v78 = 0;
                    v75 = 64;
                    v79 = 64;
                  }
                }
              }

              else if (v76 == 4)
              {
                v77 = 0;
                v78 = 0;
                v79 = 128;
                v75 = 256;
              }

              else
              {
                v78 = 1;
                v79 = 0;
                if (v76 == 8)
                {
                  v77 = 0;
                  v78 = 0;
                  v75 = 128;
                  v79 = 128;
                }
              }
            }

            else if (v76 <= 255)
            {
              if (v76 == 64)
              {
                v77 = 0;
                v78 = 0;
                v79 = 32;
                v75 = 64;
              }

              else
              {
                v78 = 1;
                v79 = 0;
                if (v76 == 128)
                {
                  v77 = 0;
                  v78 = 0;
                  v75 = 32;
                  v79 = 32;
                }
              }
            }

            else if (v76 == 256)
            {
              v77 = 0;
              v78 = 0;
              v79 = 16;
              v75 = 32;
            }

            else if (v76 == 512)
            {
              v78 = 0;
              v75 = 16;
              v79 = 16;
            }

            else
            {
              v78 = 1;
              v79 = 0;
              if (v76 == 1024)
              {
                v79 = 8;
                v75 = 16;
              }
            }

            v187 = (v75 >> 4) - 1;
            if (v77)
            {
              v188 = 0;
            }

            else
            {
              v188 = 32 - __clz(~(-1 << -__clz(v187)));
            }

            v189 = (v79 >> 3) - 1;
            if (v78)
            {
              v190 = 0;
              if (v188)
              {
                goto LABEL_158;
              }
            }

            else
            {
              v190 = 32 - __clz(~(-1 << -__clz(v189)));
              if (v190 | v188)
              {
LABEL_158:
                v191 = 0;
                v192 = 0;
                v193 = v45 & v187;
                v194 = v24 & v189;
                v195 = v190 != 0;
                v196 = v188 != 0;
                v197 = 1;
                do
                {
                  --v190;
                  if (v195)
                  {
                    v192 |= (v197 & v194) << v191++;
                  }

                  else
                  {
                    v190 = 0;
                  }

                  --v188;
                  if (v196)
                  {
                    v192 |= (v197 & v193) << v191++;
                  }

                  else
                  {
                    v188 = 0;
                  }

                  v197 *= 2;
                  --v191;
                  v196 = v188 != 0;
                  v195 = v190 != 0;
                }

                while (v188 | v190);
                v198 = v192 << 11;
                goto LABEL_170;
              }
            }

            v198 = 0;
LABEL_170:
            v62 = v198 + ((v47 / v75 + v221 / v79 * ((v75 + v200) / v75)) << 14);
            goto LABEL_55;
          }

          if (v213)
          {
            v55 = 0;
            v56 = 0;
            v57 = 1;
            v59 = v212.i8[0];
            v58 = v212.i8[4];
            v60 = v213.i32[0];
            v61 = v213.i32[1];
            do
            {
              --v60;
              if (v59)
              {
                v56 |= (v57 & v24) << v55++;
              }

              else
              {
                v60 = 0;
              }

              --v61;
              if (v58)
              {
                v56 |= (v57 & v45) << v55++;
              }

              else
              {
                v61 = 0;
              }

              v57 *= 2;
              --v55;
              v58 = v61 != 0;
              v59 = v60 != 0;
            }

            while (v61 | v60);
            v62 = v56 << 11;
          }

          else
          {
            v62 = 0;
          }

LABEL_55:
          v63 = *(v33 + 128) >> (*(v33 + 144) + a12);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v63 + 15;
          if (v64 < 0x20)
          {
            v65 = 0;
          }

          else
          {
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 4) - 1)));
          }

          v66 = *(v33 + 132) >> (*(v33 + 144) + a12);
          if (v66 <= 1)
          {
            v66 = 1;
          }

          v67 = v66 + 7;
          if (v67 < 0x10)
          {
            v68 = 0;
            if (!v65)
            {
LABEL_80:
              v74 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v68 = 32 - __clz(~(-1 << -__clz((v67 >> 3) - 1)));
            if (!(v68 | v65))
            {
              goto LABEL_80;
            }
          }

          v69 = 0;
          v70 = 0;
          v71 = v65 != 0;
          v72 = v68 != 0;
          v73 = 1;
          do
          {
            --v65;
            if (v71)
            {
              v70 |= (v73 & v45) << v69++;
            }

            else
            {
              v65 = 0;
            }

            --v68;
            if (v72)
            {
              v70 |= (v73 & v24) << v69++;
            }

            else
            {
              v68 = 0;
            }

            v73 *= 2;
            --v69;
            v72 = v68 != 0;
            v71 = v65 != 0;
          }

          while (v68 | v65);
          v74 = 8 * v70;
LABEL_81:
          v80 = (v217 + v74);
          v81 = v220 + 16 * (v49 - v34);
          v82 = (v216 + v62);
          if (v225)
          {
            if (!(v53 & 1 | (v52 < 0x10u) | (v219 < 8)))
            {
              v87 = __dst;
LABEL_90:
              v89 = &byte_29D2F30D1;
              v90 = 16;
              v91 = v87;
              do
              {
                v115 = *v89;
                v116 = *(v89 - 1);
                if (v52 <= 4 * v116 || 4 * v115 >= v46)
                {
                  v114 = 0;
                }

                else
                {
                  v92 = (v81 + v38 * v115 + (v116 << 6));
                  v93 = (v92 + v35);
                  v95 = *v92;
                  v96 = v92[1];
                  v97 = v92[2];
                  v98 = v92[3];
                  v94 = (v92 + v39);
                  v99 = v97;
                  v100 = v98;
                  v102 = *v94;
                  v103 = v94[1];
                  v104 = v94[2];
                  v105 = v94[3];
                  v101 = (v94 + v35);
                  v106 = v93[2];
                  v107 = v93[3];
                  v108 = *v101;
                  v109 = v101[1];
                  v110 = *v93;
                  v111 = v93[1];
                  v112 = v101[2];
                  v113 = v101[3];
                  *v91 = v95;
                  v91[1] = v96;
                  v91[2] = v110;
                  v91[3] = v111;
                  v91[4] = v99;
                  v91[5] = v100;
                  v91[6] = v106;
                  v91[7] = v107;
                  v91[8] = v102;
                  v91[9] = v103;
                  v91[10] = v108;
                  v91[11] = v109;
                  v91[12] = v104;
                  v91[13] = v105;
                  v91[14] = v112;
                  v91[15] = v113;
                  v91 += 16;
                  v114 = -1;
                }

                *v80++ = v114;
                v89 += 2;
                v90 -= 2;
              }

              while (v90);
              goto LABEL_87;
            }

            v83 = v38;
            v84 = v51;
            v85 = v53;
            v86 = v49;
            memcpy(__dst, v82, sizeof(__dst));
            v87 = __dst;
            v49 = v86;
            v47 = 16 * v45;
            v53 = v85;
            v46 = v206;
            v51 = v84;
            v38 = v83;
            v35 = a11;
            v39 = 2 * a11;
            v33 = v223;
          }

          else
          {
            v87 = (v216 + v62);
            if (!(v53 & 1 | (v52 < 0x10u) | (v219 < 8)))
            {
              goto LABEL_90;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v33;
          v227 = v87;
          v235 = v52;
          v236 = v46;
          v231 = v211;
          v232 = v49 - v47;
          v228 = v80;
          v229 = v81;
          v230 = v35;
          v233 = v210;
          v234 = v51;
          if (v53)
          {
            v88 = v87;
            dispatch_sync(*(*(v33 + 8) + 16552), block);
            v87 = v88;
            v33 = v223;
            v34 = v218;
LABEL_87:
            if (!v225)
            {
              goto LABEL_29;
            }

LABEL_138:
            memcpy(v82, v87, 0x800uLL);
            v33 = v223;
            v34 = v218;
            goto LABEL_29;
          }

          v207 = v87;
          v118 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v238, 256, v87, *v80)];
          v119 = v118 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v239, 256, v118, v80[1]);
          v120 = v119 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v242, 256, v119, v80[2]);
          v121 = v120 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v243, 256, v120, v80[3]);
          v122 = v121 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v240, 256, v121, v80[4]);
          v123 = v122 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v241, 256, v122, v80[5]);
          v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v244, 256, v123, v80[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v245, 256, v123 + v124, v80[7]);
          v125 = v233;
          if (v233)
          {
            v126 = v234;
            if (v234)
            {
              v127 = 0;
              v128 = v231 << 8;
              v129 = 16 * v232;
              v130 = &v238[0].i8[v128 + v129];
              v131 = v229;
              v132 = v230;
              v133 = 16 * v234;
              if (16 * v234)
              {
                v134 = (16 * v234 - 1) >> 32 == 0;
              }

              else
              {
                v134 = 0;
              }

              v135 = !v134;
              v137 = v130 < v229 + v230 * (v233 - 1) + 16 * v234 && v229 < &__dst[256 * v233 + 1792 + 256 * v231 + 16 * v234 + v129];
              v138 = v133 & 0x1FFFFFFE0;
              v139 = v135 | (v230 < 0) | v137;
              v140 = &v238[1].i8[v128 + v129];
              v141 = (v229 + 16);
              v142 = v130;
              v143 = v229;
              do
              {
                v144 = (v131 + v127 * v132);
                v145 = &v130[256 * v127];
                if (v139)
                {
                  v146 = 0;
                }

                else
                {
                  if (v126 == 1)
                  {
                    v150 = 0;
LABEL_121:
                    v151 = -16 * v126 + v150;
                    v152 = (v143 + v150);
                    v153 = &v142[v150];
                    do
                    {
                      v154 = *v152++;
                      *v153 = v154;
                      v153 += 16;
                      v151 += 16;
                    }

                    while (v151);
                    goto LABEL_113;
                  }

                  v155 = v141;
                  v156 = v140;
                  v157 = v133 & 0x1FFFFFFE0;
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
                  if (v133 == v138)
                  {
                    goto LABEL_113;
                  }

                  v150 = v133 & 0x1FFFFFFE0;
                  if (v126)
                  {
                    goto LABEL_121;
                  }

                  v144 += v138;
                  v145 += v138;
                  v146 = v133 & 0xFFFFFFE0;
                }

                v147 = v146 + 1;
                do
                {
                  v148 = *v144++;
                  *v145++ = v148;
                }

                while (v133 > v147++);
LABEL_113:
                ++v127;
                v140 += 256;
                v141 = (v141 + v132);
                v143 += v132;
                v142 += 256;
              }

              while (v127 != v125);
            }
          }

          v159 = v227;
          v160 = v228;
          v161 = v235;
          v162 = &byte_29D2F30D1;
          v163 = 16;
          v164 = v236;
          v34 = v218;
          v33 = v223;
          do
          {
            v184 = *v162;
            v185 = *(v162 - 1);
            if (v161 <= 4 * v185 || 4 * v184 >= v164)
            {
              v183 = 0;
            }

            else
            {
              v165 = &v238[64 * v184 + 4 * v185];
              v166 = *v165;
              v167 = v165[1];
              v168 = v165[16];
              v169 = v165[17];
              v170 = v165[2];
              v171 = v165[3];
              v172 = v165[18];
              v173 = v165[32];
              v174 = v165[33];
              v175 = v165[34];
              v176 = v165[35];
              v177 = v165[19];
              v165 += 48;
              v178 = *v165;
              v179 = v165[1];
              v180 = v165[2];
              v181 = v165[3];
              *v159 = v166;
              v159[1] = v167;
              v159[2] = v168;
              v159[3] = v169;
              v159[4] = v170;
              v159[5] = v171;
              v159[6] = v172;
              v159[7] = v177;
              v159[8] = v173;
              v159[9] = v174;
              v159[10] = v178;
              v159[11] = v179;
              v182 = v159 + 12;
              v159 += 16;
              v183 = -1;
              *v182 = v175;
              v182[1] = v176;
              v182[2] = v180;
              v182[3] = v181;
            }

            *v160++ = v183;
            v162 += 2;
            v163 -= 2;
          }

          while (v163);
          v87 = v207;
          if (v225)
          {
            goto LABEL_138;
          }

LABEL_29:
          v28 = v45++ == v214 >> 4;
        }

        while (!v28);
        v28 = v24++ == v205;
      }

      while (!v28);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v258 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v209 = a8;
  v192 = a8 + a10 - 1;
  v210 = a1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 3;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v191 = v192 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v213 = v24;
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
      v203 = 0;
LABEL_32:
      v200 = v27 - 4;
      v195 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v189 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v203 = v32 >= v26;
    goto LABEL_32;
  }

  v203 = 0;
  v189 = 0;
  v195 = 0;
  v200 = 0;
LABEL_33:
  if (v18 <= v191)
  {
    v202 = a7 + a9 - 1;
    v188 = a7 >> 4;
    if (a7 >> 4 <= v202 >> 4)
    {
      v211 = v19 >> 4;
      v196 = v19 & 0xF;
      v186 = v20 & 7;
      v187 = v20 >> 3;
      v185 = ~(-1 << v195);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v194 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v193 = v35;
      v201 = a7;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v209)
        {
          v37 = v209;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v192 < v36)
        {
          v36 = v192;
        }

        v199 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v186;
        v198 = v39;
        v41 = v39 != 8;
        v42 = v186 + 1;
        if (v18 != v187)
        {
          v42 = 8;
          v40 = v41;
        }

        v197 = v40;
        v43 = v188;
        v44 = v18 & v185;
        v207 = a3 + (v37 - v209) * a11;
        v208 = v42;
        v206 = v42;
        do
        {
          v45 = 16 * v43;
          v46 = 16 * (v43 + 1) - 1;
          if (16 * v43 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 16 * v43;
          }

          if (v202 < v46)
          {
            v46 = v202;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v211)
          {
            v50 = v196 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (8 * v18 >= v209 && v45 >= a7)
          {
            v52 = v48 != v196;
            if (v43 != v211)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v197;
          }

          if (v203)
          {
            if (v200 | v195)
            {
              v53 = 0;
              v54 = 0;
              v55 = v200 != 0;
              v56 = 1;
              v58 = v195 != 0;
              v57 = v195;
              v59 = v200;
              do
              {
                --v57;
                if (v58)
                {
                  v54 |= (v44 & v56) << v53++;
                }

                else
                {
                  v57 = 0;
                }

                --v59;
                if (v55)
                {
                  v54 |= (v43 & ~(-1 << v200) & v56) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                v56 *= 2;
                --v53;
                v55 = v59 != 0;
                v58 = v57 != 0;
              }

              while (v59 | v57);
              v60 = v54 << 9;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v200) + (v18 >> v195) * v189);
          }

          else if (v194)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v193.i8[0];
            v64 = v193.i8[4];
            v66 = v194.i32[0];
            v67 = v194.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v18) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v43) << v61++;
              }

              else
              {
                v67 = 0;
              }

              v63 *= 2;
              --v61;
              v64 = v67 != 0;
              v65 = v66 != 0;
            }

            while (v67 | v66);
            v68 = v62 << 9;
          }

          else
          {
            v68 = 0;
          }

          v69 = *(result + 128) >> (*(result + 144) + a12);
          if (v69 <= 1)
          {
            v69 = 1;
          }

          v70 = v69 + 15;
          if (v70 < 0x20)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 4) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 7;
          if (v73 < 0x10)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
          }

          if (v74 | v71)
          {
            v75 = 0;
            v76 = 0;
            v77 = v71 != 0;
            v78 = v74 != 0;
            v79 = 1;
            do
            {
              --v71;
              if (v77)
              {
                v76 |= (v79 & v43) << v75++;
              }

              else
              {
                v71 = 0;
              }

              --v74;
              if (v78)
              {
                v76 |= (v79 & v18) << v75++;
              }

              else
              {
                v74 = 0;
              }

              v79 *= 2;
              --v75;
              v78 = v74 != 0;
              v77 = v71 != 0;
            }

            while (v74 | v71);
            v80 = 8 * v76;
          }

          else
          {
            v80 = 0;
          }

          v81 = (a4 + v80);
          v82 = v207 + 4 * (v47 - a7);
          v212 = (a2 + v68);
          if (v213)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v206 < 8)))
            {
              goto LABEL_109;
            }

            v84 = v49;
            v85 = (a4 + v80);
            v86 = v50;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v49 = v84;
            v44 = v18 & v185;
            LOBYTE(v50) = v86;
            v81 = v85;
            result = v210;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v206 < 8)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v208);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v215 = v83;
          v223 = v50;
          v224 = v208;
          v219 = v199;
          v220 = v47 - v45;
          v216 = v81;
          v217 = v82;
          v218 = a11;
          v221 = v198;
          v222 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v201;
            v87 = v43 + 1;
            goto LABEL_202;
          }

          v88 = *v81;
          a7 = v201;
          if (v88 == 63)
          {
            v91 = *(v83 + 1);
            v92 = (v83 + 32);
            v259 = vld2q_f64(v92);
            v93 = vzip2q_s64(*v83, v91);
            v226 = vzip1q_s64(*v83, v91);
            v230 = v93;
            v234 = v259.val[0];
            v238 = v259.val[1];
            v89 = 64;
          }

          else if (v88 == 1)
          {
            v90 = vld1q_dup_s16(v83);
            v226 = v90;
            v230 = v90;
            v234 = v90;
            v238 = v90;
            v89 = 2;
          }

          else if (*v81)
          {
            v94 = v81;
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 64, v83, v88);
            v81 = v94;
          }

          else
          {
            v89 = 0;
            v226 = 0uLL;
            v230 = 0uLL;
            v234 = 0uLL;
            v238 = 0uLL;
          }

          v95 = &v83[v89];
          v96 = v81[1];
          if (v96 == 63)
          {
            v99 = *(v95 + 16);
            v100 = (v95 + 32);
            v260 = vld2q_f64(v100);
            v101 = vzip2q_s64(*v95, v99);
            v227 = vzip1q_s64(*v95, v99);
            v231 = v101;
            v235 = v260.val[0];
            v239 = v260.val[1];
            v97 = 64;
          }

          else if (v96 == 1)
          {
            v98 = vld1q_dup_s16(v95);
            v227 = v98;
            v231 = v98;
            v235 = v98;
            v239 = v98;
            v97 = 2;
          }

          else if (v81[1])
          {
            v102 = v81;
            v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 64, v95, v96);
            v81 = v102;
          }

          else
          {
            v97 = 0;
            v227 = 0uLL;
            v231 = 0uLL;
            v235 = 0uLL;
            v239 = 0uLL;
          }

          v103 = v95 + v97;
          v104 = v81[2];
          if (v104 == 63)
          {
            v107 = *(v103 + 16);
            v108 = (v103 + 32);
            v261 = vld2q_f64(v108);
            v109 = vzip2q_s64(*v103, v107);
            v242 = vzip1q_s64(*v103, v107);
            v246 = v109;
            v250 = v261.val[0];
            v254 = v261.val[1];
            v105 = 64;
          }

          else if (v104 == 1)
          {
            v106 = vld1q_dup_s16(v103);
            v242 = v106;
            v246 = v106;
            v250 = v106;
            v254 = v106;
            v105 = 2;
          }

          else if (v81[2])
          {
            v110 = v81;
            v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 64, v103, v104);
            v81 = v110;
          }

          else
          {
            v105 = 0;
            v242 = 0uLL;
            v246 = 0uLL;
            v250 = 0uLL;
            v254 = 0uLL;
          }

          v111 = v103 + v105;
          v112 = v81[3];
          if (v112 == 63)
          {
            v115 = *(v111 + 16);
            v116 = (v111 + 32);
            v262 = vld2q_f64(v116);
            v117 = vzip2q_s64(*v111, v115);
            v243 = vzip1q_s64(*v111, v115);
            v247 = v117;
            v251 = v262.val[0];
            v255 = v262.val[1];
            v113 = 64;
          }

          else if (v112 == 1)
          {
            v114 = vld1q_dup_s16(v111);
            v243 = v114;
            v247 = v114;
            v251 = v114;
            v255 = v114;
            v113 = 2;
          }

          else if (v81[3])
          {
            v118 = v81;
            v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 64, v111, v112);
            v81 = v118;
          }

          else
          {
            v113 = 0;
            v243 = 0uLL;
            v247 = 0uLL;
            v251 = 0uLL;
            v255 = 0uLL;
          }

          v119 = v111 + v113;
          v120 = v81[4];
          if (v120 == 63)
          {
            v123 = *(v119 + 16);
            v124 = (v119 + 32);
            v263 = vld2q_f64(v124);
            v125 = vzip2q_s64(*v119, v123);
            v228 = vzip1q_s64(*v119, v123);
            v232 = v125;
            v236 = v263.val[0];
            v240 = v263.val[1];
            v121 = 64;
          }

          else if (v120 == 1)
          {
            v122 = vld1q_dup_s16(v119);
            v228 = v122;
            v232 = v122;
            v236 = v122;
            v240 = v122;
            v121 = 2;
          }

          else if (v81[4])
          {
            v126 = v81;
            v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 64, v119, v120);
            v81 = v126;
          }

          else
          {
            v121 = 0;
            v228 = 0uLL;
            v232 = 0uLL;
            v236 = 0uLL;
            v240 = 0uLL;
          }

          v127 = v119 + v121;
          v128 = v81[5];
          if (v128 == 63)
          {
            v131 = *(v127 + 16);
            v132 = (v127 + 32);
            v264 = vld2q_f64(v132);
            v133 = vzip2q_s64(*v127, v131);
            v229 = vzip1q_s64(*v127, v131);
            v233 = v133;
            v237 = v264.val[0];
            v241 = v264.val[1];
            v129 = 64;
          }

          else if (v128 == 1)
          {
            v130 = vld1q_dup_s16(v127);
            v229 = v130;
            v233 = v130;
            v237 = v130;
            v241 = v130;
            v129 = 2;
          }

          else if (v81[5])
          {
            v134 = v81;
            v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 64, v127, v128);
            v81 = v134;
          }

          else
          {
            v129 = 0;
            v229 = 0uLL;
            v233 = 0uLL;
            v237 = 0uLL;
            v241 = 0uLL;
          }

          v135 = v127 + v129;
          v136 = v81[6];
          if (v136 == 63)
          {
            v139 = *(v135 + 16);
            v140 = (v135 + 32);
            v265 = vld2q_f64(v140);
            v141 = vzip2q_s64(*v135, v139);
            v244 = vzip1q_s64(*v135, v139);
            v248 = v141;
            v252 = v265.val[0];
            v256 = v265.val[1];
            v137 = 64;
          }

          else if (v136 == 1)
          {
            v138 = vld1q_dup_s16(v135);
            v244 = v138;
            v248 = v138;
            v252 = v138;
            v256 = v138;
            v137 = 2;
          }

          else if (v81[6])
          {
            v142 = v81;
            v137 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 64, v135, v136);
            v81 = v142;
          }

          else
          {
            v137 = 0;
            v244 = 0uLL;
            v248 = 0uLL;
            v252 = 0uLL;
            v256 = 0uLL;
          }

          v143 = v135 + v137;
          v144 = v81[7];
          if (v144 == 63)
          {
            v147 = *(v143 + 16);
            v148 = (v143 + 32);
            v266 = vld2q_f64(v148);
            v149 = vzip2q_s64(*v143, v147);
            v245 = vzip1q_s64(*v143, v147);
            v249 = v149;
            v253 = v266.val[0];
            v257 = v266.val[1];
            v87 = v43 + 1;
            v145 = v221;
            if (!v221)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v87 = v43 + 1;
            if (v144 == 1)
            {
              v146 = vld1q_dup_s16(v143);
              v245 = v146;
              v249 = v146;
              v253 = v146;
              v257 = v146;
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }

            else if (v81[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 64, v143, v144);
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v245 = 0uLL;
              v249 = 0uLL;
              v253 = 0uLL;
              v257 = 0uLL;
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }
          }

          v150 = v222;
          if (v222)
          {
            v151 = 0;
            v152 = v219 << 6;
            v153 = 4 * v220;
            v154 = &v226.i8[v152 + v153];
            v155 = v217;
            v156 = v218;
            v157 = 4 * v222;
            if (4 * v222)
            {
              v158 = (4 * v222 - 1) >> 32 == 0;
            }

            else
            {
              v158 = 0;
            }

            v159 = !v158;
            v161 = v154 < v217 + v218 * (v145 - 1) + 4 * v222 && v217 < &__dst[64 * v145 + 448 + 64 * v219 + 4 * v222 + v153];
            v162 = v161 || v218 < 0;
            v163 = v157 & 0x1FFFFFFE0;
            v164 = v157 & 0x1FFFFFFF8;
            v165 = (v222 == 1) | v159 | v162;
            v166 = &v227.i8[v152 + v153];
            v167 = (v217 + 16);
            v168 = v154;
            v169 = v217;
            do
            {
              v170 = (v155 + v151 * v156);
              v171 = &v154[64 * v151];
              if (v165)
              {
                v172 = 0;
                goto LABEL_198;
              }

              if (v150 >= 8)
              {
                v174 = v167;
                v175 = v166;
                v176 = v157 & 0x1FFFFFFE0;
                do
                {
                  v177 = *v174;
                  *(v175 - 1) = *(v174 - 1);
                  *v175 = v177;
                  v175 += 32;
                  v174 += 2;
                  v176 -= 32;
                }

                while (v176);
                if (v157 == v163)
                {
                  goto LABEL_184;
                }

                v173 = v157 & 0x1FFFFFFE0;
                if ((v150 & 6) == 0)
                {
                  v170 += v163;
                  v171 += v163;
                  v172 = v157 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v173 = 0;
              }

              v171 += v164;
              v178 = -8 * ((v150 >> 1) & 0x3FFFFFFF) + v173;
              v179 = (v169 + v173);
              v180 = &v168[v173];
              do
              {
                v181 = *v179++;
                *v180 = v181;
                v180 += 8;
                v178 += 8;
              }

              while (v178);
              if (v157 == v164)
              {
                goto LABEL_184;
              }

              v170 += v164;
              v172 = v157 & 0xFFFFFFF8;
LABEL_198:
              v182 = v172 + 1;
              do
              {
                v183 = *v170++;
                *v171++ = v183;
              }

              while (v157 > v182++);
LABEL_184:
              ++v151;
              v166 += 64;
              v167 = (v167 + v156);
              v169 += v156;
              v168 += 64;
            }

            while (v151 != v145);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v226, 64, v215, v216, v223, v224);
LABEL_202:
          if (v213)
          {
            memcpy(v212, v83, 0x200uLL);
          }

          v21 = v43 == v202 >> 4;
          v43 = v87;
          result = v210;
        }

        while (!v21);
        v21 = v18++ == v191;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v258 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v209 = a8;
  v192 = a8 + a10 - 1;
  v210 = a1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 3;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v191 = v192 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v213 = v24;
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
      v203 = 0;
LABEL_32:
      v200 = v27 - 4;
      v195 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v189 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v203 = v32 >= v26;
    goto LABEL_32;
  }

  v203 = 0;
  v189 = 0;
  v195 = 0;
  v200 = 0;
LABEL_33:
  if (v18 <= v191)
  {
    v202 = a7 + a9 - 1;
    v188 = a7 >> 4;
    if (a7 >> 4 <= v202 >> 4)
    {
      v211 = v19 >> 4;
      v196 = v19 & 0xF;
      v186 = v20 & 7;
      v187 = v20 >> 3;
      v185 = ~(-1 << v195);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v194 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v193 = v35;
      v201 = a7;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v209)
        {
          v37 = v209;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v192 < v36)
        {
          v36 = v192;
        }

        v199 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v186;
        v198 = v39;
        v41 = v39 != 8;
        v42 = v186 + 1;
        if (v18 != v187)
        {
          v42 = 8;
          v40 = v41;
        }

        v197 = v40;
        v43 = v188;
        v44 = v18 & v185;
        v207 = a3 + (v37 - v209) * a11;
        v208 = v42;
        v206 = v42;
        do
        {
          v45 = 16 * v43;
          v46 = 16 * (v43 + 1) - 1;
          if (16 * v43 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 16 * v43;
          }

          if (v202 < v46)
          {
            v46 = v202;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v211)
          {
            v50 = v196 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (8 * v18 >= v209 && v45 >= a7)
          {
            v52 = v48 != v196;
            if (v43 != v211)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v197;
          }

          if (v203)
          {
            if (v200 | v195)
            {
              v53 = 0;
              v54 = 0;
              v55 = v200 != 0;
              v56 = 1;
              v58 = v195 != 0;
              v57 = v195;
              v59 = v200;
              do
              {
                --v57;
                if (v58)
                {
                  v54 |= (v44 & v56) << v53++;
                }

                else
                {
                  v57 = 0;
                }

                --v59;
                if (v55)
                {
                  v54 |= (v43 & ~(-1 << v200) & v56) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                v56 *= 2;
                --v53;
                v55 = v59 != 0;
                v58 = v57 != 0;
              }

              while (v59 | v57);
              v60 = v54 << 9;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v200) + (v18 >> v195) * v189);
          }

          else if (v194)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v193.i8[0];
            v64 = v193.i8[4];
            v66 = v194.i32[0];
            v67 = v194.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v18) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v43) << v61++;
              }

              else
              {
                v67 = 0;
              }

              v63 *= 2;
              --v61;
              v64 = v67 != 0;
              v65 = v66 != 0;
            }

            while (v67 | v66);
            v68 = v62 << 9;
          }

          else
          {
            v68 = 0;
          }

          v69 = *(result + 128) >> (*(result + 144) + a12);
          if (v69 <= 1)
          {
            v69 = 1;
          }

          v70 = v69 + 15;
          if (v70 < 0x20)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 4) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 7;
          if (v73 < 0x10)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
          }

          if (v74 | v71)
          {
            v75 = 0;
            v76 = 0;
            v77 = v71 != 0;
            v78 = v74 != 0;
            v79 = 1;
            do
            {
              --v71;
              if (v77)
              {
                v76 |= (v79 & v43) << v75++;
              }

              else
              {
                v71 = 0;
              }

              --v74;
              if (v78)
              {
                v76 |= (v79 & v18) << v75++;
              }

              else
              {
                v74 = 0;
              }

              v79 *= 2;
              --v75;
              v78 = v74 != 0;
              v77 = v71 != 0;
            }

            while (v74 | v71);
            v80 = 8 * v76;
          }

          else
          {
            v80 = 0;
          }

          v81 = (a4 + v80);
          v82 = (v207 + 4 * (v47 - a7));
          v212 = (a2 + v68);
          if (v213)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v206 < 8)))
            {
              goto LABEL_109;
            }

            v84 = v49;
            v85 = (a4 + v80);
            v86 = v50;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v49 = v84;
            v44 = v18 & v185;
            LOBYTE(v50) = v86;
            v81 = v85;
            result = v210;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v206 < 8)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v208);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v215 = v83;
          v223 = v50;
          v224 = v208;
          v219 = v199;
          v220 = v47 - v45;
          v216 = v81;
          v217 = v82;
          v218 = a11;
          v221 = v198;
          v222 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v201;
            v87 = v43 + 1;
            goto LABEL_202;
          }

          v88 = *v81;
          a7 = v201;
          if (v88 == 63)
          {
            v91 = *(v83 + 1);
            v92 = (v83 + 32);
            v259 = vld2q_f64(v92);
            v93 = vzip2q_s64(*v83, v91);
            v226 = vzip1q_s64(*v83, v91);
            v230 = v93;
            v234 = v259.val[0];
            v238 = v259.val[1];
            v89 = 64;
          }

          else if (v88 == 1)
          {
            v90 = vld1q_dup_s16(v83);
            v226 = v90;
            v230 = v90;
            v234 = v90;
            v238 = v90;
            v89 = 2;
          }

          else if (*v81)
          {
            v94 = v81;
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 64, v83, v88);
            v81 = v94;
          }

          else
          {
            v89 = 0;
            v226 = 0uLL;
            v230 = 0uLL;
            v234 = 0uLL;
            v238 = 0uLL;
          }

          v95 = &v83[v89];
          v96 = v81[1];
          if (v96 == 63)
          {
            v99 = *(v95 + 16);
            v100 = (v95 + 32);
            v260 = vld2q_f64(v100);
            v101 = vzip2q_s64(*v95, v99);
            v227 = vzip1q_s64(*v95, v99);
            v231 = v101;
            v235 = v260.val[0];
            v239 = v260.val[1];
            v97 = 64;
          }

          else if (v96 == 1)
          {
            v98 = vld1q_dup_s16(v95);
            v227 = v98;
            v231 = v98;
            v235 = v98;
            v239 = v98;
            v97 = 2;
          }

          else if (v81[1])
          {
            v102 = v81;
            v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 64, v95, v96);
            v81 = v102;
          }

          else
          {
            v97 = 0;
            v227 = 0uLL;
            v231 = 0uLL;
            v235 = 0uLL;
            v239 = 0uLL;
          }

          v103 = v95 + v97;
          v104 = v81[2];
          if (v104 == 63)
          {
            v107 = *(v103 + 16);
            v108 = (v103 + 32);
            v261 = vld2q_f64(v108);
            v109 = vzip2q_s64(*v103, v107);
            v242 = vzip1q_s64(*v103, v107);
            v246 = v109;
            v250 = v261.val[0];
            v254 = v261.val[1];
            v105 = 64;
          }

          else if (v104 == 1)
          {
            v106 = vld1q_dup_s16(v103);
            v242 = v106;
            v246 = v106;
            v250 = v106;
            v254 = v106;
            v105 = 2;
          }

          else if (v81[2])
          {
            v110 = v81;
            v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 64, v103, v104);
            v81 = v110;
          }

          else
          {
            v105 = 0;
            v242 = 0uLL;
            v246 = 0uLL;
            v250 = 0uLL;
            v254 = 0uLL;
          }

          v111 = v103 + v105;
          v112 = v81[3];
          if (v112 == 63)
          {
            v115 = *(v111 + 16);
            v116 = (v111 + 32);
            v262 = vld2q_f64(v116);
            v117 = vzip2q_s64(*v111, v115);
            v243 = vzip1q_s64(*v111, v115);
            v247 = v117;
            v251 = v262.val[0];
            v255 = v262.val[1];
            v113 = 64;
          }

          else if (v112 == 1)
          {
            v114 = vld1q_dup_s16(v111);
            v243 = v114;
            v247 = v114;
            v251 = v114;
            v255 = v114;
            v113 = 2;
          }

          else if (v81[3])
          {
            v118 = v81;
            v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 64, v111, v112);
            v81 = v118;
          }

          else
          {
            v113 = 0;
            v243 = 0uLL;
            v247 = 0uLL;
            v251 = 0uLL;
            v255 = 0uLL;
          }

          v119 = v111 + v113;
          v120 = v81[4];
          if (v120 == 63)
          {
            v123 = *(v119 + 16);
            v124 = (v119 + 32);
            v263 = vld2q_f64(v124);
            v125 = vzip2q_s64(*v119, v123);
            v228 = vzip1q_s64(*v119, v123);
            v232 = v125;
            v236 = v263.val[0];
            v240 = v263.val[1];
            v121 = 64;
          }

          else if (v120 == 1)
          {
            v122 = vld1q_dup_s16(v119);
            v228 = v122;
            v232 = v122;
            v236 = v122;
            v240 = v122;
            v121 = 2;
          }

          else if (v81[4])
          {
            v126 = v81;
            v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 64, v119, v120);
            v81 = v126;
          }

          else
          {
            v121 = 0;
            v228 = 0uLL;
            v232 = 0uLL;
            v236 = 0uLL;
            v240 = 0uLL;
          }

          v127 = v119 + v121;
          v128 = v81[5];
          if (v128 == 63)
          {
            v131 = *(v127 + 16);
            v132 = (v127 + 32);
            v264 = vld2q_f64(v132);
            v133 = vzip2q_s64(*v127, v131);
            v229 = vzip1q_s64(*v127, v131);
            v233 = v133;
            v237 = v264.val[0];
            v241 = v264.val[1];
            v129 = 64;
          }

          else if (v128 == 1)
          {
            v130 = vld1q_dup_s16(v127);
            v229 = v130;
            v233 = v130;
            v237 = v130;
            v241 = v130;
            v129 = 2;
          }

          else if (v81[5])
          {
            v134 = v81;
            v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 64, v127, v128);
            v81 = v134;
          }

          else
          {
            v129 = 0;
            v229 = 0uLL;
            v233 = 0uLL;
            v237 = 0uLL;
            v241 = 0uLL;
          }

          v135 = v127 + v129;
          v136 = v81[6];
          if (v136 == 63)
          {
            v139 = *(v135 + 16);
            v140 = (v135 + 32);
            v265 = vld2q_f64(v140);
            v141 = vzip2q_s64(*v135, v139);
            v244 = vzip1q_s64(*v135, v139);
            v248 = v141;
            v252 = v265.val[0];
            v256 = v265.val[1];
            v137 = 64;
          }

          else if (v136 == 1)
          {
            v138 = vld1q_dup_s16(v135);
            v244 = v138;
            v248 = v138;
            v252 = v138;
            v256 = v138;
            v137 = 2;
          }

          else if (v81[6])
          {
            v142 = v81;
            v137 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 64, v135, v136);
            v81 = v142;
          }

          else
          {
            v137 = 0;
            v244 = 0uLL;
            v248 = 0uLL;
            v252 = 0uLL;
            v256 = 0uLL;
          }

          v143 = v135 + v137;
          v144 = v81[7];
          if (v144 == 63)
          {
            v147 = *(v143 + 16);
            v148 = (v143 + 32);
            v266 = vld2q_f64(v148);
            v149 = vzip2q_s64(*v143, v147);
            v245 = vzip1q_s64(*v143, v147);
            v249 = v149;
            v253 = v266.val[0];
            v257 = v266.val[1];
            v87 = v43 + 1;
            v145 = v221;
            if (!v221)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v87 = v43 + 1;
            if (v144 == 1)
            {
              v146 = vld1q_dup_s16(v143);
              v245 = v146;
              v249 = v146;
              v253 = v146;
              v257 = v146;
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }

            else if (v81[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 64, v143, v144);
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v245 = 0uLL;
              v249 = 0uLL;
              v253 = 0uLL;
              v257 = 0uLL;
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }
          }

          v150 = v222;
          if (v222)
          {
            v151 = 0;
            v152 = v219 << 6;
            v153 = 4 * v220;
            v154 = &v226.i8[v152 + v153];
            v155 = v217;
            v156 = v218;
            v157 = 4 * v222;
            if (4 * v222)
            {
              v158 = (4 * v222 - 1) >> 32 == 0;
            }

            else
            {
              v158 = 0;
            }

            v159 = !v158;
            v161 = v154 < &v217->i8[4 * v222 + v218 * (v145 - 1)] && v217 < &__dst[64 * v145 + 448 + 64 * v219 + 4 * v222 + v153];
            v162 = v161 || v218 < 0;
            v163 = v157 & 0x1FFFFFFE0;
            v164 = v157 & 0x1FFFFFFF8;
            v165 = (v222 == 1) | v159 | v162;
            v166 = &v227.i8[v152 + v153];
            v167 = v217 + 1;
            v168 = v154;
            v169 = v217;
            do
            {
              v170 = &v155->i8[v151 * v156];
              v171 = &v154[64 * v151];
              if (v165)
              {
                v172 = 0;
                goto LABEL_198;
              }

              if (v150 >= 8)
              {
                v174 = v167;
                v175 = v166;
                v176 = v157 & 0x1FFFFFFE0;
                do
                {
                  v177 = *v174;
                  *(v175 - 1) = v174[-1];
                  *v175 = v177;
                  v175 += 32;
                  v174 += 2;
                  v176 -= 32;
                }

                while (v176);
                if (v157 == v163)
                {
                  goto LABEL_184;
                }

                v173 = v157 & 0x1FFFFFFE0;
                if ((v150 & 6) == 0)
                {
                  v170 += v163;
                  v171 += v163;
                  v172 = v157 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v173 = 0;
              }

              v171 += v164;
              v178 = -8 * ((v150 >> 1) & 0x3FFFFFFF) + v173;
              v179 = (v169->i64 + v173);
              v180 = &v168[v173];
              do
              {
                v181 = *v179++;
                *v180 = v181;
                v180 += 8;
                v178 += 8;
              }

              while (v178);
              if (v157 == v164)
              {
                goto LABEL_184;
              }

              v170 += v164;
              v172 = v157 & 0xFFFFFFF8;
LABEL_198:
              v182 = v172 + 1;
              do
              {
                v183 = *v170++;
                *v171++ = v183;
              }

              while (v157 > v182++);
LABEL_184:
              ++v151;
              v166 += 64;
              v167 = (v167 + v156);
              v169 = (v169 + v156);
              v168 += 64;
            }

            while (v151 != v145);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v226, 64, v215, v216, v223, v224);
LABEL_202:
          if (v213)
          {
            memcpy(v212, v83, 0x200uLL);
          }

          v21 = v43 == v202 >> 4;
          v43 = v87;
          result = v210;
        }

        while (!v21);
        v21 = v18++ == v191;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v247 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v198 = a8;
  v17 = a8 >> 3;
  v181 = a8 + a10 - 1;
  v183 = v181 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v199 = a1;
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
  v202 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v191 = result;
  if (v17 <= v183)
  {
    v190 = a7 + a9 - 1;
    v180 = a7 >> 4;
    if (a7 >> 4 <= v190 >> 4)
    {
      result = a1;
      v200 = (a5 - 1) >> 4;
      v177 = a5 - 1;
      v184 = (a5 - 1) & 0xF;
      v178 = (a6 - 1) & 7;
      v179 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v27 = vcgt_u32(v26, 0x1F0000000FLL);
      v189 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v27);
      v188 = v27;
      v176 = 8 * v19 * v18;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v198)
        {
          v29 = v198;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v181 < v28)
        {
          v28 = v181;
        }

        v197 = 8 * v17;
        v187 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v178;
        v186 = v31;
        v33 = v31 != 8;
        v34 = v180;
        v35 = v178 + 1;
        if (v17 != v179)
        {
          v35 = 8;
          v32 = v33;
        }

        v185 = v32;
        v195 = a3 + (v29 - v198) * a11;
        v196 = v35;
        v194 = v35;
        do
        {
          v36 = 16 * v34;
          v37 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 16 * v34;
          }

          if (v190 < v37)
          {
            v37 = v190;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v200)
          {
            v41 = v184 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v197 >= v198 && v36 >= a7)
          {
            v43 = v39 != v184;
            if (v34 != v200)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v185;
          }

          if (v191)
          {
            v64 = 0;
            v65 = v176 >> (*(result + 57) != 0);
            v66 = 1;
            if (v65 <= 63)
            {
              if (v65 > 15)
              {
                if (v65 == 16)
                {
                  v66 = 0;
                  v67 = 0;
                  v68 = 64;
                  v64 = 128;
                }

                else
                {
                  v67 = 1;
                  v68 = 0;
                  if (v65 == 32)
                  {
                    v66 = 0;
                    v67 = 0;
                    v64 = 64;
                    v68 = 64;
                  }
                }
              }

              else if (v65 == 4)
              {
                v66 = 0;
                v67 = 0;
                v68 = 128;
                v64 = 256;
              }

              else
              {
                v67 = 1;
                v68 = 0;
                if (v65 == 8)
                {
                  v66 = 0;
                  v67 = 0;
                  v64 = 128;
                  v68 = 128;
                }
              }
            }

            else if (v65 <= 255)
            {
              if (v65 == 64)
              {
                v66 = 0;
                v67 = 0;
                v68 = 32;
                v64 = 64;
              }

              else
              {
                v67 = 1;
                v68 = 0;
                if (v65 == 128)
                {
                  v66 = 0;
                  v67 = 0;
                  v64 = 32;
                  v68 = 32;
                }
              }
            }

            else if (v65 == 256)
            {
              v66 = 0;
              v67 = 0;
              v68 = 16;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v67 = 0;
              v64 = 16;
              v68 = 16;
            }

            else
            {
              v67 = 1;
              v68 = 0;
              if (v65 == 1024)
              {
                v68 = 8;
                v64 = 16;
              }
            }

            v164 = (v64 >> 4) - 1;
            if (v66)
            {
              v165 = 0;
            }

            else
            {
              v165 = 32 - __clz(~(-1 << -__clz(v164)));
            }

            v166 = (v68 >> 3) - 1;
            if (v67)
            {
              v167 = 0;
              if (v165)
              {
                goto LABEL_199;
              }
            }

            else
            {
              v167 = 32 - __clz(~(-1 << -__clz(v166)));
              if (v167 | v165)
              {
LABEL_199:
                v168 = 0;
                v169 = 0;
                v170 = v34 & v164;
                v171 = v17 & v166;
                v172 = v167 != 0;
                v173 = v165 != 0;
                v174 = 1;
                do
                {
                  --v167;
                  if (v172)
                  {
                    v169 |= (v174 & v171) << v168++;
                  }

                  else
                  {
                    v167 = 0;
                  }

                  --v165;
                  if (v173)
                  {
                    v169 |= (v174 & v170) << v168++;
                  }

                  else
                  {
                    v165 = 0;
                  }

                  v174 *= 2;
                  --v168;
                  v173 = v165 != 0;
                  v172 = v167 != 0;
                }

                while (v165 | v167);
                v175 = v169 << 9;
                result = v199;
                goto LABEL_211;
              }
            }

            v175 = 0;
LABEL_211:
            v51 = v175 + ((v36 / v64 + v197 / v68 * ((v64 + v177) / v64)) << 14);
            goto LABEL_52;
          }

          if (v189)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v48 = v188.i8[0];
            v47 = v188.i8[4];
            v49 = v189.i32[0];
            v50 = v189.i32[1];
            do
            {
              --v49;
              if (v48)
              {
                v45 |= (v46 & v17) << v44++;
              }

              else
              {
                v49 = 0;
              }

              --v50;
              if (v47)
              {
                v45 |= (v46 & v34) << v44++;
              }

              else
              {
                v50 = 0;
              }

              v46 *= 2;
              --v44;
              v47 = v50 != 0;
              v48 = v49 != 0;
            }

            while (v50 | v49);
            v51 = v45 << 9;
          }

          else
          {
            v51 = 0;
          }

LABEL_52:
          v52 = *(result + 128) >> (*(result + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 15;
          if (v53 < 0x20)
          {
            v54 = 0;
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 4) - 1)));
          }

          v55 = *(result + 132) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 7;
          if (v56 < 0x10)
          {
            v57 = 0;
            if (!v54)
            {
LABEL_77:
              v63 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_77;
            }
          }

          v58 = 0;
          v59 = 0;
          v60 = v54 != 0;
          v61 = v57 != 0;
          v62 = 1;
          do
          {
            --v54;
            if (v60)
            {
              v59 |= (v62 & v34) << v58++;
            }

            else
            {
              v54 = 0;
            }

            --v57;
            if (v61)
            {
              v59 |= (v62 & v17) << v58++;
            }

            else
            {
              v57 = 0;
            }

            v62 *= 2;
            --v58;
            v61 = v57 != 0;
            v60 = v54 != 0;
          }

          while (v57 | v54);
          v63 = 8 * v59;
LABEL_78:
          v69 = (a4 + v63);
          v70 = a7;
          v71 = v195 + 4 * (v38 - a7);
          v72 = (a2 + v51);
          __src = (a2 + v51);
          if (v202)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v194 < 8)))
            {
              v72 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v196);
              goto LABEL_86;
            }

            v73 = v40;
            memcpy(__dst, __src, sizeof(__dst));
            v40 = v73;
            v72 = __dst;
            result = v199;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v194 < 8)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v204 = v72;
          v212 = v41;
          v213 = v196;
          v208 = v187;
          v209 = v38 - v36;
          v205 = v69;
          v206 = v71;
          v207 = a11;
          v210 = v186;
          v211 = v40;
          if ((v42 & 1) == 0)
          {
            v74 = *v69;
            a7 = v70;
            if (v74 == 63)
            {
              v77 = *(v72 + 1);
              v78 = (v72 + 32);
              v248 = vld2q_f64(v78);
              v79 = vzip2q_s64(*v72, v77);
              v215 = vzip1q_s64(*v72, v77);
              v219 = v79;
              v223 = v248.val[0];
              v227 = v248.val[1];
              v75 = 64;
            }

            else if (v74 == 1)
            {
              v76 = vld1q_dup_s16(v72);
              v215 = v76;
              v219 = v76;
              v223 = v76;
              v227 = v76;
              v75 = 2;
            }

            else if (*v69)
            {
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v215, 64, v72, v74);
            }

            else
            {
              v75 = 0;
              v215 = 0uLL;
              v219 = 0uLL;
              v223 = 0uLL;
              v227 = 0uLL;
            }

            v80 = &v72[v75];
            v81 = v69[1];
            if (v81 == 63)
            {
              v84 = *(v80 + 16);
              v85 = (v80 + 32);
              v249 = vld2q_f64(v85);
              v86 = vzip2q_s64(*v80, v84);
              v216 = vzip1q_s64(*v80, v84);
              v220 = v86;
              v224 = v249.val[0];
              v228 = v249.val[1];
              v82 = 64;
            }

            else if (v81 == 1)
            {
              v83 = vld1q_dup_s16(v80);
              v216 = v83;
              v220 = v83;
              v224 = v83;
              v228 = v83;
              v82 = 2;
            }

            else if (v69[1])
            {
              v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v216, 64, v80, v81);
            }

            else
            {
              v82 = 0;
              v216 = 0uLL;
              v220 = 0uLL;
              v224 = 0uLL;
              v228 = 0uLL;
            }

            v87 = v80 + v82;
            v88 = v69[2];
            if (v88 == 63)
            {
              v91 = *(v87 + 16);
              v92 = (v87 + 32);
              v250 = vld2q_f64(v92);
              v93 = vzip2q_s64(*v87, v91);
              v231 = vzip1q_s64(*v87, v91);
              v235 = v93;
              v239 = v250.val[0];
              v243 = v250.val[1];
              v89 = 64;
            }

            else if (v88 == 1)
            {
              v90 = vld1q_dup_s16(v87);
              v231 = v90;
              v235 = v90;
              v239 = v90;
              v243 = v90;
              v89 = 2;
            }

            else if (v69[2])
            {
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v231, 64, v87, v88);
            }

            else
            {
              v89 = 0;
              v231 = 0uLL;
              v235 = 0uLL;
              v239 = 0uLL;
              v243 = 0uLL;
            }

            v94 = v87 + v89;
            v95 = v69[3];
            if (v95 == 63)
            {
              v98 = *(v94 + 16);
              v99 = (v94 + 32);
              v251 = vld2q_f64(v99);
              v100 = vzip2q_s64(*v94, v98);
              v232 = vzip1q_s64(*v94, v98);
              v236 = v100;
              v240 = v251.val[0];
              v244 = v251.val[1];
              v96 = 64;
            }

            else if (v95 == 1)
            {
              v97 = vld1q_dup_s16(v94);
              v232 = v97;
              v236 = v97;
              v240 = v97;
              v244 = v97;
              v96 = 2;
            }

            else if (v69[3])
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 64, v94, v95);
            }

            else
            {
              v96 = 0;
              v232 = 0uLL;
              v236 = 0uLL;
              v240 = 0uLL;
              v244 = 0uLL;
            }

            v101 = v94 + v96;
            v102 = v69[4];
            if (v102 == 63)
            {
              v105 = *(v101 + 16);
              v106 = (v101 + 32);
              v252 = vld2q_f64(v106);
              v107 = vzip2q_s64(*v101, v105);
              v217 = vzip1q_s64(*v101, v105);
              v221 = v107;
              v225 = v252.val[0];
              v229 = v252.val[1];
              v103 = 64;
            }

            else if (v102 == 1)
            {
              v104 = vld1q_dup_s16(v101);
              v217 = v104;
              v221 = v104;
              v225 = v104;
              v229 = v104;
              v103 = 2;
            }

            else if (v69[4])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 64, v101, v102);
            }

            else
            {
              v103 = 0;
              v217 = 0uLL;
              v221 = 0uLL;
              v225 = 0uLL;
              v229 = 0uLL;
            }

            v108 = v101 + v103;
            v109 = v69[5];
            if (v109 == 63)
            {
              v112 = *(v108 + 16);
              v113 = (v108 + 32);
              v253 = vld2q_f64(v113);
              v114 = vzip2q_s64(*v108, v112);
              v218 = vzip1q_s64(*v108, v112);
              v222 = v114;
              v226 = v253.val[0];
              v230 = v253.val[1];
              v110 = 64;
            }

            else if (v109 == 1)
            {
              v111 = vld1q_dup_s16(v108);
              v218 = v111;
              v222 = v111;
              v226 = v111;
              v230 = v111;
              v110 = 2;
            }

            else if (v69[5])
            {
              v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v218, 64, v108, v109);
            }

            else
            {
              v110 = 0;
              v218 = 0uLL;
              v222 = 0uLL;
              v226 = 0uLL;
              v230 = 0uLL;
            }

            v115 = v108 + v110;
            v116 = v69[6];
            if (v116 == 63)
            {
              v119 = *(v115 + 16);
              v120 = (v115 + 32);
              v254 = vld2q_f64(v120);
              v121 = vzip2q_s64(*v115, v119);
              v233 = vzip1q_s64(*v115, v119);
              v237 = v121;
              v241 = v254.val[0];
              v245 = v254.val[1];
              v117 = 64;
            }

            else if (v116 == 1)
            {
              v118 = vld1q_dup_s16(v115);
              v233 = v118;
              v237 = v118;
              v241 = v118;
              v245 = v118;
              v117 = 2;
            }

            else if (v69[6])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 64, v115, v116);
            }

            else
            {
              v117 = 0;
              v233 = 0uLL;
              v237 = 0uLL;
              v241 = 0uLL;
              v245 = 0uLL;
            }

            v122 = v115 + v117;
            v123 = v69[7];
            if (v123 == 63)
            {
              v126 = *(v122 + 16);
              v127 = (v122 + 32);
              v255 = vld2q_f64(v127);
              v128 = vzip2q_s64(*v122, v126);
              v234 = vzip1q_s64(*v122, v126);
              v238 = v128;
              v242 = v255.val[0];
              v246 = v255.val[1];
              v124 = v210;
              if (v210)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v123 != 1)
              {
                if (v69[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 64, v122, v123);
                  v124 = v210;
                  if (!v210)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v234 = 0uLL;
                  v238 = 0uLL;
                  v242 = 0uLL;
                  v246 = 0uLL;
                  v124 = v210;
                  if (!v210)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v129 = v211;
                if (!v211)
                {
                  goto LABEL_178;
                }

                v130 = 0;
                v131 = v208 << 6;
                v132 = 4 * v209;
                v133 = &v215.i8[v131 + v132];
                v134 = v206;
                v135 = v207;
                v136 = 4 * v211;
                if (4 * v211)
                {
                  v137 = (4 * v211 - 1) >> 32 == 0;
                }

                else
                {
                  v137 = 0;
                }

                v138 = !v137;
                v140 = v133 < v206 + v207 * (v124 - 1) + 4 * v211 && v206 < &__dst[64 * v124 + 448 + 64 * v208 + 4 * v211 + v132];
                v141 = v140 || v207 < 0;
                v142 = v136 & 0x1FFFFFFE0;
                v143 = v136 & 0x1FFFFFFF8;
                v144 = (v211 == 1) | v138 | v141;
                v145 = &v216.i8[v131 + v132];
                v146 = (v206 + 16);
                v147 = v133;
                v148 = v206;
                while (2)
                {
                  v149 = (v134 + v130 * v135);
                  v150 = &v133[64 * v130];
                  if (v144)
                  {
                    v151 = 0;
LABEL_175:
                    v161 = v151 + 1;
                    do
                    {
                      v162 = *v149++;
                      *v150++ = v162;
                    }

                    while (v136 > v161++);
                  }

                  else
                  {
                    if (v129 >= 8)
                    {
                      v153 = v146;
                      v154 = v145;
                      v155 = v136 & 0x1FFFFFFE0;
                      do
                      {
                        v156 = *v153;
                        *(v154 - 1) = *(v153 - 1);
                        *v154 = v156;
                        v154 += 32;
                        v153 += 2;
                        v155 -= 32;
                      }

                      while (v155);
                      if (v136 == v142)
                      {
                        goto LABEL_161;
                      }

                      v152 = v136 & 0x1FFFFFFE0;
                      if ((v129 & 6) == 0)
                      {
                        v149 += v142;
                        v150 += v142;
                        v151 = v136 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v152 = 0;
                    }

                    v150 += v143;
                    v157 = -8 * ((v129 >> 1) & 0x3FFFFFFF) + v152;
                    v158 = (v148 + v152);
                    v159 = &v147[v152];
                    do
                    {
                      v160 = *v158++;
                      *v159 = v160;
                      v159 += 8;
                      v157 += 8;
                    }

                    while (v157);
                    if (v136 != v143)
                    {
                      v149 += v143;
                      v151 = v136 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v130;
                  v145 += 64;
                  v146 = (v146 + v135);
                  v148 += v135;
                  v147 += 64;
                  if (v130 == v124)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v125 = vld1q_dup_s16(v122);
              v234 = v125;
              v238 = v125;
              v242 = v125;
              v246 = v125;
              v124 = v210;
              if (v210)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v215, 64, v204, v205, v212, v213);
            if (!v202)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v70;
          if (!v202)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v72, 0x200uLL);
LABEL_26:
          v21 = v34++ == v190 >> 4;
          result = v199;
        }

        while (!v21);
        v21 = v17++ == v183;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v247 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v198 = a8;
  v17 = a8 >> 3;
  v181 = a8 + a10 - 1;
  v183 = v181 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v199 = a1;
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
  v202 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v191 = result;
  if (v17 <= v183)
  {
    v190 = a7 + a9 - 1;
    v180 = a7 >> 4;
    if (a7 >> 4 <= v190 >> 4)
    {
      result = a1;
      v200 = (a5 - 1) >> 4;
      v177 = a5 - 1;
      v184 = (a5 - 1) & 0xF;
      v178 = (a6 - 1) & 7;
      v179 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v27 = vcgt_u32(v26, 0x1F0000000FLL);
      v189 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v27);
      v188 = v27;
      v176 = 8 * v19 * v18;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v198)
        {
          v29 = v198;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v181 < v28)
        {
          v28 = v181;
        }

        v197 = 8 * v17;
        v187 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v178;
        v186 = v31;
        v33 = v31 != 8;
        v34 = v180;
        v35 = v178 + 1;
        if (v17 != v179)
        {
          v35 = 8;
          v32 = v33;
        }

        v185 = v32;
        v195 = a3 + (v29 - v198) * a11;
        v196 = v35;
        v194 = v35;
        do
        {
          v36 = 16 * v34;
          v37 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 16 * v34;
          }

          if (v190 < v37)
          {
            v37 = v190;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v200)
          {
            v41 = v184 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v197 >= v198 && v36 >= a7)
          {
            v43 = v39 != v184;
            if (v34 != v200)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v185;
          }

          if (v191)
          {
            v64 = 0;
            v65 = v176 >> (*(result + 57) != 0);
            v66 = 1;
            if (v65 <= 63)
            {
              if (v65 > 15)
              {
                if (v65 == 16)
                {
                  v66 = 0;
                  v67 = 0;
                  v68 = 64;
                  v64 = 128;
                }

                else
                {
                  v67 = 1;
                  v68 = 0;
                  if (v65 == 32)
                  {
                    v66 = 0;
                    v67 = 0;
                    v64 = 64;
                    v68 = 64;
                  }
                }
              }

              else if (v65 == 4)
              {
                v66 = 0;
                v67 = 0;
                v68 = 128;
                v64 = 256;
              }

              else
              {
                v67 = 1;
                v68 = 0;
                if (v65 == 8)
                {
                  v66 = 0;
                  v67 = 0;
                  v64 = 128;
                  v68 = 128;
                }
              }
            }

            else if (v65 <= 255)
            {
              if (v65 == 64)
              {
                v66 = 0;
                v67 = 0;
                v68 = 32;
                v64 = 64;
              }

              else
              {
                v67 = 1;
                v68 = 0;
                if (v65 == 128)
                {
                  v66 = 0;
                  v67 = 0;
                  v64 = 32;
                  v68 = 32;
                }
              }
            }

            else if (v65 == 256)
            {
              v66 = 0;
              v67 = 0;
              v68 = 16;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v67 = 0;
              v64 = 16;
              v68 = 16;
            }

            else
            {
              v67 = 1;
              v68 = 0;
              if (v65 == 1024)
              {
                v68 = 8;
                v64 = 16;
              }
            }

            v164 = (v64 >> 4) - 1;
            if (v66)
            {
              v165 = 0;
            }

            else
            {
              v165 = 32 - __clz(~(-1 << -__clz(v164)));
            }

            v166 = (v68 >> 3) - 1;
            if (v67)
            {
              v167 = 0;
              if (v165)
              {
                goto LABEL_199;
              }
            }

            else
            {
              v167 = 32 - __clz(~(-1 << -__clz(v166)));
              if (v167 | v165)
              {
LABEL_199:
                v168 = 0;
                v169 = 0;
                v170 = v34 & v164;
                v171 = v17 & v166;
                v172 = v167 != 0;
                v173 = v165 != 0;
                v174 = 1;
                do
                {
                  --v167;
                  if (v172)
                  {
                    v169 |= (v174 & v171) << v168++;
                  }

                  else
                  {
                    v167 = 0;
                  }

                  --v165;
                  if (v173)
                  {
                    v169 |= (v174 & v170) << v168++;
                  }

                  else
                  {
                    v165 = 0;
                  }

                  v174 *= 2;
                  --v168;
                  v173 = v165 != 0;
                  v172 = v167 != 0;
                }

                while (v165 | v167);
                v175 = v169 << 9;
                result = v199;
                goto LABEL_211;
              }
            }

            v175 = 0;
LABEL_211:
            v51 = v175 + ((v36 / v64 + v197 / v68 * ((v64 + v177) / v64)) << 14);
            goto LABEL_52;
          }

          if (v189)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v48 = v188.i8[0];
            v47 = v188.i8[4];
            v49 = v189.i32[0];
            v50 = v189.i32[1];
            do
            {
              --v49;
              if (v48)
              {
                v45 |= (v46 & v17) << v44++;
              }

              else
              {
                v49 = 0;
              }

              --v50;
              if (v47)
              {
                v45 |= (v46 & v34) << v44++;
              }

              else
              {
                v50 = 0;
              }

              v46 *= 2;
              --v44;
              v47 = v50 != 0;
              v48 = v49 != 0;
            }

            while (v50 | v49);
            v51 = v45 << 9;
          }

          else
          {
            v51 = 0;
          }

LABEL_52:
          v52 = *(result + 128) >> (*(result + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 15;
          if (v53 < 0x20)
          {
            v54 = 0;
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 4) - 1)));
          }

          v55 = *(result + 132) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 7;
          if (v56 < 0x10)
          {
            v57 = 0;
            if (!v54)
            {
LABEL_77:
              v63 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_77;
            }
          }

          v58 = 0;
          v59 = 0;
          v60 = v54 != 0;
          v61 = v57 != 0;
          v62 = 1;
          do
          {
            --v54;
            if (v60)
            {
              v59 |= (v62 & v34) << v58++;
            }

            else
            {
              v54 = 0;
            }

            --v57;
            if (v61)
            {
              v59 |= (v62 & v17) << v58++;
            }

            else
            {
              v57 = 0;
            }

            v62 *= 2;
            --v58;
            v61 = v57 != 0;
            v60 = v54 != 0;
          }

          while (v57 | v54);
          v63 = 8 * v59;
LABEL_78:
          v69 = (a4 + v63);
          v70 = a7;
          v71 = (v195 + 4 * (v38 - a7));
          v72 = (a2 + v51);
          __src = (a2 + v51);
          if (v202)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v194 < 8)))
            {
              v72 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v196);
              goto LABEL_86;
            }

            v73 = v40;
            memcpy(__dst, __src, sizeof(__dst));
            v40 = v73;
            v72 = __dst;
            result = v199;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v194 < 8)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v204 = v72;
          v212 = v41;
          v213 = v196;
          v208 = v187;
          v209 = v38 - v36;
          v205 = v69;
          v206 = v71;
          v207 = a11;
          v210 = v186;
          v211 = v40;
          if ((v42 & 1) == 0)
          {
            v74 = *v69;
            a7 = v70;
            if (v74 == 63)
            {
              v77 = *(v72 + 1);
              v78 = (v72 + 32);
              v248 = vld2q_f64(v78);
              v79 = vzip2q_s64(*v72, v77);
              v215 = vzip1q_s64(*v72, v77);
              v219 = v79;
              v223 = v248.val[0];
              v227 = v248.val[1];
              v75 = 64;
            }

            else if (v74 == 1)
            {
              v76 = vld1q_dup_s16(v72);
              v215 = v76;
              v219 = v76;
              v223 = v76;
              v227 = v76;
              v75 = 2;
            }

            else if (*v69)
            {
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v215, 64, v72, v74);
            }

            else
            {
              v75 = 0;
              v215 = 0uLL;
              v219 = 0uLL;
              v223 = 0uLL;
              v227 = 0uLL;
            }

            v80 = &v72[v75];
            v81 = v69[1];
            if (v81 == 63)
            {
              v84 = *(v80 + 16);
              v85 = (v80 + 32);
              v249 = vld2q_f64(v85);
              v86 = vzip2q_s64(*v80, v84);
              v216 = vzip1q_s64(*v80, v84);
              v220 = v86;
              v224 = v249.val[0];
              v228 = v249.val[1];
              v82 = 64;
            }

            else if (v81 == 1)
            {
              v83 = vld1q_dup_s16(v80);
              v216 = v83;
              v220 = v83;
              v224 = v83;
              v228 = v83;
              v82 = 2;
            }

            else if (v69[1])
            {
              v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v216, 64, v80, v81);
            }

            else
            {
              v82 = 0;
              v216 = 0uLL;
              v220 = 0uLL;
              v224 = 0uLL;
              v228 = 0uLL;
            }

            v87 = v80 + v82;
            v88 = v69[2];
            if (v88 == 63)
            {
              v91 = *(v87 + 16);
              v92 = (v87 + 32);
              v250 = vld2q_f64(v92);
              v93 = vzip2q_s64(*v87, v91);
              v231 = vzip1q_s64(*v87, v91);
              v235 = v93;
              v239 = v250.val[0];
              v243 = v250.val[1];
              v89 = 64;
            }

            else if (v88 == 1)
            {
              v90 = vld1q_dup_s16(v87);
              v231 = v90;
              v235 = v90;
              v239 = v90;
              v243 = v90;
              v89 = 2;
            }

            else if (v69[2])
            {
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v231, 64, v87, v88);
            }

            else
            {
              v89 = 0;
              v231 = 0uLL;
              v235 = 0uLL;
              v239 = 0uLL;
              v243 = 0uLL;
            }

            v94 = v87 + v89;
            v95 = v69[3];
            if (v95 == 63)
            {
              v98 = *(v94 + 16);
              v99 = (v94 + 32);
              v251 = vld2q_f64(v99);
              v100 = vzip2q_s64(*v94, v98);
              v232 = vzip1q_s64(*v94, v98);
              v236 = v100;
              v240 = v251.val[0];
              v244 = v251.val[1];
              v96 = 64;
            }

            else if (v95 == 1)
            {
              v97 = vld1q_dup_s16(v94);
              v232 = v97;
              v236 = v97;
              v240 = v97;
              v244 = v97;
              v96 = 2;
            }

            else if (v69[3])
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 64, v94, v95);
            }

            else
            {
              v96 = 0;
              v232 = 0uLL;
              v236 = 0uLL;
              v240 = 0uLL;
              v244 = 0uLL;
            }

            v101 = v94 + v96;
            v102 = v69[4];
            if (v102 == 63)
            {
              v105 = *(v101 + 16);
              v106 = (v101 + 32);
              v252 = vld2q_f64(v106);
              v107 = vzip2q_s64(*v101, v105);
              v217 = vzip1q_s64(*v101, v105);
              v221 = v107;
              v225 = v252.val[0];
              v229 = v252.val[1];
              v103 = 64;
            }

            else if (v102 == 1)
            {
              v104 = vld1q_dup_s16(v101);
              v217 = v104;
              v221 = v104;
              v225 = v104;
              v229 = v104;
              v103 = 2;
            }

            else if (v69[4])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 64, v101, v102);
            }

            else
            {
              v103 = 0;
              v217 = 0uLL;
              v221 = 0uLL;
              v225 = 0uLL;
              v229 = 0uLL;
            }

            v108 = v101 + v103;
            v109 = v69[5];
            if (v109 == 63)
            {
              v112 = *(v108 + 16);
              v113 = (v108 + 32);
              v253 = vld2q_f64(v113);
              v114 = vzip2q_s64(*v108, v112);
              v218 = vzip1q_s64(*v108, v112);
              v222 = v114;
              v226 = v253.val[0];
              v230 = v253.val[1];
              v110 = 64;
            }

            else if (v109 == 1)
            {
              v111 = vld1q_dup_s16(v108);
              v218 = v111;
              v222 = v111;
              v226 = v111;
              v230 = v111;
              v110 = 2;
            }

            else if (v69[5])
            {
              v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v218, 64, v108, v109);
            }

            else
            {
              v110 = 0;
              v218 = 0uLL;
              v222 = 0uLL;
              v226 = 0uLL;
              v230 = 0uLL;
            }

            v115 = v108 + v110;
            v116 = v69[6];
            if (v116 == 63)
            {
              v119 = *(v115 + 16);
              v120 = (v115 + 32);
              v254 = vld2q_f64(v120);
              v121 = vzip2q_s64(*v115, v119);
              v233 = vzip1q_s64(*v115, v119);
              v237 = v121;
              v241 = v254.val[0];
              v245 = v254.val[1];
              v117 = 64;
            }

            else if (v116 == 1)
            {
              v118 = vld1q_dup_s16(v115);
              v233 = v118;
              v237 = v118;
              v241 = v118;
              v245 = v118;
              v117 = 2;
            }

            else if (v69[6])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 64, v115, v116);
            }

            else
            {
              v117 = 0;
              v233 = 0uLL;
              v237 = 0uLL;
              v241 = 0uLL;
              v245 = 0uLL;
            }

            v122 = v115 + v117;
            v123 = v69[7];
            if (v123 == 63)
            {
              v126 = *(v122 + 16);
              v127 = (v122 + 32);
              v255 = vld2q_f64(v127);
              v128 = vzip2q_s64(*v122, v126);
              v234 = vzip1q_s64(*v122, v126);
              v238 = v128;
              v242 = v255.val[0];
              v246 = v255.val[1];
              v124 = v210;
              if (v210)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v123 != 1)
              {
                if (v69[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 64, v122, v123);
                  v124 = v210;
                  if (!v210)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v234 = 0uLL;
                  v238 = 0uLL;
                  v242 = 0uLL;
                  v246 = 0uLL;
                  v124 = v210;
                  if (!v210)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v129 = v211;
                if (!v211)
                {
                  goto LABEL_178;
                }

                v130 = 0;
                v131 = v208 << 6;
                v132 = 4 * v209;
                v133 = &v215.i8[v131 + v132];
                v134 = v206;
                v135 = v207;
                v136 = 4 * v211;
                if (4 * v211)
                {
                  v137 = (4 * v211 - 1) >> 32 == 0;
                }

                else
                {
                  v137 = 0;
                }

                v138 = !v137;
                v140 = v133 < &v206->i8[4 * v211 + v207 * (v124 - 1)] && v206 < &__dst[64 * v124 + 448 + 64 * v208 + 4 * v211 + v132];
                v141 = v140 || v207 < 0;
                v142 = v136 & 0x1FFFFFFE0;
                v143 = v136 & 0x1FFFFFFF8;
                v144 = (v211 == 1) | v138 | v141;
                v145 = &v216.i8[v131 + v132];
                v146 = v206 + 1;
                v147 = v133;
                v148 = v206;
                while (2)
                {
                  v149 = &v134->i8[v130 * v135];
                  v150 = &v133[64 * v130];
                  if (v144)
                  {
                    v151 = 0;
LABEL_175:
                    v161 = v151 + 1;
                    do
                    {
                      v162 = *v149++;
                      *v150++ = v162;
                    }

                    while (v136 > v161++);
                  }

                  else
                  {
                    if (v129 >= 8)
                    {
                      v153 = v146;
                      v154 = v145;
                      v155 = v136 & 0x1FFFFFFE0;
                      do
                      {
                        v156 = *v153;
                        *(v154 - 1) = v153[-1];
                        *v154 = v156;
                        v154 += 32;
                        v153 += 2;
                        v155 -= 32;
                      }

                      while (v155);
                      if (v136 == v142)
                      {
                        goto LABEL_161;
                      }

                      v152 = v136 & 0x1FFFFFFE0;
                      if ((v129 & 6) == 0)
                      {
                        v149 += v142;
                        v150 += v142;
                        v151 = v136 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v152 = 0;
                    }

                    v150 += v143;
                    v157 = -8 * ((v129 >> 1) & 0x3FFFFFFF) + v152;
                    v158 = (v148->i64 + v152);
                    v159 = &v147[v152];
                    do
                    {
                      v160 = *v158++;
                      *v159 = v160;
                      v159 += 8;
                      v157 += 8;
                    }

                    while (v157);
                    if (v136 != v143)
                    {
                      v149 += v143;
                      v151 = v136 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v130;
                  v145 += 64;
                  v146 = (v146 + v135);
                  v148 = (v148 + v135);
                  v147 += 64;
                  if (v130 == v124)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v125 = vld1q_dup_s16(v122);
              v234 = v125;
              v238 = v125;
              v242 = v125;
              v246 = v125;
              v124 = v210;
              if (v210)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v215, 64, v204, v205, v212, v213);
            if (!v202)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v70;
          if (!v202)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v72, 0x200uLL);
LABEL_26:
          v21 = v34++ == v190 >> 4;
          result = v199;
        }

        while (!v21);
        v21 = v17++ == v183;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v258 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v209 = a8;
  v192 = a8 + a10 - 1;
  v210 = a1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 3;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v191 = v192 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v213 = v24;
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
      v203 = 0;
LABEL_32:
      v200 = v27 - 4;
      v195 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v189 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v203 = v32 >= v26;
    goto LABEL_32;
  }

  v203 = 0;
  v189 = 0;
  v195 = 0;
  v200 = 0;
LABEL_33:
  if (v18 <= v191)
  {
    v202 = a7 + a9 - 1;
    v188 = a7 >> 4;
    if (a7 >> 4 <= v202 >> 4)
    {
      v211 = v19 >> 4;
      v196 = v19 & 0xF;
      v186 = v20 & 7;
      v187 = v20 >> 3;
      v185 = ~(-1 << v195);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v194 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v193 = v35;
      v201 = a7;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v209)
        {
          v37 = v209;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v192 < v36)
        {
          v36 = v192;
        }

        v199 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v186;
        v198 = v39;
        v41 = v39 != 8;
        v42 = v186 + 1;
        if (v18 != v187)
        {
          v42 = 8;
          v40 = v41;
        }

        v197 = v40;
        v43 = v188;
        v44 = v18 & v185;
        v207 = a3 + (v37 - v209) * a11;
        v208 = v42;
        v206 = v42;
        do
        {
          v45 = 16 * v43;
          v46 = 16 * (v43 + 1) - 1;
          if (16 * v43 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 16 * v43;
          }

          if (v202 < v46)
          {
            v46 = v202;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v211)
          {
            v50 = v196 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (8 * v18 >= v209 && v45 >= a7)
          {
            v52 = v48 != v196;
            if (v43 != v211)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v197;
          }

          if (v203)
          {
            if (v200 | v195)
            {
              v53 = 0;
              v54 = 0;
              v55 = v200 != 0;
              v56 = 1;
              v58 = v195 != 0;
              v57 = v195;
              v59 = v200;
              do
              {
                --v57;
                if (v58)
                {
                  v54 |= (v44 & v56) << v53++;
                }

                else
                {
                  v57 = 0;
                }

                --v59;
                if (v55)
                {
                  v54 |= (v43 & ~(-1 << v200) & v56) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                v56 *= 2;
                --v53;
                v55 = v59 != 0;
                v58 = v57 != 0;
              }

              while (v59 | v57);
              v60 = v54 << 9;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v200) + (v18 >> v195) * v189);
          }

          else if (v194)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v193.i8[0];
            v64 = v193.i8[4];
            v66 = v194.i32[0];
            v67 = v194.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v18) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v43) << v61++;
              }

              else
              {
                v67 = 0;
              }

              v63 *= 2;
              --v61;
              v64 = v67 != 0;
              v65 = v66 != 0;
            }

            while (v67 | v66);
            v68 = v62 << 9;
          }

          else
          {
            v68 = 0;
          }

          v69 = *(result + 128) >> (*(result + 144) + a12);
          if (v69 <= 1)
          {
            v69 = 1;
          }

          v70 = v69 + 15;
          if (v70 < 0x20)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 4) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 7;
          if (v73 < 0x10)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
          }

          if (v74 | v71)
          {
            v75 = 0;
            v76 = 0;
            v77 = v71 != 0;
            v78 = v74 != 0;
            v79 = 1;
            do
            {
              --v71;
              if (v77)
              {
                v76 |= (v79 & v43) << v75++;
              }

              else
              {
                v71 = 0;
              }

              --v74;
              if (v78)
              {
                v76 |= (v79 & v18) << v75++;
              }

              else
              {
                v74 = 0;
              }

              v79 *= 2;
              --v75;
              v78 = v74 != 0;
              v77 = v71 != 0;
            }

            while (v74 | v71);
            v80 = 8 * v76;
          }

          else
          {
            v80 = 0;
          }

          v81 = (a4 + v80);
          v82 = v207 + 4 * (v47 - a7);
          v212 = (a2 + v68);
          if (v213)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v206 < 8)))
            {
              goto LABEL_109;
            }

            v84 = v49;
            v85 = (a4 + v80);
            v86 = v50;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v49 = v84;
            v44 = v18 & v185;
            LOBYTE(v50) = v86;
            v81 = v85;
            result = v210;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v206 < 8)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v208);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v215 = v83;
          v223 = v50;
          v224 = v208;
          v219 = v199;
          v220 = v47 - v45;
          v216 = v81;
          v217 = v82;
          v218 = a11;
          v221 = v198;
          v222 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v201;
            v87 = v43 + 1;
            goto LABEL_202;
          }

          v88 = *v81;
          a7 = v201;
          if (v88 == 63)
          {
            v91 = *(v83 + 1);
            v92 = (v83 + 32);
            v259 = vld2q_f64(v92);
            v93 = vzip2q_s64(*v83, v91);
            v226 = vzip1q_s64(*v83, v91);
            v230 = v93;
            v234 = v259.val[0];
            v238 = v259.val[1];
            v89 = 64;
          }

          else if (v88 == 1)
          {
            v90 = vld1q_dup_s16(v83);
            v226 = v90;
            v230 = v90;
            v234 = v90;
            v238 = v90;
            v89 = 2;
          }

          else if (*v81)
          {
            v94 = v81;
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 64, v83, v88);
            v81 = v94;
          }

          else
          {
            v89 = 0;
            v226 = 0uLL;
            v230 = 0uLL;
            v234 = 0uLL;
            v238 = 0uLL;
          }

          v95 = &v83[v89];
          v96 = v81[1];
          if (v96 == 63)
          {
            v99 = *(v95 + 16);
            v100 = (v95 + 32);
            v260 = vld2q_f64(v100);
            v101 = vzip2q_s64(*v95, v99);
            v227 = vzip1q_s64(*v95, v99);
            v231 = v101;
            v235 = v260.val[0];
            v239 = v260.val[1];
            v97 = 64;
          }

          else if (v96 == 1)
          {
            v98 = vld1q_dup_s16(v95);
            v227 = v98;
            v231 = v98;
            v235 = v98;
            v239 = v98;
            v97 = 2;
          }

          else if (v81[1])
          {
            v102 = v81;
            v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 64, v95, v96);
            v81 = v102;
          }

          else
          {
            v97 = 0;
            v227 = 0uLL;
            v231 = 0uLL;
            v235 = 0uLL;
            v239 = 0uLL;
          }

          v103 = v95 + v97;
          v104 = v81[2];
          if (v104 == 63)
          {
            v107 = *(v103 + 16);
            v108 = (v103 + 32);
            v261 = vld2q_f64(v108);
            v109 = vzip2q_s64(*v103, v107);
            v242 = vzip1q_s64(*v103, v107);
            v246 = v109;
            v250 = v261.val[0];
            v254 = v261.val[1];
            v105 = 64;
          }

          else if (v104 == 1)
          {
            v106 = vld1q_dup_s16(v103);
            v242 = v106;
            v246 = v106;
            v250 = v106;
            v254 = v106;
            v105 = 2;
          }

          else if (v81[2])
          {
            v110 = v81;
            v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 64, v103, v104);
            v81 = v110;
          }

          else
          {
            v105 = 0;
            v242 = 0uLL;
            v246 = 0uLL;
            v250 = 0uLL;
            v254 = 0uLL;
          }

          v111 = v103 + v105;
          v112 = v81[3];
          if (v112 == 63)
          {
            v115 = *(v111 + 16);
            v116 = (v111 + 32);
            v262 = vld2q_f64(v116);
            v117 = vzip2q_s64(*v111, v115);
            v243 = vzip1q_s64(*v111, v115);
            v247 = v117;
            v251 = v262.val[0];
            v255 = v262.val[1];
            v113 = 64;
          }

          else if (v112 == 1)
          {
            v114 = vld1q_dup_s16(v111);
            v243 = v114;
            v247 = v114;
            v251 = v114;
            v255 = v114;
            v113 = 2;
          }

          else if (v81[3])
          {
            v118 = v81;
            v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 64, v111, v112);
            v81 = v118;
          }

          else
          {
            v113 = 0;
            v243 = 0uLL;
            v247 = 0uLL;
            v251 = 0uLL;
            v255 = 0uLL;
          }

          v119 = v111 + v113;
          v120 = v81[4];
          if (v120 == 63)
          {
            v123 = *(v119 + 16);
            v124 = (v119 + 32);
            v263 = vld2q_f64(v124);
            v125 = vzip2q_s64(*v119, v123);
            v228 = vzip1q_s64(*v119, v123);
            v232 = v125;
            v236 = v263.val[0];
            v240 = v263.val[1];
            v121 = 64;
          }

          else if (v120 == 1)
          {
            v122 = vld1q_dup_s16(v119);
            v228 = v122;
            v232 = v122;
            v236 = v122;
            v240 = v122;
            v121 = 2;
          }

          else if (v81[4])
          {
            v126 = v81;
            v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 64, v119, v120);
            v81 = v126;
          }

          else
          {
            v121 = 0;
            v228 = 0uLL;
            v232 = 0uLL;
            v236 = 0uLL;
            v240 = 0uLL;
          }

          v127 = v119 + v121;
          v128 = v81[5];
          if (v128 == 63)
          {
            v131 = *(v127 + 16);
            v132 = (v127 + 32);
            v264 = vld2q_f64(v132);
            v133 = vzip2q_s64(*v127, v131);
            v229 = vzip1q_s64(*v127, v131);
            v233 = v133;
            v237 = v264.val[0];
            v241 = v264.val[1];
            v129 = 64;
          }

          else if (v128 == 1)
          {
            v130 = vld1q_dup_s16(v127);
            v229 = v130;
            v233 = v130;
            v237 = v130;
            v241 = v130;
            v129 = 2;
          }

          else if (v81[5])
          {
            v134 = v81;
            v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 64, v127, v128);
            v81 = v134;
          }

          else
          {
            v129 = 0;
            v229 = 0uLL;
            v233 = 0uLL;
            v237 = 0uLL;
            v241 = 0uLL;
          }

          v135 = v127 + v129;
          v136 = v81[6];
          if (v136 == 63)
          {
            v139 = *(v135 + 16);
            v140 = (v135 + 32);
            v265 = vld2q_f64(v140);
            v141 = vzip2q_s64(*v135, v139);
            v244 = vzip1q_s64(*v135, v139);
            v248 = v141;
            v252 = v265.val[0];
            v256 = v265.val[1];
            v137 = 64;
          }

          else if (v136 == 1)
          {
            v138 = vld1q_dup_s16(v135);
            v244 = v138;
            v248 = v138;
            v252 = v138;
            v256 = v138;
            v137 = 2;
          }

          else if (v81[6])
          {
            v142 = v81;
            v137 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 64, v135, v136);
            v81 = v142;
          }

          else
          {
            v137 = 0;
            v244 = 0uLL;
            v248 = 0uLL;
            v252 = 0uLL;
            v256 = 0uLL;
          }

          v143 = v135 + v137;
          v144 = v81[7];
          if (v144 == 63)
          {
            v147 = *(v143 + 16);
            v148 = (v143 + 32);
            v266 = vld2q_f64(v148);
            v149 = vzip2q_s64(*v143, v147);
            v245 = vzip1q_s64(*v143, v147);
            v249 = v149;
            v253 = v266.val[0];
            v257 = v266.val[1];
            v87 = v43 + 1;
            v145 = v221;
            if (!v221)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v87 = v43 + 1;
            if (v144 == 1)
            {
              v146 = vld1q_dup_s16(v143);
              v245 = v146;
              v249 = v146;
              v253 = v146;
              v257 = v146;
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }

            else if (v81[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 64, v143, v144);
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v245 = 0uLL;
              v249 = 0uLL;
              v253 = 0uLL;
              v257 = 0uLL;
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }
          }

          v150 = v222;
          if (v222)
          {
            v151 = 0;
            v152 = v219 << 6;
            v153 = 4 * v220;
            v154 = &v226.i8[v152 + v153];
            v155 = v217;
            v156 = v218;
            v157 = 4 * v222;
            if (4 * v222)
            {
              v158 = (4 * v222 - 1) >> 32 == 0;
            }

            else
            {
              v158 = 0;
            }

            v159 = !v158;
            v161 = v154 < v217 + v218 * (v145 - 1) + 4 * v222 && v217 < &__dst[64 * v145 + 448 + 64 * v219 + 4 * v222 + v153];
            v162 = v161 || v218 < 0;
            v163 = v157 & 0x1FFFFFFE0;
            v164 = v157 & 0x1FFFFFFF8;
            v165 = (v222 == 1) | v159 | v162;
            v166 = &v227.i8[v152 + v153];
            v167 = (v217 + 16);
            v168 = v154;
            v169 = v217;
            do
            {
              v170 = (v155 + v151 * v156);
              v171 = &v154[64 * v151];
              if (v165)
              {
                v172 = 0;
                goto LABEL_198;
              }

              if (v150 >= 8)
              {
                v174 = v167;
                v175 = v166;
                v176 = v157 & 0x1FFFFFFE0;
                do
                {
                  v177 = *v174;
                  *(v175 - 1) = *(v174 - 1);
                  *v175 = v177;
                  v175 += 32;
                  v174 += 2;
                  v176 -= 32;
                }

                while (v176);
                if (v157 == v163)
                {
                  goto LABEL_184;
                }

                v173 = v157 & 0x1FFFFFFE0;
                if ((v150 & 6) == 0)
                {
                  v170 += v163;
                  v171 += v163;
                  v172 = v157 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v173 = 0;
              }

              v171 += v164;
              v178 = -8 * ((v150 >> 1) & 0x3FFFFFFF) + v173;
              v179 = (v169 + v173);
              v180 = &v168[v173];
              do
              {
                v181 = *v179++;
                *v180 = v181;
                v180 += 8;
                v178 += 8;
              }

              while (v178);
              if (v157 == v164)
              {
                goto LABEL_184;
              }

              v170 += v164;
              v172 = v157 & 0xFFFFFFF8;
LABEL_198:
              v182 = v172 + 1;
              do
              {
                v183 = *v170++;
                *v171++ = v183;
              }

              while (v157 > v182++);
LABEL_184:
              ++v151;
              v166 += 64;
              v167 = (v167 + v156);
              v169 += v156;
              v168 += 64;
            }

            while (v151 != v145);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v226, 64, v215, v216, v223, v224);
LABEL_202:
          if (v213)
          {
            memcpy(v212, v83, 0x200uLL);
          }

          v21 = v43 == v202 >> 4;
          v43 = v87;
          result = v210;
        }

        while (!v21);
        v21 = v18++ == v191;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v258 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v209 = a8;
  v192 = a8 + a10 - 1;
  v210 = a1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 3;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v191 = v192 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v213 = v24;
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
      v203 = 0;
LABEL_32:
      v200 = v27 - 4;
      v195 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v189 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v203 = v32 >= v26;
    goto LABEL_32;
  }

  v203 = 0;
  v189 = 0;
  v195 = 0;
  v200 = 0;
LABEL_33:
  if (v18 <= v191)
  {
    v202 = a7 + a9 - 1;
    v188 = a7 >> 4;
    if (a7 >> 4 <= v202 >> 4)
    {
      v211 = v19 >> 4;
      v196 = v19 & 0xF;
      v186 = v20 & 7;
      v187 = v20 >> 3;
      v185 = ~(-1 << v195);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v194 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v193 = v35;
      v201 = a7;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v209)
        {
          v37 = v209;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v192 < v36)
        {
          v36 = v192;
        }

        v199 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v186;
        v198 = v39;
        v41 = v39 != 8;
        v42 = v186 + 1;
        if (v18 != v187)
        {
          v42 = 8;
          v40 = v41;
        }

        v197 = v40;
        v43 = v188;
        v44 = v18 & v185;
        v207 = a3 + (v37 - v209) * a11;
        v208 = v42;
        v206 = v42;
        do
        {
          v45 = 16 * v43;
          v46 = 16 * (v43 + 1) - 1;
          if (16 * v43 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 16 * v43;
          }

          if (v202 < v46)
          {
            v46 = v202;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v211)
          {
            v50 = v196 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (8 * v18 >= v209 && v45 >= a7)
          {
            v52 = v48 != v196;
            if (v43 != v211)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v197;
          }

          if (v203)
          {
            if (v200 | v195)
            {
              v53 = 0;
              v54 = 0;
              v55 = v200 != 0;
              v56 = 1;
              v58 = v195 != 0;
              v57 = v195;
              v59 = v200;
              do
              {
                --v57;
                if (v58)
                {
                  v54 |= (v44 & v56) << v53++;
                }

                else
                {
                  v57 = 0;
                }

                --v59;
                if (v55)
                {
                  v54 |= (v43 & ~(-1 << v200) & v56) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                v56 *= 2;
                --v53;
                v55 = v59 != 0;
                v58 = v57 != 0;
              }

              while (v59 | v57);
              v60 = v54 << 9;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v200) + (v18 >> v195) * v189);
          }

          else if (v194)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v193.i8[0];
            v64 = v193.i8[4];
            v66 = v194.i32[0];
            v67 = v194.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v18) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v43) << v61++;
              }

              else
              {
                v67 = 0;
              }

              v63 *= 2;
              --v61;
              v64 = v67 != 0;
              v65 = v66 != 0;
            }

            while (v67 | v66);
            v68 = v62 << 9;
          }

          else
          {
            v68 = 0;
          }

          v69 = *(result + 128) >> (*(result + 144) + a12);
          if (v69 <= 1)
          {
            v69 = 1;
          }

          v70 = v69 + 15;
          if (v70 < 0x20)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 4) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 7;
          if (v73 < 0x10)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
          }

          if (v74 | v71)
          {
            v75 = 0;
            v76 = 0;
            v77 = v71 != 0;
            v78 = v74 != 0;
            v79 = 1;
            do
            {
              --v71;
              if (v77)
              {
                v76 |= (v79 & v43) << v75++;
              }

              else
              {
                v71 = 0;
              }

              --v74;
              if (v78)
              {
                v76 |= (v79 & v18) << v75++;
              }

              else
              {
                v74 = 0;
              }

              v79 *= 2;
              --v75;
              v78 = v74 != 0;
              v77 = v71 != 0;
            }

            while (v74 | v71);
            v80 = 8 * v76;
          }

          else
          {
            v80 = 0;
          }

          v81 = (a4 + v80);
          v82 = (v207 + 4 * (v47 - a7));
          v212 = (a2 + v68);
          if (v213)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v206 < 8)))
            {
              goto LABEL_109;
            }

            v84 = v49;
            v85 = (a4 + v80);
            v86 = v50;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v49 = v84;
            v44 = v18 & v185;
            LOBYTE(v50) = v86;
            v81 = v85;
            result = v210;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v206 < 8)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v208);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v215 = v83;
          v223 = v50;
          v224 = v208;
          v219 = v199;
          v220 = v47 - v45;
          v216 = v81;
          v217 = v82;
          v218 = a11;
          v221 = v198;
          v222 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v201;
            v87 = v43 + 1;
            goto LABEL_202;
          }

          v88 = *v81;
          a7 = v201;
          if (v88 == 63)
          {
            v91 = *(v83 + 1);
            v92 = (v83 + 32);
            v259 = vld2q_f64(v92);
            v93 = vzip2q_s64(*v83, v91);
            v226 = vzip1q_s64(*v83, v91);
            v230 = v93;
            v234 = v259.val[0];
            v238 = v259.val[1];
            v89 = 64;
          }

          else if (v88 == 1)
          {
            v90 = vld1q_dup_s16(v83);
            v226 = v90;
            v230 = v90;
            v234 = v90;
            v238 = v90;
            v89 = 2;
          }

          else if (*v81)
          {
            v94 = v81;
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 64, v83, v88);
            v81 = v94;
          }

          else
          {
            v89 = 0;
            v226 = 0uLL;
            v230 = 0uLL;
            v234 = 0uLL;
            v238 = 0uLL;
          }

          v95 = &v83[v89];
          v96 = v81[1];
          if (v96 == 63)
          {
            v99 = *(v95 + 16);
            v100 = (v95 + 32);
            v260 = vld2q_f64(v100);
            v101 = vzip2q_s64(*v95, v99);
            v227 = vzip1q_s64(*v95, v99);
            v231 = v101;
            v235 = v260.val[0];
            v239 = v260.val[1];
            v97 = 64;
          }

          else if (v96 == 1)
          {
            v98 = vld1q_dup_s16(v95);
            v227 = v98;
            v231 = v98;
            v235 = v98;
            v239 = v98;
            v97 = 2;
          }

          else if (v81[1])
          {
            v102 = v81;
            v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 64, v95, v96);
            v81 = v102;
          }

          else
          {
            v97 = 0;
            v227 = 0uLL;
            v231 = 0uLL;
            v235 = 0uLL;
            v239 = 0uLL;
          }

          v103 = v95 + v97;
          v104 = v81[2];
          if (v104 == 63)
          {
            v107 = *(v103 + 16);
            v108 = (v103 + 32);
            v261 = vld2q_f64(v108);
            v109 = vzip2q_s64(*v103, v107);
            v242 = vzip1q_s64(*v103, v107);
            v246 = v109;
            v250 = v261.val[0];
            v254 = v261.val[1];
            v105 = 64;
          }

          else if (v104 == 1)
          {
            v106 = vld1q_dup_s16(v103);
            v242 = v106;
            v246 = v106;
            v250 = v106;
            v254 = v106;
            v105 = 2;
          }

          else if (v81[2])
          {
            v110 = v81;
            v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 64, v103, v104);
            v81 = v110;
          }

          else
          {
            v105 = 0;
            v242 = 0uLL;
            v246 = 0uLL;
            v250 = 0uLL;
            v254 = 0uLL;
          }

          v111 = v103 + v105;
          v112 = v81[3];
          if (v112 == 63)
          {
            v115 = *(v111 + 16);
            v116 = (v111 + 32);
            v262 = vld2q_f64(v116);
            v117 = vzip2q_s64(*v111, v115);
            v243 = vzip1q_s64(*v111, v115);
            v247 = v117;
            v251 = v262.val[0];
            v255 = v262.val[1];
            v113 = 64;
          }

          else if (v112 == 1)
          {
            v114 = vld1q_dup_s16(v111);
            v243 = v114;
            v247 = v114;
            v251 = v114;
            v255 = v114;
            v113 = 2;
          }

          else if (v81[3])
          {
            v118 = v81;
            v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 64, v111, v112);
            v81 = v118;
          }

          else
          {
            v113 = 0;
            v243 = 0uLL;
            v247 = 0uLL;
            v251 = 0uLL;
            v255 = 0uLL;
          }

          v119 = v111 + v113;
          v120 = v81[4];
          if (v120 == 63)
          {
            v123 = *(v119 + 16);
            v124 = (v119 + 32);
            v263 = vld2q_f64(v124);
            v125 = vzip2q_s64(*v119, v123);
            v228 = vzip1q_s64(*v119, v123);
            v232 = v125;
            v236 = v263.val[0];
            v240 = v263.val[1];
            v121 = 64;
          }

          else if (v120 == 1)
          {
            v122 = vld1q_dup_s16(v119);
            v228 = v122;
            v232 = v122;
            v236 = v122;
            v240 = v122;
            v121 = 2;
          }

          else if (v81[4])
          {
            v126 = v81;
            v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 64, v119, v120);
            v81 = v126;
          }

          else
          {
            v121 = 0;
            v228 = 0uLL;
            v232 = 0uLL;
            v236 = 0uLL;
            v240 = 0uLL;
          }

          v127 = v119 + v121;
          v128 = v81[5];
          if (v128 == 63)
          {
            v131 = *(v127 + 16);
            v132 = (v127 + 32);
            v264 = vld2q_f64(v132);
            v133 = vzip2q_s64(*v127, v131);
            v229 = vzip1q_s64(*v127, v131);
            v233 = v133;
            v237 = v264.val[0];
            v241 = v264.val[1];
            v129 = 64;
          }

          else if (v128 == 1)
          {
            v130 = vld1q_dup_s16(v127);
            v229 = v130;
            v233 = v130;
            v237 = v130;
            v241 = v130;
            v129 = 2;
          }

          else if (v81[5])
          {
            v134 = v81;
            v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 64, v127, v128);
            v81 = v134;
          }

          else
          {
            v129 = 0;
            v229 = 0uLL;
            v233 = 0uLL;
            v237 = 0uLL;
            v241 = 0uLL;
          }

          v135 = v127 + v129;
          v136 = v81[6];
          if (v136 == 63)
          {
            v139 = *(v135 + 16);
            v140 = (v135 + 32);
            v265 = vld2q_f64(v140);
            v141 = vzip2q_s64(*v135, v139);
            v244 = vzip1q_s64(*v135, v139);
            v248 = v141;
            v252 = v265.val[0];
            v256 = v265.val[1];
            v137 = 64;
          }

          else if (v136 == 1)
          {
            v138 = vld1q_dup_s16(v135);
            v244 = v138;
            v248 = v138;
            v252 = v138;
            v256 = v138;
            v137 = 2;
          }

          else if (v81[6])
          {
            v142 = v81;
            v137 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 64, v135, v136);
            v81 = v142;
          }

          else
          {
            v137 = 0;
            v244 = 0uLL;
            v248 = 0uLL;
            v252 = 0uLL;
            v256 = 0uLL;
          }

          v143 = v135 + v137;
          v144 = v81[7];
          if (v144 == 63)
          {
            v147 = *(v143 + 16);
            v148 = (v143 + 32);
            v266 = vld2q_f64(v148);
            v149 = vzip2q_s64(*v143, v147);
            v245 = vzip1q_s64(*v143, v147);
            v249 = v149;
            v253 = v266.val[0];
            v257 = v266.val[1];
            v87 = v43 + 1;
            v145 = v221;
            if (!v221)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v87 = v43 + 1;
            if (v144 == 1)
            {
              v146 = vld1q_dup_s16(v143);
              v245 = v146;
              v249 = v146;
              v253 = v146;
              v257 = v146;
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }

            else if (v81[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 64, v143, v144);
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v245 = 0uLL;
              v249 = 0uLL;
              v253 = 0uLL;
              v257 = 0uLL;
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }
          }

          v150 = v222;
          if (v222)
          {
            v151 = 0;
            v152 = v219 << 6;
            v153 = 4 * v220;
            v154 = &v226.i8[v152 + v153];
            v155 = v217;
            v156 = v218;
            v157 = 4 * v222;
            if (4 * v222)
            {
              v158 = (4 * v222 - 1) >> 32 == 0;
            }

            else
            {
              v158 = 0;
            }

            v159 = !v158;
            v161 = v154 < &v217->i8[4 * v222 + v218 * (v145 - 1)] && v217 < &__dst[64 * v145 + 448 + 64 * v219 + 4 * v222 + v153];
            v162 = v161 || v218 < 0;
            v163 = v157 & 0x1FFFFFFE0;
            v164 = v157 & 0x1FFFFFFF8;
            v165 = (v222 == 1) | v159 | v162;
            v166 = &v227.i8[v152 + v153];
            v167 = v217 + 1;
            v168 = v154;
            v169 = v217;
            do
            {
              v170 = &v155->i8[v151 * v156];
              v171 = &v154[64 * v151];
              if (v165)
              {
                v172 = 0;
                goto LABEL_198;
              }

              if (v150 >= 8)
              {
                v174 = v167;
                v175 = v166;
                v176 = v157 & 0x1FFFFFFE0;
                do
                {
                  v177 = *v174;
                  *(v175 - 1) = v174[-1];
                  *v175 = v177;
                  v175 += 32;
                  v174 += 2;
                  v176 -= 32;
                }

                while (v176);
                if (v157 == v163)
                {
                  goto LABEL_184;
                }

                v173 = v157 & 0x1FFFFFFE0;
                if ((v150 & 6) == 0)
                {
                  v170 += v163;
                  v171 += v163;
                  v172 = v157 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v173 = 0;
              }

              v171 += v164;
              v178 = -8 * ((v150 >> 1) & 0x3FFFFFFF) + v173;
              v179 = (v169->i64 + v173);
              v180 = &v168[v173];
              do
              {
                v181 = *v179++;
                *v180 = v181;
                v180 += 8;
                v178 += 8;
              }

              while (v178);
              if (v157 == v164)
              {
                goto LABEL_184;
              }

              v170 += v164;
              v172 = v157 & 0xFFFFFFF8;
LABEL_198:
              v182 = v172 + 1;
              do
              {
                v183 = *v170++;
                *v171++ = v183;
              }

              while (v157 > v182++);
LABEL_184:
              ++v151;
              v166 += 64;
              v167 = (v167 + v156);
              v169 = (v169 + v156);
              v168 += 64;
            }

            while (v151 != v145);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v226, 64, v215, v216, v223, v224);
LABEL_202:
          if (v213)
          {
            memcpy(v212, v83, 0x200uLL);
          }

          v21 = v43 == v202 >> 4;
          v43 = v87;
          result = v210;
        }

        while (!v21);
        v21 = v18++ == v191;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v247 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v198 = a8;
  v17 = a8 >> 3;
  v181 = a8 + a10 - 1;
  v183 = v181 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v199 = a1;
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
  v202 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v191 = result;
  if (v17 <= v183)
  {
    v190 = a7 + a9 - 1;
    v180 = a7 >> 4;
    if (a7 >> 4 <= v190 >> 4)
    {
      result = a1;
      v200 = (a5 - 1) >> 4;
      v177 = a5 - 1;
      v184 = (a5 - 1) & 0xF;
      v178 = (a6 - 1) & 7;
      v179 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v27 = vcgt_u32(v26, 0x1F0000000FLL);
      v189 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v27);
      v188 = v27;
      v176 = 8 * v19 * v18;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v198)
        {
          v29 = v198;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v181 < v28)
        {
          v28 = v181;
        }

        v197 = 8 * v17;
        v187 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v178;
        v186 = v31;
        v33 = v31 != 8;
        v34 = v180;
        v35 = v178 + 1;
        if (v17 != v179)
        {
          v35 = 8;
          v32 = v33;
        }

        v185 = v32;
        v195 = a3 + (v29 - v198) * a11;
        v196 = v35;
        v194 = v35;
        do
        {
          v36 = 16 * v34;
          v37 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 16 * v34;
          }

          if (v190 < v37)
          {
            v37 = v190;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v200)
          {
            v41 = v184 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v197 >= v198 && v36 >= a7)
          {
            v43 = v39 != v184;
            if (v34 != v200)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v185;
          }

          if (v191)
          {
            v64 = 0;
            v65 = v176 >> (*(result + 57) != 0);
            v66 = 1;
            if (v65 <= 63)
            {
              if (v65 > 15)
              {
                if (v65 == 16)
                {
                  v66 = 0;
                  v67 = 0;
                  v68 = 64;
                  v64 = 128;
                }

                else
                {
                  v67 = 1;
                  v68 = 0;
                  if (v65 == 32)
                  {
                    v66 = 0;
                    v67 = 0;
                    v64 = 64;
                    v68 = 64;
                  }
                }
              }

              else if (v65 == 4)
              {
                v66 = 0;
                v67 = 0;
                v68 = 128;
                v64 = 256;
              }

              else
              {
                v67 = 1;
                v68 = 0;
                if (v65 == 8)
                {
                  v66 = 0;
                  v67 = 0;
                  v64 = 128;
                  v68 = 128;
                }
              }
            }

            else if (v65 <= 255)
            {
              if (v65 == 64)
              {
                v66 = 0;
                v67 = 0;
                v68 = 32;
                v64 = 64;
              }

              else
              {
                v67 = 1;
                v68 = 0;
                if (v65 == 128)
                {
                  v66 = 0;
                  v67 = 0;
                  v64 = 32;
                  v68 = 32;
                }
              }
            }

            else if (v65 == 256)
            {
              v66 = 0;
              v67 = 0;
              v68 = 16;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v67 = 0;
              v64 = 16;
              v68 = 16;
            }

            else
            {
              v67 = 1;
              v68 = 0;
              if (v65 == 1024)
              {
                v68 = 8;
                v64 = 16;
              }
            }

            v164 = (v64 >> 4) - 1;
            if (v66)
            {
              v165 = 0;
            }

            else
            {
              v165 = 32 - __clz(~(-1 << -__clz(v164)));
            }

            v166 = (v68 >> 3) - 1;
            if (v67)
            {
              v167 = 0;
              if (v165)
              {
                goto LABEL_199;
              }
            }

            else
            {
              v167 = 32 - __clz(~(-1 << -__clz(v166)));
              if (v167 | v165)
              {
LABEL_199:
                v168 = 0;
                v169 = 0;
                v170 = v34 & v164;
                v171 = v17 & v166;
                v172 = v167 != 0;
                v173 = v165 != 0;
                v174 = 1;
                do
                {
                  --v167;
                  if (v172)
                  {
                    v169 |= (v174 & v171) << v168++;
                  }

                  else
                  {
                    v167 = 0;
                  }

                  --v165;
                  if (v173)
                  {
                    v169 |= (v174 & v170) << v168++;
                  }

                  else
                  {
                    v165 = 0;
                  }

                  v174 *= 2;
                  --v168;
                  v173 = v165 != 0;
                  v172 = v167 != 0;
                }

                while (v165 | v167);
                v175 = v169 << 9;
                result = v199;
                goto LABEL_211;
              }
            }

            v175 = 0;
LABEL_211:
            v51 = v175 + ((v36 / v64 + v197 / v68 * ((v64 + v177) / v64)) << 14);
            goto LABEL_52;
          }

          if (v189)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v48 = v188.i8[0];
            v47 = v188.i8[4];
            v49 = v189.i32[0];
            v50 = v189.i32[1];
            do
            {
              --v49;
              if (v48)
              {
                v45 |= (v46 & v17) << v44++;
              }

              else
              {
                v49 = 0;
              }

              --v50;
              if (v47)
              {
                v45 |= (v46 & v34) << v44++;
              }

              else
              {
                v50 = 0;
              }

              v46 *= 2;
              --v44;
              v47 = v50 != 0;
              v48 = v49 != 0;
            }

            while (v50 | v49);
            v51 = v45 << 9;
          }

          else
          {
            v51 = 0;
          }

LABEL_52:
          v52 = *(result + 128) >> (*(result + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 15;
          if (v53 < 0x20)
          {
            v54 = 0;
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 4) - 1)));
          }

          v55 = *(result + 132) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 7;
          if (v56 < 0x10)
          {
            v57 = 0;
            if (!v54)
            {
LABEL_77:
              v63 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_77;
            }
          }

          v58 = 0;
          v59 = 0;
          v60 = v54 != 0;
          v61 = v57 != 0;
          v62 = 1;
          do
          {
            --v54;
            if (v60)
            {
              v59 |= (v62 & v34) << v58++;
            }

            else
            {
              v54 = 0;
            }

            --v57;
            if (v61)
            {
              v59 |= (v62 & v17) << v58++;
            }

            else
            {
              v57 = 0;
            }

            v62 *= 2;
            --v58;
            v61 = v57 != 0;
            v60 = v54 != 0;
          }

          while (v57 | v54);
          v63 = 8 * v59;
LABEL_78:
          v69 = (a4 + v63);
          v70 = a7;
          v71 = v195 + 4 * (v38 - a7);
          v72 = (a2 + v51);
          __src = (a2 + v51);
          if (v202)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v194 < 8)))
            {
              v72 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v196);
              goto LABEL_86;
            }

            v73 = v40;
            memcpy(__dst, __src, sizeof(__dst));
            v40 = v73;
            v72 = __dst;
            result = v199;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v194 < 8)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v204 = v72;
          v212 = v41;
          v213 = v196;
          v208 = v187;
          v209 = v38 - v36;
          v205 = v69;
          v206 = v71;
          v207 = a11;
          v210 = v186;
          v211 = v40;
          if ((v42 & 1) == 0)
          {
            v74 = *v69;
            a7 = v70;
            if (v74 == 63)
            {
              v77 = *(v72 + 1);
              v78 = (v72 + 32);
              v248 = vld2q_f64(v78);
              v79 = vzip2q_s64(*v72, v77);
              v215 = vzip1q_s64(*v72, v77);
              v219 = v79;
              v223 = v248.val[0];
              v227 = v248.val[1];
              v75 = 64;
            }

            else if (v74 == 1)
            {
              v76 = vld1q_dup_s16(v72);
              v215 = v76;
              v219 = v76;
              v223 = v76;
              v227 = v76;
              v75 = 2;
            }

            else if (*v69)
            {
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v215, 64, v72, v74);
            }

            else
            {
              v75 = 0;
              v215 = 0uLL;
              v219 = 0uLL;
              v223 = 0uLL;
              v227 = 0uLL;
            }

            v80 = &v72[v75];
            v81 = v69[1];
            if (v81 == 63)
            {
              v84 = *(v80 + 16);
              v85 = (v80 + 32);
              v249 = vld2q_f64(v85);
              v86 = vzip2q_s64(*v80, v84);
              v216 = vzip1q_s64(*v80, v84);
              v220 = v86;
              v224 = v249.val[0];
              v228 = v249.val[1];
              v82 = 64;
            }

            else if (v81 == 1)
            {
              v83 = vld1q_dup_s16(v80);
              v216 = v83;
              v220 = v83;
              v224 = v83;
              v228 = v83;
              v82 = 2;
            }

            else if (v69[1])
            {
              v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v216, 64, v80, v81);
            }

            else
            {
              v82 = 0;
              v216 = 0uLL;
              v220 = 0uLL;
              v224 = 0uLL;
              v228 = 0uLL;
            }

            v87 = v80 + v82;
            v88 = v69[2];
            if (v88 == 63)
            {
              v91 = *(v87 + 16);
              v92 = (v87 + 32);
              v250 = vld2q_f64(v92);
              v93 = vzip2q_s64(*v87, v91);
              v231 = vzip1q_s64(*v87, v91);
              v235 = v93;
              v239 = v250.val[0];
              v243 = v250.val[1];
              v89 = 64;
            }

            else if (v88 == 1)
            {
              v90 = vld1q_dup_s16(v87);
              v231 = v90;
              v235 = v90;
              v239 = v90;
              v243 = v90;
              v89 = 2;
            }

            else if (v69[2])
            {
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v231, 64, v87, v88);
            }

            else
            {
              v89 = 0;
              v231 = 0uLL;
              v235 = 0uLL;
              v239 = 0uLL;
              v243 = 0uLL;
            }

            v94 = v87 + v89;
            v95 = v69[3];
            if (v95 == 63)
            {
              v98 = *(v94 + 16);
              v99 = (v94 + 32);
              v251 = vld2q_f64(v99);
              v100 = vzip2q_s64(*v94, v98);
              v232 = vzip1q_s64(*v94, v98);
              v236 = v100;
              v240 = v251.val[0];
              v244 = v251.val[1];
              v96 = 64;
            }

            else if (v95 == 1)
            {
              v97 = vld1q_dup_s16(v94);
              v232 = v97;
              v236 = v97;
              v240 = v97;
              v244 = v97;
              v96 = 2;
            }

            else if (v69[3])
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 64, v94, v95);
            }

            else
            {
              v96 = 0;
              v232 = 0uLL;
              v236 = 0uLL;
              v240 = 0uLL;
              v244 = 0uLL;
            }

            v101 = v94 + v96;
            v102 = v69[4];
            if (v102 == 63)
            {
              v105 = *(v101 + 16);
              v106 = (v101 + 32);
              v252 = vld2q_f64(v106);
              v107 = vzip2q_s64(*v101, v105);
              v217 = vzip1q_s64(*v101, v105);
              v221 = v107;
              v225 = v252.val[0];
              v229 = v252.val[1];
              v103 = 64;
            }

            else if (v102 == 1)
            {
              v104 = vld1q_dup_s16(v101);
              v217 = v104;
              v221 = v104;
              v225 = v104;
              v229 = v104;
              v103 = 2;
            }

            else if (v69[4])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 64, v101, v102);
            }

            else
            {
              v103 = 0;
              v217 = 0uLL;
              v221 = 0uLL;
              v225 = 0uLL;
              v229 = 0uLL;
            }

            v108 = v101 + v103;
            v109 = v69[5];
            if (v109 == 63)
            {
              v112 = *(v108 + 16);
              v113 = (v108 + 32);
              v253 = vld2q_f64(v113);
              v114 = vzip2q_s64(*v108, v112);
              v218 = vzip1q_s64(*v108, v112);
              v222 = v114;
              v226 = v253.val[0];
              v230 = v253.val[1];
              v110 = 64;
            }

            else if (v109 == 1)
            {
              v111 = vld1q_dup_s16(v108);
              v218 = v111;
              v222 = v111;
              v226 = v111;
              v230 = v111;
              v110 = 2;
            }

            else if (v69[5])
            {
              v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v218, 64, v108, v109);
            }

            else
            {
              v110 = 0;
              v218 = 0uLL;
              v222 = 0uLL;
              v226 = 0uLL;
              v230 = 0uLL;
            }

            v115 = v108 + v110;
            v116 = v69[6];
            if (v116 == 63)
            {
              v119 = *(v115 + 16);
              v120 = (v115 + 32);
              v254 = vld2q_f64(v120);
              v121 = vzip2q_s64(*v115, v119);
              v233 = vzip1q_s64(*v115, v119);
              v237 = v121;
              v241 = v254.val[0];
              v245 = v254.val[1];
              v117 = 64;
            }

            else if (v116 == 1)
            {
              v118 = vld1q_dup_s16(v115);
              v233 = v118;
              v237 = v118;
              v241 = v118;
              v245 = v118;
              v117 = 2;
            }

            else if (v69[6])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 64, v115, v116);
            }

            else
            {
              v117 = 0;
              v233 = 0uLL;
              v237 = 0uLL;
              v241 = 0uLL;
              v245 = 0uLL;
            }

            v122 = v115 + v117;
            v123 = v69[7];
            if (v123 == 63)
            {
              v126 = *(v122 + 16);
              v127 = (v122 + 32);
              v255 = vld2q_f64(v127);
              v128 = vzip2q_s64(*v122, v126);
              v234 = vzip1q_s64(*v122, v126);
              v238 = v128;
              v242 = v255.val[0];
              v246 = v255.val[1];
              v124 = v210;
              if (v210)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v123 != 1)
              {
                if (v69[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 64, v122, v123);
                  v124 = v210;
                  if (!v210)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v234 = 0uLL;
                  v238 = 0uLL;
                  v242 = 0uLL;
                  v246 = 0uLL;
                  v124 = v210;
                  if (!v210)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v129 = v211;
                if (!v211)
                {
                  goto LABEL_178;
                }

                v130 = 0;
                v131 = v208 << 6;
                v132 = 4 * v209;
                v133 = &v215.i8[v131 + v132];
                v134 = v206;
                v135 = v207;
                v136 = 4 * v211;
                if (4 * v211)
                {
                  v137 = (4 * v211 - 1) >> 32 == 0;
                }

                else
                {
                  v137 = 0;
                }

                v138 = !v137;
                v140 = v133 < v206 + v207 * (v124 - 1) + 4 * v211 && v206 < &__dst[64 * v124 + 448 + 64 * v208 + 4 * v211 + v132];
                v141 = v140 || v207 < 0;
                v142 = v136 & 0x1FFFFFFE0;
                v143 = v136 & 0x1FFFFFFF8;
                v144 = (v211 == 1) | v138 | v141;
                v145 = &v216.i8[v131 + v132];
                v146 = (v206 + 16);
                v147 = v133;
                v148 = v206;
                while (2)
                {
                  v149 = (v134 + v130 * v135);
                  v150 = &v133[64 * v130];
                  if (v144)
                  {
                    v151 = 0;
LABEL_175:
                    v161 = v151 + 1;
                    do
                    {
                      v162 = *v149++;
                      *v150++ = v162;
                    }

                    while (v136 > v161++);
                  }

                  else
                  {
                    if (v129 >= 8)
                    {
                      v153 = v146;
                      v154 = v145;
                      v155 = v136 & 0x1FFFFFFE0;
                      do
                      {
                        v156 = *v153;
                        *(v154 - 1) = *(v153 - 1);
                        *v154 = v156;
                        v154 += 32;
                        v153 += 2;
                        v155 -= 32;
                      }

                      while (v155);
                      if (v136 == v142)
                      {
                        goto LABEL_161;
                      }

                      v152 = v136 & 0x1FFFFFFE0;
                      if ((v129 & 6) == 0)
                      {
                        v149 += v142;
                        v150 += v142;
                        v151 = v136 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v152 = 0;
                    }

                    v150 += v143;
                    v157 = -8 * ((v129 >> 1) & 0x3FFFFFFF) + v152;
                    v158 = (v148 + v152);
                    v159 = &v147[v152];
                    do
                    {
                      v160 = *v158++;
                      *v159 = v160;
                      v159 += 8;
                      v157 += 8;
                    }

                    while (v157);
                    if (v136 != v143)
                    {
                      v149 += v143;
                      v151 = v136 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v130;
                  v145 += 64;
                  v146 = (v146 + v135);
                  v148 += v135;
                  v147 += 64;
                  if (v130 == v124)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v125 = vld1q_dup_s16(v122);
              v234 = v125;
              v238 = v125;
              v242 = v125;
              v246 = v125;
              v124 = v210;
              if (v210)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v215, 64, v204, v205, v212, v213);
            if (!v202)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v70;
          if (!v202)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v72, 0x200uLL);
LABEL_26:
          v21 = v34++ == v190 >> 4;
          result = v199;
        }

        while (!v21);
        v21 = v17++ == v183;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v247 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v198 = a8;
  v17 = a8 >> 3;
  v181 = a8 + a10 - 1;
  v183 = v181 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v199 = a1;
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
  v202 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v191 = result;
  if (v17 <= v183)
  {
    v190 = a7 + a9 - 1;
    v180 = a7 >> 4;
    if (a7 >> 4 <= v190 >> 4)
    {
      result = a1;
      v200 = (a5 - 1) >> 4;
      v177 = a5 - 1;
      v184 = (a5 - 1) & 0xF;
      v178 = (a6 - 1) & 7;
      v179 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v27 = vcgt_u32(v26, 0x1F0000000FLL);
      v189 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v27);
      v188 = v27;
      v176 = 8 * v19 * v18;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v198)
        {
          v29 = v198;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v181 < v28)
        {
          v28 = v181;
        }

        v197 = 8 * v17;
        v187 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v178;
        v186 = v31;
        v33 = v31 != 8;
        v34 = v180;
        v35 = v178 + 1;
        if (v17 != v179)
        {
          v35 = 8;
          v32 = v33;
        }

        v185 = v32;
        v195 = a3 + (v29 - v198) * a11;
        v196 = v35;
        v194 = v35;
        do
        {
          v36 = 16 * v34;
          v37 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 16 * v34;
          }

          if (v190 < v37)
          {
            v37 = v190;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v200)
          {
            v41 = v184 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v197 >= v198 && v36 >= a7)
          {
            v43 = v39 != v184;
            if (v34 != v200)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v185;
          }

          if (v191)
          {
            v64 = 0;
            v65 = v176 >> (*(result + 57) != 0);
            v66 = 1;
            if (v65 <= 63)
            {
              if (v65 > 15)
              {
                if (v65 == 16)
                {
                  v66 = 0;
                  v67 = 0;
                  v68 = 64;
                  v64 = 128;
                }

                else
                {
                  v67 = 1;
                  v68 = 0;
                  if (v65 == 32)
                  {
                    v66 = 0;
                    v67 = 0;
                    v64 = 64;
                    v68 = 64;
                  }
                }
              }

              else if (v65 == 4)
              {
                v66 = 0;
                v67 = 0;
                v68 = 128;
                v64 = 256;
              }

              else
              {
                v67 = 1;
                v68 = 0;
                if (v65 == 8)
                {
                  v66 = 0;
                  v67 = 0;
                  v64 = 128;
                  v68 = 128;
                }
              }
            }

            else if (v65 <= 255)
            {
              if (v65 == 64)
              {
                v66 = 0;
                v67 = 0;
                v68 = 32;
                v64 = 64;
              }

              else
              {
                v67 = 1;
                v68 = 0;
                if (v65 == 128)
                {
                  v66 = 0;
                  v67 = 0;
                  v64 = 32;
                  v68 = 32;
                }
              }
            }

            else if (v65 == 256)
            {
              v66 = 0;
              v67 = 0;
              v68 = 16;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v67 = 0;
              v64 = 16;
              v68 = 16;
            }

            else
            {
              v67 = 1;
              v68 = 0;
              if (v65 == 1024)
              {
                v68 = 8;
                v64 = 16;
              }
            }

            v164 = (v64 >> 4) - 1;
            if (v66)
            {
              v165 = 0;
            }

            else
            {
              v165 = 32 - __clz(~(-1 << -__clz(v164)));
            }

            v166 = (v68 >> 3) - 1;
            if (v67)
            {
              v167 = 0;
              if (v165)
              {
                goto LABEL_199;
              }
            }

            else
            {
              v167 = 32 - __clz(~(-1 << -__clz(v166)));
              if (v167 | v165)
              {
LABEL_199:
                v168 = 0;
                v169 = 0;
                v170 = v34 & v164;
                v171 = v17 & v166;
                v172 = v167 != 0;
                v173 = v165 != 0;
                v174 = 1;
                do
                {
                  --v167;
                  if (v172)
                  {
                    v169 |= (v174 & v171) << v168++;
                  }

                  else
                  {
                    v167 = 0;
                  }

                  --v165;
                  if (v173)
                  {
                    v169 |= (v174 & v170) << v168++;
                  }

                  else
                  {
                    v165 = 0;
                  }

                  v174 *= 2;
                  --v168;
                  v173 = v165 != 0;
                  v172 = v167 != 0;
                }

                while (v165 | v167);
                v175 = v169 << 9;
                result = v199;
                goto LABEL_211;
              }
            }

            v175 = 0;
LABEL_211:
            v51 = v175 + ((v36 / v64 + v197 / v68 * ((v64 + v177) / v64)) << 14);
            goto LABEL_52;
          }

          if (v189)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v48 = v188.i8[0];
            v47 = v188.i8[4];
            v49 = v189.i32[0];
            v50 = v189.i32[1];
            do
            {
              --v49;
              if (v48)
              {
                v45 |= (v46 & v17) << v44++;
              }

              else
              {
                v49 = 0;
              }

              --v50;
              if (v47)
              {
                v45 |= (v46 & v34) << v44++;
              }

              else
              {
                v50 = 0;
              }

              v46 *= 2;
              --v44;
              v47 = v50 != 0;
              v48 = v49 != 0;
            }

            while (v50 | v49);
            v51 = v45 << 9;
          }

          else
          {
            v51 = 0;
          }

LABEL_52:
          v52 = *(result + 128) >> (*(result + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 15;
          if (v53 < 0x20)
          {
            v54 = 0;
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 4) - 1)));
          }

          v55 = *(result + 132) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 7;
          if (v56 < 0x10)
          {
            v57 = 0;
            if (!v54)
            {
LABEL_77:
              v63 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_77;
            }
          }

          v58 = 0;
          v59 = 0;
          v60 = v54 != 0;
          v61 = v57 != 0;
          v62 = 1;
          do
          {
            --v54;
            if (v60)
            {
              v59 |= (v62 & v34) << v58++;
            }

            else
            {
              v54 = 0;
            }

            --v57;
            if (v61)
            {
              v59 |= (v62 & v17) << v58++;
            }

            else
            {
              v57 = 0;
            }

            v62 *= 2;
            --v58;
            v61 = v57 != 0;
            v60 = v54 != 0;
          }

          while (v57 | v54);
          v63 = 8 * v59;
LABEL_78:
          v69 = (a4 + v63);
          v70 = a7;
          v71 = (v195 + 4 * (v38 - a7));
          v72 = (a2 + v51);
          __src = (a2 + v51);
          if (v202)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v194 < 8)))
            {
              v72 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v196);
              goto LABEL_86;
            }

            v73 = v40;
            memcpy(__dst, __src, sizeof(__dst));
            v40 = v73;
            v72 = __dst;
            result = v199;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v194 < 8)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v204 = v72;
          v212 = v41;
          v213 = v196;
          v208 = v187;
          v209 = v38 - v36;
          v205 = v69;
          v206 = v71;
          v207 = a11;
          v210 = v186;
          v211 = v40;
          if ((v42 & 1) == 0)
          {
            v74 = *v69;
            a7 = v70;
            if (v74 == 63)
            {
              v77 = *(v72 + 1);
              v78 = (v72 + 32);
              v248 = vld2q_f64(v78);
              v79 = vzip2q_s64(*v72, v77);
              v215 = vzip1q_s64(*v72, v77);
              v219 = v79;
              v223 = v248.val[0];
              v227 = v248.val[1];
              v75 = 64;
            }

            else if (v74 == 1)
            {
              v76 = vld1q_dup_s16(v72);
              v215 = v76;
              v219 = v76;
              v223 = v76;
              v227 = v76;
              v75 = 2;
            }

            else if (*v69)
            {
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v215, 64, v72, v74);
            }

            else
            {
              v75 = 0;
              v215 = 0uLL;
              v219 = 0uLL;
              v223 = 0uLL;
              v227 = 0uLL;
            }

            v80 = &v72[v75];
            v81 = v69[1];
            if (v81 == 63)
            {
              v84 = *(v80 + 16);
              v85 = (v80 + 32);
              v249 = vld2q_f64(v85);
              v86 = vzip2q_s64(*v80, v84);
              v216 = vzip1q_s64(*v80, v84);
              v220 = v86;
              v224 = v249.val[0];
              v228 = v249.val[1];
              v82 = 64;
            }

            else if (v81 == 1)
            {
              v83 = vld1q_dup_s16(v80);
              v216 = v83;
              v220 = v83;
              v224 = v83;
              v228 = v83;
              v82 = 2;
            }

            else if (v69[1])
            {
              v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v216, 64, v80, v81);
            }

            else
            {
              v82 = 0;
              v216 = 0uLL;
              v220 = 0uLL;
              v224 = 0uLL;
              v228 = 0uLL;
            }

            v87 = v80 + v82;
            v88 = v69[2];
            if (v88 == 63)
            {
              v91 = *(v87 + 16);
              v92 = (v87 + 32);
              v250 = vld2q_f64(v92);
              v93 = vzip2q_s64(*v87, v91);
              v231 = vzip1q_s64(*v87, v91);
              v235 = v93;
              v239 = v250.val[0];
              v243 = v250.val[1];
              v89 = 64;
            }

            else if (v88 == 1)
            {
              v90 = vld1q_dup_s16(v87);
              v231 = v90;
              v235 = v90;
              v239 = v90;
              v243 = v90;
              v89 = 2;
            }

            else if (v69[2])
            {
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v231, 64, v87, v88);
            }

            else
            {
              v89 = 0;
              v231 = 0uLL;
              v235 = 0uLL;
              v239 = 0uLL;
              v243 = 0uLL;
            }

            v94 = v87 + v89;
            v95 = v69[3];
            if (v95 == 63)
            {
              v98 = *(v94 + 16);
              v99 = (v94 + 32);
              v251 = vld2q_f64(v99);
              v100 = vzip2q_s64(*v94, v98);
              v232 = vzip1q_s64(*v94, v98);
              v236 = v100;
              v240 = v251.val[0];
              v244 = v251.val[1];
              v96 = 64;
            }

            else if (v95 == 1)
            {
              v97 = vld1q_dup_s16(v94);
              v232 = v97;
              v236 = v97;
              v240 = v97;
              v244 = v97;
              v96 = 2;
            }

            else if (v69[3])
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 64, v94, v95);
            }

            else
            {
              v96 = 0;
              v232 = 0uLL;
              v236 = 0uLL;
              v240 = 0uLL;
              v244 = 0uLL;
            }

            v101 = v94 + v96;
            v102 = v69[4];
            if (v102 == 63)
            {
              v105 = *(v101 + 16);
              v106 = (v101 + 32);
              v252 = vld2q_f64(v106);
              v107 = vzip2q_s64(*v101, v105);
              v217 = vzip1q_s64(*v101, v105);
              v221 = v107;
              v225 = v252.val[0];
              v229 = v252.val[1];
              v103 = 64;
            }

            else if (v102 == 1)
            {
              v104 = vld1q_dup_s16(v101);
              v217 = v104;
              v221 = v104;
              v225 = v104;
              v229 = v104;
              v103 = 2;
            }

            else if (v69[4])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 64, v101, v102);
            }

            else
            {
              v103 = 0;
              v217 = 0uLL;
              v221 = 0uLL;
              v225 = 0uLL;
              v229 = 0uLL;
            }

            v108 = v101 + v103;
            v109 = v69[5];
            if (v109 == 63)
            {
              v112 = *(v108 + 16);
              v113 = (v108 + 32);
              v253 = vld2q_f64(v113);
              v114 = vzip2q_s64(*v108, v112);
              v218 = vzip1q_s64(*v108, v112);
              v222 = v114;
              v226 = v253.val[0];
              v230 = v253.val[1];
              v110 = 64;
            }

            else if (v109 == 1)
            {
              v111 = vld1q_dup_s16(v108);
              v218 = v111;
              v222 = v111;
              v226 = v111;
              v230 = v111;
              v110 = 2;
            }

            else if (v69[5])
            {
              v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v218, 64, v108, v109);
            }

            else
            {
              v110 = 0;
              v218 = 0uLL;
              v222 = 0uLL;
              v226 = 0uLL;
              v230 = 0uLL;
            }

            v115 = v108 + v110;
            v116 = v69[6];
            if (v116 == 63)
            {
              v119 = *(v115 + 16);
              v120 = (v115 + 32);
              v254 = vld2q_f64(v120);
              v121 = vzip2q_s64(*v115, v119);
              v233 = vzip1q_s64(*v115, v119);
              v237 = v121;
              v241 = v254.val[0];
              v245 = v254.val[1];
              v117 = 64;
            }

            else if (v116 == 1)
            {
              v118 = vld1q_dup_s16(v115);
              v233 = v118;
              v237 = v118;
              v241 = v118;
              v245 = v118;
              v117 = 2;
            }

            else if (v69[6])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 64, v115, v116);
            }

            else
            {
              v117 = 0;
              v233 = 0uLL;
              v237 = 0uLL;
              v241 = 0uLL;
              v245 = 0uLL;
            }

            v122 = v115 + v117;
            v123 = v69[7];
            if (v123 == 63)
            {
              v126 = *(v122 + 16);
              v127 = (v122 + 32);
              v255 = vld2q_f64(v127);
              v128 = vzip2q_s64(*v122, v126);
              v234 = vzip1q_s64(*v122, v126);
              v238 = v128;
              v242 = v255.val[0];
              v246 = v255.val[1];
              v124 = v210;
              if (v210)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v123 != 1)
              {
                if (v69[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 64, v122, v123);
                  v124 = v210;
                  if (!v210)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v234 = 0uLL;
                  v238 = 0uLL;
                  v242 = 0uLL;
                  v246 = 0uLL;
                  v124 = v210;
                  if (!v210)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v129 = v211;
                if (!v211)
                {
                  goto LABEL_178;
                }

                v130 = 0;
                v131 = v208 << 6;
                v132 = 4 * v209;
                v133 = &v215.i8[v131 + v132];
                v134 = v206;
                v135 = v207;
                v136 = 4 * v211;
                if (4 * v211)
                {
                  v137 = (4 * v211 - 1) >> 32 == 0;
                }

                else
                {
                  v137 = 0;
                }

                v138 = !v137;
                v140 = v133 < &v206->i8[4 * v211 + v207 * (v124 - 1)] && v206 < &__dst[64 * v124 + 448 + 64 * v208 + 4 * v211 + v132];
                v141 = v140 || v207 < 0;
                v142 = v136 & 0x1FFFFFFE0;
                v143 = v136 & 0x1FFFFFFF8;
                v144 = (v211 == 1) | v138 | v141;
                v145 = &v216.i8[v131 + v132];
                v146 = v206 + 1;
                v147 = v133;
                v148 = v206;
                while (2)
                {
                  v149 = &v134->i8[v130 * v135];
                  v150 = &v133[64 * v130];
                  if (v144)
                  {
                    v151 = 0;
LABEL_175:
                    v161 = v151 + 1;
                    do
                    {
                      v162 = *v149++;
                      *v150++ = v162;
                    }

                    while (v136 > v161++);
                  }

                  else
                  {
                    if (v129 >= 8)
                    {
                      v153 = v146;
                      v154 = v145;
                      v155 = v136 & 0x1FFFFFFE0;
                      do
                      {
                        v156 = *v153;
                        *(v154 - 1) = v153[-1];
                        *v154 = v156;
                        v154 += 32;
                        v153 += 2;
                        v155 -= 32;
                      }

                      while (v155);
                      if (v136 == v142)
                      {
                        goto LABEL_161;
                      }

                      v152 = v136 & 0x1FFFFFFE0;
                      if ((v129 & 6) == 0)
                      {
                        v149 += v142;
                        v150 += v142;
                        v151 = v136 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v152 = 0;
                    }

                    v150 += v143;
                    v157 = -8 * ((v129 >> 1) & 0x3FFFFFFF) + v152;
                    v158 = (v148->i64 + v152);
                    v159 = &v147[v152];
                    do
                    {
                      v160 = *v158++;
                      *v159 = v160;
                      v159 += 8;
                      v157 += 8;
                    }

                    while (v157);
                    if (v136 != v143)
                    {
                      v149 += v143;
                      v151 = v136 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v130;
                  v145 += 64;
                  v146 = (v146 + v135);
                  v148 = (v148 + v135);
                  v147 += 64;
                  if (v130 == v124)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v125 = vld1q_dup_s16(v122);
              v234 = v125;
              v238 = v125;
              v242 = v125;
              v246 = v125;
              v124 = v210;
              if (v210)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v215, 64, v204, v205, v212, v213);
            if (!v202)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v70;
          if (!v202)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v72, 0x200uLL);
LABEL_26:
          v21 = v34++ == v190 >> 4;
          result = v199;
        }

        while (!v21);
        v21 = v17++ == v183;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v258 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v209 = a8;
  v192 = a8 + a10 - 1;
  v210 = a1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 3;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v191 = v192 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v213 = v24;
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
      v203 = 0;
LABEL_32:
      v200 = v27 - 4;
      v195 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v189 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v203 = v32 >= v26;
    goto LABEL_32;
  }

  v203 = 0;
  v189 = 0;
  v195 = 0;
  v200 = 0;
LABEL_33:
  if (v18 <= v191)
  {
    v202 = a7 + a9 - 1;
    v188 = a7 >> 4;
    if (a7 >> 4 <= v202 >> 4)
    {
      v211 = v19 >> 4;
      v196 = v19 & 0xF;
      v186 = v20 & 7;
      v187 = v20 >> 3;
      v185 = ~(-1 << v195);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v194 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v193 = v35;
      v201 = a7;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v209)
        {
          v37 = v209;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v192 < v36)
        {
          v36 = v192;
        }

        v199 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v186;
        v198 = v39;
        v41 = v39 != 8;
        v42 = v186 + 1;
        if (v18 != v187)
        {
          v42 = 8;
          v40 = v41;
        }

        v197 = v40;
        v43 = v188;
        v44 = v18 & v185;
        v207 = a3 + (v37 - v209) * a11;
        v208 = v42;
        v206 = v42;
        do
        {
          v45 = 16 * v43;
          v46 = 16 * (v43 + 1) - 1;
          if (16 * v43 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 16 * v43;
          }

          if (v202 < v46)
          {
            v46 = v202;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v211)
          {
            v50 = v196 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (8 * v18 >= v209 && v45 >= a7)
          {
            v52 = v48 != v196;
            if (v43 != v211)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v197;
          }

          if (v203)
          {
            if (v200 | v195)
            {
              v53 = 0;
              v54 = 0;
              v55 = v200 != 0;
              v56 = 1;
              v58 = v195 != 0;
              v57 = v195;
              v59 = v200;
              do
              {
                --v57;
                if (v58)
                {
                  v54 |= (v44 & v56) << v53++;
                }

                else
                {
                  v57 = 0;
                }

                --v59;
                if (v55)
                {
                  v54 |= (v43 & ~(-1 << v200) & v56) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                v56 *= 2;
                --v53;
                v55 = v59 != 0;
                v58 = v57 != 0;
              }

              while (v59 | v57);
              v60 = v54 << 9;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v200) + (v18 >> v195) * v189);
          }

          else if (v194)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v193.i8[0];
            v64 = v193.i8[4];
            v66 = v194.i32[0];
            v67 = v194.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v18) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v43) << v61++;
              }

              else
              {
                v67 = 0;
              }

              v63 *= 2;
              --v61;
              v64 = v67 != 0;
              v65 = v66 != 0;
            }

            while (v67 | v66);
            v68 = v62 << 9;
          }

          else
          {
            v68 = 0;
          }

          v69 = *(result + 128) >> (*(result + 144) + a12);
          if (v69 <= 1)
          {
            v69 = 1;
          }

          v70 = v69 + 15;
          if (v70 < 0x20)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 4) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 7;
          if (v73 < 0x10)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
          }

          if (v74 | v71)
          {
            v75 = 0;
            v76 = 0;
            v77 = v71 != 0;
            v78 = v74 != 0;
            v79 = 1;
            do
            {
              --v71;
              if (v77)
              {
                v76 |= (v79 & v43) << v75++;
              }

              else
              {
                v71 = 0;
              }

              --v74;
              if (v78)
              {
                v76 |= (v79 & v18) << v75++;
              }

              else
              {
                v74 = 0;
              }

              v79 *= 2;
              --v75;
              v78 = v74 != 0;
              v77 = v71 != 0;
            }

            while (v74 | v71);
            v80 = 8 * v76;
          }

          else
          {
            v80 = 0;
          }

          v81 = (a4 + v80);
          v82 = v207 + 4 * (v47 - a7);
          v212 = (a2 + v68);
          if (v213)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v206 < 8)))
            {
              goto LABEL_109;
            }

            v84 = v49;
            v85 = (a4 + v80);
            v86 = v50;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v49 = v84;
            v44 = v18 & v185;
            LOBYTE(v50) = v86;
            v81 = v85;
            result = v210;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v206 < 8)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v208);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v215 = v83;
          v223 = v50;
          v224 = v208;
          v219 = v199;
          v220 = v47 - v45;
          v216 = v81;
          v217 = v82;
          v218 = a11;
          v221 = v198;
          v222 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v201;
            v87 = v43 + 1;
            goto LABEL_202;
          }

          v88 = *v81;
          a7 = v201;
          if (v88 == 63)
          {
            v91 = *(v83 + 1);
            v92 = (v83 + 32);
            v259 = vld2q_f64(v92);
            v93 = vzip2q_s64(*v83, v91);
            v226 = vzip1q_s64(*v83, v91);
            v230 = v93;
            v234 = v259.val[0];
            v238 = v259.val[1];
            v89 = 64;
          }

          else if (v88 == 1)
          {
            v90 = vld1q_dup_s16(v83);
            v226 = v90;
            v230 = v90;
            v234 = v90;
            v238 = v90;
            v89 = 2;
          }

          else if (*v81)
          {
            v94 = v81;
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 64, v83, v88);
            v81 = v94;
          }

          else
          {
            v89 = 0;
            v226 = 0uLL;
            v230 = 0uLL;
            v234 = 0uLL;
            v238 = 0uLL;
          }

          v95 = &v83[v89];
          v96 = v81[1];
          if (v96 == 63)
          {
            v99 = *(v95 + 16);
            v100 = (v95 + 32);
            v260 = vld2q_f64(v100);
            v101 = vzip2q_s64(*v95, v99);
            v227 = vzip1q_s64(*v95, v99);
            v231 = v101;
            v235 = v260.val[0];
            v239 = v260.val[1];
            v97 = 64;
          }

          else if (v96 == 1)
          {
            v98 = vld1q_dup_s16(v95);
            v227 = v98;
            v231 = v98;
            v235 = v98;
            v239 = v98;
            v97 = 2;
          }

          else if (v81[1])
          {
            v102 = v81;
            v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 64, v95, v96);
            v81 = v102;
          }

          else
          {
            v97 = 0;
            v227 = 0uLL;
            v231 = 0uLL;
            v235 = 0uLL;
            v239 = 0uLL;
          }

          v103 = v95 + v97;
          v104 = v81[2];
          if (v104 == 63)
          {
            v107 = *(v103 + 16);
            v108 = (v103 + 32);
            v261 = vld2q_f64(v108);
            v109 = vzip2q_s64(*v103, v107);
            v242 = vzip1q_s64(*v103, v107);
            v246 = v109;
            v250 = v261.val[0];
            v254 = v261.val[1];
            v105 = 64;
          }

          else if (v104 == 1)
          {
            v106 = vld1q_dup_s16(v103);
            v242 = v106;
            v246 = v106;
            v250 = v106;
            v254 = v106;
            v105 = 2;
          }

          else if (v81[2])
          {
            v110 = v81;
            v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 64, v103, v104);
            v81 = v110;
          }

          else
          {
            v105 = 0;
            v242 = 0uLL;
            v246 = 0uLL;
            v250 = 0uLL;
            v254 = 0uLL;
          }

          v111 = v103 + v105;
          v112 = v81[3];
          if (v112 == 63)
          {
            v115 = *(v111 + 16);
            v116 = (v111 + 32);
            v262 = vld2q_f64(v116);
            v117 = vzip2q_s64(*v111, v115);
            v243 = vzip1q_s64(*v111, v115);
            v247 = v117;
            v251 = v262.val[0];
            v255 = v262.val[1];
            v113 = 64;
          }

          else if (v112 == 1)
          {
            v114 = vld1q_dup_s16(v111);
            v243 = v114;
            v247 = v114;
            v251 = v114;
            v255 = v114;
            v113 = 2;
          }

          else if (v81[3])
          {
            v118 = v81;
            v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 64, v111, v112);
            v81 = v118;
          }

          else
          {
            v113 = 0;
            v243 = 0uLL;
            v247 = 0uLL;
            v251 = 0uLL;
            v255 = 0uLL;
          }

          v119 = v111 + v113;
          v120 = v81[4];
          if (v120 == 63)
          {
            v123 = *(v119 + 16);
            v124 = (v119 + 32);
            v263 = vld2q_f64(v124);
            v125 = vzip2q_s64(*v119, v123);
            v228 = vzip1q_s64(*v119, v123);
            v232 = v125;
            v236 = v263.val[0];
            v240 = v263.val[1];
            v121 = 64;
          }

          else if (v120 == 1)
          {
            v122 = vld1q_dup_s16(v119);
            v228 = v122;
            v232 = v122;
            v236 = v122;
            v240 = v122;
            v121 = 2;
          }

          else if (v81[4])
          {
            v126 = v81;
            v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 64, v119, v120);
            v81 = v126;
          }

          else
          {
            v121 = 0;
            v228 = 0uLL;
            v232 = 0uLL;
            v236 = 0uLL;
            v240 = 0uLL;
          }

          v127 = v119 + v121;
          v128 = v81[5];
          if (v128 == 63)
          {
            v131 = *(v127 + 16);
            v132 = (v127 + 32);
            v264 = vld2q_f64(v132);
            v133 = vzip2q_s64(*v127, v131);
            v229 = vzip1q_s64(*v127, v131);
            v233 = v133;
            v237 = v264.val[0];
            v241 = v264.val[1];
            v129 = 64;
          }

          else if (v128 == 1)
          {
            v130 = vld1q_dup_s16(v127);
            v229 = v130;
            v233 = v130;
            v237 = v130;
            v241 = v130;
            v129 = 2;
          }

          else if (v81[5])
          {
            v134 = v81;
            v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 64, v127, v128);
            v81 = v134;
          }

          else
          {
            v129 = 0;
            v229 = 0uLL;
            v233 = 0uLL;
            v237 = 0uLL;
            v241 = 0uLL;
          }

          v135 = v127 + v129;
          v136 = v81[6];
          if (v136 == 63)
          {
            v139 = *(v135 + 16);
            v140 = (v135 + 32);
            v265 = vld2q_f64(v140);
            v141 = vzip2q_s64(*v135, v139);
            v244 = vzip1q_s64(*v135, v139);
            v248 = v141;
            v252 = v265.val[0];
            v256 = v265.val[1];
            v137 = 64;
          }

          else if (v136 == 1)
          {
            v138 = vld1q_dup_s16(v135);
            v244 = v138;
            v248 = v138;
            v252 = v138;
            v256 = v138;
            v137 = 2;
          }

          else if (v81[6])
          {
            v142 = v81;
            v137 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 64, v135, v136);
            v81 = v142;
          }

          else
          {
            v137 = 0;
            v244 = 0uLL;
            v248 = 0uLL;
            v252 = 0uLL;
            v256 = 0uLL;
          }

          v143 = v135 + v137;
          v144 = v81[7];
          if (v144 == 63)
          {
            v147 = *(v143 + 16);
            v148 = (v143 + 32);
            v266 = vld2q_f64(v148);
            v149 = vzip2q_s64(*v143, v147);
            v245 = vzip1q_s64(*v143, v147);
            v249 = v149;
            v253 = v266.val[0];
            v257 = v266.val[1];
            v87 = v43 + 1;
            v145 = v221;
            if (!v221)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v87 = v43 + 1;
            if (v144 == 1)
            {
              v146 = vld1q_dup_s16(v143);
              v245 = v146;
              v249 = v146;
              v253 = v146;
              v257 = v146;
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }

            else if (v81[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 64, v143, v144);
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v245 = 0uLL;
              v249 = 0uLL;
              v253 = 0uLL;
              v257 = 0uLL;
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }
          }

          v150 = v222;
          if (v222)
          {
            v151 = 0;
            v152 = v219 << 6;
            v153 = 4 * v220;
            v154 = &v226.i8[v152 + v153];
            v155 = v217;
            v156 = v218;
            v157 = 4 * v222;
            if (4 * v222)
            {
              v158 = (4 * v222 - 1) >> 32 == 0;
            }

            else
            {
              v158 = 0;
            }

            v159 = !v158;
            v161 = v154 < v217 + v218 * (v145 - 1) + 4 * v222 && v217 < &__dst[64 * v145 + 448 + 64 * v219 + 4 * v222 + v153];
            v162 = v161 || v218 < 0;
            v163 = v157 & 0x1FFFFFFE0;
            v164 = v157 & 0x1FFFFFFF8;
            v165 = (v222 == 1) | v159 | v162;
            v166 = &v227.i8[v152 + v153];
            v167 = (v217 + 16);
            v168 = v154;
            v169 = v217;
            do
            {
              v170 = (v155 + v151 * v156);
              v171 = &v154[64 * v151];
              if (v165)
              {
                v172 = 0;
                goto LABEL_198;
              }

              if (v150 >= 8)
              {
                v174 = v167;
                v175 = v166;
                v176 = v157 & 0x1FFFFFFE0;
                do
                {
                  v177 = *v174;
                  *(v175 - 1) = *(v174 - 1);
                  *v175 = v177;
                  v175 += 32;
                  v174 += 2;
                  v176 -= 32;
                }

                while (v176);
                if (v157 == v163)
                {
                  goto LABEL_184;
                }

                v173 = v157 & 0x1FFFFFFE0;
                if ((v150 & 6) == 0)
                {
                  v170 += v163;
                  v171 += v163;
                  v172 = v157 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v173 = 0;
              }

              v171 += v164;
              v178 = -8 * ((v150 >> 1) & 0x3FFFFFFF) + v173;
              v179 = (v169 + v173);
              v180 = &v168[v173];
              do
              {
                v181 = *v179++;
                *v180 = v181;
                v180 += 8;
                v178 += 8;
              }

              while (v178);
              if (v157 == v164)
              {
                goto LABEL_184;
              }

              v170 += v164;
              v172 = v157 & 0xFFFFFFF8;
LABEL_198:
              v182 = v172 + 1;
              do
              {
                v183 = *v170++;
                *v171++ = v183;
              }

              while (v157 > v182++);
LABEL_184:
              ++v151;
              v166 += 64;
              v167 = (v167 + v156);
              v169 += v156;
              v168 += 64;
            }

            while (v151 != v145);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v226, 64, v215, v216, v223, v224);
LABEL_202:
          if (v213)
          {
            memcpy(v212, v83, 0x200uLL);
          }

          v21 = v43 == v202 >> 4;
          v43 = v87;
          result = v210;
        }

        while (!v21);
        v21 = v18++ == v191;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v258 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v209 = a8;
  v192 = a8 + a10 - 1;
  v210 = a1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 3;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v191 = v192 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v213 = v24;
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
      v203 = 0;
LABEL_32:
      v200 = v27 - 4;
      v195 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v189 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v203 = v32 >= v26;
    goto LABEL_32;
  }

  v203 = 0;
  v189 = 0;
  v195 = 0;
  v200 = 0;
LABEL_33:
  if (v18 <= v191)
  {
    v202 = a7 + a9 - 1;
    v188 = a7 >> 4;
    if (a7 >> 4 <= v202 >> 4)
    {
      v211 = v19 >> 4;
      v196 = v19 & 0xF;
      v186 = v20 & 7;
      v187 = v20 >> 3;
      v185 = ~(-1 << v195);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v194 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v193 = v35;
      v201 = a7;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v209)
        {
          v37 = v209;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v192 < v36)
        {
          v36 = v192;
        }

        v199 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v186;
        v198 = v39;
        v41 = v39 != 8;
        v42 = v186 + 1;
        if (v18 != v187)
        {
          v42 = 8;
          v40 = v41;
        }

        v197 = v40;
        v43 = v188;
        v44 = v18 & v185;
        v207 = a3 + (v37 - v209) * a11;
        v208 = v42;
        v206 = v42;
        do
        {
          v45 = 16 * v43;
          v46 = 16 * (v43 + 1) - 1;
          if (16 * v43 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 16 * v43;
          }

          if (v202 < v46)
          {
            v46 = v202;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v211)
          {
            v50 = v196 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (8 * v18 >= v209 && v45 >= a7)
          {
            v52 = v48 != v196;
            if (v43 != v211)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v197;
          }

          if (v203)
          {
            if (v200 | v195)
            {
              v53 = 0;
              v54 = 0;
              v55 = v200 != 0;
              v56 = 1;
              v58 = v195 != 0;
              v57 = v195;
              v59 = v200;
              do
              {
                --v57;
                if (v58)
                {
                  v54 |= (v44 & v56) << v53++;
                }

                else
                {
                  v57 = 0;
                }

                --v59;
                if (v55)
                {
                  v54 |= (v43 & ~(-1 << v200) & v56) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                v56 *= 2;
                --v53;
                v55 = v59 != 0;
                v58 = v57 != 0;
              }

              while (v59 | v57);
              v60 = v54 << 9;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v200) + (v18 >> v195) * v189);
          }

          else if (v194)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v193.i8[0];
            v64 = v193.i8[4];
            v66 = v194.i32[0];
            v67 = v194.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v18) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v43) << v61++;
              }

              else
              {
                v67 = 0;
              }

              v63 *= 2;
              --v61;
              v64 = v67 != 0;
              v65 = v66 != 0;
            }

            while (v67 | v66);
            v68 = v62 << 9;
          }

          else
          {
            v68 = 0;
          }

          v69 = *(result + 128) >> (*(result + 144) + a12);
          if (v69 <= 1)
          {
            v69 = 1;
          }

          v70 = v69 + 15;
          if (v70 < 0x20)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 4) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 7;
          if (v73 < 0x10)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
          }

          if (v74 | v71)
          {
            v75 = 0;
            v76 = 0;
            v77 = v71 != 0;
            v78 = v74 != 0;
            v79 = 1;
            do
            {
              --v71;
              if (v77)
              {
                v76 |= (v79 & v43) << v75++;
              }

              else
              {
                v71 = 0;
              }

              --v74;
              if (v78)
              {
                v76 |= (v79 & v18) << v75++;
              }

              else
              {
                v74 = 0;
              }

              v79 *= 2;
              --v75;
              v78 = v74 != 0;
              v77 = v71 != 0;
            }

            while (v74 | v71);
            v80 = 8 * v76;
          }

          else
          {
            v80 = 0;
          }

          v81 = (a4 + v80);
          v82 = (v207 + 4 * (v47 - a7));
          v212 = (a2 + v68);
          if (v213)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v206 < 8)))
            {
              goto LABEL_109;
            }

            v84 = v49;
            v85 = (a4 + v80);
            v86 = v50;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v49 = v84;
            v44 = v18 & v185;
            LOBYTE(v50) = v86;
            v81 = v85;
            result = v210;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v206 < 8)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v208);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v215 = v83;
          v223 = v50;
          v224 = v208;
          v219 = v199;
          v220 = v47 - v45;
          v216 = v81;
          v217 = v82;
          v218 = a11;
          v221 = v198;
          v222 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v201;
            v87 = v43 + 1;
            goto LABEL_202;
          }

          v88 = *v81;
          a7 = v201;
          if (v88 == 63)
          {
            v91 = *(v83 + 1);
            v92 = (v83 + 32);
            v259 = vld2q_f64(v92);
            v93 = vzip2q_s64(*v83, v91);
            v226 = vzip1q_s64(*v83, v91);
            v230 = v93;
            v234 = v259.val[0];
            v238 = v259.val[1];
            v89 = 64;
          }

          else if (v88 == 1)
          {
            v90 = vld1q_dup_s16(v83);
            v226 = v90;
            v230 = v90;
            v234 = v90;
            v238 = v90;
            v89 = 2;
          }

          else if (*v81)
          {
            v94 = v81;
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 64, v83, v88);
            v81 = v94;
          }

          else
          {
            v89 = 0;
            v226 = 0uLL;
            v230 = 0uLL;
            v234 = 0uLL;
            v238 = 0uLL;
          }

          v95 = &v83[v89];
          v96 = v81[1];
          if (v96 == 63)
          {
            v99 = *(v95 + 16);
            v100 = (v95 + 32);
            v260 = vld2q_f64(v100);
            v101 = vzip2q_s64(*v95, v99);
            v227 = vzip1q_s64(*v95, v99);
            v231 = v101;
            v235 = v260.val[0];
            v239 = v260.val[1];
            v97 = 64;
          }

          else if (v96 == 1)
          {
            v98 = vld1q_dup_s16(v95);
            v227 = v98;
            v231 = v98;
            v235 = v98;
            v239 = v98;
            v97 = 2;
          }

          else if (v81[1])
          {
            v102 = v81;
            v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 64, v95, v96);
            v81 = v102;
          }

          else
          {
            v97 = 0;
            v227 = 0uLL;
            v231 = 0uLL;
            v235 = 0uLL;
            v239 = 0uLL;
          }

          v103 = v95 + v97;
          v104 = v81[2];
          if (v104 == 63)
          {
            v107 = *(v103 + 16);
            v108 = (v103 + 32);
            v261 = vld2q_f64(v108);
            v109 = vzip2q_s64(*v103, v107);
            v242 = vzip1q_s64(*v103, v107);
            v246 = v109;
            v250 = v261.val[0];
            v254 = v261.val[1];
            v105 = 64;
          }

          else if (v104 == 1)
          {
            v106 = vld1q_dup_s16(v103);
            v242 = v106;
            v246 = v106;
            v250 = v106;
            v254 = v106;
            v105 = 2;
          }

          else if (v81[2])
          {
            v110 = v81;
            v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 64, v103, v104);
            v81 = v110;
          }

          else
          {
            v105 = 0;
            v242 = 0uLL;
            v246 = 0uLL;
            v250 = 0uLL;
            v254 = 0uLL;
          }

          v111 = v103 + v105;
          v112 = v81[3];
          if (v112 == 63)
          {
            v115 = *(v111 + 16);
            v116 = (v111 + 32);
            v262 = vld2q_f64(v116);
            v117 = vzip2q_s64(*v111, v115);
            v243 = vzip1q_s64(*v111, v115);
            v247 = v117;
            v251 = v262.val[0];
            v255 = v262.val[1];
            v113 = 64;
          }

          else if (v112 == 1)
          {
            v114 = vld1q_dup_s16(v111);
            v243 = v114;
            v247 = v114;
            v251 = v114;
            v255 = v114;
            v113 = 2;
          }

          else if (v81[3])
          {
            v118 = v81;
            v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 64, v111, v112);
            v81 = v118;
          }

          else
          {
            v113 = 0;
            v243 = 0uLL;
            v247 = 0uLL;
            v251 = 0uLL;
            v255 = 0uLL;
          }

          v119 = v111 + v113;
          v120 = v81[4];
          if (v120 == 63)
          {
            v123 = *(v119 + 16);
            v124 = (v119 + 32);
            v263 = vld2q_f64(v124);
            v125 = vzip2q_s64(*v119, v123);
            v228 = vzip1q_s64(*v119, v123);
            v232 = v125;
            v236 = v263.val[0];
            v240 = v263.val[1];
            v121 = 64;
          }

          else if (v120 == 1)
          {
            v122 = vld1q_dup_s16(v119);
            v228 = v122;
            v232 = v122;
            v236 = v122;
            v240 = v122;
            v121 = 2;
          }

          else if (v81[4])
          {
            v126 = v81;
            v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 64, v119, v120);
            v81 = v126;
          }

          else
          {
            v121 = 0;
            v228 = 0uLL;
            v232 = 0uLL;
            v236 = 0uLL;
            v240 = 0uLL;
          }

          v127 = v119 + v121;
          v128 = v81[5];
          if (v128 == 63)
          {
            v131 = *(v127 + 16);
            v132 = (v127 + 32);
            v264 = vld2q_f64(v132);
            v133 = vzip2q_s64(*v127, v131);
            v229 = vzip1q_s64(*v127, v131);
            v233 = v133;
            v237 = v264.val[0];
            v241 = v264.val[1];
            v129 = 64;
          }

          else if (v128 == 1)
          {
            v130 = vld1q_dup_s16(v127);
            v229 = v130;
            v233 = v130;
            v237 = v130;
            v241 = v130;
            v129 = 2;
          }

          else if (v81[5])
          {
            v134 = v81;
            v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 64, v127, v128);
            v81 = v134;
          }

          else
          {
            v129 = 0;
            v229 = 0uLL;
            v233 = 0uLL;
            v237 = 0uLL;
            v241 = 0uLL;
          }

          v135 = v127 + v129;
          v136 = v81[6];
          if (v136 == 63)
          {
            v139 = *(v135 + 16);
            v140 = (v135 + 32);
            v265 = vld2q_f64(v140);
            v141 = vzip2q_s64(*v135, v139);
            v244 = vzip1q_s64(*v135, v139);
            v248 = v141;
            v252 = v265.val[0];
            v256 = v265.val[1];
            v137 = 64;
          }

          else if (v136 == 1)
          {
            v138 = vld1q_dup_s16(v135);
            v244 = v138;
            v248 = v138;
            v252 = v138;
            v256 = v138;
            v137 = 2;
          }

          else if (v81[6])
          {
            v142 = v81;
            v137 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 64, v135, v136);
            v81 = v142;
          }

          else
          {
            v137 = 0;
            v244 = 0uLL;
            v248 = 0uLL;
            v252 = 0uLL;
            v256 = 0uLL;
          }

          v143 = v135 + v137;
          v144 = v81[7];
          if (v144 == 63)
          {
            v147 = *(v143 + 16);
            v148 = (v143 + 32);
            v266 = vld2q_f64(v148);
            v149 = vzip2q_s64(*v143, v147);
            v245 = vzip1q_s64(*v143, v147);
            v249 = v149;
            v253 = v266.val[0];
            v257 = v266.val[1];
            v87 = v43 + 1;
            v145 = v221;
            if (!v221)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v87 = v43 + 1;
            if (v144 == 1)
            {
              v146 = vld1q_dup_s16(v143);
              v245 = v146;
              v249 = v146;
              v253 = v146;
              v257 = v146;
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }

            else if (v81[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 64, v143, v144);
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v245 = 0uLL;
              v249 = 0uLL;
              v253 = 0uLL;
              v257 = 0uLL;
              v145 = v221;
              if (!v221)
              {
                goto LABEL_201;
              }
            }
          }

          v150 = v222;
          if (v222)
          {
            v151 = 0;
            v152 = v219 << 6;
            v153 = 4 * v220;
            v154 = &v226.i8[v152 + v153];
            v155 = v217;
            v156 = v218;
            v157 = 4 * v222;
            if (4 * v222)
            {
              v158 = (4 * v222 - 1) >> 32 == 0;
            }

            else
            {
              v158 = 0;
            }

            v159 = !v158;
            v161 = v154 < &v217->i8[4 * v222 + v218 * (v145 - 1)] && v217 < &__dst[64 * v145 + 448 + 64 * v219 + 4 * v222 + v153];
            v162 = v161 || v218 < 0;
            v163 = v157 & 0x1FFFFFFE0;
            v164 = v157 & 0x1FFFFFFF8;
            v165 = (v222 == 1) | v159 | v162;
            v166 = &v227.i8[v152 + v153];
            v167 = v217 + 1;
            v168 = v154;
            v169 = v217;
            do
            {
              v170 = &v155->i8[v151 * v156];
              v171 = &v154[64 * v151];
              if (v165)
              {
                v172 = 0;
                goto LABEL_198;
              }

              if (v150 >= 8)
              {
                v174 = v167;
                v175 = v166;
                v176 = v157 & 0x1FFFFFFE0;
                do
                {
                  v177 = *v174;
                  *(v175 - 1) = v174[-1];
                  *v175 = v177;
                  v175 += 32;
                  v174 += 2;
                  v176 -= 32;
                }

                while (v176);
                if (v157 == v163)
                {
                  goto LABEL_184;
                }

                v173 = v157 & 0x1FFFFFFE0;
                if ((v150 & 6) == 0)
                {
                  v170 += v163;
                  v171 += v163;
                  v172 = v157 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v173 = 0;
              }

              v171 += v164;
              v178 = -8 * ((v150 >> 1) & 0x3FFFFFFF) + v173;
              v179 = (v169->i64 + v173);
              v180 = &v168[v173];
              do
              {
                v181 = *v179++;
                *v180 = v181;
                v180 += 8;
                v178 += 8;
              }

              while (v178);
              if (v157 == v164)
              {
                goto LABEL_184;
              }

              v170 += v164;
              v172 = v157 & 0xFFFFFFF8;
LABEL_198:
              v182 = v172 + 1;
              do
              {
                v183 = *v170++;
                *v171++ = v183;
              }

              while (v157 > v182++);
LABEL_184:
              ++v151;
              v166 += 64;
              v167 = (v167 + v156);
              v169 = (v169 + v156);
              v168 += 64;
            }

            while (v151 != v145);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v226, 64, v215, v216, v223, v224);
LABEL_202:
          if (v213)
          {
            memcpy(v212, v83, 0x200uLL);
          }

          v21 = v43 == v202 >> 4;
          v43 = v87;
          result = v210;
        }

        while (!v21);
        v21 = v18++ == v191;
      }

      while (!v21);
    }
  }

  return result;
}