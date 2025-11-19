uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v237);
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v89 = vld1q_dup_f32(v83->i32);
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
            v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v256, 128, v83, v87);
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

          v98 = v83->i64 + v88;
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
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 128, v98, v99);
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
            v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v288, 128, v110, v111);
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
            v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v290, 128, v122, v123);
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
            v136 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 128, v134, v135);
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
            v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 128, v146, v147);
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
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 128, v158, v159);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 128, v170, v171);
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
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v256, 128, v245, v246, v253, v254);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v256, 128, v83, v87);
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
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 128, v98, v99);
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
            v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v288, 128, v110, v111);
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
            v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v290, 128, v122, v123);
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
            v136 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 128, v134, v135);
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
            v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 128, v146, v147);
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
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 128, v158, v159);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 128, v170, v171);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v225);
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 128, v72, v74);
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
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 128, v84, v85);
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
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 128, v95, v96);
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
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 128, v106, v107);
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
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 128, v117, v118);
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
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 128, v128, v129);
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
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 128, v139, v140);
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
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v282, 128, v150, v151);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v244, 128, v233, v234, v241, v242);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 128, v72, v74);
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
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 128, v84, v85);
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
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 128, v95, v96);
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
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 128, v106, v107);
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
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 128, v117, v118);
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
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 128, v128, v129);
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
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 128, v139, v140);
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
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v282, 128, v150, v151);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v241 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v192 = a8;
  v174 = a8 + a10 - 1;
  v193 = a1;
  if (*(a1 + 168))
  {
    v21 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v21 = 0;
  }

  v22 = a8 >> 3;
  v23 = a5 - 1;
  v24 = a6 - 1;
  v173 = v174 >> 3;
  v25 = (v21 & 0xD00) == 0 || v21 == 768;
  v26 = v21 & 0xE00;
  v28 = !v25 && v26 != 1024;
  v196 = v28;
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
      v186 = 0;
LABEL_32:
      v183 = v31 - 4;
      v177 = v30 - 3;
      v37 = -1 << *(*(a1 + 208) + 48);
      v171 = (((~v37 + a5) & v37) + ~(-1 << v31)) >> v31;
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

    v186 = v36 >= v30;
    goto LABEL_32;
  }

  v186 = 0;
  v171 = 0;
  v177 = 0;
  v183 = 0;
