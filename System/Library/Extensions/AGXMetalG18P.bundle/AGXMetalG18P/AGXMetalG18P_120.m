uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
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
          v77 = (v288 + ((v46 - v16) << 6));
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v77, a11, v78, v76, v49, v289);
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v82 = v46 - v44;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v101 = v78 + v84;
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
                v250 = v299 + 1;
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
                  v240 = (v240 + v241);
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

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v308, 512, v297, v298, v305, v306);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v148 = v21;
  v149 = v22;
  v133 = v23;
  v24 = v12;
  v177 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v153 = v14;
  v135 = v14 + a10 - 1;
  v154 = v24;
  if (*(v24 + 168))
  {
    v27 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v27 = 0;
  }

  v28 = v14 >> 2;
  v29 = v20 - 1;
  v30 = v18 - 1;
  v134 = v135 >> 2;
  v31 = (v27 & 0xD00) == 0 || v27 == 768;
  v32 = v27 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v156 = v34;
  result = v24;
  if (*(v24 + 232) == 1)
  {
    v36 = *(v24 + 273);
    v37 = *(v24 + 272);
    v38 = __clz(v29);
    if (1 << v36 >= v18 || v20 >> v37)
    {
      if (!(v18 >> v36) && 1 << v37 < v20)
      {
        if (v18 < 2)
        {
          v41 = 0;
        }

        else
        {
          v41 = __clz(~(-1 << -__clz(v30))) | 0xFFFFFFE0;
        }

        v37 += v36 + v41;
        v36 = -v41;
      }
    }

    else
    {
      v39 = 32 - __clz(~(-1 << -v38));
      v40 = v37 + v36;
      if (v20 < 2)
      {
        v39 = 0;
      }

      v36 = v40 - v39;
      v37 = v39;
    }

    if (v20 < 2)
    {
      if (v37)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v38)) < v37)
    {
LABEL_27:
      v147 = 0;
LABEL_32:
      v144 = v37 - 3;
      v138 = v36 - 2;
      v43 = -1 << *(*(v24 + 208) + 48);
      v132 = (((~v43 + v20) & v43) + ~(-1 << v37)) >> v37;
      goto LABEL_33;
    }

    if (v18 < 2)
    {
      v42 = 0;
    }

    else
    {
      v42 = 32 - __clz(~(-1 << -__clz(v30)));
    }

    v147 = v42 >= v36;
    goto LABEL_32;
  }

  v147 = 0;
  v132 = 0;
  v138 = 0;
  v144 = 0;
LABEL_33:
  if (v28 <= v134)
  {
    v146 = v16 + a9 - 1;
    v131 = v16 >> 3;
    if (v16 >> 3 <= v146 >> 3)
    {
      v155 = v29 >> 3;
      v140 = v29 & 7;
      v129 = v30 & 3;
      v130 = v30 >> 2;
      v44 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v45 = vcgt_u32(v44, 0xF00000007);
      v137 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v44, 0xFFFFFFFDFFFFFFFELL), -1))))))), v45);
      v136 = v45;
      v145 = v16;
      do
      {
        v46 = (4 * v28) | 3;
        if (4 * v28 <= v153)
        {
          v47 = v153;
        }

        else
        {
          v47 = 4 * v28;
        }

        if (v135 < v46)
        {
          v46 = v135;
        }

        v143 = v47 - 4 * v28;
        v48 = v46 - v47;
        v49 = v48 + 1;
        v50 = v48 != v129;
        v142 = v49;
        v51 = v49 != 4;
        v52 = v129 + 1;
        if (v28 != v130)
        {
          v52 = 4;
          v50 = v51;
        }

        v141 = v50;
        v53 = v131;
        v54 = v28 & ~(-1 << v138);
        v151 = v133 + (v47 - v153) * a11;
        v152 = v52;
        v150 = v52;
        do
        {
          v55 = 8 * v53;
          v56 = 8 * (v53 + 1) - 1;
          if (8 * v53 <= v16)
          {
            v57 = v16;
          }

          else
          {
            v57 = 8 * v53;
          }

          if (v146 < v56)
          {
            v56 = v146;
          }

          v58 = v56 - v57;
          v59 = v58 + 1;
          if (v53 == v155)
          {
            v60 = (v140 + 1);
          }

          else
          {
            v60 = 8;
          }

          v61 = 1;
          if (4 * v28 >= v153 && v55 >= v16)
          {
            v62 = v58 != v140;
            if (v53 != v155)
            {
              v62 = v59 != 8;
            }

            v61 = v62 || v141;
          }

          if (v147)
          {
            if (v144 | v138)
            {
              v63 = 0;
              v64 = 0;
              v65 = v144 != 0;
              v66 = 1;
              v68 = v138 != 0;
              v67 = v138;
              v69 = v144;
              do
              {
                --v67;
                if (v68)
                {
                  v64 |= (v54 & v66) << v63++;
                }

                else
                {
                  v67 = 0;
                }

                --v69;
                if (v65)
                {
                  v64 |= (v53 & ~(-1 << v144) & v66) << v63++;
                }

                else
                {
                  v69 = 0;
                }

                v66 *= 2;
                --v63;
                v65 = v69 != 0;
                v68 = v67 != 0;
              }

              while (v69 | v67);
              v70 = v64 << 11;
            }

            else
            {
              v70 = 0;
            }

            v78 = v70 + *(result + 336) * ((v53 >> v144) + (v28 >> v138) * v132);
          }

          else if (v137)
          {
            v71 = 0;
            v72 = 0;
            v73 = 1;
            v75 = v136.i8[0];
            v74 = v136.i8[4];
            v76 = v137.i32[0];
            v77 = v137.i32[1];
            do
            {
              --v76;
              if (v75)
              {
                v72 |= (v73 & v28) << v71++;
              }

              else
              {
                v76 = 0;
              }

              --v77;
              if (v74)
              {
                v72 |= (v73 & v53) << v71++;
              }

              else
              {
                v77 = 0;
              }

              v73 *= 2;
              --v71;
              v74 = v77 != 0;
              v75 = v76 != 0;
            }

            while (v77 | v76);
            v78 = v72 << 11;
          }

          else
          {
            v78 = 0;
          }

          v79 = *(result + 128) >> (*(result + 144) + a12);
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

          v82 = *(result + 132) >> (*(result + 144) + a12);
          if (v82 <= 1)
          {
            v82 = 1;
          }

          v83 = v82 + 3;
          if (v83 < 8)
          {
            v84 = 0;
          }

          else
          {
            v84 = 32 - __clz(~(-1 << -__clz((v83 >> 2) - 1)));
          }

          if (v84 | v81)
          {
            v85 = 0;
            v86 = 0;
            v87 = v81 != 0;
            v88 = v84 != 0;
            v89 = 1;
            do
            {
              --v81;
              if (v87)
              {
                v86 |= (v89 & v53) << v85++;
              }

              else
              {
                v81 = 0;
              }

              --v84;
              if (v88)
              {
                v86 |= (v89 & v28) << v85++;
              }

              else
              {
                v84 = 0;
              }

              v89 *= 2;
              --v85;
              v88 = v84 != 0;
              v87 = v81 != 0;
            }

            while (v84 | v81);
            v90 = 8 * v86;
          }

          else
          {
            v90 = 0;
          }

          v91 = (v149 + v90);
          v92 = v151 + ((v57 - v16) << 6);
          v93 = (v148 + v78);
          if (v156)
          {
            if (!(v61 & 1 | (v60 < 8u) | (v150 < 4)))
            {
              v98 = __dst;
LABEL_110:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v92, a11, v98, v91, v60, v152, v25, v26);
              goto LABEL_111;
            }

            v139 = (v148 + v78);
            v94 = v61;
            v95 = v60;
            v96 = v54;
            v97 = v57;
            memcpy(__dst, (v148 + v78), sizeof(__dst));
            v57 = v97;
            v54 = v96;
            v98 = __dst;
            v61 = v94;
            v93 = v139;
            LOBYTE(v60) = v95;
            result = v154;
          }

          else
          {
            v98 = (v148 + v78);
            if (!(v61 & 1 | (v60 < 8u) | (v150 < 4)))
            {
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v158 = v98;
          v166 = v60;
          v167 = v152;
          v162 = v143;
          v163 = v57 - v55;
          v159 = v91;
          v160 = v92;
          v161 = a11;
          v164 = v142;
          v165 = v59;
          if (v61)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_111:
            v16 = v145;
            v99 = v53 + 1;
            if (!v156)
            {
              goto LABEL_46;
            }

LABEL_136:
            memcpy(v93, v98, 0x800uLL);
            goto LABEL_46;
          }

          v100 = &v98[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 512, v98, *v91)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 512, v100, v91[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 512, v101, v91[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 512, v102, v91[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 512, v103, v91[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 512, v104, v91[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 512, v105, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 512, v105 + v106, v91[7]);
          v109 = v164;
          v16 = v145;
          v99 = v53 + 1;
          if (v164 && v165)
          {
            v110 = 0;
            v111 = v162 << 9;
            v112 = v163 << 6;
            v113 = &v169[0].i8[v111 + v112];
            v114 = v160;
            v115 = v161;
            v116 = v165 << 6;
            if (v116)
            {
              v117 = (v116 - 1) >> 32 == 0;
            }

            else
            {
              v117 = 0;
            }

            v118 = !v117;
            v120 = v113 < v160 + v161 * (v164 - 1) + v116 && v160 < &__dst[512 * v164 + 1536 + 512 * v162 + v116 + v112];
            v121 = v118 | (v161 < 0) | v120;
            v122 = &v169[1].i8[v111 + v112];
            v123 = (v160 + 16);
            do
            {
              v124 = v123;
              v125 = v122;
              v126 = v116;
              if (v121)
              {
                v127 = 0;
                do
                {
                  v113[v127] = *(v114 + v127);
                  ++v127;
                }

                while (v116 > v127);
              }

              else
              {
                do
                {
                  v128 = *v124;
                  *(v125 - 1) = *(v124 - 1);
                  *v125 = v128;
                  v125 += 32;
                  v124 += 2;
                  v126 -= 32;
                }

                while (v126);
              }

              ++v110;
              v122 += 512;
              v123 = (v123 + v115);
              v113 += 512;
              v114 += v115;
            }

            while (v110 != v109);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v169, 512, v158, v159, v166, v167, v107, v108);
          if (v156)
          {
            goto LABEL_136;
          }

LABEL_46:
          v31 = v53 == v146 >> 3;
          v53 = v99;
          result = v154;
        }

        while (!v31);
        v31 = v28++ == v134;
      }

      while (!v31);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v98 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v165, 512, v96, *v89);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v166, 512, v98, v89[1]);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 512, v99, v89[2]);
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 512, v100, v89[3]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 512, v101, v89[4]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 512, v102, v89[5]);
          v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 512, v103, v89[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 512, v103 + v104, v89[7]);
          v105 = v160;
          v16 = v141;
          v97 = v51 + 1;
          if (v160 && v161)
          {
            v106 = 0;
            v107 = v158 << 9;
            v108 = v159 << 6;
            v109 = &v165[0].i8[v107 + v108];
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
            v118 = &v165[1].i8[v107 + v108];
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
                  v121 += 32;
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v142 = v21;
  v143 = v22;
  v131 = v23;
  v24 = v12;
  v172 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v148 = v14;
  v25 = v14 >> 2;
  v130 = v14 + a10 - 1;
  v132 = v130 >> 2;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v149 = v24;
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
  v151 = v32;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  if (v25 <= v132)
  {
    v140 = v16 + a9 - 1;
    v129 = v16 >> 3;
    if (v16 >> 3 <= v140 >> 3)
    {
      v150 = (v20 - 1) >> 3;
      v126 = v20 - 1;
      v133 = (v20 - 1) & 7;
      v127 = (v18 - 1) & 3;
      v128 = (v18 - 1) >> 2;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v138 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v137 = v35;
      v125 = 8 * v27 * v26;
      v139 = v16;
      do
      {
        v36 = (4 * v25) | 3;
        if (4 * v25 <= v148)
        {
          v37 = v148;
        }

        else
        {
          v37 = 4 * v25;
        }

        if (v130 < v36)
        {
          v36 = v130;
        }

        v147 = 4 * v25;
        v136 = v37 - 4 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v127;
        v135 = v39;
        v41 = v39 != 4;
        v42 = v129;
        v43 = v127 + 1;
        if (v25 != v128)
        {
          v43 = 4;
          v40 = v41;
        }

        v134 = v40;
        v145 = v131 + (v37 - v148) * a11;
        v146 = v43;
        v144 = v43;
        do
        {
          v44 = 8 * v42;
          v45 = 8 * (v42 + 1) - 1;
          if (v44 <= v16)
          {
            v46 = v16;
          }

          else
          {
            v46 = 8 * v42;
          }

          if (v140 < v45)
          {
            v45 = v140;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v150)
          {
            v49 = (v133 + 1);
          }

          else
          {
            v49 = 8;
          }

          v50 = 1;
          if (v147 >= v148 && v44 >= v16)
          {
            v51 = v47 != v133;
            if (v42 != v150)
            {
              v51 = v48 != 8;
            }

            v50 = v51 || v134;
          }

          if (isLevelTiled)
          {
            v72 = 0;
            v73 = v125 >> (*(v24 + 57) != 0);
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

            v113 = (v72 >> 3) - 1;
            v114 = (v75 >> 2) - 1;
            if ((v74 & 1) != 0 || (v115 = 32 - __clz(~(-1 << -__clz(v113))), v116 = 32 - __clz(~(-1 << -__clz(v114))), !(v116 | v115)))
            {
              v124 = 0;
            }

            else
            {
              v117 = 0;
              v118 = 0;
              v119 = v42 & v113;
              v120 = v25 & v114;
              v121 = v116 != 0;
              v122 = v115 != 0;
              v123 = 1;
              do
              {
                --v116;
                if (v121)
                {
                  v118 |= (v123 & v120) << v117++;
                }

                else
                {
                  v116 = 0;
                }

                --v115;
                if (v122)
                {
                  v118 |= (v123 & v119) << v117++;
                }

                else
                {
                  v115 = 0;
                }

                v123 *= 2;
                --v117;
                v122 = v115 != 0;
                v121 = v116 != 0;
              }

              while (v115 | v116);
              v124 = v118 << 11;
              v24 = v149;
            }

            v59 = v124 + ((v44 / v72 + v147 / v75 * ((v72 + v126) / v72)) << 14);
          }

          else if (v138)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v56 = v137.i8[0];
            v55 = v137.i8[4];
            v57 = v138.i32[0];
            v58 = v138.i32[1];
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

          v60 = *(v24 + 128) >> (*(v24 + 144) + a12);
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

          v63 = *(v24 + 132) >> (*(v24 + 144) + a12);
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
          v76 = (v143 + v71);
          v77 = v145 + ((v46 - v16) << 6);
          v78 = (v142 + v59);
          if (v151)
          {
            if (!(v50 & 1 | (v49 < 8u) | (v144 < 4)))
            {
              v83 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v77, a11, v83, v76, v49, v146, v33, v44);
              goto LABEL_86;
            }

            v79 = v49;
            v80 = v48;
            v81 = (v142 + v59);
            v82 = v50;
            memcpy(__dst, (v142 + v59), sizeof(__dst));
            LODWORD(v44) = 8 * v42;
            v83 = __dst;
            v50 = v82;
            v78 = v81;
            v48 = v80;
            LOBYTE(v49) = v79;
            v24 = v149;
          }

          else
          {
            v83 = (v142 + v59);
            if (!(v50 & 1 | (v49 < 8u) | (v144 < 4)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v24;
          v153 = v83;
          v161 = v49;
          v162 = v146;
          v157 = v136;
          v158 = v46 - v44;
          v154 = v76;
          v155 = v77;
          v156 = a11;
          v159 = v135;
          v160 = v48;
          if (v50)
          {
            dispatch_sync(*(*(v24 + 8) + 16552), block);
LABEL_86:
            v16 = v139;
            if (!v151)
            {
              goto LABEL_26;
            }

LABEL_111:
            memcpy(v78, v83, 0x800uLL);
            goto LABEL_26;
          }

          v84 = &v83[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v164, 512, v83, *v76)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v165, 512, v84, v76[1]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 512, v85, v76[2]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 512, v86, v76[3]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v166, 512, v87, v76[4]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 512, v88, v76[5]);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 512, v89, v76[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 512, v89 + v90, v76[7]);
          v93 = v159;
          v16 = v139;
          if (v159 && v160)
          {
            v94 = 0;
            v95 = v157 << 9;
            v96 = v158 << 6;
            v97 = &v164[0].i8[v95 + v96];
            v98 = v155;
            v99 = v156;
            v100 = v160 << 6;
            if (v100)
            {
              v101 = (v100 - 1) >> 32 == 0;
            }

            else
            {
              v101 = 0;
            }

            v102 = !v101;
            v104 = v97 < v155 + v156 * (v159 - 1) + v100 && v155 < &__dst[512 * v159 + 1536 + 512 * v157 + v100 + v96];
            v105 = v102 | (v156 < 0) | v104;
            v106 = &v164[1].i8[v95 + v96];
            v107 = (v155 + 16);
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
                  v109 += 32;
                  v108 += 2;
                  v110 -= 32;
                }

                while (v110);
              }

              ++v94;
              v106 += 512;
              v107 = (v107 + v99);
              v97 += 512;
              v98 += v99;
            }

            while (v94 != v93);
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v164, 512, v153, v154, v161, v162, v91, v92);
          if (v151)
          {
            goto LABEL_111;
          }

LABEL_26:
          v29 = v42++ == v140 >> 3;
          v24 = v149;
        }

        while (!v29);
        v29 = v25++ == v132;
      }

      while (!v29);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v83 = v82 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 512, v82, *v75);
          v84 = v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v162, 512, v83, v75[1]);
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v165, 512, v84, v75[2]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v166, 512, v85, v75[3]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v163, 512, v86, v75[4]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v164, 512, v87, v75[5]);
          v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 512, v88, v75[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 512, v88 + v89, v75[7]);
          v90 = v156;
          v16 = v136;
          if (v156 && v157)
          {
            v91 = 0;
            v92 = v154 << 9;
            v93 = v155 << 6;
            v94 = &v161[0].i8[v92 + v93];
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
            v103 = &v161[1].i8[v92 + v93];
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
                  v106 += 32;
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v177 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v153 = a8;
  v136 = a8 + a10 - 1;
  v154 = a1;
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
  v135 = v136 >> 2;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v156 = v24;
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
      v147 = 0;
LABEL_32:
      v144 = v27 - 3;
      v139 = v26 - 2;
      v33 = -1 << *(*(a1 + 208) + 48);
      v133 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v147 = v32 >= v26;
    goto LABEL_32;
  }

  v147 = 0;
  v133 = 0;
  v139 = 0;
  v144 = 0;
