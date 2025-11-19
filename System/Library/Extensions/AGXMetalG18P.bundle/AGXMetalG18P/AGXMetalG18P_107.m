uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v225);
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v76 = vld1q_dup_f32(v72->i32);
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
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 128, v72, v74);
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

            v84 = v72->i64 + v75;
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
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 128, v84, v85);
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
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 128, v95, v96);
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
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 128, v106, v107);
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
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 128, v117, v118);
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
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 128, v128, v129);
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
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 128, v139, v140);
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
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v282, 128, v150, v151);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v244, 128, v233, v234, v241, v242);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 128, v72, v74);
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
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 128, v84, v85);
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
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 128, v95, v96);
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
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 128, v106, v107);
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
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 128, v117, v118);
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
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 128, v128, v129);
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
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 128, v139, v140);
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
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v282, 128, v150, v151);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v237);
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v256, 128, v83, v87);
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
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 128, v98, v99);
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
            v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v288, 128, v110, v111);
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
            v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v290, 128, v122, v123);
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
            v136 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 128, v134, v135);
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
            v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 128, v146, v147);
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
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 128, v158, v159);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 128, v170, v171);
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
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v256, 128, v245, v246, v253, v254);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v256, 128, v83, v87);
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
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 128, v98, v99);
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
            v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v288, 128, v110, v111);
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
            v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v290, 128, v122, v123);
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
            v136 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 128, v134, v135);
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
            v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 128, v146, v147);
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
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 128, v158, v159);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 128, v170, v171);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v225);
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 128, v72, v74);
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
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 128, v84, v85);
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
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 128, v95, v96);
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
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 128, v106, v107);
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
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 128, v117, v118);
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
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 128, v128, v129);
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
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 128, v139, v140);
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
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v282, 128, v150, v151);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v244, 128, v233, v234, v241, v242);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 128, v72, v74);
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
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 128, v84, v85);
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
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 128, v95, v96);
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
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 128, v106, v107);
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
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 128, v117, v118);
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
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 128, v128, v129);
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
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 128, v139, v140);
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
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v282, 128, v150, v151);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v156 = v21;
  v157 = v22;
  v142 = v23;
  v24 = v12;
  v185 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v161 = v14;
  v144 = v14 + a10 - 1;
  v162 = v24;
  if (*(v24 + 168))
  {
    v25 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v25 = 0;
  }

  v26 = v14 >> 3;
  v27 = v20 - 1;
  v28 = v18 - 1;
  v143 = v144 >> 3;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v164 = v32;
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
      v155 = 0;
LABEL_32:
      v152 = v35 - 4;
      v147 = v34 - 3;
      v41 = -1 << *(*(v24 + 208) + 48);
      v141 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v155 = v40 >= v34;
    goto LABEL_32;
  }

  v155 = 0;
  v141 = 0;
  v147 = 0;
  v152 = 0;
