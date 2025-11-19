uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v237);
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v256, 128, v83, v87);
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
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 128, v98, v99);
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
            v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v288, 128, v110, v111);
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
            v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v290, 128, v122, v123);
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
            v136 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 128, v134, v135);
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
            v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 128, v146, v147);
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
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 128, v158, v159);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 128, v170, v171);
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
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v256, 128, v245, v246, v253, v254);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v256, 128, v83, v87);
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
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 128, v98, v99);
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
            v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v288, 128, v110, v111);
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
            v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v290, 128, v122, v123);
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
            v136 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v260, 128, v134, v135);
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
            v148 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v262, 128, v146, v147);
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
            v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 128, v158, v159);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 128, v170, v171);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v225);
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 128, v72, v74);
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
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 128, v84, v85);
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
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 128, v95, v96);
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
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 128, v106, v107);
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
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 128, v117, v118);
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
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 128, v128, v129);
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
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 128, v139, v140);
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
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v282, 128, v150, v151);
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
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v244, 128, v233, v234, v241, v242);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v244, 128, v72, v74);
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
              v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 128, v84, v85);
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
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 128, v95, v96);
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
              v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 128, v106, v107);
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
              v119 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 128, v117, v118);
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
              v130 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 128, v128, v129);
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
              v141 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v280, 128, v139, v140);
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
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v282, 128, v150, v151);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v147 = v21;
  v148 = v22;
  v131 = v23;
  v24 = v12;
  v171[112] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v151 = v14;
  v133 = v14 + a10 - 1;
  result = *(v24 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v26 = result & 0xF00;
  }

  else
  {
    v26 = 0;
  }

  v27 = v14 >> 3;
  v28 = v20 - 1;
  v29 = v18 - 1;
  v132 = v133 >> 3;
  v30 = (v26 & 0xD00) == 0 || v26 == 768;
  v31 = v26 & 0xE00;
  v33 = !v30 && v31 != 1024;
  v155 = v33;
  if (*(v24 + 232) == 1)
  {
    v34 = *(v24 + 273);
    v35 = *(v24 + 272);
    v36 = __clz(v28);
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
          v39 = __clz(~(-1 << -__clz(v29))) | 0xFFFFFFE0;
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
      v146 = 0;
LABEL_32:
      v142 = v35 - 3;
      v136 = v34 - 3;
      v41 = -1 << *(*(v24 + 208) + 48);
      v130 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
      goto LABEL_33;
    }

    if (v18 < 2)
    {
      v40 = 0;
    }

    else
    {
      v40 = 32 - __clz(~(-1 << -__clz(v29)));
    }

    v146 = v40 >= v34;
    goto LABEL_32;
  }

  v146 = 0;
  v130 = 0;
  v136 = 0;
  v142 = 0;
LABEL_33:
  if (v27 <= v132)
  {
    v145 = v16 + a9 - 1;
    v129 = v16 >> 3;
    if (v16 >> 3 <= v145 >> 3)
    {
      v153 = v28 >> 3;
      v137 = v28 & 7;
      v143 = (v28 & 7) + 1;
      v127 = v29 & 7;
      v128 = v29 >> 3;
      v126 = (v29 & 7) + 1;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v43 = vcgt_u32(v42, 0xF0000000FLL);
      v135 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v42, 3uLL))))))), v43);
      v134 = v43;
      v152 = v24;
      v144 = v16;
      do
      {
        v44 = (8 * v27) | 7;
        if (8 * v27 <= v151)
        {
          v45 = v151;
        }

        else
        {
          v45 = 8 * v27;
        }

        if (v133 < v44)
        {
          v44 = v133;
        }

        v141 = v45 - 8 * v27;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v127;
        v140 = v47;
        v49 = v47 != 8;
        v50 = v126;
        if (v27 != v128)
        {
          v50 = 8;
          v48 = v49;
        }

        v138 = v48;
        v139 = v50;
        v51 = v129;
        v150 = v131 + (v45 - v151) * a11;
        v149 = v50;
        do
        {
          v52 = 8 * v51;
          v53 = 8 * (v51 + 1) - 1;
          if (8 * v51 <= v16)
          {
            v54 = v16;
          }

          else
          {
            v54 = 8 * v51;
          }

          if (v145 < v53)
          {
            v53 = v145;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v51 == v153)
          {
            v57 = v143;
          }

          else
          {
            v57 = 8;
          }

          v58 = 1;
          if (8 * v27 >= v151 && v52 >= v16)
          {
            v59 = v55 != v137;
            if (v51 != v153)
            {
              v59 = v56 != 8;
            }

            v58 = v59 || v138;
          }

          if (v146)
          {
            if (v142 | v136)
            {
              v60 = 0;
              v61 = 0;
              v62 = v136 != 0;
              v63 = 1;
              v65 = v142 != 0;
              v64 = v136;
              v66 = v142;
              do
              {
                --v66;
                if (v65)
                {
                  v61 |= (v51 & ~(-1 << v142) & v63) << v60++;
                }

                else
                {
                  v66 = 0;
                }

                --v64;
                if (v62)
                {
                  v61 |= (v27 & ~(-1 << v136) & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                v63 *= 2;
                --v60;
                v62 = v64 != 0;
                v65 = v66 != 0;
              }

              while (v64 | v66);
              v67 = v61 << 11;
            }

            else
            {
              v67 = 0;
            }

            v75 = v67 + *(v24 + 336) * ((v51 >> v142) + (v27 >> v136) * v130);
          }

          else if (v135)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v71 = v134.i8[0];
            v72 = v134.i8[4];
            v74 = v135.i32[0];
            v73 = v135.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v51) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v27) << v68++;
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
            v75 = v69 << 11;
          }

          else
          {
            v75 = 0;
          }

          v76 = *(v24 + 128) >> (*(v24 + 144) + a12);
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

          v79 = *(v24 + 132) >> (*(v24 + 144) + a12);
          if (v79 <= 1)
          {
            v79 = 1;
          }

          v80 = v79 + 7;
          if (v80 < 0x10)
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
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 3) - 1)));
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
              v83 |= (v86 & v51) << v82++;
            }

            else
            {
              v78 = 0;
            }

            --v81;
            if (v85)
            {
              v83 |= (v86 & v27) << v82++;
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
          v88 = (v148 + v87);
          v89 = (v150 + 32 * (v54 - v16));
          v90 = (v147 + v75);
          v154 = (v147 + v75);
          if (v155)
          {
            if (!(v58 & 1 | (v57 < 8u) | (v149 < 8)))
            {
              v90 = __dst;
LABEL_111:
              v92 = (v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v90, v88, v89, a11));
              v93 = (v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v92, v88 + 1, v89 + 8, a11));
              v94 = (v89 + 4 * a11);
              v95 = (v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v93, v88 + 2, v94, a11));
              v96 = v88 + 3;
              v97 = v94 + 8;
              v98 = a11;
              goto LABEL_112;
            }

            v91 = v58;
            memcpy(__dst, (v147 + v75), sizeof(__dst));
            v58 = v91;
            v90 = __dst;
          }

          else if (!(v58 & 1 | (v57 < 8u) | (v149 < 8)))
          {
            goto LABEL_111;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v152;
          v157 = v90;
          v165 = v57;
          v166 = v139;
          v161 = v141;
          v162 = v54 - v52;
          v158 = v88;
          v159 = v89;
          v160 = a11;
          v163 = v140;
          v164 = v56;
          if (v58)
          {
            dispatch_sync(*(*(v152 + 8) + 16552), block);
            v24 = v152;
            goto LABEL_114;
          }

          v99 = v90->u64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v168, 256, v90, *v88);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v169, 256, v99, v88[1]);
          v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v170, 256, v100, v88[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v171, 256, v100 + v101, v88[3]);
          v102 = v163;
          if (v163 && v164)
          {
            v103 = 0;
            v104 = v161 << 8;
            v105 = 32 * v162;
            v106 = &v168[0].i8[v104 + v105];
            v107 = v159;
            v108 = v160;
            v109 = 32 * v164;
            if (v109)
            {
              v110 = (v109 - 1) >> 32 == 0;
            }

            else
            {
              v110 = 0;
            }

            v111 = !v110;
            v113 = v106 < &v159->i8[v160 * (v163 - 1) + v109] && v159 < &__dst[256 * v163 + 1792 + 256 * v161 + v109 + v105];
            v114 = v111 | (v160 < 0) | v113;
            v115 = &v168[1].i8[v104 + v105];
            v116 = v159 + 1;
            do
            {
              v117 = v116;
              v118 = v115;
              v119 = v109;
              if (v114)
              {
                v120 = 0;
                do
                {
                  v106[v120] = v107->i8[v120];
                  ++v120;
                }

                while (v109 > v120);
              }

              else
              {
                do
                {
                  v121 = *v117;
                  *(v118 - 1) = v117[-1];
                  *v118 = v121;
                  v118 += 32;
                  v117 += 2;
                  v119 -= 32;
                }

                while (v119);
              }

              ++v103;
              v115 += 256;
              v116 = (v116 + v108);
              v106 += 256;
              v107 = (v107 + v108);
            }

            while (v103 != v102);
          }

          v123 = v157;
          v122 = v158;
          v124 = v165;
          v125 = v166;
          if (v165 && v166)
          {
            v123 = (v123 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v157, v158, v168, 256));
            if (v124 < 5)
            {
              goto LABEL_145;
            }
          }

          else
          {
            *v158 = 0;
            if (v124 < 5)
            {
              goto LABEL_145;
            }
          }

          if (v125)
          {
            v123 = (v123 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v123, v122 + 1, v169, 256));
            goto LABEL_146;
          }

LABEL_145:
          v122[1] = 0;
          if (!v124)
          {
            goto LABEL_149;
          }

LABEL_146:
          if (v125 < 5)
          {
LABEL_149:
            v122[2] = 0;
            if (v124 < 5)
            {
              goto LABEL_152;
            }

            goto LABEL_150;
          }

          v123 = (v123 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v123, v122 + 2, v170, 256));
          if (v124 < 5)
          {
            goto LABEL_152;
          }

LABEL_150:
          if (v125 < 5)
          {
LABEL_152:
            v122[3] = 0;
            goto LABEL_113;
          }

          v96 = v122 + 3;
          v97 = v171;
          v95 = v123;
          v98 = 256;
LABEL_112:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v95, v96, v97, v98);
LABEL_113:
          v24 = v152;
LABEL_114:
          result = v154;
          v16 = v144;
          if (v155)
          {
            result = memcpy(v154, v90, 0x800uLL);
          }

          v30 = v51++ == v145 >> 3;
        }

        while (!v30);
        v30 = v27++ == v132;
      }

      while (!v30);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v416 = v21;
  v363 = v22;
  v415 = v23;
  v24 = v12;
  v441 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v420 = v14;
  v365 = v14 + a10 - 1;
  v421 = v24;
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
  v364 = v365 >> 3;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v423 = v32;
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
      v414 = 0;
LABEL_32:
      v377 = v35 - 3;
      v368 = v34 - 3;
      v41 = -1 << *(*(v24 + 208) + 48);
      v362 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v414 = v40 >= v34;
    goto LABEL_32;
  }

  v414 = 0;
  v362 = 0;
  v368 = 0;
  v377 = 0;
