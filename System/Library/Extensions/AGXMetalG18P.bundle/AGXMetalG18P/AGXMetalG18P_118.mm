uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 256, v71, v73);
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
              v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 256, v83, v84);
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
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v261, 256, v94, v95);
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
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v265, 256, v105, v106);
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
              v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 256, v116, v117);
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
              v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v241, 256, v127, v128);
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
              v140 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v269, 256, v138, v139);
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
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v273, 256, v149, v150);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v231 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v182 = a8;
  v164 = a8 + a10 - 1;
  v183 = a1;
  if (*(a1 + 168))
  {
    v21 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v21 = 0;
  }

  v22 = a8 >> 2;
  v23 = a5 - 1;
  v24 = a6 - 1;
  v163 = v164 >> 2;
  v25 = (v21 & 0xD00) == 0 || v21 == 768;
  v26 = v21 & 0xE00;
  v28 = !v25 && v26 != 1024;
  v186 = v28;
  result = a1;
  if (*(a1 + 232) == 1)
  {
    v30 = *(a1 + 273);
    v31 = *(a1 + 272);
    v32 = __clz(v23);
    if (1 << v30 >= a6 || a5 >> v31)
    {
      if (!(a6 >> v30) && 1 << v31 < a5)
      {
        if (a6 < 2)
        {
          v35 = 0;
        }

        else
        {
          v35 = __clz(~(-1 << -__clz(v24))) | 0xFFFFFFE0;
        }

        v31 += v30 + v35;
        v30 = -v35;
      }
    }

    else
    {
      v33 = 32 - __clz(~(-1 << -v32));
      v34 = v31 + v30;
      if (a5 < 2)
      {
        v33 = 0;
      }

      v30 = v34 - v33;
      v31 = v33;
    }

    if (a5 < 2)
    {
      if (v31)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v32)) < v31)
    {
LABEL_27:
      v176 = 0;
LABEL_32:
      v173 = v31 - 3;
      v167 = v30 - 2;
      v37 = -1 << *(*(a1 + 208) + 48);
      v161 = (((~v37 + a5) & v37) + ~(-1 << v31)) >> v31;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v36 = 0;
    }

    else
    {
      v36 = 32 - __clz(~(-1 << -__clz(v24)));
    }

    v176 = v36 >= v30;
    goto LABEL_32;
  }

  v176 = 0;
  v161 = 0;
  v167 = 0;
  v173 = 0;
LABEL_33:
  if (v22 <= v163)
  {
    v175 = a7 + a9 - 1;
    v160 = a7 >> 3;
    if (a7 >> 3 <= v175 >> 3)
    {
      v184 = v23 >> 3;
      v169 = v23 & 7;
      v158 = v24 & 3;
      v159 = v24 >> 2;
      v157 = ~(-1 << v167);
      v38 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v39.i8 = vcgt_u32(v38, 0xF00000007);
      v40.i64[0] = -1;
      v41.i64[0] = 0x2000000020;
      v42 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v38, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v39.i8);
      v166 = v42;
      v168 = v42.i32[0] | v42.i32[1];
      v165 = v39.i64[0];
      v174 = a7;
      do
      {
        v43 = (4 * v22) | 3;
        if (4 * v22 <= v182)
        {
          v44 = v182;
        }

        else
        {
          v44 = 4 * v22;
        }

        if (v164 < v43)
        {
          v43 = v164;
        }

        v172 = v44 - 4 * v22;
        v45 = v43 - v44;
        v46 = v45 + 1;
        v47 = v45 != v158;
        v171 = v46;
        v48 = v46 != 4;
        v49 = v158 + 1;
        if (v22 != v159)
        {
          v49 = 4;
          v47 = v48;
        }

        v170 = v47;
        v50 = v160;
        v51 = v22 & v157;
        v180 = a3 + (v44 - v182) * a11;
        v181 = v49;
        v179 = v49;
        do
        {
          v52 = 8 * v50;
          v53 = 8 * (v50 + 1) - 1;
          if (8 * v50 <= a7)
          {
            v54 = a7;
          }

          else
          {
            v54 = 8 * v50;
          }

          if (v175 < v53)
          {
            v53 = v175;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v50 == v184)
          {
            v57 = v169 + 1;
          }

          else
          {
            v57 = 8;
          }

          v58 = 1;
          if (4 * v22 >= v182 && v52 >= a7)
          {
            v59 = v55 != v169;
            if (v50 != v184)
            {
              v59 = v56 != 8;
            }

            v58 = v59 || v170;
          }

          if (v176)
          {
            if (v173 | v167)
            {
              v60 = 0;
              v61 = 0;
              v62 = v173 != 0;
              v63 = 1;
              v65 = v167 != 0;
              v64 = v167;
              v66 = v173;
              do
              {
                --v64;
                if (v65)
                {
                  v61 |= (v51 & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                --v66;
                if (v62)
                {
                  v61 |= (v50 & ~(-1 << v173) & v63) << v60++;
                }

                else
                {
                  v66 = 0;
                }

                v63 *= 2;
                --v60;
                v62 = v66 != 0;
                v65 = v64 != 0;
              }

              while (v66 | v64);
              v67 = v61 << 9;
            }

            else
            {
              v67 = 0;
            }

            v75 = v67 + *(result + 336) * ((v50 >> v173) + (v22 >> v167) * v161);
          }

          else if (v168)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v165;
            v71 = BYTE4(v165);
            v73 = v166.i32[0];
            v74 = v166.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v22) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v50) << v68++;
              }

              else
              {
                v74 = 0;
              }

              v70 *= 2;
              --v68;
              v71 = v74 != 0;
              v72 = v73 != 0;
            }

            while (v74 | v73);
            v75 = v69 << 9;
          }

          else
          {
            v75 = 0;
          }

          v76 = *(result + 128) >> (*(result + 144) + a12);
          if (v76 <= 1)
          {
            v76 = 1;
          }

          v77 = v76 + 7;
          if (v77 < 0x10)
          {
            v78 = 0;
          }

          else
          {
            v78 = 32 - __clz(~(-1 << -__clz((v77 >> 3) - 1)));
          }

          v79 = *(result + 132) >> (*(result + 144) + a12);
          if (v79 <= 1)
          {
            v79 = 1;
          }

          v80 = v79 + 3;
          if (v80 < 8)
          {
            v81 = 0;
            if (!v78)
            {
LABEL_103:
              v87 = 0;
              goto LABEL_104;
            }
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 2) - 1)));
            if (!(v81 | v78))
            {
              goto LABEL_103;
            }
          }

          v82 = 0;
          v83 = 0;
          v84 = v78 != 0;
          v85 = v81 != 0;
          v86 = 1;
          do
          {
            --v78;
            if (v84)
            {
              v83 |= (v86 & v50) << v82++;
            }

            else
            {
              v78 = 0;
            }

            --v81;
            if (v85)
            {
              v83 |= (v86 & v22) << v82++;
            }

            else
            {
              v81 = 0;
            }

            v86 *= 2;
            --v82;
            v85 = v81 != 0;
            v84 = v78 != 0;
          }

          while (v81 | v78);
          v87 = 8 * v83;
LABEL_104:
          v88 = (a4 + v87);
          v89 = v180 + 16 * (v54 - a7);
          v185 = (a2 + v75);
          if (v186)
          {
            v90 = __dst;
            if (!(v58 & 1 | (v57 < 8u) | (v179 < 4)))
            {
              goto LABEL_110;
            }

            v91 = (a4 + v87);
            v92 = v56;
            memcpy(__dst, (a2 + v75), sizeof(__dst));
            v56 = v92;
            v88 = v91;
            v51 = v22 & v157;
            result = v183;
          }

          else
          {
            v90 = (a2 + v75);
            if (!(v58 & 1 | (v57 < 8u) | (v179 < 4)))
            {
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v89, a11, v90, v88, v57, v181, v42, *v39.i8, *v40.i64, *v41.i64, v17, v18, v19, v20);
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v188 = v90;
          v196 = v57;
          v197 = v181;
          v192 = v172;
          v193 = v54 - v52;
          v189 = v88;
          v190 = v89;
          v191 = a11;
          v194 = v171;
          v195 = v56;
          if (v58)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            a7 = v174;
            v93 = v50 + 1;
            goto LABEL_202;
          }

          v94 = *v88;
          a7 = v174;
          if (v94 == 63)
          {
            v96 = *v90;
            v39 = v90[1];
            v40 = v90[2];
            v41 = v90[3];
            v199 = *v90;
            v200 = v39;
            v207 = v40;
            v208 = v41;
            v95 = 64;
          }

          else if (v94 == 1)
          {
            v96 = vld1q_dup_s16(v90->i16);
            v199 = v96;
            v200 = v96;
            v207 = v96;
            v208 = v96;
            v95 = 2;
          }

          else if (*v88)
          {
            v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v199, 128, v90, v94, *&v42, *v39.i64, *v40.i64, *v41.i8);
          }

          else
          {
            v95 = 0;
            v96.i64[0] = 0;
            v199 = 0u;
            v200 = 0u;
            v207 = 0u;
            v208 = 0u;
          }

          v97 = v90->i64 + v95;
          v98 = v88[1];
          if (v98 == 63)
          {
            v100 = *v97;
            v39 = *(v97 + 16);
            v40 = *(v97 + 32);
            v41 = *(v97 + 48);
            v201 = *v97;
            v202 = v39;
            v209 = v40;
            v210 = v41;
            v99 = 64;
          }

          else if (v98 == 1)
          {
            v100 = vld1q_dup_s16(v97);
            v201 = v100;
            v202 = v100;
            v209 = v100;
            v210 = v100;
            v99 = 2;
          }

          else if (v88[1])
          {
            v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v201, 128, v97, v98, *v96.i64, *v39.i64, *v40.i64, *v41.i8);
          }

          else
          {
            v99 = 0;
            v100.i64[0] = 0;
            v201 = 0u;
            v202 = 0u;
            v209 = 0u;
            v210 = 0u;
          }

          v101 = v97 + v99;
          v102 = v88[2];
          if (v102 == 63)
          {
            v104 = *v101;
            v39 = *(v101 + 16);
            v40 = *(v101 + 32);
            v41 = *(v101 + 48);
            v215 = *v101;
            v216 = v39;
            v223 = v40;
            v224 = v41;
            v103 = 64;
          }

          else if (v102 == 1)
          {
            v104 = vld1q_dup_s16(v101);
            v215 = v104;
            v216 = v104;
            v223 = v104;
            v224 = v104;
            v103 = 2;
          }

          else if (v88[2])
          {
            v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v215, 128, v101, v102, *v100.i64, *v39.i64, *v40.i64, *v41.i8);
          }

          else
          {
            v103 = 0;
            v104.i64[0] = 0;
            v215 = 0u;
            v216 = 0u;
            v223 = 0u;
            v224 = 0u;
          }

          v105 = v101 + v103;
          v106 = v88[3];
          if (v106 == 63)
          {
            v108 = *v105;
            v39 = *(v105 + 16);
            v40 = *(v105 + 32);
            v41 = *(v105 + 48);
            v217 = *v105;
            v218 = v39;
            v225 = v40;
            v226 = v41;
            v107 = 64;
          }

          else if (v106 == 1)
          {
            v108 = vld1q_dup_s16(v105);
            v217 = v108;
            v218 = v108;
            v225 = v108;
            v226 = v108;
            v107 = 2;
          }

          else if (v88[3])
          {
            v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 128, v105, v106, *v104.i64, *v39.i64, *v40.i64, *v41.i8);
          }

          else
          {
            v107 = 0;
            v108.i64[0] = 0;
            v217 = 0u;
            v218 = 0u;
            v225 = 0u;
            v226 = 0u;
          }

          v109 = v105 + v107;
          v110 = v88[4];
          if (v110 == 63)
          {
            v112 = *v109;
            v39 = *(v109 + 16);
            v40 = *(v109 + 32);
            v41 = *(v109 + 48);
            v203 = *v109;
            v204 = v39;
            v211 = v40;
            v212 = v41;
            v111 = 64;
          }

          else if (v110 == 1)
          {
            v112 = vld1q_dup_s16(v109);
            v203 = v112;
            v204 = v112;
            v211 = v112;
            v212 = v112;
            v111 = 2;
          }

          else if (v88[4])
          {
            v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v203, 128, v109, v110, *v108.i64, *v39.i64, *v40.i64, *v41.i8);
          }

          else
          {
            v111 = 0;
            v112.i64[0] = 0;
            v203 = 0u;
            v204 = 0u;
            v211 = 0u;
            v212 = 0u;
          }

          v113 = v109 + v111;
          v114 = v88[5];
          if (v114 == 63)
          {
            v116 = *v113;
            v39 = *(v113 + 16);
            v40 = *(v113 + 32);
            v41 = *(v113 + 48);
            v205 = *v113;
            v206 = v39;
            v213 = v40;
            v214 = v41;
            v115 = 64;
          }

          else if (v114 == 1)
          {
            v116 = vld1q_dup_s16(v113);
            v205 = v116;
            v206 = v116;
            v213 = v116;
            v214 = v116;
            v115 = 2;
          }

          else if (v88[5])
          {
            v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v205, 128, v113, v114, *v112.i64, *v39.i64, *v40.i64, *v41.i8);
          }

          else
          {
            v115 = 0;
            v116.i64[0] = 0;
            v205 = 0u;
            v206 = 0u;
            v213 = 0u;
            v214 = 0u;
          }

          v117 = v113 + v115;
          v118 = v88[6];
          if (v118 == 63)
          {
            v120 = *v117;
            v39 = *(v117 + 16);
            v40 = *(v117 + 32);
            v41 = *(v117 + 48);
            v219 = *v117;
            v220 = v39;
            v227 = v40;
            v228 = v41;
            v119 = 64;
          }

          else if (v118 == 1)
          {
            v120 = vld1q_dup_s16(v117);
            v219 = v120;
            v220 = v120;
            v227 = v120;
            v228 = v120;
            v119 = 2;
          }

          else if (v88[6])
          {
            v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v219, 128, v117, v118, *v116.i64, *v39.i64, *v40.i64, *v41.i8);
          }

          else
          {
            v119 = 0;
            v120.i64[0] = 0;
            v219 = 0u;
            v220 = 0u;
            v227 = 0u;
            v228 = 0u;
          }

          v121 = v117 + v119;
          v122 = v88[7];
          if (v122 == 63)
          {
            v123 = *v121;
            v39 = *(v121 + 16);
            v40 = *(v121 + 32);
            v41 = *(v121 + 48);
            v221 = *v121;
            v222 = v39;
            v229 = v40;
            v230 = v41;
            v93 = v50 + 1;
            v124 = v194;
            if (!v194)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v93 = v50 + 1;
            if (v122 == 1)
            {
              v123 = vld1q_dup_s16(v121);
              v221 = v123;
              v222 = v123;
              v229 = v123;
              v230 = v123;
              v124 = v194;
              if (!v194)
              {
                goto LABEL_201;
              }
            }

            else if (v88[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v221, 128, v121, v122, *v120.i64, *v39.i64, *v40.i64, *v41.i8);
              v124 = v194;
              if (!v194)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v123.i64[0] = 0;
              v221 = 0u;
              v222 = 0u;
              v229 = 0u;
              v230 = 0u;
              v124 = v194;
              if (!v194)
              {
                goto LABEL_201;
              }
            }
          }

          v125 = v195;
          if (v195)
          {
            v126 = 0;
            v127 = v192 << 7;
            v128 = 16 * v193;
            v129 = &v199.i8[v127 + v128];
            v130 = v190;
            v131 = v191;
            v132 = 16 * v195;
            if (16 * v195)
            {
              v133 = (16 * v195 - 1) >> 32 == 0;
            }

            else
            {
              v133 = 0;
            }

            v134 = !v133;
            v136 = v129 < &v190[v195].i8[v191 * (v124 - 1)] && v190 < &__dst[128 * v124 + 384 + 128 * v192 + 16 * v195 + v128];
            v137 = v132 & 0x1FFFFFFE0;
            v138 = v134 | (v191 < 0) | v136;
            v139 = &v200.i8[v127 + v128];
            v140 = v190 + 1;
            v141 = v129;
            v142 = v190;
            do
            {
              v143 = (v130 + v126 * v131);
              v144 = &v129[128 * v126];
              if (v138)
              {
                v145 = 0;
              }

              else
              {
                if (v125 == 1)
                {
                  v149 = 0;
LABEL_193:
                  v150 = -16 * v125 + v149;
                  v151 = (v142 + v149);
                  v152 = &v141[v149];
                  do
                  {
                    v153 = *v151++;
                    v123.i64[0] = v153;
                    *v152 = v153;
                    v152 += 16;
                    v150 += 16;
                  }

                  while (v150);
                  goto LABEL_185;
                }

                v154 = v140;
                v155 = v139;
                v156 = v132 & 0x1FFFFFFE0;
                do
                {
                  v123 = v154[-1];
                  v39 = *v154;
                  v155[-1] = v123;
                  *v155 = v39;
                  v155 += 2;
                  v154 += 2;
                  v156 -= 32;
                }

                while (v156);
                if (v132 == v137)
                {
                  goto LABEL_185;
                }

                v149 = v132 & 0x1FFFFFFE0;
                if (v125)
                {
                  goto LABEL_193;
                }

                v143 += v137;
                v144 += v137;
                v145 = v132 & 0xFFFFFFE0;
              }

              v146 = v145 + 1;
              do
              {
                v147 = *v143++;
                *v144++ = v147;
              }

              while (v132 > v146++);
LABEL_185:
              ++v126;
              v139 += 128;
              v140 = (v140 + v131);
              v142 += v131;
              v141 += 128;
            }

            while (v126 != v124);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v199, 128, v188, v189, v196, v197, *v123.i8, *v39.i8, *v40.i64, *v41.i64, v17, v18, v19, v20);