LABEL_33:
  if (v18 <= v135)
  {
    v146 = a7 + a9 - 1;
    v132 = a7 >> 3;
    if (a7 >> 3 <= v146 >> 3)
    {
      v155 = v19 >> 3;
      v140 = v19 & 7;
      v130 = v20 & 3;
      v131 = v20 >> 2;
      v129 = ~(-1 << v139);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v138 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v137 = v35;
      v145 = a7;
      do
      {
        v36 = (4 * v18) | 3;
        if (4 * v18 <= v153)
        {
          v37 = v153;
        }

        else
        {
          v37 = 4 * v18;
        }

        if (v136 < v36)
        {
          v36 = v136;
        }

        v143 = v37 - 4 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v130;
        v142 = v39;
        v41 = v39 != 4;
        v42 = v130 + 1;
        if (v18 != v131)
        {
          v42 = 4;
          v40 = v41;
        }

        v141 = v40;
        v43 = v132;
        v44 = v18 & v129;
        v151 = a3 + (v37 - v153) * a11;
        v152 = v42;
        v150 = v42;
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

          if (v146 < v46)
          {
            v46 = v146;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v155)
          {
            v50 = v140 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (4 * v18 >= v153 && v45 >= a7)
          {
            v52 = v48 != v140;
            if (v43 != v155)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v141;
          }

          if (v147)
          {
            if (v144 | v139)
            {
              v53 = 0;
              v54 = 0;
              v55 = v144 != 0;
              v56 = 1;
              v58 = v139 != 0;
              v57 = v139;
              v59 = v144;
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
                  v54 |= (v43 & ~(-1 << v144) & v56) << v53++;
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

            v68 = v60 + *(result + 336) * ((v43 >> v144) + (v18 >> v139) * v133);
          }

          else if (v138)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v137.i8[0];
            v64 = v137.i8[4];
            v66 = v138.i32[0];
            v67 = v138.i32[1];
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
            if (!v71)
            {
LABEL_104:
              v80 = 0;
              goto LABEL_105;
            }
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 2) - 1)));
            if (!(v74 | v71))
            {
              goto LABEL_104;
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
LABEL_105:
          v81 = (a4 + v80);
          v82 = v151 + 16 * (v47 - a7);
          v83 = (a2 + v68);
          if (v156)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v150 < 4)))
            {
              v87 = __dst;
LABEL_112:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v87, v81, v50, v152);
LABEL_113:
              a7 = v145;
              if (v156)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            v84 = v51;
            v85 = v50;
            v86 = v47;
            memcpy(__dst, v83, sizeof(__dst));
            v47 = v86;
            v87 = __dst;
            v51 = v84;
            v44 = v18 & v129;
            LOBYTE(v50) = v85;
            result = v154;
          }

          else
          {
            v87 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 8u) | (v150 < 4)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v158 = v87;
          v166 = v50;
          v167 = v152;
          v162 = v143;
          v163 = v47 - v45;
          v159 = v81;
          v160 = v82;
          v161 = a11;
          v164 = v142;
          v165 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_113;
          }

          v88 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 128, v87, *v81)];
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 128, v88, v81[1]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 128, v89, v81[2]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 128, v90, v81[3]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 128, v91, v81[4]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 128, v92, v81[5]);
          v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 128, v93, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 128, v93 + v94, v81[7]);
          v95 = v164;
          a7 = v145;
          if (v164)
          {
            v96 = v165;
            if (v165)
            {
              v97 = 0;
              v98 = v162 << 7;
              v99 = 16 * v163;
              v100 = &v169[0].i8[v98 + v99];
              v101 = v160;
              v102 = v161;
              v103 = 16 * v165;
              if (16 * v165)
              {
                v104 = (16 * v165 - 1) >> 32 == 0;
              }

              else
              {
                v104 = 0;
              }

              v105 = !v104;
              v107 = v100 < v160 + v161 * (v164 - 1) + 16 * v165 && v160 < &__dst[128 * v164 + 384 + 128 * v162 + 16 * v165 + v99];
              v108 = v103 & 0x1FFFFFFE0;
              v109 = v105 | (v161 < 0) | v107;
              v110 = &v169[1].i8[v98 + v99];
              v111 = (v160 + 16);
              v112 = v100;
              v113 = v160;
              do
              {
                v114 = (v101 + v97 * v102);
                v115 = &v100[128 * v97];
                if (v109)
                {
                  v116 = 0;
                }

                else
                {
                  if (v96 == 1)
                  {
                    v120 = 0;
LABEL_138:
                    v121 = -16 * v96 + v120;
                    v122 = (v113 + v120);
                    v123 = &v112[v120];
                    do
                    {
                      v124 = *v122++;
                      *v123 = v124;
                      v123 += 16;
                      v121 += 16;
                    }

                    while (v121);
                    goto LABEL_130;
                  }

                  v125 = v111;
                  v126 = v110;
                  v127 = v103 & 0x1FFFFFFE0;
                  do
                  {
                    v128 = *v125;
                    *(v126 - 1) = *(v125 - 1);
                    *v126 = v128;
                    v126 += 32;
                    v125 += 2;
                    v127 -= 32;
                  }

                  while (v127);
                  if (v103 == v108)
                  {
                    goto LABEL_130;
                  }

                  v120 = v103 & 0x1FFFFFFE0;
                  if (v96)
                  {
                    goto LABEL_138;
                  }

                  v114 += v108;
                  v115 += v108;
                  v116 = v103 & 0xFFFFFFE0;
                }

                v117 = v116 + 1;
                do
                {
                  v118 = *v114++;
                  *v115++ = v118;
                }

                while (v103 > v117++);
LABEL_130:
                ++v97;
                v110 += 128;
                v111 = (v111 + v102);
                v113 += v102;
                v112 += 128;
              }

              while (v97 != v95);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v169, 128, v158, v159, v166, v167);
          if (v156)
          {
LABEL_46:
            memcpy(v83, v87, 0x200uLL);
          }

LABEL_47:
          v21 = v43++ == v146 >> 3;
          result = v154;
        }

        while (!v21);
        v21 = v18++ == v135;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v204 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v180 = a8;
  v162 = a8 + a10 - 1;
  v181 = a1;
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
  v161 = v162 >> 2;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v183 = v24;
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
      v175 = 0;
LABEL_32:
      v172 = v27 - 3;
      v166 = v26 - 2;
      v33 = -1 << *(*(a1 + 208) + 48);
      v159 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v175 = v32 >= v26;
    goto LABEL_32;
  }

  v175 = 0;
  v159 = 0;
  v166 = 0;
  v172 = 0;