LABEL_33:
  if (v26 <= v364)
  {
    v413 = v16 + a9 - 1;
    v361 = v16 >> 3;
    if (v16 >> 3 <= v413 >> 3)
    {
      v422 = v27 >> 3;
      v371 = v27 & 7;
      v411 = (v27 & 7) + 1;
      v359 = v28 & 7;
      v360 = v28 >> 3;
      v358 = (v28 & 7) + 1;
      v370 = 4 * a11;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v43 = vcgt_u32(v42, 0xF0000000FLL);
      v367 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v42, 3uLL))))))), v43);
      v366 = v43;
      v369 = 2 * a11;
      v412 = v16;
      do
      {
        v44 = (8 * v26) | 7;
        if (8 * v26 <= v420)
        {
          v45 = v420;
        }

        else
        {
          v45 = 8 * v26;
        }

        if (v365 < v44)
        {
          v44 = v365;
        }

        v419 = 8 * v26;
        v376 = v45 - 8 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v359;
        v375 = v47;
        v49 = v47 != 8;
        v50 = v358;
        if (v26 != v360)
        {
          v50 = 8;
          v48 = v49;
        }

        v373 = v48;
        v51 = v361;
        v372 = (v26 >> v368) * v362;
        v52 = v26 & ~(-1 << v368);
        v418 = v363 + (v45 - v420) * a11;
        v374 = v50;
        v417 = v50;
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

          if (v413 < v54)
          {
            v54 = v413;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v422)
          {
            v58 = v411;
          }

          else
          {
            v58 = 8;
          }

          v59 = 1;
          if (v419 >= v420 && v53 >= v16)
          {
            v60 = v56 != v371;
            if (v51 != v422)
            {
              v60 = v57 != 8;
            }

            v59 = v60 || v373;
          }

          if (v414)
          {
            if (v377 | v368)
            {
              v61 = 0;
              v62 = 0;
              v63 = 1;
              v64 = v377 != 0;
              v65 = v368 != 0;
              v66 = v377;
              v67 = v368;
              do
              {
                --v66;
                if (v64)
                {
                  v62 |= (v51 & ~(-1 << v377) & v63) << v61++;
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

            v76 = v68 + *(result + 336) * ((v51 >> v377) + v372);
          }

          else if (v367)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v366.i8[4];
            v73 = v366.i8[0];
            v74 = v367.i32[1];
            v75 = v367.i32[0];
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

          v81 = v80 + 7;
          if (v81 < 0x10)
          {
            v82 = 0;
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 3) - 1)));
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

          v89 = (v416 + v88);
          v90 = (v418 + 32 * (v55 - v16));
          v91 = (v415 + v76);
          if (v423)
          {
            if (!(v59 & 1 | (v58 < 8u) | (v417 < 8)))
            {
              v97 = __dst;
LABEL_111:
              v378 = v90[4];
              v386 = v90[5];
              v394 = v90[6];
              v402 = v90[7];
              v98 = *(v90 + a11);
              v99 = *(v90 + a11 + 16);
              v100 = *(v90 + a11 + 32);
              v101 = *(v90 + a11 + 48);
              v102 = *(v90 + a11 + 64);
              v103 = *(v90 + a11 + 80);
              v104 = *(v90 + a11 + 96);
              v105 = *(v90 + a11 + 112);
              v107 = *(v90 + 2 * a11);
              v108 = *(v90 + v369 + 16);
              v109 = *(v90 + v369 + 32);
              v110 = *(v90 + v369 + 48);
              v106 = (v90 + v369 + a11);
              v111 = *(v90 + v369 + 64);
              v112 = *(v90 + v369 + 80);
              v113 = *(v90 + v369 + 96);
              v114 = *(v90 + v369 + 112);
              v115 = *v106;
              v116 = v106[1];
              v117 = v106[2];
              v118 = v106[3];
              v106 += 4;
              v119 = *v106;
              v120 = v106[1];
              v121 = v106[2];
              v122 = v106[3];
              v123 = v90[1];
              v124 = v90[2];
              v125 = v90[3];
              *v97 = *v90;
              v97[1] = v123;
              v97[2] = v124;
              v97[3] = v125;
              v97[4] = v98;
              v97[5] = v99;
              v97[6] = v100;
              v97[7] = v101;
              v97[8] = v378;
              v97[9] = v386;
              v97[10] = v394;
              v97[11] = v402;
              v97[12] = v102;
              v97[13] = v103;
              v97[14] = v104;
              v97[15] = v105;
              v97[16] = v107;
              v97[17] = v108;
              v97[18] = v109;
              v97[19] = v110;
              v97[20] = v115;
              v97[21] = v116;
              v97[22] = v117;
              v97[23] = v118;
              v97[24] = v111;
              v97[25] = v112;
              v97[26] = v113;
              v97[27] = v114;
              v97[28] = v119;
              v97[29] = v120;
              v97[30] = v121;
              v97[31] = v122;
              *v89 = -1;
              v126 = (v90 + v369 + 128);
              v379 = v90[12];
              v387 = v90[13];
              v395 = v90[14];
              v403 = v90[15];
              v127 = (v90 + a11 + 128);
              v128 = *v127;
              v129 = v127[1];
              v130 = v127[2];
              v131 = v127[3];
              v127 += 4;
              v132 = *v127;
              v133 = v127[1];
              v134 = v127[2];
              v135 = v127[3];
              v136 = v126 + 4;
              v138 = *v126;
              v139 = v126[1];
              v140 = v126[2];
              v141 = v126[3];
              v137 = (v126 + a11);
              v142 = *v136;
              v143 = v136[1];
              v144 = v136[2];
              v145 = v136[3];
              v146 = *v137;
              v147 = v137[1];
              v148 = v137[2];
              v149 = v137[3];
              v137 += 4;
              v150 = *v137;
              v151 = v137[1];
              v152 = v137[2];
              v153 = v137[3];
              v154 = v90[9];
              v155 = v90[10];
              v156 = v90[11];
              v97[32] = v90[8];
              v97[33] = v154;
              v97[34] = v155;
              v97[35] = v156;
              v97[36] = v128;
              v97[37] = v129;
              v97[38] = v130;
              v97[39] = v131;
              v97[40] = v379;
              v97[41] = v387;
              v97[42] = v395;
              v97[43] = v403;
              v97[44] = v132;
              v97[45] = v133;
              v97[46] = v134;
              v97[47] = v135;
              v97[48] = v138;
              v97[49] = v139;
              v97[50] = v140;
              v97[51] = v141;
              v97[52] = v146;
              v97[53] = v147;
              v97[54] = v148;
              v97[55] = v149;
              v97[56] = v142;
              v97[57] = v143;
              v97[58] = v144;
              v97[59] = v145;
              v97[60] = v150;
              v97[61] = v151;
              v97[62] = v152;
              v97[63] = v153;
              v89[1] = -1;
              v380 = *(v90 + v370 + 64);
              v388 = *(v90 + v370 + 80);
              v396 = *(v90 + v370 + 96);
              v404 = *(v90 + v370 + 112);
              v157 = *(v90 + v370 + a11);
              v158 = *(v90 + v370 + a11 + 16);
              v159 = *(v90 + v370 + a11 + 32);
              v160 = *(v90 + v370 + a11 + 48);
              v161 = *(v90 + v370 + a11 + 64);
              v162 = *(v90 + v370 + a11 + 80);
              v163 = *(v90 + v370 + a11 + 96);
              v164 = *(v90 + v370 + a11 + 112);
              v166 = *(v90 + 2 * a11 + v370);
              v167 = *(v90 + v370 + v369 + 16);
              v168 = *(v90 + v370 + v369 + 32);
              v169 = *(v90 + v370 + v369 + 48);
              v165 = (v90 + v370 + v369 + a11);
              v170 = *(v90 + v370 + v369 + 64);
              v171 = *(v90 + v370 + v369 + 80);
              v172 = *(v90 + v370 + v369 + 96);
              v173 = *(v90 + v370 + v369 + 112);
              v174 = *v165;
              v175 = v165[1];
              v176 = v165[2];
              v177 = v165[3];
              v165 += 4;
              v178 = *v165;
              v179 = v165[1];
              v180 = v165[2];
              v181 = v165[3];
              v182 = *(v90 + v370 + 16);
              v183 = *(v90 + v370 + 32);
              v184 = *(v90 + v370 + 48);
              v97[64] = *(v90 + 4 * a11);
              v97[65] = v182;
              v97[66] = v183;
              v97[67] = v184;
              v97[68] = v157;
              v97[69] = v158;
              v97[70] = v159;
              v97[71] = v160;
              v97[72] = v380;
              v97[73] = v388;
              v97[74] = v396;
              v97[75] = v404;
              v97[76] = v161;
              v97[77] = v162;
              v97[78] = v163;
              v97[79] = v164;
              v97[80] = v166;
              v97[81] = v167;
              v97[82] = v168;
              v97[83] = v169;
              v97[84] = v174;
              v97[85] = v175;
              v97[86] = v176;
              v97[87] = v177;
              v185 = (v90 + v370 + 128);
              v97[88] = v170;
              v97[89] = v171;
              v97[90] = v172;
              v97[91] = v173;
              v97[92] = v178;
              v97[93] = v179;
              v97[94] = v180;
              v97[95] = v181;
              v89[2] = -1;
              v381 = *(v90 + v370 + 192);
              v389 = *(v90 + v370 + 208);
              v397 = *(v90 + v370 + 224);
              v405 = *(v90 + v370 + 240);
              v186 = *(v185 + a11);
              v187 = *(v185 + a11 + 16);
              v188 = *(v185 + a11 + 32);
              v189 = *(v185 + a11 + 48);
              v190 = *(v185 + a11 + 64);
              v191 = *(v185 + a11 + 80);
              v192 = *(v185 + a11 + 96);
              v193 = *(v185 + a11 + 112);
              v195 = *(v185 + 2 * a11);
              v196 = *(v185 + v369 + 16);
              v197 = *(v185 + v369 + 32);
              v198 = *(v185 + v369 + 48);
              v194 = (v185 + v369 + a11);
              v199 = *(v185 + v369 + 64);
              v200 = *(v185 + v369 + 80);
              v201 = *(v185 + v369 + 96);
              v202 = *(v185 + v369 + 112);
              v203 = *v194;
              v204 = v194[1];
              v205 = v194[2];
              v206 = v194[3];
              v194 += 4;
              v207 = *v194;
              v208 = v194[1];
              v209 = v194[2];
              v210 = v194[3];
              v211 = *(v90 + v370 + 144);
              v212 = *(v90 + v370 + 160);
              v213 = *(v90 + v370 + 176);
              v97[96] = *v185;
              v97[97] = v211;
              v97[98] = v212;
              v97[99] = v213;
              v97[100] = v186;
              v97[101] = v187;
              v97[102] = v188;
              v97[103] = v189;
              v97[104] = v381;
              v97[105] = v389;
              v97[106] = v397;
              v97[107] = v405;
              v97[108] = v190;
              v97[109] = v191;
              v97[110] = v192;
              v97[111] = v193;
              v97[112] = v195;
              v97[113] = v196;
              v97[114] = v197;
              v97[115] = v198;
              v97[116] = v203;
              v97[117] = v204;
              v97[118] = v205;
              v97[119] = v206;
              v97[120] = v199;
              v97[121] = v200;
              v97[122] = v201;
              v97[123] = v202;
              v97[124] = v207;
              v97[125] = v208;
              v97[126] = v209;
              v97[127] = v210;
              v89[3] = -1;
LABEL_112:
              v214 = v51 + 1;
              if (v423)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            v92 = v57;
            v410 = (v416 + v88);
            v93 = v59;
            v94 = v26;
            v95 = v58;
            v96 = v55;
            memcpy(__dst, v91, sizeof(__dst));
            v55 = v96;
            v58 = v95;
            v26 = v94;
            v59 = v93;
            v89 = v410;
            v97 = __dst;
            v57 = v92;
            result = v421;
          }

          else
          {
            v97 = (v415 + v76);
            if (!(v59 & 1 | (v58 < 8u) | (v417 < 8)))
            {
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v425 = v97;
          v433 = v58;
          v434 = v374;
          v429 = v376;
          v430 = v55 - v53;
          v426 = v89;
          v427 = v90;
          v428 = a11;
          v431 = v375;
          v432 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v421;
            goto LABEL_112;
          }

          v215 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v436, 256, v97, *v89);
          v216 = v215 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v438, 256, v215, v89[1]);
          v217 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v439, 256, v216, v89[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v440, 256, v216 + v217, v89[3]);
          v218 = v431;
          if (v431 && v432)
          {
            v219 = 0;
            v220 = 2 * v430;
            v221 = &v437[16 * v429 - 1 + v220];
            v222 = v427;
            v223 = v428;
            v224 = 32 * v432;
            if (v224)
            {
              v225 = (v224 - 1) >> 32 == 0;
            }

            else
            {
              v225 = 0;
            }

            v226 = !v225;
            v228 = v221 < (v427 + v428 * (v431 - 1) + v224) && v427 < &__dst[256 * v431 + 1792 + 256 * v429 + v224 + v220 * 16];
            v229 = v226 | (v428 < 0) | v228;
            v230 = &v437[16 * v429 + v220];
            v231 = v427 + 1;
            do
            {
              v232 = v231;
              v233 = v230;
              v234 = v224;
              if (v229)
              {
                v235 = 0;
                do
                {
                  *(v221 + v235) = *(v222 + v235);
                  ++v235;
                }

                while (v224 > v235);
              }

              else
              {
                do
                {
                  v236 = *v232;
                  *(v233 - 1) = *(v232 - 1);
                  *v233 = v236;
                  v233 += 2;
                  v232 += 2;
                  v234 -= 32;
                }

                while (v234);
              }

              ++v219;
              v230 += 16;
              v231 = (v231 + v223);
              v221 += 16;
              v222 = (v222 + v223);
            }

            while (v219 != v218);
          }

          v237 = 0;
          v238 = v425;
          v239 = v426;
          v240 = v433;
          v241 = v434;
          if (v433)
          {
            result = v421;
            v214 = v51 + 1;
            if (v434)
            {
              v382 = v437[3];
              v390 = v437[4];
              v398 = v437[5];
              v406 = v437[6];
              v242 = v438[8];
              v243 = v438[9];
              v244 = v438[10];
              v245 = v438[11];
              v246 = v438[12];
              v247 = v438[13];
              v248 = v438[14];
              v249 = v438[15];
              v250 = v438[24];
              v251 = v438[25];
              v252 = v438[26];
              v253 = v438[27];
              v254 = v438[28];
              v255 = v438[29];
              v256 = v438[30];
              v257 = v438[31];
              v258 = v438[40];
              v259 = v438[41];
              v260 = v438[42];
              v261 = v438[43];
              v262 = v438[44];
              v263 = v438[45];
              v264 = v438[46];
              v265 = v438[47];
              v266 = v437[0];
              v267 = v437[1];
              v268 = v437[2];
              *v425 = v436;
              v238[1] = v266;
              v238[2] = v267;
              v238[3] = v268;
              v238[4] = v242;
              v238[5] = v243;
              v238[6] = v244;
              v238[7] = v245;
              v238[8] = v382;
              v238[9] = v390;
              v238[10] = v398;
              v238[11] = v406;
              v238[12] = v246;
              v238[13] = v247;
              v238[14] = v248;
              v238[15] = v249;
              v238[16] = v250;
              v238[17] = v251;
              v238[18] = v252;
              v238[19] = v253;
              v238[20] = v258;
              v238[21] = v259;
              v238[22] = v260;
              v238[23] = v261;
              v238[24] = v254;
              v238[25] = v255;
              v238[26] = v256;
              v238[27] = v257;
              v269 = v238 + 28;
              v238 += 32;
              *v269 = v262;
              v269[1] = v263;
              v269[2] = v264;
              v269[3] = v265;
              v237 = -1;
            }
          }

          else
          {
            result = v421;
            v214 = v51 + 1;
          }

          *v239 = v237;
          if (v240 < 5 || v241 == 0)
          {
            v299 = 0;
          }

          else
          {
            v383 = v438[4];
            v391 = v438[5];
            v399 = v438[6];
            v407 = v438[7];
            v271 = v438[16];
            v272 = v438[17];
            v273 = v438[18];
            v274 = v438[19];
            v275 = v438[20];
            v276 = v438[21];
            v277 = v438[22];
            v278 = v438[23];
            v279 = v438[32];
            v280 = v438[33];
            v281 = v438[34];
            v282 = v438[35];
            v283 = v438[36];
            v284 = v438[37];
            v285 = v438[38];
            v286 = v438[39];
            v287 = v438[48];
            v288 = v438[49];
            v289 = v438[50];
            v290 = v438[51];
            v291 = v438[52];
            v292 = v438[53];
            v293 = v438[54];
            v294 = v438[55];
            v295 = v438[1];
            v296 = v438[2];
            v297 = v438[3];
            *v238 = v438[0];
            v238[1] = v295;
            v238[2] = v296;
            v238[3] = v297;
            v238[4] = v271;
            v238[5] = v272;
            v238[6] = v273;
            v238[7] = v274;
            v238[8] = v383;
            v238[9] = v391;
            v238[10] = v399;
            v238[11] = v407;
            v238[12] = v275;
            v238[13] = v276;
            v238[14] = v277;
            v238[15] = v278;
            v238[16] = v279;
            v238[17] = v280;
            v238[18] = v281;
            v238[19] = v282;
            v238[20] = v287;
            v238[21] = v288;
            v238[22] = v289;
            v238[23] = v290;
            v238[24] = v283;
            v238[25] = v284;
            v238[26] = v285;
            v238[27] = v286;
            v298 = v238 + 28;
            v238 += 32;
            *v298 = v291;
            v298[1] = v292;
            v298[2] = v293;
            v298[3] = v294;
            v299 = -1;
          }

          v300 = 0;
          v239[1] = v299;
          if (v240 && v241 >= 5)
          {
            v384 = v439[4];
            v392 = v439[5];
            v400 = v439[6];
            v408 = v439[7];
            v301 = v440[8];
            v302 = v440[9];
            v303 = v440[10];
            v304 = v440[11];
            v305 = v440[12];
            v306 = v440[13];
            v307 = v440[14];
            v308 = v440[15];
            v309 = v440[24];
            v310 = v440[25];
            v311 = v440[26];
            v312 = v440[27];
            v313 = v440[28];
            v314 = v440[29];
            v315 = v440[30];
            v316 = v440[31];
            v317 = v440[40];
            v318 = v440[41];
            v319 = v440[42];
            v320 = v440[43];
            v321 = v440[44];
            v322 = v440[45];
            v323 = v440[46];
            v324 = v440[47];
            v325 = v439[1];
            v326 = v439[2];
            v327 = v439[3];
            *v238 = v439[0];
            v238[1] = v325;
            v238[2] = v326;
            v238[3] = v327;
            v238[4] = v301;
            v238[5] = v302;
            v238[6] = v303;
            v238[7] = v304;
            v238[8] = v384;
            v238[9] = v392;
            v238[10] = v400;
            v238[11] = v408;
            v238[12] = v305;
            v238[13] = v306;
            v238[14] = v307;
            v238[15] = v308;
            v238[16] = v309;
            v238[17] = v310;
            v238[18] = v311;
            v238[19] = v312;
            v238[20] = v317;
            v238[21] = v318;
            v238[22] = v319;
            v238[23] = v320;
            v238[24] = v313;
            v238[25] = v314;
            v238[26] = v315;
            v238[27] = v316;
            v328 = v238 + 28;
            v238 += 32;
            *v328 = v321;
            v328[1] = v322;
            v328[2] = v323;
            v328[3] = v324;
            v300 = -1;
          }

          v329 = 0;
          v239[2] = v300;
          if (v240 >= 5 && v241 >= 5)
          {
            v385 = v440[4];
            v393 = v440[5];
            v401 = v440[6];
            v409 = v440[7];
            v330 = v440[16];
            v331 = v440[17];
            v332 = v440[18];
            v333 = v440[19];
            v334 = v440[20];
            v335 = v440[21];
            v336 = v440[22];
            v337 = v440[23];
            v338 = v440[32];
            v339 = v440[33];
            v340 = v440[34];
            v341 = v440[35];
            v342 = v440[36];
            v343 = v440[37];
            v344 = v440[38];
            v345 = v440[39];
            v346 = v440[48];
            v347 = v440[49];
            v348 = v440[50];
            v349 = v440[51];
            v350 = v440[52];
            v351 = v440[53];
            v352 = v440[54];
            v353 = v440[55];
            v354 = v440[1];
            v355 = v440[2];
            v356 = v440[3];
            *v238 = v440[0];
            v238[1] = v354;
            v238[2] = v355;
            v238[3] = v356;
            v238[4] = v330;
            v238[5] = v331;
            v238[6] = v332;
            v238[7] = v333;
            v238[8] = v385;
            v238[9] = v393;
            v238[10] = v401;
            v238[11] = v409;
            v238[12] = v334;
            v238[13] = v335;
            v238[14] = v336;
            v238[15] = v337;
            v238[16] = v338;
            v238[17] = v339;
            v238[18] = v340;
            v238[19] = v341;
            v238[20] = v346;
            v238[21] = v347;
            v238[22] = v348;
            v238[23] = v349;
            v238[24] = v342;
            v238[25] = v343;
            v238[26] = v344;
            v238[27] = v345;
            v357 = v238 + 28;
            v329 = -1;
            *v357 = v350;
            v357[1] = v351;
            v357[2] = v352;
            v357[3] = v353;
          }

          v239[3] = v329;
          if (v423)
          {
LABEL_46:
            memcpy(v91, v97, 0x800uLL);
            result = v421;
          }

LABEL_47:
          v29 = v51 == v413 >> 3;
          v51 = v214;
          v16 = v412;
        }

        while (!v29);
        v29 = v26 == v364;
        v26 = (v26 + 1);
      }

      while (!v29);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v152 = v21;
  v153 = v22;
  v140 = v23;
  v24 = v12;
  v176[112] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v157 = v14;
  v25 = v14 >> 3;
  v139 = v14 + a10 - 1;
  v141 = v139 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v159 = v24;
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
  v160 = v32;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v34 = v24;
  v151 = isLevelTiled;
  if (v25 <= v141)
  {
    v150 = v16 + a9 - 1;
    v138 = v16 >> 3;
    if (v16 >> 3 <= v150 >> 3)
    {
      v158 = (v20 - 1) >> 3;
      v137 = (v18 - 1) >> 3;
      v134 = v20 - 1;
      v142 = (v20 - 1) & 7;
      v135 = ((v18 - 1) & 7) + 1;
      v136 = (v18 - 1) & 7;
      v35 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v36 = vcgt_u32(v35, 0xF0000000FLL);
      v148 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v35, 3uLL))))))), v36);
      v147 = v36;
      v133 = 8 * v27 * v26;
      v149 = v16;
      do
      {
        v37 = (8 * v25) | 7;
        if (8 * v25 <= v157)
        {
          v38 = v157;
        }

        else
        {
          v38 = 8 * v25;
        }

        if (v139 < v37)
        {
          v37 = v139;
        }

        v156 = 8 * v25;
        v146 = v38 - 8 * v25;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v136;
        v145 = v40;
        v42 = v40 != 8;
        v43 = v138;
        v44 = v135;
        if (v25 != v137)
        {
          v44 = 8;
          v41 = v42;
        }

        v143 = v41;
        v144 = v44;
        v155 = v140 + (v38 - v157) * a11;
        v154 = v44;
        do
        {
          v45 = 8 * v43;
          v46 = 8 * (v43 + 1) - 1;
          if (8 * v43 <= v16)
          {
            v47 = v16;
          }

          else
          {
            v47 = 8 * v43;
          }

          if (v150 < v46)
          {
            v46 = v150;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v158)
          {
            v50 = v142 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v156 >= v157 && v45 >= v16)
          {
            v52 = v48 != v142;
            if (v43 != v158)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v143;
          }

          if (v151)
          {
            v73 = 0;
            v74 = v133 >> (*(v34 + 57) != 0);
            v75 = 1;
            if (v74 <= 63)
            {
              if (v74 > 15)
              {
                if (v74 == 16)
                {
                  v75 = 0;
                  v76 = 0;
                  v77 = 64;
                  v73 = 128;
                }

                else
                {
                  v76 = 1;
                  v77 = 0;
                  if (v74 == 32)
                  {
                    v75 = 0;
                    v76 = 0;
                    v73 = 64;
                    v77 = 64;
                  }
                }
              }

              else if (v74 == 4)
              {
                v75 = 0;
                v76 = 0;
                v77 = 128;
                v73 = 256;
              }

              else
              {
                v76 = 1;
                v77 = 0;
                if (v74 == 8)
                {
                  v75 = 0;
                  v76 = 0;
                  v73 = 128;
                  v77 = 128;
                }
              }
            }

            else if (v74 <= 255)
            {
              if (v74 == 64)
              {
                v75 = 0;
                v76 = 0;
                v77 = 32;
                v73 = 64;
              }

              else
              {
                v76 = 1;
                v77 = 0;
                if (v74 == 128)
                {
                  v75 = 0;
                  v76 = 0;
                  v73 = 32;
                  v77 = 32;
                }
              }
            }

            else if (v74 == 256)
            {
              v75 = 0;
              v76 = 0;
              v77 = 16;
              v73 = 32;
            }

            else if (v74 == 512)
            {
              v75 = 0;
              v76 = 0;
              v73 = 16;
              v77 = 16;
            }

            else
            {
              v76 = 1;
              v77 = 0;
              if (v74 == 1024)
              {
                v75 = 0;
                v77 = 8;
                v73 = 16;
              }
            }

            v121 = (v73 >> 3) - 1;
            if (v75)
            {
              v122 = 0;
            }

            else
            {
              v122 = 32 - __clz(~(-1 << -__clz(v121)));
            }

            v123 = (v77 >> 3) - 1;
            if (v76)
            {
              v124 = 0;
              if (v122)
              {
                goto LABEL_146;
              }
            }

            else
            {
              v124 = 32 - __clz(~(-1 << -__clz(v123)));
              if (v124 | v122)
              {
LABEL_146:
                v125 = 0;
                v126 = 0;
                v127 = v43 & v121;
                v128 = v25 & v123;
                v129 = v122 != 0;
                v130 = v124 != 0;
                v131 = 1;
                do
                {
                  --v122;
                  if (v129)
                  {
                    v126 |= (v131 & v127) << v125++;
                  }

                  else
                  {
                    v122 = 0;
                  }

                  --v124;
                  if (v130)
                  {
                    v126 |= (v131 & v128) << v125++;
                  }

                  else
                  {
                    v124 = 0;
                  }

                  v131 *= 2;
                  --v125;
                  v130 = v124 != 0;
                  v129 = v122 != 0;
                }

                while (v124 | v122);
                v132 = v126 << 11;
                v34 = v159;
                goto LABEL_158;
              }
            }

            v132 = 0;
LABEL_158:
            v60 = v132 + ((v45 / v73 + v156 / v77 * ((v73 + v134) / v73)) << 14);
            goto LABEL_52;
          }

          if (v148)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v56 = v147.i8[0];
            v57 = v147.i8[4];
            v59 = v148.i32[0];
            v58 = v148.i32[1];
            do
            {
              --v58;
              if (v57)
              {
                v54 |= (v55 & v43) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v56)
              {
                v54 |= (v55 & v25) << v53++;
              }

              else
              {
                v59 = 0;
              }

              v55 *= 2;
              --v53;
              v56 = v59 != 0;
              v57 = v58 != 0;
            }

            while (v59 | v58);
            v60 = v54 << 11;
          }

          else
          {
            v60 = 0;
          }

LABEL_52:
          v61 = *(v34 + 128) >> (*(v34 + 144) + a12);
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v62 = v61 + 7;
          if (v62 < 0x10)
          {
            v63 = 0;
          }

          else
          {
            v63 = 32 - __clz(~(-1 << -__clz((v62 >> 3) - 1)));
          }

          v64 = *(v34 + 132) >> (*(v34 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 7;
          if (v65 < 0x10)
          {
            v66 = 0;
            if (!v63)
            {
LABEL_77:
              v72 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 3) - 1)));
            if (!(v66 | v63))
            {
              goto LABEL_77;
            }
          }

          v67 = 0;
          v68 = 0;
          v69 = v63 != 0;
          v70 = v66 != 0;
          v71 = 1;
          do
          {
            --v63;
            if (v69)
            {
              v68 |= (v71 & v43) << v67++;
            }

            else
            {
              v63 = 0;
            }

            --v66;
            if (v70)
            {
              v68 |= (v71 & v25) << v67++;
            }

            else
            {
              v66 = 0;
            }

            v71 *= 2;
            --v67;
            v70 = v66 != 0;
            v69 = v63 != 0;
          }

          while (v66 | v63);
          v72 = 8 * v68;
