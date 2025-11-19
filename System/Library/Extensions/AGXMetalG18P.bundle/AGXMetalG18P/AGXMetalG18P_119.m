uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v293 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v212 = a8;
  v17 = a8 >> 2;
  v195 = a8 + a10 - 1;
  v197 = v195 >> 2;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v213 = a1;
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
  v216 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v205 = result;
  if (v17 <= v197)
  {
    v204 = a7 + a9 - 1;
    v194 = a7 >> 3;
    if (a7 >> 3 <= v204 >> 3)
    {
      result = a1;
      v214 = (a5 - 1) >> 3;
      v191 = a5 - 1;
      v198 = (a5 - 1) & 7;
      v192 = (a6 - 1) & 3;
      v193 = (a6 - 1) >> 2;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v27 = vcgt_u32(v26, 0xF00000007);
      v203 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFDFFFFFFFELL), -1))))))), v27);
      v202 = v27;
      v190 = 8 * v19 * v18;
      do
      {
        v28 = (4 * v17) | 3;
        if (4 * v17 <= v212)
        {
          v29 = v212;
        }

        else
        {
          v29 = 4 * v17;
        }

        if (v195 < v28)
        {
          v28 = v195;
        }

        v211 = 4 * v17;
        v201 = v29 - 4 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v192;
        v200 = v31;
        v33 = v31 != 4;
        v34 = v194;
        v35 = v192 + 1;
        if (v17 != v193)
        {
          v35 = 4;
          v32 = v33;
        }

        v199 = v32;
        v209 = a3 + (v29 - v212) * a11;
        v210 = v35;
        v208 = v35;
        do
        {
          v36 = 8 * v34;
          v37 = 8 * (v34 + 1) - 1;
          if (8 * v34 <= a7)
          {
            v38 = a7;
          }

          else
          {
            v38 = 8 * v34;
          }

          if (v204 < v37)
          {
            v37 = v204;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v214)
          {
            v41 = v198 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v211 >= v212 && v36 >= a7)
          {
            v43 = v39 != v198;
            if (v34 != v214)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v199;
          }

          if (v205)
          {
            v64 = 0;
            v65 = v190 >> (*(result + 57) != 0);
            v66 = 1;
            if (v65 <= 63)
            {
              if (v65 > 15)
              {
                if (v65 == 16)
                {
                  v66 = 0;
                  v67 = 64;
                  v64 = 128;
                }

                else
                {
                  v67 = 0;
                  if (v65 == 32)
                  {
                    v66 = 0;
                    v64 = 64;
                    v67 = 64;
                  }
                }
              }

              else if (v65 == 4)
              {
                v66 = 0;
                v67 = 128;
                v64 = 256;
              }

              else
              {
                v67 = 0;
                if (v65 == 8)
                {
                  v66 = 0;
                  v64 = 128;
                  v67 = 128;
                }
              }
            }

            else if (v65 <= 255)
            {
              if (v65 == 64)
              {
                v66 = 0;
                v67 = 32;
                v64 = 64;
              }

              else
              {
                v67 = 0;
                if (v65 == 128)
                {
                  v66 = 0;
                  v64 = 32;
                  v67 = 32;
                }
              }
            }

            else if (v65 == 256)
            {
              v66 = 0;
              v67 = 16;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v66 = 0;
              v64 = 16;
              v67 = 16;
            }

            else
            {
              v67 = 0;
              if (v65 == 1024)
              {
                v66 = 0;
                v67 = 8;
                v64 = 16;
              }
            }

            v178 = (v64 >> 3) - 1;
            v179 = (v67 >> 2) - 1;
            if ((v66 & 1) != 0 || (v180 = 32 - __clz(~(-1 << -__clz(v178))), v181 = 32 - __clz(~(-1 << -__clz(v179))), !(v181 | v180)))
            {
              v189 = 0;
            }

            else
            {
              v182 = 0;
              v183 = 0;
              v184 = v34 & v178;
              v185 = v17 & v179;
              v186 = v181 != 0;
              v187 = v180 != 0;
              v188 = 1;
              do
              {
                --v181;
                if (v186)
                {
                  v183 |= (v188 & v185) << v182++;
                }

                else
                {
                  v181 = 0;
                }

                --v180;
                if (v187)
                {
                  v183 |= (v188 & v184) << v182++;
                }

                else
                {
                  v180 = 0;
                }

                v188 *= 2;
                --v182;
                v187 = v180 != 0;
                v186 = v181 != 0;
              }

              while (v180 | v181);
              v189 = v183 << 10;
              result = v213;
            }

            v51 = v189 + ((v36 / v64 + v211 / v67 * ((v64 + v191) / v64)) << 14);
          }

          else if (v203)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v202.i8[0];
            v48 = v202.i8[4];
            v49 = v203.i32[0];
            v50 = v203.i32[1];
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

          v52 = *(result + 128) >> (*(result + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 7;
          if (v53 < 0x10)
          {
            v54 = 0;
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 3) - 1)));
          }

          v55 = *(result + 132) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 3;
          if (v56 < 8)
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
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 2) - 1)));
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
          v68 = (a4 + v63);
          v69 = a7;
          v70 = (v209 + 32 * (v38 - a7));
          v71 = (a2 + v51);
          __src = (a2 + v51);
          if (v216)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v208 < 4)))
            {
              v71 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v70, a11, v71, v68, v41, v210);
              goto LABEL_86;
            }

            v72 = v40;
            memcpy(__dst, __src, sizeof(__dst));
            v40 = v72;
            v71 = __dst;
            result = v213;
          }

          else if (!(v42 & 1 | (v41 < 8u) | (v208 < 4)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v218 = v71;
          v226 = v41;
          v227 = v210;
          v222 = v201;
          v223 = v38 - v36;
          v219 = v68;
          v220 = v70;
          v221 = a11;
          v224 = v200;
          v225 = v40;
          if ((v42 & 1) == 0)
          {
            v73 = *v68;
            a7 = v69;
            if (v73 == 127)
            {
              v76 = *(v71 + 1);
              v77 = *(v71 + 2);
              v78 = *(v71 + 3);
              v79 = *(v71 + 4);
              v80 = *(v71 + 5);
              v81 = *(v71 + 6);
              v82 = *(v71 + 7);
              v229 = *v71;
              v230 = v76;
              v231 = v77;
              v232 = v78;
              v245 = v79;
              v246 = v80;
              v247 = v81;
              v248 = v82;
              v74 = 128;
            }

            else if (v73 == 3)
            {
              v75 = vld1q_dup_f32(v71);
              v229 = v75;
              v230 = v75;
              v231 = v75;
              v232 = v75;
              v245 = v75;
              v246 = v75;
              v247 = v75;
              v248 = v75;
              v74 = 4;
            }

            else if (*v68)
            {
              v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 256, v71, v73);
            }

            else
            {
              v74 = 0;
              v232 = 0u;
              v231 = 0u;
              v230 = 0u;
              v229 = 0u;
              v245 = 0u;
              v246 = 0u;
              v247 = 0u;
              v248 = 0u;
            }

            v83 = v71 + v74;
            v84 = v68[1];
            if (v84 == 127)
            {
              v87 = *(v83 + 16);
              v88 = *(v83 + 32);
              v89 = *(v83 + 48);
              v90 = *(v83 + 64);
              v91 = *(v83 + 80);
              v92 = *(v83 + 96);
              v93 = *(v83 + 112);
              v233 = *v83;
              v234 = v87;
              v235 = v88;
              v236 = v89;
              v249 = v90;
              v250 = v91;
              v251 = v92;
              v252 = v93;
              v85 = 128;
            }

            else if (v84 == 3)
            {
              v86 = vld1q_dup_f32(v83);
              v233 = v86;
              v234 = v86;
              v235 = v86;
              v236 = v86;
              v249 = v86;
              v250 = v86;
              v251 = v86;
              v252 = v86;
              v85 = 4;
            }

            else if (v68[1])
            {
              v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 256, v83, v84);
            }

            else
            {
              v85 = 0;
              v235 = 0u;
              v236 = 0u;
              v233 = 0u;
              v234 = 0u;
              v249 = 0u;
              v250 = 0u;
              v251 = 0u;
              v252 = 0u;
            }

            v94 = v83 + v85;
            v95 = v68[2];
            if (v95 == 127)
            {
              v98 = *(v94 + 16);
              v99 = *(v94 + 32);
              v100 = *(v94 + 48);
              v101 = *(v94 + 64);
              v102 = *(v94 + 80);
              v103 = *(v94 + 96);
              v104 = *(v94 + 112);
              v261 = *v94;
              v262 = v98;
              v263 = v99;
              v264 = v100;
              v277 = v101;
              v278 = v102;
              v279 = v103;
              v280 = v104;
              v96 = 128;
            }

            else if (v95 == 3)
            {
              v97 = vld1q_dup_f32(v94);
              v261 = v97;
              v262 = v97;
              v263 = v97;
              v264 = v97;
              v277 = v97;
              v278 = v97;
              v279 = v97;
              v280 = v97;
              v96 = 4;
            }

            else if (v68[2])
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v261, 256, v94, v95);
            }

            else
            {
              v96 = 0;
              v263 = 0u;
              v264 = 0u;
              v261 = 0u;
              v262 = 0u;
              v277 = 0u;
              v278 = 0u;
              v279 = 0u;
              v280 = 0u;
            }

            v105 = v94 + v96;
            v106 = v68[3];
            if (v106 == 127)
            {
              v109 = *(v105 + 16);
              v110 = *(v105 + 32);
              v111 = *(v105 + 48);
              v112 = *(v105 + 64);
              v113 = *(v105 + 80);
              v114 = *(v105 + 96);
              v115 = *(v105 + 112);
              v265 = *v105;
              v266 = v109;
              v267 = v110;
              v268 = v111;
              v281 = v112;
              v282 = v113;
              v283 = v114;
              v284 = v115;
              v107 = 128;
            }

            else if (v106 == 3)
            {
              v108 = vld1q_dup_f32(v105);
              v265 = v108;
              v266 = v108;
              v267 = v108;
              v268 = v108;
              v281 = v108;
              v282 = v108;
              v283 = v108;
              v284 = v108;
              v107 = 4;
            }

            else if (v68[3])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v265, 256, v105, v106);
            }

            else
            {
              v107 = 0;
              v267 = 0u;
              v268 = 0u;
              v265 = 0u;
              v266 = 0u;
              v281 = 0u;
              v282 = 0u;
              v283 = 0u;
              v284 = 0u;
            }

            v116 = v105 + v107;
            v117 = v68[4];
            if (v117 == 127)
            {
              v120 = *(v116 + 16);
              v121 = *(v116 + 32);
              v122 = *(v116 + 48);
              v123 = *(v116 + 64);
              v124 = *(v116 + 80);
              v125 = *(v116 + 96);
              v126 = *(v116 + 112);
              v237 = *v116;
              v238 = v120;
              v239 = v121;
              v240 = v122;
              v253 = v123;
              v254 = v124;
              v255 = v125;
              v256 = v126;
              v118 = 128;
            }

            else if (v117 == 3)
            {
              v119 = vld1q_dup_f32(v116);
              v237 = v119;
              v238 = v119;
              v239 = v119;
              v240 = v119;
              v253 = v119;
              v254 = v119;
              v255 = v119;
              v256 = v119;
              v118 = 4;
            }

            else if (v68[4])
            {
              v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 256, v116, v117);
            }

            else
            {
              v118 = 0;
              v239 = 0u;
              v240 = 0u;
              v237 = 0u;
              v238 = 0u;
              v253 = 0u;
              v254 = 0u;
              v255 = 0u;
              v256 = 0u;
            }

            v127 = v116 + v118;
            v128 = v68[5];
            if (v128 == 127)
            {
              v131 = *(v127 + 16);
              v132 = *(v127 + 32);
              v133 = *(v127 + 48);
              v134 = *(v127 + 64);
              v135 = *(v127 + 80);
              v136 = *(v127 + 96);
              v137 = *(v127 + 112);
              v241 = *v127;
              v242 = v131;
              v243 = v132;
              v244 = v133;
              v257 = v134;
              v258 = v135;
              v259 = v136;
              v260 = v137;
              v129 = 128;
            }

            else if (v128 == 3)
            {
              v130 = vld1q_dup_f32(v127);
              v241 = v130;
              v242 = v130;
              v243 = v130;
              v244 = v130;
              v257 = v130;
              v258 = v130;
              v259 = v130;
              v260 = v130;
              v129 = 4;
            }

            else if (v68[5])
            {
              v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v241, 256, v127, v128);
            }

            else
            {
              v129 = 0;
              v243 = 0u;
              v244 = 0u;
              v241 = 0u;
              v242 = 0u;
              v257 = 0u;
              v258 = 0u;
              v259 = 0u;
              v260 = 0u;
            }

            v138 = v127 + v129;
            v139 = v68[6];
            if (v139 == 127)
            {
              v142 = *(v138 + 16);
              v143 = *(v138 + 32);
              v144 = *(v138 + 48);
              v145 = *(v138 + 64);
              v146 = *(v138 + 80);
              v147 = *(v138 + 96);
              v148 = *(v138 + 112);
              v269 = *v138;
              v270 = v142;
              v271 = v143;
              v272 = v144;
              v285 = v145;
              v286 = v146;
              v287 = v147;
              v288 = v148;
              v140 = 128;
            }

            else if (v139 == 3)
            {
              v141 = vld1q_dup_f32(v138);
              v269 = v141;
              v270 = v141;
              v271 = v141;
              v272 = v141;
              v285 = v141;
              v286 = v141;
              v287 = v141;
              v288 = v141;
              v140 = 4;
            }

            else if (v68[6])
            {
              v140 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v269, 256, v138, v139);
            }

            else
            {
              v140 = 0;
              v271 = 0u;
              v272 = 0u;
              v269 = 0u;
              v270 = 0u;
              v285 = 0u;
              v286 = 0u;
              v287 = 0u;
              v288 = 0u;
            }

            v149 = v138 + v140;
            v150 = v68[7];
            if (v150 == 127)
            {
              v153 = *(v149 + 16);
              v154 = *(v149 + 32);
              v155 = *(v149 + 48);
              v156 = *(v149 + 64);
              v157 = *(v149 + 80);
              v158 = *(v149 + 96);
              v159 = *(v149 + 112);
              v273 = *v149;
              v274 = v153;
              v275 = v154;
              v276 = v155;
              v289 = v156;
              v290 = v157;
              v291 = v158;
              v292 = v159;
              v151 = v224;
              if (v224)
              {
                goto LABEL_147;
              }
            }

            else if (v150 == 3)
            {
              v152 = vld1q_dup_f32(v149);
              v273 = v152;
              v274 = v152;
              v275 = v152;
              v276 = v152;
              v289 = v152;
              v290 = v152;
              v291 = v152;
              v292 = v152;
              v151 = v224;
              if (v224)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v68[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v273, 256, v149, v150);
                v151 = v224;
                if (!v224)
                {
                  goto LABEL_168;
                }
              }

              else
              {
                v275 = 0u;
                v276 = 0u;
                v273 = 0u;
                v274 = 0u;
                v289 = 0u;
                v290 = 0u;
                v291 = 0u;
                v292 = 0u;
                v151 = v224;
                if (!v224)
                {
                  goto LABEL_168;
                }
              }

LABEL_147:
              if (v225)
              {
                v160 = 0;
                v161 = 32 * v223;
                v162 = &v229.i8[256 * v222 + v161];
                v163 = v220;
                v164 = v221;
                v165 = 32 * v225;
                if (v165)
                {
                  v166 = (v165 - 1) >> 32 == 0;
                }

                else
                {
                  v166 = 0;
                }

                v167 = !v166;
                v169 = v162 < v220 + v221 * (v151 - 1) + v165 && v220 < &__dst[256 * v151 + 768 + 256 * v222 + v165 + v161];
                v170 = v167 | (v221 < 0) | v169;
                v171 = &v230 + 256 * v222 + v161;
                v172 = v220 + 1;
                do
                {
                  v173 = v172;
                  v174 = v171;
                  v175 = v165;
                  if (v170)
                  {
                    v176 = 0;
                    do
                    {
                      v162[v176] = *(v163 + v176);
                      ++v176;
                    }

                    while (v165 > v176);
                  }

                  else
                  {
                    do
                    {
                      v177 = *v173;
                      *(v174 - 1) = *(v173 - 1);
                      *v174 = v177;
                      v174 += 2;
                      v173 += 2;
                      v175 -= 32;
                    }

                    while (v175);
                  }

                  ++v160;
                  v171 += 256;
                  v172 = (v172 + v164);
                  v162 += 256;
                  v163 = (v163 + v164);
                }

                while (v160 != v151);
              }
            }

LABEL_168:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v229, 256, v218, v219, v226, v227);
            if (!v216)
            {
              goto LABEL_26;
            }

            goto LABEL_169;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v69;
          if (!v216)
          {
            goto LABEL_26;
          }

LABEL_169:
          memcpy(__src, v71, 0x400uLL);
LABEL_26:
          v21 = v34++ == v204 >> 3;
          result = v213;
        }

        while (!v21);
        v21 = v17++ == v197;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v144 = v21;
  v145 = v22;
  v129 = v23;
  v24 = v12;
  v173 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v149 = v14;
  v131 = v14 + a10 - 1;
  v150 = v24;
  if (*(v24 + 168))
  {
    v25 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v25 = 0;
  }

  v26 = v14 >> 2;
  v27 = v20 - 1;
  v28 = v18 - 1;
  v130 = v131 >> 2;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v152 = v32;
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
      v143 = 0;
LABEL_32:
      v140 = v35 - 3;
      v134 = v34 - 2;
      v41 = -1 << *(*(v24 + 208) + 48);
      v128 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v143 = v40 >= v34;
    goto LABEL_32;
  }

  v143 = 0;
  v128 = 0;
  v134 = 0;
  v140 = 0;
LABEL_33:
  if (v26 <= v130)
  {
    v142 = v16 + a9 - 1;
    v127 = v16 >> 3;
    if (v16 >> 3 <= v142 >> 3)
    {
      v151 = v27 >> 3;
      v136 = v27 & 7;
      v125 = v28 & 3;
      v126 = v28 >> 2;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v43 = vcgt_u32(v42, 0xF00000007);
      v133 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v42, 0xFFFFFFFDFFFFFFFELL), -1))))))), v43);
      v132 = v43;
      v141 = v16;
      do
      {
        v44 = (4 * v26) | 3;
        if (4 * v26 <= v149)
        {
          v45 = v149;
        }

        else
        {
          v45 = 4 * v26;
        }

        if (v131 < v44)
        {
          v44 = v131;
        }

        v139 = v45 - 4 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v125;
        v138 = v47;
        v49 = v47 != 4;
        v50 = v125 + 1;
        if (v26 != v126)
        {
          v50 = 4;
          v48 = v49;
        }

        v137 = v48;
        v51 = v127;
        v52 = v26 & ~(-1 << v134);
        v147 = v129 + (v45 - v149) * a11;
        v148 = v50;
        v146 = v50;
        do
        {
          v53 = 8 * v51;
          v54 = 8 * (v51 + 1) - 1;
          if (8 * v51 <= v16)
          {
            v55 = v16;
          }

          else
          {
            v55 = 8 * v51;
          }

          if (v142 < v54)
          {
            v54 = v142;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v151)
          {
            v58 = v136 + 1;
          }

          else
          {
            v58 = 8;
          }

          v59 = 1;
          if (4 * v26 >= v149 && v53 >= v16)
          {
            v60 = v56 != v136;
            if (v51 != v151)
            {
              v60 = v57 != 8;
            }

            v59 = v60 || v137;
          }

          if (v143)
          {
            if (v140 | v134)
            {
              v61 = 0;
              v62 = 0;
              v63 = v140 != 0;
              v64 = 1;
              v66 = v134 != 0;
              v65 = v134;
              v67 = v140;
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
                  v62 |= (v51 & ~(-1 << v140) & v64) << v61++;
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

            v76 = v68 + *(result + 336) * ((v51 >> v140) + (v26 >> v134) * v128);
          }

          else if (v133)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v73 = v132.i8[0];
            v72 = v132.i8[4];
            v74 = v133.i32[0];
            v75 = v133.i32[1];
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

          v78 = v77 + 7;
          if (v78 < 0x10)
          {
            v79 = 0;
          }

          else
          {
            v79 = 32 - __clz(~(-1 << -__clz((v78 >> 3) - 1)));
          }

          v80 = *(result + 132) >> (*(result + 144) + a12);
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = v80 + 3;
          if (v81 < 8)
          {
            v82 = 0;
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 2) - 1)));
          }

          if (v82 | v79)
          {
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
          }

          else
          {
            v88 = 0;
          }

          v89 = (v145 + v88);
          v90 = v147 + ((v55 - v16) << 6);
          v91 = (v144 + v76);
          if (v152)
          {
            if (!(v59 & 1 | (v58 < 8u) | (v146 < 4)))
            {
              v96 = __dst;
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v90, a11, v96, v89, v58, v148);
              goto LABEL_111;
            }

            v135 = (v144 + v76);
            v92 = v59;
            v93 = v58;
            v94 = v52;
            v95 = v55;
            memcpy(__dst, (v144 + v76), sizeof(__dst));
            v55 = v95;
            v52 = v94;
            v96 = __dst;
            v59 = v92;
            v91 = v135;
            LOBYTE(v58) = v93;
            result = v150;
          }

          else
          {
            v96 = (v144 + v76);
            if (!(v59 & 1 | (v58 < 8u) | (v146 < 4)))
            {
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v154 = v96;
          v162 = v58;
          v163 = v148;
          v158 = v139;
          v159 = v55 - v53;
          v155 = v89;
          v156 = v90;
          v157 = a11;
          v160 = v138;
          v161 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            v16 = v141;
            v97 = v51 + 1;
            if (!v152)
            {
              goto LABEL_46;
            }

LABEL_136:
            memcpy(v91, v96, 0x800uLL);
            goto LABEL_46;
          }

          v98 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v165, 512, v96, *v89)];
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v166, 512, v98, v89[1]);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 512, v99, v89[2]);
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 512, v100, v89[3]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 512, v101, v89[4]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 512, v102, v89[5]);
          v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 512, v103, v89[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 512, v103 + v104, v89[7]);
          v105 = v160;
          v16 = v141;
          v97 = v51 + 1;
          if (v160 && v161)
          {
            v106 = 0;
            v107 = v158 << 9;
            v108 = v159 << 6;
            v109 = v165 + v107 + v108;
            v110 = v156;
            v111 = v157;
            v112 = v161 << 6;
            if (v112)
            {
              v113 = (v112 - 1) >> 32 == 0;
            }

            else
            {
              v113 = 0;
            }

            v114 = !v113;
            v116 = v109 < v156 + v157 * (v160 - 1) + v112 && v156 < &__dst[512 * v160 + 1536 + 512 * v158 + v112 + v108];
            v117 = v114 | (v157 < 0) | v116;
            v118 = &v165[1] + v107 + v108;
            v119 = (v156 + 16);
            do
            {
              v120 = v119;
              v121 = v118;
              v122 = v112;
              if (v117)
              {
                v123 = 0;
                do
                {
                  v109[v123] = *(v110 + v123);
                  ++v123;
                }

                while (v112 > v123);
              }

              else
              {
                do
                {
                  v124 = *v120;
                  *(v121 - 1) = *(v120 - 1);
                  *v121 = v124;
                  v121 += 2;
                  v120 += 2;
                  v122 -= 32;
                }

                while (v122);
              }

              ++v106;
              v118 += 512;
              v119 = (v119 + v111);
              v109 += 512;
              v110 += v111;
            }

            while (v106 != v105);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v165, 512, v154, v155, v162, v163);
          if (v152)
          {
            goto LABEL_136;
          }

