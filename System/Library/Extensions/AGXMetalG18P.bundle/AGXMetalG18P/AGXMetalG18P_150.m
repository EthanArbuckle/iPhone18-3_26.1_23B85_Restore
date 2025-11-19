void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v508 = v15;
  v17 = v16;
  v19 = v18;
  v505 = v20;
  v506 = v21;
  v487 = v22;
  v23 = v12;
  v651 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v509 = v14;
  v24 = v23;
  v489 = v14 + a10 - 1;
  if (*(v23 + 168))
  {
    v25 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v25 = 0;
  }

  v26 = v14 >> 3;
  v27 = v19 - 1;
  v28 = v17 - 1;
  v488 = v489 >> 3;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v504 = v32;
  if (*(v23 + 232) == 1)
  {
    v33 = *(v23 + 273);
    v34 = *(v23 + 272);
    v35 = __clz(v27);
    if (1 << v33 >= v17 || v19 >> v34)
    {
      if (!(v17 >> v33) && 1 << v34 < v19)
      {
        if (v17 < 2)
        {
          v38 = 0;
        }

        else
        {
          v38 = __clz(~(-1 << -__clz(v28))) | 0xFFFFFFE0;
        }

        v34 += v33 + v38;
        v33 = -v38;
      }
    }

    else
    {
      v36 = 32 - __clz(~(-1 << -v35));
      v37 = v34 + v33;
      if (v19 < 2)
      {
        v36 = 0;
      }

      v33 = v37 - v36;
      v34 = v36;
    }

    if (v19 < 2)
    {
      if (v34)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v35)) < v34)
    {
LABEL_27:
      v503 = 0;
LABEL_32:
      v500 = v34 - 4;
      v492 = v33 - 3;
      v40 = -1 << *(*(v23 + 208) + 48);
      v486 = (((~v40 + v19) & v40) + ~(-1 << v34)) >> v34;
      goto LABEL_33;
    }

    if (v17 < 2)
    {
      v39 = 0;
    }

    else
    {
      v39 = 32 - __clz(~(-1 << -__clz(v28)));
    }

    v503 = v39 >= v33;
    goto LABEL_32;
  }

  v503 = 0;
  v486 = 0;
  v492 = 0;
  v500 = 0;
LABEL_33:
  if (v26 <= v488)
  {
    v502 = v508 + a9 - 1;
    if (v508 >> 4 <= v502 >> 4)
    {
      v41 = a11;
      v512 = v27 >> 4;
      v496 = v27 & 0xF;
      v501 = (v27 & 0xF) + 1;
      v484 = v28 & 7;
      v485 = v28 >> 3;
      v483 = ~(-1 << v492);
      v495 = 4 * a11;
      v42 = vadd_s32(__PAIR64__(v19, v17), 0xF00000007);
      v43 = vcgt_u32(v42, 0x1F0000000FLL);
      v491 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v42, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v43);
      v490 = v43;
      v510 = v23;
      v493 = 3 * a11;
      v494 = 2 * a11;
      do
      {
        v44 = (8 * v26) | 7;
        if (8 * v26 <= v509)
        {
          v45 = v509;
        }

        else
        {
          v45 = 8 * v26;
        }

        if (v489 < v44)
        {
          v44 = v489;
        }

        v499 = v45 - 8 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v484;
        v498 = v47;
        v49 = v47 != 8;
        v50 = v508 >> 4;
        v51 = v484 + 1;
        if (v26 != v485)
        {
          v51 = 8;
        }

        v511 = v51;
        if (v26 != v485)
        {
          v48 = v49;
        }

        v497 = v48;
        v52 = v26 & v483;
        v507 = v487 + (v45 - v509) * v41;
        v53 = v508;
        do
        {
          v54 = 16 * v50;
          v55 = 16 * (v50 + 1) - 1;
          if (16 * v50 <= v53)
          {
            v56 = v53;
          }

          else
          {
            v56 = 16 * v50;
          }

          if (v502 < v55)
          {
            v55 = v508 + a9 - 1;
          }

          v57 = v55 - v56;
          v58 = v57 + 1;
          if (v50 == v512)
          {
            v59 = v501;
          }

          else
          {
            v59 = 16;
          }

          v60 = 1;
          if (8 * v26 >= v509 && v54 >= v53)
          {
            v61 = v57 != v496;
            if (v50 != v512)
            {
              v61 = v58 != 16;
            }

            v60 = v61 || v497;
          }

          if (v503)
          {
            if (v500 | v492)
            {
              v62 = 0;
              v63 = 0;
              v64 = 1;
              v65 = v492 != 0;
              v66 = v500 != 0;
              v67 = v492;
              v68 = v500;
              do
              {
                --v67;
                if (v65)
                {
                  v63 |= (v52 & v64) << v62++;
                }

                else
                {
                  v67 = 0;
                }

                --v68;
                if (v66)
                {
                  v63 |= (v50 & ~(-1 << v500) & v64) << v62++;
                }

                else
                {
                  v68 = 0;
                }

                v64 *= 2;
                --v62;
                v66 = v68 != 0;
                v65 = v67 != 0;
              }

              while (v68 | v67);
              v69 = v63 << 11;
            }

            else
            {
              v69 = 0;
            }

            v77 = v69 + *(v24 + 336) * ((v50 >> v500) + (v26 >> v492) * v486);
          }

          else if (v491)
          {
            v70 = 0;
            v71 = 0;
            v72 = 1;
            v73 = v490.i8[0];
            v74 = v490.i8[4];
            v75 = v491.i32[0];
            v76 = v491.i32[1];
            do
            {
              --v75;
              if (v73)
              {
                v71 |= (v72 & v26) << v70++;
              }

              else
              {
                v75 = 0;
              }

              --v76;
              if (v74)
              {
                v71 |= (v72 & v50) << v70++;
              }

              else
              {
                v76 = 0;
              }

              v72 *= 2;
              --v70;
              v74 = v76 != 0;
              v73 = v75 != 0;
            }

            while (v76 | v75);
            v77 = v71 << 11;
          }

          else
          {
            v77 = 0;
          }

          v78 = *(v24 + 128) >> (*(v24 + 144) + a12);
          if (v78 <= 1)
          {
            v78 = 1;
          }

          v79 = v78 + 15;
          if (v79 < 0x20)
          {
            v80 = 0;
          }

          else
          {
            v80 = 32 - __clz(~(-1 << -__clz((v79 >> 4) - 1)));
          }

          v81 = *(v24 + 132) >> (*(v24 + 144) + a12);
          if (v81 <= 1)
          {
            v81 = 1;
          }

          v82 = v81 + 7;
          if (v82 < 0x10)
          {
            v83 = 0;
            if (!v80)
            {
LABEL_107:
              v89 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v83 = 32 - __clz(~(-1 << -__clz((v82 >> 3) - 1)));
            if (!(v83 | v80))
            {
              goto LABEL_107;
            }
          }

          v84 = 0;
          v85 = 0;
          v86 = v80 != 0;
          v87 = v83 != 0;
          v88 = 1;
          do
          {
            --v80;
            if (v86)
            {
              v85 |= (v88 & v50) << v84++;
            }

            else
            {
              v80 = 0;
            }

            --v83;
            if (v87)
            {
              v85 |= (v88 & v26) << v84++;
            }

            else
            {
              v83 = 0;
            }

            v88 *= 2;
            --v84;
            v87 = v83 != 0;
            v86 = v80 != 0;
          }

          while (v83 | v80);
          v89 = 8 * v85;
LABEL_108:
          v90 = (v505 + v77);
          if (v504)
          {
            memcpy(__dst, v90, sizeof(__dst));
            v90 = __dst;
          }

          v91 = (v506 + v89);
          v92 = (v507 + 16 * (v56 - v53));
          if (!(v60 & 1 | (v59 < 0x10u)) && v511 > 7)
          {
            v93 = *v91;
            if (v93 == 255)
            {
              v108 = v90[1];
              v109 = v90[2];
              v110 = v90[3];
              v111 = v90[8];
              v112 = v90[9];
              v113 = v90[6];
              v114 = v90[12];
              v115 = v90[13];
              v116 = v90[15];
              v117 = v90[7];
              v118 = v90[4];
              v119 = v90[5];
              v120 = v90[10];
              v121 = v90[11];
              v122 = v90[14];
              v94 = 2 * a11;
              *v92 = *v90;
              v92[1] = v108;
              v92[2] = v118;
              v92[3] = v119;
              v123 = (v92 + v494);
              v41 = a11;
              v124 = (v92 + a11);
              *v124 = v109;
              v124[1] = v110;
              v124[2] = v113;
              v124[3] = v117;
              *v123 = v111;
              v123[1] = v112;
              v123[2] = v114;
              v123[3] = v115;
              v125 = (v92 + v494 + a11);
              v96 = 256;
              *v125 = v120;
              v125[1] = v121;
              v125[2] = v122;
              v125[3] = v116;
              v95 = 3 * a11;
            }

            else
            {
              v41 = a11;
              v95 = 3 * a11;
              v94 = 2 * a11;
              if (v93 == 7)
              {
                v104 = vld1q_dup_f64(v90->f64);
                *v92 = v104;
                v92[1] = v104;
                v92[2] = v104;
                v92[3] = v104;
                v105 = (v92 + a11);
                *v105 = v104;
                v105[1] = v104;
                v105[2] = v104;
                v105[3] = v104;
                v106 = (v92 + v494);
                *v106 = v104;
                v106[1] = v104;
                v106[2] = v104;
                v106[3] = v104;
                v107 = (v92 + v493);
                *v107 = v104;
                v107[1] = v104;
                v107[2] = v104;
                v107[3] = v104;
                v96 = 8;
              }

              else if (*v91)
              {
                v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v92, a11, v90, v93);
              }

              else
              {
                v96 = 0;
                v92[2] = 0u;
                v92[3] = 0u;
                *v92 = 0u;
                v92[1] = 0u;
                v97 = (v92->f64 + a11);
                v97[2] = 0u;
                v97[3] = 0u;
                *v97 = 0u;
                v97[1] = 0u;
                v98 = (v92->f64 + v494);
                v98[2] = 0u;
                v98[3] = 0u;
                *v98 = 0u;
                v98[1] = 0u;
                v99 = (v92->f64 + v493);
                v99[2] = 0u;
                v99[3] = 0u;
                *v99 = 0u;
                v99[1] = 0u;
              }
            }

            v126 = v90 + v96;
            f64 = v92[4].f64;
            v128 = v91[1];
            if (v128 == 255)
            {
              v137 = *(v126 + 16);
              v138 = *(v126 + 32);
              v139 = *(v126 + 48);
              v140 = *(v126 + 128);
              v141 = *(v126 + 144);
              v142 = *(v126 + 96);
              v143 = *(v126 + 192);
              v144 = *(v126 + 208);
              v145 = *(v126 + 240);
              v146 = *(v126 + 112);
              v147 = *(v126 + 64);
              v148 = *(v126 + 80);
              v149 = *(v126 + 160);
              v150 = *(v126 + 176);
              v151 = *(v126 + 224);
              *f64 = *v126;
              v92[5] = v137;
              v92[6] = v147;
              v92[7] = v148;
              v152 = (f64 + v94);
              v153 = (f64 + v41);
              *v153 = v138;
              v153[1] = v139;
              v153[2] = v142;
              v153[3] = v146;
              *v152 = v140;
              v152[1] = v141;
              v152[2] = v143;
              v152[3] = v144;
              v154 = (f64 + v94 + v41);
              v129 = 256;
              *v154 = v149;
              v154[1] = v150;
              v154[2] = v151;
              v154[3] = v145;
            }

            else if (v128 == 7)
            {
              v133 = vld1q_dup_f64(v126);
              v92[4] = v133;
              v92[5] = v133;
              v92[6] = v133;
              v92[7] = v133;
              v134 = (f64 + v41);
              *v134 = v133;
              v134[1] = v133;
              v134[2] = v133;
              v134[3] = v133;
              v135 = (f64 + v94);
              *v135 = v133;
              v135[1] = v133;
              v135[2] = v133;
              v135[3] = v133;
              v136 = (f64 + v95);
              *v136 = v133;
              v136[1] = v133;
              v129 = 8;
              v136[2] = v133;
              v136[3] = v133;
            }

            else if (v91[1])
            {
              v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(f64, v41, v126, v128);
            }

            else
            {
              v129 = 0;
              v92[6] = 0u;
              v92[7] = 0u;
              *f64 = 0u;
              v92[5] = 0u;
              v130 = (f64 + v41);
              v130[2] = 0u;
              v130[3] = 0u;
              *v130 = 0u;
              v130[1] = 0u;
              v131 = (f64 + v94);
              v131[2] = 0u;
              v131[3] = 0u;
              *v131 = 0u;
              v131[1] = 0u;
              v132 = (f64 + v95);
              v132[2] = 0u;
              v132[3] = 0u;
              *v132 = 0u;
              v132[1] = 0u;
            }

            v155 = v126 + v129;
            v156 = (v92 + v495);
            v157 = v91[2];
            if (v157 == 255)
            {
              v166 = *(v155 + 16);
              v167 = *(v155 + 32);
              v168 = *(v155 + 48);
              v169 = *(v155 + 128);
              v170 = *(v155 + 144);
              v171 = *(v155 + 96);
              v172 = *(v155 + 192);
              v173 = *(v155 + 208);
              v174 = *(v155 + 240);
              v175 = *(v155 + 112);
              v176 = *(v155 + 64);
              v177 = *(v155 + 80);
              v178 = *(v155 + 160);
              v179 = *(v155 + 176);
              v180 = *(v155 + 224);
              *v156 = *v155;
              v156[1] = v166;
              v156[2] = v176;
              v156[3] = v177;
              v181 = (v156->f64 + v94);
              v182 = (v156->f64 + v41);
              *v182 = v167;
              v182[1] = v168;
              v182[2] = v171;
              v182[3] = v175;
              *v181 = v169;
              v181[1] = v170;
              v181[2] = v172;
              v181[3] = v173;
              v183 = (v156->f64 + v94 + v41);
              v158 = 256;
              *v183 = v178;
              v183[1] = v179;
              v183[2] = v180;
              v183[3] = v174;
            }

            else if (v157 == 7)
            {
              v162 = vld1q_dup_f64(v155);
              *v156 = v162;
              v156[1] = v162;
              v156[2] = v162;
              v156[3] = v162;
              v163 = (v156 + v41);
              *v163 = v162;
              v163[1] = v162;
              v163[2] = v162;
              v163[3] = v162;
              v164 = (v156 + v94);
              *v164 = v162;
              v164[1] = v162;
              v164[2] = v162;
              v164[3] = v162;
              v165 = (v156 + v95);
              *v165 = v162;
              v165[1] = v162;
              v165[2] = v162;
              v165[3] = v162;
              v158 = 8;
            }

            else if (v91[2])
            {
              v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v92 + v495, v41, v155, v157);
            }

            else
            {
              v158 = 0;
              v156[2] = 0u;
              v156[3] = 0u;
              *v156 = 0u;
              v156[1] = 0u;
              v159 = (v156->f64 + v41);
              v159[2] = 0u;
              v159[3] = 0u;
              *v159 = 0u;
              v159[1] = 0u;
              v160 = (v156->f64 + v94);
              v160[2] = 0u;
              v160[3] = 0u;
              *v160 = 0u;
              v160[1] = 0u;
              v161 = (v156->f64 + v95);
              v161[2] = 0u;
              v161[3] = 0u;
              *v161 = 0u;
              v161[1] = 0u;
            }

            v184 = v155 + v158;
            v185 = v156[4].f64;
            v186 = v91[3];
            if (v186 == 255)
            {
              v195 = *(v184 + 16);
              v196 = *(v184 + 32);
              v197 = *(v184 + 48);
              v198 = *(v184 + 128);
              v199 = *(v184 + 144);
              v200 = *(v184 + 96);
              v201 = *(v184 + 192);
              v202 = *(v184 + 208);
              v203 = *(v184 + 240);
              v204 = *(v184 + 112);
              v205 = *(v184 + 64);
              v206 = *(v184 + 80);
              v207 = *(v184 + 160);
              v208 = *(v184 + 176);
              v209 = *(v184 + 224);
              *v185 = *v184;
              v156[5] = v195;
              v156[6] = v205;
              v156[7] = v206;
              v210 = (v185 + v94);
              v211 = (v185 + v41);
              *v211 = v196;
              v211[1] = v197;
              v211[2] = v200;
              v211[3] = v204;
              *v210 = v198;
              v210[1] = v199;
              v210[2] = v201;
              v210[3] = v202;
              v212 = (v185 + v94 + v41);
              v187 = 256;
              *v212 = v207;
              v212[1] = v208;
              v212[2] = v209;
              v212[3] = v203;
            }

            else if (v186 == 7)
            {
              v191 = vld1q_dup_f64(v184);
              v156[4] = v191;
              v156[5] = v191;
              v156[6] = v191;
              v156[7] = v191;
              v192 = (v185 + v41);
              *v192 = v191;
              v192[1] = v191;
              v192[2] = v191;
              v192[3] = v191;
              v193 = (v185 + v94);
              *v193 = v191;
              v193[1] = v191;
              v193[2] = v191;
              v193[3] = v191;
              v194 = (v185 + v95);
              *v194 = v191;
              v194[1] = v191;
              v187 = 8;
              v194[2] = v191;
              v194[3] = v191;
            }

            else if (v91[3])
            {
              v187 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v185, v41, v184, v186);
            }

            else
            {
              v187 = 0;
              v156[6] = 0u;
              v156[7] = 0u;
              *v185 = 0u;
              v156[5] = 0u;
              v188 = (v185 + v41);
              v188[2] = 0u;
              v188[3] = 0u;
              *v188 = 0u;
              v188[1] = 0u;
              v189 = (v185 + v94);
              v189[2] = 0u;
              v189[3] = 0u;
              *v189 = 0u;
              v189[1] = 0u;
              v190 = (v185 + v95);
              v190[2] = 0u;
              v190[3] = 0u;
              *v190 = 0u;
              v190[1] = 0u;
            }

            v213 = v184 + v187;
            v214 = v92[8].f64;
            v215 = v91[4];
            if (v215 == 255)
            {
              v224 = *(v213 + 16);
              v225 = *(v213 + 32);
              v226 = *(v213 + 48);
              v227 = *(v213 + 128);
              v228 = *(v213 + 144);
              v229 = *(v213 + 96);
              v230 = *(v213 + 192);
              v231 = *(v213 + 208);
              v232 = *(v213 + 240);
              v233 = *(v213 + 112);
              v234 = *(v213 + 64);
              v235 = *(v213 + 80);
              v236 = *(v213 + 160);
              v237 = *(v213 + 176);
              v238 = *(v213 + 224);
              *v214 = *v213;
              v92[9] = v224;
              v92[10] = v234;
              v92[11] = v235;
              v239 = (v214 + v94);
              v240 = (v214 + v41);
              *v240 = v225;
              v240[1] = v226;
              v240[2] = v229;
              v240[3] = v233;
              *v239 = v227;
              v239[1] = v228;
              v239[2] = v230;
              v239[3] = v231;
              v241 = (v214 + v94 + v41);
              v216 = 256;
              *v241 = v236;
              v241[1] = v237;
              v241[2] = v238;
              v241[3] = v232;
            }

            else if (v215 == 7)
            {
              v220 = vld1q_dup_f64(v213);
              v92[8] = v220;
              v92[9] = v220;
              v92[10] = v220;
              v92[11] = v220;
              v221 = (v214 + v41);
              *v221 = v220;
              v221[1] = v220;
              v221[2] = v220;
              v221[3] = v220;
              v222 = (v214 + v94);
              *v222 = v220;
              v222[1] = v220;
              v222[2] = v220;
              v222[3] = v220;
              v223 = (v214 + v95);
              *v223 = v220;
              v223[1] = v220;
              v216 = 8;
              v223[2] = v220;
              v223[3] = v220;
            }

            else if (v91[4])
            {
              v216 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v214, v41, v213, v215);
            }

            else
            {
              v216 = 0;
              v92[10] = 0u;
              v92[11] = 0u;
              *v214 = 0u;
              v92[9] = 0u;
              v217 = (v214 + v41);
              v217[2] = 0u;
              v217[3] = 0u;
              *v217 = 0u;
              v217[1] = 0u;
              v218 = (v214 + v94);
              v218[2] = 0u;
              v218[3] = 0u;
              *v218 = 0u;
              v218[1] = 0u;
              v219 = (v214 + v95);
              v219[2] = 0u;
              v219[3] = 0u;
              *v219 = 0u;
              v219[1] = 0u;
            }

            v242 = v213 + v216;
            v243 = v92[12].f64;
            v244 = v91[5];
            if (v244 == 255)
            {
              v253 = *(v242 + 16);
              v254 = *(v242 + 32);
              v255 = *(v242 + 48);
              v256 = *(v242 + 128);
              v257 = *(v242 + 144);
              v258 = *(v242 + 96);
              v259 = *(v242 + 192);
              v260 = *(v242 + 208);
              v261 = *(v242 + 240);
              v262 = *(v242 + 112);
              v263 = *(v242 + 64);
              v264 = *(v242 + 80);
              v265 = *(v242 + 160);
              v266 = *(v242 + 176);
              v267 = *(v242 + 224);
              *v243 = *v242;
              v92[13] = v253;
              v92[14] = v263;
              v92[15] = v264;
              v268 = (v243 + v94);
              v269 = (v243 + v41);
              *v269 = v254;
              v269[1] = v255;
              v269[2] = v258;
              v269[3] = v262;
              *v268 = v256;
              v268[1] = v257;
              v268[2] = v259;
              v268[3] = v260;
              v270 = (v243 + v94 + v41);
              v245 = 256;
              *v270 = v265;
              v270[1] = v266;
              v270[2] = v267;
              v270[3] = v261;
            }

            else if (v244 == 7)
            {
              v249 = vld1q_dup_f64(v242);
              v92[12] = v249;
              v92[13] = v249;
              v92[14] = v249;
              v92[15] = v249;
              v250 = (v243 + v41);
              *v250 = v249;
              v250[1] = v249;
              v250[2] = v249;
              v250[3] = v249;
              v251 = (v243 + v94);
              *v251 = v249;
              v251[1] = v249;
              v251[2] = v249;
              v251[3] = v249;
              v252 = (v243 + v95);
              *v252 = v249;
              v252[1] = v249;
              v245 = 8;
              v252[2] = v249;
              v252[3] = v249;
            }

            else if (v91[5])
            {
              v245 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v243, v41, v242, v244);
            }

            else
            {
              v245 = 0;
              v92[14] = 0u;
              v92[15] = 0u;
              *v243 = 0u;
              v92[13] = 0u;
              v246 = (v243 + v41);
              v246[2] = 0u;
              v246[3] = 0u;
              *v246 = 0u;
              v246[1] = 0u;
              v247 = (v243 + v94);
              v247[2] = 0u;
              v247[3] = 0u;
              *v247 = 0u;
              v247[1] = 0u;
              v248 = (v243 + v95);
              v248[2] = 0u;
              v248[3] = 0u;
              *v248 = 0u;
              v248[1] = 0u;
            }

            v271 = v242 + v245;
            v272 = v156[8].f64;
            v273 = v91[6];
            if (v273 == 255)
            {
              v282 = *(v271 + 16);
              v283 = *(v271 + 32);
              v284 = *(v271 + 48);
              v285 = *(v271 + 128);
              v286 = *(v271 + 144);
              v287 = *(v271 + 96);
              v288 = *(v271 + 192);
              v289 = *(v271 + 208);
              v290 = *(v271 + 240);
              v291 = *(v271 + 112);
              v292 = *(v271 + 64);
              v293 = *(v271 + 80);
              v294 = *(v271 + 160);
              v295 = *(v271 + 176);
              v296 = *(v271 + 224);
              *v272 = *v271;
              v156[9] = v282;
              v156[10] = v292;
              v156[11] = v293;
              v297 = (v272 + v94);
              v298 = (v272 + v41);
              *v298 = v283;
              v298[1] = v284;
              v298[2] = v287;
              v298[3] = v291;
              *v297 = v285;
              v297[1] = v286;
              v297[2] = v288;
              v297[3] = v289;
              v299 = (v272 + v94 + v41);
              v274 = 256;
              *v299 = v294;
              v299[1] = v295;
              v299[2] = v296;
              v299[3] = v290;
            }

            else if (v273 == 7)
            {
              v278 = vld1q_dup_f64(v271);
              v156[8] = v278;
              v156[9] = v278;
              v156[10] = v278;
              v156[11] = v278;
              v279 = (v272 + v41);
              *v279 = v278;
              v279[1] = v278;
              v279[2] = v278;
              v279[3] = v278;
              v280 = (v272 + v94);
              *v280 = v278;
              v280[1] = v278;
              v280[2] = v278;
              v280[3] = v278;
              v281 = (v272 + v95);
              *v281 = v278;
              v281[1] = v278;
              v274 = 8;
              v281[2] = v278;
              v281[3] = v278;
            }

            else if (v91[6])
            {
              v274 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v272, v41, v242 + v245, v273);
            }

            else
            {
              v274 = 0;
              v156[10] = 0u;
              v156[11] = 0u;
              *v272 = 0u;
              v156[9] = 0u;
              v275 = (v272 + v41);
              v275[2] = 0u;
              v275[3] = 0u;
              *v275 = 0u;
              v275[1] = 0u;
              v276 = (v272 + v94);
              v276[2] = 0u;
              v276[3] = 0u;
              *v276 = 0u;
              v276[1] = 0u;
              v277 = (v272 + v95);
              v277[2] = 0u;
              v277[3] = 0u;
              *v277 = 0u;
              v277[1] = 0u;
            }

            v300 = v271 + v274;
            v301 = v156[12].f64;
            v302 = v91[7];
            if (v302 == 255)
            {
              v310 = *(v300 + 16);
              v311 = *(v300 + 32);
              v312 = *(v300 + 48);
              v313 = *(v300 + 96);
              v314 = *(v300 + 112);
              v315 = *(v300 + 64);
              v316 = *(v300 + 80);
              v317 = *(v300 + 128);
              v318 = *(v300 + 144);
              v319 = *(v300 + 192);
              v320 = *(v300 + 208);
              v321 = *(v300 + 224);
              v322 = *(v300 + 240);
              v323 = *(v300 + 160);
              v324 = *(v300 + 176);
              *v301 = *v300;
              v156[13] = v310;
              v156[14] = v315;
              v156[15] = v316;
              v325 = (v301 + v94);
              v326 = (v301 + v41);
              *v326 = v311;
              v326[1] = v312;
              v326[2] = v313;
              v326[3] = v314;
              *v325 = v317;
              v325[1] = v318;
              v325[2] = v319;
              v325[3] = v320;
              v327 = (v301 + v94 + v41);
              *v327 = v323;
              v327[1] = v324;
              v327[2] = v321;
              v327[3] = v322;
              v53 = v508;
              v24 = v510;
            }

            else
            {
              v53 = v508;
              v24 = v510;
              if (v302 == 7)
              {
                v306 = vld1q_dup_f64(v300);
                v156[12] = v306;
                v156[13] = v306;
                v156[14] = v306;
                v156[15] = v306;
                v307 = (v301 + v41);
                *v307 = v306;
                v307[1] = v306;
                v307[2] = v306;
                v307[3] = v306;
                v308 = (v301 + v94);
                *v308 = v306;
                v308[1] = v306;
                v308[2] = v306;
                v308[3] = v306;
                v309 = (v301 + v95);
                *v309 = v306;
                v309[1] = v306;
                v309[2] = v306;
                v309[3] = v306;
              }

              else if (v302)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v301, v41, v300, v302);
              }

              else
              {
                v156[14] = 0u;
                v156[15] = 0u;
                *v301 = 0u;
                v156[13] = 0u;
                v303 = (v301 + v41);
                v303[2] = 0u;
                v303[3] = 0u;
                *v303 = 0u;
                v303[1] = 0u;
                v304 = (v301 + v94);
                v304[2] = 0u;
                v304[3] = 0u;
                *v304 = 0u;
                v304[1] = 0u;
                v305 = (v301 + v95);
                v305[2] = 0u;
                v305[3] = 0u;
                *v305 = 0u;
                v305[1] = 0u;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v100 = v56 - v54;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v510;
          block[5] = v90;
          v520 = v59;
          v521 = v511;
          v516 = v499;
          v517 = v56 - v54;
          block[6] = v91;
          v514 = v92;
          v41 = a11;
          v515 = a11;
          v518 = v498;
          v519 = v58;
          if (v60)
          {
            dispatch_sync(*(*(v510 + 8) + 16552), block);
            v53 = v508;
            v24 = v510;
LABEL_49:
            v52 = v26 & v483;
            goto LABEL_50;
          }

          v101 = v100;
          v102 = *v91;
          if (v102 == 255)
          {
            v329 = v90[1];
            v330 = v90[2];
            v331 = v90[3];
            v332 = v90[6];
            v333 = v90[7];
            v334 = v90[8];
            v335 = v90[9];
            v336 = v90[11];
            v337 = v90[4];
            v338 = v90[12];
            v339 = v90[13];
            v340 = v90[14];
            v341 = v90[15];
            v342 = v90[5];
            v343 = v90[10];
            v523 = *v90;
            v524 = v329;
            v525 = v337;
            v526 = v342;
            v539 = v330;
            v540 = v331;
            v541 = v332;
            v542 = v333;
            v555 = v334;
            v556 = v335;
            v557 = v338;
            v558 = v339;
            v103 = 256;
            v571 = v343;
            v572 = v336;
            v573 = v340;
            v574 = v341;
          }

          else if (v102 == 7)
          {
            v328 = vld1q_dup_f64(v90->f64);
            v523 = v328;
            v524 = v328;
            v525 = v328;
            v526 = v328;
            v539 = v328;
            v540 = v328;
            v541 = v328;
            v542 = v328;
            v555 = v328;
            v556 = v328;
            v557 = v328;
            v558 = v328;
            v571 = v328;
            v572 = v328;
            v103 = 8;
            v573 = v328;
            v574 = v328;
          }

          else if (*v91)
          {
            v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v523, 256, v90, v102);
          }

          else
          {
            v103 = 0;
            v526 = 0u;
            v525 = 0u;
            v524 = 0u;
            v523 = 0u;
            v539 = 0u;
            v540 = 0u;
            v541 = 0u;
            v542 = 0u;
            v555 = 0u;
            v556 = 0u;
            v557 = 0u;
            v558 = 0u;
            v571 = 0u;
            v572 = 0u;
            v573 = 0u;
            v574 = 0u;
          }

          v344 = v90 + v103;
          v345 = v91[1];
          if (v345 == 255)
          {
            v348 = *(v344 + 16);
            v349 = *(v344 + 32);
            v350 = *(v344 + 48);
            v351 = *(v344 + 96);
            v352 = *(v344 + 112);
            v353 = *(v344 + 128);
            v354 = *(v344 + 144);
            v355 = *(v344 + 176);
            v356 = *(v344 + 64);
            v357 = *(v344 + 192);
            v358 = *(v344 + 208);
            v359 = *(v344 + 224);
            v360 = *(v344 + 240);
            v361 = *(v344 + 80);
            v362 = *(v344 + 160);
            v527 = *v344;
            v528 = v348;
            v529 = v356;
            v530 = v361;
            v543 = v349;
            v544 = v350;
            v545 = v351;
            v546 = v352;
            v559 = v353;
            v560 = v354;
            v561 = v357;
            v562 = v358;
            v346 = 256;
            v575 = v362;
            v576 = v355;
            v577 = v359;
            v578 = v360;
          }

          else if (v345 == 7)
          {
            v347 = vld1q_dup_f64(v344);
            v527 = v347;
            v528 = v347;
            v529 = v347;
            v530 = v347;
            v543 = v347;
            v544 = v347;
            v545 = v347;
            v546 = v347;
            v559 = v347;
            v560 = v347;
            v561 = v347;
            v562 = v347;
            v575 = v347;
            v576 = v347;
            v346 = 8;
            v577 = v347;
            v578 = v347;
          }

          else if (v91[1])
          {
            v346 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v527, 256, v344, v345);
          }

          else
          {
            v346 = 0;
            v529 = 0u;
            v530 = 0u;
            v527 = 0u;
            v528 = 0u;
            v543 = 0u;
            v544 = 0u;
            v545 = 0u;
            v546 = 0u;
            v559 = 0u;
            v560 = 0u;
            v561 = 0u;
            v562 = 0u;
            v575 = 0u;
            v576 = 0u;
            v577 = 0u;
            v578 = 0u;
          }

          v363 = v344 + v346;
          v364 = v91[2];
          if (v364 == 255)
          {
            v367 = *(v363 + 16);
            v368 = *(v363 + 32);
            v369 = *(v363 + 48);
            v370 = *(v363 + 96);
            v371 = *(v363 + 112);
            v372 = *(v363 + 128);
            v373 = *(v363 + 144);
            v374 = *(v363 + 176);
            v375 = *(v363 + 64);
            v376 = *(v363 + 192);
            v377 = *(v363 + 208);
            v378 = *(v363 + 224);
            v379 = *(v363 + 240);
            v380 = *(v363 + 80);
            v381 = *(v363 + 160);
            v587 = *v363;
            v588 = v367;
            v589 = v375;
            v590 = v380;
            v603 = v368;
            v604 = v369;
            v605 = v370;
            v606 = v371;
            v619 = v372;
            v620 = v373;
            v621 = v376;
            v622 = v377;
            v365 = 256;
            v635 = v381;
            v636 = v374;
            v637 = v378;
            v638 = v379;
          }

          else if (v364 == 7)
          {
            v366 = vld1q_dup_f64(v363);
            v587 = v366;
            v588 = v366;
            v589 = v366;
            v590 = v366;
            v603 = v366;
            v604 = v366;
            v605 = v366;
            v606 = v366;
            v619 = v366;
            v620 = v366;
            v621 = v366;
            v622 = v366;
            v635 = v366;
            v636 = v366;
            v637 = v366;
            v365 = 8;
            v638 = v366;
          }

          else if (v91[2])
          {
            v365 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v587, 256, v363, v364);
          }

          else
          {
            v365 = 0;
            v589 = 0u;
            v590 = 0u;
            v587 = 0u;
            v588 = 0u;
            v603 = 0u;
            v604 = 0u;
            v605 = 0u;
            v606 = 0u;
            v619 = 0u;
            v620 = 0u;
            v621 = 0u;
            v622 = 0u;
            v635 = 0u;
            v636 = 0u;
            v637 = 0u;
            v638 = 0u;
          }

          v382 = v363 + v365;
          v383 = v91[3];
          if (v383 == 255)
          {
            v386 = *(v382 + 16);
            v387 = *(v382 + 32);
            v388 = *(v382 + 48);
            v389 = *(v382 + 96);
            v390 = *(v382 + 112);
            v391 = *(v382 + 128);
            v392 = *(v382 + 144);
            v393 = *(v382 + 176);
            v394 = *(v382 + 64);
            v395 = *(v382 + 192);
            v396 = *(v382 + 208);
            v397 = *(v382 + 224);
            v398 = *(v382 + 240);
            v399 = *(v382 + 80);
            v400 = *(v382 + 160);
            v591 = *v382;
            v592 = v386;
            v593 = v394;
            v594 = v399;
            v607 = v387;
            v608 = v388;
            v609 = v389;
            v610 = v390;
            v623 = v391;
            v624 = v392;
            v625 = v395;
            v626 = v396;
            v384 = 256;
            v639 = v400;
            v640 = v393;
            v641 = v397;
            v642 = v398;
          }

          else if (v383 == 7)
          {
            v385 = vld1q_dup_f64(v382);
            v591 = v385;
            v592 = v385;
            v593 = v385;
            v594 = v385;
            v607 = v385;
            v608 = v385;
            v609 = v385;
            v610 = v385;
            v623 = v385;
            v624 = v385;
            v625 = v385;
            v626 = v385;
            v639 = v385;
            v640 = v385;
            v641 = v385;
            v384 = 8;
            v642 = v385;
          }

          else if (v91[3])
          {
            v384 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v591, 256, v382, v383);
          }

          else
          {
            v384 = 0;
            v593 = 0u;
            v594 = 0u;
            v591 = 0u;
            v592 = 0u;
            v607 = 0u;
            v608 = 0u;
            v609 = 0u;
            v610 = 0u;
            v623 = 0u;
            v624 = 0u;
            v625 = 0u;
            v626 = 0u;
            v639 = 0u;
            v640 = 0u;
            v641 = 0u;
            v642 = 0u;
          }

          v401 = v382 + v384;
          v402 = v91[4];
          if (v402 == 255)
          {
            v405 = *(v401 + 16);
            v406 = *(v401 + 32);
            v407 = *(v401 + 48);
            v408 = *(v401 + 96);
            v409 = *(v401 + 112);
            v410 = *(v401 + 128);
            v411 = *(v401 + 144);
            v412 = *(v401 + 176);
            v413 = *(v401 + 64);
            v414 = *(v401 + 192);
            v415 = *(v401 + 208);
            v416 = *(v401 + 224);
            v417 = *(v401 + 240);
            v418 = *(v401 + 80);
            v419 = *(v401 + 160);
            v531 = *v401;
            v532 = v405;
            v533 = v413;
            v534 = v418;
            v547 = v406;
            v548 = v407;
            v549 = v408;
            v550 = v409;
            v563 = v410;
            v564 = v411;
            v565 = v414;
            v566 = v415;
            v403 = 256;
            v579 = v419;
            v580 = v412;
            v581 = v416;
            v582 = v417;
          }

          else if (v402 == 7)
          {
            v404 = vld1q_dup_f64(v401);
            v531 = v404;
            v532 = v404;
            v533 = v404;
            v534 = v404;
            v547 = v404;
            v548 = v404;
            v549 = v404;
            v550 = v404;
            v563 = v404;
            v564 = v404;
            v565 = v404;
            v566 = v404;
            v579 = v404;
            v580 = v404;
            v403 = 8;
            v581 = v404;
            v582 = v404;
          }

          else if (v91[4])
          {
            v403 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v531, 256, v401, v402);
          }

          else
          {
            v403 = 0;
            v533 = 0u;
            v534 = 0u;
            v531 = 0u;
            v532 = 0u;
            v547 = 0u;
            v548 = 0u;
            v549 = 0u;
            v550 = 0u;
            v563 = 0u;
            v564 = 0u;
            v565 = 0u;
            v566 = 0u;
            v579 = 0u;
            v580 = 0u;
            v581 = 0u;
            v582 = 0u;
          }

          v420 = v401 + v403;
          v421 = v91[5];
          if (v421 == 255)
          {
            v424 = *(v420 + 16);
            v425 = *(v420 + 32);
            v426 = *(v420 + 48);
            v427 = *(v420 + 96);
            v428 = *(v420 + 112);
            v429 = *(v420 + 128);
            v430 = *(v420 + 144);
            v431 = *(v420 + 176);
            v432 = *(v420 + 64);
            v433 = *(v420 + 192);
            v434 = *(v420 + 208);
            v435 = *(v420 + 224);
            v436 = *(v420 + 240);
            v437 = *(v420 + 80);
            v438 = *(v420 + 160);
            v535 = *v420;
            v536 = v424;
            v537 = v432;
            v538 = v437;
            v551 = v425;
            v552 = v426;
            v553 = v427;
            v554 = v428;
            v567 = v429;
            v568 = v430;
            v569 = v433;
            v570 = v434;
            v422 = 256;
            v583 = v438;
            v584 = v431;
            v585 = v435;
            v586 = v436;
          }

          else if (v421 == 7)
          {
            v423 = vld1q_dup_f64(v420);
            v535 = v423;
            v536 = v423;
            v537 = v423;
            v538 = v423;
            v551 = v423;
            v552 = v423;
            v553 = v423;
            v554 = v423;
            v567 = v423;
            v568 = v423;
            v569 = v423;
            v570 = v423;
            v583 = v423;
            v584 = v423;
            v422 = 8;
            v585 = v423;
            v586 = v423;
          }

          else if (v91[5])
          {
            v422 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v535, 256, v420, v421);
          }

          else
          {
            v422 = 0;
            v537 = 0u;
            v538 = 0u;
            v535 = 0u;
            v536 = 0u;
            v551 = 0u;
            v552 = 0u;
            v553 = 0u;
            v554 = 0u;
            v567 = 0u;
            v568 = 0u;
            v569 = 0u;
            v570 = 0u;
            v583 = 0u;
            v584 = 0u;
            v585 = 0u;
            v586 = 0u;
          }

          v439 = v420 + v422;
          v440 = v91[6];
          if (v440 == 255)
          {
            v443 = *(v439 + 16);
            v444 = *(v439 + 32);
            v445 = *(v439 + 48);
            v446 = *(v439 + 96);
            v447 = *(v439 + 112);
            v448 = *(v439 + 128);
            v449 = *(v439 + 144);
            v450 = *(v439 + 176);
            v451 = *(v439 + 64);
            v452 = *(v439 + 192);
            v453 = *(v439 + 208);
            v454 = *(v439 + 224);
            v455 = *(v439 + 240);
            v456 = *(v439 + 80);
            v457 = *(v439 + 160);
            v595 = *v439;
            v596 = v443;
            v597 = v451;
            v598 = v456;
            v611 = v444;
            v612 = v445;
            v613 = v446;
            v614 = v447;
            v627 = v448;
            v628 = v449;
            v629 = v452;
            v630 = v453;
            v441 = 256;
            v643 = v457;
            v644 = v450;
            v645 = v454;
            v646 = v455;
          }

          else if (v440 == 7)
          {
            v442 = vld1q_dup_f64(v439);
            v595 = v442;
            v596 = v442;
            v597 = v442;
            v598 = v442;
            v611 = v442;
            v612 = v442;
            v613 = v442;
            v614 = v442;
            v627 = v442;
            v628 = v442;
            v629 = v442;
            v630 = v442;
            v643 = v442;
            v644 = v442;
            v645 = v442;
            v441 = 8;
            v646 = v442;
          }

          else if (v91[6])
          {
            v441 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v595, 256, v439, v440);
          }

          else
          {
            v441 = 0;
            v597 = 0u;
            v598 = 0u;
            v595 = 0u;
            v596 = 0u;
            v611 = 0u;
            v612 = 0u;
            v613 = 0u;
            v614 = 0u;
            v627 = 0u;
            v628 = 0u;
            v629 = 0u;
            v630 = 0u;
            v643 = 0u;
            v644 = 0u;
            v645 = 0u;
            v646 = 0u;
          }

          v458 = v439 + v441;
          v459 = v91[7];
          if (v459 == 255)
          {
            v463 = *(v458 + 16);
            v464 = *(v458 + 32);
            v465 = *(v458 + 48);
            v466 = *(v458 + 96);
            v467 = *(v458 + 112);
            v468 = *(v458 + 64);
            v469 = *(v458 + 128);
            v470 = *(v458 + 144);
            v471 = *(v458 + 80);
            v472 = *(v458 + 192);
            v473 = *(v458 + 208);
            v474 = *(v458 + 224);
            v475 = *(v458 + 240);
            v476 = *(v458 + 160);
            v477 = *(v458 + 176);
            v599 = *v458;
            v600 = v463;
            v601 = v468;
            v602 = v471;
            v615 = v464;
            v616 = v465;
            v617 = v466;
            v618 = v467;
            v631 = v469;
            v632 = v470;
            v633 = v472;
            v634 = v473;
            v460 = v498;
            v461 = v499;
            v647 = v476;
            v648 = v477;
            v649 = v474;
            v650 = v475;
            v53 = v508;
            v24 = v510;
            v52 = v26 & v483;
            if (!v498)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v53 = v508;
            v24 = v510;
            if (v459 == 7)
            {
              v462 = vld1q_dup_f64(v458);
              v599 = v462;
              v600 = v462;
              v601 = v462;
              v602 = v462;
              v615 = v462;
              v616 = v462;
              v617 = v462;
              v618 = v462;
              v631 = v462;
              v632 = v462;
              v633 = v462;
              v634 = v462;
              v647 = v462;
              v648 = v462;
              v649 = v462;
              v460 = v498;
              v461 = v499;
              v650 = v462;
              v52 = v26 & v483;
              if (!v498)
              {
                goto LABEL_50;
              }
            }

            else if (v459)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v599, 256, v458, v459);
              v461 = v516;
              v101 = v517;
              v460 = v518;
              v52 = v26 & v483;
              if (!v518)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v601 = 0u;
              v602 = 0u;
              v599 = 0u;
              v600 = 0u;
              v615 = 0u;
              v616 = 0u;
              v617 = 0u;
              v618 = 0u;
              v631 = 0u;
              v632 = 0u;
              v633 = 0u;
              v634 = 0u;
              v647 = 0u;
              v648 = 0u;
              v460 = v498;
              v461 = v499;
              v649 = 0u;
              v650 = 0u;
              v52 = v26 & v483;
              if (!v498)
              {
                goto LABEL_50;
              }
            }
          }

          v478 = 0;
          v479 = &v523.f64[32 * v461 + 2 * v101];
          v480 = v519;
          do
          {
            if (v480)
            {
              v481 = 0;
              v482 = v514 + v515 * v478;
              do
              {
                v482[v481] = *(v479 + v481);
                ++v481;
                v480 = v519;
              }

              while (16 * v519 > v481);
              v460 = v518;
            }

            ++v478;
            v479 += 16;
          }

          while (v478 < v460);