LABEL_78:
          v78 = (v153 + v72);
          v79 = (v155 + 32 * (v47 - v16));
          v80 = (v152 + v60);
          if (v160)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v154 < 8)))
            {
              v85 = __dst;
LABEL_86:
              v87 = (v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v85, v78, v79, a11));
              v88 = (v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v87, v78 + 1, v79 + 8, a11));
              v89 = (v79 + 4 * a11);
              v90 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v88, v78 + 2, v89, a11));
              v91 = v78 + 3;
              v92 = v89 + 8;
              v93 = a11;
LABEL_87:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v90, v91, v92, v93);
              v86 = v43 + 1;
              if (!v160)
              {
                goto LABEL_26;
              }

LABEL_88:
              memcpy(v80, v85, 0x800uLL);
              goto LABEL_26;
            }

            v81 = v49;
            v82 = (v152 + v60);
            v83 = v50;
            v84 = v47;
            memcpy(__dst, (v152 + v60), sizeof(__dst));
            v47 = v84;
            v85 = __dst;
            v50 = v83;
            v80 = v82;
            v49 = v81;
          }

          else
          {
            v85 = (v152 + v60);
            if (!(v51 & 1 | (v50 < 8u) | (v154 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v159;
          v162 = v85;
          v170 = v50;
          v171 = v144;
          v166 = v146;
          v167 = v47 - v45;
          v163 = v78;
          v164 = v79;
          v165 = a11;
          v168 = v145;
          v169 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v159 + 8) + 16552), block);
            v86 = v43 + 1;
            if (!v160)
            {
              goto LABEL_26;
            }

            goto LABEL_88;
          }

          v94 = v85->u64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v173, 256, v85, *v78);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v174, 256, v94, v78[1]);
          v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v175, 256, v95, v78[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v176, 256, v95 + v96, v78[3]);
          v97 = v168;
          if (v168 && v169)
          {
            v98 = 0;
            v99 = v166 << 8;
            v100 = 32 * v167;
            v101 = &v173[0].i8[v99 + v100];
            v102 = v164;
            v103 = v165;
            v104 = 32 * v169;
            if (v104)
            {
              v105 = (v104 - 1) >> 32 == 0;
            }

            else
            {
              v105 = 0;
            }

            v106 = !v105;
            v108 = v101 < &v164->i8[v165 * (v168 - 1) + v104] && v164 < &__dst[256 * v168 + 1792 + 256 * v166 + v104 + v100];
            v109 = v106 | (v165 < 0) | v108;
            v110 = &v173[1].i8[v99 + v100];
            v111 = v164 + 1;
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
                  v101[v115] = v102->i8[v115];
                  ++v115;
                }

                while (v104 > v115);
              }

              else
              {
                do
                {
                  v116 = *v112;
                  *(v113 - 1) = v112[-1];
                  *v113 = v116;
                  v113 += 32;
                  v112 += 2;
                  v114 -= 32;
                }

                while (v114);
              }

              ++v98;
              v110 += 256;
              v111 = (v111 + v103);
              v101 += 256;
              v102 = (v102 + v103);
            }

            while (v98 != v97);
          }

          v118 = v162;
          v117 = v163;
          v119 = v170;
          v120 = v171;
          if (v170 && v171)
          {
            v118 = (v118 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v162, v163, v173, 256));
            if (v119 < 5)
            {
              goto LABEL_118;
            }
          }

          else
          {
            *v163 = 0;
            if (v119 < 5)
            {
              goto LABEL_118;
            }
          }

          if (!v120)
          {
LABEL_118:
            v117[1] = 0;
            if (!v119)
            {
              goto LABEL_122;
            }

            goto LABEL_119;
          }

          v118 = (v118 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v118, v117 + 1, v174, 256));
LABEL_119:
          if (v120 >= 5)
          {
            v118 = (v118 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v118, v117 + 2, v175, 256));
            if (v119 < 5)
            {
              goto LABEL_125;
            }

            goto LABEL_123;
          }

LABEL_122:
          v117[2] = 0;
          if (v119 < 5)
          {
            goto LABEL_125;
          }

LABEL_123:
          if (v120 >= 5)
          {
            v91 = v117 + 3;
            v92 = v176;
            v90 = v118;
            v93 = 256;
            goto LABEL_87;
          }

LABEL_125:
          v117[3] = 0;
          v86 = v43 + 1;
          if (v160)
          {
            goto LABEL_88;
          }

