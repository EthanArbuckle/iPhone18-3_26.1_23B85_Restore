void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v452 = v21;
  v453 = v22;
  v439 = v23;
  v24 = v12;
  v598 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v456 = v14;
  v25 = v14 >> 2;
  v438 = v14 + a10 - 1;
  v440 = v438 >> 2;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
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
  v451 = v32;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  if (v25 <= v440)
  {
    v449 = v16 + a9 - 1;
    v437 = v16 >> 3;
    if (v16 >> 3 <= v449 >> 3)
    {
      v33 = a11;
      v459 = (v20 - 1) >> 3;
      v434 = v20 - 1;
      v442 = (v20 - 1) & 7;
      v435 = (v18 - 1) & 3;
      v436 = (v18 - 1) >> 2;
      v441 = 2 * a11;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v445 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v444 = v35;
      v433 = 8 * v27 * v26;
      v457 = v24;
      v448 = v16;
      do
      {
        v36 = (4 * v25) | 3;
        if (4 * v25 <= v456)
        {
          v37 = v456;
        }

        else
        {
          v37 = 4 * v25;
        }

        if (v438 < v36)
        {
          v36 = v438;
        }

        v455 = 4 * v25;
        v447 = v37 - 4 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v435;
        v446 = v39;
        v41 = v39 != 4;
        v42 = v437;
        v43 = v435 + 1;
        if (v25 != v436)
        {
          v43 = 4;
        }

        v458 = v43;
        if (v25 != v436)
        {
          v40 = v41;
        }

        v443 = v40;
        v454 = v439 + (v37 - v456) * v33;
        do
        {
          v45 = 8 * v42;
          v46 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= v16)
          {
            v47 = v16;
          }

          else
          {
            v47 = 8 * v42;
          }

          if (v449 < v46)
          {
            v46 = v449;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v42 == v459)
          {
            v50 = v442 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v455 >= v456 && v45 >= v16)
          {
            v52 = v48 != v442;
            if (v42 != v459)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v443;
          }

          if (isLevelTiled)
          {
            v417 = 0;
            v418 = v433 >> (*(v24 + 57) != 0);
            v419 = 1;
            if (v418 <= 63)
            {
              if (v418 > 15)
              {
                if (v418 == 16)
                {
                  v419 = 0;
                  v420 = 64;
                  v417 = 128;
                }

                else
                {
                  v420 = 0;
                  if (v418 == 32)
                  {
                    v419 = 0;
                    v417 = 64;
                    v420 = 64;
                  }
                }
              }

              else if (v418 == 4)
              {
                v419 = 0;
                v420 = 128;
                v417 = 256;
              }

              else
              {
                v420 = 0;
                if (v418 == 8)
                {
                  v419 = 0;
                  v417 = 128;
                  v420 = 128;
                }
              }
            }

            else if (v418 <= 255)
            {
              if (v418 == 64)
              {
                v419 = 0;
                v420 = 32;
                v417 = 64;
              }

              else
              {
                v420 = 0;
                if (v418 == 128)
                {
                  v419 = 0;
                  v417 = 32;
                  v420 = 32;
                }
              }
            }

            else if (v418 == 256)
            {
              v419 = 0;
              v420 = 16;
              v417 = 32;
            }

            else if (v418 == 512)
            {
              v419 = 0;
              v417 = 16;
              v420 = 16;
            }

            else
            {
              v420 = 0;
              if (v418 == 1024)
              {
                v419 = 0;
                v420 = 8;
                v417 = 16;
              }
            }

            v421 = (v417 >> 3) - 1;
            v422 = (v420 >> 2) - 1;
            if ((v419 & 1) != 0 || (v423 = 32 - __clz(~(-1 << -__clz(v421))), v424 = 32 - __clz(~(-1 << -__clz(v422))), !(v424 | v423)))
            {
              v432 = 0;
            }

            else
            {
              v425 = 0;
              v426 = 0;
              v427 = v42 & v421;
              v428 = v25 & v422;
              v429 = v424 != 0;
              v430 = v423 != 0;
              v431 = 1;
              do
              {
                --v424;
                if (v429)
                {
                  v426 |= (v431 & v428) << v425++;
                }

                else
                {
                  v424 = 0;
                }

                --v423;
                if (v430)
                {
                  v426 |= (v431 & v427) << v425++;
                }

                else
                {
                  v423 = 0;
                }

                v431 *= 2;
                --v425;
                v430 = v423 != 0;
                v429 = v424 != 0;
              }

              while (v423 | v424);
              v432 = v426 << 11;
            }

            v60 = v432 + ((v45 / v417 + v455 / v420 * ((v417 + v434) / v417)) << 14);
          }

          else if (v445)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v56 = v444.i8[0];
            v57 = v444.i8[4];
            v58 = v445.i32[0];
            v59 = v445.i32[1];
            do
            {
              --v58;
              if (v56)
              {
                v54 |= (v55 & v25) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v57)
              {
                v54 |= (v55 & v42) << v53++;
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

          v61 = *(v24 + 128) >> (*(v24 + 144) + a12);
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

          v64 = *(v24 + 132) >> (*(v24 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
          }

          if (v66 | v63)
          {
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
                v68 |= (v71 & v42) << v67++;
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
          }

          else
          {
            v72 = 0;
          }

          v73 = (v452 + v60);
          if (v451)
          {
            memcpy(__dst, v73, sizeof(__dst));
            v73 = __dst;
          }

          v74 = (v453 + v72);
          v75 = (v454 + ((v47 - v16) << 6));
          if (!(v51 & 1 | (v50 < 8u)) && v458 > 3)
          {
            v76 = *v74;
            if (v76 == 255)
            {
              v84 = v73[1];
              v85 = v73[2];
              v86 = v73[3];
              v87 = v73[4];
              v88 = v73[5];
              v89 = v73[6];
              v90 = v73[7];
              v91 = v73[8];
              v92 = v73[9];
              v93 = v73[10];
              v94 = v73[11];
              v95 = v73[12];
              v96 = v73[13];
              v97 = v73[14];
              v98 = v73[15];
              v33 = a11;
              *v75 = *v73;
              v75[1] = v84;
              v75[2] = v85;
              v75[3] = v86;
              v99 = (v75 + a11);
              v75[4] = v87;
              v75[5] = v88;
              v75[6] = v89;
              v75[7] = v90;
              *v99 = v91;
              v99[1] = v92;
              v99[2] = v93;
              v99[3] = v94;
              v100 = (v75 + a11 + 64);
              v77 = 256;
              *v100 = v95;
              v100[1] = v96;
              v100[2] = v97;
              v100[3] = v98;
            }

            else
            {
              v33 = a11;
              if (v76 == 7)
              {
                v82 = vld1q_dup_f64(v73->f64);
                *v75 = v82;
                v75[1] = v82;
                v75[2] = v82;
                v75[3] = v82;
                v75[4] = v82;
                v75[5] = v82;
                v75[6] = v82;
                v75[7] = v82;
                v83 = (v75 + a11);
                *v83 = v82;
                v83[1] = v82;
                v83[2] = v82;
                v83[3] = v82;
                v83[4] = v82;
                v83[5] = v82;
                v83[6] = v82;
                v83[7] = v82;
                v77 = 8;
              }

              else if (*v74)
              {
                v77 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75, a11, v73, v76);
              }

              else
              {
                v77 = 0;
                v75[6] = 0u;
                v75[7] = 0u;
                v75[4] = 0u;
                v75[5] = 0u;
                v75[2] = 0u;
                v75[3] = 0u;
                *v75 = 0u;
                v75[1] = 0u;
                v78 = (v75->f64 + a11);
                v78[6] = 0u;
                v78[7] = 0u;
                v78[4] = 0u;
                v78[5] = 0u;
                v78[2] = 0u;
                v78[3] = 0u;
                *v78 = 0u;
                v78[1] = 0u;
              }
            }

            v101 = v73 + v77;
            f64 = v75[8].f64;
            v103 = v74[1];
            if (v103 == 255)
            {
              v108 = *(v101 + 16);
              v109 = *(v101 + 32);
              v110 = *(v101 + 48);
              v111 = *(v101 + 64);
              v112 = *(v101 + 80);
              v113 = *(v101 + 96);
              v114 = *(v101 + 112);
              v115 = *(v101 + 128);
              v116 = *(v101 + 144);
              v117 = *(v101 + 160);
              v118 = *(v101 + 176);
              v119 = *(v101 + 192);
              v120 = *(v101 + 208);
              v121 = *(v101 + 224);
              v122 = *(v101 + 240);
              *f64 = *v101;
              v75[9] = v108;
              v75[10] = v109;
              v75[11] = v110;
              v123 = (f64 + v33);
              v75[12] = v111;
              v75[13] = v112;
              v75[14] = v113;
              v75[15] = v114;
              *v123 = v115;
              v123[1] = v116;
              v123[2] = v117;
              v123[3] = v118;
              v123 += 4;
              v104 = 256;
              *v123 = v119;
              v123[1] = v120;
              v123[2] = v121;
              v123[3] = v122;
            }

            else if (v103 == 7)
            {
              v106 = vld1q_dup_f64(v101);
              v75[8] = v106;
              v75[9] = v106;
              v75[10] = v106;
              v75[11] = v106;
              v75[12] = v106;
              v75[13] = v106;
              v75[14] = v106;
              v75[15] = v106;
              v107 = (f64 + v33);
              *v107 = v106;
              v107[1] = v106;
              v107[2] = v106;
              v107[3] = v106;
              v107[4] = v106;
              v107[5] = v106;
              v107[6] = v106;
              v107[7] = v106;
              v104 = 8;
            }

            else if (v74[1])
            {
              v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(f64, v33, v101, v103);
            }

            else
            {
              v104 = 0;
              v75[14] = 0u;
              v75[15] = 0u;
              v75[12] = 0u;
              v75[13] = 0u;
              v75[10] = 0u;
              v75[11] = 0u;
              *f64 = 0u;
              v75[9] = 0u;
              v105 = (f64 + v33);
              v105[6] = 0u;
              v105[7] = 0u;
              v105[4] = 0u;
              v105[5] = 0u;
              v105[2] = 0u;
              v105[3] = 0u;
              *v105 = 0u;
              v105[1] = 0u;
            }

            v124 = v101 + v104;
            v125 = (v75 + v441);
            v126 = v74[2];
            if (v126 == 255)
            {
              v131 = *(v124 + 16);
              v132 = *(v124 + 32);
              v133 = *(v124 + 48);
              v134 = *(v124 + 64);
              v135 = *(v124 + 80);
              v136 = *(v124 + 96);
              v137 = *(v124 + 112);
              v138 = *(v124 + 128);
              v139 = *(v124 + 144);
              v140 = *(v124 + 160);
              v141 = *(v124 + 176);
              v142 = *(v124 + 192);
              v143 = *(v124 + 208);
              v144 = *(v124 + 224);
              v145 = *(v124 + 240);
              *v125 = *v124;
              v125[1] = v131;
              v125[2] = v132;
              v125[3] = v133;
              v146 = (v125->f64 + v33);
              v125[4] = v134;
              v125[5] = v135;
              v125[6] = v136;
              v125[7] = v137;
              *v146 = v138;
              v146[1] = v139;
              v146[2] = v140;
              v146[3] = v141;
              v147 = (v125[4].f64 + v33);
              v127 = 256;
              *v147 = v142;
              v147[1] = v143;
              v147[2] = v144;
              v147[3] = v145;
            }

            else if (v126 == 7)
            {
              v129 = vld1q_dup_f64(v124);
              *v125 = v129;
              v125[1] = v129;
              v125[2] = v129;
              v125[3] = v129;
              v125[4] = v129;
              v125[5] = v129;
              v125[6] = v129;
              v125[7] = v129;
              v130 = (v125 + v33);
              *v130 = v129;
              v130[1] = v129;
              v130[2] = v129;
              v130[3] = v129;
              v130[4] = v129;
              v130[5] = v129;
              v130[6] = v129;
              v130[7] = v129;
              v127 = 8;
            }

            else if (v74[2])
            {
              v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75 + v441, v33, v124, v126);
            }

            else
            {
              v127 = 0;
              v125[6] = 0u;
              v125[7] = 0u;
              v125[4] = 0u;
              v125[5] = 0u;
              v125[2] = 0u;
              v125[3] = 0u;
              *v125 = 0u;
              v125[1] = 0u;
              v128 = (v125->f64 + v33);
              v128[6] = 0u;
              v128[7] = 0u;
              v128[4] = 0u;
              v128[5] = 0u;
              v128[2] = 0u;
              v128[3] = 0u;
              *v128 = 0u;
              v128[1] = 0u;
            }

            v148 = v124 + v127;
            v149 = v125[8].f64;
            v150 = v74[3];
            if (v150 == 255)
            {
              v155 = *(v148 + 16);
              v156 = *(v148 + 32);
              v157 = *(v148 + 48);
              v158 = *(v148 + 64);
              v159 = *(v148 + 80);
              v160 = *(v148 + 96);
              v161 = *(v148 + 112);
              v162 = *(v148 + 128);
              v163 = *(v148 + 144);
              v164 = *(v148 + 160);
              v165 = *(v148 + 176);
              v166 = *(v148 + 192);
              v167 = *(v148 + 208);
              v168 = *(v148 + 224);
              v169 = *(v148 + 240);
              *v149 = *v148;
              v125[9] = v155;
              v125[10] = v156;
              v125[11] = v157;
              v170 = (v149 + v33);
              v125[12] = v158;
              v125[13] = v159;
              v125[14] = v160;
              v125[15] = v161;
              *v170 = v162;
              v170[1] = v163;
              v170[2] = v164;
              v170[3] = v165;
              v170 += 4;
              v151 = 256;
              *v170 = v166;
              v170[1] = v167;
              v170[2] = v168;
              v170[3] = v169;
            }

            else if (v150 == 7)
            {
              v153 = vld1q_dup_f64(v148);
              v125[8] = v153;
              v125[9] = v153;
              v125[10] = v153;
              v125[11] = v153;
              v125[12] = v153;
              v125[13] = v153;
              v125[14] = v153;
              v125[15] = v153;
              v154 = (v149 + v33);
              *v154 = v153;
              v154[1] = v153;
              v154[2] = v153;
              v154[3] = v153;
              v154[4] = v153;
              v154[5] = v153;
              v154[6] = v153;
              v154[7] = v153;
              v151 = 8;
            }

            else if (v74[3])
            {
              v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v149, v33, v148, v150);
            }

            else
            {
              v151 = 0;
              v125[14] = 0u;
              v125[15] = 0u;
              v125[12] = 0u;
              v125[13] = 0u;
              v125[10] = 0u;
              v125[11] = 0u;
              *v149 = 0u;
              v125[9] = 0u;
              v152 = (v149 + v33);
              v152[6] = 0u;
              v152[7] = 0u;
              v152[4] = 0u;
              v152[5] = 0u;
              v152[2] = 0u;
              v152[3] = 0u;
              *v152 = 0u;
              v152[1] = 0u;
            }

            v171 = v148 + v151;
            v172 = v75[16].f64;
            v173 = v74[4];
            if (v173 == 255)
            {
              v178 = *(v171 + 16);
              v179 = *(v171 + 32);
              v180 = *(v171 + 48);
              v181 = *(v171 + 64);
              v182 = *(v171 + 80);
              v183 = *(v171 + 96);
              v184 = *(v171 + 112);
              v185 = *(v171 + 128);
              v186 = *(v171 + 144);
              v187 = *(v171 + 160);
              v188 = *(v171 + 176);
              v189 = *(v171 + 192);
              v190 = *(v171 + 208);
              v191 = *(v171 + 224);
              v192 = *(v171 + 240);
              *v172 = *v171;
              v75[17] = v178;
              v75[18] = v179;
              v75[19] = v180;
              v193 = (v172 + v33);
              v75[20] = v181;
              v75[21] = v182;
              v75[22] = v183;
              v75[23] = v184;
              *v193 = v185;
              v193[1] = v186;
              v193[2] = v187;
              v193[3] = v188;
              v193 += 4;
              v174 = 256;
              *v193 = v189;
              v193[1] = v190;
              v193[2] = v191;
              v193[3] = v192;
            }

            else if (v173 == 7)
            {
              v176 = vld1q_dup_f64(v171);
              v75[16] = v176;
              v75[17] = v176;
              v75[18] = v176;
              v75[19] = v176;
              v75[20] = v176;
              v75[21] = v176;
              v75[22] = v176;
              v75[23] = v176;
              v177 = (v172 + v33);
              *v177 = v176;
              v177[1] = v176;
              v177[2] = v176;
              v177[3] = v176;
              v177[4] = v176;
              v177[5] = v176;
              v177[6] = v176;
              v177[7] = v176;
              v174 = 8;
            }

            else if (v74[4])
            {
              v174 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v172, v33, v171, v173);
            }

            else
            {
              v174 = 0;
              v75[22] = 0u;
              v75[23] = 0u;
              v75[20] = 0u;
              v75[21] = 0u;
              v75[18] = 0u;
              v75[19] = 0u;
              *v172 = 0u;
              v75[17] = 0u;
              v175 = (v172 + v33);
              v175[6] = 0u;
              v175[7] = 0u;
              v175[4] = 0u;
              v175[5] = 0u;
              v175[2] = 0u;
              v175[3] = 0u;
              *v175 = 0u;
              v175[1] = 0u;
            }

            v194 = v171 + v174;
            v195 = v75[24].f64;
            v196 = v74[5];
            if (v196 == 255)
            {
              v201 = *(v194 + 16);
              v202 = *(v194 + 32);
              v203 = *(v194 + 48);
              v204 = *(v194 + 64);
              v205 = *(v194 + 80);
              v206 = *(v194 + 96);
              v207 = *(v194 + 112);
              v208 = *(v194 + 128);
              v209 = *(v194 + 144);
              v210 = *(v194 + 160);
              v211 = *(v194 + 176);
              v212 = *(v194 + 192);
              v213 = *(v194 + 208);
              v214 = *(v194 + 224);
              v215 = *(v194 + 240);
              *v195 = *v194;
              v75[25] = v201;
              v75[26] = v202;
              v75[27] = v203;
              v216 = (v195 + v33);
              v75[28] = v204;
              v75[29] = v205;
              v75[30] = v206;
              v75[31] = v207;
              *v216 = v208;
              v216[1] = v209;
              v216[2] = v210;
              v216[3] = v211;
              v216 += 4;
              v197 = 256;
              *v216 = v212;
              v216[1] = v213;
              v216[2] = v214;
              v216[3] = v215;
            }

            else if (v196 == 7)
            {
              v199 = vld1q_dup_f64(v194);
              v75[24] = v199;
              v75[25] = v199;
              v75[26] = v199;
              v75[27] = v199;
              v75[28] = v199;
              v75[29] = v199;
              v75[30] = v199;
              v75[31] = v199;
              v200 = (v195 + v33);
              *v200 = v199;
              v200[1] = v199;
              v200[2] = v199;
              v200[3] = v199;
              v200[4] = v199;
              v200[5] = v199;
              v197 = 8;
              v200[6] = v199;
              v200[7] = v199;
            }

            else if (v74[5])
            {
              v197 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v195, v33, v194, v196);
            }

            else
            {
              v197 = 0;
              v75[30] = 0u;
              v75[31] = 0u;
              v75[28] = 0u;
              v75[29] = 0u;
              v75[26] = 0u;
              v75[27] = 0u;
              *v195 = 0u;
              v75[25] = 0u;
              v198 = (v195 + v33);
              v198[6] = 0u;
              v198[7] = 0u;
              v198[4] = 0u;
              v198[5] = 0u;
              v198[2] = 0u;
              v198[3] = 0u;
              *v198 = 0u;
              v198[1] = 0u;
            }

            v16 = v448;
            v217 = v194 + v197;
            v218 = v125[16].f64;
            v219 = v74[6];
            if (v219 == 255)
            {
              v224 = *(v217 + 16);
              v225 = *(v217 + 32);
              v226 = *(v217 + 48);
              v227 = *(v217 + 64);
              v228 = *(v217 + 80);
              v229 = *(v217 + 96);
              v230 = *(v217 + 112);
              v231 = *(v217 + 128);
              v232 = *(v217 + 144);
              v233 = *(v217 + 160);
              v234 = *(v217 + 176);
              v235 = *(v217 + 192);
              v236 = *(v217 + 208);
              v237 = *(v217 + 224);
              v238 = *(v217 + 240);
              *v218 = *v217;
              v125[17] = v224;
              v125[18] = v225;
              v125[19] = v226;
              v239 = (v218 + v33);
              v125[20] = v227;
              v125[21] = v228;
              v125[22] = v229;
              v125[23] = v230;
              *v239 = v231;
              v239[1] = v232;
              v239[2] = v233;
              v239[3] = v234;
              v239 += 4;
              v220 = 256;
              *v239 = v235;
              v239[1] = v236;
              v239[2] = v237;
              v239[3] = v238;
            }

            else if (v219 == 7)
            {
              v222 = vld1q_dup_f64(v217);
              v125[16] = v222;
              v125[17] = v222;
              v125[18] = v222;
              v125[19] = v222;
              v125[20] = v222;
              v125[21] = v222;
              v125[22] = v222;
              v125[23] = v222;
              v223 = (v218 + v33);
              *v223 = v222;
              v223[1] = v222;
              v223[2] = v222;
              v223[3] = v222;
              v223[4] = v222;
              v223[5] = v222;
              v223[6] = v222;
              v223[7] = v222;
              v220 = 8;
            }

            else if (v74[6])
            {
              v220 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v218, v33, v217, v219);
            }

            else
            {
              v220 = 0;
              v125[22] = 0u;
              v125[23] = 0u;
              v125[20] = 0u;
              v125[21] = 0u;
              v125[18] = 0u;
              v125[19] = 0u;
              *v218 = 0u;
              v125[17] = 0u;
              v221 = (v218 + v33);
              v221[6] = 0u;
              v221[7] = 0u;
              v221[4] = 0u;
              v221[5] = 0u;
              v221[2] = 0u;
              v221[3] = 0u;
              *v221 = 0u;
              v221[1] = 0u;
            }

            v240 = v217 + v220;
            v241 = v125[24].f64;
            v242 = v74[7];
            if (v242 == 255)
            {
              v246 = *(v240 + 16);
              v247 = *(v240 + 32);
              v248 = *(v240 + 48);
              v249 = *(v240 + 64);
              v250 = *(v240 + 80);
              v251 = *(v240 + 96);
              v252 = *(v240 + 112);
              v253 = *(v240 + 128);
              v254 = *(v240 + 144);
              v255 = *(v240 + 160);
              v256 = *(v240 + 176);
              v257 = *(v240 + 192);
              v258 = *(v240 + 208);
              v259 = *(v240 + 224);
              v260 = *(v240 + 240);
              *v241 = *v240;
              v125[25] = v246;
              v125[26] = v247;
              v125[27] = v248;
              v261 = (v241 + v33);
              v125[28] = v249;
              v125[29] = v250;
              v125[30] = v251;
              v125[31] = v252;
              *v261 = v253;
              v261[1] = v254;
              v261[2] = v255;
              v261[3] = v256;
              v261 += 4;
              *v261 = v257;
              v261[1] = v258;
              v261[2] = v259;
              v261[3] = v260;
              v24 = v457;
            }

            else
            {
              v24 = v457;
              if (v242 == 7)
              {
                v244 = vld1q_dup_f64(v240);
                v125[24] = v244;
                v125[25] = v244;
                v125[26] = v244;
                v125[27] = v244;
                v125[28] = v244;
                v125[29] = v244;
                v125[30] = v244;
                v125[31] = v244;
                v245 = (v241 + v33);
                *v245 = v244;
                v245[1] = v244;
                v245[2] = v244;
                v245[3] = v244;
                v245[4] = v244;
                v245[5] = v244;
                v245[6] = v244;
                v245[7] = v244;
              }

              else if (v242)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v241, v33, v240, v242);
              }

              else
              {
                v125[30] = 0u;
                v125[31] = 0u;
                v125[28] = 0u;
                v125[29] = 0u;
                v125[26] = 0u;
                v125[27] = 0u;
                *v241 = 0u;
                v125[25] = 0u;
                v243 = (v241 + v33);
                v243[6] = 0u;
                v243[7] = 0u;
                v243[4] = 0u;
                v243[5] = 0u;
                v243[2] = 0u;
                v243[3] = 0u;
                *v243 = 0u;
                v243[1] = 0u;
              }
            }

            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v79 = v47 - v45;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v457;
          block[5] = v73;
          v467 = v50;
          v468 = v458;
          v463 = v447;
          v464 = v79;
          block[6] = v74;
          v461 = v75;
          v33 = a11;
          v462 = a11;
          v465 = v446;
          v466 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v457 + 8) + 16552), block);
            v16 = v448;
            v24 = v457;