LABEL_202:
          if (v186)
          {
            memcpy(v185, v90, 0x200uLL);
          }

          v25 = v50 == v175 >> 3;
          v50 = v93;
          result = v183;
        }

        while (!v25);
        v25 = v22++ == v163;
      }

      while (!v25);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v239 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v190 = a8;
  v172 = a8 + a10 - 1;
  v191 = a1;
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
  v171 = v172 >> 2;
  v22 = (v18 & 0xD00) == 0 || v18 == 768;
  v23 = v18 & 0xE00;
  v25 = !v22 && v23 != 1024;
  v194 = v25;
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
      v184 = 0;
LABEL_32:
      v182 = v27 - 3;
      v175 = v26 - 2;
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
      v32 = 32 - __clz(~(-1 << -__clz(v21)));
    }

    v184 = v32 >= v26;
    goto LABEL_32;
  }

  v184 = 0;
  v169 = 0;
  v175 = 0;
  v182 = 0;
LABEL_33:
  if (v19 <= v171)
  {
    v183 = a7 + a9 - 1;
    v168 = a7 >> 3;
    if (a7 >> 3 <= v183 >> 3)
    {
      v192 = v20 >> 3;
      v178 = v20 & 7;
      v166 = v21 & 3;
      v167 = v21 >> 2;
      v165 = ~(-1 << v175);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v35.i8 = vcgt_u32(v34, 0xF00000007);
      v36.i64[0] = -1;
      v37.i64[0] = 0x2000000020;
      *v38.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v35.i8);
      v174 = v38.i64[0];
      v177 = v38.i32[0] | v38.i32[1];
      v173 = v35.i64[0];
      do
      {
        v39 = (4 * v19) | 3;
        if (4 * v19 <= v190)
        {
          v40 = v190;
        }

        else
        {
          v40 = 4 * v19;
        }

        if (v172 < v39)
        {
          v39 = v172;
        }

        v181 = v40 - 4 * v19;
        v41 = v39 - v40;
        v42 = v41 + 1;
        v43 = v41 != v166;
        v180 = v42;
        v44 = v42 != 4;
        v45 = v166 + 1;
        if (v19 != v167)
        {
          v45 = 4;
          v43 = v44;
        }

        v179 = v43;
        v46 = v168;
        v47 = v19 & v165;
        v188 = a3 + (v40 - v190) * a11;
        v189 = v45;
        v187 = v45;
        v48 = v191;
        do
        {
          v49 = 8 * v46;
          v50 = 8 * (v46 + 1) - 1;
          if (8 * v46 <= a7)
          {
            v51 = a7;
          }

          else
          {
            v51 = 8 * v46;
          }

          if (v183 < v50)
          {
            v50 = v183;
          }

          v52 = v50 - v51;
          v53 = v52 + 1;
          if (v46 == v192)
          {
            v54 = v178 + 1;
          }

          else
          {
            v54 = 8;
          }

          v55 = 1;
          if (4 * v19 >= v190 && v49 >= a7)
          {
            v56 = v52 != v178;
            if (v46 != v192)
            {
              v56 = v53 != 8;
            }

            v55 = v56 || v179;
          }

          if (v184)
          {
            if (v182 | v175)
            {
              v57 = 0;
              v58 = 0;
              v59 = v182 != 0;
              v60 = 1;
              v62 = v175 != 0;
              v61 = v175;
              v63 = v182;
              do
              {
                --v61;
                if (v62)
                {
                  v58 |= (v47 & v60) << v57++;
                }

                else
                {
                  v61 = 0;
                }

                --v63;
                if (v59)
                {
                  v58 |= (v46 & ~(-1 << v182) & v60) << v57++;
                }

                else
                {
                  v63 = 0;
                }

                v60 *= 2;
                --v57;
                v59 = v63 != 0;
                v62 = v61 != 0;
              }

              while (v63 | v61);
              v64 = v58 << 9;
            }

            else
            {
              v64 = 0;
            }

            v72 = v64 + *(v48 + 336) * ((v46 >> v182) + (v19 >> v175) * v169);
          }

          else if (v177)
          {
            v65 = 0;
            v66 = 0;
            v67 = 1;
            v69 = v173;
            v68 = BYTE4(v173);
            v70 = v174;
            v71 = HIDWORD(v174);
            do
            {
              --v70;
              if (v69)
              {
                v66 |= (v67 & v19) << v65++;
              }

              else
              {
                v70 = 0;
              }

              --v71;
              if (v68)
              {
                v66 |= (v67 & v46) << v65++;
              }

              else
              {
                v71 = 0;
              }

              v67 *= 2;
              --v65;
              v68 = v71 != 0;
              v69 = v70 != 0;
            }

            while (v71 | v70);
            v72 = v66 << 9;
          }

          else
          {
            v72 = 0;
          }

          v73 = *(v48 + 128) >> (*(v48 + 144) + a12);
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

          v76 = *(v48 + 132) >> (*(v48 + 144) + a12);
          if (v76 <= 1)
          {
            v76 = 1;
          }

          v77 = v76 + 3;
          if (v77 < 8)
          {
            v78 = 0;
            if (!v75)
            {
LABEL_103:
              v84 = 0;
              goto LABEL_104;
            }
          }

          else
          {
            v78 = 32 - __clz(~(-1 << -__clz((v77 >> 2) - 1)));
            if (!(v78 | v75))
            {
              goto LABEL_103;
            }
          }

          v79 = 0;
          v80 = 0;
          v81 = v75 != 0;
          v82 = v78 != 0;
          v83 = 1;
          do
          {
            --v75;
            if (v81)
            {
              v80 |= (v83 & v46) << v79++;
            }

            else
            {
              v75 = 0;
            }

            --v78;
            if (v82)
            {
              v80 |= (v83 & v19) << v79++;
            }

            else
            {
              v78 = 0;
            }

            v83 *= 2;
            --v79;
            v82 = v78 != 0;
            v81 = v75 != 0;
          }

          while (v78 | v75);
          v84 = 8 * v80;
LABEL_104:
          v85 = (a4 + v84);
          v86 = a7;
          v87 = (v188 + 16 * (v51 - a7));
          v193 = (a2 + v72);
          if (v194)
          {
            v88 = __dst;
            if (!(v55 & 1 | (v54 < 8u) | (v187 < 4)))
            {
              goto LABEL_110;
            }

            v176 = v53;
            v89 = v55;
            memcpy(__dst, (a2 + v72), sizeof(__dst));
            v55 = v89;
            v53 = v176;
          }

          else
          {
            v88 = (a2 + v72);
            if (!(v55 & 1 | (v54 < 8u) | (v187 < 4)))
            {
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v87, a11, v88, v85, v54, v189);
              a7 = v86;
              v48 = v191;
LABEL_111:
              v90 = v46 + 1;
              result = v193;
              if (!v194)
              {
                goto LABEL_46;
              }

LABEL_231:
              result = memcpy(result, v88, 0x200uLL);
              goto LABEL_46;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v191;
          v196 = v88;
          v204 = v54;
          v205 = v189;
          v200 = v181;
          v201 = v51 - v49;
          v197 = v85;
          v198 = v87;
          v199 = a11;
          v202 = v180;
          v203 = v53;
          if (v55)
          {
            dispatch_sync(*(*(v191 + 8) + 16552), block);
            a7 = v86;
            v48 = v191;
            goto LABEL_111;
          }

          v91 = *v85;
          a7 = v86;
          if (v91 == 63)
          {
            v93 = *v88;
            v35 = v88[1];
            v36 = v88[2];
            v37 = v88[3];
            v207 = *v88;
            v208 = v35;
            v215 = v36;
            v216 = v37;
            v92 = 64;
          }

          else if (v91 == 1)
          {
            v93 = vld1q_dup_s16(v88->i16);
            v207 = v93;
            v208 = v93;
            v215 = v93;
            v216 = v93;
            v92 = 2;
          }

          else if (*v85)
          {
            v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v207, 128, v88, v91, *v38.i64, *v35.i64, *v36.i64, *v37.i8);
          }

          else
          {
            v92 = 0;
            v93.i64[0] = 0;
            v207 = 0u;
            v208 = 0u;
            v215 = 0u;
            v216 = 0u;
          }

          v94 = v88->i64 + v92;
          v95 = v85[1];
          if (v95 == 63)
          {
            v97 = *v94;
            v35 = *(v94 + 16);
            v36 = *(v94 + 32);
            v37 = *(v94 + 48);
            v209 = *v94;
            v210 = v35;
            v217 = v36;
            v218 = v37;
            v96 = 64;
          }

          else if (v95 == 1)
          {
            v97 = vld1q_dup_s16(v94);
            v209 = v97;
            v210 = v97;
            v217 = v97;
            v218 = v97;
            v96 = 2;
          }

          else if (v85[1])
          {
            v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v209, 128, v94, v95, *v93.i64, *v35.i64, *v36.i64, *v37.i8);
          }

          else
          {
            v96 = 0;
            v97.i64[0] = 0;
            v209 = 0u;
            v210 = 0u;
            v217 = 0u;
            v218 = 0u;
          }

          v98 = v94 + v96;
          v99 = v85[2];
          if (v99 == 63)
          {
            v101 = *v98;
            v35 = *(v98 + 16);
            v36 = *(v98 + 32);
            v37 = *(v98 + 48);
            v223 = *v98;
            v224 = v35;
            v231 = v36;
            v232 = v37;
            v100 = 64;
          }

          else if (v99 == 1)
          {
            v101 = vld1q_dup_s16(v98);
            v223 = v101;
            v224 = v101;
            v231 = v101;
            v232 = v101;
            v100 = 2;
          }

          else if (v85[2])
          {
            v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v223, 128, v98, v99, *v97.i64, *v35.i64, *v36.i64, *v37.i8);
          }

          else
          {
            v100 = 0;
            v101.i64[0] = 0;
            v223 = 0u;
            v224 = 0u;
            v231 = 0u;
            v232 = 0u;
          }

          v102 = v98 + v100;
          v103 = v85[3];
          if (v103 == 63)
          {
            v105 = *v102;
            v35 = *(v102 + 16);
            v36 = *(v102 + 32);
            v37 = *(v102 + 48);
            v225 = *v102;
            v226 = v35;
            v233 = v36;
            v234 = v37;
            v104 = 64;
          }

          else if (v103 == 1)
          {
            v105 = vld1q_dup_s16(v102);
            v225 = v105;
            v226 = v105;
            v233 = v105;
            v234 = v105;
            v104 = 2;
          }

          else if (v85[3])
          {
            v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v225, 128, v102, v103, *v101.i64, *v35.i64, *v36.i64, *v37.i8);
          }

          else
          {
            v104 = 0;
            v105.i64[0] = 0;
            v225 = 0u;
            v226 = 0u;
            v233 = 0u;
            v234 = 0u;
          }

          v106 = v102 + v104;
          v107 = v85[4];
          if (v107 == 63)
          {
            v109 = *v106;
            v35 = *(v106 + 16);
            v36 = *(v106 + 32);
            v37 = *(v106 + 48);
            v211 = *v106;
            v212 = v35;
            v219 = v36;
            v220 = v37;
            v108 = 64;
          }

          else if (v107 == 1)
          {
            v109 = vld1q_dup_s16(v106);
            v211 = v109;
            v212 = v109;
            v219 = v109;
            v220 = v109;
            v108 = 2;
          }

          else if (v85[4])
          {
            v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v211, 128, v106, v107, *v105.i64, *v35.i64, *v36.i64, *v37.i8);
          }

          else
          {
            v108 = 0;
            v109.i64[0] = 0;
            v211 = 0u;
            v212 = 0u;
            v219 = 0u;
            v220 = 0u;
          }

          v110 = v106 + v108;
          v111 = v85[5];
          if (v111 == 63)
          {
            v113 = *v110;
            v35 = *(v110 + 16);
            v36 = *(v110 + 32);
            v37 = *(v110 + 48);
            v213 = *v110;
            v214 = v35;
            v221 = v36;
            v222 = v37;
            v112 = 64;
          }

          else if (v111 == 1)
          {
            v113 = vld1q_dup_s16(v110);
            v213 = v113;
            v214 = v113;
            v221 = v113;
            v222 = v113;
            v112 = 2;
          }

          else if (v85[5])
          {
            v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v213, 128, v110, v111, *v109.i64, *v35.i64, *v36.i64, *v37.i8);
          }

          else
          {
            v112 = 0;
            v113.i64[0] = 0;
            v213 = 0u;
            v214 = 0u;
            v221 = 0u;
            v222 = 0u;
          }

          v114 = v110 + v112;
          v115 = v85[6];
          if (v115 == 63)
          {
            v117 = *v114;
            v35 = *(v114 + 16);
            v36 = *(v114 + 32);
            v37 = *(v114 + 48);
            v227 = *v114;
            v228 = v35;
            v235 = v36;
            v236 = v37;
            v116 = 64;
          }

          else if (v115 == 1)
          {
            v117 = vld1q_dup_s16(v114);
            v227 = v117;
            v228 = v117;
            v235 = v117;
            v236 = v117;
            v116 = 2;
          }

          else if (v85[6])
          {
            v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 128, v114, v115, *v113.i64, *v35.i64, *v36.i64, *v37.i8);
          }

          else
          {
            v116 = 0;
            v117.i64[0] = 0;
            v227 = 0u;
            v228 = 0u;
            v235 = 0u;
            v236 = 0u;
          }

          v118 = v114 + v116;
          v119 = v85[7];
          if (v119 == 63)
          {
            v38 = *v118;
            v35 = *(v118 + 16);
            v36 = *(v118 + 32);
            v37 = *(v118 + 48);
            v229 = *v118;
            v230 = v35;
            v237 = v36;
            v238 = v37;
            v48 = v191;
            v90 = v46 + 1;
            v120 = v202;
            if (v202)
            {
              goto LABEL_172;
            }
          }

          else
          {
            v48 = v191;
            v90 = v46 + 1;
            if (v119 == 1)
            {
              v38 = vld1q_dup_s16(v118);
              v229 = v38;
              v230 = v38;
              v237 = v38;
              v238 = v38;
              v120 = v202;
              if (v202)
              {
                goto LABEL_172;
              }
            }

            else
            {
              if (v85[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 128, v118, v119, *v117.i64, *v35.i64, *v36.i64, *v37.i8);
                v120 = v202;
                if (!v202)
                {
                  goto LABEL_202;
                }

LABEL_172:
                v121 = v203;
                if (!v203)
                {
                  goto LABEL_202;
                }

                v122 = 0;
                v123 = 16 * v201;
                v124 = &v207.i8[128 * v200 + v123];
                v125 = v198;
                v126 = v199;
                v127 = 16 * v203;
                if (16 * v203)
                {
                  v128 = (16 * v203 - 1) >> 32 == 0;
                }

                else
                {
                  v128 = 0;
                }

                v129 = !v128;
                v131 = v124 < &v198[v203] + v199 * (v120 - 1) && v198 < &__dst[128 * v120 + 384 + 128 * v200 + 16 * v203 + v123];
                v132 = v127 & 0x1FFFFFFE0;
                v133 = v129 | (v199 < 0) | v131;
                v134 = &v208.i8[128 * v200 + v123];
                v135 = (v198 + 1);
                v136 = v124;
                v137 = v198;
                while (2)
                {
                  v138 = v125 + v122 * v126;
                  v139 = &v124[128 * v122];
                  if (v133)
                  {
                    v140 = 0;
LABEL_189:
                    v141 = v140 + 1;
                    do
                    {
                      v142 = *v138++;
                      *v139++ = v142;
                    }

                    while (v127 > v141++);
LABEL_186:
                    ++v122;
                    v134 += 128;
                    v135 = (v135 + v126);
                    v137 = (v137 + v126);
                    v136 += 128;
                    if (v122 == v120)
                    {
                      goto LABEL_202;
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
                    v38 = v149[-1];
                    v35 = *v149;
                    v150[-1] = v38;
                    *v150 = v35;
                    v150 += 2;
                    v149 += 2;
                    v151 -= 32;
                  }

                  while (v151);
                  if (v127 == v132)
                  {
                    goto LABEL_186;
                  }

                  v144 = v127 & 0x1FFFFFFE0;
                  if ((v121 & 1) == 0)
                  {
                    v138 += v132;
                    v139 += v132;
                    v140 = v127 & 0xFFFFFFE0;
                    goto LABEL_189;
                  }
                }

                v145 = -16 * v121 + v144;
                v146 = (v137 + v144);
                v147 = &v136[v144];
                do
                {
                  v148 = *v146++;
                  v38.i64[0] = v148;
                  *v147 = v148;
                  v147 += 16;
                  v145 += 16;
                }

                while (v145);
                goto LABEL_186;
              }

              v38.i64[0] = 0;
              v229 = 0u;
              v230 = 0u;
              v237 = 0u;
              v238 = 0u;
              v120 = v202;
              if (v202)
              {
                goto LABEL_172;
              }
            }
          }

LABEL_202:
          v152 = 0;
          v154 = v196;
          v153 = v197;
          v155 = v204;
          v156 = v205;
          if (v204)
          {
            result = v193;
            if (v205)
            {
              v38.i64[0] = v207.i64[0];
              v35 = v208;
              v36 = v215;
              v37 = v216;
              *v196 = v207;
              v154[1] = v35;
              v154[2] = v36;
              v154[3] = v37;
              v154 += 4;
              v152 = 63;
            }
          }

          else
          {
            result = v193;
          }

          *v153 = v152;
          if (v155 < 3 || v156 == 0)
          {
            v158 = 0;
          }

          else
          {
            v38.i64[0] = v209.i64[0];
            v35 = v210;
            v36 = v217;
            v37 = v218;
            *v154 = v209;
            v154[1] = v35;
            v154[2] = v36;
            v154[3] = v37;
            v154 += 4;
            v158 = 63;
          }

          v159 = 0;
          v153[1] = v158;
          if (v155 && v156 >= 3)
          {
            v38.i64[0] = v223.i64[0];
            v35 = v224;
            v36 = v231;
            v37 = v232;
            *v154 = v223;
            v154[1] = v35;
            v154[2] = v36;
            v154[3] = v37;
            v154 += 4;
            v159 = 63;
          }

          v160 = 0;
          v153[2] = v159;
          if (v155 >= 3 && v156 >= 3)
          {
            v38.i64[0] = v225.i64[0];
            v35 = v226;
            v36 = v233;
            v37 = v234;
            *v154 = v225;
            v154[1] = v35;
            v154[2] = v36;
            v154[3] = v37;
            v154 += 4;
            v160 = 63;
          }

          v161 = 0;
          v153[3] = v160;
          if (v155 >= 5 && v156)
          {
            v38.i64[0] = v211.i64[0];
            v35 = v212;
            v36 = v219;
            v37 = v220;
            *v154 = v211;
            v154[1] = v35;
            v154[2] = v36;
            v154[3] = v37;
            v154 += 4;
            v161 = 63;
          }

          v162 = 0;
          v153[4] = v161;
          if (v155 >= 7 && v156)
          {
            v38.i64[0] = v213.i64[0];
            v35 = v214;
            v36 = v221;
            v37 = v222;
            *v154 = v213;
            v154[1] = v35;
            v154[2] = v36;
            v154[3] = v37;
            v154 += 4;
            v162 = 63;
          }

          v163 = 0;
          v153[5] = v162;
          if (v155 >= 5 && v156 >= 3)
          {
            v38.i64[0] = v227.i64[0];
            v35 = v228;
            v36 = v235;
            v37 = v236;
            *v154 = v227;
            v154[1] = v35;
            v154[2] = v36;
            v154[3] = v37;
            v154 += 4;
            v163 = 63;
          }

          v164 = 0;
          v153[6] = v163;
          if (v155 >= 7 && v156 >= 3)
          {
            v38.i64[0] = v229.i64[0];
            v35 = v230;
            v36 = v237;
            v37 = v238;
            *v154 = v229;
            v154[1] = v35;
            v154[2] = v36;
            v154[3] = v37;
            v164 = 63;
          }

          v153[7] = v164;
          if (v194)
          {
            goto LABEL_231;
          }

LABEL_46:
          v22 = v46 == v183 >> 3;
          v46 = v90;
          v47 = v19 & v165;
        }

        while (!v22);
        v22 = v19++ == v171;
      }

      while (!v22);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v228 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v179 = a8;
  v17 = a8 >> 2;
  v161 = a8 + a10 - 1;
  v163 = v161 >> 2;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v180 = a1;
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
  v183 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v172 = result;
  if (v17 <= v163)
  {
    v171 = a7 + a9 - 1;
    v160 = a7 >> 3;
    if (a7 >> 3 <= v171 >> 3)
    {
      result = a1;
      v181 = (a5 - 1) >> 3;
      v157 = a5 - 1;
      v164 = (a5 - 1) & 7;
      v158 = (a6 - 1) & 3;
      v159 = (a6 - 1) >> 2;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v31.i8 = vcgt_u32(v30, 0xF00000007);
      v32.i64[0] = -1;
      v33.i64[0] = 0x2000000020;
      v34 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v30, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v31.i8);
      v169 = v34;
      v170 = v34.i32[0] | v34.i32[1];
      v168 = v31.i64[0];
      v156 = 8 * v19 * v18;
      do
      {
        v35 = (4 * v17) | 3;
        if (4 * v17 <= v179)
        {
          v36 = v179;
        }

        else
        {
          v36 = 4 * v17;
        }

        if (v161 < v35)
        {
          v35 = v161;
        }

        v178 = 4 * v17;
        v167 = v36 - 4 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v158;
        v166 = v38;
        v40 = v38 != 4;
        v41 = v160;
        v42 = v158 + 1;
        if (v17 != v159)
        {
          v42 = 4;
          v39 = v40;
        }

        v165 = v39;
        v176 = a3 + (v36 - v179) * a11;
        v177 = v42;
        v175 = v42;
        do
        {
          v43 = 8 * v41;
          v44 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= a7)
          {
            v45 = a7;
          }

          else
          {
            v45 = 8 * v41;
          }

          if (v171 < v44)
          {
            v44 = v171;
          }

          v46 = v44 - v45;
          v47 = v46 + 1;
          if (v41 == v181)
          {
            v48 = v164 + 1;
          }

          else
          {
            v48 = 8;
          }

          v49 = 1;
          if (v178 >= v179 && v43 >= a7)
          {
            v50 = v46 != v164;
            if (v41 != v181)
            {
              v50 = v47 != 8;
            }

            v49 = v50 || v165;
          }

          if (v172)
          {
            v71 = 0;
            v72 = v156 >> (*(result + 57) != 0);
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

            v144 = (v71 >> 3) - 1;
            v145 = (v74 >> 2) - 1;
            if ((v73 & 1) != 0 || (v146 = 32 - __clz(~(-1 << -__clz(v144))), v147 = 32 - __clz(~(-1 << -__clz(v145))), !(v147 | v146)))
            {
              v155 = 0;
            }

            else
            {
              v148 = 0;
              v149 = 0;
              v150 = v41 & v144;
              v151 = v17 & v145;
              v152 = v147 != 0;
              v153 = v146 != 0;
              v154 = 1;
              do
              {
                --v147;
                if (v152)
                {
                  v149 |= (v154 & v151) << v148++;
                }

                else
                {
                  v147 = 0;
                }

                --v146;
                if (v153)
                {
                  v149 |= (v154 & v150) << v148++;
                }

                else
                {
                  v146 = 0;
                }

                v154 *= 2;
                --v148;
                v153 = v146 != 0;
                v152 = v147 != 0;
              }

              while (v146 | v147);
              v155 = v149 << 9;
              result = v180;
            }

            v58 = v155 + ((v43 / v71 + v178 / v74 * ((v71 + v157) / v71)) << 14);
          }

          else if (v170)
          {
            v51 = 0;
            v52 = 0;
            v53 = 1;
            v55 = v168;
            v54 = BYTE4(v168);
            v56 = v169.i32[0];
            v57 = v169.i32[1];
            do
            {
              --v56;
              if (v55)
              {
                v52 |= (v53 & v17) << v51++;
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
            v58 = v52 << 9;
          }

          else
          {
            v58 = 0;
          }

          v59 = *(result + 128) >> (*(result + 144) + a12);
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

          v62 = *(result + 132) >> (*(result + 144) + a12);
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
              v66 |= (v69 & v17) << v65++;
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
          v75 = (a4 + v70);
          v76 = a7;
          v77 = v176 + 16 * (v45 - a7);
          v78 = (a2 + v58);
          __src = (a2 + v58);
          if (v183)
          {
            if (!(v49 & 1 | (v48 < 8u) | (v175 < 4)))
            {
              v78 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v77, a11, v78, v75, v48, v177, v34, *v31.i8, *v32.i64, *v33.i64, v26, v27, v28, v29);
              goto LABEL_86;
            }

            v79 = v47;
            memcpy(__dst, __src, sizeof(__dst));
            v47 = v79;
            v78 = __dst;
            result = v180;
          }

          else if (!(v49 & 1 | (v48 < 8u) | (v175 < 4)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v185 = v78;
          v193 = v48;
          v194 = v177;
          v189 = v167;
          v190 = v45 - v43;
          v186 = v75;
          v187 = v77;
          v188 = a11;
          v191 = v166;
          v192 = v47;
          if ((v49 & 1) == 0)
          {
            v81 = *v75;
            a7 = v76;
            if (v81 == 63)
            {
              v83 = *v78;
              v31 = v78[1];
              v32 = v78[2];
              v33 = v78[3];
              v196 = *v78;
              v197 = v31;
              v204 = v32;
              v205 = v33;
              v82 = 64;
            }

            else if (v81 == 1)
            {
              v83 = vld1q_dup_s16(v78->i16);
              v196 = v83;
              v197 = v83;
              v204 = v83;
              v205 = v83;
              v82 = 2;
            }

            else if (*v75)
            {
              v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v196, 128, v78, v81, *&v34, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v82 = 0;
              v83.i64[0] = 0;
              v196 = 0u;
              v197 = 0u;
              v204 = 0u;
              v205 = 0u;
            }

            v84 = v78->i64 + v82;
            v85 = v75[1];
            if (v85 == 63)
            {
              v87 = *v84;
              v31 = *(v84 + 16);
              v32 = *(v84 + 32);
              v33 = *(v84 + 48);
              v198 = *v84;
              v199 = v31;
              v206 = v32;
              v207 = v33;
              v86 = 64;
            }

            else if (v85 == 1)
            {
              v87 = vld1q_dup_s16(v84);
              v198 = v87;
              v199 = v87;
              v206 = v87;
              v207 = v87;
              v86 = 2;
            }

            else if (v75[1])
            {
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v198, 128, v84, v85, *v83.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v86 = 0;
              v87.i64[0] = 0;
              v198 = 0u;
              v199 = 0u;
              v206 = 0u;
              v207 = 0u;
            }

            v88 = v84 + v86;
            v89 = v75[2];
            if (v89 == 63)
            {
              v91 = *v88;
              v31 = *(v88 + 16);
              v32 = *(v88 + 32);
              v33 = *(v88 + 48);
              v212 = *v88;
              v213 = v31;
              v220 = v32;
              v221 = v33;
              v90 = 64;
            }

            else if (v89 == 1)
            {
              v91 = vld1q_dup_s16(v88);
              v212 = v91;
              v213 = v91;
              v220 = v91;
              v221 = v91;
              v90 = 2;
            }

            else if (v75[2])
            {
              v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v212, 128, v88, v89, *v87.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v90 = 0;
              v91.i64[0] = 0;
              v212 = 0u;
              v213 = 0u;
              v220 = 0u;
              v221 = 0u;
            }

            v92 = v88 + v90;
            v93 = v75[3];
            if (v93 == 63)
            {
              v95 = *v92;
              v31 = *(v92 + 16);
              v32 = *(v92 + 32);
              v33 = *(v92 + 48);
              v214 = *v92;
              v215 = v31;
              v222 = v32;
              v223 = v33;
              v94 = 64;
            }

            else if (v93 == 1)
            {
              v95 = vld1q_dup_s16(v92);
              v214 = v95;
              v215 = v95;
              v222 = v95;
              v223 = v95;
              v94 = 2;
            }

            else if (v75[3])
            {
              v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v214, 128, v92, v93, *v91.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v94 = 0;
              v95.i64[0] = 0;
              v214 = 0u;
              v215 = 0u;
              v222 = 0u;
              v223 = 0u;
            }

            v96 = v92 + v94;
            v97 = v75[4];
            if (v97 == 63)
            {
              v99 = *v96;
              v31 = *(v96 + 16);
              v32 = *(v96 + 32);
              v33 = *(v96 + 48);
              v200 = *v96;
              v201 = v31;
              v208 = v32;
              v209 = v33;
              v98 = 64;
            }

            else if (v97 == 1)
            {
              v99 = vld1q_dup_s16(v96);
              v200 = v99;
              v201 = v99;
              v208 = v99;
              v209 = v99;
              v98 = 2;
            }

            else if (v75[4])
            {
              v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v200, 128, v96, v97, *v95.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v98 = 0;
              v99.i64[0] = 0;
              v200 = 0u;
              v201 = 0u;
              v208 = 0u;
              v209 = 0u;
            }

            v100 = v96 + v98;
            v101 = v75[5];
            if (v101 == 63)
            {
              v103 = *v100;
              v31 = *(v100 + 16);
              v32 = *(v100 + 32);
              v33 = *(v100 + 48);
              v202 = *v100;
              v203 = v31;
              v210 = v32;
              v211 = v33;
              v102 = 64;
            }

            else if (v101 == 1)
            {
              v103 = vld1q_dup_s16(v100);
              v202 = v103;
              v203 = v103;
              v210 = v103;
              v211 = v103;
              v102 = 2;
            }

            else if (v75[5])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v202, 128, v100, v101, *v99.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v102 = 0;
              v103.i64[0] = 0;
              v202 = 0u;
              v203 = 0u;
              v210 = 0u;
              v211 = 0u;
            }

            v104 = v100 + v102;
            v105 = v75[6];
            if (v105 == 63)
            {
              v107 = *v104;
              v31 = *(v104 + 16);
              v32 = *(v104 + 32);
              v33 = *(v104 + 48);
              v216 = *v104;
              v217 = v31;
              v224 = v32;
              v225 = v33;
              v106 = 64;
            }

            else if (v105 == 1)
            {
              v107 = vld1q_dup_s16(v104);
              v216 = v107;
              v217 = v107;
              v224 = v107;
              v225 = v107;
              v106 = 2;
            }

            else if (v75[6])
            {
              v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v216, 128, v104, v105, *v103.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v106 = 0;
              v107.i64[0] = 0;
              v216 = 0u;
              v217 = 0u;
              v224 = 0u;
              v225 = 0u;
            }

            v108 = v104 + v106;
            v109 = v75[7];
            if (v109 == 63)
            {
              v110 = *v108;
              v31 = *(v108 + 16);
              v32 = *(v108 + 32);
              v33 = *(v108 + 48);
              v218 = *v108;
              v219 = v31;
              v226 = v32;
              v227 = v33;
              v80 = v41 + 1;
              v111 = v191;
              if (v191)
              {
                goto LABEL_147;
              }
            }

            else
            {
              v80 = v41 + 1;
              if (v109 != 1)
              {
                if (v75[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v218, 128, v108, v109, *v107.i64, *v31.i64, *v32.i64, *v33.i8);
                  v111 = v191;
                  if (!v191)
                  {
                    goto LABEL_177;
                  }
                }

                else
                {
                  v110.i64[0] = 0;
                  v218 = 0u;
                  v219 = 0u;
                  v226 = 0u;
                  v227 = 0u;
                  v111 = v191;
                  if (!v191)
                  {
                    goto LABEL_177;
                  }
                }

LABEL_147:
                v112 = v192;
                if (!v192)
                {
                  goto LABEL_177;
                }

                v113 = 0;
                v114 = v189 << 7;
                v115 = 16 * v190;
                v116 = &v196.i8[v114 + v115];
                v117 = v187;
                v118 = v188;
                v119 = 16 * v192;
                if (16 * v192)
                {
                  v120 = (16 * v192 - 1) >> 32 == 0;
                }

                else
                {
                  v120 = 0;
                }

                v121 = !v120;
                v123 = v116 < &v187[v192].i8[v188 * (v111 - 1)] && v187 < &__dst[128 * v111 + 384 + 128 * v189 + 16 * v192 + v115];
                v124 = v119 & 0x1FFFFFFE0;
                v125 = v121 | (v188 < 0) | v123;
                v126 = &v197.i8[v114 + v115];
                v127 = v187 + 1;
                v128 = v116;
                v129 = v187;
                while (2)
                {
                  v130 = (v117 + v113 * v118);
                  v131 = &v116[128 * v113];
                  if (v125)
                  {
                    v132 = 0;
LABEL_164:
                    v133 = v132 + 1;
                    do
                    {
                      v134 = *v130++;
                      *v131++ = v134;
                    }

                    while (v119 > v133++);
LABEL_161:
                    ++v113;
                    v126 += 128;
                    v127 = (v127 + v118);
                    v129 += v118;
                    v128 += 128;
                    if (v113 == v111)
                    {
                      goto LABEL_177;
                    }

                    continue;
                  }

                  break;
                }

                if (v112 == 1)
                {
                  v136 = 0;
                }

                else
                {
                  v141 = v127;
                  v142 = v126;
                  v143 = v119 & 0x1FFFFFFE0;
                  do
                  {
                    v110 = v141[-1];
                    v31 = *v141;
                    v142[-1] = v110;
                    *v142 = v31;
                    v142 += 2;
                    v141 += 2;
                    v143 -= 32;
                  }

                  while (v143);
                  if (v119 == v124)
                  {
                    goto LABEL_161;
                  }

                  v136 = v119 & 0x1FFFFFFE0;
                  if ((v112 & 1) == 0)
                  {
                    v130 += v124;
                    v131 += v124;
                    v132 = v119 & 0xFFFFFFE0;
                    goto LABEL_164;
                  }
                }

                v137 = -16 * v112 + v136;
                v138 = (v129 + v136);
                v139 = &v128[v136];
                do
                {
                  v140 = *v138++;
                  v110.i64[0] = v140;
                  *v139 = v140;
                  v139 += 16;
                  v137 += 16;
                }

                while (v137);
                goto LABEL_161;
              }

              v110 = vld1q_dup_s16(v108);
              v218 = v110;
              v219 = v110;
              v226 = v110;
              v227 = v110;
              v111 = v191;
              if (v191)
              {
                goto LABEL_147;
              }
            }

LABEL_177:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v196, 128, v185, v186, v193, v194, *v110.i8, *v31.i8, *v32.i64, *v33.i64, v26, v27, v28, v29);
            if (!v183)
            {
              goto LABEL_26;
            }

            goto LABEL_178;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v76;
          v80 = v41 + 1;
          if (!v183)
          {
            goto LABEL_26;
          }

LABEL_178:
          memcpy(__src, v78, 0x200uLL);
LABEL_26:
          v21 = v41 == v171 >> 3;
          v41 = v80;
          result = v180;
        }

        while (!v21);
        v21 = v17++ == v163;
      }

      while (!v21);
    }
  }

  return result;
}