LABEL_26:
          v16 = v149;
          v29 = v43 == v150 >> 3;
          v43 = v86;
          v34 = v159;
        }

        while (!v29);
        v29 = v25++ == v141;
      }

      while (!v29);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v410 = v21;
  v363 = v22;
  v409 = v23;
  v24 = v12;
  v435 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v414 = v14;
  v25 = v14 >> 3;
  v362 = v14 + a10 - 1;
  v364 = v362 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v415 = v24;
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
  v417 = v32;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v34 = v24;
  v408 = isLevelTiled;
  if (v25 <= v364)
  {
    v407 = v16 + a9 - 1;
    v361 = v16 >> 3;
    if (v16 >> 3 <= v407 >> 3)
    {
      v416 = (v20 - 1) >> 3;
      v360 = v20 - 1;
      v367 = (v20 - 1) & 7;
      v366 = 4 * a11;
      v35 = vadd_s32(__PAIR64__(v20, v18), 0x700000007);
      v36 = vcgt_u32(v35, 0xF0000000FLL);
      v373 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v35, 3uLL))))))), v36);
      v372 = v36;
      v359 = 8 * v27 * v26;
      v365 = 2 * a11;
      v406 = v16;
      do
      {
        v37 = (8 * v25) | 7;
        if (8 * v25 <= v414)
        {
          v38 = v414;
        }

        else
        {
          v38 = 8 * v25;
        }

        if (v362 < v37)
        {
          v37 = v362;
        }

        v413 = 8 * v25;
        v371 = v38 - 8 * v25;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != ((v18 - 1) & 7);
        v370 = v40;
        v42 = v40 != 8;
        v43 = v361;
        v44 = ((v18 - 1) & 7) + 1;
        if (v25 != (v18 - 1) >> 3)
        {
          v44 = 8;
          v41 = v42;
        }

        v368 = v41;
        v412 = v363 + (v38 - v414) * a11;
        v369 = v44;
        v411 = v44;
        do
        {
          v45 = 8 * v43;
          v46 = 8 * (v43 + 1) - 1;
          if (8 * v43 <= v16)
          {
            v47 = v16;
          }

          else
          {
            v47 = 8 * v43;
          }

          if (v407 < v46)
          {
            v46 = v407;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v416)
          {
            v50 = v367 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v413 >= v414 && v45 >= v16)
          {
            v52 = v48 != v367;
            if (v43 != v416)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v368;
          }

          if (v408)
          {
            v73 = 0;
            v74 = v359 >> (*(v34 + 57) != 0);
            v75 = 1;
            if (v74 <= 63)
            {
              if (v74 > 15)
              {
                if (v74 == 16)
                {
                  v75 = 0;
                  v76 = 0;
                  v77 = 64;
                  v73 = 128;
                }

                else
                {
                  v76 = 1;
                  v77 = 0;
                  if (v74 == 32)
                  {
                    v75 = 0;
                    v76 = 0;
                    v73 = 64;
                    v77 = 64;
                  }
                }
              }

              else if (v74 == 4)
              {
                v75 = 0;
                v76 = 0;
                v77 = 128;
                v73 = 256;
              }

              else
              {
                v76 = 1;
                v77 = 0;
                if (v74 == 8)
                {
                  v75 = 0;
                  v76 = 0;
                  v73 = 128;
                  v77 = 128;
                }
              }
            }

            else if (v74 <= 255)
            {
              if (v74 == 64)
              {
                v75 = 0;
                v76 = 0;
                v77 = 32;
                v73 = 64;
              }

              else
              {
                v76 = 1;
                v77 = 0;
                if (v74 == 128)
                {
                  v75 = 0;
                  v76 = 0;
                  v73 = 32;
                  v77 = 32;
                }
              }
            }

            else if (v74 == 256)
            {
              v75 = 0;
              v76 = 0;
              v77 = 16;
              v73 = 32;
            }

            else if (v74 == 512)
            {
              v75 = 0;
              v76 = 0;
              v73 = 16;
              v77 = 16;
            }

            else
            {
              v76 = 1;
              v77 = 0;
              if (v74 == 1024)
              {
                v75 = 0;
                v77 = 8;
                v73 = 16;
              }
            }

            v347 = (v73 >> 3) - 1;
            if (v75)
            {
              v348 = 0;
            }

            else
            {
              v348 = 32 - __clz(~(-1 << -__clz(v347)));
            }

            v349 = (v77 >> 3) - 1;
            if (v76)
            {
              v350 = 0;
              if (v348)
              {
                goto LABEL_147;
              }
            }

            else
            {
              v350 = 32 - __clz(~(-1 << -__clz(v349)));
              if (v350 | v348)
              {
LABEL_147:
                v351 = 0;
                v352 = 0;
                v353 = v43 & v347;
                v354 = v25 & v349;
                v355 = v348 != 0;
                v356 = v350 != 0;
                v357 = 1;
                do
                {
                  --v348;
                  if (v355)
                  {
                    v352 |= (v357 & v353) << v351++;
                  }

                  else
                  {
                    v348 = 0;
                  }

                  --v350;
                  if (v356)
                  {
                    v352 |= (v357 & v354) << v351++;
                  }

                  else
                  {
                    v350 = 0;
                  }

                  v357 *= 2;
                  --v351;
                  v356 = v350 != 0;
                  v355 = v348 != 0;
                }

                while (v350 | v348);
                v358 = v352 << 11;
                goto LABEL_159;
              }
            }

            v358 = 0;
LABEL_159:
            v60 = v358 + ((v45 / v73 + v413 / v77 * ((v73 + v360) / v73)) << 14);
            goto LABEL_52;
          }

          if (v373)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v56 = v372.i8[4];
            v57 = v372.i8[0];
            v58 = v373.i32[1];
            v59 = v373.i32[0];
            do
            {
              --v58;
              if (v56)
              {
                v54 |= (v55 & v43) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v57)
              {
                v54 |= (v55 & v25) << v53++;
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
            v60 = v54 << 11;
          }

          else
          {
            v60 = 0;
          }

LABEL_52:
          v61 = *(v34 + 128) >> (*(v34 + 144) + a12);
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v62 = v61 + 7;
          if (v62 < 0x10)
          {
            v63 = 0;
          }

          else
          {
            v63 = 32 - __clz(~(-1 << -__clz((v62 >> 3) - 1)));
          }

          v64 = *(v34 + 132) >> (*(v34 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 7;
          if (v65 < 0x10)
          {
            v66 = 0;
            if (!v63)
            {
LABEL_77:
              v72 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 3) - 1)));
            if (!(v66 | v63))
            {
              goto LABEL_77;
            }
          }

          v67 = 0;
          v68 = 0;
          v69 = v63 != 0;
          v70 = v66 != 0;
          v71 = 1;
          do
          {
            --v63;
            if (v69)
            {
              v68 |= (v71 & v43) << v67++;
            }

            else
            {
              v63 = 0;
            }

            --v66;
            if (v70)
            {
              v68 |= (v71 & v25) << v67++;
            }

            else
            {
              v66 = 0;
            }

            v71 *= 2;
            --v67;
            v70 = v66 != 0;
            v69 = v63 != 0;
          }

          while (v66 | v63);
          v72 = 8 * v68;
LABEL_78:
          v78 = (v410 + v72);
          v79 = (v412 + 32 * (v47 - v16));
          v80 = (v409 + v60);
          if (v417)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v411 < 8)))
            {
              v86 = __dst;
LABEL_85:
              v374 = v79[4];
              v379 = v79[5];
              v384 = v79[6];
              v389 = v79[7];
              v87 = *(v79 + a11);
              v88 = *(v79 + a11 + 16);
              v89 = *(v79 + a11 + 32);
              v90 = *(v79 + a11 + 48);
              v91 = *(v79 + a11 + 64);
              v92 = *(v79 + a11 + 80);
              v93 = *(v79 + a11 + 96);
              v94 = *(v79 + a11 + 112);
              v96 = *(v79 + 2 * a11);
              v97 = *(v79 + v365 + 16);
              v98 = *(v79 + v365 + 32);
              v99 = *(v79 + v365 + 48);
              v95 = (v79 + v365 + a11);
              v100 = *(v79 + v365 + 64);
              v101 = *(v79 + v365 + 80);
              v102 = *(v79 + v365 + 96);
              v103 = *(v79 + v365 + 112);
              v104 = *v95;
              v105 = v95[1];
              v106 = v95[2];
              v107 = v95[3];
              v95 += 4;
              v108 = *v95;
              v109 = v95[1];
              v110 = v95[2];
              v111 = v95[3];
              v112 = v79[1];
              v113 = v79[2];
              v114 = v79[3];
              *v86 = *v79;
              v86[1] = v112;
              v86[2] = v113;
              v86[3] = v114;
              v86[4] = v87;
              v86[5] = v88;
              v86[6] = v89;
              v86[7] = v90;
              v86[8] = v374;
              v86[9] = v379;
              v86[10] = v384;
              v86[11] = v389;
              v86[12] = v91;
              v86[13] = v92;
              v86[14] = v93;
              v86[15] = v94;
              v86[16] = v96;
              v86[17] = v97;
              v86[18] = v98;
              v86[19] = v99;
              v86[20] = v104;
              v86[21] = v105;
              v86[22] = v106;
              v86[23] = v107;
              v86[24] = v100;
              v86[25] = v101;
              v86[26] = v102;
              v86[27] = v103;
              v86[28] = v108;
              v86[29] = v109;
              v86[30] = v110;
              v86[31] = v111;
              *v78 = -1;
              v115 = (v79 + v365 + 128);
              v375 = v79[12];
              v380 = v79[13];
              v385 = v79[14];
              v390 = v79[15];
              v116 = (v79 + a11 + 128);
              v117 = *v116;
              v118 = v116[1];
              v119 = v116[2];
              v120 = v116[3];
              v116 += 4;
              v121 = *v116;
              v122 = v116[1];
              v123 = v116[2];
              v124 = v116[3];
              v125 = v115 + 4;
              v127 = *v115;
              v128 = v115[1];
              v129 = v115[2];
              v130 = v115[3];
              v126 = (v115 + a11);
              v131 = *v125;
              v132 = v125[1];
              v133 = v125[2];
              v134 = v125[3];
              v135 = *v126;
              v136 = v126[1];
              v137 = v126[2];
              v138 = v126[3];
              v126 += 4;
              v139 = *v126;
              v140 = v126[1];
              v141 = v126[2];
              v142 = v126[3];
              v143 = v79[9];
              v144 = v79[10];
              v145 = v79[11];
              v86[32] = v79[8];
              v86[33] = v143;
              v86[34] = v144;
              v86[35] = v145;
              v86[36] = v117;
              v86[37] = v118;
              v86[38] = v119;
              v86[39] = v120;
              v86[40] = v375;
              v86[41] = v380;
              v86[42] = v385;
              v86[43] = v390;
              v86[44] = v121;
              v86[45] = v122;
              v86[46] = v123;
              v86[47] = v124;
              v86[48] = v127;
              v86[49] = v128;
              v86[50] = v129;
              v86[51] = v130;
              v86[52] = v135;
              v86[53] = v136;
              v86[54] = v137;
              v86[55] = v138;
              v86[56] = v131;
              v86[57] = v132;
              v86[58] = v133;
              v86[59] = v134;
              v86[60] = v139;
              v86[61] = v140;
              v86[62] = v141;
              v86[63] = v142;
              v78[1] = -1;
              v376 = *(v79 + v366 + 64);
              v381 = *(v79 + v366 + 80);
              v386 = *(v79 + v366 + 96);
              v391 = *(v79 + v366 + 112);
              v146 = *(v79 + v366 + a11);
              v147 = *(v79 + v366 + a11 + 16);
              v148 = *(v79 + v366 + a11 + 32);
              v149 = *(v79 + v366 + a11 + 48);
              v150 = *(v79 + v366 + a11 + 64);
              v151 = *(v79 + v366 + a11 + 80);
              v152 = *(v79 + v366 + a11 + 96);
              v153 = *(v79 + v366 + a11 + 112);
              v155 = *(v79 + 2 * a11 + v366);
              v156 = *(v79 + v366 + v365 + 16);
              v157 = *(v79 + v366 + v365 + 32);
              v158 = *(v79 + v366 + v365 + 48);
              v154 = (v79 + v366 + v365 + a11);
              v159 = *(v79 + v366 + v365 + 64);
              v160 = *(v79 + v366 + v365 + 80);
              v161 = *(v79 + v366 + v365 + 96);
              v162 = *(v79 + v366 + v365 + 112);
              v163 = *v154;
              v164 = v154[1];
              v165 = v154[2];
              v166 = v154[3];
              v154 += 4;
              v167 = *v154;
              v168 = v154[1];
              v169 = v154[2];
              v170 = v154[3];
              v171 = *(v79 + v366 + 16);
              v172 = *(v79 + v366 + 32);
              v173 = *(v79 + v366 + 48);
              v86[64] = *(v79 + 4 * a11);
              v86[65] = v171;
              v86[66] = v172;
              v86[67] = v173;
              v86[68] = v146;
              v86[69] = v147;
              v86[70] = v148;
              v86[71] = v149;
              v86[72] = v376;
              v86[73] = v381;
              v86[74] = v386;
              v86[75] = v391;
              v86[76] = v150;
              v86[77] = v151;
              v86[78] = v152;
              v86[79] = v153;
              v86[80] = v155;
              v86[81] = v156;
              v86[82] = v157;
              v86[83] = v158;
              v86[84] = v163;
              v86[85] = v164;
              v86[86] = v165;
              v86[87] = v166;
              v174 = (v79 + v366 + 128);
              v86[88] = v159;
              v86[89] = v160;
              v86[90] = v161;
              v86[91] = v162;
              v86[92] = v167;
              v86[93] = v168;
              v86[94] = v169;
              v86[95] = v170;
              v78[2] = -1;
              v377 = *(v79 + v366 + 192);
              v382 = *(v79 + v366 + 208);
              v387 = *(v79 + v366 + 224);
              v392 = *(v79 + v366 + 240);
              v175 = *(v174 + a11);
              v176 = *(v174 + a11 + 16);
              v177 = *(v174 + a11 + 32);
              v178 = *(v174 + a11 + 48);
              v179 = *(v174 + a11 + 64);
              v180 = *(v174 + a11 + 80);
              v181 = *(v174 + a11 + 96);
              v182 = *(v174 + a11 + 112);
              v184 = *(v174 + 2 * a11);
              v185 = *(v174 + v365 + 16);
              v186 = *(v174 + v365 + 32);
              v187 = *(v174 + v365 + 48);
              v183 = (v174 + v365 + a11);
              v188 = *(v174 + v365 + 64);
              v189 = *(v174 + v365 + 80);
              v190 = *(v174 + v365 + 96);
              v191 = *(v174 + v365 + 112);
              v192 = *v183;
              v193 = v183[1];
              v194 = v183[2];
              v195 = v183[3];
              v183 += 4;
              v196 = *v183;
              v197 = v183[1];
              v198 = v183[2];
              v199 = v183[3];
              v200 = *(v79 + v366 + 144);
              v201 = *(v79 + v366 + 160);
              v202 = *(v79 + v366 + 176);
              v86[96] = *v174;
              v86[97] = v200;
              v86[98] = v201;
              v86[99] = v202;
              v86[100] = v175;
              v86[101] = v176;
              v86[102] = v177;
              v86[103] = v178;
              v86[104] = v377;
              v86[105] = v382;
              v86[106] = v387;
              v86[107] = v392;
              v86[108] = v179;
              v86[109] = v180;
              v86[110] = v181;
              v86[111] = v182;
              v86[112] = v184;
              v86[113] = v185;
              v86[114] = v186;
              v86[115] = v187;
              v86[116] = v192;
              v86[117] = v193;
              v86[118] = v194;
              v86[119] = v195;
              v86[120] = v188;
              v86[121] = v189;
              v86[122] = v190;
              v86[123] = v191;
              v86[124] = v196;
              v86[125] = v197;
              v86[126] = v198;
              v86[127] = v199;
              v78[3] = -1;
              goto LABEL_86;
            }

            v81 = (v409 + v60);
            v82 = v49;
            v83 = v50;
            v84 = (v410 + v72);
            v85 = v47;
            memcpy(__dst, (v409 + v60), sizeof(__dst));
            v47 = v85;
            v78 = v84;
            v86 = __dst;
            v50 = v83;
            v45 = 8 * v43;
            v49 = v82;
            v80 = v81;
            v34 = v415;
          }

          else
          {
            v86 = (v409 + v60);
            if (!(v51 & 1 | (v50 < 8u) | (v411 < 8)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v34;
          v419 = v86;
          v427 = v50;
          v428 = v369;
          v423 = v371;
          v424 = v47 - v45;
          v420 = v78;
          v421 = v79;
          v422 = a11;
          v425 = v370;
          v426 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v34 + 8) + 16552), block);
            v34 = v415;
LABEL_86:
            v16 = v406;
            v203 = v43 + 1;
            if (!v417)
            {
              goto LABEL_26;
            }

