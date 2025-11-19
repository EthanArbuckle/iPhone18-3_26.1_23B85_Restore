uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v161 = v21;
  v162 = v22;
  v150 = v23;
  v24 = v12;
  v312 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v167 = v14;
  v25 = v14 >> 2;
  v149 = v14 + a10 - 1;
  v151 = v149 >> 2;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v169 = v24;
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
  v171 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v160 = result;
  if (v25 <= v151)
  {
    v159 = v16 + a9 - 1;
    v148 = v16 >> 3;
    if (v16 >> 3 <= v159 >> 3)
    {
      result = v24;
      v168 = (v20 - 1) >> 3;
      v145 = v20 - 1;
      v152 = (v20 - 1) & 7;
      v146 = (v18 - 1) & 3;
      v147 = (v18 - 1) >> 2;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v157 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v156 = v35;
      v144 = 8 * v27 * v26;
      v158 = v16;
      do
      {
        v36 = (4 * v25) | 3;
        if (4 * v25 <= v167)
        {
          v37 = v167;
        }

        else
        {
          v37 = 4 * v25;
        }

        if (v149 < v36)
        {
          v36 = v149;
        }

        v166 = 4 * v25;
        v155 = v37 - 4 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v146;
        v154 = v39;
        v41 = v39 != 4;
        v42 = v148;
        v43 = v146 + 1;
        if (v25 != v147)
        {
          v43 = 4;
          v40 = v41;
        }

        v153 = v40;
        v164 = v150 + (v37 - v167) * a11;
        v165 = v43;
        v163 = v43;
        do
        {
          v44 = 8 * v42;
          v45 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= v16)
          {
            v46 = v16;
          }

          else
          {
            v46 = 8 * v42;
          }

          if (v159 < v45)
          {
            v45 = v159;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v168)
          {
            v49 = v152 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (v166 >= v167 && v44 >= v16)
          {
            v51 = v47 != v152;
            if (v42 != v168)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v153;
          }

          if (v160)
          {
            v72 = 0;
            v73 = v144 >> (*(result + 57) != 0);
            v74 = 1;
            if (v73 <= 63)
            {
              if (v73 > 15)
              {
                if (v73 == 16)
                {
                  v74 = 0;
                  v75 = 64;
                  v72 = 128;
                }

                else
                {
                  v75 = 0;
                  if (v73 == 32)
                  {
                    v74 = 0;
                    v72 = 64;
                    v75 = 64;
                  }
                }
              }

              else if (v73 == 4)
              {
                v74 = 0;
                v75 = 128;
                v72 = 256;
              }

              else
              {
                v75 = 0;
                if (v73 == 8)
                {
                  v74 = 0;
                  v72 = 128;
                  v75 = 128;
                }
              }
            }

            else if (v73 <= 255)
            {
              if (v73 == 64)
              {
                v74 = 0;
                v75 = 32;
                v72 = 64;
              }

              else
              {
                v75 = 0;
                if (v73 == 128)
                {
                  v74 = 0;
                  v72 = 32;
                  v75 = 32;
                }
              }
            }

            else if (v73 == 256)
            {
              v74 = 0;
              v75 = 16;
              v72 = 32;
            }

            else if (v73 == 512)
            {
              v74 = 0;
              v72 = 16;
              v75 = 16;
            }

            else
            {
              v75 = 0;
              if (v73 == 1024)
              {
                v74 = 0;
                v75 = 8;
                v72 = 16;
              }
            }

            v132 = (v72 >> 3) - 1;
            v133 = (v75 >> 2) - 1;
            if ((v74 & 1) != 0 || (v134 = 32 - __clz(~(-1 << -__clz(v132))), v135 = 32 - __clz(~(-1 << -__clz(v133))), !(v135 | v134)))
            {
              v143 = 0;
            }

            else
            {
              v136 = 0;
              v137 = 0;
              v138 = v42 & v132;
              v139 = v25 & v133;
              v140 = v135 != 0;
              v141 = v134 != 0;
              v142 = 1;
              do
              {
                --v135;
                if (v140)
                {
                  v137 |= (v142 & v139) << v136++;
                }

                else
                {
                  v135 = 0;
                }

                --v134;
                if (v141)
                {
                  v137 |= (v142 & v138) << v136++;
                }

                else
                {
                  v134 = 0;
                }

                v142 *= 2;
                --v136;
                v141 = v134 != 0;
                v140 = v135 != 0;
              }

              while (v134 | v135);
              v143 = v137 << 10;
              result = v169;
            }

            v59 = v143 + ((v44 / v72 + v166 / v75 * ((v72 + v145) / v72)) << 14);
          }

          else if (v157)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v56 = v156.i8[0];
            v55 = v156.i8[4];
            v57 = v157.i32[0];
            v58 = v157.i32[1];
            do
            {
              --v57;
              if (v56)
              {
                v53 |= (v54 & v25) << v52++;
              }

              else
              {
                v57 = 0;
              }

              --v58;
              if (v55)
              {
                v53 |= (v54 & v42) << v52++;
              }

              else
              {
                v58 = 0;
              }

              v54 *= 2;
              --v52;
              v55 = v58 != 0;
              v56 = v57 != 0;
            }

            while (v58 | v57);
            v59 = v53 << 10;
          }

          else
          {
            v59 = 0;
          }

          v60 = *(result + 128) >> (*(result + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 7;
          if (v61 < 0x10)
          {
            v62 = 0;
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 3) - 1)));
          }

          v63 = *(result + 132) >> (*(result + 144) + a12);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v63 + 3;
          if (v64 < 8)
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
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 2) - 1)));
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
          v76 = (v162 + v71);
          v77 = v164 + ((v46 - v16) << 6);
          v78 = (v161 + v59);
          __src = (v161 + v59);
          if (v171)
          {
            v78 = __dst;
            if (!(v50 & 1 | (v49 < 8u) | (v163 < 4)))
            {
              goto LABEL_84;
            }

            memcpy(__dst, __src, sizeof(__dst));
            result = v169;
          }

          else if (!(v50 & 1 | (v49 < 8u) | (v163 < 4)))
          {
LABEL_84:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v77, a11, v78, v76, v49, v165, *(*(result + 208) + 52));
LABEL_85:
            v16 = v158;
            v79 = v42 + 1;
            if (!v171)
            {
              goto LABEL_26;
            }

LABEL_167:
            memcpy(__src, v78, 0x800uLL);
            goto LABEL_26;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v173 = v78;
          v181 = v49;
          v182 = v165;
          v177 = v155;
          v178 = v46 - v44;
          v174 = v76;
          v175 = v77;
          v176 = a11;
          v179 = v154;
          v180 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_85;
          }

          v80 = *(result + 208);
          v81 = *(v80 + 52);
          v82 = *v76;
          if (*v76)
          {
            if (v82 < 0xF0)
            {
              if (v82 == 7)
              {
                v84 = vld1q_dup_f64(v78);
                v184 = v84;
                v185 = v84;
                v186 = v84;
                v187 = v84;
                v188 = v84;
                v189 = v84;
                v190 = v84;
                v191 = v84;
                v216 = v84;
                v217 = v84;
                v218 = v84;
                v219 = v84;
                v220 = v84;
                v221 = v84;
                v83 = 8;
                v222 = v84;
                v223 = v84;
              }

              else
              {
                v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v184, 512, v78, v82);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v184, 512, v78, v82, *(v80 + 52));
              v83 = 128;
            }
          }

          else
          {
            v83 = 0;
            v191 = 0u;
            v190 = 0u;
            v189 = 0u;
            v188 = 0u;
            v187 = 0u;
            v186 = 0u;
            v185 = 0u;
            v184 = 0u;
            v216 = 0u;
            v217 = 0u;
            v218 = 0u;
            v219 = 0u;
            v220 = 0u;
            v221 = 0u;
            v222 = 0u;
            v223 = 0u;
          }

          v85 = &v78[v83];
          v86 = v76[1];
          if (v76[1])
          {
            if (v86 < 0xF0)
            {
              if (v86 == 7)
              {
                v88 = vld1q_dup_f64(v85);
                v192 = v88;
                v193 = v88;
                v194 = v88;
                v195 = v88;
                v196 = v88;
                v197 = v88;
                v198 = v88;
                v199 = v88;
                v224 = v88;
                v225 = v88;
                v226 = v88;
                v227 = v88;
                v228 = v88;
                v229 = v88;
                v87 = 8;
                v230 = v88;
                v231 = v88;
              }

              else
              {
                v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v192, 512, v85, v86);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v192, 512, v85, v86, v81);
              v87 = 128;
            }
          }

          else
          {
            v87 = 0;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0u;
            v195 = 0u;
            v192 = 0u;
            v193 = 0u;
            v224 = 0u;
            v225 = 0u;
            v226 = 0u;
            v227 = 0u;
            v228 = 0u;
            v229 = 0u;
            v230 = 0u;
            v231 = 0u;
          }

          v89 = (v85 + v87);
          v90 = v76[2];
          if (v76[2])
          {
            if (v90 < 0xF0)
            {
              if (v90 == 7)
              {
                v92 = vld1q_dup_f64(v89);
                v248 = v92;
                v249 = v92;
                v250 = v92;
                v251 = v92;
                v252 = v92;
                v253 = v92;
                v254 = v92;
                v255 = v92;
                v280 = v92;
                v281 = v92;
                v282 = v92;
                v283 = v92;
                v284 = v92;
                v285 = v92;
                v286 = v92;
                v91 = 8;
                v287 = v92;
              }

              else
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v248, 512, v89, v90);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v248, 512, v89, v90, v81);
              v91 = 128;
            }
          }

          else
          {
            v91 = 0;
            v254 = 0u;
            v255 = 0u;
            v252 = 0u;
            v253 = 0u;
            v250 = 0u;
            v251 = 0u;
            v248 = 0u;
            v249 = 0u;
            v280 = 0u;
            v281 = 0u;
            v282 = 0u;
            v283 = 0u;
            v284 = 0u;
            v285 = 0u;
            v286 = 0u;
            v287 = 0u;
          }

          v93 = (v89 + v91);
          v94 = v76[3];
          if (v76[3])
          {
            if (v94 < 0xF0)
            {
              if (v94 == 7)
              {
                v96 = vld1q_dup_f64(v93);
                v256 = v96;
                v257 = v96;
                v258 = v96;
                v259 = v96;
                v260 = v96;
                v261 = v96;
                v262 = v96;
                v263 = v96;
                v288 = v96;
                v289 = v96;
                v290 = v96;
                v291 = v96;
                v292 = v96;
                v293 = v96;
                v294 = v96;
                v95 = 8;
                v295 = v96;
              }

              else
              {
                v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v256, 512, v93, v94);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v256, 512, v93, v94, v81);
              v95 = 128;
            }
          }

          else
          {
            v95 = 0;
            v262 = 0u;
            v263 = 0u;
            v260 = 0u;
            v261 = 0u;
            v258 = 0u;
            v259 = 0u;
            v256 = 0u;
            v257 = 0u;
            v288 = 0u;
            v289 = 0u;
            v290 = 0u;
            v291 = 0u;
            v292 = 0u;
            v293 = 0u;
            v294 = 0u;
            v295 = 0u;
          }

          v97 = (v93 + v95);
          v98 = v76[4];
          if (v76[4])
          {
            if (v98 < 0xF0)
            {
              if (v98 == 7)
              {
                v100 = vld1q_dup_f64(v97);
                v200 = v100;
                v201 = v100;
                v202 = v100;
                v203 = v100;
                v204 = v100;
                v205 = v100;
                v206 = v100;
                v207 = v100;
                v232 = v100;
                v233 = v100;
                v234 = v100;
                v235 = v100;
                v236 = v100;
                v237 = v100;
                v99 = 8;
                v238 = v100;
                v239 = v100;
              }

              else
              {
                v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v200, 512, v97, v98);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v200, 512, v97, v98, v81);
              v99 = 128;
            }
          }

          else
          {
            v99 = 0;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v232 = 0u;
            v233 = 0u;
            v234 = 0u;
            v235 = 0u;
            v236 = 0u;
            v237 = 0u;
            v238 = 0u;
            v239 = 0u;
          }

          v101 = (v97 + v99);
          v102 = v76[5];
          if (v76[5])
          {
            if (v102 < 0xF0)
            {
              if (v102 == 7)
              {
                v104 = vld1q_dup_f64(v101);
                v208 = v104;
                v209 = v104;
                v210 = v104;
                v211 = v104;
                v212 = v104;
                v213 = v104;
                v214 = v104;
                v215 = v104;
                v240 = v104;
                v241 = v104;
                v242 = v104;
                v243 = v104;
                v244 = v104;
                v245 = v104;
                v103 = 8;
                v246 = v104;
                v247 = v104;
              }

              else
              {
                v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v208, 512, v101, v102);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v208, 512, v101, v102, v81);
              v103 = 128;
            }
          }

          else
          {
            v103 = 0;
            v214 = 0u;
            v215 = 0u;
            v212 = 0u;
            v213 = 0u;
            v210 = 0u;
            v211 = 0u;
            v208 = 0u;
            v209 = 0u;
            v240 = 0u;
            v241 = 0u;
            v242 = 0u;
            v243 = 0u;
            v244 = 0u;
            v245 = 0u;
            v246 = 0u;
            v247 = 0u;
          }

          v105 = (v101 + v103);
          v106 = v76[6];
          if (v76[6])
          {
            if (v106 < 0xF0)
            {
              if (v106 == 7)
              {
                v109 = vld1q_dup_f64(v105);
                v264 = v109;
                v265 = v109;
                v266 = v109;
                v267 = v109;
                v268 = v109;
                v269 = v109;
                v270 = v109;
                v271 = v109;
                v296 = v109;
                v297 = v109;
                v298 = v109;
                v299 = v109;
                v300 = v109;
                v301 = v109;
                v302 = v109;
                v107 = 8;
                v303 = v109;
                v108 = v76[7];
                if (!v76[7])
                {
                  goto LABEL_142;
                }
              }

              else
              {
                v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v264, 512, v105, v106);
                v108 = v76[7];
                if (!v76[7])
                {
LABEL_142:
                  v278 = 0u;
                  v279 = 0u;
                  v276 = 0u;
                  v277 = 0u;
                  v274 = 0u;
                  v275 = 0u;
                  v272 = 0u;
                  v273 = 0u;
                  v304 = 0u;
                  v305 = 0u;
                  v306 = 0u;
                  v307 = 0u;
                  v308 = 0u;
                  v309 = 0u;
                  v310 = 0u;
                  v311 = 0u;
                  v16 = v158;
                  goto LABEL_144;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v264, 512, v105, v106, v81);
              v107 = 128;
              v108 = v76[7];
              if (!v76[7])
              {
                goto LABEL_142;
              }
            }
          }

          else
          {
            v107 = 0;
            v270 = 0u;
            v271 = 0u;
            v268 = 0u;
            v269 = 0u;
            v266 = 0u;
            v267 = 0u;
            v264 = 0u;
            v265 = 0u;
            v296 = 0u;
            v297 = 0u;
            v298 = 0u;
            v299 = 0u;
            v300 = 0u;
            v301 = 0u;
            v302 = 0u;
            v303 = 0u;
            v108 = v76[7];
            if (!v76[7])
            {
              goto LABEL_142;
            }
          }

          v110 = (v105 + v107);
          if (v108 < 0xF0)
          {
            v16 = v158;
            if (v108 == 7)
            {
              v111 = vld1q_dup_f64(v110);
              v272 = v111;
              v273 = v111;
              v274 = v111;
              v275 = v111;
              v276 = v111;
              v277 = v111;
              v278 = v111;
              v279 = v111;
              v304 = v111;
              v305 = v111;
              v306 = v111;
              v307 = v111;
              v308 = v111;
              v309 = v111;
              v310 = v111;
              v311 = v111;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v272, 512, v110, v108);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v272, 512, v110, v108, v81);
            v16 = v158;
          }