LABEL_33:
  if (v18 <= v161)
  {
    v174 = a7 + a9 - 1;
    v158 = a7 >> 3;
    if (a7 >> 3 <= v174 >> 3)
    {
      v34 = a11;
      v182 = v19 >> 3;
      v168 = v19 & 7;
      v156 = v20 & 3;
      v157 = v20 >> 2;
      v155 = ~(-1 << v166);
      v35 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v36 = vcgt_u32(v35, 0xF00000007);
      v165 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v35, 0xFFFFFFFDFFFFFFFELL), -1))))))), v36);
      v164 = v36;
      v173 = a7;
      do
      {
        v37 = (4 * v18) | 3;
        if (4 * v18 <= v180)
        {
          v38 = v180;
        }

        else
        {
          v38 = 4 * v18;
        }

        if (v162 < v37)
        {
          v37 = v162;
        }

        v171 = v38 - 4 * v18;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v156;
        v170 = v40;
        v42 = v158;
        if (v18 == v157)
        {
          v43 = v156 + 1;
        }

        else
        {
          v43 = 4;
        }

        if (v18 != v157)
        {
          v41 = v40 != 4;
        }

        v169 = v41;
        v44 = v18 & v155;
        v179 = a3 + (v38 - v180) * v34;
        v178 = v43;
        v163 = v43;
        do
        {
          v45 = 8 * v42;
          v46 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 8 * v42;
          }

          if (v174 < v46)
          {
            v46 = v174;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v42 == v182)
          {
            v50 = v168 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (4 * v18 >= v180 && v45 >= a7)
          {
            v52 = v48 != v168;
            if (v42 != v182)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v169;
          }

          if (v175)
          {
            if (v172 | v166)
            {
              v53 = 0;
              v54 = 0;
              v55 = v172 != 0;
              v56 = 1;
              v58 = v166 != 0;
              v57 = v166;
              v59 = v172;
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
                  v54 |= (v42 & ~(-1 << v172) & v56) << v53++;
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

            v68 = v60 + *(result + 336) * ((v42 >> v172) + (v18 >> v166) * v159);
          }

          else if (v165)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v164.i8[0];
            v64 = v164.i8[4];
            v66 = v165.i32[0];
            v67 = v165.i32[1];
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
                v62 |= (v63 & v42) << v61++;
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
            if (!v71)
            {
LABEL_106:
              v80 = 0;
              goto LABEL_107;
            }
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 2) - 1)));
            if (!(v74 | v71))
            {
              goto LABEL_106;
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
              v76 |= (v79 & v42) << v75++;
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
LABEL_107:
          v81 = (a4 + v80);
          v82 = v179 + 16 * (v47 - a7);
          v83 = (a2 + v68);
          if (v183)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v178 < 4)))
            {
              v85 = __dst;
LABEL_117:
              v87 = &byte_29D2F30E1;
              v88 = 16;
              v89 = v85;
              do
              {
                v97 = *v87;
                v98 = *(v87 - 1);
                if (v50 <= 2 * v98 || 2 * v97 >= v43)
                {
                  v96 = 0;
                }

                else
                {
                  v90 = (v82 + 2 * a11 * v97 + 32 * v98);
                  v91 = *v90;
                  v92 = v90[1];
                  v93 = (v90 + v34);
                  v94 = *v93;
                  v95 = v93[1];
                  *v89 = v91;
                  v89[1] = v92;
                  v89[2] = v94;
                  v89[3] = v95;
                  v89 += 4;
                  v96 = 63;
                }

                *v81++ = v96;
                v87 += 2;
                v88 -= 2;
              }

              while (v88);
LABEL_113:
              a7 = v173;
              goto LABEL_114;
            }

            v84 = v47;
            memcpy(__dst, v83, sizeof(__dst));
            v47 = v84;
            v45 = 8 * v42;
            v44 = v18 & v155;
            v43 = v163;
            v85 = __dst;
            v34 = a11;
            result = v181;
          }

          else
          {
            v85 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 8u) | (v178 < 4)))
            {
              goto LABEL_117;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v185 = v85;
          v193 = v50;
          v194 = v43;
          v189 = v171;
          v190 = v47 - v45;
          v186 = v81;
          v187 = v82;
          v188 = v34;
          v191 = v170;
          v192 = v49;
          if (v51)
          {
            v86 = v85;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v85 = v86;
            v34 = a11;
            result = v181;
            goto LABEL_113;
          }

          v167 = v85;
          v100 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 128, v85, *v81)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 128, v100, v81[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 128, v101, v81[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 128, v102, v81[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 128, v103, v81[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 128, v104, v81[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 128, v105, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v203, 128, v105 + v106, v81[7]);
          v107 = v191;
          if (v191)
          {
            v108 = v192;
            if (v192)
            {
              v109 = 0;
              v110 = v189 << 7;
              v111 = 16 * v190;
              v112 = &v196[0].i8[v110 + v111];
              v113 = v187;
              v114 = v188;
              v115 = 16 * v192;
              if (16 * v192)
              {
                v116 = (16 * v192 - 1) >> 32 == 0;
              }

              else
              {
                v116 = 0;
              }

              v117 = !v116;
              v119 = v112 < v187 + v188 * (v191 - 1) + 16 * v192 && v187 < &__dst[128 * v191 + 384 + 128 * v189 + 16 * v192 + v111];
              v120 = v115 & 0x1FFFFFFE0;
              v121 = v117 | (v188 < 0) | v119;
              v122 = &v196[1].i8[v110 + v111];
              v123 = (v187 + 16);
              v124 = v112;
              v125 = v187;
              do
              {
                v126 = (v113 + v109 * v114);
                v127 = &v112[128 * v109];
                if (v121)
                {
                  v128 = 0;
                }

                else
                {
                  if (v108 == 1)
                  {
                    v132 = 0;
LABEL_148:
                    v133 = -16 * v108 + v132;
                    v134 = (v125 + v132);
                    v135 = &v124[v132];
                    do
                    {
                      v136 = *v134++;
                      *v135 = v136;
                      v135 += 16;
                      v133 += 16;
                    }

                    while (v133);
                    goto LABEL_140;
                  }

                  v137 = v123;
                  v138 = v122;
                  v139 = v115 & 0x1FFFFFFE0;
                  do
                  {
                    v140 = *v137;
                    *(v138 - 1) = *(v137 - 1);
                    *v138 = v140;
                    v138 += 32;
                    v137 += 2;
                    v139 -= 32;
                  }

                  while (v139);
                  if (v115 == v120)
                  {
                    goto LABEL_140;
                  }

                  v132 = v115 & 0x1FFFFFFE0;
                  if (v108)
                  {
                    goto LABEL_148;
                  }

                  v126 += v120;
                  v127 += v120;
                  v128 = v115 & 0xFFFFFFE0;
                }

                v129 = v128 + 1;
                do
                {
                  v130 = *v126++;
                  *v127++ = v130;
                }

                while (v115 > v129++);
LABEL_140:
                ++v109;
                v122 += 128;
                v123 = (v123 + v114);
                v125 += v114;
                v124 += 128;
              }

              while (v109 != v107);
            }
          }

          v141 = v185;
          v142 = v186;
          v143 = v193;
          v144 = &byte_29D2F30E1;
          v145 = 16;
          v146 = v194;
          a7 = v173;
          v34 = a11;
          result = v181;
          v85 = v167;
          do
          {
            v152 = *v144;
            v153 = *(v144 - 1);
            if (v143 <= 2 * v153 || 2 * v152 >= v146)
            {
              v151 = 0;
            }

            else
            {
              v147 = &v196[16 * v152 + 2 * v153];
              v148 = v147[1];
              v149 = v147[8];
              v150 = v147[9];
              *v141 = *v147;
              v141[1] = v148;
              v141[2] = v149;
              v141[3] = v150;
              v141 += 4;
              v151 = 63;
            }

            *v142++ = v151;
            v144 += 2;
            v145 -= 2;
          }

          while (v145);
LABEL_114:
          if (v183)
          {
            memcpy(v83, v85, 0x200uLL);
            v34 = a11;
            result = v181;
          }

          v21 = v42++ == v174 >> 3;
        }

        while (!v21);
        v21 = v18++ == v161;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v175 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v151 = a8;
  v17 = a8 >> 2;
  v133 = a8 + a10 - 1;
  v135 = v133 >> 2;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v152 = a1;
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
  v154 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v144 = result;
  if (v17 <= v135)
  {
    v143 = a7 + a9 - 1;
    v132 = a7 >> 3;
    if (a7 >> 3 <= v143 >> 3)
    {
      result = a1;
      v153 = (a5 - 1) >> 3;
      v129 = a5 - 1;
      v136 = (a5 - 1) & 7;
      v130 = (a6 - 1) & 3;
      v131 = (a6 - 1) >> 2;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v27 = vcgt_u32(v26, 0xF00000007);
      v141 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFDFFFFFFFELL), -1))))))), v27);
      v140 = v27;
      v128 = 8 * v19 * v18;
      v142 = a7;
      do
      {
        v28 = (4 * v17) | 3;
        if (4 * v17 <= v151)
        {
          v29 = v151;
        }

        else
        {
          v29 = 4 * v17;
        }

        if (v133 < v28)
        {
          v28 = v133;
        }

        v150 = 4 * v17;
        v139 = v29 - 4 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v130;
        v138 = v31;
        v33 = v31 != 4;
        v34 = v132;
        v35 = v130 + 1;
        if (v17 != v131)
        {
          v35 = 4;
          v32 = v33;
        }

        v137 = v32;
        v148 = a3 + (v29 - v151) * a11;
        v149 = v35;
        v147 = v35;
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

          if (v143 < v37)
          {
            v37 = v143;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v153)
          {
            v41 = v136 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v150 >= v151 && v36 >= a7)
          {
            v43 = v39 != v136;
            if (v34 != v153)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v137;
          }

          if (v144)
          {
            v64 = 0;
            v65 = v128 >> (*(result + 57) != 0);
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

            v116 = (v64 >> 3) - 1;
            v117 = (v67 >> 2) - 1;
            if ((v66 & 1) != 0 || (v118 = 32 - __clz(~(-1 << -__clz(v116))), v119 = 32 - __clz(~(-1 << -__clz(v117))), !(v119 | v118)))
            {
              v127 = 0;
            }

            else
            {
              v120 = 0;
              v121 = 0;
              v122 = v34 & v116;
              v123 = v17 & v117;
              v124 = v119 != 0;
              v125 = v118 != 0;
              v126 = 1;
              do
              {
                --v119;
                if (v124)
                {
                  v121 |= (v126 & v123) << v120++;
                }

                else
                {
                  v119 = 0;
                }

                --v118;
                if (v125)
                {
                  v121 |= (v126 & v122) << v120++;
                }

                else
                {
                  v118 = 0;
                }

                v126 *= 2;
                --v120;
                v125 = v118 != 0;
                v124 = v119 != 0;
              }

              while (v118 | v119);
              v127 = v121 << 9;
              result = v152;
            }

            v51 = v127 + ((v36 / v64 + v150 / v67 * ((v64 + v129) / v64)) << 14);
          }

          else if (v141)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v48 = v140.i8[0];
            v47 = v140.i8[4];
            v49 = v141.i32[0];
            v50 = v141.i32[1];
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
LABEL_78:
              v63 = 0;
              goto LABEL_79;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 2) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_78;
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
LABEL_79:
          v68 = (a4 + v63);
          v69 = v148 + 16 * (v38 - a7);
          v70 = (a2 + v51);
          if (v154)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 4)))
            {
              v74 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v69, a11, v74, v68, v41, v149);