LABEL_46:
          v29 = v51 == v142 >> 3;
          v51 = v97;
          result = v150;
        }

        while (!v29);
        v29 = v26++ == v130;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v144 = v21;
  v145 = v22;
  v129 = v23;
  v24 = v12;
  v173 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v149 = v14;
  v131 = v14 + a10 - 1;
  v150 = v24;
  if (*(v24 + 168))
  {
    v25 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v25 = 0;
  }

  v26 = v14 >> 2;
  v27 = v20 - 1;
  v28 = v18 - 1;
  v130 = v131 >> 2;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v152 = v32;
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
      v143 = 0;
LABEL_32:
      v140 = v35 - 3;
      v134 = v34 - 2;
      v41 = -1 << *(*(v24 + 208) + 48);
      v128 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v143 = v40 >= v34;
    goto LABEL_32;
  }

  v143 = 0;
  v128 = 0;
  v134 = 0;
  v140 = 0;
LABEL_33:
  if (v26 <= v130)
  {
    v142 = v16 + a9 - 1;
    v127 = v16 >> 3;
    if (v16 >> 3 <= v142 >> 3)
    {
      v151 = v27 >> 3;
      v136 = v27 & 7;
      v125 = v28 & 3;
      v126 = v28 >> 2;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v43 = vcgt_u32(v42, 0xF00000007);
      v133 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v42, 0xFFFFFFFDFFFFFFFELL), -1))))))), v43);
      v132 = v43;
      v141 = v16;
      do
      {
        v44 = (4 * v26) | 3;
        if (4 * v26 <= v149)
        {
          v45 = v149;
        }

        else
        {
          v45 = 4 * v26;
        }

        if (v131 < v44)
        {
          v44 = v131;
        }

        v139 = v45 - 4 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v125;
        v138 = v47;
        v49 = v47 != 4;
        v50 = v125 + 1;
        if (v26 != v126)
        {
          v50 = 4;
          v48 = v49;
        }

        v137 = v48;
        v51 = v127;
        v52 = v26 & ~(-1 << v134);
        v147 = v129 + (v45 - v149) * a11;
        v148 = v50;
        v146 = v50;
        do
        {
          v53 = 8 * v51;
          v54 = 8 * (v51 + 1) - 1;
          if (8 * v51 <= v16)
          {
            v55 = v16;
          }

          else
          {
            v55 = 8 * v51;
          }

          if (v142 < v54)
          {
            v54 = v142;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v151)
          {
            v58 = v136 + 1;
          }

          else
          {
            v58 = 8;
          }

          v59 = 1;
          if (4 * v26 >= v149 && v53 >= v16)
          {
            v60 = v56 != v136;
            if (v51 != v151)
            {
              v60 = v57 != 8;
            }

            v59 = v60 || v137;
          }

          if (v143)
          {
            if (v140 | v134)
            {
              v61 = 0;
              v62 = 0;
              v63 = v140 != 0;
              v64 = 1;
              v66 = v134 != 0;
              v65 = v134;
              v67 = v140;
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
                  v62 |= (v51 & ~(-1 << v140) & v64) << v61++;
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

            v76 = v68 + *(result + 336) * ((v51 >> v140) + (v26 >> v134) * v128);
          }

          else if (v133)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v73 = v132.i8[0];
            v72 = v132.i8[4];
            v74 = v133.i32[0];
            v75 = v133.i32[1];
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

          v78 = v77 + 7;
          if (v78 < 0x10)
          {
            v79 = 0;
          }

          else
          {
            v79 = 32 - __clz(~(-1 << -__clz((v78 >> 3) - 1)));
          }

          v80 = *(result + 132) >> (*(result + 144) + a12);
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = v80 + 3;
          if (v81 < 8)
          {
            v82 = 0;
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 2) - 1)));
          }

          if (v82 | v79)
          {
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
          }

          else
          {
            v88 = 0;
          }

          v89 = (v145 + v88);
          v90 = v147 + ((v55 - v16) << 6);
          v91 = (v144 + v76);
          if (v152)
          {
            if (!(v59 & 1 | (v58 < 8u) | (v146 < 4)))
            {
              v96 = __dst;
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v90, a11, v96, v89, v58, v148);
              goto LABEL_111;
            }

            v135 = (v144 + v76);
            v92 = v59;
            v93 = v58;
            v94 = v52;
            v95 = v55;
            memcpy(__dst, (v144 + v76), sizeof(__dst));
            v55 = v95;
            v52 = v94;
            v96 = __dst;
            v59 = v92;
            v91 = v135;
            LOBYTE(v58) = v93;
            result = v150;
          }

          else
          {
            v96 = (v144 + v76);
            if (!(v59 & 1 | (v58 < 8u) | (v146 < 4)))
            {
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v154 = v96;
          v162 = v58;
          v163 = v148;
          v158 = v139;
          v159 = v55 - v53;
          v155 = v89;
          v156 = v90;
          v157 = a11;
          v160 = v138;
          v161 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            v16 = v141;
            v97 = v51 + 1;
            if (!v152)
            {
              goto LABEL_46;
            }

LABEL_136:
            memcpy(v91, v96, 0x800uLL);
            goto LABEL_46;
          }

          v98 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v165, 512, v96, *v89);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v166, 512, v98, v89[1]);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 512, v99, v89[2]);
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 512, v100, v89[3]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 512, v101, v89[4]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 512, v102, v89[5]);
          v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 512, v103, v89[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 512, v103 + v104, v89[7]);
          v105 = v160;
          v16 = v141;
          v97 = v51 + 1;
          if (v160 && v161)
          {
            v106 = 0;
            v107 = v158 << 9;
            v108 = v159 << 6;
            v109 = v165 + v107 + v108;
            v110 = v156;
            v111 = v157;
            v112 = v161 << 6;
            if (v112)
            {
              v113 = (v112 - 1) >> 32 == 0;
            }

            else
            {
              v113 = 0;
            }

            v114 = !v113;
            v116 = v109 < v156 + v157 * (v160 - 1) + v112 && v156 < &__dst[512 * v160 + 1536 + 512 * v158 + v112 + v108];
            v117 = v114 | (v157 < 0) | v116;
            v118 = &v165[1] + v107 + v108;
            v119 = (v156 + 16);
            do
            {
              v120 = v119;
              v121 = v118;
              v122 = v112;
              if (v117)
              {
                v123 = 0;
                do
                {
                  v109[v123] = *(v110 + v123);
                  ++v123;
                }

                while (v112 > v123);
              }

              else
              {
                do
                {
                  v124 = *v120;
                  *(v121 - 1) = *(v120 - 1);
                  *v121 = v124;
                  v121 += 2;
                  v120 += 2;
                  v122 -= 32;
                }

                while (v122);
              }

              ++v106;
              v118 += 512;
              v119 = (v119 + v111);
              v109 += 512;
              v110 += v111;
            }

            while (v106 != v105);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v165, 512, v154, v155, v162, v163);
          if (v152)
          {
            goto LABEL_136;
          }

LABEL_46:
          v29 = v51 == v142 >> 3;
          v51 = v97;
          result = v150;
        }

        while (!v29);
        v29 = v26++ == v130;
      }

      while (!v29);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v139 = v21;
  v140 = v22;
  v128 = v23;
  v24 = v12;
  v169 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v145 = v14;
  v25 = v14 >> 2;
  v127 = v14 + a10 - 1;
  v129 = v127 >> 2;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v146 = v24;
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
  v148 = v32;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  if (v25 <= v129)
  {
    v137 = v16 + a9 - 1;
    v126 = v16 >> 3;
    if (v16 >> 3 <= v137 >> 3)
    {
      v147 = (v20 - 1) >> 3;
      v123 = v20 - 1;
      v130 = (v20 - 1) & 7;
      v124 = (v18 - 1) & 3;
      v125 = (v18 - 1) >> 2;
      v33 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v34 = vcgt_u32(v33, 0xF00000007);
      v135 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFDFFFFFFFELL), -1))))))), v34);
      v134 = v34;
      v122 = 8 * v27 * v26;
      v136 = v16;
      do
      {
        v35 = (4 * v25) | 3;
        if (4 * v25 <= v145)
        {
          v36 = v145;
        }

        else
        {
          v36 = 4 * v25;
        }

        if (v127 < v35)
        {
          v35 = v127;
        }

        v144 = 4 * v25;
        v133 = v36 - 4 * v25;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v124;
        v132 = v38;
        v40 = v38 != 4;
        v41 = v126;
        v42 = v124 + 1;
        if (v25 != v125)
        {
          v42 = 4;
          v39 = v40;
        }

        v131 = v39;
        v142 = v128 + (v36 - v145) * a11;
        v143 = v42;
        v141 = v42;
        do
        {
          v43 = 8 * v41;
          v44 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v16)
          {
            v45 = v16;
          }

          else
          {
            v45 = 8 * v41;
          }

          if (v137 < v44)
          {
            v44 = v137;
          }

          v46 = v44 - v45;
          v47 = v46 + 1;
          if (v41 == v147)
          {
            v48 = v130 + 1;
          }

          else
          {
            v48 = 8;
          }

          v49 = 1;
          if (v144 >= v145 && v43 >= v16)
          {
            v50 = v46 != v130;
            if (v41 != v147)
            {
              v50 = v47 != 8;
            }

            v49 = v50 || v131;
          }

          if (isLevelTiled)
          {
            v71 = 0;
            v72 = v122 >> (*(v24 + 57) != 0);
            v73 = 1;
            if (v72 <= 63)
            {
              if (v72 > 15)
              {
                if (v72 == 16)
                {
                  v73 = 0;
                  v74 = 64;
                  v71 = 128;
                }

                else
                {
                  v74 = 0;
                  if (v72 == 32)
                  {
                    v73 = 0;
                    v71 = 64;
                    v74 = 64;
                  }
                }
              }

              else if (v72 == 4)
              {
                v73 = 0;
                v74 = 128;
                v71 = 256;
              }

              else
              {
                v74 = 0;
                if (v72 == 8)
                {
                  v73 = 0;
                  v71 = 128;
                  v74 = 128;
                }
              }
            }

            else if (v72 <= 255)
            {
              if (v72 == 64)
              {
                v73 = 0;
                v74 = 32;
                v71 = 64;
              }

              else
              {
                v74 = 0;
                if (v72 == 128)
                {
                  v73 = 0;
                  v71 = 32;
                  v74 = 32;
                }
              }
            }

            else if (v72 == 256)
            {
              v73 = 0;
              v74 = 16;
              v71 = 32;
            }

            else if (v72 == 512)
            {
              v73 = 0;
              v71 = 16;
              v74 = 16;
            }

            else
            {
              v74 = 0;
              if (v72 == 1024)
              {
                v73 = 0;
                v74 = 8;
                v71 = 16;
              }
            }

            v110 = (v71 >> 3) - 1;
            v111 = (v74 >> 2) - 1;
            if ((v73 & 1) != 0 || (v112 = 32 - __clz(~(-1 << -__clz(v110))), v113 = 32 - __clz(~(-1 << -__clz(v111))), !(v113 | v112)))
            {
              v121 = 0;
            }

            else
            {
              v114 = 0;
              v115 = 0;
              v116 = v41 & v110;
              v117 = v25 & v111;
              v118 = v113 != 0;
              v119 = v112 != 0;
              v120 = 1;
              do
              {
                --v113;
                if (v118)
                {
                  v115 |= (v120 & v117) << v114++;
                }

                else
                {
                  v113 = 0;
                }

                --v112;
                if (v119)
                {
                  v115 |= (v120 & v116) << v114++;
                }

                else
                {
                  v112 = 0;
                }

                v120 *= 2;
                --v114;
                v119 = v112 != 0;
                v118 = v113 != 0;
              }

              while (v112 | v113);
              v121 = v115 << 11;
              v24 = v146;
            }

            v58 = v121 + ((v43 / v71 + v144 / v74 * ((v71 + v123) / v71)) << 14);
          }

          else if (v135)
          {
            v51 = 0;
            v52 = 0;
            v53 = 1;
            v55 = v134.i8[0];
            v54 = v134.i8[4];
            v56 = v135.i32[0];
            v57 = v135.i32[1];
            do
            {
              --v56;
              if (v55)
              {
                v52 |= (v53 & v25) << v51++;
              }

              else
              {
                v56 = 0;
              }

              --v57;
              if (v54)
              {
                v52 |= (v53 & v41) << v51++;
              }

              else
              {
                v57 = 0;
              }

              v53 *= 2;
              --v51;
              v54 = v57 != 0;
              v55 = v56 != 0;
            }

            while (v57 | v56);
            v58 = v52 << 11;
          }

          else
          {
            v58 = 0;
          }

          v59 = *(v24 + 128) >> (*(v24 + 144) + a12);
          if (v59 <= 1)
          {
            v59 = 1;
          }

          v60 = v59 + 7;
          if (v60 < 0x10)
          {
            v61 = 0;
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 3) - 1)));
          }

          v62 = *(v24 + 132) >> (*(v24 + 144) + a12);
          if (v62 <= 1)
          {
            v62 = 1;
          }

          v63 = v62 + 3;
          if (v63 < 8)
          {
            v64 = 0;
            if (!v61)
            {
LABEL_77:
              v70 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 2) - 1)));
            if (!(v64 | v61))
            {
              goto LABEL_77;
            }
          }

          v65 = 0;
          v66 = 0;
          v67 = v61 != 0;
          v68 = v64 != 0;
          v69 = 1;
          do
          {
            --v61;
            if (v67)
            {
              v66 |= (v69 & v41) << v65++;
            }

            else
            {
              v61 = 0;
            }

            --v64;
            if (v68)
            {
              v66 |= (v69 & v25) << v65++;
            }

            else
            {
              v64 = 0;
            }

            v69 *= 2;
            --v65;
            v68 = v64 != 0;
            v67 = v61 != 0;
          }

          while (v64 | v61);
          v70 = 8 * v66;
LABEL_78:
          v75 = (v140 + v70);
          v76 = v142 + ((v45 - v16) << 6);
          v77 = (v139 + v58);
          if (v148)
          {
            if (!(v49 & 1 | (v48 < 8u) | (v141 < 4)))
            {
              v82 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v76, a11, v82, v75, v48, v143);
              goto LABEL_86;
            }

            v78 = v48;
            v79 = v47;
            v80 = (v139 + v58);
            v81 = v49;
            memcpy(__dst, (v139 + v58), sizeof(__dst));
            v43 = 8 * v41;
            v82 = __dst;
            v49 = v81;
            v77 = v80;
            v47 = v79;
            LOBYTE(v48) = v78;
            v24 = v146;
          }

          else
          {
            v82 = (v139 + v58);
            if (!(v49 & 1 | (v48 < 8u) | (v141 < 4)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v24;
          v150 = v82;
          v158 = v48;
          v159 = v143;
          v154 = v133;
          v155 = v45 - v43;
          v151 = v75;
          v152 = v76;
          v153 = a11;
          v156 = v132;
          v157 = v47;
          if (v49)
          {
            dispatch_sync(*(*(v24 + 8) + 16552), block);
LABEL_86:
            v16 = v136;
            if (!v148)
            {
              goto LABEL_26;
            }

LABEL_111:
            memcpy(v77, v82, 0x800uLL);
            goto LABEL_26;
          }

          v83 = &v82[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 512, v82, *v75)];
          v84 = v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v162, 512, v83, v75[1]);
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v165, 512, v84, v75[2]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v166, 512, v85, v75[3]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v163, 512, v86, v75[4]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v164, 512, v87, v75[5]);
          v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 512, v88, v75[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 512, v88 + v89, v75[7]);
          v90 = v156;
          v16 = v136;
          if (v156 && v157)
          {
            v91 = 0;
            v92 = v154 << 9;
            v93 = v155 << 6;
            v94 = v161 + v92 + v93;
            v95 = v152;
            v96 = v153;
            v97 = v157 << 6;
            if (v97)
            {
              v98 = (v97 - 1) >> 32 == 0;
            }

            else
            {
              v98 = 0;
            }

            v99 = !v98;
            v101 = v94 < v152 + v153 * (v156 - 1) + v97 && v152 < &__dst[512 * v156 + 1536 + 512 * v154 + v97 + v93];
            v102 = v99 | (v153 < 0) | v101;
            v103 = &v161[1] + v92 + v93;
            v104 = (v152 + 16);
            do
            {
              v105 = v104;
              v106 = v103;
              v107 = v97;
              if (v102)
              {
                v108 = 0;
                do
                {
                  v94[v108] = *(v95 + v108);
                  ++v108;
                }

                while (v97 > v108);
              }

              else
              {
                do
                {
                  v109 = *v105;
                  *(v106 - 1) = *(v105 - 1);
                  *v106 = v109;
                  v106 += 2;
                  v105 += 2;
                  v107 -= 32;
                }

                while (v107);
              }

              ++v91;
              v103 += 512;
              v104 = (v104 + v96);
              v94 += 512;
              v95 += v96;
            }

            while (v91 != v90);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v161, 512, v150, v151, v158, v159);
          if (v148)
          {
            goto LABEL_111;
          }

LABEL_26:
          v29 = v41++ == v137 >> 3;
          v24 = v146;
        }

        while (!v29);
        v29 = v25++ == v129;
      }

      while (!v29);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v139 = v21;
  v140 = v22;
  v128 = v23;
  v24 = v12;
  v169 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v145 = v14;
  v25 = v14 >> 2;
  v127 = v14 + a10 - 1;
  v129 = v127 >> 2;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v146 = v24;
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
  v148 = v32;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  if (v25 <= v129)
  {
    v137 = v16 + a9 - 1;
    v126 = v16 >> 3;
    if (v16 >> 3 <= v137 >> 3)
    {
      v147 = (v20 - 1) >> 3;
      v123 = v20 - 1;
      v130 = (v20 - 1) & 7;
      v124 = (v18 - 1) & 3;
      v125 = (v18 - 1) >> 2;
      v33 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v34 = vcgt_u32(v33, 0xF00000007);
      v135 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFDFFFFFFFELL), -1))))))), v34);
      v134 = v34;
      v122 = 8 * v27 * v26;
      v136 = v16;
      do
      {
        v35 = (4 * v25) | 3;
        if (4 * v25 <= v145)
        {
          v36 = v145;
        }

        else
        {
          v36 = 4 * v25;
        }

        if (v127 < v35)
        {
          v35 = v127;
        }

        v144 = 4 * v25;
        v133 = v36 - 4 * v25;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v124;
        v132 = v38;
        v40 = v38 != 4;
        v41 = v126;
        v42 = v124 + 1;
        if (v25 != v125)
        {
          v42 = 4;
          v39 = v40;
        }

        v131 = v39;
        v142 = v128 + (v36 - v145) * a11;
        v143 = v42;
        v141 = v42;
        do
        {
          v43 = 8 * v41;
          v44 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v16)
          {
            v45 = v16;
          }

          else
          {
            v45 = 8 * v41;
          }

          if (v137 < v44)
          {
            v44 = v137;
          }

          v46 = v44 - v45;
          v47 = v46 + 1;
          if (v41 == v147)
          {
            v48 = v130 + 1;
          }

          else
          {
            v48 = 8;
          }

          v49 = 1;
          if (v144 >= v145 && v43 >= v16)
          {
            v50 = v46 != v130;
            if (v41 != v147)
            {
              v50 = v47 != 8;
            }

            v49 = v50 || v131;
          }

          if (isLevelTiled)
          {
            v71 = 0;
            v72 = v122 >> (*(v24 + 57) != 0);
            v73 = 1;
            if (v72 <= 63)
            {
              if (v72 > 15)
              {
                if (v72 == 16)
                {
                  v73 = 0;
                  v74 = 64;
                  v71 = 128;
                }

                else
                {
                  v74 = 0;
                  if (v72 == 32)
                  {
                    v73 = 0;
                    v71 = 64;
                    v74 = 64;
                  }
                }
              }

              else if (v72 == 4)
              {
                v73 = 0;
                v74 = 128;
                v71 = 256;
              }

              else
              {
                v74 = 0;
                if (v72 == 8)
                {
                  v73 = 0;
                  v71 = 128;
                  v74 = 128;
                }
              }
            }

            else if (v72 <= 255)
            {
              if (v72 == 64)
              {
                v73 = 0;
                v74 = 32;
                v71 = 64;
              }

              else
              {
                v74 = 0;
                if (v72 == 128)
                {
                  v73 = 0;
                  v71 = 32;
                  v74 = 32;
                }
              }
            }

            else if (v72 == 256)
            {
              v73 = 0;
              v74 = 16;
              v71 = 32;
            }

            else if (v72 == 512)
            {
              v73 = 0;
              v71 = 16;
              v74 = 16;
            }

            else
            {
              v74 = 0;
              if (v72 == 1024)
              {
                v73 = 0;
                v74 = 8;
                v71 = 16;
              }
            }

            v110 = (v71 >> 3) - 1;
            v111 = (v74 >> 2) - 1;
            if ((v73 & 1) != 0 || (v112 = 32 - __clz(~(-1 << -__clz(v110))), v113 = 32 - __clz(~(-1 << -__clz(v111))), !(v113 | v112)))
            {
              v121 = 0;
            }

            else
            {
              v114 = 0;
              v115 = 0;
              v116 = v41 & v110;
              v117 = v25 & v111;
              v118 = v113 != 0;
              v119 = v112 != 0;
              v120 = 1;
              do
              {
                --v113;
                if (v118)
                {
                  v115 |= (v120 & v117) << v114++;
                }

                else
                {
                  v113 = 0;
                }

                --v112;
                if (v119)
                {
                  v115 |= (v120 & v116) << v114++;
                }

                else
                {
                  v112 = 0;
                }

                v120 *= 2;
                --v114;
                v119 = v112 != 0;
                v118 = v113 != 0;
              }

              while (v112 | v113);
              v121 = v115 << 11;
              v24 = v146;
            }

            v58 = v121 + ((v43 / v71 + v144 / v74 * ((v71 + v123) / v71)) << 14);
          }

          else if (v135)
          {
            v51 = 0;
            v52 = 0;
            v53 = 1;
            v55 = v134.i8[0];
            v54 = v134.i8[4];
            v56 = v135.i32[0];
            v57 = v135.i32[1];
            do
            {
              --v56;
              if (v55)
              {
                v52 |= (v53 & v25) << v51++;
              }

              else
              {
                v56 = 0;
              }

              --v57;
              if (v54)
              {
                v52 |= (v53 & v41) << v51++;
              }

              else
              {
                v57 = 0;
              }

              v53 *= 2;
              --v51;
              v54 = v57 != 0;
              v55 = v56 != 0;
            }

            while (v57 | v56);
            v58 = v52 << 11;
          }

          else
          {
            v58 = 0;
          }

          v59 = *(v24 + 128) >> (*(v24 + 144) + a12);
          if (v59 <= 1)
          {
            v59 = 1;
          }

          v60 = v59 + 7;
          if (v60 < 0x10)
          {
            v61 = 0;
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 3) - 1)));
          }

          v62 = *(v24 + 132) >> (*(v24 + 144) + a12);
          if (v62 <= 1)
          {
            v62 = 1;
          }

          v63 = v62 + 3;
          if (v63 < 8)
          {
            v64 = 0;
            if (!v61)
            {
LABEL_77:
              v70 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 2) - 1)));
            if (!(v64 | v61))
            {
              goto LABEL_77;
            }
          }

          v65 = 0;
          v66 = 0;
          v67 = v61 != 0;
          v68 = v64 != 0;
          v69 = 1;
          do
          {
            --v61;
            if (v67)
            {
              v66 |= (v69 & v41) << v65++;
            }

            else
            {
              v61 = 0;
            }

            --v64;
            if (v68)
            {
              v66 |= (v69 & v25) << v65++;
            }

            else
            {
              v64 = 0;
            }

            v69 *= 2;
            --v65;
            v68 = v64 != 0;
            v67 = v61 != 0;
          }

          while (v64 | v61);
          v70 = 8 * v66;