LABEL_50:
          v29 = v50++ == v502 >> 4;
        }

        while (!v29);
        v29 = v26++ == v488;
      }

      while (!v29);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v508 = v15;
  v17 = v16;
  v19 = v18;
  v505 = v20;
  v506 = v21;
  v487 = v22;
  v23 = v12;
  v651 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v509 = v14;
  v24 = v23;
  v489 = v14 + a10 - 1;
  if (*(v23 + 168))
  {
    v25 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v25 = 0;
  }

  v26 = v14 >> 3;
  v27 = v19 - 1;
  v28 = v17 - 1;
  v488 = v489 >> 3;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v504 = v32;
  if (*(v23 + 232) == 1)
  {
    v33 = *(v23 + 273);
    v34 = *(v23 + 272);
    v35 = __clz(v27);
    if (1 << v33 >= v17 || v19 >> v34)
    {
      if (!(v17 >> v33) && 1 << v34 < v19)
      {
        if (v17 < 2)
        {
          v38 = 0;
        }

        else
        {
          v38 = __clz(~(-1 << -__clz(v28))) | 0xFFFFFFE0;
        }

        v34 += v33 + v38;
        v33 = -v38;
      }
    }

    else
    {
      v36 = 32 - __clz(~(-1 << -v35));
      v37 = v34 + v33;
      if (v19 < 2)
      {
        v36 = 0;
      }

      v33 = v37 - v36;
      v34 = v36;
    }

    if (v19 < 2)
    {
      if (v34)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v35)) < v34)
    {
LABEL_27:
      v503 = 0;
LABEL_32:
      v500 = v34 - 4;
      v492 = v33 - 3;
      v40 = -1 << *(*(v23 + 208) + 48);
      v486 = (((~v40 + v19) & v40) + ~(-1 << v34)) >> v34;
      goto LABEL_33;
    }

    if (v17 < 2)
    {
      v39 = 0;
    }

    else
    {
      v39 = 32 - __clz(~(-1 << -__clz(v28)));
    }

    v503 = v39 >= v33;
    goto LABEL_32;
  }

  v503 = 0;
  v486 = 0;
  v492 = 0;
  v500 = 0;