LABEL_33:
  if (v26 <= v143)
  {
    v154 = v16 + a9 - 1;
    v140 = v16 >> 4;
    if (v16 >> 4 <= v154 >> 4)
    {
      v163 = v27 >> 4;
      v148 = v27 & 0xF;
      v138 = v28 & 7;
      v139 = v28 >> 3;
      v137 = ~(-1 << v147);
      v42 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v43 = vcgt_u32(v42, 0x1F0000000FLL);
      v146 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v42, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v43);
      v145 = v43;
      v153 = v16;
      do
      {
        v44 = (8 * v26) | 7;
        if (8 * v26 <= v161)
        {
          v45 = v161;
        }

        else
        {
          v45 = 8 * v26;
        }

        if (v144 < v44)
        {
          v44 = v144;
        }

        v151 = v45 - 8 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v138;
        v150 = v47;
        v49 = v47 != 8;
        v50 = v138 + 1;
        if (v26 != v139)
        {
          v50 = 8;
          v48 = v49;
        }

        v149 = v48;
        v51 = v140;
        v52 = v26 & v137;
        v159 = v142 + (v45 - v161) * a11;
        v160 = v50;
        v158 = v50;
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

          if (v154 < v54)
          {
            v54 = v154;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v163)
          {
            v58 = v148 + 1;
          }

          else
          {
            v58 = 16;
          }

          v59 = 1;
          if (8 * v26 >= v161 && v53 >= v16)
          {
            v60 = v56 != v148;
            if (v51 != v163)
            {
              v60 = v57 != 16;
            }

            v59 = v60 || v149;
          }

          if (v155)
          {
            if (v152 | v147)
            {
              v61 = 0;
              v62 = 0;
              v63 = v152 != 0;
              v64 = 1;
              v66 = v147 != 0;
              v65 = v147;
              v67 = v152;
              do
              {
                --v65;
                if (v66)
                {
                  v62 |= (v52 & v64) << v61++;
                }

                else
                {
                  v65 = 0;
                }

                --v67;
                if (v63)
                {
                  v62 |= (v51 & ~(-1 << v152) & v64) << v61++;
                }

                else
                {
                  v67 = 0;
                }

                v64 *= 2;
                --v61;
                v63 = v67 != 0;
                v66 = v65 != 0;
              }

              while (v67 | v65);
              v68 = v62 << 11;
            }

            else
            {
              v68 = 0;
            }

            v76 = v68 + *(result + 336) * ((v51 >> v152) + (v26 >> v147) * v141);
          }

          else if (v146)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v73 = v145.i8[0];
            v72 = v145.i8[4];
            v74 = v146.i32[0];
            v75 = v146.i32[1];
            do
            {
              --v74;
              if (v73)
              {
                v70 |= (v71 & v26) << v69++;
              }

              else
              {
                v74 = 0;
              }

              --v75;
              if (v72)
              {
                v70 |= (v71 & v51) << v69++;
              }

              else
              {
                v75 = 0;
              }

              v71 *= 2;
              --v69;
              v72 = v75 != 0;
              v73 = v74 != 0;
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

          v81 = v80 + 7;
          if (v81 < 0x10)
          {
            v82 = 0;
            if (!v79)
            {
LABEL_104:
              v88 = 0;
              goto LABEL_105;
            }
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 3) - 1)));
            if (!(v82 | v79))
            {
              goto LABEL_104;
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
LABEL_105:
          v89 = (v157 + v88);
          v90 = v159 + 16 * (v55 - v16);
          v91 = (v156 + v76);
          if (v164)
          {
            if (!(v59 & 1 | (v58 < 0x10u) | (v158 < 8)))
            {
              v95 = __dst;
LABEL_112:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v90, a11, v95, v89, v58, v160);
LABEL_113:
              v16 = v153;
              if (v164)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            v92 = v59;
            v93 = v58;
            v94 = v55;
            memcpy(__dst, v91, sizeof(__dst));
            v55 = v94;
            v95 = __dst;
            v59 = v92;
            v52 = v26 & v137;
            LOBYTE(v58) = v93;
            result = v162;
          }

          else
          {
            v95 = (v156 + v76);
            if (!(v59 & 1 | (v58 < 0x10u) | (v158 < 8)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v166 = v95;
          v174 = v58;
          v175 = v160;
          v170 = v151;
          v171 = v55 - v53;
          v167 = v89;
          v168 = v90;
          v169 = a11;
          v172 = v150;
          v173 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_113;
          }

          v96 = v95->i64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v177, 256, v95, *v89);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v178, 256, v96, v89[1]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v181, 256, v97, v89[2]);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v182, 256, v98, v89[3]);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v179, 256, v99, v89[4]);
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v180, 256, v100, v89[5]);
          v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v183, 256, v101, v89[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v184, 256, v101 + v102, v89[7]);
          v103 = v172;
          v16 = v153;
          if (v172)
          {
            v104 = v173;
            if (v173)
            {
              v105 = 0;
              v106 = v170 << 8;
              v107 = 16 * v171;
              v108 = v177 + v106 + v107;
              v109 = v168;
              v110 = v169;
              v111 = 16 * v173;
              if (16 * v173)
              {
                v112 = (16 * v173 - 1) >> 32 == 0;
              }

              else
              {
                v112 = 0;
              }

              v113 = !v112;
              v115 = v108 < v168 + v169 * (v172 - 1) + 16 * v173 && v168 < &__dst[256 * v172 + 1792 + 256 * v170 + 16 * v173 + v107];
              v116 = v111 & 0x1FFFFFFE0;
              v117 = v113 | (v169 < 0) | v115;
              v118 = &v177[1] + v106 + v107;
              v119 = (v168 + 16);
              v120 = v108;
              v121 = v168;
              do
              {
                v122 = (v109 + v105 * v110);
                v123 = &v108[256 * v105];
                if (v117)
                {
                  v124 = 0;
                }

                else
                {
                  if (v104 == 1)
                  {
                    v128 = 0;
LABEL_138:
                    v129 = -16 * v104 + v128;
                    v130 = (v121 + v128);
                    v131 = &v120[v128];
                    do
                    {
                      v132 = *v130++;
                      *v131 = v132;
                      v131 += 16;
                      v129 += 16;
                    }

                    while (v129);
                    goto LABEL_130;
                  }

                  v133 = v119;
                  v134 = v118;
                  v135 = v111 & 0x1FFFFFFE0;
                  do
                  {
                    v136 = *v133;
                    *(v134 - 1) = *(v133 - 1);
                    *v134 = v136;
                    v134 += 2;
                    v133 += 2;
                    v135 -= 32;
                  }

                  while (v135);
                  if (v111 == v116)
                  {
                    goto LABEL_130;
                  }

                  v128 = v111 & 0x1FFFFFFE0;
                  if (v104)
                  {
                    goto LABEL_138;
                  }

                  v122 += v116;
                  v123 += v116;
                  v124 = v111 & 0xFFFFFFE0;
                }

                v125 = v124 + 1;
                do
                {
                  v126 = *v122++;
                  *v123++ = v126;
                }

                while (v111 > v125++);
LABEL_130:
                ++v105;
                v118 += 256;
                v119 = (v119 + v110);
                v121 += v110;
                v120 += 256;
              }

              while (v105 != v103);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v177, 256, v166, v167, v174, v175);
          if (v164)
          {
LABEL_46:
            memcpy(v91, v95, 0x800uLL);
          }

LABEL_47:
          v29 = v51++ == v154 >> 4;
          result = v162;
        }

        while (!v29);
        v29 = v26++ == v143;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v218 = v21;
  v219 = v22;
  v200 = v23;
  v24 = v12;
  v246 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v222 = v14;
  v202 = v14 + a10 - 1;
  v223 = v24;
  if (*(v24 + 168))
  {
    v25 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v25 = 0;
  }

  v26 = v14 >> 3;
  v27 = v20 - 1;
  v28 = v18 - 1;
  v201 = v202 >> 3;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v225 = v32;
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
      v217 = 0;
LABEL_32:
      v213 = v35 - 4;
      v206 = v34 - 3;
      v41 = -1 << *(*(v24 + 208) + 48);
      v199 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v217 = v40 >= v34;
    goto LABEL_32;
  }

  v217 = 0;
  v199 = 0;
  v206 = 0;
  v213 = 0;