void *AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v16 = a1;
  v236 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v187 = a8;
  v17 = a8 >> 2;
  v168 = a8 + a10 - 1;
  v170 = v168 >> 2;
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
  v191 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v16, *(v16 + 144) + a12);
  v180 = result;
  if (v17 <= v170)
  {
    v179 = a7 + a9 - 1;
    v167 = a7 >> 3;
    if (a7 >> 3 <= v179 >> 3)
    {
      v189 = (a5 - 1) >> 3;
      v164 = a5 - 1;
      v172 = (a5 - 1) & 7;
      v165 = (a6 - 1) & 3;
      v166 = (a6 - 1) >> 2;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v27.i8 = vcgt_u32(v26, 0xF00000007);
      v28.i64[0] = -1;
      v29.i64[0] = 0x2000000020;
      *v30.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v27.i8);
      v177 = v30.i64[0];
      v178 = v30.i32[0] | v30.i32[1];
      v176 = v27.i64[0];
      v163 = 8 * v19 * v18;
      v188 = v16;
      do
      {
        v31 = (4 * v17) | 3;
        if (4 * v17 <= v187)
        {
          v32 = v187;
        }

        else
        {
          v32 = 4 * v17;
        }

        if (v168 < v31)
        {
          v31 = v168;
        }

        v186 = 4 * v17;
        v175 = v32 - 4 * v17;
        v33 = v31 - v32;
        v34 = v33 + 1;
        v35 = v33 != v165;
        v174 = v34;
        v36 = v34 != 4;
        v37 = v167;
        v38 = v165 + 1;
        if (v17 != v166)
        {
          v38 = 4;
          v35 = v36;
        }

        v173 = v35;
        v184 = a3 + (v32 - v187) * a11;
        v185 = v38;
        v183 = v38;
        do
        {
          v39 = 8 * v37;
          v40 = 8 * (v37 + 1) - 1;
          if (8 * v37 <= a7)
          {
            v41 = a7;
          }

          else
          {
            v41 = 8 * v37;
          }

          if (v179 < v40)
          {
            v40 = v179;
          }

          v42 = v40 - v41;
          v43 = v42 + 1;
          if (v37 == v189)
          {
            v44 = v172 + 1;
          }

          else
          {
            v44 = 8;
          }

          v45 = 1;
          if (v186 >= v187 && v39 >= a7)
          {
            v46 = v42 != v172;
            if (v37 != v189)
            {
              v46 = v43 != 8;
            }

            v45 = v46 || v173;
          }

          if (v180)
          {
            v67 = 0;
            v68 = v163 >> (*(v16 + 57) != 0);
            v69 = 1;
            if (v68 <= 63)
            {
              if (v68 > 15)
              {
                if (v68 == 16)
                {
                  v69 = 0;
                  v70 = 64;
                  v67 = 128;
                }

                else
                {
                  v70 = 0;
                  if (v68 == 32)
                  {
                    v69 = 0;
                    v67 = 64;
                    v70 = 64;
                  }
                }
              }

              else if (v68 == 4)
              {
                v69 = 0;
                v70 = 128;
                v67 = 256;
              }

              else
              {
                v70 = 0;
                if (v68 == 8)
                {
                  v69 = 0;
                  v67 = 128;
                  v70 = 128;
                }
              }
            }

            else if (v68 <= 255)
            {
              if (v68 == 64)
              {
                v69 = 0;
                v70 = 32;
                v67 = 64;
              }

              else
              {
                v70 = 0;
                if (v68 == 128)
                {
                  v69 = 0;
                  v67 = 32;
                  v70 = 32;
                }
              }
            }

            else if (v68 == 256)
            {
              v69 = 0;
              v70 = 16;
              v67 = 32;
            }

            else if (v68 == 512)
            {
              v69 = 0;
              v67 = 16;
              v70 = 16;
            }

            else
            {
              v70 = 0;
              if (v68 == 1024)
              {
                v69 = 0;
                v70 = 8;
                v67 = 16;
              }
            }

            v151 = (v67 >> 3) - 1;
            v152 = (v70 >> 2) - 1;
            if ((v69 & 1) != 0 || (v153 = 32 - __clz(~(-1 << -__clz(v151))), v154 = 32 - __clz(~(-1 << -__clz(v152))), !(v154 | v153)))
            {
              v162 = 0;
            }

            else
            {
              v155 = 0;
              v156 = 0;
              v157 = v37 & v151;
              v158 = v17 & v152;
              v159 = v154 != 0;
              v160 = v153 != 0;
              v161 = 1;
              do
              {
                --v154;
                if (v159)
                {
                  v156 |= (v161 & v158) << v155++;
                }

                else
                {
                  v154 = 0;
                }

                --v153;
                if (v160)
                {
                  v156 |= (v161 & v157) << v155++;
                }

                else
                {
                  v153 = 0;
                }

                v161 *= 2;
                --v155;
                v160 = v153 != 0;
                v159 = v154 != 0;
              }

              while (v153 | v154);
              v162 = v156 << 9;
            }

            v54 = v162 + ((v39 / v67 + v186 / v70 * ((v67 + v164) / v67)) << 14);
          }

          else if (v178)
          {
            v47 = 0;
            v48 = 0;
            v49 = 1;
            v51 = v176;
            v50 = BYTE4(v176);
            v52 = v177;
            v53 = HIDWORD(v177);
            do
            {
              --v52;
              if (v51)
              {
                v48 |= (v49 & v17) << v47++;
              }

              else
              {
                v52 = 0;
              }

              --v53;
              if (v50)
              {
                v48 |= (v49 & v37) << v47++;
              }

              else
              {
                v53 = 0;
              }

              v49 *= 2;
              --v47;
              v50 = v53 != 0;
              v51 = v52 != 0;
            }

            while (v53 | v52);
            v54 = v48 << 9;
          }

          else
          {
            v54 = 0;
          }

          v55 = *(v16 + 128) >> (*(v16 + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 7;
          if (v56 < 0x10)
          {
            v57 = 0;
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
          }

          v58 = *(v16 + 132) >> (*(v16 + 144) + a12);
          if (v58 <= 1)
          {
            v58 = 1;
          }

          v59 = v58 + 3;
          if (v59 < 8)
          {
            v60 = 0;
            if (!v57)
            {
LABEL_77:
              v66 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 2) - 1)));
            if (!(v60 | v57))
            {
              goto LABEL_77;
            }
          }

          v61 = 0;
          v62 = 0;
          v63 = v57 != 0;
          v64 = v60 != 0;
          v65 = 1;
          do
          {
            --v57;
            if (v63)
            {
              v62 |= (v65 & v37) << v61++;
            }

            else
            {
              v57 = 0;
            }

            --v60;
            if (v64)
            {
              v62 |= (v65 & v17) << v61++;
            }

            else
            {
              v60 = 0;
            }

            v65 *= 2;
            --v61;
            v64 = v60 != 0;
            v63 = v57 != 0;
          }

          while (v60 | v57);
          v66 = 8 * v62;
LABEL_78:
          v71 = (a4 + v66);
          v72 = a7;
          v73 = (v184 + 16 * (v41 - a7));
          v190 = (a2 + v54);
          if (v191)
          {
            v74 = __dst;
            if (!(v45 & 1 | (v44 < 8u) | (v183 < 4)))
            {
              goto LABEL_84;
            }

            v171 = (a4 + v66);
            v75 = v44;
            memcpy(__dst, (a2 + v54), sizeof(__dst));
            v39 = 8 * v37;
            LOBYTE(v44) = v75;
            v71 = v171;
          }

          else
          {
            v74 = (a2 + v54);
            if (!(v45 & 1 | (v44 < 8u) | (v183 < 4)))
            {
LABEL_84:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v73, a11, v74, v71, v44, v185);
              a7 = v72;
              v16 = v188;
LABEL_85:
              v76 = v37 + 1;
              result = v190;
              if (!v191)
              {
                goto LABEL_26;
              }

LABEL_205:
              result = memcpy(result, v74, 0x200uLL);
              goto LABEL_26;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          v16 = v188;
          block[4] = v188;
          v193 = v74;
          v201 = v44;
          v202 = v185;
          v197 = v175;
          v198 = v41 - v39;
          v194 = v71;
          v195 = v73;
          v196 = a11;
          v199 = v174;
          v200 = v43;
          if (v45)
          {
            dispatch_sync(*(*(v188 + 8) + 16552), block);
            a7 = v72;
            goto LABEL_85;
          }

          v77 = *v71;
          a7 = v72;
          if (v77 == 63)
          {
            v79 = *v74;
            v27 = v74[1];
            v28 = v74[2];
            v29 = v74[3];
            v204 = *v74;
            v205 = v27;
            v212 = v28;
            v213 = v29;
            v78 = 64;
          }

          else if (v77 == 1)
          {
            v79 = vld1q_dup_s16(v74->i16);
            v204 = v79;
            v205 = v79;
            v212 = v79;
            v213 = v79;
            v78 = 2;
          }

          else if (*v71)
          {
            v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v204, 128, v74, v77, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
          }

          else
          {
            v78 = 0;
            v79.i64[0] = 0;
            v204 = 0u;
            v205 = 0u;
            v212 = 0u;
            v213 = 0u;
          }

          v80 = v74->i64 + v78;
          v81 = v71[1];
          if (v81 == 63)
          {
            v83 = *v80;
            v27 = *(v80 + 16);
            v28 = *(v80 + 32);
            v29 = *(v80 + 48);
            v206 = *v80;
            v207 = v27;
            v214 = v28;
            v215 = v29;
            v82 = 64;
          }

          else if (v81 == 1)
          {
            v83 = vld1q_dup_s16(v80);
            v206 = v83;
            v207 = v83;
            v214 = v83;
            v215 = v83;
            v82 = 2;
          }

          else if (v71[1])
          {
            v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v206, 128, v80, v81, *v79.i64, *v27.i64, *v28.i64, *v29.i8);
          }

          else
          {
            v82 = 0;
            v83.i64[0] = 0;
            v206 = 0u;
            v207 = 0u;
            v214 = 0u;
            v215 = 0u;
          }

          v84 = v80 + v82;
          v85 = v71[2];
          if (v85 == 63)
          {
            v87 = *v84;
            v27 = *(v84 + 16);
            v28 = *(v84 + 32);
            v29 = *(v84 + 48);
            v220 = *v84;
            v221 = v27;
            v228 = v28;
            v229 = v29;
            v86 = 64;
          }

          else if (v85 == 1)
          {
            v87 = vld1q_dup_s16(v84);
            v220 = v87;
            v221 = v87;
            v228 = v87;
            v229 = v87;
            v86 = 2;
          }

          else if (v71[2])
          {
            v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v220, 128, v84, v85, *v83.i64, *v27.i64, *v28.i64, *v29.i8);
          }

          else
          {
            v86 = 0;
            v87.i64[0] = 0;
            v220 = 0u;
            v221 = 0u;
            v228 = 0u;
            v229 = 0u;
          }

          v88 = v84 + v86;
          v89 = v71[3];
          if (v89 == 63)
          {
            v91 = *v88;
            v27 = *(v88 + 16);
            v28 = *(v88 + 32);
            v29 = *(v88 + 48);
            v222 = *v88;
            v223 = v27;
            v230 = v28;
            v231 = v29;
            v90 = 64;
          }

          else if (v89 == 1)
          {
            v91 = vld1q_dup_s16(v88);
            v222 = v91;
            v223 = v91;
            v230 = v91;
            v231 = v91;
            v90 = 2;
          }

          else if (v71[3])
          {
            v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v222, 128, v88, v89, *v87.i64, *v27.i64, *v28.i64, *v29.i8);
          }

          else
          {
            v90 = 0;
            v91.i64[0] = 0;
            v222 = 0u;
            v223 = 0u;
            v230 = 0u;
            v231 = 0u;
          }

          v92 = v88 + v90;
          v93 = v71[4];
          if (v93 == 63)
          {
            v95 = *v92;
            v27 = *(v92 + 16);
            v28 = *(v92 + 32);
            v29 = *(v92 + 48);
            v208 = *v92;
            v209 = v27;
            v216 = v28;
            v217 = v29;
            v94 = 64;
          }

          else if (v93 == 1)
          {
            v95 = vld1q_dup_s16(v92);
            v208 = v95;
            v209 = v95;
            v216 = v95;
            v217 = v95;
            v94 = 2;
          }

          else if (v71[4])
          {
            v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v208, 128, v92, v93, *v91.i64, *v27.i64, *v28.i64, *v29.i8);
          }

          else
          {
            v94 = 0;
            v95.i64[0] = 0;
            v208 = 0u;
            v209 = 0u;
            v216 = 0u;
            v217 = 0u;
          }

          v96 = v92 + v94;
          v97 = v71[5];
          if (v97 == 63)
          {
            v99 = *v96;
            v27 = *(v96 + 16);
            v28 = *(v96 + 32);
            v29 = *(v96 + 48);
            v210 = *v96;
            v211 = v27;
            v218 = v28;
            v219 = v29;
            v98 = 64;
          }

          else if (v97 == 1)
          {
            v99 = vld1q_dup_s16(v96);
            v210 = v99;
            v211 = v99;
            v218 = v99;
            v219 = v99;
            v98 = 2;
          }

          else if (v71[5])
          {
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v210, 128, v96, v97, *v95.i64, *v27.i64, *v28.i64, *v29.i8);
          }

          else
          {
            v98 = 0;
            v99.i64[0] = 0;
            v210 = 0u;
            v211 = 0u;
            v218 = 0u;
            v219 = 0u;
          }

          v100 = v96 + v98;
          v101 = v71[6];
          if (v101 == 63)
          {
            v103 = *v100;
            v27 = *(v100 + 16);
            v28 = *(v100 + 32);
            v29 = *(v100 + 48);
            v224 = *v100;
            v225 = v27;
            v232 = v28;
            v233 = v29;
            v102 = 64;
          }

          else if (v101 == 1)
          {
            v103 = vld1q_dup_s16(v100);
            v224 = v103;
            v225 = v103;
            v232 = v103;
            v233 = v103;
            v102 = 2;
          }

          else if (v71[6])
          {
            v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v224, 128, v100, v101, *v99.i64, *v27.i64, *v28.i64, *v29.i8);
          }

          else
          {
            v102 = 0;
            v103.i64[0] = 0;
            v224 = 0u;
            v225 = 0u;
            v232 = 0u;
            v233 = 0u;
          }

          v104 = v100 + v102;
          v105 = v71[7];
          if (v105 == 63)
          {
            v30 = *v104;
            v27 = *(v104 + 16);
            v28 = *(v104 + 32);
            v29 = *(v104 + 48);
            v226 = *v104;
            v227 = v27;
            v234 = v28;
            v235 = v29;
            v16 = v188;
            v76 = v37 + 1;
            v106 = v199;
            if (v199)
            {
              goto LABEL_146;
            }
          }

          else
          {
            v16 = v188;
            v76 = v37 + 1;
            if (v105 == 1)
            {
              v30 = vld1q_dup_s16(v104);
              v226 = v30;
              v227 = v30;
              v234 = v30;
              v235 = v30;
              v106 = v199;
              if (v199)
              {
                goto LABEL_146;
              }
            }

            else
            {
              if (v71[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 128, v104, v105, *v103.i64, *v27.i64, *v28.i64, *v29.i8);
                v106 = v199;
                if (!v199)
                {
                  goto LABEL_176;
                }

LABEL_146:
                v107 = v200;
                if (!v200)
                {
                  goto LABEL_176;
                }

                v108 = 0;
                v109 = 16 * v198;
                v110 = &v204.i8[128 * v197 + v109];
                v111 = v195;
                v112 = v196;
                v113 = 16 * v200;
                if (16 * v200)
                {
                  v114 = (16 * v200 - 1) >> 32 == 0;
                }

                else
                {
                  v114 = 0;
                }

                v115 = !v114;
                v117 = v110 < &v195[v200] + v196 * (v106 - 1) && v195 < &__dst[128 * v106 + 384 + 128 * v197 + 16 * v200 + v109];
                v118 = v113 & 0x1FFFFFFE0;
                v119 = v115 | (v196 < 0) | v117;
                v120 = &v205.i8[128 * v197 + v109];
                v121 = (v195 + 1);
                v122 = v110;
                v123 = v195;
                while (2)
                {
                  v124 = v111 + v108 * v112;
                  v125 = &v110[128 * v108];
                  if (v119)
                  {
                    v126 = 0;
LABEL_163:
                    v127 = v126 + 1;
                    do
                    {
                      v128 = *v124++;
                      *v125++ = v128;
                    }

                    while (v113 > v127++);
LABEL_160:
                    ++v108;
                    v120 += 128;
                    v121 = (v121 + v112);
                    v123 = (v123 + v112);
                    v122 += 128;
                    if (v108 == v106)
                    {
                      goto LABEL_176;
                    }

                    continue;
                  }

                  break;
                }

                if (v107 == 1)
                {
                  v130 = 0;
                }

                else
                {
                  v135 = v121;
                  v136 = v120;
                  v137 = v113 & 0x1FFFFFFE0;
                  do
                  {
                    v30 = v135[-1];
                    v27 = *v135;
                    v136[-1] = v30;
                    *v136 = v27;
                    v136 += 2;
                    v135 += 2;
                    v137 -= 32;
                  }

                  while (v137);
                  if (v113 == v118)
                  {
                    goto LABEL_160;
                  }

                  v130 = v113 & 0x1FFFFFFE0;
                  if ((v107 & 1) == 0)
                  {
                    v124 += v118;
                    v125 += v118;
                    v126 = v113 & 0xFFFFFFE0;
                    goto LABEL_163;
                  }
                }

                v131 = -16 * v107 + v130;
                v132 = (v123 + v130);
                v133 = &v122[v130];
                do
                {
                  v134 = *v132++;
                  v30.i64[0] = v134;
                  *v133 = v134;
                  v133 += 16;
                  v131 += 16;
                }

                while (v131);
                goto LABEL_160;
              }

              v30.i64[0] = 0;
              v226 = 0u;
              v227 = 0u;
              v234 = 0u;
              v235 = 0u;
              v106 = v199;
              if (v199)
              {
                goto LABEL_146;
              }
            }
          }