LABEL_29:
            v44 = v42 + 1;
            goto LABEL_30;
          }

          v80 = *v74;
          v16 = v448;
          if (v80 == 255)
          {
            v263 = v73[1];
            v264 = v73[2];
            v265 = v73[3];
            v266 = v73[4];
            v267 = v73[5];
            v268 = v73[6];
            v269 = v73[7];
            v270 = v73[8];
            v271 = v73[9];
            v272 = v73[10];
            v273 = v73[11];
            v274 = v73[12];
            v275 = v73[13];
            v276 = v73[14];
            v277 = v73[15];
            v470 = *v73;
            v471 = v263;
            v472 = v264;
            v473 = v265;
            v474 = v266;
            v475 = v267;
            v476 = v268;
            v477 = v269;
            v502 = v270;
            v503 = v271;
            v504 = v272;
            v505 = v273;
            v81 = 256;
            v506 = v274;
            v507 = v275;
            v508 = v276;
            v509 = v277;
          }

          else if (v80 == 7)
          {
            v262 = vld1q_dup_f64(v73->f64);
            v470 = v262;
            v471 = v262;
            v472 = v262;
            v473 = v262;
            v474 = v262;
            v475 = v262;
            v476 = v262;
            v477 = v262;
            v502 = v262;
            v503 = v262;
            v504 = v262;
            v505 = v262;
            v506 = v262;
            v507 = v262;
            v81 = 8;
            v508 = v262;
            v509 = v262;
          }

          else if (*v74)
          {
            v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v470, 512, v73, v80);
          }

          else
          {
            v81 = 0;
            v477 = 0u;
            v476 = 0u;
            v475 = 0u;
            v474 = 0u;
            v473 = 0u;
            v472 = 0u;
            v471 = 0u;
            v470 = 0u;
            v502 = 0u;
            v503 = 0u;
            v504 = 0u;
            v505 = 0u;
            v506 = 0u;
            v507 = 0u;
            v508 = 0u;
            v509 = 0u;
          }

          v278 = v73 + v81;
          v279 = v74[1];
          if (v279 == 255)
          {
            v282 = *(v278 + 16);
            v283 = *(v278 + 32);
            v284 = *(v278 + 48);
            v285 = *(v278 + 64);
            v286 = *(v278 + 80);
            v287 = *(v278 + 96);
            v288 = *(v278 + 112);
            v289 = *(v278 + 128);
            v290 = *(v278 + 144);
            v291 = *(v278 + 160);
            v292 = *(v278 + 176);
            v293 = *(v278 + 192);
            v294 = *(v278 + 208);
            v295 = *(v278 + 224);
            v296 = *(v278 + 240);
            v478 = *v278;
            v479 = v282;
            v480 = v283;
            v481 = v284;
            v482 = v285;
            v483 = v286;
            v484 = v287;
            v485 = v288;
            v510 = v289;
            v511 = v290;
            v512 = v291;
            v513 = v292;
            v280 = 256;
            v514 = v293;
            v515 = v294;
            v516 = v295;
            v517 = v296;
          }

          else if (v279 == 7)
          {
            v281 = vld1q_dup_f64(v278);
            v478 = v281;
            v479 = v281;
            v480 = v281;
            v481 = v281;
            v482 = v281;
            v483 = v281;
            v484 = v281;
            v485 = v281;
            v510 = v281;
            v511 = v281;
            v512 = v281;
            v513 = v281;
            v514 = v281;
            v515 = v281;
            v280 = 8;
            v516 = v281;
            v517 = v281;
          }

          else if (v74[1])
          {
            v280 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v478, 512, v278, v279);
          }

          else
          {
            v280 = 0;
            v484 = 0u;
            v485 = 0u;
            v482 = 0u;
            v483 = 0u;
            v480 = 0u;
            v481 = 0u;
            v478 = 0u;
            v479 = 0u;
            v510 = 0u;
            v511 = 0u;
            v512 = 0u;
            v513 = 0u;
            v514 = 0u;
            v515 = 0u;
            v516 = 0u;
            v517 = 0u;
          }

          v297 = v278 + v280;
          v298 = v74[2];
          if (v298 == 255)
          {
            v301 = *(v297 + 16);
            v302 = *(v297 + 32);
            v303 = *(v297 + 48);
            v304 = *(v297 + 64);
            v305 = *(v297 + 80);
            v306 = *(v297 + 96);
            v307 = *(v297 + 112);
            v308 = *(v297 + 128);
            v309 = *(v297 + 144);
            v310 = *(v297 + 160);
            v311 = *(v297 + 176);
            v312 = *(v297 + 192);
            v313 = *(v297 + 208);
            v314 = *(v297 + 224);
            v315 = *(v297 + 240);
            v534 = *v297;
            v535 = v301;
            v536 = v302;
            v537 = v303;
            v538 = v304;
            v539 = v305;
            v540 = v306;
            v541 = v307;
            v566 = v308;
            v567 = v309;
            v568 = v310;
            v569 = v311;
            v299 = 256;
            v570 = v312;
            v571 = v313;
            v572 = v314;
            v573 = v315;
          }

          else if (v298 == 7)
          {
            v300 = vld1q_dup_f64(v297);
            v534 = v300;
            v535 = v300;
            v536 = v300;
            v537 = v300;
            v538 = v300;
            v539 = v300;
            v540 = v300;
            v541 = v300;
            v566 = v300;
            v567 = v300;
            v568 = v300;
            v569 = v300;
            v570 = v300;
            v571 = v300;
            v572 = v300;
            v299 = 8;
            v573 = v300;
          }

          else if (v74[2])
          {
            v299 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v534, 512, v297, v298);
          }

          else
          {
            v299 = 0;
            v540 = 0u;
            v541 = 0u;
            v538 = 0u;
            v539 = 0u;
            v536 = 0u;
            v537 = 0u;
            v534 = 0u;
            v535 = 0u;
            v566 = 0u;
            v567 = 0u;
            v568 = 0u;
            v569 = 0u;
            v570 = 0u;
            v571 = 0u;
            v572 = 0u;
            v573 = 0u;
          }

          v316 = v297 + v299;
          v317 = v74[3];
          if (v317 == 255)
          {
            v320 = *(v316 + 16);
            v321 = *(v316 + 32);
            v322 = *(v316 + 48);
            v323 = *(v316 + 64);
            v324 = *(v316 + 80);
            v325 = *(v316 + 96);
            v326 = *(v316 + 112);
            v327 = *(v316 + 128);
            v328 = *(v316 + 144);
            v329 = *(v316 + 160);
            v330 = *(v316 + 176);
            v331 = *(v316 + 192);
            v332 = *(v316 + 208);
            v333 = *(v316 + 224);
            v334 = *(v316 + 240);
            v542 = *v316;
            v543 = v320;
            v544 = v321;
            v545 = v322;
            v546 = v323;
            v547 = v324;
            v548 = v325;
            v549 = v326;
            v574 = v327;
            v575 = v328;
            v576 = v329;
            v577 = v330;
            v318 = 256;
            v578 = v331;
            v579 = v332;
            v580 = v333;
            v581 = v334;
          }

          else if (v317 == 7)
          {
            v319 = vld1q_dup_f64(v316);
            v542 = v319;
            v543 = v319;
            v544 = v319;
            v545 = v319;
            v546 = v319;
            v547 = v319;
            v548 = v319;
            v549 = v319;
            v574 = v319;
            v575 = v319;
            v576 = v319;
            v577 = v319;
            v578 = v319;
            v579 = v319;
            v580 = v319;
            v318 = 8;
            v581 = v319;
          }

          else if (v74[3])
          {
            v318 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v542, 512, v316, v317);
          }

          else
          {
            v318 = 0;
            v548 = 0u;
            v549 = 0u;
            v546 = 0u;
            v547 = 0u;
            v544 = 0u;
            v545 = 0u;
            v542 = 0u;
            v543 = 0u;
            v574 = 0u;
            v575 = 0u;
            v576 = 0u;
            v577 = 0u;
            v578 = 0u;
            v579 = 0u;
            v580 = 0u;
            v581 = 0u;
          }

          v335 = v316 + v318;
          v336 = v74[4];
          if (v336 == 255)
          {
            v339 = *(v335 + 16);
            v340 = *(v335 + 32);
            v341 = *(v335 + 48);
            v342 = *(v335 + 64);
            v343 = *(v335 + 80);
            v344 = *(v335 + 96);
            v345 = *(v335 + 112);
            v346 = *(v335 + 128);
            v347 = *(v335 + 144);
            v348 = *(v335 + 160);
            v349 = *(v335 + 176);
            v350 = *(v335 + 192);
            v351 = *(v335 + 208);
            v352 = *(v335 + 224);
            v353 = *(v335 + 240);
            v486 = *v335;
            v487 = v339;
            v488 = v340;
            v489 = v341;
            v490 = v342;
            v491 = v343;
            v492 = v344;
            v493 = v345;
            v518 = v346;
            v519 = v347;
            v520 = v348;
            v521 = v349;
            v337 = 256;
            v522 = v350;
            v523 = v351;
            v524 = v352;
            v525 = v353;
          }

          else if (v336 == 7)
          {
            v338 = vld1q_dup_f64(v335);
            v486 = v338;
            v487 = v338;
            v488 = v338;
            v489 = v338;
            v490 = v338;
            v491 = v338;
            v492 = v338;
            v493 = v338;
            v518 = v338;
            v519 = v338;
            v520 = v338;
            v521 = v338;
            v522 = v338;
            v523 = v338;
            v337 = 8;
            v524 = v338;
            v525 = v338;
          }

          else if (v74[4])
          {
            v337 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v486, 512, v335, v336);
          }

          else
          {
            v337 = 0;
            v492 = 0u;
            v493 = 0u;
            v490 = 0u;
            v491 = 0u;
            v488 = 0u;
            v489 = 0u;
            v486 = 0u;
            v487 = 0u;
            v518 = 0u;
            v519 = 0u;
            v520 = 0u;
            v521 = 0u;
            v522 = 0u;
            v523 = 0u;
            v524 = 0u;
            v525 = 0u;
          }

          v354 = v335 + v337;
          v355 = v74[5];
          if (v355 == 255)
          {
            v358 = *(v354 + 16);
            v359 = *(v354 + 32);
            v360 = *(v354 + 48);
            v361 = *(v354 + 64);
            v362 = *(v354 + 80);
            v363 = *(v354 + 96);
            v364 = *(v354 + 112);
            v365 = *(v354 + 128);
            v366 = *(v354 + 144);
            v367 = *(v354 + 160);
            v368 = *(v354 + 176);
            v369 = *(v354 + 192);
            v370 = *(v354 + 208);
            v371 = *(v354 + 224);
            v372 = *(v354 + 240);
            v494 = *v354;
            v495 = v358;
            v496 = v359;
            v497 = v360;
            v498 = v361;
            v499 = v362;
            v500 = v363;
            v501 = v364;
            v526 = v365;
            v527 = v366;
            v528 = v367;
            v529 = v368;
            v356 = 256;
            v530 = v369;
            v531 = v370;
            v532 = v371;
            v533 = v372;
          }

          else if (v355 == 7)
          {
            v357 = vld1q_dup_f64(v354);
            v494 = v357;
            v495 = v357;
            v496 = v357;
            v497 = v357;
            v498 = v357;
            v499 = v357;
            v500 = v357;
            v501 = v357;
            v526 = v357;
            v527 = v357;
            v528 = v357;
            v529 = v357;
            v530 = v357;
            v531 = v357;
            v356 = 8;
            v532 = v357;
            v533 = v357;
          }

          else if (v74[5])
          {
            v356 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v494, 512, v354, v355);
          }

          else
          {
            v356 = 0;
            v500 = 0u;
            v501 = 0u;
            v498 = 0u;
            v499 = 0u;
            v496 = 0u;
            v497 = 0u;
            v494 = 0u;
            v495 = 0u;
            v526 = 0u;
            v527 = 0u;
            v528 = 0u;
            v529 = 0u;
            v530 = 0u;
            v531 = 0u;
            v532 = 0u;
            v533 = 0u;
          }

          v373 = v354 + v356;
          v374 = v74[6];
          if (v374 == 255)
          {
            v377 = *(v373 + 16);
            v378 = *(v373 + 32);
            v379 = *(v373 + 48);
            v380 = *(v373 + 64);
            v381 = *(v373 + 80);
            v382 = *(v373 + 96);
            v383 = *(v373 + 112);
            v384 = *(v373 + 128);
            v385 = *(v373 + 144);
            v386 = *(v373 + 160);
            v387 = *(v373 + 176);
            v388 = *(v373 + 192);
            v389 = *(v373 + 208);
            v390 = *(v373 + 224);
            v391 = *(v373 + 240);
            v550 = *v373;
            v551 = v377;
            v552 = v378;
            v553 = v379;
            v554 = v380;
            v555 = v381;
            v556 = v382;
            v557 = v383;
            v582 = v384;
            v583 = v385;
            v584 = v386;
            v585 = v387;
            v375 = 256;
            v586 = v388;
            v587 = v389;
            v588 = v390;
            v589 = v391;
          }

          else if (v374 == 7)
          {
            v376 = vld1q_dup_f64(v373);
            v550 = v376;
            v551 = v376;
            v552 = v376;
            v553 = v376;
            v554 = v376;
            v555 = v376;
            v556 = v376;
            v557 = v376;
            v582 = v376;
            v583 = v376;
            v584 = v376;
            v585 = v376;
            v586 = v376;
            v587 = v376;
            v588 = v376;
            v375 = 8;
            v589 = v376;
          }

          else if (v74[6])
          {
            v375 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v550, 512, v373, v374);
          }

          else
          {
            v375 = 0;
            v556 = 0u;
            v557 = 0u;
            v554 = 0u;
            v555 = 0u;
            v552 = 0u;
            v553 = 0u;
            v550 = 0u;
            v551 = 0u;
            v582 = 0u;
            v583 = 0u;
            v584 = 0u;
            v585 = 0u;
            v586 = 0u;
            v587 = 0u;
            v588 = 0u;
            v589 = 0u;
          }

          v392 = v373 + v375;
          v393 = v74[7];
          if (v393 == 255)
          {
            v397 = *(v392 + 16);
            v398 = *(v392 + 32);
            v399 = *(v392 + 48);
            v400 = *(v392 + 64);
            v401 = *(v392 + 80);
            v402 = *(v392 + 96);
            v403 = *(v392 + 112);
            v404 = *(v392 + 128);
            v405 = *(v392 + 144);
            v406 = *(v392 + 160);
            v407 = *(v392 + 176);
            v408 = *(v392 + 192);
            v409 = *(v392 + 208);
            v410 = *(v392 + 224);
            v411 = *(v392 + 240);
            v558 = *v392;
            v559 = v397;
            v560 = v398;
            v561 = v399;
            v562 = v400;
            v563 = v401;
            v564 = v402;
            v565 = v403;
            v590 = v404;
            v591 = v405;
            v592 = v406;
            v593 = v407;
            v394 = v446;
            v395 = v447;
            v594 = v408;
            v595 = v409;
            v596 = v410;
            v597 = v411;
            v24 = v457;
            v44 = v42 + 1;
          }

          else
          {
            v24 = v457;
            v44 = v42 + 1;
            if (v393 == 7)
            {
              v396 = vld1q_dup_f64(v392);
              v558 = v396;
              v559 = v396;
              v560 = v396;
              v561 = v396;
              v562 = v396;
              v563 = v396;
              v564 = v396;
              v565 = v396;
              v590 = v396;
              v591 = v396;
              v592 = v396;
              v593 = v396;
              v594 = v396;
              v595 = v396;
              v596 = v396;
              v394 = v446;
              v395 = v447;
              v597 = v396;
            }

            else if (v393)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v558, 512, v392, v393);
              v395 = v463;
              v79 = v464;
              v394 = v465;
            }

            else
            {
              v564 = 0u;
              v565 = 0u;
              v562 = 0u;
              v563 = 0u;
              v560 = 0u;
              v561 = 0u;
              v558 = 0u;
              v559 = 0u;
              v590 = 0u;
              v591 = 0u;
              v592 = 0u;
              v593 = 0u;
              v594 = 0u;
              v595 = 0u;
              v394 = v446;
              v395 = v447;
              v596 = 0u;
              v597 = 0u;
            }
          }

          if (v394)
          {
            v412 = 0;
            v413 = &v470.f64[64 * v395 + 8 * v79];
            v414 = v466;
            do
            {
              if (v414)
              {
                v415 = 0;
                v416 = v461 + v462 * v412;
                do
                {
                  v416[v415] = *(v413 + v415);
                  ++v415;
                  v414 = v466;
                }

                while (v466 << 6 > v415);
                v394 = v465;
              }

              ++v412;
              v413 += 32;
            }

            while (v412 < v394);
          }

