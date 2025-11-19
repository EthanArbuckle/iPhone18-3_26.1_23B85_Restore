uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v196);
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v215, 64, v72, v74);
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
              v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v216, 64, v80, v81);
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
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v231, 64, v87, v88);
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
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 64, v94, v95);
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
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 64, v101, v102);
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
              v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v218, 64, v108, v109);
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
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 64, v115, v116);
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
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 64, v122, v123);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v215, 64, v204, v205, v212, v213);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v215, 64, v72, v74);
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
              v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v216, 64, v80, v81);
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
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v231, 64, v87, v88);
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
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 64, v94, v95);
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
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 64, v101, v102);
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
              v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v218, 64, v108, v109);
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
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 64, v115, v116);
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
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 64, v122, v123);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v208);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 64, v83, v88);
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
            v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 64, v95, v96);
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
            v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 64, v103, v104);
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
            v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 64, v111, v112);
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
            v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 64, v119, v120);
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
            v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 64, v127, v128);
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
            v137 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 64, v135, v136);
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 64, v143, v144);
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
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v226, 64, v215, v216, v223, v224);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 64, v83, v88);
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
            v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 64, v95, v96);
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
            v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 64, v103, v104);
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
            v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 64, v111, v112);
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
            v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 64, v119, v120);
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
            v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 64, v127, v128);
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
            v137 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 64, v135, v136);
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 64, v143, v144);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v196);
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v215, 64, v72, v74);
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
              v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v216, 64, v80, v81);
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
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v231, 64, v87, v88);
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
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 64, v94, v95);
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
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 64, v101, v102);
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
              v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v218, 64, v108, v109);
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
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 64, v115, v116);
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
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 64, v122, v123);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v215, 64, v204, v205, v212, v213);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v215, 64, v72, v74);
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
              v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v216, 64, v80, v81);
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
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v231, 64, v87, v88);
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
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 64, v94, v95);
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
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 64, v101, v102);
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
              v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v218, 64, v108, v109);
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
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 64, v115, v116);
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
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 64, v122, v123);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v320 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v239 = a8;
  v219 = a8 + a10 - 1;
  v240 = a1;
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
  v218 = v219 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v243 = v24;
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
      v232 = 0;
LABEL_32:
      v229 = v27 - 4;
      v223 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v216 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v232 = v32 >= v26;
    goto LABEL_32;
  }

  v232 = 0;
  v216 = 0;
  v223 = 0;
  v229 = 0;