LABEL_127:
            memcpy(v80, v86, 0x800uLL);
            v34 = v415;
            goto LABEL_26;
          }

          v204 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v430, 256, v86, *v78);
          v205 = v204 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v432, 256, v204, v78[1]);
          v206 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v433, 256, v205, v78[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v434, 256, v205 + v206, v78[3]);
          v207 = v425;
          v16 = v406;
          if (v425 && v426)
          {
            v208 = 0;
            v209 = 2 * v424;
            v210 = &v431[16 * v423 - 1 + v209];
            v211 = v421;
            v212 = v422;
            v213 = 32 * v426;
            if (v213)
            {
              v214 = (v213 - 1) >> 32 == 0;
            }

            else
            {
              v214 = 0;
            }

            v215 = !v214;
            v217 = v210 < (v421 + v422 * (v425 - 1) + v213) && v421 < &__dst[256 * v425 + 1792 + 256 * v423 + v213 + v209 * 16];
            v218 = v215 | (v422 < 0) | v217;
            v219 = &v431[16 * v423 + v209];
            v220 = v421 + 1;
            do
            {
              v221 = v220;
              v222 = v219;
              v223 = v213;
              if (v218)
              {
                v224 = 0;
                do
                {
                  *(v210 + v224) = *(v211 + v224);
                  ++v224;
                }

                while (v213 > v224);
              }

              else
              {
                do
                {
                  v225 = *v221;
                  *(v222 - 1) = *(v221 - 1);
                  *v222 = v225;
                  v222 += 2;
                  v221 += 2;
                  v223 -= 32;
                }

                while (v223);
              }

              ++v208;
              v219 += 16;
              v220 = (v220 + v212);
              v210 += 16;
              v211 = (v211 + v212);
            }

            while (v208 != v207);
          }

          v226 = 0;
          v227 = v419;
          v228 = v420;
          v229 = v427;
          v230 = v428;
          if (v427)
          {
            v34 = v415;
            if (v428)
            {
              v378 = v431[3];
              v383 = v431[4];
              v388 = v431[5];
              v393 = v431[6];
              v231 = v432[8];
              v232 = v432[9];
              v233 = v432[10];
              v234 = v432[11];
              v235 = v432[12];
              v236 = v432[13];
              v237 = v432[14];
              v238 = v432[15];
              v239 = v432[24];
              v240 = v432[25];
              v241 = v432[26];
              v242 = v432[27];
              v243 = v432[28];
              v244 = v432[29];
              v245 = v432[30];
              v246 = v432[31];
              v247 = v432[40];
              v248 = v432[41];
              v249 = v432[42];
              v250 = v432[43];
              v251 = v432[44];
              v252 = v432[45];
              v253 = v432[46];
              v254 = v432[47];
              v255 = v431[0];
              v256 = v431[1];
              v257 = v431[2];
              *v419 = v430;
              v227[1] = v255;
              v227[2] = v256;
              v227[3] = v257;
              v227[4] = v231;
              v227[5] = v232;
              v227[6] = v233;
              v227[7] = v234;
              v227[8] = v378;
              v227[9] = v383;
              v227[10] = v388;
              v227[11] = v393;
              v227[12] = v235;
              v227[13] = v236;
              v227[14] = v237;
              v227[15] = v238;
              v227[16] = v239;
              v227[17] = v240;
              v227[18] = v241;
              v227[19] = v242;
              v227[20] = v247;
              v227[21] = v248;
              v227[22] = v249;
              v227[23] = v250;
              v227[24] = v243;
              v227[25] = v244;
              v227[26] = v245;
              v227[27] = v246;
              v258 = v227 + 28;
              v227 += 32;
              *v258 = v251;
              v258[1] = v252;
              v258[2] = v253;
              v258[3] = v254;
              v226 = -1;
            }
          }

          else
          {
            v34 = v415;
          }

          v203 = v43 + 1;
          *v228 = v226;
          if (v229 < 5 || v230 == 0)
          {
            v288 = 0;
          }

          else
          {
            v394 = v432[4];
            v397 = v432[5];
            v400 = v432[6];
            v403 = v432[7];
            v260 = v432[16];
            v261 = v432[17];
            v262 = v432[18];
            v263 = v432[19];
            v264 = v432[20];
            v265 = v432[21];
            v266 = v432[22];
            v267 = v432[23];
            v268 = v432[32];
            v269 = v432[33];
            v270 = v432[34];
            v271 = v432[35];
            v272 = v432[36];
            v273 = v432[37];
            v274 = v432[38];
            v275 = v432[39];
            v276 = v432[48];
            v277 = v432[49];
            v278 = v432[50];
            v279 = v432[51];
            v280 = v432[52];
            v281 = v432[53];
            v282 = v432[54];
            v283 = v432[55];
            v284 = v432[1];
            v285 = v432[2];
            v286 = v432[3];
            *v227 = v432[0];
            v227[1] = v284;
            v227[2] = v285;
            v227[3] = v286;
            v227[4] = v260;
            v227[5] = v261;
            v227[6] = v262;
            v227[7] = v263;
            v227[8] = v394;
            v227[9] = v397;
            v227[10] = v400;
            v227[11] = v403;
            v227[12] = v264;
            v227[13] = v265;
            v227[14] = v266;
            v227[15] = v267;
            v227[16] = v268;
            v227[17] = v269;
            v227[18] = v270;
            v227[19] = v271;
            v227[20] = v276;
            v227[21] = v277;
            v227[22] = v278;
            v227[23] = v279;
            v227[24] = v272;
            v227[25] = v273;
            v227[26] = v274;
            v227[27] = v275;
            v287 = v227 + 28;
            v227 += 32;
            *v287 = v280;
            v287[1] = v281;
            v287[2] = v282;
            v287[3] = v283;
            v288 = -1;
          }

          v289 = 0;
          v228[1] = v288;
          if (v229 && v230 >= 5)
          {
            v395 = v433[4];
            v398 = v433[5];
            v401 = v433[6];
            v404 = v433[7];
            v290 = v434[8];
            v291 = v434[9];
            v292 = v434[10];
            v293 = v434[11];
            v294 = v434[12];
            v295 = v434[13];
            v296 = v434[14];
            v297 = v434[15];
            v298 = v434[24];
            v299 = v434[25];
            v300 = v434[26];
            v301 = v434[27];
            v302 = v434[28];
            v303 = v434[29];
            v304 = v434[30];
            v305 = v434[31];
            v306 = v434[40];
            v307 = v434[41];
            v308 = v434[42];
            v309 = v434[43];
            v310 = v434[44];
            v311 = v434[45];
            v312 = v434[46];
            v313 = v434[47];
            v314 = v433[1];
            v315 = v433[2];
            v316 = v433[3];
            *v227 = v433[0];
            v227[1] = v314;
            v227[2] = v315;
            v227[3] = v316;
            v227[4] = v290;
            v227[5] = v291;
            v227[6] = v292;
            v227[7] = v293;
            v227[8] = v395;
            v227[9] = v398;
            v227[10] = v401;
            v227[11] = v404;
            v227[12] = v294;
            v227[13] = v295;
            v227[14] = v296;
            v227[15] = v297;
            v227[16] = v298;
            v227[17] = v299;
            v227[18] = v300;
            v227[19] = v301;
            v227[20] = v306;
            v227[21] = v307;
            v227[22] = v308;
            v227[23] = v309;
            v227[24] = v302;
            v227[25] = v303;
            v227[26] = v304;
            v227[27] = v305;
            v317 = v227 + 28;
            v227 += 32;
            *v317 = v310;
            v317[1] = v311;
            v317[2] = v312;
            v317[3] = v313;
            v289 = -1;
          }

          v318 = 0;
          v228[2] = v289;
          if (v229 >= 5 && v230 >= 5)
          {
            v396 = v434[4];
            v399 = v434[5];
            v402 = v434[6];
            v405 = v434[7];
            v319 = v434[16];
            v320 = v434[17];
            v321 = v434[18];
            v322 = v434[19];
            v323 = v434[20];
            v324 = v434[21];
            v325 = v434[22];
            v326 = v434[23];
            v327 = v434[32];
            v328 = v434[33];
            v329 = v434[34];
            v330 = v434[35];
            v331 = v434[36];
            v332 = v434[37];
            v333 = v434[38];
            v334 = v434[39];
            v335 = v434[48];
            v336 = v434[49];
            v337 = v434[50];
            v338 = v434[51];
            v339 = v434[52];
            v340 = v434[53];
            v341 = v434[54];
            v342 = v434[55];
            v343 = v434[1];
            v344 = v434[2];
            v345 = v434[3];
            *v227 = v434[0];
            v227[1] = v343;
            v227[2] = v344;
            v227[3] = v345;
            v227[4] = v319;
            v227[5] = v320;
            v227[6] = v321;
            v227[7] = v322;
            v227[8] = v396;
            v227[9] = v399;
            v227[10] = v402;
            v227[11] = v405;
            v227[12] = v323;
            v227[13] = v324;
            v227[14] = v325;
            v227[15] = v326;
            v227[16] = v327;
            v227[17] = v328;
            v227[18] = v329;
            v227[19] = v330;
            v227[20] = v335;
            v227[21] = v336;
            v227[22] = v337;
            v227[23] = v338;
            v227[24] = v331;
            v227[25] = v332;
            v227[26] = v333;
            v227[27] = v334;
            v346 = v227 + 28;
            v318 = -1;
            *v346 = v339;
            v346[1] = v340;
            v346[2] = v341;
            v346[3] = v342;
          }

          v228[3] = v318;
          if (v417)
          {
            goto LABEL_127;
          }

LABEL_26:
          v29 = v43 == v407 >> 3;
          v43 = v203;
        }

        while (!v29);
        v29 = v25++ == v364;
      }

      while (!v29);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v224 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v193 = a8;
  v175 = a8 + a10 - 1;
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
  v174 = v175 >> 3;
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
      v187 = 0;
LABEL_32:
      v184 = v26 - 3;
      v178 = v25 - 3;
      v32 = -1 << *(*(a1 + 208) + 48);
      v172 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
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

    v187 = v31 >= v25;
    goto LABEL_32;
  }

  v187 = 0;
  v172 = 0;
  v178 = 0;
  v184 = 0;