LABEL_33:
  if (v26 <= v201)
  {
    v216 = v16 + a9 - 1;
    v198 = v16 >> 4;
    if (v16 >> 4 <= v216 >> 4)
    {
      v42 = a11;
      v224 = v27 >> 4;
      v209 = v27 & 0xF;
      v196 = v28 & 7;
      v197 = v28 >> 3;
      v195 = ~(-1 << v206);
      v43 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v44 = vcgt_u32(v43, 0x1F0000000FLL);
      v205 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v43, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v44);
      v204 = v44;
      v215 = v16;
      do
      {
        v45 = (8 * v26) | 7;
        if (8 * v26 <= v222)
        {
          v46 = v222;
        }

        else
        {
          v46 = 8 * v26;
        }

        if (v202 < v45)
        {
          v45 = v202;
        }

        v212 = v46 - 8 * v26;
        v47 = v45 - v46;
        v48 = v47 + 1;
        v49 = v47 != v196;
        v211 = v48;
        v50 = v198;
        if (v26 == v197)
        {
          v51 = v196 + 1;
        }

        else
        {
          v51 = 8;
        }

        if (v26 != v197)
        {
          v49 = v48 != 8;
        }

        v210 = v49;
        v52 = v26 & v195;
        v221 = v200 + (v46 - v222) * v42;
        v220 = v51;
        v203 = v51;
        do
        {
          v53 = 16 * v50;
          v54 = 16 * (v50 + 1) - 1;
          if (16 * v50 <= v16)
          {
            v55 = v16;
          }

          else
          {
            v55 = 16 * v50;
          }

          if (v216 < v54)
          {
            v54 = v216;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v50 == v224)
          {
            v58 = v209 + 1;
          }

          else
          {
            v58 = 16;
          }

          v59 = 1;
          if (8 * v26 >= v222 && v53 >= v16)
          {
            v60 = v56 != v209;
            if (v50 != v224)
            {
              v60 = v57 != 16;
            }

            v59 = v60 || v210;
          }

          if (v217)
          {
            if (v213 | v206)
            {
              v61 = 0;
              v62 = 0;
              v63 = v213 != 0;
              v64 = 1;
              v66 = v206 != 0;
              v65 = v206;
              v67 = v213;
              do
              {
                --v65;
                if (v66)
                {
                  v62 |= (v52 & v64) << v61++;
                }

                else
                {
                  v65 = 0;
                }

                --v67;
                if (v63)
                {
                  v62 |= (v50 & ~(-1 << v213) & v64) << v61++;
                }

                else
                {
                  v67 = 0;
                }

                v64 *= 2;
                --v61;
                v63 = v67 != 0;
                v66 = v65 != 0;
              }

              while (v67 | v65);
              v68 = v62 << 11;
            }

            else
            {
              v68 = 0;
            }

            v76 = v68 + *(result + 336) * ((v50 >> v213) + (v26 >> v206) * v199);
          }

          else if (v205)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v73 = v204.i8[0];
            v72 = v204.i8[4];
            v74 = v205.i32[0];
            v75 = v205.i32[1];
            do
            {
              --v74;
              if (v73)
              {
                v70 |= (v71 & v26) << v69++;
              }

              else
              {
                v74 = 0;
              }

              --v75;
              if (v72)
              {
                v70 |= (v71 & v50) << v69++;
              }

              else
              {
                v75 = 0;
              }

              v71 *= 2;
              --v69;
              v72 = v75 != 0;
              v73 = v74 != 0;
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

          v81 = v80 + 7;
          if (v81 < 0x10)
          {
            v82 = 0;
            if (!v79)
            {
LABEL_106:
              v88 = 0;
              goto LABEL_107;
            }
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 3) - 1)));
            if (!(v82 | v79))
            {
              goto LABEL_106;
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
              v84 |= (v87 & v50) << v83++;
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
LABEL_107:
          v89 = (v219 + v88);
          v90 = v221 + 16 * (v55 - v16);
          v91 = (v218 + v76);
          if (v225)
          {
            if (!(v59 & 1 | (v58 < 0x10u) | (v220 < 8)))
            {
              v95 = __dst;
LABEL_114:
              v97 = &byte_29D2F30D1;
              v98 = 16;
              v99 = v95;
              do
              {
                v123 = *v97;
                v124 = *(v97 - 1);
                if (v58 <= 4 * v124 || 4 * v123 >= v51)
                {
                  v122 = 0;
                }

                else
                {
                  v100 = (v90 + 4 * a11 * v123 + (v124 << 6));
                  v101 = (v100 + v42);
                  v103 = *v100;
                  v104 = v100[1];
                  v105 = v100[2];
                  v106 = v100[3];
                  v102 = (v100 + 2 * a11);
                  v107 = v105;
                  v108 = v106;
                  v110 = *v102;
                  v111 = v102[1];
                  v112 = v102[2];
                  v113 = v102[3];
                  v109 = (v102 + v42);
                  v114 = v101[2];
                  v115 = v101[3];
                  v116 = *v109;
                  v117 = v109[1];
                  v118 = *v101;
                  v119 = v101[1];
                  v120 = v109[2];
                  v121 = v109[3];
                  *v99 = v103;
                  v99[1] = v104;
                  v99[2] = v118;
                  v99[3] = v119;
                  v99[4] = v107;
                  v99[5] = v108;
                  v99[6] = v114;
                  v99[7] = v115;
                  v99[8] = v110;
                  v99[9] = v111;
                  v99[10] = v116;
                  v99[11] = v117;
                  v99[12] = v112;
                  v99[13] = v113;
                  v99[14] = v120;
                  v99[15] = v121;
                  v99 += 16;
                  v122 = -1;
                }

                *v89++ = v122;
                v97 += 2;
                v98 -= 2;
              }

              while (v98);
              v16 = v215;
              goto LABEL_123;
            }

            v92 = (v218 + v76);
            v207 = v57;
            v93 = v42;
            v94 = v59;
            memcpy(__dst, v91, sizeof(__dst));
            v53 = 16 * v50;
            v59 = v94;
            v42 = v93;
            v51 = v203;
            v52 = v26 & v195;
            v57 = v207;
            v95 = __dst;
            v91 = v92;
            result = v223;
          }

          else
          {
            v95 = (v218 + v76);
            if (!(v59 & 1 | (v58 < 0x10u) | (v220 < 8)))
            {
              goto LABEL_114;
            }
          }

          v214 = v91;
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v227 = v95;
          v235 = v58;
          v236 = v51;
          v231 = v212;
          v232 = v55 - v53;
          v228 = v89;
          v229 = v90;
          v230 = v42;
          v233 = v211;
          v234 = v57;
          if (v59)
          {
            v96 = v95;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v95 = v96;
            result = v223;
            v16 = v215;
            v91 = v214;
            goto LABEL_123;
          }

          v208 = v95;
          v126 = &v95[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v238, 256, v95, *v89)];
          v127 = v126 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v239, 256, v126, v89[1]);
          v128 = v127 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v242, 256, v127, v89[2]);
          v129 = v128 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v243, 256, v128, v89[3]);
          v130 = v129 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v240, 256, v129, v89[4]);
          v131 = v130 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v241, 256, v130, v89[5]);
          v132 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v244, 256, v131, v89[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v245, 256, v131 + v132, v89[7]);
          v133 = v233;
          if (v233)
          {
            v134 = v234;
            if (v234)
            {
              v135 = 0;
              v136 = v231 << 8;
              v137 = 16 * v232;
              v138 = v238 + v136 + v137;
              v139 = v229;
              v140 = v230;
              v141 = 16 * v234;
              if (16 * v234)
              {
                v142 = (16 * v234 - 1) >> 32 == 0;
              }

              else
              {
                v142 = 0;
              }

              v143 = !v142;
              v145 = v138 < v229 + v230 * (v233 - 1) + 16 * v234 && v229 < &__dst[256 * v233 + 1792 + 256 * v231 + 16 * v234 + v137];
              v146 = v141 & 0x1FFFFFFE0;
              v147 = v143 | (v230 < 0) | v145;
              v148 = &v238[1] + v136 + v137;
              v149 = (v229 + 16);
              v150 = v138;
              v151 = v229;
              do
              {
                v152 = (v139 + v135 * v140);
                v153 = &v138[256 * v135];
                if (v147)
                {
                  v154 = 0;
                }

                else
                {
                  if (v134 == 1)
                  {
                    v158 = 0;
LABEL_148:
                    v159 = -16 * v134 + v158;
                    v160 = (v151 + v158);
                    v161 = &v150[v158];
                    do
                    {
                      v162 = *v160++;
                      *v161 = v162;
                      v161 += 16;
                      v159 += 16;
                    }

                    while (v159);
                    goto LABEL_140;
                  }

                  v163 = v149;
                  v164 = v148;
                  v165 = v141 & 0x1FFFFFFE0;
                  do
                  {
                    v166 = *v163;
                    *(v164 - 1) = *(v163 - 1);
                    *v164 = v166;
                    v164 += 2;
                    v163 += 2;
                    v165 -= 32;
                  }

                  while (v165);
                  if (v141 == v146)
                  {
                    goto LABEL_140;
                  }

                  v158 = v141 & 0x1FFFFFFE0;
                  if (v134)
                  {
                    goto LABEL_148;
                  }

                  v152 += v146;
                  v153 += v146;
                  v154 = v141 & 0xFFFFFFE0;
                }

                v155 = v154 + 1;
                do
                {
                  v156 = *v152++;
                  *v153++ = v156;
                }

                while (v141 > v155++);
LABEL_140:
                ++v135;
                v148 += 256;
                v149 = (v149 + v140);
                v151 += v140;
                v150 += 256;
              }

              while (v135 != v133);
            }
          }

          v167 = v227;
          v168 = v228;
          v169 = v235;
          v170 = &byte_29D2F30D1;
          v171 = 16;
          v172 = v236;
          v16 = v215;
          result = v223;
          v91 = v214;
          v95 = v208;
          do
          {
            v192 = *v170;
            v193 = *(v170 - 1);
            if (v169 <= 4 * v193 || 4 * v192 >= v172)
            {
              v191 = 0;
            }

            else
            {
              v173 = &v238[64 * v192 + 4 * v193];
              v174 = *v173;
              v175 = v173[1];
              v176 = v173[16];
              v177 = v173[17];
              v178 = v173[2];
              v179 = v173[3];
              v180 = v173[18];
              v181 = v173[32];
              v182 = v173[33];
              v183 = v173[34];
              v184 = v173[35];
              v185 = v173[19];
              v173 += 48;
              v186 = *v173;
              v187 = v173[1];
              v188 = v173[2];
              v189 = v173[3];
              *v167 = v174;
              v167[1] = v175;
              v167[2] = v176;
              v167[3] = v177;
              v167[4] = v178;
              v167[5] = v179;
              v167[6] = v180;
              v167[7] = v185;
              v167[8] = v181;
              v167[9] = v182;
              v167[10] = v186;
              v167[11] = v187;
              v190 = v167 + 12;
              v167 += 16;
              v191 = -1;
              *v190 = v183;
              v190[1] = v184;
              v190[2] = v188;
              v190[3] = v189;
            }

            *v168++ = v191;
            v170 += 2;
            v171 -= 2;
          }

          while (v171);