LABEL_33:
  if (v22 <= v173)
  {
    v185 = a7 + a9 - 1;
    v170 = a7 >> 4;
    if (a7 >> 4 <= v185 >> 4)
    {
      v194 = v23 >> 4;
      v179 = v23 & 0xF;
      v168 = v24 & 7;
      v169 = v24 >> 3;
      v167 = ~(-1 << v177);
      v38 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v39.i8 = vcgt_u32(v38, 0x1F0000000FLL);
      v40.i64[0] = -1;
      v41.i64[0] = 0x2000000020;
      *v42.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v38, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v39.i8);
      v176 = v42.i64[0];
      v178 = v42.i32[0] | v42.i32[1];
      v175 = v39.i64[0];
      v184 = a7;
      do
      {
        v43 = (8 * v22) | 7;
        if (8 * v22 <= v192)
        {
          v44 = v192;
        }

        else
        {
          v44 = 8 * v22;
        }

        if (v174 < v43)
        {
          v43 = v174;
        }

        v182 = v44 - 8 * v22;
        v45 = v43 - v44;
        v46 = v45 + 1;
        v47 = v45 != v168;
        v181 = v46;
        v48 = v46 != 8;
        v49 = v168 + 1;
        if (v22 != v169)
        {
          v49 = 8;
          v47 = v48;
        }

        v180 = v47;
        v50 = v170;
        v51 = v22 & v167;
        v190 = a3 + (v44 - v192) * a11;
        v191 = v49;
        v189 = v49;
        do
        {
          v52 = 16 * v50;
          v53 = 16 * (v50 + 1) - 1;
          if (16 * v50 <= a7)
          {
            v54 = a7;
          }

          else
          {
            v54 = 16 * v50;
          }

          if (v185 < v53)
          {
            v53 = v185;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v50 == v194)
          {
            v57 = v179 + 1;
          }

          else
          {
            v57 = 16;
          }

          v58 = 1;
          if (8 * v22 >= v192 && v52 >= a7)
          {
            v59 = v55 != v179;
            if (v50 != v194)
            {
              v59 = v56 != 16;
            }

            v58 = v59 || v180;
          }

          if (v186)
          {
            if (v183 | v177)
            {
              v60 = 0;
              v61 = 0;
              v62 = v183 != 0;
              v63 = 1;
              v65 = v177 != 0;
              v64 = v177;
              v66 = v183;
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
                  v61 |= (v50 & ~(-1 << v183) & v63) << v60++;
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

            v75 = v67 + *(result + 336) * ((v50 >> v183) + (v22 >> v177) * v171);
          }

          else if (v178)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v175;
            v71 = BYTE4(v175);
            v73 = v176;
            v74 = HIDWORD(v176);
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

          v77 = v76 + 15;
          if (v77 < 0x20)
          {
            v78 = 0;
          }

          else
          {
            v78 = 32 - __clz(~(-1 << -__clz((v77 >> 4) - 1)));
          }

          v79 = *(result + 132) >> (*(result + 144) + a12);
          if (v79 <= 1)
          {
            v79 = 1;
          }

          v80 = v79 + 7;
          if (v80 < 0x10)
          {
            v81 = 0;
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 3) - 1)));
          }

          if (v81 | v78)
          {
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
          }

          else
          {
            v87 = 0;
          }

          v88 = (a4 + v87);
          v89 = v190 + 4 * (v54 - a7);
          v195 = (a2 + v75);
          if (v196)
          {
            v90 = __dst;
            if (!(v58 & 1 | (v57 < 0x10u) | (v189 < 8)))
            {
              goto LABEL_109;
            }

            v91 = v56;
            v92 = (a4 + v87);
            v93 = v57;
            memcpy(__dst, (a2 + v75), sizeof(__dst));
            v56 = v91;
            v51 = v22 & v167;
            LOBYTE(v57) = v93;
            v88 = v92;
            result = v193;
          }

          else
          {
            v90 = (a2 + v75);
            if (!(v58 & 1 | (v57 < 0x10u) | (v189 < 8)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v89, a11, v90, v88, v57, v191, *v42.i64, *v39.i64, *v40.i64, *v41.i64, *v17.i64, v18, v19, v20);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v198 = v90;
          v206 = v57;
          v207 = v191;
          v202 = v182;
          v203 = v54 - v52;
          v199 = v88;
          v200 = v89;
          v201 = a11;
          v204 = v181;
          v205 = v56;
          if (v58)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v184;
            v94 = v50 + 1;
            goto LABEL_202;
          }

          v95 = *v88;
          a7 = v184;
          if (v95 == 63)
          {
            v39 = *(v90 + 1);
            v97 = (v90 + 32);
            *v40.i8 = vld2q_f64(v97);
            v17 = vzip1q_s64(*v90, v39);
            v42 = vzip2q_s64(*v90, v39);
            v209 = v17;
            v213 = v42;
            v217 = v40;
            v221 = v41;
            v96 = 64;
          }

          else if (v95 == 1)
          {
            v42 = vld1q_dup_s16(v90);
            v209 = v42;
            v213 = v42;
            v217 = v42;
            v221 = v42;
            v96 = 2;
          }

          else if (*v88)
          {
            v98 = v88;
            v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v209, 64, v90, v95, *v42.i64, *v39.i64, *v40.i64, *v41.i8);
            v88 = v98;
          }

          else
          {
            v96 = 0;
            v209 = 0uLL;
            v213 = 0uLL;
            v217 = 0uLL;
            v221 = 0uLL;
          }

          v99 = &v90[v96];
          v100 = v88[1];
          if (v100 == 63)
          {
            v39 = *(v99 + 16);
            v102 = (v99 + 32);
            *v40.i8 = vld2q_f64(v102);
            v17 = vzip1q_s64(*v99, v39);
            v42 = vzip2q_s64(*v99, v39);
            v210 = v17;
            v214 = v42;
            v218 = v40;
            v222 = v41;
            v101 = 64;
          }

          else if (v100 == 1)
          {
            v42 = vld1q_dup_s16(v99);
            v210 = v42;
            v214 = v42;
            v218 = v42;
            v222 = v42;
            v101 = 2;
          }

          else if (v88[1])
          {
            v103 = v88;
            v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v210, 64, v99, v100, *v42.i64, *v39.i64, *v40.i64, *v41.i8);
            v88 = v103;
          }

          else
          {
            v101 = 0;
            v210 = 0uLL;
            v214 = 0uLL;
            v218 = 0uLL;
            v222 = 0uLL;
          }

          v104 = v99 + v101;
          v105 = v88[2];
          if (v105 == 63)
          {
            v39 = *(v104 + 16);
            v107 = (v104 + 32);
            *v40.i8 = vld2q_f64(v107);
            v17 = vzip1q_s64(*v104, v39);
            v42 = vzip2q_s64(*v104, v39);
            v225 = v17;
            v229 = v42;
            v233 = v40;
            v237 = v41;
            v106 = 64;
          }

          else if (v105 == 1)
          {
            v42 = vld1q_dup_s16(v104);
            v225 = v42;
            v229 = v42;
            v233 = v42;
            v237 = v42;
            v106 = 2;
          }

          else if (v88[2])
          {
            v108 = v88;
            v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v225, 64, v104, v105, *v42.i64, *v39.i64, *v40.i64, *v41.i8);
            v88 = v108;
          }

          else
          {
            v106 = 0;
            v225 = 0uLL;
            v229 = 0uLL;
            v233 = 0uLL;
            v237 = 0uLL;
          }

          v109 = v104 + v106;
          v110 = v88[3];
          if (v110 == 63)
          {
            v39 = *(v109 + 16);
            v112 = (v109 + 32);
            *v40.i8 = vld2q_f64(v112);
            v17 = vzip1q_s64(*v109, v39);
            v42 = vzip2q_s64(*v109, v39);
            v226 = v17;
            v230 = v42;
            v234 = v40;
            v238 = v41;
            v111 = 64;
          }

          else if (v110 == 1)
          {
            v42 = vld1q_dup_s16(v109);
            v226 = v42;
            v230 = v42;
            v234 = v42;
            v238 = v42;
            v111 = 2;
          }

          else if (v88[3])
          {
            v113 = v88;
            v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 64, v109, v110, *v42.i64, *v39.i64, *v40.i64, *v41.i8);
            v88 = v113;
          }

          else
          {
            v111 = 0;
            v226 = 0uLL;
            v230 = 0uLL;
            v234 = 0uLL;
            v238 = 0uLL;
          }

          v114 = v109 + v111;
          v115 = v88[4];
          if (v115 == 63)
          {
            v39 = *(v114 + 16);
            v117 = (v114 + 32);
            *v40.i8 = vld2q_f64(v117);
            v17 = vzip1q_s64(*v114, v39);
            v42 = vzip2q_s64(*v114, v39);
            v211 = v17;
            v215 = v42;
            v219 = v40;
            v223 = v41;
            v116 = 64;
          }

          else if (v115 == 1)
          {
            v42 = vld1q_dup_s16(v114);
            v211 = v42;
            v215 = v42;
            v219 = v42;
            v223 = v42;
            v116 = 2;
          }

          else if (v88[4])
          {
            v118 = v88;
            v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v211, 64, v114, v115, *v42.i64, *v39.i64, *v40.i64, *v41.i8);
            v88 = v118;
          }

          else
          {
            v116 = 0;
            v211 = 0uLL;
            v215 = 0uLL;
            v219 = 0uLL;
            v223 = 0uLL;
          }

          v119 = v114 + v116;
          v120 = v88[5];
          if (v120 == 63)
          {
            v39 = *(v119 + 16);
            v122 = (v119 + 32);
            *v40.i8 = vld2q_f64(v122);
            v17 = vzip1q_s64(*v119, v39);
            v42 = vzip2q_s64(*v119, v39);
            v212 = v17;
            v216 = v42;
            v220 = v40;
            v224 = v41;
            v121 = 64;
          }

          else if (v120 == 1)
          {
            v42 = vld1q_dup_s16(v119);
            v212 = v42;
            v216 = v42;
            v220 = v42;
            v224 = v42;
            v121 = 2;
          }

          else if (v88[5])
          {
            v123 = v88;
            v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v212, 64, v119, v120, *v42.i64, *v39.i64, *v40.i64, *v41.i8);
            v88 = v123;
          }

          else
          {
            v121 = 0;
            v212 = 0uLL;
            v216 = 0uLL;
            v220 = 0uLL;
            v224 = 0uLL;
          }

          v124 = v119 + v121;
          v125 = v88[6];
          if (v125 == 63)
          {
            v39 = *(v124 + 16);
            v127 = (v124 + 32);
            *v40.i8 = vld2q_f64(v127);
            v17 = vzip1q_s64(*v124, v39);
            v42 = vzip2q_s64(*v124, v39);
            v227 = v17;
            v231 = v42;
            v235 = v40;
            v239 = v41;
            v126 = 64;
          }

          else if (v125 == 1)
          {
            v42 = vld1q_dup_s16(v124);
            v227 = v42;
            v231 = v42;
            v235 = v42;
            v239 = v42;
            v126 = 2;
          }

          else if (v88[6])
          {
            v128 = v88;
            v126 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 64, v124, v125, *v42.i64, *v39.i64, *v40.i64, *v41.i8);
            v88 = v128;
          }

          else
          {
            v126 = 0;
            v227 = 0uLL;
            v231 = 0uLL;
            v235 = 0uLL;
            v239 = 0uLL;
          }

          v129 = v124 + v126;
          v130 = v88[7];
          if (v130 == 63)
          {
            v39 = *(v129 + 16);
            v132 = (v129 + 32);
            *v40.i8 = vld2q_f64(v132);
            v17 = vzip1q_s64(*v129, v39);
            v42 = vzip2q_s64(*v129, v39);
            v228 = v17;
            v232 = v42;
            v236 = v40;
            v240 = v41;
            v94 = v50 + 1;
            v131 = v204;
            if (!v204)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v94 = v50 + 1;
            if (v130 == 1)
            {
              v42 = vld1q_dup_s16(v129);
              v228 = v42;
              v232 = v42;
              v236 = v42;
              v240 = v42;
              v131 = v204;
              if (!v204)
              {
                goto LABEL_201;
              }
            }

            else if (v88[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 64, v129, v130, *v42.i64, *v39.i64, *v40.i64, *v41.i8);
              v131 = v204;
              if (!v204)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v228 = 0uLL;
              v232 = 0uLL;
              v236 = 0uLL;
              v240 = 0uLL;
              v131 = v204;
              if (!v204)
              {
                goto LABEL_201;
              }
            }
          }

          v133 = v205;
          if (v205)
          {
            v134 = 0;
            v135 = v202 << 6;
            v136 = 4 * v203;
            v137 = &v209.i8[v135 + v136];
            v138 = v200;
            v139 = v201;
            v140 = 4 * v205;
            if (4 * v205)
            {
              v141 = (4 * v205 - 1) >> 32 == 0;
            }

            else
            {
              v141 = 0;
            }

            v142 = !v141;
            v144 = v137 < &v200->i8[4 * v205 + v201 * (v131 - 1)] && v200 < &__dst[64 * v131 + 448 + 64 * v202 + 4 * v205 + v136];
            v145 = v144 || v201 < 0;
            v146 = v140 & 0x1FFFFFFE0;
            v147 = v140 & 0x1FFFFFFF8;
            v148 = (v205 == 1) | v142 | v145;
            v149 = &v210.i8[v135 + v136];
            v150 = v200 + 1;
            v151 = v137;
            v152 = v200;
            do
            {
              v153 = (v138 + v134 * v139);
              v154 = &v137[64 * v134];
              if (v148)
              {
                v155 = 0;
                goto LABEL_198;
              }

              if (v133 >= 8)
              {
                v157 = v150;
                v158 = v149;
                v159 = v140 & 0x1FFFFFFE0;
                do
                {
                  v42 = v157[-1];
                  v39 = *v157;
                  v158[-1] = v42;
                  *v158 = v39;
                  v158 += 2;
                  v157 += 2;
                  v159 -= 32;
                }

                while (v159);
                if (v140 == v146)
                {
                  goto LABEL_184;
                }

                v156 = v140 & 0x1FFFFFFE0;
                if ((v133 & 6) == 0)
                {
                  v153 += v146;
                  v154 += v146;
                  v155 = v140 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v156 = 0;
              }

              v154 += v147;
              v160 = -8 * ((v133 >> 1) & 0x3FFFFFFF) + v156;
              v161 = (v152 + v156);
              v162 = &v151[v156];
              do
              {
                v163 = *v161++;
                v42.i64[0] = v163;
                *v162++ = v163;
                v160 += 8;
              }

              while (v160);
              if (v140 == v147)
              {
                goto LABEL_184;
              }

              v153 += v147;
              v155 = v140 & 0xFFFFFFF8;
LABEL_198:
              v164 = v155 + 1;
              do
              {
                v165 = *v153++;
                *v154++ = v165;
              }

              while (v140 > v164++);
LABEL_184:
              ++v134;
              v149 += 64;
              v150 = (v150 + v139);
              v152 += v139;
              v151 += 64;
            }

            while (v134 != v131);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v209, 64, v198, v199, v206, v207, *v42.i64, *v39.i64, *v40.i64, *v41.i64, *v17.i64, v18, v19, v20);
LABEL_202:
          if (v196)
          {
            memcpy(v195, v90, 0x200uLL);
          }

          v25 = v50 == v185 >> 4;
          v50 = v94;
          result = v193;
        }

        while (!v25);
        v25 = v22++ == v173;
      }

      while (!v25);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v241 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v192 = a8;
  v174 = a8 + a10 - 1;
  v193 = a1;
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
  v173 = v174 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v196 = v24;
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
      v186 = 0;