LABEL_87:
              a7 = v142;
              if (v154)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v71 = v41;
            v72 = v40;
            v73 = v38;
            memcpy(__dst, v70, sizeof(__dst));
            v38 = v73;
            v36 = 8 * v34;
            v74 = __dst;
            v40 = v72;
            LOBYTE(v41) = v71;
            result = v152;
          }

          else
          {
            v74 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 4)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v156 = v74;
          v164 = v41;
          v165 = v149;
          v160 = v139;
          v161 = v38 - v36;
          v157 = v68;
          v158 = v69;
          v159 = a11;
          v162 = v138;
          v163 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_87;
          }

          v75 = &v74[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 128, v74, *v68)];
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 128, v75, v68[1]);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 128, v76, v68[2]);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 128, v77, v68[3]);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 128, v78, v68[4]);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 128, v79, v68[5]);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 128, v80, v68[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 128, v80 + v81, v68[7]);
          v82 = v162;
          a7 = v142;
          if (v162)
          {
            v83 = v163;
            if (v163)
            {
              v84 = 0;
              v85 = v160 << 7;
              v86 = 16 * v161;
              v87 = &v167[0].i8[v85 + v86];
              v88 = v158;
              v89 = v159;
              v90 = 16 * v163;
              if (16 * v163)
              {
                v91 = (16 * v163 - 1) >> 32 == 0;
              }

              else
              {
                v91 = 0;
              }

              v92 = !v91;
              v94 = v87 < v158 + v159 * (v162 - 1) + 16 * v163 && v158 < &__dst[128 * v162 + 384 + 128 * v160 + 16 * v163 + v86];
              v95 = v90 & 0x1FFFFFFE0;
              v96 = v92 | (v159 < 0) | v94;
              v97 = &v167[1].i8[v85 + v86];
              v98 = (v158 + 16);
              v99 = v87;
              v100 = v158;
              do
              {
                v101 = (v88 + v84 * v89);
                v102 = &v87[128 * v84];
                if (v96)
                {
                  v103 = 0;
                }

                else
                {
                  if (v83 == 1)
                  {
                    v107 = 0;
LABEL_112:
                    v108 = -16 * v83 + v107;
                    v109 = (v100 + v107);
                    v110 = &v99[v107];
                    do
                    {
                      v111 = *v109++;
                      *v110 = v111;
                      v110 += 16;
                      v108 += 16;
                    }

                    while (v108);
                    goto LABEL_104;
                  }

                  v112 = v98;
                  v113 = v97;
                  v114 = v90 & 0x1FFFFFFE0;
                  do
                  {
                    v115 = *v112;
                    *(v113 - 1) = *(v112 - 1);
                    *v113 = v115;
                    v113 += 32;
                    v112 += 2;
                    v114 -= 32;
                  }

                  while (v114);
                  if (v90 == v95)
                  {
                    goto LABEL_104;
                  }

                  v107 = v90 & 0x1FFFFFFE0;
                  if (v83)
                  {
                    goto LABEL_112;
                  }

                  v101 += v95;
                  v102 += v95;
                  v103 = v90 & 0xFFFFFFE0;
                }

                v104 = v103 + 1;
                do
                {
                  v105 = *v101++;
                  *v102++ = v105;
                }

                while (v90 > v104++);
LABEL_104:
                ++v84;
                v97 += 128;
                v98 = (v98 + v89);
                v100 += v89;
                v99 += 128;
              }

              while (v84 != v82);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v167, 128, v156, v157, v164, v165);
          if (v154)
          {
LABEL_26:
            memcpy(v70, v74, 0x200uLL);
          }

LABEL_27:
          v21 = v34++ == v143 >> 3;
          result = v152;
        }

        while (!v21);
        v21 = v17++ == v135;
      }

      while (!v21);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v203 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v179 = a8;
  v16 = a8 >> 2;
  v160 = a8 + a10 - 1;
  v162 = v160 >> 2;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v180 = a1;
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
  v182 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v25 = a1;
  v172 = isLevelTiled;
  if (v16 <= v162)
  {
    v171 = a7 + a9 - 1;
    if (a7 >> 3 <= v171 >> 3)
    {
      v26 = a11;
      v181 = (a5 - 1) >> 3;
      v157 = a5 - 1;
      v165 = (a5 - 1) & 7;
      v158 = (a6 - 1) & 3;
      v159 = (a6 - 1) >> 2;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v28 = vcgt_u32(v27, 0xF00000007);
      v170 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v27, 0xFFFFFFFDFFFFFFFELL), -1))))))), v28);
      v169 = v28;
      v156 = 8 * v18 * v17;
      do
      {
        v29 = (4 * v16) | 3;
        if (4 * v16 <= v179)
        {
          v30 = v179;
        }

        else
        {
          v30 = 4 * v16;
        }

        if (v160 < v29)
        {
          v29 = v160;
        }

        v178 = 4 * v16;
        v168 = v30 - 4 * v16;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v158;
        v167 = v32;
        v34 = a7 >> 3;
        if (v16 == v159)
        {
          v35 = v158 + 1;
        }

        else
        {
          v35 = 4;
        }

        if (v16 != v159)
        {
          v33 = v32 != 4;
        }

        v166 = v33;
        v177 = a3 + (v30 - v179) * v26;
        v176 = v35;
        v163 = v35;
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

          if (v171 < v37)
          {
            v37 = a7 + a9 - 1;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v181)
          {
            v41 = v165 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v178 >= v179 && v36 >= a7)
          {
            v43 = v39 != v165;
            if (v34 != v181)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v166;
          }

          if (v172)
          {
            v64 = 0;
            v65 = v156 >> (*(v25 + 57) != 0);
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

            v144 = (v64 >> 3) - 1;
            v145 = (v67 >> 2) - 1;
            if ((v66 & 1) != 0 || (v146 = 32 - __clz(~(-1 << -__clz(v144))), v147 = 32 - __clz(~(-1 << -__clz(v145))), !(v147 | v146)))
            {
              v155 = 0;
            }

            else
            {
              v148 = 0;
              v149 = 0;
              v150 = v34 & v144;
              v151 = v16 & v145;
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
            }

            v51 = v155 + ((v36 / v64 + v178 / v67 * ((v64 + v157) / v64)) << 14);
          }

          else if (v170)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v48 = v169.i8[0];
            v47 = v169.i8[4];
            v49 = v170.i32[0];
            v50 = v170.i32[1];
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
            v51 = v45 << 9;
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
LABEL_80:
              v63 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 2) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_80;
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
LABEL_81:
          v68 = (a4 + v63);
          v69 = v177 + 16 * (v38 - a7);
          v70 = (a2 + v51);
          if (v182)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v176 < 4)))
            {
              v73 = __dst;
LABEL_90:
              v75 = &byte_29D2F30E1;
              v76 = 16;
              v77 = v73;
              do
              {
                v85 = *v75;
                v86 = *(v75 - 1);
                if (v41 <= 2 * v86 || 2 * v85 >= v35)
                {
                  v84 = 0;
                }

                else
                {
                  v78 = (v69 + 2 * a11 * v85 + 32 * v86);
                  v79 = *v78;
                  v80 = v78[1];
                  v81 = (v78 + v26);
                  v82 = *v81;
                  v83 = v81[1];
                  *v77 = v79;
                  v77[1] = v80;
                  v77[2] = v82;
                  v77[3] = v83;
                  v77 += 4;
                  v84 = 63;
                }

                *v68++ = v84;
                v75 += 2;
                v76 -= 2;
              }

              while (v76);
              goto LABEL_87;
            }

            v164 = v38;
            v71 = v40;
            v72 = v42;
            memcpy(__dst, v70, sizeof(__dst));
            v73 = __dst;
            v42 = v72;
            v36 = 8 * v34;
            v26 = a11;
            v40 = v71;
            v35 = v163;
            v38 = v164;
            v25 = v180;
          }

          else
          {
            v73 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v176 < 4)))
            {
              goto LABEL_90;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v25;
          v184 = v73;
          v192 = v41;
          v193 = v35;
          v188 = v168;
          v189 = v38 - v36;
          v185 = v68;
          v186 = v69;
          v187 = v26;
          v190 = v167;
          v191 = v40;
          if (v42)
          {
            v74 = v73;
            dispatch_sync(*(*(v25 + 8) + 16552), block);
            v73 = v74;
            v25 = v180;
            goto LABEL_87;
          }

          v88 = v73;
          v89 = &v73[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v195, 128, v73, *v68)];
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 128, v89, v68[1]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 128, v90, v68[2]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 128, v91, v68[3]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 128, v92, v68[4]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 128, v93, v68[5]);
          v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 128, v94, v68[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 128, v94 + v95, v68[7]);
          v96 = v190;
          if (v190)
          {
            v97 = v191;
            if (v191)
            {
              v98 = 0;
              v99 = v188 << 7;
              v100 = 16 * v189;
              v101 = &v195[0].i8[v99 + v100];
              v102 = v186;
              v103 = v187;
              v104 = 16 * v191;
              if (16 * v191)
              {
                v105 = (16 * v191 - 1) >> 32 == 0;
              }

              else
              {
                v105 = 0;
              }

              v106 = !v105;
              v108 = v101 < v186 + v187 * (v190 - 1) + 16 * v191 && v186 < &__dst[128 * v190 + 384 + 128 * v188 + 16 * v191 + v100];
              v109 = v104 & 0x1FFFFFFE0;
              v110 = v106 | (v187 < 0) | v108;
              v111 = &v195[1].i8[v99 + v100];
              v112 = (v186 + 16);
              v113 = v101;
              v114 = v186;
              do
              {
                v115 = (v102 + v98 * v103);
                v116 = &v101[128 * v98];
                if (v110)
                {
                  v117 = 0;
                }

                else
                {
                  if (v97 == 1)
                  {
                    v121 = 0;
LABEL_121:
                    v122 = -16 * v97 + v121;
                    v123 = (v114 + v121);
                    v124 = &v113[v121];
                    do
                    {
                      v125 = *v123++;
                      *v124 = v125;
                      v124 += 16;
                      v122 += 16;
                    }

                    while (v122);
                    goto LABEL_113;
                  }

                  v126 = v112;
                  v127 = v111;
                  v128 = v104 & 0x1FFFFFFE0;
                  do
                  {
                    v129 = *v126;
                    *(v127 - 1) = *(v126 - 1);
                    *v127 = v129;
                    v127 += 32;
                    v126 += 2;
                    v128 -= 32;
                  }

                  while (v128);
                  if (v104 == v109)
                  {
                    goto LABEL_113;
                  }

                  v121 = v104 & 0x1FFFFFFE0;
                  if (v97)
                  {
                    goto LABEL_121;
                  }

                  v115 += v109;
                  v116 += v109;
                  v117 = v104 & 0xFFFFFFE0;
                }

                v118 = v117 + 1;
                do
                {
                  v119 = *v115++;
                  *v116++ = v119;
                }

                while (v104 > v118++);
LABEL_113:
                ++v98;
                v111 += 128;
                v112 = (v112 + v103);
                v114 += v103;
                v113 += 128;
              }

              while (v98 != v96);
            }
          }

          v130 = v184;
          v131 = v185;
          v132 = v192;
          v133 = &byte_29D2F30E1;
          v134 = 16;
          v135 = v193;
          v25 = v180;
          v73 = v88;
          do
          {
            v141 = *v133;
            v142 = *(v133 - 1);
            if (v132 <= 2 * v142 || 2 * v141 >= v135)
            {
              v140 = 0;
            }

            else
            {
              v136 = &v195[16 * v141 + 2 * v142];
              v137 = v136[1];
              v138 = v136[8];
              v139 = v136[9];
              *v130 = *v136;
              v130[1] = v137;
              v130[2] = v138;
              v130[3] = v139;
              v130 += 4;
              v140 = 63;
            }

            *v131++ = v140;
            v133 += 2;
            v134 -= 2;
          }

          while (v134);
LABEL_87:
          if (v182)
          {
            memcpy(v70, v73, 0x200uLL);
            v25 = v180;
          }

          v20 = v34++ == v171 >> 3;
        }

        while (!v20);
        v20 = v16++ == v162;
      }

      while (!v20);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v177 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v153 = a8;
  v136 = a8 + a10 - 1;
  v154 = a1;
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
  v135 = v136 >> 2;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v156 = v24;
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
      v147 = 0;
LABEL_32:
      v144 = v27 - 3;
      v139 = v26 - 2;
      v33 = -1 << *(*(a1 + 208) + 48);
      v133 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v147 = v32 >= v26;
    goto LABEL_32;
  }

  v147 = 0;
  v133 = 0;
  v139 = 0;
  v144 = 0;