LABEL_30:
          v29 = v42 == v449 >> 3;
          v42 = v44;
        }

        while (!v29);
        v29 = v25++ == v440;
      }

      while (!v29);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v452 = v21;
  v453 = v22;
  v439 = v23;
  v24 = v12;
  v598 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v456 = v14;
  v25 = v14 >> 2;
  v438 = v14 + a10 - 1;
  v440 = v438 >> 2;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
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
  v451 = v32;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  if (v25 <= v440)
  {
    v449 = v16 + a9 - 1;
    v437 = v16 >> 3;
    if (v16 >> 3 <= v449 >> 3)
    {
      v33 = a11;
      v459 = (v20 - 1) >> 3;
      v434 = v20 - 1;
      v442 = (v20 - 1) & 7;
      v435 = (v18 - 1) & 3;
      v436 = (v18 - 1) >> 2;
      v441 = 2 * a11;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v445 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v444 = v35;
      v433 = 8 * v27 * v26;
      v457 = v24;
      v448 = v16;
      do
      {
        v36 = (4 * v25) | 3;
        if (4 * v25 <= v456)
        {
          v37 = v456;
        }

        else
        {
          v37 = 4 * v25;
        }

        if (v438 < v36)
        {
          v36 = v438;
        }

        v455 = 4 * v25;
        v447 = v37 - 4 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v435;
        v446 = v39;
        v41 = v39 != 4;
        v42 = v437;
        v43 = v435 + 1;
        if (v25 != v436)
        {
          v43 = 4;
        }

        v458 = v43;
        if (v25 != v436)
        {
          v40 = v41;
        }

        v443 = v40;
        v454 = v439 + (v37 - v456) * v33;
        do
        {
          v45 = 8 * v42;
          v46 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= v16)
          {
            v47 = v16;
          }

          else
          {
            v47 = 8 * v42;
          }

          if (v449 < v46)
          {
            v46 = v449;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v42 == v459)
          {
            v50 = v442 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v455 >= v456 && v45 >= v16)
          {
            v52 = v48 != v442;
            if (v42 != v459)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v443;
          }

          if (isLevelTiled)
          {
            v417 = 0;
            v418 = v433 >> (*(v24 + 57) != 0);
            v419 = 1;
            if (v418 <= 63)
            {
              if (v418 > 15)
              {
                if (v418 == 16)
                {
                  v419 = 0;
                  v420 = 64;
                  v417 = 128;
                }

                else
                {
                  v420 = 0;
                  if (v418 == 32)
                  {
                    v419 = 0;
                    v417 = 64;
                    v420 = 64;
                  }
                }
              }

              else if (v418 == 4)
              {
                v419 = 0;
                v420 = 128;
                v417 = 256;
              }

              else
              {
                v420 = 0;
                if (v418 == 8)
                {
                  v419 = 0;
                  v417 = 128;
                  v420 = 128;
                }
              }
            }

            else if (v418 <= 255)
            {
              if (v418 == 64)
              {
                v419 = 0;
                v420 = 32;
                v417 = 64;
              }

              else
              {
                v420 = 0;
                if (v418 == 128)
                {
                  v419 = 0;
                  v417 = 32;
                  v420 = 32;
                }
              }
            }

            else if (v418 == 256)
            {
              v419 = 0;
              v420 = 16;
              v417 = 32;
            }

            else if (v418 == 512)
            {
              v419 = 0;
              v417 = 16;
              v420 = 16;
            }

            else
            {
              v420 = 0;
              if (v418 == 1024)
              {
                v419 = 0;
                v420 = 8;
                v417 = 16;
              }
            }

            v421 = (v417 >> 3) - 1;
            v422 = (v420 >> 2) - 1;
            if ((v419 & 1) != 0 || (v423 = 32 - __clz(~(-1 << -__clz(v421))), v424 = 32 - __clz(~(-1 << -__clz(v422))), !(v424 | v423)))
            {
              v432 = 0;
            }

            else
            {
              v425 = 0;
              v426 = 0;
              v427 = v42 & v421;
              v428 = v25 & v422;
              v429 = v424 != 0;
              v430 = v423 != 0;
              v431 = 1;
              do
              {
                --v424;
                if (v429)
                {
                  v426 |= (v431 & v428) << v425++;
                }

                else
                {
                  v424 = 0;
                }

                --v423;
                if (v430)
                {
                  v426 |= (v431 & v427) << v425++;
                }

                else
                {
                  v423 = 0;
                }

                v431 *= 2;
                --v425;
                v430 = v423 != 0;
                v429 = v424 != 0;
              }

              while (v423 | v424);
              v432 = v426 << 11;
            }

            v60 = v432 + ((v45 / v417 + v455 / v420 * ((v417 + v434) / v417)) << 14);
          }

          else if (v445)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v56 = v444.i8[0];
            v57 = v444.i8[4];
            v58 = v445.i32[0];
            v59 = v445.i32[1];
            do
            {
              --v58;
              if (v56)
              {
                v54 |= (v55 & v25) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v57)
              {
                v54 |= (v55 & v42) << v53++;
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

          v61 = *(v24 + 128) >> (*(v24 + 144) + a12);
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

          v64 = *(v24 + 132) >> (*(v24 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
          }

          if (v66 | v63)
          {
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
                v68 |= (v71 & v42) << v67++;
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
          }

          else
          {
            v72 = 0;
          }

          v73 = (v452 + v60);
          if (v451)
          {
            memcpy(__dst, v73, sizeof(__dst));
            v73 = __dst;
          }

          v74 = (v453 + v72);
          v75 = (v454 + ((v47 - v16) << 6));
          if (!(v51 & 1 | (v50 < 8u)) && v458 > 3)
          {
            v76 = *v74;
            if (v76 == 255)
            {
              v84 = v73[1];
              v85 = v73[2];
              v86 = v73[3];
              v87 = v73[4];
              v88 = v73[5];
              v89 = v73[6];
              v90 = v73[7];
              v91 = v73[8];
              v92 = v73[9];
              v93 = v73[10];
              v94 = v73[11];
              v95 = v73[12];
              v96 = v73[13];
              v97 = v73[14];
              v98 = v73[15];
              v33 = a11;
              *v75 = *v73;
              v75[1] = v84;
              v75[2] = v85;
              v75[3] = v86;
              v99 = (v75 + a11);
              v75[4] = v87;
              v75[5] = v88;
              v75[6] = v89;
              v75[7] = v90;
              *v99 = v91;
              v99[1] = v92;
              v99[2] = v93;
              v99[3] = v94;
              v100 = (v75 + a11 + 64);
              v77 = 256;
              *v100 = v95;
              v100[1] = v96;
              v100[2] = v97;
              v100[3] = v98;
            }

            else
            {
              v33 = a11;
              if (v76 == 7)
              {
                v82 = vld1q_dup_f64(v73->f64);
                *v75 = v82;
                v75[1] = v82;
                v75[2] = v82;
                v75[3] = v82;
                v75[4] = v82;
                v75[5] = v82;
                v75[6] = v82;
                v75[7] = v82;
                v83 = (v75 + a11);
                *v83 = v82;
                v83[1] = v82;
                v83[2] = v82;
                v83[3] = v82;
                v83[4] = v82;
                v83[5] = v82;
                v83[6] = v82;
                v83[7] = v82;
                v77 = 8;
              }

              else if (*v74)
              {
                v77 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75, a11, v73, v76);
              }

              else
              {
                v77 = 0;
                v75[6] = 0u;
                v75[7] = 0u;
                v75[4] = 0u;
                v75[5] = 0u;
                v75[2] = 0u;
                v75[3] = 0u;
                *v75 = 0u;
                v75[1] = 0u;
                v78 = (v75->f64 + a11);
                v78[6] = 0u;
                v78[7] = 0u;
                v78[4] = 0u;
                v78[5] = 0u;
                v78[2] = 0u;
                v78[3] = 0u;
                *v78 = 0u;
                v78[1] = 0u;
              }
            }

            v101 = v73 + v77;
            f64 = v75[8].f64;
            v103 = v74[1];
            if (v103 == 255)
            {
              v108 = *(v101 + 16);
              v109 = *(v101 + 32);
              v110 = *(v101 + 48);
              v111 = *(v101 + 64);
              v112 = *(v101 + 80);
              v113 = *(v101 + 96);
              v114 = *(v101 + 112);
              v115 = *(v101 + 128);
              v116 = *(v101 + 144);
              v117 = *(v101 + 160);
              v118 = *(v101 + 176);
              v119 = *(v101 + 192);
              v120 = *(v101 + 208);
              v121 = *(v101 + 224);
              v122 = *(v101 + 240);
              *f64 = *v101;
              v75[9] = v108;
              v75[10] = v109;
              v75[11] = v110;
              v123 = (f64 + v33);
              v75[12] = v111;
              v75[13] = v112;
              v75[14] = v113;
              v75[15] = v114;
              *v123 = v115;
              v123[1] = v116;
              v123[2] = v117;
              v123[3] = v118;
              v123 += 4;
              v104 = 256;
              *v123 = v119;
              v123[1] = v120;
              v123[2] = v121;
              v123[3] = v122;
            }

            else if (v103 == 7)
            {
              v106 = vld1q_dup_f64(v101);
              v75[8] = v106;
              v75[9] = v106;
              v75[10] = v106;
              v75[11] = v106;
              v75[12] = v106;
              v75[13] = v106;
              v75[14] = v106;
              v75[15] = v106;
              v107 = (f64 + v33);
              *v107 = v106;
              v107[1] = v106;
              v107[2] = v106;
              v107[3] = v106;
              v107[4] = v106;
              v107[5] = v106;
              v107[6] = v106;
              v107[7] = v106;
              v104 = 8;
            }

            else if (v74[1])
            {
              v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(f64, v33, v101, v103);
            }

            else
            {
              v104 = 0;
              v75[14] = 0u;
              v75[15] = 0u;
              v75[12] = 0u;
              v75[13] = 0u;
              v75[10] = 0u;
              v75[11] = 0u;
              *f64 = 0u;
              v75[9] = 0u;
              v105 = (f64 + v33);
              v105[6] = 0u;
              v105[7] = 0u;
              v105[4] = 0u;
              v105[5] = 0u;
              v105[2] = 0u;
              v105[3] = 0u;
              *v105 = 0u;
              v105[1] = 0u;
            }

            v124 = v101 + v104;
            v125 = (v75 + v441);
            v126 = v74[2];
            if (v126 == 255)
            {
              v131 = *(v124 + 16);
              v132 = *(v124 + 32);
              v133 = *(v124 + 48);
              v134 = *(v124 + 64);
              v135 = *(v124 + 80);
              v136 = *(v124 + 96);
              v137 = *(v124 + 112);
              v138 = *(v124 + 128);
              v139 = *(v124 + 144);
              v140 = *(v124 + 160);
              v141 = *(v124 + 176);
              v142 = *(v124 + 192);
              v143 = *(v124 + 208);
              v144 = *(v124 + 224);
              v145 = *(v124 + 240);
              *v125 = *v124;
              v125[1] = v131;
              v125[2] = v132;
              v125[3] = v133;
              v146 = (v125->f64 + v33);
              v125[4] = v134;
              v125[5] = v135;
              v125[6] = v136;
              v125[7] = v137;
              *v146 = v138;
              v146[1] = v139;
              v146[2] = v140;
              v146[3] = v141;
              v147 = (v125[4].f64 + v33);
              v127 = 256;
              *v147 = v142;
              v147[1] = v143;
              v147[2] = v144;
              v147[3] = v145;
            }

            else if (v126 == 7)
            {
              v129 = vld1q_dup_f64(v124);
              *v125 = v129;
              v125[1] = v129;
              v125[2] = v129;
              v125[3] = v129;
              v125[4] = v129;
              v125[5] = v129;
              v125[6] = v129;
              v125[7] = v129;
              v130 = (v125 + v33);
              *v130 = v129;
              v130[1] = v129;
              v130[2] = v129;
              v130[3] = v129;
              v130[4] = v129;
              v130[5] = v129;
              v130[6] = v129;
              v130[7] = v129;
              v127 = 8;
            }

            else if (v74[2])
            {
              v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75 + v441, v33, v124, v126);
            }

            else
            {
              v127 = 0;
              v125[6] = 0u;
              v125[7] = 0u;
              v125[4] = 0u;
              v125[5] = 0u;
              v125[2] = 0u;
              v125[3] = 0u;
              *v125 = 0u;
              v125[1] = 0u;
              v128 = (v125->f64 + v33);
              v128[6] = 0u;
              v128[7] = 0u;
              v128[4] = 0u;
              v128[5] = 0u;
              v128[2] = 0u;
              v128[3] = 0u;
              *v128 = 0u;
              v128[1] = 0u;
            }

            v148 = v124 + v127;
            v149 = v125[8].f64;
            v150 = v74[3];
            if (v150 == 255)
            {
              v155 = *(v148 + 16);
              v156 = *(v148 + 32);
              v157 = *(v148 + 48);
              v158 = *(v148 + 64);
              v159 = *(v148 + 80);
              v160 = *(v148 + 96);
              v161 = *(v148 + 112);
              v162 = *(v148 + 128);
              v163 = *(v148 + 144);
              v164 = *(v148 + 160);
              v165 = *(v148 + 176);
              v166 = *(v148 + 192);
              v167 = *(v148 + 208);
              v168 = *(v148 + 224);
              v169 = *(v148 + 240);
              *v149 = *v148;
              v125[9] = v155;
              v125[10] = v156;
              v125[11] = v157;
              v170 = (v149 + v33);
              v125[12] = v158;
              v125[13] = v159;
              v125[14] = v160;
              v125[15] = v161;
              *v170 = v162;
              v170[1] = v163;
              v170[2] = v164;
              v170[3] = v165;
              v170 += 4;
              v151 = 256;
              *v170 = v166;
              v170[1] = v167;
              v170[2] = v168;
              v170[3] = v169;
            }

            else if (v150 == 7)
            {
              v153 = vld1q_dup_f64(v148);
              v125[8] = v153;
              v125[9] = v153;
              v125[10] = v153;
              v125[11] = v153;
              v125[12] = v153;
              v125[13] = v153;
              v125[14] = v153;
              v125[15] = v153;
              v154 = (v149 + v33);
              *v154 = v153;
              v154[1] = v153;
              v154[2] = v153;
              v154[3] = v153;
              v154[4] = v153;
              v154[5] = v153;
              v154[6] = v153;
              v154[7] = v153;
              v151 = 8;
            }

            else if (v74[3])
            {
              v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v149, v33, v148, v150);
            }

            else
            {
              v151 = 0;
              v125[14] = 0u;
              v125[15] = 0u;
              v125[12] = 0u;
              v125[13] = 0u;
              v125[10] = 0u;
              v125[11] = 0u;
              *v149 = 0u;
              v125[9] = 0u;
              v152 = (v149 + v33);
              v152[6] = 0u;
              v152[7] = 0u;
              v152[4] = 0u;
              v152[5] = 0u;
              v152[2] = 0u;
              v152[3] = 0u;
              *v152 = 0u;
              v152[1] = 0u;
            }

            v171 = v148 + v151;
            v172 = v75[16].f64;
            v173 = v74[4];
            if (v173 == 255)
            {
              v178 = *(v171 + 16);
              v179 = *(v171 + 32);
              v180 = *(v171 + 48);
              v181 = *(v171 + 64);
              v182 = *(v171 + 80);
              v183 = *(v171 + 96);
              v184 = *(v171 + 112);
              v185 = *(v171 + 128);
              v186 = *(v171 + 144);
              v187 = *(v171 + 160);
              v188 = *(v171 + 176);
              v189 = *(v171 + 192);
              v190 = *(v171 + 208);
              v191 = *(v171 + 224);
              v192 = *(v171 + 240);
              *v172 = *v171;
              v75[17] = v178;
              v75[18] = v179;
              v75[19] = v180;
              v193 = (v172 + v33);
              v75[20] = v181;
              v75[21] = v182;
              v75[22] = v183;
              v75[23] = v184;
              *v193 = v185;
              v193[1] = v186;
              v193[2] = v187;
              v193[3] = v188;
              v193 += 4;
              v174 = 256;
              *v193 = v189;
              v193[1] = v190;
              v193[2] = v191;
              v193[3] = v192;
            }

            else if (v173 == 7)
            {
              v176 = vld1q_dup_f64(v171);
              v75[16] = v176;
              v75[17] = v176;
              v75[18] = v176;
              v75[19] = v176;
              v75[20] = v176;
              v75[21] = v176;
              v75[22] = v176;
              v75[23] = v176;
              v177 = (v172 + v33);
              *v177 = v176;
              v177[1] = v176;
              v177[2] = v176;
              v177[3] = v176;
              v177[4] = v176;
              v177[5] = v176;
              v177[6] = v176;
              v177[7] = v176;
              v174 = 8;
            }

            else if (v74[4])
            {
              v174 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v172, v33, v171, v173);
            }

            else
            {
              v174 = 0;
              v75[22] = 0u;
              v75[23] = 0u;
              v75[20] = 0u;
              v75[21] = 0u;
              v75[18] = 0u;
              v75[19] = 0u;
              *v172 = 0u;
              v75[17] = 0u;
              v175 = (v172 + v33);
              v175[6] = 0u;
              v175[7] = 0u;
              v175[4] = 0u;
              v175[5] = 0u;
              v175[2] = 0u;
              v175[3] = 0u;
              *v175 = 0u;
              v175[1] = 0u;
            }

            v194 = v171 + v174;
            v195 = v75[24].f64;
            v196 = v74[5];
            if (v196 == 255)
            {
              v201 = *(v194 + 16);
              v202 = *(v194 + 32);
              v203 = *(v194 + 48);
              v204 = *(v194 + 64);
              v205 = *(v194 + 80);
              v206 = *(v194 + 96);
              v207 = *(v194 + 112);
              v208 = *(v194 + 128);
              v209 = *(v194 + 144);
              v210 = *(v194 + 160);
              v211 = *(v194 + 176);
              v212 = *(v194 + 192);
              v213 = *(v194 + 208);
              v214 = *(v194 + 224);
              v215 = *(v194 + 240);
              *v195 = *v194;
              v75[25] = v201;
              v75[26] = v202;
              v75[27] = v203;
              v216 = (v195 + v33);
              v75[28] = v204;
              v75[29] = v205;
              v75[30] = v206;
              v75[31] = v207;
              *v216 = v208;
              v216[1] = v209;
              v216[2] = v210;
              v216[3] = v211;
              v216 += 4;
              v197 = 256;
              *v216 = v212;
              v216[1] = v213;
              v216[2] = v214;
              v216[3] = v215;
            }

            else if (v196 == 7)
            {
              v199 = vld1q_dup_f64(v194);
              v75[24] = v199;
              v75[25] = v199;
              v75[26] = v199;
              v75[27] = v199;
              v75[28] = v199;
              v75[29] = v199;
              v75[30] = v199;
              v75[31] = v199;
              v200 = (v195 + v33);
              *v200 = v199;
              v200[1] = v199;
              v200[2] = v199;
              v200[3] = v199;
              v200[4] = v199;
              v200[5] = v199;
              v197 = 8;
              v200[6] = v199;
              v200[7] = v199;
            }

            else if (v74[5])
            {
              v197 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v195, v33, v194, v196);
            }

            else
            {
              v197 = 0;
              v75[30] = 0u;
              v75[31] = 0u;
              v75[28] = 0u;
              v75[29] = 0u;
              v75[26] = 0u;
              v75[27] = 0u;
              *v195 = 0u;
              v75[25] = 0u;
              v198 = (v195 + v33);
              v198[6] = 0u;
              v198[7] = 0u;
              v198[4] = 0u;
              v198[5] = 0u;
              v198[2] = 0u;
              v198[3] = 0u;
              *v198 = 0u;
              v198[1] = 0u;
            }

            v16 = v448;
            v217 = v194 + v197;
            v218 = v125[16].f64;
            v219 = v74[6];
            if (v219 == 255)
            {
              v224 = *(v217 + 16);
              v225 = *(v217 + 32);
              v226 = *(v217 + 48);
              v227 = *(v217 + 64);
              v228 = *(v217 + 80);
              v229 = *(v217 + 96);
              v230 = *(v217 + 112);
              v231 = *(v217 + 128);
              v232 = *(v217 + 144);
              v233 = *(v217 + 160);
              v234 = *(v217 + 176);
              v235 = *(v217 + 192);
              v236 = *(v217 + 208);
              v237 = *(v217 + 224);
              v238 = *(v217 + 240);
              *v218 = *v217;
              v125[17] = v224;
              v125[18] = v225;
              v125[19] = v226;
              v239 = (v218 + v33);
              v125[20] = v227;
              v125[21] = v228;
              v125[22] = v229;
              v125[23] = v230;
              *v239 = v231;
              v239[1] = v232;
              v239[2] = v233;
              v239[3] = v234;
              v239 += 4;
              v220 = 256;
              *v239 = v235;
              v239[1] = v236;
              v239[2] = v237;
              v239[3] = v238;
            }

            else if (v219 == 7)
            {
              v222 = vld1q_dup_f64(v217);
              v125[16] = v222;
              v125[17] = v222;
              v125[18] = v222;
              v125[19] = v222;
              v125[20] = v222;
              v125[21] = v222;
              v125[22] = v222;
              v125[23] = v222;
              v223 = (v218 + v33);
              *v223 = v222;
              v223[1] = v222;
              v223[2] = v222;
              v223[3] = v222;
              v223[4] = v222;
              v223[5] = v222;
              v223[6] = v222;
              v223[7] = v222;
              v220 = 8;
            }

            else if (v74[6])
            {
              v220 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v218, v33, v217, v219);
            }

            else
            {
              v220 = 0;
              v125[22] = 0u;
              v125[23] = 0u;
              v125[20] = 0u;
              v125[21] = 0u;
              v125[18] = 0u;
              v125[19] = 0u;
              *v218 = 0u;
              v125[17] = 0u;
              v221 = (v218 + v33);
              v221[6] = 0u;
              v221[7] = 0u;
              v221[4] = 0u;
              v221[5] = 0u;
              v221[2] = 0u;
              v221[3] = 0u;
              *v221 = 0u;
              v221[1] = 0u;
            }

            v240 = v217 + v220;
            v241 = v125[24].f64;
            v242 = v74[7];
            if (v242 == 255)
            {
              v246 = *(v240 + 16);
              v247 = *(v240 + 32);
              v248 = *(v240 + 48);
              v249 = *(v240 + 64);
              v250 = *(v240 + 80);
              v251 = *(v240 + 96);
              v252 = *(v240 + 112);
              v253 = *(v240 + 128);
              v254 = *(v240 + 144);
              v255 = *(v240 + 160);
              v256 = *(v240 + 176);
              v257 = *(v240 + 192);
              v258 = *(v240 + 208);
              v259 = *(v240 + 224);
              v260 = *(v240 + 240);
              *v241 = *v240;
              v125[25] = v246;
              v125[26] = v247;
              v125[27] = v248;
              v261 = (v241 + v33);
              v125[28] = v249;
              v125[29] = v250;
              v125[30] = v251;
              v125[31] = v252;
              *v261 = v253;
              v261[1] = v254;
              v261[2] = v255;
              v261[3] = v256;
              v261 += 4;
              *v261 = v257;
              v261[1] = v258;
              v261[2] = v259;
              v261[3] = v260;
              v24 = v457;
            }

            else
            {
              v24 = v457;
              if (v242 == 7)
              {
                v244 = vld1q_dup_f64(v240);
                v125[24] = v244;
                v125[25] = v244;
                v125[26] = v244;
                v125[27] = v244;
                v125[28] = v244;
                v125[29] = v244;
                v125[30] = v244;
                v125[31] = v244;
                v245 = (v241 + v33);
                *v245 = v244;
                v245[1] = v244;
                v245[2] = v244;
                v245[3] = v244;
                v245[4] = v244;
                v245[5] = v244;
                v245[6] = v244;
                v245[7] = v244;
              }

              else if (v242)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v241, v33, v240, v242);
              }

              else
              {
                v125[30] = 0u;
                v125[31] = 0u;
                v125[28] = 0u;
                v125[29] = 0u;
                v125[26] = 0u;
                v125[27] = 0u;
                *v241 = 0u;
                v125[25] = 0u;
                v243 = (v241 + v33);
                v243[6] = 0u;
                v243[7] = 0u;
                v243[4] = 0u;
                v243[5] = 0u;
                v243[2] = 0u;
                v243[3] = 0u;
                *v243 = 0u;
                v243[1] = 0u;
              }
            }

            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v79 = v47 - v45;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v457;
          block[5] = v73;
          v467 = v50;
          v468 = v458;
          v463 = v447;
          v464 = v79;
          block[6] = v74;
          v461 = v75;
          v33 = a11;
          v462 = a11;
          v465 = v446;
          v466 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v457 + 8) + 16552), block);
            v16 = v448;
            v24 = v457;