LABEL_32:
      v183 = v27 - 4;
      v177 = v26 - 3;
      v33 = -1 << *(*(a1 + 208) + 48);
      v171 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v186 = v32 >= v26;
    goto LABEL_32;
  }

  v186 = 0;
  v171 = 0;
  v177 = 0;
  v183 = 0;
LABEL_33:
  if (v18 <= v173)
  {
    v185 = a7 + a9 - 1;
    v170 = a7 >> 4;
    if (a7 >> 4 <= v185 >> 4)
    {
      v194 = v19 >> 4;
      v179 = v19 & 0xF;
      v168 = v20 & 7;
      v169 = v20 >> 3;
      v167 = ~(-1 << v177);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v35.i8 = vcgt_u32(v34, 0x1F0000000FLL);
      v36.i64[0] = -1;
      v37.i64[0] = 0x2000000020;
      *v38.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v35.i8);
      v176 = v38.i64[0];
      v178 = v38.i32[0] | v38.i32[1];
      v175 = v35.i64[0];
      v184 = a7;
      do
      {
        v39 = (8 * v18) | 7;
        if (8 * v18 <= v192)
        {
          v40 = v192;
        }

        else
        {
          v40 = 8 * v18;
        }

        if (v174 < v39)
        {
          v39 = v174;
        }

        v182 = v40 - 8 * v18;
        v41 = v39 - v40;
        v42 = v41 + 1;
        v43 = v41 != v168;
        v181 = v42;
        v44 = v42 != 8;
        v45 = v168 + 1;
        if (v18 != v169)
        {
          v45 = 8;
          v43 = v44;
        }

        v180 = v43;
        v46 = v170;
        v47 = v18 & v167;
        v190 = a3 + (v40 - v192) * a11;
        v191 = v45;
        v189 = v45;
        do
        {
          v48 = 16 * v46;
          v49 = 16 * (v46 + 1) - 1;
          if (16 * v46 <= a7)
          {
            v50 = a7;
          }

          else
          {
            v50 = 16 * v46;
          }

          if (v185 < v49)
          {
            v49 = v185;
          }

          v51 = v49 - v50;
          v52 = v51 + 1;
          if (v46 == v194)
          {
            v53 = v179 + 1;
          }

          else
          {
            v53 = 16;
          }

          v54 = 1;
          if (8 * v18 >= v192 && v48 >= a7)
          {
            v55 = v51 != v179;
            if (v46 != v194)
            {
              v55 = v52 != 16;
            }

            v54 = v55 || v180;
          }

          if (v186)
          {
            if (v183 | v177)
            {
              v56 = 0;
              v57 = 0;
              v58 = v183 != 0;
              v59 = 1;
              v61 = v177 != 0;
              v60 = v177;
              v62 = v183;
              do
              {
                --v60;
                if (v61)
                {
                  v57 |= (v47 & v59) << v56++;
                }

                else
                {
                  v60 = 0;
                }

                --v62;
                if (v58)
                {
                  v57 |= (v46 & ~(-1 << v183) & v59) << v56++;
                }

                else
                {
                  v62 = 0;
                }

                v59 *= 2;
                --v56;
                v58 = v62 != 0;
                v61 = v60 != 0;
              }

              while (v62 | v60);
              v63 = v57 << 9;
            }

            else
            {
              v63 = 0;
            }

            v71 = v63 + *(result + 336) * ((v46 >> v183) + (v18 >> v177) * v171);
          }

          else if (v178)
          {
            v64 = 0;
            v65 = 0;
            v66 = 1;
            v68 = v175;
            v67 = BYTE4(v175);
            v69 = v176;
            v70 = HIDWORD(v176);
            do
            {
              --v69;
              if (v68)
              {
                v65 |= (v66 & v18) << v64++;
              }

              else
              {
                v69 = 0;
              }

              --v70;
              if (v67)
              {
                v65 |= (v66 & v46) << v64++;
              }

              else
              {
                v70 = 0;
              }

              v66 *= 2;
              --v64;
              v67 = v70 != 0;
              v68 = v69 != 0;
            }

            while (v70 | v69);
            v71 = v65 << 9;
          }

          else
          {
            v71 = 0;
          }

          v72 = *(result + 128) >> (*(result + 144) + a12);
          if (v72 <= 1)
          {
            v72 = 1;
          }

          v73 = v72 + 15;
          if (v73 < 0x20)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 4) - 1)));
          }

          v75 = *(result + 132) >> (*(result + 144) + a12);
          if (v75 <= 1)
          {
            v75 = 1;
          }

          v76 = v75 + 7;
          if (v76 < 0x10)
          {
            v77 = 0;
          }

          else
          {
            v77 = 32 - __clz(~(-1 << -__clz((v76 >> 3) - 1)));
          }

          if (v77 | v74)
          {
            v78 = 0;
            v79 = 0;
            v80 = v74 != 0;
            v81 = v77 != 0;
            v82 = 1;
            do
            {
              --v74;
              if (v80)
              {
                v79 |= (v82 & v46) << v78++;
              }

              else
              {
                v74 = 0;
              }

              --v77;
              if (v81)
              {
                v79 |= (v82 & v18) << v78++;
              }

              else
              {
                v77 = 0;
              }

              v82 *= 2;
              --v78;
              v81 = v77 != 0;
              v80 = v74 != 0;
            }

            while (v77 | v74);
            v83 = 8 * v79;
          }

          else
          {
            v83 = 0;
          }

          v84 = (a4 + v83);
          v85 = (v190 + 4 * (v50 - a7));
          v195 = (a2 + v71);
          if (v196)
          {
            v86 = __dst;
            if (!(v54 & 1 | (v53 < 0x10u) | (v189 < 8)))
            {
              goto LABEL_109;
            }

            v87 = v52;
            v88 = (a4 + v83);
            v89 = v53;
            memcpy(__dst, (a2 + v71), sizeof(__dst));
            v52 = v87;
            v47 = v18 & v167;
            LOBYTE(v53) = v89;
            v84 = v88;
            result = v193;
          }

          else
          {
            v86 = (a2 + v71);
            if (!(v54 & 1 | (v53 < 0x10u) | (v189 < 8)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v85, a11, v86, v84, v53, v191);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v198 = v86;
          v206 = v53;
          v207 = v191;
          v202 = v182;
          v203 = v50 - v48;
          v199 = v84;
          v200 = v85;
          v201 = a11;
          v204 = v181;
          v205 = v52;
          if (v54)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v184;
            v90 = v46 + 1;
            goto LABEL_202;
          }

          v91 = *v84;
          a7 = v184;
          if (v91 == 63)
          {
            v35 = *(v86 + 1);
            v93 = (v86 + 32);
            *v36.i8 = vld2q_f64(v93);
            v38 = vzip2q_s64(*v86, v35);
            v209 = vzip1q_s64(*v86, v35);
            v213 = v38;
            v217 = v36;
            v221 = v37;
            v92 = 64;
          }

          else if (v91 == 1)
          {
            v38 = vld1q_dup_s16(v86);
            v209 = v38;
            v213 = v38;
            v217 = v38;
            v221 = v38;
            v92 = 2;
          }

          else if (*v84)
          {
            v94 = v84;
            v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v209, 64, v86, v91, *v38.i64, *v35.i64, *v36.i64, *v37.i8);
            v84 = v94;
          }

          else
          {
            v92 = 0;
            v209 = 0uLL;
            v213 = 0uLL;
            v217 = 0uLL;
            v221 = 0uLL;
          }

          v95 = &v86[v92];
          v96 = v84[1];
          if (v96 == 63)
          {
            v35 = *(v95 + 16);
            v98 = (v95 + 32);
            *v36.i8 = vld2q_f64(v98);
            v38 = vzip2q_s64(*v95, v35);
            v210 = vzip1q_s64(*v95, v35);
            v214 = v38;
            v218 = v36;
            v222 = v37;
            v97 = 64;
          }

          else if (v96 == 1)
          {
            v38 = vld1q_dup_s16(v95);
            v210 = v38;
            v214 = v38;
            v218 = v38;
            v222 = v38;
            v97 = 2;
          }

          else if (v84[1])
          {
            v99 = v84;
            v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v210, 64, v95, v96, *v38.i64, *v35.i64, *v36.i64, *v37.i8);
            v84 = v99;
          }

          else
          {
            v97 = 0;
            v210 = 0uLL;
            v214 = 0uLL;
            v218 = 0uLL;
            v222 = 0uLL;
          }

          v100 = v95 + v97;
          v101 = v84[2];
          if (v101 == 63)
          {
            v35 = *(v100 + 16);
            v103 = (v100 + 32);
            *v36.i8 = vld2q_f64(v103);
            v38 = vzip2q_s64(*v100, v35);
            v225 = vzip1q_s64(*v100, v35);
            v229 = v38;
            v233 = v36;
            v237 = v37;
            v102 = 64;
          }

          else if (v101 == 1)
          {
            v38 = vld1q_dup_s16(v100);
            v225 = v38;
            v229 = v38;
            v233 = v38;
            v237 = v38;
            v102 = 2;
          }

          else if (v84[2])
          {
            v104 = v84;
            v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v225, 64, v100, v101, *v38.i64, *v35.i64, *v36.i64, *v37.i8);
            v84 = v104;
          }

          else
          {
            v102 = 0;
            v225 = 0uLL;
            v229 = 0uLL;
            v233 = 0uLL;
            v237 = 0uLL;
          }

          v105 = v100 + v102;
          v106 = v84[3];
          if (v106 == 63)
          {
            v35 = *(v105 + 16);
            v108 = (v105 + 32);
            *v36.i8 = vld2q_f64(v108);
            v38 = vzip2q_s64(*v105, v35);
            v226 = vzip1q_s64(*v105, v35);
            v230 = v38;
            v234 = v36;
            v238 = v37;
            v107 = 64;
          }

          else if (v106 == 1)
          {
            v38 = vld1q_dup_s16(v105);
            v226 = v38;
            v230 = v38;
            v234 = v38;
            v238 = v38;
            v107 = 2;
          }

          else if (v84[3])
          {
            v109 = v84;
            v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 64, v105, v106, *v38.i64, *v35.i64, *v36.i64, *v37.i8);
            v84 = v109;
          }

          else
          {
            v107 = 0;
            v226 = 0uLL;
            v230 = 0uLL;
            v234 = 0uLL;
            v238 = 0uLL;
          }

          v110 = v105 + v107;
          v111 = v84[4];
          if (v111 == 63)
          {
            v35 = *(v110 + 16);
            v113 = (v110 + 32);
            *v36.i8 = vld2q_f64(v113);
            v38 = vzip2q_s64(*v110, v35);
            v211 = vzip1q_s64(*v110, v35);
            v215 = v38;
            v219 = v36;
            v223 = v37;
            v112 = 64;
          }

          else if (v111 == 1)
          {
            v38 = vld1q_dup_s16(v110);
            v211 = v38;
            v215 = v38;
            v219 = v38;
            v223 = v38;
            v112 = 2;
          }

          else if (v84[4])
          {
            v114 = v84;
            v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v211, 64, v110, v111, *v38.i64, *v35.i64, *v36.i64, *v37.i8);
            v84 = v114;
          }

          else
          {
            v112 = 0;
            v211 = 0uLL;
            v215 = 0uLL;
            v219 = 0uLL;
            v223 = 0uLL;
          }

          v115 = v110 + v112;
          v116 = v84[5];
          if (v116 == 63)
          {
            v35 = *(v115 + 16);
            v118 = (v115 + 32);
            *v36.i8 = vld2q_f64(v118);
            v38 = vzip2q_s64(*v115, v35);
            v212 = vzip1q_s64(*v115, v35);
            v216 = v38;
            v220 = v36;
            v224 = v37;
            v117 = 64;
          }

          else if (v116 == 1)
          {
            v38 = vld1q_dup_s16(v115);
            v212 = v38;
            v216 = v38;
            v220 = v38;
            v224 = v38;
            v117 = 2;
          }

          else if (v84[5])
          {
            v119 = v84;
            v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v212, 64, v115, v116, *v38.i64, *v35.i64, *v36.i64, *v37.i8);
            v84 = v119;
          }

          else
          {
            v117 = 0;
            v212 = 0uLL;
            v216 = 0uLL;
            v220 = 0uLL;
            v224 = 0uLL;
          }

          v120 = v115 + v117;
          v121 = v84[6];
          if (v121 == 63)
          {
            v35 = *(v120 + 16);
            v123 = (v120 + 32);
            *v36.i8 = vld2q_f64(v123);
            v38 = vzip2q_s64(*v120, v35);
            v227 = vzip1q_s64(*v120, v35);
            v231 = v38;
            v235 = v36;
            v239 = v37;
            v122 = 64;
          }

          else if (v121 == 1)
          {
            v38 = vld1q_dup_s16(v120);
            v227 = v38;
            v231 = v38;
            v235 = v38;
            v239 = v38;
            v122 = 2;
          }

          else if (v84[6])
          {
            v124 = v84;
            v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v227, 64, v120, v121, *v38.i64, *v35.i64, *v36.i64, *v37.i8);
            v84 = v124;
          }

          else
          {
            v122 = 0;
            v227 = 0uLL;
            v231 = 0uLL;
            v235 = 0uLL;
            v239 = 0uLL;
          }

          v125 = v120 + v122;
          v126 = v84[7];
          if (v126 == 63)
          {
            v129 = *(v125 + 16);
            v130 = (v125 + 32);
            v242 = vld2q_f64(v130);
            v131 = vzip2q_s64(*v125, v129);
            v228 = vzip1q_s64(*v125, v129);
            v232 = v131;
            v236 = v242.val[0];
            v240 = v242.val[1];
            v90 = v46 + 1;
            v127 = v204;
            if (!v204)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v90 = v46 + 1;
            if (v126 == 1)
            {
              v128 = vld1q_dup_s16(v125);
              v228 = v128;
              v232 = v128;
              v236 = v128;
              v240 = v128;
              v127 = v204;
              if (!v204)
              {
                goto LABEL_201;
              }
            }

            else if (v84[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 64, v125, v126, *v38.i64, *v35.i64, *v36.i64, *v37.i8);
              v127 = v204;
              if (!v204)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v228 = 0uLL;
              v232 = 0uLL;
              v236 = 0uLL;
              v240 = 0uLL;
              v127 = v204;
              if (!v204)
              {
                goto LABEL_201;
              }
            }
          }

          v132 = v205;
          if (v205)
          {
            v133 = 0;
            v134 = v202 << 6;
            v135 = 4 * v203;
            v136 = &v209.i8[v134 + v135];
            v137 = v200;
            v138 = v201;
            v139 = 4 * v205;
            if (4 * v205)
            {
              v140 = (4 * v205 - 1) >> 32 == 0;
            }

            else
            {
              v140 = 0;
            }

            v141 = !v140;
            v143 = v136 < &v200->i8[4 * v205 + v201 * (v127 - 1)] && v200 < &__dst[64 * v127 + 448 + 64 * v202 + 4 * v205 + v135];
            v144 = v143 || v201 < 0;
            v145 = v139 & 0x1FFFFFFE0;
            v146 = v139 & 0x1FFFFFFF8;
            v147 = (v205 == 1) | v141 | v144;
            v148 = &v210.i8[v134 + v135];
            v149 = v200 + 1;
            v150 = v136;
            v151 = v200;
            do
            {
              v152 = &v137->i8[v133 * v138];
              v153 = &v136[64 * v133];
              if (v147)
              {
                v154 = 0;
                goto LABEL_198;
              }

              if (v132 >= 8)
              {
                v156 = v149;
                v157 = v148;
                v158 = v139 & 0x1FFFFFFE0;
                do
                {
                  v159 = *v156;
                  *(v157 - 1) = v156[-1];
                  *v157 = v159;
                  v157 += 32;
                  v156 += 2;
                  v158 -= 32;
                }

                while (v158);
                if (v139 == v145)
                {
                  goto LABEL_184;
                }

                v155 = v139 & 0x1FFFFFFE0;
                if ((v132 & 6) == 0)
                {
                  v152 += v145;
                  v153 += v145;
                  v154 = v139 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v155 = 0;
              }

              v153 += v146;
              v160 = -8 * ((v132 >> 1) & 0x3FFFFFFF) + v155;
              v161 = (v151->i64 + v155);
              v162 = &v150[v155];
              do
              {
                v163 = *v161++;
                *v162 = v163;
                v162 += 8;
                v160 += 8;
              }

              while (v160);
              if (v139 == v146)
              {
                goto LABEL_184;
              }

              v152 += v146;
              v154 = v139 & 0xFFFFFFF8;
LABEL_198:
              v164 = v154 + 1;
              do
              {
                v165 = *v152++;
                *v153++ = v165;
              }

              while (v139 > v164++);
LABEL_184:
              ++v133;
              v148 += 64;
              v149 = (v149 + v138);
              v151 = (v151 + v138);
              v150 += 64;
            }

            while (v133 != v127);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v209, 64, v198, v199, v206, v207);
LABEL_202:
          if (v196)
          {
            memcpy(v195, v86, 0x200uLL);
          }

          v21 = v46 == v185 >> 4;
          v46 = v90;
          result = v193;
        }

        while (!v21);
        v21 = v18++ == v173;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v230 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v181 = a8;
  v17 = a8 >> 3;
  v163 = a8 + a10 - 1;
  v165 = v163 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v182 = a1;
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
  v185 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v174 = result;
  if (v17 <= v165)
  {
    v173 = a7 + a9 - 1;
    v162 = a7 >> 4;
    if (a7 >> 4 <= v173 >> 4)
    {
      result = a1;
      v183 = (a5 - 1) >> 4;
      v159 = a5 - 1;
      v166 = (a5 - 1) & 0xF;
      v160 = (a6 - 1) & 7;
      v161 = (a6 - 1) >> 3;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v31.i8 = vcgt_u32(v30, 0x1F0000000FLL);
      v32.i64[0] = -1;
      v33.i64[0] = 0x2000000020;
      *v34.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v30, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v31.i8);
      v171 = v34.i64[0];
      v172 = v34.i32[0] | v34.i32[1];
      v170 = v31.i64[0];
      v158 = 8 * v19 * v18;
      do
      {
        v35 = (8 * v17) | 7;
        if (8 * v17 <= v181)
        {
          v36 = v181;
        }

        else
        {
          v36 = 8 * v17;
        }

        if (v163 < v35)
        {
          v35 = v163;
        }

        v180 = 8 * v17;
        v169 = v36 - 8 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v160;
        v168 = v38;
        v40 = v38 != 8;
        v41 = v162;
        v42 = v160 + 1;
        if (v17 != v161)
        {
          v42 = 8;
          v39 = v40;
        }

        v167 = v39;
        v178 = a3 + (v36 - v181) * a11;
        v179 = v42;
        v177 = v42;
        do
        {
          v43 = 16 * v41;
          v44 = 16 * (v41 + 1) - 1;
          if (16 * v41 <= a7)
          {
            v45 = a7;
          }

          else
          {
            v45 = 16 * v41;
          }

          if (v173 < v44)
          {
            v44 = v173;
          }

          v46 = v44 - v45;
          v47 = v46 + 1;
          if (v41 == v183)
          {
            v48 = v166 + 1;
          }

          else
          {
            v48 = 16;
          }

          v49 = 1;
          if (v180 >= v181 && v43 >= a7)
          {
            v50 = v46 != v166;
            if (v41 != v183)
            {
              v50 = v47 != 16;
            }

            v49 = v50 || v167;
          }

          if (v174)
          {
            v71 = 0;
            v72 = v158 >> (*(result + 57) != 0);
            v73 = 1;
            if (v72 <= 63)
            {
              if (v72 > 15)
              {
                if (v72 == 16)
                {
                  v73 = 0;
                  v74 = 0;
                  v75 = 64;
                  v71 = 128;
                }

                else
                {
                  v74 = 1;
                  v75 = 0;
                  if (v72 == 32)
                  {
                    v73 = 0;
                    v74 = 0;
                    v71 = 64;
                    v75 = 64;
                  }
                }
              }

              else if (v72 == 4)
              {
                v73 = 0;
                v74 = 0;
                v75 = 128;
                v71 = 256;
              }

              else
              {
                v74 = 1;
                v75 = 0;
                if (v72 == 8)
                {
                  v73 = 0;
                  v74 = 0;
                  v71 = 128;
                  v75 = 128;
                }
              }
            }

            else if (v72 <= 255)
            {
              if (v72 == 64)
              {
                v73 = 0;
                v74 = 0;
                v75 = 32;
                v71 = 64;
              }

              else
              {
                v74 = 1;
                v75 = 0;
                if (v72 == 128)
                {
                  v73 = 0;
                  v74 = 0;
                  v71 = 32;
                  v75 = 32;
                }
              }
            }

            else if (v72 == 256)
            {
              v73 = 0;
              v74 = 0;
              v75 = 16;
              v71 = 32;
            }

            else if (v72 == 512)
            {
              v74 = 0;
              v71 = 16;
              v75 = 16;
            }

            else
            {
              v74 = 1;
              v75 = 0;
              if (v72 == 1024)
              {
                v75 = 8;
                v71 = 16;
              }
            }

            v146 = (v71 >> 4) - 1;
            if (v73)
            {
              v147 = 0;
            }

            else
            {
              v147 = 32 - __clz(~(-1 << -__clz(v146)));
            }

            v148 = (v75 >> 3) - 1;
            if (v74)
            {
              v149 = 0;
              if (v147)
              {
                goto LABEL_199;
              }
            }

            else
            {
              v149 = 32 - __clz(~(-1 << -__clz(v148)));
              if (v149 | v147)
              {
LABEL_199:
                v150 = 0;
                v151 = 0;
                v152 = v41 & v146;
                v153 = v17 & v148;
                v154 = v149 != 0;
                v155 = v147 != 0;
                v156 = 1;
                do
                {
                  --v149;
                  if (v154)
                  {
                    v151 |= (v156 & v153) << v150++;
                  }

                  else
                  {
                    v149 = 0;
                  }

                  --v147;
                  if (v155)
                  {
                    v151 |= (v156 & v152) << v150++;
                  }

                  else
                  {
                    v147 = 0;
                  }

                  v156 *= 2;
                  --v150;
                  v155 = v147 != 0;
                  v154 = v149 != 0;
                }

                while (v147 | v149);
                v157 = v151 << 9;
                result = v182;
                goto LABEL_211;
              }
            }

            v157 = 0;
LABEL_211:
            v58 = v157 + ((v43 / v71 + v180 / v75 * ((v71 + v159) / v71)) << 14);
            goto LABEL_52;
          }

          if (v172)
          {
            v51 = 0;
            v52 = 0;
            v53 = 1;
            v55 = v170;
            v54 = BYTE4(v170);
            v56 = v171;
            v57 = HIDWORD(v171);
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

LABEL_52:
          v59 = *(result + 128) >> (*(result + 144) + a12);
          if (v59 <= 1)
          {
            v59 = 1;
          }

          v60 = v59 + 15;
          if (v60 < 0x20)
          {
            v61 = 0;
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 4) - 1)));
          }

          v62 = *(result + 132) >> (*(result + 144) + a12);
          if (v62 <= 1)
          {
            v62 = 1;
          }

          v63 = v62 + 7;
          if (v63 < 0x10)
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
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 3) - 1)));
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
          v76 = (a4 + v70);
          v77 = a7;
          v78 = v178 + 4 * (v45 - a7);
          v79 = (a2 + v58);
          __src = (a2 + v58);
          if (v185)
          {
            if (!(v49 & 1 | (v48 < 0x10u) | (v177 < 8)))
            {
              v79 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v78, a11, v79, v76, v48, v179, *v34.i64, *v31.i64, *v32.i64, *v33.i64, *v26.i64, v27, v28, v29);
              goto LABEL_86;
            }

            v80 = v47;
            memcpy(__dst, __src, sizeof(__dst));
            v47 = v80;
            v79 = __dst;
            result = v182;
          }

          else if (!(v49 & 1 | (v48 < 0x10u) | (v177 < 8)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v187 = v79;
          v195 = v48;
          v196 = v179;
          v191 = v169;
          v192 = v45 - v43;
          v188 = v76;
          v189 = v78;
          v190 = a11;
          v193 = v168;
          v194 = v47;
          if ((v49 & 1) == 0)
          {
            v81 = *v76;
            a7 = v77;
            if (v81 == 63)
            {
              v31 = *(v79 + 1);
              v83 = (v79 + 32);
              *v32.i8 = vld2q_f64(v83);
              v26 = vzip1q_s64(*v79, v31);
              v34 = vzip2q_s64(*v79, v31);
              v198 = v26;
              v202 = v34;
              v206 = v32;
              v210 = v33;
              v82 = 64;
            }

            else if (v81 == 1)
            {
              v34 = vld1q_dup_s16(v79);
              v198 = v34;
              v202 = v34;
              v206 = v34;
              v210 = v34;
              v82 = 2;
            }

            else if (*v76)
            {
              v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v198, 64, v79, v81, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v82 = 0;
              v198 = 0uLL;
              v202 = 0uLL;
              v206 = 0uLL;
              v210 = 0uLL;
            }

            v84 = &v79[v82];
            v85 = v76[1];
            if (v85 == 63)
            {
              v31 = *(v84 + 16);
              v87 = (v84 + 32);
              *v32.i8 = vld2q_f64(v87);
              v26 = vzip1q_s64(*v84, v31);
              v34 = vzip2q_s64(*v84, v31);
              v199 = v26;
              v203 = v34;
              v207 = v32;
              v211 = v33;
              v86 = 64;
            }

            else if (v85 == 1)
            {
              v34 = vld1q_dup_s16(v84);
              v199 = v34;
              v203 = v34;
              v207 = v34;
              v211 = v34;
              v86 = 2;
            }

            else if (v76[1])
            {
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v199, 64, v84, v85, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v86 = 0;
              v199 = 0uLL;
              v203 = 0uLL;
              v207 = 0uLL;
              v211 = 0uLL;
            }

            v88 = v84 + v86;
            v89 = v76[2];
            if (v89 == 63)
            {
              v31 = *(v88 + 16);
              v91 = (v88 + 32);
              *v32.i8 = vld2q_f64(v91);
              v26 = vzip1q_s64(*v88, v31);
              v34 = vzip2q_s64(*v88, v31);
              v214 = v26;
              v218 = v34;
              v222 = v32;
              v226 = v33;
              v90 = 64;
            }

            else if (v89 == 1)
            {
              v34 = vld1q_dup_s16(v88);
              v214 = v34;
              v218 = v34;
              v222 = v34;
              v226 = v34;
              v90 = 2;
            }

            else if (v76[2])
            {
              v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v214, 64, v88, v89, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v90 = 0;
              v214 = 0uLL;
              v218 = 0uLL;
              v222 = 0uLL;
              v226 = 0uLL;
            }

            v92 = v88 + v90;
            v93 = v76[3];
            if (v93 == 63)
            {
              v31 = *(v92 + 16);
              v95 = (v92 + 32);
              *v32.i8 = vld2q_f64(v95);
              v26 = vzip1q_s64(*v92, v31);
              v34 = vzip2q_s64(*v92, v31);
              v215 = v26;
              v219 = v34;
              v223 = v32;
              v227 = v33;
              v94 = 64;
            }

            else if (v93 == 1)
            {
              v34 = vld1q_dup_s16(v92);
              v215 = v34;
              v219 = v34;
              v223 = v34;
              v227 = v34;
              v94 = 2;
            }

            else if (v76[3])
            {
              v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v215, 64, v92, v93, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v94 = 0;
              v215 = 0uLL;
              v219 = 0uLL;
              v223 = 0uLL;
              v227 = 0uLL;
            }

            v96 = v92 + v94;
            v97 = v76[4];
            if (v97 == 63)
            {
              v31 = *(v96 + 16);
              v99 = (v96 + 32);
              *v32.i8 = vld2q_f64(v99);
              v26 = vzip1q_s64(*v96, v31);
              v34 = vzip2q_s64(*v96, v31);
              v200 = v26;
              v204 = v34;
              v208 = v32;
              v212 = v33;
              v98 = 64;
            }

            else if (v97 == 1)
            {
              v34 = vld1q_dup_s16(v96);
              v200 = v34;
              v204 = v34;
              v208 = v34;
              v212 = v34;
              v98 = 2;
            }

            else if (v76[4])
            {
              v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v200, 64, v96, v97, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v98 = 0;
              v200 = 0uLL;
              v204 = 0uLL;
              v208 = 0uLL;
              v212 = 0uLL;
            }

            v100 = v96 + v98;
            v101 = v76[5];
            if (v101 == 63)
            {
              v31 = *(v100 + 16);
              v103 = (v100 + 32);
              *v32.i8 = vld2q_f64(v103);
              v26 = vzip1q_s64(*v100, v31);
              v34 = vzip2q_s64(*v100, v31);
              v201 = v26;
              v205 = v34;
              v209 = v32;
              v213 = v33;
              v102 = 64;
            }

            else if (v101 == 1)
            {
              v34 = vld1q_dup_s16(v100);
              v201 = v34;
              v205 = v34;
              v209 = v34;
              v213 = v34;
              v102 = 2;
            }

            else if (v76[5])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v201, 64, v100, v101, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v102 = 0;
              v201 = 0uLL;
              v205 = 0uLL;
              v209 = 0uLL;
              v213 = 0uLL;
            }

            v104 = v100 + v102;
            v105 = v76[6];
            if (v105 == 63)
            {
              v31 = *(v104 + 16);
              v107 = (v104 + 32);
              *v32.i8 = vld2q_f64(v107);
              v26 = vzip1q_s64(*v104, v31);
              v34 = vzip2q_s64(*v104, v31);
              v216 = v26;
              v220 = v34;
              v224 = v32;
              v228 = v33;
              v106 = 64;
            }

            else if (v105 == 1)
            {
              v34 = vld1q_dup_s16(v104);
              v216 = v34;
              v220 = v34;
              v224 = v34;
              v228 = v34;
              v106 = 2;
            }

            else if (v76[6])
            {
              v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v216, 64, v104, v105, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v106 = 0;
              v216 = 0uLL;
              v220 = 0uLL;
              v224 = 0uLL;
              v228 = 0uLL;
            }

            v108 = v104 + v106;
            v109 = v76[7];
            if (v109 == 63)
            {
              v31 = *(v108 + 16);
              v111 = (v108 + 32);
              *v32.i8 = vld2q_f64(v111);
              v26 = vzip1q_s64(*v108, v31);
              v34 = vzip2q_s64(*v108, v31);
              v217 = v26;
              v221 = v34;
              v225 = v32;
              v229 = v33;
              v110 = v193;
              if (v193)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v109 != 1)
              {
                if (v76[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 64, v108, v109, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
                  v110 = v193;
                  if (!v193)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v217 = 0uLL;
                  v221 = 0uLL;
                  v225 = 0uLL;
                  v229 = 0uLL;
                  v110 = v193;
                  if (!v193)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v112 = v194;
                if (!v194)
                {
                  goto LABEL_178;
                }

                v113 = 0;
                v114 = v191 << 6;
                v115 = 4 * v192;
                v116 = &v198.i8[v114 + v115];
                v117 = v189;
                v118 = v190;
                v119 = 4 * v194;
                if (4 * v194)
                {
                  v120 = (4 * v194 - 1) >> 32 == 0;
                }

                else
                {
                  v120 = 0;
                }

                v121 = !v120;
                v123 = v116 < &v189->i8[4 * v194 + v190 * (v110 - 1)] && v189 < &__dst[64 * v110 + 448 + 64 * v191 + 4 * v194 + v115];
                v124 = v123 || v190 < 0;
                v125 = v119 & 0x1FFFFFFE0;
                v126 = v119 & 0x1FFFFFFF8;
                v127 = (v194 == 1) | v121 | v124;
                v128 = &v199.i8[v114 + v115];
                v129 = v189 + 1;
                v130 = v116;
                v131 = v189;
                while (2)
                {
                  v132 = (v117 + v113 * v118);
                  v133 = &v116[64 * v113];
                  if (v127)
                  {
                    v134 = 0;
LABEL_175:
                    v143 = v134 + 1;
                    do
                    {
                      v144 = *v132++;
                      *v133++ = v144;
                    }

                    while (v119 > v143++);
                  }

                  else
                  {
                    if (v112 >= 8)
                    {
                      v136 = v129;
                      v137 = v128;
                      v138 = v119 & 0x1FFFFFFE0;
                      do
                      {
                        v34 = v136[-1];
                        v31 = *v136;
                        v137[-1] = v34;
                        *v137 = v31;
                        v137 += 2;
                        v136 += 2;
                        v138 -= 32;
                      }

                      while (v138);
                      if (v119 == v125)
                      {
                        goto LABEL_161;
                      }

                      v135 = v119 & 0x1FFFFFFE0;
                      if ((v112 & 6) == 0)
                      {
                        v132 += v125;
                        v133 += v125;
                        v134 = v119 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v135 = 0;
                    }

                    v133 += v126;
                    v139 = -8 * ((v112 >> 1) & 0x3FFFFFFF) + v135;
                    v140 = (v131 + v135);
                    v141 = &v130[v135];
                    do
                    {
                      v142 = *v140++;
                      v34.i64[0] = v142;
                      *v141++ = v142;
                      v139 += 8;
                    }

                    while (v139);
                    if (v119 != v126)
                    {
                      v132 += v126;
                      v134 = v119 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v113;
                  v128 += 64;
                  v129 = (v129 + v118);
                  v131 += v118;
                  v130 += 64;
                  if (v113 == v110)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v34 = vld1q_dup_s16(v108);
              v217 = v34;
              v221 = v34;
              v225 = v34;
              v229 = v34;
              v110 = v193;
              if (v193)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v198, 64, v187, v188, v195, v196, *v34.i64, *v31.i64, *v32.i64, *v33.i64, *v26.i64, v27, v28, v29);
            if (!v185)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v77;
          if (!v185)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v79, 0x200uLL);
LABEL_26:
          v21 = v41++ == v173 >> 4;
          result = v182;
        }

        while (!v21);
        v21 = v17++ == v165;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v230 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v181 = a8;
  v17 = a8 >> 3;
  v163 = a8 + a10 - 1;
  v165 = v163 >> 3;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v182 = a1;
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
  v185 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v174 = result;
  if (v17 <= v165)
  {
    v173 = a7 + a9 - 1;
    v162 = a7 >> 4;
    if (a7 >> 4 <= v173 >> 4)
    {
      result = a1;
      v183 = (a5 - 1) >> 4;
      v159 = a5 - 1;
      v166 = (a5 - 1) & 0xF;
      v160 = (a6 - 1) & 7;
      v161 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v27.i8 = vcgt_u32(v26, 0x1F0000000FLL);
      v28.i64[0] = -1;
      v29.i64[0] = 0x2000000020;
      *v30.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v27.i8);
      v171 = v30.i64[0];
      v172 = v30.i32[0] | v30.i32[1];
      v170 = v27.i64[0];
      v158 = 8 * v19 * v18;
      do
      {
        v31 = (8 * v17) | 7;
        if (8 * v17 <= v181)
        {
          v32 = v181;
        }

        else
        {
          v32 = 8 * v17;
        }

        if (v163 < v31)
        {
          v31 = v163;
        }

        v180 = 8 * v17;
        v169 = v32 - 8 * v17;
        v33 = v31 - v32;
        v34 = v33 + 1;
        v35 = v33 != v160;
        v168 = v34;
        v36 = v34 != 8;
        v37 = v162;
        v38 = v160 + 1;
        if (v17 != v161)
        {
          v38 = 8;
          v35 = v36;
        }

        v167 = v35;
        v178 = a3 + (v32 - v181) * a11;
        v179 = v38;
        v177 = v38;
        do
        {
          v39 = 16 * v37;
          v40 = 16 * (v37 + 1) - 1;
          if (16 * v37 <= a7)
          {
            v41 = a7;
          }

          else
          {
            v41 = 16 * v37;
          }

          if (v173 < v40)
          {
            v40 = v173;
          }

          v42 = v40 - v41;
          v43 = v42 + 1;
          if (v37 == v183)
          {
            v44 = v166 + 1;
          }

          else
          {
            v44 = 16;
          }

          v45 = 1;
          if (v180 >= v181 && v39 >= a7)
          {
            v46 = v42 != v166;
            if (v37 != v183)
            {
              v46 = v43 != 16;
            }

            v45 = v46 || v167;
          }

          if (v174)
          {
            v67 = 0;
            v68 = v158 >> (*(result + 57) != 0);
            v69 = 1;
            if (v68 <= 63)
            {
              if (v68 > 15)
              {
                if (v68 == 16)
                {
                  v69 = 0;
                  v70 = 0;
                  v71 = 64;
                  v67 = 128;
                }

                else
                {
                  v70 = 1;
                  v71 = 0;
                  if (v68 == 32)
                  {
                    v69 = 0;
                    v70 = 0;
                    v67 = 64;
                    v71 = 64;
                  }
                }
              }

              else if (v68 == 4)
              {
                v69 = 0;
                v70 = 0;
                v71 = 128;
                v67 = 256;
              }

              else
              {
                v70 = 1;
                v71 = 0;
                if (v68 == 8)
                {
                  v69 = 0;
                  v70 = 0;
                  v67 = 128;
                  v71 = 128;
                }
              }
            }

            else if (v68 <= 255)
            {
              if (v68 == 64)
              {
                v69 = 0;
                v70 = 0;
                v71 = 32;
                v67 = 64;
              }

              else
              {
                v70 = 1;
                v71 = 0;
                if (v68 == 128)
                {
                  v69 = 0;
                  v70 = 0;
                  v67 = 32;
                  v71 = 32;
                }
              }
            }

            else if (v68 == 256)
            {
              v69 = 0;
              v70 = 0;
              v71 = 16;
              v67 = 32;
            }

            else if (v68 == 512)
            {
              v70 = 0;
              v67 = 16;
              v71 = 16;
            }

            else
            {
              v70 = 1;
              v71 = 0;
              if (v68 == 1024)
              {
                v71 = 8;
                v67 = 16;
              }
            }

            v146 = (v67 >> 4) - 1;
            if (v69)
            {
              v147 = 0;
            }

            else
            {
              v147 = 32 - __clz(~(-1 << -__clz(v146)));
            }

            v148 = (v71 >> 3) - 1;
            if (v70)
            {
              v149 = 0;
              if (v147)
              {
                goto LABEL_199;
              }
            }

            else
            {
              v149 = 32 - __clz(~(-1 << -__clz(v148)));
              if (v149 | v147)
              {
LABEL_199:
                v150 = 0;
                v151 = 0;
                v152 = v37 & v146;
                v153 = v17 & v148;
                v154 = v149 != 0;
                v155 = v147 != 0;
                v156 = 1;
                do
                {
                  --v149;
                  if (v154)
                  {
                    v151 |= (v156 & v153) << v150++;
                  }

                  else
                  {
                    v149 = 0;
                  }

                  --v147;
                  if (v155)
                  {
                    v151 |= (v156 & v152) << v150++;
                  }

                  else
                  {
                    v147 = 0;
                  }

                  v156 *= 2;
                  --v150;
                  v155 = v147 != 0;
                  v154 = v149 != 0;
                }

                while (v147 | v149);
                v157 = v151 << 9;
                result = v182;
                goto LABEL_211;
              }
            }

            v157 = 0;
LABEL_211:
            v54 = v157 + ((v39 / v67 + v180 / v71 * ((v67 + v159) / v67)) << 14);
            goto LABEL_52;
          }

          if (v172)
          {
            v47 = 0;
            v48 = 0;
            v49 = 1;
            v51 = v170;
            v50 = BYTE4(v170);
            v52 = v171;
            v53 = HIDWORD(v171);
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

LABEL_52:
          v55 = *(result + 128) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 15;
          if (v56 < 0x20)
          {
            v57 = 0;
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 4) - 1)));
          }

          v58 = *(result + 132) >> (*(result + 144) + a12);
          if (v58 <= 1)
          {
            v58 = 1;
          }

          v59 = v58 + 7;
          if (v59 < 0x10)
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
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 3) - 1)));
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
          v72 = (a4 + v66);
          v73 = a7;
          v74 = (v178 + 4 * (v41 - a7));
          v75 = (a2 + v54);
          __src = (a2 + v54);
          if (v185)
          {
            if (!(v45 & 1 | (v44 < 0x10u) | (v177 < 8)))
            {
              v75 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, a11, v75, v72, v44, v179);
              goto LABEL_86;
            }

            v76 = v43;
            memcpy(__dst, __src, sizeof(__dst));
            v43 = v76;
            v75 = __dst;
            result = v182;
          }

          else if (!(v45 & 1 | (v44 < 0x10u) | (v177 < 8)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v187 = v75;
          v195 = v44;
          v196 = v179;
          v191 = v169;
          v192 = v41 - v39;
          v188 = v72;
          v189 = v74;
          v190 = a11;
          v193 = v168;
          v194 = v43;
          if ((v45 & 1) == 0)
          {
            v77 = *v72;
            a7 = v73;
            if (v77 == 63)
            {
              v27 = *(v75 + 1);
              v79 = (v75 + 32);
              *v28.i8 = vld2q_f64(v79);
              v30 = vzip2q_s64(*v75, v27);
              v198 = vzip1q_s64(*v75, v27);
              v202 = v30;
              v206 = v28;
              v210 = v29;
              v78 = 64;
            }

            else if (v77 == 1)
            {
              v30 = vld1q_dup_s16(v75);
              v198 = v30;
              v202 = v30;
              v206 = v30;
              v210 = v30;
              v78 = 2;
            }

            else if (*v72)
            {
              v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v198, 64, v75, v77, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
            }

            else
            {
              v78 = 0;
              v198 = 0uLL;
              v202 = 0uLL;
              v206 = 0uLL;
              v210 = 0uLL;
            }

            v80 = &v75[v78];
            v81 = v72[1];
            if (v81 == 63)
            {
              v27 = *(v80 + 16);
              v83 = (v80 + 32);
              *v28.i8 = vld2q_f64(v83);
              v30 = vzip2q_s64(*v80, v27);
              v199 = vzip1q_s64(*v80, v27);
              v203 = v30;
              v207 = v28;
              v211 = v29;
              v82 = 64;
            }

            else if (v81 == 1)
            {
              v30 = vld1q_dup_s16(v80);
              v199 = v30;
              v203 = v30;
              v207 = v30;
              v211 = v30;
              v82 = 2;
            }

            else if (v72[1])
            {
              v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v199, 64, v80, v81, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
            }

            else
            {
              v82 = 0;
              v199 = 0uLL;
              v203 = 0uLL;
              v207 = 0uLL;
              v211 = 0uLL;
            }

            v84 = v80 + v82;
            v85 = v72[2];
            if (v85 == 63)
            {
              v27 = *(v84 + 16);
              v87 = (v84 + 32);
              *v28.i8 = vld2q_f64(v87);
              v30 = vzip2q_s64(*v84, v27);
              v214 = vzip1q_s64(*v84, v27);
              v218 = v30;
              v222 = v28;
              v226 = v29;
              v86 = 64;
            }

            else if (v85 == 1)
            {
              v30 = vld1q_dup_s16(v84);
              v214 = v30;
              v218 = v30;
              v222 = v30;
              v226 = v30;
              v86 = 2;
            }

            else if (v72[2])
            {
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v214, 64, v84, v85, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
            }

            else
            {
              v86 = 0;
              v214 = 0uLL;
              v218 = 0uLL;
              v222 = 0uLL;
              v226 = 0uLL;
            }

            v88 = v84 + v86;
            v89 = v72[3];
            if (v89 == 63)
            {
              v27 = *(v88 + 16);
              v91 = (v88 + 32);
              *v28.i8 = vld2q_f64(v91);
              v30 = vzip2q_s64(*v88, v27);
              v215 = vzip1q_s64(*v88, v27);
              v219 = v30;
              v223 = v28;
              v227 = v29;
              v90 = 64;
            }

            else if (v89 == 1)
            {
              v30 = vld1q_dup_s16(v88);
              v215 = v30;
              v219 = v30;
              v223 = v30;
              v227 = v30;
              v90 = 2;
            }

            else if (v72[3])
            {
              v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v215, 64, v88, v89, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
            }

            else
            {
              v90 = 0;
              v215 = 0uLL;
              v219 = 0uLL;
              v223 = 0uLL;
              v227 = 0uLL;
            }

            v92 = v88 + v90;
            v93 = v72[4];
            if (v93 == 63)
            {
              v27 = *(v92 + 16);
              v95 = (v92 + 32);
              *v28.i8 = vld2q_f64(v95);
              v30 = vzip2q_s64(*v92, v27);
              v200 = vzip1q_s64(*v92, v27);
              v204 = v30;
              v208 = v28;
              v212 = v29;
              v94 = 64;
            }

            else if (v93 == 1)
            {
              v30 = vld1q_dup_s16(v92);
              v200 = v30;
              v204 = v30;
              v208 = v30;
              v212 = v30;
              v94 = 2;
            }

            else if (v72[4])
            {
              v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v200, 64, v92, v93, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
            }

            else
            {
              v94 = 0;
              v200 = 0uLL;
              v204 = 0uLL;
              v208 = 0uLL;
              v212 = 0uLL;
            }

            v96 = v92 + v94;
            v97 = v72[5];
            if (v97 == 63)
            {
              v27 = *(v96 + 16);
              v99 = (v96 + 32);
              *v28.i8 = vld2q_f64(v99);
              v30 = vzip2q_s64(*v96, v27);
              v201 = vzip1q_s64(*v96, v27);
              v205 = v30;
              v209 = v28;
              v213 = v29;
              v98 = 64;
            }

            else if (v97 == 1)
            {
              v30 = vld1q_dup_s16(v96);
              v201 = v30;
              v205 = v30;
              v209 = v30;
              v213 = v30;
              v98 = 2;
            }

            else if (v72[5])
            {
              v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v201, 64, v96, v97, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
            }

            else
            {
              v98 = 0;
              v201 = 0uLL;
              v205 = 0uLL;
              v209 = 0uLL;
              v213 = 0uLL;
            }

            v100 = v96 + v98;
            v101 = v72[6];
            if (v101 == 63)
            {
              v27 = *(v100 + 16);
              v103 = (v100 + 32);
              *v28.i8 = vld2q_f64(v103);
              v30 = vzip2q_s64(*v100, v27);
              v216 = vzip1q_s64(*v100, v27);
              v220 = v30;
              v224 = v28;
              v228 = v29;
              v102 = 64;
            }

            else if (v101 == 1)
            {
              v30 = vld1q_dup_s16(v100);
              v216 = v30;
              v220 = v30;
              v224 = v30;
              v228 = v30;
              v102 = 2;
            }

            else if (v72[6])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v216, 64, v100, v101, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
            }

            else
            {
              v102 = 0;
              v216 = 0uLL;
              v220 = 0uLL;
              v224 = 0uLL;
              v228 = 0uLL;
            }

            v104 = v100 + v102;
            v105 = v72[7];
            if (v105 == 63)
            {
              v108 = *(v104 + 16);
              v109 = (v104 + 32);
              v231 = vld2q_f64(v109);
              v110 = vzip2q_s64(*v104, v108);
              v217 = vzip1q_s64(*v104, v108);
              v221 = v110;
              v225 = v231.val[0];
              v229 = v231.val[1];
              v106 = v193;
              if (v193)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v105 != 1)
              {
                if (v72[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 64, v104, v105, *v30.i64, *v27.i64, *v28.i64, *v29.i8);
                  v106 = v193;
                  if (!v193)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v217 = 0uLL;
                  v221 = 0uLL;
                  v225 = 0uLL;
                  v229 = 0uLL;
                  v106 = v193;
                  if (!v193)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v111 = v194;
                if (!v194)
                {
                  goto LABEL_178;
                }

                v112 = 0;
                v113 = v191 << 6;
                v114 = 4 * v192;
                v115 = &v198.i8[v113 + v114];
                v116 = v189;
                v117 = v190;
                v118 = 4 * v194;
                if (4 * v194)
                {
                  v119 = (4 * v194 - 1) >> 32 == 0;
                }

                else
                {
                  v119 = 0;
                }

                v120 = !v119;
                v122 = v115 < &v189->i8[4 * v194 + v190 * (v106 - 1)] && v189 < &__dst[64 * v106 + 448 + 64 * v191 + 4 * v194 + v114];
                v123 = v122 || v190 < 0;
                v124 = v118 & 0x1FFFFFFE0;
                v125 = v118 & 0x1FFFFFFF8;
                v126 = (v194 == 1) | v120 | v123;
                v127 = &v199.i8[v113 + v114];
                v128 = v189 + 1;
                v129 = v115;
                v130 = v189;
                while (2)
                {
                  v131 = &v116->i8[v112 * v117];
                  v132 = &v115[64 * v112];
                  if (v126)
                  {
                    v133 = 0;
LABEL_175:
                    v143 = v133 + 1;
                    do
                    {
                      v144 = *v131++;
                      *v132++ = v144;
                    }

                    while (v118 > v143++);
                  }

                  else
                  {
                    if (v111 >= 8)
                    {
                      v135 = v128;
                      v136 = v127;
                      v137 = v118 & 0x1FFFFFFE0;
                      do
                      {
                        v138 = *v135;
                        *(v136 - 1) = v135[-1];
                        *v136 = v138;
                        v136 += 32;
                        v135 += 2;
                        v137 -= 32;
                      }

                      while (v137);
                      if (v118 == v124)
                      {
                        goto LABEL_161;
                      }

                      v134 = v118 & 0x1FFFFFFE0;
                      if ((v111 & 6) == 0)
                      {
                        v131 += v124;
                        v132 += v124;
                        v133 = v118 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v134 = 0;
                    }

                    v132 += v125;
                    v139 = -8 * ((v111 >> 1) & 0x3FFFFFFF) + v134;
                    v140 = (v130->i64 + v134);
                    v141 = &v129[v134];
                    do
                    {
                      v142 = *v140++;
                      *v141 = v142;
                      v141 += 8;
                      v139 += 8;
                    }

                    while (v139);
                    if (v118 != v125)
                    {
                      v131 += v125;
                      v133 = v118 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v112;
                  v127 += 64;
                  v128 = (v128 + v117);
                  v130 = (v130 + v117);
                  v129 += 64;
                  if (v112 == v106)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v107 = vld1q_dup_s16(v104);
              v217 = v107;
              v221 = v107;
              v225 = v107;
              v229 = v107;
              v106 = v193;
              if (v193)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v198, 64, v187, v188, v195, v196);
            if (!v185)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v73;
          if (!v185)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v75, 0x200uLL);
LABEL_26:
          v21 = v37++ == v173 >> 4;
          result = v182;
        }

        while (!v21);
        v21 = v17++ == v165;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v237);
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v89 = vld1q_dup_f32(v83->i32);
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
            v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v256, 128, v83, v87);
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

          v98 = v83->i64 + v88;
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
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 128, v98, v99);
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
            v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v288, 128, v110, v111);
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
            v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v290, 128, v122, v123);
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
            v136 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 128, v134, v135);
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
            v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 128, v146, v147);
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
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 128, v158, v159);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 128, v170, v171);
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
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v256, 128, v245, v246, v253, v254);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v256, 128, v83, v87);
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
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 128, v98, v99);
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
            v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v288, 128, v110, v111);
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
            v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v290, 128, v122, v123);
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
            v136 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 128, v134, v135);
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
            v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 128, v146, v147);
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
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 128, v158, v159);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 128, v170, v171);
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