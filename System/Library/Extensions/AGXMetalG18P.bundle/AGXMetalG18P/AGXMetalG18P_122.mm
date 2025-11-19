void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v403 = v15;
  v17 = v16;
  v19 = v18;
  v402 = v20;
  v357 = v21;
  v401 = v22;
  v23 = v12;
  v428 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v407 = v14;
  v24 = v14 >> 2;
  v356 = v14 + a10 - 1;
  v358 = v356 >> 2;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v408 = v23;
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
  v410 = v31;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v33 = v23;
  v400 = isLevelTiled;
  if (v24 <= v358)
  {
    v399 = v403 + a9 - 1;
    if (v403 >> 2 <= v399 >> 2)
    {
      v409 = (v19 - 1) >> 2;
      v355 = (v17 - 1) >> 2;
      v352 = v19 - 1;
      v360 = (v19 - 1) & 3;
      v353 = ((v17 - 1) & 3) + 1;
      v354 = (v17 - 1) & 3;
      v359 = 2 * a11;
      v34 = vadd_s32(__PAIR64__(v19, v17), 0x300000003);
      v35 = vcgt_u32(v34, 0x700000007);
      v366 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 2uLL))))))), v35);
      v365 = v35;
      v351 = 8 * v26 * v25;
      do
      {
        v36 = (4 * v24) | 3;
        if (4 * v24 <= v407)
        {
          v37 = v407;
        }

        else
        {
          v37 = 4 * v24;
        }

        if (v356 < v36)
        {
          v36 = v356;
        }

        v406 = 4 * v24;
        v364 = v37 - 4 * v24;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v354;
        v363 = v39;
        v41 = v39 != 4;
        v42 = v403 >> 2;
        v43 = v353;
        if (v24 != v355)
        {
          v43 = 4;
          v40 = v41;
        }

        v361 = v40;
        v405 = v357 + (v37 - v407) * a11;
        v362 = v43;
        v404 = v43;
        do
        {
          v44 = 4 * v42;
          v45 = 4 * (v42 + 1) - 1;
          if (4 * v42 <= v403)
          {
            v46 = v403;
          }

          else
          {
            v46 = 4 * v42;
          }

          if (v399 < v45)
          {
            v45 = v403 + a9 - 1;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v409)
          {
            v49 = v360 + 1;
          }

          else
          {
            v49 = 4;
          }

          v50 = 1;
          if (v406 >= v407 && v44 >= v403)
          {
            v51 = v47 != v360;
            if (v42 != v409)
            {
              v51 = v48 != 4;
            }

            v50 = v51 || v361;
          }

          if (v400)
          {
            v72 = 0;
            v73 = v351 >> (*(v33 + 57) != 0);
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

            v339 = (v72 >> 2) - 1;
            v340 = (v75 >> 2) - 1;
            if ((v74 & 1) != 0 || (v341 = 32 - __clz(~(-1 << -__clz(v339))), v342 = 32 - __clz(~(-1 << -__clz(v340))), !(v342 | v341)))
            {
              v350 = 0;
            }

            else
            {
              v343 = 0;
              v344 = 0;
              v345 = v42 & v339;
              v346 = v24 & v340;
              v347 = v341 != 0;
              v348 = v342 != 0;
              v349 = 1;
              do
              {
                --v341;
                if (v347)
                {
                  v344 |= (v349 & v345) << v343++;
                }

                else
                {
                  v341 = 0;
                }

                --v342;
                if (v348)
                {
                  v344 |= (v349 & v346) << v343++;
                }

                else
                {
                  v342 = 0;
                }

                v349 *= 2;
                --v343;
                v348 = v342 != 0;
                v347 = v341 != 0;
              }

              while (v342 | v341);
              v350 = v344 << 11;
            }

            v59 = v350 + ((v44 / v72 + v406 / v75 * ((v72 + v352) / v72)) << 14);
          }

          else if (v366)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v365.i8[4];
            v56 = v365.i8[0];
            v57 = v366.i32[1];
            v58 = v366.i32[0];
            do
            {
              --v57;
              if (v55)
              {
                v53 |= (v54 & v42) << v52++;
              }

              else
              {
                v57 = 0;
              }

              --v58;
              if (v56)
              {
                v53 |= (v54 & v24) << v52++;
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

          v60 = *(v33 + 128) >> (*(v33 + 144) + a12);
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

          v63 = *(v33 + 132) >> (*(v33 + 144) + a12);
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
              v67 |= (v70 & v24) << v66++;
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
          v76 = (v402 + v71);
          v77 = (v405 + ((v46 - v403) << 7));
          v78 = (v401 + v59);
          if (v410)
          {
            if (!(v50 & 1 | (v49 < 4u) | (v404 < 4)))
            {
              v84 = __dst;
LABEL_85:
              v367 = v77[4];
              v375 = v77[5];
              v383 = v77[6];
              v391 = v77[7];
              v85 = v77[8];
              v86 = v77[9];
              v87 = v77[10];
              v88 = v77[11];
              v89 = v77[12];
              v90 = v77[13];
              v91 = v77[14];
              v92 = v77[15];
              v93 = *(v77 + a11);
              v94 = *(v77 + a11 + 16);
              v95 = *(v77 + a11 + 32);
              v96 = *(v77 + a11 + 48);
              v97 = *(v77 + a11 + 64);
              v98 = *(v77 + a11 + 80);
              v99 = *(v77 + a11 + 96);
              v100 = *(v77 + a11 + 112);
              v101 = *(v77 + a11 + 128);
              v102 = *(v77 + a11 + 144);
              v103 = *(v77 + a11 + 160);
              v104 = *(v77 + a11 + 176);
              v105 = *(v77 + a11 + 192);
              v106 = *(v77 + a11 + 208);
              v107 = *(v77 + a11 + 224);
              v108 = *(v77 + a11 + 240);
              v109 = v77[1];
              v110 = v77[2];
              v111 = v77[3];
              *v84 = *v77;
              v84[1] = v109;
              v84[2] = v110;
              v84[3] = v111;
              v84[4] = v367;
              v84[5] = v375;
              v84[6] = v383;
              v84[7] = v391;
              v84[8] = v85;
              v84[9] = v86;
              v84[10] = v87;
              v84[11] = v88;
              v84[12] = v89;
              v84[13] = v90;
              v84[14] = v91;
              v84[15] = v92;
              v84[16] = v93;
              v84[17] = v94;
              v84[18] = v95;
              v84[19] = v96;
              v84[20] = v97;
              v84[21] = v98;
              v84[22] = v99;
              v84[23] = v100;
              v84[24] = v101;
              v84[25] = v102;
              v84[26] = v103;
              v84[27] = v104;
              v84[28] = v105;
              v84[29] = v106;
              v84[30] = v107;
              v84[31] = v108;
              *v76 = -1;
              v112 = (v77 + a11 + 256);
              v368 = v77[20];
              v376 = v77[21];
              v384 = v77[22];
              v392 = v77[23];
              v113 = v77[24];
              v114 = v77[25];
              v115 = v77[26];
              v116 = v77[27];
              v117 = v77[28];
              v118 = v77[29];
              v119 = v77[30];
              v120 = v77[31];
              v121 = *v112;
              v122 = v112[1];
              v123 = v112[2];
              v124 = v112[3];
              v125 = v112[4];
              v126 = v112[5];
              v127 = v112[6];
              v128 = v112[7];
              v129 = v112[8];
              v130 = v112[9];
              v131 = v112[10];
              v132 = v112[11];
              v112 += 12;
              v133 = *v112;
              v134 = v112[1];
              v135 = v112[2];
              v136 = v112[3];
              v137 = v77[17];
              v138 = v77[18];
              v139 = v77[19];
              v84[32] = v77[16];
              v84[33] = v137;
              v84[34] = v138;
              v84[35] = v139;
              v84[36] = v368;
              v84[37] = v376;
              v84[38] = v384;
              v84[39] = v392;
              v84[40] = v113;
              v84[41] = v114;
              v84[42] = v115;
              v84[43] = v116;
              v84[44] = v117;
              v84[45] = v118;
              v84[46] = v119;
              v84[47] = v120;
              v84[48] = v121;
              v84[49] = v122;
              v84[50] = v123;
              v84[51] = v124;
              v84[52] = v125;
              v84[53] = v126;
              v84[54] = v127;
              v84[55] = v128;
              v84[56] = v129;
              v84[57] = v130;
              v84[58] = v131;
              v84[59] = v132;
              v84[60] = v133;
              v84[61] = v134;
              v84[62] = v135;
              v84[63] = v136;
              v76[1] = -1;
              v369 = *(v77 + v359 + 64);
              v377 = *(v77 + v359 + 80);
              v385 = *(v77 + v359 + 96);
              v393 = *(v77 + v359 + 112);
              v140 = *(v77 + v359 + 128);
              v141 = *(v77 + v359 + 144);
              v142 = *(v77 + v359 + 160);
              v143 = *(v77 + v359 + 176);
              v144 = *(v77 + v359 + 192);
              v145 = *(v77 + v359 + 208);
              v146 = *(v77 + v359 + 224);
              v147 = *(v77 + v359 + 240);
              v148 = *(v77 + v359 + a11);
              v149 = *(v77 + v359 + a11 + 16);
              v150 = *(v77 + v359 + a11 + 32);
              v151 = *(v77 + v359 + a11 + 48);
              v152 = *(v77 + v359 + a11 + 64);
              v153 = *(v77 + v359 + a11 + 80);
              v154 = *(v77 + v359 + a11 + 96);
              v155 = *(v77 + v359 + a11 + 112);
              v156 = *(v77 + v359 + a11 + 128);
              v157 = *(v77 + v359 + a11 + 144);
              v158 = *(v77 + v359 + a11 + 160);
              v159 = *(v77 + v359 + a11 + 176);
              v160 = *(v77 + v359 + a11 + 192);
              v161 = *(v77 + v359 + a11 + 208);
              v162 = *(v77 + v359 + a11 + 224);
              v163 = *(v77 + v359 + a11 + 240);
              v164 = *(v77 + v359 + 16);
              v165 = *(v77 + v359 + 32);
              v166 = *(v77 + v359 + 48);
              v84[64] = *(v77 + 2 * a11);
              v84[65] = v164;
              v84[66] = v165;
              v84[67] = v166;
              v84[68] = v369;
              v84[69] = v377;
              v84[70] = v385;
              v84[71] = v393;
              v84[72] = v140;
              v84[73] = v141;
              v84[74] = v142;
              v84[75] = v143;
              v84[76] = v144;
              v84[77] = v145;
              v84[78] = v146;
              v84[79] = v147;
              v84[80] = v148;
              v84[81] = v149;
              v84[82] = v150;
              v84[83] = v151;
              v84[84] = v152;
              v84[85] = v153;
              v84[86] = v154;
              v84[87] = v155;
              v84[88] = v156;
              v84[89] = v157;
              v84[90] = v158;
              v84[91] = v159;
              v84[92] = v160;
              v84[93] = v161;
              v84[94] = v162;
              v84[95] = v163;
              v76[2] = -1;
              v167 = (v77 + v359 + a11 + 256);
              v370 = *(v77 + v359 + 320);
              v378 = *(v77 + v359 + 336);
              v386 = *(v77 + v359 + 352);
              v394 = *(v77 + v359 + 368);
              v168 = *(v77 + v359 + 384);
              v169 = *(v77 + v359 + 400);
              v170 = *(v77 + v359 + 416);
              v171 = *(v77 + v359 + 432);
              v172 = *(v77 + v359 + 448);
              v173 = *(v77 + v359 + 464);
              v174 = *(v77 + v359 + 480);
              v175 = *(v77 + v359 + 496);
              v176 = *v167;
              v177 = v167[1];
              v178 = v167[2];
              v179 = v167[3];
              v180 = v167[4];
              v181 = v167[5];
              v182 = v167[6];
              v183 = v167[7];
              v184 = v167[8];
              v185 = v167[9];
              v186 = v167[10];
              v187 = v167[11];
              v188 = v167[12];
              v189 = v167[13];
              v190 = v167[14];
              v191 = v167[15];
              v192 = *(v77 + v359 + 272);
              v193 = *(v77 + v359 + 288);
              v194 = *(v77 + v359 + 304);
              v84[96] = *(v77 + v359 + 256);
              v84[97] = v192;
              v84[98] = v193;
              v84[99] = v194;
              v84[100] = v370;
              v84[101] = v378;
              v84[102] = v386;
              v84[103] = v394;
              v84[104] = v168;
              v84[105] = v169;
              v84[106] = v170;
              v84[107] = v171;
              v84[108] = v172;
              v84[109] = v173;
              v84[110] = v174;
              v84[111] = v175;
              v84[112] = v176;
              v84[113] = v177;
              v84[114] = v178;
              v84[115] = v179;
              v84[116] = v180;
              v84[117] = v181;
              v84[118] = v182;
              v84[119] = v183;
              v84[120] = v184;
              v84[121] = v185;
              v84[122] = v186;
              v84[123] = v187;
              v84[124] = v188;
              v84[125] = v189;
              v84[126] = v190;
              v84[127] = v191;
              v76[3] = -1;
              goto LABEL_86;
            }

            v79 = (v401 + v59);
            v80 = v48;
            v81 = (v402 + v71);
            v82 = v49;
            v83 = v50;
            memcpy(__dst, (v401 + v59), sizeof(__dst));
            v50 = v83;
            v44 = 4 * v42;
            v49 = v82;
            v76 = v81;
            v84 = __dst;
            v48 = v80;
            v78 = v79;
            v33 = v408;
          }

          else
          {
            v84 = (v401 + v59);
            if (!(v50 & 1 | (v49 < 4u) | (v404 < 4)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v33;
          v412 = v84;
          v420 = v49;
          v421 = v362;
          v416 = v364;
          v417 = v46 - v44;
          v413 = v76;
          v414 = v405 + ((v46 - v403) << 7);
          v415 = a11;
          v418 = v363;
          v419 = v48;
          if (v50)
          {
            dispatch_sync(*(*(v33 + 8) + 16552), block);
            v33 = v408;
LABEL_86:
            v195 = v42 + 1;
            if (!v410)
            {
              goto LABEL_26;
            }

LABEL_127:
            memcpy(v78, v84, 0x800uLL);
            v33 = v408;
            goto LABEL_26;
          }

          v196 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v423, 512, v84, *v76);
          v197 = v196 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v425, 512, v196, v76[1]);
          v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v426, 512, v197, v76[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v427, 512, v197 + v198, v76[3]);
          v199 = v418;
          v195 = v42 + 1;
          if (v418 && v419)
          {
            v200 = 0;
            v201 = v417 << 7;
            v202 = &v424[32 * v416 - 1] + v201;
            v203 = v414;
            v204 = v415;
            v205 = v419 << 7;
            if (v205)
            {
              v206 = (v205 - 1) >> 32 == 0;
            }

            else
            {
              v206 = 0;
            }

            v207 = !v206;
            v209 = v202 < v414 + v415 * (v418 - 1) + v205 && v414 < &__dst[512 * v418 + 1536 + 512 * v416 + v205 + v201];
            v210 = v207 | (v415 < 0) | v209;
            v211 = &v424[32 * v416] + v201;
            v212 = (v414 + 16);
            do
            {
              v213 = v212;
              v214 = v211;
              v215 = v205;
              if (v210)
              {
                v216 = 0;
                do
                {
                  v202[v216] = *(v203 + v216);
                  ++v216;
                }

                while (v205 > v216);
              }

              else
              {
                do
                {
                  v217 = *v213;
                  *(v214 - 1) = *(v213 - 1);
                  *v214 = v217;
                  v214 += 2;
                  v213 += 2;
                  v215 -= 32;
                }

                while (v215);
              }

              ++v200;
              v211 += 512;
              v212 = (v212 + v204);
              v202 += 512;
              v203 += v204;
            }

            while (v200 != v199);
          }

          v218 = 0;
          v219 = v412;
          v220 = v413;
          v221 = v420;
          v222 = v421;
          if (v420)
          {
            v33 = v408;
            if (v421)
            {
              v371 = v424[3];
              v379 = v424[4];
              v387 = v424[5];
              v395 = v424[6];
              v223 = v424[7];
              v224 = v424[8];
              v225 = v424[9];
              v226 = v424[10];
              v227 = v424[11];
              v228 = v424[12];
              v229 = v424[13];
              v230 = v424[14];
              v231 = v425[16];
              v232 = v425[17];
              v233 = v425[18];
              v234 = v425[19];
              v235 = v425[20];
              v236 = v425[21];
              v237 = v425[22];
              v238 = v425[23];
              v239 = v425[24];
              v240 = v425[25];
              v241 = v425[26];
              v242 = v425[27];
              v243 = v425[28];
              v244 = v425[29];
              v245 = v425[30];
              v246 = v425[31];
              v247 = v424[0];
              v248 = v424[1];
              v249 = v424[2];
              *v412 = v423;
              v219[1] = v247;
              v219[2] = v248;
              v219[3] = v249;
              v219[4] = v371;
              v219[5] = v379;
              v219[6] = v387;
              v219[7] = v395;
              v219[8] = v223;
              v219[9] = v224;
              v219[10] = v225;
              v219[11] = v226;
              v219[12] = v227;
              v219[13] = v228;
              v219[14] = v229;
              v219[15] = v230;
              v219[16] = v231;
              v219[17] = v232;
              v219[18] = v233;
              v219[19] = v234;
              v219[20] = v235;
              v219[21] = v236;
              v219[22] = v237;
              v219[23] = v238;
              v219[24] = v239;
              v219[25] = v240;
              v219[26] = v241;
              v219[27] = v242;
              v250 = v219 + 28;
              v219 += 32;
              *v250 = v243;
              v250[1] = v244;
              v250[2] = v245;
              v250[3] = v246;
              v218 = -1;
            }
          }

          else
          {
            v33 = v408;
          }

          *v220 = v218;
          if (v221 < 3 || v222 == 0)
          {
            v280 = 0;
          }

          else
          {
            v372 = v425[4];
            v380 = v425[5];
            v388 = v425[6];
            v396 = v425[7];
            v252 = v425[8];
            v253 = v425[9];
            v254 = v425[10];
            v255 = v425[11];
            v256 = v425[12];
            v257 = v425[13];
            v258 = v425[14];
            v259 = v425[15];
            v260 = v425[32];
            v261 = v425[33];
            v262 = v425[34];
            v263 = v425[35];
            v264 = v425[36];
            v265 = v425[37];
            v266 = v425[38];
            v267 = v425[39];
            v268 = v425[40];
            v269 = v425[41];
            v270 = v425[42];
            v271 = v425[43];
            v272 = v425[44];
            v273 = v425[45];
            v274 = v425[46];
            v275 = v425[47];
            v276 = v425[1];
            v277 = v425[2];
            v278 = v425[3];
            *v219 = v425[0];
            v219[1] = v276;
            v219[2] = v277;
            v219[3] = v278;
            v219[4] = v372;
            v219[5] = v380;
            v219[6] = v388;
            v219[7] = v396;
            v219[8] = v252;
            v219[9] = v253;
            v219[10] = v254;
            v219[11] = v255;
            v219[12] = v256;
            v219[13] = v257;
            v219[14] = v258;
            v219[15] = v259;
            v219[16] = v260;
            v219[17] = v261;
            v219[18] = v262;
            v219[19] = v263;
            v219[20] = v264;
            v219[21] = v265;
            v219[22] = v266;
            v219[23] = v267;
            v219[24] = v268;
            v219[25] = v269;
            v219[26] = v270;
            v219[27] = v271;
            v279 = v219 + 28;
            v219 += 32;
            *v279 = v272;
            v279[1] = v273;
            v279[2] = v274;
            v279[3] = v275;
            v280 = -1;
          }

          v281 = 0;
          v220[1] = v280;
          if (v221 && v222 >= 3)
          {
            v373 = v426[4];
            v381 = v426[5];
            v389 = v426[6];
            v397 = v426[7];
            v282 = v426[8];
            v283 = v426[9];
            v284 = v426[10];
            v285 = v426[11];
            v286 = v426[12];
            v287 = v426[13];
            v288 = v426[14];
            v289 = v426[15];
            v290 = v427[16];
            v291 = v427[17];
            v292 = v427[18];
            v293 = v427[19];
            v294 = v427[20];
            v295 = v427[21];
            v296 = v427[22];
            v297 = v427[23];
            v298 = v427[24];
            v299 = v427[25];
            v300 = v427[26];
            v301 = v427[27];
            v302 = v427[28];
            v303 = v427[29];
            v304 = v427[30];
            v305 = v427[31];
            v306 = v426[1];
            v307 = v426[2];
            v308 = v426[3];
            *v219 = v426[0];
            v219[1] = v306;
            v219[2] = v307;
            v219[3] = v308;
            v219[4] = v373;
            v219[5] = v381;
            v219[6] = v389;
            v219[7] = v397;
            v219[8] = v282;
            v219[9] = v283;
            v219[10] = v284;
            v219[11] = v285;
            v219[12] = v286;
            v219[13] = v287;
            v219[14] = v288;
            v219[15] = v289;
            v219[16] = v290;
            v219[17] = v291;
            v219[18] = v292;
            v219[19] = v293;
            v219[20] = v294;
            v219[21] = v295;
            v219[22] = v296;
            v219[23] = v297;
            v219[24] = v298;
            v219[25] = v299;
            v219[26] = v300;
            v219[27] = v301;
            v309 = v219 + 28;
            v219 += 32;
            *v309 = v302;
            v309[1] = v303;
            v309[2] = v304;
            v309[3] = v305;
            v281 = -1;
          }

          v310 = 0;
          v220[2] = v281;
          if (v221 >= 3 && v222 >= 3)
          {
            v374 = v427[4];
            v382 = v427[5];
            v390 = v427[6];
            v398 = v427[7];
            v311 = v427[8];
            v312 = v427[9];
            v313 = v427[10];
            v314 = v427[11];
            v315 = v427[12];
            v316 = v427[13];
            v317 = v427[14];
            v318 = v427[15];
            v319 = v427[32];
            v320 = v427[33];
            v321 = v427[34];
            v322 = v427[35];
            v323 = v427[36];
            v324 = v427[37];
            v325 = v427[38];
            v326 = v427[39];
            v327 = v427[40];
            v328 = v427[41];
            v329 = v427[42];
            v330 = v427[43];
            v331 = v427[44];
            v332 = v427[45];
            v333 = v427[46];
            v334 = v427[47];
            v335 = v427[1];
            v336 = v427[2];
            v337 = v427[3];
            *v219 = v427[0];
            v219[1] = v335;
            v219[2] = v336;
            v219[3] = v337;
            v219[4] = v374;
            v219[5] = v382;
            v219[6] = v390;
            v219[7] = v398;
            v219[8] = v311;
            v219[9] = v312;
            v219[10] = v313;
            v219[11] = v314;
            v219[12] = v315;
            v219[13] = v316;
            v219[14] = v317;
            v219[15] = v318;
            v219[16] = v319;
            v219[17] = v320;
            v219[18] = v321;
            v219[19] = v322;
            v219[20] = v323;
            v219[21] = v324;
            v219[22] = v325;
            v219[23] = v326;
            v219[24] = v327;
            v219[25] = v328;
            v219[26] = v329;
            v219[27] = v330;
            v338 = v219 + 28;
            v310 = -1;
            *v338 = v331;
            v338[1] = v332;
            v338[2] = v333;
            v338[3] = v334;
          }

          v220[3] = v310;
          if (v410)
          {
            goto LABEL_127;
          }

LABEL_26:
          v28 = v42 == v399 >> 2;
          v42 = v195;
        }

        while (!v28);
        v28 = v24++ == v358;
      }

      while (!v28);
    }
  }
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v30, 512, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v31, 512, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v32, 512, v5, v3[2]);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v33, 512, v5 + v6, v3[3]);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = *(a1 + 76) << 7;
      v11 = &v30[32 * v9] + v10;
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = v8 << 7;
      if ((v14 - 1) >> 32)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14 == 0;
      }

      if (v15)
      {
        for (i = 0; i != v7; ++i)
        {
          v17 = 0;
          do
          {
            v11[v17] = *(v13 + v17);
            ++v17;
          }

          while (v14 > v17);
          v11 += 512;
          v13 += v12;
        }
      }

      else if (v13 < &v30[32 * v7 - 32 + 32 * v9] + v14 + v10 && v11 < v13 + v12 * (v7 - 1) + v14 || v12 < 0)
      {
        for (j = 0; j != v7; ++j)
        {
          v21 = 0;
          do
          {
            v11[v21] = *(v13 + v21);
            ++v21;
          }

          while (v14 > v21);
          v11 += 512;
          v13 += v12;
        }
      }

      else
      {
        v22 = 0;
        v23 = &v30[32 * v9 + 1] + v10;
        v24 = (v13 + 16);
        do
        {
          v25 = v24;
          v26 = v23;
          v27 = v14;
          do
          {
            v28 = *v25;
            *(v26 - 1) = *(v25 - 1);
            *v26 = v28;
            v26 += 2;
            v25 += 2;
            v27 -= 32;
          }

          while (v27);
          ++v22;
          v23 += 512;
          v24 = (v24 + v12);
        }

        while (v22 != v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(v30, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v30, 512, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v31, 512, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v32, 512, v5, v3[2]);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v33, 512, v5 + v6, v3[3]);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = *(a1 + 76) << 7;
      v11 = &v30[32 * v9] + v10;
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = v8 << 7;
      if ((v14 - 1) >> 32)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14 == 0;
      }

      if (v15)
      {
        for (i = 0; i != v7; ++i)
        {
          v17 = 0;
          do
          {
            v11[v17] = *(v13 + v17);
            ++v17;
          }

          while (v14 > v17);
          v11 += 512;
          v13 += v12;
        }
      }

      else if (v13 < &v30[32 * v7 - 32 + 32 * v9] + v14 + v10 && v11 < v13 + v12 * (v7 - 1) + v14 || v12 < 0)
      {
        for (j = 0; j != v7; ++j)
        {
          v21 = 0;
          do
          {
            v11[v21] = *(v13 + v21);
            ++v21;
          }

          while (v14 > v21);
          v11 += 512;
          v13 += v12;
        }
      }

      else
      {
        v22 = 0;
        v23 = &v30[32 * v9 + 1] + v10;
        v24 = (v13 + 16);
        do
        {
          v25 = v24;
          v26 = v23;
          v27 = v14;
          do
          {
            v28 = *v25;
            *(v26 - 1) = *(v25 - 1);
            *v26 = v28;
            v26 += 2;
            v25 += 2;
            v27 -= 32;
          }

          while (v27);
          ++v22;
          v23 += 512;
          v24 = (v24 + v12);
        }

        while (v22 != v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(v30, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v30, 512, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v31, 512, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v32, 512, v5, v3[2]);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v33, 512, v5 + v6, v3[3]);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = *(a1 + 76) << 7;
      v11 = &v30[32 * v9] + v10;
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = v8 << 7;
      if ((v14 - 1) >> 32)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14 == 0;
      }

      if (v15)
      {
        for (i = 0; i != v7; ++i)
        {
          v17 = 0;
          do
          {
            v11[v17] = *(v13 + v17);
            ++v17;
          }

          while (v14 > v17);
          v11 += 512;
          v13 += v12;
        }
      }

      else if (v13 < &v30[32 * v7 - 32 + 32 * v9] + v14 + v10 && v11 < v13 + v12 * (v7 - 1) + v14 || v12 < 0)
      {
        for (j = 0; j != v7; ++j)
        {
          v21 = 0;
          do
          {
            v11[v21] = *(v13 + v21);
            ++v21;
          }

          while (v14 > v21);
          v11 += 512;
          v13 += v12;
        }
      }

      else
      {
        v22 = 0;
        v23 = &v30[32 * v9 + 1] + v10;
        v24 = (v13 + 16);
        do
        {
          v25 = v24;
          v26 = v23;
          v27 = v14;
          do
          {
            v28 = *v25;
            *(v26 - 1) = *(v25 - 1);
            *v26 = v28;
            v26 += 2;
            v25 += 2;
            v27 -= 32;
          }

          while (v27);
          ++v22;
          v23 += 512;
          v24 = (v24 + v12);
        }

        while (v22 != v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(v30, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v30, 512, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v31, 512, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v32, 512, v5, v3[2]);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v33, 512, v5 + v6, v3[3]);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = *(a1 + 76) << 7;
      v11 = &v30[32 * v9] + v10;
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = v8 << 7;
      if ((v14 - 1) >> 32)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14 == 0;
      }

      if (v15)
      {
        for (i = 0; i != v7; ++i)
        {
          v17 = 0;
          do
          {
            v11[v17] = *(v13 + v17);
            ++v17;
          }

          while (v14 > v17);
          v11 += 512;
          v13 += v12;
        }
      }

      else if (v13 < &v30[32 * v7 - 32 + 32 * v9] + v14 + v10 && v11 < v13 + v12 * (v7 - 1) + v14 || v12 < 0)
      {
        for (j = 0; j != v7; ++j)
        {
          v21 = 0;
          do
          {
            v11[v21] = *(v13 + v21);
            ++v21;
          }

          while (v14 > v21);
          v11 += 512;
          v13 += v12;
        }
      }

      else
      {
        v22 = 0;
        v23 = &v30[32 * v9 + 1] + v10;
        v24 = (v13 + 16);
        do
        {
          v25 = v24;
          v26 = v23;
          v27 = v14;
          do
          {
            v28 = *v25;
            *(v26 - 1) = *(v25 - 1);
            *v26 = v28;
            v26 += 2;
            v25 += 2;
            v27 -= 32;
          }

          while (v27);
          ++v22;
          v23 += 512;
          v24 = (v24 + v12);
        }

        while (v22 != v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(v30, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v46, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = 2 * *(a1 + 76);
      v7 = &v46[16 * v5 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 32 * v4;
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v3; ++i)
        {
          v13 = 0;
          do
          {
            v7->i8[v13] = v9->i8[v13];
            ++v13;
          }

          while (v10 > v13);
          v7 += 16;
          v9 = (v9 + v8);
        }
      }

      else
      {
        result = v10 + v6 * 16;
        if (v9 < &v46[16 * v3 - 16 + 16 * v5 + v10 / 0x10 + v6] && v7 < (v9 + v8 * (v3 - 1) + v10) || v8 < 0)
        {
          for (j = 0; j != v3; ++j)
          {
            v17 = 0;
            do
            {
              v7->i8[v17] = v9->i8[v17];
              ++v17;
            }

            while (v10 > v17);
            v7 += 16;
            v9 = (v9 + v8);
          }
        }

        else
        {
          v18 = 0;
          v19 = &v46[16 * v5 + 1 + v6];
          v20 = v9 + 1;
          do
          {
            v21 = v20;
            v22 = v19;
            v23 = v10;
            do
            {
              v24 = *v21;
              v22[-1] = v21[-1];
              *v22 = v24;
              v22 += 2;
              v21 += 2;
              v23 -= 32;
            }

            while (v23);
            ++v18;
            v19 += 16;
            v20 = (v20 + v8);
          }

          while (v18 != v3);
        }
      }
    }
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  v27 = *(a1 + 88);
  v28 = &byte_29D2F30E1;
  v29 = 16;
  v30 = *(a1 + 89);
  do
  {
    v43 = *v28;
    v44 = *(v28 - 1);
    if (v27 <= 2 * v44 || 2 * v43 >= v30)
    {
      v42 = 0;
    }

    else
    {
      v31 = &v46[32 * v43 + 4 * v44];
      v33 = *v31;
      v34 = v31[1];
      v32 = v31 + 2;
      v35 = v31 + 16;
      v31 += 18;
      v36 = *v32;
      v37 = v32[1];
      v38 = *v35;
      v39 = v35[1];
      v40 = *v31;
      v41 = v31[1];
      *v25 = v33;
      v25[1] = v34;
      v25[2] = v36;
      v25[3] = v37;
      v25[4] = v38;
      v25[5] = v39;
      v25[6] = v40;
      v25[7] = v41;
      v25 += 8;
      v42 = 127;
    }

    *v26++ = v42;
    v28 += 2;
    v29 -= 2;
  }

  while (v29);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 2 * *(a1 + 76);
      v6 = &v25[16 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6->i8[v12] = v8->i8[v12];
            ++v12;
          }

          while (v9 > v12);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else if (v8 < &v25[16 * v2 - 16 + 16 * v4 + v9 / 0x10 + v5] && v6 < (v8 + v7 * (v2 - 1) + v9) || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6->i8[v16] = v8->i8[v16];
            ++v16;
          }

          while (v9 > v16);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[16 * v4 + 1 + v5];
        v19 = v8 + 1;
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            v21[-1] = v20[-1];
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 16;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v46, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = 2 * *(a1 + 76);
      v7 = &v46[16 * v5 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 32 * v4;
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v3; ++i)
        {
          v13 = 0;
          do
          {
            v7->i8[v13] = v9->i8[v13];
            ++v13;
          }

          while (v10 > v13);
          v7 += 16;
          v9 = (v9 + v8);
        }
      }

      else
      {
        result = v10 + v6 * 16;
        if (v9 < &v46[16 * v3 - 16 + 16 * v5 + v10 / 0x10 + v6] && v7 < (v9 + v8 * (v3 - 1) + v10) || v8 < 0)
        {
          for (j = 0; j != v3; ++j)
          {
            v17 = 0;
            do
            {
              v7->i8[v17] = v9->i8[v17];
              ++v17;
            }

            while (v10 > v17);
            v7 += 16;
            v9 = (v9 + v8);
          }
        }

        else
        {
          v18 = 0;
          v19 = &v46[16 * v5 + 1 + v6];
          v20 = v9 + 1;
          do
          {
            v21 = v20;
            v22 = v19;
            v23 = v10;
            do
            {
              v24 = *v21;
              v22[-1] = v21[-1];
              *v22 = v24;
              v22 += 2;
              v21 += 2;
              v23 -= 32;
            }

            while (v23);
            ++v18;
            v19 += 16;
            v20 = (v20 + v8);
          }

          while (v18 != v3);
        }
      }
    }
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  v27 = *(a1 + 88);
  v28 = &byte_29D2F30E1;
  v29 = 16;
  v30 = *(a1 + 89);
  do
  {
    v43 = *v28;
    v44 = *(v28 - 1);
    if (v27 <= 2 * v44 || 2 * v43 >= v30)
    {
      v42 = 0;
    }

    else
    {
      v31 = &v46[32 * v43 + 4 * v44];
      v33 = *v31;
      v34 = v31[1];
      v32 = v31 + 2;
      v35 = v31 + 16;
      v31 += 18;
      v36 = *v32;
      v37 = v32[1];
      v38 = *v35;
      v39 = v35[1];
      v40 = *v31;
      v41 = v31[1];
      *v25 = v33;
      v25[1] = v34;
      v25[2] = v36;
      v25[3] = v37;
      v25[4] = v38;
      v25[5] = v39;
      v25[6] = v40;
      v25[7] = v41;
      v25 += 8;
      v42 = 127;
    }

    *v26++ = v42;
    v28 += 2;
    v29 -= 2;
  }

  while (v29);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 2 * *(a1 + 76);
      v6 = &v25[16 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6->i8[v12] = v8->i8[v12];
            ++v12;
          }

          while (v9 > v12);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else if (v8 < &v25[16 * v2 - 16 + 16 * v4 + v9 / 0x10 + v5] && v6 < (v8 + v7 * (v2 - 1) + v9) || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6->i8[v16] = v8->i8[v16];
            ++v16;
          }

          while (v9 > v16);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[16 * v4 + 1 + v5];
        v19 = v8 + 1;
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            v21[-1] = v20[-1];
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 16;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v46, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = 32 * *(a1 + 76);
      v7 = &v46[256 * v5 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 32 * v4;
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v3; ++i)
        {
          v13 = 0;
          do
          {
            v7[v13] = *(v9 + v13);
            ++v13;
          }

          while (v10 > v13);
          v7 += 256;
          v9 += v8;
        }
      }

      else
      {
        result = v10 + v6;
        if (v9 < &v46[256 * v3 - 256 + 256 * v5 + v10 + v6] && v7 < v9 + v8 * (v3 - 1) + v10 || v8 < 0)
        {
          for (j = 0; j != v3; ++j)
          {
            v17 = 0;
            do
            {
              v7[v17] = *(v9 + v17);
              ++v17;
            }

            while (v10 > v17);
            v7 += 256;
            v9 += v8;
          }
        }

        else
        {
          v18 = 0;
          v19 = &v46[256 * v5 + 16 + v6];
          v20 = (v9 + 16);
          do
          {
            v21 = v20;
            v22 = v19;
            v23 = v10;
            do
            {
              v24 = *v21;
              *(v22 - 1) = *(v21 - 1);
              *v22 = v24;
              v22 += 2;
              v21 += 2;
              v23 -= 32;
            }

            while (v23);
            ++v18;
            v19 += 256;
            v20 = (v20 + v8);
          }

          while (v18 != v3);
        }
      }
    }
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  v27 = *(a1 + 88);
  v28 = &byte_29D2F30E1;
  v29 = 16;
  v30 = *(a1 + 89);
  do
  {
    v43 = *v28;
    v44 = *(v28 - 1);
    if (v27 <= 2 * v44 || 2 * v43 >= v30)
    {
      v42 = 0;
    }

    else
    {
      v31 = &v46[512 * v43 + 64 * v44];
      v33 = *v31;
      v34 = v31[1];
      v32 = v31 + 2;
      v35 = v31 + 16;
      v31 += 18;
      v36 = *v32;
      v37 = v32[1];
      v38 = *v35;
      v39 = v35[1];
      v40 = *v31;
      v41 = v31[1];
      *v25 = v33;
      v25[1] = v34;
      v25[2] = v36;
      v25[3] = v37;
      v25[4] = v38;
      v25[5] = v39;
      v25[6] = v40;
      v25[7] = v41;
      v25 += 8;
      v42 = 127;
    }

    *v26++ = v42;
    v28 += 2;
    v29 -= 2;
  }

  while (v29);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 32 * *(a1 + 76);
      v6 = &v25[256 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6[v12] = *(v8 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 256;
          v8 += v7;
        }
      }

      else if (v8 < &v25[256 * v2 - 256 + 256 * v4 + v9 + v5] && v6 < v8 + v7 * (v2 - 1) + v9 || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6[v16] = *(v8 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 256;
          v8 += v7;
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[256 * v4 + 16 + v5];
        v19 = (v8 + 16);
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 256;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v46, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = 32 * *(a1 + 76);
      v7 = &v46[256 * v5 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 32 * v4;
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v3; ++i)
        {
          v13 = 0;
          do
          {
            v7[v13] = *(v9 + v13);
            ++v13;
          }

          while (v10 > v13);
          v7 += 256;
          v9 += v8;
        }
      }

      else
      {
        result = v10 + v6;
        if (v9 < &v46[256 * v3 - 256 + 256 * v5 + v10 + v6] && v7 < v9 + v8 * (v3 - 1) + v10 || v8 < 0)
        {
          for (j = 0; j != v3; ++j)
          {
            v17 = 0;
            do
            {
              v7[v17] = *(v9 + v17);
              ++v17;
            }

            while (v10 > v17);
            v7 += 256;
            v9 += v8;
          }
        }

        else
        {
          v18 = 0;
          v19 = &v46[256 * v5 + 16 + v6];
          v20 = (v9 + 16);
          do
          {
            v21 = v20;
            v22 = v19;
            v23 = v10;
            do
            {
              v24 = *v21;
              *(v22 - 1) = *(v21 - 1);
              *v22 = v24;
              v22 += 2;
              v21 += 2;
              v23 -= 32;
            }

            while (v23);
            ++v18;
            v19 += 256;
            v20 = (v20 + v8);
          }

          while (v18 != v3);
        }
      }
    }
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  v27 = *(a1 + 88);
  v28 = &byte_29D2F30E1;
  v29 = 16;
  v30 = *(a1 + 89);
  do
  {
    v43 = *v28;
    v44 = *(v28 - 1);
    if (v27 <= 2 * v44 || 2 * v43 >= v30)
    {
      v42 = 0;
    }

    else
    {
      v31 = &v46[512 * v43 + 64 * v44];
      v33 = *v31;
      v34 = v31[1];
      v32 = v31 + 2;
      v35 = v31 + 16;
      v31 += 18;
      v36 = *v32;
      v37 = v32[1];
      v38 = *v35;
      v39 = v35[1];
      v40 = *v31;
      v41 = v31[1];
      *v25 = v33;
      v25[1] = v34;
      v25[2] = v36;
      v25[3] = v37;
      v25[4] = v38;
      v25[5] = v39;
      v25[6] = v40;
      v25[7] = v41;
      v25 += 8;
      v42 = 127;
    }

    *v26++ = v42;
    v28 += 2;
    v29 -= 2;
  }

  while (v29);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 32 * *(a1 + 76);
      v6 = &v25[256 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6[v12] = *(v8 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 256;
          v8 += v7;
        }
      }

      else if (v8 < &v25[256 * v2 - 256 + 256 * v4 + v9 + v5] && v6 < v8 + v7 * (v2 - 1) + v9 || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6[v16] = *(v8 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 256;
          v8 += v7;
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[256 * v4 + 16 + v5];
        v19 = (v8 + 16);
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 256;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v49, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 16 * *(a1 + 76);
      v8 = &v49[8 * v5 + v7 / 0x10];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 16 * *(a1 + 84);
      result = (v11 - 1) >> 32;
      if (result)
      {
        v12 = 1;
      }

      else
      {
        v12 = 16 * v4 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v3; ++i)
        {
          v14 = 0;
          do
          {
            v8->i8[v14] = v10->i8[v14];
            ++v14;
          }

          while (v11 > v14);
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v49[8 * v3 - 8 + 8 * v5 + v11 / 0x10 + v7 / 0x10] && v8 < &v10->i8[v9 * (v3 - 1) + v11] || v9 < 0)
        {
          for (j = 0; j != v3; ++j)
          {
            v18 = 0;
            do
            {
              v8->i8[v18] = v10->i8[v18];
              ++v18;
            }

            while (v11 > v18);
            v8 += 8;
            v10 = (v10 + v9);
          }
        }

        else if (v4 == 1)
        {
          do
          {
            *v8 = *v10;
            v8 += 8;
            v10 = (v10 + v9);
            --v3;
          }

          while (v3);
        }

        else
        {
          v33 = 0;
          v34 = &v49[0].i8[v6 + v7];
          v35 = &v49[1].i8[v6 + v7];
          v36 = v10 + 1;
          v37 = &v10->i8[v11 & 0x1FFFFFFE0];
          result = &v34[v11 & 0x1FFFFFFE0];
          do
          {
            v38 = v36;
            v39 = v35;
            v40 = v11 & 0x1FFFFFFE0;
            do
            {
              v41 = *v38;
              *(v39 - 1) = v38[-1];
              *v39 = v41;
              v39 += 32;
              v38 += 2;
              v40 -= 32;
            }

            while (v40);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v42 = result;
              v43 = v37;
              v44 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v48 = *v43;
                  v43 += 16;
                  *v42++ = v48;
                  v44 -= 16;
                }

                while (v44);
              }

              else
              {
                v45 = 0;
                v46 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v45) = v37[v45];
                  v47 = v11 > v46++;
                  ++v45;
                }

                while (v47);
              }
            }

            ++v33;
            v35 += 128;
            v36 = (v36 + v9);
            v37 += v9;
            result += 128;
          }

          while (v33 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F30E1;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v30 = *v22;
    v31 = *(v22 - 1);
    if (v21 <= 2 * v31 || 2 * v30 >= v24)
    {
      v29 = 0;
    }

    else
    {
      v25 = &v49[16 * v30 + 2 * v31];
      v26 = v25[1];
      v27 = v25[8];
      v28 = v25[9];
      *v19 = *v25;
      v19[1] = v26;
      v19[2] = v27;
      v19[3] = v28;
      v19 += 4;
      v29 = 63;
    }

    *v20++ = v29;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = *(a1 + 76);
      v7 = &v36[8 * v4 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 16 * *(a1 + 84);
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = 16 * v3 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v2; ++i)
        {
          v13 = 0;
          do
          {
            v7->i8[v13] = v9->i8[v13];
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[8 * v2 - 8 + 8 * v4 + v10 / 0x10 + v6] && v7 < &v9->i8[v8 * (v2 - 1) + v10] || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            v7->i8[v17] = v9->i8[v17];
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = &v36[0].i8[v5 + v6 * 16];
        v21 = &v36[1].i8[v5 + v6 * 16];
        v22 = v9 + 1;
        v23 = &v9->i8[v10 & 0x1FFFFFFE0];
        v24 = &v20[v10 & 0x1FFFFFFE0];
        do
        {
          v25 = v22;
          v26 = v21;
          v27 = v10 & 0x1FFFFFFE0;
          do
          {
            v28 = *v25;
            *(v26 - 1) = v25[-1];
            *v26 = v28;
            v26 += 32;
            v25 += 2;
            v27 -= 32;
          }

          while (v27);
          if (v10 != (v10 & 0x1FFFFFFE0))
          {
            v29 = v24;
            v30 = v23;
            v31 = v10 - (v10 & 0x1FFFFFFE0);
            if (v3)
            {
              do
              {
                v35 = *v30;
                v30 += 16;
                *v29 = v35;
                v29 += 16;
                v31 -= 16;
              }

              while (v31);
            }

            else
            {
              v32 = 0;
              v33 = (v10 & 0xFFFFFFE0) + 1;
              do
              {
                v24[v32] = v23[v32];
                v34 = v10 > v33++;
                ++v32;
              }

              while (v34);
            }
          }

          ++v19;
          v21 += 128;
          v22 = (v22 + v8);
          v23 += v8;
          v24 += 128;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v49, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 16 * *(a1 + 76);
      v8 = &v49[8 * v5 + v7 / 0x10];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 16 * *(a1 + 84);
      result = (v11 - 1) >> 32;
      if (result)
      {
        v12 = 1;
      }

      else
      {
        v12 = 16 * v4 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v3; ++i)
        {
          v14 = 0;
          do
          {
            v8->i8[v14] = v10->i8[v14];
            ++v14;
          }

          while (v11 > v14);
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v49[8 * v3 - 8 + 8 * v5 + v11 / 0x10 + v7 / 0x10] && v8 < &v10->i8[v9 * (v3 - 1) + v11] || v9 < 0)
        {
          for (j = 0; j != v3; ++j)
          {
            v18 = 0;
            do
            {
              v8->i8[v18] = v10->i8[v18];
              ++v18;
            }

            while (v11 > v18);
            v8 += 8;
            v10 = (v10 + v9);
          }
        }

        else if (v4 == 1)
        {
          do
          {
            *v8 = *v10;
            v8 += 8;
            v10 = (v10 + v9);
            --v3;
          }

          while (v3);
        }

        else
        {
          v33 = 0;
          v34 = &v49[0].i8[v6 + v7];
          v35 = &v49[1].i8[v6 + v7];
          v36 = v10 + 1;
          v37 = &v10->i8[v11 & 0x1FFFFFFE0];
          result = &v34[v11 & 0x1FFFFFFE0];
          do
          {
            v38 = v36;
            v39 = v35;
            v40 = v11 & 0x1FFFFFFE0;
            do
            {
              v41 = *v38;
              *(v39 - 1) = v38[-1];
              *v39 = v41;
              v39 += 32;
              v38 += 2;
              v40 -= 32;
            }

            while (v40);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v42 = result;
              v43 = v37;
              v44 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v48 = *v43;
                  v43 += 16;
                  *v42++ = v48;
                  v44 -= 16;
                }

                while (v44);
              }

              else
              {
                v45 = 0;
                v46 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v45) = v37[v45];
                  v47 = v11 > v46++;
                  ++v45;
                }

                while (v47);
              }
            }

            ++v33;
            v35 += 128;
            v36 = (v36 + v9);
            v37 += v9;
            result += 128;
          }

          while (v33 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F30E1;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v30 = *v22;
    v31 = *(v22 - 1);
    if (v21 <= 2 * v31 || 2 * v30 >= v24)
    {
      v29 = 0;
    }

    else
    {
      v25 = &v49[16 * v30 + 2 * v31];
      v26 = v25[1];
      v27 = v25[8];
      v28 = v25[9];
      *v19 = *v25;
      v19[1] = v26;
      v19[2] = v27;
      v19[3] = v28;
      v19 += 4;
      v29 = 63;
    }

    *v20++ = v29;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = *(a1 + 76);
      v7 = &v36[8 * v4 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 16 * *(a1 + 84);
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = 16 * v3 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v2; ++i)
        {
          v13 = 0;
          do
          {
            v7->i8[v13] = v9->i8[v13];
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[8 * v2 - 8 + 8 * v4 + v10 / 0x10 + v6] && v7 < &v9->i8[v8 * (v2 - 1) + v10] || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            v7->i8[v17] = v9->i8[v17];
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = &v36[0].i8[v5 + v6 * 16];
        v21 = &v36[1].i8[v5 + v6 * 16];
        v22 = v9 + 1;
        v23 = &v9->i8[v10 & 0x1FFFFFFE0];
        v24 = &v20[v10 & 0x1FFFFFFE0];
        do
        {
          v25 = v22;
          v26 = v21;
          v27 = v10 & 0x1FFFFFFE0;
          do
          {
            v28 = *v25;
            *(v26 - 1) = v25[-1];
            *v26 = v28;
            v26 += 32;
            v25 += 2;
            v27 -= 32;
          }

          while (v27);
          if (v10 != (v10 & 0x1FFFFFFE0))
          {
            v29 = v24;
            v30 = v23;
            v31 = v10 - (v10 & 0x1FFFFFFE0);
            if (v3)
            {
              do
              {
                v35 = *v30;
                v30 += 16;
                *v29 = v35;
                v29 += 16;
                v31 -= 16;
              }

              while (v31);
            }

            else
            {
              v32 = 0;
              v33 = (v10 & 0xFFFFFFE0) + 1;
              do
              {
                v24[v32] = v23[v32];
                v34 = v10 > v33++;
                ++v32;
              }

              while (v34);
            }
          }

          ++v19;
          v21 += 128;
          v22 = (v22 + v8);
          v23 += v8;
          v24 += 128;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v49, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 16 * *(a1 + 76);
      v8 = &v49[8 * v5 + v7 / 0x10];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 16 * *(a1 + 84);
      result = (v11 - 1) >> 32;
      if (result)
      {
        v12 = 1;
      }

      else
      {
        v12 = 16 * v4 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v3; ++i)
        {
          v14 = 0;
          do
          {
            v8->i8[v14] = v10->i8[v14];
            ++v14;
          }

          while (v11 > v14);
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v49[8 * v3 - 8 + 8 * v5 + v11 / 0x10 + v7 / 0x10] && v8 < &v10->i8[v9 * (v3 - 1) + v11] || v9 < 0)
        {
          for (j = 0; j != v3; ++j)
          {
            v18 = 0;
            do
            {
              v8->i8[v18] = v10->i8[v18];
              ++v18;
            }

            while (v11 > v18);
            v8 += 8;
            v10 = (v10 + v9);
          }
        }

        else if (v4 == 1)
        {
          do
          {
            *v8 = *v10;
            v8 += 8;
            v10 = (v10 + v9);
            --v3;
          }

          while (v3);
        }

        else
        {
          v33 = 0;
          v34 = &v49[0].i8[v6 + v7];
          v35 = &v49[1].i8[v6 + v7];
          v36 = v10 + 1;
          v37 = &v10->i8[v11 & 0x1FFFFFFE0];
          result = &v34[v11 & 0x1FFFFFFE0];
          do
          {
            v38 = v36;
            v39 = v35;
            v40 = v11 & 0x1FFFFFFE0;
            do
            {
              v41 = *v38;
              *(v39 - 1) = v38[-1];
              *v39 = v41;
              v39 += 32;
              v38 += 2;
              v40 -= 32;
            }

            while (v40);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v42 = result;
              v43 = v37;
              v44 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v48 = *v43;
                  v43 += 16;
                  *v42++ = v48;
                  v44 -= 16;
                }

                while (v44);
              }

              else
              {
                v45 = 0;
                v46 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v45) = v37[v45];
                  v47 = v11 > v46++;
                  ++v45;
                }

                while (v47);
              }
            }

            ++v33;
            v35 += 128;
            v36 = (v36 + v9);
            v37 += v9;
            result += 128;
          }

          while (v33 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F30E1;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v30 = *v22;
    v31 = *(v22 - 1);
    if (v21 <= 2 * v31 || 2 * v30 >= v24)
    {
      v29 = 0;
    }

    else
    {
      v25 = &v49[16 * v30 + 2 * v31];
      v26 = v25[1];
      v27 = v25[8];
      v28 = v25[9];
      *v19 = *v25;
      v19[1] = v26;
      v19[2] = v27;
      v19[3] = v28;
      v19 += 4;
      v29 = 63;
    }

    *v20++ = v29;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = *(a1 + 76);
      v7 = &v36[8 * v4 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 16 * *(a1 + 84);
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = 16 * v3 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v2; ++i)
        {
          v13 = 0;
          do
          {
            v7->i8[v13] = v9->i8[v13];
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[8 * v2 - 8 + 8 * v4 + v10 / 0x10 + v6] && v7 < &v9->i8[v8 * (v2 - 1) + v10] || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            v7->i8[v17] = v9->i8[v17];
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = &v36[0].i8[v5 + v6 * 16];
        v21 = &v36[1].i8[v5 + v6 * 16];
        v22 = v9 + 1;
        v23 = &v9->i8[v10 & 0x1FFFFFFE0];
        v24 = &v20[v10 & 0x1FFFFFFE0];
        do
        {
          v25 = v22;
          v26 = v21;
          v27 = v10 & 0x1FFFFFFE0;
          do
          {
            v28 = *v25;
            *(v26 - 1) = v25[-1];
            *v26 = v28;
            v26 += 32;
            v25 += 2;
            v27 -= 32;
          }

          while (v27);
          if (v10 != (v10 & 0x1FFFFFFE0))
          {
            v29 = v24;
            v30 = v23;
            v31 = v10 - (v10 & 0x1FFFFFFE0);
            if (v3)
            {
              do
              {
                v35 = *v30;
                v30 += 16;
                *v29 = v35;
                v29 += 16;
                v31 -= 16;
              }

              while (v31);
            }

            else
            {
              v32 = 0;
              v33 = (v10 & 0xFFFFFFE0) + 1;
              do
              {
                v24[v32] = v23[v32];
                v34 = v10 > v33++;
                ++v32;
              }

              while (v34);
            }
          }

          ++v19;
          v21 += 128;
          v22 = (v22 + v8);
          v23 += v8;
          v24 += 128;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v49, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 16 * *(a1 + 76);
      v8 = &v49[8 * v5 + v7 / 0x10];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 16 * *(a1 + 84);
      result = (v11 - 1) >> 32;
      if (result)
      {
        v12 = 1;
      }

      else
      {
        v12 = 16 * v4 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v3; ++i)
        {
          v14 = 0;
          do
          {
            v8->i8[v14] = v10->i8[v14];
            ++v14;
          }

          while (v11 > v14);
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v49[8 * v3 - 8 + 8 * v5 + v11 / 0x10 + v7 / 0x10] && v8 < &v10->i8[v9 * (v3 - 1) + v11] || v9 < 0)
        {
          for (j = 0; j != v3; ++j)
          {
            v18 = 0;
            do
            {
              v8->i8[v18] = v10->i8[v18];
              ++v18;
            }

            while (v11 > v18);
            v8 += 8;
            v10 = (v10 + v9);
          }
        }

        else if (v4 == 1)
        {
          do
          {
            *v8 = *v10;
            v8 += 8;
            v10 = (v10 + v9);
            --v3;
          }

          while (v3);
        }

        else
        {
          v33 = 0;
          v34 = &v49[0].i8[v6 + v7];
          v35 = &v49[1].i8[v6 + v7];
          v36 = v10 + 1;
          v37 = &v10->i8[v11 & 0x1FFFFFFE0];
          result = &v34[v11 & 0x1FFFFFFE0];
          do
          {
            v38 = v36;
            v39 = v35;
            v40 = v11 & 0x1FFFFFFE0;
            do
            {
              v41 = *v38;
              *(v39 - 1) = v38[-1];
              *v39 = v41;
              v39 += 32;
              v38 += 2;
              v40 -= 32;
            }

            while (v40);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v42 = result;
              v43 = v37;
              v44 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v48 = *v43;
                  v43 += 16;
                  *v42++ = v48;
                  v44 -= 16;
                }

                while (v44);
              }

              else
              {
                v45 = 0;
                v46 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v45) = v37[v45];
                  v47 = v11 > v46++;
                  ++v45;
                }

                while (v47);
              }
            }

            ++v33;
            v35 += 128;
            v36 = (v36 + v9);
            v37 += v9;
            result += 128;
          }

          while (v33 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F30E1;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v30 = *v22;
    v31 = *(v22 - 1);
    if (v21 <= 2 * v31 || 2 * v30 >= v24)
    {
      v29 = 0;
    }

    else
    {
      v25 = &v49[16 * v30 + 2 * v31];
      v26 = v25[1];
      v27 = v25[8];
      v28 = v25[9];
      *v19 = *v25;
      v19[1] = v26;
      v19[2] = v27;
      v19[3] = v28;
      v19 += 4;
      v29 = 63;
    }

    *v20++ = v29;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = *(a1 + 76);
      v7 = &v36[8 * v4 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 16 * *(a1 + 84);
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = 16 * v3 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v2; ++i)
        {
          v13 = 0;
          do
          {
            v7->i8[v13] = v9->i8[v13];
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[8 * v2 - 8 + 8 * v4 + v10 / 0x10 + v6] && v7 < &v9->i8[v8 * (v2 - 1) + v10] || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            v7->i8[v17] = v9->i8[v17];
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = &v36[0].i8[v5 + v6 * 16];
        v21 = &v36[1].i8[v5 + v6 * 16];
        v22 = v9 + 1;
        v23 = &v9->i8[v10 & 0x1FFFFFFE0];
        v24 = &v20[v10 & 0x1FFFFFFE0];
        do
        {
          v25 = v22;
          v26 = v21;
          v27 = v10 & 0x1FFFFFFE0;
          do
          {
            v28 = *v25;
            *(v26 - 1) = v25[-1];
            *v26 = v28;
            v26 += 32;
            v25 += 2;
            v27 -= 32;
          }

          while (v27);
          if (v10 != (v10 & 0x1FFFFFFE0))
          {
            v29 = v24;
            v30 = v23;
            v31 = v10 - (v10 & 0x1FFFFFFE0);
            if (v3)
            {
              do
              {
                v35 = *v30;
                v30 += 16;
                *v29 = v35;
                v29 += 16;
                v31 -= 16;
              }

              while (v31);
            }

            else
            {
              v32 = 0;
              v33 = (v10 & 0xFFFFFFE0) + 1;
              do
              {
                v24[v32] = v23[v32];
                v34 = v10 > v33++;
                ++v32;
              }

              while (v34);
            }
          }

          ++v19;
          v21 += 128;
          v22 = (v22 + v8);
          v23 += v8;
          v24 += 128;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v49, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 16 * *(a1 + 76);
      v8 = &v49[8 * v5 + v7 / 0x10];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 16 * *(a1 + 84);
      result = (v11 - 1) >> 32;
      if (result)
      {
        v12 = 1;
      }

      else
      {
        v12 = 16 * v4 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v3; ++i)
        {
          v14 = 0;
          do
          {
            v8->i8[v14] = v10->i8[v14];
            ++v14;
          }

          while (v11 > v14);
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v49[8 * v3 - 8 + 8 * v5 + v11 / 0x10 + v7 / 0x10] && v8 < &v10->i8[v9 * (v3 - 1) + v11] || v9 < 0)
        {
          for (j = 0; j != v3; ++j)
          {
            v18 = 0;
            do
            {
              v8->i8[v18] = v10->i8[v18];
              ++v18;
            }

            while (v11 > v18);
            v8 += 8;
            v10 = (v10 + v9);
          }
        }

        else if (v4 == 1)
        {
          do
          {
            *v8 = *v10;
            v8 += 8;
            v10 = (v10 + v9);
            --v3;
          }

          while (v3);
        }

        else
        {
          v33 = 0;
          v34 = &v49[0].i8[v6 + v7];
          v35 = &v49[1].i8[v6 + v7];
          v36 = v10 + 1;
          v37 = &v10->i8[v11 & 0x1FFFFFFE0];
          result = &v34[v11 & 0x1FFFFFFE0];
          do
          {
            v38 = v36;
            v39 = v35;
            v40 = v11 & 0x1FFFFFFE0;
            do
            {
              v41 = *v38;
              *(v39 - 1) = v38[-1];
              *v39 = v41;
              v39 += 32;
              v38 += 2;
              v40 -= 32;
            }

            while (v40);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v42 = result;
              v43 = v37;
              v44 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v48 = *v43;
                  v43 += 16;
                  *v42++ = v48;
                  v44 -= 16;
                }

                while (v44);
              }

              else
              {
                v45 = 0;
                v46 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v45) = v37[v45];
                  v47 = v11 > v46++;
                  ++v45;
                }

                while (v47);
              }
            }

            ++v33;
            v35 += 128;
            v36 = (v36 + v9);
            v37 += v9;
            result += 128;
          }

          while (v33 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F30E1;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v30 = *v22;
    v31 = *(v22 - 1);
    if (v21 <= 2 * v31 || 2 * v30 >= v24)
    {
      v29 = 0;
    }

    else
    {
      v25 = &v49[16 * v30 + 2 * v31];
      v26 = v25[1];
      v27 = v25[8];
      v28 = v25[9];
      *v19 = *v25;
      v19[1] = v26;
      v19[2] = v27;
      v19[3] = v28;
      v19 += 4;
      v29 = 63;
    }

    *v20++ = v29;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = *(a1 + 76);
      v7 = &v36[8 * v4 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 16 * *(a1 + 84);
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = 16 * v3 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v2; ++i)
        {
          v13 = 0;
          do
          {
            v7->i8[v13] = v9->i8[v13];
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[8 * v2 - 8 + 8 * v4 + v10 / 0x10 + v6] && v7 < &v9->i8[v8 * (v2 - 1) + v10] || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            v7->i8[v17] = v9->i8[v17];
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = &v36[0].i8[v5 + v6 * 16];
        v21 = &v36[1].i8[v5 + v6 * 16];
        v22 = v9 + 1;
        v23 = &v9->i8[v10 & 0x1FFFFFFE0];
        v24 = &v20[v10 & 0x1FFFFFFE0];
        do
        {
          v25 = v22;
          v26 = v21;
          v27 = v10 & 0x1FFFFFFE0;
          do
          {
            v28 = *v25;
            *(v26 - 1) = v25[-1];
            *v26 = v28;
            v26 += 32;
            v25 += 2;
            v27 -= 32;
          }

          while (v27);
          if (v10 != (v10 & 0x1FFFFFFE0))
          {
            v29 = v24;
            v30 = v23;
            v31 = v10 - (v10 & 0x1FFFFFFE0);
            if (v3)
            {
              do
              {
                v35 = *v30;
                v30 += 16;
                *v29 = v35;
                v29 += 16;
                v31 -= 16;
              }

              while (v31);
            }

            else
            {
              v32 = 0;
              v33 = (v10 & 0xFFFFFFE0) + 1;
              do
              {
                v24[v32] = v23[v32];
                v34 = v10 > v33++;
                ++v32;
              }

              while (v34);
            }
          }

          ++v19;
          v21 += 128;
          v22 = (v22 + v8);
          v23 += v8;
          v24 += 128;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v49, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 16 * *(a1 + 76);
      v8 = &v49[8 * v5 + v7 / 0x10];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 16 * *(a1 + 84);
      result = (v11 - 1) >> 32;
      if (result)
      {
        v12 = 1;
      }

      else
      {
        v12 = 16 * v4 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v3; ++i)
        {
          v14 = 0;
          do
          {
            v8->i8[v14] = v10->i8[v14];
            ++v14;
          }

          while (v11 > v14);
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v49[8 * v3 - 8 + 8 * v5 + v11 / 0x10 + v7 / 0x10] && v8 < &v10->i8[v9 * (v3 - 1) + v11] || v9 < 0)
        {
          for (j = 0; j != v3; ++j)
          {
            v18 = 0;
            do
            {
              v8->i8[v18] = v10->i8[v18];
              ++v18;
            }

            while (v11 > v18);
            v8 += 8;
            v10 = (v10 + v9);
          }
        }

        else if (v4 == 1)
        {
          do
          {
            *v8 = *v10;
            v8 += 8;
            v10 = (v10 + v9);
            --v3;
          }

          while (v3);
        }

        else
        {
          v33 = 0;
          v34 = &v49[0].i8[v6 + v7];
          v35 = &v49[1].i8[v6 + v7];
          v36 = v10 + 1;
          v37 = &v10->i8[v11 & 0x1FFFFFFE0];
          result = &v34[v11 & 0x1FFFFFFE0];
          do
          {
            v38 = v36;
            v39 = v35;
            v40 = v11 & 0x1FFFFFFE0;
            do
            {
              v41 = *v38;
              *(v39 - 1) = v38[-1];
              *v39 = v41;
              v39 += 32;
              v38 += 2;
              v40 -= 32;
            }

            while (v40);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v42 = result;
              v43 = v37;
              v44 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v48 = *v43;
                  v43 += 16;
                  *v42++ = v48;
                  v44 -= 16;
                }

                while (v44);
              }

              else
              {
                v45 = 0;
                v46 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v45) = v37[v45];
                  v47 = v11 > v46++;
                  ++v45;
                }

                while (v47);
              }
            }

            ++v33;
            v35 += 128;
            v36 = (v36 + v9);
            v37 += v9;
            result += 128;
          }

          while (v33 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F30E1;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v30 = *v22;
    v31 = *(v22 - 1);
    if (v21 <= 2 * v31 || 2 * v30 >= v24)
    {
      v29 = 0;
    }

    else
    {
      v25 = &v49[16 * v30 + 2 * v31];
      v26 = v25[1];
      v27 = v25[8];
      v28 = v25[9];
      *v19 = *v25;
      v19[1] = v26;
      v19[2] = v27;
      v19[3] = v28;
      v19 += 4;
      v29 = 63;
    }

    *v20++ = v29;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = *(a1 + 76);
      v7 = &v36[8 * v4 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 16 * *(a1 + 84);
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = 16 * v3 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v2; ++i)
        {
          v13 = 0;
          do
          {
            v7->i8[v13] = v9->i8[v13];
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[8 * v2 - 8 + 8 * v4 + v10 / 0x10 + v6] && v7 < &v9->i8[v8 * (v2 - 1) + v10] || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            v7->i8[v17] = v9->i8[v17];
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = &v36[0].i8[v5 + v6 * 16];
        v21 = &v36[1].i8[v5 + v6 * 16];
        v22 = v9 + 1;
        v23 = &v9->i8[v10 & 0x1FFFFFFE0];
        v24 = &v20[v10 & 0x1FFFFFFE0];
        do
        {
          v25 = v22;
          v26 = v21;
          v27 = v10 & 0x1FFFFFFE0;
          do
          {
            v28 = *v25;
            *(v26 - 1) = v25[-1];
            *v26 = v28;
            v26 += 32;
            v25 += 2;
            v27 -= 32;
          }

          while (v27);
          if (v10 != (v10 & 0x1FFFFFFE0))
          {
            v29 = v24;
            v30 = v23;
            v31 = v10 - (v10 & 0x1FFFFFFE0);
            if (v3)
            {
              do
              {
                v35 = *v30;
                v30 += 16;
                *v29 = v35;
                v29 += 16;
                v31 -= 16;
              }

              while (v31);
            }

            else
            {
              v32 = 0;
              v33 = (v10 & 0xFFFFFFE0) + 1;
              do
              {
                v24[v32] = v23[v32];
                v34 = v10 > v33++;
                ++v32;
              }

              while (v34);
            }
          }

          ++v19;
          v21 += 128;
          v22 = (v22 + v8);
          v23 += v8;
          v24 += 128;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v49, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 16 * *(a1 + 76);
      v8 = &v49[8 * v5 + v7 / 0x10];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 16 * *(a1 + 84);
      result = (v11 - 1) >> 32;
      if (result)
      {
        v12 = 1;
      }

      else
      {
        v12 = 16 * v4 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v3; ++i)
        {
          v14 = 0;
          do
          {
            v8->i8[v14] = v10->i8[v14];
            ++v14;
          }

          while (v11 > v14);
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v49[8 * v3 - 8 + 8 * v5 + v11 / 0x10 + v7 / 0x10] && v8 < &v10->i8[v9 * (v3 - 1) + v11] || v9 < 0)
        {
          for (j = 0; j != v3; ++j)
          {
            v18 = 0;
            do
            {
              v8->i8[v18] = v10->i8[v18];
              ++v18;
            }

            while (v11 > v18);
            v8 += 8;
            v10 = (v10 + v9);
          }
        }

        else if (v4 == 1)
        {
          do
          {
            *v8 = *v10;
            v8 += 8;
            v10 = (v10 + v9);
            --v3;
          }

          while (v3);
        }

        else
        {
          v33 = 0;
          v34 = &v49[0].i8[v6 + v7];
          v35 = &v49[1].i8[v6 + v7];
          v36 = v10 + 1;
          v37 = &v10->i8[v11 & 0x1FFFFFFE0];
          result = &v34[v11 & 0x1FFFFFFE0];
          do
          {
            v38 = v36;
            v39 = v35;
            v40 = v11 & 0x1FFFFFFE0;
            do
            {
              v41 = *v38;
              *(v39 - 1) = v38[-1];
              *v39 = v41;
              v39 += 32;
              v38 += 2;
              v40 -= 32;
            }

            while (v40);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v42 = result;
              v43 = v37;
              v44 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v48 = *v43;
                  v43 += 16;
                  *v42++ = v48;
                  v44 -= 16;
                }

                while (v44);
              }

              else
              {
                v45 = 0;
                v46 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v45) = v37[v45];
                  v47 = v11 > v46++;
                  ++v45;
                }

                while (v47);
              }
            }

            ++v33;
            v35 += 128;
            v36 = (v36 + v9);
            v37 += v9;
            result += 128;
          }

          while (v33 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F30E1;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v30 = *v22;
    v31 = *(v22 - 1);
    if (v21 <= 2 * v31 || 2 * v30 >= v24)
    {
      v29 = 0;
    }

    else
    {
      v25 = &v49[16 * v30 + 2 * v31];
      v26 = v25[1];
      v27 = v25[8];
      v28 = v25[9];
      *v19 = *v25;
      v19[1] = v26;
      v19[2] = v27;
      v19[3] = v28;
      v19 += 4;
      v29 = 63;
    }

    *v20++ = v29;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = *(a1 + 76);
      v7 = &v36[8 * v4 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 16 * *(a1 + 84);
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = 16 * v3 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v2; ++i)
        {
          v13 = 0;
          do
          {
            v7->i8[v13] = v9->i8[v13];
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[8 * v2 - 8 + 8 * v4 + v10 / 0x10 + v6] && v7 < &v9->i8[v8 * (v2 - 1) + v10] || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            v7->i8[v17] = v9->i8[v17];
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = &v36[0].i8[v5 + v6 * 16];
        v21 = &v36[1].i8[v5 + v6 * 16];
        v22 = v9 + 1;
        v23 = &v9->i8[v10 & 0x1FFFFFFE0];
        v24 = &v20[v10 & 0x1FFFFFFE0];
        do
        {
          v25 = v22;
          v26 = v21;
          v27 = v10 & 0x1FFFFFFE0;
          do
          {
            v28 = *v25;
            *(v26 - 1) = v25[-1];
            *v26 = v28;
            v26 += 32;
            v25 += 2;
            v27 -= 32;
          }

          while (v27);
          if (v10 != (v10 & 0x1FFFFFFE0))
          {
            v29 = v24;
            v30 = v23;
            v31 = v10 - (v10 & 0x1FFFFFFE0);
            if (v3)
            {
              do
              {
                v35 = *v30;
                v30 += 16;
                *v29 = v35;
                v29 += 16;
                v31 -= 16;
              }

              while (v31);
            }

            else
            {
              v32 = 0;
              v33 = (v10 & 0xFFFFFFE0) + 1;
              do
              {
                v24[v32] = v23[v32];
                v34 = v10 > v33++;
                ++v32;
              }

              while (v34);
            }
          }

          ++v19;
          v21 += 128;
          v22 = (v22 + v8);
          v23 += v8;
          v24 += 128;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v49, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 16 * *(a1 + 76);
      v8 = &v49[8 * v5 + v7 / 0x10];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 16 * *(a1 + 84);
      result = (v11 - 1) >> 32;
      if (result)
      {
        v12 = 1;
      }

      else
      {
        v12 = 16 * v4 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v3; ++i)
        {
          v14 = 0;
          do
          {
            v8->i8[v14] = v10->i8[v14];
            ++v14;
          }

          while (v11 > v14);
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v49[8 * v3 - 8 + 8 * v5 + v11 / 0x10 + v7 / 0x10] && v8 < &v10->i8[v9 * (v3 - 1) + v11] || v9 < 0)
        {
          for (j = 0; j != v3; ++j)
          {
            v18 = 0;
            do
            {
              v8->i8[v18] = v10->i8[v18];
              ++v18;
            }

            while (v11 > v18);
            v8 += 8;
            v10 = (v10 + v9);
          }
        }

        else if (v4 == 1)
        {
          do
          {
            *v8 = *v10;
            v8 += 8;
            v10 = (v10 + v9);
            --v3;
          }

          while (v3);
        }

        else
        {
          v33 = 0;
          v34 = &v49[0].i8[v6 + v7];
          v35 = &v49[1].i8[v6 + v7];
          v36 = v10 + 1;
          v37 = &v10->i8[v11 & 0x1FFFFFFE0];
          result = &v34[v11 & 0x1FFFFFFE0];
          do
          {
            v38 = v36;
            v39 = v35;
            v40 = v11 & 0x1FFFFFFE0;
            do
            {
              v41 = *v38;
              *(v39 - 1) = v38[-1];
              *v39 = v41;
              v39 += 32;
              v38 += 2;
              v40 -= 32;
            }

            while (v40);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v42 = result;
              v43 = v37;
              v44 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v48 = *v43;
                  v43 += 16;
                  *v42++ = v48;
                  v44 -= 16;
                }

                while (v44);
              }

              else
              {
                v45 = 0;
                v46 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v45) = v37[v45];
                  v47 = v11 > v46++;
                  ++v45;
                }

                while (v47);
              }
            }

            ++v33;
            v35 += 128;
            v36 = (v36 + v9);
            v37 += v9;
            result += 128;
          }

          while (v33 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F30E1;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v30 = *v22;
    v31 = *(v22 - 1);
    if (v21 <= 2 * v31 || 2 * v30 >= v24)
    {
      v29 = 0;
    }

    else
    {
      v25 = &v49[16 * v30 + 2 * v31];
      v26 = v25[1];
      v27 = v25[8];
      v28 = v25[9];
      *v19 = *v25;
      v19[1] = v26;
      v19[2] = v27;
      v19[3] = v28;
      v19 += 4;
      v29 = 63;
    }

    *v20++ = v29;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = *(a1 + 76);
      v7 = &v36[8 * v4 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 16 * *(a1 + 84);
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = 16 * v3 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v2; ++i)
        {
          v13 = 0;
          do
          {
            v7->i8[v13] = v9->i8[v13];
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[8 * v2 - 8 + 8 * v4 + v10 / 0x10 + v6] && v7 < &v9->i8[v8 * (v2 - 1) + v10] || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            v7->i8[v17] = v9->i8[v17];
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = &v36[0].i8[v5 + v6 * 16];
        v21 = &v36[1].i8[v5 + v6 * 16];
        v22 = v9 + 1;
        v23 = &v9->i8[v10 & 0x1FFFFFFE0];
        v24 = &v20[v10 & 0x1FFFFFFE0];
        do
        {
          v25 = v22;
          v26 = v21;
          v27 = v10 & 0x1FFFFFFE0;
          do
          {
            v28 = *v25;
            *(v26 - 1) = v25[-1];
            *v26 = v28;
            v26 += 32;
            v25 += 2;
            v27 -= 32;
          }

          while (v27);
          if (v10 != (v10 & 0x1FFFFFFE0))
          {
            v29 = v24;
            v30 = v23;
            v31 = v10 - (v10 & 0x1FFFFFFE0);
            if (v3)
            {
              do
              {
                v35 = *v30;
                v30 += 16;
                *v29 = v35;
                v29 += 16;
                v31 -= 16;
              }

              while (v31);
            }

            else
            {
              v32 = 0;
              v33 = (v10 & 0xFFFFFFE0) + 1;
              do
              {
                v24[v32] = v23[v32];
                v34 = v10 > v33++;
                ++v32;
              }

              while (v34);
            }
          }

          ++v19;
          v21 += 128;
          v22 = (v22 + v8);
          v23 += v8;
          v24 += 128;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = *(a1 + 76) << 6;
      v6 = &v25[32 * v4].i8[v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = v3 << 6;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6[v12] = *(v8 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 512;
          v8 += v7;
        }
      }

      else if (v8 < v25[32 * v2 - 32 + 32 * v4].u64 + v9 + v5 && v6 < v8 + v7 * (v2 - 1) + v9 || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6[v16] = *(v8 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 512;
          v8 += v7;
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[32 * v4 + 1].i8[v5];
        v19 = (v8 + 16);
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v21 += 32;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 512;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 512, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v27, *(a1 + 40), *(a1 + 48));
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = *(a1 + 76) << 6;
      v8 = &v27[32 * v6].i8[v7];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = v5 << 6;
      if ((v11 - 1) >> 32)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v4; ++i)
        {
          v14 = 0;
          do
          {
            v8[v14] = *(v10 + v14);
            ++v14;
          }

          while (v11 > v14);
          v8 += 512;
          v10 += v9;
        }
      }

      else if (v10 < v27[32 * v4 - 32 + 32 * v6].u64 + v11 + v7 && v8 < v10 + v9 * (v4 - 1) + v11 || v9 < 0)
      {
        for (j = 0; j != v4; ++j)
        {
          v18 = 0;
          do
          {
            v8[v18] = *(v10 + v18);
            ++v18;
          }

          while (v11 > v18);
          v8 += 512;
          v10 += v9;
        }
      }

      else
      {
        v19 = 0;
        v20 = &v27[32 * v6 + 1].i8[v7];
        v21 = (v10 + 16);
        do
        {
          v22 = v21;
          v23 = v20;
          v24 = v11;
          do
          {
            v25 = *v22;
            *(v23 - 1) = *(v22 - 1);
            *v23 = v25;
            v23 += 32;
            v22 += 2;
            v24 -= 32;
          }

          while (v24);
          ++v19;
          v20 += 512;
          v21 = (v21 + v9);
        }

        while (v19 != v4);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v27, 512, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), v2, v3);
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = *(a1 + 76) << 6;
      v6 = &v25[32 * v4].i8[v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = v3 << 6;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6[v12] = *(v8 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 512;
          v8 += v7;
        }
      }

      else if (v8 < v25[32 * v2 - 32 + 32 * v4].u64 + v9 + v5 && v6 < v8 + v7 * (v2 - 1) + v9 || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6[v16] = *(v8 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 512;
          v8 += v7;
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[32 * v4 + 1].i8[v5];
        v19 = (v8 + 16);
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v21 += 32;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 512;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 512, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v27, *(a1 + 40), *(a1 + 48));
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = *(a1 + 76) << 6;
      v8 = &v27[32 * v6].i8[v7];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = v5 << 6;
      if ((v11 - 1) >> 32)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v4; ++i)
        {
          v14 = 0;
          do
          {
            v8[v14] = *(v10 + v14);
            ++v14;
          }

          while (v11 > v14);
          v8 += 512;
          v10 += v9;
        }
      }

      else if (v10 < v27[32 * v4 - 32 + 32 * v6].u64 + v11 + v7 && v8 < v10 + v9 * (v4 - 1) + v11 || v9 < 0)
      {
        for (j = 0; j != v4; ++j)
        {
          v18 = 0;
          do
          {
            v8[v18] = *(v10 + v18);
            ++v18;
          }

          while (v11 > v18);
          v8 += 512;
          v10 += v9;
        }
      }

      else
      {
        v19 = 0;
        v20 = &v27[32 * v6 + 1].i8[v7];
        v21 = (v10 + 16);
        do
        {
          v22 = v21;
          v23 = v20;
          v24 = v11;
          do
          {
            v25 = *v22;
            *(v23 - 1) = *(v22 - 1);
            *v23 = v25;
            v23 += 32;
            v22 += 2;
            v24 -= 32;
          }

          while (v24);
          ++v19;
          v20 += 512;
          v21 = (v21 + v9);
        }

        while (v19 != v4);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v27, 512, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), v2, v3);
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30E1;
  v5 = 16;
  do
  {
    v8 = &v48[64 * *v4 + 8 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 64);
      v14 = *(v2 + 80);
      v15 = *(v2 + 96);
      v16 = *(v2 + 112);
      v17 = *(v2 + 128);
      v18 = *(v2 + 144);
      v19 = *(v2 + 160);
      v20 = *(v2 + 176);
      v21 = *(v2 + 192);
      v22 = *(v2 + 208);
      v23 = *(v2 + 224);
      v24 = *(v2 + 240);
      *v8 = *v2;
      v8[1] = v10;
      v8[2] = v11;
      v8[3] = v12;
      v8[4] = v13;
      v8[5] = v14;
      v8[6] = v15;
      v8[7] = v16;
      v8[32] = v17;
      v8[33] = v18;
      v8[34] = v19;
      v8[35] = v20;
      v7 = 256;
      v8[36] = v21;
      v8[37] = v22;
      v8[38] = v23;
      v8[39] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[2] = v6;
      v8[3] = v6;
      v8[4] = v6;
      v8[5] = v6;
      v8[6] = v6;
      v8[7] = v6;
      v8[32] = v6;
      v8[33] = v6;
      v8[34] = v6;
      v8[35] = v6;
      v8[36] = v6;
      v8[37] = v6;
      v8[38] = v6;
      v8[39] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 512, v2, v9);
    }

    else
    {
      v7 = 0;
      v8[6] = 0u;
      v8[7] = 0u;
      v8[4] = 0u;
      v8[5] = 0u;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      v8[32] = 0u;
      v8[33] = 0u;
      v8[34] = 0u;
      v8[35] = 0u;
      v8[36] = 0u;
      v8[37] = 0u;
      v8[38] = 0u;
      v8[39] = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v25 = *(a1 + 80);
  if (v25)
  {
    v26 = *(a1 + 84);
    if (v26)
    {
      v27 = *(a1 + 72);
      v28 = *(a1 + 76) << 6;
      v29 = &v48[32 * v27] + v28;
      v31 = *(a1 + 56);
      v30 = *(a1 + 64);
      v32 = v26 << 6;
      if ((v32 - 1) >> 32)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32 == 0;
      }

      if (v33)
      {
        for (i = 0; i != v25; ++i)
        {
          v35 = 0;
          do
          {
            v29[v35] = *(v31 + v35);
            ++v35;
          }

          while (v32 > v35);
          v29 += 512;
          v31 += v30;
        }
      }

      else if (v31 < &v48[32 * v25 - 32 + 32 * v27] + v32 + v28 && v29 < v31 + v30 * (v25 - 1) + v32 || v30 < 0)
      {
        for (j = 0; j != v25; ++j)
        {
          v39 = 0;
          do
          {
            v29[v39] = *(v31 + v39);
            ++v39;
          }

          while (v32 > v39);
          v29 += 512;
          v31 += v30;
        }
      }

      else
      {
        v40 = 0;
        v41 = &v48[32 * v27 + 1] + v28;
        v42 = (v31 + 16);
        do
        {
          v43 = v42;
          v44 = v41;
          v45 = v32;
          do
          {
            v46 = *v43;
            *(v44 - 1) = *(v43 - 1);
            *v44 = v46;
            v44 += 2;
            v43 += 2;
            v45 -= 32;
          }

          while (v45);
          ++v40;
          v41 += 512;
          v42 = (v42 + v30);
        }

        while (v40 != v25);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v48, 512, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30E1;
  v5 = 16;
  do
  {
    v8 = &v48[1024 * *v4 + 128 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 64);
      v14 = *(v2 + 80);
      v15 = *(v2 + 96);
      v16 = *(v2 + 112);
      v17 = *(v2 + 128);
      v18 = *(v2 + 144);
      v19 = *(v2 + 160);
      v20 = *(v2 + 176);
      v21 = *(v2 + 192);
      v22 = *(v2 + 208);
      v23 = *(v2 + 224);
      v24 = *(v2 + 240);
      *v8 = *v2;
      v8[1] = v10;
      v8[2] = v11;
      v8[3] = v12;
      v8[4] = v13;
      v8[5] = v14;
      v8[6] = v15;
      v8[7] = v16;
      v8[32] = v17;
      v8[33] = v18;
      v8[34] = v19;
      v8[35] = v20;
      v7 = 256;
      v8[36] = v21;
      v8[37] = v22;
      v8[38] = v23;
      v8[39] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[2] = v6;
      v8[3] = v6;
      v8[4] = v6;
      v8[5] = v6;
      v8[6] = v6;
      v8[7] = v6;
      v8[32] = v6;
      v8[33] = v6;
      v8[34] = v6;
      v8[35] = v6;
      v8[36] = v6;
      v8[37] = v6;
      v8[38] = v6;
      v8[39] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 512, v2, v9);
    }

    else
    {
      v7 = 0;
      v8[6] = 0u;
      v8[7] = 0u;
      v8[4] = 0u;
      v8[5] = 0u;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      v8[32] = 0u;
      v8[33] = 0u;
      v8[34] = 0u;
      v8[35] = 0u;
      v8[36] = 0u;
      v8[37] = 0u;
      v8[38] = 0u;
      v8[39] = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v25 = *(a1 + 80);
  if (v25)
  {
    v26 = *(a1 + 84);
    if (v26)
    {
      v27 = *(a1 + 72);
      v28 = *(a1 + 76) << 6;
      v29 = &v48[512 * v27 + v28];
      v31 = *(a1 + 56);
      v30 = *(a1 + 64);
      v32 = v26 << 6;
      if ((v32 - 1) >> 32)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32 == 0;
      }

      if (v33)
      {
        for (i = 0; i != v25; ++i)
        {
          v35 = 0;
          do
          {
            v29[v35] = *(v31 + v35);
            ++v35;
          }

          while (v32 > v35);
          v29 += 512;
          v31 += v30;
        }
      }

      else if (v31 < &v48[512 * v25 - 512 + 512 * v27 + v32 + v28] && v29 < v31 + v30 * (v25 - 1) + v32 || v30 < 0)
      {
        for (j = 0; j != v25; ++j)
        {
          v39 = 0;
          do
          {
            v29[v39] = *(v31 + v39);
            ++v39;
          }

          while (v32 > v39);
          v29 += 512;
          v31 += v30;
        }
      }

      else
      {
        v40 = 0;
        v41 = &v48[512 * v27 + 16 + v28];
        v42 = (v31 + 16);
        do
        {
          v43 = v42;
          v44 = v41;
          v45 = v32;
          do
          {
            v46 = *v43;
            *(v44 - 1) = *(v43 - 1);
            *v44 = v46;
            v44 += 2;
            v43 += 2;
            v45 -= 32;
          }

          while (v45);
          ++v40;
          v41 += 512;
          v42 = (v42 + v30);
        }

        while (v40 != v25);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v48, 512, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30E1;
  v5 = 16;
  do
  {
    v8 = &v48[64 * *v4 + 8 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 64);
      v14 = *(v2 + 80);
      v15 = *(v2 + 96);
      v16 = *(v2 + 112);
      v17 = *(v2 + 128);
      v18 = *(v2 + 144);
      v19 = *(v2 + 160);
      v20 = *(v2 + 176);
      v21 = *(v2 + 192);
      v22 = *(v2 + 208);
      v23 = *(v2 + 224);
      v24 = *(v2 + 240);
      *v8 = *v2;
      v8[1] = v10;
      v8[2] = v11;
      v8[3] = v12;
      v8[4] = v13;
      v8[5] = v14;
      v8[6] = v15;
      v8[7] = v16;
      v8[32] = v17;
      v8[33] = v18;
      v8[34] = v19;
      v8[35] = v20;
      v7 = 256;
      v8[36] = v21;
      v8[37] = v22;
      v8[38] = v23;
      v8[39] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[2] = v6;
      v8[3] = v6;
      v8[4] = v6;
      v8[5] = v6;
      v8[6] = v6;
      v8[7] = v6;
      v8[32] = v6;
      v8[33] = v6;
      v8[34] = v6;
      v8[35] = v6;
      v8[36] = v6;
      v8[37] = v6;
      v8[38] = v6;
      v8[39] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 512, v2, v9);
    }

    else
    {
      v7 = 0;
      v8[6] = 0u;
      v8[7] = 0u;
      v8[4] = 0u;
      v8[5] = 0u;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      v8[32] = 0u;
      v8[33] = 0u;
      v8[34] = 0u;
      v8[35] = 0u;
      v8[36] = 0u;
      v8[37] = 0u;
      v8[38] = 0u;
      v8[39] = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v25 = *(a1 + 80);
  if (v25)
  {
    v26 = *(a1 + 84);
    if (v26)
    {
      v27 = *(a1 + 72);
      v28 = *(a1 + 76) << 6;
      v29 = &v48[32 * v27] + v28;
      v31 = *(a1 + 56);
      v30 = *(a1 + 64);
      v32 = v26 << 6;
      if ((v32 - 1) >> 32)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32 == 0;
      }

      if (v33)
      {
        for (i = 0; i != v25; ++i)
        {
          v35 = 0;
          do
          {
            v29[v35] = *(v31 + v35);
            ++v35;
          }

          while (v32 > v35);
          v29 += 512;
          v31 += v30;
        }
      }

      else if (v31 < &v48[32 * v25 - 32 + 32 * v27] + v32 + v28 && v29 < v31 + v30 * (v25 - 1) + v32 || v30 < 0)
      {
        for (j = 0; j != v25; ++j)
        {
          v39 = 0;
          do
          {
            v29[v39] = *(v31 + v39);
            ++v39;
          }

          while (v32 > v39);
          v29 += 512;
          v31 += v30;
        }
      }

      else
      {
        v40 = 0;
        v41 = &v48[32 * v27 + 1] + v28;
        v42 = (v31 + 16);
        do
        {
          v43 = v42;
          v44 = v41;
          v45 = v32;
          do
          {
            v46 = *v43;
            *(v44 - 1) = *(v43 - 1);
            *v44 = v46;
            v44 += 2;
            v43 += 2;
            v45 -= 32;
          }

          while (v45);
          ++v40;
          v41 += 512;
          v42 = (v42 + v30);
        }

        while (v40 != v25);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v48, 512, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30E1;
  v5 = 16;
  do
  {
    v8 = &v48[1024 * *v4 + 128 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 64);
      v14 = *(v2 + 80);
      v15 = *(v2 + 96);
      v16 = *(v2 + 112);
      v17 = *(v2 + 128);
      v18 = *(v2 + 144);
      v19 = *(v2 + 160);
      v20 = *(v2 + 176);
      v21 = *(v2 + 192);
      v22 = *(v2 + 208);
      v23 = *(v2 + 224);
      v24 = *(v2 + 240);
      *v8 = *v2;
      v8[1] = v10;
      v8[2] = v11;
      v8[3] = v12;
      v8[4] = v13;
      v8[5] = v14;
      v8[6] = v15;
      v8[7] = v16;
      v8[32] = v17;
      v8[33] = v18;
      v8[34] = v19;
      v8[35] = v20;
      v7 = 256;
      v8[36] = v21;
      v8[37] = v22;
      v8[38] = v23;
      v8[39] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[2] = v6;
      v8[3] = v6;
      v8[4] = v6;
      v8[5] = v6;
      v8[6] = v6;
      v8[7] = v6;
      v8[32] = v6;
      v8[33] = v6;
      v8[34] = v6;
      v8[35] = v6;
      v8[36] = v6;
      v8[37] = v6;
      v8[38] = v6;
      v8[39] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 512, v2, v9);
    }

    else
    {
      v7 = 0;
      v8[6] = 0u;
      v8[7] = 0u;
      v8[4] = 0u;
      v8[5] = 0u;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      v8[32] = 0u;
      v8[33] = 0u;
      v8[34] = 0u;
      v8[35] = 0u;
      v8[36] = 0u;
      v8[37] = 0u;
      v8[38] = 0u;
      v8[39] = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v25 = *(a1 + 80);
  if (v25)
  {
    v26 = *(a1 + 84);
    if (v26)
    {
      v27 = *(a1 + 72);
      v28 = *(a1 + 76) << 6;
      v29 = &v48[512 * v27 + v28];
      v31 = *(a1 + 56);
      v30 = *(a1 + 64);
      v32 = v26 << 6;
      if ((v32 - 1) >> 32)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32 == 0;
      }

      if (v33)
      {
        for (i = 0; i != v25; ++i)
        {
          v35 = 0;
          do
          {
            v29[v35] = *(v31 + v35);
            ++v35;
          }

          while (v32 > v35);
          v29 += 512;
          v31 += v30;
        }
      }

      else if (v31 < &v48[512 * v25 - 512 + 512 * v27 + v32 + v28] && v29 < v31 + v30 * (v25 - 1) + v32 || v30 < 0)
      {
        for (j = 0; j != v25; ++j)
        {
          v39 = 0;
          do
          {
            v29[v39] = *(v31 + v39);
            ++v39;
          }

          while (v32 > v39);
          v29 += 512;
          v31 += v30;
        }
      }

      else
      {
        v40 = 0;
        v41 = &v48[512 * v27 + 16 + v28];
        v42 = (v31 + 16);
        do
        {
          v43 = v42;
          v44 = v41;
          v45 = v32;
          do
          {
            v46 = *v43;
            *(v44 - 1) = *(v43 - 1);
            *v44 = v46;
            v44 += 2;
            v43 += 2;
            v45 -= 32;
          }

          while (v45);
          ++v40;
          v41 += 512;
          v42 = (v42 + v30);
        }

        while (v40 != v25);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v48, 512, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, __n128 a3)
{
  v75 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(&v73, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = *(a1 + 84);
    if (v6)
    {
      v7 = *(a1 + 72);
      v8 = v7 << 7;
      v9 = 16 * *(a1 + 76);
      v10 = &v74[8 * v7 - 1 + v9 / 0x10];
      v12 = *(a1 + 56);
      v11 = *(a1 + 64);
      v13 = 16 * *(a1 + 84);
      result = (v13 - 1) >> 32;
      if (result)
      {
        v14 = 1;
      }

      else
      {
        v14 = 16 * v6 == 0;
      }

      if (v14)
      {
        for (i = 0; i != v5; ++i)
        {
          v16 = 0;
          do
          {
            *(v10 + v16) = *(v12 + v16);
            ++v16;
          }

          while (v13 > v16);
          v10 += 8;
          v12 = (v12 + v11);
        }
      }

      else
      {
        result = v13 + v9;
        if (v12 < &v74[8 * v5 - 9 + 8 * v7 + v13 / 0x10 + v9 / 0x10] && v10 < (v12 + v11 * (v5 - 1) + v13) || v11 < 0)
        {
          for (j = 0; j != v5; ++j)
          {
            v20 = 0;
            do
            {
              *(v10 + v20) = *(v12 + v20);
              ++v20;
            }

            while (v13 > v20);
            v10 += 8;
            v12 = (v12 + v11);
          }
        }

        else if (v6 == 1)
        {
          do
          {
            *v10 = *v12;
            v10 += 8;
            v12 = (v12 + v11);
            --v5;
          }

          while (v5);
        }

        else
        {
          v57 = 0;
          v58 = &v74[-1] + v8 + v9;
          v59 = v74 + v8 + v9;
          v60 = v12 + 1;
          v61 = (v12 + (v13 & 0x1FFFFFFE0));
          result = &v58[v13 & 0x1FFFFFFE0];
          do
          {
            v62 = v60;
            v63 = v59;
            v64 = v13 & 0x1FFFFFFE0;
            do
            {
              v65 = *v62;
              *(v63 - 1) = *(v62 - 1);
              *v63 = v65;
              v63 += 2;
              v62 += 2;
              v64 -= 32;
            }

            while (v64);
            if (v13 != (v13 & 0x1FFFFFFE0))
            {
              v66 = result;
              v67 = v61;
              v68 = v13 - (v13 & 0x1FFFFFFE0);
              if (v6)
              {
                do
                {
                  v72 = *v67++;
                  *v66++ = v72;
                  v68 -= 16;
                }

                while (v68);
              }

              else
              {
                v69 = 0;
                v70 = (v13 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v69) = *(v61 + v69);
                  v71 = v13 > v70++;
                  ++v69;
                }

                while (v71);
              }
            }

            ++v57;
            v59 += 128;
            v60 = (v60 + v11);
            v61 = (v61 + v11);
            result += 128;
          }

          while (v57 != v5);
        }
      }
    }
  }

  v21 = 0;
  v23 = *(a1 + 40);
  v22 = *(a1 + 48);
  v24 = *(a1 + 88);
  v25 = *(a1 + 89);
  if (*(a1 + 88) && *(a1 + 89))
  {
    v26 = v74[0];
    v27 = v74[7];
    v28 = v74[8];
    *v23 = v73;
    v23[1] = v26;
    v23[2] = v27;
    v23[3] = v28;
    v23 += 4;
    v21 = 63;
  }

  v29 = 0;
  *v22 = v21;
  if (v24 >= 3 && v25)
  {
    v30 = v74[2];
    v31 = v74[9];
    v32 = v74[10];
    *v23 = v74[1];
    v23[1] = v30;
    v23[2] = v31;
    v23[3] = v32;
    v23 += 4;
    v29 = 63;
  }

  v33 = 0;
  v22[1] = v29;
  if (v24 && v25 >= 3)
  {
    v34 = v74[16];
    v35 = v74[23];
    v36 = v74[24];
    *v23 = v74[15];
    v23[1] = v34;
    v23[2] = v35;
    v23[3] = v36;
    v23 += 4;
    v33 = 63;
  }

  v37 = 0;
  v22[2] = v33;
  if (v24 >= 3 && v25 >= 3)
  {
    v38 = v74[18];
    v39 = v74[25];
    v40 = v74[26];
    *v23 = v74[17];
    v23[1] = v38;
    v23[2] = v39;
    v23[3] = v40;
    v23 += 4;
    v37 = 63;
  }

  v41 = 0;
  v22[3] = v37;
  if (v24 >= 5 && v25)
  {
    v42 = v74[4];
    v43 = v74[11];
    v44 = v74[12];
    *v23 = v74[3];
    v23[1] = v42;
    v23[2] = v43;
    v23[3] = v44;
    v23 += 4;
    v41 = 63;
  }

  v45 = 0;
  v22[4] = v41;
  if (v24 >= 7 && v25)
  {
    v46 = v74[6];
    v47 = v74[13];
    v48 = v74[14];
    *v23 = v74[5];
    v23[1] = v46;
    v23[2] = v47;
    v23[3] = v48;
    v23 += 4;
    v45 = 63;
  }

  v49 = 0;
  v22[5] = v45;
  if (v24 >= 5 && v25 >= 3)
  {
    v50 = v74[20];
    v51 = v74[27];
    v52 = v74[28];
    *v23 = v74[19];
    v23[1] = v50;
    v23[2] = v51;
    v23[3] = v52;
    v23 += 4;
    v49 = 63;
  }

  v53 = 0;
  v22[6] = v49;
  if (v24 >= 7 && v25 >= 3)
  {
    v54 = v74[22];
    v55 = v74[29];
    v56 = v74[30];
    *v23 = v74[21];
    v23[1] = v54;
    v23[2] = v55;
    v23[3] = v56;
    v53 = 63;
  }

  v22[7] = v53;
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, __n128 a3)
{
  v39 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v38, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = v6 << 7;
      v8 = 16 * *(a1 + 76);
      v9 = &v38[128 * v6 + v8];
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 16 * *(a1 + 84);
      if ((v12 - 1) >> 32)
      {
        v13 = 1;
      }

      else
      {
        v13 = 16 * v5 == 0;
      }

      if (v13)
      {
        for (i = 0; i != v4; ++i)
        {
          v15 = 0;
          do
          {
            *(v9 + v15) = *(v11 + v15);
            ++v15;
          }

          while (v12 > v15);
          v9 += 8;
          v11 = (v11 + v10);
        }
      }

      else if (v11 < &v38[128 * v4 - 128 + 128 * v6 + v12 + v8] && v9 < (v11 + v10 * (v4 - 1) + v12) || v10 < 0)
      {
        for (j = 0; j != v4; ++j)
        {
          v19 = 0;
          do
          {
            *(v9 + v19) = *(v11 + v19);
            ++v19;
          }

          while (v12 > v19);
          v9 += 8;
          v11 = (v11 + v10);
        }
      }

      else if (v5 == 1)
      {
        do
        {
          *v9 = *v11;
          v9 += 8;
          v11 = (v11 + v10);
          --v4;
        }

        while (v4);
      }

      else
      {
        v21 = 0;
        v22 = &v38[v7 + v8];
        v23 = &v38[v7 + 16 + v8];
        v24 = v11 + 1;
        v25 = (v11 + (v12 & 0x1FFFFFFE0));
        v26 = &v22[v12 & 0x1FFFFFFE0];
        do
        {
          v27 = v24;
          v28 = v23;
          v29 = v12 & 0x1FFFFFFE0;
          do
          {
            v30 = *v27;
            *(v28 - 1) = *(v27 - 1);
            *v28 = v30;
            v28 += 2;
            v27 += 2;
            v29 -= 32;
          }

          while (v29);
          if (v12 != (v12 & 0x1FFFFFFE0))
          {
            v31 = v26;
            v32 = v25;
            v33 = v12 - (v12 & 0x1FFFFFFE0);
            if (v5)
            {
              do
              {
                v37 = *v32++;
                *v31++ = v37;
                v33 -= 16;
              }

              while (v33);
            }

            else
            {
              v34 = 0;
              v35 = (v12 & 0xFFFFFFE0) + 1;
              do
              {
                *(v26 + v34) = *(v25 + v34);
                v36 = v12 > v35++;
                ++v34;
              }

              while (v36);
            }
          }

          ++v21;
          v23 += 128;
          v24 = (v24 + v10);
          v25 = (v25 + v10);
          v26 += 8;
        }

        while (v21 != v4);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v38, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, __n128 a3)
{
  v75 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(&v73, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = *(a1 + 84);
    if (v6)
    {
      v7 = *(a1 + 72);
      v8 = v7 << 7;
      v9 = 16 * *(a1 + 76);
      v10 = &v74[8 * v7 - 1 + v9 / 0x10];
      v12 = *(a1 + 56);
      v11 = *(a1 + 64);
      v13 = 16 * *(a1 + 84);
      result = (v13 - 1) >> 32;
      if (result)
      {
        v14 = 1;
      }

      else
      {
        v14 = 16 * v6 == 0;
      }

      if (v14)
      {
        for (i = 0; i != v5; ++i)
        {
          v16 = 0;
          do
          {
            *(v10 + v16) = *(v12 + v16);
            ++v16;
          }

          while (v13 > v16);
          v10 += 8;
          v12 = (v12 + v11);
        }
      }

      else
      {
        result = v13 + v9;
        if (v12 < &v74[8 * v5 - 9 + 8 * v7 + v13 / 0x10 + v9 / 0x10] && v10 < (v12 + v11 * (v5 - 1) + v13) || v11 < 0)
        {
          for (j = 0; j != v5; ++j)
          {
            v20 = 0;
            do
            {
              *(v10 + v20) = *(v12 + v20);
              ++v20;
            }

            while (v13 > v20);
            v10 += 8;
            v12 = (v12 + v11);
          }
        }

        else if (v6 == 1)
        {
          do
          {
            *v10 = *v12;
            v10 += 8;
            v12 = (v12 + v11);
            --v5;
          }

          while (v5);
        }

        else
        {
          v57 = 0;
          v58 = &v74[-1] + v8 + v9;
          v59 = v74 + v8 + v9;
          v60 = v12 + 1;
          v61 = (v12 + (v13 & 0x1FFFFFFE0));
          result = &v58[v13 & 0x1FFFFFFE0];
          do
          {
            v62 = v60;
            v63 = v59;
            v64 = v13 & 0x1FFFFFFE0;
            do
            {
              v65 = *v62;
              *(v63 - 1) = *(v62 - 1);
              *v63 = v65;
              v63 += 2;
              v62 += 2;
              v64 -= 32;
            }

            while (v64);
            if (v13 != (v13 & 0x1FFFFFFE0))
            {
              v66 = result;
              v67 = v61;
              v68 = v13 - (v13 & 0x1FFFFFFE0);
              if (v6)
              {
                do
                {
                  v72 = *v67++;
                  *v66++ = v72;
                  v68 -= 16;
                }

                while (v68);
              }

              else
              {
                v69 = 0;
                v70 = (v13 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v69) = *(v61 + v69);
                  v71 = v13 > v70++;
                  ++v69;
                }

                while (v71);
              }
            }

            ++v57;
            v59 += 128;
            v60 = (v60 + v11);
            v61 = (v61 + v11);
            result += 128;
          }

          while (v57 != v5);
        }
      }
    }
  }

  v21 = 0;
  v23 = *(a1 + 40);
  v22 = *(a1 + 48);
  v24 = *(a1 + 88);
  v25 = *(a1 + 89);
  if (*(a1 + 88) && *(a1 + 89))
  {
    v26 = v74[0];
    v27 = v74[7];
    v28 = v74[8];
    *v23 = v73;
    v23[1] = v26;
    v23[2] = v27;
    v23[3] = v28;
    v23 += 4;
    v21 = 63;
  }

  v29 = 0;
  *v22 = v21;
  if (v24 >= 3 && v25)
  {
    v30 = v74[2];
    v31 = v74[9];
    v32 = v74[10];
    *v23 = v74[1];
    v23[1] = v30;
    v23[2] = v31;
    v23[3] = v32;
    v23 += 4;
    v29 = 63;
  }

  v33 = 0;
  v22[1] = v29;
  if (v24 && v25 >= 3)
  {
    v34 = v74[16];
    v35 = v74[23];
    v36 = v74[24];
    *v23 = v74[15];
    v23[1] = v34;
    v23[2] = v35;
    v23[3] = v36;
    v23 += 4;
    v33 = 63;
  }

  v37 = 0;
  v22[2] = v33;
  if (v24 >= 3 && v25 >= 3)
  {
    v38 = v74[18];
    v39 = v74[25];
    v40 = v74[26];
    *v23 = v74[17];
    v23[1] = v38;
    v23[2] = v39;
    v23[3] = v40;
    v23 += 4;
    v37 = 63;
  }

  v41 = 0;
  v22[3] = v37;
  if (v24 >= 5 && v25)
  {
    v42 = v74[4];
    v43 = v74[11];
    v44 = v74[12];
    *v23 = v74[3];
    v23[1] = v42;
    v23[2] = v43;
    v23[3] = v44;
    v23 += 4;
    v41 = 63;
  }

  v45 = 0;
  v22[4] = v41;
  if (v24 >= 7 && v25)
  {
    v46 = v74[6];
    v47 = v74[13];
    v48 = v74[14];
    *v23 = v74[5];
    v23[1] = v46;
    v23[2] = v47;
    v23[3] = v48;
    v23 += 4;
    v45 = 63;
  }

  v49 = 0;
  v22[5] = v45;
  if (v24 >= 5 && v25 >= 3)
  {
    v50 = v74[20];
    v51 = v74[27];
    v52 = v74[28];
    *v23 = v74[19];
    v23[1] = v50;
    v23[2] = v51;
    v23[3] = v52;
    v23 += 4;
    v49 = 63;
  }

  v53 = 0;
  v22[6] = v49;
  if (v24 >= 7 && v25 >= 3)
  {
    v54 = v74[22];
    v55 = v74[29];
    v56 = v74[30];
    *v23 = v74[21];
    v23[1] = v54;
    v23[2] = v55;
    v23[3] = v56;
    v53 = 63;
  }

  v22[7] = v53;
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, __n128 a3)
{
  v39 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v38, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = v6 << 7;
      v8 = 16 * *(a1 + 76);
      v9 = &v38[128 * v6 + v8];
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 16 * *(a1 + 84);
      if ((v12 - 1) >> 32)
      {
        v13 = 1;
      }

      else
      {
        v13 = 16 * v5 == 0;
      }

      if (v13)
      {
        for (i = 0; i != v4; ++i)
        {
          v15 = 0;
          do
          {
            *(v9 + v15) = *(v11 + v15);
            ++v15;
          }

          while (v12 > v15);
          v9 += 8;
          v11 = (v11 + v10);
        }
      }

      else if (v11 < &v38[128 * v4 - 128 + 128 * v6 + v12 + v8] && v9 < (v11 + v10 * (v4 - 1) + v12) || v10 < 0)
      {
        for (j = 0; j != v4; ++j)
        {
          v19 = 0;
          do
          {
            *(v9 + v19) = *(v11 + v19);
            ++v19;
          }

          while (v12 > v19);
          v9 += 8;
          v11 = (v11 + v10);
        }
      }

      else if (v5 == 1)
      {
        do
        {
          *v9 = *v11;
          v9 += 8;
          v11 = (v11 + v10);
          --v4;
        }

        while (v4);
      }

      else
      {
        v21 = 0;
        v22 = &v38[v7 + v8];
        v23 = &v38[v7 + 16 + v8];
        v24 = v11 + 1;
        v25 = (v11 + (v12 & 0x1FFFFFFE0));
        v26 = &v22[v12 & 0x1FFFFFFE0];
        do
        {
          v27 = v24;
          v28 = v23;
          v29 = v12 & 0x1FFFFFFE0;
          do
          {
            v30 = *v27;
            *(v28 - 1) = *(v27 - 1);
            *v28 = v30;
            v28 += 2;
            v27 += 2;
            v29 -= 32;
          }

          while (v29);
          if (v12 != (v12 & 0x1FFFFFFE0))
          {
            v31 = v26;
            v32 = v25;
            v33 = v12 - (v12 & 0x1FFFFFFE0);
            if (v5)
            {
              do
              {
                v37 = *v32++;
                *v31++ = v37;
                v33 -= 16;
              }

              while (v33);
            }

            else
            {
              v34 = 0;
              v35 = (v12 & 0xFFFFFFE0) + 1;
              do
              {
                *(v26 + v34) = *(v25 + v34);
                v36 = v12 > v35++;
                ++v34;
              }

              while (v36);
            }
          }

          ++v21;
          v23 += 128;
          v24 = (v24 + v10);
          v25 = (v25 + v10);
          v26 += 8;
        }

        while (v21 != v4);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v38, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = *(a1 + 76) << 6;
      v6 = &v25[32 * v4] + v5;
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = v3 << 6;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6[v12] = *(v8 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 512;
          v8 += v7;
        }
      }

      else if (v8 < &v25[32 * v2 - 32 + 32 * v4] + v9 + v5 && v6 < v8 + v7 * (v2 - 1) + v9 || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6[v16] = *(v8 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 512;
          v8 += v7;
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[32 * v4 + 1] + v5;
        v19 = (v8 + 16);
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 512;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 512, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = *(a1 + 76) << 6;
      v6 = &v25[32 * v4] + v5;
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = v3 << 6;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6[v12] = *(v8 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 512;
          v8 += v7;
        }
      }

      else if (v8 < &v25[32 * v2 - 32 + 32 * v4] + v9 + v5 && v6 < v8 + v7 * (v2 - 1) + v9 || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6[v16] = *(v8 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 512;
          v8 += v7;
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[32 * v4 + 1] + v5;
        v19 = (v8 + 16);
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 512;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 512, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = *(a1 + 76) << 6;
      v6 = &v25[32 * v4] + v5;
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = v3 << 6;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6[v12] = *(v8 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 512;
          v8 += v7;
        }
      }

      else if (v8 < &v25[32 * v2 - 32 + 32 * v4] + v9 + v5 && v6 < v8 + v7 * (v2 - 1) + v9 || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6[v16] = *(v8 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 512;
          v8 += v7;
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[32 * v4 + 1] + v5;
        v19 = (v8 + 16);
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 512;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 512, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = *(a1 + 76) << 6;
      v6 = &v25[32 * v4] + v5;
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = v3 << 6;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6[v12] = *(v8 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 512;
          v8 += v7;
        }
      }

      else if (v8 < &v25[32 * v2 - 32 + 32 * v4] + v9 + v5 && v6 < v8 + v7 * (v2 - 1) + v9 || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6[v16] = *(v8 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 512;
          v8 += v7;
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[32 * v4 + 1] + v5;
        v19 = (v8 + 16);
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 512;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 512, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 2 * *(a1 + 76);
      v6 = &v25[16 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            *(v6 + v12) = *(v8 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 16;
          v8 += v7;
        }
      }

      else if (v8 < &v25[16 * v2 - 16 + 16 * v4 + v9 / 0x10 + v5] && v6 < v8 + v7 * (v2 - 1) + v9 || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            *(v6 + v16) = *(v8 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 16;
          v8 += v7;
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[16 * v4 + 1 + v5];
        v19 = (v8 + 16);
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 16;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 32 * *(a1 + 76);
      v6 = &v25[256 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6[v12] = *(v8 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 256;
          v8 += v7;
        }
      }

      else if (v8 < &v25[256 * v2 - 256 + 256 * v4 + v9 + v5] && v6 < v8 + v7 * (v2 - 1) + v9 || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6[v16] = *(v8 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 256;
          v8 += v7;
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[256 * v4 + 16 + v5];
        v19 = (v8 + 16);
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 256;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 2 * *(a1 + 76);
      v6 = &v25[16 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            *(v6 + v12) = *(v8 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 16;
          v8 += v7;
        }
      }

      else if (v8 < &v25[16 * v2 - 16 + 16 * v4 + v9 / 0x10 + v5] && v6 < v8 + v7 * (v2 - 1) + v9 || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            *(v6 + v16) = *(v8 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 16;
          v8 += v7;
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[16 * v4 + 1 + v5];
        v19 = (v8 + 16);
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 16;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 32 * *(a1 + 76);
      v6 = &v25[256 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6[v12] = *(v8 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 256;
          v8 += v7;
        }
      }

      else if (v8 < &v25[256 * v2 - 256 + 256 * v4 + v9 + v5] && v6 < v8 + v7 * (v2 - 1) + v9 || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6[v16] = *(v8 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 256;
          v8 += v7;
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[256 * v4 + 16 + v5];
        v19 = (v8 + 16);
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 256;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v46, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = 2 * *(a1 + 76);
      v7 = &v46[16 * v5 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 32 * v4;
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v3; ++i)
        {
          v13 = 0;
          do
          {
            v7->i8[v13] = v9->i8[v13];
            ++v13;
          }

          while (v10 > v13);
          v7 += 16;
          v9 = (v9 + v8);
        }
      }

      else
      {
        result = v10 + v6 * 16;
        if (v9 < &v46[16 * v3 - 16 + 16 * v5 + v10 / 0x10 + v6] && v7 < (v9 + v8 * (v3 - 1) + v10) || v8 < 0)
        {
          for (j = 0; j != v3; ++j)
          {
            v17 = 0;
            do
            {
              v7->i8[v17] = v9->i8[v17];
              ++v17;
            }

            while (v10 > v17);
            v7 += 16;
            v9 = (v9 + v8);
          }
        }

        else
        {
          v18 = 0;
          v19 = &v46[16 * v5 + 1 + v6];
          v20 = v9 + 1;
          do
          {
            v21 = v20;
            v22 = v19;
            v23 = v10;
            do
            {
              v24 = *v21;
              v22[-1] = v21[-1];
              *v22 = v24;
              v22 += 2;
              v21 += 2;
              v23 -= 32;
            }

            while (v23);
            ++v18;
            v19 += 16;
            v20 = (v20 + v8);
          }

          while (v18 != v3);
        }
      }
    }
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  v27 = *(a1 + 88);
  v28 = &byte_29D2F30E1;
  v29 = 16;
  v30 = *(a1 + 89);
  do
  {
    v43 = *v28;
    v44 = *(v28 - 1);
    if (v27 <= 2 * v44 || 2 * v43 >= v30)
    {
      v42 = 0;
    }

    else
    {
      v31 = &v46[32 * v43 + 4 * v44];
      v33 = *v31;
      v34 = v31[1];
      v32 = v31 + 2;
      v35 = v31 + 16;
      v31 += 18;
      v36 = *v32;
      v37 = v32[1];
      v38 = *v35;
      v39 = v35[1];
      v40 = *v31;
      v41 = v31[1];
      *v25 = v33;
      v25[1] = v34;
      v25[2] = v36;
      v25[3] = v37;
      v25[4] = v38;
      v25[5] = v39;
      v25[6] = v40;
      v25[7] = v41;
      v25 += 8;
      v42 = 127;
    }

    *v26++ = v42;
    v28 += 2;
    v29 -= 2;
  }

  while (v29);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 2 * *(a1 + 76);
      v6 = &v25[16 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6->i8[v12] = v8->i8[v12];
            ++v12;
          }

          while (v9 > v12);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else if (v8 < &v25[16 * v2 - 16 + 16 * v4 + v9 / 0x10 + v5] && v6 < (v8 + v7 * (v2 - 1) + v9) || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6->i8[v16] = v8->i8[v16];
            ++v16;
          }

          while (v9 > v16);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[16 * v4 + 1 + v5];
        v19 = v8 + 1;
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            v21[-1] = v20[-1];
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 16;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v46, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = 2 * *(a1 + 76);
      v7 = &v46[16 * v5 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 32 * v4;
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v3; ++i)
        {
          v13 = 0;
          do
          {
            v7->i8[v13] = v9->i8[v13];
            ++v13;
          }

          while (v10 > v13);
          v7 += 16;
          v9 = (v9 + v8);
        }
      }

      else
      {
        result = v10 + v6 * 16;
        if (v9 < &v46[16 * v3 - 16 + 16 * v5 + v10 / 0x10 + v6] && v7 < (v9 + v8 * (v3 - 1) + v10) || v8 < 0)
        {
          for (j = 0; j != v3; ++j)
          {
            v17 = 0;
            do
            {
              v7->i8[v17] = v9->i8[v17];
              ++v17;
            }

            while (v10 > v17);
            v7 += 16;
            v9 = (v9 + v8);
          }
        }

        else
        {
          v18 = 0;
          v19 = &v46[16 * v5 + 1 + v6];
          v20 = v9 + 1;
          do
          {
            v21 = v20;
            v22 = v19;
            v23 = v10;
            do
            {
              v24 = *v21;
              v22[-1] = v21[-1];
              *v22 = v24;
              v22 += 2;
              v21 += 2;
              v23 -= 32;
            }

            while (v23);
            ++v18;
            v19 += 16;
            v20 = (v20 + v8);
          }

          while (v18 != v3);
        }
      }
    }
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  v27 = *(a1 + 88);
  v28 = &byte_29D2F30E1;
  v29 = 16;
  v30 = *(a1 + 89);
  do
  {
    v43 = *v28;
    v44 = *(v28 - 1);
    if (v27 <= 2 * v44 || 2 * v43 >= v30)
    {
      v42 = 0;
    }

    else
    {
      v31 = &v46[32 * v43 + 4 * v44];
      v33 = *v31;
      v34 = v31[1];
      v32 = v31 + 2;
      v35 = v31 + 16;
      v31 += 18;
      v36 = *v32;
      v37 = v32[1];
      v38 = *v35;
      v39 = v35[1];
      v40 = *v31;
      v41 = v31[1];
      *v25 = v33;
      v25[1] = v34;
      v25[2] = v36;
      v25[3] = v37;
      v25[4] = v38;
      v25[5] = v39;
      v25[6] = v40;
      v25[7] = v41;
      v25 += 8;
      v42 = 127;
    }

    *v26++ = v42;
    v28 += 2;
    v29 -= 2;
  }

  while (v29);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 2 * *(a1 + 76);
      v6 = &v25[16 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6->i8[v12] = v8->i8[v12];
            ++v12;
          }

          while (v9 > v12);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else if (v8 < &v25[16 * v2 - 16 + 16 * v4 + v9 / 0x10 + v5] && v6 < (v8 + v7 * (v2 - 1) + v9) || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6->i8[v16] = v8->i8[v16];
            ++v16;
          }

          while (v9 > v16);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[16 * v4 + 1 + v5];
        v19 = v8 + 1;
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            v21[-1] = v20[-1];
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 16;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
{
  v77 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(&v75, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = v9 << 7;
      v11 = 16 * *(a1 + 76);
      v12 = &v76[8 * v9 - 1 + v11 / 0x10];
      v14 = *(a1 + 56);
      v13 = *(a1 + 64);
      v15 = 16 * *(a1 + 84);
      result = (v15 - 1) >> 32;
      if (result)
      {
        v16 = 1;
      }

      else
      {
        v16 = 16 * v8 == 0;
      }

      if (v16)
      {
        for (i = 0; i != v7; ++i)
        {
          v18 = 0;
          do
          {
            *(v12 + v18) = *(v14 + v18);
            ++v18;
          }

          while (v15 > v18);
          v12 += 8;
          v14 = (v14 + v13);
        }
      }

      else
      {
        result = v15 + v11;
        if (v14 < &v76[8 * v7 - 9 + 8 * v9 + v15 / 0x10 + v11 / 0x10] && v12 < (v14 + v13 * (v7 - 1) + v15) || v13 < 0)
        {
          for (j = 0; j != v7; ++j)
          {
            v22 = 0;
            do
            {
              *(v12 + v22) = *(v14 + v22);
              ++v22;
            }

            while (v15 > v22);
            v12 += 8;
            v14 = (v14 + v13);
          }
        }

        else if (v8 == 1)
        {
          do
          {
            *v12 = *v14;
            v12 += 8;
            v14 = (v14 + v13);
            --v7;
          }

          while (v7);
        }

        else
        {
          v59 = 0;
          v60 = &v76[-1] + v10 + v11;
          v61 = v76 + v10 + v11;
          v62 = v14 + 1;
          v63 = (v14 + (v15 & 0x1FFFFFFE0));
          result = &v60[v15 & 0x1FFFFFFE0];
          do
          {
            v64 = v62;
            v65 = v61;
            v66 = v15 & 0x1FFFFFFE0;
            do
            {
              v67 = *v64;
              *(v65 - 1) = *(v64 - 1);
              *v65 = v67;
              v65 += 2;
              v64 += 2;
              v66 -= 32;
            }

            while (v66);
            if (v15 != (v15 & 0x1FFFFFFE0))
            {
              v68 = result;
              v69 = v63;
              v70 = v15 - (v15 & 0x1FFFFFFE0);
              if (v8)
              {
                do
                {
                  v74 = *v69++;
                  *v68++ = v74;
                  v70 -= 16;
                }

                while (v70);
              }

              else
              {
                v71 = 0;
                v72 = (v15 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v71) = *(v63 + v71);
                  v73 = v15 > v72++;
                  ++v71;
                }

                while (v73);
              }
            }

            ++v59;
            v61 += 128;
            v62 = (v62 + v13);
            v63 = (v63 + v13);
            result += 128;
          }

          while (v59 != v7);
        }
      }
    }
  }

  v23 = 0;
  v25 = *(a1 + 40);
  v24 = *(a1 + 48);
  v26 = *(a1 + 88);
  v27 = *(a1 + 89);
  if (*(a1 + 88) && *(a1 + 89))
  {
    v28 = v76[0];
    v29 = v76[7];
    v30 = v76[8];
    *v25 = v75;
    v25[1] = v28;
    v25[2] = v29;
    v25[3] = v30;
    v25 += 4;
    v23 = 63;
  }

  v31 = 0;
  *v24 = v23;
  if (v26 >= 3 && v27)
  {
    v32 = v76[2];
    v33 = v76[9];
    v34 = v76[10];
    *v25 = v76[1];
    v25[1] = v32;
    v25[2] = v33;
    v25[3] = v34;
    v25 += 4;
    v31 = 63;
  }

  v35 = 0;
  v24[1] = v31;
  if (v26 && v27 >= 3)
  {
    v36 = v76[16];
    v37 = v76[23];
    v38 = v76[24];
    *v25 = v76[15];
    v25[1] = v36;
    v25[2] = v37;
    v25[3] = v38;
    v25 += 4;
    v35 = 63;
  }

  v39 = 0;
  v24[2] = v35;
  if (v26 >= 3 && v27 >= 3)
  {
    v40 = v76[18];
    v41 = v76[25];
    v42 = v76[26];
    *v25 = v76[17];
    v25[1] = v40;
    v25[2] = v41;
    v25[3] = v42;
    v25 += 4;
    v39 = 63;
  }

  v43 = 0;
  v24[3] = v39;
  if (v26 >= 5 && v27)
  {
    v44 = v76[4];
    v45 = v76[11];
    v46 = v76[12];
    *v25 = v76[3];
    v25[1] = v44;
    v25[2] = v45;
    v25[3] = v46;
    v25 += 4;
    v43 = 63;
  }

  v47 = 0;
  v24[4] = v43;
  if (v26 >= 7 && v27)
  {
    v48 = v76[6];
    v49 = v76[13];
    v50 = v76[14];
    *v25 = v76[5];
    v25[1] = v48;
    v25[2] = v49;
    v25[3] = v50;
    v25 += 4;
    v47 = 63;
  }

  v51 = 0;
  v24[5] = v47;
  if (v26 >= 5 && v27 >= 3)
  {
    v52 = v76[20];
    v53 = v76[27];
    v54 = v76[28];
    *v25 = v76[19];
    v25[1] = v52;
    v25[2] = v53;
    v25[3] = v54;
    v25 += 4;
    v51 = 63;
  }

  v55 = 0;
  v24[6] = v51;
  if (v26 >= 7 && v27 >= 3)
  {
    v56 = v76[22];
    v57 = v76[29];
    v58 = v76[30];
    *v25 = v76[21];
    v25[1] = v56;
    v25[2] = v57;
    v25[3] = v58;
    v55 = 63;
  }

  v24[7] = v55;
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
{
  v48 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v47, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = v16 << 7;
      v18 = 16 * *(a1 + 76);
      v19 = &v47[128 * v16 + v18];
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 16 * *(a1 + 84);
      if ((v22 - 1) >> 32)
      {
        v23 = 1;
      }

      else
      {
        v23 = 16 * v15 == 0;
      }

      if (v23)
      {
        for (i = 0; i != v14; ++i)
        {
          v25 = 0;
          do
          {
            *(v19 + v25) = *(v21 + v25);
            ++v25;
          }

          while (v22 > v25);
          v19 += 8;
          v21 = (v21 + v20);
        }
      }

      else if (v21 < &v47[128 * v14 - 128 + 128 * v16 + v22 + v18] && v19 < (v21 + v20 * (v14 - 1) + v22) || v20 < 0)
      {
        for (j = 0; j != v14; ++j)
        {
          v29 = 0;
          do
          {
            *(v19 + v29) = *(v21 + v29);
            ++v29;
          }

          while (v22 > v29);
          v19 += 8;
          v21 = (v21 + v20);
        }
      }

      else if (v15 == 1)
      {
        do
        {
          v6 = *v21;
          *v19 = *v21;
          v19 += 8;
          v21 = (v21 + v20);
          --v14;
        }

        while (v14);
      }

      else
      {
        v31 = 0;
        v32 = &v47[v17 + v18];
        v33 = &v47[v17 + 16 + v18];
        v34 = v21 + 1;
        v35 = (v21 + (v22 & 0x1FFFFFFE0));
        v36 = &v32[v22 & 0x1FFFFFFE0];
        do
        {
          v37 = v34;
          v38 = v33;
          v39 = v22 & 0x1FFFFFFE0;
          do
          {
            v6 = *(v37 - 1);
            v7 = *v37;
            *(v38 - 1) = v6;
            *v38 = v7;
            v38 += 2;
            v37 += 2;
            v39 -= 32;
          }

          while (v39);
          if (v22 != (v22 & 0x1FFFFFFE0))
          {
            v40 = v36;
            v41 = v35;
            v42 = v22 - (v22 & 0x1FFFFFFE0);
            if (v15)
            {
              do
              {
                v46 = *v41++;
                *&v6 = v46;
                *v40++ = v46;
                v42 -= 16;
              }

              while (v42);
            }

            else
            {
              v43 = 0;
              v44 = (v22 & 0xFFFFFFE0) + 1;
              do
              {
                *(v36 + v43) = *(v35 + v43);
                v45 = v22 > v44++;
                ++v43;
              }

              while (v45);
            }
          }

          ++v31;
          v33 += 128;
          v34 = (v34 + v20);
          v35 = (v35 + v20);
          v36 += 8;
        }

        while (v31 != v14);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v47, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *&v6, *&v7, v8, v9, v10, v11, v12, v13);
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
{
  v77 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(&v75, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = v9 << 7;
      v11 = 16 * *(a1 + 76);
      v12 = &v76[8 * v9 - 1 + v11 / 0x10];
      v14 = *(a1 + 56);
      v13 = *(a1 + 64);
      v15 = 16 * *(a1 + 84);
      result = (v15 - 1) >> 32;
      if (result)
      {
        v16 = 1;
      }

      else
      {
        v16 = 16 * v8 == 0;
      }

      if (v16)
      {
        for (i = 0; i != v7; ++i)
        {
          v18 = 0;
          do
          {
            *(v12 + v18) = *(v14 + v18);
            ++v18;
          }

          while (v15 > v18);
          v12 += 8;
          v14 = (v14 + v13);
        }
      }

      else
      {
        result = v15 + v11;
        if (v14 < &v76[8 * v7 - 9 + 8 * v9 + v15 / 0x10 + v11 / 0x10] && v12 < (v14 + v13 * (v7 - 1) + v15) || v13 < 0)
        {
          for (j = 0; j != v7; ++j)
          {
            v22 = 0;
            do
            {
              *(v12 + v22) = *(v14 + v22);
              ++v22;
            }

            while (v15 > v22);
            v12 += 8;
            v14 = (v14 + v13);
          }
        }

        else if (v8 == 1)
        {
          do
          {
            *v12 = *v14;
            v12 += 8;
            v14 = (v14 + v13);
            --v7;
          }

          while (v7);
        }

        else
        {
          v59 = 0;
          v60 = &v76[-1] + v10 + v11;
          v61 = v76 + v10 + v11;
          v62 = v14 + 1;
          v63 = (v14 + (v15 & 0x1FFFFFFE0));
          result = &v60[v15 & 0x1FFFFFFE0];
          do
          {
            v64 = v62;
            v65 = v61;
            v66 = v15 & 0x1FFFFFFE0;
            do
            {
              v67 = *v64;
              *(v65 - 1) = *(v64 - 1);
              *v65 = v67;
              v65 += 2;
              v64 += 2;
              v66 -= 32;
            }

            while (v66);
            if (v15 != (v15 & 0x1FFFFFFE0))
            {
              v68 = result;
              v69 = v63;
              v70 = v15 - (v15 & 0x1FFFFFFE0);
              if (v8)
              {
                do
                {
                  v74 = *v69++;
                  *v68++ = v74;
                  v70 -= 16;
                }

                while (v70);
              }

              else
              {
                v71 = 0;
                v72 = (v15 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v71) = *(v63 + v71);
                  v73 = v15 > v72++;
                  ++v71;
                }

                while (v73);
              }
            }

            ++v59;
            v61 += 128;
            v62 = (v62 + v13);
            v63 = (v63 + v13);
            result += 128;
          }

          while (v59 != v7);
        }
      }
    }
  }

  v23 = 0;
  v25 = *(a1 + 40);
  v24 = *(a1 + 48);
  v26 = *(a1 + 88);
  v27 = *(a1 + 89);
  if (*(a1 + 88) && *(a1 + 89))
  {
    v28 = v76[0];
    v29 = v76[7];
    v30 = v76[8];
    *v25 = v75;
    v25[1] = v28;
    v25[2] = v29;
    v25[3] = v30;
    v25 += 4;
    v23 = 63;
  }

  v31 = 0;
  *v24 = v23;
  if (v26 >= 3 && v27)
  {
    v32 = v76[2];
    v33 = v76[9];
    v34 = v76[10];
    *v25 = v76[1];
    v25[1] = v32;
    v25[2] = v33;
    v25[3] = v34;
    v25 += 4;
    v31 = 63;
  }

  v35 = 0;
  v24[1] = v31;
  if (v26 && v27 >= 3)
  {
    v36 = v76[16];
    v37 = v76[23];
    v38 = v76[24];
    *v25 = v76[15];
    v25[1] = v36;
    v25[2] = v37;
    v25[3] = v38;
    v25 += 4;
    v35 = 63;
  }

  v39 = 0;
  v24[2] = v35;
  if (v26 >= 3 && v27 >= 3)
  {
    v40 = v76[18];
    v41 = v76[25];
    v42 = v76[26];
    *v25 = v76[17];
    v25[1] = v40;
    v25[2] = v41;
    v25[3] = v42;
    v25 += 4;
    v39 = 63;
  }

  v43 = 0;
  v24[3] = v39;
  if (v26 >= 5 && v27)
  {
    v44 = v76[4];
    v45 = v76[11];
    v46 = v76[12];
    *v25 = v76[3];
    v25[1] = v44;
    v25[2] = v45;
    v25[3] = v46;
    v25 += 4;
    v43 = 63;
  }

  v47 = 0;
  v24[4] = v43;
  if (v26 >= 7 && v27)
  {
    v48 = v76[6];
    v49 = v76[13];
    v50 = v76[14];
    *v25 = v76[5];
    v25[1] = v48;
    v25[2] = v49;
    v25[3] = v50;
    v25 += 4;
    v47 = 63;
  }

  v51 = 0;
  v24[5] = v47;
  if (v26 >= 5 && v27 >= 3)
  {
    v52 = v76[20];
    v53 = v76[27];
    v54 = v76[28];
    *v25 = v76[19];
    v25[1] = v52;
    v25[2] = v53;
    v25[3] = v54;
    v25 += 4;
    v51 = 63;
  }

  v55 = 0;
  v24[6] = v51;
  if (v26 >= 7 && v27 >= 3)
  {
    v56 = v76[22];
    v57 = v76[29];
    v58 = v76[30];
    *v25 = v76[21];
    v25[1] = v56;
    v25[2] = v57;
    v25[3] = v58;
    v55 = 63;
  }

  v24[7] = v55;
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
{
  v48 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v47, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = v16 << 7;
      v18 = 16 * *(a1 + 76);
      v19 = &v47[128 * v16 + v18];
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 16 * *(a1 + 84);
      if ((v22 - 1) >> 32)
      {
        v23 = 1;
      }

      else
      {
        v23 = 16 * v15 == 0;
      }

      if (v23)
      {
        for (i = 0; i != v14; ++i)
        {
          v25 = 0;
          do
          {
            *(v19 + v25) = *(v21 + v25);
            ++v25;
          }

          while (v22 > v25);
          v19 += 8;
          v21 = (v21 + v20);
        }
      }

      else if (v21 < &v47[128 * v14 - 128 + 128 * v16 + v22 + v18] && v19 < (v21 + v20 * (v14 - 1) + v22) || v20 < 0)
      {
        for (j = 0; j != v14; ++j)
        {
          v29 = 0;
          do
          {
            *(v19 + v29) = *(v21 + v29);
            ++v29;
          }

          while (v22 > v29);
          v19 += 8;
          v21 = (v21 + v20);
        }
      }

      else if (v15 == 1)
      {
        do
        {
          v6 = *v21;
          *v19 = *v21;
          v19 += 8;
          v21 = (v21 + v20);
          --v14;
        }

        while (v14);
      }

      else
      {
        v31 = 0;
        v32 = &v47[v17 + v18];
        v33 = &v47[v17 + 16 + v18];
        v34 = v21 + 1;
        v35 = (v21 + (v22 & 0x1FFFFFFE0));
        v36 = &v32[v22 & 0x1FFFFFFE0];
        do
        {
          v37 = v34;
          v38 = v33;
          v39 = v22 & 0x1FFFFFFE0;
          do
          {
            v6 = *(v37 - 1);
            v7 = *v37;
            *(v38 - 1) = v6;
            *v38 = v7;
            v38 += 2;
            v37 += 2;
            v39 -= 32;
          }

          while (v39);
          if (v22 != (v22 & 0x1FFFFFFE0))
          {
            v40 = v36;
            v41 = v35;
            v42 = v22 - (v22 & 0x1FFFFFFE0);
            if (v15)
            {
              do
              {
                v46 = *v41++;
                *&v6 = v46;
                *v40++ = v46;
                v42 -= 16;
              }

              while (v42);
            }

            else
            {
              v43 = 0;
              v44 = (v22 & 0xFFFFFFE0) + 1;
              do
              {
                *(v36 + v43) = *(v35 + v43);
                v45 = v22 > v44++;
                ++v43;
              }

              while (v45);
            }
          }

          ++v31;
          v33 += 128;
          v34 = (v34 + v20);
          v35 = (v35 + v20);
          v36 += 8;
        }

        while (v31 != v14);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v47, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *&v6, *&v7, v8, v9, v10, v11, v12, v13);
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 2 * *(a1 + 76);
      v6 = &v25[16 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            *(v6 + v12) = *(v8 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 16;
          v8 += v7;
        }
      }

      else if (v8 < &v25[16 * v2 - 16 + 16 * v4 + v9 / 0x10 + v5] && v6 < v8 + v7 * (v2 - 1) + v9 || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            *(v6 + v16) = *(v8 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 16;
          v8 += v7;
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[16 * v4 + 1 + v5];
        v19 = (v8 + 16);
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 16;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 32 * *(a1 + 76);
      v6 = &v25[256 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6[v12] = *(v8 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 256;
          v8 += v7;
        }
      }

      else if (v8 < &v25[256 * v2 - 256 + 256 * v4 + v9 + v5] && v6 < v8 + v7 * (v2 - 1) + v9 || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6[v16] = *(v8 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 256;
          v8 += v7;
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[256 * v4 + 16 + v5];
        v19 = (v8 + 16);
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 256;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 2 * *(a1 + 76);
      v6 = &v25[16 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            *(v6 + v12) = *(v8 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 16;
          v8 += v7;
        }
      }

      else if (v8 < &v25[16 * v2 - 16 + 16 * v4 + v9 / 0x10 + v5] && v6 < v8 + v7 * (v2 - 1) + v9 || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            *(v6 + v16) = *(v8 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 16;
          v8 += v7;
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[16 * v4 + 1 + v5];
        v19 = (v8 + 16);
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 16;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 32 * *(a1 + 76);
      v6 = &v25[256 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6[v12] = *(v8 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 256;
          v8 += v7;
        }
      }

      else if (v8 < &v25[256 * v2 - 256 + 256 * v4 + v9 + v5] && v6 < v8 + v7 * (v2 - 1) + v9 || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6[v16] = *(v8 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 256;
          v8 += v7;
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[256 * v4 + 16 + v5];
        v19 = (v8 + 16);
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 256;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v46, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = 2 * *(a1 + 76);
      v7 = &v46[16 * v5 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 32 * v4;
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v3; ++i)
        {
          v13 = 0;
          do
          {
            v7->i8[v13] = v9->i8[v13];
            ++v13;
          }

          while (v10 > v13);
          v7 += 16;
          v9 = (v9 + v8);
        }
      }

      else
      {
        result = v10 + v6 * 16;
        if (v9 < &v46[16 * v3 - 16 + 16 * v5 + v10 / 0x10 + v6] && v7 < (v9 + v8 * (v3 - 1) + v10) || v8 < 0)
        {
          for (j = 0; j != v3; ++j)
          {
            v17 = 0;
            do
            {
              v7->i8[v17] = v9->i8[v17];
              ++v17;
            }

            while (v10 > v17);
            v7 += 16;
            v9 = (v9 + v8);
          }
        }

        else
        {
          v18 = 0;
          v19 = &v46[16 * v5 + 1 + v6];
          v20 = v9 + 1;
          do
          {
            v21 = v20;
            v22 = v19;
            v23 = v10;
            do
            {
              v24 = *v21;
              v22[-1] = v21[-1];
              *v22 = v24;
              v22 += 2;
              v21 += 2;
              v23 -= 32;
            }

            while (v23);
            ++v18;
            v19 += 16;
            v20 = (v20 + v8);
          }

          while (v18 != v3);
        }
      }
    }
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  v27 = *(a1 + 88);
  v28 = &byte_29D2F30E1;
  v29 = 16;
  v30 = *(a1 + 89);
  do
  {
    v43 = *v28;
    v44 = *(v28 - 1);
    if (v27 <= 2 * v44 || 2 * v43 >= v30)
    {
      v42 = 0;
    }

    else
    {
      v31 = &v46[32 * v43 + 4 * v44];
      v33 = *v31;
      v34 = v31[1];
      v32 = v31 + 2;
      v35 = v31 + 16;
      v31 += 18;
      v36 = *v32;
      v37 = v32[1];
      v38 = *v35;
      v39 = v35[1];
      v40 = *v31;
      v41 = v31[1];
      *v25 = v33;
      v25[1] = v34;
      v25[2] = v36;
      v25[3] = v37;
      v25[4] = v38;
      v25[5] = v39;
      v25[6] = v40;
      v25[7] = v41;
      v25 += 8;
      v42 = 127;
    }

    *v26++ = v42;
    v28 += 2;
    v29 -= 2;
  }

  while (v29);
  return result;
}