LABEL_33:
  if (v26 <= v488)
  {
    v502 = v508 + a9 - 1;
    if (v508 >> 4 <= v502 >> 4)
    {
      v41 = a11;
      v512 = v27 >> 4;
      v496 = v27 & 0xF;
      v501 = (v27 & 0xF) + 1;
      v484 = v28 & 7;
      v485 = v28 >> 3;
      v483 = ~(-1 << v492);
      v495 = 4 * a11;
      v42 = vadd_s32(__PAIR64__(v19, v17), 0xF00000007);
      v43 = vcgt_u32(v42, 0x1F0000000FLL);
      v491 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v42, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v43);
      v490 = v43;
      v510 = v23;
      v493 = 3 * a11;
      v494 = 2 * a11;
      do
      {
        v44 = (8 * v26) | 7;
        if (8 * v26 <= v509)
        {
          v45 = v509;
        }

        else
        {
          v45 = 8 * v26;
        }

        if (v489 < v44)
        {
          v44 = v489;
        }

        v499 = v45 - 8 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v484;
        v498 = v47;
        v49 = v47 != 8;
        v50 = v508 >> 4;
        v51 = v484 + 1;
        if (v26 != v485)
        {
          v51 = 8;
        }

        v511 = v51;
        if (v26 != v485)
        {
          v48 = v49;
        }

        v497 = v48;
        v52 = v26 & v483;
        v507 = v487 + (v45 - v509) * v41;
        v53 = v508;
        do
        {
          v54 = 16 * v50;
          v55 = 16 * (v50 + 1) - 1;
          if (16 * v50 <= v53)
          {
            v56 = v53;
          }

          else
          {
            v56 = 16 * v50;
          }

          if (v502 < v55)
          {
            v55 = v508 + a9 - 1;
          }

          v57 = v55 - v56;
          v58 = v57 + 1;
          if (v50 == v512)
          {
            v59 = v501;
          }

          else
          {
            v59 = 16;
          }

          v60 = 1;
          if (8 * v26 >= v509 && v54 >= v53)
          {
            v61 = v57 != v496;
            if (v50 != v512)
            {
              v61 = v58 != 16;
            }

            v60 = v61 || v497;
          }

          if (v503)
          {
            if (v500 | v492)
            {
              v62 = 0;
              v63 = 0;
              v64 = 1;
              v65 = v492 != 0;
              v66 = v500 != 0;
              v67 = v492;
              v68 = v500;
              do
              {
                --v67;
                if (v65)
                {
                  v63 |= (v52 & v64) << v62++;
                }

                else
                {
                  v67 = 0;
                }

                --v68;
                if (v66)
                {
                  v63 |= (v50 & ~(-1 << v500) & v64) << v62++;
                }

                else
                {
                  v68 = 0;
                }

                v64 *= 2;
                --v62;
                v66 = v68 != 0;
                v65 = v67 != 0;
              }

              while (v68 | v67);
              v69 = v63 << 11;
            }

            else
            {
              v69 = 0;
            }

            v77 = v69 + *(v24 + 336) * ((v50 >> v500) + (v26 >> v492) * v486);
          }

          else if (v491)
          {
            v70 = 0;
            v71 = 0;
            v72 = 1;
            v73 = v490.i8[0];
            v74 = v490.i8[4];
            v75 = v491.i32[0];
            v76 = v491.i32[1];
            do
            {
              --v75;
              if (v73)
              {
                v71 |= (v72 & v26) << v70++;
              }

              else
              {
                v75 = 0;
              }

              --v76;
              if (v74)
              {
                v71 |= (v72 & v50) << v70++;
              }

              else
              {
                v76 = 0;
              }

              v72 *= 2;
              --v70;
              v74 = v76 != 0;
              v73 = v75 != 0;
            }

            while (v76 | v75);
            v77 = v71 << 11;
          }

          else
          {
            v77 = 0;
          }

          v78 = *(v24 + 128) >> (*(v24 + 144) + a12);
          if (v78 <= 1)
          {
            v78 = 1;
          }

          v79 = v78 + 15;
          if (v79 < 0x20)
          {
            v80 = 0;
          }

          else
          {
            v80 = 32 - __clz(~(-1 << -__clz((v79 >> 4) - 1)));
          }

          v81 = *(v24 + 132) >> (*(v24 + 144) + a12);
          if (v81 <= 1)
          {
            v81 = 1;
          }

          v82 = v81 + 7;
          if (v82 < 0x10)
          {
            v83 = 0;
            if (!v80)
            {
LABEL_107:
              v89 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v83 = 32 - __clz(~(-1 << -__clz((v82 >> 3) - 1)));
            if (!(v83 | v80))
            {
              goto LABEL_107;
            }
          }

          v84 = 0;
          v85 = 0;
          v86 = v80 != 0;
          v87 = v83 != 0;
          v88 = 1;
          do
          {
            --v80;
            if (v86)
            {
              v85 |= (v88 & v50) << v84++;
            }

            else
            {
              v80 = 0;
            }

            --v83;
            if (v87)
            {
              v85 |= (v88 & v26) << v84++;
            }

            else
            {
              v83 = 0;
            }

            v88 *= 2;
            --v84;
            v87 = v83 != 0;
            v86 = v80 != 0;
          }

          while (v83 | v80);
          v89 = 8 * v85;
LABEL_108:
          v90 = (v505 + v77);
          if (v504)
          {
            memcpy(__dst, v90, sizeof(__dst));
            v90 = __dst;
          }

          v91 = (v506 + v89);
          v92 = (v507 + 16 * (v56 - v53));
          if (!(v60 & 1 | (v59 < 0x10u)) && v511 > 7)
          {
            v93 = *v91;
            if (v93 == 255)
            {
              v108 = v90[1];
              v109 = v90[2];
              v110 = v90[3];
              v111 = v90[8];
              v112 = v90[9];
              v113 = v90[6];
              v114 = v90[12];
              v115 = v90[13];
              v116 = v90[15];
              v117 = v90[7];
              v118 = v90[4];
              v119 = v90[5];
              v120 = v90[10];
              v121 = v90[11];
              v122 = v90[14];
              v94 = 2 * a11;
              *v92 = *v90;
              v92[1] = v108;
              v92[2] = v118;
              v92[3] = v119;
              v123 = (v92 + v494);
              v41 = a11;
              v124 = (v92 + a11);
              *v124 = v109;
              v124[1] = v110;
              v124[2] = v113;
              v124[3] = v117;
              *v123 = v111;
              v123[1] = v112;
              v123[2] = v114;
              v123[3] = v115;
              v125 = (v92 + v494 + a11);
              v96 = 256;
              *v125 = v120;
              v125[1] = v121;
              v125[2] = v122;
              v125[3] = v116;
              v95 = 3 * a11;
            }

            else
            {
              v41 = a11;
              v95 = 3 * a11;
              v94 = 2 * a11;
              if (v93 == 7)
              {
                v104 = vld1q_dup_f64(v90->f64);
                *v92 = v104;
                v92[1] = v104;
                v92[2] = v104;
                v92[3] = v104;
                v105 = (v92 + a11);
                *v105 = v104;
                v105[1] = v104;
                v105[2] = v104;
                v105[3] = v104;
                v106 = (v92 + v494);
                *v106 = v104;
                v106[1] = v104;
                v106[2] = v104;
                v106[3] = v104;
                v107 = (v92 + v493);
                *v107 = v104;
                v107[1] = v104;
                v107[2] = v104;
                v107[3] = v104;
                v96 = 8;
              }

              else if (*v91)
              {
                v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v92, a11, v90, v93);
              }

              else
              {
                v96 = 0;
                v92[2] = 0u;
                v92[3] = 0u;
                *v92 = 0u;
                v92[1] = 0u;
                v97 = (v92->f64 + a11);
                v97[2] = 0u;
                v97[3] = 0u;
                *v97 = 0u;
                v97[1] = 0u;
                v98 = (v92->f64 + v494);
                v98[2] = 0u;
                v98[3] = 0u;
                *v98 = 0u;
                v98[1] = 0u;
                v99 = (v92->f64 + v493);
                v99[2] = 0u;
                v99[3] = 0u;
                *v99 = 0u;
                v99[1] = 0u;
              }
            }

            v126 = v90 + v96;
            f64 = v92[4].f64;
            v128 = v91[1];
            if (v128 == 255)
            {
              v137 = *(v126 + 16);
              v138 = *(v126 + 32);
              v139 = *(v126 + 48);
              v140 = *(v126 + 128);
              v141 = *(v126 + 144);
              v142 = *(v126 + 96);
              v143 = *(v126 + 192);
              v144 = *(v126 + 208);
              v145 = *(v126 + 240);
              v146 = *(v126 + 112);
              v147 = *(v126 + 64);
              v148 = *(v126 + 80);
              v149 = *(v126 + 160);
              v150 = *(v126 + 176);
              v151 = *(v126 + 224);
              *f64 = *v126;
              v92[5] = v137;
              v92[6] = v147;
              v92[7] = v148;
              v152 = (f64 + v94);
              v153 = (f64 + v41);
              *v153 = v138;
              v153[1] = v139;
              v153[2] = v142;
              v153[3] = v146;
              *v152 = v140;
              v152[1] = v141;
              v152[2] = v143;
              v152[3] = v144;
              v154 = (f64 + v94 + v41);
              v129 = 256;
              *v154 = v149;
              v154[1] = v150;
              v154[2] = v151;
              v154[3] = v145;
            }

            else if (v128 == 7)
            {
              v133 = vld1q_dup_f64(v126);
              v92[4] = v133;
              v92[5] = v133;
              v92[6] = v133;
              v92[7] = v133;
              v134 = (f64 + v41);
              *v134 = v133;
              v134[1] = v133;
              v134[2] = v133;
              v134[3] = v133;
              v135 = (f64 + v94);
              *v135 = v133;
              v135[1] = v133;
              v135[2] = v133;
              v135[3] = v133;
              v136 = (f64 + v95);
              *v136 = v133;
              v136[1] = v133;
              v129 = 8;
              v136[2] = v133;
              v136[3] = v133;
            }

            else if (v91[1])
            {
              v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(f64, v41, v126, v128);
            }

            else
            {
              v129 = 0;
              v92[6] = 0u;
              v92[7] = 0u;
              *f64 = 0u;
              v92[5] = 0u;
              v130 = (f64 + v41);
              v130[2] = 0u;
              v130[3] = 0u;
              *v130 = 0u;
              v130[1] = 0u;
              v131 = (f64 + v94);
              v131[2] = 0u;
              v131[3] = 0u;
              *v131 = 0u;
              v131[1] = 0u;
              v132 = (f64 + v95);
              v132[2] = 0u;
              v132[3] = 0u;
              *v132 = 0u;
              v132[1] = 0u;
            }

            v155 = v126 + v129;
            v156 = (v92 + v495);
            v157 = v91[2];
            if (v157 == 255)
            {
              v166 = *(v155 + 16);
              v167 = *(v155 + 32);
              v168 = *(v155 + 48);
              v169 = *(v155 + 128);
              v170 = *(v155 + 144);
              v171 = *(v155 + 96);
              v172 = *(v155 + 192);
              v173 = *(v155 + 208);
              v174 = *(v155 + 240);
              v175 = *(v155 + 112);
              v176 = *(v155 + 64);
              v177 = *(v155 + 80);
              v178 = *(v155 + 160);
              v179 = *(v155 + 176);
              v180 = *(v155 + 224);
              *v156 = *v155;
              v156[1] = v166;
              v156[2] = v176;
              v156[3] = v177;
              v181 = (v156->f64 + v94);
              v182 = (v156->f64 + v41);
              *v182 = v167;
              v182[1] = v168;
              v182[2] = v171;
              v182[3] = v175;
              *v181 = v169;
              v181[1] = v170;
              v181[2] = v172;
              v181[3] = v173;
              v183 = (v156->f64 + v94 + v41);
              v158 = 256;
              *v183 = v178;
              v183[1] = v179;
              v183[2] = v180;
              v183[3] = v174;
            }

            else if (v157 == 7)
            {
              v162 = vld1q_dup_f64(v155);
              *v156 = v162;
              v156[1] = v162;
              v156[2] = v162;
              v156[3] = v162;
              v163 = (v156 + v41);
              *v163 = v162;
              v163[1] = v162;
              v163[2] = v162;
              v163[3] = v162;
              v164 = (v156 + v94);
              *v164 = v162;
              v164[1] = v162;
              v164[2] = v162;
              v164[3] = v162;
              v165 = (v156 + v95);
              *v165 = v162;
              v165[1] = v162;
              v165[2] = v162;
              v165[3] = v162;
              v158 = 8;
            }

            else if (v91[2])
            {
              v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v92 + v495, v41, v155, v157);
            }

            else
            {
              v158 = 0;
              v156[2] = 0u;
              v156[3] = 0u;
              *v156 = 0u;
              v156[1] = 0u;
              v159 = (v156->f64 + v41);
              v159[2] = 0u;
              v159[3] = 0u;
              *v159 = 0u;
              v159[1] = 0u;
              v160 = (v156->f64 + v94);
              v160[2] = 0u;
              v160[3] = 0u;
              *v160 = 0u;
              v160[1] = 0u;
              v161 = (v156->f64 + v95);
              v161[2] = 0u;
              v161[3] = 0u;
              *v161 = 0u;
              v161[1] = 0u;
            }

            v184 = v155 + v158;
            v185 = v156[4].f64;
            v186 = v91[3];
            if (v186 == 255)
            {
              v195 = *(v184 + 16);
              v196 = *(v184 + 32);
              v197 = *(v184 + 48);
              v198 = *(v184 + 128);
              v199 = *(v184 + 144);
              v200 = *(v184 + 96);
              v201 = *(v184 + 192);
              v202 = *(v184 + 208);
              v203 = *(v184 + 240);
              v204 = *(v184 + 112);
              v205 = *(v184 + 64);
              v206 = *(v184 + 80);
              v207 = *(v184 + 160);
              v208 = *(v184 + 176);
              v209 = *(v184 + 224);
              *v185 = *v184;
              v156[5] = v195;
              v156[6] = v205;
              v156[7] = v206;
              v210 = (v185 + v94);
              v211 = (v185 + v41);
              *v211 = v196;
              v211[1] = v197;
              v211[2] = v200;
              v211[3] = v204;
              *v210 = v198;
              v210[1] = v199;
              v210[2] = v201;
              v210[3] = v202;
              v212 = (v185 + v94 + v41);
              v187 = 256;
              *v212 = v207;
              v212[1] = v208;
              v212[2] = v209;
              v212[3] = v203;
            }

            else if (v186 == 7)
            {
              v191 = vld1q_dup_f64(v184);
              v156[4] = v191;
              v156[5] = v191;
              v156[6] = v191;
              v156[7] = v191;
              v192 = (v185 + v41);
              *v192 = v191;
              v192[1] = v191;
              v192[2] = v191;
              v192[3] = v191;
              v193 = (v185 + v94);
              *v193 = v191;
              v193[1] = v191;
              v193[2] = v191;
              v193[3] = v191;
              v194 = (v185 + v95);
              *v194 = v191;
              v194[1] = v191;
              v187 = 8;
              v194[2] = v191;
              v194[3] = v191;
            }

            else if (v91[3])
            {
              v187 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v185, v41, v184, v186);
            }

            else
            {
              v187 = 0;
              v156[6] = 0u;
              v156[7] = 0u;
              *v185 = 0u;
              v156[5] = 0u;
              v188 = (v185 + v41);
              v188[2] = 0u;
              v188[3] = 0u;
              *v188 = 0u;
              v188[1] = 0u;
              v189 = (v185 + v94);
              v189[2] = 0u;
              v189[3] = 0u;
              *v189 = 0u;
              v189[1] = 0u;
              v190 = (v185 + v95);
              v190[2] = 0u;
              v190[3] = 0u;
              *v190 = 0u;
              v190[1] = 0u;
            }

            v213 = v184 + v187;
            v214 = v92[8].f64;
            v215 = v91[4];
            if (v215 == 255)
            {
              v224 = *(v213 + 16);
              v225 = *(v213 + 32);
              v226 = *(v213 + 48);
              v227 = *(v213 + 128);
              v228 = *(v213 + 144);
              v229 = *(v213 + 96);
              v230 = *(v213 + 192);
              v231 = *(v213 + 208);
              v232 = *(v213 + 240);
              v233 = *(v213 + 112);
              v234 = *(v213 + 64);
              v235 = *(v213 + 80);
              v236 = *(v213 + 160);
              v237 = *(v213 + 176);
              v238 = *(v213 + 224);
              *v214 = *v213;
              v92[9] = v224;
              v92[10] = v234;
              v92[11] = v235;
              v239 = (v214 + v94);
              v240 = (v214 + v41);
              *v240 = v225;
              v240[1] = v226;
              v240[2] = v229;
              v240[3] = v233;
              *v239 = v227;
              v239[1] = v228;
              v239[2] = v230;
              v239[3] = v231;
              v241 = (v214 + v94 + v41);
              v216 = 256;
              *v241 = v236;
              v241[1] = v237;
              v241[2] = v238;
              v241[3] = v232;
            }

            else if (v215 == 7)
            {
              v220 = vld1q_dup_f64(v213);
              v92[8] = v220;
              v92[9] = v220;
              v92[10] = v220;
              v92[11] = v220;
              v221 = (v214 + v41);
              *v221 = v220;
              v221[1] = v220;
              v221[2] = v220;
              v221[3] = v220;
              v222 = (v214 + v94);
              *v222 = v220;
              v222[1] = v220;
              v222[2] = v220;
              v222[3] = v220;
              v223 = (v214 + v95);
              *v223 = v220;
              v223[1] = v220;
              v216 = 8;
              v223[2] = v220;
              v223[3] = v220;
            }

            else if (v91[4])
            {
              v216 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v214, v41, v213, v215);
            }

            else
            {
              v216 = 0;
              v92[10] = 0u;
              v92[11] = 0u;
              *v214 = 0u;
              v92[9] = 0u;
              v217 = (v214 + v41);
              v217[2] = 0u;
              v217[3] = 0u;
              *v217 = 0u;
              v217[1] = 0u;
              v218 = (v214 + v94);
              v218[2] = 0u;
              v218[3] = 0u;
              *v218 = 0u;
              v218[1] = 0u;
              v219 = (v214 + v95);
              v219[2] = 0u;
              v219[3] = 0u;
              *v219 = 0u;
              v219[1] = 0u;
            }

            v242 = v213 + v216;
            v243 = v92[12].f64;
            v244 = v91[5];
            if (v244 == 255)
            {
              v253 = *(v242 + 16);
              v254 = *(v242 + 32);
              v255 = *(v242 + 48);
              v256 = *(v242 + 128);
              v257 = *(v242 + 144);
              v258 = *(v242 + 96);
              v259 = *(v242 + 192);
              v260 = *(v242 + 208);
              v261 = *(v242 + 240);
              v262 = *(v242 + 112);
              v263 = *(v242 + 64);
              v264 = *(v242 + 80);
              v265 = *(v242 + 160);
              v266 = *(v242 + 176);
              v267 = *(v242 + 224);
              *v243 = *v242;
              v92[13] = v253;
              v92[14] = v263;
              v92[15] = v264;
              v268 = (v243 + v94);
              v269 = (v243 + v41);
              *v269 = v254;
              v269[1] = v255;
              v269[2] = v258;
              v269[3] = v262;
              *v268 = v256;
              v268[1] = v257;
              v268[2] = v259;
              v268[3] = v260;
              v270 = (v243 + v94 + v41);
              v245 = 256;
              *v270 = v265;
              v270[1] = v266;
              v270[2] = v267;
              v270[3] = v261;
            }

            else if (v244 == 7)
            {
              v249 = vld1q_dup_f64(v242);
              v92[12] = v249;
              v92[13] = v249;
              v92[14] = v249;
              v92[15] = v249;
              v250 = (v243 + v41);
              *v250 = v249;
              v250[1] = v249;
              v250[2] = v249;
              v250[3] = v249;
              v251 = (v243 + v94);
              *v251 = v249;
              v251[1] = v249;
              v251[2] = v249;
              v251[3] = v249;
              v252 = (v243 + v95);
              *v252 = v249;
              v252[1] = v249;
              v245 = 8;
              v252[2] = v249;
              v252[3] = v249;
            }

            else if (v91[5])
            {
              v245 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v243, v41, v242, v244);
            }

            else
            {
              v245 = 0;
              v92[14] = 0u;
              v92[15] = 0u;
              *v243 = 0u;
              v92[13] = 0u;
              v246 = (v243 + v41);
              v246[2] = 0u;
              v246[3] = 0u;
              *v246 = 0u;
              v246[1] = 0u;
              v247 = (v243 + v94);
              v247[2] = 0u;
              v247[3] = 0u;
              *v247 = 0u;
              v247[1] = 0u;
              v248 = (v243 + v95);
              v248[2] = 0u;
              v248[3] = 0u;
              *v248 = 0u;
              v248[1] = 0u;
            }

            v271 = v242 + v245;
            v272 = v156[8].f64;
            v273 = v91[6];
            if (v273 == 255)
            {
              v282 = *(v271 + 16);
              v283 = *(v271 + 32);
              v284 = *(v271 + 48);
              v285 = *(v271 + 128);
              v286 = *(v271 + 144);
              v287 = *(v271 + 96);
              v288 = *(v271 + 192);
              v289 = *(v271 + 208);
              v290 = *(v271 + 240);
              v291 = *(v271 + 112);
              v292 = *(v271 + 64);
              v293 = *(v271 + 80);
              v294 = *(v271 + 160);
              v295 = *(v271 + 176);
              v296 = *(v271 + 224);
              *v272 = *v271;
              v156[9] = v282;
              v156[10] = v292;
              v156[11] = v293;
              v297 = (v272 + v94);
              v298 = (v272 + v41);
              *v298 = v283;
              v298[1] = v284;
              v298[2] = v287;
              v298[3] = v291;
              *v297 = v285;
              v297[1] = v286;
              v297[2] = v288;
              v297[3] = v289;
              v299 = (v272 + v94 + v41);
              v274 = 256;
              *v299 = v294;
              v299[1] = v295;
              v299[2] = v296;
              v299[3] = v290;
            }

            else if (v273 == 7)
            {
              v278 = vld1q_dup_f64(v271);
              v156[8] = v278;
              v156[9] = v278;
              v156[10] = v278;
              v156[11] = v278;
              v279 = (v272 + v41);
              *v279 = v278;
              v279[1] = v278;
              v279[2] = v278;
              v279[3] = v278;
              v280 = (v272 + v94);
              *v280 = v278;
              v280[1] = v278;
              v280[2] = v278;
              v280[3] = v278;
              v281 = (v272 + v95);
              *v281 = v278;
              v281[1] = v278;
              v274 = 8;
              v281[2] = v278;
              v281[3] = v278;
            }

            else if (v91[6])
            {
              v274 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v272, v41, v242 + v245, v273);
            }

            else
            {
              v274 = 0;
              v156[10] = 0u;
              v156[11] = 0u;
              *v272 = 0u;
              v156[9] = 0u;
              v275 = (v272 + v41);
              v275[2] = 0u;
              v275[3] = 0u;
              *v275 = 0u;
              v275[1] = 0u;
              v276 = (v272 + v94);
              v276[2] = 0u;
              v276[3] = 0u;
              *v276 = 0u;
              v276[1] = 0u;
              v277 = (v272 + v95);
              v277[2] = 0u;
              v277[3] = 0u;
              *v277 = 0u;
              v277[1] = 0u;
            }

            v300 = v271 + v274;
            v301 = v156[12].f64;
            v302 = v91[7];
            if (v302 == 255)
            {
              v310 = *(v300 + 16);
              v311 = *(v300 + 32);
              v312 = *(v300 + 48);
              v313 = *(v300 + 96);
              v314 = *(v300 + 112);
              v315 = *(v300 + 64);
              v316 = *(v300 + 80);
              v317 = *(v300 + 128);
              v318 = *(v300 + 144);
              v319 = *(v300 + 192);
              v320 = *(v300 + 208);
              v321 = *(v300 + 224);
              v322 = *(v300 + 240);
              v323 = *(v300 + 160);
              v324 = *(v300 + 176);
              *v301 = *v300;
              v156[13] = v310;
              v156[14] = v315;
              v156[15] = v316;
              v325 = (v301 + v94);
              v326 = (v301 + v41);
              *v326 = v311;
              v326[1] = v312;
              v326[2] = v313;
              v326[3] = v314;
              *v325 = v317;
              v325[1] = v318;
              v325[2] = v319;
              v325[3] = v320;
              v327 = (v301 + v94 + v41);
              *v327 = v323;
              v327[1] = v324;
              v327[2] = v321;
              v327[3] = v322;
              v53 = v508;
              v24 = v510;
            }

            else
            {
              v53 = v508;
              v24 = v510;
              if (v302 == 7)
              {
                v306 = vld1q_dup_f64(v300);
                v156[12] = v306;
                v156[13] = v306;
                v156[14] = v306;
                v156[15] = v306;
                v307 = (v301 + v41);
                *v307 = v306;
                v307[1] = v306;
                v307[2] = v306;
                v307[3] = v306;
                v308 = (v301 + v94);
                *v308 = v306;
                v308[1] = v306;
                v308[2] = v306;
                v308[3] = v306;
                v309 = (v301 + v95);
                *v309 = v306;
                v309[1] = v306;
                v309[2] = v306;
                v309[3] = v306;
              }

              else if (v302)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v301, v41, v300, v302);
              }

              else
              {
                v156[14] = 0u;
                v156[15] = 0u;
                *v301 = 0u;
                v156[13] = 0u;
                v303 = (v301 + v41);
                v303[2] = 0u;
                v303[3] = 0u;
                *v303 = 0u;
                v303[1] = 0u;
                v304 = (v301 + v94);
                v304[2] = 0u;
                v304[3] = 0u;
                *v304 = 0u;
                v304[1] = 0u;
                v305 = (v301 + v95);
                v305[2] = 0u;
                v305[3] = 0u;
                *v305 = 0u;
                v305[1] = 0u;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          v100 = v56 - v54;
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v510;
          block[5] = v90;
          v520 = v59;
          v521 = v511;
          v516 = v499;
          v517 = v56 - v54;
          block[6] = v91;
          v514 = v92;
          v41 = a11;
          v515 = a11;
          v518 = v498;
          v519 = v58;
          if (v60)
          {
            dispatch_sync(*(*(v510 + 8) + 16552), block);
            v53 = v508;
            v24 = v510;
LABEL_49:
            v52 = v26 & v483;
            goto LABEL_50;
          }

          v101 = v100;
          v102 = *v91;
          if (v102 == 255)
          {
            v329 = v90[1];
            v330 = v90[2];
            v331 = v90[3];
            v332 = v90[6];
            v333 = v90[7];
            v334 = v90[8];
            v335 = v90[9];
            v336 = v90[11];
            v337 = v90[4];
            v338 = v90[12];
            v339 = v90[13];
            v340 = v90[14];
            v341 = v90[15];
            v342 = v90[5];
            v343 = v90[10];
            v523 = *v90;
            v524 = v329;
            v525 = v337;
            v526 = v342;
            v539 = v330;
            v540 = v331;
            v541 = v332;
            v542 = v333;
            v555 = v334;
            v556 = v335;
            v557 = v338;
            v558 = v339;
            v103 = 256;
            v571 = v343;
            v572 = v336;
            v573 = v340;
            v574 = v341;
          }

          else if (v102 == 7)
          {
            v328 = vld1q_dup_f64(v90->f64);
            v523 = v328;
            v524 = v328;
            v525 = v328;
            v526 = v328;
            v539 = v328;
            v540 = v328;
            v541 = v328;
            v542 = v328;
            v555 = v328;
            v556 = v328;
            v557 = v328;
            v558 = v328;
            v571 = v328;
            v572 = v328;
            v103 = 8;
            v573 = v328;
            v574 = v328;
          }

          else if (*v91)
          {
            v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v523, 256, v90, v102);
          }

          else
          {
            v103 = 0;
            v526 = 0u;
            v525 = 0u;
            v524 = 0u;
            v523 = 0u;
            v539 = 0u;
            v540 = 0u;
            v541 = 0u;
            v542 = 0u;
            v555 = 0u;
            v556 = 0u;
            v557 = 0u;
            v558 = 0u;
            v571 = 0u;
            v572 = 0u;
            v573 = 0u;
            v574 = 0u;
          }

          v344 = v90 + v103;
          v345 = v91[1];
          if (v345 == 255)
          {
            v348 = *(v344 + 16);
            v349 = *(v344 + 32);
            v350 = *(v344 + 48);
            v351 = *(v344 + 96);
            v352 = *(v344 + 112);
            v353 = *(v344 + 128);
            v354 = *(v344 + 144);
            v355 = *(v344 + 176);
            v356 = *(v344 + 64);
            v357 = *(v344 + 192);
            v358 = *(v344 + 208);
            v359 = *(v344 + 224);
            v360 = *(v344 + 240);
            v361 = *(v344 + 80);
            v362 = *(v344 + 160);
            v527 = *v344;
            v528 = v348;
            v529 = v356;
            v530 = v361;
            v543 = v349;
            v544 = v350;
            v545 = v351;
            v546 = v352;
            v559 = v353;
            v560 = v354;
            v561 = v357;
            v562 = v358;
            v346 = 256;
            v575 = v362;
            v576 = v355;
            v577 = v359;
            v578 = v360;
          }

          else if (v345 == 7)
          {
            v347 = vld1q_dup_f64(v344);
            v527 = v347;
            v528 = v347;
            v529 = v347;
            v530 = v347;
            v543 = v347;
            v544 = v347;
            v545 = v347;
            v546 = v347;
            v559 = v347;
            v560 = v347;
            v561 = v347;
            v562 = v347;
            v575 = v347;
            v576 = v347;
            v346 = 8;
            v577 = v347;
            v578 = v347;
          }

          else if (v91[1])
          {
            v346 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v527, 256, v344, v345);
          }

          else
          {
            v346 = 0;
            v529 = 0u;
            v530 = 0u;
            v527 = 0u;
            v528 = 0u;
            v543 = 0u;
            v544 = 0u;
            v545 = 0u;
            v546 = 0u;
            v559 = 0u;
            v560 = 0u;
            v561 = 0u;
            v562 = 0u;
            v575 = 0u;
            v576 = 0u;
            v577 = 0u;
            v578 = 0u;
          }

          v363 = v344 + v346;
          v364 = v91[2];
          if (v364 == 255)
          {
            v367 = *(v363 + 16);
            v368 = *(v363 + 32);
            v369 = *(v363 + 48);
            v370 = *(v363 + 96);
            v371 = *(v363 + 112);
            v372 = *(v363 + 128);
            v373 = *(v363 + 144);
            v374 = *(v363 + 176);
            v375 = *(v363 + 64);
            v376 = *(v363 + 192);
            v377 = *(v363 + 208);
            v378 = *(v363 + 224);
            v379 = *(v363 + 240);
            v380 = *(v363 + 80);
            v381 = *(v363 + 160);
            v587 = *v363;
            v588 = v367;
            v589 = v375;
            v590 = v380;
            v603 = v368;
            v604 = v369;
            v605 = v370;
            v606 = v371;
            v619 = v372;
            v620 = v373;
            v621 = v376;
            v622 = v377;
            v365 = 256;
            v635 = v381;
            v636 = v374;
            v637 = v378;
            v638 = v379;
          }

          else if (v364 == 7)
          {
            v366 = vld1q_dup_f64(v363);
            v587 = v366;
            v588 = v366;
            v589 = v366;
            v590 = v366;
            v603 = v366;
            v604 = v366;
            v605 = v366;
            v606 = v366;
            v619 = v366;
            v620 = v366;
            v621 = v366;
            v622 = v366;
            v635 = v366;
            v636 = v366;
            v637 = v366;
            v365 = 8;
            v638 = v366;
          }

          else if (v91[2])
          {
            v365 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v587, 256, v363, v364);
          }

          else
          {
            v365 = 0;
            v589 = 0u;
            v590 = 0u;
            v587 = 0u;
            v588 = 0u;
            v603 = 0u;
            v604 = 0u;
            v605 = 0u;
            v606 = 0u;
            v619 = 0u;
            v620 = 0u;
            v621 = 0u;
            v622 = 0u;
            v635 = 0u;
            v636 = 0u;
            v637 = 0u;
            v638 = 0u;
          }

          v382 = v363 + v365;
          v383 = v91[3];
          if (v383 == 255)
          {
            v386 = *(v382 + 16);
            v387 = *(v382 + 32);
            v388 = *(v382 + 48);
            v389 = *(v382 + 96);
            v390 = *(v382 + 112);
            v391 = *(v382 + 128);
            v392 = *(v382 + 144);
            v393 = *(v382 + 176);
            v394 = *(v382 + 64);
            v395 = *(v382 + 192);
            v396 = *(v382 + 208);
            v397 = *(v382 + 224);
            v398 = *(v382 + 240);
            v399 = *(v382 + 80);
            v400 = *(v382 + 160);
            v591 = *v382;
            v592 = v386;
            v593 = v394;
            v594 = v399;
            v607 = v387;
            v608 = v388;
            v609 = v389;
            v610 = v390;
            v623 = v391;
            v624 = v392;
            v625 = v395;
            v626 = v396;
            v384 = 256;
            v639 = v400;
            v640 = v393;
            v641 = v397;
            v642 = v398;
          }

          else if (v383 == 7)
          {
            v385 = vld1q_dup_f64(v382);
            v591 = v385;
            v592 = v385;
            v593 = v385;
            v594 = v385;
            v607 = v385;
            v608 = v385;
            v609 = v385;
            v610 = v385;
            v623 = v385;
            v624 = v385;
            v625 = v385;
            v626 = v385;
            v639 = v385;
            v640 = v385;
            v641 = v385;
            v384 = 8;
            v642 = v385;
          }

          else if (v91[3])
          {
            v384 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v591, 256, v382, v383);
          }

          else
          {
            v384 = 0;
            v593 = 0u;
            v594 = 0u;
            v591 = 0u;
            v592 = 0u;
            v607 = 0u;
            v608 = 0u;
            v609 = 0u;
            v610 = 0u;
            v623 = 0u;
            v624 = 0u;
            v625 = 0u;
            v626 = 0u;
            v639 = 0u;
            v640 = 0u;
            v641 = 0u;
            v642 = 0u;
          }

          v401 = v382 + v384;
          v402 = v91[4];
          if (v402 == 255)
          {
            v405 = *(v401 + 16);
            v406 = *(v401 + 32);
            v407 = *(v401 + 48);
            v408 = *(v401 + 96);
            v409 = *(v401 + 112);
            v410 = *(v401 + 128);
            v411 = *(v401 + 144);
            v412 = *(v401 + 176);
            v413 = *(v401 + 64);
            v414 = *(v401 + 192);
            v415 = *(v401 + 208);
            v416 = *(v401 + 224);
            v417 = *(v401 + 240);
            v418 = *(v401 + 80);
            v419 = *(v401 + 160);
            v531 = *v401;
            v532 = v405;
            v533 = v413;
            v534 = v418;
            v547 = v406;
            v548 = v407;
            v549 = v408;
            v550 = v409;
            v563 = v410;
            v564 = v411;
            v565 = v414;
            v566 = v415;
            v403 = 256;
            v579 = v419;
            v580 = v412;
            v581 = v416;
            v582 = v417;
          }

          else if (v402 == 7)
          {
            v404 = vld1q_dup_f64(v401);
            v531 = v404;
            v532 = v404;
            v533 = v404;
            v534 = v404;
            v547 = v404;
            v548 = v404;
            v549 = v404;
            v550 = v404;
            v563 = v404;
            v564 = v404;
            v565 = v404;
            v566 = v404;
            v579 = v404;
            v580 = v404;
            v403 = 8;
            v581 = v404;
            v582 = v404;
          }

          else if (v91[4])
          {
            v403 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v531, 256, v401, v402);
          }

          else
          {
            v403 = 0;
            v533 = 0u;
            v534 = 0u;
            v531 = 0u;
            v532 = 0u;
            v547 = 0u;
            v548 = 0u;
            v549 = 0u;
            v550 = 0u;
            v563 = 0u;
            v564 = 0u;
            v565 = 0u;
            v566 = 0u;
            v579 = 0u;
            v580 = 0u;
            v581 = 0u;
            v582 = 0u;
          }

          v420 = v401 + v403;
          v421 = v91[5];
          if (v421 == 255)
          {
            v424 = *(v420 + 16);
            v425 = *(v420 + 32);
            v426 = *(v420 + 48);
            v427 = *(v420 + 96);
            v428 = *(v420 + 112);
            v429 = *(v420 + 128);
            v430 = *(v420 + 144);
            v431 = *(v420 + 176);
            v432 = *(v420 + 64);
            v433 = *(v420 + 192);
            v434 = *(v420 + 208);
            v435 = *(v420 + 224);
            v436 = *(v420 + 240);
            v437 = *(v420 + 80);
            v438 = *(v420 + 160);
            v535 = *v420;
            v536 = v424;
            v537 = v432;
            v538 = v437;
            v551 = v425;
            v552 = v426;
            v553 = v427;
            v554 = v428;
            v567 = v429;
            v568 = v430;
            v569 = v433;
            v570 = v434;
            v422 = 256;
            v583 = v438;
            v584 = v431;
            v585 = v435;
            v586 = v436;
          }

          else if (v421 == 7)
          {
            v423 = vld1q_dup_f64(v420);
            v535 = v423;
            v536 = v423;
            v537 = v423;
            v538 = v423;
            v551 = v423;
            v552 = v423;
            v553 = v423;
            v554 = v423;
            v567 = v423;
            v568 = v423;
            v569 = v423;
            v570 = v423;
            v583 = v423;
            v584 = v423;
            v422 = 8;
            v585 = v423;
            v586 = v423;
          }

          else if (v91[5])
          {
            v422 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v535, 256, v420, v421);
          }

          else
          {
            v422 = 0;
            v537 = 0u;
            v538 = 0u;
            v535 = 0u;
            v536 = 0u;
            v551 = 0u;
            v552 = 0u;
            v553 = 0u;
            v554 = 0u;
            v567 = 0u;
            v568 = 0u;
            v569 = 0u;
            v570 = 0u;
            v583 = 0u;
            v584 = 0u;
            v585 = 0u;
            v586 = 0u;
          }

          v439 = v420 + v422;
          v440 = v91[6];
          if (v440 == 255)
          {
            v443 = *(v439 + 16);
            v444 = *(v439 + 32);
            v445 = *(v439 + 48);
            v446 = *(v439 + 96);
            v447 = *(v439 + 112);
            v448 = *(v439 + 128);
            v449 = *(v439 + 144);
            v450 = *(v439 + 176);
            v451 = *(v439 + 64);
            v452 = *(v439 + 192);
            v453 = *(v439 + 208);
            v454 = *(v439 + 224);
            v455 = *(v439 + 240);
            v456 = *(v439 + 80);
            v457 = *(v439 + 160);
            v595 = *v439;
            v596 = v443;
            v597 = v451;
            v598 = v456;
            v611 = v444;
            v612 = v445;
            v613 = v446;
            v614 = v447;
            v627 = v448;
            v628 = v449;
            v629 = v452;
            v630 = v453;
            v441 = 256;
            v643 = v457;
            v644 = v450;
            v645 = v454;
            v646 = v455;
          }

          else if (v440 == 7)
          {
            v442 = vld1q_dup_f64(v439);
            v595 = v442;
            v596 = v442;
            v597 = v442;
            v598 = v442;
            v611 = v442;
            v612 = v442;
            v613 = v442;
            v614 = v442;
            v627 = v442;
            v628 = v442;
            v629 = v442;
            v630 = v442;
            v643 = v442;
            v644 = v442;
            v645 = v442;
            v441 = 8;
            v646 = v442;
          }

          else if (v91[6])
          {
            v441 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v595, 256, v439, v440);
          }

          else
          {
            v441 = 0;
            v597 = 0u;
            v598 = 0u;
            v595 = 0u;
            v596 = 0u;
            v611 = 0u;
            v612 = 0u;
            v613 = 0u;
            v614 = 0u;
            v627 = 0u;
            v628 = 0u;
            v629 = 0u;
            v630 = 0u;
            v643 = 0u;
            v644 = 0u;
            v645 = 0u;
            v646 = 0u;
          }

          v458 = v439 + v441;
          v459 = v91[7];
          if (v459 == 255)
          {
            v463 = *(v458 + 16);
            v464 = *(v458 + 32);
            v465 = *(v458 + 48);
            v466 = *(v458 + 96);
            v467 = *(v458 + 112);
            v468 = *(v458 + 64);
            v469 = *(v458 + 128);
            v470 = *(v458 + 144);
            v471 = *(v458 + 80);
            v472 = *(v458 + 192);
            v473 = *(v458 + 208);
            v474 = *(v458 + 224);
            v475 = *(v458 + 240);
            v476 = *(v458 + 160);
            v477 = *(v458 + 176);
            v599 = *v458;
            v600 = v463;
            v601 = v468;
            v602 = v471;
            v615 = v464;
            v616 = v465;
            v617 = v466;
            v618 = v467;
            v631 = v469;
            v632 = v470;
            v633 = v472;
            v634 = v473;
            v460 = v498;
            v461 = v499;
            v647 = v476;
            v648 = v477;
            v649 = v474;
            v650 = v475;
            v53 = v508;
            v24 = v510;
            v52 = v26 & v483;
            if (!v498)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v53 = v508;
            v24 = v510;
            if (v459 == 7)
            {
              v462 = vld1q_dup_f64(v458);
              v599 = v462;
              v600 = v462;
              v601 = v462;
              v602 = v462;
              v615 = v462;
              v616 = v462;
              v617 = v462;
              v618 = v462;
              v631 = v462;
              v632 = v462;
              v633 = v462;
              v634 = v462;
              v647 = v462;
              v648 = v462;
              v649 = v462;
              v460 = v498;
              v461 = v499;
              v650 = v462;
              v52 = v26 & v483;
              if (!v498)
              {
                goto LABEL_50;
              }
            }

            else if (v459)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v599, 256, v458, v459);
              v461 = v516;
              v101 = v517;
              v460 = v518;
              v52 = v26 & v483;
              if (!v518)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v601 = 0u;
              v602 = 0u;
              v599 = 0u;
              v600 = 0u;
              v615 = 0u;
              v616 = 0u;
              v617 = 0u;
              v618 = 0u;
              v631 = 0u;
              v632 = 0u;
              v633 = 0u;
              v634 = 0u;
              v647 = 0u;
              v648 = 0u;
              v460 = v498;
              v461 = v499;
              v649 = 0u;
              v650 = 0u;
              v52 = v26 & v483;
              if (!v498)
              {
                goto LABEL_50;
              }
            }
          }

          v478 = 0;
          v479 = &v523.f64[32 * v461 + 2 * v101];
          v480 = v519;
          do
          {
            if (v480)
            {
              v481 = 0;
              v482 = v514 + v515 * v478;
              do
              {
                v482[v481] = *(v479 + v481);
                ++v481;
                v480 = v519;
              }

              while (16 * v519 > v481);
              v460 = v518;
            }

            ++v478;
            v479 += 16;
          }

          while (v478 < v460);