LABEL_144:
          v79 = v42 + 1;
          v112 = v179;
          if (v179 && v180)
          {
            v113 = 0;
            v114 = v177 << 9;
            v115 = v178 << 6;
            v116 = &v184 + v114 + v115;
            v117 = v175;
            v118 = v176;
            v119 = v180 << 6;
            if (v119)
            {
              v120 = (v119 - 1) >> 32 == 0;
            }

            else
            {
              v120 = 0;
            }

            v121 = !v120;
            v123 = v116 < v175 + v176 * (v179 - 1) + v119 && v175 < &__dst[512 * v179 + 1536 + 512 * v177 + v119 + v115];
            v124 = v121 | (v176 < 0) | v123;
            v125 = &v185 + v114 + v115;
            v126 = (v175 + 16);
            do
            {
              v127 = v126;
              v128 = v125;
              v129 = v119;
              if (v124)
              {
                v130 = 0;
                do
                {
                  v116[v130] = *(v117 + v130);
                  ++v130;
                }

                while (v119 > v130);
              }

              else
              {
                do
                {
                  v131 = *v127;
                  *(v128 - 1) = *(v127 - 1);
                  *v128 = v131;
                  v128 += 2;
                  v127 += 2;
                  v129 -= 32;
                }

                while (v129);
              }

              ++v113;
              v125 += 512;
              v126 = (v126 + v118);
              v116 += 512;
              v117 += v118;
            }

            while (v113 != v112);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(&v184, 512, v173, v174, v181, v182, *(*(v169 + 208) + 52));
          if (v171)
          {
            goto LABEL_167;
          }

LABEL_26:
          v29 = v42 == v159 >> 3;
          v42 = v79;
          result = v169;
        }

        while (!v29);
        v29 = v25++ == v151;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v161 = v21;
  v162 = v22;
  v147 = v23;
  v24 = v12;
  v184[96] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v25 = v14 >> 2;
  v146 = v14 + a10 - 1;
  v148 = v146 >> 2;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v168 = v24;
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
  v167 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v160 = result;
  if (v25 <= v148)
  {
    v159 = v16 + a9 - 1;
    v145 = v16 >> 2;
    if (v16 >> 2 <= v159 >> 2)
    {
      result = v24;
      v166 = (v20 - 1) >> 2;
      v144 = (v18 - 1) >> 2;
      v141 = v20 - 1;
      v151 = (v20 - 1) & 3;
      v142 = ((v18 - 1) & 3) + 1;
      v143 = (v18 - 1) & 3;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x300000003);
      v35 = vcgt_u32(v34, 0x700000007);
      v157 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 2uLL))))))), v35);
      v156 = v35;
      v140 = 8 * v27 * v26;
      v149 = v14;
      v158 = v16;
      do
      {
        v36 = (4 * v25) | 3;
        if (4 * v25 <= v14)
        {
          v37 = v14;
        }

        else
        {
          v37 = 4 * v25;
        }

        if (v146 < v36)
        {
          v36 = v146;
        }

        v165 = 4 * v25;
        v155 = v37 - 4 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v143;
        v154 = v39;
        v41 = v39 != 4;
        v42 = v145;
        v43 = v142;
        if (v25 != v144)
        {
          v43 = 4;
          v40 = v41;
        }

        v152 = v40;
        v153 = v43;
        v164 = v147 + (v37 - v14) * a11;
        v163 = v43;
        do
        {
          v44 = 4 * v42;
          v45 = 4 * (v42 + 1) - 1;
          if (4 * v42 <= v16)
          {
            v46 = v16;
          }

          else
          {
            v46 = 4 * v42;
          }

          if (v159 < v45)
          {
            v45 = v159;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v166)
          {
            v49 = v151 + 1;
          }

          else
          {
            v49 = 4;
          }

          v50 = 1;
          if (v165 >= v14 && v44 >= v16)
          {
            v51 = v47 != v151;
            if (v42 != v166)
            {
              v51 = v48 != 4;
            }

            v50 = v51 || v152;
          }

          if (v160)
          {
            v72 = 0;
            v73 = v140 >> (*(result + 57) != 0);
            v74 = 1;
            if (v73 <= 63)
            {
              if (v73 > 15)
              {
                if (v73 == 16)
                {
                  v74 = 0;
                  v75 = 64;
                  v72 = 128;
                }

                else
                {
                  v75 = 0;
                  if (v73 == 32)
                  {
                    v74 = 0;
                    v72 = 64;
                    v75 = 64;
                  }
                }
              }

              else if (v73 == 4)
              {
                v74 = 0;
                v75 = 128;
                v72 = 256;
              }

              else
              {
                v75 = 0;
                if (v73 == 8)
                {
                  v74 = 0;
                  v72 = 128;
                  v75 = 128;
                }
              }
            }

            else if (v73 <= 255)
            {
              if (v73 == 64)
              {
                v74 = 0;
                v75 = 32;
                v72 = 64;
              }

              else
              {
                v75 = 0;
                if (v73 == 128)
                {
                  v74 = 0;
                  v72 = 32;
                  v75 = 32;
                }
              }
            }

            else if (v73 == 256)
            {
              v74 = 0;
              v75 = 16;
              v72 = 32;
            }

            else if (v73 == 512)
            {
              v74 = 0;
              v72 = 16;
              v75 = 16;
            }

            else
            {
              v75 = 0;
              if (v73 == 1024)
              {
                v74 = 0;
                v75 = 8;
                v72 = 16;
              }
            }

            v128 = (v72 >> 2) - 1;
            v129 = (v75 >> 2) - 1;
            if ((v74 & 1) != 0 || (v130 = 32 - __clz(~(-1 << -__clz(v128))), v131 = 32 - __clz(~(-1 << -__clz(v129))), !(v131 | v130)))
            {
              v139 = 0;
            }

            else
            {
              v132 = 0;
              v133 = 0;
              v134 = v42 & v128;
              v135 = v25 & v129;
              v136 = v130 != 0;
              v137 = v131 != 0;
              v138 = 1;
              do
              {
                --v130;
                if (v136)
                {
                  v133 |= (v138 & v134) << v132++;
                }

                else
                {
                  v130 = 0;
                }

                --v131;
                if (v137)
                {
                  v133 |= (v138 & v135) << v132++;
                }

                else
                {
                  v131 = 0;
                }

                v138 *= 2;
                --v132;
                v137 = v131 != 0;
                v136 = v130 != 0;
              }

              while (v131 | v130);
              v139 = v133 << 10;
              result = v168;
            }

            v59 = v139 + ((v44 / v72 + v165 / v75 * ((v72 + v141) / v72)) << 14);
          }

          else if (v157)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v156.i8[0];
            v56 = v156.i8[4];
            v58 = v157.i32[0];
            v57 = v157.i32[1];
            do
            {
              --v57;
              if (v56)
              {
                v53 |= (v54 & v42) << v52++;
              }

              else
              {
                v57 = 0;
              }

              --v58;
              if (v55)
              {
                v53 |= (v54 & v25) << v52++;
              }

              else
              {
                v58 = 0;
              }

              v54 *= 2;
              --v52;
              v55 = v58 != 0;
              v56 = v57 != 0;
            }

            while (v58 | v57);
            v59 = v53 << 10;
          }

          else
          {
            v59 = 0;
          }

          v60 = *(result + 128) >> (*(result + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 3;
          if (v61 < 8)
          {
            v62 = 0;
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 2) - 1)));
          }

          v63 = *(result + 132) >> (*(result + 144) + a12);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v63 + 3;
          if (v64 < 8)
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
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 2) - 1)));
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
          v76 = (v162 + v71);
          v77 = v164 + ((v46 - v16) << 7);
          v78 = (v161 + v59);
          if (v167)
          {
            if (!(v50 & 1 | (v49 < 4u) | (v163 < 4)))
            {
              v83 = __dst;
LABEL_85:
              v84 = *(*(result + 208) + 52);
              v85 = &v83[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v83, v76, v77, a11, 2u, 2u, v84)];
              v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v85, v76 + 1, v77 + 256, a11, 2u, 2u, v84);
              v87 = v77 + 2 * a11;
              v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v86, v76 + 2, v87, a11, 2u, 2u, v84);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v86 + v88, v76 + 3, v87 + 256, a11, 2u, 2u, v84);
              goto LABEL_86;
            }

            v79 = v14;
            v80 = v48;
            v81 = v50;
            v82 = v46;
            memcpy(__dst, v78, sizeof(__dst));
            v46 = v82;
            v44 = 4 * v42;
            v50 = v81;
            v83 = __dst;
            v48 = v80;
            v14 = v79;
            result = v168;
          }

          else
          {
            v83 = (v161 + v59);
            if (!(v50 & 1 | (v49 < 4u) | (v163 < 4)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v170 = v83;
          v178 = v49;
          v179 = v153;
          v174 = v155;
          v175 = v46 - v44;
          v171 = v76;
          v172 = v77;
          v173 = a11;
          v176 = v154;
          v177 = v48;
          if ((v50 & 1) == 0)
          {
            v90 = *(*(result + 208) + 52);
            v91 = &v83[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v181, 512, v83, *v76, v90)];
            v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v182, 512, v91, v76[1], v90);
            v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v183, 512, v92, v76[2], v90);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v184, 512, v92 + v93, v76[3], v90);
            v94 = v176;
            if (v176 && v177)
            {
              v95 = 0;
              v96 = v175 << 7;
              v97 = &v181[512 * v174 + v96];
              v98 = v172;
              v99 = v173;
              v100 = v177 << 7;
              if (v100)
              {
                v101 = (v100 - 1) >> 32 == 0;
              }

              else
              {
                v101 = 0;
              }

              v102 = !v101;
              v104 = v97 < v172 + v173 * (v176 - 1) + v100 && v172 < &__dst[512 * v176 + 1536 + 512 * v174 + v100 + v96];
              v105 = v102 | (v173 < 0) | v104;
              v106 = &v181[512 * v174 + 16 + v96];
              v107 = (v172 + 16);
              do
              {
                v108 = v107;
                v109 = v106;
                v110 = v100;
                if (v105)
                {
                  v111 = 0;
                  do
                  {
                    v97[v111] = *(v98 + v111);
                    ++v111;
                  }

                  while (v100 > v111);
                }

                else
                {
                  do
                  {
                    v112 = *v108;
                    *(v109 - 1) = *(v108 - 1);
                    *v109 = v112;
                    v109 += 2;
                    v108 += 2;
                    v110 -= 32;
                  }

                  while (v110);
                }

                ++v95;
                v106 += 512;
                v107 = (v107 + v99);
                v97 += 512;
                v98 += v99;
              }

              while (v95 != v94);
            }

            v150 = v83;
            v114 = v170;
            v113 = v171;
            v115 = v178;
            v116 = v179;
            v117 = *(*(v168 + 208) + 52);
            if (v178 && v179)
            {
              if (v179 >= 2u)
              {
                v118 = 2;
              }

              else
              {
                v118 = v179;
              }

              if (v178 >= 2u)
              {
                v119 = 2;
              }

              else
              {
                v119 = v178;
              }

              v114 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v170, v171, v181, 512, v119, v118, v117);
            }

            else
            {
              *v171 = 0;
            }

            v120 = v115 - 2;
            if (v115 >= 3 && v116)
            {
              if (v116 >= 2)
              {
                v121 = 2;
              }

              else
              {
                v121 = v116;
              }

              if (v120 >= 2)
              {
                v122 = 2;
              }

              else
              {
                v122 = v115 - 2;
              }

              v114 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v114, v113 + 1, v182, 512, v122, v121, v117);
              v123 = v116 - 2;