LABEL_176:
          v138 = 0;
          v140 = v193;
          v139 = v194;
          v141 = v201;
          v142 = v202;
          if (v201)
          {
            result = v190;
            if (v202)
            {
              v30.i64[0] = v204.i64[0];
              v27 = v205;
              v28 = v212;
              v29 = v213;
              *v193 = v204;
              v140[1] = v27;
              v140[2] = v28;
              v140[3] = v29;
              v140 += 4;
              v138 = 63;
            }
          }

          else
          {
            result = v190;
          }

          *v139 = v138;
          if (v141 < 3 || v142 == 0)
          {
            v144 = 0;
          }

          else
          {
            v30.i64[0] = v206.i64[0];
            v27 = v207;
            v28 = v214;
            v29 = v215;
            *v140 = v206;
            v140[1] = v27;
            v140[2] = v28;
            v140[3] = v29;
            v140 += 4;
            v144 = 63;
          }

          v145 = 0;
          v139[1] = v144;
          if (v141 && v142 >= 3)
          {
            v30.i64[0] = v220.i64[0];
            v27 = v221;
            v28 = v228;
            v29 = v229;
            *v140 = v220;
            v140[1] = v27;
            v140[2] = v28;
            v140[3] = v29;
            v140 += 4;
            v145 = 63;
          }

          v146 = 0;
          v139[2] = v145;
          if (v141 >= 3 && v142 >= 3)
          {
            v30.i64[0] = v222.i64[0];
            v27 = v223;
            v28 = v230;
            v29 = v231;
            *v140 = v222;
            v140[1] = v27;
            v140[2] = v28;
            v140[3] = v29;
            v140 += 4;
            v146 = 63;
          }

          v147 = 0;
          v139[3] = v146;
          if (v141 >= 5 && v142)
          {
            v30.i64[0] = v208.i64[0];
            v27 = v209;
            v28 = v216;
            v29 = v217;
            *v140 = v208;
            v140[1] = v27;
            v140[2] = v28;
            v140[3] = v29;
            v140 += 4;
            v147 = 63;
          }

          v148 = 0;
          v139[4] = v147;
          if (v141 >= 7 && v142)
          {
            v30.i64[0] = v210.i64[0];
            v27 = v211;
            v28 = v218;
            v29 = v219;
            *v140 = v210;
            v140[1] = v27;
            v140[2] = v28;
            v140[3] = v29;
            v140 += 4;
            v148 = 63;
          }

          v149 = 0;
          v139[5] = v148;
          if (v141 >= 5 && v142 >= 3)
          {
            v30.i64[0] = v224.i64[0];
            v27 = v225;
            v28 = v232;
            v29 = v233;
            *v140 = v224;
            v140[1] = v27;
            v140[2] = v28;
            v140[3] = v29;
            v140 += 4;
            v149 = 63;
          }

          v150 = 0;
          v139[6] = v149;
          if (v141 >= 7 && v142 >= 3)
          {
            v30.i64[0] = v226.i64[0];
            v27 = v227;
            v28 = v234;
            v29 = v235;
            *v140 = v226;
            v140[1] = v27;
            v140[2] = v28;
            v140[3] = v29;
            v150 = 63;
          }

          v139[7] = v150;
          if (v191)
          {
            goto LABEL_205;
          }