LABEL_29:
            v44 = v42 + 1;
            goto LABEL_30;
          }

          v80 = *v74;
          v16 = v448;
          if (v80 == 255)
          {
            v263 = v73[1];
            v264 = v73[2];
            v265 = v73[3];
            v266 = v73[4];
            v267 = v73[5];
            v268 = v73[6];
            v269 = v73[7];
            v270 = v73[8];
            v271 = v73[9];
            v272 = v73[10];
            v273 = v73[11];
            v274 = v73[12];
            v275 = v73[13];
            v276 = v73[14];
            v277 = v73[15];
            v470 = *v73;
            v471 = v263;
            v472 = v264;
            v473 = v265;
            v474 = v266;
            v475 = v267;
            v476 = v268;
            v477 = v269;
            v502 = v270;
            v503 = v271;
            v504 = v272;
            v505 = v273;
            v81 = 256;
            v506 = v274;
            v507 = v275;
            v508 = v276;
            v509 = v277;
          }

          else if (v80 == 7)
          {
            v262 = vld1q_dup_f64(v73->f64);
            v470 = v262;
            v471 = v262;
            v472 = v262;
            v473 = v262;
            v474 = v262;
            v475 = v262;
            v476 = v262;
            v477 = v262;
            v502 = v262;
            v503 = v262;
            v504 = v262;
            v505 = v262;
            v506 = v262;
            v507 = v262;
            v81 = 8;
            v508 = v262;
            v509 = v262;
          }

          else if (*v74)
          {
            v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v470, 512, v73, v80);
          }

          else
          {
            v81 = 0;
            v477 = 0u;
            v476 = 0u;
            v475 = 0u;
            v474 = 0u;
            v473 = 0u;
            v472 = 0u;
            v471 = 0u;
            v470 = 0u;
            v502 = 0u;
            v503 = 0u;
            v504 = 0u;
            v505 = 0u;
            v506 = 0u;
            v507 = 0u;
            v508 = 0u;
            v509 = 0u;
          }

          v278 = v73 + v81;
          v279 = v74[1];
          if (v279 == 255)
          {
            v282 = *(v278 + 16);
            v283 = *(v278 + 32);
            v284 = *(v278 + 48);
            v285 = *(v278 + 64);
            v286 = *(v278 + 80);
            v287 = *(v278 + 96);
            v288 = *(v278 + 112);
            v289 = *(v278 + 128);
            v290 = *(v278 + 144);
            v291 = *(v278 + 160);
            v292 = *(v278 + 176);
            v293 = *(v278 + 192);
            v294 = *(v278 + 208);
            v295 = *(v278 + 224);
            v296 = *(v278 + 240);
            v478 = *v278;
            v479 = v282;
            v480 = v283;
            v481 = v284;
            v482 = v285;
            v483 = v286;
            v484 = v287;
            v485 = v288;
            v510 = v289;
            v511 = v290;
            v512 = v291;
            v513 = v292;
            v280 = 256;
            v514 = v293;
            v515 = v294;
            v516 = v295;
            v517 = v296;
          }

          else if (v279 == 7)
          {
            v281 = vld1q_dup_f64(v278);
            v478 = v281;
            v479 = v281;
            v480 = v281;
            v481 = v281;
            v482 = v281;
            v483 = v281;
            v484 = v281;
            v485 = v281;
            v510 = v281;
            v511 = v281;
            v512 = v281;
            v513 = v281;
            v514 = v281;
            v515 = v281;
            v280 = 8;
            v516 = v281;
            v517 = v281;
          }

          else if (v74[1])
          {
            v280 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v478, 512, v278, v279);
          }

          else
          {
            v280 = 0;
            v484 = 0u;
            v485 = 0u;
            v482 = 0u;
            v483 = 0u;
            v480 = 0u;
            v481 = 0u;
            v478 = 0u;
            v479 = 0u;
            v510 = 0u;
            v511 = 0u;
            v512 = 0u;
            v513 = 0u;
            v514 = 0u;
            v515 = 0u;
            v516 = 0u;
            v517 = 0u;
          }

          v297 = v278 + v280;
          v298 = v74[2];
          if (v298 == 255)
          {
            v301 = *(v297 + 16);
            v302 = *(v297 + 32);
            v303 = *(v297 + 48);
            v304 = *(v297 + 64);
            v305 = *(v297 + 80);
            v306 = *(v297 + 96);
            v307 = *(v297 + 112);
            v308 = *(v297 + 128);
            v309 = *(v297 + 144);
            v310 = *(v297 + 160);
            v311 = *(v297 + 176);
            v312 = *(v297 + 192);
            v313 = *(v297 + 208);
            v314 = *(v297 + 224);
            v315 = *(v297 + 240);
            v534 = *v297;
            v535 = v301;
            v536 = v302;
            v537 = v303;
            v538 = v304;
            v539 = v305;
            v540 = v306;
            v541 = v307;
            v566 = v308;
            v567 = v309;
            v568 = v310;
            v569 = v311;
            v299 = 256;
            v570 = v312;
            v571 = v313;
            v572 = v314;
            v573 = v315;
          }

          else if (v298 == 7)
          {
            v300 = vld1q_dup_f64(v297);
            v534 = v300;
            v535 = v300;
            v536 = v300;
            v537 = v300;
            v538 = v300;
            v539 = v300;
            v540 = v300;
            v541 = v300;
            v566 = v300;
            v567 = v300;
            v568 = v300;
            v569 = v300;
            v570 = v300;
            v571 = v300;
            v572 = v300;
            v299 = 8;
            v573 = v300;
          }

          else if (v74[2])
          {
            v299 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v534, 512, v297, v298);
          }

          else
          {
            v299 = 0;
            v540 = 0u;
            v541 = 0u;
            v538 = 0u;
            v539 = 0u;
            v536 = 0u;
            v537 = 0u;
            v534 = 0u;
            v535 = 0u;
            v566 = 0u;
            v567 = 0u;
            v568 = 0u;
            v569 = 0u;
            v570 = 0u;
            v571 = 0u;
            v572 = 0u;
            v573 = 0u;
          }

          v316 = v297 + v299;
          v317 = v74[3];
          if (v317 == 255)
          {
            v320 = *(v316 + 16);
            v321 = *(v316 + 32);
            v322 = *(v316 + 48);
            v323 = *(v316 + 64);
            v324 = *(v316 + 80);
            v325 = *(v316 + 96);
            v326 = *(v316 + 112);
            v327 = *(v316 + 128);
            v328 = *(v316 + 144);
            v329 = *(v316 + 160);
            v330 = *(v316 + 176);
            v331 = *(v316 + 192);
            v332 = *(v316 + 208);
            v333 = *(v316 + 224);
            v334 = *(v316 + 240);
            v542 = *v316;
            v543 = v320;
            v544 = v321;
            v545 = v322;
            v546 = v323;
            v547 = v324;
            v548 = v325;
            v549 = v326;
            v574 = v327;
            v575 = v328;
            v576 = v329;
            v577 = v330;
            v318 = 256;
            v578 = v331;
            v579 = v332;
            v580 = v333;
            v581 = v334;
          }

          else if (v317 == 7)
          {
            v319 = vld1q_dup_f64(v316);
            v542 = v319;
            v543 = v319;
            v544 = v319;
            v545 = v319;
            v546 = v319;
            v547 = v319;
            v548 = v319;
            v549 = v319;
            v574 = v319;
            v575 = v319;
            v576 = v319;
            v577 = v319;
            v578 = v319;
            v579 = v319;
            v580 = v319;
            v318 = 8;
            v581 = v319;
          }

          else if (v74[3])
          {
            v318 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v542, 512, v316, v317);
          }

          else
          {
            v318 = 0;
            v548 = 0u;
            v549 = 0u;
            v546 = 0u;
            v547 = 0u;
            v544 = 0u;
            v545 = 0u;
            v542 = 0u;
            v543 = 0u;
            v574 = 0u;
            v575 = 0u;
            v576 = 0u;
            v577 = 0u;
            v578 = 0u;
            v579 = 0u;
            v580 = 0u;
            v581 = 0u;
          }

          v335 = v316 + v318;
          v336 = v74[4];
          if (v336 == 255)
          {
            v339 = *(v335 + 16);
            v340 = *(v335 + 32);
            v341 = *(v335 + 48);
            v342 = *(v335 + 64);
            v343 = *(v335 + 80);
            v344 = *(v335 + 96);
            v345 = *(v335 + 112);
            v346 = *(v335 + 128);
            v347 = *(v335 + 144);
            v348 = *(v335 + 160);
            v349 = *(v335 + 176);
            v350 = *(v335 + 192);
            v351 = *(v335 + 208);
            v352 = *(v335 + 224);
            v353 = *(v335 + 240);
            v486 = *v335;
            v487 = v339;
            v488 = v340;
            v489 = v341;
            v490 = v342;
            v491 = v343;
            v492 = v344;
            v493 = v345;
            v518 = v346;
            v519 = v347;
            v520 = v348;
            v521 = v349;
            v337 = 256;
            v522 = v350;
            v523 = v351;
            v524 = v352;
            v525 = v353;
          }

          else if (v336 == 7)
          {
            v338 = vld1q_dup_f64(v335);
            v486 = v338;
            v487 = v338;
            v488 = v338;
            v489 = v338;
            v490 = v338;
            v491 = v338;
            v492 = v338;
            v493 = v338;
            v518 = v338;
            v519 = v338;
            v520 = v338;
            v521 = v338;
            v522 = v338;
            v523 = v338;
            v337 = 8;
            v524 = v338;
            v525 = v338;
          }

          else if (v74[4])
          {
            v337 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v486, 512, v335, v336);
          }

          else
          {
            v337 = 0;
            v492 = 0u;
            v493 = 0u;
            v490 = 0u;
            v491 = 0u;
            v488 = 0u;
            v489 = 0u;
            v486 = 0u;
            v487 = 0u;
            v518 = 0u;
            v519 = 0u;
            v520 = 0u;
            v521 = 0u;
            v522 = 0u;
            v523 = 0u;
            v524 = 0u;
            v525 = 0u;
          }

          v354 = v335 + v337;
          v355 = v74[5];
          if (v355 == 255)
          {
            v358 = *(v354 + 16);
            v359 = *(v354 + 32);
            v360 = *(v354 + 48);
            v361 = *(v354 + 64);
            v362 = *(v354 + 80);
            v363 = *(v354 + 96);
            v364 = *(v354 + 112);
            v365 = *(v354 + 128);
            v366 = *(v354 + 144);
            v367 = *(v354 + 160);
            v368 = *(v354 + 176);
            v369 = *(v354 + 192);
            v370 = *(v354 + 208);
            v371 = *(v354 + 224);
            v372 = *(v354 + 240);
            v494 = *v354;
            v495 = v358;
            v496 = v359;
            v497 = v360;
            v498 = v361;
            v499 = v362;
            v500 = v363;
            v501 = v364;
            v526 = v365;
            v527 = v366;
            v528 = v367;
            v529 = v368;
            v356 = 256;
            v530 = v369;
            v531 = v370;
            v532 = v371;
            v533 = v372;
          }

          else if (v355 == 7)
          {
            v357 = vld1q_dup_f64(v354);
            v494 = v357;
            v495 = v357;
            v496 = v357;
            v497 = v357;
            v498 = v357;
            v499 = v357;
            v500 = v357;
            v501 = v357;
            v526 = v357;
            v527 = v357;
            v528 = v357;
            v529 = v357;
            v530 = v357;
            v531 = v357;
            v356 = 8;
            v532 = v357;
            v533 = v357;
          }

          else if (v74[5])
          {
            v356 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v494, 512, v354, v355);
          }

          else
          {
            v356 = 0;
            v500 = 0u;
            v501 = 0u;
            v498 = 0u;
            v499 = 0u;
            v496 = 0u;
            v497 = 0u;
            v494 = 0u;
            v495 = 0u;
            v526 = 0u;
            v527 = 0u;
            v528 = 0u;
            v529 = 0u;
            v530 = 0u;
            v531 = 0u;
            v532 = 0u;
            v533 = 0u;
          }

          v373 = v354 + v356;
          v374 = v74[6];
          if (v374 == 255)
          {
            v377 = *(v373 + 16);
            v378 = *(v373 + 32);
            v379 = *(v373 + 48);
            v380 = *(v373 + 64);
            v381 = *(v373 + 80);
            v382 = *(v373 + 96);
            v383 = *(v373 + 112);
            v384 = *(v373 + 128);
            v385 = *(v373 + 144);
            v386 = *(v373 + 160);
            v387 = *(v373 + 176);
            v388 = *(v373 + 192);
            v389 = *(v373 + 208);
            v390 = *(v373 + 224);
            v391 = *(v373 + 240);
            v550 = *v373;
            v551 = v377;
            v552 = v378;
            v553 = v379;
            v554 = v380;
            v555 = v381;
            v556 = v382;
            v557 = v383;
            v582 = v384;
            v583 = v385;
            v584 = v386;
            v585 = v387;
            v375 = 256;
            v586 = v388;
            v587 = v389;
            v588 = v390;
            v589 = v391;
          }

          else if (v374 == 7)
          {
            v376 = vld1q_dup_f64(v373);
            v550 = v376;
            v551 = v376;
            v552 = v376;
            v553 = v376;
            v554 = v376;
            v555 = v376;
            v556 = v376;
            v557 = v376;
            v582 = v376;
            v583 = v376;
            v584 = v376;
            v585 = v376;
            v586 = v376;
            v587 = v376;
            v588 = v376;
            v375 = 8;
            v589 = v376;
          }

          else if (v74[6])
          {
            v375 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v550, 512, v373, v374);
          }

          else
          {
            v375 = 0;
            v556 = 0u;
            v557 = 0u;
            v554 = 0u;
            v555 = 0u;
            v552 = 0u;
            v553 = 0u;
            v550 = 0u;
            v551 = 0u;
            v582 = 0u;
            v583 = 0u;
            v584 = 0u;
            v585 = 0u;
            v586 = 0u;
            v587 = 0u;
            v588 = 0u;
            v589 = 0u;
          }

          v392 = v373 + v375;
          v393 = v74[7];
          if (v393 == 255)
          {
            v397 = *(v392 + 16);
            v398 = *(v392 + 32);
            v399 = *(v392 + 48);
            v400 = *(v392 + 64);
            v401 = *(v392 + 80);
            v402 = *(v392 + 96);
            v403 = *(v392 + 112);
            v404 = *(v392 + 128);
            v405 = *(v392 + 144);
            v406 = *(v392 + 160);
            v407 = *(v392 + 176);
            v408 = *(v392 + 192);
            v409 = *(v392 + 208);
            v410 = *(v392 + 224);
            v411 = *(v392 + 240);
            v558 = *v392;
            v559 = v397;
            v560 = v398;
            v561 = v399;
            v562 = v400;
            v563 = v401;
            v564 = v402;
            v565 = v403;
            v590 = v404;
            v591 = v405;
            v592 = v406;
            v593 = v407;
            v394 = v446;
            v395 = v447;
            v594 = v408;
            v595 = v409;
            v596 = v410;
            v597 = v411;
            v24 = v457;
            v44 = v42 + 1;
          }

          else
          {
            v24 = v457;
            v44 = v42 + 1;
            if (v393 == 7)
            {
              v396 = vld1q_dup_f64(v392);
              v558 = v396;
              v559 = v396;
              v560 = v396;
              v561 = v396;
              v562 = v396;
              v563 = v396;
              v564 = v396;
              v565 = v396;
              v590 = v396;
              v591 = v396;
              v592 = v396;
              v593 = v396;
              v594 = v396;
              v595 = v396;
              v596 = v396;
              v394 = v446;
              v395 = v447;
              v597 = v396;
            }

            else if (v393)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v558, 512, v392, v393);
              v395 = v463;
              v79 = v464;
              v394 = v465;
            }

            else
            {
              v564 = 0u;
              v565 = 0u;
              v562 = 0u;
              v563 = 0u;
              v560 = 0u;
              v561 = 0u;
              v558 = 0u;
              v559 = 0u;
              v590 = 0u;
              v591 = 0u;
              v592 = 0u;
              v593 = 0u;
              v594 = 0u;
              v595 = 0u;
              v394 = v446;
              v395 = v447;
              v596 = 0u;
              v597 = 0u;
            }
          }

          if (v394)
          {
            v412 = 0;
            v413 = &v470.f64[64 * v395 + 8 * v79];
            v414 = v466;
            do
            {
              if (v414)
              {
                v415 = 0;
                v416 = v461 + v462 * v412;
                do
                {
                  v416[v415] = *(v413 + v415);
                  ++v415;
                  v414 = v466;
                }

                while (v466 << 6 > v415);
                v394 = v465;
              }

              ++v412;
              v413 += 32;
            }

            while (v412 < v394);
          }

LABEL_30:
          v29 = v42 == v449 >> 3;
          v42 = v44;
        }

        while (!v29);
        v29 = v25++ == v440;
      }

      while (!v29);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v136 = v15;
  v17 = v16;
  v19 = v18;
  v133 = v20;
  v134 = v21;
  v116 = v22;
  v23 = v12;
  v158 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v137 = v14;
  v118 = v14 + a10 - 1;
  if (*(v23 + 168))
  {
    v24 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v24 = 0;
  }

  v25 = v14 >> 2;
  v26 = v19 - 1;
  v27 = v17 - 1;
  v117 = v118 >> 2;
  v28 = (v24 & 0xD00) == 0 || v24 == 768;
  v29 = v24 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v132 = v31;
  if (*(v23 + 232) == 1)
  {
    v32 = *(v23 + 273);
    v33 = *(v23 + 272);
    v34 = __clz(v26);
    if (1 << v32 >= v17 || v19 >> v33)
    {
      if (!(v17 >> v32) && 1 << v33 < v19)
      {
        if (v17 < 2)
        {
          v37 = 0;
        }

        else
        {
          v37 = __clz(~(-1 << -__clz(v27))) | 0xFFFFFFE0;
        }

        v33 += v32 + v37;
        v32 = -v37;
      }
    }

    else
    {
      v35 = 32 - __clz(~(-1 << -v34));
      v36 = v33 + v32;
      if (v19 < 2)
      {
        v35 = 0;
      }

      v32 = v36 - v35;
      v33 = v35;
    }

    if (v19 < 2)
    {
      if (v33)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v34)) < v33)
    {
LABEL_27:
      v131 = 0;
LABEL_32:
      v127 = v33 - 3;
      v121 = v32 - 2;
      v39 = -1 << *(*(v23 + 208) + 48);
      v115 = (((~v39 + v19) & v39) + ~(-1 << v33)) >> v33;
      goto LABEL_33;
    }

    if (v17 < 2)
    {
      v38 = 0;
    }

    else
    {
      v38 = 32 - __clz(~(-1 << -__clz(v27)));
    }

    v131 = v38 >= v32;
    goto LABEL_32;
  }

  v131 = 0;
  v115 = 0;
  v121 = 0;
  v127 = 0;