LABEL_50:
          v29 = v50++ == v502 >> 4;
        }

        while (!v29);
        v29 = v26++ == v488;
      }

      while (!v29);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v505 = v21;
  v506 = v22;
  v490 = v23;
  v24 = v12;
  v651 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v25 = v24;
  v509 = v14;
  v26 = v14 >> 3;
  v489 = v14 + a10 - 1;
  v491 = v489 >> 3;
  v27 = *(*(v25 + 208) + 88);
  v28 = *(v25 + 112);
  v512 = v25;
  if (*(v25 + 168))
  {
    CacheMode = IOSurfaceGetCacheMode();
    v25 = v512;
    v30 = CacheMode & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v504 = v34;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v25, *(v25 + 144) + a12);
  v36 = v512;
  v503 = isLevelTiled;
  if (v26 <= v491)
  {
    v502 = v16 + a9 - 1;
    v488 = v16 >> 4;
    if (v16 >> 4 <= v502 >> 4)
    {
      v37 = a11;
      v511 = (v20 - 1) >> 4;
      v485 = v20 - 1;
      v495 = (v20 - 1) & 0xF;
      v486 = (v18 - 1) & 7;
      v487 = (v18 - 1) >> 3;
      v494 = 4 * a11;
      v38 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v39 = vcgt_u32(v38, 0x1F0000000FLL);
      v498 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v38, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v39);
      v497 = v39;
      v484 = 8 * v28 * v27;
      v501 = v16;
      v492 = 3 * a11;
      v493 = 2 * a11;
      do
      {
        v40 = (8 * v26) | 7;
        if (8 * v26 <= v509)
        {
          v41 = v509;
        }

        else
        {
          v41 = 8 * v26;
        }

        if (v489 < v40)
        {
          v40 = v489;
        }

        v508 = 8 * v26;
        v500 = v41 - 8 * v26;
        v42 = v40 - v41;
        v43 = v42 + 1;
        v44 = v42 != v486;
        v499 = v43;
        v45 = v43 != 8;
        v46 = v488;
        v47 = v486 + 1;
        if (v26 != v487)
        {
          v47 = 8;
        }

        v510 = v47;
        if (v26 != v487)
        {
          v44 = v45;
        }

        v496 = v44;
        v507 = v490 + (v41 - v509) * v37;
        do
        {
          v52 = 16 * v46;
          v53 = 16 * (v46 + 1) - 1;
          if (16 * v46 <= v16)
          {
            v54 = v16;
          }

          else
          {
            v54 = 16 * v46;
          }

          if (v502 < v53)
          {
            v53 = v502;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v46 == v511)
          {
            v57 = v495 + 1;
          }

          else
          {
            v57 = 16;
          }

          v58 = 1;
          if (v508 >= v509 && v52 >= v16)
          {
            v59 = v55 != v495;
            if (v46 != v511)
            {
              v59 = v56 != 16;
            }

            v58 = v59 || v496;
          }

          if (v503)
          {
            v80 = 0;
            v81 = v484 >> (*(v36 + 57) != 0);
            v82 = 1;
            if (v81 <= 63)
            {
              if (v81 > 15)
              {
                if (v81 == 16)
                {
                  v82 = 0;
                  v83 = 0;
                  v84 = 64;
                  v80 = 128;
                }

                else
                {
                  v83 = 1;
                  v84 = 0;
                  if (v81 == 32)
                  {
                    v82 = 0;
                    v83 = 0;
                    v80 = 64;
                    v84 = 64;
                  }
                }
              }

              else if (v81 == 4)
              {
                v82 = 0;
                v83 = 0;
                v84 = 128;
                v80 = 256;
              }

              else
              {
                v83 = 1;
                v84 = 0;
                if (v81 == 8)
                {
                  v82 = 0;
                  v83 = 0;
                  v80 = 128;
                  v84 = 128;
                }
              }
            }

            else if (v81 <= 255)
            {
              if (v81 == 64)
              {
                v82 = 0;
                v83 = 0;
                v84 = 32;
                v80 = 64;
              }

              else
              {
                v83 = 1;
                v84 = 0;
                if (v81 == 128)
                {
                  v82 = 0;
                  v83 = 0;
                  v80 = 32;
                  v84 = 32;
                }
              }
            }

            else if (v81 == 256)
            {
              v82 = 0;
              v83 = 0;
              v84 = 16;
              v80 = 32;
            }

            else if (v81 == 512)
            {
              v83 = 0;
              v80 = 16;
              v84 = 16;
            }

            else
            {
              v83 = 1;
              v84 = 0;
              if (v81 == 1024)
              {
                v84 = 8;
                v80 = 16;
              }
            }

            v472 = (v80 >> 4) - 1;
            if (v82)
            {
              v473 = 0;
            }

            else
            {
              v473 = 32 - __clz(~(-1 << -__clz(v472)));
            }

            v474 = (v84 >> 3) - 1;
            if (v83)
            {
              v475 = 0;
              if (v473)
              {
                goto LABEL_225;
              }
            }

            else
            {
              v475 = 32 - __clz(~(-1 << -__clz(v474)));
              if (v475 | v473)
              {
LABEL_225:
                v476 = 0;
                v477 = 0;
                v478 = v46 & v472;
                v479 = v26 & v474;
                v480 = v475 != 0;
                v481 = v473 != 0;
                v482 = 1;
                do
                {
                  --v475;
                  if (v480)
                  {
                    v477 |= (v482 & v479) << v476++;
                  }

                  else
                  {
                    v475 = 0;
                  }

                  --v473;
                  if (v481)
                  {
                    v477 |= (v482 & v478) << v476++;
                  }

                  else
                  {
                    v473 = 0;
                  }

                  v482 *= 2;
                  --v476;
                  v481 = v473 != 0;
                  v480 = v475 != 0;
                }

                while (v473 | v475);
                v483 = v477 << 11;
                goto LABEL_237;
              }
            }

            v483 = 0;
LABEL_237:
            v67 = v483 + ((v52 / v80 + v508 / v84 * ((v80 + v485) / v80)) << 14);
            goto LABEL_56;
          }

          if (v498)
          {
            v60 = 0;
            v61 = 0;
            v62 = 1;
            v63 = v497.i8[0];
            v64 = v497.i8[4];
            v65 = v498.i32[0];
            v66 = v498.i32[1];
            do
            {
              --v65;
              if (v63)
              {
                v61 |= (v62 & v26) << v60++;
              }

              else
              {
                v65 = 0;
              }

              --v66;
              if (v64)
              {
                v61 |= (v62 & v46) << v60++;
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
            v67 = v61 << 11;
          }

          else
          {
            v67 = 0;
          }

LABEL_56:
          v68 = *(v36 + 128) >> (*(v36 + 144) + a12);
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

          v71 = *(v36 + 132) >> (*(v36 + 144) + a12);
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
LABEL_81:
              v79 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 3) - 1)));
            if (!(v73 | v70))
            {
              goto LABEL_81;
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
              v75 |= (v78 & v46) << v74++;
            }

            else
            {
              v70 = 0;
            }

            --v73;
            if (v77)
            {
              v75 |= (v78 & v26) << v74++;
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
LABEL_82:
          v85 = (v505 + v67);
          if (v504)
          {
            memcpy(__dst, v85, sizeof(__dst));
            v36 = v512;
            v85 = __dst;
          }

          v86 = (v506 + v79);
          v87 = (v507 + 16 * (v54 - v16));
          if (v58 & 1 | (v57 < 0x10u) || v510 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            v94 = v54 - v52;
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v36;
            block[5] = v85;
            v520 = v57;
            v521 = v510;
            v516 = v500;
            v517 = v94;
            block[6] = v86;
            v514 = v87;
            v37 = a11;
            v515 = a11;
            v518 = v499;
            v519 = v56;
            if (v58)
            {
              dispatch_sync(*(*(v36 + 8) + 16552), block);
              v36 = v512;
              v16 = v501;
            }

            else
            {
              v95 = *v86;
              v16 = v501;
              if (v95 == 255)
              {
                v318 = v85[1];
                v319 = v85[2];
                v320 = v85[3];
                v321 = v85[6];
                v322 = v85[7];
                v323 = v85[8];
                v324 = v85[9];
                v325 = v85[11];
                v326 = v85[4];
                v327 = v85[12];
                v328 = v85[13];
                v329 = v85[14];
                v330 = v85[15];
                v331 = v85[5];
                v332 = v85[10];
                v523 = *v85;
                v524 = v318;
                v525 = v326;
                v526 = v331;
                v539 = v319;
                v540 = v320;
                v541 = v321;
                v542 = v322;
                v555 = v323;
                v556 = v324;
                v557 = v327;
                v558 = v328;
                v96 = 256;
                v571 = v332;
                v572 = v325;
                v573 = v329;
                v574 = v330;
              }

              else if (v95 == 7)
              {
                v317 = vld1q_dup_f64(v85->f64);
                v523 = v317;
                v524 = v317;
                v525 = v317;
                v526 = v317;
                v539 = v317;
                v540 = v317;
                v541 = v317;
                v542 = v317;
                v555 = v317;
                v556 = v317;
                v557 = v317;
                v558 = v317;
                v571 = v317;
                v572 = v317;
                v96 = 8;
                v573 = v317;
                v574 = v317;
              }

              else if (*v86)
              {
                v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v523, 256, v85, v95);
              }

              else
              {
                v96 = 0;
                v526 = 0u;
                v525 = 0u;
                v524 = 0u;
                v523 = 0u;
                v539 = 0u;
                v540 = 0u;
                v541 = 0u;
                v542 = 0u;
                v555 = 0u;
                v556 = 0u;
                v557 = 0u;
                v558 = 0u;
                v571 = 0u;
                v572 = 0u;
                v573 = 0u;
                v574 = 0u;
              }

              v333 = v85 + v96;
              v334 = v86[1];
              if (v334 == 255)
              {
                v337 = *(v333 + 16);
                v338 = *(v333 + 32);
                v339 = *(v333 + 48);
                v340 = *(v333 + 96);
                v341 = *(v333 + 112);
                v342 = *(v333 + 128);
                v343 = *(v333 + 144);
                v344 = *(v333 + 176);
                v345 = *(v333 + 64);
                v346 = *(v333 + 192);
                v347 = *(v333 + 208);
                v348 = *(v333 + 224);
                v349 = *(v333 + 240);
                v350 = *(v333 + 80);
                v351 = *(v333 + 160);
                v527 = *v333;
                v528 = v337;
                v529 = v345;
                v530 = v350;
                v543 = v338;
                v544 = v339;
                v545 = v340;
                v546 = v341;
                v559 = v342;
                v560 = v343;
                v561 = v346;
                v562 = v347;
                v335 = 256;
                v575 = v351;
                v576 = v344;
                v577 = v348;
                v578 = v349;
              }

              else if (v334 == 7)
              {
                v336 = vld1q_dup_f64(v333);
                v527 = v336;
                v528 = v336;
                v529 = v336;
                v530 = v336;
                v543 = v336;
                v544 = v336;
                v545 = v336;
                v546 = v336;
                v559 = v336;
                v560 = v336;
                v561 = v336;
                v562 = v336;
                v575 = v336;
                v576 = v336;
                v335 = 8;
                v577 = v336;
                v578 = v336;
              }

              else if (v86[1])
              {
                v335 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v527, 256, v333, v334);
              }

              else
              {
                v335 = 0;
                v529 = 0u;
                v530 = 0u;
                v527 = 0u;
                v528 = 0u;
                v543 = 0u;
                v544 = 0u;
                v545 = 0u;
                v546 = 0u;
                v559 = 0u;
                v560 = 0u;
                v561 = 0u;
                v562 = 0u;
                v575 = 0u;
                v576 = 0u;
                v577 = 0u;
                v578 = 0u;
              }

              v352 = v333 + v335;
              v353 = v86[2];
              if (v353 == 255)
              {
                v356 = *(v352 + 16);
                v357 = *(v352 + 32);
                v358 = *(v352 + 48);
                v359 = *(v352 + 96);
                v360 = *(v352 + 112);
                v361 = *(v352 + 128);
                v362 = *(v352 + 144);
                v363 = *(v352 + 176);
                v364 = *(v352 + 64);
                v365 = *(v352 + 192);
                v366 = *(v352 + 208);
                v367 = *(v352 + 224);
                v368 = *(v352 + 240);
                v369 = *(v352 + 80);
                v370 = *(v352 + 160);
                v587 = *v352;
                v588 = v356;
                v589 = v364;
                v590 = v369;
                v603 = v357;
                v604 = v358;
                v605 = v359;
                v606 = v360;
                v619 = v361;
                v620 = v362;
                v621 = v365;
                v622 = v366;
                v354 = 256;
                v635 = v370;
                v636 = v363;
                v637 = v367;
                v638 = v368;
              }

              else if (v353 == 7)
              {
                v355 = vld1q_dup_f64(v352);
                v587 = v355;
                v588 = v355;
                v589 = v355;
                v590 = v355;
                v603 = v355;
                v604 = v355;
                v605 = v355;
                v606 = v355;
                v619 = v355;
                v620 = v355;
                v621 = v355;
                v622 = v355;
                v635 = v355;
                v636 = v355;
                v637 = v355;
                v354 = 8;
                v638 = v355;
              }

              else if (v86[2])
              {
                v354 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v587, 256, v352, v353);
              }

              else
              {
                v354 = 0;
                v589 = 0u;
                v590 = 0u;
                v587 = 0u;
                v588 = 0u;
                v603 = 0u;
                v604 = 0u;
                v605 = 0u;
                v606 = 0u;
                v619 = 0u;
                v620 = 0u;
                v621 = 0u;
                v622 = 0u;
                v635 = 0u;
                v636 = 0u;
                v637 = 0u;
                v638 = 0u;
              }

              v371 = v352 + v354;
              v372 = v86[3];
              if (v372 == 255)
              {
                v375 = *(v371 + 16);
                v376 = *(v371 + 32);
                v377 = *(v371 + 48);
                v378 = *(v371 + 96);
                v379 = *(v371 + 112);
                v380 = *(v371 + 128);
                v381 = *(v371 + 144);
                v382 = *(v371 + 176);
                v383 = *(v371 + 64);
                v384 = *(v371 + 192);
                v385 = *(v371 + 208);
                v386 = *(v371 + 224);
                v387 = *(v371 + 240);
                v388 = *(v371 + 80);
                v389 = *(v371 + 160);
                v591 = *v371;
                v592 = v375;
                v593 = v383;
                v594 = v388;
                v607 = v376;
                v608 = v377;
                v609 = v378;
                v610 = v379;
                v623 = v380;
                v624 = v381;
                v625 = v384;
                v626 = v385;
                v373 = 256;
                v639 = v389;
                v640 = v382;
                v641 = v386;
                v642 = v387;
              }

              else if (v372 == 7)
              {
                v374 = vld1q_dup_f64(v371);
                v591 = v374;
                v592 = v374;
                v593 = v374;
                v594 = v374;
                v607 = v374;
                v608 = v374;
                v609 = v374;
                v610 = v374;
                v623 = v374;
                v624 = v374;
                v625 = v374;
                v626 = v374;
                v639 = v374;
                v640 = v374;
                v641 = v374;
                v373 = 8;
                v642 = v374;
              }

              else if (v86[3])
              {
                v373 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v591, 256, v371, v372);
              }

              else
              {
                v373 = 0;
                v593 = 0u;
                v594 = 0u;
                v591 = 0u;
                v592 = 0u;
                v607 = 0u;
                v608 = 0u;
                v609 = 0u;
                v610 = 0u;
                v623 = 0u;
                v624 = 0u;
                v625 = 0u;
                v626 = 0u;
                v639 = 0u;
                v640 = 0u;
                v641 = 0u;
                v642 = 0u;
              }

              v390 = v371 + v373;
              v391 = v86[4];
              if (v391 == 255)
              {
                v394 = *(v390 + 16);
                v395 = *(v390 + 32);
                v396 = *(v390 + 48);
                v397 = *(v390 + 96);
                v398 = *(v390 + 112);
                v399 = *(v390 + 128);
                v400 = *(v390 + 144);
                v401 = *(v390 + 176);
                v402 = *(v390 + 64);
                v403 = *(v390 + 192);
                v404 = *(v390 + 208);
                v405 = *(v390 + 224);
                v406 = *(v390 + 240);
                v407 = *(v390 + 80);
                v408 = *(v390 + 160);
                v531 = *v390;
                v532 = v394;
                v533 = v402;
                v534 = v407;
                v547 = v395;
                v548 = v396;
                v549 = v397;
                v550 = v398;
                v563 = v399;
                v564 = v400;
                v565 = v403;
                v566 = v404;
                v392 = 256;
                v579 = v408;
                v580 = v401;
                v581 = v405;
                v582 = v406;
              }

              else if (v391 == 7)
              {
                v393 = vld1q_dup_f64(v390);
                v531 = v393;
                v532 = v393;
                v533 = v393;
                v534 = v393;
                v547 = v393;
                v548 = v393;
                v549 = v393;
                v550 = v393;
                v563 = v393;
                v564 = v393;
                v565 = v393;
                v566 = v393;
                v579 = v393;
                v580 = v393;
                v392 = 8;
                v581 = v393;
                v582 = v393;
              }

              else if (v86[4])
              {
                v392 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v531, 256, v390, v391);
              }

              else
              {
                v392 = 0;
                v533 = 0u;
                v534 = 0u;
                v531 = 0u;
                v532 = 0u;
                v547 = 0u;
                v548 = 0u;
                v549 = 0u;
                v550 = 0u;
                v563 = 0u;
                v564 = 0u;
                v565 = 0u;
                v566 = 0u;
                v579 = 0u;
                v580 = 0u;
                v581 = 0u;
                v582 = 0u;
              }

              v409 = v390 + v392;
              v410 = v86[5];
              if (v410 == 255)
              {
                v413 = *(v409 + 16);
                v414 = *(v409 + 32);
                v415 = *(v409 + 48);
                v416 = *(v409 + 96);
                v417 = *(v409 + 112);
                v418 = *(v409 + 128);
                v419 = *(v409 + 144);
                v420 = *(v409 + 176);
                v421 = *(v409 + 64);
                v422 = *(v409 + 192);
                v423 = *(v409 + 208);
                v424 = *(v409 + 224);
                v425 = *(v409 + 240);
                v426 = *(v409 + 80);
                v427 = *(v409 + 160);
                v535 = *v409;
                v536 = v413;
                v537 = v421;
                v538 = v426;
                v551 = v414;
                v552 = v415;
                v553 = v416;
                v554 = v417;
                v567 = v418;
                v568 = v419;
                v569 = v422;
                v570 = v423;
                v411 = 256;
                v583 = v427;
                v584 = v420;
                v585 = v424;
                v586 = v425;
              }

              else if (v410 == 7)
              {
                v412 = vld1q_dup_f64(v409);
                v535 = v412;
                v536 = v412;
                v537 = v412;
                v538 = v412;
                v551 = v412;
                v552 = v412;
                v553 = v412;
                v554 = v412;
                v567 = v412;
                v568 = v412;
                v569 = v412;
                v570 = v412;
                v583 = v412;
                v584 = v412;
                v411 = 8;
                v585 = v412;
                v586 = v412;
              }

              else if (v86[5])
              {
                v411 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v535, 256, v409, v410);
              }

              else
              {
                v411 = 0;
                v537 = 0u;
                v538 = 0u;
                v535 = 0u;
                v536 = 0u;
                v551 = 0u;
                v552 = 0u;
                v553 = 0u;
                v554 = 0u;
                v567 = 0u;
                v568 = 0u;
                v569 = 0u;
                v570 = 0u;
                v583 = 0u;
                v584 = 0u;
                v585 = 0u;
                v586 = 0u;
              }

              v428 = v409 + v411;
              v429 = v86[6];
              if (v429 == 255)
              {
                v432 = *(v428 + 16);
                v433 = *(v428 + 32);
                v434 = *(v428 + 48);
                v435 = *(v428 + 96);
                v436 = *(v428 + 112);
                v437 = *(v428 + 128);
                v438 = *(v428 + 144);
                v439 = *(v428 + 176);
                v440 = *(v428 + 64);
                v441 = *(v428 + 192);
                v442 = *(v428 + 208);
                v443 = *(v428 + 224);
                v444 = *(v428 + 240);
                v445 = *(v428 + 80);
                v446 = *(v428 + 160);
                v595 = *v428;
                v596 = v432;
                v597 = v440;
                v598 = v445;
                v611 = v433;
                v612 = v434;
                v613 = v435;
                v614 = v436;
                v627 = v437;
                v628 = v438;
                v629 = v441;
                v630 = v442;
                v430 = 256;
                v643 = v446;
                v644 = v439;
                v645 = v443;
                v646 = v444;
              }

              else if (v429 == 7)
              {
                v431 = vld1q_dup_f64(v428);
                v595 = v431;
                v596 = v431;
                v597 = v431;
                v598 = v431;
                v611 = v431;
                v612 = v431;
                v613 = v431;
                v614 = v431;
                v627 = v431;
                v628 = v431;
                v629 = v431;
                v630 = v431;
                v643 = v431;
                v644 = v431;
                v645 = v431;
                v430 = 8;
                v646 = v431;
              }

              else if (v86[6])
              {
                v430 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v595, 256, v428, v429);
              }

              else
              {
                v430 = 0;
                v597 = 0u;
                v598 = 0u;
                v595 = 0u;
                v596 = 0u;
                v611 = 0u;
                v612 = 0u;
                v613 = 0u;
                v614 = 0u;
                v627 = 0u;
                v628 = 0u;
                v629 = 0u;
                v630 = 0u;
                v643 = 0u;
                v644 = 0u;
                v645 = 0u;
                v646 = 0u;
              }

              v447 = v428 + v430;
              v448 = v86[7];
              if (v448 == 255)
              {
                v452 = *(v447 + 16);
                v453 = *(v447 + 32);
                v454 = *(v447 + 48);
                v455 = *(v447 + 96);
                v456 = *(v447 + 112);
                v457 = *(v447 + 64);
                v458 = *(v447 + 128);
                v459 = *(v447 + 144);
                v460 = *(v447 + 80);
                v461 = *(v447 + 192);
                v462 = *(v447 + 208);
                v463 = *(v447 + 224);
                v464 = *(v447 + 240);
                v465 = *(v447 + 160);
                v466 = *(v447 + 176);
                v599 = *v447;
                v600 = v452;
                v601 = v457;
                v602 = v460;
                v615 = v453;
                v616 = v454;
                v617 = v455;
                v618 = v456;
                v631 = v458;
                v632 = v459;
                v633 = v461;
                v634 = v462;
                v449 = v499;
                v450 = v500;
                v647 = v465;
                v648 = v466;
                v649 = v463;
                v650 = v464;
              }

              else if (v448 == 7)
              {
                v451 = vld1q_dup_f64(v447);
                v599 = v451;
                v600 = v451;
                v601 = v451;
                v602 = v451;
                v615 = v451;
                v616 = v451;
                v617 = v451;
                v618 = v451;
                v631 = v451;
                v632 = v451;
                v633 = v451;
                v634 = v451;
                v647 = v451;
                v648 = v451;
                v649 = v451;
                v449 = v499;
                v450 = v500;
                v650 = v451;
              }

              else if (v86[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v599, 256, v447, v448);
                v450 = v516;
                v94 = v517;
                v449 = v518;
              }

              else
              {
                v601 = 0u;
                v602 = 0u;
                v599 = 0u;
                v600 = 0u;
                v615 = 0u;
                v616 = 0u;
                v617 = 0u;
                v618 = 0u;
                v631 = 0u;
                v632 = 0u;
                v633 = 0u;
                v634 = 0u;
                v647 = 0u;
                v648 = 0u;
                v449 = v499;
                v450 = v500;
                v649 = 0u;
                v650 = 0u;
              }

              v36 = v512;
              if (v449)
              {
                v467 = 0;
                v468 = &v523.f64[32 * v450 + 2 * v94];
                v469 = v519;
                do
                {
                  if (v469)
                  {
                    v470 = 0;
                    v471 = v514 + v515 * v467;
                    do
                    {
                      v471[v470] = *(v468 + v470);
                      ++v470;
                      v469 = v519;
                    }

                    while (16 * v519 > v470);
                    v449 = v518;
                  }

                  ++v467;
                  v468 += 16;
                }

                while (v467 < v449);
              }
            }
          }

          else
          {
            v88 = *v86;
            if (v88 == 255)
            {
              v101 = v85[1];
              v102 = v85[2];
              v103 = v85[3];
              v104 = v85[8];
              v105 = v85[9];
              v106 = v85[6];
              v107 = v85[12];
              v108 = v85[13];
              v109 = v85[15];
              v110 = v85[7];
              v111 = v85[4];
              v112 = v85[5];
              v113 = v85[10];
              v114 = v85[11];
              v115 = v85[14];
              v89 = 2 * a11;
              *v87 = *v85;
              v87[1] = v101;
              v87[2] = v111;
              v87[3] = v112;
              v116 = (v87 + v493);
              v37 = a11;
              v117 = (v87 + a11);
              *v117 = v102;
              v117[1] = v103;
              v117[2] = v106;
              v117[3] = v110;
              *v116 = v104;
              v116[1] = v105;
              v116[2] = v107;
              v116[3] = v108;
              v118 = (v87 + v493 + a11);
              v90 = 256;
              *v118 = v113;
              v118[1] = v114;
              v118[2] = v115;
              v118[3] = v109;
            }

            else
            {
              v37 = a11;
              v89 = 2 * a11;
              if (v88 == 7)
              {
                v97 = vld1q_dup_f64(v85->f64);
                *v87 = v97;
                v87[1] = v97;
                v87[2] = v97;
                v87[3] = v97;
                v98 = (v87 + a11);
                *v98 = v97;
                v98[1] = v97;
                v98[2] = v97;
                v98[3] = v97;
                v99 = (v87 + v493);
                *v99 = v97;
                v99[1] = v97;
                v99[2] = v97;
                v99[3] = v97;
                v100 = (v87 + v492);
                *v100 = v97;
                v100[1] = v97;
                v100[2] = v97;
                v100[3] = v97;
                v90 = 8;
              }

              else if (*v86)
              {
                v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v85, v88);
              }

              else
              {
                v90 = 0;
                v87[2] = 0u;
                v87[3] = 0u;
                *v87 = 0u;
                v87[1] = 0u;
                v91 = (v87->f64 + a11);
                v91[2] = 0u;
                v91[3] = 0u;
                *v91 = 0u;
                v91[1] = 0u;
                v92 = (v87->f64 + v493);
                v92[2] = 0u;
                v92[3] = 0u;
                *v92 = 0u;
                v92[1] = 0u;
                v93 = (v87->f64 + v492);
                v93[2] = 0u;
                v93[3] = 0u;
                *v93 = 0u;
                v93[1] = 0u;
              }
            }

            v119 = v85 + v90;
            f64 = v87[4].f64;
            v121 = v86[1];
            if (v121 == 255)
            {
              v130 = *(v119 + 16);
              v131 = *(v119 + 32);
              v132 = *(v119 + 48);
              v133 = *(v119 + 128);
              v134 = *(v119 + 144);
              v135 = *(v119 + 96);
              v136 = *(v119 + 192);
              v137 = *(v119 + 208);
              v138 = *(v119 + 240);
              v139 = *(v119 + 112);
              v140 = *(v119 + 64);
              v141 = *(v119 + 80);
              v142 = *(v119 + 160);
              v143 = *(v119 + 176);
              v144 = *(v119 + 224);
              *f64 = *v119;
              v87[5] = v130;
              v87[6] = v140;
              v87[7] = v141;
              v145 = (f64 + v89);
              v146 = (f64 + v37);
              *v146 = v131;
              v146[1] = v132;
              v146[2] = v135;
              v146[3] = v139;
              *v145 = v133;
              v145[1] = v134;
              v145[2] = v136;
              v145[3] = v137;
              v147 = (f64 + v89 + v37);
              v122 = 256;
              *v147 = v142;
              v147[1] = v143;
              v147[2] = v144;
              v147[3] = v138;
            }

            else if (v121 == 7)
            {
              v126 = vld1q_dup_f64(v119);
              v87[4] = v126;
              v87[5] = v126;
              v87[6] = v126;
              v87[7] = v126;
              v127 = (f64 + v37);
              *v127 = v126;
              v127[1] = v126;
              v127[2] = v126;
              v127[3] = v126;
              v128 = (f64 + v89);
              *v128 = v126;
              v128[1] = v126;
              v128[2] = v126;
              v128[3] = v126;
              v129 = (f64 + v492);
              *v129 = v126;
              v129[1] = v126;
              v122 = 8;
              v129[2] = v126;
              v129[3] = v126;
            }

            else if (v86[1])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(f64, v37, v119, v121);
            }

            else
            {
              v122 = 0;
              v87[6] = 0u;
              v87[7] = 0u;
              *f64 = 0u;
              v87[5] = 0u;
              v123 = (f64 + v37);
              v123[2] = 0u;
              v123[3] = 0u;
              *v123 = 0u;
              v123[1] = 0u;
              v124 = (f64 + v89);
              v124[2] = 0u;
              v124[3] = 0u;
              *v124 = 0u;
              v124[1] = 0u;
              v125 = (f64 + v492);
              v125[2] = 0u;
              v125[3] = 0u;
              *v125 = 0u;
              v125[1] = 0u;
            }

            v148 = v119 + v122;
            v149 = (v87 + v494);
            v150 = v86[2];
            if (v150 == 255)
            {
              v159 = *(v148 + 16);
              v160 = *(v148 + 32);
              v161 = *(v148 + 48);
              v162 = *(v148 + 128);
              v163 = *(v148 + 144);
              v164 = *(v148 + 96);
              v165 = *(v148 + 192);
              v166 = *(v148 + 208);
              v167 = *(v148 + 240);
              v168 = *(v148 + 112);
              v169 = *(v148 + 64);
              v170 = *(v148 + 80);
              v171 = *(v148 + 160);
              v172 = *(v148 + 176);
              v173 = *(v148 + 224);
              *v149 = *v148;
              v149[1] = v159;
              v149[2] = v169;
              v149[3] = v170;
              v174 = (v149->f64 + v89);
              v175 = (v149->f64 + v37);
              *v175 = v160;
              v175[1] = v161;
              v175[2] = v164;
              v175[3] = v168;
              *v174 = v162;
              v174[1] = v163;
              v174[2] = v165;
              v174[3] = v166;
              v176 = (v149->f64 + v89 + v37);
              v151 = 256;
              *v176 = v171;
              v176[1] = v172;
              v176[2] = v173;
              v176[3] = v167;
            }

            else if (v150 == 7)
            {
              v155 = vld1q_dup_f64(v148);
              *v149 = v155;
              v149[1] = v155;
              v149[2] = v155;
              v149[3] = v155;
              v156 = (v149 + v37);
              *v156 = v155;
              v156[1] = v155;
              v156[2] = v155;
              v156[3] = v155;
              v157 = (v149 + v89);
              *v157 = v155;
              v157[1] = v155;
              v157[2] = v155;
              v157[3] = v155;
              v158 = (v149 + v492);
              *v158 = v155;
              v158[1] = v155;
              v158[2] = v155;
              v158[3] = v155;
              v151 = 8;
            }

            else if (v86[2])
            {
              v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87 + v494, v37, v148, v150);
            }

            else
            {
              v151 = 0;
              v149[2] = 0u;
              v149[3] = 0u;
              *v149 = 0u;
              v149[1] = 0u;
              v152 = (v149->f64 + v37);
              v152[2] = 0u;
              v152[3] = 0u;
              *v152 = 0u;
              v152[1] = 0u;
              v153 = (v149->f64 + v89);
              v153[2] = 0u;
              v153[3] = 0u;
              *v153 = 0u;
              v153[1] = 0u;
              v154 = (v149->f64 + v492);
              v154[2] = 0u;
              v154[3] = 0u;
              *v154 = 0u;
              v154[1] = 0u;
            }

            v177 = v148 + v151;
            v178 = v149[4].f64;
            v179 = v86[3];
            if (v179 == 255)
            {
              v188 = *(v177 + 16);
              v189 = *(v177 + 32);
              v190 = *(v177 + 48);
              v191 = *(v177 + 128);
              v192 = *(v177 + 144);
              v193 = *(v177 + 96);
              v194 = *(v177 + 192);
              v195 = *(v177 + 208);
              v196 = *(v177 + 240);
              v197 = *(v177 + 112);
              v198 = *(v177 + 64);
              v199 = *(v177 + 80);
              v200 = *(v177 + 160);
              v201 = *(v177 + 176);
              v202 = *(v177 + 224);
              *v178 = *v177;
              v149[5] = v188;
              v149[6] = v198;
              v149[7] = v199;
              v203 = (v178 + v89);
              v204 = (v178 + v37);
              *v204 = v189;
              v204[1] = v190;
              v204[2] = v193;
              v204[3] = v197;
              *v203 = v191;
              v203[1] = v192;
              v203[2] = v194;
              v203[3] = v195;
              v205 = (v178 + v89 + v37);
              v180 = 256;
              *v205 = v200;
              v205[1] = v201;
              v205[2] = v202;
              v205[3] = v196;
            }

            else if (v179 == 7)
            {
              v184 = vld1q_dup_f64(v177);
              v149[4] = v184;
              v149[5] = v184;
              v149[6] = v184;
              v149[7] = v184;
              v185 = (v178 + v37);
              *v185 = v184;
              v185[1] = v184;
              v185[2] = v184;
              v185[3] = v184;
              v186 = (v178 + v89);
              *v186 = v184;
              v186[1] = v184;
              v186[2] = v184;
              v186[3] = v184;
              v187 = (v178 + v492);
              *v187 = v184;
              v187[1] = v184;
              v180 = 8;
              v187[2] = v184;
              v187[3] = v184;
            }

            else if (v86[3])
            {
              v180 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v178, v37, v177, v179);
            }

            else
            {
              v180 = 0;
              v149[6] = 0u;
              v149[7] = 0u;
              *v178 = 0u;
              v149[5] = 0u;
              v181 = (v178 + v37);
              v181[2] = 0u;
              v181[3] = 0u;
              *v181 = 0u;
              v181[1] = 0u;
              v182 = (v178 + v89);
              v182[2] = 0u;
              v182[3] = 0u;
              *v182 = 0u;
              v182[1] = 0u;
              v183 = (v178 + v492);
              v183[2] = 0u;
              v183[3] = 0u;
              *v183 = 0u;
              v183[1] = 0u;
            }

            v206 = v177 + v180;
            v207 = v87[8].f64;
            v208 = v86[4];
            if (v208 == 255)
            {
              v217 = *(v206 + 16);
              v218 = *(v206 + 32);
              v219 = *(v206 + 48);
              v220 = *(v206 + 128);
              v221 = *(v206 + 144);
              v222 = *(v206 + 96);
              v223 = *(v206 + 192);
              v224 = *(v206 + 208);
              v225 = *(v206 + 240);
              v226 = *(v206 + 112);
              v227 = *(v206 + 64);
              v228 = *(v206 + 80);
              v229 = *(v206 + 160);
              v230 = *(v206 + 176);
              v231 = *(v206 + 224);
              *v207 = *v206;
              v87[9] = v217;
              v87[10] = v227;
              v87[11] = v228;
              v232 = (v207 + v89);
              v233 = (v207 + v37);
              *v233 = v218;
              v233[1] = v219;
              v233[2] = v222;
              v233[3] = v226;
              *v232 = v220;
              v232[1] = v221;
              v232[2] = v223;
              v232[3] = v224;
              v234 = (v207 + v89 + v37);
              v209 = 256;
              *v234 = v229;
              v234[1] = v230;
              v234[2] = v231;
              v234[3] = v225;
            }

            else if (v208 == 7)
            {
              v213 = vld1q_dup_f64(v206);
              v87[8] = v213;
              v87[9] = v213;
              v87[10] = v213;
              v87[11] = v213;
              v214 = (v207 + v37);
              *v214 = v213;
              v214[1] = v213;
              v214[2] = v213;
              v214[3] = v213;
              v215 = (v207 + v89);
              *v215 = v213;
              v215[1] = v213;
              v215[2] = v213;
              v215[3] = v213;
              v216 = (v207 + v492);
              *v216 = v213;
              v216[1] = v213;
              v209 = 8;
              v216[2] = v213;
              v216[3] = v213;
            }

            else if (v86[4])
            {
              v209 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v207, v37, v206, v208);
            }

            else
            {
              v209 = 0;
              v87[10] = 0u;
              v87[11] = 0u;
              *v207 = 0u;
              v87[9] = 0u;
              v210 = (v207 + v37);
              v210[2] = 0u;
              v210[3] = 0u;
              *v210 = 0u;
              v210[1] = 0u;
              v211 = (v207 + v89);
              v211[2] = 0u;
              v211[3] = 0u;
              *v211 = 0u;
              v211[1] = 0u;
              v212 = (v207 + v492);
              v212[2] = 0u;
              v212[3] = 0u;
              *v212 = 0u;
              v212[1] = 0u;
            }

            v235 = v206 + v209;
            v236 = v87[12].f64;
            v237 = v86[5];
            if (v237 == 255)
            {
              v246 = *(v235 + 16);
              v247 = *(v235 + 32);
              v248 = *(v235 + 48);
              v249 = *(v235 + 128);
              v250 = *(v235 + 144);
              v251 = *(v235 + 96);
              v252 = *(v235 + 192);
              v253 = *(v235 + 208);
              v254 = *(v235 + 240);
              v255 = *(v235 + 112);
              v256 = *(v235 + 64);
              v257 = *(v235 + 80);
              v258 = *(v235 + 160);
              v259 = *(v235 + 176);
              v260 = *(v235 + 224);
              *v236 = *v235;
              v87[13] = v246;
              v87[14] = v256;
              v87[15] = v257;
              v261 = (v236 + v89);
              v262 = (v236 + v37);
              *v262 = v247;
              v262[1] = v248;
              v262[2] = v251;
              v262[3] = v255;
              *v261 = v249;
              v261[1] = v250;
              v261[2] = v252;
              v261[3] = v253;
              v263 = (v236 + v89 + v37);
              v238 = 256;
              *v263 = v258;
              v263[1] = v259;
              v263[2] = v260;
              v263[3] = v254;
            }

            else if (v237 == 7)
            {
              v242 = vld1q_dup_f64(v235);
              v87[12] = v242;
              v87[13] = v242;
              v87[14] = v242;
              v87[15] = v242;
              v243 = (v236 + v37);
              *v243 = v242;
              v243[1] = v242;
              v243[2] = v242;
              v243[3] = v242;
              v244 = (v236 + v89);
              *v244 = v242;
              v244[1] = v242;
              v244[2] = v242;
              v244[3] = v242;
              v245 = (v236 + v492);
              *v245 = v242;
              v245[1] = v242;
              v238 = 8;
              v245[2] = v242;
              v245[3] = v242;
            }

            else if (v86[5])
            {
              v238 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v236, v37, v235, v237);
            }

            else
            {
              v238 = 0;
              v87[14] = 0u;
              v87[15] = 0u;
              *v236 = 0u;
              v87[13] = 0u;
              v239 = (v236 + v37);
              v239[2] = 0u;
              v239[3] = 0u;
              *v239 = 0u;
              v239[1] = 0u;
              v240 = (v236 + v89);
              v240[2] = 0u;
              v240[3] = 0u;
              *v240 = 0u;
              v240[1] = 0u;
              v241 = (v236 + v492);
              v241[2] = 0u;
              v241[3] = 0u;
              *v241 = 0u;
              v241[1] = 0u;
            }

            v16 = v501;
            v264 = v235 + v238;
            v265 = v149[8].f64;
            v266 = v86[6];
            if (v266 == 255)
            {
              v275 = *(v264 + 16);
              v276 = *(v264 + 32);
              v277 = *(v264 + 48);
              v278 = *(v264 + 128);
              v279 = *(v264 + 144);
              v280 = *(v264 + 96);
              v281 = *(v264 + 192);
              v282 = *(v264 + 208);
              v283 = *(v264 + 240);
              v284 = *(v264 + 112);
              v285 = *(v264 + 64);
              v286 = *(v264 + 80);
              v287 = *(v264 + 160);
              v288 = *(v264 + 176);
              v289 = *(v264 + 224);
              *v265 = *v264;
              v149[9] = v275;
              v149[10] = v285;
              v149[11] = v286;
              v290 = (v265 + v89);
              v291 = (v265 + v37);
              *v291 = v276;
              v291[1] = v277;
              v291[2] = v280;
              v291[3] = v284;
              *v290 = v278;
              v290[1] = v279;
              v290[2] = v281;
              v290[3] = v282;
              v292 = (v265 + v89 + v37);
              v267 = 256;
              *v292 = v287;
              v292[1] = v288;
              v292[2] = v289;
              v292[3] = v283;
            }

            else if (v266 == 7)
            {
              v271 = vld1q_dup_f64(v264);
              v149[8] = v271;
              v149[9] = v271;
              v149[10] = v271;
              v149[11] = v271;
              v272 = (v265 + v37);
              *v272 = v271;
              v272[1] = v271;
              v272[2] = v271;
              v272[3] = v271;
              v273 = (v265 + v89);
              *v273 = v271;
              v273[1] = v271;
              v273[2] = v271;
              v273[3] = v271;
              v274 = (v265 + v492);
              *v274 = v271;
              v274[1] = v271;
              v267 = 8;
              v274[2] = v271;
              v274[3] = v271;
            }

            else if (v86[6])
            {
              v267 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v265, v37, v264, v266);
            }

            else
            {
              v267 = 0;
              v149[10] = 0u;
              v149[11] = 0u;
              *v265 = 0u;
              v149[9] = 0u;
              v268 = (v265 + v37);
              v268[2] = 0u;
              v268[3] = 0u;
              *v268 = 0u;
              v268[1] = 0u;
              v269 = (v265 + v89);
              v269[2] = 0u;
              v269[3] = 0u;
              *v269 = 0u;
              v269[1] = 0u;
              v270 = (v265 + v492);
              v270[2] = 0u;
              v270[3] = 0u;
              *v270 = 0u;
              v270[1] = 0u;
            }

            v293 = v264 + v267;
            v294 = v149[12].f64;
            v295 = v86[7];
            if (v295 == 255)
            {
              v299 = *(v293 + 16);
              v300 = *(v293 + 32);
              v301 = *(v293 + 48);
              v302 = *(v293 + 96);
              v303 = *(v293 + 112);
              v304 = *(v293 + 64);
              v305 = *(v293 + 80);
              v306 = *(v293 + 128);
              v307 = *(v293 + 144);
              v308 = *(v293 + 192);
              v309 = *(v293 + 208);
              v310 = *(v293 + 224);
              v311 = *(v293 + 240);
              v312 = *(v293 + 160);
              v313 = *(v293 + 176);
              *v294 = *v293;
              v149[13] = v299;
              v149[14] = v304;
              v149[15] = v305;
              v314 = (v294 + v89);
              v315 = (v294 + v37);
              *v315 = v300;
              v315[1] = v301;
              v315[2] = v302;
              v315[3] = v303;
              *v314 = v306;
              v314[1] = v307;
              v314[2] = v308;
              v314[3] = v309;
              v316 = (v294 + v89 + v37);
              *v316 = v312;
              v316[1] = v313;
              v316[2] = v310;
              v316[3] = v311;
            }

            else if (v295 == 7)
            {
              v48 = vld1q_dup_f64(v293);
              v149[12] = v48;
              v149[13] = v48;
              v149[14] = v48;
              v149[15] = v48;
              v49 = (v294 + v37);
              *v49 = v48;
              v49[1] = v48;
              v49[2] = v48;
              v49[3] = v48;
              v50 = (v294 + v89);
              *v50 = v48;
              v50[1] = v48;
              v50[2] = v48;
              v50[3] = v48;
              v51 = (v294 + v492);
              *v51 = v48;
              v51[1] = v48;
              v51[2] = v48;
              v51[3] = v48;
            }

            else if (v86[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v294, v37, v293, v295);
            }

            else
            {
              v149[14] = 0u;
              v149[15] = 0u;
              *v294 = 0u;
              v149[13] = 0u;
              v296 = (v294 + v37);
              v296[2] = 0u;
              v296[3] = 0u;
              *v296 = 0u;
              v296[1] = 0u;
              v297 = (v294 + v89);
              v297[2] = 0u;
              v297[3] = 0u;
              *v297 = 0u;
              v297[1] = 0u;
              v298 = (v294 + v492);
              v298[2] = 0u;
              v298[3] = 0u;
              *v298 = 0u;
              v298[1] = 0u;
            }

            v36 = v512;
          }

          v31 = v46++ == v502 >> 4;
        }

        while (!v31);
        v31 = v26++ == v491;
      }

      while (!v31);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v505 = v21;
  v506 = v22;
  v490 = v23;
  v24 = v12;
  v651 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v25 = v24;
  v509 = v14;
  v26 = v14 >> 3;
  v489 = v14 + a10 - 1;
  v491 = v489 >> 3;
  v27 = *(*(v25 + 208) + 88);
  v28 = *(v25 + 112);
  v512 = v25;
  if (*(v25 + 168))
  {
    CacheMode = IOSurfaceGetCacheMode();
    v25 = v512;
    v30 = CacheMode & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v504 = v34;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v25, *(v25 + 144) + a12);
  v36 = v512;
  v503 = isLevelTiled;
  if (v26 <= v491)
  {
    v502 = v16 + a9 - 1;
    v488 = v16 >> 4;
    if (v16 >> 4 <= v502 >> 4)
    {
      v37 = a11;
      v511 = (v20 - 1) >> 4;
      v485 = v20 - 1;
      v495 = (v20 - 1) & 0xF;
      v486 = (v18 - 1) & 7;
      v487 = (v18 - 1) >> 3;
      v494 = 4 * a11;
      v38 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v39 = vcgt_u32(v38, 0x1F0000000FLL);
      v498 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v38, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v39);
      v497 = v39;
      v484 = 8 * v28 * v27;
      v501 = v16;
      v492 = 3 * a11;
      v493 = 2 * a11;
      do
      {
        v40 = (8 * v26) | 7;
        if (8 * v26 <= v509)
        {
          v41 = v509;
        }

        else
        {
          v41 = 8 * v26;
        }

        if (v489 < v40)
        {
          v40 = v489;
        }

        v508 = 8 * v26;
        v500 = v41 - 8 * v26;
        v42 = v40 - v41;
        v43 = v42 + 1;
        v44 = v42 != v486;
        v499 = v43;
        v45 = v43 != 8;
        v46 = v488;
        v47 = v486 + 1;
        if (v26 != v487)
        {
          v47 = 8;
        }

        v510 = v47;
        if (v26 != v487)
        {
          v44 = v45;
        }

        v496 = v44;
        v507 = v490 + (v41 - v509) * v37;
        do
        {
          v52 = 16 * v46;
          v53 = 16 * (v46 + 1) - 1;
          if (16 * v46 <= v16)
          {
            v54 = v16;
          }

          else
          {
            v54 = 16 * v46;
          }

          if (v502 < v53)
          {
            v53 = v502;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v46 == v511)
          {
            v57 = v495 + 1;
          }

          else
          {
            v57 = 16;
          }

          v58 = 1;
          if (v508 >= v509 && v52 >= v16)
          {
            v59 = v55 != v495;
            if (v46 != v511)
            {
              v59 = v56 != 16;
            }

            v58 = v59 || v496;
          }

          if (v503)
          {
            v80 = 0;
            v81 = v484 >> (*(v36 + 57) != 0);
            v82 = 1;
            if (v81 <= 63)
            {
              if (v81 > 15)
              {
                if (v81 == 16)
                {
                  v82 = 0;
                  v83 = 0;
                  v84 = 64;
                  v80 = 128;
                }

                else
                {
                  v83 = 1;
                  v84 = 0;
                  if (v81 == 32)
                  {
                    v82 = 0;
                    v83 = 0;
                    v80 = 64;
                    v84 = 64;
                  }
                }
              }

              else if (v81 == 4)
              {
                v82 = 0;
                v83 = 0;
                v84 = 128;
                v80 = 256;
              }

              else
              {
                v83 = 1;
                v84 = 0;
                if (v81 == 8)
                {
                  v82 = 0;
                  v83 = 0;
                  v80 = 128;
                  v84 = 128;
                }
              }
            }

            else if (v81 <= 255)
            {
              if (v81 == 64)
              {
                v82 = 0;
                v83 = 0;
                v84 = 32;
                v80 = 64;
              }

              else
              {
                v83 = 1;
                v84 = 0;
                if (v81 == 128)
                {
                  v82 = 0;
                  v83 = 0;
                  v80 = 32;
                  v84 = 32;
                }
              }
            }

            else if (v81 == 256)
            {
              v82 = 0;
              v83 = 0;
              v84 = 16;
              v80 = 32;
            }

            else if (v81 == 512)
            {
              v83 = 0;
              v80 = 16;
              v84 = 16;
            }

            else
            {
              v83 = 1;
              v84 = 0;
              if (v81 == 1024)
              {
                v84 = 8;
                v80 = 16;
              }
            }

            v472 = (v80 >> 4) - 1;
            if (v82)
            {
              v473 = 0;
            }

            else
            {
              v473 = 32 - __clz(~(-1 << -__clz(v472)));
            }

            v474 = (v84 >> 3) - 1;
            if (v83)
            {
              v475 = 0;
              if (v473)
              {
                goto LABEL_225;
              }
            }

            else
            {
              v475 = 32 - __clz(~(-1 << -__clz(v474)));
              if (v475 | v473)
              {
LABEL_225:
                v476 = 0;
                v477 = 0;
                v478 = v46 & v472;
                v479 = v26 & v474;
                v480 = v475 != 0;
                v481 = v473 != 0;
                v482 = 1;
                do
                {
                  --v475;
                  if (v480)
                  {
                    v477 |= (v482 & v479) << v476++;
                  }

                  else
                  {
                    v475 = 0;
                  }

                  --v473;
                  if (v481)
                  {
                    v477 |= (v482 & v478) << v476++;
                  }

                  else
                  {
                    v473 = 0;
                  }

                  v482 *= 2;
                  --v476;
                  v481 = v473 != 0;
                  v480 = v475 != 0;
                }

                while (v473 | v475);
                v483 = v477 << 11;
                goto LABEL_237;
              }
            }

            v483 = 0;
LABEL_237:
            v67 = v483 + ((v52 / v80 + v508 / v84 * ((v80 + v485) / v80)) << 14);
            goto LABEL_56;
          }

          if (v498)
          {
            v60 = 0;
            v61 = 0;
            v62 = 1;
            v63 = v497.i8[0];
            v64 = v497.i8[4];
            v65 = v498.i32[0];
            v66 = v498.i32[1];
            do
            {
              --v65;
              if (v63)
              {
                v61 |= (v62 & v26) << v60++;
              }

              else
              {
                v65 = 0;
              }

              --v66;
              if (v64)
              {
                v61 |= (v62 & v46) << v60++;
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
            v67 = v61 << 11;
          }

          else
          {
            v67 = 0;
          }

LABEL_56:
          v68 = *(v36 + 128) >> (*(v36 + 144) + a12);
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

          v71 = *(v36 + 132) >> (*(v36 + 144) + a12);
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
LABEL_81:
              v79 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 3) - 1)));
            if (!(v73 | v70))
            {
              goto LABEL_81;
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
              v75 |= (v78 & v46) << v74++;
            }

            else
            {
              v70 = 0;
            }

            --v73;
            if (v77)
            {
              v75 |= (v78 & v26) << v74++;
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
LABEL_82:
          v85 = (v505 + v67);
          if (v504)
          {
            memcpy(__dst, v85, sizeof(__dst));
            v36 = v512;
            v85 = __dst;
          }

          v86 = (v506 + v79);
          v87 = (v507 + 16 * (v54 - v16));
          if (v58 & 1 | (v57 < 0x10u) || v510 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            v94 = v54 - v52;
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v36;
            block[5] = v85;
            v520 = v57;
            v521 = v510;
            v516 = v500;
            v517 = v94;
            block[6] = v86;
            v514 = v87;
            v37 = a11;
            v515 = a11;
            v518 = v499;
            v519 = v56;
            if (v58)
            {
              dispatch_sync(*(*(v36 + 8) + 16552), block);
              v36 = v512;
              v16 = v501;
            }

            else
            {
              v95 = *v86;
              v16 = v501;
              if (v95 == 255)
              {
                v318 = v85[1];
                v319 = v85[2];
                v320 = v85[3];
                v321 = v85[6];
                v322 = v85[7];
                v323 = v85[8];
                v324 = v85[9];
                v325 = v85[11];
                v326 = v85[4];
                v327 = v85[12];
                v328 = v85[13];
                v329 = v85[14];
                v330 = v85[15];
                v331 = v85[5];
                v332 = v85[10];
                v523 = *v85;
                v524 = v318;
                v525 = v326;
                v526 = v331;
                v539 = v319;
                v540 = v320;
                v541 = v321;
                v542 = v322;
                v555 = v323;
                v556 = v324;
                v557 = v327;
                v558 = v328;
                v96 = 256;
                v571 = v332;
                v572 = v325;
                v573 = v329;
                v574 = v330;
              }

              else if (v95 == 7)
              {
                v317 = vld1q_dup_f64(v85->f64);
                v523 = v317;
                v524 = v317;
                v525 = v317;
                v526 = v317;
                v539 = v317;
                v540 = v317;
                v541 = v317;
                v542 = v317;
                v555 = v317;
                v556 = v317;
                v557 = v317;
                v558 = v317;
                v571 = v317;
                v572 = v317;
                v96 = 8;
                v573 = v317;
                v574 = v317;
              }

              else if (*v86)
              {
                v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v523, 256, v85, v95);
              }

              else
              {
                v96 = 0;
                v526 = 0u;
                v525 = 0u;
                v524 = 0u;
                v523 = 0u;
                v539 = 0u;
                v540 = 0u;
                v541 = 0u;
                v542 = 0u;
                v555 = 0u;
                v556 = 0u;
                v557 = 0u;
                v558 = 0u;
                v571 = 0u;
                v572 = 0u;
                v573 = 0u;
                v574 = 0u;
              }

              v333 = v85 + v96;
              v334 = v86[1];
              if (v334 == 255)
              {
                v337 = *(v333 + 16);
                v338 = *(v333 + 32);
                v339 = *(v333 + 48);
                v340 = *(v333 + 96);
                v341 = *(v333 + 112);
                v342 = *(v333 + 128);
                v343 = *(v333 + 144);
                v344 = *(v333 + 176);
                v345 = *(v333 + 64);
                v346 = *(v333 + 192);
                v347 = *(v333 + 208);
                v348 = *(v333 + 224);
                v349 = *(v333 + 240);
                v350 = *(v333 + 80);
                v351 = *(v333 + 160);
                v527 = *v333;
                v528 = v337;
                v529 = v345;
                v530 = v350;
                v543 = v338;
                v544 = v339;
                v545 = v340;
                v546 = v341;
                v559 = v342;
                v560 = v343;
                v561 = v346;
                v562 = v347;
                v335 = 256;
                v575 = v351;
                v576 = v344;
                v577 = v348;
                v578 = v349;
              }

              else if (v334 == 7)
              {
                v336 = vld1q_dup_f64(v333);
                v527 = v336;
                v528 = v336;
                v529 = v336;
                v530 = v336;
                v543 = v336;
                v544 = v336;
                v545 = v336;
                v546 = v336;
                v559 = v336;
                v560 = v336;
                v561 = v336;
                v562 = v336;
                v575 = v336;
                v576 = v336;
                v335 = 8;
                v577 = v336;
                v578 = v336;
              }

              else if (v86[1])
              {
                v335 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v527, 256, v333, v334);
              }

              else
              {
                v335 = 0;
                v529 = 0u;
                v530 = 0u;
                v527 = 0u;
                v528 = 0u;
                v543 = 0u;
                v544 = 0u;
                v545 = 0u;
                v546 = 0u;
                v559 = 0u;
                v560 = 0u;
                v561 = 0u;
                v562 = 0u;
                v575 = 0u;
                v576 = 0u;
                v577 = 0u;
                v578 = 0u;
              }

              v352 = v333 + v335;
              v353 = v86[2];
              if (v353 == 255)
              {
                v356 = *(v352 + 16);
                v357 = *(v352 + 32);
                v358 = *(v352 + 48);
                v359 = *(v352 + 96);
                v360 = *(v352 + 112);
                v361 = *(v352 + 128);
                v362 = *(v352 + 144);
                v363 = *(v352 + 176);
                v364 = *(v352 + 64);
                v365 = *(v352 + 192);
                v366 = *(v352 + 208);
                v367 = *(v352 + 224);
                v368 = *(v352 + 240);
                v369 = *(v352 + 80);
                v370 = *(v352 + 160);
                v587 = *v352;
                v588 = v356;
                v589 = v364;
                v590 = v369;
                v603 = v357;
                v604 = v358;
                v605 = v359;
                v606 = v360;
                v619 = v361;
                v620 = v362;
                v621 = v365;
                v622 = v366;
                v354 = 256;
                v635 = v370;
                v636 = v363;
                v637 = v367;
                v638 = v368;
              }

              else if (v353 == 7)
              {
                v355 = vld1q_dup_f64(v352);
                v587 = v355;
                v588 = v355;
                v589 = v355;
                v590 = v355;
                v603 = v355;
                v604 = v355;
                v605 = v355;
                v606 = v355;
                v619 = v355;
                v620 = v355;
                v621 = v355;
                v622 = v355;
                v635 = v355;
                v636 = v355;
                v637 = v355;
                v354 = 8;
                v638 = v355;
              }

              else if (v86[2])
              {
                v354 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v587, 256, v352, v353);
              }

              else
              {
                v354 = 0;
                v589 = 0u;
                v590 = 0u;
                v587 = 0u;
                v588 = 0u;
                v603 = 0u;
                v604 = 0u;
                v605 = 0u;
                v606 = 0u;
                v619 = 0u;
                v620 = 0u;
                v621 = 0u;
                v622 = 0u;
                v635 = 0u;
                v636 = 0u;
                v637 = 0u;
                v638 = 0u;
              }

              v371 = v352 + v354;
              v372 = v86[3];
              if (v372 == 255)
              {
                v375 = *(v371 + 16);
                v376 = *(v371 + 32);
                v377 = *(v371 + 48);
                v378 = *(v371 + 96);
                v379 = *(v371 + 112);
                v380 = *(v371 + 128);
                v381 = *(v371 + 144);
                v382 = *(v371 + 176);
                v383 = *(v371 + 64);
                v384 = *(v371 + 192);
                v385 = *(v371 + 208);
                v386 = *(v371 + 224);
                v387 = *(v371 + 240);
                v388 = *(v371 + 80);
                v389 = *(v371 + 160);
                v591 = *v371;
                v592 = v375;
                v593 = v383;
                v594 = v388;
                v607 = v376;
                v608 = v377;
                v609 = v378;
                v610 = v379;
                v623 = v380;
                v624 = v381;
                v625 = v384;
                v626 = v385;
                v373 = 256;
                v639 = v389;
                v640 = v382;
                v641 = v386;
                v642 = v387;
              }

              else if (v372 == 7)
              {
                v374 = vld1q_dup_f64(v371);
                v591 = v374;
                v592 = v374;
                v593 = v374;
                v594 = v374;
                v607 = v374;
                v608 = v374;
                v609 = v374;
                v610 = v374;
                v623 = v374;
                v624 = v374;
                v625 = v374;
                v626 = v374;
                v639 = v374;
                v640 = v374;
                v641 = v374;
                v373 = 8;
                v642 = v374;
              }

              else if (v86[3])
              {
                v373 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v591, 256, v371, v372);
              }

              else
              {
                v373 = 0;
                v593 = 0u;
                v594 = 0u;
                v591 = 0u;
                v592 = 0u;
                v607 = 0u;
                v608 = 0u;
                v609 = 0u;
                v610 = 0u;
                v623 = 0u;
                v624 = 0u;
                v625 = 0u;
                v626 = 0u;
                v639 = 0u;
                v640 = 0u;
                v641 = 0u;
                v642 = 0u;
              }

              v390 = v371 + v373;
              v391 = v86[4];
              if (v391 == 255)
              {
                v394 = *(v390 + 16);
                v395 = *(v390 + 32);
                v396 = *(v390 + 48);
                v397 = *(v390 + 96);
                v398 = *(v390 + 112);
                v399 = *(v390 + 128);
                v400 = *(v390 + 144);
                v401 = *(v390 + 176);
                v402 = *(v390 + 64);
                v403 = *(v390 + 192);
                v404 = *(v390 + 208);
                v405 = *(v390 + 224);
                v406 = *(v390 + 240);
                v407 = *(v390 + 80);
                v408 = *(v390 + 160);
                v531 = *v390;
                v532 = v394;
                v533 = v402;
                v534 = v407;
                v547 = v395;
                v548 = v396;
                v549 = v397;
                v550 = v398;
                v563 = v399;
                v564 = v400;
                v565 = v403;
                v566 = v404;
                v392 = 256;
                v579 = v408;
                v580 = v401;
                v581 = v405;
                v582 = v406;
              }

              else if (v391 == 7)
              {
                v393 = vld1q_dup_f64(v390);
                v531 = v393;
                v532 = v393;
                v533 = v393;
                v534 = v393;
                v547 = v393;
                v548 = v393;
                v549 = v393;
                v550 = v393;
                v563 = v393;
                v564 = v393;
                v565 = v393;
                v566 = v393;
                v579 = v393;
                v580 = v393;
                v392 = 8;
                v581 = v393;
                v582 = v393;
              }

              else if (v86[4])
              {
                v392 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v531, 256, v390, v391);
              }

              else
              {
                v392 = 0;
                v533 = 0u;
                v534 = 0u;
                v531 = 0u;
                v532 = 0u;
                v547 = 0u;
                v548 = 0u;
                v549 = 0u;
                v550 = 0u;
                v563 = 0u;
                v564 = 0u;
                v565 = 0u;
                v566 = 0u;
                v579 = 0u;
                v580 = 0u;
                v581 = 0u;
                v582 = 0u;
              }

              v409 = v390 + v392;
              v410 = v86[5];
              if (v410 == 255)
              {
                v413 = *(v409 + 16);
                v414 = *(v409 + 32);
                v415 = *(v409 + 48);
                v416 = *(v409 + 96);
                v417 = *(v409 + 112);
                v418 = *(v409 + 128);
                v419 = *(v409 + 144);
                v420 = *(v409 + 176);
                v421 = *(v409 + 64);
                v422 = *(v409 + 192);
                v423 = *(v409 + 208);
                v424 = *(v409 + 224);
                v425 = *(v409 + 240);
                v426 = *(v409 + 80);
                v427 = *(v409 + 160);
                v535 = *v409;
                v536 = v413;
                v537 = v421;
                v538 = v426;
                v551 = v414;
                v552 = v415;
                v553 = v416;
                v554 = v417;
                v567 = v418;
                v568 = v419;
                v569 = v422;
                v570 = v423;
                v411 = 256;
                v583 = v427;
                v584 = v420;
                v585 = v424;
                v586 = v425;
              }

              else if (v410 == 7)
              {
                v412 = vld1q_dup_f64(v409);
                v535 = v412;
                v536 = v412;
                v537 = v412;
                v538 = v412;
                v551 = v412;
                v552 = v412;
                v553 = v412;
                v554 = v412;
                v567 = v412;
                v568 = v412;
                v569 = v412;
                v570 = v412;
                v583 = v412;
                v584 = v412;
                v411 = 8;
                v585 = v412;
                v586 = v412;
              }

              else if (v86[5])
              {
                v411 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v535, 256, v409, v410);
              }

              else
              {
                v411 = 0;
                v537 = 0u;
                v538 = 0u;
                v535 = 0u;
                v536 = 0u;
                v551 = 0u;
                v552 = 0u;
                v553 = 0u;
                v554 = 0u;
                v567 = 0u;
                v568 = 0u;
                v569 = 0u;
                v570 = 0u;
                v583 = 0u;
                v584 = 0u;
                v585 = 0u;
                v586 = 0u;
              }

              v428 = v409 + v411;
              v429 = v86[6];
              if (v429 == 255)
              {
                v432 = *(v428 + 16);
                v433 = *(v428 + 32);
                v434 = *(v428 + 48);
                v435 = *(v428 + 96);
                v436 = *(v428 + 112);
                v437 = *(v428 + 128);
                v438 = *(v428 + 144);
                v439 = *(v428 + 176);
                v440 = *(v428 + 64);
                v441 = *(v428 + 192);
                v442 = *(v428 + 208);
                v443 = *(v428 + 224);
                v444 = *(v428 + 240);
                v445 = *(v428 + 80);
                v446 = *(v428 + 160);
                v595 = *v428;
                v596 = v432;
                v597 = v440;
                v598 = v445;
                v611 = v433;
                v612 = v434;
                v613 = v435;
                v614 = v436;
                v627 = v437;
                v628 = v438;
                v629 = v441;
                v630 = v442;
                v430 = 256;
                v643 = v446;
                v644 = v439;
                v645 = v443;
                v646 = v444;
              }

              else if (v429 == 7)
              {
                v431 = vld1q_dup_f64(v428);
                v595 = v431;
                v596 = v431;
                v597 = v431;
                v598 = v431;
                v611 = v431;
                v612 = v431;
                v613 = v431;
                v614 = v431;
                v627 = v431;
                v628 = v431;
                v629 = v431;
                v630 = v431;
                v643 = v431;
                v644 = v431;
                v645 = v431;
                v430 = 8;
                v646 = v431;
              }

              else if (v86[6])
              {
                v430 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v595, 256, v428, v429);
              }

              else
              {
                v430 = 0;
                v597 = 0u;
                v598 = 0u;
                v595 = 0u;
                v596 = 0u;
                v611 = 0u;
                v612 = 0u;
                v613 = 0u;
                v614 = 0u;
                v627 = 0u;
                v628 = 0u;
                v629 = 0u;
                v630 = 0u;
                v643 = 0u;
                v644 = 0u;
                v645 = 0u;
                v646 = 0u;
              }

              v447 = v428 + v430;
              v448 = v86[7];
              if (v448 == 255)
              {
                v452 = *(v447 + 16);
                v453 = *(v447 + 32);
                v454 = *(v447 + 48);
                v455 = *(v447 + 96);
                v456 = *(v447 + 112);
                v457 = *(v447 + 64);
                v458 = *(v447 + 128);
                v459 = *(v447 + 144);
                v460 = *(v447 + 80);
                v461 = *(v447 + 192);
                v462 = *(v447 + 208);
                v463 = *(v447 + 224);
                v464 = *(v447 + 240);
                v465 = *(v447 + 160);
                v466 = *(v447 + 176);
                v599 = *v447;
                v600 = v452;
                v601 = v457;
                v602 = v460;
                v615 = v453;
                v616 = v454;
                v617 = v455;
                v618 = v456;
                v631 = v458;
                v632 = v459;
                v633 = v461;
                v634 = v462;
                v449 = v499;
                v450 = v500;
                v647 = v465;
                v648 = v466;
                v649 = v463;
                v650 = v464;
              }

              else if (v448 == 7)
              {
                v451 = vld1q_dup_f64(v447);
                v599 = v451;
                v600 = v451;
                v601 = v451;
                v602 = v451;
                v615 = v451;
                v616 = v451;
                v617 = v451;
                v618 = v451;
                v631 = v451;
                v632 = v451;
                v633 = v451;
                v634 = v451;
                v647 = v451;
                v648 = v451;
                v649 = v451;
                v449 = v499;
                v450 = v500;
                v650 = v451;
              }

              else if (v86[7])
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v599, 256, v447, v448);
                v450 = v516;
                v94 = v517;
                v449 = v518;
              }

              else
              {
                v601 = 0u;
                v602 = 0u;
                v599 = 0u;
                v600 = 0u;
                v615 = 0u;
                v616 = 0u;
                v617 = 0u;
                v618 = 0u;
                v631 = 0u;
                v632 = 0u;
                v633 = 0u;
                v634 = 0u;
                v647 = 0u;
                v648 = 0u;
                v449 = v499;
                v450 = v500;
                v649 = 0u;
                v650 = 0u;
              }

              v36 = v512;
              if (v449)
              {
                v467 = 0;
                v468 = &v523.f64[32 * v450 + 2 * v94];
                v469 = v519;
                do
                {
                  if (v469)
                  {
                    v470 = 0;
                    v471 = v514 + v515 * v467;
                    do
                    {
                      v471[v470] = *(v468 + v470);
                      ++v470;
                      v469 = v519;
                    }

                    while (16 * v519 > v470);
                    v449 = v518;
                  }

                  ++v467;
                  v468 += 16;
                }

                while (v467 < v449);
              }
            }
          }

          else
          {
            v88 = *v86;
            if (v88 == 255)
            {
              v101 = v85[1];
              v102 = v85[2];
              v103 = v85[3];
              v104 = v85[8];
              v105 = v85[9];
              v106 = v85[6];
              v107 = v85[12];
              v108 = v85[13];
              v109 = v85[15];
              v110 = v85[7];
              v111 = v85[4];
              v112 = v85[5];
              v113 = v85[10];
              v114 = v85[11];
              v115 = v85[14];
              v89 = 2 * a11;
              *v87 = *v85;
              v87[1] = v101;
              v87[2] = v111;
              v87[3] = v112;
              v116 = (v87 + v493);
              v37 = a11;
              v117 = (v87 + a11);
              *v117 = v102;
              v117[1] = v103;
              v117[2] = v106;
              v117[3] = v110;
              *v116 = v104;
              v116[1] = v105;
              v116[2] = v107;
              v116[3] = v108;
              v118 = (v87 + v493 + a11);
              v90 = 256;
              *v118 = v113;
              v118[1] = v114;
              v118[2] = v115;
              v118[3] = v109;
            }

            else
            {
              v37 = a11;
              v89 = 2 * a11;
              if (v88 == 7)
              {
                v97 = vld1q_dup_f64(v85->f64);
                *v87 = v97;
                v87[1] = v97;
                v87[2] = v97;
                v87[3] = v97;
                v98 = (v87 + a11);
                *v98 = v97;
                v98[1] = v97;
                v98[2] = v97;
                v98[3] = v97;
                v99 = (v87 + v493);
                *v99 = v97;
                v99[1] = v97;
                v99[2] = v97;
                v99[3] = v97;
                v100 = (v87 + v492);
                *v100 = v97;
                v100[1] = v97;
                v100[2] = v97;
                v100[3] = v97;
                v90 = 8;
              }

              else if (*v86)
              {
                v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v85, v88);
              }

              else
              {
                v90 = 0;
                v87[2] = 0u;
                v87[3] = 0u;
                *v87 = 0u;
                v87[1] = 0u;
                v91 = (v87->f64 + a11);
                v91[2] = 0u;
                v91[3] = 0u;
                *v91 = 0u;
                v91[1] = 0u;
                v92 = (v87->f64 + v493);
                v92[2] = 0u;
                v92[3] = 0u;
                *v92 = 0u;
                v92[1] = 0u;
                v93 = (v87->f64 + v492);
                v93[2] = 0u;
                v93[3] = 0u;
                *v93 = 0u;
                v93[1] = 0u;
              }
            }

            v119 = v85 + v90;
            f64 = v87[4].f64;
            v121 = v86[1];
            if (v121 == 255)
            {
              v130 = *(v119 + 16);
              v131 = *(v119 + 32);
              v132 = *(v119 + 48);
              v133 = *(v119 + 128);
              v134 = *(v119 + 144);
              v135 = *(v119 + 96);
              v136 = *(v119 + 192);
              v137 = *(v119 + 208);
              v138 = *(v119 + 240);
              v139 = *(v119 + 112);
              v140 = *(v119 + 64);
              v141 = *(v119 + 80);
              v142 = *(v119 + 160);
              v143 = *(v119 + 176);
              v144 = *(v119 + 224);
              *f64 = *v119;
              v87[5] = v130;
              v87[6] = v140;
              v87[7] = v141;
              v145 = (f64 + v89);
              v146 = (f64 + v37);
              *v146 = v131;
              v146[1] = v132;
              v146[2] = v135;
              v146[3] = v139;
              *v145 = v133;
              v145[1] = v134;
              v145[2] = v136;
              v145[3] = v137;
              v147 = (f64 + v89 + v37);
              v122 = 256;
              *v147 = v142;
              v147[1] = v143;
              v147[2] = v144;
              v147[3] = v138;
            }

            else if (v121 == 7)
            {
              v126 = vld1q_dup_f64(v119);
              v87[4] = v126;
              v87[5] = v126;
              v87[6] = v126;
              v87[7] = v126;
              v127 = (f64 + v37);
              *v127 = v126;
              v127[1] = v126;
              v127[2] = v126;
              v127[3] = v126;
              v128 = (f64 + v89);
              *v128 = v126;
              v128[1] = v126;
              v128[2] = v126;
              v128[3] = v126;
              v129 = (f64 + v492);
              *v129 = v126;
              v129[1] = v126;
              v122 = 8;
              v129[2] = v126;
              v129[3] = v126;
            }

            else if (v86[1])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(f64, v37, v119, v121);
            }

            else
            {
              v122 = 0;
              v87[6] = 0u;
              v87[7] = 0u;
              *f64 = 0u;
              v87[5] = 0u;
              v123 = (f64 + v37);
              v123[2] = 0u;
              v123[3] = 0u;
              *v123 = 0u;
              v123[1] = 0u;
              v124 = (f64 + v89);
              v124[2] = 0u;
              v124[3] = 0u;
              *v124 = 0u;
              v124[1] = 0u;
              v125 = (f64 + v492);
              v125[2] = 0u;
              v125[3] = 0u;
              *v125 = 0u;
              v125[1] = 0u;
            }

            v148 = v119 + v122;
            v149 = (v87 + v494);
            v150 = v86[2];
            if (v150 == 255)
            {
              v159 = *(v148 + 16);
              v160 = *(v148 + 32);
              v161 = *(v148 + 48);
              v162 = *(v148 + 128);
              v163 = *(v148 + 144);
              v164 = *(v148 + 96);
              v165 = *(v148 + 192);
              v166 = *(v148 + 208);
              v167 = *(v148 + 240);
              v168 = *(v148 + 112);
              v169 = *(v148 + 64);
              v170 = *(v148 + 80);
              v171 = *(v148 + 160);
              v172 = *(v148 + 176);
              v173 = *(v148 + 224);
              *v149 = *v148;
              v149[1] = v159;
              v149[2] = v169;
              v149[3] = v170;
              v174 = (v149->f64 + v89);
              v175 = (v149->f64 + v37);
              *v175 = v160;
              v175[1] = v161;
              v175[2] = v164;
              v175[3] = v168;
              *v174 = v162;
              v174[1] = v163;
              v174[2] = v165;
              v174[3] = v166;
              v176 = (v149->f64 + v89 + v37);
              v151 = 256;
              *v176 = v171;
              v176[1] = v172;
              v176[2] = v173;
              v176[3] = v167;
            }

            else if (v150 == 7)
            {
              v155 = vld1q_dup_f64(v148);
              *v149 = v155;
              v149[1] = v155;
              v149[2] = v155;
              v149[3] = v155;
              v156 = (v149 + v37);
              *v156 = v155;
              v156[1] = v155;
              v156[2] = v155;
              v156[3] = v155;
              v157 = (v149 + v89);
              *v157 = v155;
              v157[1] = v155;
              v157[2] = v155;
              v157[3] = v155;
              v158 = (v149 + v492);
              *v158 = v155;
              v158[1] = v155;
              v158[2] = v155;
              v158[3] = v155;
              v151 = 8;
            }

            else if (v86[2])
            {
              v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87 + v494, v37, v148, v150);
            }

            else
            {
              v151 = 0;
              v149[2] = 0u;
              v149[3] = 0u;
              *v149 = 0u;
              v149[1] = 0u;
              v152 = (v149->f64 + v37);
              v152[2] = 0u;
              v152[3] = 0u;
              *v152 = 0u;
              v152[1] = 0u;
              v153 = (v149->f64 + v89);
              v153[2] = 0u;
              v153[3] = 0u;
              *v153 = 0u;
              v153[1] = 0u;
              v154 = (v149->f64 + v492);
              v154[2] = 0u;
              v154[3] = 0u;
              *v154 = 0u;
              v154[1] = 0u;
            }

            v177 = v148 + v151;
            v178 = v149[4].f64;
            v179 = v86[3];
            if (v179 == 255)
            {
              v188 = *(v177 + 16);
              v189 = *(v177 + 32);
              v190 = *(v177 + 48);
              v191 = *(v177 + 128);
              v192 = *(v177 + 144);
              v193 = *(v177 + 96);
              v194 = *(v177 + 192);
              v195 = *(v177 + 208);
              v196 = *(v177 + 240);
              v197 = *(v177 + 112);
              v198 = *(v177 + 64);
              v199 = *(v177 + 80);
              v200 = *(v177 + 160);
              v201 = *(v177 + 176);
              v202 = *(v177 + 224);
              *v178 = *v177;
              v149[5] = v188;
              v149[6] = v198;
              v149[7] = v199;
              v203 = (v178 + v89);
              v204 = (v178 + v37);
              *v204 = v189;
              v204[1] = v190;
              v204[2] = v193;
              v204[3] = v197;
              *v203 = v191;
              v203[1] = v192;
              v203[2] = v194;
              v203[3] = v195;
              v205 = (v178 + v89 + v37);
              v180 = 256;
              *v205 = v200;
              v205[1] = v201;
              v205[2] = v202;
              v205[3] = v196;
            }

            else if (v179 == 7)
            {
              v184 = vld1q_dup_f64(v177);
              v149[4] = v184;
              v149[5] = v184;
              v149[6] = v184;
              v149[7] = v184;
              v185 = (v178 + v37);
              *v185 = v184;
              v185[1] = v184;
              v185[2] = v184;
              v185[3] = v184;
              v186 = (v178 + v89);
              *v186 = v184;
              v186[1] = v184;
              v186[2] = v184;
              v186[3] = v184;
              v187 = (v178 + v492);
              *v187 = v184;
              v187[1] = v184;
              v180 = 8;
              v187[2] = v184;
              v187[3] = v184;
            }

            else if (v86[3])
            {
              v180 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v178, v37, v177, v179);
            }

            else
            {
              v180 = 0;
              v149[6] = 0u;
              v149[7] = 0u;
              *v178 = 0u;
              v149[5] = 0u;
              v181 = (v178 + v37);
              v181[2] = 0u;
              v181[3] = 0u;
              *v181 = 0u;
              v181[1] = 0u;
              v182 = (v178 + v89);
              v182[2] = 0u;
              v182[3] = 0u;
              *v182 = 0u;
              v182[1] = 0u;
              v183 = (v178 + v492);
              v183[2] = 0u;
              v183[3] = 0u;
              *v183 = 0u;
              v183[1] = 0u;
            }

            v206 = v177 + v180;
            v207 = v87[8].f64;
            v208 = v86[4];
            if (v208 == 255)
            {
              v217 = *(v206 + 16);
              v218 = *(v206 + 32);
              v219 = *(v206 + 48);
              v220 = *(v206 + 128);
              v221 = *(v206 + 144);
              v222 = *(v206 + 96);
              v223 = *(v206 + 192);
              v224 = *(v206 + 208);
              v225 = *(v206 + 240);
              v226 = *(v206 + 112);
              v227 = *(v206 + 64);
              v228 = *(v206 + 80);
              v229 = *(v206 + 160);
              v230 = *(v206 + 176);
              v231 = *(v206 + 224);
              *v207 = *v206;
              v87[9] = v217;
              v87[10] = v227;
              v87[11] = v228;
              v232 = (v207 + v89);
              v233 = (v207 + v37);
              *v233 = v218;
              v233[1] = v219;
              v233[2] = v222;
              v233[3] = v226;
              *v232 = v220;
              v232[1] = v221;
              v232[2] = v223;
              v232[3] = v224;
              v234 = (v207 + v89 + v37);
              v209 = 256;
              *v234 = v229;
              v234[1] = v230;
              v234[2] = v231;
              v234[3] = v225;
            }

            else if (v208 == 7)
            {
              v213 = vld1q_dup_f64(v206);
              v87[8] = v213;
              v87[9] = v213;
              v87[10] = v213;
              v87[11] = v213;
              v214 = (v207 + v37);
              *v214 = v213;
              v214[1] = v213;
              v214[2] = v213;
              v214[3] = v213;
              v215 = (v207 + v89);
              *v215 = v213;
              v215[1] = v213;
              v215[2] = v213;
              v215[3] = v213;
              v216 = (v207 + v492);
              *v216 = v213;
              v216[1] = v213;
              v209 = 8;
              v216[2] = v213;
              v216[3] = v213;
            }

            else if (v86[4])
            {
              v209 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v207, v37, v206, v208);
            }

            else
            {
              v209 = 0;
              v87[10] = 0u;
              v87[11] = 0u;
              *v207 = 0u;
              v87[9] = 0u;
              v210 = (v207 + v37);
              v210[2] = 0u;
              v210[3] = 0u;
              *v210 = 0u;
              v210[1] = 0u;
              v211 = (v207 + v89);
              v211[2] = 0u;
              v211[3] = 0u;
              *v211 = 0u;
              v211[1] = 0u;
              v212 = (v207 + v492);
              v212[2] = 0u;
              v212[3] = 0u;
              *v212 = 0u;
              v212[1] = 0u;
            }

            v235 = v206 + v209;
            v236 = v87[12].f64;
            v237 = v86[5];
            if (v237 == 255)
            {
              v246 = *(v235 + 16);
              v247 = *(v235 + 32);
              v248 = *(v235 + 48);
              v249 = *(v235 + 128);
              v250 = *(v235 + 144);
              v251 = *(v235 + 96);
              v252 = *(v235 + 192);
              v253 = *(v235 + 208);
              v254 = *(v235 + 240);
              v255 = *(v235 + 112);
              v256 = *(v235 + 64);
              v257 = *(v235 + 80);
              v258 = *(v235 + 160);
              v259 = *(v235 + 176);
              v260 = *(v235 + 224);
              *v236 = *v235;
              v87[13] = v246;
              v87[14] = v256;
              v87[15] = v257;
              v261 = (v236 + v89);
              v262 = (v236 + v37);
              *v262 = v247;
              v262[1] = v248;
              v262[2] = v251;
              v262[3] = v255;
              *v261 = v249;
              v261[1] = v250;
              v261[2] = v252;
              v261[3] = v253;
              v263 = (v236 + v89 + v37);
              v238 = 256;
              *v263 = v258;
              v263[1] = v259;
              v263[2] = v260;
              v263[3] = v254;
            }

            else if (v237 == 7)
            {
              v242 = vld1q_dup_f64(v235);
              v87[12] = v242;
              v87[13] = v242;
              v87[14] = v242;
              v87[15] = v242;
              v243 = (v236 + v37);
              *v243 = v242;
              v243[1] = v242;
              v243[2] = v242;
              v243[3] = v242;
              v244 = (v236 + v89);
              *v244 = v242;
              v244[1] = v242;
              v244[2] = v242;
              v244[3] = v242;
              v245 = (v236 + v492);
              *v245 = v242;
              v245[1] = v242;
              v238 = 8;
              v245[2] = v242;
              v245[3] = v242;
            }

            else if (v86[5])
            {
              v238 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v236, v37, v235, v237);
            }

            else
            {
              v238 = 0;
              v87[14] = 0u;
              v87[15] = 0u;
              *v236 = 0u;
              v87[13] = 0u;
              v239 = (v236 + v37);
              v239[2] = 0u;
              v239[3] = 0u;
              *v239 = 0u;
              v239[1] = 0u;
              v240 = (v236 + v89);
              v240[2] = 0u;
              v240[3] = 0u;
              *v240 = 0u;
              v240[1] = 0u;
              v241 = (v236 + v492);
              v241[2] = 0u;
              v241[3] = 0u;
              *v241 = 0u;
              v241[1] = 0u;
            }

            v16 = v501;
            v264 = v235 + v238;
            v265 = v149[8].f64;
            v266 = v86[6];
            if (v266 == 255)
            {
              v275 = *(v264 + 16);
              v276 = *(v264 + 32);
              v277 = *(v264 + 48);
              v278 = *(v264 + 128);
              v279 = *(v264 + 144);
              v280 = *(v264 + 96);
              v281 = *(v264 + 192);
              v282 = *(v264 + 208);
              v283 = *(v264 + 240);
              v284 = *(v264 + 112);
              v285 = *(v264 + 64);
              v286 = *(v264 + 80);
              v287 = *(v264 + 160);
              v288 = *(v264 + 176);
              v289 = *(v264 + 224);
              *v265 = *v264;
              v149[9] = v275;
              v149[10] = v285;
              v149[11] = v286;
              v290 = (v265 + v89);
              v291 = (v265 + v37);
              *v291 = v276;
              v291[1] = v277;
              v291[2] = v280;
              v291[3] = v284;
              *v290 = v278;
              v290[1] = v279;
              v290[2] = v281;
              v290[3] = v282;
              v292 = (v265 + v89 + v37);
              v267 = 256;
              *v292 = v287;
              v292[1] = v288;
              v292[2] = v289;
              v292[3] = v283;
            }

            else if (v266 == 7)
            {
              v271 = vld1q_dup_f64(v264);
              v149[8] = v271;
              v149[9] = v271;
              v149[10] = v271;
              v149[11] = v271;
              v272 = (v265 + v37);
              *v272 = v271;
              v272[1] = v271;
              v272[2] = v271;
              v272[3] = v271;
              v273 = (v265 + v89);
              *v273 = v271;
              v273[1] = v271;
              v273[2] = v271;
              v273[3] = v271;
              v274 = (v265 + v492);
              *v274 = v271;
              v274[1] = v271;
              v267 = 8;
              v274[2] = v271;
              v274[3] = v271;
            }

            else if (v86[6])
            {
              v267 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v265, v37, v264, v266);
            }

            else
            {
              v267 = 0;
              v149[10] = 0u;
              v149[11] = 0u;
              *v265 = 0u;
              v149[9] = 0u;
              v268 = (v265 + v37);
              v268[2] = 0u;
              v268[3] = 0u;
              *v268 = 0u;
              v268[1] = 0u;
              v269 = (v265 + v89);
              v269[2] = 0u;
              v269[3] = 0u;
              *v269 = 0u;
              v269[1] = 0u;
              v270 = (v265 + v492);
              v270[2] = 0u;
              v270[3] = 0u;
              *v270 = 0u;
              v270[1] = 0u;
            }

            v293 = v264 + v267;
            v294 = v149[12].f64;
            v295 = v86[7];
            if (v295 == 255)
            {
              v299 = *(v293 + 16);
              v300 = *(v293 + 32);
              v301 = *(v293 + 48);
              v302 = *(v293 + 96);
              v303 = *(v293 + 112);
              v304 = *(v293 + 64);
              v305 = *(v293 + 80);
              v306 = *(v293 + 128);
              v307 = *(v293 + 144);
              v308 = *(v293 + 192);
              v309 = *(v293 + 208);
              v310 = *(v293 + 224);
              v311 = *(v293 + 240);
              v312 = *(v293 + 160);
              v313 = *(v293 + 176);
              *v294 = *v293;
              v149[13] = v299;
              v149[14] = v304;
              v149[15] = v305;
              v314 = (v294 + v89);
              v315 = (v294 + v37);
              *v315 = v300;
              v315[1] = v301;
              v315[2] = v302;
              v315[3] = v303;
              *v314 = v306;
              v314[1] = v307;
              v314[2] = v308;
              v314[3] = v309;
              v316 = (v294 + v89 + v37);
              *v316 = v312;
              v316[1] = v313;
              v316[2] = v310;
              v316[3] = v311;
            }

            else if (v295 == 7)
            {
              v48 = vld1q_dup_f64(v293);
              v149[12] = v48;
              v149[13] = v48;
              v149[14] = v48;
              v149[15] = v48;
              v49 = (v294 + v37);
              *v49 = v48;
              v49[1] = v48;
              v49[2] = v48;
              v49[3] = v48;
              v50 = (v294 + v89);
              *v50 = v48;
              v50[1] = v48;
              v50[2] = v48;
              v50[3] = v48;
              v51 = (v294 + v492);
              *v51 = v48;
              v51[1] = v48;
              v51[2] = v48;
              v51[3] = v48;
            }

            else if (v86[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v294, v37, v293, v295);
            }

            else
            {
              v149[14] = 0u;
              v149[15] = 0u;
              *v294 = 0u;
              v149[13] = 0u;
              v296 = (v294 + v37);
              v296[2] = 0u;
              v296[3] = 0u;
              *v296 = 0u;
              v296[1] = 0u;
              v297 = (v294 + v89);
              v297[2] = 0u;
              v297[3] = 0u;
              *v297 = 0u;
              v297[1] = 0u;
              v298 = (v294 + v492);
              v298[2] = 0u;
              v298[3] = 0u;
              *v298 = 0u;
              v298[1] = 0u;
            }

            v36 = v512;
          }

          v31 = v46++ == v502 >> 4;
        }

        while (!v31);
        v31 = v26++ == v491;
      }

      while (!v31);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
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

  v25 = v14 >> 3;
  v26 = v19 - 1;
  v27 = v17 - 1;
  v117 = v118 >> 3;
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
      v127 = v33 - 4;
      v121 = v32 - 3;
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
    if (v136 >> 4 <= v130 >> 4)
    {
      v139 = v26 >> 4;
      v123 = v26 & 0xF;
      v128 = (v26 & 0xF) + 1;
      v113 = v27 & 7;
      v114 = v27 >> 3;
      v122 = 4 * a11;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0xF00000007);
      v41 = vcgt_u32(v40, 0x1F0000000FLL);
      v120 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v40, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v41);
      v119 = v41;
      v129 = v23;
      do
      {
        v42 = (8 * v25) | 7;
        if (8 * v25 <= v137)
        {
          v43 = v137;
        }

        else
        {
          v43 = 8 * v25;
        }

        if (v118 < v42)
        {
          v42 = v118;
        }

        v126 = v43 - 8 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v113;
        v125 = v45;
        v47 = v45 != 8;
        v48 = v136 >> 4;
        v49 = v113 + 1;
        if (v25 != v114)
        {
          v49 = 8;
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
          v60 = 16 * v48;
          v61 = 16 * (v48 + 1) - 1;
          if (16 * v48 <= v50)
          {
            v62 = v50;
          }

          else
          {
            v62 = 16 * v48;
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
            v65 = 16;
          }

          v66 = 1;
          if (8 * v25 >= v137 && v60 >= v50)
          {
            v67 = v63 != v123;
            if (v48 != v139)
            {
              v67 = v64 != 16;
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

          v85 = v84 + 15;
          if (v85 < 0x20)
          {
            v86 = 0;
          }

          else
          {
            v86 = 32 - __clz(~(-1 << -__clz((v85 >> 4) - 1)));
          }

          v87 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v87 <= 1)
          {
            v87 = 1;
          }

          v88 = v87 + 7;
          if (v88 < 0x10)
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
            v89 = 32 - __clz(~(-1 << -__clz((v88 >> 3) - 1)));
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
          v99 = (v135 + 16 * (v62 - v50));
          if (!(v66 & 1 | (v65 < 0x10u)) && v138 > 7)
          {
            v51 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99, a11, v96, *v98)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 4, a11, v51, v98[1]);
            v53 = (v99 + v122);
            v54 = v52 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v99 + v122), a11, v52, v98[2]);
            v55 = v54 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v99 + v122 + 64), a11, v54, v98[3]);
            v56 = v55 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 8, a11, v55, v98[4]);
            v57 = v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 12, a11, v56, v98[5]);
            v58 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v53 + 8, a11, v57, v98[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v53 + 12, a11, v57 + v58, v98[7]);
            v50 = v136;
            v23 = v129;