LABEL_33:
  if (v18 <= v218)
  {
    v231 = a7 + a9 - 1;
    v215 = a7 >> 4;
    if (a7 >> 4 <= v231 >> 4)
    {
      v241 = v19 >> 4;
      v224 = v19 & 0xF;
      v213 = v20 & 7;
      v214 = v20 >> 3;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v222 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v221 = v35;
      v230 = a7;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v239)
        {
          v37 = v239;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v219 < v36)
        {
          v36 = v219;
        }

        v238 = 8 * v18;
        v228 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v213;
        v227 = v39;
        v41 = v39 != 8;
        v42 = v213 + 1;
        if (v18 != v214)
        {
          v42 = 8;
          v40 = v41;
        }

        v226 = v40;
        v43 = v215;
        v225 = (v18 >> v223) * v216;
        v44 = v18 & ~(-1 << v223);
        v236 = a3 + (v37 - v239) * a11;
        v237 = v42;
        v235 = v42;
        v220 = v18;
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

          if (v231 < v46)
          {
            v46 = v231;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v241)
          {
            v50 = v224 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (v238 >= v239 && v45 >= a7)
          {
            v52 = v48 != v224;
            if (v43 != v241)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v226;
          }

          if (v232)
          {
            if (v229 | v223)
            {
              v53 = 0;
              v54 = 0;
              v55 = 1;
              v56 = v223 != 0;
              v57 = v229 != 0;
              v58 = v223;
              v59 = v229;
              do
              {
                --v58;
                if (v56)
                {
                  v54 |= (v44 & v55) << v53++;
                }

                else
                {
                  v58 = 0;
                }

                --v59;
                if (v57)
                {
                  v54 |= (v43 & ~(-1 << v229) & v55) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                v55 *= 2;
                --v53;
                v57 = v59 != 0;
                v56 = v58 != 0;
              }

              while (v59 | v58);
              v60 = v54 << 10;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v229) + v225);
          }

          else if (v222)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v221.i8[0];
            v65 = v221.i8[4];
            v66 = v222.i32[0];
            v67 = v222.i32[1];
            do
            {
              --v66;
              if (v64)
              {
                v62 |= (v63 & v18) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v65)
              {
                v62 |= (v63 & v43) << v61++;
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
            v68 = v62 << 10;
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
            if (!v71)
            {
LABEL_103:
              v80 = 0;
              goto LABEL_104;
            }
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
            if (!(v74 | v71))
            {
              goto LABEL_103;
            }
          }

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
LABEL_104:
          v81 = (a4 + v80);
          v82 = v236 + 8 * (v47 - a7);
          v242 = (a2 + v68);
          if (v243)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v235 < 8)))
            {
              goto LABEL_110;
            }

            v84 = v44;
            v85 = (a4 + v80);
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v45 = 16 * v43;
            v18 = v220;
            v81 = v85;
            v44 = v84;
            result = v240;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v235 < 8)))
            {
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v237);
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v245 = v83;
          v253 = v50;
          v254 = v237;
          v249 = v228;
          v250 = v47 - v45;
          v246 = v81;
          v247 = v82;
          v248 = a11;
          v251 = v227;
          v252 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            a7 = v230;
            v86 = v43 + 1;
            goto LABEL_202;
          }

          v87 = *v81;
          a7 = v230;
          if (v87 == 127)
          {
            v90 = v83[1];
            v91 = v83[2];
            v92 = v83[3];
            v93 = v83[4];
            v94 = v83[5];
            v95 = v83[6];
            v96 = v83[7];
            v256 = *v83;
            v257 = v91;
            v264 = v90;
            v265 = v92;
            v272 = v93;
            v273 = v95;
            v280 = v94;
            v281 = v96;
            v88 = 128;
          }

          else if (v87 == 3)
          {
            v89 = vld1q_dup_f32(v83->f32);
            v256 = v89;
            v257 = v89;
            v264 = v89;
            v265 = v89;
            v272 = v89;
            v273 = v89;
            v280 = v89;
            v281 = v89;
            v88 = 4;
          }

          else if (*v81)
          {
            v97 = v81;
            v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v256, 128, v83, v87);
            v81 = v97;
          }

          else
          {
            v88 = 0;
            v257 = 0u;
            v256 = 0u;
            v264 = 0u;
            v265 = 0u;
            v272 = 0u;
            v273 = 0u;
            v280 = 0u;
            v281 = 0u;
          }

          v98 = v83 + v88;
          v99 = v81[1];
          if (v99 == 127)
          {
            v102 = *(v98 + 16);
            v103 = *(v98 + 32);
            v104 = *(v98 + 48);
            v105 = *(v98 + 64);
            v106 = *(v98 + 80);
            v107 = *(v98 + 96);
            v108 = *(v98 + 112);
            v258 = *v98;
            v259 = v103;
            v266 = v102;
            v267 = v104;
            v274 = v105;
            v275 = v107;
            v282 = v106;
            v283 = v108;
            v100 = 128;
            v86 = v43 + 1;
          }

          else
          {
            v86 = v43 + 1;
            if (v99 == 3)
            {
              v101 = vld1q_dup_f32(v98);
              v258 = v101;
              v259 = v101;
              v266 = v101;
              v267 = v101;
              v274 = v101;
              v275 = v101;
              v282 = v101;
              v283 = v101;
              v100 = 4;
            }

            else if (v81[1])
            {
              v109 = v81;
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 128, v98, v99);
              v81 = v109;
            }

            else
            {
              v100 = 0;
              v258 = 0u;
              v259 = 0u;
              v266 = 0u;
              v267 = 0u;
              v274 = 0u;
              v275 = 0u;
              v282 = 0u;
              v283 = 0u;
            }
          }

          v110 = v98 + v100;
          v111 = v81[2];
          if (v111 == 127)
          {
            v114 = *(v110 + 16);
            v115 = *(v110 + 32);
            v116 = *(v110 + 48);
            v117 = *(v110 + 64);
            v118 = *(v110 + 80);
            v119 = *(v110 + 96);
            v120 = *(v110 + 112);
            v288 = *v110;
            v289 = v115;
            v296 = v114;
            v297 = v116;
            v304 = v117;
            v305 = v119;
            v312 = v118;
            v313 = v120;
            v112 = 128;
          }

          else if (v111 == 3)
          {
            v113 = vld1q_dup_f32(v110);
            v288 = v113;
            v289 = v113;
            v296 = v113;
            v297 = v113;
            v304 = v113;
            v305 = v113;
            v312 = v113;
            v313 = v113;
            v112 = 4;
          }

          else if (v81[2])
          {
            v121 = v81;
            v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v288, 128, v110, v111);
            v81 = v121;
          }

          else
          {
            v112 = 0;
            v288 = 0u;
            v289 = 0u;
            v296 = 0u;
            v297 = 0u;
            v304 = 0u;
            v305 = 0u;
            v312 = 0u;
            v313 = 0u;
          }

          v122 = v110 + v112;
          v123 = v81[3];
          if (v123 == 127)
          {
            v126 = *(v122 + 16);
            v127 = *(v122 + 32);
            v128 = *(v122 + 48);
            v129 = *(v122 + 64);
            v130 = *(v122 + 80);
            v131 = *(v122 + 96);
            v132 = *(v122 + 112);
            v290 = *v122;
            v291 = v127;
            v298 = v126;
            v299 = v128;
            v306 = v129;
            v307 = v131;
            v314 = v130;
            v315 = v132;
            v124 = 128;
          }

          else if (v123 == 3)
          {
            v125 = vld1q_dup_f32(v122);
            v290 = v125;
            v291 = v125;
            v298 = v125;
            v299 = v125;
            v306 = v125;
            v307 = v125;
            v314 = v125;
            v315 = v125;
            v124 = 4;
          }

          else if (v81[3])
          {
            v133 = v81;
            v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v290, 128, v122, v123);
            v81 = v133;
          }

          else
          {
            v124 = 0;
            v290 = 0u;
            v291 = 0u;
            v298 = 0u;
            v299 = 0u;
            v306 = 0u;
            v307 = 0u;
            v314 = 0u;
            v315 = 0u;
          }

          v134 = v122 + v124;
          v135 = v81[4];
          if (v135 == 127)
          {
            v138 = *(v134 + 16);
            v139 = *(v134 + 32);
            v140 = *(v134 + 48);
            v141 = *(v134 + 64);
            v142 = *(v134 + 80);
            v143 = *(v134 + 96);
            v144 = *(v134 + 112);
            v260 = *v134;
            v261 = v139;
            v268 = v138;
            v269 = v140;
            v276 = v141;
            v277 = v143;
            v284 = v142;
            v285 = v144;
            v136 = 128;
          }

          else if (v135 == 3)
          {
            v137 = vld1q_dup_f32(v134);
            v260 = v137;
            v261 = v137;
            v268 = v137;
            v269 = v137;
            v276 = v137;
            v277 = v137;
            v284 = v137;
            v285 = v137;
            v136 = 4;
          }

          else if (v81[4])
          {
            v145 = v81;
            v136 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 128, v134, v135);
            v81 = v145;
          }

          else
          {
            v136 = 0;
            v260 = 0u;
            v261 = 0u;
            v268 = 0u;
            v269 = 0u;
            v276 = 0u;
            v277 = 0u;
            v284 = 0u;
            v285 = 0u;
          }

          v146 = v134 + v136;
          v147 = v81[5];
          if (v147 == 127)
          {
            v150 = *(v146 + 16);
            v151 = *(v146 + 32);
            v152 = *(v146 + 48);
            v153 = *(v146 + 64);
            v154 = *(v146 + 80);
            v155 = *(v146 + 96);
            v156 = *(v146 + 112);
            v262 = *v146;
            v263 = v151;
            v270 = v150;
            v271 = v152;
            v278 = v153;
            v279 = v155;
            v286 = v154;
            v287 = v156;
            v148 = 128;
          }

          else if (v147 == 3)
          {
            v149 = vld1q_dup_f32(v146);
            v262 = v149;
            v263 = v149;
            v270 = v149;
            v271 = v149;
            v278 = v149;
            v279 = v149;
            v286 = v149;
            v287 = v149;
            v148 = 4;
          }

          else if (v81[5])
          {
            v157 = v81;
            v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 128, v146, v147);
            v81 = v157;
          }

          else
          {
            v148 = 0;
            v262 = 0u;
            v263 = 0u;
            v270 = 0u;
            v271 = 0u;
            v278 = 0u;
            v279 = 0u;
            v286 = 0u;
            v287 = 0u;
          }

          v158 = v146 + v148;
          v159 = v81[6];
          if (v159 == 127)
          {
            v162 = *(v158 + 16);
            v163 = *(v158 + 32);
            v164 = *(v158 + 48);
            v165 = *(v158 + 64);
            v166 = *(v158 + 80);
            v167 = *(v158 + 96);
            v168 = *(v158 + 112);
            v292 = *v158;
            v293 = v163;
            v300 = v162;
            v301 = v164;
            v308 = v165;
            v309 = v167;
            v316 = v166;
            v317 = v168;
            v160 = 128;
          }

          else if (v159 == 3)
          {
            v161 = vld1q_dup_f32(v158);
            v292 = v161;
            v293 = v161;
            v300 = v161;
            v301 = v161;
            v308 = v161;
            v309 = v161;
            v316 = v161;
            v317 = v161;
            v160 = 4;
          }

          else if (v81[6])
          {
            v169 = v81;
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 128, v158, v159);
            v81 = v169;
          }

          else
          {
            v160 = 0;
            v292 = 0u;
            v293 = 0u;
            v300 = 0u;
            v301 = 0u;
            v308 = 0u;
            v309 = 0u;
            v316 = 0u;
            v317 = 0u;
          }

          v170 = v158 + v160;
          v171 = v81[7];
          if (v171 == 127)
          {
            v174 = *(v170 + 16);
            v175 = *(v170 + 32);
            v176 = *(v170 + 48);
            v177 = *(v170 + 80);
            v178 = *(v170 + 96);
            v179 = *(v170 + 112);
            v180 = *(v170 + 64);
            v294 = *v170;
            v295 = v175;
            v302 = v174;
            v303 = v176;
            v310 = v180;
            v311 = v178;
            v318 = v177;
            v319 = v179;
            v172 = v251;
            if (!v251)
            {
              goto LABEL_201;
            }
          }

          else if (v171 == 3)
          {
            v173 = vld1q_dup_f32(v170);
            v294 = v173;
            v295 = v173;
            v302 = v173;
            v303 = v173;
            v310 = v173;
            v311 = v173;
            v318 = v173;
            v319 = v173;
            v172 = v251;
            if (!v251)
            {
              goto LABEL_201;
            }
          }

          else if (v81[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 128, v170, v171);
            v172 = v251;
            if (!v251)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v294 = 0u;
            v295 = 0u;
            v302 = 0u;
            v303 = 0u;
            v310 = 0u;
            v311 = 0u;
            v318 = 0u;
            v319 = 0u;
            v172 = v251;
            if (!v251)
            {
              goto LABEL_201;
            }
          }

          v181 = v252;
          if (v252)
          {
            v182 = 0;
            v183 = 8 * v250;
            v184 = &v256.i8[128 * v249 + v183];
            v185 = v247;
            v186 = v248;
            v187 = 8 * v252;
            if (8 * v252)
            {
              v188 = (8 * v252 - 1) >> 32 == 0;
            }

            else
            {
              v188 = 0;
            }

            v189 = !v188;
            v191 = v184 < v247 + v248 * (v172 - 1) + 8 * v252 && v247 < &__dst[128 * v172 + 896 + 128 * v249 + 8 * v252 + v183];
            v192 = v187 & 0x1FFFFFFE0;
            v193 = v189 | (v248 < 0) | v191;
            v194 = &v257 + 128 * v249 + v183;
            v195 = (v247 + 16);
            v196 = v184;
            v197 = v247;
            do
            {
              v198 = (v185 + v182 * v186);
              v199 = &v184[128 * v182];
              if (v193)
              {
                v200 = 0;
              }

              else
              {
                if (v181 < 4)
                {
                  v204 = 0;
LABEL_197:
                  v209 = -8 * v181 + v204;
                  v210 = (v197 + v204);
                  v211 = &v196[v204];
                  do
                  {
                    v212 = *v210++;
                    *v211 = v212;
                    v211 += 8;
                    v209 += 8;
                  }

                  while (v209);
                  goto LABEL_185;
                }

                v205 = v195;
                v206 = v194;
                v207 = v187 & 0x1FFFFFFE0;
                do
                {
                  v208 = *v205;
                  *(v206 - 1) = *(v205 - 1);
                  *v206 = v208;
                  v206 += 2;
                  v205 += 2;
                  v207 -= 32;
                }

                while (v207);
                if (v187 == v192)
                {
                  goto LABEL_185;
                }

                v204 = v187 & 0x1FFFFFFE0;
                if ((v181 & 3) != 0)
                {
                  goto LABEL_197;
                }

                v198 += v192;
                v199 += v192;
                v200 = v187 & 0xFFFFFFE0;
              }

              v201 = v200 + 1;
              do
              {
                v202 = *v198++;
                *v199++ = v202;
              }

              while (v187 > v201++);
LABEL_185:
              ++v182;
              v194 += 128;
              v195 = (v195 + v186);
              v197 += v186;
              v196 += 128;
            }

            while (v182 != v172);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v256, 128, v245, v246, v253, v254);