LABEL_130:
              if (v116 >= 3)
              {
                if (v123 >= 2)
                {
                  v124 = 2;
                }

                else
                {
                  v124 = v123;
                }

                if (v115 >= 2)
                {
                  v125 = 2;
                }

                else
                {
                  v125 = v115;
                }

                v114 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v114, v113 + 2, v183, 512, v125, v124, v117);
                if (v115 < 3)
                {
LABEL_148:
                  v113[3] = 0;
                  goto LABEL_149;
                }

LABEL_140:
                if (v116 < 3)
                {
                  goto LABEL_148;
                }

                if (v123 >= 2)
                {
                  v126 = 2;
                }

                else
                {
                  v126 = v123;
                }

                if (v120 >= 2)
                {
                  v127 = 2;
                }

                else
                {
                  v127 = v115 - 2;
                }

                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v114, v113 + 3, v184, 512, v127, v126, v117);
LABEL_149:
                v14 = v149;
                result = v168;
                v89 = v42 + 1;
                v83 = v150;
                if (!v167)
                {
                  goto LABEL_26;
                }

                goto LABEL_150;
              }
            }

            else
            {
              v113[1] = 0;
              v123 = v116 - 2;
              if (v115)
              {
                goto LABEL_130;
              }
            }

            v113[2] = 0;
            if (v115 < 3)
            {
              goto LABEL_148;
            }

            goto LABEL_140;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          result = v168;
          v89 = v42 + 1;
          if (!v167)
          {
            goto LABEL_26;
          }

LABEL_150:
          memcpy(v78, v83, 0x800uLL);
          result = v168;
LABEL_26:
          v16 = v158;
          v29 = v42 == v159 >> 2;
          v42 = v89;
        }

        while (!v29);
        v29 = v25++ == v148;
      }

      while (!v29);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v248 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v201 = a8;
  v183 = a8 + a10 - 1;
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
  v182 = v183 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  if (*(a1 + 232) == 1)
  {
    v25 = *(a1 + 273);
    v26 = *(a1 + 272);
    v27 = __clz(v19);
    if (1 << v25 >= a6 || a5 >> v26)
    {
      if (!(a6 >> v25) && 1 << v26 < a5)
      {
        if (a6 < 2)
        {
          v30 = 0;
        }

        else
        {
          v30 = __clz(~(-1 << -__clz(v20))) | 0xFFFFFFE0;
        }

        v26 += v25 + v30;
        v25 = -v30;
      }
    }

    else
    {
      v28 = 32 - __clz(~(-1 << -v27));
      v29 = v26 + v25;
      if (a5 < 2)
      {
        v28 = 0;
      }

      v25 = v29 - v28;
      v26 = v28;
    }

    if (a5 < 2)
    {
      if (v26)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v27)) < v26)
    {
LABEL_27:
      v195 = 0;
LABEL_32:
      v192 = v26 - 4;
      v186 = v25 - 3;
      v32 = -1 << *(*(a1 + 208) + 48);
      v180 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v31 = 0;
    }

    else
    {
      v31 = 32 - __clz(~(-1 << -__clz(v20)));
    }

    v195 = v31 >= v25;
    goto LABEL_32;
  }

  v195 = 0;
  v180 = 0;
  v186 = 0;
  v192 = 0;
LABEL_33:
  if (v18 <= v182)
  {
    v194 = a7 + a9 - 1;
    if (a7 >> 4 <= v194 >> 4)
    {
      v202 = v19 >> 4;
      v188 = v19 & 0xF;
      v178 = v20 & 7;
      v179 = v20 >> 3;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v34.i8 = vcgt_u32(v33, 0x1F0000000FLL);
      v35.val[0] = -1;
      *v36.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v34.i8);
      v185 = v36.i64[0];
      v187 = v36.i32[0] | v36.i32[1];
      v184 = v34.i64[0];
      v193 = v24;
      do
      {
        v37 = (8 * v18) | 7;
        if (8 * v18 <= v201)
        {
          v38 = v201;
        }

        else
        {
          v38 = 8 * v18;
        }

        if (v183 < v37)
        {
          v37 = v183;
        }

        v191 = v38 - 8 * v18;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v178;
        v190 = v40;
        v42 = v40 != 8;
        v43 = v178 + 1;
        if (v18 != v179)
        {
          v43 = 8;
          v41 = v42;
        }

        v189 = v41;
        v44 = a7 >> 4;
        v199 = a3 + (v38 - v201) * a11;
        v200 = v43;
        v198 = v43;
        do
        {
          v45 = 16 * v44;
          v46 = 16 * (v44 + 1) - 1;
          if (16 * v44 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 16 * v44;
          }

          if (v194 < v46)
          {
            v46 = a7 + a9 - 1;
          }

          v48 = v46 - v47;
          v49 = v46 - v47 + 1;
          if (v44 == v202)
          {
            v50 = v188 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (8 * v18 >= v201 && v45 >= a7)
          {
            v52 = v48 != v188;
            if (v44 != v202)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v189;
          }

          if (v195)
          {
            if (v192 | v186)
            {
              v53 = 0;
              v54 = 0;
              v55 = v192 != 0;
              v56 = 1;
              v57 = v186 != 0;
              v58 = v186;
              v59 = v192;
              do
              {
                --v58;
                if (v57)
                {
                  v54 |= (v18 & ~(-1 << v186) & v56) << v53++;
                }

                else
                {
                  v58 = 0;
                }

                --v59;
                if (v55)
                {
                  v54 |= (v44 & ~(-1 << v192) & v56) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                v56 *= 2;
                --v53;
                v55 = v59 != 0;
                v57 = v58 != 0;
              }

              while (v59 | v58);
              v60 = v54 << 8;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(a1 + 336) * ((v44 >> v192) + (v18 >> v186) * v180);
          }

          else if (v187)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v184;
            v65 = BYTE4(v184);
            v66 = v185;
            v67 = HIDWORD(v185);
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
                v62 |= (v63 & v44) << v61++;
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
            v68 = v62 << 8;
          }

          else
          {
            v68 = 0;
          }

          v69 = *(a1 + 128) >> (*(a1 + 144) + a12);
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

          v72 = *(a1 + 132) >> (*(a1 + 144) + a12);
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
              v76 |= (v79 & v44) << v75++;
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
          v82 = (v199 + 2 * (v47 - a7));
          v83 = (a2 + v68);
          if (v24)
          {
            if (!(v51 & 1 | (v50 < 0x10u) | (v198 < 8)))
            {
              v91 = v214;
LABEL_112:
              v92 = a11;
              v93 = v91;
              v94 = (a4 + v80);
              v95 = v200;
              goto LABEL_204;
            }

            v84 = v83[13];
            v214[12] = v83[12];
            v214[13] = v84;
            v85 = v83[15];
            v215[0] = v83[14];
            v215[1] = v85;
            v86 = v83[9];
            v214[8] = v83[8];
            v214[9] = v86;
            v87 = v83[11];
            v214[10] = v83[10];
            v214[11] = v87;
            v88 = v83[5];
            v214[4] = v83[4];
            v214[5] = v88;
            v89 = v83[7];
            v214[6] = v83[6];
            v214[7] = v89;
            v90 = v83[1];
            v214[0] = *v83;
            v214[1] = v90;
            v36 = v83[2];
            v34 = v83[3];
            v91 = v214;
            v214[2] = v36;
            v214[3] = v34;
          }

          else
          {
            v91 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v198 < 8)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          v204 = v91;
          v212 = v50;
          v213 = v200;
          v208 = v191;
          v209 = v47 - v45;
          v205 = (a4 + v80);
          v206 = (v199 + 2 * (v47 - a7));
          v207 = a11;
          v210 = v190;
          v211 = v49;
          if ((v51 & 1) == 0)
          {
            v96 = *v81;
            if (v96 == 96)
            {
              *v36.i8 = vdup_lane_s8(*v91, 0);
              v216 = *v36.i8;
              v220 = v36.i64[0];
              v224 = *v36.i8;
              v228 = v36.i64[0];
              v97 = 1;
            }

            else if (v96 == 31)
            {
              v34.i64[0] = *(v91 + 1);
              v98 = (v91 + 1);
              v35 = vld2_f32(v98);
              *v36.i8 = vzip2_s32(*v91, *v34.i8);
              v216 = vzip1_s32(*v91, *v34.i8);
              v220 = v36.i64[0];
              v224 = v35.val[0];
              v228 = v99;
              v97 = 32;
            }

            else if (*v81)
            {
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v216, 32, v91, v96, *v36.i64, *v34.i8);
            }

            else
            {
              v97 = 0;
              v216 = 0;
              v220 = 0;
              v224 = 0;
              v228 = 0;
            }

            v100 = (v91 + v97);
            v101 = v81[1];
            if (v101 == 96)
            {
              *v36.i8 = vdup_lane_s8(*v100, 0);
              v217 = *v36.i8;
              v221 = v36.i64[0];
              v225 = *v36.i8;
              v229 = v36.i64[0];
              v102 = 1;
            }

            else if (v101 == 31)
            {
              *v34.i8 = v100[1];
              v103 = &v100[2];
              v35 = vld2_f32(v103);
              *v36.i8 = vzip2_s32(*v100, *v34.i8);
              v217 = vzip1_s32(*v100, *v34.i8);
              v221 = v36.i64[0];
              v225 = v35.val[0];
              v229 = v104;
              v102 = 32;
            }

            else if (v81[1])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 32, v100, v101, *v36.i64, *v34.i8);
            }

            else
            {
              v102 = 0;
              v217 = 0;
              v221 = 0;
              v225 = 0;
              v229 = 0;
            }

            v105 = (v100 + v102);
            v106 = v81[2];
            if (v106 == 96)
            {
              *v36.i8 = vdup_lane_s8(*v105, 0);
              v232 = *v36.i8;
              v236 = v36.i64[0];
              v240 = *v36.i8;
              v244 = v36.i64[0];
              v107 = 1;
            }

            else if (v106 == 31)
            {
              *v34.i8 = v105[1];
              v108 = &v105[2];
              v35 = vld2_f32(v108);
              *v36.i8 = vzip2_s32(*v105, *v34.i8);
              v232 = vzip1_s32(*v105, *v34.i8);
              v236 = v36.i64[0];
              v240 = v35.val[0];
              v244 = v109;
              v107 = 32;
            }

            else if (v81[2])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v232, 32, v105, v106, *v36.i64, *v34.i8);
            }

            else
            {
              v107 = 0;
              v232 = 0;
              v236 = 0;
              v240 = 0;
              v244 = 0;
            }

            v110 = (v105 + v107);
            v111 = v81[3];
            if (v111 == 96)
            {
              *v36.i8 = vdup_lane_s8(*v110, 0);
              v233 = *v36.i8;
              v237 = v36.i64[0];
              v241 = *v36.i8;
              v245 = v36.i64[0];
              v112 = 1;
            }

            else if (v111 == 31)
            {
              *v34.i8 = v110[1];
              v113 = &v110[2];
              v35 = vld2_f32(v113);
              *v36.i8 = vzip2_s32(*v110, *v34.i8);
              v233 = vzip1_s32(*v110, *v34.i8);
              v237 = v36.i64[0];
              v241 = v35.val[0];
              v245 = v114;
              v112 = 32;
            }

            else if (v81[3])
            {
              v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 32, v110, v111, *v36.i64, *v34.i8);
            }

            else
            {
              v112 = 0;
              v233 = 0;
              v237 = 0;
              v241 = 0;
              v245 = 0;
            }

            v115 = (v110 + v112);
            v116 = v81[4];
            if (v116 == 96)
            {
              *v36.i8 = vdup_lane_s8(*v115, 0);
              v218 = *v36.i8;
              v222 = v36.i64[0];
              v226 = *v36.i8;
              v230 = v36.i64[0];
              v117 = 1;
            }

            else if (v116 == 31)
            {
              *v34.i8 = v115[1];
              v118 = &v115[2];
              v35 = vld2_f32(v118);
              *v36.i8 = vzip2_s32(*v115, *v34.i8);
              v218 = vzip1_s32(*v115, *v34.i8);
              v222 = v36.i64[0];
              v226 = v35.val[0];
              v230 = v119;
              v117 = 32;
            }

            else if (v81[4])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v218, 32, v115, v116, *v36.i64, *v34.i8);
            }

            else
            {
              v117 = 0;
              v218 = 0;
              v222 = 0;
              v226 = 0;
              v230 = 0;
            }

            v120 = (v115 + v117);
            v121 = v81[5];
            if (v121 == 96)
            {
              *v36.i8 = vdup_lane_s8(*v120, 0);
              v219 = *v36.i8;
              v223 = v36.i64[0];
              v227 = *v36.i8;
              v231 = v36.i64[0];
              v122 = 1;
            }

            else if (v121 == 31)
            {
              *v34.i8 = v120[1];
              v123 = &v120[2];
              v35 = vld2_f32(v123);
              *v36.i8 = vzip2_s32(*v120, *v34.i8);
              v219 = vzip1_s32(*v120, *v34.i8);
              v223 = v36.i64[0];
              v227 = v35.val[0];
              v231 = v124;
              v122 = 32;
            }

            else if (v81[5])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v219, 32, v120, v121, *v36.i64, *v34.i8);
            }

            else
            {
              v122 = 0;
              v219 = 0;
              v223 = 0;
              v227 = 0;
              v231 = 0;
            }

            v125 = (v120 + v122);
            v126 = v81[6];
            if (v126 == 96)
            {
              *v36.i8 = vdup_lane_s8(*v125, 0);
              v234 = *v36.i8;
              v238 = v36.i64[0];
              v242 = *v36.i8;
              v246 = v36.i64[0];
              v127 = 1;
            }

            else if (v126 == 31)
            {
              *v34.i8 = v125[1];
              v128 = &v125[2];
              v35 = vld2_f32(v128);
              *v36.i8 = vzip2_s32(*v125, *v34.i8);
              v234 = vzip1_s32(*v125, *v34.i8);
              v238 = v36.i64[0];
              v242 = v35.val[0];
              v246 = v129;
              v127 = 32;
            }

            else if (v81[6])
            {
              v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 32, v125, v126, *v36.i64, *v34.i8);
            }

            else
            {
              v127 = 0;
              v234 = 0;
              v238 = 0;
              v242 = 0;
              v246 = 0;
            }

            v130 = (v125 + v127);
            v131 = v81[7];
            if (v131 == 96)
            {
              *v36.i8 = vdup_lane_s8(*v130, 0);
              v235 = *v36.i8;
              v239 = v36.i64[0];
              v243 = *v36.i8;
              v247 = v36.i64[0];
              v132 = v210;
              if (v210)
              {
                goto LABEL_172;
              }
            }

            else
            {
              if (v131 != 31)
              {
                if (v81[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 32, v130, v131, *v36.i64, *v34.i8);
                  v132 = v210;
                  if (!v210)
                  {
                    goto LABEL_203;
                  }
                }

                else
                {
                  v235 = 0;
                  v239 = 0;
                  v243 = 0;
                  v247 = 0;
                  v132 = v210;
                  if (!v210)
                  {
                    goto LABEL_203;
                  }
                }

LABEL_172:
                v135 = v211;
                if (!v211)
                {
                  goto LABEL_203;
                }

                v136 = 0;
                v137 = 2 * v209;
                v138 = &v216 + 32 * v208 + v137;
                v139 = v206;
                v140 = v207;
                v141 = 2 * v211;
                if (2 * v211)
                {
                  v142 = (2 * v211 - 1) >> 32 == 0;
                }

                else
                {
                  v142 = 0;
                }

                v143 = !v142;
                v145 = v138 < &v206->i8[2 * v211 + v207 * (v132 - 1)] && v206 < (&v215[2 * v132 + 2 * v208] + 2 * v211 + v137);
                v146 = v145 || v207 < 0;
                v147 = v141 & 0x1FFFFFFE0;
                v148 = v141 & 0x1FFFFFFF8;
                v149 = (v211 < 4) | v143 | v146;
                v150 = (&v218 + 32 * v208 + v137);
                v151 = v206 + 1;
                v152 = v138;
                v153 = v206;
                while (2)
                {
                  v154 = (v139 + v136 * v140);
                  v155 = &v138[32 * v136];
                  if (v149)
                  {
                    v156 = 0;
LABEL_200:
                    v165 = v156 + 1;
                    do
                    {
                      v166 = *v154++;
                      *v155++ = v166;
                    }

                    while (v141 > v165++);
                  }

                  else
                  {
                    if (v135 >= 0x10)
                    {
                      v158 = v151;
                      v159 = v150;
                      v160 = v141 & 0x1FFFFFFE0;
                      do
                      {
                        v36 = v158[-1];
                        v34 = *v158;
                        v159[-1] = v36;
                        *v159 = v34;
                        v159 += 2;
                        v158 += 2;
                        v160 -= 32;
                      }

                      while (v160);
                      if (v141 == v147)
                      {
                        goto LABEL_186;
                      }

                      v157 = v141 & 0x1FFFFFFE0;
                      if ((v135 & 0xC) == 0)
                      {
                        v154 += v147;
                        v155 += v147;
                        v156 = v141 & 0xFFFFFFE0;
                        goto LABEL_200;
                      }
                    }

                    else
                    {
                      v157 = 0;
                    }

                    v155 += v148;
                    v161 = v157 - (v141 & 0x1FFFFFFF8);
                    v162 = (v153 + v157);
                    v163 = &v152[v157];
                    do
                    {
                      v164 = *v162++;
                      v36.i64[0] = v164;
                      *v163 = v164;
                      v163 += 8;
                      v161 += 8;
                    }

                    while (v161);
                    if (v141 != v148)
                    {
                      v154 += v148;
                      v156 = v141 & 0xFFFFFFF8;
                      goto LABEL_200;
                    }
                  }

LABEL_186:
                  ++v136;
                  v150 += 2;
                  v151 = (v151 + v140);
                  v153 += v140;
                  v152 += 32;
                  if (v136 == v132)
                  {
                    goto LABEL_203;
                  }

                  continue;
                }
              }

              *v34.i8 = v130[1];
              v133 = &v130[2];
              v35 = vld2_f32(v133);
              *v36.i8 = vzip2_s32(*v130, *v34.i8);
              v235 = vzip1_s32(*v130, *v34.i8);
              v239 = v36.i64[0];
              v243 = v35.val[0];
              v247 = v134;
              v132 = v210;
              if (v210)
              {
                goto LABEL_172;
              }
            }