LABEL_78:
          v75 = (v140 + v70);
          v76 = v142 + ((v45 - v16) << 6);
          v77 = (v139 + v58);
          if (v148)
          {
            if (!(v49 & 1 | (v48 < 8u) | (v141 < 4)))
            {
              v82 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v76, a11, v82, v75, v48, v143);
              goto LABEL_86;
            }

            v78 = v48;
            v79 = v47;
            v80 = (v139 + v58);
            v81 = v49;
            memcpy(__dst, (v139 + v58), sizeof(__dst));
            v43 = 8 * v41;
            v82 = __dst;
            v49 = v81;
            v77 = v80;
            v47 = v79;
            LOBYTE(v48) = v78;
            v24 = v146;
          }

          else
          {
            v82 = (v139 + v58);
            if (!(v49 & 1 | (v48 < 8u) | (v141 < 4)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v24;
          v150 = v82;
          v158 = v48;
          v159 = v143;
          v154 = v133;
          v155 = v45 - v43;
          v151 = v75;
          v152 = v76;
          v153 = a11;
          v156 = v132;
          v157 = v47;
          if (v49)
          {
            dispatch_sync(*(*(v24 + 8) + 16552), block);
LABEL_86:
            v16 = v136;
            if (!v148)
            {
              goto LABEL_26;
            }

LABEL_111:
            memcpy(v77, v82, 0x800uLL);
            goto LABEL_26;
          }

          v83 = v82 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 512, v82, *v75);
          v84 = v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v162, 512, v83, v75[1]);
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v165, 512, v84, v75[2]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v166, 512, v85, v75[3]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v163, 512, v86, v75[4]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v164, 512, v87, v75[5]);
          v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 512, v88, v75[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 512, v88 + v89, v75[7]);
          v90 = v156;
          v16 = v136;
          if (v156 && v157)
          {
            v91 = 0;
            v92 = v154 << 9;
            v93 = v155 << 6;
            v94 = v161 + v92 + v93;
            v95 = v152;
            v96 = v153;
            v97 = v157 << 6;
            if (v97)
            {
              v98 = (v97 - 1) >> 32 == 0;
            }

            else
            {
              v98 = 0;
            }

            v99 = !v98;
            v101 = v94 < v152 + v153 * (v156 - 1) + v97 && v152 < &__dst[512 * v156 + 1536 + 512 * v154 + v97 + v93];
            v102 = v99 | (v153 < 0) | v101;
            v103 = &v161[1] + v92 + v93;
            v104 = (v152 + 16);
            do
            {
              v105 = v104;
              v106 = v103;
              v107 = v97;
              if (v102)
              {
                v108 = 0;
                do
                {
                  v94[v108] = *(v95 + v108);
                  ++v108;
                }

                while (v97 > v108);
              }

              else
              {
                do
                {
                  v109 = *v105;
                  *(v106 - 1) = *(v105 - 1);
                  *v106 = v109;
                  v106 += 2;
                  v105 += 2;
                  v107 -= 32;
                }

                while (v107);
              }

              ++v91;
              v103 += 512;
              v104 = (v104 + v96);
              v94 += 512;
              v95 += v96;
            }

            while (v91 != v90);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v161, 512, v150, v151, v158, v159);
          if (v148)
          {
            goto LABEL_111;
          }

LABEL_26:
          v29 = v41++ == v137 >> 3;
          v24 = v146;
        }

        while (!v29);
        v29 = v25++ == v129;
      }

      while (!v29);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v243 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v194 = a8;
  v176 = a8 + a10 - 1;
  v195 = a1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 2;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v175 = v176 >> 2;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v198 = v24;
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
      v188 = 0;
LABEL_32:
      v185 = v27 - 3;
      v179 = v26 - 2;
      v33 = -1 << *(*(a1 + 208) + 48);
      v173 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v188 = v32 >= v26;
    goto LABEL_32;
  }

  v188 = 0;
  v173 = 0;
  v179 = 0;
  v185 = 0;
LABEL_33:
  if (v18 <= v175)
  {
    v187 = a7 + a9 - 1;
    v172 = a7 >> 3;
    if (a7 >> 3 <= v187 >> 3)
    {
      v196 = v19 >> 3;
      v181 = v19 & 7;
      v170 = v20 & 3;
      v171 = v20 >> 2;
      v169 = ~(-1 << v179);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v35.i8 = vcgt_u32(v34, 0xF00000007);
      v36 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v35.i8);
      v178 = v36;
      v180 = v36.i32[0] | v36.i32[1];
      v177 = v35.i64[0];
      v186 = a7;
      do
      {
        v37 = (4 * v18) | 3;
        if (4 * v18 <= v194)
        {
          v38 = v194;
        }

        else
        {
          v38 = 4 * v18;
        }

        if (v176 < v37)
        {
          v37 = v176;
        }

        v184 = v38 - 4 * v18;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v170;
        v183 = v40;
        v42 = v40 != 4;
        v43 = v170 + 1;
        if (v18 != v171)
        {
          v43 = 4;
          v41 = v42;
        }

        v182 = v41;
        v44 = v172;
        v45 = v18 & v169;
        v192 = a3 + (v38 - v194) * a11;
        v193 = v43;
        v191 = v43;
        do
        {
          v46 = 8 * v44;
          v47 = 8 * (v44 + 1) - 1;
          if (8 * v44 <= a7)
          {
            v48 = a7;
          }

          else
          {
            v48 = 8 * v44;
          }

          if (v187 < v47)
          {
            v47 = v187;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v44 == v196)
          {
            v51 = v181 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (4 * v18 >= v194 && v46 >= a7)
          {
            v53 = v49 != v181;
            if (v44 != v196)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v182;
          }

          if (v188)
          {
            if (v185 | v179)
            {
              v54 = 0;
              v55 = 0;
              v56 = v185 != 0;
              v57 = 1;
              v59 = v179 != 0;
              v58 = v179;
              v60 = v185;
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
                  v55 |= (v44 & ~(-1 << v185) & v57) << v54++;
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

            v69 = v61 + *(result + 336) * ((v44 >> v185) + (v18 >> v179) * v173);
          }

          else if (v180)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v66 = v177;
            v65 = BYTE4(v177);
            v67 = v178.i32[0];
            v68 = v178.i32[1];
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

          v71 = v70 + 7;
          if (v71 < 0x10)
          {
            v72 = 0;
          }

          else
          {
            v72 = 32 - __clz(~(-1 << -__clz((v71 >> 3) - 1)));
          }

          v73 = *(result + 132) >> (*(result + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 3;
          if (v74 < 8)
          {
            v75 = 0;
            if (!v72)
            {
LABEL_103:
              v81 = 0;
              goto LABEL_104;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 2) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_103;
            }
          }

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
LABEL_104:
          v82 = (a4 + v81);
          v83 = v192 + 16 * (v48 - a7);
          v197 = (a2 + v69);
          if (v198)
          {
            v84 = __dst;
            if (!(v52 & 1 | (v51 < 8u) | (v191 < 4)))
            {
              goto LABEL_110;
            }

            v85 = (a4 + v81);
            v86 = v50;
            memcpy(__dst, (a2 + v69), sizeof(__dst));
            v50 = v86;
            v82 = v85;
            v45 = v18 & v169;
            result = v195;
          }

          else
          {
            v84 = (a2 + v69);
            if (!(v52 & 1 | (v51 < 8u) | (v191 < 4)))
            {
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v83, a11, v84, v82, v51, v193);
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v200 = v84;
          v208 = v51;
          v209 = v193;
          v204 = v184;
          v205 = v48 - v46;
          v201 = v82;
          v202 = v83;
          v203 = a11;
          v206 = v183;
          v207 = v50;
          if (v52)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            a7 = v186;
            v87 = v44 + 1;
            goto LABEL_202;
          }

          v88 = *v82;
          a7 = v186;
          if (v88 == 63)
          {
            v90 = *v84;
            v35 = v84[1];
            v91 = v84[2];
            v92 = v84[3];
            v211 = *v84;
            v212 = v35;
            v219 = v91;
            v220 = v92;
            v89 = 64;
          }

          else if (v88 == 1)
          {
            v90 = vld1q_dup_s16(v84->i16);
            v211 = v90;
            v212 = v90;
            v219 = v90;
            v220 = v90;
            v89 = 2;
          }

          else if (*v82)
          {
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v211, 128, v84, v88, v36, *v35.i8);
          }

          else
          {
            v89 = 0;
            v90.i64[0] = 0;
            v211 = 0u;
            v212 = 0u;
            v219 = 0u;
            v220 = 0u;
          }

          v93 = v84->i64 + v89;
          v94 = v82[1];
          if (v94 == 63)
          {
            v96 = *v93;
            v35 = *(v93 + 16);
            v97 = *(v93 + 32);
            v98 = *(v93 + 48);
            v213 = *v93;
            v214 = v35;
            v221 = v97;
            v222 = v98;
            v95 = 64;
          }

          else if (v94 == 1)
          {
            v96 = vld1q_dup_s16(v93);
            v213 = v96;
            v214 = v96;
            v221 = v96;
            v222 = v96;
            v95 = 2;
          }

          else if (v82[1])
          {
            v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v213, 128, v93, v94, *v90.i8, *v35.i8);
          }

          else
          {
            v95 = 0;
            v96.i64[0] = 0;
            v213 = 0u;
            v214 = 0u;
            v221 = 0u;
            v222 = 0u;
          }

          v99 = v93 + v95;
          v100 = v82[2];
          if (v100 == 63)
          {
            v102 = *v99;
            v35 = *(v99 + 16);
            v103 = *(v99 + 32);
            v104 = *(v99 + 48);
            v227 = *v99;
            v228 = v35;
            v235 = v103;
            v236 = v104;
            v101 = 64;
          }

          else if (v100 == 1)
          {
            v102 = vld1q_dup_s16(v99);
            v227 = v102;
            v228 = v102;
            v235 = v102;
            v236 = v102;
            v101 = 2;
          }

          else if (v82[2])
          {
            v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 128, v99, v100, *v96.i8, *v35.i8);
          }

          else
          {
            v101 = 0;
            v102.i64[0] = 0;
            v227 = 0u;
            v228 = 0u;
            v235 = 0u;
            v236 = 0u;
          }

          v105 = v99 + v101;
          v106 = v82[3];
          if (v106 == 63)
          {
            v108 = *v105;
            v35 = *(v105 + 16);
            v109 = *(v105 + 32);
            v110 = *(v105 + 48);
            v229 = *v105;
            v230 = v35;
            v237 = v109;
            v238 = v110;
            v107 = 64;
          }

          else if (v106 == 1)
          {
            v108 = vld1q_dup_s16(v105);
            v229 = v108;
            v230 = v108;
            v237 = v108;
            v238 = v108;
            v107 = 2;
          }

          else if (v82[3])
          {
            v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 128, v105, v106, *v102.i8, *v35.i8);
          }

          else
          {
            v107 = 0;
            v108.i64[0] = 0;
            v229 = 0u;
            v230 = 0u;
            v237 = 0u;
            v238 = 0u;
          }

          v111 = v105 + v107;
          v112 = v82[4];
          if (v112 == 63)
          {
            v114 = *v111;
            v35 = *(v111 + 16);
            v115 = *(v111 + 32);
            v116 = *(v111 + 48);
            v215 = *v111;
            v216 = v35;
            v223 = v115;
            v224 = v116;
            v113 = 64;
          }

          else if (v112 == 1)
          {
            v114 = vld1q_dup_s16(v111);
            v215 = v114;
            v216 = v114;
            v223 = v114;
            v224 = v114;
            v113 = 2;
          }

          else if (v82[4])
          {
            v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v215, 128, v111, v112, *v108.i8, *v35.i8);
          }

          else
          {
            v113 = 0;
            v114.i64[0] = 0;
            v215 = 0u;
            v216 = 0u;
            v223 = 0u;
            v224 = 0u;
          }

          v117 = v111 + v113;
          v118 = v82[5];
          if (v118 == 63)
          {
            v120 = *v117;
            v35 = *(v117 + 16);
            v121 = *(v117 + 32);
            v122 = *(v117 + 48);
            v217 = *v117;
            v218 = v35;
            v225 = v121;
            v226 = v122;
            v119 = 64;
          }

          else if (v118 == 1)
          {
            v120 = vld1q_dup_s16(v117);
            v217 = v120;
            v218 = v120;
            v225 = v120;
            v226 = v120;
            v119 = 2;
          }

          else if (v82[5])
          {
            v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 128, v117, v118, *v114.i8, *v35.i8);
          }

          else
          {
            v119 = 0;
            v120.i64[0] = 0;
            v217 = 0u;
            v218 = 0u;
            v225 = 0u;
            v226 = 0u;
          }

          v123 = v117 + v119;
          v124 = v82[6];
          if (v124 == 63)
          {
            v126 = *v123;
            v35 = *(v123 + 16);
            v127 = *(v123 + 32);
            v128 = *(v123 + 48);
            v231 = *v123;
            v232 = v35;
            v239 = v127;
            v240 = v128;
            v125 = 64;
          }

          else if (v124 == 1)
          {
            v126 = vld1q_dup_s16(v123);
            v231 = v126;
            v232 = v126;
            v239 = v126;
            v240 = v126;
            v125 = 2;
          }

          else if (v82[6])
          {
            v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v231, 128, v123, v124, *v120.i8, *v35.i8);
          }

          else
          {
            v125 = 0;
            v126.i64[0] = 0;
            v231 = 0u;
            v232 = 0u;
            v239 = 0u;
            v240 = 0u;
          }

          v129 = v123 + v125;
          v130 = v82[7];
          if (v130 == 63)
          {
            v133 = *(v129 + 16);
            v134 = *(v129 + 32);
            v135 = *(v129 + 48);
            v233 = *v129;
            v234 = v133;
            v241 = v134;
            v242 = v135;
            v87 = v44 + 1;
            v131 = v206;
            if (!v206)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v87 = v44 + 1;
            if (v130 == 1)
            {
              v132 = vld1q_dup_s16(v129);
              v233 = v132;
              v234 = v132;
              v241 = v132;
              v242 = v132;
              v131 = v206;
              if (!v206)
              {
                goto LABEL_201;
              }
            }

            else if (v82[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 128, v129, v130, *v126.i8, *v35.i8);
              v131 = v206;
              if (!v206)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v233 = 0u;
              v234 = 0u;
              v241 = 0u;
              v242 = 0u;
              v131 = v206;
              if (!v206)
              {
                goto LABEL_201;
              }
            }
          }

          v136 = v207;
          if (v207)
          {
            v137 = 0;
            v138 = v204 << 7;
            v139 = 16 * v205;
            v140 = &v211.i8[v138 + v139];
            v141 = v202;
            v142 = v203;
            v143 = 16 * v207;
            if (16 * v207)
            {
              v144 = (16 * v207 - 1) >> 32 == 0;
            }

            else
            {
              v144 = 0;
            }

            v145 = !v144;
            v147 = v140 < v202 + v203 * (v131 - 1) + 16 * v207 && v202 < &__dst[128 * v131 + 384 + 128 * v204 + 16 * v207 + v139];
            v148 = v143 & 0x1FFFFFFE0;
            v149 = v145 | (v203 < 0) | v147;
            v150 = &v212.i8[v138 + v139];
            v151 = (v202 + 16);
            v152 = v140;
            v153 = v202;
            do
            {
              v154 = (v141 + v137 * v142);
              v155 = &v140[128 * v137];
              if (v149)
              {
                v156 = 0;
              }

              else
              {
                if (v136 == 1)
                {
                  v160 = 0;
LABEL_193:
                  v161 = -16 * v136 + v160;
                  v162 = (v153 + v160);
                  v163 = &v152[v160];
                  do
                  {
                    v164 = *v162++;
                    *v163 = v164;
                    v163 += 16;
                    v161 += 16;
                  }

                  while (v161);
                  goto LABEL_185;
                }

                v165 = v151;
                v166 = v150;
                v167 = v143 & 0x1FFFFFFE0;
                do
                {
                  v168 = *v165;
                  *(v166 - 1) = *(v165 - 1);
                  *v166 = v168;
                  v166 += 32;
                  v165 += 2;
                  v167 -= 32;
                }

                while (v167);
                if (v143 == v148)
                {
                  goto LABEL_185;
                }

                v160 = v143 & 0x1FFFFFFE0;
                if (v136)
                {
                  goto LABEL_193;
                }

                v154 += v148;
                v155 += v148;
                v156 = v143 & 0xFFFFFFE0;
              }

              v157 = v156 + 1;
              do
              {
                v158 = *v154++;
                *v155++ = v158;
              }

              while (v143 > v157++);
LABEL_185:
              ++v137;
              v150 += 128;
              v151 = (v151 + v142);
              v153 += v142;
              v152 += 128;
            }

            while (v137 != v131);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v211, 128, v200, v201, v208, v209);
LABEL_202:
          if (v198)
          {
            memcpy(v197, v84, 0x200uLL);
          }

          v21 = v44 == v187 >> 3;
          v44 = v87;
          result = v195;
        }

        while (!v21);
        v21 = v18++ == v175;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v269 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v220 = a8;
  v202 = a8 + a10 - 1;
  v221 = a1;
  result = *(a1 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v18 = result & 0xF00;
  }

  else
  {
    v18 = 0;
  }

  v19 = a8 >> 2;
  v20 = a5 - 1;
  v21 = a6 - 1;
  v201 = v202 >> 2;
  v22 = (v18 & 0xD00) == 0 || v18 == 768;
  v23 = v18 & 0xE00;
  v25 = !v22 && v23 != 1024;
  v224 = v25;
  if (*(a1 + 232) == 1)
  {
    v26 = *(a1 + 273);
    v27 = *(a1 + 272);
    v28 = __clz(v20);
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
          v31 = __clz(~(-1 << -__clz(v21))) | 0xFFFFFFE0;
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
      v214 = 0;
LABEL_32:
      v212 = v27 - 3;
      v205 = v26 - 2;
      v33 = -1 << *(*(a1 + 208) + 48);
      v199 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v32 = 0;
    }

    else
    {
      v32 = 32 - __clz(~(-1 << -__clz(v21)));
    }

    v214 = v32 >= v26;
    goto LABEL_32;
  }

  v214 = 0;
  v199 = 0;
  v205 = 0;
  v212 = 0;
LABEL_33:
  if (v19 <= v201)
  {
    v213 = a7 + a9 - 1;
    v198 = a7 >> 3;
    if (a7 >> 3 <= v213 >> 3)
    {
      v222 = v20 >> 3;
      v208 = v20 & 7;
      v196 = v21 & 3;
      v197 = v21 >> 2;
      v195 = ~(-1 << v205);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v35.i8 = vcgt_u32(v34, 0xF00000007);
      *v36.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v35.i8);
      v204 = v36.i64[0];
      v207 = v36.i32[0] | v36.i32[1];
      v203 = v35.i64[0];
      do
      {
        v37 = (4 * v19) | 3;
        if (4 * v19 <= v220)
        {
          v38 = v220;
        }

        else
        {
          v38 = 4 * v19;
        }

        if (v202 < v37)
        {
          v37 = v202;
        }

        v211 = v38 - 4 * v19;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v196;
        v210 = v40;
        v42 = v40 != 4;
        v43 = v196 + 1;
        if (v19 != v197)
        {
          v43 = 4;
          v41 = v42;
        }

        v209 = v41;
        v44 = v198;
        v45 = v19 & v195;
        v218 = a3 + (v38 - v220) * a11;
        v219 = v43;
        v217 = v43;
        v46 = v221;
        do
        {
          v47 = 8 * v44;
          v48 = 8 * (v44 + 1) - 1;
          if (8 * v44 <= a7)
          {
            v49 = a7;
          }

          else
          {
            v49 = 8 * v44;
          }

          if (v213 < v48)
          {
            v48 = v213;
          }

          v50 = v48 - v49;
          v51 = v50 + 1;
          if (v44 == v222)
          {
            v52 = v208 + 1;
          }

          else
          {
            v52 = 8;
          }

          v53 = 1;
          if (4 * v19 >= v220 && v47 >= a7)
          {
            v54 = v50 != v208;
            if (v44 != v222)
            {
              v54 = v51 != 8;
            }

            v53 = v54 || v209;
          }

          if (v214)
          {
            if (v212 | v205)
            {
              v55 = 0;
              v56 = 0;
              v57 = v212 != 0;
              v58 = 1;
              v60 = v205 != 0;
              v59 = v205;
              v61 = v212;
              do
              {
                --v59;
                if (v60)
                {
                  v56 |= (v45 & v58) << v55++;
                }

                else
                {
                  v59 = 0;
                }

                --v61;
                if (v57)
                {
                  v56 |= (v44 & ~(-1 << v212) & v58) << v55++;
                }

                else
                {
                  v61 = 0;
                }

                v58 *= 2;
                --v55;
                v57 = v61 != 0;
                v60 = v59 != 0;
              }

              while (v61 | v59);
              v62 = v56 << 9;
            }

            else
            {
              v62 = 0;
            }

            v70 = v62 + *(v46 + 336) * ((v44 >> v212) + (v19 >> v205) * v199);
          }

          else if (v207)
          {
            v63 = 0;
            v64 = 0;
            v65 = 1;
            v67 = v203;
            v66 = BYTE4(v203);
            v68 = v204;
            v69 = HIDWORD(v204);
            do
            {
              --v68;
              if (v67)
              {
                v64 |= (v65 & v19) << v63++;
              }

              else
              {
                v68 = 0;
              }

              --v69;
              if (v66)
              {
                v64 |= (v65 & v44) << v63++;
              }

              else
              {
                v69 = 0;
              }

              v65 *= 2;
              --v63;
              v66 = v69 != 0;
              v67 = v68 != 0;
            }

            while (v69 | v68);
            v70 = v64 << 9;
          }

          else
          {
            v70 = 0;
          }

          v71 = *(v46 + 128) >> (*(v46 + 144) + a12);
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v72 = v71 + 7;
          if (v72 < 0x10)
          {
            v73 = 0;
          }

          else
          {
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 3) - 1)));
          }

          v74 = *(v46 + 132) >> (*(v46 + 144) + a12);
          if (v74 <= 1)
          {
            v74 = 1;
          }

          v75 = v74 + 3;
          if (v75 < 8)
          {
            v76 = 0;
            if (!v73)
            {
LABEL_103:
              v82 = 0;
              goto LABEL_104;
            }
          }

          else
          {
            v76 = 32 - __clz(~(-1 << -__clz((v75 >> 2) - 1)));
            if (!(v76 | v73))
            {
              goto LABEL_103;
            }
          }

          v77 = 0;
          v78 = 0;
          v79 = v73 != 0;
          v80 = v76 != 0;
          v81 = 1;
          do
          {
            --v73;
            if (v79)
            {
              v78 |= (v81 & v44) << v77++;
            }

            else
            {
              v73 = 0;
            }

            --v76;
            if (v80)
            {
              v78 |= (v81 & v19) << v77++;
            }

            else
            {
              v76 = 0;
            }

            v81 *= 2;
            --v77;
            v80 = v76 != 0;
            v79 = v73 != 0;
          }

          while (v76 | v73);
          v82 = 8 * v78;