LABEL_202:
          if (v243)
          {
            memcpy(v242, v83, 0x400uLL);
          }

          v21 = v43 == v231 >> 4;
          v43 = v86;
          result = v240;
        }

        while (!v21);
        v21 = v18++ == v218;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v320 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v239 = a8;
  v219 = a8 + a10 - 1;
  v240 = a1;
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
  v218 = v219 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v243 = v24;
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
      v232 = 0;
LABEL_32:
      v229 = v27 - 4;
      v223 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v216 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v232 = v32 >= v26;
    goto LABEL_32;
  }

  v232 = 0;
  v216 = 0;
  v223 = 0;
  v229 = 0;
LABEL_33:
  if (v18 <= v218)
  {
    v231 = a7 + a9 - 1;
    v215 = a7 >> 4;
    if (a7 >> 4 <= v231 >> 4)
    {
      v241 = v19 >> 4;
      v224 = v19 & 0xF;
      v213 = v20 & 7;
      v214 = v20 >> 3;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v222 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v221 = v35;
      v230 = a7;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v239)
        {
          v37 = v239;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v219 < v36)
        {
          v36 = v219;
        }

        v238 = 8 * v18;
        v228 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v213;
        v227 = v39;
        v41 = v39 != 8;
        v42 = v213 + 1;
        if (v18 != v214)
        {
          v42 = 8;
          v40 = v41;
        }

        v226 = v40;
        v43 = v215;
        v225 = (v18 >> v223) * v216;
        v44 = v18 & ~(-1 << v223);
        v236 = a3 + (v37 - v239) * a11;
        v237 = v42;
        v235 = v42;
        v220 = v18;
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

          if (v231 < v46)
          {
            v46 = v231;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v241)
          {
            v50 = v224 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (v238 >= v239 && v45 >= a7)
          {
            v52 = v48 != v224;
            if (v43 != v241)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v226;
          }

          if (v232)
          {
            if (v229 | v223)
            {
              v53 = 0;
              v54 = 0;
              v55 = 1;
              v56 = v223 != 0;
              v57 = v229 != 0;
              v58 = v223;
              v59 = v229;
              do
              {
                --v58;
                if (v56)
                {
                  v54 |= (v44 & v55) << v53++;
                }

                else
                {
                  v58 = 0;
                }

                --v59;
                if (v57)
                {
                  v54 |= (v43 & ~(-1 << v229) & v55) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                v55 *= 2;
                --v53;
                v57 = v59 != 0;
                v56 = v58 != 0;
              }

              while (v59 | v58);
              v60 = v54 << 10;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v229) + v225);
          }

          else if (v222)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v221.i8[0];
            v65 = v221.i8[4];
            v66 = v222.i32[0];
            v67 = v222.i32[1];
            do
            {
              --v66;
              if (v64)
              {
                v62 |= (v63 & v18) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v65)
              {
                v62 |= (v63 & v43) << v61++;
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
            v68 = v62 << 10;
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
            if (!v71)
            {
LABEL_103:
              v80 = 0;
              goto LABEL_104;
            }
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
            if (!(v74 | v71))
            {
              goto LABEL_103;
            }
          }

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
LABEL_104:
          v81 = (a4 + v80);
          v82 = (v236 + 8 * (v47 - a7));
          v242 = (a2 + v68);
          if (v243)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v235 < 8)))
            {
              goto LABEL_110;
            }

            v84 = v44;
            v85 = (a4 + v80);
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v45 = 16 * v43;
            v18 = v220;
            v81 = v85;
            v44 = v84;
            result = v240;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v235 < 8)))
            {
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v237);
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v245 = v83;
          v253 = v50;
          v254 = v237;
          v249 = v228;
          v250 = v47 - v45;
          v246 = v81;
          v247 = v82;
          v248 = a11;
          v251 = v227;
          v252 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            a7 = v230;
            v86 = v43 + 1;
            goto LABEL_202;
          }

          v87 = *v81;
          a7 = v230;
          if (v87 == 127)
          {
            v90 = *(v83 + 1);
            v91 = *(v83 + 2);
            v92 = *(v83 + 3);
            v93 = *(v83 + 4);
            v94 = *(v83 + 5);
            v95 = *(v83 + 6);
            v96 = *(v83 + 7);
            v256 = *v83;
            v257 = v91;
            v264 = v90;
            v265 = v92;
            v272 = v93;
            v273 = v95;
            v280 = v94;
            v281 = v96;
            v88 = 128;
          }

          else if (v87 == 3)
          {
            v89 = vld1q_dup_f32(v83);
            v256 = v89;
            v257 = v89;
            v264 = v89;
            v265 = v89;
            v272 = v89;
            v273 = v89;
            v280 = v89;
            v281 = v89;
            v88 = 4;
          }

          else if (*v81)
          {
            v97 = v81;
            v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v256, 128, v83, v87);
            v81 = v97;
          }

          else
          {
            v88 = 0;
            v257 = 0u;
            v256 = 0u;
            v264 = 0u;
            v265 = 0u;
            v272 = 0u;
            v273 = 0u;
            v280 = 0u;
            v281 = 0u;
          }

          v98 = v83 + v88;
          v99 = v81[1];
          if (v99 == 127)
          {
            v102 = *(v98 + 16);
            v103 = *(v98 + 32);
            v104 = *(v98 + 48);
            v105 = *(v98 + 64);
            v106 = *(v98 + 80);
            v107 = *(v98 + 96);
            v108 = *(v98 + 112);
            v258 = *v98;
            v259 = v103;
            v266 = v102;
            v267 = v104;
            v274 = v105;
            v275 = v107;
            v282 = v106;
            v283 = v108;
            v100 = 128;
            v86 = v43 + 1;
          }

          else
          {
            v86 = v43 + 1;
            if (v99 == 3)
            {
              v101 = vld1q_dup_f32(v98);
              v258 = v101;
              v259 = v101;
              v266 = v101;
              v267 = v101;
              v274 = v101;
              v275 = v101;
              v282 = v101;
              v283 = v101;
              v100 = 4;
            }

            else if (v81[1])
            {
              v109 = v81;
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 128, v98, v99);
              v81 = v109;
            }

            else
            {
              v100 = 0;
              v258 = 0u;
              v259 = 0u;
              v266 = 0u;
              v267 = 0u;
              v274 = 0u;
              v275 = 0u;
              v282 = 0u;
              v283 = 0u;
            }
          }

          v110 = v98 + v100;
          v111 = v81[2];
          if (v111 == 127)
          {
            v114 = *(v110 + 16);
            v115 = *(v110 + 32);
            v116 = *(v110 + 48);
            v117 = *(v110 + 64);
            v118 = *(v110 + 80);
            v119 = *(v110 + 96);
            v120 = *(v110 + 112);
            v288 = *v110;
            v289 = v115;
            v296 = v114;
            v297 = v116;
            v304 = v117;
            v305 = v119;
            v312 = v118;
            v313 = v120;
            v112 = 128;
          }

          else if (v111 == 3)
          {
            v113 = vld1q_dup_f32(v110);
            v288 = v113;
            v289 = v113;
            v296 = v113;
            v297 = v113;
            v304 = v113;
            v305 = v113;
            v312 = v113;
            v313 = v113;
            v112 = 4;
          }

          else if (v81[2])
          {
            v121 = v81;
            v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v288, 128, v110, v111);
            v81 = v121;
          }

          else
          {
            v112 = 0;
            v288 = 0u;
            v289 = 0u;
            v296 = 0u;
            v297 = 0u;
            v304 = 0u;
            v305 = 0u;
            v312 = 0u;
            v313 = 0u;
          }

          v122 = v110 + v112;
          v123 = v81[3];
          if (v123 == 127)
          {
            v126 = *(v122 + 16);
            v127 = *(v122 + 32);
            v128 = *(v122 + 48);
            v129 = *(v122 + 64);
            v130 = *(v122 + 80);
            v131 = *(v122 + 96);
            v132 = *(v122 + 112);
            v290 = *v122;
            v291 = v127;
            v298 = v126;
            v299 = v128;
            v306 = v129;
            v307 = v131;
            v314 = v130;
            v315 = v132;
            v124 = 128;
          }

          else if (v123 == 3)
          {
            v125 = vld1q_dup_f32(v122);
            v290 = v125;
            v291 = v125;
            v298 = v125;
            v299 = v125;
            v306 = v125;
            v307 = v125;
            v314 = v125;
            v315 = v125;
            v124 = 4;
          }

          else if (v81[3])
          {
            v133 = v81;
            v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v290, 128, v122, v123);
            v81 = v133;
          }

          else
          {
            v124 = 0;
            v290 = 0u;
            v291 = 0u;
            v298 = 0u;
            v299 = 0u;
            v306 = 0u;
            v307 = 0u;
            v314 = 0u;
            v315 = 0u;
          }

          v134 = v122 + v124;
          v135 = v81[4];
          if (v135 == 127)
          {
            v138 = *(v134 + 16);
            v139 = *(v134 + 32);
            v140 = *(v134 + 48);
            v141 = *(v134 + 64);
            v142 = *(v134 + 80);
            v143 = *(v134 + 96);
            v144 = *(v134 + 112);
            v260 = *v134;
            v261 = v139;
            v268 = v138;
            v269 = v140;
            v276 = v141;
            v277 = v143;
            v284 = v142;
            v285 = v144;
            v136 = 128;
          }

          else if (v135 == 3)
          {
            v137 = vld1q_dup_f32(v134);
            v260 = v137;
            v261 = v137;
            v268 = v137;
            v269 = v137;
            v276 = v137;
            v277 = v137;
            v284 = v137;
            v285 = v137;
            v136 = 4;
          }

          else if (v81[4])
          {
            v145 = v81;
            v136 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 128, v134, v135);
            v81 = v145;
          }

          else
          {
            v136 = 0;
            v260 = 0u;
            v261 = 0u;
            v268 = 0u;
            v269 = 0u;
            v276 = 0u;
            v277 = 0u;
            v284 = 0u;
            v285 = 0u;
          }

          v146 = v134 + v136;
          v147 = v81[5];
          if (v147 == 127)
          {
            v150 = *(v146 + 16);
            v151 = *(v146 + 32);
            v152 = *(v146 + 48);
            v153 = *(v146 + 64);
            v154 = *(v146 + 80);
            v155 = *(v146 + 96);
            v156 = *(v146 + 112);
            v262 = *v146;
            v263 = v151;
            v270 = v150;
            v271 = v152;
            v278 = v153;
            v279 = v155;
            v286 = v154;
            v287 = v156;
            v148 = 128;
          }

          else if (v147 == 3)
          {
            v149 = vld1q_dup_f32(v146);
            v262 = v149;
            v263 = v149;
            v270 = v149;
            v271 = v149;
            v278 = v149;
            v279 = v149;
            v286 = v149;
            v287 = v149;
            v148 = 4;
          }

          else if (v81[5])
          {
            v157 = v81;
            v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 128, v146, v147);
            v81 = v157;
          }

          else
          {
            v148 = 0;
            v262 = 0u;
            v263 = 0u;
            v270 = 0u;
            v271 = 0u;
            v278 = 0u;
            v279 = 0u;
            v286 = 0u;
            v287 = 0u;
          }

          v158 = v146 + v148;
          v159 = v81[6];
          if (v159 == 127)
          {
            v162 = *(v158 + 16);
            v163 = *(v158 + 32);
            v164 = *(v158 + 48);
            v165 = *(v158 + 64);
            v166 = *(v158 + 80);
            v167 = *(v158 + 96);
            v168 = *(v158 + 112);
            v292 = *v158;
            v293 = v163;
            v300 = v162;
            v301 = v164;
            v308 = v165;
            v309 = v167;
            v316 = v166;
            v317 = v168;
            v160 = 128;
          }

          else if (v159 == 3)
          {
            v161 = vld1q_dup_f32(v158);
            v292 = v161;
            v293 = v161;
            v300 = v161;
            v301 = v161;
            v308 = v161;
            v309 = v161;
            v316 = v161;
            v317 = v161;
            v160 = 4;
          }

          else if (v81[6])
          {
            v169 = v81;
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 128, v158, v159);
            v81 = v169;
          }

          else
          {
            v160 = 0;
            v292 = 0u;
            v293 = 0u;
            v300 = 0u;
            v301 = 0u;
            v308 = 0u;
            v309 = 0u;
            v316 = 0u;
            v317 = 0u;
          }

          v170 = v158 + v160;
          v171 = v81[7];
          if (v171 == 127)
          {
            v174 = *(v170 + 16);
            v175 = *(v170 + 32);
            v176 = *(v170 + 48);
            v177 = *(v170 + 80);
            v178 = *(v170 + 96);
            v179 = *(v170 + 112);
            v180 = *(v170 + 64);
            v294 = *v170;
            v295 = v175;
            v302 = v174;
            v303 = v176;
            v310 = v180;
            v311 = v178;
            v318 = v177;
            v319 = v179;
            v172 = v251;
            if (!v251)
            {
              goto LABEL_201;
            }
          }

          else if (v171 == 3)
          {
            v173 = vld1q_dup_f32(v170);
            v294 = v173;
            v295 = v173;
            v302 = v173;
            v303 = v173;
            v310 = v173;
            v311 = v173;
            v318 = v173;
            v319 = v173;
            v172 = v251;
            if (!v251)
            {
              goto LABEL_201;
            }
          }

          else if (v81[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 128, v170, v171);
            v172 = v251;
            if (!v251)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v294 = 0u;
            v295 = 0u;
            v302 = 0u;
            v303 = 0u;
            v310 = 0u;
            v311 = 0u;
            v318 = 0u;
            v319 = 0u;
            v172 = v251;
            if (!v251)
            {
              goto LABEL_201;
            }
          }

          v181 = v252;
          if (v252)
          {
            v182 = 0;
            v183 = 8 * v250;
            v184 = &v256.i8[128 * v249 + v183];
            v185 = v247;
            v186 = v248;
            v187 = 8 * v252;
            if (8 * v252)
            {
              v188 = (8 * v252 - 1) >> 32 == 0;
            }

            else
            {
              v188 = 0;
            }

            v189 = !v188;
            v191 = v184 < v247 + 8 * v252 + v248 * (v172 - 1) && v247 < &__dst[128 * v172 + 896 + 128 * v249 + 8 * v252 + v183];
            v192 = v187 & 0x1FFFFFFE0;
            v193 = v189 | (v248 < 0) | v191;
            v194 = &v257 + 128 * v249 + v183;
            v195 = v247 + 1;
            v196 = v184;
            v197 = v247;
            do
            {
              v198 = v185 + v182 * v186;
              v199 = &v184[128 * v182];
              if (v193)
              {
                v200 = 0;
              }

              else
              {
                if (v181 < 4)
                {
                  v204 = 0;
LABEL_197:
                  v209 = -8 * v181 + v204;
                  v210 = (v197 + v204);
                  v211 = &v196[v204];
                  do
                  {
                    v212 = *v210++;
                    *v211 = v212;
                    v211 += 8;
                    v209 += 8;
                  }

                  while (v209);
                  goto LABEL_185;
                }

                v205 = v195;
                v206 = v194;
                v207 = v187 & 0x1FFFFFFE0;
                do
                {
                  v208 = *v205;
                  *(v206 - 1) = *(v205 - 1);
                  *v206 = v208;
                  v206 += 2;
                  v205 += 2;
                  v207 -= 32;
                }

                while (v207);
                if (v187 == v192)
                {
                  goto LABEL_185;
                }

                v204 = v187 & 0x1FFFFFFE0;
                if ((v181 & 3) != 0)
                {
                  goto LABEL_197;
                }

                v198 += v192;
                v199 += v192;
                v200 = v187 & 0xFFFFFFE0;
              }

              v201 = v200 + 1;
              do
              {
                v202 = *v198++;
                *v199++ = v202;
              }

              while (v187 > v201++);
LABEL_185:
              ++v182;
              v194 += 128;
              v195 = (v195 + v186);
              v197 = (v197 + v186);
              v196 += 128;
            }

            while (v182 != v172);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v256, 128, v245, v246, v253, v254);