LABEL_33:
  if (v18 <= v174)
  {
    v186 = a7 + a9 - 1;
    if (a7 >> 3 <= v186 >> 3)
    {
      v194 = v19 >> 3;
      v180 = v19 & 7;
      v170 = v20 & 7;
      v171 = v20 >> 3;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v34.i8 = vcgt_u32(v33, 0xF0000000FLL);
      v35.i64[0] = -1;
      *v36.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 3uLL))))))), *v34.i8);
      v177 = v36.i64[0];
      v179 = v36.i32[0] | v36.i32[1];
      v176 = v34.i64[0];
      v185 = v24;
      do
      {
        v37 = (8 * v18) | 7;
        if (8 * v18 <= v193)
        {
          v38 = v193;
        }

        else
        {
          v38 = 8 * v18;
        }

        if (v175 < v37)
        {
          v37 = v175;
        }

        v183 = v38 - 8 * v18;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v170;
        v182 = v40;
        v42 = v40 != 8;
        v43 = v170 + 1;
        if (v18 != v171)
        {
          v43 = 8;
          v41 = v42;
        }

        v181 = v41;
        v44 = a7 >> 3;
        v191 = a3 + (v38 - v193) * a11;
        v192 = v43;
        v190 = v43;
        do
        {
          v45 = 8 * v44;
          v46 = 8 * (v44 + 1) - 1;
          if (8 * v44 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 8 * v44;
          }

          if (v186 < v46)
          {
            v46 = a7 + a9 - 1;
          }

          v48 = v46 - v47;
          v49 = v46 - v47 + 1;
          if (v44 == v194)
          {
            v50 = v180 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (8 * v18 >= v193 && v45 >= a7)
          {
            v52 = v48 != v180;
            if (v44 != v194)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v181;
          }

          if (v187)
          {
            if (v184 | v178)
            {
              v53 = 0;
              v54 = 0;
              v55 = v178 != 0;
              v56 = 1;
              v57 = v184 != 0;
              v58 = v178;
              v59 = v184;
              do
              {
                --v59;
                if (v57)
                {
                  v54 |= (v44 & ~(-1 << v184) & v56) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                --v58;
                if (v55)
                {
                  v54 |= (v18 & ~(-1 << v178) & v56) << v53++;
                }

                else
                {
                  v58 = 0;
                }

                v56 *= 2;
                --v53;
                v55 = v58 != 0;
                v57 = v59 != 0;
              }

              while (v58 | v59);
              v60 = v54 << 8;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(a1 + 336) * ((v44 >> v184) + (v18 >> v178) * v172);
          }

          else if (v179)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v176;
            v64 = BYTE4(v176);
            v67 = v177;
            v66 = HIDWORD(v177);
            do
            {
              --v66;
              if (v64)
              {
                v62 |= (v63 & v44) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v65)
              {
                v62 |= (v63 & v18) << v61++;
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

          v70 = v69 + 7;
          if (v70 < 0x10)
          {
            v71 = 0;
          }

          else
          {
            v71 = 32 - __clz(~(-1 << -__clz((v70 >> 3) - 1)));
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
          v82 = (v191 + 4 * (v47 - a7));
          v83 = (a2 + v68);
          if (v24)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v190 < 8)))
            {
              v91 = v206;
LABEL_112:
              v92 = a11;
              v93 = v91;
              v94 = (a4 + v80);
              v95 = v192;
              goto LABEL_204;
            }

            v84 = v83[13];
            v206[12] = v83[12];
            v206[13] = v84;
            v85 = v83[15];
            v207[0] = v83[14];
            v207[1] = v85;
            v86 = v83[9];
            v206[8] = v83[8];
            v206[9] = v86;
            v87 = v83[11];
            v206[10] = v83[10];
            v206[11] = v87;
            v88 = v83[5];
            v206[4] = v83[4];
            v206[5] = v88;
            v89 = v83[7];
            v206[6] = v83[6];
            v206[7] = v89;
            v90 = v83[1];
            v206[0] = *v83;
            v206[1] = v90;
            v36 = v83[2];
            v34 = v83[3];
            v91 = v206;
            v206[2] = v36;
            v206[3] = v34;
          }

          else
          {
            v91 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 8u) | (v190 < 8)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          v196 = v91;
          v204 = v50;
          v205 = v192;
          v200 = v183;
          v201 = v47 - v45;
          v197 = (a4 + v80);
          v198 = (v191 + 4 * (v47 - a7));
          v199 = a11;
          v202 = v182;
          v203 = v49;
          if ((v51 & 1) == 0)
          {
            v96 = *v81;
            if (v96 == 96)
            {
              v36 = vld1q_dup_s8(v91);
              v208 = v36;
              v210 = v36;
              v97 = 1;
            }

            else if (v96 == 31)
            {
              v36.i64[0] = *v91;
              v34.i64[0] = *(v91 + 1);
              v35.i64[0] = *(v91 + 2);
              v98 = *(v91 + 3);
              v208.i64[0] = *v91;
              v208.i64[1] = v35.i64[0];
              v210.i64[0] = v34.i64[0];
              v210.i64[1] = v98;
              v97 = 32;
            }

            else if (*v81)
            {
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v208, 32, v91, v96, *v36.i64, *v34.i8);
            }

            else
            {
              v97 = 0;
              v208 = 0uLL;
              v210 = 0uLL;
            }

            v99 = v91 + v97;
            v100 = v81[1];
            if (v100 == 96)
            {
              v36 = vld1q_dup_s8(v99);
              v212 = v36;
              v214 = v36;
              v101 = 1;
            }

            else if (v100 == 31)
            {
              v36.i64[0] = *v99;
              v34.i64[0] = *(v99 + 8);
              v35.i64[0] = *(v99 + 16);
              v102 = *(v99 + 24);
              v212.i64[0] = *v99;
              v212.i64[1] = v35.i64[0];
              v214.i64[0] = v34.i64[0];
              v214.i64[1] = v102;
              v101 = 32;
            }

            else if (v81[1])
            {
              v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v212, 32, v99, v100, *v36.i64, *v34.i8);
            }

            else
            {
              v101 = 0;
              v212 = 0uLL;
              v214 = 0uLL;
            }

            v103 = v99 + v101;
            v104 = v81[2];
            if (v104 == 96)
            {
              v36 = vld1q_dup_s8(v103);
              v209 = v36;
              v211 = v36;
              v105 = 1;
            }

            else if (v104 == 31)
            {
              v36.i64[0] = *v103;
              v34.i64[0] = *(v103 + 8);
              v35.i64[0] = *(v103 + 16);
              v106 = *(v103 + 24);
              v209.i64[0] = *v103;
              v209.i64[1] = v35.i64[0];
              v211.i64[0] = v34.i64[0];
              v211.i64[1] = v106;
              v105 = 32;
            }

            else if (v81[2])
            {
              v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v209, 32, v103, v104, *v36.i64, *v34.i8);
            }

            else
            {
              v105 = 0;
              v209 = 0uLL;
              v211 = 0uLL;
            }

            v107 = v103 + v105;
            v108 = v81[3];
            if (v108 == 96)
            {
              v36 = vld1q_dup_s8(v107);
              v213 = v36;
              v215 = v36;
              v109 = 1;
            }

            else if (v108 == 31)
            {
              v36.i64[0] = *v107;
              v34.i64[0] = *(v107 + 8);
              v35.i64[0] = *(v107 + 16);
              v110 = *(v107 + 24);
              v213.i64[0] = *v107;
              v213.i64[1] = v35.i64[0];
              v215.i64[0] = v34.i64[0];
              v215.i64[1] = v110;
              v109 = 32;
            }

            else if (v81[3])
            {
              v109 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v213, 32, v107, v108, *v36.i64, *v34.i8);
            }

            else
            {
              v109 = 0;
              v213 = 0uLL;
              v215 = 0uLL;
            }

            v111 = v107 + v109;
            v112 = v81[4];
            if (v112 == 96)
            {
              v36 = vld1q_dup_s8(v111);
              v216 = v36;
              v218 = v36;
              v113 = 1;
            }

            else if (v112 == 31)
            {
              v36.i64[0] = *v111;
              v34.i64[0] = *(v111 + 8);
              v35.i64[0] = *(v111 + 16);
              v114 = *(v111 + 24);
              v216.i64[0] = *v111;
              v216.i64[1] = v35.i64[0];
              v218.i64[0] = v34.i64[0];
              v218.i64[1] = v114;
              v113 = 32;
            }

            else if (v81[4])
            {
              v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v216, 32, v111, v112, *v36.i64, *v34.i8);
            }

            else
            {
              v113 = 0;
              v216 = 0uLL;
              v218 = 0uLL;
            }

            v115 = v111 + v113;
            v116 = v81[5];
            if (v116 == 96)
            {
              v36 = vld1q_dup_s8(v115);
              v220 = v36;
              v222 = v36;
              v117 = 1;
            }

            else if (v116 == 31)
            {
              v36.i64[0] = *v115;
              v34.i64[0] = *(v115 + 8);
              v35.i64[0] = *(v115 + 16);
              v118 = *(v115 + 24);
              v220.i64[0] = *v115;
              v220.i64[1] = v35.i64[0];
              v222.i64[0] = v34.i64[0];
              v222.i64[1] = v118;
              v117 = 32;
            }

            else if (v81[5])
            {
              v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v220, 32, v115, v116, *v36.i64, *v34.i8);
            }

            else
            {
              v117 = 0;
              v220 = 0uLL;
              v222 = 0uLL;
            }

            v119 = v115 + v117;
            v120 = v81[6];
            if (v120 == 96)
            {
              v36 = vld1q_dup_s8(v119);
              v217 = v36;
              v219 = v36;
              v121 = 1;
            }

            else if (v120 == 31)
            {
              v36.i64[0] = *v119;
              v34.i64[0] = *(v119 + 8);
              v35.i64[0] = *(v119 + 16);
              v122 = *(v119 + 24);
              v217.i64[0] = *v119;
              v217.i64[1] = v35.i64[0];
              v219.i64[0] = v34.i64[0];
              v219.i64[1] = v122;
              v121 = 32;
            }

            else if (v81[6])
            {
              v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 32, v119, v120, *v36.i64, *v34.i8);
            }

            else
            {
              v121 = 0;
              v217 = 0uLL;
              v219 = 0uLL;
            }

            v123 = v119 + v121;
            v124 = v81[7];
            if (v124 == 96)
            {
              v36 = vld1q_dup_s8(v123);
              v221 = v36;
              v223 = v36;
              v125 = v202;
              if (v202)
              {
                goto LABEL_172;
              }
            }

            else
            {
              if (v124 != 31)
              {
                if (v81[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v221, 32, v123, v124, *v36.i64, *v34.i8);
                  v125 = v202;
                  if (!v202)
                  {
                    goto LABEL_203;
                  }
                }

                else
                {
                  v221 = 0uLL;
                  v223 = 0uLL;
                  v125 = v202;
                  if (!v202)
                  {
                    goto LABEL_203;
                  }
                }

LABEL_172:
                v127 = v203;
                if (!v203)
                {
                  goto LABEL_203;
                }

                v128 = 0;
                v129 = 4 * v201;
                v130 = &v208.i8[32 * v200 + v129];
                v131 = v198;
                v132 = v199;
                v133 = 4 * v203;
                if (4 * v203)
                {
                  v134 = (4 * v203 - 1) >> 32 == 0;
                }

                else
                {
                  v134 = 0;
                }

                v135 = !v134;
                v137 = v130 < &v198->i8[4 * v203 + v199 * (v125 - 1)] && v198 < (&v207[2 * v125 + 2 * v200] + 4 * v203 + v129);
                v138 = v137 || v199 < 0;
                v139 = v133 & 0x1FFFFFFE0;
                v140 = v133 & 0x1FFFFFFF8;
                v141 = (v203 == 1) | v135 | v138;
                v142 = &v209.i8[32 * v200 + v129];
                v143 = v198 + 1;
                v144 = v130;
                v145 = v198;
                while (2)
                {
                  v146 = &v131->i8[v128 * v132];
                  v147 = &v130[32 * v128];
                  if (v141)
                  {
                    v148 = 0;
LABEL_200:
                    v157 = v148 + 1;
                    do
                    {
                      v158 = *v146++;
                      *v147++ = v158;
                    }

                    while (v133 > v157++);
                  }

                  else
                  {
                    if (v127 >= 8)
                    {
                      v150 = v143;
                      v151 = v142;
                      v152 = v133 & 0x1FFFFFFE0;
                      do
                      {
                        v36 = v150[-1];
                        v34 = *v150;
                        v151[-1] = v36;
                        *v151 = v34;
                        v151 += 2;
                        v150 += 2;
                        v152 -= 32;
                      }

                      while (v152);
                      if (v133 == v139)
                      {
                        goto LABEL_186;
                      }

                      v149 = v133 & 0x1FFFFFFE0;
                      if ((v127 & 6) == 0)
                      {
                        v146 += v139;
                        v147 += v139;
                        v148 = v133 & 0xFFFFFFE0;
                        goto LABEL_200;
                      }
                    }

                    else
                    {
                      v149 = 0;
                    }

                    v147 += v140;
                    v153 = -8 * ((v127 >> 1) & 0x3FFFFFFF) + v149;
                    v154 = (v145->i64 + v149);
                    v155 = &v144[v149];
                    do
                    {
                      v156 = *v154++;
                      v36.i64[0] = v156;
                      *v155++ = v156;
                      v153 += 8;
                    }

                    while (v153);
                    if (v133 != v140)
                    {
                      v146 += v140;
                      v148 = v133 & 0xFFFFFFF8;
                      goto LABEL_200;
                    }
                  }

LABEL_186:
                  ++v128;
                  v142 += 32;
                  v143 = (v143 + v132);
                  v145 = (v145 + v132);
                  v144 += 32;
                  if (v128 == v125)
                  {
                    goto LABEL_203;
                  }

                  continue;
                }
              }

              v36.i64[0] = *v123;
              v34.i64[0] = *(v123 + 8);
              v35.i64[0] = *(v123 + 16);
              v126 = *(v123 + 24);
              v221.i64[0] = *v123;
              v221.i64[1] = v35.i64[0];
              v223.i64[0] = v34.i64[0];
              v223.i64[1] = v126;
              v125 = v202;
              if (v202)
              {
                goto LABEL_172;
              }
            }

LABEL_203:
            v93 = v196;
            v94 = v197;
            v50 = v204;
            v95 = v205;
            v82 = &v208;
            v92 = 32;
LABEL_204:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, v92, v93, v94, v50, v95, *v36.i8, *v34.i64, *v35.i8);
            v24 = v185;
            if (!v185)
            {
              goto LABEL_46;
            }

            goto LABEL_205;
          }

          dispatch_sync(*(*(a1 + 8) + 16552), block);
          v24 = v185;
          if (!v185)
          {
            goto LABEL_46;
          }

LABEL_205:
          v160 = *v91;
          v161 = *(v91 + 1);
          v162 = *(v91 + 3);
          v83[2] = *(v91 + 2);
          v83[3] = v162;
          *v83 = v160;
          v83[1] = v161;
          v163 = *(v91 + 4);
          v164 = *(v91 + 5);
          v165 = *(v91 + 7);
          v83[6] = *(v91 + 6);
          v83[7] = v165;
          v83[4] = v163;
          v83[5] = v164;
          v166 = *(v91 + 8);
          v167 = *(v91 + 9);
          v168 = *(v91 + 11);
          v83[10] = *(v91 + 10);
          v83[11] = v168;
          v83[8] = v166;
          v83[9] = v167;
          v36 = *(v91 + 12);
          v34 = *(v91 + 13);
          v35 = *(v91 + 14);
          v169 = *(v91 + 15);
          v83[14] = v35;
          v83[15] = v169;
          v83[12] = v36;
          v83[13] = v34;
LABEL_46:
          v21 = v44++ == v186 >> 3;
        }

        while (!v21);
        v21 = v18++ == v174;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v246 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v215 = a8;
  v197 = a8 + a10 - 1;
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
  v196 = v197 >> 3;
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
      v209 = 0;
LABEL_32:
      v206 = v26 - 3;
      v200 = v25 - 3;
      v32 = -1 << *(*(a1 + 208) + 48);
      v194 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
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

    v209 = v31 >= v25;
    goto LABEL_32;
  }

  v209 = 0;
  v194 = 0;
  v200 = 0;
  v206 = 0;