LABEL_203:
            v93 = v204;
            v94 = v205;
            v50 = v212;
            v95 = v213;
            v82 = &v216;
            v92 = 32;
LABEL_204:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, v92, v93, v94, v50, v95, *v36.i64, *v34.i64, v35.val[0]);
            v24 = v193;
            if (!v193)
            {
              goto LABEL_46;
            }

            goto LABEL_205;
          }

          dispatch_sync(*(*(a1 + 8) + 16552), block);
          v24 = v193;
          if (!v193)
          {
            goto LABEL_46;
          }

LABEL_205:
          v168 = *v91;
          v169 = *(v91 + 1);
          v170 = *(v91 + 3);
          v83[2] = *(v91 + 2);
          v83[3] = v170;
          *v83 = v168;
          v83[1] = v169;
          v171 = *(v91 + 4);
          v172 = *(v91 + 5);
          v173 = *(v91 + 7);
          v83[6] = *(v91 + 6);
          v83[7] = v173;
          v83[4] = v171;
          v83[5] = v172;
          v174 = *(v91 + 8);
          v175 = *(v91 + 9);
          v176 = *(v91 + 11);
          v83[10] = *(v91 + 10);
          v83[11] = v176;
          v83[8] = v174;
          v83[9] = v175;
          v36 = *(v91 + 12);
          v34 = *(v91 + 13);
          v35 = v91[14];
          v177 = *(v91 + 15);
          v83[14] = v35;
          v83[15] = v177;
          v83[12] = v36;
          v83[13] = v34;
LABEL_46:
          v21 = v44++ == v194 >> 4;
        }

        while (!v21);
        v21 = v18++ == v182;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v242 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v195 = a8;
  v177 = a8 + a10 - 1;
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
  v176 = v177 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  if (*(a1 + 232) == 1)
  {
    v25 = *(a1 + 273);
    v26 = *(a1 + 272);
    v27 = __clz(v19);
    if (1 << v25 >= a6 || a5 >> v26)
    {
      if (!(a6 >> v25) && 1 << v26 < a5)
      {
        if (a6 < 2)
        {
          v30 = 0;
        }

        else
        {
          v30 = __clz(~(-1 << -__clz(v20))) | 0xFFFFFFE0;
        }

        v26 += v25 + v30;
        v25 = -v30;
      }
    }

    else
    {
      v28 = 32 - __clz(~(-1 << -v27));
      v29 = v26 + v25;
      if (a5 < 2)
      {
        v28 = 0;
      }

      v25 = v29 - v28;
      v26 = v28;
    }

    if (a5 < 2)
    {
      if (v26)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v27)) < v26)
    {
LABEL_27:
      v189 = 0;
LABEL_32:
      v186 = v26 - 4;
      v180 = v25 - 3;
      v32 = -1 << *(*(a1 + 208) + 48);
      v174 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v31 = 0;
    }

    else
    {
      v31 = 32 - __clz(~(-1 << -__clz(v20)));
    }

    v189 = v31 >= v25;
    goto LABEL_32;
  }

  v189 = 0;
  v174 = 0;
  v180 = 0;
  v186 = 0;
LABEL_33:
  if (v18 <= v176)
  {
    v188 = a7 + a9 - 1;
    if (a7 >> 4 <= v188 >> 4)
    {
      v196 = v19 >> 4;
      v182 = v19 & 0xF;
      v172 = v20 & 7;
      v173 = v20 >> 3;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *&v34 = vcgt_u32(v33, 0x1F0000000FLL);
      *&v35 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *&v34);
      v179 = v35;
      v181 = v35 | DWORD1(v35);
      v178 = v34;
      v187 = v24;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v195)
        {
          v37 = v195;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v177 < v36)
        {
          v36 = v177;
        }

        v185 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v172;
        v184 = v39;
        v41 = v39 != 8;
        v42 = v172 + 1;
        if (v18 != v173)
        {
          v42 = 8;
          v40 = v41;
        }

        v183 = v40;
        v43 = a7 >> 4;
        v193 = a3 + (v37 - v195) * a11;
        v194 = v42;
        v192 = v42;
        do
        {
          v44 = 16 * v43;
          v45 = 16 * (v43 + 1) - 1;
          if (16 * v43 <= a7)
          {
            v46 = a7;
          }

          else
          {
            v46 = 16 * v43;
          }

          if (v188 < v45)
          {
            v45 = a7 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v45 - v46 + 1;
          if (v43 == v196)
          {
            v49 = v182 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (8 * v18 >= v195 && v44 >= a7)
          {
            v51 = v47 != v182;
            if (v43 != v196)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v183;
          }

          if (v189)
          {
            if (v186 | v180)
            {
              v52 = 0;
              v53 = 0;
              v54 = v186 != 0;
              v55 = 1;
              v56 = v180 != 0;
              v57 = v180;
              v58 = v186;
              do
              {
                --v57;
                if (v56)
                {
                  v53 |= (v18 & ~(-1 << v180) & v55) << v52++;
                }

                else
                {
                  v57 = 0;
                }

                --v58;
                if (v54)
                {
                  v53 |= (v43 & ~(-1 << v186) & v55) << v52++;
                }

                else
                {
                  v58 = 0;
                }

                v55 *= 2;
                --v52;
                v54 = v58 != 0;
                v56 = v57 != 0;
              }

              while (v58 | v57);
              v59 = v53 << 8;
            }

            else
            {
              v59 = 0;
            }

            v67 = v59 + *(a1 + 336) * ((v43 >> v186) + (v18 >> v180) * v174);
          }

          else if (v181)
          {
            v60 = 0;
            v61 = 0;
            v62 = 1;
            v63 = v178;
            v64 = BYTE4(v178);
            v65 = v179;
            v66 = HIDWORD(v179);
            do
            {
              --v65;
              if (v63)
              {
                v61 |= (v62 & v18) << v60++;
              }

              else
              {
                v65 = 0;
              }

              --v66;
              if (v64)
              {
                v61 |= (v62 & v43) << v60++;
              }

              else
              {
                v66 = 0;
              }

              v62 *= 2;
              --v60;
              v64 = v66 != 0;
              v63 = v65 != 0;
            }

            while (v66 | v65);
            v67 = v61 << 8;
          }

          else
          {
            v67 = 0;
          }

          v68 = *(a1 + 128) >> (*(a1 + 144) + a12);
          if (v68 <= 1)
          {
            v68 = 1;
          }

          v69 = v68 + 15;
          if (v69 < 0x20)
          {
            v70 = 0;
          }

          else
          {
            v70 = 32 - __clz(~(-1 << -__clz((v69 >> 4) - 1)));
          }

          v71 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v72 = v71 + 7;
          if (v72 < 0x10)
          {
            v73 = 0;
            if (!v70)
            {
LABEL_103:
              v79 = 0;
              goto LABEL_104;
            }
          }

          else
          {
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 3) - 1)));
            if (!(v73 | v70))
            {
              goto LABEL_103;
            }
          }

          v74 = 0;
          v75 = 0;
          v76 = v70 != 0;
          v77 = v73 != 0;
          v78 = 1;
          do
          {
            --v70;
            if (v76)
            {
              v75 |= (v78 & v43) << v74++;
            }

            else
            {
              v70 = 0;
            }

            --v73;
            if (v77)
            {
              v75 |= (v78 & v18) << v74++;
            }

            else
            {
              v73 = 0;
            }

            v78 *= 2;
            --v74;
            v77 = v73 != 0;
            v76 = v70 != 0;
          }

          while (v73 | v70);
          v79 = 8 * v75;