LABEL_33:
  if (v18 <= v135)
  {
    v146 = a7 + a9 - 1;
    v132 = a7 >> 3;
    if (a7 >> 3 <= v146 >> 3)
    {
      v155 = v19 >> 3;
      v140 = v19 & 7;
      v130 = v20 & 3;
      v131 = v20 >> 2;
      v129 = ~(-1 << v139);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v138 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v137 = v35;
      v145 = a7;
      do
      {
        v36 = (4 * v18) | 3;
        if (4 * v18 <= v153)
        {
          v37 = v153;
        }

        else
        {
          v37 = 4 * v18;
        }

        if (v136 < v36)
        {
          v36 = v136;
        }

        v143 = v37 - 4 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v130;
        v142 = v39;
        v41 = v39 != 4;
        v42 = v130 + 1;
        if (v18 != v131)
        {
          v42 = 4;
          v40 = v41;
        }

        v141 = v40;
        v43 = v132;
        v44 = v18 & v129;
        v151 = a3 + (v37 - v153) * a11;
        v152 = v42;
        v150 = v42;
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

          if (v146 < v46)
          {
            v46 = v146;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v155)
          {
            v50 = v140 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (4 * v18 >= v153 && v45 >= a7)
          {
            v52 = v48 != v140;
            if (v43 != v155)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v141;
          }

          if (v147)
          {
            if (v144 | v139)
            {
              v53 = 0;
              v54 = 0;
              v55 = v144 != 0;
              v56 = 1;
              v58 = v139 != 0;
              v57 = v139;
              v59 = v144;
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
                  v54 |= (v43 & ~(-1 << v144) & v56) << v53++;
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

            v68 = v60 + *(result + 336) * ((v43 >> v144) + (v18 >> v139) * v133);
          }

          else if (v138)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v137.i8[0];
            v64 = v137.i8[4];
            v66 = v138.i32[0];
            v67 = v138.i32[1];
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
            if (!v71)
            {
LABEL_104:
              v80 = 0;
              goto LABEL_105;
            }
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 2) - 1)));
            if (!(v74 | v71))
            {
              goto LABEL_104;
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
LABEL_105:
          v81 = (a4 + v80);
          v82 = v151 + 16 * (v47 - a7);
          v83 = (a2 + v68);
          if (v156)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v150 < 4)))
            {
              v87 = __dst;
LABEL_112:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v87, v81, v50, v152);
LABEL_113:
              a7 = v145;
              if (v156)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            v84 = v51;
            v85 = v50;
            v86 = v47;
            memcpy(__dst, v83, sizeof(__dst));
            v47 = v86;
            v87 = __dst;
            v51 = v84;
            v44 = v18 & v129;
            LOBYTE(v50) = v85;
            result = v154;
          }

          else
          {
            v87 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 8u) | (v150 < 4)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v158 = v87;
          v166 = v50;
          v167 = v152;
          v162 = v143;
          v163 = v47 - v45;
          v159 = v81;
          v160 = v82;
          v161 = a11;
          v164 = v142;
          v165 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_113;
          }

          v88 = v87->i64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 128, v87, *v81);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 128, v88, v81[1]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 128, v89, v81[2]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 128, v90, v81[3]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 128, v91, v81[4]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 128, v92, v81[5]);
          v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 128, v93, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 128, v93 + v94, v81[7]);
          v95 = v164;
          a7 = v145;
          if (v164)
          {
            v96 = v165;
            if (v165)
            {
              v97 = 0;
              v98 = v162 << 7;
              v99 = 16 * v163;
              v100 = &v169[0].i8[v98 + v99];
              v101 = v160;
              v102 = v161;
              v103 = 16 * v165;
              if (16 * v165)
              {
                v104 = (16 * v165 - 1) >> 32 == 0;
              }

              else
              {
                v104 = 0;
              }

              v105 = !v104;
              v107 = v100 < v160 + v161 * (v164 - 1) + 16 * v165 && v160 < &__dst[128 * v164 + 384 + 128 * v162 + 16 * v165 + v99];
              v108 = v103 & 0x1FFFFFFE0;
              v109 = v105 | (v161 < 0) | v107;
              v110 = &v169[1].i8[v98 + v99];
              v111 = (v160 + 16);
              v112 = v100;
              v113 = v160;
              do
              {
                v114 = (v101 + v97 * v102);
                v115 = &v100[128 * v97];
                if (v109)
                {
                  v116 = 0;
                }

                else
                {
                  if (v96 == 1)
                  {
                    v120 = 0;
LABEL_138:
                    v121 = -16 * v96 + v120;
                    v122 = (v113 + v120);
                    v123 = &v112[v120];
                    do
                    {
                      v124 = *v122++;
                      *v123 = v124;
                      v123 += 16;
                      v121 += 16;
                    }

                    while (v121);
                    goto LABEL_130;
                  }

                  v125 = v111;
                  v126 = v110;
                  v127 = v103 & 0x1FFFFFFE0;
                  do
                  {
                    v128 = *v125;
                    *(v126 - 1) = *(v125 - 1);
                    *v126 = v128;
                    v126 += 32;
                    v125 += 2;
                    v127 -= 32;
                  }

                  while (v127);
                  if (v103 == v108)
                  {
                    goto LABEL_130;
                  }

                  v120 = v103 & 0x1FFFFFFE0;
                  if (v96)
                  {
                    goto LABEL_138;
                  }

                  v114 += v108;
                  v115 += v108;
                  v116 = v103 & 0xFFFFFFE0;
                }

                v117 = v116 + 1;
                do
                {
                  v118 = *v114++;
                  *v115++ = v118;
                }

                while (v103 > v117++);
LABEL_130:
                ++v97;
                v110 += 128;
                v111 = (v111 + v102);
                v113 += v102;
                v112 += 128;
              }

              while (v97 != v95);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v169, 128, v158, v159, v166, v167);
          if (v156)
          {
LABEL_46:
            memcpy(v83, v87, 0x200uLL);
          }

LABEL_47:
          v21 = v43++ == v146 >> 3;
          result = v154;
        }

        while (!v21);
        v21 = v18++ == v135;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v204 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v180 = a8;
  v162 = a8 + a10 - 1;
  v181 = a1;
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
  v161 = v162 >> 2;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v183 = v24;
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
      v175 = 0;
LABEL_32:
      v172 = v27 - 3;
      v166 = v26 - 2;
      v33 = -1 << *(*(a1 + 208) + 48);
      v159 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v175 = v32 >= v26;
    goto LABEL_32;
  }

  v175 = 0;
  v159 = 0;
  v166 = 0;
  v172 = 0;
LABEL_33:
  if (v18 <= v161)
  {
    v174 = a7 + a9 - 1;
    v158 = a7 >> 3;
    if (a7 >> 3 <= v174 >> 3)
    {
      v34 = a11;
      v182 = v19 >> 3;
      v168 = v19 & 7;
      v156 = v20 & 3;
      v157 = v20 >> 2;
      v155 = ~(-1 << v166);
      v35 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v36 = vcgt_u32(v35, 0xF00000007);
      v165 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v35, 0xFFFFFFFDFFFFFFFELL), -1))))))), v36);
      v164 = v36;
      v173 = a7;
      do
      {
        v37 = (4 * v18) | 3;
        if (4 * v18 <= v180)
        {
          v38 = v180;
        }

        else
        {
          v38 = 4 * v18;
        }

        if (v162 < v37)
        {
          v37 = v162;
        }

        v171 = v38 - 4 * v18;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v156;
        v170 = v40;
        v42 = v158;
        if (v18 == v157)
        {
          v43 = v156 + 1;
        }

        else
        {
          v43 = 4;
        }

        if (v18 != v157)
        {
          v41 = v40 != 4;
        }

        v169 = v41;
        v44 = v18 & v155;
        v179 = a3 + (v38 - v180) * v34;
        v178 = v43;
        v163 = v43;
        do
        {
          v45 = 8 * v42;
          v46 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 8 * v42;
          }

          if (v174 < v46)
          {
            v46 = v174;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v42 == v182)
          {
            v50 = v168 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (4 * v18 >= v180 && v45 >= a7)
          {
            v52 = v48 != v168;
            if (v42 != v182)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v169;
          }

          if (v175)
          {
            if (v172 | v166)
            {
              v53 = 0;
              v54 = 0;
              v55 = v172 != 0;
              v56 = 1;
              v58 = v166 != 0;
              v57 = v166;
              v59 = v172;
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
                  v54 |= (v42 & ~(-1 << v172) & v56) << v53++;
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

            v68 = v60 + *(result + 336) * ((v42 >> v172) + (v18 >> v166) * v159);
          }

          else if (v165)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v164.i8[0];
            v64 = v164.i8[4];
            v66 = v165.i32[0];
            v67 = v165.i32[1];
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
                v62 |= (v63 & v42) << v61++;
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
            if (!v71)
            {
LABEL_106:
              v80 = 0;
              goto LABEL_107;
            }
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 2) - 1)));
            if (!(v74 | v71))
            {
              goto LABEL_106;
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
              v76 |= (v79 & v42) << v75++;
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
LABEL_107:
          v81 = (a4 + v80);
          v82 = v179 + 16 * (v47 - a7);
          v83 = (a2 + v68);
          if (v183)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v178 < 4)))
            {
              v85 = __dst;
LABEL_117:
              v87 = &byte_29D2F30E1;
              v88 = 16;
              v89 = v85;
              do
              {
                v97 = *v87;
                v98 = *(v87 - 1);
                if (v50 <= 2 * v98 || 2 * v97 >= v43)
                {
                  v96 = 0;
                }

                else
                {
                  v90 = (v82 + 2 * a11 * v97 + 32 * v98);
                  v91 = *v90;
                  v92 = v90[1];
                  v93 = (v90 + v34);
                  v94 = *v93;
                  v95 = v93[1];
                  *v89 = v91;
                  v89[1] = v92;
                  v89[2] = v94;
                  v89[3] = v95;
                  v89 += 4;
                  v96 = 63;
                }

                *v81++ = v96;
                v87 += 2;
                v88 -= 2;
              }

              while (v88);
LABEL_113:
              a7 = v173;
              goto LABEL_114;
            }

            v84 = v47;
            memcpy(__dst, v83, sizeof(__dst));
            v47 = v84;
            v45 = 8 * v42;
            v44 = v18 & v155;
            v43 = v163;
            v85 = __dst;
            v34 = a11;
            result = v181;
          }

          else
          {
            v85 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 8u) | (v178 < 4)))
            {
              goto LABEL_117;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v185 = v85;
          v193 = v50;
          v194 = v43;
          v189 = v171;
          v190 = v47 - v45;
          v186 = v81;
          v187 = v82;
          v188 = v34;
          v191 = v170;
          v192 = v49;
          if (v51)
          {
            v86 = v85;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v85 = v86;
            v34 = a11;
            result = v181;
            goto LABEL_113;
          }

          v167 = v85;
          v100 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 128, v85, *v81)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 128, v100, v81[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 128, v101, v81[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 128, v102, v81[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 128, v103, v81[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 128, v104, v81[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 128, v105, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v203, 128, v105 + v106, v81[7]);
          v107 = v191;
          if (v191)
          {
            v108 = v192;
            if (v192)
            {
              v109 = 0;
              v110 = v189 << 7;
              v111 = 16 * v190;
              v112 = &v196[0].i8[v110 + v111];
              v113 = v187;
              v114 = v188;
              v115 = 16 * v192;
              if (16 * v192)
              {
                v116 = (16 * v192 - 1) >> 32 == 0;
              }

              else
              {
                v116 = 0;
              }

              v117 = !v116;
              v119 = v112 < v187 + v188 * (v191 - 1) + 16 * v192 && v187 < &__dst[128 * v191 + 384 + 128 * v189 + 16 * v192 + v111];
              v120 = v115 & 0x1FFFFFFE0;
              v121 = v117 | (v188 < 0) | v119;
              v122 = &v196[1].i8[v110 + v111];
              v123 = (v187 + 16);
              v124 = v112;
              v125 = v187;
              do
              {
                v126 = (v113 + v109 * v114);
                v127 = &v112[128 * v109];
                if (v121)
                {
                  v128 = 0;
                }

                else
                {
                  if (v108 == 1)
                  {
                    v132 = 0;
LABEL_148:
                    v133 = -16 * v108 + v132;
                    v134 = (v125 + v132);
                    v135 = &v124[v132];
                    do
                    {
                      v136 = *v134++;
                      *v135 = v136;
                      v135 += 16;
                      v133 += 16;
                    }

                    while (v133);
                    goto LABEL_140;
                  }

                  v137 = v123;
                  v138 = v122;
                  v139 = v115 & 0x1FFFFFFE0;
                  do
                  {
                    v140 = *v137;
                    *(v138 - 1) = *(v137 - 1);
                    *v138 = v140;
                    v138 += 32;
                    v137 += 2;
                    v139 -= 32;
                  }

                  while (v139);
                  if (v115 == v120)
                  {
                    goto LABEL_140;
                  }

                  v132 = v115 & 0x1FFFFFFE0;
                  if (v108)
                  {
                    goto LABEL_148;
                  }

                  v126 += v120;
                  v127 += v120;
                  v128 = v115 & 0xFFFFFFE0;
                }

                v129 = v128 + 1;
                do
                {
                  v130 = *v126++;
                  *v127++ = v130;
                }

                while (v115 > v129++);
LABEL_140:
                ++v109;
                v122 += 128;
                v123 = (v123 + v114);
                v125 += v114;
                v124 += 128;
              }

              while (v109 != v107);
            }
          }

          v141 = v185;
          v142 = v186;
          v143 = v193;
          v144 = &byte_29D2F30E1;
          v145 = 16;
          v146 = v194;
          a7 = v173;
          v34 = a11;
          result = v181;
          v85 = v167;
          do
          {
            v152 = *v144;
            v153 = *(v144 - 1);
            if (v143 <= 2 * v153 || 2 * v152 >= v146)
            {
              v151 = 0;
            }

            else
            {
              v147 = &v196[16 * v152 + 2 * v153];
              v148 = v147[1];
              v149 = v147[8];
              v150 = v147[9];
              *v141 = *v147;
              v141[1] = v148;
              v141[2] = v149;
              v141[3] = v150;
              v141 += 4;
              v151 = 63;
            }

            *v142++ = v151;
            v144 += 2;
            v145 -= 2;
          }

          while (v145);
LABEL_114:
          if (v183)
          {
            memcpy(v83, v85, 0x200uLL);
            v34 = a11;
            result = v181;
          }

          v21 = v42++ == v174 >> 3;
        }

        while (!v21);
        v21 = v18++ == v161;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v175 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v151 = a8;
  v17 = a8 >> 2;
  v133 = a8 + a10 - 1;
  v135 = v133 >> 2;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v152 = a1;
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
  v154 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v144 = result;
  if (v17 <= v135)
  {
    v143 = a7 + a9 - 1;
    v132 = a7 >> 3;
    if (a7 >> 3 <= v143 >> 3)
    {
      result = a1;
      v153 = (a5 - 1) >> 3;
      v129 = a5 - 1;
      v136 = (a5 - 1) & 7;
      v130 = (a6 - 1) & 3;
      v131 = (a6 - 1) >> 2;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v27 = vcgt_u32(v26, 0xF00000007);
      v141 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFDFFFFFFFELL), -1))))))), v27);
      v140 = v27;
      v128 = 8 * v19 * v18;
      v142 = a7;
      do
      {
        v28 = (4 * v17) | 3;
        if (4 * v17 <= v151)
        {
          v29 = v151;
        }

        else
        {
          v29 = 4 * v17;
        }

        if (v133 < v28)
        {
          v28 = v133;
        }

        v150 = 4 * v17;
        v139 = v29 - 4 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v130;
        v138 = v31;
        v33 = v31 != 4;
        v34 = v132;
        v35 = v130 + 1;
        if (v17 != v131)
        {
          v35 = 4;
          v32 = v33;
        }

        v137 = v32;
        v148 = a3 + (v29 - v151) * a11;
        v149 = v35;
        v147 = v35;
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

          if (v143 < v37)
          {
            v37 = v143;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v153)
          {
            v41 = v136 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v150 >= v151 && v36 >= a7)
          {
            v43 = v39 != v136;
            if (v34 != v153)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v137;
          }

          if (v144)
          {
            v64 = 0;
            v65 = v128 >> (*(result + 57) != 0);
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

            v116 = (v64 >> 3) - 1;
            v117 = (v67 >> 2) - 1;
            if ((v66 & 1) != 0 || (v118 = 32 - __clz(~(-1 << -__clz(v116))), v119 = 32 - __clz(~(-1 << -__clz(v117))), !(v119 | v118)))
            {
              v127 = 0;
            }

            else
            {
              v120 = 0;
              v121 = 0;
              v122 = v34 & v116;
              v123 = v17 & v117;
              v124 = v119 != 0;
              v125 = v118 != 0;
              v126 = 1;
              do
              {
                --v119;
                if (v124)
                {
                  v121 |= (v126 & v123) << v120++;
                }

                else
                {
                  v119 = 0;
                }

                --v118;
                if (v125)
                {
                  v121 |= (v126 & v122) << v120++;
                }

                else
                {
                  v118 = 0;
                }

                v126 *= 2;
                --v120;
                v125 = v118 != 0;
                v124 = v119 != 0;
              }

              while (v118 | v119);
              v127 = v121 << 9;
              result = v152;
            }

            v51 = v127 + ((v36 / v64 + v150 / v67 * ((v64 + v129) / v64)) << 14);
          }

          else if (v141)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v48 = v140.i8[0];
            v47 = v140.i8[4];
            v49 = v141.i32[0];
            v50 = v141.i32[1];
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
LABEL_78:
              v63 = 0;
              goto LABEL_79;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 2) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_78;
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
LABEL_79:
          v68 = (a4 + v63);
          v69 = v148 + 16 * (v38 - a7);
          v70 = (a2 + v51);
          if (v154)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 4)))
            {
              v74 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v69, a11, v74, v68, v41, v149);