LABEL_33:
  if (v25 <= v117)
  {
    v130 = v136 + a9 - 1;
    if (v136 >> 3 <= v130 >> 3)
    {
      v139 = v26 >> 3;
      v123 = v26 & 7;
      v128 = (v26 & 7) + 1;
      v113 = v27 & 3;
      v114 = v27 >> 2;
      v122 = 2 * a11;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v41 = vcgt_u32(v40, 0xF00000007);
      v120 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v40, 0xFFFFFFFDFFFFFFFELL), -1))))))), v41);
      v119 = v41;
      v129 = v23;
      do
      {
        v42 = (4 * v25) | 3;
        if (4 * v25 <= v137)
        {
          v43 = v137;
        }

        else
        {
          v43 = 4 * v25;
        }

        if (v118 < v42)
        {
          v42 = v118;
        }

        v126 = v43 - 4 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v113;
        v125 = v45;
        v47 = v45 != 4;
        v48 = v136 >> 3;
        v49 = v113 + 1;
        if (v25 != v114)
        {
          v49 = 4;
        }

        v138 = v49;
        if (v25 != v114)
        {
          v46 = v47;
        }

        v124 = v46;
        v135 = v116 + (v43 - v137) * a11;
        v50 = v136;
        do
        {
          v60 = 8 * v48;
          v61 = 8 * (v48 + 1) - 1;
          if (8 * v48 <= v50)
          {
            v62 = v50;
          }

          else
          {
            v62 = 8 * v48;
          }

          if (v130 < v61)
          {
            v61 = v136 + a9 - 1;
          }

          v63 = v61 - v62;
          v64 = v63 + 1;
          if (v48 == v139)
          {
            v65 = v128;
          }

          else
          {
            v65 = 8;
          }

          v66 = 1;
          if (4 * v25 >= v137 && v60 >= v50)
          {
            v67 = v63 != v123;
            if (v48 != v139)
            {
              v67 = v64 != 8;
            }

            v66 = v67 || v124;
          }

          if (v131)
          {
            if (v127 | v121)
            {
              v68 = 0;
              v69 = 0;
              v70 = v127 != 0;
              v71 = 1;
              v73 = v121 != 0;
              v72 = v121;
              v74 = v127;
              do
              {
                --v72;
                if (v73)
                {
                  v69 |= (v25 & ~(-1 << v121) & v71) << v68++;
                }

                else
                {
                  v72 = 0;
                }

                --v74;
                if (v70)
                {
                  v69 |= (v48 & ~(-1 << v127) & v71) << v68++;
                }

                else
                {
                  v74 = 0;
                }

                v71 *= 2;
                --v68;
                v70 = v74 != 0;
                v73 = v72 != 0;
              }

              while (v74 | v72);
              v75 = v69 << 11;
            }

            else
            {
              v75 = 0;
            }

            v83 = v75 + *(v23 + 336) * ((v48 >> v127) + (v25 >> v121) * v115);
          }

          else if (v120)
          {
            v76 = 0;
            v77 = 0;
            v78 = 1;
            v80 = v119.i8[0];
            v79 = v119.i8[4];
            v81 = v120.i32[0];
            v82 = v120.i32[1];
            do
            {
              --v81;
              if (v80)
              {
                v77 |= (v78 & v25) << v76++;
              }

              else
              {
                v81 = 0;
              }

              --v82;
              if (v79)
              {
                v77 |= (v78 & v48) << v76++;
              }

              else
              {
                v82 = 0;
              }

              v78 *= 2;
              --v76;
              v79 = v82 != 0;
              v80 = v81 != 0;
            }

            while (v82 | v81);
            v83 = v77 << 11;
          }

          else
          {
            v83 = 0;
          }

          v84 = *(v23 + 128) >> (*(v23 + 144) + a12);
          if (v84 <= 1)
          {
            v84 = 1;
          }

          v85 = v84 + 7;
          if (v85 < 0x10)
          {
            v86 = 0;
          }

          else
          {
            v86 = 32 - __clz(~(-1 << -__clz((v85 >> 3) - 1)));
          }

          v87 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v87 <= 1)
          {
            v87 = 1;
          }

          v88 = v87 + 3;
          if (v88 < 8)
          {
            v89 = 0;
            if (!v86)
            {
LABEL_107:
              v95 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v89 = 32 - __clz(~(-1 << -__clz((v88 >> 2) - 1)));
            if (!(v89 | v86))
            {
              goto LABEL_107;
            }
          }

          v90 = 0;
          v91 = 0;
          v92 = v86 != 0;
          v93 = v89 != 0;
          v94 = 1;
          do
          {
            --v86;
            if (v92)
            {
              v91 |= (v94 & v48) << v90++;
            }

            else
            {
              v86 = 0;
            }

            --v89;
            if (v93)
            {
              v91 |= (v94 & v25) << v90++;
            }

            else
            {
              v89 = 0;
            }

            v94 *= 2;
            --v90;
            v93 = v89 != 0;
            v92 = v86 != 0;
          }

          while (v89 | v86);
          v95 = 8 * v91;
LABEL_108:
          v96 = (v133 + v83);
          if (v132)
          {
            v97 = v65;
            memcpy(__dst, (v133 + v83), sizeof(__dst));
            v65 = v97;
            v96 = __dst;
          }

          v98 = (v134 + v95);
          v99 = (v135 + ((v62 - v50) << 6));
          if (!(v66 & 1 | (v65 < 8u)) && v138 > 3)
          {
            v51 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99, a11, v96, *v98)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 8, a11, v51, v98[1]);
            v53 = (v99 + v122);
            v54 = v52 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v99 + v122), a11, v52, v98[2]);
            v55 = v54 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v99 + v122 + 128), a11, v54, v98[3]);
            v56 = v55 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 16, a11, v55, v98[4]);
            v57 = v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 24, a11, v56, v98[5]);
            v58 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v53 + 16, a11, v57, v98[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v53 + 24, a11, v57 + v58, v98[7]);
            v50 = v136;
            v23 = v129;
LABEL_49:
            v59 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v129;
          block[5] = v96;
          v147 = v65;
          v148 = v138;
          v143 = v126;
          v144 = v62 - v60;
          block[6] = v98;
          v141 = v99;
          v142 = a11;
          v145 = v125;
          v146 = v64;
          if (v66)
          {
            dispatch_sync(*(*(v129 + 8) + 16552), block);
            v50 = v136;
            v23 = v129;
            goto LABEL_49;
          }

          v100 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 512, v96, *v98)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 512, v100, v98[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 512, v101, v98[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 512, v102, v98[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 512, v103, v98[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 512, v104, v98[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 512, v105, v98[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 512, v105 + v106, v98[7]);
          v107 = v145;
          v50 = v136;
          v23 = v129;
          v59 = v48 + 1;
          if (v145)
          {
            v108 = 0;
            v109 = &v150[32 * v143 + 4 * v144];
            v110 = v146;
            do
            {
              if (v110)
              {
                v111 = 0;
                v112 = &v141->i8[v142 * v108];
                do
                {
                  v112[v111] = v109->i8[v111];
                  ++v111;
                  v110 = v146;
                }

                while (v146 << 6 > v111);
                v107 = v145;
              }

              ++v108;
              v109 += 32;
            }

            while (v108 < v107);
          }

LABEL_50:
          v28 = v48 == v130 >> 3;
          v48 = v59;
        }

        while (!v28);
        v28 = v25++ == v117;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v136 = v15;
  v17 = v16;
  v19 = v18;
  v133 = v20;
  v134 = v21;
  v116 = v22;
  v23 = v12;
  v158 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v137 = v14;
  v118 = v14 + a10 - 1;
  if (*(v23 + 168))
  {
    v24 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v24 = 0;
  }

  v25 = v14 >> 2;
  v26 = v19 - 1;
  v27 = v17 - 1;
  v117 = v118 >> 2;
  v28 = (v24 & 0xD00) == 0 || v24 == 768;
  v29 = v24 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v132 = v31;
  if (*(v23 + 232) == 1)
  {
    v32 = *(v23 + 273);
    v33 = *(v23 + 272);
    v34 = __clz(v26);
    if (1 << v32 >= v17 || v19 >> v33)
    {
      if (!(v17 >> v32) && 1 << v33 < v19)
      {
        if (v17 < 2)
        {
          v37 = 0;
        }

        else
        {
          v37 = __clz(~(-1 << -__clz(v27))) | 0xFFFFFFE0;
        }

        v33 += v32 + v37;
        v32 = -v37;
      }
    }

    else
    {
      v35 = 32 - __clz(~(-1 << -v34));
      v36 = v33 + v32;
      if (v19 < 2)
      {
        v35 = 0;
      }

      v32 = v36 - v35;
      v33 = v35;
    }

    if (v19 < 2)
    {
      if (v33)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v34)) < v33)
    {
LABEL_27:
      v131 = 0;
LABEL_32:
      v127 = v33 - 3;
      v121 = v32 - 2;
      v39 = -1 << *(*(v23 + 208) + 48);
      v115 = (((~v39 + v19) & v39) + ~(-1 << v33)) >> v33;
      goto LABEL_33;
    }

    if (v17 < 2)
    {
      v38 = 0;
    }

    else
    {
      v38 = 32 - __clz(~(-1 << -__clz(v27)));
    }

    v131 = v38 >= v32;
    goto LABEL_32;
  }

  v131 = 0;
  v115 = 0;
  v121 = 0;
  v127 = 0;
LABEL_33:
  if (v25 <= v117)
  {
    v130 = v136 + a9 - 1;
    if (v136 >> 3 <= v130 >> 3)
    {
      v139 = v26 >> 3;
      v123 = v26 & 7;
      v128 = (v26 & 7) + 1;
      v113 = v27 & 3;
      v114 = v27 >> 2;
      v122 = 2 * a11;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v41 = vcgt_u32(v40, 0xF00000007);
      v120 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v40, 0xFFFFFFFDFFFFFFFELL), -1))))))), v41);
      v119 = v41;
      v129 = v23;
      do
      {
        v42 = (4 * v25) | 3;
        if (4 * v25 <= v137)
        {
          v43 = v137;
        }

        else
        {
          v43 = 4 * v25;
        }

        if (v118 < v42)
        {
          v42 = v118;
        }

        v126 = v43 - 4 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v113;
        v125 = v45;
        v47 = v45 != 4;
        v48 = v136 >> 3;
        v49 = v113 + 1;
        if (v25 != v114)
        {
          v49 = 4;
        }

        v138 = v49;
        if (v25 != v114)
        {
          v46 = v47;
        }

        v124 = v46;
        v135 = v116 + (v43 - v137) * a11;
        v50 = v136;
        do
        {
          v60 = 8 * v48;
          v61 = 8 * (v48 + 1) - 1;
          if (8 * v48 <= v50)
          {
            v62 = v50;
          }

          else
          {
            v62 = 8 * v48;
          }

          if (v130 < v61)
          {
            v61 = v136 + a9 - 1;
          }

          v63 = v61 - v62;
          v64 = v63 + 1;
          if (v48 == v139)
          {
            v65 = v128;
          }

          else
          {
            v65 = 8;
          }

          v66 = 1;
          if (4 * v25 >= v137 && v60 >= v50)
          {
            v67 = v63 != v123;
            if (v48 != v139)
            {
              v67 = v64 != 8;
            }

            v66 = v67 || v124;
          }

          if (v131)
          {
            if (v127 | v121)
            {
              v68 = 0;
              v69 = 0;
              v70 = v127 != 0;
              v71 = 1;
              v73 = v121 != 0;
              v72 = v121;
              v74 = v127;
              do
              {
                --v72;
                if (v73)
                {
                  v69 |= (v25 & ~(-1 << v121) & v71) << v68++;
                }

                else
                {
                  v72 = 0;
                }

                --v74;
                if (v70)
                {
                  v69 |= (v48 & ~(-1 << v127) & v71) << v68++;
                }

                else
                {
                  v74 = 0;
                }

                v71 *= 2;
                --v68;
                v70 = v74 != 0;
                v73 = v72 != 0;
              }

              while (v74 | v72);
              v75 = v69 << 11;
            }

            else
            {
              v75 = 0;
            }

            v83 = v75 + *(v23 + 336) * ((v48 >> v127) + (v25 >> v121) * v115);
          }

          else if (v120)
          {
            v76 = 0;
            v77 = 0;
            v78 = 1;
            v80 = v119.i8[0];
            v79 = v119.i8[4];
            v81 = v120.i32[0];
            v82 = v120.i32[1];
            do
            {
              --v81;
              if (v80)
              {
                v77 |= (v78 & v25) << v76++;
              }

              else
              {
                v81 = 0;
              }

              --v82;
              if (v79)
              {
                v77 |= (v78 & v48) << v76++;
              }

              else
              {
                v82 = 0;
              }

              v78 *= 2;
              --v76;
              v79 = v82 != 0;
              v80 = v81 != 0;
            }

            while (v82 | v81);
            v83 = v77 << 11;
          }

          else
          {
            v83 = 0;
          }

          v84 = *(v23 + 128) >> (*(v23 + 144) + a12);
          if (v84 <= 1)
          {
            v84 = 1;
          }

          v85 = v84 + 7;
          if (v85 < 0x10)
          {
            v86 = 0;
          }

          else
          {
            v86 = 32 - __clz(~(-1 << -__clz((v85 >> 3) - 1)));
          }

          v87 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v87 <= 1)
          {
            v87 = 1;
          }

          v88 = v87 + 3;
          if (v88 < 8)
          {
            v89 = 0;
            if (!v86)
            {
LABEL_107:
              v95 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v89 = 32 - __clz(~(-1 << -__clz((v88 >> 2) - 1)));
            if (!(v89 | v86))
            {
              goto LABEL_107;
            }
          }

          v90 = 0;
          v91 = 0;
          v92 = v86 != 0;
          v93 = v89 != 0;
          v94 = 1;
          do
          {
            --v86;
            if (v92)
            {
              v91 |= (v94 & v48) << v90++;
            }

            else
            {
              v86 = 0;
            }

            --v89;
            if (v93)
            {
              v91 |= (v94 & v25) << v90++;
            }

            else
            {
              v89 = 0;
            }

            v94 *= 2;
            --v90;
            v93 = v89 != 0;
            v92 = v86 != 0;
          }

          while (v89 | v86);
          v95 = 8 * v91;
LABEL_108:
          v96 = (v133 + v83);
          if (v132)
          {
            v97 = v65;
            memcpy(__dst, (v133 + v83), sizeof(__dst));
            v65 = v97;
            v96 = __dst;
          }

          v98 = (v134 + v95);
          v99 = (v135 + ((v62 - v50) << 6));
          if (!(v66 & 1 | (v65 < 8u)) && v138 > 3)
          {
            v51 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99, a11, v96, *v98)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 8, a11, v51, v98[1]);
            v53 = (v99 + v122);
            v54 = v52 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v99 + v122), a11, v52, v98[2]);
            v55 = v54 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v99 + v122 + 128), a11, v54, v98[3]);
            v56 = v55 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 16, a11, v55, v98[4]);
            v57 = v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 24, a11, v56, v98[5]);
            v58 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v53 + 16, a11, v57, v98[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v53 + 24, a11, v57 + v58, v98[7]);
            v50 = v136;
            v23 = v129;
LABEL_49:
            v59 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v129;
          block[5] = v96;
          v147 = v65;
          v148 = v138;
          v143 = v126;
          v144 = v62 - v60;
          block[6] = v98;
          v141 = v99;
          v142 = a11;
          v145 = v125;
          v146 = v64;
          if (v66)
          {
            dispatch_sync(*(*(v129 + 8) + 16552), block);
            v50 = v136;
            v23 = v129;
            goto LABEL_49;
          }

          v100 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 512, v96, *v98)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 512, v100, v98[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 512, v101, v98[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 512, v102, v98[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 512, v103, v98[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 512, v104, v98[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 512, v105, v98[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 512, v105 + v106, v98[7]);
          v107 = v145;
          v50 = v136;
          v23 = v129;
          v59 = v48 + 1;
          if (v145)
          {
            v108 = 0;
            v109 = &v150[32 * v143 + 4 * v144];
            v110 = v146;
            do
            {
              if (v110)
              {
                v111 = 0;
                v112 = &v141->i8[v142 * v108];
                do
                {
                  v112[v111] = v109->i8[v111];
                  ++v111;
                  v110 = v146;
                }

                while (v146 << 6 > v111);
                v107 = v145;
              }

              ++v108;
              v109 += 32;
            }

            while (v108 < v107);
          }

LABEL_50:
          v28 = v48 == v130 >> 3;
          v48 = v59;
        }

        while (!v28);
        v28 = v25++ == v117;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v140 = v15;
  v17 = v16;
  v19 = v18;
  v135 = v20;
  v136 = v21;
  v122 = v22;
  v23 = v12;
  v161 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v139 = v14;
  v24 = v14 >> 2;
  v121 = v14 + a10 - 1;
  v123 = v121 >> 2;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
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
  v134 = v31;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  if (v24 <= v123)
  {
    v132 = v140 + a9 - 1;
    if (v140 >> 3 <= v132 >> 3)
    {
      v32 = a11;
      v142 = (v19 - 1) >> 3;
      v118 = v19 - 1;
      v125 = (v19 - 1) & 7;
      v119 = (v17 - 1) & 3;
      v120 = (v17 - 1) >> 2;
      v124 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v34 = vcgt_u32(v33, 0xF00000007);
      v130 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFDFFFFFFFELL), -1))))))), v34);
      v129 = v34;
      v117 = 8 * v26 * v25;
      v131 = v23;
      do
      {
        v35 = (4 * v24) | 3;
        if (4 * v24 <= v139)
        {
          v36 = v139;
        }

        else
        {
          v36 = 4 * v24;
        }

        if (v121 < v35)
        {
          v35 = v121;
        }

        v138 = 4 * v24;
        v128 = v36 - 4 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v119;
        v127 = v38;
        v40 = v38 != 4;
        v41 = v140 >> 3;
        v42 = v119 + 1;
        if (v24 != v120)
        {
          v42 = 4;
        }

        v141 = v42;
        if (v24 != v120)
        {
          v39 = v40;
        }

        v126 = v39;
        v137 = v122 + (v36 - v139) * v32;
        v43 = v140;
        do
        {
          v53 = 8 * v41;
          v54 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v43)
          {
            v55 = v43;
          }

          else
          {
            v55 = 8 * v41;
          }

          if (v132 < v54)
          {
            v54 = v140 + a9 - 1;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v41 == v142)
          {
            v58 = v125 + 1;
          }

          else
          {
            v58 = 8;
          }

          v59 = 1;
          if (v138 >= v139 && v53 >= v43)
          {
            v60 = v56 != v125;
            if (v41 != v142)
            {
              v60 = v57 != 8;
            }

            v59 = v60 || v126;
          }

          if (isLevelTiled)
          {
            v81 = 0;
            v82 = v117 >> (*(v23 + 57) != 0);
            v83 = 1;
            if (v82 <= 63)
            {
              if (v82 > 15)
              {
                if (v82 == 16)
                {
                  v83 = 0;
                  v84 = 64;
                  v81 = 128;
                }

                else
                {
                  v84 = 0;
                  if (v82 == 32)
                  {
                    v83 = 0;
                    v81 = 64;
                    v84 = 64;
                  }
                }
              }

              else if (v82 == 4)
              {
                v83 = 0;
                v84 = 128;
                v81 = 256;
              }

              else
              {
                v84 = 0;
                if (v82 == 8)
                {
                  v83 = 0;
                  v81 = 128;
                  v84 = 128;
                }
              }
            }

            else if (v82 <= 255)
            {
              if (v82 == 64)
              {
                v83 = 0;
                v84 = 32;
                v81 = 64;
              }

              else
              {
                v84 = 0;
                if (v82 == 128)
                {
                  v83 = 0;
                  v81 = 32;
                  v84 = 32;
                }
              }
            }

            else if (v82 == 256)
            {
              v83 = 0;
              v84 = 16;
              v81 = 32;
            }

            else if (v82 == 512)
            {
              v83 = 0;
              v81 = 16;
              v84 = 16;
            }

            else
            {
              v84 = 0;
              if (v82 == 1024)
              {
                v83 = 0;
                v84 = 8;
                v81 = 16;
              }
            }

            v105 = (v81 >> 3) - 1;
            v106 = (v84 >> 2) - 1;
            if ((v83 & 1) != 0 || (v107 = 32 - __clz(~(-1 << -__clz(v105))), v108 = 32 - __clz(~(-1 << -__clz(v106))), !(v108 | v107)))
            {
              v116 = 0;
            }

            else
            {
              v109 = 0;
              v110 = 0;
              v111 = v41 & v105;
              v112 = v24 & v106;
              v113 = v108 != 0;
              v114 = v107 != 0;
              v115 = 1;
              do
              {
                --v108;
                if (v113)
                {
                  v110 |= (v115 & v112) << v109++;
                }

                else
                {
                  v108 = 0;
                }

                --v107;
                if (v114)
                {
                  v110 |= (v115 & v111) << v109++;
                }

                else
                {
                  v107 = 0;
                }

                v115 *= 2;
                --v109;
                v114 = v107 != 0;
                v113 = v108 != 0;
              }

              while (v107 | v108);
              v116 = v110 << 11;
            }

            v68 = v116 + ((v53 / v81 + v138 / v84 * ((v81 + v118) / v81)) << 14);
          }

          else if (v130)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v129.i8[0];
            v64 = v129.i8[4];
            v66 = v130.i32[0];
            v67 = v130.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v24) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v41) << v61++;
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
            v68 = v62 << 11;
          }

          else
          {
            v68 = 0;
          }

          v69 = *(v23 + 128) >> (*(v23 + 144) + a12);
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

          v72 = *(v23 + 132) >> (*(v23 + 144) + a12);
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
LABEL_81:
              v80 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 2) - 1)));
            if (!(v74 | v71))
            {
              goto LABEL_81;
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
              v76 |= (v79 & v41) << v75++;
            }

            else
            {
              v71 = 0;
            }

            --v74;
            if (v78)
            {
              v76 |= (v79 & v24) << v75++;
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
LABEL_82:
          v85 = (v135 + v68);
          if (v134)
          {
            v86 = v57;
            v87 = v32;
            v88 = v58;
            v89 = v59;
            memcpy(__dst, (v135 + v68), sizeof(__dst));
            v59 = v89;
            v58 = v88;
            v32 = v87;
            v53 = 8 * v41;
            v57 = v86;
            v85 = __dst;
          }

          v90 = (v136 + v80);
          v91 = (v137 + ((v55 - v43) << 6));
          if (!(v59 & 1 | (v58 < 8u)) && v141 > 3)
          {
            v44 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v137 + ((v55 - v43) << 6)), v32, v85, *v90)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 8, v32, v44, v90[1]);
            v46 = (v91 + v124);
            v47 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v124), v32, v45, v90[2]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v124 + 128), v32, v47, v90[3]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 16, v32, v48, v90[4]);
            v50 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 24, v32, v49, v90[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v46 + 16, v32, v50, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v46 + 24, v32, v50 + v51, v90[7]);
            v43 = v140;
            v23 = v131;