LABEL_104:
          v83 = (a4 + v82);
          v84 = a7;
          v85 = (v218 + 16 * (v49 - a7));
          v223 = (a2 + v70);
          if (v224)
          {
            v86 = __dst;
            if (!(v53 & 1 | (v52 < 8u) | (v217 < 4)))
            {
              goto LABEL_110;
            }

            v206 = v51;
            v87 = v53;
            memcpy(__dst, (a2 + v70), sizeof(__dst));
            v53 = v87;
            v51 = v206;
          }

          else
          {
            v86 = (a2 + v70);
            if (!(v53 & 1 | (v52 < 8u) | (v217 < 4)))
            {
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v85, a11, v86, v83, v52, v219);
              a7 = v84;
              v46 = v221;
LABEL_111:
              v88 = v44 + 1;
              result = v223;
              if (!v224)
              {
                goto LABEL_46;
              }

LABEL_231:
              result = memcpy(result, v86, 0x200uLL);
              goto LABEL_46;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v221;
          v226 = v86;
          v234 = v52;
          v235 = v219;
          v230 = v211;
          v231 = v49 - v47;
          v227 = v83;
          v228 = v85;
          v229 = a11;
          v232 = v210;
          v233 = v51;
          if (v53)
          {
            dispatch_sync(*(*(v221 + 8) + 16552), block);
            a7 = v84;
            v46 = v221;
            goto LABEL_111;
          }

          v89 = *v83;
          a7 = v84;
          if (v89 == 63)
          {
            v91 = *v86;
            v35 = v86[1];
            v92 = v86[2];
            v93 = v86[3];
            v237 = *v86;
            v238 = v35;
            v245 = v92;
            v246 = v93;
            v90 = 64;
          }

          else if (v89 == 1)
          {
            v91 = vld1q_dup_s16(v86->i16);
            v237 = v91;
            v238 = v91;
            v245 = v91;
            v246 = v91;
            v90 = 2;
          }

          else if (*v83)
          {
            v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 128, v86, v89, *v36.i8, *v35.i8);
          }

          else
          {
            v90 = 0;
            v91.i64[0] = 0;
            v237 = 0u;
            v238 = 0u;
            v245 = 0u;
            v246 = 0u;
          }

          v94 = v86->i64 + v90;
          v95 = v83[1];
          if (v95 == 63)
          {
            v97 = *v94;
            v35 = *(v94 + 16);
            v98 = *(v94 + 32);
            v99 = *(v94 + 48);
            v239 = *v94;
            v240 = v35;
            v247 = v98;
            v248 = v99;
            v96 = 64;
          }

          else if (v95 == 1)
          {
            v97 = vld1q_dup_s16(v94);
            v239 = v97;
            v240 = v97;
            v247 = v97;
            v248 = v97;
            v96 = 2;
          }

          else if (v83[1])
          {
            v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v239, 128, v94, v95, *v91.i8, *v35.i8);
          }

          else
          {
            v96 = 0;
            v97.i64[0] = 0;
            v239 = 0u;
            v240 = 0u;
            v247 = 0u;
            v248 = 0u;
          }

          v100 = v94 + v96;
          v101 = v83[2];
          if (v101 == 63)
          {
            v103 = *v100;
            v35 = *(v100 + 16);
            v104 = *(v100 + 32);
            v105 = *(v100 + 48);
            v253 = *v100;
            v254 = v35;
            v261 = v104;
            v262 = v105;
            v102 = 64;
          }

          else if (v101 == 1)
          {
            v103 = vld1q_dup_s16(v100);
            v253 = v103;
            v254 = v103;
            v261 = v103;
            v262 = v103;
            v102 = 2;
          }

          else if (v83[2])
          {
            v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v253, 128, v100, v101, *v97.i8, *v35.i8);
          }

          else
          {
            v102 = 0;
            v103.i64[0] = 0;
            v253 = 0u;
            v254 = 0u;
            v261 = 0u;
            v262 = 0u;
          }

          v106 = v100 + v102;
          v107 = v83[3];
          if (v107 == 63)
          {
            v109 = *v106;
            v35 = *(v106 + 16);
            v110 = *(v106 + 32);
            v111 = *(v106 + 48);
            v255 = *v106;
            v256 = v35;
            v263 = v110;
            v264 = v111;
            v108 = 64;
          }

          else if (v107 == 1)
          {
            v109 = vld1q_dup_s16(v106);
            v255 = v109;
            v256 = v109;
            v263 = v109;
            v264 = v109;
            v108 = 2;
          }

          else if (v83[3])
          {
            v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v255, 128, v106, v107, *v103.i8, *v35.i8);
          }

          else
          {
            v108 = 0;
            v109.i64[0] = 0;
            v255 = 0u;
            v256 = 0u;
            v263 = 0u;
            v264 = 0u;
          }

          v112 = v106 + v108;
          v113 = v83[4];
          if (v113 == 63)
          {
            v115 = *v112;
            v35 = *(v112 + 16);
            v116 = *(v112 + 32);
            v117 = *(v112 + 48);
            v241 = *v112;
            v242 = v35;
            v249 = v116;
            v250 = v117;
            v114 = 64;
          }

          else if (v113 == 1)
          {
            v115 = vld1q_dup_s16(v112);
            v241 = v115;
            v242 = v115;
            v249 = v115;
            v250 = v115;
            v114 = 2;
          }

          else if (v83[4])
          {
            v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v241, 128, v112, v113, *v109.i8, *v35.i8);
          }

          else
          {
            v114 = 0;
            v115.i64[0] = 0;
            v241 = 0u;
            v242 = 0u;
            v249 = 0u;
            v250 = 0u;
          }

          v118 = v112 + v114;
          v119 = v83[5];
          if (v119 == 63)
          {
            v121 = *v118;
            v35 = *(v118 + 16);
            v122 = *(v118 + 32);
            v123 = *(v118 + 48);
            v243 = *v118;
            v244 = v35;
            v251 = v122;
            v252 = v123;
            v120 = 64;
          }

          else if (v119 == 1)
          {
            v121 = vld1q_dup_s16(v118);
            v243 = v121;
            v244 = v121;
            v251 = v121;
            v252 = v121;
            v120 = 2;
          }

          else if (v83[5])
          {
            v120 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 128, v118, v119, *v115.i8, *v35.i8);
          }

          else
          {
            v120 = 0;
            v121.i64[0] = 0;
            v243 = 0u;
            v244 = 0u;
            v251 = 0u;
            v252 = 0u;
          }

          v124 = v118 + v120;
          v125 = v83[6];
          if (v125 == 63)
          {
            v127 = *v124;
            v35 = *(v124 + 16);
            v128 = *(v124 + 32);
            v129 = *(v124 + 48);
            v257 = *v124;
            v258 = v35;
            v265 = v128;
            v266 = v129;
            v126 = 64;
          }

          else if (v125 == 1)
          {
            v127 = vld1q_dup_s16(v124);
            v257 = v127;
            v258 = v127;
            v265 = v127;
            v266 = v127;
            v126 = 2;
          }

          else if (v83[6])
          {
            v126 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v257, 128, v124, v125, *v121.i8, *v35.i8);
          }

          else
          {
            v126 = 0;
            v127.i64[0] = 0;
            v257 = 0u;
            v258 = 0u;
            v265 = 0u;
            v266 = 0u;
          }

          v130 = v124 + v126;
          v131 = v83[7];
          if (v131 == 63)
          {
            v36 = *v130;
            v35 = *(v130 + 16);
            v133 = *(v130 + 32);
            v134 = *(v130 + 48);
            v259 = *v130;
            v260 = v35;
            v267 = v133;
            v268 = v134;
            v46 = v221;
            v88 = v44 + 1;
            v132 = v232;
            if (v232)
            {
              goto LABEL_172;
            }
          }

          else
          {
            v46 = v221;
            v88 = v44 + 1;
            if (v131 == 1)
            {
              v36 = vld1q_dup_s16(v130);
              v259 = v36;
              v260 = v36;
              v267 = v36;
              v268 = v36;
              v132 = v232;
              if (v232)
              {
                goto LABEL_172;
              }
            }

            else
            {
              if (v83[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v259, 128, v130, v131, *v127.i8, *v35.i8);
                v132 = v232;
                if (!v232)
                {
                  goto LABEL_202;
                }

LABEL_172:
                v135 = v233;
                if (!v233)
                {
                  goto LABEL_202;
                }

                v136 = 0;
                v137 = 16 * v231;
                v138 = &v237.i8[128 * v230 + v137];
                v139 = v228;
                v140 = v229;
                v141 = 16 * v233;
                if (16 * v233)
                {
                  v142 = (16 * v233 - 1) >> 32 == 0;
                }

                else
                {
                  v142 = 0;
                }

                v143 = !v142;
                v145 = v138 < &v228[v233] + v229 * (v132 - 1) && v228 < &__dst[128 * v132 + 384 + 128 * v230 + 16 * v233 + v137];
                v146 = v141 & 0x1FFFFFFE0;
                v147 = v143 | (v229 < 0) | v145;
                v148 = &v238.i8[128 * v230 + v137];
                v149 = (v228 + 1);
                v150 = v138;
                v151 = v228;
                while (2)
                {
                  v152 = v139 + v136 * v140;
                  v153 = &v138[128 * v136];
                  if (v147)
                  {
                    v154 = 0;
LABEL_189:
                    v155 = v154 + 1;
                    do
                    {
                      v156 = *v152++;
                      *v153++ = v156;
                    }

                    while (v141 > v155++);
LABEL_186:
                    ++v136;
                    v148 += 128;
                    v149 = (v149 + v140);
                    v151 = (v151 + v140);
                    v150 += 128;
                    if (v136 == v132)
                    {
                      goto LABEL_202;
                    }

                    continue;
                  }

                  break;
                }

                if (v135 == 1)
                {
                  v158 = 0;
                }

                else
                {
                  v163 = v149;
                  v164 = v148;
                  v165 = v141 & 0x1FFFFFFE0;
                  do
                  {
                    v36 = v163[-1];
                    v35 = *v163;
                    v164[-1] = v36;
                    *v164 = v35;
                    v164 += 2;
                    v163 += 2;
                    v165 -= 32;
                  }

                  while (v165);
                  if (v141 == v146)
                  {
                    goto LABEL_186;
                  }

                  v158 = v141 & 0x1FFFFFFE0;
                  if ((v135 & 1) == 0)
                  {
                    v152 += v146;
                    v153 += v146;
                    v154 = v141 & 0xFFFFFFE0;
                    goto LABEL_189;
                  }
                }

                v159 = -16 * v135 + v158;
                v160 = (v151 + v158);
                v161 = &v150[v158];
                do
                {
                  v162 = *v160++;
                  v36.i64[0] = v162;
                  *v161 = v162;
                  v161 += 16;
                  v159 += 16;
                }

                while (v159);
                goto LABEL_186;
              }

              v36.i64[0] = 0;
              v259 = 0u;
              v260 = 0u;
              v267 = 0u;
              v268 = 0u;
              v132 = v232;
              if (v232)
              {
                goto LABEL_172;
              }
            }
          }

LABEL_202:
          v166 = 0;
          v168 = v226;
          v167 = v227;
          v169 = v234;
          v170 = v235;
          if (v234)
          {
            result = v223;
            if (v235)
            {
              v36.i64[0] = v237.i64[0];
              v35 = v238;
              v171 = v245;
              v172 = v246;
              *v226 = v237;
              v168[1] = v35;
              v168[2] = v171;
              v168[3] = v172;
              v168 += 4;
              v166 = 63;
            }
          }

          else
          {
            result = v223;
          }

          *v167 = v166;
          if (v169 < 3 || v170 == 0)
          {
            v176 = 0;
          }

          else
          {
            v36.i64[0] = v239.i64[0];
            v35 = v240;
            v174 = v247;
            v175 = v248;
            *v168 = v239;
            v168[1] = v35;
            v168[2] = v174;
            v168[3] = v175;
            v168 += 4;
            v176 = 63;
          }

          v177 = 0;
          v167[1] = v176;
          if (v169 && v170 >= 3)
          {
            v36.i64[0] = v253.i64[0];
            v35 = v254;
            v178 = v261;
            v179 = v262;
            *v168 = v253;
            v168[1] = v35;
            v168[2] = v178;
            v168[3] = v179;
            v168 += 4;
            v177 = 63;
          }

          v180 = 0;
          v167[2] = v177;
          if (v169 >= 3 && v170 >= 3)
          {
            v36.i64[0] = v255.i64[0];
            v35 = v256;
            v181 = v263;
            v182 = v264;
            *v168 = v255;
            v168[1] = v35;
            v168[2] = v181;
            v168[3] = v182;
            v168 += 4;
            v180 = 63;
          }

          v183 = 0;
          v167[3] = v180;
          if (v169 >= 5 && v170)
          {
            v36.i64[0] = v241.i64[0];
            v35 = v242;
            v184 = v249;
            v185 = v250;
            *v168 = v241;
            v168[1] = v35;
            v168[2] = v184;
            v168[3] = v185;
            v168 += 4;
            v183 = 63;
          }

          v186 = 0;
          v167[4] = v183;
          if (v169 >= 7 && v170)
          {
            v36.i64[0] = v243.i64[0];
            v35 = v244;
            v187 = v251;
            v188 = v252;
            *v168 = v243;
            v168[1] = v35;
            v168[2] = v187;
            v168[3] = v188;
            v168 += 4;
            v186 = 63;
          }

          v189 = 0;
          v167[5] = v186;
          if (v169 >= 5 && v170 >= 3)
          {
            v36.i64[0] = v257.i64[0];
            v35 = v258;
            v190 = v265;
            v191 = v266;
            *v168 = v257;
            v168[1] = v35;
            v168[2] = v190;
            v168[3] = v191;
            v168 += 4;
            v189 = 63;
          }

          v192 = 0;
          v167[6] = v189;
          if (v169 >= 7 && v170 >= 3)
          {
            v36.i64[0] = v259.i64[0];
            v35 = v260;
            v193 = v267;
            v194 = v268;
            *v168 = v259;
            v168[1] = v35;
            v168[2] = v193;
            v168[3] = v194;
            v192 = 63;
          }

          v167[7] = v192;
          if (v224)
          {
            goto LABEL_231;
          }

LABEL_46:
          v22 = v44 == v213 >> 3;
          v44 = v88;
          v45 = v19 & v195;
        }

        while (!v22);
        v22 = v19++ == v201;
      }

      while (!v22);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v240 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v191 = a8;
  v17 = a8 >> 2;
  v173 = a8 + a10 - 1;
  v175 = v173 >> 2;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v192 = a1;
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
  v195 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v184 = result;
  if (v17 <= v175)
  {
    v183 = a7 + a9 - 1;
    v172 = a7 >> 3;
    if (a7 >> 3 <= v183 >> 3)
    {
      result = a1;
      v193 = (a5 - 1) >> 3;
      v169 = a5 - 1;
      v176 = (a5 - 1) & 7;
      v170 = (a6 - 1) & 3;
      v171 = (a6 - 1) >> 2;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v27.i8 = vcgt_u32(v26, 0xF00000007);
      v28 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v27.i8);
      v181 = v28;
      v182 = v28.i32[0] | v28.i32[1];
      v180 = v27.i64[0];
      v168 = 8 * v19 * v18;
      do
      {
        v29 = (4 * v17) | 3;
        if (4 * v17 <= v191)
        {
          v30 = v191;
        }

        else
        {
          v30 = 4 * v17;
        }

        if (v173 < v29)
        {
          v29 = v173;
        }

        v190 = 4 * v17;
        v179 = v30 - 4 * v17;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v170;
        v178 = v32;
        v34 = v32 != 4;
        v35 = v172;
        v36 = v170 + 1;
        if (v17 != v171)
        {
          v36 = 4;
          v33 = v34;
        }

        v177 = v33;
        v188 = a3 + (v30 - v191) * a11;
        v189 = v36;
        v187 = v36;
        do
        {
          v37 = 8 * v35;
          v38 = 8 * (v35 + 1) - 1;
          if (8 * v35 <= a7)
          {
            v39 = a7;
          }

          else
          {
            v39 = 8 * v35;
          }

          if (v183 < v38)
          {
            v38 = v183;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v35 == v193)
          {
            v42 = v176 + 1;
          }

          else
          {
            v42 = 8;
          }

          v43 = 1;
          if (v190 >= v191 && v37 >= a7)
          {
            v44 = v40 != v176;
            if (v35 != v193)
            {
              v44 = v41 != 8;
            }

            v43 = v44 || v177;
          }

          if (v184)
          {
            v65 = 0;
            v66 = v168 >> (*(result + 57) != 0);
            v67 = 1;
            if (v66 <= 63)
            {
              if (v66 > 15)
              {
                if (v66 == 16)
                {
                  v67 = 0;
                  v68 = 64;
                  v65 = 128;
                }

                else
                {
                  v68 = 0;
                  if (v66 == 32)
                  {
                    v67 = 0;
                    v65 = 64;
                    v68 = 64;
                  }
                }
              }

              else if (v66 == 4)
              {
                v67 = 0;
                v68 = 128;
                v65 = 256;
              }

              else
              {
                v68 = 0;
                if (v66 == 8)
                {
                  v67 = 0;
                  v65 = 128;
                  v68 = 128;
                }
              }
            }

            else if (v66 <= 255)
            {
              if (v66 == 64)
              {
                v67 = 0;
                v68 = 32;
                v65 = 64;
              }

              else
              {
                v68 = 0;
                if (v66 == 128)
                {
                  v67 = 0;
                  v65 = 32;
                  v68 = 32;
                }
              }
            }

            else if (v66 == 256)
            {
              v67 = 0;
              v68 = 16;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v67 = 0;
              v65 = 16;
              v68 = 16;
            }

            else
            {
              v68 = 0;
              if (v66 == 1024)
              {
                v67 = 0;
                v68 = 8;
                v65 = 16;
              }
            }

            v156 = (v65 >> 3) - 1;
            v157 = (v68 >> 2) - 1;
            if ((v67 & 1) != 0 || (v158 = 32 - __clz(~(-1 << -__clz(v156))), v159 = 32 - __clz(~(-1 << -__clz(v157))), !(v159 | v158)))
            {
              v167 = 0;
            }

            else
            {
              v160 = 0;
              v161 = 0;
              v162 = v35 & v156;
              v163 = v17 & v157;
              v164 = v159 != 0;
              v165 = v158 != 0;
              v166 = 1;
              do
              {
                --v159;
                if (v164)
                {
                  v161 |= (v166 & v163) << v160++;
                }

                else
                {
                  v159 = 0;
                }

                --v158;
                if (v165)
                {
                  v161 |= (v166 & v162) << v160++;
                }

                else
                {
                  v158 = 0;
                }

                v166 *= 2;
                --v160;
                v165 = v158 != 0;
                v164 = v159 != 0;
              }

              while (v158 | v159);
              v167 = v161 << 9;
              result = v192;
            }

            v52 = v167 + ((v37 / v65 + v190 / v68 * ((v65 + v169) / v65)) << 14);
          }

          else if (v182)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v49 = v180;
            v48 = BYTE4(v180);
            v50 = v181.i32[0];
            v51 = v181.i32[1];
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v17) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v35) << v45++;
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

          v53 = *(result + 128) >> (*(result + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 7;
          if (v54 < 0x10)
          {
            v55 = 0;
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 3) - 1)));
          }

          v56 = *(result + 132) >> (*(result + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 3;
          if (v57 < 8)
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
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 2) - 1)));
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
          v69 = (a4 + v64);
          v70 = a7;
          v71 = v188 + 16 * (v39 - a7);
          v72 = (a2 + v52);
          __src = (a2 + v52);
          if (v195)
          {
            if (!(v43 & 1 | (v42 < 8u) | (v187 < 4)))
            {
              v72 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v42, v189);
              goto LABEL_86;
            }

            v73 = v41;
            memcpy(__dst, __src, sizeof(__dst));
            v41 = v73;
            v72 = __dst;
            result = v192;
          }

          else if (!(v43 & 1 | (v42 < 8u) | (v187 < 4)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v197 = v72;
          v205 = v42;
          v206 = v189;
          v201 = v179;
          v202 = v39 - v37;
          v198 = v69;
          v199 = v71;
          v200 = a11;
          v203 = v178;
          v204 = v41;
          if ((v43 & 1) == 0)
          {
            v75 = *v69;
            a7 = v70;
            if (v75 == 63)
            {
              v77 = *v72;
              v27 = v72[1];
              v78 = v72[2];
              v79 = v72[3];
              v208 = *v72;
              v209 = v27;
              v216 = v78;
              v217 = v79;
              v76 = 64;
            }

            else if (v75 == 1)
            {
              v77 = vld1q_dup_s16(v72->i16);
              v208 = v77;
              v209 = v77;
              v216 = v77;
              v217 = v77;
              v76 = 2;
            }

            else if (*v69)
            {
              v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v208, 128, v72, v75, v28, *v27.i8);
            }

            else
            {
              v76 = 0;
              v77.i64[0] = 0;
              v208 = 0u;
              v209 = 0u;
              v216 = 0u;
              v217 = 0u;
            }

            v80 = v72->i64 + v76;
            v81 = v69[1];
            if (v81 == 63)
            {
              v83 = *v80;
              v27 = *(v80 + 16);
              v84 = *(v80 + 32);
              v85 = *(v80 + 48);
              v210 = *v80;
              v211 = v27;
              v218 = v84;
              v219 = v85;
              v82 = 64;
            }

            else if (v81 == 1)
            {
              v83 = vld1q_dup_s16(v80);
              v210 = v83;
              v211 = v83;
              v218 = v83;
              v219 = v83;
              v82 = 2;
            }

            else if (v69[1])
            {
              v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v210, 128, v80, v81, *v77.i8, *v27.i8);
            }

            else
            {
              v82 = 0;
              v83.i64[0] = 0;
              v210 = 0u;
              v211 = 0u;
              v218 = 0u;
              v219 = 0u;
            }

            v86 = v80 + v82;
            v87 = v69[2];
            if (v87 == 63)
            {
              v89 = *v86;
              v27 = *(v86 + 16);
              v90 = *(v86 + 32);
              v91 = *(v86 + 48);
              v224 = *v86;
              v225 = v27;
              v232 = v90;
              v233 = v91;
              v88 = 64;
            }

            else if (v87 == 1)
            {
              v89 = vld1q_dup_s16(v86);
              v224 = v89;
              v225 = v89;
              v232 = v89;
              v233 = v89;
              v88 = 2;
            }

            else if (v69[2])
            {
              v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v224, 128, v86, v87, *v83.i8, *v27.i8);
            }

            else
            {
              v88 = 0;
              v89.i64[0] = 0;
              v224 = 0u;
              v225 = 0u;
              v232 = 0u;
              v233 = 0u;
            }

            v92 = v86 + v88;
            v93 = v69[3];
            if (v93 == 63)
            {
              v95 = *v92;
              v27 = *(v92 + 16);
              v96 = *(v92 + 32);
              v97 = *(v92 + 48);
              v226 = *v92;
              v227 = v27;
              v234 = v96;
              v235 = v97;
              v94 = 64;
            }

            else if (v93 == 1)
            {
              v95 = vld1q_dup_s16(v92);
              v226 = v95;
              v227 = v95;
              v234 = v95;
              v235 = v95;
              v94 = 2;
            }

            else if (v69[3])
            {
              v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 128, v92, v93, *v89.i8, *v27.i8);
            }

            else
            {
              v94 = 0;
              v95.i64[0] = 0;
              v226 = 0u;
              v227 = 0u;
              v234 = 0u;
              v235 = 0u;
            }

            v98 = v92 + v94;
            v99 = v69[4];
            if (v99 == 63)
            {
              v101 = *v98;
              v27 = *(v98 + 16);
              v102 = *(v98 + 32);
              v103 = *(v98 + 48);
              v212 = *v98;
              v213 = v27;
              v220 = v102;
              v221 = v103;
              v100 = 64;
            }

            else if (v99 == 1)
            {
              v101 = vld1q_dup_s16(v98);
              v212 = v101;
              v213 = v101;
              v220 = v101;
              v221 = v101;
              v100 = 2;
            }

            else if (v69[4])
            {
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v212, 128, v98, v99, *v95.i8, *v27.i8);
            }

            else
            {
              v100 = 0;
              v101.i64[0] = 0;
              v212 = 0u;
              v213 = 0u;
              v220 = 0u;
              v221 = 0u;
            }

            v104 = v98 + v100;
            v105 = v69[5];
            if (v105 == 63)
            {
              v107 = *v104;
              v27 = *(v104 + 16);
              v108 = *(v104 + 32);
              v109 = *(v104 + 48);
              v214 = *v104;
              v215 = v27;
              v222 = v108;
              v223 = v109;
              v106 = 64;
            }

            else if (v105 == 1)
            {
              v107 = vld1q_dup_s16(v104);
              v214 = v107;
              v215 = v107;
              v222 = v107;
              v223 = v107;
              v106 = 2;
            }

            else if (v69[5])
            {
              v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v214, 128, v104, v105, *v101.i8, *v27.i8);
            }

            else
            {
              v106 = 0;
              v107.i64[0] = 0;
              v214 = 0u;
              v215 = 0u;
              v222 = 0u;
              v223 = 0u;
            }

            v110 = v104 + v106;
            v111 = v69[6];
            if (v111 == 63)
            {
              v113 = *v110;
              v27 = *(v110 + 16);
              v114 = *(v110 + 32);
              v115 = *(v110 + 48);
              v228 = *v110;
              v229 = v27;
              v236 = v114;
              v237 = v115;
              v112 = 64;
            }

            else if (v111 == 1)
            {
              v113 = vld1q_dup_s16(v110);
              v228 = v113;
              v229 = v113;
              v236 = v113;
              v237 = v113;
              v112 = 2;
            }

            else if (v69[6])
            {
              v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 128, v110, v111, *v107.i8, *v27.i8);
            }

            else
            {
              v112 = 0;
              v113.i64[0] = 0;
              v228 = 0u;
              v229 = 0u;
              v236 = 0u;
              v237 = 0u;
            }

            v116 = v110 + v112;
            v117 = v69[7];
            if (v117 == 63)
            {
              v120 = *(v116 + 16);
              v121 = *(v116 + 32);
              v122 = *(v116 + 48);
              v230 = *v116;
              v231 = v120;
              v238 = v121;
              v239 = v122;
              v74 = v35 + 1;
              v118 = v203;
              if (v203)
              {
                goto LABEL_147;
              }
            }

            else
            {
              v74 = v35 + 1;
              if (v117 != 1)
              {
                if (v69[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 128, v116, v117, *v113.i8, *v27.i8);
                  v118 = v203;
                  if (!v203)
                  {
                    goto LABEL_177;
                  }
                }

                else
                {
                  v230 = 0u;
                  v231 = 0u;
                  v238 = 0u;
                  v239 = 0u;
                  v118 = v203;
                  if (!v203)
                  {
                    goto LABEL_177;
                  }
                }

LABEL_147:
                v123 = v204;
                if (!v204)
                {
                  goto LABEL_177;
                }

                v124 = 0;
                v125 = v201 << 7;
                v126 = 16 * v202;
                v127 = &v208.i8[v125 + v126];
                v128 = v199;
                v129 = v200;
                v130 = 16 * v204;
                if (16 * v204)
                {
                  v131 = (16 * v204 - 1) >> 32 == 0;
                }

                else
                {
                  v131 = 0;
                }

                v132 = !v131;
                v134 = v127 < v199 + v200 * (v118 - 1) + 16 * v204 && v199 < &__dst[128 * v118 + 384 + 128 * v201 + 16 * v204 + v126];
                v135 = v130 & 0x1FFFFFFE0;
                v136 = v132 | (v200 < 0) | v134;
                v137 = &v209.i8[v125 + v126];
                v138 = (v199 + 16);
                v139 = v127;
                v140 = v199;
                while (2)
                {
                  v141 = (v128 + v124 * v129);
                  v142 = &v127[128 * v124];
                  if (v136)
                  {
                    v143 = 0;
LABEL_164:
                    v144 = v143 + 1;
                    do
                    {
                      v145 = *v141++;
                      *v142++ = v145;
                    }

                    while (v130 > v144++);
LABEL_161:
                    ++v124;
                    v137 += 128;
                    v138 = (v138 + v129);
                    v140 += v129;
                    v139 += 128;
                    if (v124 == v118)
                    {
                      goto LABEL_177;
                    }

                    continue;
                  }

                  break;
                }

                if (v123 == 1)
                {
                  v147 = 0;
                }

                else
                {
                  v152 = v138;
                  v153 = v137;
                  v154 = v130 & 0x1FFFFFFE0;
                  do
                  {
                    v155 = *v152;
                    *(v153 - 1) = *(v152 - 1);
                    *v153 = v155;
                    v153 += 32;
                    v152 += 2;
                    v154 -= 32;
                  }

                  while (v154);
                  if (v130 == v135)
                  {
                    goto LABEL_161;
                  }

                  v147 = v130 & 0x1FFFFFFE0;
                  if ((v123 & 1) == 0)
                  {
                    v141 += v135;
                    v142 += v135;
                    v143 = v130 & 0xFFFFFFE0;
                    goto LABEL_164;
                  }
                }

                v148 = -16 * v123 + v147;
                v149 = (v140 + v147);
                v150 = &v139[v147];
                do
                {
                  v151 = *v149++;
                  *v150 = v151;
                  v150 += 16;
                  v148 += 16;
                }

                while (v148);
                goto LABEL_161;
              }

              v119 = vld1q_dup_s16(v116);
              v230 = v119;
              v231 = v119;
              v238 = v119;
              v239 = v119;
              v118 = v203;
              if (v203)
              {
                goto LABEL_147;
              }
            }