LABEL_49:
            v59 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v100 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 256, v96, *v98)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 256, v100, v98[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 256, v101, v98[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 256, v102, v98[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 256, v103, v98[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 256, v104, v98[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v105, v98[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v105 + v106, v98[7]);
          v107 = v145;
          v50 = v136;
          v23 = v129;
          v59 = v48 + 1;
          if (v145)
          {
            v108 = 0;
            v109 = &v150[16 * v143 + v144];
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

                while (16 * v146 > v111);
                v107 = v145;
              }

              ++v108;
              v109 += 16;
            }

            while (v108 < v107);
          }

LABEL_50:
          v28 = v48 == v130 >> 4;
          v48 = v59;
        }

        while (!v28);
        v28 = v25++ == v117;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
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

  v25 = v14 >> 3;
  v26 = v19 - 1;
  v27 = v17 - 1;
  v117 = v118 >> 3;
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
      v127 = v33 - 4;
      v121 = v32 - 3;
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
    if (v136 >> 4 <= v130 >> 4)
    {
      v139 = v26 >> 4;
      v123 = v26 & 0xF;
      v128 = (v26 & 0xF) + 1;
      v113 = v27 & 7;
      v114 = v27 >> 3;
      v122 = 4 * a11;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0xF00000007);
      v41 = vcgt_u32(v40, 0x1F0000000FLL);
      v120 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v40, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v41);
      v119 = v41;
      v129 = v23;
      do
      {
        v42 = (8 * v25) | 7;
        if (8 * v25 <= v137)
        {
          v43 = v137;
        }

        else
        {
          v43 = 8 * v25;
        }

        if (v118 < v42)
        {
          v42 = v118;
        }

        v126 = v43 - 8 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v113;
        v125 = v45;
        v47 = v45 != 8;
        v48 = v136 >> 4;
        v49 = v113 + 1;
        if (v25 != v114)
        {
          v49 = 8;
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
          v60 = 16 * v48;
          v61 = 16 * (v48 + 1) - 1;
          if (16 * v48 <= v50)
          {
            v62 = v50;
          }

          else
          {
            v62 = 16 * v48;
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
            v65 = 16;
          }

          v66 = 1;
          if (8 * v25 >= v137 && v60 >= v50)
          {
            v67 = v63 != v123;
            if (v48 != v139)
            {
              v67 = v64 != 16;
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

          v85 = v84 + 15;
          if (v85 < 0x20)
          {
            v86 = 0;
          }

          else
          {
            v86 = 32 - __clz(~(-1 << -__clz((v85 >> 4) - 1)));
          }

          v87 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v87 <= 1)
          {
            v87 = 1;
          }

          v88 = v87 + 7;
          if (v88 < 0x10)
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
            v89 = 32 - __clz(~(-1 << -__clz((v88 >> 3) - 1)));
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
          v99 = (v135 + 16 * (v62 - v50));
          if (!(v66 & 1 | (v65 < 0x10u)) && v138 > 7)
          {
            v51 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99, a11, v96, *v98)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 4, a11, v51, v98[1]);
            v53 = (v99 + v122);
            v54 = v52 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v99 + v122), a11, v52, v98[2]);
            v55 = v54 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v99 + v122 + 64), a11, v54, v98[3]);
            v56 = v55 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 8, a11, v55, v98[4]);
            v57 = v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 12, a11, v56, v98[5]);
            v58 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v53 + 8, a11, v57, v98[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v53 + 12, a11, v57 + v58, v98[7]);
            v50 = v136;
            v23 = v129;