LABEL_33:
  if (v18 <= v196)
  {
    v208 = a7 + a9 - 1;
    if (a7 >> 3 <= v208 >> 3)
    {
      v216 = v19 >> 3;
      v202 = v19 & 7;
      v192 = v20 & 7;
      v193 = v20 >> 3;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v34.i8 = vcgt_u32(v33, 0xF0000000FLL);
      *v35.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 3uLL))))))), *v34.i8);
      v199 = v35.i64[0];
      v201 = v35.i32[0] | v35.i32[1];
      v198 = v34.i64[0];
      v207 = v24;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v215)
        {
          v37 = v215;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v197 < v36)
        {
          v36 = v197;
        }

        v205 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v192;
        v204 = v39;
        v41 = v39 != 8;
        v42 = v192 + 1;
        if (v18 != v193)
        {
          v42 = 8;
          v40 = v41;
        }

        v203 = v40;
        v43 = a7 >> 3;
        v213 = a3 + (v37 - v215) * a11;
        v214 = v42;
        v212 = v42;
        do
        {
          v44 = 8 * v43;
          v45 = 8 * (v43 + 1) - 1;
          if (8 * v43 <= a7)
          {
            v46 = a7;
          }

          else
          {
            v46 = 8 * v43;
          }

          if (v208 < v45)
          {
            v45 = a7 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v45 - v46 + 1;
          if (v43 == v216)
          {
            v49 = v202 + 1;
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (8 * v18 >= v215 && v44 >= a7)
          {
            v51 = v47 != v202;
            if (v43 != v216)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v203;
          }

          if (v209)
          {
            if (v206 | v200)
            {
              v52 = 0;
              v53 = 0;
              v54 = v200 != 0;
              v55 = 1;
              v56 = v206 != 0;
              v57 = v200;
              v58 = v206;
              do
              {
                --v58;
                if (v56)
                {
                  v53 |= (v43 & ~(-1 << v206) & v55) << v52++;
                }

                else
                {
                  v58 = 0;
                }

                --v57;
                if (v54)
                {
                  v53 |= (v18 & ~(-1 << v200) & v55) << v52++;
                }

                else
                {
                  v57 = 0;
                }

                v55 *= 2;
                --v52;
                v54 = v57 != 0;
                v56 = v58 != 0;
              }

              while (v57 | v58);
              v59 = v53 << 8;
            }

            else
            {
              v59 = 0;
            }

            v67 = v59 + *(a1 + 336) * ((v43 >> v206) + (v18 >> v200) * v194);
          }

          else if (v201)
          {
            v60 = 0;
            v61 = 0;
            v62 = 1;
            v64 = v198;
            v63 = BYTE4(v198);
            v66 = v199;
            v65 = HIDWORD(v199);
            do
            {
              --v65;
              if (v63)
              {
                v61 |= (v62 & v43) << v60++;
              }

              else
              {
                v65 = 0;
              }

              --v66;
              if (v64)
              {
                v61 |= (v62 & v18) << v60++;
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

          v69 = v68 + 7;
          if (v69 < 0x10)
          {
            v70 = 0;
          }

          else
          {
            v70 = 32 - __clz(~(-1 << -__clz((v69 >> 3) - 1)));
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
          v81 = (a2 + v67);
          if (v24)
          {
            if (!(v50 & 1 | (v49 < 8u) | (v212 < 8)))
            {
              v89 = v228;
LABEL_112:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock((v213 + 4 * (v46 - a7)), a11, v89, v80, v49, v214);
              v24 = v207;
              if (!v207)
              {
                goto LABEL_46;
              }

LABEL_230:
              v182 = *v89;
              v183 = v89[1];
              v184 = v89[3];
              v81[2] = v89[2];
              v81[3] = v184;
              *v81 = v182;
              v81[1] = v183;
              v185 = v89[4];
              v186 = v89[5];
              v187 = v89[7];
              v81[6] = v89[6];
              v81[7] = v187;
              v81[4] = v185;
              v81[5] = v186;
              v188 = v89[8];
              v189 = v89[9];
              v190 = v89[11];
              v81[10] = v89[10];
              v81[11] = v190;
              v81[8] = v188;
              v81[9] = v189;
              v35 = v89[12];
              v34 = v89[13];
              v191 = v89[15];
              v81[14] = v89[14];
              v81[15] = v191;
              v81[12] = v35;
              v81[13] = v34;
              goto LABEL_46;
            }

            v82 = v81[13];
            v228[12] = v81[12];
            v228[13] = v82;
            v83 = v81[15];
            v229[0] = v81[14];
            v229[1] = v83;
            v84 = v81[9];
            v228[8] = v81[8];
            v228[9] = v84;
            v85 = v81[11];
            v228[10] = v81[10];
            v228[11] = v85;
            v86 = v81[5];
            v228[4] = v81[4];
            v228[5] = v86;
            v87 = v81[7];
            v228[6] = v81[6];
            v228[7] = v87;
            v88 = v81[1];
            v228[0] = *v81;
            v228[1] = v88;
            v35 = v81[2];
            v34 = v81[3];
            v89 = v228;
            v228[2] = v35;
            v228[3] = v34;
          }

          else
          {
            v89 = (a2 + v67);
            if (!(v50 & 1 | (v49 < 8u) | (v212 < 8)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          v218 = v89;
          v226 = v49;
          v227 = v214;
          v222 = v205;
          v223 = v46 - v44;
          v219 = (a4 + v79);
          v220 = (v213 + 4 * (v46 - a7));
          v221 = a11;
          v224 = v204;
          v225 = v48;
          if (v50)
          {
            dispatch_sync(*(*(a1 + 8) + 16552), block);
            v24 = v207;
            if (!v207)
            {
              goto LABEL_46;
            }

            goto LABEL_230;
          }

          v90 = *v80;
          if (v90 == 96)
          {
            v35 = vld1q_dup_s8(v89->i8);
            v230 = v35;
            v232 = v35;
            v91 = 1;
          }

          else if (v90 == 31)
          {
            v35.i64[0] = v89->i64[0];
            v34.i64[0] = v89->i64[1];
            v92 = v89[1].i64[0];
            v93 = v89[1].i64[1];
            v230.i64[0] = v89->i64[0];
            v230.i64[1] = v92;
            v232.i64[0] = v34.i64[0];
            v232.i64[1] = v93;
            v91 = 32;
          }

          else if (*v80)
          {
            v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 32, v89, v90, *v35.i64, *v34.i8);
          }

          else
          {
            v91 = 0;
            v230 = 0uLL;
            v232 = 0uLL;
          }

          v94 = v89->i64 + v91;
          v95 = v80[1];
          if (v95 == 96)
          {
            v35 = vld1q_dup_s8(v94);
            v234 = v35;
            v236 = v35;
            v96 = 1;
          }

          else if (v95 == 31)
          {
            v35.i64[0] = *v94;
            v34.i64[0] = *(v94 + 8);
            v97 = *(v94 + 16);
            v98 = *(v94 + 24);
            v234.i64[0] = *v94;
            v234.i64[1] = v97;
            v236.i64[0] = v34.i64[0];
            v236.i64[1] = v98;
            v96 = 32;
          }

          else if (v80[1])
          {
            v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 32, v94, v95, *v35.i64, *v34.i8);
          }

          else
          {
            v96 = 0;
            v234 = 0uLL;
            v236 = 0uLL;
          }

          v99 = v94 + v96;
          v100 = v80[2];
          if (v100 == 96)
          {
            v35 = vld1q_dup_s8(v99);
            v231 = v35;
            v233 = v35;
            v101 = 1;
          }

          else if (v100 == 31)
          {
            v35.i64[0] = *v99;
            v34.i64[0] = *(v99 + 8);
            v102 = *(v99 + 16);
            v103 = *(v99 + 24);
            v231.i64[0] = *v99;
            v231.i64[1] = v102;
            v233.i64[0] = v34.i64[0];
            v233.i64[1] = v103;
            v101 = 32;
          }

          else if (v80[2])
          {
            v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v231, 32, v99, v100, *v35.i64, *v34.i8);
          }

          else
          {
            v101 = 0;
            v231 = 0uLL;
            v233 = 0uLL;
          }

          v104 = v99 + v101;
          v105 = v80[3];
          if (v105 == 96)
          {
            v35 = vld1q_dup_s8(v104);
            v235 = v35;
            v237 = v35;
            v106 = 1;
          }

          else if (v105 == 31)
          {
            v35.i64[0] = *v104;
            v34.i64[0] = *(v104 + 8);
            v107 = *(v104 + 16);
            v108 = *(v104 + 24);
            v235.i64[0] = *v104;
            v235.i64[1] = v107;
            v237.i64[0] = v34.i64[0];
            v237.i64[1] = v108;
            v106 = 32;
          }

          else if (v80[3])
          {
            v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 32, v104, v105, *v35.i64, *v34.i8);
          }

          else
          {
            v106 = 0;
            v235 = 0uLL;
            v237 = 0uLL;
          }

          v109 = v104 + v106;
          v110 = v80[4];
          if (v110 == 96)
          {
            v35 = vld1q_dup_s8(v109);
            v238 = v35;
            v240 = v35;
            v111 = 1;
          }

          else if (v110 == 31)
          {
            v35.i64[0] = *v109;
            v34.i64[0] = *(v109 + 8);
            v112 = *(v109 + 16);
            v113 = *(v109 + 24);
            v238.i64[0] = *v109;
            v238.i64[1] = v112;
            v240.i64[0] = v34.i64[0];
            v240.i64[1] = v113;
            v111 = 32;
          }

          else if (v80[4])
          {
            v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 32, v109, v110, *v35.i64, *v34.i8);
          }

          else
          {
            v111 = 0;
            v238 = 0uLL;
            v240 = 0uLL;
          }

          v114 = v109 + v111;
          v115 = v80[5];
          if (v115 == 96)
          {
            v35 = vld1q_dup_s8(v114);
            v242 = v35;
            v244 = v35;
            v116 = 1;
          }

          else if (v115 == 31)
          {
            v35.i64[0] = *v114;
            v34.i64[0] = *(v114 + 8);
            v117 = *(v114 + 16);
            v118 = *(v114 + 24);
            v242.i64[0] = *v114;
            v242.i64[1] = v117;
            v244.i64[0] = v34.i64[0];
            v244.i64[1] = v118;
            v116 = 32;
          }

          else if (v80[5])
          {
            v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 32, v114, v115, *v35.i64, *v34.i8);
          }

          else
          {
            v116 = 0;
            v242 = 0uLL;
            v244 = 0uLL;
          }

          v119 = v114 + v116;
          v120 = v80[6];
          if (v120 == 96)
          {
            v35 = vld1q_dup_s8(v119);
            v239 = v35;
            v241 = v35;
            v121 = 1;
          }

          else if (v120 == 31)
          {
            v35.i64[0] = *v119;
            v34.i64[0] = *(v119 + 8);
            v122 = *(v119 + 16);
            v123 = *(v119 + 24);
            v239.i64[0] = *v119;
            v239.i64[1] = v122;
            v241.i64[0] = v34.i64[0];
            v241.i64[1] = v123;
            v121 = 32;
          }

          else if (v80[6])
          {
            v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v239, 32, v119, v120, *v35.i64, *v34.i8);
          }

          else
          {
            v121 = 0;
            v239 = 0uLL;
            v241 = 0uLL;
          }

          v124 = v119 + v121;
          v125 = v80[7];
          if (v125 == 96)
          {
            v35 = vld1q_dup_s8(v124);
            v243 = v35;
            v245 = v35;
            v126 = v224;
            if (v224)
            {
              goto LABEL_173;
            }
          }

          else if (v125 == 31)
          {
            v35.i64[0] = *v124;
            v34.i64[0] = *(v124 + 8);
            v127 = *(v124 + 16);
            v128 = *(v124 + 24);
            v243.i64[0] = *v124;
            v243.i64[1] = v127;
            v245.i64[0] = v34.i64[0];
            v245.i64[1] = v128;
            v126 = v224;
            if (v224)
            {
              goto LABEL_173;
            }
          }

          else
          {
            if (v80[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 32, v124, v125, *v35.i64, *v34.i8);
              v126 = v224;
              if (!v224)
              {
                goto LABEL_204;
              }

LABEL_173:
              v129 = v225;
              if (!v225)
              {
                goto LABEL_204;
              }

              v130 = 0;
              v131 = 4 * v223;
              v132 = &v230.i8[32 * v222 + v131];
              v133 = v220;
              v134 = v221;
              v135 = 4 * v225;
              if (4 * v225)
              {
                v136 = (4 * v225 - 1) >> 32 == 0;
              }

              else
              {
                v136 = 0;
              }

              v137 = !v136;
              v139 = v132 < &v220->i8[4 * v225 + v221 * (v126 - 1)] && v220 < (&v229[2 * v126 + 2 * v222] + 4 * v225 + v131);
              v140 = v139 || v221 < 0;
              v141 = v135 & 0x1FFFFFFE0;
              v142 = v135 & 0x1FFFFFFF8;
              v143 = (v225 == 1) | v137 | v140;
              v144 = &v231.i8[32 * v222 + v131];
              v145 = v220 + 1;
              v146 = v132;
              v147 = v220;
              while (2)
              {
                v148 = &v133->i8[v130 * v134];
                v149 = &v132[32 * v130];
                if (v143)
                {
                  v150 = 0;
LABEL_201:
                  v159 = v150 + 1;
                  do
                  {
                    v160 = *v148++;
                    *v149++ = v160;
                  }

                  while (v135 > v159++);
                }

                else
                {
                  if (v129 >= 8)
                  {
                    v152 = v145;
                    v153 = v144;
                    v154 = v135 & 0x1FFFFFFE0;
                    do
                    {
                      v35 = v152[-1];
                      v34 = *v152;
                      v153[-1] = v35;
                      *v153 = v34;
                      v153 += 2;
                      v152 += 2;
                      v154 -= 32;
                    }

                    while (v154);
                    if (v135 == v141)
                    {
                      goto LABEL_187;
                    }

                    v151 = v135 & 0x1FFFFFFE0;
                    if ((v129 & 6) == 0)
                    {
                      v148 += v141;
                      v149 += v141;
                      v150 = v135 & 0xFFFFFFE0;
                      goto LABEL_201;
                    }
                  }

                  else
                  {
                    v151 = 0;
                  }

                  v149 += v142;
                  v155 = -8 * ((v129 >> 1) & 0x3FFFFFFF) + v151;
                  v156 = (v147->i64 + v151);
                  v157 = &v146[v151];
                  do
                  {
                    v158 = *v156++;
                    v35.i64[0] = v158;
                    *v157++ = v158;
                    v155 += 8;
                  }

                  while (v155);
                  if (v135 != v142)
                  {
                    v148 += v142;
                    v150 = v135 & 0xFFFFFFF8;
                    goto LABEL_201;
                  }
                }

LABEL_187:
                ++v130;
                v144 += 32;
                v145 = (v145 + v134);
                v147 = (v147 + v134);
                v146 += 32;
                if (v130 == v126)
                {
                  goto LABEL_204;
                }

                continue;
              }
            }

            v243 = 0uLL;
            v245 = 0uLL;
            v126 = v224;
            if (v224)
            {
              goto LABEL_173;
            }
          }

LABEL_204:
          v162 = 0;
          v164 = v218;
          v163 = v219;
          v165 = v226;
          v166 = v227;
          if (v226)
          {
            v24 = v207;
            if (v227)
            {
              v34.i64[0] = v230.i64[1];
              v35.i64[0] = v230.i64[0];
              v167 = v232;
              *v218 = v230.i64[0];
              v164[1] = v167.i64[0];
              v164[2] = v34.i64[0];
              v164[3] = v167.i64[1];
              v164 += 4;
              v162 = 31;
            }
          }

          else
          {
            v24 = v207;
          }

          v168 = 0;
          *v163 = v162;
          if (v165 && v166 >= 3)
          {
            v34.i64[0] = v234.i64[1];
            v35.i64[0] = v234.i64[0];
            v169 = v236;
            *v164 = v234.i64[0];
            v164[1] = v169.i64[0];
            v164[2] = v34.i64[0];
            v164[3] = v169.i64[1];
            v164 += 4;
            v168 = 31;
          }

          v170 = 0;
          v163[1] = v168;
          if (v165 >= 5 && v166)
          {
            v34.i64[0] = v231.i64[1];
            v35.i64[0] = v231.i64[0];
            v171 = v233;
            *v164 = v231.i64[0];
            v164[1] = v171.i64[0];
            v164[2] = v34.i64[0];
            v164[3] = v171.i64[1];
            v164 += 4;
            v170 = 31;
          }

          v172 = 0;
          v163[2] = v170;
          if (v165 >= 5 && v166 >= 3)
          {
            v34.i64[0] = v235.i64[1];
            v35.i64[0] = v235.i64[0];
            v173 = v237;
            *v164 = v235.i64[0];
            v164[1] = v173.i64[0];
            v164[2] = v34.i64[0];
            v164[3] = v173.i64[1];
            v164 += 4;
            v172 = 31;
          }

          v174 = 0;
          v163[3] = v172;
          if (v165 && v166 >= 5)
          {
            v34.i64[0] = v238.i64[1];
            v35.i64[0] = v238.i64[0];
            v175 = v240;
            *v164 = v238.i64[0];
            v164[1] = v175.i64[0];
            v164[2] = v34.i64[0];
            v164[3] = v175.i64[1];
            v164 += 4;
            v174 = 31;
          }

          v176 = 0;
          v163[4] = v174;
          if (v165 && v166 >= 7)
          {
            v34.i64[0] = v242.i64[1];
            v35.i64[0] = v242.i64[0];
            v177 = v244;
            *v164 = v242.i64[0];
            v164[1] = v177.i64[0];
            v164[2] = v34.i64[0];
            v164[3] = v177.i64[1];
            v164 += 4;
            v176 = 31;
          }

          v178 = 0;
          v163[5] = v176;
          if (v165 >= 5 && v166 >= 5)
          {
            v34.i64[0] = v239.i64[1];
            v35.i64[0] = v239.i64[0];
            v179 = v241;
            *v164 = v239.i64[0];
            v164[1] = v179.i64[0];
            v164[2] = v34.i64[0];
            v164[3] = v179.i64[1];
            v164 += 4;
            v178 = 31;
          }

          v180 = 0;
          v163[6] = v178;
          if (v165 >= 5 && v166 >= 7)
          {
            v34.i64[0] = v243.i64[1];
            v35.i64[0] = v243.i64[0];
            v181 = v245;
            *v164 = v243.i64[0];
            v164[1] = v181.i64[0];
            v164[2] = v34.i64[0];
            v164[3] = v181.i64[1];
            v180 = 31;
          }

          v163[7] = v180;
          if (v24)
          {
            goto LABEL_230;
          }

LABEL_46:
          v21 = v43++ == v208 >> 3;
        }

        while (!v21);
        v21 = v18++ == v196;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v225 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v193 = a8;
  v17 = a8 >> 3;
  v176 = a8 + a10 - 1;
  v178 = v176 >> 3;
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
  v195 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v17 <= v178)
  {
    v25 = a7 + a9 - 1;
    if (a7 >> 3 <= v25 >> 3)
    {
      v194 = (a5 - 1) >> 3;
      v173 = a5 - 1;
      v179 = (a5 - 1) & 7;
      v174 = (a6 - 1) & 7;
      v175 = (a6 - 1) >> 3;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000007);
      *v27.i8 = vcgt_u32(v26, 0xF0000000FLL);
      v28.i64[0] = -1;
      *v29.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 3uLL))))))), *v27.i8);
      v184 = v29.i64[0];
      v185 = v29.i32[0] | v29.i32[1];
      v183 = v27.i64[0];
      v172 = 8 * v19 * v18;
      do
      {
        v30 = (8 * v17) | 7;
        if (8 * v17 <= v193)
        {
          v31 = v193;
        }

        else
        {
          v31 = 8 * v17;
        }

        if (v176 < v30)
        {
          v30 = v176;
        }

        v192 = 8 * v17;
        v182 = v31 - 8 * v17;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v174;
        v181 = v33;
        v35 = v33 != 8;
        v36 = a7 >> 3;
        v37 = v174 + 1;
        if (v17 != v175)
        {
          v37 = 8;
          v34 = v35;
        }

        v180 = v34;
        v190 = a3 + (v31 - v193) * a11;
        v191 = v37;
        v189 = v37;
        do
        {
          v38 = 8 * v36;
          v39 = 8 * (v36 + 1) - 1;
          if (8 * v36 <= a7)
          {
            v40 = a7;
          }

          else
          {
            v40 = 8 * v36;
          }

          if (v25 < v39)
          {
            v39 = a7 + a9 - 1;
          }

          v41 = v39 - v40;
          v42 = v39 - v40 + 1;
          if (v36 == v194)
          {
            v43 = v179 + 1;
          }

          else
          {
            v43 = 8;
          }

          v44 = 1;
          if (v192 >= v193 && v38 >= a7)
          {
            v45 = v41 != v179;
            if (v36 != v194)
            {
              v45 = v42 != 8;
            }

            v44 = v45 || v180;
          }

          if (isLevelTiled)
          {
            v66 = 0;
            v67 = v172 >> (*(a1 + 57) != 0);
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
              v68 = 0;
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
                v68 = 0;
                v70 = 8;
                v66 = 16;
              }
            }

            v160 = (v66 >> 3) - 1;
            if (v68)
            {
              v161 = 0;
            }

            else
            {
              v161 = 32 - __clz(~(-1 << -__clz(v160)));
            }

            v162 = (v70 >> 3) - 1;
            if (v69)
            {
              v163 = 0;
              if (v161)
              {
                goto LABEL_199;
              }
            }

            else
            {
              v163 = 32 - __clz(~(-1 << -__clz(v162)));
              if (v163 | v161)
              {
LABEL_199:
                v164 = 0;
                v165 = 0;
                v166 = v36 & v160;
                v167 = v17 & v162;
                v168 = v161 != 0;
                v169 = v163 != 0;
                v170 = 1;
                do
                {
                  --v161;
                  if (v168)
                  {
                    v165 |= (v170 & v166) << v164++;
                  }

                  else
                  {
                    v161 = 0;
                  }

                  --v163;
                  if (v169)
                  {
                    v165 |= (v170 & v167) << v164++;
                  }

                  else
                  {
                    v163 = 0;
                  }

                  v170 *= 2;
                  --v164;
                  v169 = v163 != 0;
                  v168 = v161 != 0;
                }

                while (v163 | v161);
                v171 = v165 << 8;
                goto LABEL_211;
              }
            }

            v171 = 0;
LABEL_211:
            v53 = v171 + ((v38 / v66 + v192 / v70 * ((v66 + v173) / v66)) << 14);
            goto LABEL_52;
          }

          if (v185)
          {
            v46 = 0;
            v47 = 0;
            v48 = 1;
            v50 = v183;
            v49 = BYTE4(v183);
            v52 = v184;
            v51 = HIDWORD(v184);
            do
            {
              --v51;
              if (v49)
              {
                v47 |= (v48 & v36) << v46++;
              }

              else
              {
                v51 = 0;
              }

              --v52;
              if (v50)
              {
                v47 |= (v48 & v17) << v46++;
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

          v55 = v54 + 7;
          if (v55 < 0x10)
          {
            v56 = 0;
          }

          else
          {
            v56 = 32 - __clz(~(-1 << -__clz((v55 >> 3) - 1)));
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
          v72 = (v190 + 4 * (v40 - a7));
          v73 = (a2 + v53);
          if (v195)
          {
            if (!(v44 & 1 | (v43 < 8u) | (v189 < 8)))
            {
              v81 = v207;
LABEL_86:
              v82 = a11;
              v83 = v81;
              v84 = (a4 + v65);
              v85 = v191;
              goto LABEL_178;
            }

            v74 = v73[13];
            v207[12] = v73[12];
            v207[13] = v74;
            v75 = v73[15];
            v208[0] = v73[14];
            v208[1] = v75;
            v76 = v73[9];
            v207[8] = v73[8];
            v207[9] = v76;
            v77 = v73[11];
            v207[10] = v73[10];
            v207[11] = v77;
            v78 = v73[5];
            v207[4] = v73[4];
            v207[5] = v78;
            v79 = v73[7];
            v207[6] = v73[6];
            v207[7] = v79;
            v80 = v73[1];
            v207[0] = *v73;
            v207[1] = v80;
            v29 = v73[2];
            v27 = v73[3];
            v81 = v207;
            v207[2] = v29;
            v207[3] = v27;
          }

          else
          {
            v81 = (a2 + v53);
            if (!(v44 & 1 | (v43 < 8u) | (v189 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          v197 = v81;
          v205 = v43;
          v206 = v191;
          v201 = v182;
          v202 = v40 - v38;
          v198 = (a4 + v65);
          v199 = (v190 + 4 * (v40 - a7));
          v200 = a11;
          v203 = v181;
          v204 = v42;
          if ((v44 & 1) == 0)
          {
            v86 = *v71;
            if (v86 == 96)
            {
              v29 = vld1q_dup_s8(v81);
              v209 = v29;
              v211 = v29;
              v87 = 1;
            }

            else if (v86 == 31)
            {
              v29.i64[0] = *v81;
              v27.i64[0] = *(v81 + 1);
              v28.i64[0] = *(v81 + 2);
              v88 = *(v81 + 3);
              v209.i64[0] = *v81;
              v209.i64[1] = v28.i64[0];
              v211.i64[0] = v27.i64[0];
              v211.i64[1] = v88;
              v87 = 32;
            }

            else if (*v71)
            {
              v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v209, 32, v81, v86, *v29.i64, *v27.i8);
            }

            else
            {
              v87 = 0;
              v209 = 0uLL;
              v211 = 0uLL;
            }

            v89 = v81 + v87;
            v90 = v71[1];
            if (v90 == 96)
            {
              v29 = vld1q_dup_s8(v89);
              v213 = v29;
              v215 = v29;
              v91 = 1;
            }

            else if (v90 == 31)
            {
              v29.i64[0] = *v89;
              v27.i64[0] = *(v89 + 8);
              v28.i64[0] = *(v89 + 16);
              v92 = *(v89 + 24);
              v213.i64[0] = *v89;
              v213.i64[1] = v28.i64[0];
              v215.i64[0] = v27.i64[0];
              v215.i64[1] = v92;
              v91 = 32;
            }

            else if (v71[1])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v213, 32, v89, v90, *v29.i64, *v27.i8);
            }

            else
            {
              v91 = 0;
              v213 = 0uLL;
              v215 = 0uLL;
            }

            v93 = v89 + v91;
            v94 = v71[2];
            if (v94 == 96)
            {
              v29 = vld1q_dup_s8(v93);
              v210 = v29;
              v212 = v29;
              v95 = 1;
            }

            else if (v94 == 31)
            {
              v29.i64[0] = *v93;
              v27.i64[0] = *(v93 + 8);
              v28.i64[0] = *(v93 + 16);
              v96 = *(v93 + 24);
              v210.i64[0] = *v93;
              v210.i64[1] = v28.i64[0];
              v212.i64[0] = v27.i64[0];
              v212.i64[1] = v96;
              v95 = 32;
            }

            else if (v71[2])
            {
              v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v210, 32, v93, v94, *v29.i64, *v27.i8);
            }

            else
            {
              v95 = 0;
              v210 = 0uLL;
              v212 = 0uLL;
            }

            v97 = v93 + v95;
            v98 = v71[3];
            if (v98 == 96)
            {
              v29 = vld1q_dup_s8(v97);
              v214 = v29;
              v216 = v29;
              v99 = 1;
            }

            else if (v98 == 31)
            {
              v29.i64[0] = *v97;
              v27.i64[0] = *(v97 + 8);
              v28.i64[0] = *(v97 + 16);
              v100 = *(v97 + 24);
              v214.i64[0] = *v97;
              v214.i64[1] = v28.i64[0];
              v216.i64[0] = v27.i64[0];
              v216.i64[1] = v100;
              v99 = 32;
            }

            else if (v71[3])
            {
              v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v214, 32, v97, v98, *v29.i64, *v27.i8);
            }

            else
            {
              v99 = 0;
              v214 = 0uLL;
              v216 = 0uLL;
            }

            v101 = v97 + v99;
            v102 = v71[4];
            if (v102 == 96)
            {
              v29 = vld1q_dup_s8(v101);
              v217 = v29;
              v219 = v29;
              v103 = 1;
            }

            else if (v102 == 31)
            {
              v29.i64[0] = *v101;
              v27.i64[0] = *(v101 + 8);
              v28.i64[0] = *(v101 + 16);
              v104 = *(v101 + 24);
              v217.i64[0] = *v101;
              v217.i64[1] = v28.i64[0];
              v219.i64[0] = v27.i64[0];
              v219.i64[1] = v104;
              v103 = 32;
            }

            else if (v71[4])
            {
              v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 32, v101, v102, *v29.i64, *v27.i8);
            }

            else
            {
              v103 = 0;
              v217 = 0uLL;
              v219 = 0uLL;
            }

            v105 = v101 + v103;
            v106 = v71[5];
            if (v106 == 96)
            {
              v29 = vld1q_dup_s8(v105);
              v221 = v29;
              v223 = v29;
              v107 = 1;
            }

            else if (v106 == 31)
            {
              v29.i64[0] = *v105;
              v27.i64[0] = *(v105 + 8);
              v28.i64[0] = *(v105 + 16);
              v108 = *(v105 + 24);
              v221.i64[0] = *v105;
              v221.i64[1] = v28.i64[0];
              v223.i64[0] = v27.i64[0];
              v223.i64[1] = v108;
              v107 = 32;
            }

            else if (v71[5])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v221, 32, v105, v106, *v29.i64, *v27.i8);
            }

            else
            {
              v107 = 0;
              v221 = 0uLL;
              v223 = 0uLL;
            }

            v109 = v105 + v107;
            v110 = v71[6];
            if (v110 == 96)
            {
              v29 = vld1q_dup_s8(v109);
              v218 = v29;
              v220 = v29;
              v111 = 1;
            }

            else if (v110 == 31)
            {
              v29.i64[0] = *v109;
              v27.i64[0] = *(v109 + 8);
              v28.i64[0] = *(v109 + 16);
              v112 = *(v109 + 24);
              v218.i64[0] = *v109;
              v218.i64[1] = v28.i64[0];
              v220.i64[0] = v27.i64[0];
              v220.i64[1] = v112;
              v111 = 32;
            }

            else if (v71[6])
            {
              v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v218, 32, v109, v110, *v29.i64, *v27.i8);
            }

            else
            {
              v111 = 0;
              v218 = 0uLL;
              v220 = 0uLL;
            }

            v113 = v109 + v111;
            v114 = v71[7];
            if (v114 == 96)
            {
              v29 = vld1q_dup_s8(v113);
              v222 = v29;
              v224 = v29;
              v115 = v203;
              if (v203)
              {
                goto LABEL_146;
              }
            }

            else
            {
              if (v114 != 31)
              {
                if (v71[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v222, 32, v113, v114, *v29.i64, *v27.i8);
                  v115 = v203;
                  if (!v203)
                  {
                    goto LABEL_177;
                  }
                }

                else
                {
                  v222 = 0uLL;
                  v224 = 0uLL;
                  v115 = v203;
                  if (!v203)
                  {
                    goto LABEL_177;
                  }
                }

LABEL_146:
                v117 = v204;
                if (!v204)
                {
                  goto LABEL_177;
                }

                v118 = 0;
                v119 = 4 * v202;
                v120 = &v209.i8[32 * v201 + v119];
                v121 = v199;
                v122 = v200;
                v123 = 4 * v204;
                if (4 * v204)
                {
                  v124 = (4 * v204 - 1) >> 32 == 0;
                }

                else
                {
                  v124 = 0;
                }

                v125 = !v124;
                v127 = v120 < &v199->i8[4 * v204 + v200 * (v115 - 1)] && v199 < (&v208[2 * v115 + 2 * v201] + 4 * v204 + v119);
                v128 = v127 || v200 < 0;
                v129 = v123 & 0x1FFFFFFE0;
                v130 = v123 & 0x1FFFFFFF8;
                v131 = (v204 == 1) | v125 | v128;
                v132 = &v210.i8[32 * v201 + v119];
                v133 = v199 + 1;
                v134 = v120;
                v135 = v199;
                while (2)
                {
                  v136 = &v121->i8[v118 * v122];
                  v137 = &v120[32 * v118];
                  if (v131)
                  {
                    v138 = 0;
LABEL_174:
                    v147 = v138 + 1;
                    do
                    {
                      v148 = *v136++;
                      *v137++ = v148;
                    }

                    while (v123 > v147++);
                  }

                  else
                  {
                    if (v117 >= 8)
                    {
                      v140 = v133;
                      v141 = v132;
                      v142 = v123 & 0x1FFFFFFE0;
                      do
                      {
                        v29 = v140[-1];
                        v27 = *v140;
                        v141[-1] = v29;
                        *v141 = v27;
                        v141 += 2;
                        v140 += 2;
                        v142 -= 32;
                      }

                      while (v142);
                      if (v123 == v129)
                      {
                        goto LABEL_160;
                      }

                      v139 = v123 & 0x1FFFFFFE0;
                      if ((v117 & 6) == 0)
                      {
                        v136 += v129;
                        v137 += v129;
                        v138 = v123 & 0xFFFFFFE0;
                        goto LABEL_174;
                      }
                    }

                    else
                    {
                      v139 = 0;
                    }

                    v137 += v130;
                    v143 = -8 * ((v117 >> 1) & 0x3FFFFFFF) + v139;
                    v144 = (v135->i64 + v139);
                    v145 = &v134[v139];
                    do
                    {
                      v146 = *v144++;
                      v29.i64[0] = v146;
                      *v145++ = v146;
                      v143 += 8;
                    }

                    while (v143);
                    if (v123 != v130)
                    {
                      v136 += v130;
                      v138 = v123 & 0xFFFFFFF8;
                      goto LABEL_174;
                    }
                  }

LABEL_160:
                  ++v118;
                  v132 += 32;
                  v133 = (v133 + v122);
                  v135 = (v135 + v122);
                  v134 += 32;
                  if (v118 == v115)
                  {
                    goto LABEL_177;
                  }

                  continue;
                }
              }

              v29.i64[0] = *v113;
              v27.i64[0] = *(v113 + 8);
              v28.i64[0] = *(v113 + 16);
              v116 = *(v113 + 24);
              v222.i64[0] = *v113;
              v222.i64[1] = v28.i64[0];
              v224.i64[0] = v27.i64[0];
              v224.i64[1] = v116;
              v115 = v203;
              if (v203)
              {
                goto LABEL_146;
              }
            }