LABEL_177:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v208, 128, v197, v198, v205, v206);
            if (!v195)
            {
              goto LABEL_26;
            }

            goto LABEL_178;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v70;
          v74 = v35 + 1;
          if (!v195)
          {
            goto LABEL_26;
          }

LABEL_178:
          memcpy(__src, v72, 0x200uLL);
LABEL_26:
          v21 = v35 == v183 >> 3;
          v35 = v74;
          result = v192;
        }

        while (!v21);
        v21 = v17++ == v175;
      }

      while (!v21);
    }
  }

  return result;
}

void *AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v16 = a1;
  v266 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v217 = a8;
  v17 = a8 >> 2;
  v198 = a8 + a10 - 1;
  v200 = v198 >> 2;
  v18 = *(*(v16 + 208) + 88);
  v19 = *(v16 + 112);
  if (*(v16 + 168))
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
  v221 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v16, *(v16 + 144) + a12);
  v210 = result;
  if (v17 <= v200)
  {
    v209 = a7 + a9 - 1;
    v197 = a7 >> 3;
    if (a7 >> 3 <= v209 >> 3)
    {
      v219 = (a5 - 1) >> 3;
      v194 = a5 - 1;
      v202 = (a5 - 1) & 7;
      v195 = (a6 - 1) & 3;
      v196 = (a6 - 1) >> 2;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v27.i8 = vcgt_u32(v26, 0xF00000007);
      *v28.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v27.i8);
      v207 = v28.i64[0];
      v208 = v28.i32[0] | v28.i32[1];
      v206 = v27.i64[0];
      v193 = 8 * v19 * v18;
      v218 = v16;
      do
      {
        v29 = (4 * v17) | 3;
        if (4 * v17 <= v217)
        {
          v30 = v217;
        }

        else
        {
          v30 = 4 * v17;
        }

        if (v198 < v29)
        {
          v29 = v198;
        }

        v216 = 4 * v17;
        v205 = v30 - 4 * v17;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v195;
        v204 = v32;
        v34 = v32 != 4;
        v35 = v197;
        v36 = v195 + 1;
        if (v17 != v196)
        {
          v36 = 4;
          v33 = v34;
        }

        v203 = v33;
        v214 = a3 + (v30 - v217) * a11;
        v215 = v36;
        v213 = v36;
        do
        {
          v37 = 8 * v35;
          v38 = 8 * (v35 + 1) - 1;
          if (8 * v35 <= a7)
          {
            v39 = a7;
          }

          else
          {
            v39 = 8 * v35;
          }

          if (v209 < v38)
          {
            v38 = v209;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v35 == v219)
          {
            v42 = v202 + 1;
          }

          else
          {
            v42 = 8;
          }

          v43 = 1;
          if (v216 >= v217 && v37 >= a7)
          {
            v44 = v40 != v202;
            if (v35 != v219)
            {
              v44 = v41 != 8;
            }

            v43 = v44 || v203;
          }

          if (v210)
          {
            v65 = 0;
            v66 = v193 >> (*(v16 + 57) != 0);
            v67 = 1;
            if (v66 <= 63)
            {
              if (v66 > 15)
              {
                if (v66 == 16)
                {
                  v67 = 0;
                  v68 = 64;
                  v65 = 128;
                }

                else
                {
                  v68 = 0;
                  if (v66 == 32)
                  {
                    v67 = 0;
                    v65 = 64;
                    v68 = 64;
                  }
                }
              }

              else if (v66 == 4)
              {
                v67 = 0;
                v68 = 128;
                v65 = 256;
              }

              else
              {
                v68 = 0;
                if (v66 == 8)
                {
                  v67 = 0;
                  v65 = 128;
                  v68 = 128;
                }
              }
            }

            else if (v66 <= 255)
            {
              if (v66 == 64)
              {
                v67 = 0;
                v68 = 32;
                v65 = 64;
              }

              else
              {
                v68 = 0;
                if (v66 == 128)
                {
                  v67 = 0;
                  v65 = 32;
                  v68 = 32;
                }
              }
            }

            else if (v66 == 256)
            {
              v67 = 0;
              v68 = 16;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v67 = 0;
              v65 = 16;
              v68 = 16;
            }

            else
            {
              v68 = 0;
              if (v66 == 1024)
              {
                v67 = 0;
                v68 = 8;
                v65 = 16;
              }
            }

            v181 = (v65 >> 3) - 1;
            v182 = (v68 >> 2) - 1;
            if ((v67 & 1) != 0 || (v183 = 32 - __clz(~(-1 << -__clz(v181))), v184 = 32 - __clz(~(-1 << -__clz(v182))), !(v184 | v183)))
            {
              v192 = 0;
            }

            else
            {
              v185 = 0;
              v186 = 0;
              v187 = v35 & v181;
              v188 = v17 & v182;
              v189 = v184 != 0;
              v190 = v183 != 0;
              v191 = 1;
              do
              {
                --v184;
                if (v189)
                {
                  v186 |= (v191 & v188) << v185++;
                }

                else
                {
                  v184 = 0;
                }

                --v183;
                if (v190)
                {
                  v186 |= (v191 & v187) << v185++;
                }

                else
                {
                  v183 = 0;
                }

                v191 *= 2;
                --v185;
                v190 = v183 != 0;
                v189 = v184 != 0;
              }

              while (v183 | v184);
              v192 = v186 << 9;
            }

            v52 = v192 + ((v37 / v65 + v216 / v68 * ((v65 + v194) / v65)) << 14);
          }

          else if (v208)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v49 = v206;
            v48 = BYTE4(v206);
            v50 = v207;
            v51 = HIDWORD(v207);
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v17) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v35) << v45++;
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

          v53 = *(v16 + 128) >> (*(v16 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 7;
          if (v54 < 0x10)
          {
            v55 = 0;
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 3) - 1)));
          }

          v56 = *(v16 + 132) >> (*(v16 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 3;
          if (v57 < 8)
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
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 2) - 1)));
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
          v69 = (a4 + v64);
          v70 = a7;
          v71 = (v214 + 16 * (v39 - a7));
          v220 = (a2 + v52);
          if (v221)
          {
            v72 = __dst;
            if (!(v43 & 1 | (v42 < 8u) | (v213 < 4)))
            {
              goto LABEL_84;
            }

            v201 = (a4 + v64);
            v73 = v42;
            memcpy(__dst, (a2 + v52), sizeof(__dst));
            v37 = 8 * v35;
            LOBYTE(v42) = v73;
            v69 = v201;
          }

          else
          {
            v72 = (a2 + v52);
            if (!(v43 & 1 | (v42 < 8u) | (v213 < 4)))
            {
LABEL_84:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v42, v215);
              a7 = v70;
              v16 = v218;
LABEL_85:
              v74 = v35 + 1;
              result = v220;
              if (!v221)
              {
                goto LABEL_26;
              }

LABEL_205:
              result = memcpy(result, v72, 0x200uLL);
              goto LABEL_26;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          v16 = v218;
          block[4] = v218;
          v223 = v72;
          v231 = v42;
          v232 = v215;
          v227 = v205;
          v228 = v39 - v37;
          v224 = v69;
          v225 = v71;
          v226 = a11;
          v229 = v204;
          v230 = v41;
          if (v43)
          {
            dispatch_sync(*(*(v218 + 8) + 16552), block);
            a7 = v70;
            goto LABEL_85;
          }

          v75 = *v69;
          a7 = v70;
          if (v75 == 63)
          {
            v77 = *v72;
            v27 = v72[1];
            v78 = v72[2];
            v79 = v72[3];
            v234 = *v72;
            v235 = v27;
            v242 = v78;
            v243 = v79;
            v76 = 64;
          }

          else if (v75 == 1)
          {
            v77 = vld1q_dup_s16(v72->i16);
            v234 = v77;
            v235 = v77;
            v242 = v77;
            v243 = v77;
            v76 = 2;
          }

          else if (*v69)
          {
            v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 128, v72, v75, *v28.i8, *v27.i8);
          }

          else
          {
            v76 = 0;
            v77.i64[0] = 0;
            v234 = 0u;
            v235 = 0u;
            v242 = 0u;
            v243 = 0u;
          }

          v80 = v72->i64 + v76;
          v81 = v69[1];
          if (v81 == 63)
          {
            v83 = *v80;
            v27 = *(v80 + 16);
            v84 = *(v80 + 32);
            v85 = *(v80 + 48);
            v236 = *v80;
            v237 = v27;
            v244 = v84;
            v245 = v85;
            v82 = 64;
          }

          else if (v81 == 1)
          {
            v83 = vld1q_dup_s16(v80);
            v236 = v83;
            v237 = v83;
            v244 = v83;
            v245 = v83;
            v82 = 2;
          }

          else if (v69[1])
          {
            v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v236, 128, v80, v81, *v77.i8, *v27.i8);
          }

          else
          {
            v82 = 0;
            v83.i64[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v244 = 0u;
            v245 = 0u;
          }

          v86 = v80 + v82;
          v87 = v69[2];
          if (v87 == 63)
          {
            v89 = *v86;
            v27 = *(v86 + 16);
            v90 = *(v86 + 32);
            v91 = *(v86 + 48);
            v250 = *v86;
            v251 = v27;
            v258 = v90;
            v259 = v91;
            v88 = 64;
          }

          else if (v87 == 1)
          {
            v89 = vld1q_dup_s16(v86);
            v250 = v89;
            v251 = v89;
            v258 = v89;
            v259 = v89;
            v88 = 2;
          }

          else if (v69[2])
          {
            v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 128, v86, v87, *v83.i8, *v27.i8);
          }

          else
          {
            v88 = 0;
            v89.i64[0] = 0;
            v250 = 0u;
            v251 = 0u;
            v258 = 0u;
            v259 = 0u;
          }

          v92 = v86 + v88;
          v93 = v69[3];
          if (v93 == 63)
          {
            v95 = *v92;
            v27 = *(v92 + 16);
            v96 = *(v92 + 32);
            v97 = *(v92 + 48);
            v252 = *v92;
            v253 = v27;
            v260 = v96;
            v261 = v97;
            v94 = 64;
          }

          else if (v93 == 1)
          {
            v95 = vld1q_dup_s16(v92);
            v252 = v95;
            v253 = v95;
            v260 = v95;
            v261 = v95;
            v94 = 2;
          }

          else if (v69[3])
          {
            v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 128, v92, v93, *v89.i8, *v27.i8);
          }

          else
          {
            v94 = 0;
            v95.i64[0] = 0;
            v252 = 0u;
            v253 = 0u;
            v260 = 0u;
            v261 = 0u;
          }

          v98 = v92 + v94;
          v99 = v69[4];
          if (v99 == 63)
          {
            v101 = *v98;
            v27 = *(v98 + 16);
            v102 = *(v98 + 32);
            v103 = *(v98 + 48);
            v238 = *v98;
            v239 = v27;
            v246 = v102;
            v247 = v103;
            v100 = 64;
          }

          else if (v99 == 1)
          {
            v101 = vld1q_dup_s16(v98);
            v238 = v101;
            v239 = v101;
            v246 = v101;
            v247 = v101;
            v100 = 2;
          }

          else if (v69[4])
          {
            v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 128, v98, v99, *v95.i8, *v27.i8);
          }

          else
          {
            v100 = 0;
            v101.i64[0] = 0;
            v238 = 0u;
            v239 = 0u;
            v246 = 0u;
            v247 = 0u;
          }

          v104 = v98 + v100;
          v105 = v69[5];
          if (v105 == 63)
          {
            v107 = *v104;
            v27 = *(v104 + 16);
            v108 = *(v104 + 32);
            v109 = *(v104 + 48);
            v240 = *v104;
            v241 = v27;
            v248 = v108;
            v249 = v109;
            v106 = 64;
          }

          else if (v105 == 1)
          {
            v107 = vld1q_dup_s16(v104);
            v240 = v107;
            v241 = v107;
            v248 = v107;
            v249 = v107;
            v106 = 2;
          }

          else if (v69[5])
          {
            v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v240, 128, v104, v105, *v101.i8, *v27.i8);
          }

          else
          {
            v106 = 0;
            v107.i64[0] = 0;
            v240 = 0u;
            v241 = 0u;
            v248 = 0u;
            v249 = 0u;
          }

          v110 = v104 + v106;
          v111 = v69[6];
          if (v111 == 63)
          {
            v113 = *v110;
            v27 = *(v110 + 16);
            v114 = *(v110 + 32);
            v115 = *(v110 + 48);
            v254 = *v110;
            v255 = v27;
            v262 = v114;
            v263 = v115;
            v112 = 64;
          }

          else if (v111 == 1)
          {
            v113 = vld1q_dup_s16(v110);
            v254 = v113;
            v255 = v113;
            v262 = v113;
            v263 = v113;
            v112 = 2;
          }

          else if (v69[6])
          {
            v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 128, v110, v111, *v107.i8, *v27.i8);
          }

          else
          {
            v112 = 0;
            v113.i64[0] = 0;
            v254 = 0u;
            v255 = 0u;
            v262 = 0u;
            v263 = 0u;
          }

          v116 = v110 + v112;
          v117 = v69[7];
          if (v117 == 63)
          {
            v28 = *v116;
            v27 = *(v116 + 16);
            v119 = *(v116 + 32);
            v120 = *(v116 + 48);
            v256 = *v116;
            v257 = v27;
            v264 = v119;
            v265 = v120;
            v16 = v218;
            v74 = v35 + 1;
            v118 = v229;
            if (v229)
            {
              goto LABEL_146;
            }
          }

          else
          {
            v16 = v218;
            v74 = v35 + 1;
            if (v117 == 1)
            {
              v28 = vld1q_dup_s16(v116);
              v256 = v28;
              v257 = v28;
              v264 = v28;
              v265 = v28;
              v118 = v229;
              if (v229)
              {
                goto LABEL_146;
              }
            }

            else
            {
              if (v69[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v256, 128, v116, v117, *v113.i8, *v27.i8);
                v118 = v229;
                if (!v229)
                {
                  goto LABEL_176;
                }

LABEL_146:
                v121 = v230;
                if (!v230)
                {
                  goto LABEL_176;
                }

                v122 = 0;
                v123 = 16 * v228;
                v124 = &v234.i8[128 * v227 + v123];
                v125 = v225;
                v126 = v226;
                v127 = 16 * v230;
                if (16 * v230)
                {
                  v128 = (16 * v230 - 1) >> 32 == 0;
                }

                else
                {
                  v128 = 0;
                }

                v129 = !v128;
                v131 = v124 < &v225[v230] + v226 * (v118 - 1) && v225 < &__dst[128 * v118 + 384 + 128 * v227 + 16 * v230 + v123];
                v132 = v127 & 0x1FFFFFFE0;
                v133 = v129 | (v226 < 0) | v131;
                v134 = &v235.i8[128 * v227 + v123];
                v135 = (v225 + 1);
                v136 = v124;
                v137 = v225;
                while (2)
                {
                  v138 = v125 + v122 * v126;
                  v139 = &v124[128 * v122];
                  if (v133)
                  {
                    v140 = 0;
LABEL_163:
                    v141 = v140 + 1;
                    do
                    {
                      v142 = *v138++;
                      *v139++ = v142;
                    }

                    while (v127 > v141++);
LABEL_160:
                    ++v122;
                    v134 += 128;
                    v135 = (v135 + v126);
                    v137 = (v137 + v126);
                    v136 += 128;
                    if (v122 == v118)
                    {
                      goto LABEL_176;
                    }

                    continue;
                  }

                  break;
                }

                if (v121 == 1)
                {
                  v144 = 0;
                }

                else
                {
                  v149 = v135;
                  v150 = v134;
                  v151 = v127 & 0x1FFFFFFE0;
                  do
                  {
                    v28 = v149[-1];
                    v27 = *v149;
                    v150[-1] = v28;
                    *v150 = v27;
                    v150 += 2;
                    v149 += 2;
                    v151 -= 32;
                  }

                  while (v151);
                  if (v127 == v132)
                  {
                    goto LABEL_160;
                  }

                  v144 = v127 & 0x1FFFFFFE0;
                  if ((v121 & 1) == 0)
                  {
                    v138 += v132;
                    v139 += v132;
                    v140 = v127 & 0xFFFFFFE0;
                    goto LABEL_163;
                  }
                }

                v145 = -16 * v121 + v144;
                v146 = (v137 + v144);
                v147 = &v136[v144];
                do
                {
                  v148 = *v146++;
                  v28.i64[0] = v148;
                  *v147 = v148;
                  v147 += 16;
                  v145 += 16;
                }

                while (v145);
                goto LABEL_160;
              }

              v28.i64[0] = 0;
              v256 = 0u;
              v257 = 0u;
              v264 = 0u;
              v265 = 0u;
              v118 = v229;
              if (v229)
              {
                goto LABEL_146;
              }
            }
          }

LABEL_176:
          v152 = 0;
          v154 = v223;
          v153 = v224;
          v155 = v231;
          v156 = v232;
          if (v231)
          {
            result = v220;
            if (v232)
            {
              v28.i64[0] = v234.i64[0];
              v27 = v235;
              v157 = v242;
              v158 = v243;
              *v223 = v234;
              v154[1] = v27;
              v154[2] = v157;
              v154[3] = v158;
              v154 += 4;
              v152 = 63;
            }
          }

          else
          {
            result = v220;
          }

          *v153 = v152;
          if (v155 < 3 || v156 == 0)
          {
            v162 = 0;
          }

          else
          {
            v28.i64[0] = v236.i64[0];
            v27 = v237;
            v160 = v244;
            v161 = v245;
            *v154 = v236;
            v154[1] = v27;
            v154[2] = v160;
            v154[3] = v161;
            v154 += 4;
            v162 = 63;
          }

          v163 = 0;
          v153[1] = v162;
          if (v155 && v156 >= 3)
          {
            v28.i64[0] = v250.i64[0];
            v27 = v251;
            v164 = v258;
            v165 = v259;
            *v154 = v250;
            v154[1] = v27;
            v154[2] = v164;
            v154[3] = v165;
            v154 += 4;
            v163 = 63;
          }

          v166 = 0;
          v153[2] = v163;
          if (v155 >= 3 && v156 >= 3)
          {
            v28.i64[0] = v252.i64[0];
            v27 = v253;
            v167 = v260;
            v168 = v261;
            *v154 = v252;
            v154[1] = v27;
            v154[2] = v167;
            v154[3] = v168;
            v154 += 4;
            v166 = 63;
          }

          v169 = 0;
          v153[3] = v166;
          if (v155 >= 5 && v156)
          {
            v28.i64[0] = v238.i64[0];
            v27 = v239;
            v170 = v246;
            v171 = v247;
            *v154 = v238;
            v154[1] = v27;
            v154[2] = v170;
            v154[3] = v171;
            v154 += 4;
            v169 = 63;
          }

          v172 = 0;
          v153[4] = v169;
          if (v155 >= 7 && v156)
          {
            v28.i64[0] = v240.i64[0];
            v27 = v241;
            v173 = v248;
            v174 = v249;
            *v154 = v240;
            v154[1] = v27;
            v154[2] = v173;
            v154[3] = v174;
            v154 += 4;
            v172 = 63;
          }

          v175 = 0;
          v153[5] = v172;
          if (v155 >= 5 && v156 >= 3)
          {
            v28.i64[0] = v254.i64[0];
            v27 = v255;
            v176 = v262;
            v177 = v263;
            *v154 = v254;
            v154[1] = v27;
            v154[2] = v176;
            v154[3] = v177;
            v154 += 4;
            v175 = 63;
          }

          v178 = 0;
          v153[6] = v175;
          if (v155 >= 7 && v156 >= 3)
          {
            v28.i64[0] = v256.i64[0];
            v27 = v257;
            v179 = v264;
            v180 = v265;
            *v154 = v256;
            v154[1] = v27;
            v154[2] = v179;
            v154[3] = v180;
            v178 = 63;
          }

          v153[7] = v178;
          if (v221)
          {
            goto LABEL_205;
          }