LABEL_26:
          v21 = v37 == v179 >> 3;
          v37 = v76;
        }

        while (!v21);
        v21 = v17++ == v170;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v165 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v141 = a8;
  v123 = a8 + a10 - 1;
  v142 = a1;
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
  v122 = v123 >> 2;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v144 = v24;
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
      v135 = 0;
LABEL_32:
      v132 = v27 - 3;
      v126 = v26 - 2;
      v33 = -1 << *(*(a1 + 208) + 48);
      v120 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v135 = v32 >= v26;
    goto LABEL_32;
  }

  v135 = 0;
  v120 = 0;
  v126 = 0;
  v132 = 0;
LABEL_33:
  if (v18 <= v122)
  {
    v134 = a7 + a9 - 1;
    v119 = a7 >> 3;
    if (a7 >> 3 <= v134 >> 3)
    {
      v143 = v19 >> 3;
      v128 = v19 & 7;
      v117 = v20 & 3;
      v118 = v20 >> 2;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v125 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v124 = v35;
      v133 = a7;
      do
      {
        v36 = (4 * v18) | 3;
        if (4 * v18 <= v141)
        {
          v37 = v141;
        }

        else
        {
          v37 = 4 * v18;
        }

        if (v123 < v36)
        {
          v36 = v123;
        }

        v131 = v37 - 4 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v117;
        v130 = v39;
        v41 = v39 != 4;
        v42 = v117 + 1;
        if (v18 != v118)
        {
          v42 = 4;
          v40 = v41;
        }

        v129 = v40;
        v43 = v119;
        v44 = v18 & ~(-1 << v126);
        v139 = a3 + (v37 - v141) * a11;
        v140 = v42;
        v138 = v42;
        do
        {
          v45 = 8 * v43;
          v46 = 8 * (v43 + 1) - 1;
          if (8 * v43 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 8 * v43;
          }

          if (v134 < v46)
          {
            v46 = v134;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v143)
          {
            v50 = v128 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (4 * v18 >= v141 && v45 >= a7)
          {
            v52 = v48 != v128;
            if (v43 != v143)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v129;
          }

          if (v135)
          {
            if (v132 | v126)
            {
              v53 = 0;
              v54 = 0;
              v55 = v132 != 0;
              v56 = 1;
              v58 = v126 != 0;
              v57 = v126;
              v59 = v132;
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
                  v54 |= (v43 & ~(-1 << v132) & v56) << v53++;
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
              v60 = v54 << 10;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v132) + (v18 >> v126) * v120);
          }

          else if (v125)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v124.i8[0];
            v64 = v124.i8[4];
            v66 = v125.i32[0];
            v67 = v125.i32[1];
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

          v70 = v69 + 7;
          if (v70 < 0x10)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 3) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 3;
          if (v73 < 8)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 2) - 1)));
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
          v82 = v139 + 32 * (v47 - a7);
          v83 = (a2 + v68);
          if (v144)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v138 < 4)))
            {
              v88 = __dst;
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v88, v81, v50, v140);
              goto LABEL_111;
            }

            v127 = (a2 + v68);
            v84 = v51;
            v85 = v50;
            v86 = v44;
            v87 = v47;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v47 = v87;
            v44 = v86;
            v88 = __dst;
            v51 = v84;
            v83 = v127;
            LOBYTE(v50) = v85;
            result = v142;
          }

          else
          {
            v88 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 8u) | (v138 < 4)))
            {
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v146 = v88;
          v154 = v50;
          v155 = v140;
          v150 = v131;
          v151 = v47 - v45;
          v147 = v81;
          v148 = v82;
          v149 = a11;
          v152 = v130;
          v153 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            a7 = v133;
            v89 = v43 + 1;
            if (!v144)
            {
              goto LABEL_46;
            }

LABEL_136:
            memcpy(v83, v88, 0x400uLL);
            goto LABEL_46;
          }

          v90 = v88->i64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v88, *v81);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 256, v90, v81[1]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 256, v91, v81[2]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v162, 256, v92, v81[3]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 256, v93, v81[4]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 256, v94, v81[5]);
          v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v163, 256, v95, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v164, 256, v95 + v96, v81[7]);
          v97 = v152;
          a7 = v133;
          v89 = v43 + 1;
          if (v152 && v153)
          {
            v98 = 0;
            v99 = v150 << 8;
            v100 = 32 * v151;
            v101 = v157 + v99 + v100;
            v102 = v148;
            v103 = v149;
            v104 = 32 * v153;
            if (v104)
            {
              v105 = (v104 - 1) >> 32 == 0;
            }

            else
            {
              v105 = 0;
            }

            v106 = !v105;
            v108 = v101 < v148 + v149 * (v152 - 1) + v104 && v148 < &__dst[256 * v152 + 768 + 256 * v150 + v104 + v100];
            v109 = v106 | (v149 < 0) | v108;
            v110 = &v157[1] + v99 + v100;
            v111 = (v148 + 16);
            do
            {
              v112 = v111;
              v113 = v110;
              v114 = v104;
              if (v109)
              {
                v115 = 0;
                do
                {
                  v101[v115] = *(v102 + v115);
                  ++v115;
                }

                while (v104 > v115);
              }

              else
              {
                do
                {
                  v116 = *v112;
                  *(v113 - 1) = *(v112 - 1);
                  *v113 = v116;
                  v113 += 2;
                  v112 += 2;
                  v114 -= 32;
                }

                while (v114);
              }

              ++v98;
              v110 += 256;
              v111 = (v111 + v103);
              v101 += 256;
              v102 += v103;
            }

            while (v98 != v97);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v157, 256, v146, v147, v154, v155);
          if (v144)
          {
            goto LABEL_136;
          }

LABEL_46:
          v21 = v43 == v134 >> 3;
          v43 = v89;
          result = v142;
        }

        while (!v21);
        v21 = v18++ == v122;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v205 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v181 = a8;
  v163 = a8 + a10 - 1;
  v182 = a1;
  if (*(a1 + 168))
  {
    v16 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v16 = 0;
  }

  v17 = a8 >> 2;
  v18 = a5 - 1;
  v19 = a6 - 1;
  v162 = v163 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v184 = v23;
  result = a1;
  if (*(a1 + 232) == 1)
  {
    v25 = *(a1 + 273);
    v26 = *(a1 + 272);
    v27 = __clz(v18);
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
          v30 = __clz(~(-1 << -__clz(v19))) | 0xFFFFFFE0;
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
      v175 = 0;
LABEL_32:
      v173 = v26 - 3;
      v167 = v25 - 2;
      v32 = -1 << *(*(a1 + 208) + 48);
      v160 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v31 = 0;
    }

    else
    {
      v31 = 32 - __clz(~(-1 << -__clz(v19)));
    }

    v175 = v31 >= v25;
    goto LABEL_32;
  }

  v175 = 0;
  v160 = 0;
  v167 = 0;
  v173 = 0;
LABEL_33:
  if (v17 <= v162)
  {
    v174 = a7 + a9 - 1;
    if (a7 >> 3 <= v174 >> 3)
    {
      v33 = a11;
      v183 = v18 >> 3;
      v169 = v18 & 7;
      v158 = v19 & 3;
      v159 = v19 >> 2;
      v157 = ~(-1 << v167);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v166 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v165 = v35;
      v36 = 2 * a11;
      do
      {
        v37 = (4 * v17) | 3;
        if (4 * v17 <= v181)
        {
          v38 = v181;
        }

        else
        {
          v38 = 4 * v17;
        }

        if (v163 < v37)
        {
          v37 = v163;
        }

        v172 = v38 - 4 * v17;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v158;
        v171 = v40;
        v42 = a7 >> 3;
        if (v17 == v159)
        {
          v43 = v158 + 1;
        }

        else
        {
          v43 = 4;
        }

        if (v17 != v159)
        {
          v41 = v40 != 4;
        }

        v170 = v41;
        v44 = v17 & v157;
        v179 = a3 + (v38 - v181) * v33;
        v178 = v43;
        v45 = a7;
        v164 = v43;
        do
        {
          v46 = 8 * v42;
          v47 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= v45)
          {
            v48 = v45;
          }

          else
          {
            v48 = 8 * v42;
          }

          if (v174 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v183)
          {
            v51 = v169 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (4 * v17 >= v181 && v46 >= v45)
          {
            v53 = v49 != v169;
            if (v42 != v183)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v170;
          }

          if (v175)
          {
            if (v173 | v167)
            {
              v54 = 0;
              v55 = 0;
              v56 = v173 != 0;
              v57 = 1;
              v59 = v167 != 0;
              v58 = v167;
              v60 = v173;
              do
              {
                --v58;
                if (v59)
                {
                  v55 |= (v44 & v57) << v54++;
                }

                else
                {
                  v58 = 0;
                }

                --v60;
                if (v56)
                {
                  v55 |= (v42 & ~(-1 << v173) & v57) << v54++;
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
              v61 = v55 << 10;
            }

            else
            {
              v61 = 0;
            }

            v69 = v61 + *(result + 336) * ((v42 >> v173) + (v17 >> v167) * v160);
          }

          else if (v166)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v66 = v165.i8[0];
            v65 = v165.i8[4];
            v67 = v166.i32[0];
            v68 = v166.i32[1];
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v17) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v65)
              {
                v63 |= (v64 & v42) << v62++;
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
            v69 = v63 << 10;
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
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 2) - 1)));
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
                v77 |= (v80 & v42) << v76++;
              }

              else
              {
                v72 = 0;
              }

              --v75;
              if (v79)
              {
                v77 |= (v80 & v17) << v76++;
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
          v83 = v179 + 32 * (v48 - v45);
          v84 = (a2 + v69);
          if (v184)
          {
            if (!(v52 & 1 | (v51 < 8u) | (v178 < 4)))
            {
              v88 = __dst;
LABEL_116:
              v91 = &byte_29D2F30E1;
              v92 = 16;
              v93 = v88;
              do
              {
                v106 = *v91;
                v107 = *(v91 - 1);
                if (v51 <= 2 * v107 || 2 * v106 >= v43)
                {
                  v105 = 0;
                }

                else
                {
                  v94 = (v83 + v36 * v106 + (v107 << 6));
                  v95 = v94 + 2;
                  v97 = *v94;
                  v98 = v94[1];
                  v96 = (v94 + v33);
                  v99 = *v95;
                  v100 = v95[1];
                  v101 = *v96;
                  v102 = v96[1];
                  v96 += 2;
                  v103 = *v96;
                  v104 = v96[1];
                  *v93 = v97;
                  v93[1] = v98;
                  v93[2] = v99;
                  v93[3] = v100;
                  v93[4] = v101;
                  v93[5] = v102;
                  v93[6] = v103;
                  v93[7] = v104;
                  v93 += 8;
                  v105 = 127;
                }

                *v82++ = v105;
                v91 += 2;
                v92 -= 2;
              }

              while (v92);
LABEL_112:
              v45 = a7;
              v90 = v42 + 1;
              goto LABEL_113;
            }

            v85 = v50;
            v86 = v52;
            v87 = v48;
            memcpy(__dst, v84, sizeof(__dst));
            v48 = v87;
            v52 = v86;
            v43 = v164;
            v44 = v17 & v157;
            v50 = v85;
            v36 = 2 * a11;
            v88 = __dst;
            v33 = a11;
            result = v182;
          }

          else
          {
            v88 = (a2 + v69);
            if (!(v52 & 1 | (v51 < 8u) | (v178 < 4)))
            {
              goto LABEL_116;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v186 = v88;
          v194 = v51;
          v195 = v43;
          v190 = v172;
          v191 = v48 - v46;
          v187 = v82;
          v188 = v83;
          v189 = v33;
          v192 = v171;
          v193 = v50;
          if (v52)
          {
            v89 = v88;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v88 = v89;
            v33 = a11;
            result = v182;
            goto LABEL_112;
          }

          v168 = v88;
          v109 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 256, v88, *v82)];
          v110 = v109 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 256, v109, v82[1]);
          v111 = v110 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 256, v110, v82[2]);
          v112 = v111 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 256, v111, v82[3]);
          v113 = v112 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 256, v112, v82[4]);
          v114 = v113 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 256, v113, v82[5]);
          v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v203, 256, v114, v82[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v204, 256, v114 + v115, v82[7]);
          v116 = v192;
          if (v192 && v193)
          {
            v117 = 0;
            v118 = v190 << 8;
            v119 = 32 * v191;
            v120 = v197 + v118 + v119;
            v121 = v188;
            v122 = v189;
            v123 = 32 * v193;
            if (v123)
            {
              v124 = (v123 - 1) >> 32 == 0;
            }

            else
            {
              v124 = 0;
            }

            v125 = !v124;
            v127 = v120 < v188 + v189 * (v192 - 1) + v123 && v188 < &__dst[256 * v192 + 768 + 256 * v190 + v123 + v119];
            v128 = v125 | (v189 < 0) | v127;
            v129 = &v197[1] + v118 + v119;
            v130 = (v188 + 16);
            do
            {
              v131 = v130;
              v132 = v129;
              v133 = v123;
              if (v128)
              {
                v134 = 0;
                do
                {
                  v120[v134] = *(v121 + v134);
                  ++v134;
                }

                while (v123 > v134);
              }

              else
              {
                do
                {
                  v135 = *v131;
                  *(v132 - 1) = *(v131 - 1);
                  *v132 = v135;
                  v132 += 2;
                  v131 += 2;
                  v133 -= 32;
                }

                while (v133);
              }

              ++v117;
              v129 += 256;
              v130 = (v130 + v122);
              v120 += 256;
              v121 += v122;
            }

            while (v117 != v116);
          }

          v136 = v186;
          v137 = v187;
          v138 = v194;
          v139 = &byte_29D2F30E1;
          v140 = 16;
          v141 = v195;
          v45 = a7;
          v33 = a11;
          result = v182;
          v90 = v42 + 1;
          v88 = v168;
          do
          {
            v154 = *v139;
            v155 = *(v139 - 1);
            if (v138 <= 2 * v155 || 2 * v154 >= v141)
            {
              v153 = 0;
            }

            else
            {
              v142 = &v197[32 * v154 + 4 * v155];
              v144 = *v142;
              v145 = v142[1];
              v143 = v142 + 2;
              v146 = v142 + 16;
              v142 += 18;
              v147 = *v143;
              v148 = v143[1];
              v149 = *v146;
              v150 = v146[1];
              v151 = *v142;
              v152 = v142[1];
              *v136 = v144;
              v136[1] = v145;
              v136[2] = v147;
              v136[3] = v148;
              v136[4] = v149;
              v136[5] = v150;
              v136[6] = v151;
              v136[7] = v152;
              v136 += 8;
              v153 = 127;
            }

            *v137++ = v153;
            v139 += 2;
            v140 -= 2;
          }

          while (v140);