LABEL_104:
          v80 = (a4 + v79);
          v81 = (v193 + 2 * (v46 - a7));
          v82 = (a2 + v67);
          if (v24)
          {
            if (!(v50 & 1 | (v49 < 0x10u) | (v192 < 8)))
            {
              v90 = v208;
LABEL_112:
              v91 = a11;
              v92 = v90;
              v93 = (a4 + v79);
              v94 = v194;
              goto LABEL_204;
            }

            v83 = v82[13];
            v208[12] = v82[12];
            v208[13] = v83;
            v84 = v82[15];
            v209[0] = v82[14];
            v209[1] = v84;
            v85 = v82[9];
            v208[8] = v82[8];
            v208[9] = v85;
            v86 = v82[11];
            v208[10] = v82[10];
            v208[11] = v86;
            v87 = v82[5];
            v208[4] = v82[4];
            v208[5] = v87;
            v88 = v82[7];
            v208[6] = v82[6];
            v208[7] = v88;
            v89 = v82[1];
            v208[0] = *v82;
            v208[1] = v89;
            v35 = v82[2];
            v34 = v82[3];
            v90 = v208;
            v208[2] = v35;
            v208[3] = v34;
          }

          else
          {
            v90 = (a2 + v67);
            if (!(v50 & 1 | (v49 < 0x10u) | (v192 < 8)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          v198 = v90;
          v206 = v49;
          v207 = v194;
          v202 = v185;
          v203 = v46 - v44;
          v199 = (a4 + v79);
          v200 = v193 + 2 * (v46 - a7);
          v201 = a11;
          v204 = v184;
          v205 = v48;
          if ((v50 & 1) == 0)
          {
            v95 = *v80;
            if (v95 == 96)
            {
              *&v35 = vdup_lane_s8(*v90, 0);
              v210 = v35;
              v214 = v35;
              v218 = v35;
              v222 = v35;
              v96 = 1;
            }

            else if (v95 == 31)
            {
              *&v34 = *(v90 + 1);
              v97 = (v90 + 1);
              v243 = vld2_f32(v97);
              *&v35 = vzip2_s32(*v90, *&v34);
              v210 = vzip1_s32(*v90, *&v34);
              v214 = v35;
              v218 = v243.val[0];
              v222 = v243.val[1];
              v96 = 32;
            }

            else if (*v80)
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v210, 32, v90, v95, *&v35, *&v34);
            }

            else
            {
              v96 = 0;
              v210 = 0;
              v214 = 0;
              v218 = 0;
              v222 = 0;
            }

            v98 = (v90 + v96);
            v99 = v80[1];
            if (v99 == 96)
            {
              *&v35 = vdup_lane_s8(*v98, 0);
              v211 = v35;
              v215 = v35;
              v219 = v35;
              v223 = v35;
              v100 = 1;
            }

            else if (v99 == 31)
            {
              *&v34 = v98[1];
              v101 = &v98[2];
              v244 = vld2_f32(v101);
              *&v35 = vzip2_s32(*v98, *&v34);
              v211 = vzip1_s32(*v98, *&v34);
              v215 = v35;
              v219 = v244.val[0];
              v223 = v244.val[1];
              v100 = 32;
            }

            else if (v80[1])
            {
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v211, 32, v98, v99, *&v35, *&v34);
            }

            else
            {
              v100 = 0;
              v211 = 0;
              v215 = 0;
              v219 = 0;
              v223 = 0;
            }

            v102 = (v98 + v100);
            v103 = v80[2];
            if (v103 == 96)
            {
              *&v35 = vdup_lane_s8(*v102, 0);
              v226 = v35;
              v230 = v35;
              v234 = v35;
              v238 = v35;
              v104 = 1;
            }

            else if (v103 == 31)
            {
              *&v34 = v102[1];
              v105 = &v102[2];
              v245 = vld2_f32(v105);
              *&v35 = vzip2_s32(*v102, *&v34);
              v226 = vzip1_s32(*v102, *&v34);
              v230 = v35;
              v234 = v245.val[0];
              v238 = v245.val[1];
              v104 = 32;
            }

            else if (v80[2])
            {
              v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 32, v102, v103, *&v35, *&v34);
            }

            else
            {
              v104 = 0;
              v226 = 0;
              v230 = 0;
              v234 = 0;
              v238 = 0;
            }

            v106 = (v102 + v104);
            v107 = v80[3];
            if (v107 == 96)
            {
              *&v35 = vdup_lane_s8(*v106, 0);
              v227 = v35;
              v231 = v35;
              v235 = v35;
              v239 = v35;
              v108 = 1;
            }

            else if (v107 == 31)
            {
              *&v34 = v106[1];
              v109 = &v106[2];
              v246 = vld2_f32(v109);
              *&v35 = vzip2_s32(*v106, *&v34);
              v227 = vzip1_s32(*v106, *&v34);
              v231 = v35;
              v235 = v246.val[0];
              v239 = v246.val[1];
              v108 = 32;
            }

            else if (v80[3])
            {
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 32, v106, v107, *&v35, *&v34);
            }

            else
            {
              v108 = 0;
              v227 = 0;
              v231 = 0;
              v235 = 0;
              v239 = 0;
            }

            v110 = (v106 + v108);
            v111 = v80[4];
            if (v111 == 96)
            {
              *&v35 = vdup_lane_s8(*v110, 0);
              v212 = v35;
              v216 = v35;
              v220 = v35;
              v224 = v35;
              v112 = 1;
            }

            else if (v111 == 31)
            {
              *&v34 = v110[1];
              v113 = &v110[2];
              v247 = vld2_f32(v113);
              *&v35 = vzip2_s32(*v110, *&v34);
              v212 = vzip1_s32(*v110, *&v34);
              v216 = v35;
              v220 = v247.val[0];
              v224 = v247.val[1];
              v112 = 32;
            }

            else if (v80[4])
            {
              v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v212, 32, v110, v111, *&v35, *&v34);
            }

            else
            {
              v112 = 0;
              v212 = 0;
              v216 = 0;
              v220 = 0;
              v224 = 0;
            }

            v114 = (v110 + v112);
            v115 = v80[5];
            if (v115 == 96)
            {
              *&v35 = vdup_lane_s8(*v114, 0);
              v213 = v35;
              v217 = v35;
              v221 = v35;
              v225 = v35;
              v116 = 1;
            }

            else if (v115 == 31)
            {
              *&v34 = v114[1];
              v117 = &v114[2];
              v248 = vld2_f32(v117);
              *&v35 = vzip2_s32(*v114, *&v34);
              v213 = vzip1_s32(*v114, *&v34);
              v217 = v35;
              v221 = v248.val[0];
              v225 = v248.val[1];
              v116 = 32;
            }

            else if (v80[5])
            {
              v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v213, 32, v114, v115, *&v35, *&v34);
            }

            else
            {
              v116 = 0;
              v213 = 0;
              v217 = 0;
              v221 = 0;
              v225 = 0;
            }

            v118 = (v114 + v116);
            v119 = v80[6];
            if (v119 == 96)
            {
              *&v35 = vdup_lane_s8(*v118, 0);
              v228 = v35;
              v232 = v35;
              v236 = v35;
              v240 = v35;
              v120 = 1;
            }

            else if (v119 == 31)
            {
              *&v34 = v118[1];
              v121 = &v118[2];
              v249 = vld2_f32(v121);
              *&v35 = vzip2_s32(*v118, *&v34);
              v228 = vzip1_s32(*v118, *&v34);
              v232 = v35;
              v236 = v249.val[0];
              v240 = v249.val[1];
              v120 = 32;
            }

            else if (v80[6])
            {
              v120 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 32, v118, v119, *&v35, *&v34);
            }

            else
            {
              v120 = 0;
              v228 = 0;
              v232 = 0;
              v236 = 0;
              v240 = 0;
            }

            v122 = (v118 + v120);
            v123 = v80[7];
            if (v123 == 96)
            {
              v229 = vdup_lane_s8(*v122, 0);
              v233 = v229;
              v237 = v229;
              v241 = v229;
              v124 = v204;
              if (v204)
              {
                goto LABEL_172;
              }
            }

            else
            {
              if (v123 != 31)
              {
                if (v80[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 32, v122, v123, *&v35, *&v34);
                  v124 = v204;
                  if (!v204)
                  {
                    goto LABEL_203;
                  }
                }

                else
                {
                  v229 = 0;
                  v233 = 0;
                  v237 = 0;
                  v241 = 0;
                  v124 = v204;
                  if (!v204)
                  {
                    goto LABEL_203;
                  }
                }

LABEL_172:
                v128 = v205;
                if (!v205)
                {
                  goto LABEL_203;
                }

                v129 = 0;
                v130 = 2 * v203;
                v131 = &v210 + 32 * v202 + v130;
                v132 = v200;
                v133 = v201;
                v134 = 2 * v205;
                if (2 * v205)
                {
                  v135 = (2 * v205 - 1) >> 32 == 0;
                }

                else
                {
                  v135 = 0;
                }

                v136 = !v135;
                v138 = v131 < v200 + v201 * (v124 - 1) + 2 * v205 && v200 < &v209[2 * v124 + 2 * v202] + 2 * v205 + v130;
                v139 = v138 || v201 < 0;
                v140 = v134 & 0x1FFFFFFE0;
                v141 = v134 & 0x1FFFFFFF8;
                v142 = (v205 < 4) | v136 | v139;
                v143 = &v212 + 32 * v202 + v130;
                v144 = (v200 + 16);
                v145 = v131;
                v146 = v200;
                while (2)
                {
                  v147 = (v132 + v129 * v133);
                  v148 = &v131[32 * v129];
                  if (v142)
                  {
                    v149 = 0;
LABEL_200:
                    v159 = v149 + 1;
                    do
                    {
                      v160 = *v147++;
                      *v148++ = v160;
                    }

                    while (v134 > v159++);
                  }

                  else
                  {
                    if (v128 >= 0x10)
                    {
                      v151 = v144;
                      v152 = v143;
                      v153 = v134 & 0x1FFFFFFE0;
                      do
                      {
                        v154 = *v151;
                        *(v152 - 1) = *(v151 - 1);
                        *v152 = v154;
                        v152 += 2;
                        v151 += 2;
                        v153 -= 32;
                      }

                      while (v153);
                      if (v134 == v140)
                      {
                        goto LABEL_186;
                      }

                      v150 = v134 & 0x1FFFFFFE0;
                      if ((v128 & 0xC) == 0)
                      {
                        v147 += v140;
                        v148 += v140;
                        v149 = v134 & 0xFFFFFFE0;
                        goto LABEL_200;
                      }
                    }

                    else
                    {
                      v150 = 0;
                    }

                    v148 += v141;
                    v155 = v150 - (v134 & 0x1FFFFFFF8);
                    v156 = (v146 + v150);
                    v157 = &v145[v150];
                    do
                    {
                      v158 = *v156++;
                      *v157 = v158;
                      v157 += 8;
                      v155 += 8;
                    }

                    while (v155);
                    if (v134 != v141)
                    {
                      v147 += v141;
                      v149 = v134 & 0xFFFFFFF8;
                      goto LABEL_200;
                    }
                  }

LABEL_186:
                  ++v129;
                  v143 += 32;
                  v144 = (v144 + v133);
                  v146 += v133;
                  v145 += 32;
                  if (v129 == v124)
                  {
                    goto LABEL_203;
                  }

                  continue;
                }
              }

              v125 = v122[1];
              v126 = &v122[2];
              v250 = vld2_f32(v126);
              v127 = vzip2_s32(*v122, v125);
              v229 = vzip1_s32(*v122, v125);
              v233 = v127;
              v237 = v250.val[0];
              v241 = v250.val[1];
              v124 = v204;
              if (v204)
              {
                goto LABEL_172;
              }
            }

LABEL_203:
            v92 = v198;
            v93 = v199;
            v49 = v206;
            v94 = v207;
            v81 = &v210;
            v91 = 32;
LABEL_204:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v81, v91, v92, v93, v49, v94);
            v24 = v187;
            if (!v187)
            {
              goto LABEL_46;
            }

            goto LABEL_205;
          }

          dispatch_sync(*(*(a1 + 8) + 16552), block);
          v24 = v187;
          if (!v187)
          {
            goto LABEL_46;
          }

LABEL_205:
          v162 = *v90;
          v163 = v90[1];
          v164 = v90[3];
          v82[2] = v90[2];
          v82[3] = v164;
          *v82 = v162;
          v82[1] = v163;
          v165 = v90[4];
          v166 = v90[5];
          v167 = v90[7];
          v82[6] = v90[6];
          v82[7] = v167;
          v82[4] = v165;
          v82[5] = v166;
          v168 = v90[8];
          v169 = v90[9];
          v170 = v90[11];
          v82[10] = v90[10];
          v82[11] = v170;
          v82[8] = v168;
          v82[9] = v169;
          v35 = v90[12];
          v34 = v90[13];
          v171 = v90[15];
          v82[14] = v90[14];
          v82[15] = v171;
          v82[12] = v35;
          v82[13] = v34;