LABEL_29:
            v52 = v41 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v131;
          block[5] = v85;
          v150 = v58;
          v151 = v141;
          v146 = v128;
          v147 = v55 - v53;
          block[6] = v90;
          v144 = v137 + ((v55 - v43) << 6);
          v145 = v32;
          v148 = v127;
          v149 = v57;
          if (v59)
          {
            dispatch_sync(*(*(v131 + 8) + 16552), block);
            v43 = v140;
            v23 = v131;
            goto LABEL_29;
          }

          v92 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 512, v85, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 512, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 512, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 512, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 512, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 512, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 512, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 512, v97 + v98, v90[7]);
          v99 = v148;
          v43 = v140;
          v23 = v131;
          v52 = v41 + 1;
          if (v148)
          {
            v100 = 0;
            v101 = &v153[32 * v146 + 4 * v147];
            v102 = v149;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = v144 + v145 * v100;
                do
                {
                  *(v104 + v103) = v101->i8[v103];
                  ++v103;
                  v102 = v149;
                }

                while (v149 << 6 > v103);
                v99 = v148;
              }

              ++v100;
              v101 += 32;
            }

            while (v100 < v99);
          }

LABEL_30:
          v28 = v41 == v132 >> 3;
          v41 = v52;
        }

        while (!v28);
        v28 = v24++ == v123;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v140 = v15;
  v17 = v16;
  v19 = v18;
  v135 = v20;
  v136 = v21;
  v122 = v22;
  v23 = v12;
  v161 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v139 = v14;
  v24 = v14 >> 2;
  v121 = v14 + a10 - 1;
  v123 = v121 >> 2;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
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
  v134 = v31;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  if (v24 <= v123)
  {
    v132 = v140 + a9 - 1;
    if (v140 >> 3 <= v132 >> 3)
    {
      v32 = a11;
      v142 = (v19 - 1) >> 3;
      v118 = v19 - 1;
      v125 = (v19 - 1) & 7;
      v119 = (v17 - 1) & 3;
      v120 = (v17 - 1) >> 2;
      v124 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v34 = vcgt_u32(v33, 0xF00000007);
      v130 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFDFFFFFFFELL), -1))))))), v34);
      v129 = v34;
      v117 = 8 * v26 * v25;
      v131 = v23;
      do
      {
        v35 = (4 * v24) | 3;
        if (4 * v24 <= v139)
        {
          v36 = v139;
        }

        else
        {
          v36 = 4 * v24;
        }

        if (v121 < v35)
        {
          v35 = v121;
        }

        v138 = 4 * v24;
        v128 = v36 - 4 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v119;
        v127 = v38;
        v40 = v38 != 4;
        v41 = v140 >> 3;
        v42 = v119 + 1;
        if (v24 != v120)
        {
          v42 = 4;
        }

        v141 = v42;
        if (v24 != v120)
        {
          v39 = v40;
        }

        v126 = v39;
        v137 = v122 + (v36 - v139) * v32;
        v43 = v140;
        do
        {
          v53 = 8 * v41;
          v54 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v43)
          {
            v55 = v43;
          }

          else
          {
            v55 = 8 * v41;
          }

          if (v132 < v54)
          {
            v54 = v140 + a9 - 1;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v41 == v142)
          {
            v58 = v125 + 1;
          }

          else
          {
            v58 = 8;
          }

          v59 = 1;
          if (v138 >= v139 && v53 >= v43)
          {
            v60 = v56 != v125;
            if (v41 != v142)
            {
              v60 = v57 != 8;
            }

            v59 = v60 || v126;
          }

          if (isLevelTiled)
          {
            v81 = 0;
            v82 = v117 >> (*(v23 + 57) != 0);
            v83 = 1;
            if (v82 <= 63)
            {
              if (v82 > 15)
              {
                if (v82 == 16)
                {
                  v83 = 0;
                  v84 = 64;
                  v81 = 128;
                }

                else
                {
                  v84 = 0;
                  if (v82 == 32)
                  {
                    v83 = 0;
                    v81 = 64;
                    v84 = 64;
                  }
                }
              }

              else if (v82 == 4)
              {
                v83 = 0;
                v84 = 128;
                v81 = 256;
              }

              else
              {
                v84 = 0;
                if (v82 == 8)
                {
                  v83 = 0;
                  v81 = 128;
                  v84 = 128;
                }
              }
            }

            else if (v82 <= 255)
            {
              if (v82 == 64)
              {
                v83 = 0;
                v84 = 32;
                v81 = 64;
              }

              else
              {
                v84 = 0;
                if (v82 == 128)
                {
                  v83 = 0;
                  v81 = 32;
                  v84 = 32;
                }
              }
            }

            else if (v82 == 256)
            {
              v83 = 0;
              v84 = 16;
              v81 = 32;
            }

            else if (v82 == 512)
            {
              v83 = 0;
              v81 = 16;
              v84 = 16;
            }

            else
            {
              v84 = 0;
              if (v82 == 1024)
              {
                v83 = 0;
                v84 = 8;
                v81 = 16;
              }
            }

            v105 = (v81 >> 3) - 1;
            v106 = (v84 >> 2) - 1;
            if ((v83 & 1) != 0 || (v107 = 32 - __clz(~(-1 << -__clz(v105))), v108 = 32 - __clz(~(-1 << -__clz(v106))), !(v108 | v107)))
            {
              v116 = 0;
            }

            else
            {
              v109 = 0;
              v110 = 0;
              v111 = v41 & v105;
              v112 = v24 & v106;
              v113 = v108 != 0;
              v114 = v107 != 0;
              v115 = 1;
              do
              {
                --v108;
                if (v113)
                {
                  v110 |= (v115 & v112) << v109++;
                }

                else
                {
                  v108 = 0;
                }

                --v107;
                if (v114)
                {
                  v110 |= (v115 & v111) << v109++;
                }

                else
                {
                  v107 = 0;
                }

                v115 *= 2;
                --v109;
                v114 = v107 != 0;
                v113 = v108 != 0;
              }

              while (v107 | v108);
              v116 = v110 << 11;
            }

            v68 = v116 + ((v53 / v81 + v138 / v84 * ((v81 + v118) / v81)) << 14);
          }

          else if (v130)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v129.i8[0];
            v64 = v129.i8[4];
            v66 = v130.i32[0];
            v67 = v130.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v24) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v41) << v61++;
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
            v68 = v62 << 11;
          }

          else
          {
            v68 = 0;
          }

          v69 = *(v23 + 128) >> (*(v23 + 144) + a12);
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

          v72 = *(v23 + 132) >> (*(v23 + 144) + a12);
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
LABEL_81:
              v80 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 2) - 1)));
            if (!(v74 | v71))
            {
              goto LABEL_81;
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
              v76 |= (v79 & v41) << v75++;
            }

            else
            {
              v71 = 0;
            }

            --v74;
            if (v78)
            {
              v76 |= (v79 & v24) << v75++;
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
LABEL_82:
          v85 = (v135 + v68);
          if (v134)
          {
            v86 = v57;
            v87 = v32;
            v88 = v58;
            v89 = v59;
            memcpy(__dst, (v135 + v68), sizeof(__dst));
            v59 = v89;
            v58 = v88;
            v32 = v87;
            v53 = 8 * v41;
            v57 = v86;
            v85 = __dst;
          }

          v90 = (v136 + v80);
          v91 = (v137 + ((v55 - v43) << 6));
          if (!(v59 & 1 | (v58 < 8u)) && v141 > 3)
          {
            v44 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v137 + ((v55 - v43) << 6)), v32, v85, *v90)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 8, v32, v44, v90[1]);
            v46 = (v91 + v124);
            v47 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v124), v32, v45, v90[2]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v124 + 128), v32, v47, v90[3]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 16, v32, v48, v90[4]);
            v50 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 24, v32, v49, v90[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v46 + 16, v32, v50, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v46 + 24, v32, v50 + v51, v90[7]);
            v43 = v140;
            v23 = v131;
LABEL_29:
            v52 = v41 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v131;
          block[5] = v85;
          v150 = v58;
          v151 = v141;
          v146 = v128;
          v147 = v55 - v53;
          block[6] = v90;
          v144 = v137 + ((v55 - v43) << 6);
          v145 = v32;
          v148 = v127;
          v149 = v57;
          if (v59)
          {
            dispatch_sync(*(*(v131 + 8) + 16552), block);
            v43 = v140;
            v23 = v131;
            goto LABEL_29;
          }

          v92 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 512, v85, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 512, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 512, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 512, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 512, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 512, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 512, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 512, v97 + v98, v90[7]);
          v99 = v148;
          v43 = v140;
          v23 = v131;
          v52 = v41 + 1;
          if (v148)
          {
            v100 = 0;
            v101 = &v153[32 * v146 + 4 * v147];
            v102 = v149;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = v144 + v145 * v100;
                do
                {
                  *(v104 + v103) = v101->i8[v103];
                  ++v103;
                  v102 = v149;
                }

                while (v149 << 6 > v103);
                v99 = v148;
              }

              ++v100;
              v101 += 32;
            }

            while (v100 < v99);
          }

LABEL_30:
          v28 = v41 == v132 >> 3;
          v41 = v52;
        }

        while (!v28);
        v28 = v24++ == v123;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v150 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v129 = a8;
  v110 = a8 + a10 - 1;
  if (*(v15 + 168))
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
  v109 = v110 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v124 = v23;
  if (*(v15 + 232) == 1)
  {
    v24 = *(v15 + 273);
    v25 = *(v15 + 272);
    v26 = __clz(v18);
    if (1 << v24 >= a6 || a5 >> v25)
    {
      if (!(a6 >> v24) && 1 << v25 < a5)
      {
        if (a6 < 2)
        {
          v29 = 0;
        }

        else
        {
          v29 = __clz(~(-1 << -__clz(v19))) | 0xFFFFFFE0;
        }

        v25 += v24 + v29;
        v24 = -v29;
      }
    }

    else
    {
      v27 = 32 - __clz(~(-1 << -v26));
      v28 = v25 + v24;
      if (a5 < 2)
      {
        v27 = 0;
      }

      v24 = v28 - v27;
      v25 = v27;
    }

    if (a5 < 2)
    {
      if (v25)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v26)) < v25)
    {
LABEL_27:
      v123 = 0;
LABEL_32:
      v119 = v25 - 3;
      v113 = v24 - 2;
      v31 = -1 << *(*(v15 + 208) + 48);
      v107 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v30 = 0;
    }

    else
    {
      v30 = 32 - __clz(~(-1 << -__clz(v19)));
    }

    v123 = v30 >= v24;
    goto LABEL_32;
  }

  v123 = 0;
  v107 = 0;
  v113 = 0;
  v119 = 0;
LABEL_33:
  if (v17 <= v109)
  {
    v122 = a7 + a9 - 1;
    if (a7 >> 3 <= v122 >> 3)
    {
      v131 = v18 >> 3;
      v115 = v18 & 7;
      v120 = (v18 & 7) + 1;
      v105 = v19 & 3;
      v106 = v19 >> 2;
      v114 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v33 = vcgt_u32(v32, 0xF00000007);
      v112 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v32, 0xFFFFFFFDFFFFFFFELL), -1))))))), v33);
      v111 = v33;
      v121 = v15;
      do
      {
        v34 = (4 * v17) | 3;
        if (4 * v17 <= v129)
        {
          v35 = v129;
        }

        else
        {
          v35 = 4 * v17;
        }

        if (v110 < v34)
        {
          v34 = v110;
        }

        v118 = v35 - 4 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v105;
        v117 = v37;
        v39 = v37 != 4;
        v40 = a7 >> 3;
        v41 = v105 + 1;
        if (v17 != v106)
        {
          v41 = 4;
        }

        v130 = v41;
        if (v17 != v106)
        {
          v38 = v39;
        }

        v116 = v38;
        v127 = a2 + (v35 - v129) * a11;
        v42 = a7;
        do
        {
          v52 = 8 * v40;
          v53 = 8 * (v40 + 1) - 1;
          if (8 * v40 <= v42)
          {
            v54 = v42;
          }

          else
          {
            v54 = 8 * v40;
          }

          if (v122 < v53)
          {
            v53 = a7 + a9 - 1;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v40 == v131)
          {
            v57 = v120;
          }

          else
          {
            v57 = 8;
          }

          v58 = 1;
          if (4 * v17 >= v129 && v52 >= v42)
          {
            v59 = v55 != v115;
            if (v40 != v131)
            {
              v59 = v56 != 8;
            }

            v58 = v59 || v116;
          }

          if (v123)
          {
            if (v119 | v113)
            {
              v60 = 0;
              v61 = 0;
              v62 = v119 != 0;
              v63 = 1;
              v65 = v113 != 0;
              v64 = v113;
              v66 = v119;
              do
              {
                --v64;
                if (v65)
                {
                  v61 |= (v17 & ~(-1 << v113) & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                --v66;
                if (v62)
                {
                  v61 |= (v40 & ~(-1 << v119) & v63) << v60++;
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

            v75 = v67 + *(v15 + 336) * ((v40 >> v119) + (v17 >> v113) * v107);
          }

          else if (v112)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v111.i8[0];
            v71 = v111.i8[4];
            v73 = v112.i32[0];
            v74 = v112.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v17) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v40) << v68++;
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

          v76 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v79 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
LABEL_107:
              v87 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 2) - 1)));
            if (!(v81 | v78))
            {
              goto LABEL_107;
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
              v83 |= (v86 & v40) << v82++;
            }

            else
            {
              v78 = 0;
            }

            --v81;
            if (v85)
            {
              v83 |= (v86 & v17) << v82++;
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
LABEL_108:
          v88 = (a3 + v75);
          if (v124)
          {
            v89 = v57;
            memcpy(__dst, (a3 + v75), sizeof(__dst));
            v57 = v89;
            v88 = __dst;
          }

          v90 = (a4 + v87);
          v91 = (v127 + 16 * (v54 - v42));
          if (!(v58 & 1 | (v57 < 8u)) && v130 > 3)
          {
            v43 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91, a11, v88, *v90)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 2, a11, v43, v90[1]);
            v45 = (v91 + v114);
            v46 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114), a11, v44, v90[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114 + 32), a11, v46, v90[3]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 4, a11, v47, v90[4]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 6, a11, v48, v90[5]);
            v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 4, a11, v49, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 6, a11, v49 + v50, v90[7]);
            v42 = a7;
            v15 = v121;
LABEL_49:
            v51 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v121;
          block[5] = v88;
          v139 = v57;
          v140 = v130;
          v135 = v118;
          v136 = v54 - v52;
          block[6] = v90;
          v133 = v91;
          v134 = a11;
          v137 = v117;
          v138 = v56;
          if (v58)
          {
            dispatch_sync(*(*(v121 + 8) + 16552), block);
            v42 = a7;
            v15 = v121;
            goto LABEL_49;
          }

          v92 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v142, 128, v88, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v143, 128, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 128, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v97 + v98, v90[7]);
          v99 = v137;
          v42 = a7;
          v15 = v121;
          v51 = v40 + 1;
          if (v137)
          {
            v100 = 0;
            v101 = &v142[8 * v135 + v136];
            v102 = v138;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = &v133->i8[v134 * v100];
                do
                {
                  v104[v103] = v101->i8[v103];
                  ++v103;
                  v102 = v138;
                }

                while (16 * v138 > v103);
                v99 = v137;
              }

              ++v100;
              v101 += 8;
            }

            while (v100 < v99);
          }

LABEL_50:
          v20 = v40 == v122 >> 3;
          v40 = v51;
        }

        while (!v20);
        v20 = v17++ == v109;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v150 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v129 = a8;
  v110 = a8 + a10 - 1;
  if (*(v15 + 168))
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
  v109 = v110 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v124 = v23;
  if (*(v15 + 232) == 1)
  {
    v24 = *(v15 + 273);
    v25 = *(v15 + 272);
    v26 = __clz(v18);
    if (1 << v24 >= a6 || a5 >> v25)
    {
      if (!(a6 >> v24) && 1 << v25 < a5)
      {
        if (a6 < 2)
        {
          v29 = 0;
        }

        else
        {
          v29 = __clz(~(-1 << -__clz(v19))) | 0xFFFFFFE0;
        }

        v25 += v24 + v29;
        v24 = -v29;
      }
    }

    else
    {
      v27 = 32 - __clz(~(-1 << -v26));
      v28 = v25 + v24;
      if (a5 < 2)
      {
        v27 = 0;
      }

      v24 = v28 - v27;
      v25 = v27;
    }

    if (a5 < 2)
    {
      if (v25)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v26)) < v25)
    {
LABEL_27:
      v123 = 0;
LABEL_32:
      v119 = v25 - 3;
      v113 = v24 - 2;
      v31 = -1 << *(*(v15 + 208) + 48);
      v107 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v30 = 0;
    }

    else
    {
      v30 = 32 - __clz(~(-1 << -__clz(v19)));
    }

    v123 = v30 >= v24;
    goto LABEL_32;
  }

  v123 = 0;
  v107 = 0;
  v113 = 0;
  v119 = 0;
LABEL_33:
  if (v17 <= v109)
  {
    v122 = a7 + a9 - 1;
    if (a7 >> 3 <= v122 >> 3)
    {
      v131 = v18 >> 3;
      v115 = v18 & 7;
      v120 = (v18 & 7) + 1;
      v105 = v19 & 3;
      v106 = v19 >> 2;
      v114 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v33 = vcgt_u32(v32, 0xF00000007);
      v112 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v32, 0xFFFFFFFDFFFFFFFELL), -1))))))), v33);
      v111 = v33;
      v121 = v15;
      do
      {
        v34 = (4 * v17) | 3;
        if (4 * v17 <= v129)
        {
          v35 = v129;
        }

        else
        {
          v35 = 4 * v17;
        }

        if (v110 < v34)
        {
          v34 = v110;
        }

        v118 = v35 - 4 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v105;
        v117 = v37;
        v39 = v37 != 4;
        v40 = a7 >> 3;
        v41 = v105 + 1;
        if (v17 != v106)
        {
          v41 = 4;
        }

        v130 = v41;
        if (v17 != v106)
        {
          v38 = v39;
        }

        v116 = v38;
        v127 = a2 + (v35 - v129) * a11;
        v42 = a7;
        do
        {
          v52 = 8 * v40;
          v53 = 8 * (v40 + 1) - 1;
          if (8 * v40 <= v42)
          {
            v54 = v42;
          }

          else
          {
            v54 = 8 * v40;
          }

          if (v122 < v53)
          {
            v53 = a7 + a9 - 1;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v40 == v131)
          {
            v57 = v120;
          }

          else
          {
            v57 = 8;
          }

          v58 = 1;
          if (4 * v17 >= v129 && v52 >= v42)
          {
            v59 = v55 != v115;
            if (v40 != v131)
            {
              v59 = v56 != 8;
            }

            v58 = v59 || v116;
          }

          if (v123)
          {
            if (v119 | v113)
            {
              v60 = 0;
              v61 = 0;
              v62 = v119 != 0;
              v63 = 1;
              v65 = v113 != 0;
              v64 = v113;
              v66 = v119;
              do
              {
                --v64;
                if (v65)
                {
                  v61 |= (v17 & ~(-1 << v113) & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                --v66;
                if (v62)
                {
                  v61 |= (v40 & ~(-1 << v119) & v63) << v60++;
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

            v75 = v67 + *(v15 + 336) * ((v40 >> v119) + (v17 >> v113) * v107);
          }

          else if (v112)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v111.i8[0];
            v71 = v111.i8[4];
            v73 = v112.i32[0];
            v74 = v112.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v17) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v40) << v68++;
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

          v76 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v79 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
LABEL_107:
              v87 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 2) - 1)));
            if (!(v81 | v78))
            {
              goto LABEL_107;
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
              v83 |= (v86 & v40) << v82++;
            }

            else
            {
              v78 = 0;
            }

            --v81;
            if (v85)
            {
              v83 |= (v86 & v17) << v82++;
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
LABEL_108:
          v88 = (a3 + v75);
          if (v124)
          {
            v89 = v57;
            memcpy(__dst, (a3 + v75), sizeof(__dst));
            v57 = v89;
            v88 = __dst;
          }

          v90 = (a4 + v87);
          v91 = (v127 + 16 * (v54 - v42));
          if (!(v58 & 1 | (v57 < 8u)) && v130 > 3)
          {
            v43 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91, a11, v88, *v90)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 2, a11, v43, v90[1]);
            v45 = (v91 + v114);
            v46 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114), a11, v44, v90[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114 + 32), a11, v46, v90[3]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 4, a11, v47, v90[4]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 6, a11, v48, v90[5]);
            v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 4, a11, v49, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 6, a11, v49 + v50, v90[7]);
            v42 = a7;
            v15 = v121;
LABEL_49:
            v51 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v121;
          block[5] = v88;
          v139 = v57;
          v140 = v130;
          v135 = v118;
          v136 = v54 - v52;
          block[6] = v90;
          v133 = v91;
          v134 = a11;
          v137 = v117;
          v138 = v56;
          if (v58)
          {
            dispatch_sync(*(*(v121 + 8) + 16552), block);
            v42 = a7;
            v15 = v121;
            goto LABEL_49;
          }

          v92 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v142, 128, v88, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v143, 128, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 128, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v97 + v98, v90[7]);
          v99 = v137;
          v42 = a7;
          v15 = v121;
          v51 = v40 + 1;
          if (v137)
          {
            v100 = 0;
            v101 = &v142[8 * v135 + v136];
            v102 = v138;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = &v133->i8[v134 * v100];
                do
                {
                  v104[v103] = v101->i8[v103];
                  ++v103;
                  v102 = v138;
                }

                while (16 * v138 > v103);
                v99 = v137;
              }

              ++v100;
              v101 += 8;
            }

            while (v100 < v99);
          }