LABEL_113:
          if (v184)
          {
            memcpy(v84, v88, 0x400uLL);
            v33 = a11;
            result = v182;
          }

          v20 = v42 == v174 >> 3;
          v42 = v90;
        }

        while (!v20);
        v20 = v17++ == v162;
      }

      while (!v20);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v16 = a1;
  v161 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v137 = a8;
  v17 = a8 >> 2;
  v119 = a8 + a10 - 1;
  v121 = v119 >> 2;
  v18 = *(*(v16 + 208) + 88);
  v19 = *(v16 + 112);
  v138 = v16;
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
  v140 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v16, *(v16 + 144) + a12);
  if (v17 <= v121)
  {
    v129 = a7 + a9 - 1;
    v118 = a7 >> 3;
    if (a7 >> 3 <= v129 >> 3)
    {
      v139 = (a5 - 1) >> 3;
      v115 = a5 - 1;
      v122 = (a5 - 1) & 7;
      v116 = (a6 - 1) & 3;
      v117 = (a6 - 1) >> 2;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v26 = vcgt_u32(v25, 0xF00000007);
      v127 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), v26);
      v126 = v26;
      v114 = 8 * v19 * v18;
      v128 = a7;
      do
      {
        v27 = (4 * v17) | 3;
        if (4 * v17 <= v137)
        {
          v28 = v137;
        }

        else
        {
          v28 = 4 * v17;
        }

        if (v119 < v27)
        {
          v27 = v119;
        }

        v136 = 4 * v17;
        v125 = v28 - 4 * v17;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v116;
        v124 = v30;
        v32 = v30 != 4;
        v33 = v118;
        v34 = v116 + 1;
        if (v17 != v117)
        {
          v34 = 4;
          v31 = v32;
        }

        v123 = v31;
        v134 = a3 + (v28 - v137) * a11;
        v135 = v34;
        v133 = v34;
        do
        {
          v35 = 8 * v33;
          v36 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= a7)
          {
            v37 = a7;
          }

          else
          {
            v37 = 8 * v33;
          }

          if (v129 < v36)
          {
            v36 = v129;
          }

          v38 = v36 - v37;
          v39 = v38 + 1;
          if (v33 == v139)
          {
            v40 = v122 + 1;
          }

          else
          {
            v40 = 8;
          }

          v41 = 1;
          if (v136 >= v137 && v35 >= a7)
          {
            v42 = v38 != v122;
            if (v33 != v139)
            {
              v42 = v39 != 8;
            }

            v41 = v42 || v123;
          }

          if (isLevelTiled)
          {
            v63 = 0;
            v64 = v114 >> (*(v16 + 57) != 0);
            v65 = 1;
            if (v64 <= 63)
            {
              if (v64 > 15)
              {
                if (v64 == 16)
                {
                  v65 = 0;
                  v66 = 64;
                  v63 = 128;
                }

                else
                {
                  v66 = 0;
                  if (v64 == 32)
                  {
                    v65 = 0;
                    v63 = 64;
                    v66 = 64;
                  }
                }
              }

              else if (v64 == 4)
              {
                v65 = 0;
                v66 = 128;
                v63 = 256;
              }

              else
              {
                v66 = 0;
                if (v64 == 8)
                {
                  v65 = 0;
                  v63 = 128;
                  v66 = 128;
                }
              }
            }

            else if (v64 <= 255)
            {
              if (v64 == 64)
              {
                v65 = 0;
                v66 = 32;
                v63 = 64;
              }

              else
              {
                v66 = 0;
                if (v64 == 128)
                {
                  v65 = 0;
                  v63 = 32;
                  v66 = 32;
                }
              }
            }

            else if (v64 == 256)
            {
              v65 = 0;
              v66 = 16;
              v63 = 32;
            }

            else if (v64 == 512)
            {
              v65 = 0;
              v63 = 16;
              v66 = 16;
            }

            else
            {
              v66 = 0;
              if (v64 == 1024)
              {
                v65 = 0;
                v66 = 8;
                v63 = 16;
              }
            }

            v102 = (v63 >> 3) - 1;
            v103 = (v66 >> 2) - 1;
            if ((v65 & 1) != 0 || (v104 = 32 - __clz(~(-1 << -__clz(v102))), v105 = 32 - __clz(~(-1 << -__clz(v103))), !(v105 | v104)))
            {
              v113 = 0;
            }

            else
            {
              v106 = 0;
              v107 = 0;
              v108 = v33 & v102;
              v109 = v17 & v103;
              v110 = v105 != 0;
              v111 = v104 != 0;
              v112 = 1;
              do
              {
                --v105;
                if (v110)
                {
                  v107 |= (v112 & v109) << v106++;
                }

                else
                {
                  v105 = 0;
                }

                --v104;
                if (v111)
                {
                  v107 |= (v112 & v108) << v106++;
                }

                else
                {
                  v104 = 0;
                }

                v112 *= 2;
                --v106;
                v111 = v104 != 0;
                v110 = v105 != 0;
              }

              while (v104 | v105);
              v113 = v107 << 10;
              v16 = v138;
            }

            v50 = v113 + ((v35 / v63 + v136 / v66 * ((v63 + v115) / v63)) << 14);
          }

          else if (v127)
          {
            v43 = 0;
            v44 = 0;
            v45 = 1;
            v47 = v126.i8[0];
            v46 = v126.i8[4];
            v48 = v127.i32[0];
            v49 = v127.i32[1];
            do
            {
              --v48;
              if (v47)
              {
                v44 |= (v45 & v17) << v43++;
              }

              else
              {
                v48 = 0;
              }

              --v49;
              if (v46)
              {
                v44 |= (v45 & v33) << v43++;
              }

              else
              {
                v49 = 0;
              }

              v45 *= 2;
              --v43;
              v46 = v49 != 0;
              v47 = v48 != 0;
            }

            while (v49 | v48);
            v50 = v44 << 10;
          }

          else
          {
            v50 = 0;
          }

          v51 = *(v16 + 128) >> (*(v16 + 144) + a12);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = v51 + 7;
          if (v52 < 0x10)
          {
            v53 = 0;
          }

          else
          {
            v53 = 32 - __clz(~(-1 << -__clz((v52 >> 3) - 1)));
          }

          v54 = *(v16 + 132) >> (*(v16 + 144) + a12);
          if (v54 <= 1)
          {
            v54 = 1;
          }

          v55 = v54 + 3;
          if (v55 < 8)
          {
            v56 = 0;
            if (!v53)
            {
LABEL_77:
              v62 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v56 = 32 - __clz(~(-1 << -__clz((v55 >> 2) - 1)));
            if (!(v56 | v53))
            {
              goto LABEL_77;
            }
          }

          v57 = 0;
          v58 = 0;
          v59 = v53 != 0;
          v60 = v56 != 0;
          v61 = 1;
          do
          {
            --v53;
            if (v59)
            {
              v58 |= (v61 & v33) << v57++;
            }

            else
            {
              v53 = 0;
            }

            --v56;
            if (v60)
            {
              v58 |= (v61 & v17) << v57++;
            }

            else
            {
              v56 = 0;
            }

            v61 *= 2;
            --v57;
            v60 = v56 != 0;
            v59 = v53 != 0;
          }

          while (v56 | v53);
          v62 = 8 * v58;
LABEL_78:
          v67 = (a4 + v62);
          v68 = v134 + 32 * (v37 - a7);
          v69 = (a2 + v50);
          if (v140)
          {
            if (!(v41 & 1 | (v40 < 8u) | (v133 < 4)))
            {
              v74 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, a11, v74, v67, v40, v135);
              goto LABEL_86;
            }

            v70 = v40;
            v71 = v39;
            v72 = (a2 + v50);
            v73 = v41;
            memcpy(__dst, (a2 + v50), sizeof(__dst));
            v35 = 8 * v33;
            v74 = __dst;
            v41 = v73;
            v69 = v72;
            v39 = v71;
            LOBYTE(v40) = v70;
            v16 = v138;
          }

          else
          {
            v74 = (a2 + v50);
            if (!(v41 & 1 | (v40 < 8u) | (v133 < 4)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v16;
          v142 = v74;
          v150 = v40;
          v151 = v135;
          v146 = v125;
          v147 = v37 - v35;
          v143 = v67;
          v144 = v68;
          v145 = a11;
          v148 = v124;
          v149 = v39;
          if (v41)
          {
            dispatch_sync(*(*(v16 + 8) + 16552), block);
LABEL_86:
            a7 = v128;
            if (!v140)
            {
              goto LABEL_26;
            }

LABEL_111:
            memcpy(v69, v74, 0x400uLL);
            goto LABEL_26;
          }

          v75 = v74->i64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 256, v74, *v67);
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 256, v75, v67[1]);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v76, v67[2]);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 256, v77, v67[3]);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 256, v78, v67[4]);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v79, v67[5]);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 256, v80, v67[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 256, v80 + v81, v67[7]);
          v82 = v148;
          a7 = v128;
          if (v148 && v149)
          {
            v83 = 0;
            v84 = v146 << 8;
            v85 = 32 * v147;
            v86 = v153 + v84 + v85;
            v87 = v144;
            v88 = v145;
            v89 = 32 * v149;
            if (v89)
            {
              v90 = (v89 - 1) >> 32 == 0;
            }

            else
            {
              v90 = 0;
            }

            v91 = !v90;
            v93 = v86 < v144 + v145 * (v148 - 1) + v89 && v144 < &__dst[256 * v148 + 768 + 256 * v146 + v89 + v85];
            v94 = v91 | (v145 < 0) | v93;
            v95 = &v153[1] + v84 + v85;
            v96 = (v144 + 16);
            do
            {
              v97 = v96;
              v98 = v95;
              v99 = v89;
              if (v94)
              {
                v100 = 0;
                do
                {
                  v86[v100] = *(v87 + v100);
                  ++v100;
                }

                while (v89 > v100);
              }

              else
              {
                do
                {
                  v101 = *v97;
                  *(v98 - 1) = *(v97 - 1);
                  *v98 = v101;
                  v98 += 2;
                  v97 += 2;
                  v99 -= 32;
                }

                while (v99);
              }

              ++v83;
              v95 += 256;
              v96 = (v96 + v88);
              v86 += 256;
              v87 += v88;
            }

            while (v83 != v82);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v153, 256, v142, v143, v150, v151);
          if (v140)
          {
            goto LABEL_111;
          }

LABEL_26:
          v21 = v33++ == v129 >> 3;
          v16 = v138;
        }

        while (!v21);
        v21 = v17++ == v121;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v201 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v178 = a8;
  v16 = a8 >> 2;
  v158 = a8 + a10 - 1;
  v160 = v158 >> 2;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  if (*(a1 + 168))
  {
    v19 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v19 = 0;
  }

  v20 = (v19 & 0xD00) == 0 || v19 == 768;
  v21 = v19 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v180 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v25 = a1;
  v171 = isLevelTiled;
  if (v16 <= v160)
  {
    v170 = a7 + a9 - 1;
    if (a7 >> 3 <= v170 >> 3)
    {
      v26 = a11;
      v179 = (a5 - 1) >> 3;
      v155 = a5 - 1;
      v164 = (a5 - 1) & 7;
      v156 = (a6 - 1) & 3;
      v157 = (a6 - 1) >> 2;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v28 = vcgt_u32(v27, 0xF00000007);
      v169 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v27, 0xFFFFFFFDFFFFFFFELL), -1))))))), v28);
      v168 = v28;
      v154 = 8 * v18 * v17;
      do
      {
        v29 = (4 * v16) | 3;
        if (4 * v16 <= v178)
        {
          v30 = v178;
        }

        else
        {
          v30 = 4 * v16;
        }

        if (v158 < v29)
        {
          v29 = v158;
        }

        v177 = 4 * v16;
        v167 = v30 - 4 * v16;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v156;
        v166 = v32;
        v34 = a7 >> 3;
        if (v16 == v157)
        {
          v35 = v156 + 1;
        }

        else
        {
          v35 = 4;
        }

        if (v16 != v157)
        {
          v33 = v32 != 4;
        }

        v165 = v33;
        v176 = a3 + (v30 - v178) * v26;
        v175 = v35;
        v161 = v35;
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

          if (v170 < v37)
          {
            v37 = a7 + a9 - 1;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v179)
          {
            v41 = v164 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v177 >= v178 && v36 >= a7)
          {
            v43 = v39 != v164;
            if (v34 != v179)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v165;
          }

          if (v171)
          {
            v64 = 0;
            v65 = v154 >> (*(v25 + 57) != 0);
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

            v142 = (v64 >> 3) - 1;
            v143 = (v67 >> 2) - 1;
            if ((v66 & 1) != 0 || (v144 = 32 - __clz(~(-1 << -__clz(v142))), v145 = 32 - __clz(~(-1 << -__clz(v143))), !(v145 | v144)))
            {
              v153 = 0;
            }

            else
            {
              v146 = 0;
              v147 = 0;
              v148 = v34 & v142;
              v149 = v16 & v143;
              v150 = v145 != 0;
              v151 = v144 != 0;
              v152 = 1;
              do
              {
                --v145;
                if (v150)
                {
                  v147 |= (v152 & v149) << v146++;
                }

                else
                {
                  v145 = 0;
                }

                --v144;
                if (v151)
                {
                  v147 |= (v152 & v148) << v146++;
                }

                else
                {
                  v144 = 0;
                }

                v152 *= 2;
                --v146;
                v151 = v144 != 0;
                v150 = v145 != 0;
              }

              while (v144 | v145);
              v153 = v147 << 10;
            }

            v51 = v153 + ((v36 / v64 + v177 / v67 * ((v64 + v155) / v64)) << 14);
          }

          else if (v169)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v48 = v168.i8[0];
            v47 = v168.i8[4];
            v49 = v169.i32[0];
            v50 = v169.i32[1];
            do
            {
              --v49;
              if (v48)
              {
                v45 |= (v46 & v16) << v44++;
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
            v51 = v45 << 10;
          }

          else
          {
            v51 = 0;
          }

          v52 = *(v25 + 128) >> (*(v25 + 144) + a12);
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

          v55 = *(v25 + 132) >> (*(v25 + 144) + a12);
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
LABEL_81:
              v63 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 2) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_81;
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
              v59 |= (v62 & v16) << v58++;
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
LABEL_82:
          v68 = (a4 + v63);
          v69 = v176 + 32 * (v38 - a7);
          v70 = (a2 + v51);
          if (v180)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v175 < 4)))
            {
              v73 = __dst;
LABEL_91:
              v76 = &byte_29D2F30E1;
              v77 = 16;
              v78 = v73;
              v75 = v34 + 1;
              do
              {
                v91 = *v76;
                v92 = *(v76 - 1);
                if (v41 <= 2 * v92 || 2 * v91 >= v35)
                {
                  v90 = 0;
                }

                else
                {
                  v79 = (v69 + 2 * a11 * v91 + (v92 << 6));
                  v80 = v79 + 2;
                  v82 = *v79;
                  v83 = v79[1];
                  v81 = (v79 + v26);
                  v84 = *v80;
                  v85 = v80[1];
                  v86 = *v81;
                  v87 = v81[1];
                  v81 += 2;
                  v88 = *v81;
                  v89 = v81[1];
                  *v78 = v82;
                  v78[1] = v83;
                  v78[2] = v84;
                  v78[3] = v85;
                  v78[4] = v86;
                  v78[5] = v87;
                  v78[6] = v88;
                  v78[7] = v89;
                  v78 += 8;
                  v90 = 127;
                }

                *v68++ = v90;
                v76 += 2;
                v77 -= 2;
              }

              while (v77);
              if (v180)
              {
                goto LABEL_29;
              }

              goto LABEL_30;
            }

            v162 = (a2 + v51);
            v71 = v40;
            v72 = v38;
            memcpy(__dst, (a2 + v51), sizeof(__dst));
            v73 = __dst;
            v38 = v72;
            v36 = 8 * v34;
            v26 = a11;
            v35 = v161;
            v40 = v71;
            v70 = v162;
            v25 = a1;
          }

          else
          {
            v73 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v175 < 4)))
            {
              goto LABEL_91;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v25;
          v182 = v73;
          v190 = v41;
          v191 = v35;
          v186 = v167;
          v187 = v38 - v36;
          v183 = v68;
          v184 = v69;
          v185 = v26;
          v188 = v166;
          v189 = v40;
          if (v42)
          {
            v74 = v73;
            dispatch_sync(*(*(v25 + 8) + 16552), block);
            v73 = v74;
            v25 = a1;
          }

          else
          {
            v163 = v73;
            v94 = &v73[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v193, 256, v73, *v68)];
            v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v194, 256, v94, v68[1]);
            v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 256, v95, v68[2]);
            v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 256, v96, v68[3]);
            v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v195, 256, v97, v68[4]);
            v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 256, v98, v68[5]);
            v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 256, v99, v68[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 256, v99 + v100, v68[7]);
            v101 = v188;
            if (v188 && v189)
            {
              v102 = 0;
              v103 = v186 << 8;
              v104 = 32 * v187;
              v105 = v193 + v103 + v104;
              v106 = v184;
              v107 = v185;
              v108 = 32 * v189;
              if (v108)
              {
                v109 = (v108 - 1) >> 32 == 0;
              }

              else
              {
                v109 = 0;
              }

              v110 = !v109;
              v112 = v105 < v184 + v185 * (v188 - 1) + v108 && v184 < &__dst[256 * v188 + 768 + 256 * v186 + v108 + v104];
              v113 = v110 | (v185 < 0) | v112;
              v114 = &v193[1] + v103 + v104;
              v115 = (v184 + 16);
              do
              {
                v116 = v115;
                v117 = v114;
                v118 = v108;
                if (v113)
                {
                  v119 = 0;
                  do
                  {
                    v105[v119] = *(v106 + v119);
                    ++v119;
                  }

                  while (v108 > v119);
                }

                else
                {
                  do
                  {
                    v120 = *v116;
                    *(v117 - 1) = *(v116 - 1);
                    *v117 = v120;
                    v117 += 2;
                    v116 += 2;
                    v118 -= 32;
                  }

                  while (v118);
                }

                ++v102;
                v114 += 256;
                v115 = (v115 + v107);
                v105 += 256;
                v106 += v107;
              }

              while (v102 != v101);
            }

            v121 = v182;
            v122 = v183;
            v123 = v190;
            v124 = &byte_29D2F30E1;
            v125 = 16;
            v126 = v191;
            v25 = a1;
            v73 = v163;
            do
            {
              v139 = *v124;
              v140 = *(v124 - 1);
              if (v123 <= 2 * v140 || 2 * v139 >= v126)
              {
                v138 = 0;
              }

              else
              {
                v127 = &v193[32 * v139 + 4 * v140];
                v129 = *v127;
                v130 = v127[1];
                v128 = v127 + 2;
                v131 = v127 + 16;
                v127 += 18;
                v132 = *v128;
                v133 = v128[1];
                v134 = *v131;
                v135 = v131[1];
                v136 = *v127;
                v137 = v127[1];
                *v121 = v129;
                v121[1] = v130;
                v121[2] = v132;
                v121[3] = v133;
                v121[4] = v134;
                v121[5] = v135;
                v121[6] = v136;
                v121[7] = v137;
                v121 += 8;
                v138 = 127;
              }

              *v122++ = v138;
              v124 += 2;
              v125 -= 2;
            }

            while (v125);
          }

          v75 = v34 + 1;
          if (v180)
          {
LABEL_29:
            memcpy(v70, v73, 0x400uLL);
            v25 = a1;
          }