LABEL_46:
          v21 = v43++ == v188 >> 4;
        }

        while (!v21);
        v21 = v18++ == v176;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v249 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v201 = a8;
  v17 = a8 >> 3;
  v184 = a8 + a10 - 1;
  v186 = v184 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
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
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v17 <= v186)
  {
    v25 = a7 + a9 - 1;
    if (a7 >> 4 <= v25 >> 4)
    {
      v202 = (a5 - 1) >> 4;
      v181 = a5 - 1;
      v187 = (a5 - 1) & 0xF;
      v182 = (a6 - 1) & 7;
      v183 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v27.i8 = vcgt_u32(v26, 0x1F0000000FLL);
      v28.val[0] = -1;
      *v29.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v27.i8);
      v192 = v29.i64[0];
      v193 = v29.i32[0] | v29.i32[1];
      v191 = v27.i64[0];
      v180 = 8 * v19 * v18;
      do
      {
        v30 = (8 * v17) | 7;
        if (8 * v17 <= v201)
        {
          v31 = v201;
        }

        else
        {
          v31 = 8 * v17;
        }

        if (v184 < v30)
        {
          v30 = v184;
        }

        v200 = 8 * v17;
        v190 = v31 - 8 * v17;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v182;
        v189 = v33;
        v35 = v33 != 8;
        v36 = a7 >> 4;
        v37 = v182 + 1;
        if (v17 != v183)
        {
          v37 = 8;
          v34 = v35;
        }

        v188 = v34;
        v198 = a3 + (v31 - v201) * a11;
        v199 = v37;
        v197 = v37;
        do
        {
          v38 = 16 * v36;
          v39 = 16 * (v36 + 1) - 1;
          if (16 * v36 <= a7)
          {
            v40 = a7;
          }

          else
          {
            v40 = 16 * v36;
          }

          if (v25 < v39)
          {
            v39 = a7 + a9 - 1;
          }

          v41 = v39 - v40;
          v42 = v39 - v40 + 1;
          if (v36 == v202)
          {
            v43 = v187 + 1;
          }

          else
          {
            v43 = 16;
          }

          v44 = 1;
          if (v200 >= v201 && v38 >= a7)
          {
            v45 = v41 != v187;
            if (v36 != v202)
            {
              v45 = v42 != 16;
            }

            v44 = v45 || v188;
          }

          if (isLevelTiled)
          {
            v66 = 0;
            v67 = v180 >> (*(a1 + 57) != 0);
            v68 = 1;
            if (v67 <= 63)
            {
              if (v67 > 15)
              {
                if (v67 == 16)
                {
                  v68 = 0;
                  v69 = 0;
                  v70 = 64;
                  v66 = 128;
                }

                else
                {
                  v69 = 1;
                  v70 = 0;
                  if (v67 == 32)
                  {
                    v68 = 0;
                    v69 = 0;
                    v66 = 64;
                    v70 = 64;
                  }
                }
              }

              else if (v67 == 4)
              {
                v68 = 0;
                v69 = 0;
                v70 = 128;
                v66 = 256;
              }

              else
              {
                v69 = 1;
                v70 = 0;
                if (v67 == 8)
                {
                  v68 = 0;
                  v69 = 0;
                  v66 = 128;
                  v70 = 128;
                }
              }
            }

            else if (v67 <= 255)
            {
              if (v67 == 64)
              {
                v68 = 0;
                v69 = 0;
                v70 = 32;
                v66 = 64;
              }

              else
              {
                v69 = 1;
                v70 = 0;
                if (v67 == 128)
                {
                  v68 = 0;
                  v69 = 0;
                  v66 = 32;
                  v70 = 32;
                }
              }
            }

            else if (v67 == 256)
            {
              v68 = 0;
              v69 = 0;
              v70 = 16;
              v66 = 32;
            }

            else if (v67 == 512)
            {
              v69 = 0;
              v66 = 16;
              v70 = 16;
            }

            else
            {
              v69 = 1;
              v70 = 0;
              if (v67 == 1024)
              {
                v70 = 8;
                v66 = 16;
              }
            }

            v168 = (v66 >> 4) - 1;
            if (v68)
            {
              v169 = 0;
            }

            else
            {
              v169 = 32 - __clz(~(-1 << -__clz(v168)));
            }

            v170 = (v70 >> 3) - 1;
            if (v69)
            {
              v171 = 0;
              if (v169)
              {
                goto LABEL_199;
              }
            }

            else
            {
              v171 = 32 - __clz(~(-1 << -__clz(v170)));
              if (v171 | v169)
              {
LABEL_199:
                v172 = 0;
                v173 = 0;
                v174 = v36 & v168;
                v175 = v17 & v170;
                v176 = v171 != 0;
                v177 = v169 != 0;
                v178 = 1;
                do
                {
                  --v171;
                  if (v176)
                  {
                    v173 |= (v178 & v175) << v172++;
                  }

                  else
                  {
                    v171 = 0;
                  }

                  --v169;
                  if (v177)
                  {
                    v173 |= (v178 & v174) << v172++;
                  }

                  else
                  {
                    v169 = 0;
                  }

                  v178 *= 2;
                  --v172;
                  v177 = v169 != 0;
                  v176 = v171 != 0;
                }

                while (v169 | v171);
                v179 = v173 << 8;
                goto LABEL_211;
              }
            }

            v179 = 0;
LABEL_211:
            v53 = v179 + ((v38 / v66 + v200 / v70 * ((v66 + v181) / v66)) << 14);
            goto LABEL_52;
          }

          if (v193)
          {
            v46 = 0;
            v47 = 0;
            v48 = 1;
            v49 = v191;
            v50 = BYTE4(v191);
            v51 = v192;
            v52 = HIDWORD(v192);
            do
            {
              --v51;
              if (v49)
              {
                v47 |= (v48 & v17) << v46++;
              }

              else
              {
                v51 = 0;
              }

              --v52;
              if (v50)
              {
                v47 |= (v48 & v36) << v46++;
              }

              else
              {
                v52 = 0;
              }

              v48 *= 2;
              --v46;
              v50 = v52 != 0;
              v49 = v51 != 0;
            }

            while (v52 | v51);
            v53 = v47 << 8;
          }

          else
          {
            v53 = 0;
          }

LABEL_52:
          v54 = *(a1 + 128) >> (*(a1 + 144) + a12);
          if (v54 <= 1)
          {
            v54 = 1;
          }

          v55 = v54 + 15;
          if (v55 < 0x20)
          {
            v56 = 0;
          }

          else
          {
            v56 = 32 - __clz(~(-1 << -__clz((v55 >> 4) - 1)));
          }

          v57 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 7;
          if (v58 < 0x10)
          {
            v59 = 0;
            if (!v56)
            {
LABEL_77:
              v65 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 3) - 1)));
            if (!(v59 | v56))
            {
              goto LABEL_77;
            }
          }

          v60 = 0;
          v61 = 0;
          v62 = v56 != 0;
          v63 = v59 != 0;
          v64 = 1;
          do
          {
            --v56;
            if (v62)
            {
              v61 |= (v64 & v36) << v60++;
            }

            else
            {
              v56 = 0;
            }

            --v59;
            if (v63)
            {
              v61 |= (v64 & v17) << v60++;
            }

            else
            {
              v59 = 0;
            }

            v64 *= 2;
            --v60;
            v63 = v59 != 0;
            v62 = v56 != 0;
          }

          while (v59 | v56);
          v65 = 8 * v61;