LABEL_202:
          if (v243)
          {
            memcpy(v242, v83, 0x400uLL);
          }

          v21 = v43 == v231 >> 4;
          v43 = v86;
          result = v240;
        }

        while (!v21);
        v21 = v18++ == v218;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v308 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v227 = a8;
  v17 = a8 >> 3;
  v210 = a8 + a10 - 1;
  v212 = v210 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v228 = a1;
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
  v231 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v220 = result;
  if (v17 <= v212)
  {
    v219 = a7 + a9 - 1;
    v209 = a7 >> 4;
    if (a7 >> 4 <= v219 >> 4)
    {
      result = a1;
      v229 = (a5 - 1) >> 4;
      v206 = a5 - 1;
      v213 = (a5 - 1) & 0xF;
      v207 = (a6 - 1) & 7;
      v208 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v27 = vcgt_u32(v26, 0x1F0000000FLL);
      v218 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v27);
      v217 = v27;
      v205 = 8 * v19 * v18;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v227)
        {
          v29 = v227;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v210 < v28)
        {
          v28 = v210;
        }

        v226 = 8 * v17;
        v216 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v207;
        v215 = v31;
        v33 = v31 != 8;
        v34 = v209;
        v35 = v207 + 1;
        if (v17 != v208)
        {
          v35 = 8;
          v32 = v33;
        }

        v214 = v32;
        v224 = a3 + (v29 - v227) * a11;
        v225 = v35;
        v223 = v35;
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

          if (v219 < v37)
          {
            v37 = v219;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v229)
          {
            v41 = v213 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v226 >= v227 && v36 >= a7)
          {
            v43 = v39 != v213;
            if (v34 != v229)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v214;
          }

          if (v220)
          {
            v64 = 0;
            v65 = v205 >> (*(result + 57) != 0);
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

            v193 = (v64 >> 4) - 1;
            if (v66)
            {
              v194 = 0;
            }

            else
            {
              v194 = 32 - __clz(~(-1 << -__clz(v193)));
            }

            v195 = (v68 >> 3) - 1;
            if (v67)
            {
              v196 = 0;
              if (v194)
              {
                goto LABEL_198;
              }
            }

            else
            {
              v196 = 32 - __clz(~(-1 << -__clz(v195)));
              if (v196 | v194)
              {
LABEL_198:
                v197 = 0;
                v198 = 0;
                v199 = v34 & v193;
                v200 = v17 & v195;
                v201 = v196 != 0;
                v202 = v194 != 0;
                v203 = 1;
                do
                {
                  --v196;
                  if (v201)
                  {
                    v198 |= (v203 & v200) << v197++;
                  }

                  else
                  {
                    v196 = 0;
                  }

                  --v194;
                  if (v202)
                  {
                    v198 |= (v203 & v199) << v197++;
                  }

                  else
                  {
                    v194 = 0;
                  }

                  v203 *= 2;
                  --v197;
                  v202 = v194 != 0;
                  v201 = v196 != 0;
                }

                while (v194 | v196);
                v204 = v198 << 10;
                result = v228;
                goto LABEL_210;
              }
            }

            v204 = 0;
LABEL_210:
            v51 = v204 + ((v36 / v64 + v226 / v68 * ((v64 + v206) / v64)) << 14);
            goto LABEL_52;
          }

          if (v218)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v217.i8[0];
            v48 = v217.i8[4];
            v49 = v218.i32[0];
            v50 = v218.i32[1];
            do
            {
              --v49;
              if (v47)
              {
                v45 |= (v46 & v17) << v44++;
              }

              else
              {
                v49 = 0;
              }

              --v50;
              if (v48)
              {
                v45 |= (v46 & v34) << v44++;
              }

              else
              {
                v50 = 0;
              }

              v46 *= 2;
              --v44;
              v48 = v50 != 0;
              v47 = v49 != 0;
            }

            while (v50 | v49);
            v51 = v45 << 10;
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
          v71 = v224 + 8 * (v38 - a7);
          v72 = (a2 + v51);
          __src = (a2 + v51);
          if (v231)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v223 < 8)))
            {
              v72 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v225);
              goto LABEL_86;
            }

            v73 = v40;
            memcpy(__dst, __src, sizeof(__dst));
            v40 = v73;
            v72 = __dst;
            result = v228;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v223 < 8)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v233 = v72;
          v241 = v41;
          v242 = v225;
          v237 = v216;
          v238 = v38 - v36;
          v234 = v69;
          v235 = v71;
          v236 = a11;
          v239 = v215;
          v240 = v40;
          if ((v42 & 1) == 0)
          {
            v74 = *v69;
            a7 = v70;
            if (v74 == 127)
            {
              v77 = v72[1];
              v78 = v72[2];
              v79 = v72[3];
              v80 = v72[4];
              v81 = v72[5];
              v82 = v72[6];
              v83 = v72[7];
              v244 = *v72;
              v245 = v78;
              v252 = v77;
              v253 = v79;
              v260 = v80;
              v261 = v82;
              v268 = v81;
              v269 = v83;
              v75 = 128;
            }

            else if (v74 == 3)
            {
              v76 = vld1q_dup_f32(v72->f32);
              v244 = v76;
              v245 = v76;
              v252 = v76;
              v253 = v76;
              v260 = v76;
              v261 = v76;
              v268 = v76;
              v269 = v76;
              v75 = 4;
            }

            else if (*v69)
            {
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 128, v72, v74);
            }

            else
            {
              v75 = 0;
              v245 = 0u;
              v244 = 0u;
              v252 = 0u;
              v253 = 0u;
              v260 = 0u;
              v261 = 0u;
              v268 = 0u;
              v269 = 0u;
            }

            v84 = v72 + v75;
            v85 = v69[1];
            if (v85 == 127)
            {
              v88 = *(v84 + 16);
              v89 = *(v84 + 32);
              v90 = *(v84 + 48);
              v91 = *(v84 + 64);
              v92 = *(v84 + 80);
              v93 = *(v84 + 96);
              v94 = *(v84 + 112);
              v246 = *v84;
              v247 = v89;
              v254 = v88;
              v255 = v90;
              v262 = v91;
              v263 = v93;
              v270 = v92;
              v271 = v94;
              v86 = 128;
            }

            else if (v85 == 3)
            {
              v87 = vld1q_dup_f32(v84);
              v246 = v87;
              v247 = v87;
              v254 = v87;
              v255 = v87;
              v262 = v87;
              v263 = v87;
              v270 = v87;
              v271 = v87;
              v86 = 4;
            }

            else if (v69[1])
            {
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 128, v84, v85);
            }

            else
            {
              v86 = 0;
              v246 = 0u;
              v247 = 0u;
              v254 = 0u;
              v255 = 0u;
              v262 = 0u;
              v263 = 0u;
              v270 = 0u;
              v271 = 0u;
            }

            v95 = v84 + v86;
            v96 = v69[2];
            if (v96 == 127)
            {
              v99 = *(v95 + 16);
              v100 = *(v95 + 32);
              v101 = *(v95 + 48);
              v102 = *(v95 + 64);
              v103 = *(v95 + 80);
              v104 = *(v95 + 96);
              v105 = *(v95 + 112);
              v276 = *v95;
              v277 = v100;
              v284 = v99;
              v285 = v101;
              v292 = v102;
              v293 = v104;
              v300 = v103;
              v301 = v105;
              v97 = 128;
            }

            else if (v96 == 3)
            {
              v98 = vld1q_dup_f32(v95);
              v276 = v98;
              v277 = v98;
              v284 = v98;
              v285 = v98;
              v292 = v98;
              v293 = v98;
              v300 = v98;
              v301 = v98;
              v97 = 4;
            }

            else if (v69[2])
            {
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 128, v95, v96);
            }

            else
            {
              v97 = 0;
              v276 = 0u;
              v277 = 0u;
              v284 = 0u;
              v285 = 0u;
              v292 = 0u;
              v293 = 0u;
              v300 = 0u;
              v301 = 0u;
            }

            v106 = v95 + v97;
            v107 = v69[3];
            if (v107 == 127)
            {
              v110 = *(v106 + 16);
              v111 = *(v106 + 32);
              v112 = *(v106 + 48);
              v113 = *(v106 + 64);
              v114 = *(v106 + 80);
              v115 = *(v106 + 96);
              v116 = *(v106 + 112);
              v278 = *v106;
              v279 = v111;
              v286 = v110;
              v287 = v112;
              v294 = v113;
              v295 = v115;
              v302 = v114;
              v303 = v116;
              v108 = 128;
            }

            else if (v107 == 3)
            {
              v109 = vld1q_dup_f32(v106);
              v278 = v109;
              v279 = v109;
              v286 = v109;
              v287 = v109;
              v294 = v109;
              v295 = v109;
              v302 = v109;
              v303 = v109;
              v108 = 4;
            }

            else if (v69[3])
            {
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 128, v106, v107);
            }

            else
            {
              v108 = 0;
              v278 = 0u;
              v279 = 0u;
              v286 = 0u;
              v287 = 0u;
              v294 = 0u;
              v295 = 0u;
              v302 = 0u;
              v303 = 0u;
            }

            v117 = v106 + v108;
            v118 = v69[4];
            if (v118 == 127)
            {
              v121 = *(v117 + 16);
              v122 = *(v117 + 32);
              v123 = *(v117 + 48);
              v124 = *(v117 + 64);
              v125 = *(v117 + 80);
              v126 = *(v117 + 96);
              v127 = *(v117 + 112);
              v248 = *v117;
              v249 = v122;
              v256 = v121;
              v257 = v123;
              v264 = v124;
              v265 = v126;
              v272 = v125;
              v273 = v127;
              v119 = 128;
            }

            else if (v118 == 3)
            {
              v120 = vld1q_dup_f32(v117);
              v248 = v120;
              v249 = v120;
              v256 = v120;
              v257 = v120;
              v264 = v120;
              v265 = v120;
              v272 = v120;
              v273 = v120;
              v119 = 4;
            }

            else if (v69[4])
            {
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 128, v117, v118);
            }

            else
            {
              v119 = 0;
              v248 = 0u;
              v249 = 0u;
              v256 = 0u;
              v257 = 0u;
              v264 = 0u;
              v265 = 0u;
              v272 = 0u;
              v273 = 0u;
            }

            v128 = v117 + v119;
            v129 = v69[5];
            if (v129 == 127)
            {
              v132 = *(v128 + 16);
              v133 = *(v128 + 32);
              v134 = *(v128 + 48);
              v135 = *(v128 + 64);
              v136 = *(v128 + 80);
              v137 = *(v128 + 96);
              v138 = *(v128 + 112);
              v250 = *v128;
              v251 = v133;
              v258 = v132;
              v259 = v134;
              v266 = v135;
              v267 = v137;
              v274 = v136;
              v275 = v138;
              v130 = 128;
            }

            else if (v129 == 3)
            {
              v131 = vld1q_dup_f32(v128);
              v250 = v131;
              v251 = v131;
              v258 = v131;
              v259 = v131;
              v266 = v131;
              v267 = v131;
              v274 = v131;
              v275 = v131;
              v130 = 4;
            }

            else if (v69[5])
            {
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 128, v128, v129);
            }

            else
            {
              v130 = 0;
              v250 = 0u;
              v251 = 0u;
              v258 = 0u;
              v259 = 0u;
              v266 = 0u;
              v267 = 0u;
              v274 = 0u;
              v275 = 0u;
            }

            v139 = v128 + v130;
            v140 = v69[6];
            if (v140 == 127)
            {
              v143 = *(v139 + 16);
              v144 = *(v139 + 32);
              v145 = *(v139 + 48);
              v146 = *(v139 + 64);
              v147 = *(v139 + 80);
              v148 = *(v139 + 96);
              v149 = *(v139 + 112);
              v280 = *v139;
              v281 = v144;
              v288 = v143;
              v289 = v145;
              v296 = v146;
              v297 = v148;
              v304 = v147;
              v305 = v149;
              v141 = 128;
            }

            else if (v140 == 3)
            {
              v142 = vld1q_dup_f32(v139);
              v280 = v142;
              v281 = v142;
              v288 = v142;
              v289 = v142;
              v296 = v142;
              v297 = v142;
              v304 = v142;
              v305 = v142;
              v141 = 4;
            }

            else if (v69[6])
            {
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 128, v139, v140);
            }

            else
            {
              v141 = 0;
              v280 = 0u;
              v281 = 0u;
              v288 = 0u;
              v289 = 0u;
              v296 = 0u;
              v297 = 0u;
              v304 = 0u;
              v305 = 0u;
            }

            v150 = v139 + v141;
            v151 = v69[7];
            if (v151 == 127)
            {
              v154 = *(v150 + 16);
              v155 = *(v150 + 32);
              v156 = *(v150 + 48);
              v157 = *(v150 + 80);
              v158 = *(v150 + 96);
              v159 = *(v150 + 112);
              v160 = *(v150 + 64);
              v282 = *v150;
              v283 = v155;
              v290 = v154;
              v291 = v156;
              v298 = v160;
              v299 = v158;
              v306 = v157;
              v307 = v159;
              v152 = v239;
              if (v239)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v151 != 3)
              {
                if (v69[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v282, 128, v150, v151);
                  v152 = v239;
                  if (!v239)
                  {
                    goto LABEL_177;
                  }
                }

                else
                {
                  v282 = 0u;
                  v283 = 0u;
                  v290 = 0u;
                  v291 = 0u;
                  v298 = 0u;
                  v299 = 0u;
                  v306 = 0u;
                  v307 = 0u;
                  v152 = v239;
                  if (!v239)
                  {
                    goto LABEL_177;
                  }
                }

LABEL_147:
                v161 = v240;
                if (!v240)
                {
                  goto LABEL_177;
                }

                v162 = 0;
                v163 = 8 * v238;
                v164 = &v244.i8[128 * v237 + v163];
                v165 = v235;
                v166 = v236;
                v167 = 8 * v240;
                if (8 * v240)
                {
                  v168 = (8 * v240 - 1) >> 32 == 0;
                }

                else
                {
                  v168 = 0;
                }

                v169 = !v168;
                v171 = v164 < v235 + v236 * (v152 - 1) + 8 * v240 && v235 < &__dst[128 * v152 + 896 + 128 * v237 + 8 * v240 + v163];
                v172 = v167 & 0x1FFFFFFE0;
                v173 = v169 | (v236 < 0) | v171;
                v174 = &v245 + 128 * v237 + v163;
                v175 = (v235 + 16);
                v176 = v164;
                v177 = v235;
                while (2)
                {
                  v178 = (v165 + v162 * v166);
                  v179 = &v164[128 * v162];
                  if (v173)
                  {
                    v180 = 0;
LABEL_164:
                    v181 = v180 + 1;
                    do
                    {
                      v182 = *v178++;
                      *v179++ = v182;
                    }

                    while (v167 > v181++);
LABEL_161:
                    ++v162;
                    v174 += 128;
                    v175 = (v175 + v166);
                    v177 += v166;
                    v176 += 128;
                    if (v162 == v152)
                    {
                      goto LABEL_177;
                    }

                    continue;
                  }

                  break;
                }

                if (v161 >= 4)
                {
                  v185 = v175;
                  v186 = v174;
                  v187 = v167 & 0x1FFFFFFE0;
                  do
                  {
                    v188 = *v185;
                    *(v186 - 1) = *(v185 - 1);
                    *v186 = v188;
                    v186 += 2;
                    v185 += 2;
                    v187 -= 32;
                  }

                  while (v187);
                  if (v167 == v172)
                  {
                    goto LABEL_161;
                  }

                  v184 = v167 & 0x1FFFFFFE0;
                  if ((v161 & 3) == 0)
                  {
                    v178 += v172;
                    v179 += v172;
                    v180 = v167 & 0xFFFFFFE0;
                    goto LABEL_164;
                  }
                }

                else
                {
                  v184 = 0;
                }

                v189 = -8 * v161 + v184;
                v190 = (v177 + v184);
                v191 = &v176[v184];
                do
                {
                  v192 = *v190++;
                  *v191 = v192;
                  v191 += 8;
                  v189 += 8;
                }

                while (v189);
                goto LABEL_161;
              }

              v153 = vld1q_dup_f32(v150);
              v282 = v153;
              v283 = v153;
              v290 = v153;
              v291 = v153;
              v298 = v153;
              v299 = v153;
              v306 = v153;
              v307 = v153;
              v152 = v239;
              if (v239)
              {
                goto LABEL_147;
              }
            }