LABEL_30:
          v20 = v34 == v170 >> 3;
          v34 = v75;
        }

        while (!v20);
        v20 = v16++ == v160;
      }

      while (!v20);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v307 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v226 = a8;
  v206 = a8 + a10 - 1;
  v227 = a1;
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
  v205 = v206 >> 2;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v230 = v24;
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
      v219 = 0;
LABEL_32:
      v216 = v27 - 3;
      v210 = v26 - 2;
      v33 = -1 << *(*(a1 + 208) + 48);
      v203 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v219 = v32 >= v26;
    goto LABEL_32;
  }

  v219 = 0;
  v203 = 0;
  v210 = 0;
  v216 = 0;
LABEL_33:
  if (v18 <= v205)
  {
    v218 = a7 + a9 - 1;
    v202 = a7 >> 3;
    if (a7 >> 3 <= v218 >> 3)
    {
      v228 = v19 >> 3;
      v211 = v19 & 7;
      v200 = v20 & 3;
      v201 = v20 >> 2;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v209 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v208 = v35;
      v217 = a7;
      do
      {
        v36 = (4 * v18) | 3;
        if (4 * v18 <= v226)
        {
          v37 = v226;
        }

        else
        {
          v37 = 4 * v18;
        }

        if (v206 < v36)
        {
          v36 = v206;
        }

        v225 = 4 * v18;
        v215 = v37 - 4 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v200;
        v214 = v39;
        v41 = v39 != 4;
        v42 = v200 + 1;
        if (v18 != v201)
        {
          v42 = 4;
          v40 = v41;
        }

        v213 = v40;
        v43 = v202;
        v212 = (v18 >> v210) * v203;
        v44 = v18 & ~(-1 << v210);
        v223 = a3 + (v37 - v226) * a11;
        v224 = v42;
        v222 = v42;
        v207 = v18;
        do
        {
          v45 = 8 * v43;
          v46 = 8 * (v43 + 1) - 1;
          if (8 * v43 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 8 * v43;
          }

          if (v218 < v46)
          {
            v46 = v218;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v228)
          {
            v50 = v211 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v225 >= v226 && v45 >= a7)
          {
            v52 = v48 != v211;
            if (v43 != v228)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v213;
          }

          if (v219)
          {
            if (v216 | v210)
            {
              v53 = 0;
              v54 = 0;
              v55 = 1;
              v56 = v210 != 0;
              v57 = v216 != 0;
              v58 = v210;
              v59 = v216;
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
                  v54 |= (v43 & ~(-1 << v216) & v55) << v53++;
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

            v68 = v60 + *(result + 336) * ((v43 >> v216) + v212);
          }

          else if (v209)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v208.i8[0];
            v65 = v208.i8[4];
            v66 = v209.i32[0];
            v67 = v209.i32[1];
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

          v70 = v69 + 7;
          if (v70 < 0x10)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 3) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 3;
          if (v73 < 8)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 2) - 1)));
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
          v82 = v223 + 32 * (v47 - a7);
          v229 = (a2 + v68);
          if (v230)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 8u) | (v222 < 4)))
            {
              goto LABEL_109;
            }

            v84 = v44;
            v85 = (a4 + v80);
            v86 = v50;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v45 = 8 * v43;
            v18 = v207;
            LOBYTE(v50) = v86;
            v81 = v85;
            v44 = v84;
            result = v227;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 8u) | (v222 < 4)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v224);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v232 = v83;
          v240 = v50;
          v241 = v224;
          v236 = v215;
          v237 = v47 - v45;
          v233 = v81;
          v234 = v82;
          v235 = a11;
          v238 = v214;
          v239 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v217;
            v87 = v43 + 1;
            goto LABEL_192;
          }

          v88 = *v81;
          a7 = v217;
          if (v88 == 127)
          {
            v91 = v83[1];
            v92 = v83[2];
            v93 = v83[3];
            v94 = v83[4];
            v95 = v83[5];
            v96 = v83[6];
            v97 = v83[7];
            v243 = *v83;
            v244 = v91;
            v245 = v92;
            v246 = v93;
            v259 = v94;
            v260 = v95;
            v261 = v96;
            v262 = v97;
            v89 = 128;
            v87 = v43 + 1;
          }

          else
          {
            v87 = v43 + 1;
            if (v88 == 3)
            {
              v90 = vld1q_dup_f32(v83->f32);
              v243 = v90;
              v244 = v90;
              v245 = v90;
              v246 = v90;
              v259 = v90;
              v260 = v90;
              v261 = v90;
              v262 = v90;
              v89 = 4;
            }

            else if (*v81)
            {
              v98 = v81;
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 256, v83, v88);
              v81 = v98;
            }

            else
            {
              v89 = 0;
              v246 = 0u;
              v245 = 0u;
              v244 = 0u;
              v243 = 0u;
              v259 = 0u;
              v260 = 0u;
              v261 = 0u;
              v262 = 0u;
            }
          }

          v99 = v83 + v89;
          v100 = v81[1];
          if (v100 == 127)
          {
            v103 = *(v99 + 16);
            v104 = *(v99 + 32);
            v105 = *(v99 + 48);
            v106 = *(v99 + 64);
            v107 = *(v99 + 80);
            v108 = *(v99 + 96);
            v109 = *(v99 + 112);
            v247 = *v99;
            v248 = v103;
            v249 = v104;
            v250 = v105;
            v263 = v106;
            v264 = v107;
            v265 = v108;
            v266 = v109;
            v101 = 128;
          }

          else if (v100 == 3)
          {
            v102 = vld1q_dup_f32(v99);
            v247 = v102;
            v248 = v102;
            v249 = v102;
            v250 = v102;
            v263 = v102;
            v264 = v102;
            v265 = v102;
            v266 = v102;
            v101 = 4;
          }

          else if (v81[1])
          {
            v110 = v81;
            v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v247, 256, v99, v100);
            v81 = v110;
          }

          else
          {
            v101 = 0;
            v249 = 0u;
            v250 = 0u;
            v247 = 0u;
            v248 = 0u;
            v263 = 0u;
            v264 = 0u;
            v265 = 0u;
            v266 = 0u;
          }

          v111 = v99 + v101;
          v112 = v81[2];
          if (v112 == 127)
          {
            v115 = *(v111 + 16);
            v116 = *(v111 + 32);
            v117 = *(v111 + 48);
            v118 = *(v111 + 64);
            v119 = *(v111 + 80);
            v120 = *(v111 + 96);
            v121 = *(v111 + 112);
            v275 = *v111;
            v276 = v115;
            v277 = v116;
            v278 = v117;
            v291 = v118;
            v292 = v119;
            v293 = v120;
            v294 = v121;
            v113 = 128;
          }

          else if (v112 == 3)
          {
            v114 = vld1q_dup_f32(v111);
            v275 = v114;
            v276 = v114;
            v277 = v114;
            v278 = v114;
            v291 = v114;
            v292 = v114;
            v293 = v114;
            v294 = v114;
            v113 = 4;
          }

          else if (v81[2])
          {
            v122 = v81;
            v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v275, 256, v111, v112);
            v81 = v122;
          }

          else
          {
            v113 = 0;
            v277 = 0u;
            v278 = 0u;
            v275 = 0u;
            v276 = 0u;
            v291 = 0u;
            v292 = 0u;
            v293 = 0u;
            v294 = 0u;
          }

          v123 = v111 + v113;
          v124 = v81[3];
          if (v124 == 127)
          {
            v127 = *(v123 + 16);
            v128 = *(v123 + 32);
            v129 = *(v123 + 48);
            v130 = *(v123 + 64);
            v131 = *(v123 + 80);
            v132 = *(v123 + 96);
            v133 = *(v123 + 112);
            v279 = *v123;
            v280 = v127;
            v281 = v128;
            v282 = v129;
            v295 = v130;
            v296 = v131;
            v297 = v132;
            v298 = v133;
            v125 = 128;
          }

          else if (v124 == 3)
          {
            v126 = vld1q_dup_f32(v123);
            v279 = v126;
            v280 = v126;
            v281 = v126;
            v282 = v126;
            v295 = v126;
            v296 = v126;
            v297 = v126;
            v298 = v126;
            v125 = 4;
          }

          else if (v81[3])
          {
            v134 = v81;
            v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v279, 256, v123, v124);
            v81 = v134;
          }

          else
          {
            v125 = 0;
            v281 = 0u;
            v282 = 0u;
            v279 = 0u;
            v280 = 0u;
            v295 = 0u;
            v296 = 0u;
            v297 = 0u;
            v298 = 0u;
          }

          v135 = v123 + v125;
          v136 = v81[4];
          if (v136 == 127)
          {
            v139 = *(v135 + 16);
            v140 = *(v135 + 32);
            v141 = *(v135 + 48);
            v142 = *(v135 + 64);
            v143 = *(v135 + 80);
            v144 = *(v135 + 96);
            v145 = *(v135 + 112);
            v251 = *v135;
            v252 = v139;
            v253 = v140;
            v254 = v141;
            v267 = v142;
            v268 = v143;
            v269 = v144;
            v270 = v145;
            v137 = 128;
          }

          else if (v136 == 3)
          {
            v138 = vld1q_dup_f32(v135);
            v251 = v138;
            v252 = v138;
            v253 = v138;
            v254 = v138;
            v267 = v138;
            v268 = v138;
            v269 = v138;
            v270 = v138;
            v137 = 4;
          }

          else if (v81[4])
          {
            v146 = v81;
            v137 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 256, v135, v136);
            v81 = v146;
          }

          else
          {
            v137 = 0;
            v253 = 0u;
            v254 = 0u;
            v251 = 0u;
            v252 = 0u;
            v267 = 0u;
            v268 = 0u;
            v269 = 0u;
            v270 = 0u;
          }

          v147 = v135 + v137;
          v148 = v81[5];
          if (v148 == 127)
          {
            v151 = *(v147 + 16);
            v152 = *(v147 + 32);
            v153 = *(v147 + 48);
            v154 = *(v147 + 64);
            v155 = *(v147 + 80);
            v156 = *(v147 + 96);
            v157 = *(v147 + 112);
            v255 = *v147;
            v256 = v151;
            v257 = v152;
            v258 = v153;
            v271 = v154;
            v272 = v155;
            v273 = v156;
            v274 = v157;
            v149 = 128;
          }

          else if (v148 == 3)
          {
            v150 = vld1q_dup_f32(v147);
            v255 = v150;
            v256 = v150;
            v257 = v150;
            v258 = v150;
            v271 = v150;
            v272 = v150;
            v273 = v150;
            v274 = v150;
            v149 = 4;
          }

          else if (v81[5])
          {
            v158 = v81;
            v149 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v255, 256, v147, v148);
            v81 = v158;
          }

          else
          {
            v149 = 0;
            v257 = 0u;
            v258 = 0u;
            v255 = 0u;
            v256 = 0u;
            v271 = 0u;
            v272 = 0u;
            v273 = 0u;
            v274 = 0u;
          }

          v159 = v147 + v149;
          v160 = v81[6];
          if (v160 == 127)
          {
            v163 = *(v159 + 16);
            v164 = *(v159 + 32);
            v165 = *(v159 + 48);
            v166 = *(v159 + 64);
            v167 = *(v159 + 80);
            v168 = *(v159 + 96);
            v169 = *(v159 + 112);
            v283 = *v159;
            v284 = v163;
            v285 = v164;
            v286 = v165;
            v299 = v166;
            v300 = v167;
            v301 = v168;
            v302 = v169;
            v161 = 128;
          }

          else if (v160 == 3)
          {
            v162 = vld1q_dup_f32(v159);
            v283 = v162;
            v284 = v162;
            v285 = v162;
            v286 = v162;
            v299 = v162;
            v300 = v162;
            v301 = v162;
            v302 = v162;
            v161 = 4;
          }

          else if (v81[6])
          {
            v170 = v81;
            v161 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v283, 256, v159, v160);
            v81 = v170;
          }

          else
          {
            v161 = 0;
            v285 = 0u;
            v286 = 0u;
            v283 = 0u;
            v284 = 0u;
            v299 = 0u;
            v300 = 0u;
            v301 = 0u;
            v302 = 0u;
          }

          v171 = v159 + v161;
          v172 = v81[7];
          if (v172 == 127)
          {
            v175 = *(v171 + 16);
            v176 = *(v171 + 32);
            v177 = *(v171 + 48);
            v178 = *(v171 + 64);
            v179 = *(v171 + 80);
            v180 = *(v171 + 96);
            v181 = *(v171 + 112);
            v287 = *v171;
            v288 = v175;
            v289 = v176;
            v290 = v177;
            v303 = v178;
            v304 = v179;
            v305 = v180;
            v306 = v181;
            v173 = v238;
            if (v238)
            {
              goto LABEL_170;
            }
          }

          else if (v172 == 3)
          {
            v174 = vld1q_dup_f32(v171);
            v287 = v174;
            v288 = v174;
            v289 = v174;
            v290 = v174;
            v303 = v174;
            v304 = v174;
            v305 = v174;
            v306 = v174;
            v173 = v238;
            if (v238)
            {
              goto LABEL_170;
            }
          }

          else if (v81[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v287, 256, v171, v172);
            v173 = v238;
            if (v238)
            {
LABEL_170:
              if (v239)
              {
                v182 = 0;
                v183 = 32 * v237;
                v184 = &v243.i8[256 * v236 + v183];
                v185 = v234;
                v186 = v235;
                v187 = 32 * v239;
                if (v187)
                {
                  v188 = (v187 - 1) >> 32 == 0;
                }

                else
                {
                  v188 = 0;
                }

                v189 = !v188;
                v191 = v184 < v234 + v235 * (v173 - 1) + v187 && v234 < &__dst[256 * v173 + 768 + 256 * v236 + v187 + v183];
                v192 = v189 | (v235 < 0) | v191;
                v193 = &v244 + 256 * v236 + v183;
                v194 = (v234 + 16);
                do
                {
                  v195 = v194;
                  v196 = v193;
                  v197 = v187;
                  if (v192)
                  {
                    v198 = 0;
                    do
                    {
                      v184[v198] = *(v185 + v198);
                      ++v198;
                    }

                    while (v187 > v198);
                  }

                  else
                  {
                    do
                    {
                      v199 = *v195;
                      *(v196 - 1) = *(v195 - 1);
                      *v196 = v199;
                      v196 += 2;
                      v195 += 2;
                      v197 -= 32;
                    }

                    while (v197);
                  }

                  ++v182;
                  v193 += 256;
                  v194 = (v194 + v186);
                  v184 += 256;
                  v185 += v186;
                }

                while (v182 != v173);
              }
            }
          }

          else
          {
            v289 = 0u;
            v290 = 0u;
            v287 = 0u;
            v288 = 0u;
            v303 = 0u;
            v304 = 0u;
            v305 = 0u;
            v306 = 0u;
            v173 = v238;
            if (v238)
            {
              goto LABEL_170;
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v243, 256, v232, v233, v240, v241);
LABEL_192:
          if (v230)
          {
            memcpy(v229, v83, 0x400uLL);
          }

          v21 = v43 == v218 >> 3;
          v43 = v87;
          result = v227;
        }

        while (!v21);
        v21 = v18++ == v205;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v307 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v226 = a8;
  v206 = a8 + a10 - 1;
  v227 = a1;
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
  v205 = v206 >> 2;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v230 = v24;
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
      v219 = 0;