LABEL_49:
            v59 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v100 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 256, v96, *v98)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 256, v100, v98[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 256, v101, v98[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 256, v102, v98[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 256, v103, v98[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 256, v104, v98[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v105, v98[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v105 + v106, v98[7]);
          v107 = v145;
          v50 = v136;
          v23 = v129;
          v59 = v48 + 1;
          if (v145)
          {
            v108 = 0;
            v109 = &v150[16 * v143 + v144];
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

                while (16 * v146 > v111);
                v107 = v145;
              }

              ++v108;
              v109 += 16;
            }

            while (v108 < v107);
          }

LABEL_50:
          v28 = v48 == v130 >> 4;
          v48 = v59;
        }

        while (!v28);
        v28 = v25++ == v117;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v141 = v15;
  v17 = v16;
  v19 = v18;
  v136 = v20;
  v137 = v21;
  v123 = v22;
  v23 = v12;
  v162 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v140 = v14;
  v24 = v14 >> 3;
  v122 = v14 + a10 - 1;
  v124 = v122 >> 3;
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
  v135 = v31;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  if (v24 <= v124)
  {
    v133 = v141 + a9 - 1;
    if (v141 >> 4 <= v133 >> 4)
    {
      v32 = a11;
      v143 = (v19 - 1) >> 4;
      v119 = v19 - 1;
      v126 = (v19 - 1) & 0xF;
      v120 = (v17 - 1) & 7;
      v121 = (v17 - 1) >> 3;
      v125 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0xF00000007);
      v34 = vcgt_u32(v33, 0x1F0000000FLL);
      v131 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v34);
      v130 = v34;
      v118 = 8 * v26 * v25;
      v132 = v23;
      do
      {
        v35 = (8 * v24) | 7;
        if (8 * v24 <= v140)
        {
          v36 = v140;
        }

        else
        {
          v36 = 8 * v24;
        }

        if (v122 < v35)
        {
          v35 = v122;
        }

        v139 = 8 * v24;
        v129 = v36 - 8 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v120;
        v128 = v38;
        v40 = v38 != 8;
        v41 = v141 >> 4;
        v42 = v120 + 1;
        if (v24 != v121)
        {
          v42 = 8;
        }

        v142 = v42;
        if (v24 != v121)
        {
          v39 = v40;
        }

        v127 = v39;
        v138 = v123 + (v36 - v140) * v32;
        v43 = v141;
        do
        {
          v53 = 16 * v41;
          v54 = 16 * (v41 + 1) - 1;
          if (16 * v41 <= v43)
          {
            v55 = v43;
          }

          else
          {
            v55 = 16 * v41;
          }

          if (v133 < v54)
          {
            v54 = v141 + a9 - 1;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v41 == v143)
          {
            v58 = v126 + 1;
          }

          else
          {
            v58 = 16;
          }

          v59 = 1;
          if (v139 >= v140 && v53 >= v43)
          {
            v60 = v56 != v126;
            if (v41 != v143)
            {
              v60 = v57 != 16;
            }

            v59 = v60 || v127;
          }

          if (isLevelTiled)
          {
            v81 = 0;
            v82 = v118 >> (*(v23 + 57) != 0);
            v83 = 1;
            if (v82 <= 63)
            {
              if (v82 > 15)
              {
                if (v82 == 16)
                {
                  v83 = 0;
                  v84 = 0;
                  v85 = 64;
                  v81 = 128;
                }

                else
                {
                  v84 = 1;
                  v85 = 0;
                  if (v82 == 32)
                  {
                    v83 = 0;
                    v84 = 0;
                    v81 = 64;
                    v85 = 64;
                  }
                }
              }

              else if (v82 == 4)
              {
                v83 = 0;
                v84 = 0;
                v85 = 128;
                v81 = 256;
              }

              else
              {
                v84 = 1;
                v85 = 0;
                if (v82 == 8)
                {
                  v83 = 0;
                  v84 = 0;
                  v81 = 128;
                  v85 = 128;
                }
              }
            }

            else if (v82 <= 255)
            {
              if (v82 == 64)
              {
                v83 = 0;
                v84 = 0;
                v85 = 32;
                v81 = 64;
              }

              else
              {
                v84 = 1;
                v85 = 0;
                if (v82 == 128)
                {
                  v83 = 0;
                  v84 = 0;
                  v81 = 32;
                  v85 = 32;
                }
              }
            }

            else if (v82 == 256)
            {
              v83 = 0;
              v84 = 0;
              v85 = 16;
              v81 = 32;
            }

            else if (v82 == 512)
            {
              v84 = 0;
              v81 = 16;
              v85 = 16;
            }

            else
            {
              v84 = 1;
              v85 = 0;
              if (v82 == 1024)
              {
                v85 = 8;
                v81 = 16;
              }
            }

            v106 = (v81 >> 4) - 1;
            if (v83)
            {
              v107 = 0;
            }

            else
            {
              v107 = 32 - __clz(~(-1 << -__clz(v106)));
            }

            v108 = (v85 >> 3) - 1;
            if (v84)
            {
              v109 = 0;
              if (v107)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v109 = 32 - __clz(~(-1 << -__clz(v108)));
              if (v109 | v107)
              {
LABEL_114:
                v110 = 0;
                v111 = 0;
                v112 = v41 & v106;
                v113 = v24 & v108;
                v114 = v109 != 0;
                v115 = v107 != 0;
                v116 = 1;
                do
                {
                  --v109;
                  if (v114)
                  {
                    v111 |= (v116 & v113) << v110++;
                  }

                  else
                  {
                    v109 = 0;
                  }

                  --v107;
                  if (v115)
                  {
                    v111 |= (v116 & v112) << v110++;
                  }

                  else
                  {
                    v107 = 0;
                  }

                  v116 *= 2;
                  --v110;
                  v115 = v107 != 0;
                  v114 = v109 != 0;
                }

                while (v107 | v109);
                v117 = v111 << 11;
                goto LABEL_126;
              }
            }

            v117 = 0;
LABEL_126:
            v68 = v117 + ((v53 / v81 + v139 / v85 * ((v81 + v119) / v81)) << 14);
            goto LABEL_56;
          }

          if (v131)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v130.i8[0];
            v64 = v130.i8[4];
            v66 = v131.i32[0];
            v67 = v131.i32[1];
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

LABEL_56:
          v69 = *(v23 + 128) >> (*(v23 + 144) + a12);
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

          v72 = *(v23 + 132) >> (*(v23 + 144) + a12);
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
LABEL_81:
              v80 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
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
          v86 = (v136 + v68);
          if (v135)
          {
            v87 = v57;
            v88 = v32;
            v89 = v58;
            v90 = v59;
            memcpy(__dst, (v136 + v68), sizeof(__dst));
            v59 = v90;
            v58 = v89;
            v32 = v88;
            v53 = 16 * v41;
            v57 = v87;
            v86 = __dst;
          }

          v91 = (v137 + v80);
          v92 = (v138 + 16 * (v55 - v43));
          if (!(v59 & 1 | (v58 < 0x10u)) && v142 > 7)
          {
            v44 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v138 + 16 * (v55 - v43)), v32, v86, *v91)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 4, v32, v44, v91[1]);
            v46 = (v92 + v125);
            v47 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v125), v32, v45, v91[2]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v125 + 64), v32, v47, v91[3]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 8, v32, v48, v91[4]);
            v50 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 12, v32, v49, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v46 + 8, v32, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v46 + 12, v32, v50 + v51, v91[7]);
            v43 = v141;
            v23 = v132;