LABEL_78:
          v71 = (a4 + v65);
          v72 = (v198 + 2 * (v40 - a7));
          v73 = (a2 + v53);
          if (v203)
          {
            if (!(v44 & 1 | (v43 < 0x10u) | (v197 < 8)))
            {
              v81 = v215;
LABEL_86:
              v82 = a11;
              v83 = v81;
              v84 = (a4 + v65);
              v85 = v199;
              goto LABEL_178;
            }

            v74 = v73[13];
            v215[12] = v73[12];
            v215[13] = v74;
            v75 = v73[15];
            v216[0] = v73[14];
            v216[1] = v75;
            v76 = v73[9];
            v215[8] = v73[8];
            v215[9] = v76;
            v77 = v73[11];
            v215[10] = v73[10];
            v215[11] = v77;
            v78 = v73[5];
            v215[4] = v73[4];
            v215[5] = v78;
            v79 = v73[7];
            v215[6] = v73[6];
            v215[7] = v79;
            v80 = v73[1];
            v215[0] = *v73;
            v215[1] = v80;
            v29 = v73[2];
            v27 = v73[3];
            v81 = v215;
            v215[2] = v29;
            v215[3] = v27;
          }

          else
          {
            v81 = (a2 + v53);
            if (!(v44 & 1 | (v43 < 0x10u) | (v197 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          v205 = v81;
          v213 = v43;
          v214 = v199;
          v209 = v190;
          v210 = v40 - v38;
          v206 = (a4 + v65);
          v207 = (v198 + 2 * (v40 - a7));
          v208 = a11;
          v211 = v189;
          v212 = v42;
          if ((v44 & 1) == 0)
          {
            v86 = *v71;
            if (v86 == 96)
            {
              *v29.i8 = vdup_lane_s8(*v81, 0);
              v217 = *v29.i8;
              v221 = v29.i64[0];
              v225 = *v29.i8;
              v229 = v29.i64[0];
              v87 = 1;
            }

            else if (v86 == 31)
            {
              v27.i64[0] = *(v81 + 1);
              v88 = (v81 + 1);
              v28 = vld2_f32(v88);
              *v29.i8 = vzip2_s32(*v81, *v27.i8);
              v217 = vzip1_s32(*v81, *v27.i8);
              v221 = v29.i64[0];
              v225 = v28.val[0];
              v229 = v89;
              v87 = 32;
            }

            else if (*v71)
            {
              v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 32, v81, v86, *v29.i64, *v27.i8);
            }

            else
            {
              v87 = 0;
              v217 = 0;
              v221 = 0;
              v225 = 0;
              v229 = 0;
            }

            v90 = (v81 + v87);
            v91 = v71[1];
            if (v91 == 96)
            {
              *v29.i8 = vdup_lane_s8(*v90, 0);
              v218 = *v29.i8;
              v222 = v29.i64[0];
              v226 = *v29.i8;
              v230 = v29.i64[0];
              v92 = 1;
            }

            else if (v91 == 31)
            {
              *v27.i8 = v90[1];
              v93 = &v90[2];
              v28 = vld2_f32(v93);
              *v29.i8 = vzip2_s32(*v90, *v27.i8);
              v218 = vzip1_s32(*v90, *v27.i8);
              v222 = v29.i64[0];
              v226 = v28.val[0];
              v230 = v94;
              v92 = 32;
            }

            else if (v71[1])
            {
              v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v218, 32, v90, v91, *v29.i64, *v27.i8);
            }

            else
            {
              v92 = 0;
              v218 = 0;
              v222 = 0;
              v226 = 0;
              v230 = 0;
            }

            v95 = (v90 + v92);
            v96 = v71[2];
            if (v96 == 96)
            {
              *v29.i8 = vdup_lane_s8(*v95, 0);
              v233 = *v29.i8;
              v237 = v29.i64[0];
              v241 = *v29.i8;
              v245 = v29.i64[0];
              v97 = 1;
            }

            else if (v96 == 31)
            {
              *v27.i8 = v95[1];
              v98 = &v95[2];
              v28 = vld2_f32(v98);
              *v29.i8 = vzip2_s32(*v95, *v27.i8);
              v233 = vzip1_s32(*v95, *v27.i8);
              v237 = v29.i64[0];
              v241 = v28.val[0];
              v245 = v99;
              v97 = 32;
            }

            else if (v71[2])
            {
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 32, v95, v96, *v29.i64, *v27.i8);
            }

            else
            {
              v97 = 0;
              v233 = 0;
              v237 = 0;
              v241 = 0;
              v245 = 0;
            }

            v100 = (v95 + v97);
            v101 = v71[3];
            if (v101 == 96)
            {
              *v29.i8 = vdup_lane_s8(*v100, 0);
              v234 = *v29.i8;
              v238 = v29.i64[0];
              v242 = *v29.i8;
              v246 = v29.i64[0];
              v102 = 1;
            }

            else if (v101 == 31)
            {
              *v27.i8 = v100[1];
              v103 = &v100[2];
              v28 = vld2_f32(v103);
              *v29.i8 = vzip2_s32(*v100, *v27.i8);
              v234 = vzip1_s32(*v100, *v27.i8);
              v238 = v29.i64[0];
              v242 = v28.val[0];
              v246 = v104;
              v102 = 32;
            }

            else if (v71[3])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 32, v100, v101, *v29.i64, *v27.i8);
            }

            else
            {
              v102 = 0;
              v234 = 0;
              v238 = 0;
              v242 = 0;
              v246 = 0;
            }

            v105 = (v100 + v102);
            v106 = v71[4];
            if (v106 == 96)
            {
              *v29.i8 = vdup_lane_s8(*v105, 0);
              v219 = *v29.i8;
              v223 = v29.i64[0];
              v227 = *v29.i8;
              v231 = v29.i64[0];
              v107 = 1;
            }

            else if (v106 == 31)
            {
              *v27.i8 = v105[1];
              v108 = &v105[2];
              v28 = vld2_f32(v108);
              *v29.i8 = vzip2_s32(*v105, *v27.i8);
              v219 = vzip1_s32(*v105, *v27.i8);
              v223 = v29.i64[0];
              v227 = v28.val[0];
              v231 = v109;
              v107 = 32;
            }

            else if (v71[4])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v219, 32, v105, v106, *v29.i64, *v27.i8);
            }

            else
            {
              v107 = 0;
              v219 = 0;
              v223 = 0;
              v227 = 0;
              v231 = 0;
            }

            v110 = (v105 + v107);
            v111 = v71[5];
            if (v111 == 96)
            {
              *v29.i8 = vdup_lane_s8(*v110, 0);
              v220 = *v29.i8;
              v224 = v29.i64[0];
              v228 = *v29.i8;
              v232 = v29.i64[0];
              v112 = 1;
            }

            else if (v111 == 31)
            {
              *v27.i8 = v110[1];
              v113 = &v110[2];
              v28 = vld2_f32(v113);
              *v29.i8 = vzip2_s32(*v110, *v27.i8);
              v220 = vzip1_s32(*v110, *v27.i8);
              v224 = v29.i64[0];
              v228 = v28.val[0];
              v232 = v114;
              v112 = 32;
            }

            else if (v71[5])
            {
              v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v220, 32, v110, v111, *v29.i64, *v27.i8);
            }

            else
            {
              v112 = 0;
              v220 = 0;
              v224 = 0;
              v228 = 0;
              v232 = 0;
            }

            v115 = (v110 + v112);
            v116 = v71[6];
            if (v116 == 96)
            {
              *v29.i8 = vdup_lane_s8(*v115, 0);
              v235 = *v29.i8;
              v239 = v29.i64[0];
              v243 = *v29.i8;
              v247 = v29.i64[0];
              v117 = 1;
            }

            else if (v116 == 31)
            {
              *v27.i8 = v115[1];
              v118 = &v115[2];
              v28 = vld2_f32(v118);
              *v29.i8 = vzip2_s32(*v115, *v27.i8);
              v235 = vzip1_s32(*v115, *v27.i8);
              v239 = v29.i64[0];
              v243 = v28.val[0];
              v247 = v119;
              v117 = 32;
            }

            else if (v71[6])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 32, v115, v116, *v29.i64, *v27.i8);
            }

            else
            {
              v117 = 0;
              v235 = 0;
              v239 = 0;
              v243 = 0;
              v247 = 0;
            }

            v120 = (v115 + v117);
            v121 = v71[7];
            if (v121 == 96)
            {
              *v29.i8 = vdup_lane_s8(*v120, 0);
              v236 = *v29.i8;
              v240 = v29.i64[0];
              v244 = *v29.i8;
              v248 = v29.i64[0];
              v122 = v211;
              if (v211)
              {
                goto LABEL_146;
              }
            }

            else
            {
              if (v121 != 31)
              {
                if (v71[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 32, v120, v121, *v29.i64, *v27.i8);
                  v122 = v211;
                  if (!v211)
                  {
                    goto LABEL_177;
                  }
                }

                else
                {
                  v236 = 0;
                  v240 = 0;
                  v244 = 0;
                  v248 = 0;
                  v122 = v211;
                  if (!v211)
                  {
                    goto LABEL_177;
                  }
                }

LABEL_146:
                v125 = v212;
                if (!v212)
                {
                  goto LABEL_177;
                }

                v126 = 0;
                v127 = 2 * v210;
                v128 = &v217 + 32 * v209 + v127;
                v129 = v207;
                v130 = v208;
                v131 = 2 * v212;
                if (2 * v212)
                {
                  v132 = (2 * v212 - 1) >> 32 == 0;
                }

                else
                {
                  v132 = 0;
                }

                v133 = !v132;
                v135 = v128 < &v207->i8[2 * v212 + v208 * (v122 - 1)] && v207 < (&v216[2 * v122 + 2 * v209] + 2 * v212 + v127);
                v136 = v135 || v208 < 0;
                v137 = v131 & 0x1FFFFFFE0;
                v138 = v131 & 0x1FFFFFFF8;
                v139 = (v212 < 4) | v133 | v136;
                v140 = (&v219 + 32 * v209 + v127);
                v141 = v207 + 1;
                v142 = v128;
                v143 = v207;
                while (2)
                {
                  v144 = (v129 + v126 * v130);
                  v145 = &v128[32 * v126];
                  if (v139)
                  {
                    v146 = 0;
LABEL_174:
                    v155 = v146 + 1;
                    do
                    {
                      v156 = *v144++;
                      *v145++ = v156;
                    }

                    while (v131 > v155++);
                  }

                  else
                  {
                    if (v125 >= 0x10)
                    {
                      v148 = v141;
                      v149 = v140;
                      v150 = v131 & 0x1FFFFFFE0;
                      do
                      {
                        v29 = v148[-1];
                        v27 = *v148;
                        v149[-1] = v29;
                        *v149 = v27;
                        v149 += 2;
                        v148 += 2;
                        v150 -= 32;
                      }

                      while (v150);
                      if (v131 == v137)
                      {
                        goto LABEL_160;
                      }

                      v147 = v131 & 0x1FFFFFFE0;
                      if ((v125 & 0xC) == 0)
                      {
                        v144 += v137;
                        v145 += v137;
                        v146 = v131 & 0xFFFFFFE0;
                        goto LABEL_174;
                      }
                    }

                    else
                    {
                      v147 = 0;
                    }

                    v145 += v138;
                    v151 = v147 - (v131 & 0x1FFFFFFF8);
                    v152 = (v143 + v147);
                    v153 = &v142[v147];
                    do
                    {
                      v154 = *v152++;
                      v29.i64[0] = v154;
                      *v153 = v154;
                      v153 += 8;
                      v151 += 8;
                    }

                    while (v151);
                    if (v131 != v138)
                    {
                      v144 += v138;
                      v146 = v131 & 0xFFFFFFF8;
                      goto LABEL_174;
                    }
                  }

LABEL_160:
                  ++v126;
                  v140 += 2;
                  v141 = (v141 + v130);
                  v143 += v130;
                  v142 += 32;
                  if (v126 == v122)
                  {
                    goto LABEL_177;
                  }

                  continue;
                }
              }

              *v27.i8 = v120[1];
              v123 = &v120[2];
              v28 = vld2_f32(v123);
              *v29.i8 = vzip2_s32(*v120, *v27.i8);
              v236 = vzip1_s32(*v120, *v27.i8);
              v240 = v29.i64[0];
              v244 = v28.val[0];
              v248 = v124;
              v122 = v211;
              if (v211)
              {
                goto LABEL_146;
              }
            }

LABEL_177:
            v83 = v205;
            v84 = v206;
            v43 = v213;
            v85 = v214;
            v72 = &v217;
            v82 = 32;
LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v72, v82, v83, v84, v43, v85, *v29.i64, *v27.i64, v28.val[0]);
            if (!v203)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(a1 + 8) + 16552), block);
          if (!v203)
          {
            goto LABEL_26;
          }

LABEL_179:
          v158 = *v81;
          v159 = *(v81 + 1);
          v160 = *(v81 + 3);
          v73[2] = *(v81 + 2);
          v73[3] = v160;
          *v73 = v158;
          v73[1] = v159;
          v161 = *(v81 + 4);
          v162 = *(v81 + 5);
          v163 = *(v81 + 7);
          v73[6] = *(v81 + 6);
          v73[7] = v163;
          v73[4] = v161;
          v73[5] = v162;
          v164 = *(v81 + 8);
          v165 = *(v81 + 9);
          v166 = *(v81 + 11);
          v73[10] = *(v81 + 10);
          v73[11] = v166;
          v73[8] = v164;
          v73[9] = v165;
          v29 = *(v81 + 12);
          v27 = *(v81 + 13);
          v28 = v81[14];
          v167 = *(v81 + 15);
          v73[14] = v28;
          v73[15] = v167;
          v73[12] = v29;
          v73[13] = v27;