LABEL_26:
          v21 = v35 == v209 >> 3;
          v35 = v74;
        }

        while (!v21);
        v21 = v17++ == v200;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v299 = v21;
  v300 = v22;
  v284 = v23;
  v24 = v12;
  v451 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v306 = v14;
  v286 = v14 + a10 - 1;
  v307 = v24;
  if (*(v24 + 168))
  {
    v25 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v25 = 0;
  }

  v26 = v14 >> 2;
  v27 = v20 - 1;
  v28 = v18 - 1;
  v285 = v286 >> 2;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v310 = v32;
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
      v298 = 0;
LABEL_32:
      v295 = v35 - 3;
      v289 = v34 - 2;
      v41 = -1 << *(*(v24 + 208) + 48);
      v283 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v298 = v40 >= v34;
    goto LABEL_32;
  }

  v298 = 0;
  v283 = 0;
  v289 = 0;
  v295 = 0;
LABEL_33:
  if (v26 <= v285)
  {
    v297 = v16 + a9 - 1;
    v282 = v16 >> 3;
    if (v16 >> 3 <= v297 >> 3)
    {
      v308 = v27 >> 3;
      v290 = v27 & 7;
      v280 = v28 & 3;
      v281 = v28 >> 2;
      v279 = ~(-1 << v289);
      v42 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v43 = vcgt_u32(v42, 0xF00000007);
      v288 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v42, 0xFFFFFFFDFFFFFFFELL), -1))))))), v43);
      v287 = v43;
      v296 = v16;
      do
      {
        v44 = (4 * v26) | 3;
        if (4 * v26 <= v306)
        {
          v45 = v306;
        }

        else
        {
          v45 = 4 * v26;
        }

        if (v286 < v44)
        {
          v44 = v286;
        }

        v305 = 4 * v26;
        v294 = v45 - 4 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v280;
        v293 = v47;
        v49 = v47 != 4;
        v50 = v280 + 1;
        if (v26 != v281)
        {
          v50 = 4;
          v48 = v49;
        }

        v292 = v48;
        v51 = v282;
        v291 = (v26 >> v289) * v283;
        v52 = v26 & v279;
        v303 = v284 + (v45 - v306) * a11;
        v304 = v50;
        v302 = v50;
        v301 = v26 & v279;
        do
        {
          v53 = 8 * v51;
          v54 = 8 * (v51 + 1) - 1;
          if (8 * v51 <= v16)
          {
            v55 = v16;
          }

          else
          {
            v55 = 8 * v51;
          }

          if (v297 < v54)
          {
            v54 = v297;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v308)
          {
            v58 = v290 + 1;
          }

          else
          {
            v58 = 8;
          }

          v59 = 1;
          if (v305 >= v306 && v53 >= v16)
          {
            v60 = v56 != v290;
            if (v51 != v308)
            {
              v60 = v57 != 8;
            }

            v59 = v60 || v292;
          }

          if (v298)
          {
            if (v295 | v289)
            {
              v61 = 0;
              v62 = 0;
              v63 = 1;
              v64 = v289 != 0;
              v65 = v295 != 0;
              v66 = v289;
              v67 = v295;
              do
              {
                --v66;
                if (v64)
                {
                  v62 |= (v52 & v63) << v61++;
                }

                else
                {
                  v66 = 0;
                }

                --v67;
                if (v65)
                {
                  v62 |= (v51 & ~(-1 << v295) & v63) << v61++;
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

            v76 = v68 + *(result + 336) * ((v51 >> v295) + v291);
          }

          else if (v288)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v287.i8[0];
            v73 = v287.i8[4];
            v74 = v288.i32[0];
            v75 = v288.i32[1];
            do
            {
              --v74;
              if (v72)
              {
                v70 |= (v71 & v26) << v69++;
              }

              else
              {
                v74 = 0;
              }

              --v75;
              if (v73)
              {
                v70 |= (v71 & v51) << v69++;
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

          v78 = v77 + 7;
          if (v78 < 0x10)
          {
            v79 = 0;
          }

          else
          {
            v79 = 32 - __clz(~(-1 << -__clz((v78 >> 3) - 1)));
          }

          v80 = *(result + 132) >> (*(result + 144) + a12);
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = v80 + 3;
          if (v81 < 8)
          {
            v82 = 0;
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 2) - 1)));
          }

          if (v82 | v79)
          {
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
          }

          else
          {
            v88 = 0;
          }

          v89 = (v300 + v88);
          v90 = v303 + ((v55 - v16) << 6);
          v309 = (v299 + v76);
          if (v310)
          {
            v91 = __dst;
            if (!(v59 & 1 | (v58 < 8u) | (v302 < 4)))
            {
              goto LABEL_109;
            }

            v92 = (v300 + v88);
            v93 = v58;
            v94 = v59;
            v95 = v26;
            v96 = v55;
            memcpy(__dst, (v299 + v76), sizeof(__dst));
            v55 = v96;
            v26 = v95;
            v59 = v94;
            LOBYTE(v58) = v93;
            v89 = v92;
            result = v307;
          }

          else
          {
            v91 = (v299 + v76);
            if (!(v59 & 1 | (v58 < 8u) | (v302 < 4)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v90, a11, v91, v89, v58, v304);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v97 = v55 - v53;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v312 = v91;
          v320 = v58;
          v321 = v304;
          v316 = v294;
          v317 = v55 - v53;
          v313 = v89;
          v314 = v90;
          v315 = a11;
          v318 = v293;
          v319 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            v16 = v296;
            v98 = v51 + 1;
            v52 = v301;
            goto LABEL_192;
          }

          v99 = *v89;
          v16 = v296;
          if (v99 == 255)
          {
            v102 = *(v91 + 1);
            v103 = *(v91 + 2);
            v104 = *(v91 + 3);
            v105 = *(v91 + 4);
            v106 = *(v91 + 5);
            v107 = *(v91 + 6);
            v108 = *(v91 + 7);
            v109 = *(v91 + 8);
            v110 = *(v91 + 9);
            v111 = *(v91 + 10);
            v112 = *(v91 + 11);
            v113 = *(v91 + 12);
            v114 = *(v91 + 13);
            v115 = *(v91 + 14);
            v116 = *(v91 + 15);
            v323 = *v91;
            v324 = v102;
            v325 = v103;
            v326 = v104;
            v327 = v105;
            v328 = v106;
            v329 = v107;
            v330 = v108;
            v355 = v109;
            v356 = v110;
            v357 = v111;
            v358 = v112;
            v100 = 256;
            v359 = v113;
            v360 = v114;
            v361 = v115;
            v362 = v116;
            v98 = v51 + 1;
            v52 = v301;
          }

          else
          {
            v98 = v51 + 1;
            v52 = v301;
            if (v99 == 7)
            {
              v101 = vld1q_dup_f64(v91);
              v323 = v101;
              v324 = v101;
              v325 = v101;
              v326 = v101;
              v327 = v101;
              v328 = v101;
              v329 = v101;
              v330 = v101;
              v355 = v101;
              v356 = v101;
              v357 = v101;
              v358 = v101;
              v359 = v101;
              v360 = v101;
              v100 = 8;
              v361 = v101;
              v362 = v101;
            }

            else if (*v89)
            {
              v117 = v89;
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v323, 512, v91, v99);
              v89 = v117;
            }

            else
            {
              v100 = 0;
              v330 = 0u;
              v329 = 0u;
              v328 = 0u;
              v327 = 0u;
              v326 = 0u;
              v325 = 0u;
              v324 = 0u;
              v323 = 0u;
              v355 = 0u;
              v356 = 0u;
              v357 = 0u;
              v358 = 0u;
              v359 = 0u;
              v360 = 0u;
              v361 = 0u;
              v362 = 0u;
            }
          }

          v118 = &v91[v100];
          v119 = v89[1];
          if (v119 == 255)
          {
            v122 = *(v118 + 16);
            v123 = *(v118 + 32);
            v124 = *(v118 + 48);
            v125 = *(v118 + 64);
            v126 = *(v118 + 80);
            v127 = *(v118 + 96);
            v128 = *(v118 + 112);
            v129 = *(v118 + 128);
            v130 = *(v118 + 144);
            v131 = *(v118 + 160);
            v132 = *(v118 + 176);
            v133 = *(v118 + 192);
            v134 = *(v118 + 208);
            v135 = *(v118 + 224);
            v136 = *(v118 + 240);
            v331 = *v118;
            v332 = v122;
            v333 = v123;
            v334 = v124;
            v335 = v125;
            v336 = v126;
            v337 = v127;
            v338 = v128;
            v363 = v129;
            v364 = v130;
            v365 = v131;
            v366 = v132;
            v120 = 256;
            v367 = v133;
            v368 = v134;
            v369 = v135;
            v370 = v136;
          }

          else if (v119 == 7)
          {
            v121 = vld1q_dup_f64(v118);
            v331 = v121;
            v332 = v121;
            v333 = v121;
            v334 = v121;
            v335 = v121;
            v336 = v121;
            v337 = v121;
            v338 = v121;
            v363 = v121;
            v364 = v121;
            v365 = v121;
            v366 = v121;
            v367 = v121;
            v368 = v121;
            v120 = 8;
            v369 = v121;
            v370 = v121;
          }

          else if (v89[1])
          {
            v137 = v89;
            v120 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v331, 512, v118, v119);
            v89 = v137;
          }

          else
          {
            v120 = 0;
            v337 = 0u;
            v338 = 0u;
            v335 = 0u;
            v336 = 0u;
            v333 = 0u;
            v334 = 0u;
            v331 = 0u;
            v332 = 0u;
            v363 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
            v367 = 0u;
            v368 = 0u;
            v369 = 0u;
            v370 = 0u;
          }

          v138 = v118 + v120;
          v139 = v89[2];
          if (v139 == 255)
          {
            v142 = *(v138 + 16);
            v143 = *(v138 + 32);
            v144 = *(v138 + 48);
            v145 = *(v138 + 64);
            v146 = *(v138 + 80);
            v147 = *(v138 + 96);
            v148 = *(v138 + 112);
            v149 = *(v138 + 128);
            v150 = *(v138 + 144);
            v151 = *(v138 + 160);
            v152 = *(v138 + 176);
            v153 = *(v138 + 192);
            v154 = *(v138 + 208);
            v155 = *(v138 + 224);
            v156 = *(v138 + 240);
            v387 = *v138;
            v388 = v142;
            v389 = v143;
            v390 = v144;
            v391 = v145;
            v392 = v146;
            v393 = v147;
            v394 = v148;
            v419 = v149;
            v420 = v150;
            v421 = v151;
            v422 = v152;
            v140 = 256;
            v423 = v153;
            v424 = v154;
            v425 = v155;
            v426 = v156;
          }

          else if (v139 == 7)
          {
            v141 = vld1q_dup_f64(v138);
            v387 = v141;
            v388 = v141;
            v389 = v141;
            v390 = v141;
            v391 = v141;
            v392 = v141;
            v393 = v141;
            v394 = v141;
            v419 = v141;
            v420 = v141;
            v421 = v141;
            v422 = v141;
            v423 = v141;
            v424 = v141;
            v425 = v141;
            v140 = 8;
            v426 = v141;
          }

          else if (v89[2])
          {
            v157 = v89;
            v140 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v387, 512, v138, v139);
            v89 = v157;
          }

          else
          {
            v140 = 0;
            v393 = 0u;
            v394 = 0u;
            v391 = 0u;
            v392 = 0u;
            v389 = 0u;
            v390 = 0u;
            v387 = 0u;
            v388 = 0u;
            v419 = 0u;
            v420 = 0u;
            v421 = 0u;
            v422 = 0u;
            v423 = 0u;
            v424 = 0u;
            v425 = 0u;
            v426 = 0u;
          }

          v158 = v138 + v140;
          v159 = v89[3];
          if (v159 == 255)
          {
            v162 = *(v158 + 16);
            v163 = *(v158 + 32);
            v164 = *(v158 + 48);
            v165 = *(v158 + 64);
            v166 = *(v158 + 80);
            v167 = *(v158 + 96);
            v168 = *(v158 + 112);
            v169 = *(v158 + 128);
            v170 = *(v158 + 144);
            v171 = *(v158 + 160);
            v172 = *(v158 + 176);
            v173 = *(v158 + 192);
            v174 = *(v158 + 208);
            v175 = *(v158 + 224);
            v176 = *(v158 + 240);
            v395 = *v158;
            v396 = v162;
            v397 = v163;
            v398 = v164;
            v399 = v165;
            v400 = v166;
            v401 = v167;
            v402 = v168;
            v427 = v169;
            v428 = v170;
            v429 = v171;
            v430 = v172;
            v160 = 256;
            v431 = v173;
            v432 = v174;
            v433 = v175;
            v434 = v176;
          }

          else if (v159 == 7)
          {
            v161 = vld1q_dup_f64(v158);
            v395 = v161;
            v396 = v161;
            v397 = v161;
            v398 = v161;
            v399 = v161;
            v400 = v161;
            v401 = v161;
            v402 = v161;
            v427 = v161;
            v428 = v161;
            v429 = v161;
            v430 = v161;
            v431 = v161;
            v432 = v161;
            v433 = v161;
            v160 = 8;
            v434 = v161;
          }

          else if (v89[3])
          {
            v177 = v89;
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v395, 512, v158, v159);
            v89 = v177;
          }

          else
          {
            v160 = 0;
            v401 = 0u;
            v402 = 0u;
            v399 = 0u;
            v400 = 0u;
            v397 = 0u;
            v398 = 0u;
            v395 = 0u;
            v396 = 0u;
            v427 = 0u;
            v428 = 0u;
            v429 = 0u;
            v430 = 0u;
            v431 = 0u;
            v432 = 0u;
            v433 = 0u;
            v434 = 0u;
          }

          v178 = v158 + v160;
          v179 = v89[4];
          if (v179 == 255)
          {
            v182 = *(v178 + 16);
            v183 = *(v178 + 32);
            v184 = *(v178 + 48);
            v185 = *(v178 + 64);
            v186 = *(v178 + 80);
            v187 = *(v178 + 96);
            v188 = *(v178 + 112);
            v189 = *(v178 + 128);
            v190 = *(v178 + 144);
            v191 = *(v178 + 160);
            v192 = *(v178 + 176);
            v193 = *(v178 + 192);
            v194 = *(v178 + 208);
            v195 = *(v178 + 224);
            v196 = *(v178 + 240);
            v339 = *v178;
            v340 = v182;
            v341 = v183;
            v342 = v184;
            v343 = v185;
            v344 = v186;
            v345 = v187;
            v346 = v188;
            v371 = v189;
            v372 = v190;
            v373 = v191;
            v374 = v192;
            v180 = 256;
            v375 = v193;
            v376 = v194;
            v377 = v195;
            v378 = v196;
          }

          else if (v179 == 7)
          {
            v181 = vld1q_dup_f64(v178);
            v339 = v181;
            v340 = v181;
            v341 = v181;
            v342 = v181;
            v343 = v181;
            v344 = v181;
            v345 = v181;
            v346 = v181;
            v371 = v181;
            v372 = v181;
            v373 = v181;
            v374 = v181;
            v375 = v181;
            v376 = v181;
            v180 = 8;
            v377 = v181;
            v378 = v181;
          }

          else if (v89[4])
          {
            v197 = v89;
            v180 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v339, 512, v178, v179);
            v89 = v197;
          }

          else
          {
            v180 = 0;
            v345 = 0u;
            v346 = 0u;
            v343 = 0u;
            v344 = 0u;
            v341 = 0u;
            v342 = 0u;
            v339 = 0u;
            v340 = 0u;
            v371 = 0u;
            v372 = 0u;
            v373 = 0u;
            v374 = 0u;
            v375 = 0u;
            v376 = 0u;
            v377 = 0u;
            v378 = 0u;
          }

          v198 = v178 + v180;
          v199 = v89[5];
          if (v199 == 255)
          {
            v202 = *(v198 + 16);
            v203 = *(v198 + 32);
            v204 = *(v198 + 48);
            v205 = *(v198 + 64);
            v206 = *(v198 + 80);
            v207 = *(v198 + 96);
            v208 = *(v198 + 112);
            v209 = *(v198 + 128);
            v210 = *(v198 + 144);
            v211 = *(v198 + 160);
            v212 = *(v198 + 176);
            v213 = *(v198 + 192);
            v214 = *(v198 + 208);
            v215 = *(v198 + 224);
            v216 = *(v198 + 240);
            v347 = *v198;
            v348 = v202;
            v349 = v203;
            v350 = v204;
            v351 = v205;
            v352 = v206;
            v353 = v207;
            v354 = v208;
            v379 = v209;
            v380 = v210;
            v381 = v211;
            v382 = v212;
            v200 = 256;
            v383 = v213;
            v384 = v214;
            v385 = v215;
            v386 = v216;
          }

          else if (v199 == 7)
          {
            v201 = vld1q_dup_f64(v198);
            v347 = v201;
            v348 = v201;
            v349 = v201;
            v350 = v201;
            v351 = v201;
            v352 = v201;
            v353 = v201;
            v354 = v201;
            v379 = v201;
            v380 = v201;
            v381 = v201;
            v382 = v201;
            v383 = v201;
            v384 = v201;
            v200 = 8;
            v385 = v201;
            v386 = v201;
          }

          else if (v89[5])
          {
            v217 = v89;
            v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v347, 512, v198, v199);
            v89 = v217;
          }

          else
          {
            v200 = 0;
            v353 = 0u;
            v354 = 0u;
            v351 = 0u;
            v352 = 0u;
            v349 = 0u;
            v350 = 0u;
            v347 = 0u;
            v348 = 0u;
            v379 = 0u;
            v380 = 0u;
            v381 = 0u;
            v382 = 0u;
            v383 = 0u;
            v384 = 0u;
            v385 = 0u;
            v386 = 0u;
          }

          v218 = v198 + v200;
          v219 = v89[6];
          if (v219 == 255)
          {
            v222 = *(v218 + 16);
            v223 = *(v218 + 32);
            v224 = *(v218 + 48);
            v225 = *(v218 + 64);
            v226 = *(v218 + 80);
            v227 = *(v218 + 96);
            v228 = *(v218 + 112);
            v229 = *(v218 + 128);
            v230 = *(v218 + 144);
            v231 = *(v218 + 160);
            v232 = *(v218 + 176);
            v233 = *(v218 + 192);
            v234 = *(v218 + 208);
            v235 = *(v218 + 224);
            v236 = *(v218 + 240);
            v403 = *v218;
            v404 = v222;
            v405 = v223;
            v406 = v224;
            v407 = v225;
            v408 = v226;
            v409 = v227;
            v410 = v228;
            v435 = v229;
            v436 = v230;
            v437 = v231;
            v438 = v232;
            v220 = 256;
            v439 = v233;
            v440 = v234;
            v441 = v235;
            v442 = v236;
          }

          else if (v219 == 7)
          {
            v221 = vld1q_dup_f64(v218);
            v403 = v221;
            v404 = v221;
            v405 = v221;
            v406 = v221;
            v407 = v221;
            v408 = v221;
            v409 = v221;
            v410 = v221;
            v435 = v221;
            v436 = v221;
            v437 = v221;
            v438 = v221;
            v439 = v221;
            v440 = v221;
            v441 = v221;
            v220 = 8;
            v442 = v221;
          }

          else if (v89[6])
          {
            v237 = v89;
            v220 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v403, 512, v218, v219);
            v89 = v237;
          }

          else
          {
            v220 = 0;
            v409 = 0u;
            v410 = 0u;
            v407 = 0u;
            v408 = 0u;
            v405 = 0u;
            v406 = 0u;
            v403 = 0u;
            v404 = 0u;
            v435 = 0u;
            v436 = 0u;
            v437 = 0u;
            v438 = 0u;
            v439 = 0u;
            v440 = 0u;
            v441 = 0u;
            v442 = 0u;
          }

          v238 = v218 + v220;
          v239 = v89[7];
          if (v239 == 255)
          {
            v243 = *(v238 + 16);
            v244 = *(v238 + 32);
            v245 = *(v238 + 48);
            v246 = *(v238 + 64);
            v247 = *(v238 + 80);
            v248 = *(v238 + 96);
            v249 = *(v238 + 112);
            v250 = *(v238 + 128);
            v251 = *(v238 + 144);
            v252 = *(v238 + 160);
            v253 = *(v238 + 176);
            v254 = *(v238 + 192);
            v255 = *(v238 + 208);
            v256 = *(v238 + 224);
            v257 = *(v238 + 240);
            v411 = *v238;
            v412 = v243;
            v413 = v244;
            v414 = v245;
            v415 = v246;
            v416 = v247;
            v417 = v248;
            v418 = v249;
            v443 = v250;
            v444 = v251;
            v445 = v252;
            v446 = v253;
            v240 = v293;
            v241 = v294;
            v447 = v254;
            v448 = v255;
            v449 = v256;
            v450 = v257;
            if (v293)
            {
              goto LABEL_170;
            }
          }

          else if (v239 == 7)
          {
            v242 = vld1q_dup_f64(v238);
            v411 = v242;
            v412 = v242;
            v413 = v242;
            v414 = v242;
            v415 = v242;
            v416 = v242;
            v417 = v242;
            v418 = v242;
            v443 = v242;
            v444 = v242;
            v445 = v242;
            v446 = v242;
            v447 = v242;
            v448 = v242;
            v449 = v242;
            v240 = v293;
            v241 = v294;
            v450 = v242;
            if (v293)
            {
              goto LABEL_170;
            }
          }

          else if (v89[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v411, 512, v238, v239);
            v241 = v316;
            v97 = v317;
            v240 = v318;
            if (v318)
            {
LABEL_170:
              if (v319)
              {
                v258 = 0;
                v259 = v241;
                v260 = v241 << 9;
                v261 = v97 << 6;
                v262 = &v323 + v260 + v261;
                v263 = v314;
                v264 = v315;
                v265 = v319 << 6;
                v266 = &__dst[512 * v240 + 1536 + 512 * v259 + v265 + v261];
                if (v265)
                {
                  v267 = (v265 - 1) >> 32 == 0;
                }

                else
                {
                  v267 = 0;
                }

                v268 = !v267;
                v270 = v262 < v314 + v315 * (v240 - 1) + v265 && v314 < v266;
                v271 = v268 | (v315 < 0) | v270;
                v272 = &v324 + v260 + v261;
                v273 = (v314 + 16);
                do
                {
                  v274 = v273;
                  v275 = v272;
                  v276 = v265;
                  if (v271)
                  {
                    v277 = 0;
                    do
                    {
                      v262[v277] = *(v263 + v277);
                      ++v277;
                    }

                    while (v265 > v277);
                  }

                  else
                  {
                    do
                    {
                      v278 = *v274;
                      *(v275 - 1) = *(v274 - 1);
                      *v275 = v278;
                      v275 += 2;
                      v274 += 2;
                      v276 -= 32;
                    }

                    while (v276);
                  }

                  ++v258;
                  v272 += 512;
                  v273 = (v273 + v264);
                  v262 += 512;
                  v263 += v264;
                }

                while (v258 != v240);
              }
            }
          }

          else
          {
            v417 = 0u;
            v418 = 0u;
            v415 = 0u;
            v416 = 0u;
            v413 = 0u;
            v414 = 0u;
            v411 = 0u;
            v412 = 0u;
            v443 = 0u;
            v444 = 0u;
            v445 = 0u;
            v446 = 0u;
            v447 = 0u;
            v448 = 0u;
            v240 = v293;
            v241 = v294;
            v449 = 0u;
            v450 = 0u;
            if (v293)
            {
              goto LABEL_170;
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v323, 512, v312, v313, v320, v321);
LABEL_192:
          if (v310)
          {
            memcpy(v309, v91, 0x800uLL);
          }

          v29 = v51 == v297 >> 3;
          v51 = v98;
          result = v307;
        }

        while (!v29);
        v29 = v26 == v285;
        v26 = (v26 + 1);
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v299 = v21;
  v300 = v22;
  v284 = v23;
  v24 = v12;
  v451 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v306 = v14;
  v286 = v14 + a10 - 1;
  v307 = v24;
  if (*(v24 + 168))
  {
    v25 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v25 = 0;
  }

  v26 = v14 >> 2;
  v27 = v20 - 1;
  v28 = v18 - 1;
  v285 = v286 >> 2;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v310 = v32;
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
      v298 = 0;