LABEL_29:
            v52 = v41 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v132;
          block[5] = v86;
          v151 = v58;
          v152 = v142;
          v147 = v129;
          v148 = v55 - v53;
          block[6] = v91;
          v145 = v138 + 16 * (v55 - v43);
          v146 = v32;
          v149 = v128;
          v150 = v57;
          if (v59)
          {
            dispatch_sync(*(*(v132 + 8) + 16552), block);
            v43 = v141;
            v23 = v132;
            goto LABEL_29;
          }

          v93 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 256, v86, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 256, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 256, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 256, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 256, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 256, v98 + v99, v91[7]);
          v100 = v149;
          v43 = v141;
          v23 = v132;
          v52 = v41 + 1;
          if (v149)
          {
            v101 = 0;
            v102 = &v154[16 * v147 + v148];
            v103 = v150;
            do
            {
              if (v103)
              {
                v104 = 0;
                v105 = v145 + v146 * v101;
                do
                {
                  *(v105 + v104) = v102->i8[v104];
                  ++v104;
                  v103 = v150;
                }

                while (16 * v150 > v104);
                v100 = v149;
              }

              ++v101;
              v102 += 16;
            }

            while (v101 < v100);
          }

LABEL_30:
          v28 = v41 == v133 >> 4;
          v41 = v52;
        }

        while (!v28);
        v28 = v24++ == v124;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v141 = v15;
  v17 = v16;
  v19 = v18;
  v136 = v20;
  v137 = v21;
  v123 = v22;
  v23 = v12;
  v162 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v140 = v14;
  v24 = v14 >> 3;
  v122 = v14 + a10 - 1;
  v124 = v122 >> 3;
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
  v135 = v31;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  if (v24 <= v124)
  {
    v133 = v141 + a9 - 1;
    if (v141 >> 4 <= v133 >> 4)
    {
      v32 = a11;
      v143 = (v19 - 1) >> 4;
      v119 = v19 - 1;
      v126 = (v19 - 1) & 0xF;
      v120 = (v17 - 1) & 7;
      v121 = (v17 - 1) >> 3;
      v125 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0xF00000007);
      v34 = vcgt_u32(v33, 0x1F0000000FLL);
      v131 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v34);
      v130 = v34;
      v118 = 8 * v26 * v25;
      v132 = v23;
      do
      {
        v35 = (8 * v24) | 7;
        if (8 * v24 <= v140)
        {
          v36 = v140;
        }

        else
        {
          v36 = 8 * v24;
        }

        if (v122 < v35)
        {
          v35 = v122;
        }

        v139 = 8 * v24;
        v129 = v36 - 8 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v120;
        v128 = v38;
        v40 = v38 != 8;
        v41 = v141 >> 4;
        v42 = v120 + 1;
        if (v24 != v121)
        {
          v42 = 8;
        }

        v142 = v42;
        if (v24 != v121)
        {
          v39 = v40;
        }

        v127 = v39;
        v138 = v123 + (v36 - v140) * v32;
        v43 = v141;
        do
        {
          v53 = 16 * v41;
          v54 = 16 * (v41 + 1) - 1;
          if (16 * v41 <= v43)
          {
            v55 = v43;
          }

          else
          {
            v55 = 16 * v41;
          }

          if (v133 < v54)
          {
            v54 = v141 + a9 - 1;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v41 == v143)
          {
            v58 = v126 + 1;
          }

          else
          {
            v58 = 16;
          }

          v59 = 1;
          if (v139 >= v140 && v53 >= v43)
          {
            v60 = v56 != v126;
            if (v41 != v143)
            {
              v60 = v57 != 16;
            }

            v59 = v60 || v127;
          }

          if (isLevelTiled)
          {
            v81 = 0;
            v82 = v118 >> (*(v23 + 57) != 0);
            v83 = 1;
            if (v82 <= 63)
            {
              if (v82 > 15)
              {
                if (v82 == 16)
                {
                  v83 = 0;
                  v84 = 0;
                  v85 = 64;
                  v81 = 128;
                }

                else
                {
                  v84 = 1;
                  v85 = 0;
                  if (v82 == 32)
                  {
                    v83 = 0;
                    v84 = 0;
                    v81 = 64;
                    v85 = 64;
                  }
                }
              }

              else if (v82 == 4)
              {
                v83 = 0;
                v84 = 0;
                v85 = 128;
                v81 = 256;
              }

              else
              {
                v84 = 1;
                v85 = 0;
                if (v82 == 8)
                {
                  v83 = 0;
                  v84 = 0;
                  v81 = 128;
                  v85 = 128;
                }
              }
            }

            else if (v82 <= 255)
            {
              if (v82 == 64)
              {
                v83 = 0;
                v84 = 0;
                v85 = 32;
                v81 = 64;
              }

              else
              {
                v84 = 1;
                v85 = 0;
                if (v82 == 128)
                {
                  v83 = 0;
                  v84 = 0;
                  v81 = 32;
                  v85 = 32;
                }
              }
            }

            else if (v82 == 256)
            {
              v83 = 0;
              v84 = 0;
              v85 = 16;
              v81 = 32;
            }

            else if (v82 == 512)
            {
              v84 = 0;
              v81 = 16;
              v85 = 16;
            }

            else
            {
              v84 = 1;
              v85 = 0;
              if (v82 == 1024)
              {
                v85 = 8;
                v81 = 16;
              }
            }

            v106 = (v81 >> 4) - 1;
            if (v83)
            {
              v107 = 0;
            }

            else
            {
              v107 = 32 - __clz(~(-1 << -__clz(v106)));
            }

            v108 = (v85 >> 3) - 1;
            if (v84)
            {
              v109 = 0;
              if (v107)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v109 = 32 - __clz(~(-1 << -__clz(v108)));
              if (v109 | v107)
              {
LABEL_114:
                v110 = 0;
                v111 = 0;
                v112 = v41 & v106;
                v113 = v24 & v108;
                v114 = v109 != 0;
                v115 = v107 != 0;
                v116 = 1;
                do
                {
                  --v109;
                  if (v114)
                  {
                    v111 |= (v116 & v113) << v110++;
                  }

                  else
                  {
                    v109 = 0;
                  }

                  --v107;
                  if (v115)
                  {
                    v111 |= (v116 & v112) << v110++;
                  }

                  else
                  {
                    v107 = 0;
                  }

                  v116 *= 2;
                  --v110;
                  v115 = v107 != 0;
                  v114 = v109 != 0;
                }

                while (v107 | v109);
                v117 = v111 << 11;
                goto LABEL_126;
              }
            }

            v117 = 0;
LABEL_126:
            v68 = v117 + ((v53 / v81 + v139 / v85 * ((v81 + v119) / v81)) << 14);
            goto LABEL_56;
          }

          if (v131)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v65 = v130.i8[0];
            v64 = v130.i8[4];
            v66 = v131.i32[0];
            v67 = v131.i32[1];
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

LABEL_56:
          v69 = *(v23 + 128) >> (*(v23 + 144) + a12);
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

          v72 = *(v23 + 132) >> (*(v23 + 144) + a12);
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
LABEL_81:
              v80 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 3) - 1)));
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
          v86 = (v136 + v68);
          if (v135)
          {
            v87 = v57;
            v88 = v32;
            v89 = v58;
            v90 = v59;
            memcpy(__dst, (v136 + v68), sizeof(__dst));
            v59 = v90;
            v58 = v89;
            v32 = v88;
            v53 = 16 * v41;
            v57 = v87;
            v86 = __dst;
          }

          v91 = (v137 + v80);
          v92 = (v138 + 16 * (v55 - v43));
          if (!(v59 & 1 | (v58 < 0x10u)) && v142 > 7)
          {
            v44 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v138 + 16 * (v55 - v43)), v32, v86, *v91)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 4, v32, v44, v91[1]);
            v46 = (v92 + v125);
            v47 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v125), v32, v45, v91[2]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v125 + 64), v32, v47, v91[3]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 8, v32, v48, v91[4]);
            v50 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 12, v32, v49, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v46 + 8, v32, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v46 + 12, v32, v50 + v51, v91[7]);
            v43 = v141;
            v23 = v132;