LABEL_32:
      v216 = v27 - 3;
      v210 = v26 - 2;
      v33 = -1 << *(*(a1 + 208) + 48);
      v203 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v219 = v32 >= v26;
    goto LABEL_32;
  }

  v219 = 0;
  v203 = 0;
  v210 = 0;
  v216 = 0;
LABEL_33:
  if (v18 <= v205)
  {
    v218 = a7 + a9 - 1;
    v202 = a7 >> 3;
    if (a7 >> 3 <= v218 >> 3)
    {
      v228 = v19 >> 3;
      v211 = v19 & 7;
      v200 = v20 & 3;
      v201 = v20 >> 2;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v209 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v208 = v35;
      v217 = a7;
      do
      {
        v36 = (4 * v18) | 3;
        if (4 * v18 <= v226)
        {
          v37 = v226;
        }

        else
        {
          v37 = 4 * v18;
        }

        if (v206 < v36)
        {
          v36 = v206;
        }

        v225 = 4 * v18;
        v215 = v37 - 4 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v200;
        v214 = v39;
        v41 = v39 != 4;
        v42 = v200 + 1;
        if (v18 != v201)
        {
          v42 = 4;
          v40 = v41;
        }

        v213 = v40;
        v43 = v202;
        v212 = (v18 >> v210) * v203;
        v44 = v18 & ~(-1 << v210);
        v223 = a3 + (v37 - v226) * a11;
        v224 = v42;
        v222 = v42;
        v207 = v18;
        do
        {
          v45 = 8 * v43;
          v46 = 8 * (v43 + 1) - 1;
          if (8 * v43 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 8 * v43;
          }

          if (v218 < v46)
          {
            v46 = v218;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v228)
          {
            v50 = v211 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v225 >= v226 && v45 >= a7)
          {
            v52 = v48 != v211;
            if (v43 != v228)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v213;
          }

          if (v219)
          {
            if (v216 | v210)
            {
              v53 = 0;
              v54 = 0;
              v55 = 1;
              v56 = v210 != 0;
              v57 = v216 != 0;
              v58 = v210;
              v59 = v216;
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
                  v54 |= (v43 & ~(-1 << v216) & v55) << v53++;
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

            v68 = v60 + *(result + 336) * ((v43 >> v216) + v212);
          }

          else if (v209)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v208.i8[0];
            v65 = v208.i8[4];
            v66 = v209.i32[0];
            v67 = v209.i32[1];
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

          v70 = v69 + 7;
          if (v70 < 0x10)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 3) - 1)));
          }

          v72 = *(result + 132) >> (*(result + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 3;
          if (v73 < 8)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 2) - 1)));
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
          v82 = (v223 + 32 * (v47 - a7));
          v229 = (a2 + v68);
          if (v230)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 8u) | (v222 < 4)))
            {
              goto LABEL_109;
            }

            v84 = v44;
            v85 = (a4 + v80);
            v86 = v50;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v45 = 8 * v43;
            v18 = v207;
            LOBYTE(v50) = v86;
            v81 = v85;
            v44 = v84;
            result = v227;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 8u) | (v222 < 4)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v224);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v232 = v83;
          v240 = v50;
          v241 = v224;
          v236 = v215;
          v237 = v47 - v45;
          v233 = v81;
          v234 = v82;
          v235 = a11;
          v238 = v214;
          v239 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v217;
            v87 = v43 + 1;
            goto LABEL_192;
          }

          v88 = *v81;
          a7 = v217;
          if (v88 == 127)
          {
            v91 = *(v83 + 1);
            v92 = *(v83 + 2);
            v93 = *(v83 + 3);
            v94 = *(v83 + 4);
            v95 = *(v83 + 5);
            v96 = *(v83 + 6);
            v97 = *(v83 + 7);
            v243 = *v83;
            v244 = v91;
            v245 = v92;
            v246 = v93;
            v259 = v94;
            v260 = v95;
            v261 = v96;
            v262 = v97;
            v89 = 128;
            v87 = v43 + 1;
          }

          else
          {
            v87 = v43 + 1;
            if (v88 == 3)
            {
              v90 = vld1q_dup_f32(v83);
              v243 = v90;
              v244 = v90;
              v245 = v90;
              v246 = v90;
              v259 = v90;
              v260 = v90;
              v261 = v90;
              v262 = v90;
              v89 = 4;
            }

            else if (*v81)
            {
              v98 = v81;
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 256, v83, v88);
              v81 = v98;
            }

            else
            {
              v89 = 0;
              v246 = 0u;
              v245 = 0u;
              v244 = 0u;
              v243 = 0u;
              v259 = 0u;
              v260 = 0u;
              v261 = 0u;
              v262 = 0u;
            }
          }

          v99 = v83 + v89;
          v100 = v81[1];
          if (v100 == 127)
          {
            v103 = *(v99 + 16);
            v104 = *(v99 + 32);
            v105 = *(v99 + 48);
            v106 = *(v99 + 64);
            v107 = *(v99 + 80);
            v108 = *(v99 + 96);
            v109 = *(v99 + 112);
            v247 = *v99;
            v248 = v103;
            v249 = v104;
            v250 = v105;
            v263 = v106;
            v264 = v107;
            v265 = v108;
            v266 = v109;
            v101 = 128;
          }

          else if (v100 == 3)
          {
            v102 = vld1q_dup_f32(v99);
            v247 = v102;
            v248 = v102;
            v249 = v102;
            v250 = v102;
            v263 = v102;
            v264 = v102;
            v265 = v102;
            v266 = v102;
            v101 = 4;
          }

          else if (v81[1])
          {
            v110 = v81;
            v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v247, 256, v99, v100);
            v81 = v110;
          }

          else
          {
            v101 = 0;
            v249 = 0u;
            v250 = 0u;
            v247 = 0u;
            v248 = 0u;
            v263 = 0u;
            v264 = 0u;
            v265 = 0u;
            v266 = 0u;
          }

          v111 = v99 + v101;
          v112 = v81[2];
          if (v112 == 127)
          {
            v115 = *(v111 + 16);
            v116 = *(v111 + 32);
            v117 = *(v111 + 48);
            v118 = *(v111 + 64);
            v119 = *(v111 + 80);
            v120 = *(v111 + 96);
            v121 = *(v111 + 112);
            v275 = *v111;
            v276 = v115;
            v277 = v116;
            v278 = v117;
            v291 = v118;
            v292 = v119;
            v293 = v120;
            v294 = v121;
            v113 = 128;
          }

          else if (v112 == 3)
          {
            v114 = vld1q_dup_f32(v111);
            v275 = v114;
            v276 = v114;
            v277 = v114;
            v278 = v114;
            v291 = v114;
            v292 = v114;
            v293 = v114;
            v294 = v114;
            v113 = 4;
          }

          else if (v81[2])
          {
            v122 = v81;
            v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v275, 256, v111, v112);
            v81 = v122;
          }

          else
          {
            v113 = 0;
            v277 = 0u;
            v278 = 0u;
            v275 = 0u;
            v276 = 0u;
            v291 = 0u;
            v292 = 0u;
            v293 = 0u;
            v294 = 0u;
          }

          v123 = v111 + v113;
          v124 = v81[3];
          if (v124 == 127)
          {
            v127 = *(v123 + 16);
            v128 = *(v123 + 32);
            v129 = *(v123 + 48);
            v130 = *(v123 + 64);
            v131 = *(v123 + 80);
            v132 = *(v123 + 96);
            v133 = *(v123 + 112);
            v279 = *v123;
            v280 = v127;
            v281 = v128;
            v282 = v129;
            v295 = v130;
            v296 = v131;
            v297 = v132;
            v298 = v133;
            v125 = 128;
          }

          else if (v124 == 3)
          {
            v126 = vld1q_dup_f32(v123);
            v279 = v126;
            v280 = v126;
            v281 = v126;
            v282 = v126;
            v295 = v126;
            v296 = v126;
            v297 = v126;
            v298 = v126;
            v125 = 4;
          }

          else if (v81[3])
          {
            v134 = v81;
            v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v279, 256, v123, v124);
            v81 = v134;
          }

          else
          {
            v125 = 0;
            v281 = 0u;
            v282 = 0u;
            v279 = 0u;
            v280 = 0u;
            v295 = 0u;
            v296 = 0u;
            v297 = 0u;
            v298 = 0u;
          }

          v135 = v123 + v125;
          v136 = v81[4];
          if (v136 == 127)
          {
            v139 = *(v135 + 16);
            v140 = *(v135 + 32);
            v141 = *(v135 + 48);
            v142 = *(v135 + 64);
            v143 = *(v135 + 80);
            v144 = *(v135 + 96);
            v145 = *(v135 + 112);
            v251 = *v135;
            v252 = v139;
            v253 = v140;
            v254 = v141;
            v267 = v142;
            v268 = v143;
            v269 = v144;
            v270 = v145;
            v137 = 128;
          }

          else if (v136 == 3)
          {
            v138 = vld1q_dup_f32(v135);
            v251 = v138;
            v252 = v138;
            v253 = v138;
            v254 = v138;
            v267 = v138;
            v268 = v138;
            v269 = v138;
            v270 = v138;
            v137 = 4;
          }

          else if (v81[4])
          {
            v146 = v81;
            v137 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 256, v135, v136);
            v81 = v146;
          }

          else
          {
            v137 = 0;
            v253 = 0u;
            v254 = 0u;
            v251 = 0u;
            v252 = 0u;
            v267 = 0u;
            v268 = 0u;
            v269 = 0u;
            v270 = 0u;
          }

          v147 = v135 + v137;
          v148 = v81[5];
          if (v148 == 127)
          {
            v151 = *(v147 + 16);
            v152 = *(v147 + 32);
            v153 = *(v147 + 48);
            v154 = *(v147 + 64);
            v155 = *(v147 + 80);
            v156 = *(v147 + 96);
            v157 = *(v147 + 112);
            v255 = *v147;
            v256 = v151;
            v257 = v152;
            v258 = v153;
            v271 = v154;
            v272 = v155;
            v273 = v156;
            v274 = v157;
            v149 = 128;
          }

          else if (v148 == 3)
          {
            v150 = vld1q_dup_f32(v147);
            v255 = v150;
            v256 = v150;
            v257 = v150;
            v258 = v150;
            v271 = v150;
            v272 = v150;
            v273 = v150;
            v274 = v150;
            v149 = 4;
          }

          else if (v81[5])
          {
            v158 = v81;
            v149 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v255, 256, v147, v148);
            v81 = v158;
          }

          else
          {
            v149 = 0;
            v257 = 0u;
            v258 = 0u;
            v255 = 0u;
            v256 = 0u;
            v271 = 0u;
            v272 = 0u;
            v273 = 0u;
            v274 = 0u;
          }

          v159 = v147 + v149;
          v160 = v81[6];
          if (v160 == 127)
          {
            v163 = *(v159 + 16);
            v164 = *(v159 + 32);
            v165 = *(v159 + 48);
            v166 = *(v159 + 64);
            v167 = *(v159 + 80);
            v168 = *(v159 + 96);
            v169 = *(v159 + 112);
            v283 = *v159;
            v284 = v163;
            v285 = v164;
            v286 = v165;
            v299 = v166;
            v300 = v167;
            v301 = v168;
            v302 = v169;
            v161 = 128;
          }

          else if (v160 == 3)
          {
            v162 = vld1q_dup_f32(v159);
            v283 = v162;
            v284 = v162;
            v285 = v162;
            v286 = v162;
            v299 = v162;
            v300 = v162;
            v301 = v162;
            v302 = v162;
            v161 = 4;
          }

          else if (v81[6])
          {
            v170 = v81;
            v161 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v283, 256, v159, v160);
            v81 = v170;
          }

          else
          {
            v161 = 0;
            v285 = 0u;
            v286 = 0u;
            v283 = 0u;
            v284 = 0u;
            v299 = 0u;
            v300 = 0u;
            v301 = 0u;
            v302 = 0u;
          }

          v171 = v159 + v161;
          v172 = v81[7];
          if (v172 == 127)
          {
            v175 = *(v171 + 16);
            v176 = *(v171 + 32);
            v177 = *(v171 + 48);
            v178 = *(v171 + 64);
            v179 = *(v171 + 80);
            v180 = *(v171 + 96);
            v181 = *(v171 + 112);
            v287 = *v171;
            v288 = v175;
            v289 = v176;
            v290 = v177;
            v303 = v178;
            v304 = v179;
            v305 = v180;
            v306 = v181;
            v173 = v238;
            if (v238)
            {
              goto LABEL_170;
            }
          }

          else if (v172 == 3)
          {
            v174 = vld1q_dup_f32(v171);
            v287 = v174;
            v288 = v174;
            v289 = v174;
            v290 = v174;
            v303 = v174;
            v304 = v174;
            v305 = v174;
            v306 = v174;
            v173 = v238;
            if (v238)
            {
              goto LABEL_170;
            }
          }

          else if (v81[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v287, 256, v171, v172);
            v173 = v238;
            if (v238)
            {
LABEL_170:
              if (v239)
              {
                v182 = 0;
                v183 = 32 * v237;
                v184 = &v243.i8[256 * v236 + v183];
                v185 = v234;
                v186 = v235;
                v187 = 32 * v239;
                if (v187)
                {
                  v188 = (v187 - 1) >> 32 == 0;
                }

                else
                {
                  v188 = 0;
                }

                v189 = !v188;
                v191 = v184 < v234 + v235 * (v173 - 1) + v187 && v234 < &__dst[256 * v173 + 768 + 256 * v236 + v187 + v183];
                v192 = v189 | (v235 < 0) | v191;
                v193 = &v244 + 256 * v236 + v183;
                v194 = v234 + 1;
                do
                {
                  v195 = v194;
                  v196 = v193;
                  v197 = v187;
                  if (v192)
                  {
                    v198 = 0;
                    do
                    {
                      v184[v198] = *(v185 + v198);
                      ++v198;
                    }

                    while (v187 > v198);
                  }

                  else
                  {
                    do
                    {
                      v199 = *v195;
                      *(v196 - 1) = *(v195 - 1);
                      *v196 = v199;
                      v196 += 2;
                      v195 += 2;
                      v197 -= 32;
                    }

                    while (v197);
                  }

                  ++v182;
                  v193 += 256;
                  v194 = (v194 + v186);
                  v184 += 256;
                  v185 = (v185 + v186);
                }

                while (v182 != v173);
              }
            }
          }

          else
          {
            v289 = 0u;
            v290 = 0u;
            v287 = 0u;
            v288 = 0u;
            v303 = 0u;
            v304 = 0u;
            v305 = 0u;
            v306 = 0u;
            v173 = v238;
            if (v238)
            {
              goto LABEL_170;
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v243, 256, v232, v233, v240, v241);
LABEL_192:
          if (v230)
          {
            memcpy(v229, v83, 0x400uLL);
          }

          v21 = v43 == v218 >> 3;
          v43 = v87;
          result = v227;
        }

        while (!v21);
        v21 = v18++ == v205;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
          v70 = v209 + 32 * (v38 - a7);
          v71 = (a2 + v51);
          __src = (a2 + v51);
          if (v216)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v208 < 4)))
            {
              v71 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v70, a11, v71, v68, v41, v210);
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v76 = v71[1];
              v77 = v71[2];
              v78 = v71[3];
              v79 = v71[4];
              v80 = v71[5];
              v81 = v71[6];
              v82 = v71[7];
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
              v75 = vld1q_dup_f32(v71->f32);
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
                v172 = (v220 + 16);
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
                  v163 += v164;
                }

                while (v160 != v151);
              }
            }

LABEL_168:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v229, 256, v218, v219, v226, v227);
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