LABEL_177:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v244, 128, v233, v234, v241, v242);
            if (!v231)
            {
              goto LABEL_26;
            }

            goto LABEL_178;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v70;
          if (!v231)
          {
            goto LABEL_26;
          }

LABEL_178:
          memcpy(__src, v72, 0x400uLL);
LABEL_26:
          v21 = v34++ == v219 >> 4;
          result = v228;
        }

        while (!v21);
        v21 = v17++ == v212;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v308 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v227 = a8;
  v17 = a8 >> 3;
  v210 = a8 + a10 - 1;
  v212 = v210 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v228 = a1;
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
  v231 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v220 = result;
  if (v17 <= v212)
  {
    v219 = a7 + a9 - 1;
    v209 = a7 >> 4;
    if (a7 >> 4 <= v219 >> 4)
    {
      result = a1;
      v229 = (a5 - 1) >> 4;
      v206 = a5 - 1;
      v213 = (a5 - 1) & 0xF;
      v207 = (a6 - 1) & 7;
      v208 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v27 = vcgt_u32(v26, 0x1F0000000FLL);
      v218 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v27);
      v217 = v27;
      v205 = 8 * v19 * v18;
      do
      {
        v28 = (8 * v17) | 7;
        if (8 * v17 <= v227)
        {
          v29 = v227;
        }

        else
        {
          v29 = 8 * v17;
        }

        if (v210 < v28)
        {
          v28 = v210;
        }

        v226 = 8 * v17;
        v216 = v29 - 8 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v207;
        v215 = v31;
        v33 = v31 != 8;
        v34 = v209;
        v35 = v207 + 1;
        if (v17 != v208)
        {
          v35 = 8;
          v32 = v33;
        }

        v214 = v32;
        v224 = a3 + (v29 - v227) * a11;
        v225 = v35;
        v223 = v35;
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

          if (v219 < v37)
          {
            v37 = v219;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v229)
          {
            v41 = v213 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v226 >= v227 && v36 >= a7)
          {
            v43 = v39 != v213;
            if (v34 != v229)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v214;
          }

          if (v220)
          {
            v64 = 0;
            v65 = v205 >> (*(result + 57) != 0);
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

            v193 = (v64 >> 4) - 1;
            if (v66)
            {
              v194 = 0;
            }

            else
            {
              v194 = 32 - __clz(~(-1 << -__clz(v193)));
            }

            v195 = (v68 >> 3) - 1;
            if (v67)
            {
              v196 = 0;
              if (v194)
              {
                goto LABEL_198;
              }
            }

            else
            {
              v196 = 32 - __clz(~(-1 << -__clz(v195)));
              if (v196 | v194)
              {
LABEL_198:
                v197 = 0;
                v198 = 0;
                v199 = v34 & v193;
                v200 = v17 & v195;
                v201 = v196 != 0;
                v202 = v194 != 0;
                v203 = 1;
                do
                {
                  --v196;
                  if (v201)
                  {
                    v198 |= (v203 & v200) << v197++;
                  }

                  else
                  {
                    v196 = 0;
                  }

                  --v194;
                  if (v202)
                  {
                    v198 |= (v203 & v199) << v197++;
                  }

                  else
                  {
                    v194 = 0;
                  }

                  v203 *= 2;
                  --v197;
                  v202 = v194 != 0;
                  v201 = v196 != 0;
                }

                while (v194 | v196);
                v204 = v198 << 10;
                result = v228;
                goto LABEL_210;
              }
            }

            v204 = 0;
LABEL_210:
            v51 = v204 + ((v36 / v64 + v226 / v68 * ((v64 + v206) / v64)) << 14);
            goto LABEL_52;
          }

          if (v218)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v217.i8[0];
            v48 = v217.i8[4];
            v49 = v218.i32[0];
            v50 = v218.i32[1];
            do
            {
              --v49;
              if (v47)
              {
                v45 |= (v46 & v17) << v44++;
              }

              else
              {
                v49 = 0;
              }

              --v50;
              if (v48)
              {
                v45 |= (v46 & v34) << v44++;
              }

              else
              {
                v50 = 0;
              }

              v46 *= 2;
              --v44;
              v48 = v50 != 0;
              v47 = v49 != 0;
            }

            while (v50 | v49);
            v51 = v45 << 10;
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
          v71 = (v224 + 8 * (v38 - a7));
          v72 = (a2 + v51);
          __src = (a2 + v51);
          if (v231)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v223 < 8)))
            {
              v72 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v225);
              goto LABEL_86;
            }

            v73 = v40;
            memcpy(__dst, __src, sizeof(__dst));
            v40 = v73;
            v72 = __dst;
            result = v228;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v223 < 8)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v233 = v72;
          v241 = v41;
          v242 = v225;
          v237 = v216;
          v238 = v38 - v36;
          v234 = v69;
          v235 = v71;
          v236 = a11;
          v239 = v215;
          v240 = v40;
          if ((v42 & 1) == 0)
          {
            v74 = *v69;
            a7 = v70;
            if (v74 == 127)
            {
              v77 = *(v72 + 1);
              v78 = *(v72 + 2);
              v79 = *(v72 + 3);
              v80 = *(v72 + 4);
              v81 = *(v72 + 5);
              v82 = *(v72 + 6);
              v83 = *(v72 + 7);
              v244 = *v72;
              v245 = v78;
              v252 = v77;
              v253 = v79;
              v260 = v80;
              v261 = v82;
              v268 = v81;
              v269 = v83;
              v75 = 128;
            }

            else if (v74 == 3)
            {
              v76 = vld1q_dup_f32(v72);
              v244 = v76;
              v245 = v76;
              v252 = v76;
              v253 = v76;
              v260 = v76;
              v261 = v76;
              v268 = v76;
              v269 = v76;
              v75 = 4;
            }

            else if (*v69)
            {
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 128, v72, v74);
            }

            else
            {
              v75 = 0;
              v245 = 0u;
              v244 = 0u;
              v252 = 0u;
              v253 = 0u;
              v260 = 0u;
              v261 = 0u;
              v268 = 0u;
              v269 = 0u;
            }

            v84 = v72 + v75;
            v85 = v69[1];
            if (v85 == 127)
            {
              v88 = *(v84 + 16);
              v89 = *(v84 + 32);
              v90 = *(v84 + 48);
              v91 = *(v84 + 64);
              v92 = *(v84 + 80);
              v93 = *(v84 + 96);
              v94 = *(v84 + 112);
              v246 = *v84;
              v247 = v89;
              v254 = v88;
              v255 = v90;
              v262 = v91;
              v263 = v93;
              v270 = v92;
              v271 = v94;
              v86 = 128;
            }

            else if (v85 == 3)
            {
              v87 = vld1q_dup_f32(v84);
              v246 = v87;
              v247 = v87;
              v254 = v87;
              v255 = v87;
              v262 = v87;
              v263 = v87;
              v270 = v87;
              v271 = v87;
              v86 = 4;
            }

            else if (v69[1])
            {
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 128, v84, v85);
            }

            else
            {
              v86 = 0;
              v246 = 0u;
              v247 = 0u;
              v254 = 0u;
              v255 = 0u;
              v262 = 0u;
              v263 = 0u;
              v270 = 0u;
              v271 = 0u;
            }

            v95 = v84 + v86;
            v96 = v69[2];
            if (v96 == 127)
            {
              v99 = *(v95 + 16);
              v100 = *(v95 + 32);
              v101 = *(v95 + 48);
              v102 = *(v95 + 64);
              v103 = *(v95 + 80);
              v104 = *(v95 + 96);
              v105 = *(v95 + 112);
              v276 = *v95;
              v277 = v100;
              v284 = v99;
              v285 = v101;
              v292 = v102;
              v293 = v104;
              v300 = v103;
              v301 = v105;
              v97 = 128;
            }

            else if (v96 == 3)
            {
              v98 = vld1q_dup_f32(v95);
              v276 = v98;
              v277 = v98;
              v284 = v98;
              v285 = v98;
              v292 = v98;
              v293 = v98;
              v300 = v98;
              v301 = v98;
              v97 = 4;
            }

            else if (v69[2])
            {
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 128, v95, v96);
            }

            else
            {
              v97 = 0;
              v276 = 0u;
              v277 = 0u;
              v284 = 0u;
              v285 = 0u;
              v292 = 0u;
              v293 = 0u;
              v300 = 0u;
              v301 = 0u;
            }

            v106 = v95 + v97;
            v107 = v69[3];
            if (v107 == 127)
            {
              v110 = *(v106 + 16);
              v111 = *(v106 + 32);
              v112 = *(v106 + 48);
              v113 = *(v106 + 64);
              v114 = *(v106 + 80);
              v115 = *(v106 + 96);
              v116 = *(v106 + 112);
              v278 = *v106;
              v279 = v111;
              v286 = v110;
              v287 = v112;
              v294 = v113;
              v295 = v115;
              v302 = v114;
              v303 = v116;
              v108 = 128;
            }

            else if (v107 == 3)
            {
              v109 = vld1q_dup_f32(v106);
              v278 = v109;
              v279 = v109;
              v286 = v109;
              v287 = v109;
              v294 = v109;
              v295 = v109;
              v302 = v109;
              v303 = v109;
              v108 = 4;
            }

            else if (v69[3])
            {
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 128, v106, v107);
            }

            else
            {
              v108 = 0;
              v278 = 0u;
              v279 = 0u;
              v286 = 0u;
              v287 = 0u;
              v294 = 0u;
              v295 = 0u;
              v302 = 0u;
              v303 = 0u;
            }

            v117 = v106 + v108;
            v118 = v69[4];
            if (v118 == 127)
            {
              v121 = *(v117 + 16);
              v122 = *(v117 + 32);
              v123 = *(v117 + 48);
              v124 = *(v117 + 64);
              v125 = *(v117 + 80);
              v126 = *(v117 + 96);
              v127 = *(v117 + 112);
              v248 = *v117;
              v249 = v122;
              v256 = v121;
              v257 = v123;
              v264 = v124;
              v265 = v126;
              v272 = v125;
              v273 = v127;
              v119 = 128;
            }

            else if (v118 == 3)
            {
              v120 = vld1q_dup_f32(v117);
              v248 = v120;
              v249 = v120;
              v256 = v120;
              v257 = v120;
              v264 = v120;
              v265 = v120;
              v272 = v120;
              v273 = v120;
              v119 = 4;
            }

            else if (v69[4])
            {
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 128, v117, v118);
            }

            else
            {
              v119 = 0;
              v248 = 0u;
              v249 = 0u;
              v256 = 0u;
              v257 = 0u;
              v264 = 0u;
              v265 = 0u;
              v272 = 0u;
              v273 = 0u;
            }

            v128 = v117 + v119;
            v129 = v69[5];
            if (v129 == 127)
            {
              v132 = *(v128 + 16);
              v133 = *(v128 + 32);
              v134 = *(v128 + 48);
              v135 = *(v128 + 64);
              v136 = *(v128 + 80);
              v137 = *(v128 + 96);
              v138 = *(v128 + 112);
              v250 = *v128;
              v251 = v133;
              v258 = v132;
              v259 = v134;
              v266 = v135;
              v267 = v137;
              v274 = v136;
              v275 = v138;
              v130 = 128;
            }

            else if (v129 == 3)
            {
              v131 = vld1q_dup_f32(v128);
              v250 = v131;
              v251 = v131;
              v258 = v131;
              v259 = v131;
              v266 = v131;
              v267 = v131;
              v274 = v131;
              v275 = v131;
              v130 = 4;
            }

            else if (v69[5])
            {
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 128, v128, v129);
            }

            else
            {
              v130 = 0;
              v250 = 0u;
              v251 = 0u;
              v258 = 0u;
              v259 = 0u;
              v266 = 0u;
              v267 = 0u;
              v274 = 0u;
              v275 = 0u;
            }

            v139 = v128 + v130;
            v140 = v69[6];
            if (v140 == 127)
            {
              v143 = *(v139 + 16);
              v144 = *(v139 + 32);
              v145 = *(v139 + 48);
              v146 = *(v139 + 64);
              v147 = *(v139 + 80);
              v148 = *(v139 + 96);
              v149 = *(v139 + 112);
              v280 = *v139;
              v281 = v144;
              v288 = v143;
              v289 = v145;
              v296 = v146;
              v297 = v148;
              v304 = v147;
              v305 = v149;
              v141 = 128;
            }

            else if (v140 == 3)
            {
              v142 = vld1q_dup_f32(v139);
              v280 = v142;
              v281 = v142;
              v288 = v142;
              v289 = v142;
              v296 = v142;
              v297 = v142;
              v304 = v142;
              v305 = v142;
              v141 = 4;
            }

            else if (v69[6])
            {
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 128, v139, v140);
            }

            else
            {
              v141 = 0;
              v280 = 0u;
              v281 = 0u;
              v288 = 0u;
              v289 = 0u;
              v296 = 0u;
              v297 = 0u;
              v304 = 0u;
              v305 = 0u;
            }

            v150 = v139 + v141;
            v151 = v69[7];
            if (v151 == 127)
            {
              v154 = *(v150 + 16);
              v155 = *(v150 + 32);
              v156 = *(v150 + 48);
              v157 = *(v150 + 80);
              v158 = *(v150 + 96);
              v159 = *(v150 + 112);
              v160 = *(v150 + 64);
              v282 = *v150;
              v283 = v155;
              v290 = v154;
              v291 = v156;
              v298 = v160;
              v299 = v158;
              v306 = v157;
              v307 = v159;
              v152 = v239;
              if (v239)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v151 != 3)
              {
                if (v69[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v282, 128, v150, v151);
                  v152 = v239;
                  if (!v239)
                  {
                    goto LABEL_177;
                  }
                }

                else
                {
                  v282 = 0u;
                  v283 = 0u;
                  v290 = 0u;
                  v291 = 0u;
                  v298 = 0u;
                  v299 = 0u;
                  v306 = 0u;
                  v307 = 0u;
                  v152 = v239;
                  if (!v239)
                  {
                    goto LABEL_177;
                  }
                }

LABEL_147:
                v161 = v240;
                if (!v240)
                {
                  goto LABEL_177;
                }

                v162 = 0;
                v163 = 8 * v238;
                v164 = &v244.i8[128 * v237 + v163];
                v165 = v235;
                v166 = v236;
                v167 = 8 * v240;
                if (8 * v240)
                {
                  v168 = (8 * v240 - 1) >> 32 == 0;
                }

                else
                {
                  v168 = 0;
                }

                v169 = !v168;
                v171 = v164 < v235 + 8 * v240 + v236 * (v152 - 1) && v235 < &__dst[128 * v152 + 896 + 128 * v237 + 8 * v240 + v163];
                v172 = v167 & 0x1FFFFFFE0;
                v173 = v169 | (v236 < 0) | v171;
                v174 = &v245 + 128 * v237 + v163;
                v175 = v235 + 1;
                v176 = v164;
                v177 = v235;
                while (2)
                {
                  v178 = v165 + v162 * v166;
                  v179 = &v164[128 * v162];
                  if (v173)
                  {
                    v180 = 0;
LABEL_164:
                    v181 = v180 + 1;
                    do
                    {
                      v182 = *v178++;
                      *v179++ = v182;
                    }

                    while (v167 > v181++);
LABEL_161:
                    ++v162;
                    v174 += 128;
                    v175 = (v175 + v166);
                    v177 = (v177 + v166);
                    v176 += 128;
                    if (v162 == v152)
                    {
                      goto LABEL_177;
                    }

                    continue;
                  }

                  break;
                }

                if (v161 >= 4)
                {
                  v185 = v175;
                  v186 = v174;
                  v187 = v167 & 0x1FFFFFFE0;
                  do
                  {
                    v188 = *v185;
                    *(v186 - 1) = *(v185 - 1);
                    *v186 = v188;
                    v186 += 2;
                    v185 += 2;
                    v187 -= 32;
                  }

                  while (v187);
                  if (v167 == v172)
                  {
                    goto LABEL_161;
                  }

                  v184 = v167 & 0x1FFFFFFE0;
                  if ((v161 & 3) == 0)
                  {
                    v178 += v172;
                    v179 += v172;
                    v180 = v167 & 0xFFFFFFE0;
                    goto LABEL_164;
                  }
                }

                else
                {
                  v184 = 0;
                }

                v189 = -8 * v161 + v184;
                v190 = (v177 + v184);
                v191 = &v176[v184];
                do
                {
                  v192 = *v190++;
                  *v191 = v192;
                  v191 += 8;
                  v189 += 8;
                }

                while (v189);
                goto LABEL_161;
              }

              v153 = vld1q_dup_f32(v150);
              v282 = v153;
              v283 = v153;
              v290 = v153;
              v291 = v153;
              v298 = v153;
              v299 = v153;
              v306 = v153;
              v307 = v153;
              v152 = v239;
              if (v239)
              {
                goto LABEL_147;
              }
            }

LABEL_177:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v244, 128, v233, v234, v241, v242);
            if (!v231)
            {
              goto LABEL_26;
            }

            goto LABEL_178;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v70;
          if (!v231)
          {
            goto LABEL_26;
          }

LABEL_178:
          memcpy(__src, v72, 0x400uLL);
LABEL_26:
          v21 = v34++ == v219 >> 4;
          result = v228;
        }

        while (!v21);
        v21 = v17++ == v212;
      }

      while (!v21);
    }
  }

  return result;
}