LABEL_87:
              a7 = v142;
              if (v154)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v71 = v41;
            v72 = v40;
            v73 = v38;
            memcpy(__dst, v70, sizeof(__dst));
            v38 = v73;
            v36 = 8 * v34;
            v74 = __dst;
            v40 = v72;
            LOBYTE(v41) = v71;
            result = v152;
          }

          else
          {
            v74 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 4)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v156 = v74;
          v164 = v41;
          v165 = v149;
          v160 = v139;
          v161 = v38 - v36;
          v157 = v68;
          v158 = v69;
          v159 = a11;
          v162 = v138;
          v163 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_87;
          }

          v75 = v74->i64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 128, v74, *v68);
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 128, v75, v68[1]);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 128, v76, v68[2]);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 128, v77, v68[3]);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 128, v78, v68[4]);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 128, v79, v68[5]);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 128, v80, v68[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 128, v80 + v81, v68[7]);
          v82 = v162;
          a7 = v142;
          if (v162)
          {
            v83 = v163;
            if (v163)
            {
              v84 = 0;
              v85 = v160 << 7;
              v86 = 16 * v161;
              v87 = &v167[0].i8[v85 + v86];
              v88 = v158;
              v89 = v159;
              v90 = 16 * v163;
              if (16 * v163)
              {
                v91 = (16 * v163 - 1) >> 32 == 0;
              }

              else
              {
                v91 = 0;
              }

              v92 = !v91;
              v94 = v87 < v158 + v159 * (v162 - 1) + 16 * v163 && v158 < &__dst[128 * v162 + 384 + 128 * v160 + 16 * v163 + v86];
              v95 = v90 & 0x1FFFFFFE0;
              v96 = v92 | (v159 < 0) | v94;
              v97 = &v167[1].i8[v85 + v86];
              v98 = (v158 + 16);
              v99 = v87;
              v100 = v158;
              do
              {
                v101 = (v88 + v84 * v89);
                v102 = &v87[128 * v84];
                if (v96)
                {
                  v103 = 0;
                }

                else
                {
                  if (v83 == 1)
                  {
                    v107 = 0;
LABEL_112:
                    v108 = -16 * v83 + v107;
                    v109 = (v100 + v107);
                    v110 = &v99[v107];
                    do
                    {
                      v111 = *v109++;
                      *v110 = v111;
                      v110 += 16;
                      v108 += 16;
                    }

                    while (v108);
                    goto LABEL_104;
                  }

                  v112 = v98;
                  v113 = v97;
                  v114 = v90 & 0x1FFFFFFE0;
                  do
                  {
                    v115 = *v112;
                    *(v113 - 1) = *(v112 - 1);
                    *v113 = v115;
                    v113 += 32;
                    v112 += 2;
                    v114 -= 32;
                  }

                  while (v114);
                  if (v90 == v95)
                  {
                    goto LABEL_104;
                  }

                  v107 = v90 & 0x1FFFFFFE0;
                  if (v83)
                  {
                    goto LABEL_112;
                  }

                  v101 += v95;
                  v102 += v95;
                  v103 = v90 & 0xFFFFFFE0;
                }

                v104 = v103 + 1;
                do
                {
                  v105 = *v101++;
                  *v102++ = v105;
                }

                while (v90 > v104++);
LABEL_104:
                ++v84;
                v97 += 128;
                v98 = (v98 + v89);
                v100 += v89;
                v99 += 128;
              }

              while (v84 != v82);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v167, 128, v156, v157, v164, v165);
          if (v154)
          {
LABEL_26:
            memcpy(v70, v74, 0x200uLL);
          }

LABEL_27:
          v21 = v34++ == v143 >> 3;
          result = v152;
        }

        while (!v21);
        v21 = v17++ == v135;
      }

      while (!v21);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v203 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v179 = a8;
  v16 = a8 >> 2;
  v160 = a8 + a10 - 1;
  v162 = v160 >> 2;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v180 = a1;
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
  v182 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v25 = a1;
  v172 = isLevelTiled;
  if (v16 <= v162)
  {
    v171 = a7 + a9 - 1;
    if (a7 >> 3 <= v171 >> 3)
    {
      v26 = a11;
      v181 = (a5 - 1) >> 3;
      v157 = a5 - 1;
      v165 = (a5 - 1) & 7;
      v158 = (a6 - 1) & 3;
      v159 = (a6 - 1) >> 2;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v28 = vcgt_u32(v27, 0xF00000007);
      v170 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v27, 0xFFFFFFFDFFFFFFFELL), -1))))))), v28);
      v169 = v28;
      v156 = 8 * v18 * v17;
      do
      {
        v29 = (4 * v16) | 3;
        if (4 * v16 <= v179)
        {
          v30 = v179;
        }

        else
        {
          v30 = 4 * v16;
        }

        if (v160 < v29)
        {
          v29 = v160;
        }

        v178 = 4 * v16;
        v168 = v30 - 4 * v16;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v158;
        v167 = v32;
        v34 = a7 >> 3;
        if (v16 == v159)
        {
          v35 = v158 + 1;
        }

        else
        {
          v35 = 4;
        }

        if (v16 != v159)
        {
          v33 = v32 != 4;
        }

        v166 = v33;
        v177 = a3 + (v30 - v179) * v26;
        v176 = v35;
        v163 = v35;
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

          if (v171 < v37)
          {
            v37 = a7 + a9 - 1;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v181)
          {
            v41 = v165 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v178 >= v179 && v36 >= a7)
          {
            v43 = v39 != v165;
            if (v34 != v181)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v166;
          }

          if (v172)
          {
            v64 = 0;
            v65 = v156 >> (*(v25 + 57) != 0);
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

            v144 = (v64 >> 3) - 1;
            v145 = (v67 >> 2) - 1;
            if ((v66 & 1) != 0 || (v146 = 32 - __clz(~(-1 << -__clz(v144))), v147 = 32 - __clz(~(-1 << -__clz(v145))), !(v147 | v146)))
            {
              v155 = 0;
            }

            else
            {
              v148 = 0;
              v149 = 0;
              v150 = v34 & v144;
              v151 = v16 & v145;
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
            }

            v51 = v155 + ((v36 / v64 + v178 / v67 * ((v64 + v157) / v64)) << 14);
          }

          else if (v170)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v48 = v169.i8[0];
            v47 = v169.i8[4];
            v49 = v170.i32[0];
            v50 = v170.i32[1];
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
            v51 = v45 << 9;
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
LABEL_80:
              v63 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 2) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_80;
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
LABEL_81:
          v68 = (a4 + v63);
          v69 = v177 + 16 * (v38 - a7);
          v70 = (a2 + v51);
          if (v182)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v176 < 4)))
            {
              v73 = __dst;
LABEL_90:
              v75 = &byte_29D2F30E1;
              v76 = 16;
              v77 = v73;
              do
              {
                v85 = *v75;
                v86 = *(v75 - 1);
                if (v41 <= 2 * v86 || 2 * v85 >= v35)
                {
                  v84 = 0;
                }

                else
                {
                  v78 = (v69 + 2 * a11 * v85 + 32 * v86);
                  v79 = *v78;
                  v80 = v78[1];
                  v81 = (v78 + v26);
                  v82 = *v81;
                  v83 = v81[1];
                  *v77 = v79;
                  v77[1] = v80;
                  v77[2] = v82;
                  v77[3] = v83;
                  v77 += 4;
                  v84 = 63;
                }

                *v68++ = v84;
                v75 += 2;
                v76 -= 2;
              }

              while (v76);
              goto LABEL_87;
            }

            v164 = v38;
            v71 = v40;
            v72 = v42;
            memcpy(__dst, v70, sizeof(__dst));
            v73 = __dst;
            v42 = v72;
            v36 = 8 * v34;
            v26 = a11;
            v40 = v71;
            v35 = v163;
            v38 = v164;
            v25 = v180;
          }

          else
          {
            v73 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v176 < 4)))
            {
              goto LABEL_90;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v25;
          v184 = v73;
          v192 = v41;
          v193 = v35;
          v188 = v168;
          v189 = v38 - v36;
          v185 = v68;
          v186 = v69;
          v187 = v26;
          v190 = v167;
          v191 = v40;
          if (v42)
          {
            v74 = v73;
            dispatch_sync(*(*(v25 + 8) + 16552), block);
            v73 = v74;
            v25 = v180;
            goto LABEL_87;
          }

          v88 = v73;
          v89 = &v73[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v195, 128, v73, *v68)];
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 128, v89, v68[1]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 128, v90, v68[2]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 128, v91, v68[3]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 128, v92, v68[4]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 128, v93, v68[5]);
          v95 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 128, v94, v68[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 128, v94 + v95, v68[7]);
          v96 = v190;
          if (v190)
          {
            v97 = v191;
            if (v191)
            {
              v98 = 0;
              v99 = v188 << 7;
              v100 = 16 * v189;
              v101 = &v195[0].i8[v99 + v100];
              v102 = v186;
              v103 = v187;
              v104 = 16 * v191;
              if (16 * v191)
              {
                v105 = (16 * v191 - 1) >> 32 == 0;
              }

              else
              {
                v105 = 0;
              }

              v106 = !v105;
              v108 = v101 < v186 + v187 * (v190 - 1) + 16 * v191 && v186 < &__dst[128 * v190 + 384 + 128 * v188 + 16 * v191 + v100];
              v109 = v104 & 0x1FFFFFFE0;
              v110 = v106 | (v187 < 0) | v108;
              v111 = &v195[1].i8[v99 + v100];
              v112 = (v186 + 16);
              v113 = v101;
              v114 = v186;
              do
              {
                v115 = (v102 + v98 * v103);
                v116 = &v101[128 * v98];
                if (v110)
                {
                  v117 = 0;
                }

                else
                {
                  if (v97 == 1)
                  {
                    v121 = 0;
LABEL_121:
                    v122 = -16 * v97 + v121;
                    v123 = (v114 + v121);
                    v124 = &v113[v121];
                    do
                    {
                      v125 = *v123++;
                      *v124 = v125;
                      v124 += 16;
                      v122 += 16;
                    }

                    while (v122);
                    goto LABEL_113;
                  }

                  v126 = v112;
                  v127 = v111;
                  v128 = v104 & 0x1FFFFFFE0;
                  do
                  {
                    v129 = *v126;
                    *(v127 - 1) = *(v126 - 1);
                    *v127 = v129;
                    v127 += 32;
                    v126 += 2;
                    v128 -= 32;
                  }

                  while (v128);
                  if (v104 == v109)
                  {
                    goto LABEL_113;
                  }

                  v121 = v104 & 0x1FFFFFFE0;
                  if (v97)
                  {
                    goto LABEL_121;
                  }

                  v115 += v109;
                  v116 += v109;
                  v117 = v104 & 0xFFFFFFE0;
                }

                v118 = v117 + 1;
                do
                {
                  v119 = *v115++;
                  *v116++ = v119;
                }

                while (v104 > v118++);
LABEL_113:
                ++v98;
                v111 += 128;
                v112 = (v112 + v103);
                v114 += v103;
                v113 += 128;
              }

              while (v98 != v96);
            }
          }

          v130 = v184;
          v131 = v185;
          v132 = v192;
          v133 = &byte_29D2F30E1;
          v134 = 16;
          v135 = v193;
          v25 = v180;
          v73 = v88;
          do
          {
            v141 = *v133;
            v142 = *(v133 - 1);
            if (v132 <= 2 * v142 || 2 * v141 >= v135)
            {
              v140 = 0;
            }

            else
            {
              v136 = &v195[16 * v141 + 2 * v142];
              v137 = v136[1];
              v138 = v136[8];
              v139 = v136[9];
              *v130 = *v136;
              v130[1] = v137;
              v130[2] = v138;
              v130[3] = v139;
              v130 += 4;
              v140 = 63;
            }

            *v131++ = v140;
            v133 += 2;
            v134 -= 2;
          }

          while (v134);