LABEL_50:
          v20 = v40 == v122 >> 3;
          v40 = v51;
        }

        while (!v20);
        v20 = v17++ == v109;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v153 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v131 = a8;
  v16 = a8 >> 2;
  v113 = a8 + a10 - 1;
  v115 = v113 >> 2;
  v17 = *(*(v15 + 208) + 88);
  v18 = *(v15 + 112);
  if (*(v15 + 168))
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
  v126 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v115)
  {
    v124 = a7 + a9 - 1;
    if (a7 >> 3 <= v124 >> 3)
    {
      v24 = a11;
      v134 = (a5 - 1) >> 3;
      v110 = a5 - 1;
      v117 = (a5 - 1) & 7;
      v111 = (a6 - 1) & 3;
      v112 = (a6 - 1) >> 2;
      v116 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v26 = vcgt_u32(v25, 0xF00000007);
      v122 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), v26);
      v121 = v26;
      v109 = 8 * v18 * v17;
      v123 = v15;
      do
      {
        v27 = (4 * v16) | 3;
        if (4 * v16 <= v131)
        {
          v28 = v131;
        }

        else
        {
          v28 = 4 * v16;
        }

        if (v113 < v27)
        {
          v27 = v113;
        }

        v130 = 4 * v16;
        v120 = v28 - 4 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v111;
        v119 = v30;
        v32 = v30 != 4;
        v33 = a7 >> 3;
        v34 = v111 + 1;
        if (v16 != v112)
        {
          v34 = 4;
        }

        v133 = v34;
        if (v16 != v112)
        {
          v31 = v32;
        }

        v118 = v31;
        v129 = a2 + (v28 - v131) * v24;
        v35 = a7;
        do
        {
          v45 = 8 * v33;
          v46 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v47 = v35;
          }

          else
          {
            v47 = 8 * v33;
          }

          if (v124 < v46)
          {
            v46 = a7 + a9 - 1;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v33 == v134)
          {
            v50 = v117 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v130 >= v131 && v45 >= v35)
          {
            v52 = v48 != v117;
            if (v33 != v134)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v118;
          }

          if (isLevelTiled)
          {
            v73 = 0;
            v74 = v109 >> (*(v15 + 57) != 0);
            v75 = 1;
            if (v74 <= 63)
            {
              if (v74 > 15)
              {
                if (v74 == 16)
                {
                  v75 = 0;
                  v76 = 64;
                  v73 = 128;
                }

                else
                {
                  v76 = 0;
                  if (v74 == 32)
                  {
                    v75 = 0;
                    v73 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v74 == 4)
              {
                v75 = 0;
                v76 = 128;
                v73 = 256;
              }

              else
              {
                v76 = 0;
                if (v74 == 8)
                {
                  v75 = 0;
                  v73 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v74 <= 255)
            {
              if (v74 == 64)
              {
                v75 = 0;
                v76 = 32;
                v73 = 64;
              }

              else
              {
                v76 = 0;
                if (v74 == 128)
                {
                  v75 = 0;
                  v73 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v74 == 256)
            {
              v75 = 0;
              v76 = 16;
              v73 = 32;
            }

            else if (v74 == 512)
            {
              v75 = 0;
              v73 = 16;
              v76 = 16;
            }

            else
            {
              v76 = 0;
              if (v74 == 1024)
              {
                v75 = 0;
                v76 = 8;
                v73 = 16;
              }
            }

            v97 = (v73 >> 3) - 1;
            v98 = (v76 >> 2) - 1;
            if ((v75 & 1) != 0 || (v99 = 32 - __clz(~(-1 << -__clz(v97))), v100 = 32 - __clz(~(-1 << -__clz(v98))), !(v100 | v99)))
            {
              v108 = 0;
            }

            else
            {
              v101 = 0;
              v102 = 0;
              v103 = v33 & v97;
              v104 = v16 & v98;
              v105 = v100 != 0;
              v106 = v99 != 0;
              v107 = 1;
              do
              {
                --v100;
                if (v105)
                {
                  v102 |= (v107 & v104) << v101++;
                }

                else
                {
                  v100 = 0;
                }

                --v99;
                if (v106)
                {
                  v102 |= (v107 & v103) << v101++;
                }

                else
                {
                  v99 = 0;
                }

                v107 *= 2;
                --v101;
                v106 = v99 != 0;
                v105 = v100 != 0;
              }

              while (v99 | v100);
              v108 = v102 << 9;
            }

            v60 = v108 + ((v45 / v73 + v130 / v76 * ((v73 + v110) / v73)) << 14);
          }

          else if (v122)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v57 = v121.i8[0];
            v56 = v121.i8[4];
            v58 = v122.i32[0];
            v59 = v122.i32[1];
            do
            {
              --v58;
              if (v57)
              {
                v54 |= (v55 & v16) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v56)
              {
                v54 |= (v55 & v33) << v53++;
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
            v60 = v54 << 9;
          }

          else
          {
            v60 = 0;
          }

          v61 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v64 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
            if (!v63)
            {
LABEL_81:
              v72 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
            if (!(v66 | v63))
            {
              goto LABEL_81;
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
              v68 |= (v71 & v33) << v67++;
            }

            else
            {
              v63 = 0;
            }

            --v66;
            if (v70)
            {
              v68 |= (v71 & v16) << v67++;
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
LABEL_82:
          v77 = (a3 + v60);
          if (v126)
          {
            v78 = v49;
            v79 = v24;
            v80 = v50;
            v81 = v51;
            memcpy(__dst, (a3 + v60), sizeof(__dst));
            v51 = v81;
            v50 = v80;
            v24 = v79;
            v45 = 8 * v33;
            v49 = v78;
            v77 = __dst;
          }

          v82 = (a4 + v72);
          v83 = (v129 + 16 * (v47 - v35));
          if (!(v51 & 1 | (v50 < 8u)) && v133 > 3)
          {
            v36 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v129 + 16 * (v47 - v35)), v24, v77, *v82)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 2, v24, v36, v82[1]);
            v38 = (v83 + v116);
            v39 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116), v24, v37, v82[2]);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116 + 32), v24, v39, v82[3]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 4, v24, v40, v82[4]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 6, v24, v41, v82[5]);
            v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 4, v24, v42, v82[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 6, v24, v42 + v43, v82[7]);
            v35 = a7;
            v15 = v123;
LABEL_29:
            v44 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v123;
          block[5] = v77;
          v142 = v50;
          v143 = v133;
          v138 = v120;
          v139 = v47 - v45;
          block[6] = v82;
          v136 = v129 + 16 * (v47 - v35);
          v137 = v24;
          v140 = v119;
          v141 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v123 + 8) + 16552), block);
            v35 = a7;
            v15 = v123;
            goto LABEL_29;
          }

          v84 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v77, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v84, v82[1]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v85, v82[2]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v86, v82[3]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v87, v82[4]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v88, v82[5]);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v89, v82[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 128, v89 + v90, v82[7]);
          v91 = v140;
          v35 = a7;
          v15 = v123;
          v44 = v33 + 1;
          if (v140)
          {
            v92 = 0;
            v93 = &v145[8 * v138 + v139];
            v94 = v141;
            do
            {
              if (v94)
              {
                v95 = 0;
                v96 = v136 + v137 * v92;
                do
                {
                  *(v96 + v95) = v93->i8[v95];
                  ++v95;
                  v94 = v141;
                }

                while (16 * v141 > v95);
                v91 = v140;
              }

              ++v92;
              v93 += 8;
            }

            while (v92 < v91);
          }

LABEL_30:
          v20 = v33 == v124 >> 3;
          v33 = v44;
        }

        while (!v20);
        v20 = v16++ == v115;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v153 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v131 = a8;
  v16 = a8 >> 2;
  v113 = a8 + a10 - 1;
  v115 = v113 >> 2;
  v17 = *(*(v15 + 208) + 88);
  v18 = *(v15 + 112);
  if (*(v15 + 168))
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
  v126 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v115)
  {
    v124 = a7 + a9 - 1;
    if (a7 >> 3 <= v124 >> 3)
    {
      v24 = a11;
      v134 = (a5 - 1) >> 3;
      v110 = a5 - 1;
      v117 = (a5 - 1) & 7;
      v111 = (a6 - 1) & 3;
      v112 = (a6 - 1) >> 2;
      v116 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v26 = vcgt_u32(v25, 0xF00000007);
      v122 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), v26);
      v121 = v26;
      v109 = 8 * v18 * v17;
      v123 = v15;
      do
      {
        v27 = (4 * v16) | 3;
        if (4 * v16 <= v131)
        {
          v28 = v131;
        }

        else
        {
          v28 = 4 * v16;
        }

        if (v113 < v27)
        {
          v27 = v113;
        }

        v130 = 4 * v16;
        v120 = v28 - 4 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v111;
        v119 = v30;
        v32 = v30 != 4;
        v33 = a7 >> 3;
        v34 = v111 + 1;
        if (v16 != v112)
        {
          v34 = 4;
        }

        v133 = v34;
        if (v16 != v112)
        {
          v31 = v32;
        }

        v118 = v31;
        v129 = a2 + (v28 - v131) * v24;
        v35 = a7;
        do
        {
          v45 = 8 * v33;
          v46 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v47 = v35;
          }

          else
          {
            v47 = 8 * v33;
          }

          if (v124 < v46)
          {
            v46 = a7 + a9 - 1;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v33 == v134)
          {
            v50 = v117 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v130 >= v131 && v45 >= v35)
          {
            v52 = v48 != v117;
            if (v33 != v134)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v118;
          }

          if (isLevelTiled)
          {
            v73 = 0;
            v74 = v109 >> (*(v15 + 57) != 0);
            v75 = 1;
            if (v74 <= 63)
            {
              if (v74 > 15)
              {
                if (v74 == 16)
                {
                  v75 = 0;
                  v76 = 64;
                  v73 = 128;
                }

                else
                {
                  v76 = 0;
                  if (v74 == 32)
                  {
                    v75 = 0;
                    v73 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v74 == 4)
              {
                v75 = 0;
                v76 = 128;
                v73 = 256;
              }

              else
              {
                v76 = 0;
                if (v74 == 8)
                {
                  v75 = 0;
                  v73 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v74 <= 255)
            {
              if (v74 == 64)
              {
                v75 = 0;
                v76 = 32;
                v73 = 64;
              }

              else
              {
                v76 = 0;
                if (v74 == 128)
                {
                  v75 = 0;
                  v73 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v74 == 256)
            {
              v75 = 0;
              v76 = 16;
              v73 = 32;
            }

            else if (v74 == 512)
            {
              v75 = 0;
              v73 = 16;
              v76 = 16;
            }

            else
            {
              v76 = 0;
              if (v74 == 1024)
              {
                v75 = 0;
                v76 = 8;
                v73 = 16;
              }
            }

            v97 = (v73 >> 3) - 1;
            v98 = (v76 >> 2) - 1;
            if ((v75 & 1) != 0 || (v99 = 32 - __clz(~(-1 << -__clz(v97))), v100 = 32 - __clz(~(-1 << -__clz(v98))), !(v100 | v99)))
            {
              v108 = 0;
            }

            else
            {
              v101 = 0;
              v102 = 0;
              v103 = v33 & v97;
              v104 = v16 & v98;
              v105 = v100 != 0;
              v106 = v99 != 0;
              v107 = 1;
              do
              {
                --v100;
                if (v105)
                {
                  v102 |= (v107 & v104) << v101++;
                }

                else
                {
                  v100 = 0;
                }

                --v99;
                if (v106)
                {
                  v102 |= (v107 & v103) << v101++;
                }

                else
                {
                  v99 = 0;
                }

                v107 *= 2;
                --v101;
                v106 = v99 != 0;
                v105 = v100 != 0;
              }

              while (v99 | v100);
              v108 = v102 << 9;
            }

            v60 = v108 + ((v45 / v73 + v130 / v76 * ((v73 + v110) / v73)) << 14);
          }

          else if (v122)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v57 = v121.i8[0];
            v56 = v121.i8[4];
            v58 = v122.i32[0];
            v59 = v122.i32[1];
            do
            {
              --v58;
              if (v57)
              {
                v54 |= (v55 & v16) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v56)
              {
                v54 |= (v55 & v33) << v53++;
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
            v60 = v54 << 9;
          }

          else
          {
            v60 = 0;
          }

          v61 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v64 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
            if (!v63)
            {
LABEL_81:
              v72 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
            if (!(v66 | v63))
            {
              goto LABEL_81;
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
              v68 |= (v71 & v33) << v67++;
            }

            else
            {
              v63 = 0;
            }

            --v66;
            if (v70)
            {
              v68 |= (v71 & v16) << v67++;
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
LABEL_82:
          v77 = (a3 + v60);
          if (v126)
          {
            v78 = v49;
            v79 = v24;
            v80 = v50;
            v81 = v51;
            memcpy(__dst, (a3 + v60), sizeof(__dst));
            v51 = v81;
            v50 = v80;
            v24 = v79;
            v45 = 8 * v33;
            v49 = v78;
            v77 = __dst;
          }

          v82 = (a4 + v72);
          v83 = (v129 + 16 * (v47 - v35));
          if (!(v51 & 1 | (v50 < 8u)) && v133 > 3)
          {
            v36 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v129 + 16 * (v47 - v35)), v24, v77, *v82)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 2, v24, v36, v82[1]);
            v38 = (v83 + v116);
            v39 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116), v24, v37, v82[2]);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116 + 32), v24, v39, v82[3]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 4, v24, v40, v82[4]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 6, v24, v41, v82[5]);
            v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 4, v24, v42, v82[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 6, v24, v42 + v43, v82[7]);
            v35 = a7;
            v15 = v123;
LABEL_29:
            v44 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v123;
          block[5] = v77;
          v142 = v50;
          v143 = v133;
          v138 = v120;
          v139 = v47 - v45;
          block[6] = v82;
          v136 = v129 + 16 * (v47 - v35);
          v137 = v24;
          v140 = v119;
          v141 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v123 + 8) + 16552), block);
            v35 = a7;
            v15 = v123;
            goto LABEL_29;
          }

          v84 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v77, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v84, v82[1]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v85, v82[2]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v86, v82[3]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v87, v82[4]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v88, v82[5]);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v89, v82[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 128, v89 + v90, v82[7]);
          v91 = v140;
          v35 = a7;
          v15 = v123;
          v44 = v33 + 1;
          if (v140)
          {
            v92 = 0;
            v93 = &v145[8 * v138 + v139];
            v94 = v141;
            do
            {
              if (v94)
              {
                v95 = 0;
                v96 = v136 + v137 * v92;
                do
                {
                  *(v96 + v95) = v93->i8[v95];
                  ++v95;
                  v94 = v141;
                }

                while (16 * v141 > v95);
                v91 = v140;
              }

              ++v92;
              v93 += 8;
            }

            while (v92 < v91);
          }

LABEL_30:
          v20 = v33 == v124 >> 3;
          v33 = v44;
        }

        while (!v20);
        v20 = v16++ == v115;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v150 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v129 = a8;
  v110 = a8 + a10 - 1;
  if (*(v15 + 168))
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
  v109 = v110 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v124 = v23;
  if (*(v15 + 232) == 1)
  {
    v24 = *(v15 + 273);
    v25 = *(v15 + 272);
    v26 = __clz(v18);
    if (1 << v24 >= a6 || a5 >> v25)
    {
      if (!(a6 >> v24) && 1 << v25 < a5)
      {
        if (a6 < 2)
        {
          v29 = 0;
        }

        else
        {
          v29 = __clz(~(-1 << -__clz(v19))) | 0xFFFFFFE0;
        }

        v25 += v24 + v29;
        v24 = -v29;
      }
    }

    else
    {
      v27 = 32 - __clz(~(-1 << -v26));
      v28 = v25 + v24;
      if (a5 < 2)
      {
        v27 = 0;
      }

      v24 = v28 - v27;
      v25 = v27;
    }

    if (a5 < 2)
    {
      if (v25)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v26)) < v25)
    {
LABEL_27:
      v123 = 0;
LABEL_32:
      v119 = v25 - 3;
      v113 = v24 - 2;
      v31 = -1 << *(*(v15 + 208) + 48);
      v107 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v30 = 0;
    }

    else
    {
      v30 = 32 - __clz(~(-1 << -__clz(v19)));
    }

    v123 = v30 >= v24;
    goto LABEL_32;
  }

  v123 = 0;
  v107 = 0;
  v113 = 0;
  v119 = 0;
LABEL_33:
  if (v17 <= v109)
  {
    v122 = a7 + a9 - 1;
    if (a7 >> 3 <= v122 >> 3)
    {
      v131 = v18 >> 3;
      v115 = v18 & 7;
      v120 = (v18 & 7) + 1;
      v105 = v19 & 3;
      v106 = v19 >> 2;
      v114 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v33 = vcgt_u32(v32, 0xF00000007);
      v112 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v32, 0xFFFFFFFDFFFFFFFELL), -1))))))), v33);
      v111 = v33;
      v121 = v15;
      do
      {
        v34 = (4 * v17) | 3;
        if (4 * v17 <= v129)
        {
          v35 = v129;
        }

        else
        {
          v35 = 4 * v17;
        }

        if (v110 < v34)
        {
          v34 = v110;
        }

        v118 = v35 - 4 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v105;
        v117 = v37;
        v39 = v37 != 4;
        v40 = a7 >> 3;
        v41 = v105 + 1;
        if (v17 != v106)
        {
          v41 = 4;
        }

        v130 = v41;
        if (v17 != v106)
        {
          v38 = v39;
        }

        v116 = v38;
        v127 = a2 + (v35 - v129) * a11;
        v42 = a7;
        do
        {
          v52 = 8 * v40;
          v53 = 8 * (v40 + 1) - 1;
          if (8 * v40 <= v42)
          {
            v54 = v42;
          }

          else
          {
            v54 = 8 * v40;
          }

          if (v122 < v53)
          {
            v53 = a7 + a9 - 1;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v40 == v131)
          {
            v57 = v120;
          }

          else
          {
            v57 = 8;
          }

          v58 = 1;
          if (4 * v17 >= v129 && v52 >= v42)
          {
            v59 = v55 != v115;
            if (v40 != v131)
            {
              v59 = v56 != 8;
            }

            v58 = v59 || v116;
          }

          if (v123)
          {
            if (v119 | v113)
            {
              v60 = 0;
              v61 = 0;
              v62 = v119 != 0;
              v63 = 1;
              v65 = v113 != 0;
              v64 = v113;
              v66 = v119;
              do
              {
                --v64;
                if (v65)
                {
                  v61 |= (v17 & ~(-1 << v113) & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                --v66;
                if (v62)
                {
                  v61 |= (v40 & ~(-1 << v119) & v63) << v60++;
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

            v75 = v67 + *(v15 + 336) * ((v40 >> v119) + (v17 >> v113) * v107);
          }

          else if (v112)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v111.i8[0];
            v71 = v111.i8[4];
            v73 = v112.i32[0];
            v74 = v112.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v17) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v40) << v68++;
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

          v76 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v79 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
LABEL_107:
              v87 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 2) - 1)));
            if (!(v81 | v78))
            {
              goto LABEL_107;
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
              v83 |= (v86 & v40) << v82++;
            }

            else
            {
              v78 = 0;
            }

            --v81;
            if (v85)
            {
              v83 |= (v86 & v17) << v82++;
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
LABEL_108:
          v88 = (a3 + v75);
          if (v124)
          {
            v89 = v57;
            memcpy(__dst, (a3 + v75), sizeof(__dst));
            v57 = v89;
            v88 = __dst;
          }

          v90 = (a4 + v87);
          v91 = (v127 + 16 * (v54 - v42));
          if (!(v58 & 1 | (v57 < 8u)) && v130 > 3)
          {
            v43 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91, a11, v88, *v90)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 2, a11, v43, v90[1]);
            v45 = (v91 + v114);
            v46 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114), a11, v44, v90[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114 + 32), a11, v46, v90[3]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 4, a11, v47, v90[4]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 6, a11, v48, v90[5]);
            v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 4, a11, v49, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 6, a11, v49 + v50, v90[7]);
            v42 = a7;
            v15 = v121;
LABEL_49:
            v51 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v121;
          block[5] = v88;
          v139 = v57;
          v140 = v130;
          v135 = v118;
          v136 = v54 - v52;
          block[6] = v90;
          v133 = v91;
          v134 = a11;
          v137 = v117;
          v138 = v56;
          if (v58)
          {
            dispatch_sync(*(*(v121 + 8) + 16552), block);
            v42 = a7;
            v15 = v121;
            goto LABEL_49;
          }

          v92 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v142, 128, v88, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v143, 128, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 128, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v97 + v98, v90[7]);
          v99 = v137;
          v42 = a7;
          v15 = v121;
          v51 = v40 + 1;
          if (v137)
          {
            v100 = 0;
            v101 = &v142[8 * v135 + v136];
            v102 = v138;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = &v133->i8[v134 * v100];
                do
                {
                  v104[v103] = v101->i8[v103];
                  ++v103;
                  v102 = v138;
                }

                while (16 * v138 > v103);
                v99 = v137;
              }

              ++v100;
              v101 += 8;
            }

            while (v100 < v99);
          }