LABEL_123:
          if (v225)
          {
            memcpy(v91, v95, 0x800uLL);
            result = v223;
          }

          v29 = v50++ == v216 >> 4;
        }

        while (!v29);
        v29 = v26++ == v201;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v153 = v21;
  v154 = v22;
  v142 = v23;
  v24 = v12;
  v183 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v159 = v14;
  v25 = v14 >> 3;
  v141 = v14 + a10 - 1;
  v143 = v141 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v160 = v24;
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
  v162 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v152 = result;
  if (v25 <= v143)
  {
    v151 = v16 + a9 - 1;
    v140 = v16 >> 4;
    if (v16 >> 4 <= v151 >> 4)
    {
      result = v24;
      v161 = (v20 - 1) >> 4;
      v137 = v20 - 1;
      v144 = (v20 - 1) & 0xF;
      v138 = (v18 - 1) & 7;
      v139 = (v18 - 1) >> 3;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v149 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v148 = v35;
      v136 = 8 * v27 * v26;
      v150 = v16;
      do
      {
        v36 = (8 * v25) | 7;
        if (8 * v25 <= v159)
        {
          v37 = v159;
        }

        else
        {
          v37 = 8 * v25;
        }

        if (v141 < v36)
        {
          v36 = v141;
        }

        v158 = 8 * v25;
        v147 = v37 - 8 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v138;
        v146 = v39;
        v41 = v39 != 8;
        v42 = v140;
        v43 = v138 + 1;
        if (v25 != v139)
        {
          v43 = 8;
          v40 = v41;
        }

        v145 = v40;
        v156 = v142 + (v37 - v159) * a11;
        v157 = v43;
        v155 = v43;
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

          if (v151 < v45)
          {
            v45 = v151;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v161)
          {
            v49 = v144 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (v158 >= v159 && v44 >= v16)
          {
            v51 = v47 != v144;
            if (v42 != v161)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v145;
          }

          if (v152)
          {
            v72 = 0;
            v73 = v136 >> (*(result + 57) != 0);
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
              v75 = 0;
              v76 = 16;
              v72 = 32;
            }

            else if (v73 == 512)
            {
              v75 = 0;
              v72 = 16;
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

            v124 = (v72 >> 4) - 1;
            if (v74)
            {
              v125 = 0;
            }

            else
            {
              v125 = 32 - __clz(~(-1 << -__clz(v124)));
            }

            v126 = (v76 >> 3) - 1;
            if (v75)
            {
              v127 = 0;
              if (v125)
              {
                goto LABEL_141;
              }
            }

            else
            {
              v127 = 32 - __clz(~(-1 << -__clz(v126)));
              if (v127 | v125)
              {
LABEL_141:
                v128 = 0;
                v129 = 0;
                v130 = v42 & v124;
                v131 = v25 & v126;
                v132 = v127 != 0;
                v133 = v125 != 0;
                v134 = 1;
                do
                {
                  --v127;
                  if (v132)
                  {
                    v129 |= (v134 & v131) << v128++;
                  }

                  else
                  {
                    v127 = 0;
                  }

                  --v125;
                  if (v133)
                  {
                    v129 |= (v134 & v130) << v128++;
                  }

                  else
                  {
                    v125 = 0;
                  }

                  v134 *= 2;
                  --v128;
                  v133 = v125 != 0;
                  v132 = v127 != 0;
                }

                while (v125 | v127);
                v135 = v129 << 11;
                result = v160;
                goto LABEL_153;
              }
            }

            v135 = 0;
LABEL_153:
            v59 = v135 + ((v44 / v72 + v158 / v76 * ((v72 + v137) / v72)) << 14);
            goto LABEL_53;
          }

          if (v149)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v56 = v148.i8[0];
            v55 = v148.i8[4];
            v57 = v149.i32[0];
            v58 = v149.i32[1];
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
            v59 = v53 << 11;
          }

          else
          {
            v59 = 0;
          }

LABEL_53:
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

          v64 = v63 + 7;
          if (v64 < 0x10)
          {
            v65 = 0;
            if (!v62)
            {
LABEL_78:
              v71 = 0;
              goto LABEL_79;
            }
          }

          else
          {
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 3) - 1)));
            if (!(v65 | v62))
            {
              goto LABEL_78;
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
LABEL_79:
          v77 = (v154 + v71);
          v78 = v156 + 16 * (v46 - v16);
          v79 = (v153 + v59);
          if (v162)
          {
            if (!(v50 & 1 | (v49 < 0x10u) | (v155 < 8)))
            {
              v82 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v78, a11, v82, v77, v49, v157);
LABEL_87:
              v16 = v150;
              if (v162)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v80 = v50;
            v81 = v46;
            memcpy(__dst, v79, sizeof(__dst));
            v46 = v81;
            v44 = 16 * v42;
            v82 = __dst;
            v50 = v80;
            result = v160;
          }

          else
          {
            v82 = (v153 + v59);
            if (!(v50 & 1 | (v49 < 0x10u) | (v155 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v164 = v82;
          v172 = v49;
          v173 = v157;
          v168 = v147;
          v169 = v46 - v44;
          v165 = v77;
          v166 = v78;
          v167 = a11;
          v170 = v146;
          v171 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_87;
          }

          v83 = v82->i64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 256, v82, *v77);
          v84 = v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 256, v83, v77[1]);
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v179, 256, v84, v77[2]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v180, 256, v85, v77[3]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v177, 256, v86, v77[4]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v178, 256, v87, v77[5]);
          v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v181, 256, v88, v77[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v182, 256, v88 + v89, v77[7]);
          v90 = v170;
          v16 = v150;
          if (v170)
          {
            v91 = v171;
            if (v171)
            {
              v92 = 0;
              v93 = v168 << 8;
              v94 = 16 * v169;
              v95 = v175 + v93 + v94;
              v96 = v166;
              v97 = v167;
              v98 = 16 * v171;
              if (16 * v171)
              {
                v99 = (16 * v171 - 1) >> 32 == 0;
              }

              else
              {
                v99 = 0;
              }

              v100 = !v99;
              v102 = v95 < v166 + v167 * (v170 - 1) + 16 * v171 && v166 < &__dst[256 * v170 + 1792 + 256 * v168 + 16 * v171 + v94];
              v103 = v98 & 0x1FFFFFFE0;
              v104 = v100 | (v167 < 0) | v102;
              v105 = &v175[1] + v93 + v94;
              v106 = (v166 + 16);
              v107 = v95;
              v108 = v166;
              do
              {
                v109 = (v96 + v92 * v97);
                v110 = &v95[256 * v92];
                if (v104)
                {
                  v111 = 0;
                }

                else
                {
                  if (v91 == 1)
                  {
                    v115 = 0;
LABEL_112:
                    v116 = -16 * v91 + v115;
                    v117 = (v108 + v115);
                    v118 = &v107[v115];
                    do
                    {
                      v119 = *v117++;
                      *v118 = v119;
                      v118 += 16;
                      v116 += 16;
                    }

                    while (v116);
                    goto LABEL_104;
                  }

                  v120 = v106;
                  v121 = v105;
                  v122 = v98 & 0x1FFFFFFE0;
                  do
                  {
                    v123 = *v120;
                    *(v121 - 1) = *(v120 - 1);
                    *v121 = v123;
                    v121 += 2;
                    v120 += 2;
                    v122 -= 32;
                  }

                  while (v122);
                  if (v98 == v103)
                  {
                    goto LABEL_104;
                  }

                  v115 = v98 & 0x1FFFFFFE0;
                  if (v91)
                  {
                    goto LABEL_112;
                  }

                  v109 += v103;
                  v110 += v103;
                  v111 = v98 & 0xFFFFFFE0;
                }

                v112 = v111 + 1;
                do
                {
                  v113 = *v109++;
                  *v110++ = v113;
                }

                while (v98 > v112++);
LABEL_104:
                ++v92;
                v105 += 256;
                v106 = (v106 + v97);
                v108 += v97;
                v107 += 256;
              }

              while (v92 != v90);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v175, 256, v164, v165, v172, v173);
          if (v162)
          {
LABEL_26:
            memcpy(v79, v82, 0x800uLL);
          }

LABEL_27:
          v29 = v42++ == v151 >> 4;
          result = v160;
        }

        while (!v29);
        v29 = v25++ == v143;
      }

      while (!v29);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
          v118 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v238, 256, v87, *v80)];
          v119 = v118 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v239, 256, v118, v80[1]);
          v120 = v119 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v242, 256, v119, v80[2]);
          v121 = v120 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v243, 256, v120, v80[3]);
          v122 = v121 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v240, 256, v121, v80[4]);
          v123 = v122 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v241, 256, v122, v80[5]);
          v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v244, 256, v123, v80[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v245, 256, v123 + v124, v80[7]);
          v125 = v233;
          if (v233)
          {
            v126 = v234;
            if (v234)
            {
              v127 = 0;
              v128 = v231 << 8;
              v129 = 16 * v232;
              v130 = v238 + v128 + v129;
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
              v140 = &v238[1] + v128 + v129;
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
                    v156 += 2;
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v239 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v190 = a8;
  v172 = a8 + a10 - 1;
  v191 = a1;
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
  v171 = v172 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v194 = v24;
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
      v184 = 0;
LABEL_32:
      v181 = v27 - 4;
      v175 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v169 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v184 = v32 >= v26;
    goto LABEL_32;
  }

  v184 = 0;
  v169 = 0;
  v175 = 0;
  v181 = 0;
LABEL_33:
  if (v18 <= v171)
  {
    v183 = a7 + a9 - 1;
    v168 = a7 >> 4;
    if (a7 >> 4 <= v183 >> 4)
    {
      v192 = v19 >> 4;
      v177 = v19 & 0xF;
      v166 = v20 & 7;
      v167 = v20 >> 3;
      v165 = ~(-1 << v175);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v35.i8 = vcgt_u32(v34, 0x1F0000000FLL);
      *v36.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v35.i8);
      v174 = v36.i64[0];
      v176 = v36.i32[0] | v36.i32[1];
      v173 = v35.i64[0];
      v182 = a7;
      do
      {
        v37 = (8 * v18) | 7;
        if (8 * v18 <= v190)
        {
          v38 = v190;
        }

        else
        {
          v38 = 8 * v18;
        }

        if (v172 < v37)
        {
          v37 = v172;
        }

        v180 = v38 - 8 * v18;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v166;
        v179 = v40;
        v42 = v40 != 8;
        v43 = v166 + 1;
        if (v18 != v167)
        {
          v43 = 8;
          v41 = v42;
        }

        v178 = v41;
        v44 = v168;
        v45 = v18 & v165;
        v188 = a3 + (v38 - v190) * a11;
        v189 = v43;
        v187 = v43;
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

          if (v183 < v47)
          {
            v47 = v183;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v44 == v192)
          {
            v51 = v177 + 1;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (8 * v18 >= v190 && v46 >= a7)
          {
            v53 = v49 != v177;
            if (v44 != v192)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v178;
          }

          if (v184)
          {
            if (v181 | v175)
            {
              v54 = 0;
              v55 = 0;
              v56 = v181 != 0;
              v57 = 1;
              v59 = v175 != 0;
              v58 = v175;
              v60 = v181;
              do
              {
                --v58;
                if (v59)
                {
                  v55 |= (v45 & v57) << v54++;
                }

                else
                {
                  v58 = 0;
                }

                --v60;
                if (v56)
                {
                  v55 |= (v44 & ~(-1 << v181) & v57) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                v57 *= 2;
                --v54;
                v56 = v60 != 0;
                v59 = v58 != 0;
              }

              while (v60 | v58);
              v61 = v55 << 9;
            }

            else
            {
              v61 = 0;
            }

            v69 = v61 + *(result + 336) * ((v44 >> v181) + (v18 >> v175) * v169);
          }

          else if (v176)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v66 = v173;
            v65 = BYTE4(v173);
            v67 = v174;
            v68 = HIDWORD(v174);
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v18) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v65)
              {
                v63 |= (v64 & v44) << v62++;
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

          v74 = v73 + 7;
          if (v74 < 0x10)
          {
            v75 = 0;
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 3) - 1)));
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
          v83 = v188 + 4 * (v48 - a7);
          v193 = (a2 + v69);
          if (v194)
          {
            v84 = __dst;
            if (!(v52 & 1 | (v51 < 0x10u) | (v187 < 8)))
            {
              goto LABEL_109;
            }

            v85 = v50;
            v86 = (a4 + v81);
            v87 = v51;
            memcpy(__dst, (a2 + v69), sizeof(__dst));
            v50 = v85;
            v45 = v18 & v165;
            LOBYTE(v51) = v87;
            v82 = v86;
            result = v191;
          }

          else
          {
            v84 = (a2 + v69);
            if (!(v52 & 1 | (v51 < 0x10u) | (v187 < 8)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v83, a11, v84, v82, v51, v189);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v196 = v84;
          v204 = v51;
          v205 = v189;
          v200 = v180;
          v201 = v48 - v46;
          v197 = v82;
          v198 = v83;
          v199 = a11;
          v202 = v179;
          v203 = v50;
          if (v52)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v182;
            v88 = v44 + 1;
            goto LABEL_202;
          }

          v89 = *v82;
          a7 = v182;
          if (v89 == 63)
          {
            v35 = *(v84 + 1);
            v91 = (v84 + 32);
            v240 = vld2q_f64(v91);
            v36 = vzip2q_s64(*v84, v35);
            v207 = vzip1q_s64(*v84, v35);
            v211 = v36;
            v215 = v240.val[0];
            v219 = v240.val[1];
            v90 = 64;
          }

          else if (v89 == 1)
          {
            v36 = vld1q_dup_s16(v84);
            v207 = v36;
            v211 = v36;
            v215 = v36;
            v219 = v36;
            v90 = 2;
          }

          else if (*v82)
          {
            v92 = v82;
            v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v207, 64, v84, v89, *v36.i8, *v35.i8);
            v82 = v92;
          }

          else
          {
            v90 = 0;
            v207 = 0uLL;
            v211 = 0uLL;
            v215 = 0uLL;
            v219 = 0uLL;
          }

          v93 = &v84[v90];
          v94 = v82[1];
          if (v94 == 63)
          {
            v35 = *(v93 + 16);
            v96 = (v93 + 32);
            v241 = vld2q_f64(v96);
            v36 = vzip2q_s64(*v93, v35);
            v208 = vzip1q_s64(*v93, v35);
            v212 = v36;
            v216 = v241.val[0];
            v220 = v241.val[1];
            v95 = 64;
          }

          else if (v94 == 1)
          {
            v36 = vld1q_dup_s16(v93);
            v208 = v36;
            v212 = v36;
            v216 = v36;
            v220 = v36;
            v95 = 2;
          }

          else if (v82[1])
          {
            v97 = v82;
            v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v208, 64, v93, v94, *v36.i8, *v35.i8);
            v82 = v97;
          }

          else
          {
            v95 = 0;
            v208 = 0uLL;
            v212 = 0uLL;
            v216 = 0uLL;
            v220 = 0uLL;
          }

          v98 = v93 + v95;
          v99 = v82[2];
          if (v99 == 63)
          {
            v35 = *(v98 + 16);
            v101 = (v98 + 32);
            v242 = vld2q_f64(v101);
            v36 = vzip2q_s64(*v98, v35);
            v223 = vzip1q_s64(*v98, v35);
            v227 = v36;
            v231 = v242.val[0];
            v235 = v242.val[1];
            v100 = 64;
          }

          else if (v99 == 1)
          {
            v36 = vld1q_dup_s16(v98);
            v223 = v36;
            v227 = v36;
            v231 = v36;
            v235 = v36;
            v100 = 2;
          }

          else if (v82[2])
          {
            v102 = v82;
            v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v223, 64, v98, v99, *v36.i8, *v35.i8);
            v82 = v102;
          }

          else
          {
            v100 = 0;
            v223 = 0uLL;
            v227 = 0uLL;
            v231 = 0uLL;
            v235 = 0uLL;
          }

          v103 = v98 + v100;
          v104 = v82[3];
          if (v104 == 63)
          {
            v35 = *(v103 + 16);
            v106 = (v103 + 32);
            v243 = vld2q_f64(v106);
            v36 = vzip2q_s64(*v103, v35);
            v224 = vzip1q_s64(*v103, v35);
            v228 = v36;
            v232 = v243.val[0];
            v236 = v243.val[1];
            v105 = 64;
          }

          else if (v104 == 1)
          {
            v36 = vld1q_dup_s16(v103);
            v224 = v36;
            v228 = v36;
            v232 = v36;
            v236 = v36;
            v105 = 2;
          }

          else if (v82[3])
          {
            v107 = v82;
            v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v224, 64, v103, v104, *v36.i8, *v35.i8);
            v82 = v107;
          }

          else
          {
            v105 = 0;
            v224 = 0uLL;
            v228 = 0uLL;
            v232 = 0uLL;
            v236 = 0uLL;
          }

          v108 = v103 + v105;
          v109 = v82[4];
          if (v109 == 63)
          {
            v35 = *(v108 + 16);
            v111 = (v108 + 32);
            v244 = vld2q_f64(v111);
            v36 = vzip2q_s64(*v108, v35);
            v209 = vzip1q_s64(*v108, v35);
            v213 = v36;
            v217 = v244.val[0];
            v221 = v244.val[1];
            v110 = 64;
          }

          else if (v109 == 1)
          {
            v36 = vld1q_dup_s16(v108);
            v209 = v36;
            v213 = v36;
            v217 = v36;
            v221 = v36;
            v110 = 2;
          }

          else if (v82[4])
          {
            v112 = v82;
            v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v209, 64, v108, v109, *v36.i8, *v35.i8);
            v82 = v112;
          }

          else
          {
            v110 = 0;
            v209 = 0uLL;
            v213 = 0uLL;
            v217 = 0uLL;
            v221 = 0uLL;
          }

          v113 = v108 + v110;
          v114 = v82[5];
          if (v114 == 63)
          {
            v35 = *(v113 + 16);
            v116 = (v113 + 32);
            v245 = vld2q_f64(v116);
            v36 = vzip2q_s64(*v113, v35);
            v210 = vzip1q_s64(*v113, v35);
            v214 = v36;
            v218 = v245.val[0];
            v222 = v245.val[1];
            v115 = 64;
          }

          else if (v114 == 1)
          {
            v36 = vld1q_dup_s16(v113);
            v210 = v36;
            v214 = v36;
            v218 = v36;
            v222 = v36;
            v115 = 2;
          }

          else if (v82[5])
          {
            v117 = v82;
            v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v210, 64, v113, v114, *v36.i8, *v35.i8);
            v82 = v117;
          }

          else
          {
            v115 = 0;
            v210 = 0uLL;
            v214 = 0uLL;
            v218 = 0uLL;
            v222 = 0uLL;
          }

          v118 = v113 + v115;
          v119 = v82[6];
          if (v119 == 63)
          {
            v35 = *(v118 + 16);
            v121 = (v118 + 32);
            v246 = vld2q_f64(v121);
            v36 = vzip2q_s64(*v118, v35);
            v225 = vzip1q_s64(*v118, v35);
            v229 = v36;
            v233 = v246.val[0];
            v237 = v246.val[1];
            v120 = 64;
          }

          else if (v119 == 1)
          {
            v36 = vld1q_dup_s16(v118);
            v225 = v36;
            v229 = v36;
            v233 = v36;
            v237 = v36;
            v120 = 2;
          }

          else if (v82[6])
          {
            v122 = v82;
            v120 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v225, 64, v118, v119, *v36.i8, *v35.i8);
            v82 = v122;
          }

          else
          {
            v120 = 0;
            v225 = 0uLL;
            v229 = 0uLL;
            v233 = 0uLL;
            v237 = 0uLL;
          }

          v123 = v118 + v120;
          v124 = v82[7];
          if (v124 == 63)
          {
            v127 = *(v123 + 16);
            v128 = (v123 + 32);
            v247 = vld2q_f64(v128);
            v129 = vzip2q_s64(*v123, v127);
            v226 = vzip1q_s64(*v123, v127);
            v230 = v129;
            v234 = v247.val[0];
            v238 = v247.val[1];
            v88 = v44 + 1;
            v125 = v202;
            if (!v202)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v88 = v44 + 1;
            if (v124 == 1)
            {
              v126 = vld1q_dup_s16(v123);
              v226 = v126;
              v230 = v126;
              v234 = v126;
              v238 = v126;
              v125 = v202;
              if (!v202)
              {
                goto LABEL_201;
              }
            }

            else if (v82[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 64, v123, v124, *v36.i8, *v35.i8);
              v125 = v202;
              if (!v202)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v226 = 0uLL;
              v230 = 0uLL;
              v234 = 0uLL;
              v238 = 0uLL;
              v125 = v202;
              if (!v202)
              {
                goto LABEL_201;
              }
            }
          }

          v130 = v203;
          if (v203)
          {
            v131 = 0;
            v132 = v200 << 6;
            v133 = 4 * v201;
            v134 = &v207.i8[v132 + v133];
            v135 = v198;
            v136 = v199;
            v137 = 4 * v203;
            if (4 * v203)
            {
              v138 = (4 * v203 - 1) >> 32 == 0;
            }

            else
            {
              v138 = 0;
            }

            v139 = !v138;
            v141 = v134 < v198 + v199 * (v125 - 1) + 4 * v203 && v198 < &__dst[64 * v125 + 448 + 64 * v200 + 4 * v203 + v133];
            v142 = v141 || v199 < 0;
            v143 = v137 & 0x1FFFFFFE0;
            v144 = v137 & 0x1FFFFFFF8;
            v145 = (v203 == 1) | v139 | v142;
            v146 = &v208.i8[v132 + v133];
            v147 = (v198 + 16);
            v148 = v134;
            v149 = v198;
            do
            {
              v150 = (v135 + v131 * v136);
              v151 = &v134[64 * v131];
              if (v145)
              {
                v152 = 0;
                goto LABEL_198;
              }

              if (v130 >= 8)
              {
                v154 = v147;
                v155 = v146;
                v156 = v137 & 0x1FFFFFFE0;
                do
                {
                  v157 = *v154;
                  *(v155 - 1) = *(v154 - 1);
                  *v155 = v157;
                  v155 += 32;
                  v154 += 2;
                  v156 -= 32;
                }

                while (v156);
                if (v137 == v143)
                {
                  goto LABEL_184;
                }

                v153 = v137 & 0x1FFFFFFE0;
                if ((v130 & 6) == 0)
                {
                  v150 += v143;
                  v151 += v143;
                  v152 = v137 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v153 = 0;
              }

              v151 += v144;
              v158 = -8 * ((v130 >> 1) & 0x3FFFFFFF) + v153;
              v159 = (v149 + v153);
              v160 = &v148[v153];
              do
              {
                v161 = *v159++;
                *v160 = v161;
                v160 += 8;
                v158 += 8;
              }

              while (v158);
              if (v137 == v144)
              {
                goto LABEL_184;
              }

              v150 += v144;
              v152 = v137 & 0xFFFFFFF8;
LABEL_198:
              v162 = v152 + 1;
              do
              {
                v163 = *v150++;
                *v151++ = v163;
              }

              while (v137 > v162++);
LABEL_184:
              ++v131;
              v146 += 64;
              v147 = (v147 + v136);
              v149 += v136;
              v148 += 64;
            }

            while (v131 != v125);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v207, 64, v196, v197, v204, v205);
LABEL_202:
          if (v194)
          {
            memcpy(v193, v84, 0x200uLL);
          }

          v21 = v44 == v183 >> 4;
          v44 = v88;
          result = v191;
        }

        while (!v21);
        v21 = v18++ == v171;
      }

      while (!v21);
    }
  }

  return result;
}