LABEL_26:
          v21 = v36++ == v25 >> 4;
        }

        while (!v21);
        v21 = v17++ == v186;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v243 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v195 = a8;
  v17 = a8 >> 3;
  v178 = a8 + a10 - 1;
  v180 = v178 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
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
  v197 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v17 <= v180)
  {
    v25 = a7 + a9 - 1;
    if (a7 >> 4 <= v25 >> 4)
    {
      v196 = (a5 - 1) >> 4;
      v175 = a5 - 1;
      v181 = (a5 - 1) & 0xF;
      v176 = (a6 - 1) & 7;
      v177 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *&v27 = vcgt_u32(v26, 0x1F0000000FLL);
      *&v28 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *&v27);
      v186 = v28;
      v187 = v28 | DWORD1(v28);
      v185 = v27;
      v174 = 8 * v19 * v18;
      do
      {
        v29 = (8 * v17) | 7;
        if (8 * v17 <= v195)
        {
          v30 = v195;
        }

        else
        {
          v30 = 8 * v17;
        }

        if (v178 < v29)
        {
          v29 = v178;
        }

        v194 = 8 * v17;
        v184 = v30 - 8 * v17;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v176;
        v183 = v32;
        v34 = v32 != 8;
        v35 = a7 >> 4;
        v36 = v176 + 1;
        if (v17 != v177)
        {
          v36 = 8;
          v33 = v34;
        }

        v182 = v33;
        v192 = a3 + (v30 - v195) * a11;
        v193 = v36;
        v191 = v36;
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

          if (v25 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v38 - v39 + 1;
          if (v35 == v196)
          {
            v42 = v181 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v194 >= v195 && v37 >= a7)
          {
            v44 = v40 != v181;
            if (v35 != v196)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v182;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v174 >> (*(a1 + 57) != 0);
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
              v68 = 0;
              v69 = 16;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v68 = 0;
              v65 = 16;
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

            v162 = (v65 >> 4) - 1;
            if (v67)
            {
              v163 = 0;
            }

            else
            {
              v163 = 32 - __clz(~(-1 << -__clz(v162)));
            }

            v164 = (v69 >> 3) - 1;
            if (v68)
            {
              v165 = 0;
              if (v163)
              {
                goto LABEL_199;
              }
            }

            else
            {
              v165 = 32 - __clz(~(-1 << -__clz(v164)));
              if (v165 | v163)
              {
LABEL_199:
                v166 = 0;
                v167 = 0;
                v168 = v35 & v162;
                v169 = v17 & v164;
                v170 = v165 != 0;
                v171 = v163 != 0;
                v172 = 1;
                do
                {
                  --v165;
                  if (v170)
                  {
                    v167 |= (v172 & v169) << v166++;
                  }

                  else
                  {
                    v165 = 0;
                  }

                  --v163;
                  if (v171)
                  {
                    v167 |= (v172 & v168) << v166++;
                  }

                  else
                  {
                    v163 = 0;
                  }

                  v172 *= 2;
                  --v166;
                  v171 = v163 != 0;
                  v170 = v165 != 0;
                }

                while (v163 | v165);
                v173 = v167 << 8;
                goto LABEL_211;
              }
            }

            v173 = 0;
LABEL_211:
            v52 = v173 + ((v37 / v65 + v194 / v69 * ((v65 + v175) / v65)) << 14);
            goto LABEL_52;
          }

          if (v187)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v185;
            v49 = BYTE4(v185);
            v50 = v186;
            v51 = HIDWORD(v186);
            do
            {
              --v50;
              if (v48)
              {
                v46 |= (v47 & v17) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v49)
              {
                v46 |= (v47 & v35) << v45++;
              }

              else
              {
                v51 = 0;
              }

              v47 *= 2;
              --v45;
              v49 = v51 != 0;
              v48 = v50 != 0;
            }

            while (v51 | v50);
            v52 = v46 << 8;
          }

          else
          {
            v52 = 0;
          }

LABEL_52:
          v53 = *(a1 + 128) >> (*(a1 + 144) + a12);
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

          v56 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 7;
          if (v57 < 0x10)
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
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 3) - 1)));
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
          v71 = (v192 + 2 * (v39 - a7));
          v72 = (a2 + v52);
          if (v197)
          {
            if (!(v43 & 1 | (v42 < 0x10u) | (v191 < 8)))
            {
              v80 = v209;
LABEL_86:
              v81 = a11;
              v82 = v80;
              v83 = (a4 + v64);
              v84 = v193;
              goto LABEL_178;
            }

            v73 = v72[13];
            v209[12] = v72[12];
            v209[13] = v73;
            v74 = v72[15];
            v210[0] = v72[14];
            v210[1] = v74;
            v75 = v72[9];
            v209[8] = v72[8];
            v209[9] = v75;
            v76 = v72[11];
            v209[10] = v72[10];
            v209[11] = v76;
            v77 = v72[5];
            v209[4] = v72[4];
            v209[5] = v77;
            v78 = v72[7];
            v209[6] = v72[6];
            v209[7] = v78;
            v79 = v72[1];
            v209[0] = *v72;
            v209[1] = v79;
            v28 = v72[2];
            v27 = v72[3];
            v80 = v209;
            v209[2] = v28;
            v209[3] = v27;
          }

          else
          {
            v80 = (a2 + v52);
            if (!(v43 & 1 | (v42 < 0x10u) | (v191 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          v199 = v80;
          v207 = v42;
          v208 = v193;
          v203 = v184;
          v204 = v39 - v37;
          v200 = (a4 + v64);
          v201 = v192 + 2 * (v39 - a7);
          v202 = a11;
          v205 = v183;
          v206 = v41;
          if ((v43 & 1) == 0)
          {
            v85 = *v70;
            if (v85 == 96)
            {
              *&v28 = vdup_lane_s8(*v80, 0);
              v211 = v28;
              v215 = v28;
              v219 = v28;
              v223 = v28;
              v86 = 1;
            }

            else if (v85 == 31)
            {
              *&v27 = *(v80 + 1);
              v87 = (v80 + 1);
              v244 = vld2_f32(v87);
              *&v28 = vzip2_s32(*v80, *&v27);
              v211 = vzip1_s32(*v80, *&v27);
              v215 = v28;
              v219 = v244.val[0];
              v223 = v244.val[1];
              v86 = 32;
            }

            else if (*v70)
            {
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v211, 32, v80, v85, *&v28, *&v27);
            }

            else
            {
              v86 = 0;
              v211 = 0;
              v215 = 0;
              v219 = 0;
              v223 = 0;
            }

            v88 = (v80 + v86);
            v89 = v70[1];
            if (v89 == 96)
            {
              *&v28 = vdup_lane_s8(*v88, 0);
              v212 = v28;
              v216 = v28;
              v220 = v28;
              v224 = v28;
              v90 = 1;
            }

            else if (v89 == 31)
            {
              *&v27 = v88[1];
              v91 = &v88[2];
              v245 = vld2_f32(v91);
              *&v28 = vzip2_s32(*v88, *&v27);
              v212 = vzip1_s32(*v88, *&v27);
              v216 = v28;
              v220 = v245.val[0];
              v224 = v245.val[1];
              v90 = 32;
            }

            else if (v70[1])
            {
              v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v212, 32, v88, v89, *&v28, *&v27);
            }

            else
            {
              v90 = 0;
              v212 = 0;
              v216 = 0;
              v220 = 0;
              v224 = 0;
            }

            v92 = (v88 + v90);
            v93 = v70[2];
            if (v93 == 96)
            {
              *&v28 = vdup_lane_s8(*v92, 0);
              v227 = v28;
              v231 = v28;
              v235 = v28;
              v239 = v28;
              v94 = 1;
            }

            else if (v93 == 31)
            {
              *&v27 = v92[1];
              v95 = &v92[2];
              v246 = vld2_f32(v95);
              *&v28 = vzip2_s32(*v92, *&v27);
              v227 = vzip1_s32(*v92, *&v27);
              v231 = v28;
              v235 = v246.val[0];
              v239 = v246.val[1];
              v94 = 32;
            }

            else if (v70[2])
            {
              v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 32, v92, v93, *&v28, *&v27);
            }

            else
            {
              v94 = 0;
              v227 = 0;
              v231 = 0;
              v235 = 0;
              v239 = 0;
            }

            v96 = (v92 + v94);
            v97 = v70[3];
            if (v97 == 96)
            {
              *&v28 = vdup_lane_s8(*v96, 0);
              v228 = v28;
              v232 = v28;
              v236 = v28;
              v240 = v28;
              v98 = 1;
            }

            else if (v97 == 31)
            {
              *&v27 = v96[1];
              v99 = &v96[2];
              v247 = vld2_f32(v99);
              *&v28 = vzip2_s32(*v96, *&v27);
              v228 = vzip1_s32(*v96, *&v27);
              v232 = v28;
              v236 = v247.val[0];
              v240 = v247.val[1];
              v98 = 32;
            }

            else if (v70[3])
            {
              v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 32, v96, v97, *&v28, *&v27);
            }

            else
            {
              v98 = 0;
              v228 = 0;
              v232 = 0;
              v236 = 0;
              v240 = 0;
            }

            v100 = (v96 + v98);
            v101 = v70[4];
            if (v101 == 96)
            {
              *&v28 = vdup_lane_s8(*v100, 0);
              v213 = v28;
              v217 = v28;
              v221 = v28;
              v225 = v28;
              v102 = 1;
            }

            else if (v101 == 31)
            {
              *&v27 = v100[1];
              v103 = &v100[2];
              v248 = vld2_f32(v103);
              *&v28 = vzip2_s32(*v100, *&v27);
              v213 = vzip1_s32(*v100, *&v27);
              v217 = v28;
              v221 = v248.val[0];
              v225 = v248.val[1];
              v102 = 32;
            }

            else if (v70[4])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v213, 32, v100, v101, *&v28, *&v27);
            }

            else
            {
              v102 = 0;
              v213 = 0;
              v217 = 0;
              v221 = 0;
              v225 = 0;
            }

            v104 = (v100 + v102);
            v105 = v70[5];
            if (v105 == 96)
            {
              *&v28 = vdup_lane_s8(*v104, 0);
              v214 = v28;
              v218 = v28;
              v222 = v28;
              v226 = v28;
              v106 = 1;
            }

            else if (v105 == 31)
            {
              *&v27 = v104[1];
              v107 = &v104[2];
              v249 = vld2_f32(v107);
              *&v28 = vzip2_s32(*v104, *&v27);
              v214 = vzip1_s32(*v104, *&v27);
              v218 = v28;
              v222 = v249.val[0];
              v226 = v249.val[1];
              v106 = 32;
            }

            else if (v70[5])
            {
              v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v214, 32, v104, v105, *&v28, *&v27);
            }

            else
            {
              v106 = 0;
              v214 = 0;
              v218 = 0;
              v222 = 0;
              v226 = 0;
            }

            v108 = (v104 + v106);
            v109 = v70[6];
            if (v109 == 96)
            {
              *&v28 = vdup_lane_s8(*v108, 0);
              v229 = v28;
              v233 = v28;
              v237 = v28;
              v241 = v28;
              v110 = 1;
            }

            else if (v109 == 31)
            {
              *&v27 = v108[1];
              v111 = &v108[2];
              v250 = vld2_f32(v111);
              *&v28 = vzip2_s32(*v108, *&v27);
              v229 = vzip1_s32(*v108, *&v27);
              v233 = v28;
              v237 = v250.val[0];
              v241 = v250.val[1];
              v110 = 32;
            }

            else if (v70[6])
            {
              v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 32, v108, v109, *&v28, *&v27);
            }

            else
            {
              v110 = 0;
              v229 = 0;
              v233 = 0;
              v237 = 0;
              v241 = 0;
            }

            v112 = (v108 + v110);
            v113 = v70[7];
            if (v113 == 96)
            {
              v230 = vdup_lane_s8(*v112, 0);
              v234 = v230;
              v238 = v230;
              v242 = v230;
              v114 = v205;
              if (v205)
              {
                goto LABEL_146;
              }
            }

            else
            {
              if (v113 != 31)
              {
                if (v70[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 32, v112, v113, *&v28, *&v27);
                  v114 = v205;
                  if (!v205)
                  {
                    goto LABEL_177;
                  }
                }

                else
                {
                  v230 = 0;
                  v234 = 0;
                  v238 = 0;
                  v242 = 0;
                  v114 = v205;
                  if (!v205)
                  {
                    goto LABEL_177;
                  }
                }

LABEL_146:
                v118 = v206;
                if (!v206)
                {
                  goto LABEL_177;
                }

                v119 = 0;
                v120 = 2 * v204;
                v121 = &v211 + 32 * v203 + v120;
                v122 = v201;
                v123 = v202;
                v124 = 2 * v206;
                if (2 * v206)
                {
                  v125 = (2 * v206 - 1) >> 32 == 0;
                }

                else
                {
                  v125 = 0;
                }

                v126 = !v125;
                v128 = v121 < v201 + v202 * (v114 - 1) + 2 * v206 && v201 < &v210[2 * v114 + 2 * v203] + 2 * v206 + v120;
                v129 = v128 || v202 < 0;
                v130 = v124 & 0x1FFFFFFE0;
                v131 = v124 & 0x1FFFFFFF8;
                v132 = (v206 < 4) | v126 | v129;
                v133 = &v213 + 32 * v203 + v120;
                v134 = (v201 + 16);
                v135 = v121;
                v136 = v201;
                while (2)
                {
                  v137 = (v122 + v119 * v123);
                  v138 = &v121[32 * v119];
                  if (v132)
                  {
                    v139 = 0;
LABEL_174:
                    v149 = v139 + 1;
                    do
                    {
                      v150 = *v137++;
                      *v138++ = v150;
                    }

                    while (v124 > v149++);
                  }

                  else
                  {
                    if (v118 >= 0x10)
                    {
                      v141 = v134;
                      v142 = v133;
                      v143 = v124 & 0x1FFFFFFE0;
                      do
                      {
                        v144 = *v141;
                        *(v142 - 1) = *(v141 - 1);
                        *v142 = v144;
                        v142 += 2;
                        v141 += 2;
                        v143 -= 32;
                      }

                      while (v143);
                      if (v124 == v130)
                      {
                        goto LABEL_160;
                      }

                      v140 = v124 & 0x1FFFFFFE0;
                      if ((v118 & 0xC) == 0)
                      {
                        v137 += v130;
                        v138 += v130;
                        v139 = v124 & 0xFFFFFFE0;
                        goto LABEL_174;
                      }
                    }

                    else
                    {
                      v140 = 0;
                    }

                    v138 += v131;
                    v145 = v140 - (v124 & 0x1FFFFFFF8);
                    v146 = (v136 + v140);
                    v147 = &v135[v140];
                    do
                    {
                      v148 = *v146++;
                      *v147 = v148;
                      v147 += 8;
                      v145 += 8;
                    }

                    while (v145);
                    if (v124 != v131)
                    {
                      v137 += v131;
                      v139 = v124 & 0xFFFFFFF8;
                      goto LABEL_174;
                    }
                  }

LABEL_160:
                  ++v119;
                  v133 += 32;
                  v134 = (v134 + v123);
                  v136 += v123;
                  v135 += 32;
                  if (v119 == v114)
                  {
                    goto LABEL_177;
                  }

                  continue;
                }
              }

              v115 = v112[1];
              v116 = &v112[2];
              v251 = vld2_f32(v116);
              v117 = vzip2_s32(*v112, v115);
              v230 = vzip1_s32(*v112, v115);
              v234 = v117;
              v238 = v251.val[0];
              v242 = v251.val[1];
              v114 = v205;
              if (v205)
              {
                goto LABEL_146;
              }
            }

LABEL_177:
            v82 = v199;
            v83 = v200;
            v42 = v207;
            v84 = v208;
            v71 = &v211;
            v81 = 32;
LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, v81, v82, v83, v42, v84);
            if (!v197)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(a1 + 8) + 16552), block);
          if (!v197)
          {
            goto LABEL_26;
          }

LABEL_179:
          v152 = *v80;
          v153 = v80[1];
          v154 = v80[3];
          v72[2] = v80[2];
          v72[3] = v154;
          *v72 = v152;
          v72[1] = v153;
          v155 = v80[4];
          v156 = v80[5];
          v157 = v80[7];
          v72[6] = v80[6];
          v72[7] = v157;
          v72[4] = v155;
          v72[5] = v156;
          v158 = v80[8];
          v159 = v80[9];
          v160 = v80[11];
          v72[10] = v80[10];
          v72[11] = v160;
          v72[8] = v158;
          v72[9] = v159;
          v28 = v80[12];
          v27 = v80[13];
          v161 = v80[15];
          v72[14] = v80[14];
          v72[15] = v161;
          v72[12] = v28;
          v72[13] = v27;
LABEL_26:
          v21 = v35++ == v25 >> 4;
        }

        while (!v21);
        v21 = v17++ == v180;
      }

      while (!v21);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v237);
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v256, 128, v83, v87);
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
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 128, v98, v99);
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
            v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v288, 128, v110, v111);
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
            v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v290, 128, v122, v123);
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
            v136 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 128, v134, v135);
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
            v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 128, v146, v147);
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
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 128, v158, v159);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 128, v170, v171);
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
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v256, 128, v245, v246, v253, v254);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v256, 128, v83, v87);
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
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 128, v98, v99);
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
            v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v288, 128, v110, v111);
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
            v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v290, 128, v122, v123);
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
            v136 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 128, v134, v135);
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
            v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 128, v146, v147);
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
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 128, v158, v159);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 128, v170, v171);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v225);
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 128, v72, v74);
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
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 128, v84, v85);
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
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 128, v95, v96);
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
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 128, v106, v107);
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
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 128, v117, v118);
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
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 128, v128, v129);
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
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 128, v139, v140);
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
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v282, 128, v150, v151);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v244, 128, v233, v234, v241, v242);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 128, v72, v74);
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
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 128, v84, v85);
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
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 128, v95, v96);
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
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 128, v106, v107);
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
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 128, v117, v118);
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
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 128, v128, v129);
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
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 128, v139, v140);
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
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v282, 128, v150, v151);
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