LABEL_50:
          v20 = v40 == v122 >> 3;
          v40 = v51;
        }

        while (!v20);
        v20 = v17++ == v109;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v150 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v129 = a8;
  v110 = a8 + a10 - 1;
  if (*(v15 + 168))
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
  v109 = v110 >> 2;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v124 = v23;
  if (*(v15 + 232) == 1)
  {
    v24 = *(v15 + 273);
    v25 = *(v15 + 272);
    v26 = __clz(v18);
    if (1 << v24 >= a6 || a5 >> v25)
    {
      if (!(a6 >> v24) && 1 << v25 < a5)
      {
        if (a6 < 2)
        {
          v29 = 0;
        }

        else
        {
          v29 = __clz(~(-1 << -__clz(v19))) | 0xFFFFFFE0;
        }

        v25 += v24 + v29;
        v24 = -v29;
      }
    }

    else
    {
      v27 = 32 - __clz(~(-1 << -v26));
      v28 = v25 + v24;
      if (a5 < 2)
      {
        v27 = 0;
      }

      v24 = v28 - v27;
      v25 = v27;
    }

    if (a5 < 2)
    {
      if (v25)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v26)) < v25)
    {
LABEL_27:
      v123 = 0;
LABEL_32:
      v119 = v25 - 3;
      v113 = v24 - 2;
      v31 = -1 << *(*(v15 + 208) + 48);
      v107 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v30 = 0;
    }

    else
    {
      v30 = 32 - __clz(~(-1 << -__clz(v19)));
    }

    v123 = v30 >= v24;
    goto LABEL_32;
  }

  v123 = 0;
  v107 = 0;
  v113 = 0;
  v119 = 0;
LABEL_33:
  if (v17 <= v109)
  {
    v122 = a7 + a9 - 1;
    if (a7 >> 3 <= v122 >> 3)
    {
      v131 = v18 >> 3;
      v115 = v18 & 7;
      v120 = (v18 & 7) + 1;
      v105 = v19 & 3;
      v106 = v19 >> 2;
      v114 = 2 * a11;
      v32 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v33 = vcgt_u32(v32, 0xF00000007);
      v112 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v32, 0xFFFFFFFDFFFFFFFELL), -1))))))), v33);
      v111 = v33;
      v121 = v15;
      do
      {
        v34 = (4 * v17) | 3;
        if (4 * v17 <= v129)
        {
          v35 = v129;
        }

        else
        {
          v35 = 4 * v17;
        }

        if (v110 < v34)
        {
          v34 = v110;
        }

        v118 = v35 - 4 * v17;
        v36 = v34 - v35;
        v37 = v36 + 1;
        v38 = v36 != v105;
        v117 = v37;
        v39 = v37 != 4;
        v40 = a7 >> 3;
        v41 = v105 + 1;
        if (v17 != v106)
        {
          v41 = 4;
        }

        v130 = v41;
        if (v17 != v106)
        {
          v38 = v39;
        }

        v116 = v38;
        v127 = a2 + (v35 - v129) * a11;
        v42 = a7;
        do
        {
          v52 = 8 * v40;
          v53 = 8 * (v40 + 1) - 1;
          if (8 * v40 <= v42)
          {
            v54 = v42;
          }

          else
          {
            v54 = 8 * v40;
          }

          if (v122 < v53)
          {
            v53 = a7 + a9 - 1;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v40 == v131)
          {
            v57 = v120;
          }

          else
          {
            v57 = 8;
          }

          v58 = 1;
          if (4 * v17 >= v129 && v52 >= v42)
          {
            v59 = v55 != v115;
            if (v40 != v131)
            {
              v59 = v56 != 8;
            }

            v58 = v59 || v116;
          }

          if (v123)
          {
            if (v119 | v113)
            {
              v60 = 0;
              v61 = 0;
              v62 = v119 != 0;
              v63 = 1;
              v65 = v113 != 0;
              v64 = v113;
              v66 = v119;
              do
              {
                --v64;
                if (v65)
                {
                  v61 |= (v17 & ~(-1 << v113) & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                --v66;
                if (v62)
                {
                  v61 |= (v40 & ~(-1 << v119) & v63) << v60++;
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

            v75 = v67 + *(v15 + 336) * ((v40 >> v119) + (v17 >> v113) * v107);
          }

          else if (v112)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v111.i8[0];
            v71 = v111.i8[4];
            v73 = v112.i32[0];
            v74 = v112.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v17) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v40) << v68++;
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

          v76 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v79 = *(v15 + 132) >> (*(v15 + 144) + a12);
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
LABEL_107:
              v87 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 2) - 1)));
            if (!(v81 | v78))
            {
              goto LABEL_107;
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
              v83 |= (v86 & v40) << v82++;
            }

            else
            {
              v78 = 0;
            }

            --v81;
            if (v85)
            {
              v83 |= (v86 & v17) << v82++;
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
LABEL_108:
          v88 = (a3 + v75);
          if (v124)
          {
            v89 = v57;
            memcpy(__dst, (a3 + v75), sizeof(__dst));
            v57 = v89;
            v88 = __dst;
          }

          v90 = (a4 + v87);
          v91 = (v127 + 16 * (v54 - v42));
          if (!(v58 & 1 | (v57 < 8u)) && v130 > 3)
          {
            v43 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91, a11, v88, *v90)];
            v44 = v43 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 2, a11, v43, v90[1]);
            v45 = (v91 + v114);
            v46 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114), a11, v44, v90[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v91 + v114 + 32), a11, v46, v90[3]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 4, a11, v47, v90[4]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v91 + 6, a11, v48, v90[5]);
            v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 4, a11, v49, v90[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v45 + 6, a11, v49 + v50, v90[7]);
            v42 = a7;
            v15 = v121;
LABEL_49:
            v51 = v40 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v121;
          block[5] = v88;
          v139 = v57;
          v140 = v130;
          v135 = v118;
          v136 = v54 - v52;
          block[6] = v90;
          v133 = v91;
          v134 = a11;
          v137 = v117;
          v138 = v56;
          if (v58)
          {
            dispatch_sync(*(*(v121 + 8) + 16552), block);
            v42 = a7;
            v15 = v121;
            goto LABEL_49;
          }

          v92 = &v88[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v142, 128, v88, *v90)];
          v93 = v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v143, 128, v92, v90[1]);
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v93, v90[2]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v94, v90[3]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v144, 128, v95, v90[4]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v96, v90[5]);
          v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v97, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v97 + v98, v90[7]);
          v99 = v137;
          v42 = a7;
          v15 = v121;
          v51 = v40 + 1;
          if (v137)
          {
            v100 = 0;
            v101 = &v142[8 * v135 + v136];
            v102 = v138;
            do
            {
              if (v102)
              {
                v103 = 0;
                v104 = &v133->i8[v134 * v100];
                do
                {
                  v104[v103] = v101->i8[v103];
                  ++v103;
                  v102 = v138;
                }

                while (16 * v138 > v103);
                v99 = v137;
              }

              ++v100;
              v101 += 8;
            }

            while (v100 < v99);
          }

LABEL_50:
          v20 = v40 == v122 >> 3;
          v40 = v51;
        }

        while (!v20);
        v20 = v17++ == v109;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v153 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v131 = a8;
  v16 = a8 >> 2;
  v113 = a8 + a10 - 1;
  v115 = v113 >> 2;
  v17 = *(*(v15 + 208) + 88);
  v18 = *(v15 + 112);
  if (*(v15 + 168))
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
  v126 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v115)
  {
    v124 = a7 + a9 - 1;
    if (a7 >> 3 <= v124 >> 3)
    {
      v24 = a11;
      v134 = (a5 - 1) >> 3;
      v110 = a5 - 1;
      v117 = (a5 - 1) & 7;
      v111 = (a6 - 1) & 3;
      v112 = (a6 - 1) >> 2;
      v116 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v26 = vcgt_u32(v25, 0xF00000007);
      v122 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), v26);
      v121 = v26;
      v109 = 8 * v18 * v17;
      v123 = v15;
      do
      {
        v27 = (4 * v16) | 3;
        if (4 * v16 <= v131)
        {
          v28 = v131;
        }

        else
        {
          v28 = 4 * v16;
        }

        if (v113 < v27)
        {
          v27 = v113;
        }

        v130 = 4 * v16;
        v120 = v28 - 4 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v111;
        v119 = v30;
        v32 = v30 != 4;
        v33 = a7 >> 3;
        v34 = v111 + 1;
        if (v16 != v112)
        {
          v34 = 4;
        }

        v133 = v34;
        if (v16 != v112)
        {
          v31 = v32;
        }

        v118 = v31;
        v129 = a2 + (v28 - v131) * v24;
        v35 = a7;
        do
        {
          v45 = 8 * v33;
          v46 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v47 = v35;
          }

          else
          {
            v47 = 8 * v33;
          }

          if (v124 < v46)
          {
            v46 = a7 + a9 - 1;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v33 == v134)
          {
            v50 = v117 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v130 >= v131 && v45 >= v35)
          {
            v52 = v48 != v117;
            if (v33 != v134)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v118;
          }

          if (isLevelTiled)
          {
            v73 = 0;
            v74 = v109 >> (*(v15 + 57) != 0);
            v75 = 1;
            if (v74 <= 63)
            {
              if (v74 > 15)
              {
                if (v74 == 16)
                {
                  v75 = 0;
                  v76 = 64;
                  v73 = 128;
                }

                else
                {
                  v76 = 0;
                  if (v74 == 32)
                  {
                    v75 = 0;
                    v73 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v74 == 4)
              {
                v75 = 0;
                v76 = 128;
                v73 = 256;
              }

              else
              {
                v76 = 0;
                if (v74 == 8)
                {
                  v75 = 0;
                  v73 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v74 <= 255)
            {
              if (v74 == 64)
              {
                v75 = 0;
                v76 = 32;
                v73 = 64;
              }

              else
              {
                v76 = 0;
                if (v74 == 128)
                {
                  v75 = 0;
                  v73 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v74 == 256)
            {
              v75 = 0;
              v76 = 16;
              v73 = 32;
            }

            else if (v74 == 512)
            {
              v75 = 0;
              v73 = 16;
              v76 = 16;
            }

            else
            {
              v76 = 0;
              if (v74 == 1024)
              {
                v75 = 0;
                v76 = 8;
                v73 = 16;
              }
            }

            v97 = (v73 >> 3) - 1;
            v98 = (v76 >> 2) - 1;
            if ((v75 & 1) != 0 || (v99 = 32 - __clz(~(-1 << -__clz(v97))), v100 = 32 - __clz(~(-1 << -__clz(v98))), !(v100 | v99)))
            {
              v108 = 0;
            }

            else
            {
              v101 = 0;
              v102 = 0;
              v103 = v33 & v97;
              v104 = v16 & v98;
              v105 = v100 != 0;
              v106 = v99 != 0;
              v107 = 1;
              do
              {
                --v100;
                if (v105)
                {
                  v102 |= (v107 & v104) << v101++;
                }

                else
                {
                  v100 = 0;
                }

                --v99;
                if (v106)
                {
                  v102 |= (v107 & v103) << v101++;
                }

                else
                {
                  v99 = 0;
                }

                v107 *= 2;
                --v101;
                v106 = v99 != 0;
                v105 = v100 != 0;
              }

              while (v99 | v100);
              v108 = v102 << 9;
            }

            v60 = v108 + ((v45 / v73 + v130 / v76 * ((v73 + v110) / v73)) << 14);
          }

          else if (v122)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v57 = v121.i8[0];
            v56 = v121.i8[4];
            v58 = v122.i32[0];
            v59 = v122.i32[1];
            do
            {
              --v58;
              if (v57)
              {
                v54 |= (v55 & v16) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v56)
              {
                v54 |= (v55 & v33) << v53++;
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
            v60 = v54 << 9;
          }

          else
          {
            v60 = 0;
          }

          v61 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v64 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
            if (!v63)
            {
LABEL_81:
              v72 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
            if (!(v66 | v63))
            {
              goto LABEL_81;
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
              v68 |= (v71 & v33) << v67++;
            }

            else
            {
              v63 = 0;
            }

            --v66;
            if (v70)
            {
              v68 |= (v71 & v16) << v67++;
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
LABEL_82:
          v77 = (a3 + v60);
          if (v126)
          {
            v78 = v49;
            v79 = v24;
            v80 = v50;
            v81 = v51;
            memcpy(__dst, (a3 + v60), sizeof(__dst));
            v51 = v81;
            v50 = v80;
            v24 = v79;
            v45 = 8 * v33;
            v49 = v78;
            v77 = __dst;
          }

          v82 = (a4 + v72);
          v83 = (v129 + 16 * (v47 - v35));
          if (!(v51 & 1 | (v50 < 8u)) && v133 > 3)
          {
            v36 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v129 + 16 * (v47 - v35)), v24, v77, *v82)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 2, v24, v36, v82[1]);
            v38 = (v83 + v116);
            v39 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116), v24, v37, v82[2]);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116 + 32), v24, v39, v82[3]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 4, v24, v40, v82[4]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 6, v24, v41, v82[5]);
            v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 4, v24, v42, v82[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 6, v24, v42 + v43, v82[7]);
            v35 = a7;
            v15 = v123;
LABEL_29:
            v44 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v123;
          block[5] = v77;
          v142 = v50;
          v143 = v133;
          v138 = v120;
          v139 = v47 - v45;
          block[6] = v82;
          v136 = v129 + 16 * (v47 - v35);
          v137 = v24;
          v140 = v119;
          v141 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v123 + 8) + 16552), block);
            v35 = a7;
            v15 = v123;
            goto LABEL_29;
          }

          v84 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v77, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v84, v82[1]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v85, v82[2]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v86, v82[3]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v87, v82[4]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v88, v82[5]);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v89, v82[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 128, v89 + v90, v82[7]);
          v91 = v140;
          v35 = a7;
          v15 = v123;
          v44 = v33 + 1;
          if (v140)
          {
            v92 = 0;
            v93 = &v145[8 * v138 + v139];
            v94 = v141;
            do
            {
              if (v94)
              {
                v95 = 0;
                v96 = v136 + v137 * v92;
                do
                {
                  *(v96 + v95) = v93->i8[v95];
                  ++v95;
                  v94 = v141;
                }

                while (16 * v141 > v95);
                v91 = v140;
              }

              ++v92;
              v93 += 8;
            }

            while (v92 < v91);
          }

LABEL_30:
          v20 = v33 == v124 >> 3;
          v33 = v44;
        }

        while (!v20);
        v20 = v16++ == v115;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v153 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v131 = a8;
  v16 = a8 >> 2;
  v113 = a8 + a10 - 1;
  v115 = v113 >> 2;
  v17 = *(*(v15 + 208) + 88);
  v18 = *(v15 + 112);
  if (*(v15 + 168))
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
  v126 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v115)
  {
    v124 = a7 + a9 - 1;
    if (a7 >> 3 <= v124 >> 3)
    {
      v24 = a11;
      v134 = (a5 - 1) >> 3;
      v110 = a5 - 1;
      v117 = (a5 - 1) & 7;
      v111 = (a6 - 1) & 3;
      v112 = (a6 - 1) >> 2;
      v116 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v26 = vcgt_u32(v25, 0xF00000007);
      v122 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), v26);
      v121 = v26;
      v109 = 8 * v18 * v17;
      v123 = v15;
      do
      {
        v27 = (4 * v16) | 3;
        if (4 * v16 <= v131)
        {
          v28 = v131;
        }

        else
        {
          v28 = 4 * v16;
        }

        if (v113 < v27)
        {
          v27 = v113;
        }

        v130 = 4 * v16;
        v120 = v28 - 4 * v16;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v111;
        v119 = v30;
        v32 = v30 != 4;
        v33 = a7 >> 3;
        v34 = v111 + 1;
        if (v16 != v112)
        {
          v34 = 4;
        }

        v133 = v34;
        if (v16 != v112)
        {
          v31 = v32;
        }

        v118 = v31;
        v129 = a2 + (v28 - v131) * v24;
        v35 = a7;
        do
        {
          v45 = 8 * v33;
          v46 = 8 * (v33 + 1) - 1;
          if (8 * v33 <= v35)
          {
            v47 = v35;
          }

          else
          {
            v47 = 8 * v33;
          }

          if (v124 < v46)
          {
            v46 = a7 + a9 - 1;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v33 == v134)
          {
            v50 = v117 + 1;
          }

          else
          {
            v50 = 8;
          }

          v51 = 1;
          if (v130 >= v131 && v45 >= v35)
          {
            v52 = v48 != v117;
            if (v33 != v134)
            {
              v52 = v49 != 8;
            }

            v51 = v52 || v118;
          }

          if (isLevelTiled)
          {
            v73 = 0;
            v74 = v109 >> (*(v15 + 57) != 0);
            v75 = 1;
            if (v74 <= 63)
            {
              if (v74 > 15)
              {
                if (v74 == 16)
                {
                  v75 = 0;
                  v76 = 64;
                  v73 = 128;
                }

                else
                {
                  v76 = 0;
                  if (v74 == 32)
                  {
                    v75 = 0;
                    v73 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v74 == 4)
              {
                v75 = 0;
                v76 = 128;
                v73 = 256;
              }

              else
              {
                v76 = 0;
                if (v74 == 8)
                {
                  v75 = 0;
                  v73 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v74 <= 255)
            {
              if (v74 == 64)
              {
                v75 = 0;
                v76 = 32;
                v73 = 64;
              }

              else
              {
                v76 = 0;
                if (v74 == 128)
                {
                  v75 = 0;
                  v73 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v74 == 256)
            {
              v75 = 0;
              v76 = 16;
              v73 = 32;
            }

            else if (v74 == 512)
            {
              v75 = 0;
              v73 = 16;
              v76 = 16;
            }

            else
            {
              v76 = 0;
              if (v74 == 1024)
              {
                v75 = 0;
                v76 = 8;
                v73 = 16;
              }
            }

            v97 = (v73 >> 3) - 1;
            v98 = (v76 >> 2) - 1;
            if ((v75 & 1) != 0 || (v99 = 32 - __clz(~(-1 << -__clz(v97))), v100 = 32 - __clz(~(-1 << -__clz(v98))), !(v100 | v99)))
            {
              v108 = 0;
            }

            else
            {
              v101 = 0;
              v102 = 0;
              v103 = v33 & v97;
              v104 = v16 & v98;
              v105 = v100 != 0;
              v106 = v99 != 0;
              v107 = 1;
              do
              {
                --v100;
                if (v105)
                {
                  v102 |= (v107 & v104) << v101++;
                }

                else
                {
                  v100 = 0;
                }

                --v99;
                if (v106)
                {
                  v102 |= (v107 & v103) << v101++;
                }

                else
                {
                  v99 = 0;
                }

                v107 *= 2;
                --v101;
                v106 = v99 != 0;
                v105 = v100 != 0;
              }

              while (v99 | v100);
              v108 = v102 << 9;
            }

            v60 = v108 + ((v45 / v73 + v130 / v76 * ((v73 + v110) / v73)) << 14);
          }

          else if (v122)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v57 = v121.i8[0];
            v56 = v121.i8[4];
            v58 = v122.i32[0];
            v59 = v122.i32[1];
            do
            {
              --v58;
              if (v57)
              {
                v54 |= (v55 & v16) << v53++;
              }

              else
              {
                v58 = 0;
              }

              --v59;
              if (v56)
              {
                v54 |= (v55 & v33) << v53++;
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
            v60 = v54 << 9;
          }

          else
          {
            v60 = 0;
          }

          v61 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v64 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 3;
          if (v65 < 8)
          {
            v66 = 0;
            if (!v63)
            {
LABEL_81:
              v72 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 2) - 1)));
            if (!(v66 | v63))
            {
              goto LABEL_81;
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
              v68 |= (v71 & v33) << v67++;
            }

            else
            {
              v63 = 0;
            }

            --v66;
            if (v70)
            {
              v68 |= (v71 & v16) << v67++;
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
LABEL_82:
          v77 = (a3 + v60);
          if (v126)
          {
            v78 = v49;
            v79 = v24;
            v80 = v50;
            v81 = v51;
            memcpy(__dst, (a3 + v60), sizeof(__dst));
            v51 = v81;
            v50 = v80;
            v24 = v79;
            v45 = 8 * v33;
            v49 = v78;
            v77 = __dst;
          }

          v82 = (a4 + v72);
          v83 = (v129 + 16 * (v47 - v35));
          if (!(v51 & 1 | (v50 < 8u)) && v133 > 3)
          {
            v36 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v129 + 16 * (v47 - v35)), v24, v77, *v82)];
            v37 = v36 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 2, v24, v36, v82[1]);
            v38 = (v83 + v116);
            v39 = v37 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116), v24, v37, v82[2]);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v83 + v116 + 32), v24, v39, v82[3]);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 4, v24, v40, v82[4]);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v83 + 6, v24, v41, v82[5]);
            v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 4, v24, v42, v82[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v38 + 6, v24, v42 + v43, v82[7]);
            v35 = a7;
            v15 = v123;
LABEL_29:
            v44 = v33 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v123;
          block[5] = v77;
          v142 = v50;
          v143 = v133;
          v138 = v120;
          v139 = v47 - v45;
          block[6] = v82;
          v136 = v129 + 16 * (v47 - v35);
          v137 = v24;
          v140 = v119;
          v141 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v123 + 8) + 16552), block);
            v35 = a7;
            v15 = v123;
            goto LABEL_29;
          }

          v84 = &v77[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v145, 128, v77, *v82)];
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v146, 128, v84, v82[1]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v149, 128, v85, v82[2]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 128, v86, v82[3]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v147, 128, v87, v82[4]);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v148, 128, v88, v82[5]);
          v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 128, v89, v82[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 128, v89 + v90, v82[7]);
          v91 = v140;
          v35 = a7;
          v15 = v123;
          v44 = v33 + 1;
          if (v140)
          {
            v92 = 0;
            v93 = &v145[8 * v138 + v139];
            v94 = v141;
            do
            {
              if (v94)
              {
                v95 = 0;
                v96 = v136 + v137 * v92;
                do
                {
                  *(v96 + v95) = v93->i8[v95];
                  ++v95;
                  v94 = v141;
                }

                while (16 * v141 > v95);
                v91 = v140;
              }

              ++v92;
              v93 += 8;
            }

            while (v92 < v91);
          }

LABEL_30:
          v20 = v33 == v124 >> 3;
          v33 = v44;
        }

        while (!v20);
        v20 = v16++ == v115;
      }

      while (!v20);
    }
  }
}