LABEL_29:
            v52 = v41 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v132;
          block[5] = v86;
          v151 = v58;
          v152 = v142;
          v147 = v129;
          v148 = v55 - v53;
          block[6] = v91;
          v145 = v138 + 16 * (v55 - v43);
          v146 = v32;
          v149 = v128;
          v150 = v57;
          if (v59)
          {
            dispatch_sync(*(*(v132 + 8) + 16552), block);
            v43 = v141;
            v23 = v132;
            goto LABEL_29;
          }

          v93 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 256, v86, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 256, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 256, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 256, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 256, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 256, v98 + v99, v91[7]);
          v100 = v149;
          v43 = v141;
          v23 = v132;
          v52 = v41 + 1;
          if (v149)
          {
            v101 = 0;
            v102 = &v154[16 * v147 + v148];
            v103 = v150;
            do
            {
              if (v103)
              {
                v104 = 0;
                v105 = v145 + v146 * v101;
                do
                {
                  *(v105 + v104) = v102->i8[v104];
                  ++v104;
                  v103 = v150;
                }

                while (16 * v150 > v104);
                v100 = v149;
              }

              ++v101;
              v102 += 16;
            }

            while (v101 < v100);
          }

LABEL_30:
          v28 = v41 == v133 >> 4;
          v41 = v52;
        }

        while (!v28);
        v28 = v24++ == v124;
      }

      while (!v28);
    }
  }
}