LABEL_177:
            v83 = v197;
            v84 = v198;
            v43 = v205;
            v85 = v206;
            v72 = &v209;
            v82 = 32;
LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v72, v82, v83, v84, v43, v85, *v29.i8, *v27.i64, *v28.i8);
            if (!v195)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(a1 + 8) + 16552), block);
          if (!v195)
          {
            goto LABEL_26;
          }

LABEL_179:
          v150 = *v81;
          v151 = *(v81 + 1);
          v152 = *(v81 + 3);
          v73[2] = *(v81 + 2);
          v73[3] = v152;
          *v73 = v150;
          v73[1] = v151;
          v153 = *(v81 + 4);
          v154 = *(v81 + 5);
          v155 = *(v81 + 7);
          v73[6] = *(v81 + 6);
          v73[7] = v155;
          v73[4] = v153;
          v73[5] = v154;
          v156 = *(v81 + 8);
          v157 = *(v81 + 9);
          v158 = *(v81 + 11);
          v73[10] = *(v81 + 10);
          v73[11] = v158;
          v73[8] = v156;
          v73[9] = v157;
          v29 = *(v81 + 12);
          v27 = *(v81 + 13);
          v28 = *(v81 + 14);
          v159 = *(v81 + 15);
          v73[14] = v28;
          v73[15] = v159;
          v73[12] = v29;
          v73[13] = v27;
LABEL_26:
          v21 = v36++ == v25 >> 3;
        }

        while (!v21);
        v21 = v17++ == v178;
      }

      while (!v21);
    }
  }
}