LABEL_87:
          if (v182)
          {
            memcpy(v70, v73, 0x200uLL);
            v25 = v180;
          }

          v20 = v34++ == v171 >> 3;
        }

        while (!v20);
        v20 = v16++ == v162;
      }

      while (!v20);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v177 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v153 = a8;
  v136 = a8 + a10 - 1;
  v154 = a1;
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
  v135 = v136 >> 2;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v156 = v24;
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
      v147 = 0;
LABEL_32:
      v144 = v27 - 3;
      v139 = v26 - 2;
      v33 = -1 << *(*(a1 + 208) + 48);
      v133 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v147 = v32 >= v26;
    goto LABEL_32;
  }

  v147 = 0;
  v133 = 0;
  v139 = 0;
  v144 = 0;
LABEL_33:
  if (v18 <= v135)
  {
    v146 = a7 + a9 - 1;
    v132 = a7 >> 3;
    if (a7 >> 3 <= v146 >> 3)
    {
      v155 = v19 >> 3;
      v140 = v19 & 7;
      v130 = v20 & 3;
      v131 = v20 >> 2;
      v129 = ~(-1 << v139);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v138 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v137 = v35;
      v145 = a7;
      do
      {
        v36 = (4 * v18) | 3;
        if (4 * v18 <= v153)
        {
          v37 = v153;
        }

        else
        {
          v37 = 4 * v18;
        }

        if (v136 < v36)
        {
          v36 = v136;
        }

        v143 = v37 - 4 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v130;
        v142 = v39;
        v41 = v39 != 4;
        v42 = v130 + 1;
        if (v18 != v131)
        {
          v42 = 4;
          v40 = v41;
        }

        v141 = v40;
        v43 = v132;
        v44 = v18 & v129;
        v151 = a3 + (v37 - v153) * a11;
        v152 = v42;
        v150 = v42;
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

          if (v146 < v46)
          {
            v46 = v146;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v155)
          {
            v50 = v140 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (4 * v18 >= v153 && v45 >= a7)
          {
            v52 = v48 != v140;
            if (v43 != v155)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v141;
          }

          if (v147)
          {
            if (v144 | v139)
            {
              v53 = 0;
              v54 = 0;
              v55 = v144 != 0;
              v56 = 1;
              v58 = v139 != 0;
              v57 = v139;
              v59 = v144;
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
                  v54 |= (v43 & ~(-1 << v144) & v56) << v53++;
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

            v68 = v60 + *(result + 336) * ((v43 >> v144) + (v18 >> v139) * v133);
          }

          else if (v138)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v137.i8[0];
            v64 = v137.i8[4];
            v66 = v138.i32[0];
            v67 = v138.i32[1];
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
            if (!v71)
            {
LABEL_104:
              v80 = 0;
              goto LABEL_105;
            }
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 2) - 1)));
            if (!(v74 | v71))
            {
              goto LABEL_104;
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
LABEL_105:
          v81 = (a4 + v80);
          v82 = v151 + 16 * (v47 - a7);
          v83 = (a2 + v68);
          if (v156)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v150 < 4)))
            {
              v87 = __dst;
LABEL_112:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v87, v81, v50, v152);
LABEL_113:
              a7 = v145;
              if (v156)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            v84 = v51;
            v85 = v50;
            v86 = v47;
            memcpy(__dst, v83, sizeof(__dst));
            v47 = v86;
            v87 = __dst;
            v51 = v84;
            v44 = v18 & v129;
            LOBYTE(v50) = v85;
            result = v154;
          }

          else
          {
            v87 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 8u) | (v150 < 4)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v158 = v87;
          v166 = v50;
          v167 = v152;
          v162 = v143;
          v163 = v47 - v45;
          v159 = v81;
          v160 = v82;
          v161 = a11;
          v164 = v142;
          v165 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_113;
          }

          v88 = v87->i64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 128, v87, *v81);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 128, v88, v81[1]);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 128, v89, v81[2]);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 128, v90, v81[3]);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 128, v91, v81[4]);
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 128, v92, v81[5]);
          v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 128, v93, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 128, v93 + v94, v81[7]);
          v95 = v164;
          a7 = v145;
          if (v164)
          {
            v96 = v165;
            if (v165)
            {
              v97 = 0;
              v98 = v162 << 7;
              v99 = 16 * v163;
              v100 = &v169[0].i8[v98 + v99];
              v101 = v160;
              v102 = v161;
              v103 = 16 * v165;
              if (16 * v165)
              {
                v104 = (16 * v165 - 1) >> 32 == 0;
              }

              else
              {
                v104 = 0;
              }

              v105 = !v104;
              v107 = v100 < v160 + v161 * (v164 - 1) + 16 * v165 && v160 < &__dst[128 * v164 + 384 + 128 * v162 + 16 * v165 + v99];
              v108 = v103 & 0x1FFFFFFE0;
              v109 = v105 | (v161 < 0) | v107;
              v110 = &v169[1].i8[v98 + v99];
              v111 = (v160 + 16);
              v112 = v100;
              v113 = v160;
              do
              {
                v114 = (v101 + v97 * v102);
                v115 = &v100[128 * v97];
                if (v109)
                {
                  v116 = 0;
                }

                else
                {
                  if (v96 == 1)
                  {
                    v120 = 0;
LABEL_138:
                    v121 = -16 * v96 + v120;
                    v122 = (v113 + v120);
                    v123 = &v112[v120];
                    do
                    {
                      v124 = *v122++;
                      *v123 = v124;
                      v123 += 16;
                      v121 += 16;
                    }

                    while (v121);
                    goto LABEL_130;
                  }

                  v125 = v111;
                  v126 = v110;
                  v127 = v103 & 0x1FFFFFFE0;
                  do
                  {
                    v128 = *v125;
                    *(v126 - 1) = *(v125 - 1);
                    *v126 = v128;
                    v126 += 32;
                    v125 += 2;
                    v127 -= 32;
                  }

                  while (v127);
                  if (v103 == v108)
                  {
                    goto LABEL_130;
                  }

                  v120 = v103 & 0x1FFFFFFE0;
                  if (v96)
                  {
                    goto LABEL_138;
                  }

                  v114 += v108;
                  v115 += v108;
                  v116 = v103 & 0xFFFFFFE0;
                }

                v117 = v116 + 1;
                do
                {
                  v118 = *v114++;
                  *v115++ = v118;
                }

                while (v103 > v117++);
LABEL_130:
                ++v97;
                v110 += 128;
                v111 = (v111 + v102);
                v113 += v102;
                v112 += 128;
              }

              while (v97 != v95);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v169, 128, v158, v159, v166, v167);
          if (v156)
          {
LABEL_46:
            memcpy(v83, v87, 0x200uLL);
          }

LABEL_47:
          v21 = v43++ == v146 >> 3;
          result = v154;
        }

        while (!v21);
        v21 = v18++ == v135;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v204 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v180 = a8;
  v162 = a8 + a10 - 1;
  v181 = a1;
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
  v161 = v162 >> 2;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v183 = v24;
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
      v175 = 0;
LABEL_32:
      v172 = v27 - 3;
      v166 = v26 - 2;
      v33 = -1 << *(*(a1 + 208) + 48);
      v159 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v175 = v32 >= v26;
    goto LABEL_32;
  }

  v175 = 0;
  v159 = 0;
  v166 = 0;
  v172 = 0;