LABEL_32:
      v295 = v35 - 3;
      v289 = v34 - 2;
      v41 = -1 << *(*(v24 + 208) + 48);
      v283 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v298 = v40 >= v34;
    goto LABEL_32;
  }

  v298 = 0;
  v283 = 0;
  v289 = 0;
  v295 = 0;
LABEL_33:
  if (v26 <= v285)
  {
    v297 = v16 + a9 - 1;
    v282 = v16 >> 3;
    if (v16 >> 3 <= v297 >> 3)
    {
      v308 = v27 >> 3;
      v290 = v27 & 7;
      v280 = v28 & 3;
      v281 = v28 >> 2;
      v279 = ~(-1 << v289);
      v42 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v43 = vcgt_u32(v42, 0xF00000007);
      v288 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v42, 0xFFFFFFFDFFFFFFFELL), -1))))))), v43);
      v287 = v43;
      v296 = v16;
      do
      {
        v44 = (4 * v26) | 3;
        if (4 * v26 <= v306)
        {
          v45 = v306;
        }

        else
        {
          v45 = 4 * v26;
        }

        if (v286 < v44)
        {
          v44 = v286;
        }

        v305 = 4 * v26;
        v294 = v45 - 4 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v280;
        v293 = v47;
        v49 = v47 != 4;
        v50 = v280 + 1;
        if (v26 != v281)
        {
          v50 = 4;
          v48 = v49;
        }

        v292 = v48;
        v51 = v282;
        v291 = (v26 >> v289) * v283;
        v52 = v26 & v279;
        v303 = v284 + (v45 - v306) * a11;
        v304 = v50;
        v302 = v50;
        v301 = v26 & v279;
        do
        {
          v53 = 8 * v51;
          v54 = 8 * (v51 + 1) - 1;
          if (8 * v51 <= v16)
          {
            v55 = v16;
          }

          else
          {
            v55 = 8 * v51;
          }

          if (v297 < v54)
          {
            v54 = v297;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v308)
          {
            v58 = v290 + 1;
          }

          else
          {
            v58 = 8;
          }

          v59 = 1;
          if (v305 >= v306 && v53 >= v16)
          {
            v60 = v56 != v290;
            if (v51 != v308)
            {
              v60 = v57 != 8;
            }

            v59 = v60 || v292;
          }

          if (v298)
          {
            if (v295 | v289)
            {
              v61 = 0;
              v62 = 0;
              v63 = 1;
              v64 = v289 != 0;
              v65 = v295 != 0;
              v66 = v289;
              v67 = v295;
              do
              {
                --v66;
                if (v64)
                {
                  v62 |= (v52 & v63) << v61++;
                }

                else
                {
                  v66 = 0;
                }

                --v67;
                if (v65)
                {
                  v62 |= (v51 & ~(-1 << v295) & v63) << v61++;
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

            v76 = v68 + *(result + 336) * ((v51 >> v295) + v291);
          }

          else if (v288)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v287.i8[0];
            v73 = v287.i8[4];
            v74 = v288.i32[0];
            v75 = v288.i32[1];
            do
            {
              --v74;
              if (v72)
              {
                v70 |= (v71 & v26) << v69++;
              }

              else
              {
                v74 = 0;
              }

              --v75;
              if (v73)
              {
                v70 |= (v71 & v51) << v69++;
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

          v78 = v77 + 7;
          if (v78 < 0x10)
          {
            v79 = 0;
          }

          else
          {
            v79 = 32 - __clz(~(-1 << -__clz((v78 >> 3) - 1)));
          }

          v80 = *(result + 132) >> (*(result + 144) + a12);
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = v80 + 3;
          if (v81 < 8)
          {
            v82 = 0;
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 2) - 1)));
          }

          if (v82 | v79)
          {
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
          }

          else
          {
            v88 = 0;
          }

          v89 = (v300 + v88);
          v90 = (v303 + ((v55 - v16) << 6));
          v309 = (v299 + v76);
          if (v310)
          {
            v91 = __dst;
            if (!(v59 & 1 | (v58 < 8u) | (v302 < 4)))
            {
              goto LABEL_109;
            }

            v92 = (v300 + v88);
            v93 = v58;
            v94 = v59;
            v95 = v26;
            v96 = v55;
            memcpy(__dst, (v299 + v76), sizeof(__dst));
            v55 = v96;
            v26 = v95;
            v59 = v94;
            LOBYTE(v58) = v93;
            v89 = v92;
            result = v307;
          }

          else
          {
            v91 = (v299 + v76);
            if (!(v59 & 1 | (v58 < 8u) | (v302 < 4)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v90, a11, v91, v89, v58, v304);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v97 = v55 - v53;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v312 = v91;
          v320 = v58;
          v321 = v304;
          v316 = v294;
          v317 = v55 - v53;
          v313 = v89;
          v314 = v90;
          v315 = a11;
          v318 = v293;
          v319 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            v16 = v296;
            v98 = v51 + 1;
            v52 = v301;
            goto LABEL_192;
          }

          v99 = *v89;
          v16 = v296;
          if (v99 == 255)
          {
            v102 = *(v91 + 1);
            v103 = *(v91 + 2);
            v104 = *(v91 + 3);
            v105 = *(v91 + 4);
            v106 = *(v91 + 5);
            v107 = *(v91 + 6);
            v108 = *(v91 + 7);
            v109 = *(v91 + 8);
            v110 = *(v91 + 9);
            v111 = *(v91 + 10);
            v112 = *(v91 + 11);
            v113 = *(v91 + 12);
            v114 = *(v91 + 13);
            v115 = *(v91 + 14);
            v116 = *(v91 + 15);
            v323 = *v91;
            v324 = v102;
            v325 = v103;
            v326 = v104;
            v327 = v105;
            v328 = v106;
            v329 = v107;
            v330 = v108;
            v355 = v109;
            v356 = v110;
            v357 = v111;
            v358 = v112;
            v100 = 256;
            v359 = v113;
            v360 = v114;
            v361 = v115;
            v362 = v116;
            v98 = v51 + 1;
            v52 = v301;
          }

          else
          {
            v98 = v51 + 1;
            v52 = v301;
            if (v99 == 7)
            {
              v101 = vld1q_dup_f64(v91);
              v323 = v101;
              v324 = v101;
              v325 = v101;
              v326 = v101;
              v327 = v101;
              v328 = v101;
              v329 = v101;
              v330 = v101;
              v355 = v101;
              v356 = v101;
              v357 = v101;
              v358 = v101;
              v359 = v101;
              v360 = v101;
              v100 = 8;
              v361 = v101;
              v362 = v101;
            }

            else if (*v89)
            {
              v117 = v89;
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v323, 512, v91, v99);
              v89 = v117;
            }

            else
            {
              v100 = 0;
              v330 = 0u;
              v329 = 0u;
              v328 = 0u;
              v327 = 0u;
              v326 = 0u;
              v325 = 0u;
              v324 = 0u;
              v323 = 0u;
              v355 = 0u;
              v356 = 0u;
              v357 = 0u;
              v358 = 0u;
              v359 = 0u;
              v360 = 0u;
              v361 = 0u;
              v362 = 0u;
            }
          }

          v118 = v91 + v100;
          v119 = v89[1];
          if (v119 == 255)
          {
            v122 = *(v118 + 16);
            v123 = *(v118 + 32);
            v124 = *(v118 + 48);
            v125 = *(v118 + 64);
            v126 = *(v118 + 80);
            v127 = *(v118 + 96);
            v128 = *(v118 + 112);
            v129 = *(v118 + 128);
            v130 = *(v118 + 144);
            v131 = *(v118 + 160);
            v132 = *(v118 + 176);
            v133 = *(v118 + 192);
            v134 = *(v118 + 208);
            v135 = *(v118 + 224);
            v136 = *(v118 + 240);
            v331 = *v118;
            v332 = v122;
            v333 = v123;
            v334 = v124;
            v335 = v125;
            v336 = v126;
            v337 = v127;
            v338 = v128;
            v363 = v129;
            v364 = v130;
            v365 = v131;
            v366 = v132;
            v120 = 256;
            v367 = v133;
            v368 = v134;
            v369 = v135;
            v370 = v136;
          }

          else if (v119 == 7)
          {
            v121 = vld1q_dup_f64(v118);
            v331 = v121;
            v332 = v121;
            v333 = v121;
            v334 = v121;
            v335 = v121;
            v336 = v121;
            v337 = v121;
            v338 = v121;
            v363 = v121;
            v364 = v121;
            v365 = v121;
            v366 = v121;
            v367 = v121;
            v368 = v121;
            v120 = 8;
            v369 = v121;
            v370 = v121;
          }

          else if (v89[1])
          {
            v137 = v89;
            v120 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v331, 512, v118, v119);
            v89 = v137;
          }

          else
          {
            v120 = 0;
            v337 = 0u;
            v338 = 0u;
            v335 = 0u;
            v336 = 0u;
            v333 = 0u;
            v334 = 0u;
            v331 = 0u;
            v332 = 0u;
            v363 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
            v367 = 0u;
            v368 = 0u;
            v369 = 0u;
            v370 = 0u;
          }

          v138 = v118 + v120;
          v139 = v89[2];
          if (v139 == 255)
          {
            v142 = *(v138 + 16);
            v143 = *(v138 + 32);
            v144 = *(v138 + 48);
            v145 = *(v138 + 64);
            v146 = *(v138 + 80);
            v147 = *(v138 + 96);
            v148 = *(v138 + 112);
            v149 = *(v138 + 128);
            v150 = *(v138 + 144);
            v151 = *(v138 + 160);
            v152 = *(v138 + 176);
            v153 = *(v138 + 192);
            v154 = *(v138 + 208);
            v155 = *(v138 + 224);
            v156 = *(v138 + 240);
            v387 = *v138;
            v388 = v142;
            v389 = v143;
            v390 = v144;
            v391 = v145;
            v392 = v146;
            v393 = v147;
            v394 = v148;
            v419 = v149;
            v420 = v150;
            v421 = v151;
            v422 = v152;
            v140 = 256;
            v423 = v153;
            v424 = v154;
            v425 = v155;
            v426 = v156;
          }

          else if (v139 == 7)
          {
            v141 = vld1q_dup_f64(v138);
            v387 = v141;
            v388 = v141;
            v389 = v141;
            v390 = v141;
            v391 = v141;
            v392 = v141;
            v393 = v141;
            v394 = v141;
            v419 = v141;
            v420 = v141;
            v421 = v141;
            v422 = v141;
            v423 = v141;
            v424 = v141;
            v425 = v141;
            v140 = 8;
            v426 = v141;
          }

          else if (v89[2])
          {
            v157 = v89;
            v140 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v387, 512, v138, v139);
            v89 = v157;
          }

          else
          {
            v140 = 0;
            v393 = 0u;
            v394 = 0u;
            v391 = 0u;
            v392 = 0u;
            v389 = 0u;
            v390 = 0u;
            v387 = 0u;
            v388 = 0u;
            v419 = 0u;
            v420 = 0u;
            v421 = 0u;
            v422 = 0u;
            v423 = 0u;
            v424 = 0u;
            v425 = 0u;
            v426 = 0u;
          }

          v158 = v138 + v140;
          v159 = v89[3];
          if (v159 == 255)
          {
            v162 = *(v158 + 16);
            v163 = *(v158 + 32);
            v164 = *(v158 + 48);
            v165 = *(v158 + 64);
            v166 = *(v158 + 80);
            v167 = *(v158 + 96);
            v168 = *(v158 + 112);
            v169 = *(v158 + 128);
            v170 = *(v158 + 144);
            v171 = *(v158 + 160);
            v172 = *(v158 + 176);
            v173 = *(v158 + 192);
            v174 = *(v158 + 208);
            v175 = *(v158 + 224);
            v176 = *(v158 + 240);
            v395 = *v158;
            v396 = v162;
            v397 = v163;
            v398 = v164;
            v399 = v165;
            v400 = v166;
            v401 = v167;
            v402 = v168;
            v427 = v169;
            v428 = v170;
            v429 = v171;
            v430 = v172;
            v160 = 256;
            v431 = v173;
            v432 = v174;
            v433 = v175;
            v434 = v176;
          }

          else if (v159 == 7)
          {
            v161 = vld1q_dup_f64(v158);
            v395 = v161;
            v396 = v161;
            v397 = v161;
            v398 = v161;
            v399 = v161;
            v400 = v161;
            v401 = v161;
            v402 = v161;
            v427 = v161;
            v428 = v161;
            v429 = v161;
            v430 = v161;
            v431 = v161;
            v432 = v161;
            v433 = v161;
            v160 = 8;
            v434 = v161;
          }

          else if (v89[3])
          {
            v177 = v89;
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v395, 512, v158, v159);
            v89 = v177;
          }

          else
          {
            v160 = 0;
            v401 = 0u;
            v402 = 0u;
            v399 = 0u;
            v400 = 0u;
            v397 = 0u;
            v398 = 0u;
            v395 = 0u;
            v396 = 0u;
            v427 = 0u;
            v428 = 0u;
            v429 = 0u;
            v430 = 0u;
            v431 = 0u;
            v432 = 0u;
            v433 = 0u;
            v434 = 0u;
          }

          v178 = v158 + v160;
          v179 = v89[4];
          if (v179 == 255)
          {
            v182 = *(v178 + 16);
            v183 = *(v178 + 32);
            v184 = *(v178 + 48);
            v185 = *(v178 + 64);
            v186 = *(v178 + 80);
            v187 = *(v178 + 96);
            v188 = *(v178 + 112);
            v189 = *(v178 + 128);
            v190 = *(v178 + 144);
            v191 = *(v178 + 160);
            v192 = *(v178 + 176);
            v193 = *(v178 + 192);
            v194 = *(v178 + 208);
            v195 = *(v178 + 224);
            v196 = *(v178 + 240);
            v339 = *v178;
            v340 = v182;
            v341 = v183;
            v342 = v184;
            v343 = v185;
            v344 = v186;
            v345 = v187;
            v346 = v188;
            v371 = v189;
            v372 = v190;
            v373 = v191;
            v374 = v192;
            v180 = 256;
            v375 = v193;
            v376 = v194;
            v377 = v195;
            v378 = v196;
          }

          else if (v179 == 7)
          {
            v181 = vld1q_dup_f64(v178);
            v339 = v181;
            v340 = v181;
            v341 = v181;
            v342 = v181;
            v343 = v181;
            v344 = v181;
            v345 = v181;
            v346 = v181;
            v371 = v181;
            v372 = v181;
            v373 = v181;
            v374 = v181;
            v375 = v181;
            v376 = v181;
            v180 = 8;
            v377 = v181;
            v378 = v181;
          }

          else if (v89[4])
          {
            v197 = v89;
            v180 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v339, 512, v178, v179);
            v89 = v197;
          }

          else
          {
            v180 = 0;
            v345 = 0u;
            v346 = 0u;
            v343 = 0u;
            v344 = 0u;
            v341 = 0u;
            v342 = 0u;
            v339 = 0u;
            v340 = 0u;
            v371 = 0u;
            v372 = 0u;
            v373 = 0u;
            v374 = 0u;
            v375 = 0u;
            v376 = 0u;
            v377 = 0u;
            v378 = 0u;
          }

          v198 = v178 + v180;
          v199 = v89[5];
          if (v199 == 255)
          {
            v202 = *(v198 + 16);
            v203 = *(v198 + 32);
            v204 = *(v198 + 48);
            v205 = *(v198 + 64);
            v206 = *(v198 + 80);
            v207 = *(v198 + 96);
            v208 = *(v198 + 112);
            v209 = *(v198 + 128);
            v210 = *(v198 + 144);
            v211 = *(v198 + 160);
            v212 = *(v198 + 176);
            v213 = *(v198 + 192);
            v214 = *(v198 + 208);
            v215 = *(v198 + 224);
            v216 = *(v198 + 240);
            v347 = *v198;
            v348 = v202;
            v349 = v203;
            v350 = v204;
            v351 = v205;
            v352 = v206;
            v353 = v207;
            v354 = v208;
            v379 = v209;
            v380 = v210;
            v381 = v211;
            v382 = v212;
            v200 = 256;
            v383 = v213;
            v384 = v214;
            v385 = v215;
            v386 = v216;
          }

          else if (v199 == 7)
          {
            v201 = vld1q_dup_f64(v198);
            v347 = v201;
            v348 = v201;
            v349 = v201;
            v350 = v201;
            v351 = v201;
            v352 = v201;
            v353 = v201;
            v354 = v201;
            v379 = v201;
            v380 = v201;
            v381 = v201;
            v382 = v201;
            v383 = v201;
            v384 = v201;
            v200 = 8;
            v385 = v201;
            v386 = v201;
          }

          else if (v89[5])
          {
            v217 = v89;
            v200 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v347, 512, v198, v199);
            v89 = v217;
          }

          else
          {
            v200 = 0;
            v353 = 0u;
            v354 = 0u;
            v351 = 0u;
            v352 = 0u;
            v349 = 0u;
            v350 = 0u;
            v347 = 0u;
            v348 = 0u;
            v379 = 0u;
            v380 = 0u;
            v381 = 0u;
            v382 = 0u;
            v383 = 0u;
            v384 = 0u;
            v385 = 0u;
            v386 = 0u;
          }

          v218 = v198 + v200;
          v219 = v89[6];
          if (v219 == 255)
          {
            v222 = *(v218 + 16);
            v223 = *(v218 + 32);
            v224 = *(v218 + 48);
            v225 = *(v218 + 64);
            v226 = *(v218 + 80);
            v227 = *(v218 + 96);
            v228 = *(v218 + 112);
            v229 = *(v218 + 128);
            v230 = *(v218 + 144);
            v231 = *(v218 + 160);
            v232 = *(v218 + 176);
            v233 = *(v218 + 192);
            v234 = *(v218 + 208);
            v235 = *(v218 + 224);
            v236 = *(v218 + 240);
            v403 = *v218;
            v404 = v222;
            v405 = v223;
            v406 = v224;
            v407 = v225;
            v408 = v226;
            v409 = v227;
            v410 = v228;
            v435 = v229;
            v436 = v230;
            v437 = v231;
            v438 = v232;
            v220 = 256;
            v439 = v233;
            v440 = v234;
            v441 = v235;
            v442 = v236;
          }

          else if (v219 == 7)
          {
            v221 = vld1q_dup_f64(v218);
            v403 = v221;
            v404 = v221;
            v405 = v221;
            v406 = v221;
            v407 = v221;
            v408 = v221;
            v409 = v221;
            v410 = v221;
            v435 = v221;
            v436 = v221;
            v437 = v221;
            v438 = v221;
            v439 = v221;
            v440 = v221;
            v441 = v221;
            v220 = 8;
            v442 = v221;
          }

          else if (v89[6])
          {
            v237 = v89;
            v220 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v403, 512, v218, v219);
            v89 = v237;
          }

          else
          {
            v220 = 0;
            v409 = 0u;
            v410 = 0u;
            v407 = 0u;
            v408 = 0u;
            v405 = 0u;
            v406 = 0u;
            v403 = 0u;
            v404 = 0u;
            v435 = 0u;
            v436 = 0u;
            v437 = 0u;
            v438 = 0u;
            v439 = 0u;
            v440 = 0u;
            v441 = 0u;
            v442 = 0u;
          }

          v238 = v218 + v220;
          v239 = v89[7];
          if (v239 == 255)
          {
            v243 = *(v238 + 16);
            v244 = *(v238 + 32);
            v245 = *(v238 + 48);
            v246 = *(v238 + 64);
            v247 = *(v238 + 80);
            v248 = *(v238 + 96);
            v249 = *(v238 + 112);
            v250 = *(v238 + 128);
            v251 = *(v238 + 144);
            v252 = *(v238 + 160);
            v253 = *(v238 + 176);
            v254 = *(v238 + 192);
            v255 = *(v238 + 208);
            v256 = *(v238 + 224);
            v257 = *(v238 + 240);
            v411 = *v238;
            v412 = v243;
            v413 = v244;
            v414 = v245;
            v415 = v246;
            v416 = v247;
            v417 = v248;
            v418 = v249;
            v443 = v250;
            v444 = v251;
            v445 = v252;
            v446 = v253;
            v240 = v293;
            v241 = v294;
            v447 = v254;
            v448 = v255;
            v449 = v256;
            v450 = v257;
            if (v293)
            {
              goto LABEL_170;
            }
          }

          else if (v239 == 7)
          {
            v242 = vld1q_dup_f64(v238);
            v411 = v242;
            v412 = v242;
            v413 = v242;
            v414 = v242;
            v415 = v242;
            v416 = v242;
            v417 = v242;
            v418 = v242;
            v443 = v242;
            v444 = v242;
            v445 = v242;
            v446 = v242;
            v447 = v242;
            v448 = v242;
            v449 = v242;
            v240 = v293;
            v241 = v294;
            v450 = v242;
            if (v293)
            {
              goto LABEL_170;
            }
          }

          else if (v89[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v411, 512, v238, v239);
            v241 = v316;
            v97 = v317;
            v240 = v318;
            if (v318)
            {
LABEL_170:
              if (v319)
              {
                v258 = 0;
                v259 = v241;
                v260 = v241 << 9;
                v261 = v97 << 6;
                v262 = &v323 + v260 + v261;
                v263 = v314;
                v264 = v315;
                v265 = v319 << 6;
                v266 = &__dst[512 * v240 + 1536 + 512 * v259 + v265 + v261];
                if (v265)
                {
                  v267 = (v265 - 1) >> 32 == 0;
                }

                else
                {
                  v267 = 0;
                }

                v268 = !v267;
                v270 = v262 < v314 + v315 * (v240 - 1) + v265 && v314 < v266;
                v271 = v268 | (v315 < 0) | v270;
                v272 = &v324 + v260 + v261;
                v273 = v314 + 1;
                do
                {
                  v274 = v273;
                  v275 = v272;
                  v276 = v265;
                  if (v271)
                  {
                    v277 = 0;
                    do
                    {
                      v262[v277] = *(v263 + v277);
                      ++v277;
                    }

                    while (v265 > v277);
                  }

                  else
                  {
                    do
                    {
                      v278 = *v274;
                      *(v275 - 1) = *(v274 - 1);
                      *v275 = v278;
                      v275 += 2;
                      v274 += 2;
                      v276 -= 32;
                    }

                    while (v276);
                  }

                  ++v258;
                  v272 += 512;
                  v273 = (v273 + v264);
                  v262 += 512;
                  v263 = (v263 + v264);
                }

                while (v258 != v240);
              }
            }
          }

          else
          {
            v417 = 0u;
            v418 = 0u;
            v415 = 0u;
            v416 = 0u;
            v413 = 0u;
            v414 = 0u;
            v411 = 0u;
            v412 = 0u;
            v443 = 0u;
            v444 = 0u;
            v445 = 0u;
            v446 = 0u;
            v447 = 0u;
            v448 = 0u;
            v240 = v293;
            v241 = v294;
            v449 = 0u;
            v450 = 0u;
            if (v293)
            {
              goto LABEL_170;
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v323, 512, v312, v313, v320, v321);
LABEL_192:
          if (v310)
          {
            memcpy(v309, v91, 0x800uLL);
          }

          v29 = v51 == v297 >> 3;
          v51 = v98;
          result = v307;
        }

        while (!v29);
        v29 = v26 == v285;
        v26 = (v26 + 1);
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v285 = v21;
  v286 = v22;
  v274 = v23;
  v24 = v12;
  v436 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v291 = v14;
  v25 = v14 >> 2;
  v273 = v14 + a10 - 1;
  v275 = v273 >> 2;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v292 = v24;
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
  v295 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v284 = result;
  if (v25 <= v275)
  {
    v283 = v16 + a9 - 1;
    v272 = v16 >> 3;
    if (v16 >> 3 <= v283 >> 3)
    {
      result = v24;
      v293 = (v20 - 1) >> 3;
      v269 = v20 - 1;
      v276 = (v20 - 1) & 7;
      v270 = (v18 - 1) & 3;
      v271 = (v18 - 1) >> 2;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v279 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v278 = v35;
      v268 = 8 * v27 * v26;
      v282 = v16;
      do
      {
        v36 = (4 * v25) | 3;
        if (4 * v25 <= v291)
        {
          v37 = v291;
        }

        else
        {
          v37 = 4 * v25;
        }

        if (v273 < v36)
        {
          v36 = v273;
        }

        v290 = 4 * v25;
        v281 = v37 - 4 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v270;
        v280 = v39;
        v41 = v39 != 4;
        v42 = v272;
        v43 = v270 + 1;
        if (v25 != v271)
        {
          v43 = 4;
          v40 = v41;
        }

        v277 = v40;
        v288 = v274 + (v37 - v291) * a11;
        v289 = v43;
        v287 = v43;
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

          if (v283 < v45)
          {
            v45 = v283;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v293)
          {
            v49 = v276 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (v290 >= v291 && v44 >= v16)
          {
            v51 = v47 != v276;
            if (v42 != v293)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v277;
          }

          if (v284)
          {
            v72 = 0;
            v73 = v268 >> (*(result + 57) != 0);
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

            v256 = (v72 >> 3) - 1;
            v257 = (v75 >> 2) - 1;
            if ((v74 & 1) != 0 || (v258 = 32 - __clz(~(-1 << -__clz(v256))), v259 = 32 - __clz(~(-1 << -__clz(v257))), !(v259 | v258)))
            {
              v267 = 0;
            }

            else
            {
              v260 = 0;
              v261 = 0;
              v262 = v42 & v256;
              v263 = v25 & v257;
              v264 = v259 != 0;
              v265 = v258 != 0;
              v266 = 1;
              do
              {
                --v259;
                if (v264)
                {
                  v261 |= (v266 & v263) << v260++;
                }

                else
                {
                  v259 = 0;
                }

                --v258;
                if (v265)
                {
                  v261 |= (v266 & v262) << v260++;
                }

                else
                {
                  v258 = 0;
                }

                v266 *= 2;
                --v260;
                v265 = v258 != 0;
                v264 = v259 != 0;
              }

              while (v258 | v259);
              v267 = v261 << 11;
              result = v292;
            }

            v59 = v267 + ((v44 / v72 + v290 / v75 * ((v72 + v269) / v72)) << 14);
          }

          else if (v279)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v278.i8[0];
            v56 = v278.i8[4];
            v57 = v279.i32[0];
            v58 = v279.i32[1];
            do
            {
              --v57;
              if (v55)
              {
                v53 |= (v54 & v25) << v52++;
              }

              else
              {
                v57 = 0;
              }

              --v58;
              if (v56)
              {
                v53 |= (v54 & v42) << v52++;
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
          v76 = (v286 + v71);
          v77 = v288 + ((v46 - v16) << 6);
          v294 = (v285 + v59);
          if (v295)
          {
            v78 = __dst;
            if (!(v50 & 1 | (v49 < 8u) | (v287 < 4)))
            {
              goto LABEL_84;
            }

            v79 = (v286 + v71);
            v80 = v48;
            v81 = v49;
            memcpy(__dst, (v285 + v59), sizeof(__dst));
            v44 = 8 * v42;
            LOBYTE(v49) = v81;
            v48 = v80;
            v76 = v79;
            result = v292;
          }

          else
          {
            v78 = (v285 + v59);
            if (!(v50 & 1 | (v49 < 8u) | (v287 < 4)))
            {
LABEL_84:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v77, a11, v78, v76, v49, v289);
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v82 = v46 - v44;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v297 = v78;
          v305 = v49;
          v306 = v289;
          v301 = v281;
          v302 = v82;
          v298 = v76;
          v299 = v77;
          v300 = a11;
          v303 = v280;
          v304 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_85:
            v16 = v282;
            goto LABEL_167;
          }

          v83 = *v76;
          v16 = v282;
          if (v83 == 255)
          {
            v86 = *(v78 + 1);
            v87 = *(v78 + 2);
            v88 = *(v78 + 3);
            v89 = *(v78 + 4);
            v90 = *(v78 + 5);
            v91 = *(v78 + 6);
            v92 = *(v78 + 7);
            v93 = *(v78 + 8);
            v94 = *(v78 + 9);
            v95 = *(v78 + 10);
            v96 = *(v78 + 11);
            v97 = *(v78 + 12);
            v98 = *(v78 + 13);
            v99 = *(v78 + 14);
            v100 = *(v78 + 15);
            v308 = *v78;
            v309 = v86;
            v310 = v87;
            v311 = v88;
            v312 = v89;
            v313 = v90;
            v314 = v91;
            v315 = v92;
            v340 = v93;
            v341 = v94;
            v342 = v95;
            v343 = v96;
            v84 = 256;
            v344 = v97;
            v345 = v98;
            v346 = v99;
            v347 = v100;
          }

          else if (v83 == 7)
          {
            v85 = vld1q_dup_f64(v78);
            v308 = v85;
            v309 = v85;
            v310 = v85;
            v311 = v85;
            v312 = v85;
            v313 = v85;
            v314 = v85;
            v315 = v85;
            v340 = v85;
            v341 = v85;
            v342 = v85;
            v343 = v85;
            v344 = v85;
            v345 = v85;
            v84 = 8;
            v346 = v85;
            v347 = v85;
          }

          else if (*v76)
          {
            v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v308, 512, v78, v83);
          }

          else
          {
            v84 = 0;
            v315 = 0u;
            v314 = 0u;
            v313 = 0u;
            v312 = 0u;
            v311 = 0u;
            v310 = 0u;
            v309 = 0u;
            v308 = 0u;
            v340 = 0u;
            v341 = 0u;
            v342 = 0u;
            v343 = 0u;
            v344 = 0u;
            v345 = 0u;
            v346 = 0u;
            v347 = 0u;
          }

          v101 = &v78[v84];
          v102 = v76[1];
          if (v102 == 255)
          {
            v105 = *(v101 + 16);
            v106 = *(v101 + 32);
            v107 = *(v101 + 48);
            v108 = *(v101 + 64);
            v109 = *(v101 + 80);
            v110 = *(v101 + 96);
            v111 = *(v101 + 112);
            v112 = *(v101 + 128);
            v113 = *(v101 + 144);
            v114 = *(v101 + 160);
            v115 = *(v101 + 176);
            v116 = *(v101 + 192);
            v117 = *(v101 + 208);
            v118 = *(v101 + 224);
            v119 = *(v101 + 240);
            v316 = *v101;
            v317 = v105;
            v318 = v106;
            v319 = v107;
            v320 = v108;
            v321 = v109;
            v322 = v110;
            v323 = v111;
            v348 = v112;
            v349 = v113;
            v350 = v114;
            v351 = v115;
            v103 = 256;
            v352 = v116;
            v353 = v117;
            v354 = v118;
            v355 = v119;
          }

          else if (v102 == 7)
          {
            v104 = vld1q_dup_f64(v101);
            v316 = v104;
            v317 = v104;
            v318 = v104;
            v319 = v104;
            v320 = v104;
            v321 = v104;
            v322 = v104;
            v323 = v104;
            v348 = v104;
            v349 = v104;
            v350 = v104;
            v351 = v104;
            v352 = v104;
            v353 = v104;
            v103 = 8;
            v354 = v104;
            v355 = v104;
          }

          else if (v76[1])
          {
            v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v316, 512, v101, v102);
          }

          else
          {
            v103 = 0;
            v322 = 0u;
            v323 = 0u;
            v320 = 0u;
            v321 = 0u;
            v318 = 0u;
            v319 = 0u;
            v316 = 0u;
            v317 = 0u;
            v348 = 0u;
            v349 = 0u;
            v350 = 0u;
            v351 = 0u;
            v352 = 0u;
            v353 = 0u;
            v354 = 0u;
            v355 = 0u;
          }

          v120 = v101 + v103;
          v121 = v76[2];
          if (v121 == 255)
          {
            v124 = *(v120 + 16);
            v125 = *(v120 + 32);
            v126 = *(v120 + 48);
            v127 = *(v120 + 64);
            v128 = *(v120 + 80);
            v129 = *(v120 + 96);
            v130 = *(v120 + 112);
            v131 = *(v120 + 128);
            v132 = *(v120 + 144);
            v133 = *(v120 + 160);
            v134 = *(v120 + 176);
            v135 = *(v120 + 192);
            v136 = *(v120 + 208);
            v137 = *(v120 + 224);
            v138 = *(v120 + 240);
            v372 = *v120;
            v373 = v124;
            v374 = v125;
            v375 = v126;
            v376 = v127;
            v377 = v128;
            v378 = v129;
            v379 = v130;
            v404 = v131;
            v405 = v132;
            v406 = v133;
            v407 = v134;
            v122 = 256;
            v408 = v135;
            v409 = v136;
            v410 = v137;
            v411 = v138;
          }

          else if (v121 == 7)
          {
            v123 = vld1q_dup_f64(v120);
            v372 = v123;
            v373 = v123;
            v374 = v123;
            v375 = v123;
            v376 = v123;
            v377 = v123;
            v378 = v123;
            v379 = v123;
            v404 = v123;
            v405 = v123;
            v406 = v123;
            v407 = v123;
            v408 = v123;
            v409 = v123;
            v410 = v123;
            v122 = 8;
            v411 = v123;
          }

          else if (v76[2])
          {
            v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v372, 512, v120, v121);
          }

          else
          {
            v122 = 0;
            v378 = 0u;
            v379 = 0u;
            v376 = 0u;
            v377 = 0u;
            v374 = 0u;
            v375 = 0u;
            v372 = 0u;
            v373 = 0u;
            v404 = 0u;
            v405 = 0u;
            v406 = 0u;
            v407 = 0u;
            v408 = 0u;
            v409 = 0u;
            v410 = 0u;
            v411 = 0u;
          }

          v139 = v120 + v122;
          v140 = v76[3];
          if (v140 == 255)
          {
            v143 = *(v139 + 16);
            v144 = *(v139 + 32);
            v145 = *(v139 + 48);
            v146 = *(v139 + 64);
            v147 = *(v139 + 80);
            v148 = *(v139 + 96);
            v149 = *(v139 + 112);
            v150 = *(v139 + 128);
            v151 = *(v139 + 144);
            v152 = *(v139 + 160);
            v153 = *(v139 + 176);
            v154 = *(v139 + 192);
            v155 = *(v139 + 208);
            v156 = *(v139 + 224);
            v157 = *(v139 + 240);
            v380 = *v139;
            v381 = v143;
            v382 = v144;
            v383 = v145;
            v384 = v146;
            v385 = v147;
            v386 = v148;
            v387 = v149;
            v412 = v150;
            v413 = v151;
            v414 = v152;
            v415 = v153;
            v141 = 256;
            v416 = v154;
            v417 = v155;
            v418 = v156;
            v419 = v157;
          }

          else if (v140 == 7)
          {
            v142 = vld1q_dup_f64(v139);
            v380 = v142;
            v381 = v142;
            v382 = v142;
            v383 = v142;
            v384 = v142;
            v385 = v142;
            v386 = v142;
            v387 = v142;
            v412 = v142;
            v413 = v142;
            v414 = v142;
            v415 = v142;
            v416 = v142;
            v417 = v142;
            v418 = v142;
            v141 = 8;
            v419 = v142;
          }

          else if (v76[3])
          {
            v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v380, 512, v139, v140);
          }

          else
          {
            v141 = 0;
            v386 = 0u;
            v387 = 0u;
            v384 = 0u;
            v385 = 0u;
            v382 = 0u;
            v383 = 0u;
            v380 = 0u;
            v381 = 0u;
            v412 = 0u;
            v413 = 0u;
            v414 = 0u;
            v415 = 0u;
            v416 = 0u;
            v417 = 0u;
            v418 = 0u;
            v419 = 0u;
          }

          v158 = v139 + v141;
          v159 = v76[4];
          if (v159 == 255)
          {
            v162 = *(v158 + 16);
            v163 = *(v158 + 32);
            v164 = *(v158 + 48);
            v165 = *(v158 + 64);
            v166 = *(v158 + 80);
            v167 = *(v158 + 96);
            v168 = *(v158 + 112);
            v169 = *(v158 + 128);
            v170 = *(v158 + 144);
            v171 = *(v158 + 160);
            v172 = *(v158 + 176);
            v173 = *(v158 + 192);
            v174 = *(v158 + 208);
            v175 = *(v158 + 224);
            v176 = *(v158 + 240);
            v324 = *v158;
            v325 = v162;
            v326 = v163;
            v327 = v164;
            v328 = v165;
            v329 = v166;
            v330 = v167;
            v331 = v168;
            v356 = v169;
            v357 = v170;
            v358 = v171;
            v359 = v172;
            v160 = 256;
            v360 = v173;
            v361 = v174;
            v362 = v175;
            v363 = v176;
          }

          else if (v159 == 7)
          {
            v161 = vld1q_dup_f64(v158);
            v324 = v161;
            v325 = v161;
            v326 = v161;
            v327 = v161;
            v328 = v161;
            v329 = v161;
            v330 = v161;
            v331 = v161;
            v356 = v161;
            v357 = v161;
            v358 = v161;
            v359 = v161;
            v360 = v161;
            v361 = v161;
            v160 = 8;
            v362 = v161;
            v363 = v161;
          }

          else if (v76[4])
          {
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v324, 512, v158, v159);
          }

          else
          {
            v160 = 0;
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v326 = 0u;
            v327 = 0u;
            v324 = 0u;
            v325 = 0u;
            v356 = 0u;
            v357 = 0u;
            v358 = 0u;
            v359 = 0u;
            v360 = 0u;
            v361 = 0u;
            v362 = 0u;
            v363 = 0u;
          }

          v177 = v158 + v160;
          v178 = v76[5];
          if (v178 == 255)
          {
            v181 = *(v177 + 16);
            v182 = *(v177 + 32);
            v183 = *(v177 + 48);
            v184 = *(v177 + 64);
            v185 = *(v177 + 80);
            v186 = *(v177 + 96);
            v187 = *(v177 + 112);
            v188 = *(v177 + 128);
            v189 = *(v177 + 144);
            v190 = *(v177 + 160);
            v191 = *(v177 + 176);
            v192 = *(v177 + 192);
            v193 = *(v177 + 208);
            v194 = *(v177 + 224);
            v195 = *(v177 + 240);
            v332 = *v177;
            v333 = v181;
            v334 = v182;
            v335 = v183;
            v336 = v184;
            v337 = v185;
            v338 = v186;
            v339 = v187;
            v364 = v188;
            v365 = v189;
            v366 = v190;
            v367 = v191;
            v179 = 256;
            v368 = v192;
            v369 = v193;
            v370 = v194;
            v371 = v195;
          }

          else if (v178 == 7)
          {
            v180 = vld1q_dup_f64(v177);
            v332 = v180;
            v333 = v180;
            v334 = v180;
            v335 = v180;
            v336 = v180;
            v337 = v180;
            v338 = v180;
            v339 = v180;
            v364 = v180;
            v365 = v180;
            v366 = v180;
            v367 = v180;
            v368 = v180;
            v369 = v180;
            v179 = 8;
            v370 = v180;
            v371 = v180;
          }

          else if (v76[5])
          {
            v179 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v332, 512, v177, v178);
          }

          else
          {
            v179 = 0;
            v338 = 0u;
            v339 = 0u;
            v336 = 0u;
            v337 = 0u;
            v334 = 0u;
            v335 = 0u;
            v332 = 0u;
            v333 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
            v367 = 0u;
            v368 = 0u;
            v369 = 0u;
            v370 = 0u;
            v371 = 0u;
          }

          v196 = v177 + v179;
          v197 = v76[6];
          if (v197 == 255)
          {
            v200 = *(v196 + 16);
            v201 = *(v196 + 32);
            v202 = *(v196 + 48);
            v203 = *(v196 + 64);
            v204 = *(v196 + 80);
            v205 = *(v196 + 96);
            v206 = *(v196 + 112);
            v207 = *(v196 + 128);
            v208 = *(v196 + 144);
            v209 = *(v196 + 160);
            v210 = *(v196 + 176);
            v211 = *(v196 + 192);
            v212 = *(v196 + 208);
            v213 = *(v196 + 224);
            v214 = *(v196 + 240);
            v388 = *v196;
            v389 = v200;
            v390 = v201;
            v391 = v202;
            v392 = v203;
            v393 = v204;
            v394 = v205;
            v395 = v206;
            v420 = v207;
            v421 = v208;
            v422 = v209;
            v423 = v210;
            v198 = 256;
            v424 = v211;
            v425 = v212;
            v426 = v213;
            v427 = v214;
          }

          else if (v197 == 7)
          {
            v199 = vld1q_dup_f64(v196);
            v388 = v199;
            v389 = v199;
            v390 = v199;
            v391 = v199;
            v392 = v199;
            v393 = v199;
            v394 = v199;
            v395 = v199;
            v420 = v199;
            v421 = v199;
            v422 = v199;
            v423 = v199;
            v424 = v199;
            v425 = v199;
            v426 = v199;
            v198 = 8;
            v427 = v199;
          }

          else if (v76[6])
          {
            v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v388, 512, v196, v197);
          }

          else
          {
            v198 = 0;
            v394 = 0u;
            v395 = 0u;
            v392 = 0u;
            v393 = 0u;
            v390 = 0u;
            v391 = 0u;
            v388 = 0u;
            v389 = 0u;
            v420 = 0u;
            v421 = 0u;
            v422 = 0u;
            v423 = 0u;
            v424 = 0u;
            v425 = 0u;
            v426 = 0u;
            v427 = 0u;
          }

          v215 = v196 + v198;
          v216 = v76[7];
          if (v216 == 255)
          {
            v220 = *(v215 + 16);
            v221 = *(v215 + 32);
            v222 = *(v215 + 48);
            v223 = *(v215 + 64);
            v224 = *(v215 + 80);
            v225 = *(v215 + 96);
            v226 = *(v215 + 112);
            v227 = *(v215 + 128);
            v228 = *(v215 + 144);
            v229 = *(v215 + 160);
            v230 = *(v215 + 176);
            v231 = *(v215 + 192);
            v232 = *(v215 + 208);
            v233 = *(v215 + 224);
            v234 = *(v215 + 240);
            v396 = *v215;
            v397 = v220;
            v398 = v221;
            v399 = v222;
            v400 = v223;
            v401 = v224;
            v402 = v225;
            v403 = v226;
            v428 = v227;
            v429 = v228;
            v430 = v229;
            v431 = v230;
            v217 = v280;
            v218 = v281;
            v432 = v231;
            v433 = v232;
            v434 = v233;
            v435 = v234;
            if (v280)
            {
              goto LABEL_145;
            }
          }

          else if (v216 == 7)
          {
            v219 = vld1q_dup_f64(v215);
            v396 = v219;
            v397 = v219;
            v398 = v219;
            v399 = v219;
            v400 = v219;
            v401 = v219;
            v402 = v219;
            v403 = v219;
            v428 = v219;
            v429 = v219;
            v430 = v219;
            v431 = v219;
            v432 = v219;
            v433 = v219;
            v434 = v219;
            v217 = v280;
            v218 = v281;
            v435 = v219;
            if (v280)
            {
              goto LABEL_145;
            }
          }

          else if (v76[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v396, 512, v215, v216);
            v218 = v301;
            v82 = v302;
            v217 = v303;
            if (v303)
            {
LABEL_145:
              if (v304)
              {
                v235 = 0;
                v236 = v218;
                v237 = v218 << 9;
                v238 = v82 << 6;
                v239 = &v308 + v237 + v238;
                v240 = v299;
                v241 = v300;
                v242 = v304 << 6;
                v243 = &__dst[512 * v217 + 1536 + 512 * v236 + v242 + v238];
                if (v242)
                {
                  v244 = (v242 - 1) >> 32 == 0;
                }

                else
                {
                  v244 = 0;
                }

                v245 = !v244;
                v247 = v239 < v299 + v300 * (v217 - 1) + v242 && v299 < v243;
                v248 = v245 | (v300 < 0) | v247;
                v249 = &v309 + v237 + v238;
                v250 = (v299 + 16);
                do
                {
                  v251 = v250;
                  v252 = v249;
                  v253 = v242;
                  if (v248)
                  {
                    v254 = 0;
                    do
                    {
                      v239[v254] = *(v240 + v254);
                      ++v254;
                    }

                    while (v242 > v254);
                  }

                  else
                  {
                    do
                    {
                      v255 = *v251;
                      *(v252 - 1) = *(v251 - 1);
                      *v252 = v255;
                      v252 += 2;
                      v251 += 2;
                      v253 -= 32;
                    }

                    while (v253);
                  }

                  ++v235;
                  v249 += 512;
                  v250 = (v250 + v241);
                  v239 += 512;
                  v240 += v241;
                }

                while (v235 != v217);
              }
            }
          }

          else
          {
            v402 = 0u;
            v403 = 0u;
            v400 = 0u;
            v401 = 0u;
            v398 = 0u;
            v399 = 0u;
            v396 = 0u;
            v397 = 0u;
            v428 = 0u;
            v429 = 0u;
            v430 = 0u;
            v431 = 0u;
            v432 = 0u;
            v433 = 0u;
            v217 = v280;
            v218 = v281;
            v434 = 0u;
            v435 = 0u;
            if (v280)
            {
              goto LABEL_145;
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v308, 512, v297, v298, v305, v306);
LABEL_167:
          if (v295)
          {
            memcpy(v294, v78, 0x800uLL);
          }

          v29 = v42++ == v283 >> 3;
          result = v292;
        }

        while (!v29);
        v29 = v25++ == v275;
      }

      while (!v29);
    }
  }

  return result;
}