LABEL_33:
  if (v18 <= v161)
  {
    v174 = a7 + a9 - 1;
    v158 = a7 >> 3;
    if (a7 >> 3 <= v174 >> 3)
    {
      v34 = a11;
      v182 = v19 >> 3;
      v168 = v19 & 7;
      v156 = v20 & 3;
      v157 = v20 >> 2;
      v155 = ~(-1 << v166);
      v35 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v36 = vcgt_u32(v35, 0xF00000007);
      v165 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v35, 0xFFFFFFFDFFFFFFFELL), -1))))))), v36);
      v164 = v36;
      v173 = a7;
      do
      {
        v37 = (4 * v18) | 3;
        if (4 * v18 <= v180)
        {
          v38 = v180;
        }

        else
        {
          v38 = 4 * v18;
        }

        if (v162 < v37)
        {
          v37 = v162;
        }

        v171 = v38 - 4 * v18;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v156;
        v170 = v40;
        v42 = v158;
        if (v18 == v157)
        {
          v43 = v156 + 1;
        }

        else
        {
          v43 = 4;
        }

        if (v18 != v157)
        {
          v41 = v40 != 4;
        }

        v169 = v41;
        v44 = v18 & v155;
        v179 = a3 + (v38 - v180) * v34;
        v178 = v43;
        v163 = v43;
        do
        {
          v45 = 8 * v42;
          v46 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= a7)
          {
            v47 = a7;
          }

          else
          {
            v47 = 8 * v42;
          }

          if (v174 < v46)
          {
            v46 = v174;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v42 == v182)
          {
            v50 = v168 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (4 * v18 >= v180 && v45 >= a7)
          {
            v52 = v48 != v168;
            if (v42 != v182)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v169;
          }

          if (v175)
          {
            if (v172 | v166)
            {
              v53 = 0;
              v54 = 0;
              v55 = v172 != 0;
              v56 = 1;
              v58 = v166 != 0;
              v57 = v166;
              v59 = v172;
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
                  v54 |= (v42 & ~(-1 << v172) & v56) << v53++;
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

            v68 = v60 + *(result + 336) * ((v42 >> v172) + (v18 >> v166) * v159);
          }

          else if (v165)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v164.i8[0];
            v64 = v164.i8[4];
            v66 = v165.i32[0];
            v67 = v165.i32[1];
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
                v62 |= (v63 & v42) << v61++;
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
            if (!v71)
            {
LABEL_106:
              v80 = 0;
              goto LABEL_107;
            }
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 2) - 1)));
            if (!(v74 | v71))
            {
              goto LABEL_106;
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
              v76 |= (v79 & v42) << v75++;
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
LABEL_107:
          v81 = (a4 + v80);
          v82 = v179 + 16 * (v47 - a7);
          v83 = (a2 + v68);
          if (v183)
          {
            if (!(v51 & 1 | (v50 < 8u) | (v178 < 4)))
            {
              v85 = __dst;
LABEL_117:
              v87 = &byte_29D2F30E1;
              v88 = 16;
              v89 = v85;
              do
              {
                v97 = *v87;
                v98 = *(v87 - 1);
                if (v50 <= 2 * v98 || 2 * v97 >= v43)
                {
                  v96 = 0;
                }

                else
                {
                  v90 = (v82 + 2 * a11 * v97 + 32 * v98);
                  v91 = *v90;
                  v92 = v90[1];
                  v93 = (v90 + v34);
                  v94 = *v93;
                  v95 = v93[1];
                  *v89 = v91;
                  v89[1] = v92;
                  v89[2] = v94;
                  v89[3] = v95;
                  v89 += 4;
                  v96 = 63;
                }

                *v81++ = v96;
                v87 += 2;
                v88 -= 2;
              }

              while (v88);
LABEL_113:
              a7 = v173;
              goto LABEL_114;
            }

            v84 = v47;
            memcpy(__dst, v83, sizeof(__dst));
            v47 = v84;
            v45 = 8 * v42;
            v44 = v18 & v155;
            v43 = v163;
            v85 = __dst;
            v34 = a11;
            result = v181;
          }

          else
          {
            v85 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 8u) | (v178 < 4)))
            {
              goto LABEL_117;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v185 = v85;
          v193 = v50;
          v194 = v43;
          v189 = v171;
          v190 = v47 - v45;
          v186 = v81;
          v187 = v82;
          v188 = v34;
          v191 = v170;
          v192 = v49;
          if (v51)
          {
            v86 = v85;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v85 = v86;
            v34 = a11;
            result = v181;
            goto LABEL_113;
          }

          v167 = v85;
          v100 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v196, 128, v85, *v81)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v197, 128, v100, v81[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v200, 128, v101, v81[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v201, 128, v102, v81[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v198, 128, v103, v81[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v199, 128, v104, v81[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v202, 128, v105, v81[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v203, 128, v105 + v106, v81[7]);
          v107 = v191;
          if (v191)
          {
            v108 = v192;
            if (v192)
            {
              v109 = 0;
              v110 = v189 << 7;
              v111 = 16 * v190;
              v112 = &v196[0].i8[v110 + v111];
              v113 = v187;
              v114 = v188;
              v115 = 16 * v192;
              if (16 * v192)
              {
                v116 = (16 * v192 - 1) >> 32 == 0;
              }

              else
              {
                v116 = 0;
              }

              v117 = !v116;
              v119 = v112 < v187 + v188 * (v191 - 1) + 16 * v192 && v187 < &__dst[128 * v191 + 384 + 128 * v189 + 16 * v192 + v111];
              v120 = v115 & 0x1FFFFFFE0;
              v121 = v117 | (v188 < 0) | v119;
              v122 = &v196[1].i8[v110 + v111];
              v123 = (v187 + 16);
              v124 = v112;
              v125 = v187;
              do
              {
                v126 = (v113 + v109 * v114);
                v127 = &v112[128 * v109];
                if (v121)
                {
                  v128 = 0;
                }

                else
                {
                  if (v108 == 1)
                  {
                    v132 = 0;
LABEL_148:
                    v133 = -16 * v108 + v132;
                    v134 = (v125 + v132);
                    v135 = &v124[v132];
                    do
                    {
                      v136 = *v134++;
                      *v135 = v136;
                      v135 += 16;
                      v133 += 16;
                    }

                    while (v133);
                    goto LABEL_140;
                  }

                  v137 = v123;
                  v138 = v122;
                  v139 = v115 & 0x1FFFFFFE0;
                  do
                  {
                    v140 = *v137;
                    *(v138 - 1) = *(v137 - 1);
                    *v138 = v140;
                    v138 += 32;
                    v137 += 2;
                    v139 -= 32;
                  }

                  while (v139);
                  if (v115 == v120)
                  {
                    goto LABEL_140;
                  }

                  v132 = v115 & 0x1FFFFFFE0;
                  if (v108)
                  {
                    goto LABEL_148;
                  }

                  v126 += v120;
                  v127 += v120;
                  v128 = v115 & 0xFFFFFFE0;
                }

                v129 = v128 + 1;
                do
                {
                  v130 = *v126++;
                  *v127++ = v130;
                }

                while (v115 > v129++);
LABEL_140:
                ++v109;
                v122 += 128;
                v123 = (v123 + v114);
                v125 += v114;
                v124 += 128;
              }

              while (v109 != v107);
            }
          }

          v141 = v185;
          v142 = v186;
          v143 = v193;
          v144 = &byte_29D2F30E1;
          v145 = 16;
          v146 = v194;
          a7 = v173;
          v34 = a11;
          result = v181;
          v85 = v167;
          do
          {
            v152 = *v144;
            v153 = *(v144 - 1);
            if (v143 <= 2 * v153 || 2 * v152 >= v146)
            {
              v151 = 0;
            }

            else
            {
              v147 = &v196[16 * v152 + 2 * v153];
              v148 = v147[1];
              v149 = v147[8];
              v150 = v147[9];
              *v141 = *v147;
              v141[1] = v148;
              v141[2] = v149;
              v141[3] = v150;
              v141 += 4;
              v151 = 63;
            }

            *v142++ = v151;
            v144 += 2;
            v145 -= 2;
          }

          while (v145);
LABEL_114:
          if (v183)
          {
            memcpy(v83, v85, 0x200uLL);
            v34 = a11;
            result = v181;
          }

          v21 = v42++ == v174 >> 3;
        }

        while (!v21);
        v21 = v18++ == v161;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v175 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v151 = a8;
  v17 = a8 >> 2;
  v133 = a8 + a10 - 1;
  v135 = v133 >> 2;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v152 = a1;
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
  v154 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v144 = result;
  if (v17 <= v135)
  {
    v143 = a7 + a9 - 1;
    v132 = a7 >> 3;
    if (a7 >> 3 <= v143 >> 3)
    {
      result = a1;
      v153 = (a5 - 1) >> 3;
      v129 = a5 - 1;
      v136 = (a5 - 1) & 7;
      v130 = (a6 - 1) & 3;
      v131 = (a6 - 1) >> 2;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v27 = vcgt_u32(v26, 0xF00000007);
      v141 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFDFFFFFFFELL), -1))))))), v27);
      v140 = v27;
      v128 = 8 * v19 * v18;
      v142 = a7;
      do
      {
        v28 = (4 * v17) | 3;
        if (4 * v17 <= v151)
        {
          v29 = v151;
        }

        else
        {
          v29 = 4 * v17;
        }

        if (v133 < v28)
        {
          v28 = v133;
        }

        v150 = 4 * v17;
        v139 = v29 - 4 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v130;
        v138 = v31;
        v33 = v31 != 4;
        v34 = v132;
        v35 = v130 + 1;
        if (v17 != v131)
        {
          v35 = 4;
          v32 = v33;
        }

        v137 = v32;
        v148 = a3 + (v29 - v151) * a11;
        v149 = v35;
        v147 = v35;
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

          if (v143 < v37)
          {
            v37 = v143;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v153)
          {
            v41 = v136 + 1;
          }

          else
          {
            v41 = 8;
          }

          v42 = 1;
          if (v150 >= v151 && v36 >= a7)
          {
            v43 = v39 != v136;
            if (v34 != v153)
            {
              v43 = v40 != 8;
            }

            v42 = v43 || v137;
          }

          if (v144)
          {
            v64 = 0;
            v65 = v128 >> (*(result + 57) != 0);
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

            v116 = (v64 >> 3) - 1;
            v117 = (v67 >> 2) - 1;
            if ((v66 & 1) != 0 || (v118 = 32 - __clz(~(-1 << -__clz(v116))), v119 = 32 - __clz(~(-1 << -__clz(v117))), !(v119 | v118)))
            {
              v127 = 0;
            }

            else
            {
              v120 = 0;
              v121 = 0;
              v122 = v34 & v116;
              v123 = v17 & v117;
              v124 = v119 != 0;
              v125 = v118 != 0;
              v126 = 1;
              do
              {
                --v119;
                if (v124)
                {
                  v121 |= (v126 & v123) << v120++;
                }

                else
                {
                  v119 = 0;
                }

                --v118;
                if (v125)
                {
                  v121 |= (v126 & v122) << v120++;
                }

                else
                {
                  v118 = 0;
                }

                v126 *= 2;
                --v120;
                v125 = v118 != 0;
                v124 = v119 != 0;
              }

              while (v118 | v119);
              v127 = v121 << 9;
              result = v152;
            }

            v51 = v127 + ((v36 / v64 + v150 / v67 * ((v64 + v129) / v64)) << 14);
          }

          else if (v141)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v48 = v140.i8[0];
            v47 = v140.i8[4];
            v49 = v141.i32[0];
            v50 = v141.i32[1];
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
LABEL_78:
              v63 = 0;
              goto LABEL_79;
            }
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 2) - 1)));
            if (!(v57 | v54))
            {
              goto LABEL_78;
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
LABEL_79:
          v68 = (a4 + v63);
          v69 = v148 + 16 * (v38 - a7);
          v70 = (a2 + v51);
          if (v154)
          {
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 4)))
            {
              v74 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v69, a11, v74, v68, v41, v149);
LABEL_87:
              a7 = v142;
              if (v154)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v71 = v41;
            v72 = v40;
            v73 = v38;
            memcpy(__dst, v70, sizeof(__dst));
            v38 = v73;
            v36 = 8 * v34;
            v74 = __dst;
            v40 = v72;
            LOBYTE(v41) = v71;
            result = v152;
          }

          else
          {
            v74 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 8u) | (v147 < 4)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v156 = v74;
          v164 = v41;
          v165 = v149;
          v160 = v139;
          v161 = v38 - v36;
          v157 = v68;
          v158 = v69;
          v159 = a11;
          v162 = v138;
          v163 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_87;
          }

          v75 = v74->i64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v167, 128, v74, *v68);
          v76 = v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 128, v75, v68[1]);
          v77 = v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 128, v76, v68[2]);
          v78 = v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 128, v77, v68[3]);
          v79 = v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 128, v78, v68[4]);
          v80 = v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 128, v79, v68[5]);
          v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 128, v80, v68[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 128, v80 + v81, v68[7]);
          v82 = v162;
          a7 = v142;
          if (v162)
          {
            v83 = v163;
            if (v163)
            {
              v84 = 0;
              v85 = v160 << 7;
              v86 = 16 * v161;
              v87 = &v167[0].i8[v85 + v86];
              v88 = v158;
              v89 = v159;
              v90 = 16 * v163;
              if (16 * v163)
              {
                v91 = (16 * v163 - 1) >> 32 == 0;
              }

              else
              {
                v91 = 0;
              }

              v92 = !v91;
              v94 = v87 < v158 + v159 * (v162 - 1) + 16 * v163 && v158 < &__dst[128 * v162 + 384 + 128 * v160 + 16 * v163 + v86];
              v95 = v90 & 0x1FFFFFFE0;
              v96 = v92 | (v159 < 0) | v94;
              v97 = &v167[1].i8[v85 + v86];
              v98 = (v158 + 16);
              v99 = v87;
              v100 = v158;
              do
              {
                v101 = (v88 + v84 * v89);
                v102 = &v87[128 * v84];
                if (v96)
                {
                  v103 = 0;
                }

                else
                {
                  if (v83 == 1)
                  {
                    v107 = 0;
LABEL_112:
                    v108 = -16 * v83 + v107;
                    v109 = (v100 + v107);
                    v110 = &v99[v107];
                    do
                    {
                      v111 = *v109++;
                      *v110 = v111;
                      v110 += 16;
                      v108 += 16;
                    }

                    while (v108);
                    goto LABEL_104;
                  }

                  v112 = v98;
                  v113 = v97;
                  v114 = v90 & 0x1FFFFFFE0;
                  do
                  {
                    v115 = *v112;
                    *(v113 - 1) = *(v112 - 1);
                    *v113 = v115;
                    v113 += 32;
                    v112 += 2;
                    v114 -= 32;
                  }

                  while (v114);
                  if (v90 == v95)
                  {
                    goto LABEL_104;
                  }

                  v107 = v90 & 0x1FFFFFFE0;
                  if (v83)
                  {
                    goto LABEL_112;
                  }

                  v101 += v95;
                  v102 += v95;
                  v103 = v90 & 0xFFFFFFE0;
                }

                v104 = v103 + 1;
                do
                {
                  v105 = *v101++;
                  *v102++ = v105;
                }

                while (v90 > v104++);
LABEL_104:
                ++v84;
                v97 += 128;
                v98 = (v98 + v89);
                v100 += v89;
                v99 += 128;
              }

              while (v84 != v82);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v167, 128, v156, v157, v164, v165);
          if (v154)
          {
LABEL_26:
            memcpy(v70, v74, 0x200uLL);
          }

LABEL_27:
          v21 = v34++ == v143 >> 3;
          result = v152;
        }

        while (!v21);
        v21 = v17++ == v135;
      }

      while (!v21);
    }
  }

  return result;
}