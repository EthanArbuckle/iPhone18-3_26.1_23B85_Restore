void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v461 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a1;
  v383 = a8;
  v18 = a8 >> 4;
  v362 = a8 + a10 - 1;
  v364 = v362 >> 4;
  v19 = *(*(v17 + 208) + 88);
  v20 = *(v17 + 112);
  v386 = v17;
  if (*(v17 + 168))
  {
    CacheMode = IOSurfaceGetCacheMode();
    v17 = v386;
    v22 = CacheMode & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v378 = v26;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v17, *(v17 + 144) + a12);
  v28 = v386;
  v377 = isLevelTiled;
  if (v18 <= v364)
  {
    v376 = a7 + a9 - 1;
    v361 = a7 >> 4;
    if (a7 >> 4 <= v376 >> 4)
    {
      v29 = a11;
      v385 = (a5 - 1) >> 4;
      v358 = a5 - 1;
      v369 = (a5 - 1) & 0xF;
      v359 = (a6 - 1) & 0xF;
      v360 = (a6 - 1) >> 4;
      v367 = 8 * a11;
      v368 = 4 * a11;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v31 = vcgt_u32(v30, 0x1F0000001FLL);
      v374 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v30, 4uLL))))))), v31);
      v373 = v31;
      v357 = 8 * v20 * v19;
      v375 = a7;
      v365 = 3 * a11;
      v366 = 2 * a11;
      do
      {
        v32 = (16 * v18) | 0xF;
        if (16 * v18 <= v383)
        {
          v33 = v383;
        }

        else
        {
          v33 = 16 * v18;
        }

        if (v362 < v32)
        {
          v32 = v362;
        }

        v382 = 16 * v18;
        v372 = v33 - 16 * v18;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v359;
        v371 = v35;
        v37 = v35 != 16;
        v38 = v361;
        v39 = v359 + 1;
        if (v18 != v360)
        {
          v39 = 16;
        }

        v384 = v39;
        if (v18 != v360)
        {
          v36 = v37;
        }

        v370 = v36;
        v381 = a2 + (v33 - v383) * v29;
        do
        {
          v40 = 16 * v38;
          v41 = 16 * (v38 + 1) - 1;
          if (16 * v38 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v38;
          }

          if (v376 < v41)
          {
            v41 = v376;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v38 == v385)
          {
            v45 = v369 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (v382 >= v383 && v40 >= a7)
          {
            v47 = v43 != v369;
            if (v38 != v385)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v370;
          }

          if (v377)
          {
            v68 = 0;
            v69 = v357 >> (*(v28 + 57) != 0);
            v70 = 1;
            if (v69 <= 63)
            {
              if (v69 > 15)
              {
                if (v69 == 16)
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 64;
                  v68 = 128;
                }

                else
                {
                  v71 = 1;
                  v72 = 0;
                  if (v69 == 32)
                  {
                    v70 = 0;
                    v71 = 0;
                    v68 = 64;
                    v72 = 64;
                  }
                }
              }

              else if (v69 == 4)
              {
                v70 = 0;
                v71 = 0;
                v72 = 128;
                v68 = 256;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 8)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 128;
                  v72 = 128;
                }
              }
            }

            else if (v69 <= 255)
            {
              if (v69 == 64)
              {
                v70 = 0;
                v71 = 0;
                v72 = 32;
                v68 = 64;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 128)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 32;
                  v72 = 32;
                }
              }
            }

            else if (v69 == 256)
            {
              v70 = 0;
              v72 = 16;
              v71 = 1;
              v68 = 32;
            }

            else if (v69 == 512)
            {
              v68 = 16;
              v71 = 1;
              v72 = 16;
            }

            else
            {
              v71 = 1;
              v72 = 0;
              if (v69 == 1024)
              {
                v72 = 8;
                v68 = 16;
              }
            }

            v347 = (v68 >> 4) - 1;
            if (v70)
            {
              v348 = 0;
              if (v71)
              {
                goto LABEL_235;
              }

LABEL_224:
              v349 = 32 - __clz(~(-1 << -__clz(((v72 + 15) >> 4) - 1)));
              if (v349 | v348)
              {
                goto LABEL_225;
              }

LABEL_236:
              v356 = 0;
            }

            else
            {
              v348 = 32 - __clz(~(-1 << -__clz(v347)));
              if ((v71 & 1) == 0)
              {
                goto LABEL_224;
              }

LABEL_235:
              v349 = 0;
              if (!v348)
              {
                goto LABEL_236;
              }

LABEL_225:
              v350 = 0;
              v351 = 0;
              v352 = v38 & v347;
              v353 = v348 != 0;
              v354 = v349 != 0;
              v355 = 1;
              do
              {
                --v348;
                if (v353)
                {
                  v351 |= (v355 & v352) << v350++;
                }

                else
                {
                  v348 = 0;
                }

                --v349;
                if (v354)
                {
                  v351 |= (v355 & v18 & ((v72 >> 4) - 1)) << v350++;
                }

                else
                {
                  v349 = 0;
                }

                v355 *= 2;
                --v350;
                v354 = v349 != 0;
                v353 = v348 != 0;
              }

              while (v349 | v348);
              v356 = v351 << 10;
            }

            v55 = v356 + ((v40 / v68 + v382 / v72 * ((v68 + v358) / v68)) << 14);
            goto LABEL_55;
          }

          if (v374)
          {
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v51 = v373.i8[4];
            v52 = v373.i8[0];
            v53 = v374.i32[1];
            v54 = v374.i32[0];
            do
            {
              --v53;
              if (v51)
              {
                v49 |= (v50 & v38) << v48++;
              }

              else
              {
                v53 = 0;
              }

              --v54;
              if (v52)
              {
                v49 |= (v50 & v18) << v48++;
              }

              else
              {
                v54 = 0;
              }

              v50 *= 2;
              --v48;
              v52 = v54 != 0;
              v51 = v53 != 0;
            }

            while (v54 | v53);
            v55 = v49 << 10;
          }

          else
          {
            v55 = 0;
          }

LABEL_55:
          v56 = *(v28 + 128) >> (*(v28 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 15;
          if (v57 < 0x20)
          {
            v58 = 0;
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
          }

          v59 = *(v28 + 132) >> (*(v28 + 144) + a12);
          if (v59 <= 1)
          {
            v59 = 1;
          }

          v60 = v59 + 15;
          if (v60 < 0x20)
          {
            v61 = 0;
            if (!v58)
            {
LABEL_80:
              v67 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 4) - 1)));
            if (!(v61 | v58))
            {
              goto LABEL_80;
            }
          }

          v62 = 0;
          v63 = 0;
          v64 = v58 != 0;
          v65 = v61 != 0;
          v66 = 1;
          do
          {
            --v58;
            if (v64)
            {
              v63 |= (v66 & v38) << v62++;
            }

            else
            {
              v58 = 0;
            }

            --v61;
            if (v65)
            {
              v63 |= (v66 & v18) << v62++;
            }

            else
            {
              v61 = 0;
            }

            v66 *= 2;
            --v62;
            v65 = v61 != 0;
            v64 = v58 != 0;
          }

          while (v61 | v58);
          v67 = 8 * v63;
LABEL_81:
          v73 = (a3 + v55);
          if (v378)
          {
            memcpy(__dst, v73, sizeof(__dst));
            v28 = v386;
            v73 = __dst;
          }

          v74 = (a4 + v67);
          v75 = v381 + 4 * (v42 - a7);
          if (!(v46 & 1 | (v45 < 0x10u)) && v384 > 0xF)
          {
            v76 = *v74;
            if (v76 == 127)
            {
              v88 = *v73;
              v89 = v73[1];
              v90 = v73[2];
              v91 = v73[3];
              v92 = v73[4];
              v93 = v73[5];
              v94 = v73[6];
              v95 = v73[7];
              v77 = 2 * a11;
              *v75 = vzip1q_s64(*v73, v89);
              *(v75 + 16) = vzip1q_s64(v92, v93);
              v96 = (v75 + v366);
              v29 = a11;
              v97 = (v75 + a11);
              *v97 = vzip2q_s64(v88, v89);
              v97[1] = vzip2q_s64(v92, v93);
              *v96 = vzip1q_s64(v90, v91);
              v96[1] = vzip1q_s64(v94, v95);
              v98 = (v75 + v366 + a11);
              *v98 = vzip2q_s64(v90, v91);
              v98[1] = vzip2q_s64(v94, v95);
              v78 = 128;
            }

            else
            {
              v29 = a11;
              v77 = 2 * a11;
              if (v76 == 3)
              {
                v84 = vld1q_dup_f32(v73->i32);
                *v75 = v84;
                *(v75 + 16) = v84;
                v85 = (v75 + a11);
                *v85 = v84;
                v85[1] = v84;
                v86 = (v75 + v366);
                *v86 = v84;
                v86[1] = v84;
                v87 = (v75 + v365);
                *v87 = v84;
                v87[1] = v84;
                v78 = 4;
              }

              else if (*v74)
              {
                v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75, a11, v73, v76);
              }

              else
              {
                v78 = 0;
                *v75 = 0u;
                *(v75 + 16) = 0u;
                v79 = (v75 + a11);
                *v79 = 0u;
                v79[1] = 0u;
                v80 = (v75 + v366);
                *v80 = 0u;
                v80[1] = 0u;
                v81 = (v75 + v365);
                *v81 = 0u;
                v81[1] = 0u;
              }
            }

            v99 = v73->i64 + v78;
            v100 = v75 + v368;
            v101 = v74[1];
            if (v101 == 127)
            {
              v110 = *v99;
              v111 = *(v99 + 16);
              v112 = *(v99 + 32);
              v113 = *(v99 + 48);
              v114 = *(v99 + 64);
              v115 = *(v99 + 80);
              v116 = *(v99 + 96);
              v117 = *(v99 + 112);
              *v100 = vzip1q_s64(*v99, v111);
              *(v100 + 16) = vzip1q_s64(v114, v115);
              v118 = (v100 + v77);
              v119 = (v100 + v29);
              *v119 = vzip2q_s64(v110, v111);
              v119[1] = vzip2q_s64(v114, v115);
              *v118 = vzip1q_s64(v112, v113);
              v118[1] = vzip1q_s64(v116, v117);
              v120 = (v100 + v77 + v29);
              *v120 = vzip2q_s64(v112, v113);
              v120[1] = vzip2q_s64(v116, v117);
              v102 = 128;
            }

            else if (v101 == 3)
            {
              v106 = vld1q_dup_f32(v99);
              *v100 = v106;
              *(v100 + 16) = v106;
              v107 = (v100 + v29);
              *v107 = v106;
              v107[1] = v106;
              v108 = (v100 + v77);
              *v108 = v106;
              v108[1] = v106;
              v109 = (v100 + v365);
              *v109 = v106;
              v109[1] = v106;
              v102 = 4;
            }

            else if (v74[1])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v75 + v368), v29, v99, v101);
            }

            else
            {
              v102 = 0;
              *v100 = 0u;
              *(v100 + 16) = 0u;
              v103 = (v100 + v29);
              *v103 = 0u;
              v103[1] = 0u;
              v104 = (v100 + v77);
              *v104 = 0u;
              v104[1] = 0u;
              v105 = (v100 + v365);
              *v105 = 0u;
              v105[1] = 0u;
            }

            v121 = v99 + v102;
            v122 = (v75 + 32);
            v123 = v74[2];
            if (v123 == 127)
            {
              v132 = *v121;
              v133 = *(v121 + 16);
              v134 = *(v121 + 32);
              v135 = *(v121 + 48);
              v136 = *(v121 + 64);
              v137 = *(v121 + 80);
              v138 = *(v121 + 96);
              v139 = *(v121 + 112);
              *v122 = vzip1q_s64(*v121, v133);
              *(v75 + 48) = vzip1q_s64(v136, v137);
              v140 = (v122 + v77);
              v141 = (v122 + v29);
              *v141 = vzip2q_s64(v132, v133);
              v141[1] = vzip2q_s64(v136, v137);
              *v140 = vzip1q_s64(v134, v135);
              v140[1] = vzip1q_s64(v138, v139);
              v142 = (v122 + v77 + v29);
              *v142 = vzip2q_s64(v134, v135);
              v142[1] = vzip2q_s64(v138, v139);
              v124 = 128;
            }

            else if (v123 == 3)
            {
              v128 = vld1q_dup_f32(v121);
              *(v75 + 32) = v128;
              *(v75 + 48) = v128;
              v129 = (v122 + v29);
              *v129 = v128;
              v129[1] = v128;
              v130 = (v122 + v77);
              *v130 = v128;
              v130[1] = v128;
              v131 = (v122 + v365);
              *v131 = v128;
              v131[1] = v128;
              v124 = 4;
            }

            else if (v74[2])
            {
              v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v122, v29, v121, v123);
            }

            else
            {
              v124 = 0;
              *v122 = 0u;
              *(v75 + 48) = 0u;
              v125 = (v122 + v29);
              *v125 = 0u;
              v125[1] = 0u;
              v126 = (v122 + v77);
              *v126 = 0u;
              v126[1] = 0u;
              v127 = (v122 + v365);
              *v127 = 0u;
              v127[1] = 0u;
            }

            v143 = v121 + v124;
            v144 = (v100 + 32);
            v145 = v74[3];
            if (v145 == 127)
            {
              v154 = *v143;
              v155 = *(v143 + 16);
              v156 = *(v143 + 32);
              v157 = *(v143 + 48);
              v158 = *(v143 + 64);
              v159 = *(v143 + 80);
              v160 = *(v143 + 96);
              v161 = *(v143 + 112);
              *v144 = vzip1q_s64(*v143, v155);
              *(v100 + 48) = vzip1q_s64(v158, v159);
              v162 = (v144 + v77);
              v163 = (v144 + v29);
              *v163 = vzip2q_s64(v154, v155);
              v163[1] = vzip2q_s64(v158, v159);
              *v162 = vzip1q_s64(v156, v157);
              v162[1] = vzip1q_s64(v160, v161);
              v164 = (v144 + v77 + v29);
              *v164 = vzip2q_s64(v156, v157);
              v164[1] = vzip2q_s64(v160, v161);
              v146 = 128;
            }

            else if (v145 == 3)
            {
              v150 = vld1q_dup_f32(v143);
              *(v100 + 32) = v150;
              *(v100 + 48) = v150;
              v151 = (v144 + v29);
              *v151 = v150;
              v151[1] = v150;
              v152 = (v144 + v77);
              *v152 = v150;
              v152[1] = v150;
              v153 = (v144 + v365);
              *v153 = v150;
              v153[1] = v150;
              v146 = 4;
            }

            else if (v74[3])
            {
              v146 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v144, v29, v143, v145);
            }

            else
            {
              v146 = 0;
              *v144 = 0u;
              *(v100 + 48) = 0u;
              v147 = (v144 + v29);
              *v147 = 0u;
              v147[1] = 0u;
              v148 = (v144 + v77);
              *v148 = 0u;
              v148[1] = 0u;
              v149 = (v144 + v365);
              *v149 = 0u;
              v149[1] = 0u;
            }

            v165 = v143 + v146;
            v166 = v75 + v367;
            v167 = v74[4];
            if (v167 == 127)
            {
              v176 = *v165;
              v177 = *(v165 + 16);
              v178 = *(v165 + 32);
              v179 = *(v165 + 48);
              v180 = *(v165 + 64);
              v181 = *(v165 + 80);
              v182 = *(v165 + 96);
              v183 = *(v165 + 112);
              *v166 = vzip1q_s64(*v165, v177);
              *(v166 + 16) = vzip1q_s64(v180, v181);
              v184 = (v166 + v77);
              v185 = (v166 + v29);
              *v185 = vzip2q_s64(v176, v177);
              v185[1] = vzip2q_s64(v180, v181);
              *v184 = vzip1q_s64(v178, v179);
              v184[1] = vzip1q_s64(v182, v183);
              v186 = (v166 + v77 + v29);
              *v186 = vzip2q_s64(v178, v179);
              v186[1] = vzip2q_s64(v182, v183);
              v168 = 128;
            }

            else if (v167 == 3)
            {
              v172 = vld1q_dup_f32(v165);
              *v166 = v172;
              *(v166 + 16) = v172;
              v173 = (v166 + v29);
              *v173 = v172;
              v173[1] = v172;
              v174 = (v166 + v77);
              *v174 = v172;
              v174[1] = v172;
              v175 = (v166 + v365);
              *v175 = v172;
              v175[1] = v172;
              v168 = 4;
            }

            else if (v74[4])
            {
              v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v75 + v367), v29, v165, v167);
            }

            else
            {
              v168 = 0;
              *v166 = 0u;
              *(v166 + 16) = 0u;
              v169 = (v166 + v29);
              *v169 = 0u;
              v169[1] = 0u;
              v170 = (v166 + v77);
              *v170 = 0u;
              v170[1] = 0u;
              v171 = (v166 + v365);
              *v171 = 0u;
              v171[1] = 0u;
            }

            v187 = v165 + v168;
            v188 = v75 + 12 * a11;
            v189 = v74[5];
            if (v189 == 127)
            {
              v198 = *v187;
              v199 = *(v187 + 16);
              v200 = *(v187 + 32);
              v201 = *(v187 + 48);
              v202 = *(v187 + 64);
              v203 = *(v187 + 80);
              v204 = *(v187 + 96);
              v205 = *(v187 + 112);
              *v188 = vzip1q_s64(*v187, v199);
              *(v188 + 16) = vzip1q_s64(v202, v203);
              v206 = (v188 + v77);
              v207 = (v188 + v29);
              *v207 = vzip2q_s64(v198, v199);
              v207[1] = vzip2q_s64(v202, v203);
              *v206 = vzip1q_s64(v200, v201);
              v206[1] = vzip1q_s64(v204, v205);
              v208 = (v188 + v77 + v29);
              *v208 = vzip2q_s64(v200, v201);
              v208[1] = vzip2q_s64(v204, v205);
              v190 = 128;
            }

            else if (v189 == 3)
            {
              v194 = vld1q_dup_f32(v187);
              *v188 = v194;
              *(v188 + 16) = v194;
              v195 = (v188 + v29);
              *v195 = v194;
              v195[1] = v194;
              v196 = (v188 + v77);
              *v196 = v194;
              v196[1] = v194;
              v197 = (v188 + v365);
              *v197 = v194;
              v197[1] = v194;
              v190 = 4;
            }

            else if (v74[5])
            {
              v190 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v188, v29, v187, v189);
            }

            else
            {
              v190 = 0;
              *v188 = 0u;
              *(v188 + 16) = 0u;
              v191 = (v188 + v29);
              *v191 = 0u;
              v191[1] = 0u;
              v192 = (v188 + v77);
              *v192 = 0u;
              v192[1] = 0u;
              v193 = (v188 + v365);
              *v193 = 0u;
              v193[1] = 0u;
            }

            v209 = v187 + v190;
            v210 = (v166 + 32);
            v211 = v74[6];
            if (v211 == 127)
            {
              v220 = *v209;
              v221 = *(v209 + 16);
              v222 = *(v209 + 32);
              v223 = *(v209 + 48);
              v224 = *(v209 + 64);
              v225 = *(v209 + 80);
              v226 = *(v209 + 96);
              v227 = *(v209 + 112);
              *v210 = vzip1q_s64(*v209, v221);
              *(v166 + 48) = vzip1q_s64(v224, v225);
              v228 = (v210 + v77);
              v229 = (v210 + v29);
              *v229 = vzip2q_s64(v220, v221);
              v229[1] = vzip2q_s64(v224, v225);
              *v228 = vzip1q_s64(v222, v223);
              v228[1] = vzip1q_s64(v226, v227);
              v230 = (v210 + v77 + v29);
              *v230 = vzip2q_s64(v222, v223);
              v230[1] = vzip2q_s64(v226, v227);
              v212 = 128;
            }

            else if (v211 == 3)
            {
              v216 = vld1q_dup_f32(v209);
              *(v166 + 32) = v216;
              *(v166 + 48) = v216;
              v217 = (v210 + v29);
              *v217 = v216;
              v217[1] = v216;
              v218 = (v210 + v77);
              *v218 = v216;
              v218[1] = v216;
              v219 = (v210 + v365);
              *v219 = v216;
              v219[1] = v216;
              v212 = 4;
            }

            else if (v74[6])
            {
              v212 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v210, v29, v209, v211);
            }

            else
            {
              v212 = 0;
              *v210 = 0u;
              *(v166 + 48) = 0u;
              v213 = (v210 + v29);
              *v213 = 0u;
              v213[1] = 0u;
              v214 = (v210 + v77);
              *v214 = 0u;
              v214[1] = 0u;
              v215 = (v210 + v365);
              *v215 = 0u;
              v215[1] = 0u;
            }

            v231 = v209 + v212;
            v232 = (v188 + 32);
            v233 = v74[7];
            if (v233 == 127)
            {
              v238 = *v231;
              v239 = *(v231 + 16);
              v240 = *(v231 + 32);
              v241 = *(v231 + 48);
              v242 = *(v231 + 64);
              v243 = *(v231 + 80);
              v244 = *(v231 + 96);
              v245 = *(v231 + 112);
              *v232 = vzip1q_s64(*v231, v239);
              *(v188 + 48) = vzip1q_s64(v242, v243);
              v246 = (v232 + v77);
              v247 = (v232 + v29);
              *v247 = vzip2q_s64(v238, v239);
              v247[1] = vzip2q_s64(v242, v243);
              *v246 = vzip1q_s64(v240, v241);
              v246[1] = vzip1q_s64(v244, v245);
              v248 = (v232 + v77 + v29);
              *v248 = vzip2q_s64(v240, v241);
              v248[1] = vzip2q_s64(v244, v245);
            }

            else if (v233 == 3)
            {
              v234 = vld1q_dup_f32(v231);
              *(v188 + 32) = v234;
              *(v188 + 48) = v234;
LABEL_144:
              v235 = (v232 + v29);
              *v235 = v234;
              v235[1] = v234;
              v236 = (v232 + v77);
              *v236 = v234;
              v236[1] = v234;
              v237 = (v232 + v365);
              *v237 = v234;
              v237[1] = v234;
            }

            else
            {
              if (!v74[7])
              {
                v234 = 0uLL;
                *v232 = 0u;
                *(v188 + 48) = 0u;
                goto LABEL_144;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v232, v29, v231, v233);
            }

            a7 = v375;
            v28 = v386;
            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v28;
          block[5] = v73;
          v394 = v45;
          v395 = v384;
          v390 = v372;
          v391 = v42 - v40;
          block[6] = v74;
          v388 = v75;
          v29 = a11;
          v389 = a11;
          v392 = v371;
          v393 = v44;
          if (v46)
          {
            dispatch_sync(*(*(v28 + 8) + 16552), block);
            v28 = v386;
            a7 = v375;
          }

          else
          {
            v82 = *v74;
            a7 = v375;
            if (v82 == 127)
            {
              v250 = *v73;
              v251 = v73[1];
              v252 = v73[2];
              v253 = v73[3];
              v254 = v73[4];
              v255 = v73[5];
              v256 = v73[6];
              v257 = v73[7];
              v397 = vzip1q_s64(*v73, v251);
              v398 = vzip1q_s64(v254, v255);
              v401 = vzip2q_s64(v250, v251);
              v402 = vzip2q_s64(v254, v255);
              v405 = vzip1q_s64(v252, v253);
              v406 = vzip1q_s64(v256, v257);
              v409 = vzip2q_s64(v252, v253);
              v410 = vzip2q_s64(v256, v257);
              v83 = 128;
            }

            else if (v82 == 3)
            {
              v249 = vld1q_dup_f32(v73->i32);
              v397 = v249;
              v398 = v249;
              v401 = v249;
              v402 = v249;
              v405 = v249;
              v406 = v249;
              v409 = v249;
              v410 = v249;
              v83 = 4;
            }

            else if (*v74)
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v397, 64, v73, v82);
            }

            else
            {
              v83 = 0;
              v398 = 0u;
              v397 = 0u;
              v401 = 0u;
              v402 = 0u;
              v405 = 0u;
              v406 = 0u;
              v409 = 0u;
              v410 = 0u;
            }

            v258 = v73->i64 + v83;
            v259 = v74[1];
            if (v259 == 127)
            {
              v262 = *v258;
              v263 = *(v258 + 16);
              v264 = *(v258 + 32);
              v265 = *(v258 + 48);
              v266 = *(v258 + 64);
              v267 = *(v258 + 80);
              v268 = *(v258 + 96);
              v269 = *(v258 + 112);
              v413 = vzip1q_s64(*v258, v263);
              v414 = vzip1q_s64(v266, v267);
              v417 = vzip2q_s64(v262, v263);
              v418 = vzip2q_s64(v266, v267);
              v421 = vzip1q_s64(v264, v265);
              v422 = vzip1q_s64(v268, v269);
              v425 = vzip2q_s64(v264, v265);
              v426 = vzip2q_s64(v268, v269);
              v260 = 128;
            }

            else if (v259 == 3)
            {
              v261 = vld1q_dup_f32(v258);
              v413 = v261;
              v414 = v261;
              v417 = v261;
              v418 = v261;
              v421 = v261;
              v422 = v261;
              v425 = v261;
              v426 = v261;
              v260 = 4;
            }

            else if (v74[1])
            {
              v260 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v413, 64, v258, v259);
            }

            else
            {
              v260 = 0;
              v413 = 0u;
              v414 = 0u;
              v417 = 0u;
              v418 = 0u;
              v421 = 0u;
              v422 = 0u;
              v425 = 0u;
              v426 = 0u;
            }

            v270 = v258 + v260;
            v271 = v74[2];
            if (v271 == 127)
            {
              v274 = *v270;
              v275 = *(v270 + 16);
              v276 = *(v270 + 32);
              v277 = *(v270 + 48);
              v278 = *(v270 + 64);
              v279 = *(v270 + 80);
              v280 = *(v270 + 96);
              v281 = *(v270 + 112);
              v399 = vzip1q_s64(*v270, v275);
              v400 = vzip1q_s64(v278, v279);
              v403 = vzip2q_s64(v274, v275);
              v404 = vzip2q_s64(v278, v279);
              v407 = vzip1q_s64(v276, v277);
              v408 = vzip1q_s64(v280, v281);
              v411 = vzip2q_s64(v276, v277);
              v412 = vzip2q_s64(v280, v281);
              v272 = 128;
            }

            else if (v271 == 3)
            {
              v273 = vld1q_dup_f32(v270);
              v399 = v273;
              v400 = v273;
              v403 = v273;
              v404 = v273;
              v407 = v273;
              v408 = v273;
              v411 = v273;
              v412 = v273;
              v272 = 4;
            }

            else if (v74[2])
            {
              v272 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v399, 64, v270, v271);
            }

            else
            {
              v272 = 0;
              v399 = 0u;
              v400 = 0u;
              v403 = 0u;
              v404 = 0u;
              v407 = 0u;
              v408 = 0u;
              v411 = 0u;
              v412 = 0u;
            }

            v282 = v270 + v272;
            v283 = v74[3];
            if (v283 == 127)
            {
              v286 = *v282;
              v287 = *(v282 + 16);
              v288 = *(v282 + 32);
              v289 = *(v282 + 48);
              v290 = *(v282 + 64);
              v291 = *(v282 + 80);
              v292 = *(v282 + 96);
              v293 = *(v282 + 112);
              v415 = vzip1q_s64(*v282, v287);
              v416 = vzip1q_s64(v290, v291);
              v419 = vzip2q_s64(v286, v287);
              v420 = vzip2q_s64(v290, v291);
              v423 = vzip1q_s64(v288, v289);
              v424 = vzip1q_s64(v292, v293);
              v427 = vzip2q_s64(v288, v289);
              v428 = vzip2q_s64(v292, v293);
              v284 = 128;
            }

            else if (v283 == 3)
            {
              v285 = vld1q_dup_f32(v282);
              v415 = v285;
              v416 = v285;
              v419 = v285;
              v420 = v285;
              v423 = v285;
              v424 = v285;
              v427 = v285;
              v428 = v285;
              v284 = 4;
            }

            else if (v74[3])
            {
              v284 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v415, 64, v282, v283);
            }

            else
            {
              v284 = 0;
              v415 = 0u;
              v416 = 0u;
              v419 = 0u;
              v420 = 0u;
              v423 = 0u;
              v424 = 0u;
              v427 = 0u;
              v428 = 0u;
            }

            v294 = v282 + v284;
            v295 = v74[4];
            if (v295 == 127)
            {
              v298 = *v294;
              v299 = *(v294 + 16);
              v300 = *(v294 + 32);
              v301 = *(v294 + 48);
              v302 = *(v294 + 64);
              v303 = *(v294 + 80);
              v304 = *(v294 + 96);
              v305 = *(v294 + 112);
              v429 = vzip1q_s64(*v294, v299);
              v430 = vzip1q_s64(v302, v303);
              v433 = vzip2q_s64(v298, v299);
              v434 = vzip2q_s64(v302, v303);
              v437 = vzip1q_s64(v300, v301);
              v438 = vzip1q_s64(v304, v305);
              v441 = vzip2q_s64(v300, v301);
              v442 = vzip2q_s64(v304, v305);
              v296 = 128;
            }

            else if (v295 == 3)
            {
              v297 = vld1q_dup_f32(v294);
              v429 = v297;
              v430 = v297;
              v433 = v297;
              v434 = v297;
              v437 = v297;
              v438 = v297;
              v441 = v297;
              v442 = v297;
              v296 = 4;
            }

            else if (v74[4])
            {
              v296 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v429, 64, v294, v295);
            }

            else
            {
              v296 = 0;
              v429 = 0u;
              v430 = 0u;
              v433 = 0u;
              v434 = 0u;
              v437 = 0u;
              v438 = 0u;
              v441 = 0u;
              v442 = 0u;
            }

            v306 = v294 + v296;
            v307 = v74[5];
            if (v307 == 127)
            {
              v310 = *v306;
              v311 = *(v306 + 16);
              v312 = *(v306 + 32);
              v313 = *(v306 + 48);
              v314 = *(v306 + 64);
              v315 = *(v306 + 80);
              v316 = *(v306 + 96);
              v317 = *(v306 + 112);
              v445 = vzip1q_s64(*v306, v311);
              v446 = vzip1q_s64(v314, v315);
              v449 = vzip2q_s64(v310, v311);
              v450 = vzip2q_s64(v314, v315);
              v453 = vzip1q_s64(v312, v313);
              v454 = vzip1q_s64(v316, v317);
              v457 = vzip2q_s64(v312, v313);
              v458 = vzip2q_s64(v316, v317);
              v308 = 128;
            }

            else if (v307 == 3)
            {
              v309 = vld1q_dup_f32(v306);
              v445 = v309;
              v446 = v309;
              v449 = v309;
              v450 = v309;
              v453 = v309;
              v454 = v309;
              v457 = v309;
              v458 = v309;
              v308 = 4;
            }

            else if (v74[5])
            {
              v308 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v445, 64, v306, v307);
            }

            else
            {
              v308 = 0;
              v445 = 0u;
              v446 = 0u;
              v449 = 0u;
              v450 = 0u;
              v453 = 0u;
              v454 = 0u;
              v457 = 0u;
              v458 = 0u;
            }

            v318 = v306 + v308;
            v319 = v74[6];
            if (v319 == 127)
            {
              v322 = *v318;
              v323 = *(v318 + 16);
              v324 = *(v318 + 32);
              v325 = *(v318 + 48);
              v326 = *(v318 + 64);
              v327 = *(v318 + 80);
              v328 = *(v318 + 96);
              v329 = *(v318 + 112);
              v431 = vzip1q_s64(*v318, v323);
              v432 = vzip1q_s64(v326, v327);
              v435 = vzip2q_s64(v322, v323);
              v436 = vzip2q_s64(v326, v327);
              v439 = vzip1q_s64(v324, v325);
              v440 = vzip1q_s64(v328, v329);
              v443 = vzip2q_s64(v324, v325);
              v444 = vzip2q_s64(v328, v329);
              v320 = 128;
            }

            else if (v319 == 3)
            {
              v321 = vld1q_dup_f32(v318);
              v431 = v321;
              v432 = v321;
              v435 = v321;
              v436 = v321;
              v439 = v321;
              v440 = v321;
              v443 = v321;
              v444 = v321;
              v320 = 4;
            }

            else if (v74[6])
            {
              v320 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v431, 64, v318, v319);
            }

            else
            {
              v320 = 0;
              v431 = 0u;
              v432 = 0u;
              v435 = 0u;
              v436 = 0u;
              v439 = 0u;
              v440 = 0u;
              v443 = 0u;
              v444 = 0u;
            }

            v330 = v318 + v320;
            v331 = v74[7];
            if (v331 == 127)
            {
              v333 = *v330;
              v334 = *(v330 + 16);
              v335 = *(v330 + 32);
              v336 = *(v330 + 48);
              v337 = *(v330 + 64);
              v338 = *(v330 + 80);
              v339 = *(v330 + 96);
              v340 = *(v330 + 112);
              v447 = vzip1q_s64(*v330, v334);
              v448 = vzip1q_s64(v337, v338);
              v451 = vzip2q_s64(v333, v334);
              v452 = vzip2q_s64(v337, v338);
              v455 = vzip1q_s64(v335, v336);
              v456 = vzip1q_s64(v339, v340);
              v459 = vzip2q_s64(v335, v336);
              v460 = vzip2q_s64(v339, v340);
            }

            else if (v331 == 3)
            {
              v332 = vld1q_dup_f32(v330);
              v447 = v332;
              v448 = v332;
              v451 = v332;
              v452 = v332;
              v455 = v332;
              v456 = v332;
              v459 = v332;
              v460 = v332;
            }

            else if (v74[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v447, 64, v330, v331);
            }

            else
            {
              v447 = 0u;
              v448 = 0u;
              v451 = 0u;
              v452 = 0u;
              v455 = 0u;
              v456 = 0u;
              v459 = 0u;
              v460 = 0u;
            }

            v341 = v392;
            v28 = v386;
            if (v392)
            {
              v342 = 0;
              v343 = &v397.i8[64 * v390 + 4 * v391];
              v344 = v393;
              do
              {
                if (v344)
                {
                  v345 = 0;
                  v346 = v388 + v389 * v342;
                  do
                  {
                    *(v346 + v345) = v343[v345];
                    ++v345;
                    v344 = v393;
                  }

                  while (4 * v393 > v345);
                  v341 = v392;
                }

                ++v342;
                v343 += 64;
              }

              while (v342 < v341);
            }
          }

LABEL_29:
          v23 = v38++ == v376 >> 4;
        }

        while (!v23);
        v23 = v18++ == v364;
      }

      while (!v23);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v461 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a1;
  v383 = a8;
  v18 = a8 >> 4;
  v362 = a8 + a10 - 1;
  v364 = v362 >> 4;
  v19 = *(*(v17 + 208) + 88);
  v20 = *(v17 + 112);
  v386 = v17;
  if (*(v17 + 168))
  {
    CacheMode = IOSurfaceGetCacheMode();
    v17 = v386;
    v22 = CacheMode & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v378 = v26;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v17, *(v17 + 144) + a12);
  v28 = v386;
  v377 = isLevelTiled;
  if (v18 <= v364)
  {
    v376 = a7 + a9 - 1;
    v361 = a7 >> 4;
    if (a7 >> 4 <= v376 >> 4)
    {
      v29 = a11;
      v385 = (a5 - 1) >> 4;
      v358 = a5 - 1;
      v369 = (a5 - 1) & 0xF;
      v359 = (a6 - 1) & 0xF;
      v360 = (a6 - 1) >> 4;
      v367 = 8 * a11;
      v368 = 4 * a11;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v31 = vcgt_u32(v30, 0x1F0000001FLL);
      v374 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v30, 4uLL))))))), v31);
      v373 = v31;
      v357 = 8 * v20 * v19;
      v375 = a7;
      v365 = 3 * a11;
      v366 = 2 * a11;
      do
      {
        v32 = (16 * v18) | 0xF;
        if (16 * v18 <= v383)
        {
          v33 = v383;
        }

        else
        {
          v33 = 16 * v18;
        }

        if (v362 < v32)
        {
          v32 = v362;
        }

        v382 = 16 * v18;
        v372 = v33 - 16 * v18;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v359;
        v371 = v35;
        v37 = v35 != 16;
        v38 = v361;
        v39 = v359 + 1;
        if (v18 != v360)
        {
          v39 = 16;
        }

        v384 = v39;
        if (v18 != v360)
        {
          v36 = v37;
        }

        v370 = v36;
        v381 = a2 + (v33 - v383) * v29;
        do
        {
          v40 = 16 * v38;
          v41 = 16 * (v38 + 1) - 1;
          if (16 * v38 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v38;
          }

          if (v376 < v41)
          {
            v41 = v376;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v38 == v385)
          {
            v45 = v369 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (v382 >= v383 && v40 >= a7)
          {
            v47 = v43 != v369;
            if (v38 != v385)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v370;
          }

          if (v377)
          {
            v68 = 0;
            v69 = v357 >> (*(v28 + 57) != 0);
            v70 = 1;
            if (v69 <= 63)
            {
              if (v69 > 15)
              {
                if (v69 == 16)
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 64;
                  v68 = 128;
                }

                else
                {
                  v71 = 1;
                  v72 = 0;
                  if (v69 == 32)
                  {
                    v70 = 0;
                    v71 = 0;
                    v68 = 64;
                    v72 = 64;
                  }
                }
              }

              else if (v69 == 4)
              {
                v70 = 0;
                v71 = 0;
                v72 = 128;
                v68 = 256;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 8)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 128;
                  v72 = 128;
                }
              }
            }

            else if (v69 <= 255)
            {
              if (v69 == 64)
              {
                v70 = 0;
                v71 = 0;
                v72 = 32;
                v68 = 64;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 128)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 32;
                  v72 = 32;
                }
              }
            }

            else if (v69 == 256)
            {
              v70 = 0;
              v72 = 16;
              v71 = 1;
              v68 = 32;
            }

            else if (v69 == 512)
            {
              v68 = 16;
              v71 = 1;
              v72 = 16;
            }

            else
            {
              v71 = 1;
              v72 = 0;
              if (v69 == 1024)
              {
                v72 = 8;
                v68 = 16;
              }
            }

            v347 = (v68 >> 4) - 1;
            if (v70)
            {
              v348 = 0;
              if (v71)
              {
                goto LABEL_235;
              }

LABEL_224:
              v349 = 32 - __clz(~(-1 << -__clz(((v72 + 15) >> 4) - 1)));
              if (v349 | v348)
              {
                goto LABEL_225;
              }

LABEL_236:
              v356 = 0;
            }

            else
            {
              v348 = 32 - __clz(~(-1 << -__clz(v347)));
              if ((v71 & 1) == 0)
              {
                goto LABEL_224;
              }

LABEL_235:
              v349 = 0;
              if (!v348)
              {
                goto LABEL_236;
              }

LABEL_225:
              v350 = 0;
              v351 = 0;
              v352 = v38 & v347;
              v353 = v348 != 0;
              v354 = v349 != 0;
              v355 = 1;
              do
              {
                --v348;
                if (v353)
                {
                  v351 |= (v355 & v352) << v350++;
                }

                else
                {
                  v348 = 0;
                }

                --v349;
                if (v354)
                {
                  v351 |= (v355 & v18 & ((v72 >> 4) - 1)) << v350++;
                }

                else
                {
                  v349 = 0;
                }

                v355 *= 2;
                --v350;
                v354 = v349 != 0;
                v353 = v348 != 0;
              }

              while (v349 | v348);
              v356 = v351 << 10;
            }

            v55 = v356 + ((v40 / v68 + v382 / v72 * ((v68 + v358) / v68)) << 14);
            goto LABEL_55;
          }

          if (v374)
          {
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v51 = v373.i8[4];
            v52 = v373.i8[0];
            v53 = v374.i32[1];
            v54 = v374.i32[0];
            do
            {
              --v53;
              if (v51)
              {
                v49 |= (v50 & v38) << v48++;
              }

              else
              {
                v53 = 0;
              }

              --v54;
              if (v52)
              {
                v49 |= (v50 & v18) << v48++;
              }

              else
              {
                v54 = 0;
              }

              v50 *= 2;
              --v48;
              v52 = v54 != 0;
              v51 = v53 != 0;
            }

            while (v54 | v53);
            v55 = v49 << 10;
          }

          else
          {
            v55 = 0;
          }

LABEL_55:
          v56 = *(v28 + 128) >> (*(v28 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 15;
          if (v57 < 0x20)
          {
            v58 = 0;
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
          }

          v59 = *(v28 + 132) >> (*(v28 + 144) + a12);
          if (v59 <= 1)
          {
            v59 = 1;
          }

          v60 = v59 + 15;
          if (v60 < 0x20)
          {
            v61 = 0;
            if (!v58)
            {
LABEL_80:
              v67 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 4) - 1)));
            if (!(v61 | v58))
            {
              goto LABEL_80;
            }
          }

          v62 = 0;
          v63 = 0;
          v64 = v58 != 0;
          v65 = v61 != 0;
          v66 = 1;
          do
          {
            --v58;
            if (v64)
            {
              v63 |= (v66 & v38) << v62++;
            }

            else
            {
              v58 = 0;
            }

            --v61;
            if (v65)
            {
              v63 |= (v66 & v18) << v62++;
            }

            else
            {
              v61 = 0;
            }

            v66 *= 2;
            --v62;
            v65 = v61 != 0;
            v64 = v58 != 0;
          }

          while (v61 | v58);
          v67 = 8 * v63;
LABEL_81:
          v73 = (a3 + v55);
          if (v378)
          {
            memcpy(__dst, v73, sizeof(__dst));
            v28 = v386;
            v73 = __dst;
          }

          v74 = (a4 + v67);
          v75 = v381 + 4 * (v42 - a7);
          if (!(v46 & 1 | (v45 < 0x10u)) && v384 > 0xF)
          {
            v76 = *v74;
            if (v76 == 127)
            {
              v88 = *v73;
              v89 = v73[1];
              v90 = v73[2];
              v91 = v73[3];
              v92 = v73[4];
              v93 = v73[5];
              v94 = v73[6];
              v95 = v73[7];
              v77 = 2 * a11;
              *v75 = vzip1q_s64(*v73, v89);
              *(v75 + 16) = vzip1q_s64(v92, v93);
              v96 = (v75 + v366);
              v29 = a11;
              v97 = (v75 + a11);
              *v97 = vzip2q_s64(v88, v89);
              v97[1] = vzip2q_s64(v92, v93);
              *v96 = vzip1q_s64(v90, v91);
              v96[1] = vzip1q_s64(v94, v95);
              v98 = (v75 + v366 + a11);
              *v98 = vzip2q_s64(v90, v91);
              v98[1] = vzip2q_s64(v94, v95);
              v78 = 128;
            }

            else
            {
              v29 = a11;
              v77 = 2 * a11;
              if (v76 == 3)
              {
                v84 = vld1q_dup_f32(v73->i32);
                *v75 = v84;
                *(v75 + 16) = v84;
                v85 = (v75 + a11);
                *v85 = v84;
                v85[1] = v84;
                v86 = (v75 + v366);
                *v86 = v84;
                v86[1] = v84;
                v87 = (v75 + v365);
                *v87 = v84;
                v87[1] = v84;
                v78 = 4;
              }

              else if (*v74)
              {
                v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75, a11, v73, v76);
              }

              else
              {
                v78 = 0;
                *v75 = 0u;
                *(v75 + 16) = 0u;
                v79 = (v75 + a11);
                *v79 = 0u;
                v79[1] = 0u;
                v80 = (v75 + v366);
                *v80 = 0u;
                v80[1] = 0u;
                v81 = (v75 + v365);
                *v81 = 0u;
                v81[1] = 0u;
              }
            }

            v99 = v73->i64 + v78;
            v100 = v75 + v368;
            v101 = v74[1];
            if (v101 == 127)
            {
              v110 = *v99;
              v111 = *(v99 + 16);
              v112 = *(v99 + 32);
              v113 = *(v99 + 48);
              v114 = *(v99 + 64);
              v115 = *(v99 + 80);
              v116 = *(v99 + 96);
              v117 = *(v99 + 112);
              *v100 = vzip1q_s64(*v99, v111);
              *(v100 + 16) = vzip1q_s64(v114, v115);
              v118 = (v100 + v77);
              v119 = (v100 + v29);
              *v119 = vzip2q_s64(v110, v111);
              v119[1] = vzip2q_s64(v114, v115);
              *v118 = vzip1q_s64(v112, v113);
              v118[1] = vzip1q_s64(v116, v117);
              v120 = (v100 + v77 + v29);
              *v120 = vzip2q_s64(v112, v113);
              v120[1] = vzip2q_s64(v116, v117);
              v102 = 128;
            }

            else if (v101 == 3)
            {
              v106 = vld1q_dup_f32(v99);
              *v100 = v106;
              *(v100 + 16) = v106;
              v107 = (v100 + v29);
              *v107 = v106;
              v107[1] = v106;
              v108 = (v100 + v77);
              *v108 = v106;
              v108[1] = v106;
              v109 = (v100 + v365);
              *v109 = v106;
              v109[1] = v106;
              v102 = 4;
            }

            else if (v74[1])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v75 + v368), v29, v99, v101);
            }

            else
            {
              v102 = 0;
              *v100 = 0u;
              *(v100 + 16) = 0u;
              v103 = (v100 + v29);
              *v103 = 0u;
              v103[1] = 0u;
              v104 = (v100 + v77);
              *v104 = 0u;
              v104[1] = 0u;
              v105 = (v100 + v365);
              *v105 = 0u;
              v105[1] = 0u;
            }

            v121 = v99 + v102;
            v122 = (v75 + 32);
            v123 = v74[2];
            if (v123 == 127)
            {
              v132 = *v121;
              v133 = *(v121 + 16);
              v134 = *(v121 + 32);
              v135 = *(v121 + 48);
              v136 = *(v121 + 64);
              v137 = *(v121 + 80);
              v138 = *(v121 + 96);
              v139 = *(v121 + 112);
              *v122 = vzip1q_s64(*v121, v133);
              *(v75 + 48) = vzip1q_s64(v136, v137);
              v140 = (v122 + v77);
              v141 = (v122 + v29);
              *v141 = vzip2q_s64(v132, v133);
              v141[1] = vzip2q_s64(v136, v137);
              *v140 = vzip1q_s64(v134, v135);
              v140[1] = vzip1q_s64(v138, v139);
              v142 = (v122 + v77 + v29);
              *v142 = vzip2q_s64(v134, v135);
              v142[1] = vzip2q_s64(v138, v139);
              v124 = 128;
            }

            else if (v123 == 3)
            {
              v128 = vld1q_dup_f32(v121);
              *(v75 + 32) = v128;
              *(v75 + 48) = v128;
              v129 = (v122 + v29);
              *v129 = v128;
              v129[1] = v128;
              v130 = (v122 + v77);
              *v130 = v128;
              v130[1] = v128;
              v131 = (v122 + v365);
              *v131 = v128;
              v131[1] = v128;
              v124 = 4;
            }

            else if (v74[2])
            {
              v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v122, v29, v121, v123);
            }

            else
            {
              v124 = 0;
              *v122 = 0u;
              *(v75 + 48) = 0u;
              v125 = (v122 + v29);
              *v125 = 0u;
              v125[1] = 0u;
              v126 = (v122 + v77);
              *v126 = 0u;
              v126[1] = 0u;
              v127 = (v122 + v365);
              *v127 = 0u;
              v127[1] = 0u;
            }

            v143 = v121 + v124;
            v144 = (v100 + 32);
            v145 = v74[3];
            if (v145 == 127)
            {
              v154 = *v143;
              v155 = *(v143 + 16);
              v156 = *(v143 + 32);
              v157 = *(v143 + 48);
              v158 = *(v143 + 64);
              v159 = *(v143 + 80);
              v160 = *(v143 + 96);
              v161 = *(v143 + 112);
              *v144 = vzip1q_s64(*v143, v155);
              *(v100 + 48) = vzip1q_s64(v158, v159);
              v162 = (v144 + v77);
              v163 = (v144 + v29);
              *v163 = vzip2q_s64(v154, v155);
              v163[1] = vzip2q_s64(v158, v159);
              *v162 = vzip1q_s64(v156, v157);
              v162[1] = vzip1q_s64(v160, v161);
              v164 = (v144 + v77 + v29);
              *v164 = vzip2q_s64(v156, v157);
              v164[1] = vzip2q_s64(v160, v161);
              v146 = 128;
            }

            else if (v145 == 3)
            {
              v150 = vld1q_dup_f32(v143);
              *(v100 + 32) = v150;
              *(v100 + 48) = v150;
              v151 = (v144 + v29);
              *v151 = v150;
              v151[1] = v150;
              v152 = (v144 + v77);
              *v152 = v150;
              v152[1] = v150;
              v153 = (v144 + v365);
              *v153 = v150;
              v153[1] = v150;
              v146 = 4;
            }

            else if (v74[3])
            {
              v146 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v144, v29, v143, v145);
            }

            else
            {
              v146 = 0;
              *v144 = 0u;
              *(v100 + 48) = 0u;
              v147 = (v144 + v29);
              *v147 = 0u;
              v147[1] = 0u;
              v148 = (v144 + v77);
              *v148 = 0u;
              v148[1] = 0u;
              v149 = (v144 + v365);
              *v149 = 0u;
              v149[1] = 0u;
            }

            v165 = v143 + v146;
            v166 = v75 + v367;
            v167 = v74[4];
            if (v167 == 127)
            {
              v176 = *v165;
              v177 = *(v165 + 16);
              v178 = *(v165 + 32);
              v179 = *(v165 + 48);
              v180 = *(v165 + 64);
              v181 = *(v165 + 80);
              v182 = *(v165 + 96);
              v183 = *(v165 + 112);
              *v166 = vzip1q_s64(*v165, v177);
              *(v166 + 16) = vzip1q_s64(v180, v181);
              v184 = (v166 + v77);
              v185 = (v166 + v29);
              *v185 = vzip2q_s64(v176, v177);
              v185[1] = vzip2q_s64(v180, v181);
              *v184 = vzip1q_s64(v178, v179);
              v184[1] = vzip1q_s64(v182, v183);
              v186 = (v166 + v77 + v29);
              *v186 = vzip2q_s64(v178, v179);
              v186[1] = vzip2q_s64(v182, v183);
              v168 = 128;
            }

            else if (v167 == 3)
            {
              v172 = vld1q_dup_f32(v165);
              *v166 = v172;
              *(v166 + 16) = v172;
              v173 = (v166 + v29);
              *v173 = v172;
              v173[1] = v172;
              v174 = (v166 + v77);
              *v174 = v172;
              v174[1] = v172;
              v175 = (v166 + v365);
              *v175 = v172;
              v175[1] = v172;
              v168 = 4;
            }

            else if (v74[4])
            {
              v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v75 + v367), v29, v165, v167);
            }

            else
            {
              v168 = 0;
              *v166 = 0u;
              *(v166 + 16) = 0u;
              v169 = (v166 + v29);
              *v169 = 0u;
              v169[1] = 0u;
              v170 = (v166 + v77);
              *v170 = 0u;
              v170[1] = 0u;
              v171 = (v166 + v365);
              *v171 = 0u;
              v171[1] = 0u;
            }

            v187 = v165 + v168;
            v188 = v75 + 12 * a11;
            v189 = v74[5];
            if (v189 == 127)
            {
              v198 = *v187;
              v199 = *(v187 + 16);
              v200 = *(v187 + 32);
              v201 = *(v187 + 48);
              v202 = *(v187 + 64);
              v203 = *(v187 + 80);
              v204 = *(v187 + 96);
              v205 = *(v187 + 112);
              *v188 = vzip1q_s64(*v187, v199);
              *(v188 + 16) = vzip1q_s64(v202, v203);
              v206 = (v188 + v77);
              v207 = (v188 + v29);
              *v207 = vzip2q_s64(v198, v199);
              v207[1] = vzip2q_s64(v202, v203);
              *v206 = vzip1q_s64(v200, v201);
              v206[1] = vzip1q_s64(v204, v205);
              v208 = (v188 + v77 + v29);
              *v208 = vzip2q_s64(v200, v201);
              v208[1] = vzip2q_s64(v204, v205);
              v190 = 128;
            }

            else if (v189 == 3)
            {
              v194 = vld1q_dup_f32(v187);
              *v188 = v194;
              *(v188 + 16) = v194;
              v195 = (v188 + v29);
              *v195 = v194;
              v195[1] = v194;
              v196 = (v188 + v77);
              *v196 = v194;
              v196[1] = v194;
              v197 = (v188 + v365);
              *v197 = v194;
              v197[1] = v194;
              v190 = 4;
            }

            else if (v74[5])
            {
              v190 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v188, v29, v187, v189);
            }

            else
            {
              v190 = 0;
              *v188 = 0u;
              *(v188 + 16) = 0u;
              v191 = (v188 + v29);
              *v191 = 0u;
              v191[1] = 0u;
              v192 = (v188 + v77);
              *v192 = 0u;
              v192[1] = 0u;
              v193 = (v188 + v365);
              *v193 = 0u;
              v193[1] = 0u;
            }

            v209 = v187 + v190;
            v210 = (v166 + 32);
            v211 = v74[6];
            if (v211 == 127)
            {
              v220 = *v209;
              v221 = *(v209 + 16);
              v222 = *(v209 + 32);
              v223 = *(v209 + 48);
              v224 = *(v209 + 64);
              v225 = *(v209 + 80);
              v226 = *(v209 + 96);
              v227 = *(v209 + 112);
              *v210 = vzip1q_s64(*v209, v221);
              *(v166 + 48) = vzip1q_s64(v224, v225);
              v228 = (v210 + v77);
              v229 = (v210 + v29);
              *v229 = vzip2q_s64(v220, v221);
              v229[1] = vzip2q_s64(v224, v225);
              *v228 = vzip1q_s64(v222, v223);
              v228[1] = vzip1q_s64(v226, v227);
              v230 = (v210 + v77 + v29);
              *v230 = vzip2q_s64(v222, v223);
              v230[1] = vzip2q_s64(v226, v227);
              v212 = 128;
            }

            else if (v211 == 3)
            {
              v216 = vld1q_dup_f32(v209);
              *(v166 + 32) = v216;
              *(v166 + 48) = v216;
              v217 = (v210 + v29);
              *v217 = v216;
              v217[1] = v216;
              v218 = (v210 + v77);
              *v218 = v216;
              v218[1] = v216;
              v219 = (v210 + v365);
              *v219 = v216;
              v219[1] = v216;
              v212 = 4;
            }

            else if (v74[6])
            {
              v212 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v210, v29, v209, v211);
            }

            else
            {
              v212 = 0;
              *v210 = 0u;
              *(v166 + 48) = 0u;
              v213 = (v210 + v29);
              *v213 = 0u;
              v213[1] = 0u;
              v214 = (v210 + v77);
              *v214 = 0u;
              v214[1] = 0u;
              v215 = (v210 + v365);
              *v215 = 0u;
              v215[1] = 0u;
            }

            v231 = v209 + v212;
            v232 = (v188 + 32);
            v233 = v74[7];
            if (v233 == 127)
            {
              v238 = *v231;
              v239 = *(v231 + 16);
              v240 = *(v231 + 32);
              v241 = *(v231 + 48);
              v242 = *(v231 + 64);
              v243 = *(v231 + 80);
              v244 = *(v231 + 96);
              v245 = *(v231 + 112);
              *v232 = vzip1q_s64(*v231, v239);
              *(v188 + 48) = vzip1q_s64(v242, v243);
              v246 = (v232 + v77);
              v247 = (v232 + v29);
              *v247 = vzip2q_s64(v238, v239);
              v247[1] = vzip2q_s64(v242, v243);
              *v246 = vzip1q_s64(v240, v241);
              v246[1] = vzip1q_s64(v244, v245);
              v248 = (v232 + v77 + v29);
              *v248 = vzip2q_s64(v240, v241);
              v248[1] = vzip2q_s64(v244, v245);
            }

            else if (v233 == 3)
            {
              v234 = vld1q_dup_f32(v231);
              *(v188 + 32) = v234;
              *(v188 + 48) = v234;
LABEL_144:
              v235 = (v232 + v29);
              *v235 = v234;
              v235[1] = v234;
              v236 = (v232 + v77);
              *v236 = v234;
              v236[1] = v234;
              v237 = (v232 + v365);
              *v237 = v234;
              v237[1] = v234;
            }

            else
            {
              if (!v74[7])
              {
                v234 = 0uLL;
                *v232 = 0u;
                *(v188 + 48) = 0u;
                goto LABEL_144;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v232, v29, v231, v233);
            }

            a7 = v375;
            v28 = v386;
            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v28;
          block[5] = v73;
          v394 = v45;
          v395 = v384;
          v390 = v372;
          v391 = v42 - v40;
          block[6] = v74;
          v388 = v75;
          v29 = a11;
          v389 = a11;
          v392 = v371;
          v393 = v44;
          if (v46)
          {
            dispatch_sync(*(*(v28 + 8) + 16552), block);
            v28 = v386;
            a7 = v375;
          }

          else
          {
            v82 = *v74;
            a7 = v375;
            if (v82 == 127)
            {
              v250 = *v73;
              v251 = v73[1];
              v252 = v73[2];
              v253 = v73[3];
              v254 = v73[4];
              v255 = v73[5];
              v256 = v73[6];
              v257 = v73[7];
              v397 = vzip1q_s64(*v73, v251);
              v398 = vzip1q_s64(v254, v255);
              v401 = vzip2q_s64(v250, v251);
              v402 = vzip2q_s64(v254, v255);
              v405 = vzip1q_s64(v252, v253);
              v406 = vzip1q_s64(v256, v257);
              v409 = vzip2q_s64(v252, v253);
              v410 = vzip2q_s64(v256, v257);
              v83 = 128;
            }

            else if (v82 == 3)
            {
              v249 = vld1q_dup_f32(v73->i32);
              v397 = v249;
              v398 = v249;
              v401 = v249;
              v402 = v249;
              v405 = v249;
              v406 = v249;
              v409 = v249;
              v410 = v249;
              v83 = 4;
            }

            else if (*v74)
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v397, 64, v73, v82);
            }

            else
            {
              v83 = 0;
              v398 = 0u;
              v397 = 0u;
              v401 = 0u;
              v402 = 0u;
              v405 = 0u;
              v406 = 0u;
              v409 = 0u;
              v410 = 0u;
            }

            v258 = v73->i64 + v83;
            v259 = v74[1];
            if (v259 == 127)
            {
              v262 = *v258;
              v263 = *(v258 + 16);
              v264 = *(v258 + 32);
              v265 = *(v258 + 48);
              v266 = *(v258 + 64);
              v267 = *(v258 + 80);
              v268 = *(v258 + 96);
              v269 = *(v258 + 112);
              v413 = vzip1q_s64(*v258, v263);
              v414 = vzip1q_s64(v266, v267);
              v417 = vzip2q_s64(v262, v263);
              v418 = vzip2q_s64(v266, v267);
              v421 = vzip1q_s64(v264, v265);
              v422 = vzip1q_s64(v268, v269);
              v425 = vzip2q_s64(v264, v265);
              v426 = vzip2q_s64(v268, v269);
              v260 = 128;
            }

            else if (v259 == 3)
            {
              v261 = vld1q_dup_f32(v258);
              v413 = v261;
              v414 = v261;
              v417 = v261;
              v418 = v261;
              v421 = v261;
              v422 = v261;
              v425 = v261;
              v426 = v261;
              v260 = 4;
            }

            else if (v74[1])
            {
              v260 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v413, 64, v258, v259);
            }

            else
            {
              v260 = 0;
              v413 = 0u;
              v414 = 0u;
              v417 = 0u;
              v418 = 0u;
              v421 = 0u;
              v422 = 0u;
              v425 = 0u;
              v426 = 0u;
            }

            v270 = v258 + v260;
            v271 = v74[2];
            if (v271 == 127)
            {
              v274 = *v270;
              v275 = *(v270 + 16);
              v276 = *(v270 + 32);
              v277 = *(v270 + 48);
              v278 = *(v270 + 64);
              v279 = *(v270 + 80);
              v280 = *(v270 + 96);
              v281 = *(v270 + 112);
              v399 = vzip1q_s64(*v270, v275);
              v400 = vzip1q_s64(v278, v279);
              v403 = vzip2q_s64(v274, v275);
              v404 = vzip2q_s64(v278, v279);
              v407 = vzip1q_s64(v276, v277);
              v408 = vzip1q_s64(v280, v281);
              v411 = vzip2q_s64(v276, v277);
              v412 = vzip2q_s64(v280, v281);
              v272 = 128;
            }

            else if (v271 == 3)
            {
              v273 = vld1q_dup_f32(v270);
              v399 = v273;
              v400 = v273;
              v403 = v273;
              v404 = v273;
              v407 = v273;
              v408 = v273;
              v411 = v273;
              v412 = v273;
              v272 = 4;
            }

            else if (v74[2])
            {
              v272 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v399, 64, v270, v271);
            }

            else
            {
              v272 = 0;
              v399 = 0u;
              v400 = 0u;
              v403 = 0u;
              v404 = 0u;
              v407 = 0u;
              v408 = 0u;
              v411 = 0u;
              v412 = 0u;
            }

            v282 = v270 + v272;
            v283 = v74[3];
            if (v283 == 127)
            {
              v286 = *v282;
              v287 = *(v282 + 16);
              v288 = *(v282 + 32);
              v289 = *(v282 + 48);
              v290 = *(v282 + 64);
              v291 = *(v282 + 80);
              v292 = *(v282 + 96);
              v293 = *(v282 + 112);
              v415 = vzip1q_s64(*v282, v287);
              v416 = vzip1q_s64(v290, v291);
              v419 = vzip2q_s64(v286, v287);
              v420 = vzip2q_s64(v290, v291);
              v423 = vzip1q_s64(v288, v289);
              v424 = vzip1q_s64(v292, v293);
              v427 = vzip2q_s64(v288, v289);
              v428 = vzip2q_s64(v292, v293);
              v284 = 128;
            }

            else if (v283 == 3)
            {
              v285 = vld1q_dup_f32(v282);
              v415 = v285;
              v416 = v285;
              v419 = v285;
              v420 = v285;
              v423 = v285;
              v424 = v285;
              v427 = v285;
              v428 = v285;
              v284 = 4;
            }

            else if (v74[3])
            {
              v284 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v415, 64, v282, v283);
            }

            else
            {
              v284 = 0;
              v415 = 0u;
              v416 = 0u;
              v419 = 0u;
              v420 = 0u;
              v423 = 0u;
              v424 = 0u;
              v427 = 0u;
              v428 = 0u;
            }

            v294 = v282 + v284;
            v295 = v74[4];
            if (v295 == 127)
            {
              v298 = *v294;
              v299 = *(v294 + 16);
              v300 = *(v294 + 32);
              v301 = *(v294 + 48);
              v302 = *(v294 + 64);
              v303 = *(v294 + 80);
              v304 = *(v294 + 96);
              v305 = *(v294 + 112);
              v429 = vzip1q_s64(*v294, v299);
              v430 = vzip1q_s64(v302, v303);
              v433 = vzip2q_s64(v298, v299);
              v434 = vzip2q_s64(v302, v303);
              v437 = vzip1q_s64(v300, v301);
              v438 = vzip1q_s64(v304, v305);
              v441 = vzip2q_s64(v300, v301);
              v442 = vzip2q_s64(v304, v305);
              v296 = 128;
            }

            else if (v295 == 3)
            {
              v297 = vld1q_dup_f32(v294);
              v429 = v297;
              v430 = v297;
              v433 = v297;
              v434 = v297;
              v437 = v297;
              v438 = v297;
              v441 = v297;
              v442 = v297;
              v296 = 4;
            }

            else if (v74[4])
            {
              v296 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v429, 64, v294, v295);
            }

            else
            {
              v296 = 0;
              v429 = 0u;
              v430 = 0u;
              v433 = 0u;
              v434 = 0u;
              v437 = 0u;
              v438 = 0u;
              v441 = 0u;
              v442 = 0u;
            }

            v306 = v294 + v296;
            v307 = v74[5];
            if (v307 == 127)
            {
              v310 = *v306;
              v311 = *(v306 + 16);
              v312 = *(v306 + 32);
              v313 = *(v306 + 48);
              v314 = *(v306 + 64);
              v315 = *(v306 + 80);
              v316 = *(v306 + 96);
              v317 = *(v306 + 112);
              v445 = vzip1q_s64(*v306, v311);
              v446 = vzip1q_s64(v314, v315);
              v449 = vzip2q_s64(v310, v311);
              v450 = vzip2q_s64(v314, v315);
              v453 = vzip1q_s64(v312, v313);
              v454 = vzip1q_s64(v316, v317);
              v457 = vzip2q_s64(v312, v313);
              v458 = vzip2q_s64(v316, v317);
              v308 = 128;
            }

            else if (v307 == 3)
            {
              v309 = vld1q_dup_f32(v306);
              v445 = v309;
              v446 = v309;
              v449 = v309;
              v450 = v309;
              v453 = v309;
              v454 = v309;
              v457 = v309;
              v458 = v309;
              v308 = 4;
            }

            else if (v74[5])
            {
              v308 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v445, 64, v306, v307);
            }

            else
            {
              v308 = 0;
              v445 = 0u;
              v446 = 0u;
              v449 = 0u;
              v450 = 0u;
              v453 = 0u;
              v454 = 0u;
              v457 = 0u;
              v458 = 0u;
            }

            v318 = v306 + v308;
            v319 = v74[6];
            if (v319 == 127)
            {
              v322 = *v318;
              v323 = *(v318 + 16);
              v324 = *(v318 + 32);
              v325 = *(v318 + 48);
              v326 = *(v318 + 64);
              v327 = *(v318 + 80);
              v328 = *(v318 + 96);
              v329 = *(v318 + 112);
              v431 = vzip1q_s64(*v318, v323);
              v432 = vzip1q_s64(v326, v327);
              v435 = vzip2q_s64(v322, v323);
              v436 = vzip2q_s64(v326, v327);
              v439 = vzip1q_s64(v324, v325);
              v440 = vzip1q_s64(v328, v329);
              v443 = vzip2q_s64(v324, v325);
              v444 = vzip2q_s64(v328, v329);
              v320 = 128;
            }

            else if (v319 == 3)
            {
              v321 = vld1q_dup_f32(v318);
              v431 = v321;
              v432 = v321;
              v435 = v321;
              v436 = v321;
              v439 = v321;
              v440 = v321;
              v443 = v321;
              v444 = v321;
              v320 = 4;
            }

            else if (v74[6])
            {
              v320 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v431, 64, v318, v319);
            }

            else
            {
              v320 = 0;
              v431 = 0u;
              v432 = 0u;
              v435 = 0u;
              v436 = 0u;
              v439 = 0u;
              v440 = 0u;
              v443 = 0u;
              v444 = 0u;
            }

            v330 = v318 + v320;
            v331 = v74[7];
            if (v331 == 127)
            {
              v333 = *v330;
              v334 = *(v330 + 16);
              v335 = *(v330 + 32);
              v336 = *(v330 + 48);
              v337 = *(v330 + 64);
              v338 = *(v330 + 80);
              v339 = *(v330 + 96);
              v340 = *(v330 + 112);
              v447 = vzip1q_s64(*v330, v334);
              v448 = vzip1q_s64(v337, v338);
              v451 = vzip2q_s64(v333, v334);
              v452 = vzip2q_s64(v337, v338);
              v455 = vzip1q_s64(v335, v336);
              v456 = vzip1q_s64(v339, v340);
              v459 = vzip2q_s64(v335, v336);
              v460 = vzip2q_s64(v339, v340);
            }

            else if (v331 == 3)
            {
              v332 = vld1q_dup_f32(v330);
              v447 = v332;
              v448 = v332;
              v451 = v332;
              v452 = v332;
              v455 = v332;
              v456 = v332;
              v459 = v332;
              v460 = v332;
            }

            else if (v74[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v447, 64, v330, v331);
            }

            else
            {
              v447 = 0u;
              v448 = 0u;
              v451 = 0u;
              v452 = 0u;
              v455 = 0u;
              v456 = 0u;
              v459 = 0u;
              v460 = 0u;
            }

            v341 = v392;
            v28 = v386;
            if (v392)
            {
              v342 = 0;
              v343 = &v397.i8[64 * v390 + 4 * v391];
              v344 = v393;
              do
              {
                if (v344)
                {
                  v345 = 0;
                  v346 = v388 + v389 * v342;
                  do
                  {
                    *(v346 + v345) = v343[v345];
                    ++v345;
                    v344 = v393;
                  }

                  while (4 * v393 > v345);
                  v341 = v392;
                }

                ++v342;
                v343 += 64;
              }

              while (v342 < v341);
            }
          }

LABEL_29:
          v23 = v38++ == v376 >> 4;
        }

        while (!v23);
        v23 = v18++ == v364;
      }

      while (!v23);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v138 = v15;
  v17 = v16;
  v19 = v18;
  v135 = v20;
  v136 = v21;
  v117 = v22;
  v23 = v12;
  v160 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v139 = v14;
  v119 = v14 + a10 - 1;
  if (*(v23 + 168))
  {
    v24 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v24 = 0;
  }

  v25 = v14 >> 4;
  v26 = v19 - 1;
  v27 = v17 - 1;
  v118 = v119 >> 4;
  v28 = (v24 & 0xD00) == 0 || v24 == 768;
  v29 = v24 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v134 = v31;
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
      v133 = 0;
LABEL_32:
      v129 = v33 - 4;
      v122 = v32 - 4;
      v39 = -1 << *(*(v23 + 208) + 48);
      v116 = (((~v39 + v19) & v39) + ~(-1 << v33)) >> v33;
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

    v133 = v38 >= v32;
    goto LABEL_32;
  }

  v133 = 0;
  v116 = 0;
  v122 = 0;
  v129 = 0;
LABEL_33:
  if (v25 <= v118)
  {
    v132 = v138 + a9 - 1;
    if (v138 >> 4 <= v132 >> 4)
    {
      v141 = v26 >> 4;
      v125 = v26 & 0xF;
      v130 = (v26 & 0xF) + 1;
      v114 = v27 & 0xF;
      v115 = v27 >> 4;
      v123 = 8 * a11;
      v124 = 4 * a11;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0xF0000000FLL);
      v41 = vcgt_u32(v40, 0x1F0000001FLL);
      v121 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v40, 4uLL))))))), v41);
      v120 = v41;
      v131 = v23;
      do
      {
        v42 = (16 * v25) | 0xF;
        if (16 * v25 <= v139)
        {
          v43 = v139;
        }

        else
        {
          v43 = 16 * v25;
        }

        if (v119 < v42)
        {
          v42 = v119;
        }

        v128 = v43 - 16 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v114;
        v127 = v45;
        v47 = v45 != 16;
        v48 = v138 >> 4;
        v49 = v114 + 1;
        if (v25 != v115)
        {
          v49 = 16;
        }

        v140 = v49;
        if (v25 != v115)
        {
          v46 = v47;
        }

        v126 = v46;
        v137 = v117 + (v43 - v139) * a11;
        v50 = v138;
        do
        {
          v61 = 16 * v48;
          v62 = 16 * (v48 + 1) - 1;
          if (16 * v48 <= v50)
          {
            v63 = v50;
          }

          else
          {
            v63 = 16 * v48;
          }

          if (v132 < v62)
          {
            v62 = v138 + a9 - 1;
          }

          v64 = v62 - v63;
          v65 = v64 + 1;
          if (v48 == v141)
          {
            v66 = v130;
          }

          else
          {
            v66 = 16;
          }

          v67 = 1;
          if (16 * v25 >= v139 && v61 >= v50)
          {
            v68 = v64 != v125;
            if (v48 != v141)
            {
              v68 = v65 != 16;
            }

            v67 = v68 || v126;
          }

          if (v133)
          {
            if (v129 | v122)
            {
              v69 = 0;
              v70 = 0;
              v71 = v122 != 0;
              v72 = 1;
              v74 = v129 != 0;
              v73 = v122;
              v75 = v129;
              do
              {
                --v75;
                if (v74)
                {
                  v70 |= (v48 & ~(-1 << v129) & v72) << v69++;
                }

                else
                {
                  v75 = 0;
                }

                --v73;
                if (v71)
                {
                  v70 |= (v25 & ~(-1 << v122) & v72) << v69++;
                }

                else
                {
                  v73 = 0;
                }

                v72 *= 2;
                --v69;
                v71 = v73 != 0;
                v74 = v75 != 0;
              }

              while (v73 | v75);
              v76 = v70 << 11;
            }

            else
            {
              v76 = 0;
            }

            v84 = v76 + *(v23 + 336) * ((v48 >> v129) + (v25 >> v122) * v116);
          }

          else if (v121)
          {
            v77 = 0;
            v78 = 0;
            v79 = 1;
            v80 = v120.i8[0];
            v81 = v120.i8[4];
            v83 = v121.i32[0];
            v82 = v121.i32[1];
            do
            {
              --v82;
              if (v81)
              {
                v78 |= (v79 & v48) << v77++;
              }

              else
              {
                v82 = 0;
              }

              --v83;
              if (v80)
              {
                v78 |= (v79 & v25) << v77++;
              }

              else
              {
                v83 = 0;
              }

              v79 *= 2;
              --v77;
              v80 = v83 != 0;
              v81 = v82 != 0;
            }

            while (v83 | v82);
            v84 = v78 << 11;
          }

          else
          {
            v84 = 0;
          }

          v85 = *(v23 + 128) >> (*(v23 + 144) + a12);
          if (v85 <= 1)
          {
            v85 = 1;
          }

          v86 = v85 + 15;
          if (v86 < 0x20)
          {
            v87 = 0;
          }

          else
          {
            v87 = 32 - __clz(~(-1 << -__clz((v86 >> 4) - 1)));
          }

          v88 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v88 <= 1)
          {
            v88 = 1;
          }

          v89 = v88 + 15;
          if (v89 < 0x20)
          {
            v90 = 0;
            if (!v87)
            {
LABEL_107:
              v96 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v90 = 32 - __clz(~(-1 << -__clz((v89 >> 4) - 1)));
            if (!(v90 | v87))
            {
              goto LABEL_107;
            }
          }

          v91 = 0;
          v92 = 0;
          v93 = v87 != 0;
          v94 = v90 != 0;
          v95 = 1;
          do
          {
            --v87;
            if (v93)
            {
              v92 |= (v95 & v48) << v91++;
            }

            else
            {
              v87 = 0;
            }

            --v90;
            if (v94)
            {
              v92 |= (v95 & v25) << v91++;
            }

            else
            {
              v90 = 0;
            }

            v95 *= 2;
            --v91;
            v94 = v90 != 0;
            v93 = v87 != 0;
          }

          while (v90 | v87);
          v96 = 8 * v92;
LABEL_108:
          v97 = (v135 + v84);
          if (v134)
          {
            v98 = v66;
            memcpy(__dst, (v135 + v84), sizeof(__dst));
            v66 = v98;
            v97 = __dst;
          }

          v99 = (v136 + v96);
          v100 = (v137 + 8 * (v63 - v50));
          if (!(v67 & 1 | (v66 < 0x10u)) && v140 > 0xF)
          {
            v51 = &v97[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v100, a11, v97, *v99)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v124), a11, v51, v99[1]);
            v53 = v52 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v100 + 4, a11, v52, v99[2]);
            v54 = v53 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v124 + 64), a11, v53, v99[3]);
            v55 = (v100 + v123);
            v56 = v54 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v123), a11, v54, v99[4]);
            v57 = (v100 + 12 * a11);
            v58 = v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v57, a11, v56, v99[5]);
            v59 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v55 + 4, a11, v58, v99[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v57 + 4, a11, v58 + v59, v99[7]);
            v50 = v138;
            v23 = v131;
LABEL_49:
            v60 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v131;
          block[5] = v97;
          v149 = v66;
          v150 = v140;
          v145 = v128;
          v146 = v63 - v61;
          block[6] = v99;
          v143 = v100;
          v144 = a11;
          v147 = v127;
          v148 = v65;
          if (v67)
          {
            dispatch_sync(*(*(v131 + 8) + 16552), block);
            v50 = v138;
            v23 = v131;
            goto LABEL_49;
          }

          v101 = &v97[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 128, v97, *v99)];
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 128, v101, v99[1]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 128, v102, v99[2]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 128, v103, v99[3]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 128, v104, v99[4]);
          v106 = v105 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 128, v105, v99[5]);
          v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 128, v106, v99[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 128, v106 + v107, v99[7]);
          v108 = v147;
          v50 = v138;
          v23 = v131;
          v60 = v48 + 1;
          if (v147)
          {
            v109 = 0;
            v110 = &v152[8 * v145].f64[v146];
            v111 = v148;
            do
            {
              if (v111)
              {
                v112 = 0;
                v113 = v143 + v144 * v109;
                do
                {
                  v113[v112] = v110[v112];
                  ++v112;
                  v111 = v148;
                }

                while (8 * v148 > v112);
                v108 = v147;
              }

              ++v109;
              v110 += 128;
            }

            while (v109 < v108);
          }

LABEL_50:
          v28 = v48 == v132 >> 4;
          v48 = v60;
        }

        while (!v28);
        v28 = v25++ == v118;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v138 = v15;
  v17 = v16;
  v19 = v18;
  v135 = v20;
  v136 = v21;
  v117 = v22;
  v23 = v12;
  v160 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v139 = v14;
  v119 = v14 + a10 - 1;
  if (*(v23 + 168))
  {
    v24 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v24 = 0;
  }

  v25 = v14 >> 4;
  v26 = v19 - 1;
  v27 = v17 - 1;
  v118 = v119 >> 4;
  v28 = (v24 & 0xD00) == 0 || v24 == 768;
  v29 = v24 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v134 = v31;
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
      v133 = 0;
LABEL_32:
      v129 = v33 - 4;
      v122 = v32 - 4;
      v39 = -1 << *(*(v23 + 208) + 48);
      v116 = (((~v39 + v19) & v39) + ~(-1 << v33)) >> v33;
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

    v133 = v38 >= v32;
    goto LABEL_32;
  }

  v133 = 0;
  v116 = 0;
  v122 = 0;
  v129 = 0;
LABEL_33:
  if (v25 <= v118)
  {
    v132 = v138 + a9 - 1;
    if (v138 >> 4 <= v132 >> 4)
    {
      v141 = v26 >> 4;
      v125 = v26 & 0xF;
      v130 = (v26 & 0xF) + 1;
      v114 = v27 & 0xF;
      v115 = v27 >> 4;
      v123 = 8 * a11;
      v124 = 4 * a11;
      v40 = vadd_s32(__PAIR64__(v19, v17), 0xF0000000FLL);
      v41 = vcgt_u32(v40, 0x1F0000001FLL);
      v121 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v40, 4uLL))))))), v41);
      v120 = v41;
      v131 = v23;
      do
      {
        v42 = (16 * v25) | 0xF;
        if (16 * v25 <= v139)
        {
          v43 = v139;
        }

        else
        {
          v43 = 16 * v25;
        }

        if (v119 < v42)
        {
          v42 = v119;
        }

        v128 = v43 - 16 * v25;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v114;
        v127 = v45;
        v47 = v45 != 16;
        v48 = v138 >> 4;
        v49 = v114 + 1;
        if (v25 != v115)
        {
          v49 = 16;
        }

        v140 = v49;
        if (v25 != v115)
        {
          v46 = v47;
        }

        v126 = v46;
        v137 = v117 + (v43 - v139) * a11;
        v50 = v138;
        do
        {
          v61 = 16 * v48;
          v62 = 16 * (v48 + 1) - 1;
          if (16 * v48 <= v50)
          {
            v63 = v50;
          }

          else
          {
            v63 = 16 * v48;
          }

          if (v132 < v62)
          {
            v62 = v138 + a9 - 1;
          }

          v64 = v62 - v63;
          v65 = v64 + 1;
          if (v48 == v141)
          {
            v66 = v130;
          }

          else
          {
            v66 = 16;
          }

          v67 = 1;
          if (16 * v25 >= v139 && v61 >= v50)
          {
            v68 = v64 != v125;
            if (v48 != v141)
            {
              v68 = v65 != 16;
            }

            v67 = v68 || v126;
          }

          if (v133)
          {
            if (v129 | v122)
            {
              v69 = 0;
              v70 = 0;
              v71 = v122 != 0;
              v72 = 1;
              v74 = v129 != 0;
              v73 = v122;
              v75 = v129;
              do
              {
                --v75;
                if (v74)
                {
                  v70 |= (v48 & ~(-1 << v129) & v72) << v69++;
                }

                else
                {
                  v75 = 0;
                }

                --v73;
                if (v71)
                {
                  v70 |= (v25 & ~(-1 << v122) & v72) << v69++;
                }

                else
                {
                  v73 = 0;
                }

                v72 *= 2;
                --v69;
                v71 = v73 != 0;
                v74 = v75 != 0;
              }

              while (v73 | v75);
              v76 = v70 << 11;
            }

            else
            {
              v76 = 0;
            }

            v84 = v76 + *(v23 + 336) * ((v48 >> v129) + (v25 >> v122) * v116);
          }

          else if (v121)
          {
            v77 = 0;
            v78 = 0;
            v79 = 1;
            v80 = v120.i8[0];
            v81 = v120.i8[4];
            v83 = v121.i32[0];
            v82 = v121.i32[1];
            do
            {
              --v82;
              if (v81)
              {
                v78 |= (v79 & v48) << v77++;
              }

              else
              {
                v82 = 0;
              }

              --v83;
              if (v80)
              {
                v78 |= (v79 & v25) << v77++;
              }

              else
              {
                v83 = 0;
              }

              v79 *= 2;
              --v77;
              v80 = v83 != 0;
              v81 = v82 != 0;
            }

            while (v83 | v82);
            v84 = v78 << 11;
          }

          else
          {
            v84 = 0;
          }

          v85 = *(v23 + 128) >> (*(v23 + 144) + a12);
          if (v85 <= 1)
          {
            v85 = 1;
          }

          v86 = v85 + 15;
          if (v86 < 0x20)
          {
            v87 = 0;
          }

          else
          {
            v87 = 32 - __clz(~(-1 << -__clz((v86 >> 4) - 1)));
          }

          v88 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v88 <= 1)
          {
            v88 = 1;
          }

          v89 = v88 + 15;
          if (v89 < 0x20)
          {
            v90 = 0;
            if (!v87)
            {
LABEL_107:
              v96 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v90 = 32 - __clz(~(-1 << -__clz((v89 >> 4) - 1)));
            if (!(v90 | v87))
            {
              goto LABEL_107;
            }
          }

          v91 = 0;
          v92 = 0;
          v93 = v87 != 0;
          v94 = v90 != 0;
          v95 = 1;
          do
          {
            --v87;
            if (v93)
            {
              v92 |= (v95 & v48) << v91++;
            }

            else
            {
              v87 = 0;
            }

            --v90;
            if (v94)
            {
              v92 |= (v95 & v25) << v91++;
            }

            else
            {
              v90 = 0;
            }

            v95 *= 2;
            --v91;
            v94 = v90 != 0;
            v93 = v87 != 0;
          }

          while (v90 | v87);
          v96 = 8 * v92;
LABEL_108:
          v97 = (v135 + v84);
          if (v134)
          {
            v98 = v66;
            memcpy(__dst, (v135 + v84), sizeof(__dst));
            v66 = v98;
            v97 = __dst;
          }

          v99 = (v136 + v96);
          v100 = (v137 + 8 * (v63 - v50));
          if (!(v67 & 1 | (v66 < 0x10u)) && v140 > 0xF)
          {
            v51 = &v97[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v100, a11, v97, *v99)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v124), a11, v51, v99[1]);
            v53 = v52 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v100 + 4, a11, v52, v99[2]);
            v54 = v53 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v124 + 64), a11, v53, v99[3]);
            v55 = (v100 + v123);
            v56 = v54 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v100 + v123), a11, v54, v99[4]);
            v57 = (v100 + 12 * a11);
            v58 = v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v57, a11, v56, v99[5]);
            v59 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v55 + 4, a11, v58, v99[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v57 + 4, a11, v58 + v59, v99[7]);
            v50 = v138;
            v23 = v131;
LABEL_49:
            v60 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v131;
          block[5] = v97;
          v149 = v66;
          v150 = v140;
          v145 = v128;
          v146 = v63 - v61;
          block[6] = v99;
          v143 = v100;
          v144 = a11;
          v147 = v127;
          v148 = v65;
          if (v67)
          {
            dispatch_sync(*(*(v131 + 8) + 16552), block);
            v50 = v138;
            v23 = v131;
            goto LABEL_49;
          }

          v101 = &v97[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 128, v97, *v99)];
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 128, v101, v99[1]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 128, v102, v99[2]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 128, v103, v99[3]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 128, v104, v99[4]);
          v106 = v105 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 128, v105, v99[5]);
          v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 128, v106, v99[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 128, v106 + v107, v99[7]);
          v108 = v147;
          v50 = v138;
          v23 = v131;
          v60 = v48 + 1;
          if (v147)
          {
            v109 = 0;
            v110 = &v152[8 * v145].f64[v146];
            v111 = v148;
            do
            {
              if (v111)
              {
                v112 = 0;
                v113 = v143 + v144 * v109;
                do
                {
                  v113[v112] = v110[v112];
                  ++v112;
                  v111 = v148;
                }

                while (8 * v148 > v112);
                v108 = v147;
              }

              ++v109;
              v110 += 128;
            }

            while (v109 < v108);
          }

LABEL_50:
          v28 = v48 == v132 >> 4;
          v48 = v60;
        }

        while (!v28);
        v28 = v25++ == v118;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v141 = v15;
  v17 = v16;
  v19 = v18;
  v136 = v20;
  v137 = v21;
  v122 = v22;
  v23 = v12;
  v162 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v140 = v14;
  v24 = v14 >> 4;
  v121 = v14 + a10 - 1;
  v123 = v121 >> 4;
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
  if (v24 <= v123)
  {
    v133 = v141 + a9 - 1;
    if (v141 >> 4 <= v133 >> 4)
    {
      v32 = a11;
      v143 = (v19 - 1) >> 4;
      v118 = v19 - 1;
      v126 = (v19 - 1) & 0xF;
      v119 = (v17 - 1) & 0xF;
      v120 = (v17 - 1) >> 4;
      v124 = 8 * a11;
      v125 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0xF0000000FLL);
      v34 = vcgt_u32(v33, 0x1F0000001FLL);
      v131 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 4uLL))))))), v34);
      v130 = v34;
      v117 = 8 * v26 * v25;
      v132 = v23;
      do
      {
        v35 = (16 * v24) | 0xF;
        if (16 * v24 <= v140)
        {
          v36 = v140;
        }

        else
        {
          v36 = 16 * v24;
        }

        if (v121 < v35)
        {
          v35 = v121;
        }

        v139 = 16 * v24;
        v129 = v36 - 16 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v119;
        v128 = v38;
        v40 = v38 != 16;
        v41 = v141 >> 4;
        v42 = v119 + 1;
        if (v24 != v120)
        {
          v42 = 16;
        }

        v142 = v42;
        if (v24 != v120)
        {
          v39 = v40;
        }

        v127 = v39;
        v138 = v122 + (v36 - v140) * v32;
        v43 = v141;
        do
        {
          v54 = 16 * v41;
          v55 = 16 * (v41 + 1) - 1;
          if (16 * v41 <= v43)
          {
            v56 = v43;
          }

          else
          {
            v56 = 16 * v41;
          }

          if (v133 < v55)
          {
            v55 = v141 + a9 - 1;
          }

          v57 = v55 - v56;
          v58 = v57 + 1;
          if (v41 == v143)
          {
            v59 = v126 + 1;
          }

          else
          {
            v59 = 16;
          }

          v60 = 1;
          if (v139 >= v140 && v54 >= v43)
          {
            v61 = v57 != v126;
            if (v41 != v143)
            {
              v61 = v58 != 16;
            }

            v60 = v61 || v127;
          }

          if (isLevelTiled)
          {
            v82 = 0;
            v83 = v117 >> (*(v23 + 57) != 0);
            v84 = 1;
            if (v83 <= 63)
            {
              if (v83 > 15)
              {
                if (v83 == 16)
                {
                  v84 = 0;
                  v85 = 0;
                  v86 = 64;
                  v82 = 128;
                }

                else
                {
                  v85 = 1;
                  v86 = 0;
                  if (v83 == 32)
                  {
                    v84 = 0;
                    v85 = 0;
                    v82 = 64;
                    v86 = 64;
                  }
                }
              }

              else if (v83 == 4)
              {
                v84 = 0;
                v85 = 0;
                v86 = 128;
                v82 = 256;
              }

              else
              {
                v85 = 1;
                v86 = 0;
                if (v83 == 8)
                {
                  v84 = 0;
                  v85 = 0;
                  v82 = 128;
                  v86 = 128;
                }
              }
            }

            else if (v83 <= 255)
            {
              if (v83 == 64)
              {
                v84 = 0;
                v85 = 0;
                v86 = 32;
                v82 = 64;
              }

              else
              {
                v85 = 1;
                v86 = 0;
                if (v83 == 128)
                {
                  v84 = 0;
                  v85 = 0;
                  v82 = 32;
                  v86 = 32;
                }
              }
            }

            else if (v83 == 256)
            {
              v84 = 0;
              v86 = 16;
              v85 = 1;
              v82 = 32;
            }

            else if (v83 == 512)
            {
              v82 = 16;
              v85 = 1;
              v86 = 16;
            }

            else
            {
              v85 = 1;
              v86 = 0;
              if (v83 == 1024)
              {
                v86 = 8;
                v82 = 16;
              }
            }

            v107 = (v82 >> 4) - 1;
            if (v84)
            {
              v108 = 0;
              if (v85)
              {
                goto LABEL_123;
              }

LABEL_112:
              v109 = 32 - __clz(~(-1 << -__clz(((v86 + 15) >> 4) - 1)));
              if (v109 | v108)
              {
                goto LABEL_113;
              }

LABEL_124:
              v116 = 0;
            }

            else
            {
              v108 = 32 - __clz(~(-1 << -__clz(v107)));
              if ((v85 & 1) == 0)
              {
                goto LABEL_112;
              }

LABEL_123:
              v109 = 0;
              if (!v108)
              {
                goto LABEL_124;
              }

LABEL_113:
              v110 = 0;
              v111 = 0;
              v112 = v41 & v107;
              v113 = v108 != 0;
              v114 = v109 != 0;
              v115 = 1;
              do
              {
                --v108;
                if (v113)
                {
                  v111 |= (v115 & v112) << v110++;
                }

                else
                {
                  v108 = 0;
                }

                --v109;
                if (v114)
                {
                  v111 |= (v115 & v24 & ((v86 >> 4) - 1)) << v110++;
                }

                else
                {
                  v109 = 0;
                }

                v115 *= 2;
                --v110;
                v114 = v109 != 0;
                v113 = v108 != 0;
              }

              while (v109 | v108);
              v116 = v111 << 11;
            }

            v69 = v116 + ((v54 / v82 + v139 / v86 * ((v82 + v118) / v82)) << 14);
            goto LABEL_56;
          }

          if (v131)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v130.i8[0];
            v66 = v130.i8[4];
            v68 = v131.i32[0];
            v67 = v131.i32[1];
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v41) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v65)
              {
                v63 |= (v64 & v24) << v62++;
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
            v69 = v63 << 11;
          }

          else
          {
            v69 = 0;
          }

LABEL_56:
          v70 = *(v23 + 128) >> (*(v23 + 144) + a12);
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

          v73 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 15;
          if (v74 < 0x20)
          {
            v75 = 0;
            if (!v72)
            {
LABEL_81:
              v81 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 4) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_81;
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
              v77 |= (v80 & v41) << v76++;
            }

            else
            {
              v72 = 0;
            }

            --v75;
            if (v79)
            {
              v77 |= (v80 & v24) << v76++;
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
LABEL_82:
          v87 = (v136 + v69);
          if (v135)
          {
            v88 = v58;
            v89 = v32;
            v90 = v59;
            v91 = v60;
            memcpy(__dst, (v136 + v69), sizeof(__dst));
            v60 = v91;
            v59 = v90;
            v32 = v89;
            v54 = 16 * v41;
            v58 = v88;
            v87 = __dst;
          }

          v92 = (v137 + v81);
          v93 = (v138 + 8 * (v56 - v43));
          if (!(v60 & 1 | (v59 < 0x10u)) && v142 > 0xF)
          {
            v44 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v138 + 8 * (v56 - v43)), v32, v87, *v92)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v125), v32, v44, v92[1]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v93 + 4, v32, v45, v92[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v125 + 64), v32, v46, v92[3]);
            v48 = (v93 + v124);
            v49 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v124), v32, v47, v92[4]);
            v50 = (v93 + 12 * a11);
            v51 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v50, v32, v49, v92[5]);
            v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v48 + 4, v32, v51, v92[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v50 + 4, v32, v51 + v52, v92[7]);
            v43 = v141;
            v23 = v132;
LABEL_29:
            v53 = v41 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v132;
          block[5] = v87;
          v151 = v59;
          v152 = v142;
          v147 = v129;
          v148 = v56 - v54;
          block[6] = v92;
          v145 = v138 + 8 * (v56 - v43);
          v146 = v32;
          v149 = v128;
          v150 = v58;
          if (v60)
          {
            dispatch_sync(*(*(v132 + 8) + 16552), block);
            v43 = v141;
            v23 = v132;
            goto LABEL_29;
          }

          v94 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 128, v87, *v92)];
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 128, v94, v92[1]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 128, v95, v92[2]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 128, v96, v92[3]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 128, v97, v92[4]);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 128, v98, v92[5]);
          v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 128, v99, v92[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 128, v99 + v100, v92[7]);
          v101 = v149;
          v43 = v141;
          v23 = v132;
          v53 = v41 + 1;
          if (v149)
          {
            v102 = 0;
            v103 = &v154[8 * v147].f64[v148];
            v104 = v150;
            do
            {
              if (v104)
              {
                v105 = 0;
                v106 = v145 + v146 * v102;
                do
                {
                  *(v106 + v105) = v103[v105];
                  ++v105;
                  v104 = v150;
                }

                while (8 * v150 > v105);
                v101 = v149;
              }

              ++v102;
              v103 += 128;
            }

            while (v102 < v101);
          }

LABEL_30:
          v28 = v41 == v133 >> 4;
          v41 = v53;
        }

        while (!v28);
        v28 = v24++ == v123;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v141 = v15;
  v17 = v16;
  v19 = v18;
  v136 = v20;
  v137 = v21;
  v122 = v22;
  v23 = v12;
  v162 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v140 = v14;
  v24 = v14 >> 4;
  v121 = v14 + a10 - 1;
  v123 = v121 >> 4;
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
  if (v24 <= v123)
  {
    v133 = v141 + a9 - 1;
    if (v141 >> 4 <= v133 >> 4)
    {
      v32 = a11;
      v143 = (v19 - 1) >> 4;
      v118 = v19 - 1;
      v126 = (v19 - 1) & 0xF;
      v119 = (v17 - 1) & 0xF;
      v120 = (v17 - 1) >> 4;
      v124 = 8 * a11;
      v125 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0xF0000000FLL);
      v34 = vcgt_u32(v33, 0x1F0000001FLL);
      v131 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 4uLL))))))), v34);
      v130 = v34;
      v117 = 8 * v26 * v25;
      v132 = v23;
      do
      {
        v35 = (16 * v24) | 0xF;
        if (16 * v24 <= v140)
        {
          v36 = v140;
        }

        else
        {
          v36 = 16 * v24;
        }

        if (v121 < v35)
        {
          v35 = v121;
        }

        v139 = 16 * v24;
        v129 = v36 - 16 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v119;
        v128 = v38;
        v40 = v38 != 16;
        v41 = v141 >> 4;
        v42 = v119 + 1;
        if (v24 != v120)
        {
          v42 = 16;
        }

        v142 = v42;
        if (v24 != v120)
        {
          v39 = v40;
        }

        v127 = v39;
        v138 = v122 + (v36 - v140) * v32;
        v43 = v141;
        do
        {
          v54 = 16 * v41;
          v55 = 16 * (v41 + 1) - 1;
          if (16 * v41 <= v43)
          {
            v56 = v43;
          }

          else
          {
            v56 = 16 * v41;
          }

          if (v133 < v55)
          {
            v55 = v141 + a9 - 1;
          }

          v57 = v55 - v56;
          v58 = v57 + 1;
          if (v41 == v143)
          {
            v59 = v126 + 1;
          }

          else
          {
            v59 = 16;
          }

          v60 = 1;
          if (v139 >= v140 && v54 >= v43)
          {
            v61 = v57 != v126;
            if (v41 != v143)
            {
              v61 = v58 != 16;
            }

            v60 = v61 || v127;
          }

          if (isLevelTiled)
          {
            v82 = 0;
            v83 = v117 >> (*(v23 + 57) != 0);
            v84 = 1;
            if (v83 <= 63)
            {
              if (v83 > 15)
              {
                if (v83 == 16)
                {
                  v84 = 0;
                  v85 = 0;
                  v86 = 64;
                  v82 = 128;
                }

                else
                {
                  v85 = 1;
                  v86 = 0;
                  if (v83 == 32)
                  {
                    v84 = 0;
                    v85 = 0;
                    v82 = 64;
                    v86 = 64;
                  }
                }
              }

              else if (v83 == 4)
              {
                v84 = 0;
                v85 = 0;
                v86 = 128;
                v82 = 256;
              }

              else
              {
                v85 = 1;
                v86 = 0;
                if (v83 == 8)
                {
                  v84 = 0;
                  v85 = 0;
                  v82 = 128;
                  v86 = 128;
                }
              }
            }

            else if (v83 <= 255)
            {
              if (v83 == 64)
              {
                v84 = 0;
                v85 = 0;
                v86 = 32;
                v82 = 64;
              }

              else
              {
                v85 = 1;
                v86 = 0;
                if (v83 == 128)
                {
                  v84 = 0;
                  v85 = 0;
                  v82 = 32;
                  v86 = 32;
                }
              }
            }

            else if (v83 == 256)
            {
              v84 = 0;
              v86 = 16;
              v85 = 1;
              v82 = 32;
            }

            else if (v83 == 512)
            {
              v82 = 16;
              v85 = 1;
              v86 = 16;
            }

            else
            {
              v85 = 1;
              v86 = 0;
              if (v83 == 1024)
              {
                v86 = 8;
                v82 = 16;
              }
            }

            v107 = (v82 >> 4) - 1;
            if (v84)
            {
              v108 = 0;
              if (v85)
              {
                goto LABEL_123;
              }

LABEL_112:
              v109 = 32 - __clz(~(-1 << -__clz(((v86 + 15) >> 4) - 1)));
              if (v109 | v108)
              {
                goto LABEL_113;
              }

LABEL_124:
              v116 = 0;
            }

            else
            {
              v108 = 32 - __clz(~(-1 << -__clz(v107)));
              if ((v85 & 1) == 0)
              {
                goto LABEL_112;
              }

LABEL_123:
              v109 = 0;
              if (!v108)
              {
                goto LABEL_124;
              }

LABEL_113:
              v110 = 0;
              v111 = 0;
              v112 = v41 & v107;
              v113 = v108 != 0;
              v114 = v109 != 0;
              v115 = 1;
              do
              {
                --v108;
                if (v113)
                {
                  v111 |= (v115 & v112) << v110++;
                }

                else
                {
                  v108 = 0;
                }

                --v109;
                if (v114)
                {
                  v111 |= (v115 & v24 & ((v86 >> 4) - 1)) << v110++;
                }

                else
                {
                  v109 = 0;
                }

                v115 *= 2;
                --v110;
                v114 = v109 != 0;
                v113 = v108 != 0;
              }

              while (v109 | v108);
              v116 = v111 << 11;
            }

            v69 = v116 + ((v54 / v82 + v139 / v86 * ((v82 + v118) / v82)) << 14);
            goto LABEL_56;
          }

          if (v131)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v130.i8[0];
            v66 = v130.i8[4];
            v68 = v131.i32[0];
            v67 = v131.i32[1];
            do
            {
              --v67;
              if (v66)
              {
                v63 |= (v64 & v41) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v65)
              {
                v63 |= (v64 & v24) << v62++;
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
            v69 = v63 << 11;
          }

          else
          {
            v69 = 0;
          }

LABEL_56:
          v70 = *(v23 + 128) >> (*(v23 + 144) + a12);
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

          v73 = *(v23 + 132) >> (*(v23 + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 15;
          if (v74 < 0x20)
          {
            v75 = 0;
            if (!v72)
            {
LABEL_81:
              v81 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 4) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_81;
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
              v77 |= (v80 & v41) << v76++;
            }

            else
            {
              v72 = 0;
            }

            --v75;
            if (v79)
            {
              v77 |= (v80 & v24) << v76++;
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
LABEL_82:
          v87 = (v136 + v69);
          if (v135)
          {
            v88 = v58;
            v89 = v32;
            v90 = v59;
            v91 = v60;
            memcpy(__dst, (v136 + v69), sizeof(__dst));
            v60 = v91;
            v59 = v90;
            v32 = v89;
            v54 = 16 * v41;
            v58 = v88;
            v87 = __dst;
          }

          v92 = (v137 + v81);
          v93 = (v138 + 8 * (v56 - v43));
          if (!(v60 & 1 | (v59 < 0x10u)) && v142 > 0xF)
          {
            v44 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v138 + 8 * (v56 - v43)), v32, v87, *v92)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v125), v32, v44, v92[1]);
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v93 + 4, v32, v45, v92[2]);
            v47 = v46 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v125 + 64), v32, v46, v92[3]);
            v48 = (v93 + v124);
            v49 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v93 + v124), v32, v47, v92[4]);
            v50 = (v93 + 12 * a11);
            v51 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v50, v32, v49, v92[5]);
            v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v48 + 4, v32, v51, v92[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v50 + 4, v32, v51 + v52, v92[7]);
            v43 = v141;
            v23 = v132;
LABEL_29:
            v53 = v41 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v132;
          block[5] = v87;
          v151 = v59;
          v152 = v142;
          v147 = v129;
          v148 = v56 - v54;
          block[6] = v92;
          v145 = v138 + 8 * (v56 - v43);
          v146 = v32;
          v149 = v128;
          v150 = v58;
          if (v60)
          {
            dispatch_sync(*(*(v132 + 8) + 16552), block);
            v43 = v141;
            v23 = v132;
            goto LABEL_29;
          }

          v94 = &v87[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 128, v87, *v92)];
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 128, v94, v92[1]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 128, v95, v92[2]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 128, v96, v92[3]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 128, v97, v92[4]);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 128, v98, v92[5]);
          v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 128, v99, v92[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 128, v99 + v100, v92[7]);
          v101 = v149;
          v43 = v141;
          v23 = v132;
          v53 = v41 + 1;
          if (v149)
          {
            v102 = 0;
            v103 = &v154[8 * v147].f64[v148];
            v104 = v150;
            do
            {
              if (v104)
              {
                v105 = 0;
                v106 = v145 + v146 * v102;
                do
                {
                  *(v106 + v105) = v103[v105];
                  ++v105;
                  v104 = v150;
                }

                while (8 * v150 > v105);
                v101 = v149;
              }

              ++v102;
              v103 += 128;
            }

            while (v102 < v101);
          }

LABEL_30:
          v28 = v41 == v133 >> 4;
          v41 = v53;
        }

        while (!v28);
        v28 = v24++ == v123;
      }

      while (!v28);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v308 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v262 = a8;
  v241 = a8 + a10 - 1;
  if (*(v15 + 168))
  {
    v16 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v16 = 0;
  }

  v17 = a8 >> 4;
  v18 = a5 - 1;
  v19 = a6 - 1;
  v240 = v241 >> 4;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v257 = v23;
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
      v256 = 0;
LABEL_32:
      v253 = v25 - 4;
      v244 = v24 - 4;
      v31 = -1 << *(*(v15 + 208) + 48);
      v238 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v256 = v30 >= v24;
    goto LABEL_32;
  }

  v256 = 0;
  v238 = 0;
  v244 = 0;
  v253 = 0;
LABEL_33:
  if (v17 <= v240)
  {
    v255 = a7 + a9 - 1;
    if (a7 >> 4 <= v255 >> 4)
    {
      v32 = a11;
      v265 = v18 >> 4;
      v249 = v18 & 0xF;
      v254 = (v18 & 0xF) + 1;
      v236 = v19 & 0xF;
      v237 = v19 >> 4;
      v247 = 8 * a11;
      v248 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v34.i8 = vcgt_u32(v33, 0x1F0000001FLL);
      *v35.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 4uLL))))))), *v34.i8);
      v243 = v35.i64[0];
      v246 = v35.i32[0] | v35.i32[1];
      v242 = v34.i64[0];
      v263 = v15;
      v245 = 2 * a11;
      do
      {
        v36 = (16 * v17) | 0xF;
        if (16 * v17 <= v262)
        {
          v37 = v262;
        }

        else
        {
          v37 = 16 * v17;
        }

        if (v241 < v36)
        {
          v36 = v241;
        }

        v252 = v37 - 16 * v17;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v236;
        v251 = v39;
        v41 = v39 != 16;
        v42 = a7 >> 4;
        v43 = v236 + 1;
        if (v17 != v237)
        {
          v43 = 16;
        }

        v264 = v43;
        if (v17 != v237)
        {
          v40 = v41;
        }

        v250 = v40;
        v44 = v17 & ~(-1 << v244);
        v260 = a2 + (v37 - v262) * v32;
        v45 = a7;
        do
        {
          v47 = 16 * v42;
          v48 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= v45)
          {
            v49 = v45;
          }

          else
          {
            v49 = 16 * v42;
          }

          if (v255 < v48)
          {
            v48 = a7 + a9 - 1;
          }

          v50 = v48 - v49;
          v51 = v50 + 1;
          if (v42 == v265)
          {
            v52 = v254;
          }

          else
          {
            v52 = 16;
          }

          v53 = 1;
          if (16 * v17 >= v262 && v47 >= v45)
          {
            v54 = v50 != v249;
            if (v42 != v265)
            {
              v54 = v51 != 16;
            }

            v53 = v54 || v250;
          }

          if (v256)
          {
            if (v253 | v244)
            {
              v55 = 0;
              v56 = 0;
              v57 = v244 != 0;
              v58 = 1;
              v60 = v253 != 0;
              v59 = v244;
              v61 = v253;
              do
              {
                --v61;
                if (v60)
                {
                  v56 |= (v42 & ~(-1 << v253) & v58) << v55++;
                }

                else
                {
                  v61 = 0;
                }

                --v59;
                if (v57)
                {
                  v56 |= (v44 & v58) << v55++;
                }

                else
                {
                  v59 = 0;
                }

                v58 *= 2;
                --v55;
                v57 = v59 != 0;
                v60 = v61 != 0;
              }

              while (v59 | v61);
              v62 = v56 << 9;
            }

            else
            {
              v62 = 0;
            }

            v70 = v62 + *(v15 + 336) * ((v42 >> v253) + (v17 >> v244) * v238);
          }

          else if (v246)
          {
            v63 = 0;
            v64 = 0;
            v65 = 1;
            v66 = v242;
            v67 = BYTE4(v242);
            v69 = v243;
            v68 = HIDWORD(v243);
            do
            {
              --v68;
              if (v67)
              {
                v64 |= (v65 & v42) << v63++;
              }

              else
              {
                v68 = 0;
              }

              --v69;
              if (v66)
              {
                v64 |= (v65 & v17) << v63++;
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

          v71 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v72 = v71 + 15;
          if (v72 < 0x20)
          {
            v73 = 0;
          }

          else
          {
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 4) - 1)));
          }

          v74 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v74 <= 1)
          {
            v74 = 1;
          }

          v75 = v74 + 15;
          if (v75 < 0x20)
          {
            v76 = 0;
            if (!v73)
            {
LABEL_107:
              v82 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v76 = 32 - __clz(~(-1 << -__clz((v75 >> 4) - 1)));
            if (!(v76 | v73))
            {
              goto LABEL_107;
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
              v78 |= (v81 & v42) << v77++;
            }

            else
            {
              v73 = 0;
            }

            --v76;
            if (v80)
            {
              v78 |= (v81 & v17) << v77++;
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
LABEL_108:
          v83 = (a3 + v70);
          if (v257)
          {
            v84 = v44;
            v85 = v51;
            v86 = v53;
            memcpy(__dst, (a3 + v70), sizeof(__dst));
            v53 = v86;
            v51 = v85;
            v44 = v84;
            v83 = __dst;
          }

          v87 = (a4 + v82);
          v88 = (v260 + 2 * (v49 - v45));
          if (!(v53 & 1 | (v52 < 0x10u)) && v264 > 0xF)
          {
            v89 = *v87;
            if (v89 == 63)
            {
              v98 = *v83;
              v34 = v83[1];
              v99 = v83[2];
              v100 = v83[3];
              *v88 = vuzp1q_s32(*v83, v99);
              v32 = a11;
              *(v88 + a11) = vuzp2q_s32(v98, v99);
              v91 = 3 * a11;
              v90 = 2 * a11;
              v101 = (v88 + v245);
              *v101 = vuzp1q_s32(v34, v100);
              v35 = vuzp2q_s32(v34, v100);
              *(v101 + a11) = v35;
              v92 = 64;
            }

            else
            {
              v32 = a11;
              v91 = 3 * a11;
              v90 = 2 * a11;
              if (v89 == 1)
              {
                v35 = vld1q_dup_s16(v83->i16);
                *v88 = v35;
                *(v88 + a11) = v35;
                *(v88 + 2 * a11) = v35;
                *(v88 + 3 * a11) = v35;
                v92 = 2;
              }

              else if (*v87)
              {
                v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v88, a11, v83, v89, *v35.i8, *v34.i8);
              }

              else
              {
                v92 = 0;
                v88->i64[0] = 0;
                v88->i64[1] = 0;
                v93 = (v88->i64 + a11);
                *v93 = 0;
                v93[1] = 0;
                v94 = (v88->i64 + v245);
                *v94 = 0;
                v94[1] = 0;
                v95 = (v88->i64 + 3 * a11);
                *v95 = 0;
                v95[1] = 0;
              }
            }

            v102 = v83->i64 + v92;
            v103 = (v88 + v248);
            v104 = v87[1];
            if (v104 == 63)
            {
              v109 = *v102;
              v34 = *(v102 + 16);
              v110 = *(v102 + 32);
              v111 = *(v102 + 48);
              *v103 = vuzp1q_s32(*v102, v110);
              *(v103 + v32) = vuzp2q_s32(v109, v110);
              v112 = (v103 + v90);
              *v112 = vuzp1q_s32(v34, v111);
              v35 = vuzp2q_s32(v34, v111);
              *(v112 + v32) = v35;
              v105 = 64;
            }

            else if (v104 == 1)
            {
              v35 = vld1q_dup_s16(v102);
              *v103 = v35;
              *(v103 + v32) = v35;
              *(v103 + v90) = v35;
              *(v103 + v91) = v35;
              v105 = 2;
            }

            else if (v87[1])
            {
              v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v88 + v248), v32, v102, v104, *v35.i8, *v34.i8);
            }

            else
            {
              v105 = 0;
              v103->i64[0] = 0;
              v103->i64[1] = 0;
              v106 = (v103->i64 + v32);
              *v106 = 0;
              v106[1] = 0;
              v107 = (v103->i64 + v90);
              *v107 = 0;
              v107[1] = 0;
              v108 = (v103->i64 + v91);
              *v108 = 0;
              v108[1] = 0;
            }

            v113 = v102 + v105;
            v114 = v88 + 1;
            v115 = v87[2];
            if (v115 == 63)
            {
              v120 = *v113;
              v34 = *(v113 + 16);
              v121 = *(v113 + 32);
              v122 = *(v113 + 48);
              *v114 = vuzp1q_s32(*v113, v121);
              *(v114 + v32) = vuzp2q_s32(v120, v121);
              v123 = (v114 + v90);
              *v123 = vuzp1q_s32(v34, v122);
              v35 = vuzp2q_s32(v34, v122);
              *(v123 + v32) = v35;
              v116 = 64;
            }

            else if (v115 == 1)
            {
              v35 = vld1q_dup_s16(v113);
              *v114 = v35;
              *(v114 + v32) = v35;
              *(v114 + v90) = v35;
              *(v114 + v91) = v35;
              v116 = 2;
            }

            else if (v87[2])
            {
              v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v114, v32, v113, v115, *v35.i8, *v34.i8);
            }

            else
            {
              v116 = 0;
              v114->i64[0] = 0;
              v88[1].i64[1] = 0;
              v117 = (v114->i64 + v32);
              *v117 = 0;
              v117[1] = 0;
              v118 = (v114->i64 + v90);
              *v118 = 0;
              v118[1] = 0;
              v119 = (v114->i64 + v91);
              *v119 = 0;
              v119[1] = 0;
            }

            v124 = v113 + v116;
            v125 = v103 + 1;
            v126 = v87[3];
            if (v126 == 63)
            {
              v131 = *v124;
              v34 = *(v124 + 16);
              v132 = *(v124 + 32);
              v133 = *(v124 + 48);
              *v125 = vuzp1q_s32(*v124, v132);
              *(v125 + v32) = vuzp2q_s32(v131, v132);
              v134 = (v125 + v90);
              *v134 = vuzp1q_s32(v34, v133);
              v35 = vuzp2q_s32(v34, v133);
              *(v134 + v32) = v35;
              v127 = 64;
            }

            else if (v126 == 1)
            {
              v35 = vld1q_dup_s16(v124);
              *v125 = v35;
              *(v125 + v32) = v35;
              *(v125 + v90) = v35;
              *(v125 + v91) = v35;
              v127 = 2;
            }

            else if (v87[3])
            {
              v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v125, v32, v124, v126, *v35.i8, *v34.i8);
            }

            else
            {
              v127 = 0;
              v125->i64[0] = 0;
              v103[1].i64[1] = 0;
              v128 = (v125->i64 + v32);
              *v128 = 0;
              v128[1] = 0;
              v129 = (v125->i64 + v90);
              *v129 = 0;
              v129[1] = 0;
              v130 = (v125->i64 + v91);
              *v130 = 0;
              v130[1] = 0;
            }

            v135 = v124 + v127;
            v136 = (v88 + v247);
            v137 = v87[4];
            if (v137 == 63)
            {
              v142 = *v135;
              v34 = *(v135 + 16);
              v143 = *(v135 + 32);
              v144 = *(v135 + 48);
              *v136 = vuzp1q_s32(*v135, v143);
              *(v136 + v32) = vuzp2q_s32(v142, v143);
              v145 = (v136 + v90);
              *v145 = vuzp1q_s32(v34, v144);
              v35 = vuzp2q_s32(v34, v144);
              *(v145 + v32) = v35;
              v138 = 64;
            }

            else if (v137 == 1)
            {
              v35 = vld1q_dup_s16(v135);
              *v136 = v35;
              *(v136 + v32) = v35;
              *(v136 + v90) = v35;
              *(v136 + v91) = v35;
              v138 = 2;
            }

            else if (v87[4])
            {
              v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v88 + v247), v32, v135, v137, *v35.i8, *v34.i8);
            }

            else
            {
              v138 = 0;
              v136->i64[0] = 0;
              v136->i64[1] = 0;
              v139 = (v136->i64 + v32);
              *v139 = 0;
              v139[1] = 0;
              v140 = (v136->i64 + v90);
              *v140 = 0;
              v140[1] = 0;
              v141 = (v136->i64 + v91);
              *v141 = 0;
              v141[1] = 0;
            }

            v146 = v135 + v138;
            v147 = (v88 + 12 * a11);
            v148 = v87[5];
            if (v148 == 63)
            {
              v153 = *v146;
              v34 = *(v146 + 16);
              v154 = *(v146 + 32);
              v155 = *(v146 + 48);
              *v147 = vuzp1q_s32(*v146, v154);
              *(v147 + v32) = vuzp2q_s32(v153, v154);
              v156 = (v147 + v90);
              *v156 = vuzp1q_s32(v34, v155);
              v35 = vuzp2q_s32(v34, v155);
              *(v156 + v32) = v35;
              v149 = 64;
            }

            else if (v148 == 1)
            {
              v35 = vld1q_dup_s16(v146);
              *v147 = v35;
              *(v147 + v32) = v35;
              *(v147 + v90) = v35;
              *(v147 + v91) = v35;
              v149 = 2;
            }

            else if (v87[5])
            {
              v149 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v147, v32, v146, v148, *v35.i8, *v34.i8);
            }

            else
            {
              v149 = 0;
              v147->i64[0] = 0;
              v147->i64[1] = 0;
              v150 = (v147->i64 + v32);
              *v150 = 0;
              v150[1] = 0;
              v151 = (v147->i64 + v90);
              *v151 = 0;
              v151[1] = 0;
              v152 = (v147->i64 + v91);
              *v152 = 0;
              v152[1] = 0;
            }

            v157 = v146 + v149;
            v158 = v136 + 1;
            v159 = v87[6];
            if (v159 == 63)
            {
              v164 = *v157;
              v34 = *(v157 + 16);
              v165 = *(v157 + 32);
              v166 = *(v157 + 48);
              *v158 = vuzp1q_s32(*v157, v165);
              *(v158 + v32) = vuzp2q_s32(v164, v165);
              v167 = (v158 + v90);
              *v167 = vuzp1q_s32(v34, v166);
              v35 = vuzp2q_s32(v34, v166);
              *(v167 + v32) = v35;
              v160 = 64;
            }

            else if (v159 == 1)
            {
              v35 = vld1q_dup_s16(v157);
              *v158 = v35;
              *(v158 + v32) = v35;
              *(v158 + v90) = v35;
              *(v158 + v91) = v35;
              v160 = 2;
            }

            else if (v87[6])
            {
              v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v158, v32, v157, v159, *v35.i8, *v34.i8);
            }

            else
            {
              v160 = 0;
              v158->i64[0] = 0;
              v136[1].i64[1] = 0;
              v161 = (v158->i64 + v32);
              *v161 = 0;
              v161[1] = 0;
              v162 = (v158->i64 + v90);
              *v162 = 0;
              v162[1] = 0;
              v163 = (v158->i64 + v91);
              *v163 = 0;
              v163[1] = 0;
            }

            v168 = v157 + v160;
            v169 = v147 + 1;
            v170 = v87[7];
            if (v170 == 63)
            {
              v174 = *v168;
              v34 = *(v168 + 16);
              v175 = *(v168 + 32);
              v176 = *(v168 + 48);
              *v169 = vuzp1q_s32(*v168, v175);
              *(v169 + v32) = vuzp2q_s32(v174, v175);
              v177 = (v169 + v90);
              *v177 = vuzp1q_s32(v34, v176);
              v35 = vuzp2q_s32(v34, v176);
              *(v177 + v32) = v35;
              v45 = a7;
              v15 = v263;
            }

            else
            {
              v45 = a7;
              v15 = v263;
              if (v170 == 1)
              {
                v35 = vld1q_dup_s16(v168);
                *v169 = v35;
                *(v169 + v32) = v35;
                *(v169 + v90) = v35;
                *(v169 + v91) = v35;
              }

              else if (v170)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v169, v32, v168, v170, *v35.i8, *v34.i8);
              }

              else
              {
                v169->i64[0] = 0;
                v169->i64[1] = 0;
                v171 = (v169->i64 + v32);
                *v171 = 0;
                v171[1] = 0;
                v172 = (v169->i64 + v90);
                *v172 = 0;
                v172[1] = 0;
                v173 = (v169->i64 + v91);
                *v173 = 0;
                v173[1] = 0;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v263;
          block[5] = v83;
          v273 = v52;
          v274 = v264;
          v269 = v252;
          v270 = v49 - v47;
          block[6] = v87;
          v267 = v88;
          v32 = a11;
          v268 = a11;
          v271 = v251;
          v272 = v51;
          if (v53)
          {
            dispatch_sync(*(*(v263 + 8) + 16552), block);
            v45 = a7;
            v15 = v263;
LABEL_49:
            v46 = v42 + 1;
            goto LABEL_50;
          }

          v96 = *v87;
          if (v96 == 63)
          {
            v178 = v83[1];
            v179 = v83[2];
            v180 = v83[3];
            v181 = vuzp2q_s32(*v83, v179);
            v276 = vuzp1q_s32(*v83, v179);
            v278 = v181;
            v35 = vuzp1q_s32(v178, v180);
            v34 = vuzp2q_s32(v178, v180);
            v280 = v35;
            v282 = v34;
            v97 = 64;
          }

          else if (v96 == 1)
          {
            v35 = vld1q_dup_s16(v83->i16);
            v276 = v35;
            v278 = v35;
            v280 = v35;
            v282 = v35;
            v97 = 2;
          }

          else if (*v87)
          {
            v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 32, v83, v96, *v35.i8, *v34.i8);
          }

          else
          {
            v97 = 0;
            v276 = 0uLL;
            v278 = 0uLL;
            v280 = 0uLL;
            v282 = 0uLL;
          }

          v182 = v83->i64 + v97;
          v183 = v87[1];
          if (v183 == 63)
          {
            v185 = *(v182 + 16);
            v186 = *(v182 + 32);
            v187 = *(v182 + 48);
            v188 = vuzp2q_s32(*v182, v186);
            v284 = vuzp1q_s32(*v182, v186);
            v286 = v188;
            v35 = vuzp1q_s32(v185, v187);
            v34 = vuzp2q_s32(v185, v187);
            v288 = v35;
            v290 = v34;
            v184 = 64;
          }

          else if (v183 == 1)
          {
            v35 = vld1q_dup_s16(v182);
            v284 = v35;
            v286 = v35;
            v288 = v35;
            v290 = v35;
            v184 = 2;
          }

          else if (v87[1])
          {
            v184 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v284, 32, v182, v183, *v35.i8, *v34.i8);
          }

          else
          {
            v184 = 0;
            v284 = 0uLL;
            v286 = 0uLL;
            v288 = 0uLL;
            v290 = 0uLL;
          }

          v189 = v182 + v184;
          v190 = v87[2];
          if (v190 == 63)
          {
            v192 = *(v189 + 16);
            v193 = *(v189 + 32);
            v194 = *(v189 + 48);
            v195 = vuzp2q_s32(*v189, v193);
            v277 = vuzp1q_s32(*v189, v193);
            v279 = v195;
            v35 = vuzp1q_s32(v192, v194);
            v34 = vuzp2q_s32(v192, v194);
            v281 = v35;
            v283 = v34;
            v191 = 64;
          }

          else if (v190 == 1)
          {
            v35 = vld1q_dup_s16(v189);
            v277 = v35;
            v279 = v35;
            v281 = v35;
            v283 = v35;
            v191 = 2;
          }

          else if (v87[2])
          {
            v191 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v277, 32, v189, v190, *v35.i8, *v34.i8);
          }

          else
          {
            v191 = 0;
            v277 = 0uLL;
            v279 = 0uLL;
            v281 = 0uLL;
            v283 = 0uLL;
          }

          v196 = v189 + v191;
          v197 = v87[3];
          if (v197 == 63)
          {
            v199 = *(v196 + 16);
            v200 = *(v196 + 32);
            v201 = *(v196 + 48);
            v202 = vuzp2q_s32(*v196, v200);
            v285 = vuzp1q_s32(*v196, v200);
            v287 = v202;
            v35 = vuzp1q_s32(v199, v201);
            v34 = vuzp2q_s32(v199, v201);
            v289 = v35;
            v291 = v34;
            v198 = 64;
          }

          else if (v197 == 1)
          {
            v35 = vld1q_dup_s16(v196);
            v285 = v35;
            v287 = v35;
            v289 = v35;
            v291 = v35;
            v198 = 2;
          }

          else if (v87[3])
          {
            v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v285, 32, v196, v197, *v35.i8, *v34.i8);
          }

          else
          {
            v198 = 0;
            v285 = 0uLL;
            v287 = 0uLL;
            v289 = 0uLL;
            v291 = 0uLL;
          }

          v203 = v196 + v198;
          v204 = v87[4];
          if (v204 == 63)
          {
            v206 = *(v203 + 16);
            v207 = *(v203 + 32);
            v208 = *(v203 + 48);
            v209 = vuzp2q_s32(*v203, v207);
            v292 = vuzp1q_s32(*v203, v207);
            v294 = v209;
            v35 = vuzp1q_s32(v206, v208);
            v34 = vuzp2q_s32(v206, v208);
            v296 = v35;
            v298 = v34;
            v205 = 64;
          }

          else if (v204 == 1)
          {
            v35 = vld1q_dup_s16(v203);
            v292 = v35;
            v294 = v35;
            v296 = v35;
            v298 = v35;
            v205 = 2;
          }

          else if (v87[4])
          {
            v205 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 32, v203, v204, *v35.i8, *v34.i8);
          }

          else
          {
            v205 = 0;
            v292 = 0uLL;
            v294 = 0uLL;
            v296 = 0uLL;
            v298 = 0uLL;
          }

          v210 = v203 + v205;
          v211 = v87[5];
          if (v211 == 63)
          {
            v213 = *(v210 + 16);
            v214 = *(v210 + 32);
            v215 = *(v210 + 48);
            v216 = vuzp2q_s32(*v210, v214);
            v300 = vuzp1q_s32(*v210, v214);
            v302 = v216;
            v35 = vuzp1q_s32(v213, v215);
            v34 = vuzp2q_s32(v213, v215);
            v304 = v35;
            v306 = v34;
            v212 = 64;
          }

          else if (v211 == 1)
          {
            v35 = vld1q_dup_s16(v210);
            v300 = v35;
            v302 = v35;
            v304 = v35;
            v306 = v35;
            v212 = 2;
          }

          else if (v87[5])
          {
            v212 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v300, 32, v210, v211, *v35.i8, *v34.i8);
          }

          else
          {
            v212 = 0;
            v300 = 0uLL;
            v302 = 0uLL;
            v304 = 0uLL;
            v306 = 0uLL;
          }

          v217 = v210 + v212;
          v218 = v87[6];
          if (v218 == 63)
          {
            v220 = *(v217 + 16);
            v221 = *(v217 + 32);
            v222 = *(v217 + 48);
            v223 = vuzp2q_s32(*v217, v221);
            v293 = vuzp1q_s32(*v217, v221);
            v295 = v223;
            v35 = vuzp1q_s32(v220, v222);
            v34 = vuzp2q_s32(v220, v222);
            v297 = v35;
            v299 = v34;
            v219 = 64;
          }

          else if (v218 == 1)
          {
            v35 = vld1q_dup_s16(v217);
            v293 = v35;
            v295 = v35;
            v297 = v35;
            v299 = v35;
            v219 = 2;
          }

          else if (v87[6])
          {
            v219 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v293, 32, v217, v218, *v35.i8, *v34.i8);
          }

          else
          {
            v219 = 0;
            v293 = 0uLL;
            v295 = 0uLL;
            v297 = 0uLL;
            v299 = 0uLL;
          }

          v224 = v217 + v219;
          v225 = v87[7];
          if (v225 == 63)
          {
            v226 = *(v224 + 16);
            v227 = *(v224 + 32);
            v228 = *(v224 + 48);
            v229 = vuzp2q_s32(*v224, v227);
            v301 = vuzp1q_s32(*v224, v227);
            v303 = v229;
            v35 = vuzp1q_s32(v226, v228);
            v34 = vuzp2q_s32(v226, v228);
            v305 = v35;
            v307 = v34;
            v45 = a7;
            v15 = v263;
          }

          else
          {
            v45 = a7;
            v15 = v263;
            if (v225 == 1)
            {
              v35 = vld1q_dup_s16(v224);
              v301 = v35;
              v303 = v35;
              v305 = v35;
              v307 = v35;
            }

            else if (v225)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v301, 32, v224, v225, *v35.i8, *v34.i8);
            }

            else
            {
              v301 = 0uLL;
              v303 = 0uLL;
              v305 = 0uLL;
              v307 = 0uLL;
            }
          }

          v230 = v271;
          v46 = v42 + 1;
          if (v271)
          {
            v231 = 0;
            v232 = &v276.i8[32 * v269 + 2 * v270];
            v233 = v272;
            do
            {
              if (v233)
              {
                v234 = 0;
                v235 = &v267->i8[v268 * v231];
                do
                {
                  v235[v234] = v232[v234];
                  ++v234;
                  v233 = v272;
                }

                while (2 * v272 > v234);
                v230 = v271;
              }

              ++v231;
              v232 += 32;
            }

            while (v231 < v230);
          }

LABEL_50:
          v20 = v42 == v255 >> 4;
          v42 = v46;
        }

        while (!v20);
        v20 = v17++ == v240;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v308 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v262 = a8;
  v241 = a8 + a10 - 1;
  if (*(v15 + 168))
  {
    v16 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v16 = 0;
  }

  v17 = a8 >> 4;
  v18 = a5 - 1;
  v19 = a6 - 1;
  v240 = v241 >> 4;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v257 = v23;
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
      v256 = 0;
LABEL_32:
      v253 = v25 - 4;
      v244 = v24 - 4;
      v31 = -1 << *(*(v15 + 208) + 48);
      v238 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v256 = v30 >= v24;
    goto LABEL_32;
  }

  v256 = 0;
  v238 = 0;
  v244 = 0;
  v253 = 0;
LABEL_33:
  if (v17 <= v240)
  {
    v255 = a7 + a9 - 1;
    if (a7 >> 4 <= v255 >> 4)
    {
      v32 = a11;
      v265 = v18 >> 4;
      v249 = v18 & 0xF;
      v254 = (v18 & 0xF) + 1;
      v236 = v19 & 0xF;
      v237 = v19 >> 4;
      v247 = 8 * a11;
      v248 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v34.i8 = vcgt_u32(v33, 0x1F0000001FLL);
      *v35.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v33, 4uLL))))))), *v34.i8);
      v243 = v35.i64[0];
      v246 = v35.i32[0] | v35.i32[1];
      v242 = v34.i64[0];
      v263 = v15;
      v245 = 2 * a11;
      do
      {
        v36 = (16 * v17) | 0xF;
        if (16 * v17 <= v262)
        {
          v37 = v262;
        }

        else
        {
          v37 = 16 * v17;
        }

        if (v241 < v36)
        {
          v36 = v241;
        }

        v252 = v37 - 16 * v17;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v236;
        v251 = v39;
        v41 = v39 != 16;
        v42 = a7 >> 4;
        v43 = v236 + 1;
        if (v17 != v237)
        {
          v43 = 16;
        }

        v264 = v43;
        if (v17 != v237)
        {
          v40 = v41;
        }

        v250 = v40;
        v44 = v17 & ~(-1 << v244);
        v260 = a2 + (v37 - v262) * v32;
        v45 = a7;
        do
        {
          v47 = 16 * v42;
          v48 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= v45)
          {
            v49 = v45;
          }

          else
          {
            v49 = 16 * v42;
          }

          if (v255 < v48)
          {
            v48 = a7 + a9 - 1;
          }

          v50 = v48 - v49;
          v51 = v50 + 1;
          if (v42 == v265)
          {
            v52 = v254;
          }

          else
          {
            v52 = 16;
          }

          v53 = 1;
          if (16 * v17 >= v262 && v47 >= v45)
          {
            v54 = v50 != v249;
            if (v42 != v265)
            {
              v54 = v51 != 16;
            }

            v53 = v54 || v250;
          }

          if (v256)
          {
            if (v253 | v244)
            {
              v55 = 0;
              v56 = 0;
              v57 = v244 != 0;
              v58 = 1;
              v60 = v253 != 0;
              v59 = v244;
              v61 = v253;
              do
              {
                --v61;
                if (v60)
                {
                  v56 |= (v42 & ~(-1 << v253) & v58) << v55++;
                }

                else
                {
                  v61 = 0;
                }

                --v59;
                if (v57)
                {
                  v56 |= (v44 & v58) << v55++;
                }

                else
                {
                  v59 = 0;
                }

                v58 *= 2;
                --v55;
                v57 = v59 != 0;
                v60 = v61 != 0;
              }

              while (v59 | v61);
              v62 = v56 << 9;
            }

            else
            {
              v62 = 0;
            }

            v70 = v62 + *(v15 + 336) * ((v42 >> v253) + (v17 >> v244) * v238);
          }

          else if (v246)
          {
            v63 = 0;
            v64 = 0;
            v65 = 1;
            v66 = v242;
            v67 = BYTE4(v242);
            v69 = v243;
            v68 = HIDWORD(v243);
            do
            {
              --v68;
              if (v67)
              {
                v64 |= (v65 & v42) << v63++;
              }

              else
              {
                v68 = 0;
              }

              --v69;
              if (v66)
              {
                v64 |= (v65 & v17) << v63++;
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

          v71 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v72 = v71 + 15;
          if (v72 < 0x20)
          {
            v73 = 0;
          }

          else
          {
            v73 = 32 - __clz(~(-1 << -__clz((v72 >> 4) - 1)));
          }

          v74 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v74 <= 1)
          {
            v74 = 1;
          }

          v75 = v74 + 15;
          if (v75 < 0x20)
          {
            v76 = 0;
            if (!v73)
            {
LABEL_107:
              v82 = 0;
              goto LABEL_108;
            }
          }

          else
          {
            v76 = 32 - __clz(~(-1 << -__clz((v75 >> 4) - 1)));
            if (!(v76 | v73))
            {
              goto LABEL_107;
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
              v78 |= (v81 & v42) << v77++;
            }

            else
            {
              v73 = 0;
            }

            --v76;
            if (v80)
            {
              v78 |= (v81 & v17) << v77++;
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
LABEL_108:
          v83 = (a3 + v70);
          if (v257)
          {
            v84 = v44;
            v85 = v51;
            v86 = v53;
            memcpy(__dst, (a3 + v70), sizeof(__dst));
            v53 = v86;
            v51 = v85;
            v44 = v84;
            v83 = __dst;
          }

          v87 = (a4 + v82);
          v88 = (v260 + 2 * (v49 - v45));
          if (!(v53 & 1 | (v52 < 0x10u)) && v264 > 0xF)
          {
            v89 = *v87;
            if (v89 == 63)
            {
              v98 = *v83;
              v34 = v83[1];
              v99 = v83[2];
              v100 = v83[3];
              *v88 = vuzp1q_s32(*v83, v99);
              v32 = a11;
              *(v88 + a11) = vuzp2q_s32(v98, v99);
              v91 = 3 * a11;
              v90 = 2 * a11;
              v101 = (v88 + v245);
              *v101 = vuzp1q_s32(v34, v100);
              v35 = vuzp2q_s32(v34, v100);
              *(v101 + a11) = v35;
              v92 = 64;
            }

            else
            {
              v32 = a11;
              v91 = 3 * a11;
              v90 = 2 * a11;
              if (v89 == 1)
              {
                v35 = vld1q_dup_s16(v83->i16);
                *v88 = v35;
                *(v88 + a11) = v35;
                *(v88 + 2 * a11) = v35;
                *(v88 + 3 * a11) = v35;
                v92 = 2;
              }

              else if (*v87)
              {
                v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v88, a11, v83, v89, *v35.i8, *v34.i8);
              }

              else
              {
                v92 = 0;
                v88->i64[0] = 0;
                v88->i64[1] = 0;
                v93 = (v88->i64 + a11);
                *v93 = 0;
                v93[1] = 0;
                v94 = (v88->i64 + v245);
                *v94 = 0;
                v94[1] = 0;
                v95 = (v88->i64 + 3 * a11);
                *v95 = 0;
                v95[1] = 0;
              }
            }

            v102 = v83->i64 + v92;
            v103 = (v88 + v248);
            v104 = v87[1];
            if (v104 == 63)
            {
              v109 = *v102;
              v34 = *(v102 + 16);
              v110 = *(v102 + 32);
              v111 = *(v102 + 48);
              *v103 = vuzp1q_s32(*v102, v110);
              *(v103 + v32) = vuzp2q_s32(v109, v110);
              v112 = (v103 + v90);
              *v112 = vuzp1q_s32(v34, v111);
              v35 = vuzp2q_s32(v34, v111);
              *(v112 + v32) = v35;
              v105 = 64;
            }

            else if (v104 == 1)
            {
              v35 = vld1q_dup_s16(v102);
              *v103 = v35;
              *(v103 + v32) = v35;
              *(v103 + v90) = v35;
              *(v103 + v91) = v35;
              v105 = 2;
            }

            else if (v87[1])
            {
              v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v88 + v248), v32, v102, v104, *v35.i8, *v34.i8);
            }

            else
            {
              v105 = 0;
              v103->i64[0] = 0;
              v103->i64[1] = 0;
              v106 = (v103->i64 + v32);
              *v106 = 0;
              v106[1] = 0;
              v107 = (v103->i64 + v90);
              *v107 = 0;
              v107[1] = 0;
              v108 = (v103->i64 + v91);
              *v108 = 0;
              v108[1] = 0;
            }

            v113 = v102 + v105;
            v114 = v88 + 1;
            v115 = v87[2];
            if (v115 == 63)
            {
              v120 = *v113;
              v34 = *(v113 + 16);
              v121 = *(v113 + 32);
              v122 = *(v113 + 48);
              *v114 = vuzp1q_s32(*v113, v121);
              *(v114 + v32) = vuzp2q_s32(v120, v121);
              v123 = (v114 + v90);
              *v123 = vuzp1q_s32(v34, v122);
              v35 = vuzp2q_s32(v34, v122);
              *(v123 + v32) = v35;
              v116 = 64;
            }

            else if (v115 == 1)
            {
              v35 = vld1q_dup_s16(v113);
              *v114 = v35;
              *(v114 + v32) = v35;
              *(v114 + v90) = v35;
              *(v114 + v91) = v35;
              v116 = 2;
            }

            else if (v87[2])
            {
              v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v114, v32, v113, v115, *v35.i8, *v34.i8);
            }

            else
            {
              v116 = 0;
              v114->i64[0] = 0;
              v88[1].i64[1] = 0;
              v117 = (v114->i64 + v32);
              *v117 = 0;
              v117[1] = 0;
              v118 = (v114->i64 + v90);
              *v118 = 0;
              v118[1] = 0;
              v119 = (v114->i64 + v91);
              *v119 = 0;
              v119[1] = 0;
            }

            v124 = v113 + v116;
            v125 = v103 + 1;
            v126 = v87[3];
            if (v126 == 63)
            {
              v131 = *v124;
              v34 = *(v124 + 16);
              v132 = *(v124 + 32);
              v133 = *(v124 + 48);
              *v125 = vuzp1q_s32(*v124, v132);
              *(v125 + v32) = vuzp2q_s32(v131, v132);
              v134 = (v125 + v90);
              *v134 = vuzp1q_s32(v34, v133);
              v35 = vuzp2q_s32(v34, v133);
              *(v134 + v32) = v35;
              v127 = 64;
            }

            else if (v126 == 1)
            {
              v35 = vld1q_dup_s16(v124);
              *v125 = v35;
              *(v125 + v32) = v35;
              *(v125 + v90) = v35;
              *(v125 + v91) = v35;
              v127 = 2;
            }

            else if (v87[3])
            {
              v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v125, v32, v124, v126, *v35.i8, *v34.i8);
            }

            else
            {
              v127 = 0;
              v125->i64[0] = 0;
              v103[1].i64[1] = 0;
              v128 = (v125->i64 + v32);
              *v128 = 0;
              v128[1] = 0;
              v129 = (v125->i64 + v90);
              *v129 = 0;
              v129[1] = 0;
              v130 = (v125->i64 + v91);
              *v130 = 0;
              v130[1] = 0;
            }

            v135 = v124 + v127;
            v136 = (v88 + v247);
            v137 = v87[4];
            if (v137 == 63)
            {
              v142 = *v135;
              v34 = *(v135 + 16);
              v143 = *(v135 + 32);
              v144 = *(v135 + 48);
              *v136 = vuzp1q_s32(*v135, v143);
              *(v136 + v32) = vuzp2q_s32(v142, v143);
              v145 = (v136 + v90);
              *v145 = vuzp1q_s32(v34, v144);
              v35 = vuzp2q_s32(v34, v144);
              *(v145 + v32) = v35;
              v138 = 64;
            }

            else if (v137 == 1)
            {
              v35 = vld1q_dup_s16(v135);
              *v136 = v35;
              *(v136 + v32) = v35;
              *(v136 + v90) = v35;
              *(v136 + v91) = v35;
              v138 = 2;
            }

            else if (v87[4])
            {
              v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v88 + v247), v32, v135, v137, *v35.i8, *v34.i8);
            }

            else
            {
              v138 = 0;
              v136->i64[0] = 0;
              v136->i64[1] = 0;
              v139 = (v136->i64 + v32);
              *v139 = 0;
              v139[1] = 0;
              v140 = (v136->i64 + v90);
              *v140 = 0;
              v140[1] = 0;
              v141 = (v136->i64 + v91);
              *v141 = 0;
              v141[1] = 0;
            }

            v146 = v135 + v138;
            v147 = (v88 + 12 * a11);
            v148 = v87[5];
            if (v148 == 63)
            {
              v153 = *v146;
              v34 = *(v146 + 16);
              v154 = *(v146 + 32);
              v155 = *(v146 + 48);
              *v147 = vuzp1q_s32(*v146, v154);
              *(v147 + v32) = vuzp2q_s32(v153, v154);
              v156 = (v147 + v90);
              *v156 = vuzp1q_s32(v34, v155);
              v35 = vuzp2q_s32(v34, v155);
              *(v156 + v32) = v35;
              v149 = 64;
            }

            else if (v148 == 1)
            {
              v35 = vld1q_dup_s16(v146);
              *v147 = v35;
              *(v147 + v32) = v35;
              *(v147 + v90) = v35;
              *(v147 + v91) = v35;
              v149 = 2;
            }

            else if (v87[5])
            {
              v149 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v147, v32, v146, v148, *v35.i8, *v34.i8);
            }

            else
            {
              v149 = 0;
              v147->i64[0] = 0;
              v147->i64[1] = 0;
              v150 = (v147->i64 + v32);
              *v150 = 0;
              v150[1] = 0;
              v151 = (v147->i64 + v90);
              *v151 = 0;
              v151[1] = 0;
              v152 = (v147->i64 + v91);
              *v152 = 0;
              v152[1] = 0;
            }

            v157 = v146 + v149;
            v158 = v136 + 1;
            v159 = v87[6];
            if (v159 == 63)
            {
              v164 = *v157;
              v34 = *(v157 + 16);
              v165 = *(v157 + 32);
              v166 = *(v157 + 48);
              *v158 = vuzp1q_s32(*v157, v165);
              *(v158 + v32) = vuzp2q_s32(v164, v165);
              v167 = (v158 + v90);
              *v167 = vuzp1q_s32(v34, v166);
              v35 = vuzp2q_s32(v34, v166);
              *(v167 + v32) = v35;
              v160 = 64;
            }

            else if (v159 == 1)
            {
              v35 = vld1q_dup_s16(v157);
              *v158 = v35;
              *(v158 + v32) = v35;
              *(v158 + v90) = v35;
              *(v158 + v91) = v35;
              v160 = 2;
            }

            else if (v87[6])
            {
              v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v158, v32, v157, v159, *v35.i8, *v34.i8);
            }

            else
            {
              v160 = 0;
              v158->i64[0] = 0;
              v136[1].i64[1] = 0;
              v161 = (v158->i64 + v32);
              *v161 = 0;
              v161[1] = 0;
              v162 = (v158->i64 + v90);
              *v162 = 0;
              v162[1] = 0;
              v163 = (v158->i64 + v91);
              *v163 = 0;
              v163[1] = 0;
            }

            v168 = v157 + v160;
            v169 = v147 + 1;
            v170 = v87[7];
            if (v170 == 63)
            {
              v174 = *v168;
              v34 = *(v168 + 16);
              v175 = *(v168 + 32);
              v176 = *(v168 + 48);
              *v169 = vuzp1q_s32(*v168, v175);
              *(v169 + v32) = vuzp2q_s32(v174, v175);
              v177 = (v169 + v90);
              *v177 = vuzp1q_s32(v34, v176);
              v35 = vuzp2q_s32(v34, v176);
              *(v177 + v32) = v35;
              v45 = a7;
              v15 = v263;
            }

            else
            {
              v45 = a7;
              v15 = v263;
              if (v170 == 1)
              {
                v35 = vld1q_dup_s16(v168);
                *v169 = v35;
                *(v169 + v32) = v35;
                *(v169 + v90) = v35;
                *(v169 + v91) = v35;
              }

              else if (v170)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v169, v32, v168, v170, *v35.i8, *v34.i8);
              }

              else
              {
                v169->i64[0] = 0;
                v169->i64[1] = 0;
                v171 = (v169->i64 + v32);
                *v171 = 0;
                v171[1] = 0;
                v172 = (v169->i64 + v90);
                *v172 = 0;
                v172[1] = 0;
                v173 = (v169->i64 + v91);
                *v173 = 0;
                v173[1] = 0;
              }
            }

            goto LABEL_49;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v263;
          block[5] = v83;
          v273 = v52;
          v274 = v264;
          v269 = v252;
          v270 = v49 - v47;
          block[6] = v87;
          v267 = v88;
          v32 = a11;
          v268 = a11;
          v271 = v251;
          v272 = v51;
          if (v53)
          {
            dispatch_sync(*(*(v263 + 8) + 16552), block);
            v45 = a7;
            v15 = v263;
LABEL_49:
            v46 = v42 + 1;
            goto LABEL_50;
          }

          v96 = *v87;
          if (v96 == 63)
          {
            v178 = v83[1];
            v179 = v83[2];
            v180 = v83[3];
            v181 = vuzp2q_s32(*v83, v179);
            v276 = vuzp1q_s32(*v83, v179);
            v278 = v181;
            v35 = vuzp1q_s32(v178, v180);
            v34 = vuzp2q_s32(v178, v180);
            v280 = v35;
            v282 = v34;
            v97 = 64;
          }

          else if (v96 == 1)
          {
            v35 = vld1q_dup_s16(v83->i16);
            v276 = v35;
            v278 = v35;
            v280 = v35;
            v282 = v35;
            v97 = 2;
          }

          else if (*v87)
          {
            v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v276, 32, v83, v96, *v35.i8, *v34.i8);
          }

          else
          {
            v97 = 0;
            v276 = 0uLL;
            v278 = 0uLL;
            v280 = 0uLL;
            v282 = 0uLL;
          }

          v182 = v83->i64 + v97;
          v183 = v87[1];
          if (v183 == 63)
          {
            v185 = *(v182 + 16);
            v186 = *(v182 + 32);
            v187 = *(v182 + 48);
            v188 = vuzp2q_s32(*v182, v186);
            v284 = vuzp1q_s32(*v182, v186);
            v286 = v188;
            v35 = vuzp1q_s32(v185, v187);
            v34 = vuzp2q_s32(v185, v187);
            v288 = v35;
            v290 = v34;
            v184 = 64;
          }

          else if (v183 == 1)
          {
            v35 = vld1q_dup_s16(v182);
            v284 = v35;
            v286 = v35;
            v288 = v35;
            v290 = v35;
            v184 = 2;
          }

          else if (v87[1])
          {
            v184 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v284, 32, v182, v183, *v35.i8, *v34.i8);
          }

          else
          {
            v184 = 0;
            v284 = 0uLL;
            v286 = 0uLL;
            v288 = 0uLL;
            v290 = 0uLL;
          }

          v189 = v182 + v184;
          v190 = v87[2];
          if (v190 == 63)
          {
            v192 = *(v189 + 16);
            v193 = *(v189 + 32);
            v194 = *(v189 + 48);
            v195 = vuzp2q_s32(*v189, v193);
            v277 = vuzp1q_s32(*v189, v193);
            v279 = v195;
            v35 = vuzp1q_s32(v192, v194);
            v34 = vuzp2q_s32(v192, v194);
            v281 = v35;
            v283 = v34;
            v191 = 64;
          }

          else if (v190 == 1)
          {
            v35 = vld1q_dup_s16(v189);
            v277 = v35;
            v279 = v35;
            v281 = v35;
            v283 = v35;
            v191 = 2;
          }

          else if (v87[2])
          {
            v191 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v277, 32, v189, v190, *v35.i8, *v34.i8);
          }

          else
          {
            v191 = 0;
            v277 = 0uLL;
            v279 = 0uLL;
            v281 = 0uLL;
            v283 = 0uLL;
          }

          v196 = v189 + v191;
          v197 = v87[3];
          if (v197 == 63)
          {
            v199 = *(v196 + 16);
            v200 = *(v196 + 32);
            v201 = *(v196 + 48);
            v202 = vuzp2q_s32(*v196, v200);
            v285 = vuzp1q_s32(*v196, v200);
            v287 = v202;
            v35 = vuzp1q_s32(v199, v201);
            v34 = vuzp2q_s32(v199, v201);
            v289 = v35;
            v291 = v34;
            v198 = 64;
          }

          else if (v197 == 1)
          {
            v35 = vld1q_dup_s16(v196);
            v285 = v35;
            v287 = v35;
            v289 = v35;
            v291 = v35;
            v198 = 2;
          }

          else if (v87[3])
          {
            v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v285, 32, v196, v197, *v35.i8, *v34.i8);
          }

          else
          {
            v198 = 0;
            v285 = 0uLL;
            v287 = 0uLL;
            v289 = 0uLL;
            v291 = 0uLL;
          }

          v203 = v196 + v198;
          v204 = v87[4];
          if (v204 == 63)
          {
            v206 = *(v203 + 16);
            v207 = *(v203 + 32);
            v208 = *(v203 + 48);
            v209 = vuzp2q_s32(*v203, v207);
            v292 = vuzp1q_s32(*v203, v207);
            v294 = v209;
            v35 = vuzp1q_s32(v206, v208);
            v34 = vuzp2q_s32(v206, v208);
            v296 = v35;
            v298 = v34;
            v205 = 64;
          }

          else if (v204 == 1)
          {
            v35 = vld1q_dup_s16(v203);
            v292 = v35;
            v294 = v35;
            v296 = v35;
            v298 = v35;
            v205 = 2;
          }

          else if (v87[4])
          {
            v205 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v292, 32, v203, v204, *v35.i8, *v34.i8);
          }

          else
          {
            v205 = 0;
            v292 = 0uLL;
            v294 = 0uLL;
            v296 = 0uLL;
            v298 = 0uLL;
          }

          v210 = v203 + v205;
          v211 = v87[5];
          if (v211 == 63)
          {
            v213 = *(v210 + 16);
            v214 = *(v210 + 32);
            v215 = *(v210 + 48);
            v216 = vuzp2q_s32(*v210, v214);
            v300 = vuzp1q_s32(*v210, v214);
            v302 = v216;
            v35 = vuzp1q_s32(v213, v215);
            v34 = vuzp2q_s32(v213, v215);
            v304 = v35;
            v306 = v34;
            v212 = 64;
          }

          else if (v211 == 1)
          {
            v35 = vld1q_dup_s16(v210);
            v300 = v35;
            v302 = v35;
            v304 = v35;
            v306 = v35;
            v212 = 2;
          }

          else if (v87[5])
          {
            v212 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v300, 32, v210, v211, *v35.i8, *v34.i8);
          }

          else
          {
            v212 = 0;
            v300 = 0uLL;
            v302 = 0uLL;
            v304 = 0uLL;
            v306 = 0uLL;
          }

          v217 = v210 + v212;
          v218 = v87[6];
          if (v218 == 63)
          {
            v220 = *(v217 + 16);
            v221 = *(v217 + 32);
            v222 = *(v217 + 48);
            v223 = vuzp2q_s32(*v217, v221);
            v293 = vuzp1q_s32(*v217, v221);
            v295 = v223;
            v35 = vuzp1q_s32(v220, v222);
            v34 = vuzp2q_s32(v220, v222);
            v297 = v35;
            v299 = v34;
            v219 = 64;
          }

          else if (v218 == 1)
          {
            v35 = vld1q_dup_s16(v217);
            v293 = v35;
            v295 = v35;
            v297 = v35;
            v299 = v35;
            v219 = 2;
          }

          else if (v87[6])
          {
            v219 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v293, 32, v217, v218, *v35.i8, *v34.i8);
          }

          else
          {
            v219 = 0;
            v293 = 0uLL;
            v295 = 0uLL;
            v297 = 0uLL;
            v299 = 0uLL;
          }

          v224 = v217 + v219;
          v225 = v87[7];
          if (v225 == 63)
          {
            v226 = *(v224 + 16);
            v227 = *(v224 + 32);
            v228 = *(v224 + 48);
            v229 = vuzp2q_s32(*v224, v227);
            v301 = vuzp1q_s32(*v224, v227);
            v303 = v229;
            v35 = vuzp1q_s32(v226, v228);
            v34 = vuzp2q_s32(v226, v228);
            v305 = v35;
            v307 = v34;
            v45 = a7;
            v15 = v263;
          }

          else
          {
            v45 = a7;
            v15 = v263;
            if (v225 == 1)
            {
              v35 = vld1q_dup_s16(v224);
              v301 = v35;
              v303 = v35;
              v305 = v35;
              v307 = v35;
            }

            else if (v225)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v301, 32, v224, v225, *v35.i8, *v34.i8);
            }

            else
            {
              v301 = 0uLL;
              v303 = 0uLL;
              v305 = 0uLL;
              v307 = 0uLL;
            }
          }

          v230 = v271;
          v46 = v42 + 1;
          if (v271)
          {
            v231 = 0;
            v232 = &v276.i8[32 * v269 + 2 * v270];
            v233 = v272;
            do
            {
              if (v233)
              {
                v234 = 0;
                v235 = &v267->i8[v268 * v231];
                do
                {
                  v235[v234] = v232[v234];
                  ++v234;
                  v233 = v272;
                }

                while (2 * v272 > v234);
                v230 = v271;
              }

              ++v231;
              v232 += 32;
            }

            while (v231 < v230);
          }

LABEL_50:
          v20 = v42 == v255 >> 4;
          v42 = v46;
        }

        while (!v20);
        v20 = v17++ == v240;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v302 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v255 = a8;
  v16 = a8 >> 4;
  v235 = a8 + a10 - 1;
  v237 = v235 >> 4;
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
  v250 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v237)
  {
    v248 = a7 + a9 - 1;
    if (a7 >> 4 <= v248 >> 4)
    {
      v24 = a11;
      v259 = (a5 - 1) >> 4;
      v232 = a5 - 1;
      v241 = (a5 - 1) & 0xF;
      v233 = (a6 - 1) & 0xF;
      v234 = (a6 - 1) >> 4;
      v239 = 8 * a11;
      v240 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v26.i8 = vcgt_u32(v25, 0x1F0000001FLL);
      *v27.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 4uLL))))))), *v26.i8);
      v246 = v27.i64[0];
      v247 = v27.i32[0] | v27.i32[1];
      v245 = v26.i64[0];
      v231 = 8 * v18 * v17;
      v257 = v15;
      v238 = 2 * a11;
      do
      {
        v28 = (16 * v16) | 0xF;
        if (16 * v16 <= v255)
        {
          v29 = v255;
        }

        else
        {
          v29 = 16 * v16;
        }

        if (v235 < v28)
        {
          v28 = v235;
        }

        v254 = 16 * v16;
        v244 = v29 - 16 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v233;
        v243 = v31;
        v33 = v31 != 16;
        v34 = a7 >> 4;
        v35 = v233 + 1;
        if (v16 != v234)
        {
          v35 = 16;
        }

        v258 = v35;
        if (v16 != v234)
        {
          v32 = v33;
        }

        v242 = v32;
        v253 = a2 + (v29 - v255) * v24;
        v36 = a7;
        do
        {
          v37 = 16 * v34;
          v38 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = 16 * v34;
          }

          if (v248 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v34 == v259)
          {
            v42 = v241 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v254 >= v255 && v37 >= v36)
          {
            v44 = v40 != v241;
            if (v34 != v259)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v242;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v231 >> (*(v15 + 57) != 0);
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
              v69 = 16;
              v68 = 1;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v65 = 16;
              v68 = 1;
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

            v221 = (v65 >> 4) - 1;
            if (v67)
            {
              v222 = 0;
              if (v68)
              {
                goto LABEL_234;
              }

LABEL_223:
              v223 = 32 - __clz(~(-1 << -__clz(((v69 + 15) >> 4) - 1)));
              if (v223 | v222)
              {
                goto LABEL_224;
              }

LABEL_235:
              v230 = 0;
            }

            else
            {
              v222 = 32 - __clz(~(-1 << -__clz(v221)));
              if ((v68 & 1) == 0)
              {
                goto LABEL_223;
              }

LABEL_234:
              v223 = 0;
              if (!v222)
              {
                goto LABEL_235;
              }

LABEL_224:
              v224 = 0;
              v225 = 0;
              v226 = v34 & v221;
              v227 = v222 != 0;
              v228 = v223 != 0;
              v229 = 1;
              do
              {
                --v222;
                if (v227)
                {
                  v225 |= (v229 & v226) << v224++;
                }

                else
                {
                  v222 = 0;
                }

                --v223;
                if (v228)
                {
                  v225 |= (v229 & v16 & ((v69 >> 4) - 1)) << v224++;
                }

                else
                {
                  v223 = 0;
                }

                v229 *= 2;
                --v224;
                v228 = v223 != 0;
                v227 = v222 != 0;
              }

              while (v223 | v222);
              v230 = v225 << 9;
            }

            v52 = v230 + ((v37 / v65 + v254 / v69 * ((v65 + v232) / v65)) << 14);
            goto LABEL_55;
          }

          if (v247)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v245;
            v49 = BYTE4(v245);
            v51 = v246;
            v50 = HIDWORD(v246);
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v34) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v16) << v45++;
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

LABEL_55:
          v53 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v56 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 15;
          if (v57 < 0x20)
          {
            v58 = 0;
            if (!v55)
            {
LABEL_80:
              v64 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
            if (!(v58 | v55))
            {
              goto LABEL_80;
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
              v60 |= (v63 & v34) << v59++;
            }

            else
            {
              v55 = 0;
            }

            --v58;
            if (v62)
            {
              v60 |= (v63 & v16) << v59++;
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
LABEL_81:
          v70 = (a3 + v52);
          if (v250)
          {
            memcpy(__dst, v70, sizeof(__dst));
            v70 = __dst;
          }

          v71 = (a4 + v64);
          v72 = (v253 + 2 * (v39 - v36));
          if (v43 & 1 | (v42 < 0x10u) || v258 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v257;
            block[5] = v70;
            v267 = v42;
            v268 = v258;
            v263 = v244;
            v264 = v39 - v37;
            block[6] = v71;
            v261 = v72;
            v24 = a11;
            v262 = a11;
            v265 = v243;
            v266 = v41;
            if (v43)
            {
              dispatch_sync(*(*(v257 + 8) + 16552), block);
              v36 = a7;
              v15 = v257;
LABEL_145:
              v155 = v34 + 1;
              goto LABEL_29;
            }

            v80 = *v71;
            v36 = a7;
            if (v80 == 63)
            {
              v163 = v70[1];
              v164 = v70[2];
              v165 = v70[3];
              v166 = vuzp2q_s32(*v70, v164);
              v270 = vuzp1q_s32(*v70, v164);
              v272 = v166;
              v27 = vuzp1q_s32(v163, v165);
              v26 = vuzp2q_s32(v163, v165);
              v274 = v27;
              v276 = v26;
              v81 = 64;
            }

            else if (v80 == 1)
            {
              v27 = vld1q_dup_s16(v70->i16);
              v270 = v27;
              v272 = v27;
              v274 = v27;
              v276 = v27;
              v81 = 2;
            }

            else if (*v71)
            {
              v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v270, 32, v70, v80, *v27.i8, *v26.i8);
            }

            else
            {
              v81 = 0;
              v270 = 0uLL;
              v272 = 0uLL;
              v274 = 0uLL;
              v276 = 0uLL;
            }

            v167 = v70->i64 + v81;
            v168 = v71[1];
            if (v168 == 63)
            {
              v170 = *(v167 + 16);
              v171 = *(v167 + 32);
              v172 = *(v167 + 48);
              v173 = vuzp2q_s32(*v167, v171);
              v278 = vuzp1q_s32(*v167, v171);
              v280 = v173;
              v27 = vuzp1q_s32(v170, v172);
              v26 = vuzp2q_s32(v170, v172);
              v282 = v27;
              v284 = v26;
              v169 = 64;
            }

            else if (v168 == 1)
            {
              v27 = vld1q_dup_s16(v167);
              v278 = v27;
              v280 = v27;
              v282 = v27;
              v284 = v27;
              v169 = 2;
            }

            else if (v71[1])
            {
              v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 32, v167, v168, *v27.i8, *v26.i8);
            }

            else
            {
              v169 = 0;
              v278 = 0uLL;
              v280 = 0uLL;
              v282 = 0uLL;
              v284 = 0uLL;
            }

            v174 = v167 + v169;
            v175 = v71[2];
            if (v175 == 63)
            {
              v177 = *(v174 + 16);
              v178 = *(v174 + 32);
              v179 = *(v174 + 48);
              v180 = vuzp2q_s32(*v174, v178);
              v271 = vuzp1q_s32(*v174, v178);
              v273 = v180;
              v27 = vuzp1q_s32(v177, v179);
              v26 = vuzp2q_s32(v177, v179);
              v275 = v27;
              v277 = v26;
              v176 = 64;
            }

            else if (v175 == 1)
            {
              v27 = vld1q_dup_s16(v174);
              v271 = v27;
              v273 = v27;
              v275 = v27;
              v277 = v27;
              v176 = 2;
            }

            else if (v71[2])
            {
              v176 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v271, 32, v174, v175, *v27.i8, *v26.i8);
            }

            else
            {
              v176 = 0;
              v271 = 0uLL;
              v273 = 0uLL;
              v275 = 0uLL;
              v277 = 0uLL;
            }

            v181 = v174 + v176;
            v182 = v71[3];
            if (v182 == 63)
            {
              v184 = *(v181 + 16);
              v185 = *(v181 + 32);
              v186 = *(v181 + 48);
              v187 = vuzp2q_s32(*v181, v185);
              v279 = vuzp1q_s32(*v181, v185);
              v281 = v187;
              v27 = vuzp1q_s32(v184, v186);
              v26 = vuzp2q_s32(v184, v186);
              v283 = v27;
              v285 = v26;
              v183 = 64;
            }

            else if (v182 == 1)
            {
              v27 = vld1q_dup_s16(v181);
              v279 = v27;
              v281 = v27;
              v283 = v27;
              v285 = v27;
              v183 = 2;
            }

            else if (v71[3])
            {
              v183 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v279, 32, v181, v182, *v27.i8, *v26.i8);
            }

            else
            {
              v183 = 0;
              v279 = 0uLL;
              v281 = 0uLL;
              v283 = 0uLL;
              v285 = 0uLL;
            }

            v188 = v181 + v183;
            v189 = v71[4];
            if (v189 == 63)
            {
              v191 = *(v188 + 16);
              v192 = *(v188 + 32);
              v193 = *(v188 + 48);
              v194 = vuzp2q_s32(*v188, v192);
              v286 = vuzp1q_s32(*v188, v192);
              v288 = v194;
              v27 = vuzp1q_s32(v191, v193);
              v26 = vuzp2q_s32(v191, v193);
              v290 = v27;
              v292 = v26;
              v190 = 64;
            }

            else if (v189 == 1)
            {
              v27 = vld1q_dup_s16(v188);
              v286 = v27;
              v288 = v27;
              v290 = v27;
              v292 = v27;
              v190 = 2;
            }

            else if (v71[4])
            {
              v190 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v286, 32, v188, v189, *v27.i8, *v26.i8);
            }

            else
            {
              v190 = 0;
              v286 = 0uLL;
              v288 = 0uLL;
              v290 = 0uLL;
              v292 = 0uLL;
            }

            v195 = v188 + v190;
            v196 = v71[5];
            if (v196 == 63)
            {
              v198 = *(v195 + 16);
              v199 = *(v195 + 32);
              v200 = *(v195 + 48);
              v201 = vuzp2q_s32(*v195, v199);
              v294 = vuzp1q_s32(*v195, v199);
              v296 = v201;
              v27 = vuzp1q_s32(v198, v200);
              v26 = vuzp2q_s32(v198, v200);
              v298 = v27;
              v300 = v26;
              v197 = 64;
            }

            else if (v196 == 1)
            {
              v27 = vld1q_dup_s16(v195);
              v294 = v27;
              v296 = v27;
              v298 = v27;
              v300 = v27;
              v197 = 2;
            }

            else if (v71[5])
            {
              v197 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 32, v195, v196, *v27.i8, *v26.i8);
            }

            else
            {
              v197 = 0;
              v294 = 0uLL;
              v296 = 0uLL;
              v298 = 0uLL;
              v300 = 0uLL;
            }

            v202 = v195 + v197;
            v203 = v71[6];
            if (v203 == 63)
            {
              v205 = *(v202 + 16);
              v206 = *(v202 + 32);
              v207 = *(v202 + 48);
              v208 = vuzp2q_s32(*v202, v206);
              v287 = vuzp1q_s32(*v202, v206);
              v289 = v208;
              v27 = vuzp1q_s32(v205, v207);
              v26 = vuzp2q_s32(v205, v207);
              v291 = v27;
              v293 = v26;
              v204 = 64;
            }

            else if (v203 == 1)
            {
              v27 = vld1q_dup_s16(v202);
              v287 = v27;
              v289 = v27;
              v291 = v27;
              v293 = v27;
              v204 = 2;
            }

            else if (v71[6])
            {
              v204 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v287, 32, v202, v203, *v27.i8, *v26.i8);
            }

            else
            {
              v204 = 0;
              v287 = 0uLL;
              v289 = 0uLL;
              v291 = 0uLL;
              v293 = 0uLL;
            }

            v209 = v202 + v204;
            v210 = v71[7];
            if (v210 == 63)
            {
              v211 = *(v209 + 16);
              v212 = *(v209 + 32);
              v213 = *(v209 + 48);
              v214 = vuzp2q_s32(*v209, v212);
              v295 = vuzp1q_s32(*v209, v212);
              v297 = v214;
              v27 = vuzp1q_s32(v211, v213);
              v26 = vuzp2q_s32(v211, v213);
              v299 = v27;
              v301 = v26;
              v15 = v257;
              v155 = v34 + 1;
            }

            else
            {
              v15 = v257;
              v155 = v34 + 1;
              if (v210 == 1)
              {
                v27 = vld1q_dup_s16(v209);
                v295 = v27;
                v297 = v27;
                v299 = v27;
                v301 = v27;
              }

              else if (v210)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v295, 32, v209, v210, *v27.i8, *v26.i8);
              }

              else
              {
                v295 = 0uLL;
                v297 = 0uLL;
                v299 = 0uLL;
                v301 = 0uLL;
              }
            }

            v215 = v265;
            if (v265)
            {
              v216 = 0;
              v217 = &v270.i8[32 * v263 + 2 * v264];
              v218 = v266;
              do
              {
                if (v218)
                {
                  v219 = 0;
                  v220 = &v261->i8[v262 * v216];
                  do
                  {
                    v220[v219] = v217[v219];
                    ++v219;
                    v218 = v266;
                  }

                  while (2 * v266 > v219);
                  v215 = v265;
                }

                ++v216;
                v217 += 32;
              }

              while (v216 < v215);
            }
          }

          else
          {
            v73 = *v71;
            if (v73 == 63)
            {
              v82 = *v70;
              v26 = v70[1];
              v83 = v70[2];
              v84 = v70[3];
              *v72 = vuzp1q_s32(*v70, v83);
              v24 = a11;
              *(v72 + a11) = vuzp2q_s32(v82, v83);
              v75 = 3 * a11;
              v74 = 2 * a11;
              v85 = (v72 + v238);
              *v85 = vuzp1q_s32(v26, v84);
              v27 = vuzp2q_s32(v26, v84);
              *(v85 + a11) = v27;
              v76 = 64;
            }

            else
            {
              v24 = a11;
              v75 = 3 * a11;
              v74 = 2 * a11;
              if (v73 == 1)
              {
                v27 = vld1q_dup_s16(v70->i16);
                *v72 = v27;
                *(v72 + a11) = v27;
                *(v72 + 2 * a11) = v27;
                *(v72 + 3 * a11) = v27;
                v76 = 2;
              }

              else if (*v71)
              {
                v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v72, a11, v70, v73, *v27.i8, *v26.i8);
              }

              else
              {
                v76 = 0;
                v72->i64[0] = 0;
                v72->i64[1] = 0;
                v77 = (v72->i64 + a11);
                *v77 = 0;
                v77[1] = 0;
                v78 = (v72->i64 + v238);
                *v78 = 0;
                v78[1] = 0;
                v79 = (v72->i64 + 3 * a11);
                *v79 = 0;
                v79[1] = 0;
              }
            }

            v86 = v70->i64 + v76;
            v87 = (v72 + v240);
            v88 = v71[1];
            if (v88 == 63)
            {
              v93 = *v86;
              v26 = *(v86 + 16);
              v94 = *(v86 + 32);
              v95 = *(v86 + 48);
              *v87 = vuzp1q_s32(*v86, v94);
              *(v87 + v24) = vuzp2q_s32(v93, v94);
              v96 = (v87 + v74);
              *v96 = vuzp1q_s32(v26, v95);
              v27 = vuzp2q_s32(v26, v95);
              *(v96 + v24) = v27;
              v89 = 64;
            }

            else if (v88 == 1)
            {
              v27 = vld1q_dup_s16(v86);
              *v87 = v27;
              *(v87 + v24) = v27;
              *(v87 + v74) = v27;
              *(v87 + v75) = v27;
              v89 = 2;
            }

            else if (v71[1])
            {
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v240), v24, v86, v88, *v27.i8, *v26.i8);
            }

            else
            {
              v89 = 0;
              v87->i64[0] = 0;
              v87->i64[1] = 0;
              v90 = (v87->i64 + v24);
              *v90 = 0;
              v90[1] = 0;
              v91 = (v87->i64 + v74);
              *v91 = 0;
              v91[1] = 0;
              v92 = (v87->i64 + v75);
              *v92 = 0;
              v92[1] = 0;
            }

            v97 = v86 + v89;
            v98 = v72 + 1;
            v99 = v71[2];
            if (v99 == 63)
            {
              v104 = *v97;
              v26 = *(v97 + 16);
              v105 = *(v97 + 32);
              v106 = *(v97 + 48);
              *v98 = vuzp1q_s32(*v97, v105);
              *(v98 + v24) = vuzp2q_s32(v104, v105);
              v107 = (v98 + v74);
              *v107 = vuzp1q_s32(v26, v106);
              v27 = vuzp2q_s32(v26, v106);
              *(v107 + v24) = v27;
              v100 = 64;
            }

            else if (v99 == 1)
            {
              v27 = vld1q_dup_s16(v97);
              *v98 = v27;
              *(v98 + v24) = v27;
              *(v98 + v74) = v27;
              *(v98 + v75) = v27;
              v100 = 2;
            }

            else if (v71[2])
            {
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v98, v24, v97, v99, *v27.i8, *v26.i8);
            }

            else
            {
              v100 = 0;
              v98->i64[0] = 0;
              v72[1].i64[1] = 0;
              v101 = (v98->i64 + v24);
              *v101 = 0;
              v101[1] = 0;
              v102 = (v98->i64 + v74);
              *v102 = 0;
              v102[1] = 0;
              v103 = (v98->i64 + v75);
              *v103 = 0;
              v103[1] = 0;
            }

            v108 = v97 + v100;
            v109 = v87 + 1;
            v110 = v71[3];
            if (v110 == 63)
            {
              v115 = *v108;
              v26 = *(v108 + 16);
              v116 = *(v108 + 32);
              v117 = *(v108 + 48);
              *v109 = vuzp1q_s32(*v108, v116);
              *(v109 + v24) = vuzp2q_s32(v115, v116);
              v118 = (v109 + v74);
              *v118 = vuzp1q_s32(v26, v117);
              v27 = vuzp2q_s32(v26, v117);
              *(v118 + v24) = v27;
              v111 = 64;
            }

            else if (v110 == 1)
            {
              v27 = vld1q_dup_s16(v108);
              *v109 = v27;
              *(v109 + v24) = v27;
              *(v109 + v74) = v27;
              *(v109 + v75) = v27;
              v111 = 2;
            }

            else if (v71[3])
            {
              v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v109, v24, v108, v110, *v27.i8, *v26.i8);
            }

            else
            {
              v111 = 0;
              v109->i64[0] = 0;
              v87[1].i64[1] = 0;
              v112 = (v109->i64 + v24);
              *v112 = 0;
              v112[1] = 0;
              v113 = (v109->i64 + v74);
              *v113 = 0;
              v113[1] = 0;
              v114 = (v109->i64 + v75);
              *v114 = 0;
              v114[1] = 0;
            }

            v119 = v108 + v111;
            v120 = (v72 + v239);
            v121 = v71[4];
            if (v121 == 63)
            {
              v126 = *v119;
              v26 = *(v119 + 16);
              v127 = *(v119 + 32);
              v128 = *(v119 + 48);
              *v120 = vuzp1q_s32(*v119, v127);
              *(v120 + v24) = vuzp2q_s32(v126, v127);
              v129 = (v120 + v74);
              *v129 = vuzp1q_s32(v26, v128);
              v27 = vuzp2q_s32(v26, v128);
              *(v129 + v24) = v27;
              v122 = 64;
            }

            else if (v121 == 1)
            {
              v27 = vld1q_dup_s16(v119);
              *v120 = v27;
              *(v120 + v24) = v27;
              *(v120 + v74) = v27;
              *(v120 + v75) = v27;
              v122 = 2;
            }

            else if (v71[4])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v239), v24, v119, v121, *v27.i8, *v26.i8);
            }

            else
            {
              v122 = 0;
              v120->i64[0] = 0;
              v120->i64[1] = 0;
              v123 = (v120->i64 + v24);
              *v123 = 0;
              v123[1] = 0;
              v124 = (v120->i64 + v74);
              *v124 = 0;
              v124[1] = 0;
              v125 = (v120->i64 + v75);
              *v125 = 0;
              v125[1] = 0;
            }

            v130 = v119 + v122;
            v131 = (v72 + 12 * a11);
            v132 = v71[5];
            if (v132 == 63)
            {
              v137 = *v130;
              v26 = *(v130 + 16);
              v138 = *(v130 + 32);
              v139 = *(v130 + 48);
              *v131 = vuzp1q_s32(*v130, v138);
              *(v131 + v24) = vuzp2q_s32(v137, v138);
              v140 = (v131 + v74);
              *v140 = vuzp1q_s32(v26, v139);
              v27 = vuzp2q_s32(v26, v139);
              *(v140 + v24) = v27;
              v133 = 64;
            }

            else if (v132 == 1)
            {
              v27 = vld1q_dup_s16(v130);
              *v131 = v27;
              *(v131 + v24) = v27;
              *(v131 + v74) = v27;
              *(v131 + v75) = v27;
              v133 = 2;
            }

            else if (v71[5])
            {
              v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v131, v24, v130, v132, *v27.i8, *v26.i8);
            }

            else
            {
              v133 = 0;
              v131->i64[0] = 0;
              v131->i64[1] = 0;
              v134 = (v131->i64 + v24);
              *v134 = 0;
              v134[1] = 0;
              v135 = (v131->i64 + v74);
              *v135 = 0;
              v135[1] = 0;
              v136 = (v131->i64 + v75);
              *v136 = 0;
              v136[1] = 0;
            }

            v141 = v130 + v133;
            v142 = v120 + 1;
            v143 = v71[6];
            if (v143 == 63)
            {
              v148 = *v141;
              v26 = *(v141 + 16);
              v149 = *(v141 + 32);
              v150 = *(v141 + 48);
              *v142 = vuzp1q_s32(*v141, v149);
              *(v142 + v24) = vuzp2q_s32(v148, v149);
              v151 = (v142 + v74);
              *v151 = vuzp1q_s32(v26, v150);
              v27 = vuzp2q_s32(v26, v150);
              *(v151 + v24) = v27;
              v144 = 64;
            }

            else if (v143 == 1)
            {
              v27 = vld1q_dup_s16(v141);
              *v142 = v27;
              *(v142 + v24) = v27;
              *(v142 + v74) = v27;
              *(v142 + v75) = v27;
              v144 = 2;
            }

            else if (v71[6])
            {
              v144 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v142, v24, v141, v143, *v27.i8, *v26.i8);
            }

            else
            {
              v144 = 0;
              v142->i64[0] = 0;
              v120[1].i64[1] = 0;
              v145 = (v142->i64 + v24);
              *v145 = 0;
              v145[1] = 0;
              v146 = (v142->i64 + v74);
              *v146 = 0;
              v146[1] = 0;
              v147 = (v142->i64 + v75);
              *v147 = 0;
              v147[1] = 0;
            }

            v152 = v141 + v144;
            v153 = v131 + 1;
            v154 = v71[7];
            if (v154 == 63)
            {
              v159 = *v152;
              v26 = *(v152 + 16);
              v160 = *(v152 + 32);
              v161 = *(v152 + 48);
              *v153 = vuzp1q_s32(*v152, v160);
              *(v153 + v24) = vuzp2q_s32(v159, v160);
              v162 = (v153 + v74);
              *v162 = vuzp1q_s32(v26, v161);
              v27 = vuzp2q_s32(v26, v161);
              *(v162 + v24) = v27;
              v36 = a7;
              v15 = v257;
              goto LABEL_145;
            }

            v36 = a7;
            v15 = v257;
            v155 = v34 + 1;
            if (v154 == 1)
            {
              v27 = vld1q_dup_s16(v152);
              *v153 = v27;
              *(v153 + v24) = v27;
              *(v153 + v74) = v27;
              *(v153 + v75) = v27;
            }

            else if (v154)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v153, v24, v152, v154, *v27.i8, *v26.i8);
            }

            else
            {
              v153->i64[0] = 0;
              v153->i64[1] = 0;
              v156 = (v153->i64 + v24);
              *v156 = 0;
              v156[1] = 0;
              v157 = (v153->i64 + v74);
              *v157 = 0;
              v157[1] = 0;
              v158 = (v153->i64 + v75);
              *v158 = 0;
              v158[1] = 0;
            }
          }

LABEL_29:
          v20 = v34 == v248 >> 4;
          v34 = v155;
        }

        while (!v20);
        v20 = v16++ == v237;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v302 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v255 = a8;
  v16 = a8 >> 4;
  v235 = a8 + a10 - 1;
  v237 = v235 >> 4;
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
  v250 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v237)
  {
    v248 = a7 + a9 - 1;
    if (a7 >> 4 <= v248 >> 4)
    {
      v24 = a11;
      v259 = (a5 - 1) >> 4;
      v232 = a5 - 1;
      v241 = (a5 - 1) & 0xF;
      v233 = (a6 - 1) & 0xF;
      v234 = (a6 - 1) >> 4;
      v239 = 8 * a11;
      v240 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v26.i8 = vcgt_u32(v25, 0x1F0000001FLL);
      *v27.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v25, 4uLL))))))), *v26.i8);
      v246 = v27.i64[0];
      v247 = v27.i32[0] | v27.i32[1];
      v245 = v26.i64[0];
      v231 = 8 * v18 * v17;
      v257 = v15;
      v238 = 2 * a11;
      do
      {
        v28 = (16 * v16) | 0xF;
        if (16 * v16 <= v255)
        {
          v29 = v255;
        }

        else
        {
          v29 = 16 * v16;
        }

        if (v235 < v28)
        {
          v28 = v235;
        }

        v254 = 16 * v16;
        v244 = v29 - 16 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v233;
        v243 = v31;
        v33 = v31 != 16;
        v34 = a7 >> 4;
        v35 = v233 + 1;
        if (v16 != v234)
        {
          v35 = 16;
        }

        v258 = v35;
        if (v16 != v234)
        {
          v32 = v33;
        }

        v242 = v32;
        v253 = a2 + (v29 - v255) * v24;
        v36 = a7;
        do
        {
          v37 = 16 * v34;
          v38 = 16 * (v34 + 1) - 1;
          if (16 * v34 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = 16 * v34;
          }

          if (v248 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v34 == v259)
          {
            v42 = v241 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v254 >= v255 && v37 >= v36)
          {
            v44 = v40 != v241;
            if (v34 != v259)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v242;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v231 >> (*(v15 + 57) != 0);
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
              v69 = 16;
              v68 = 1;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v65 = 16;
              v68 = 1;
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

            v221 = (v65 >> 4) - 1;
            if (v67)
            {
              v222 = 0;
              if (v68)
              {
                goto LABEL_234;
              }

LABEL_223:
              v223 = 32 - __clz(~(-1 << -__clz(((v69 + 15) >> 4) - 1)));
              if (v223 | v222)
              {
                goto LABEL_224;
              }

LABEL_235:
              v230 = 0;
            }

            else
            {
              v222 = 32 - __clz(~(-1 << -__clz(v221)));
              if ((v68 & 1) == 0)
              {
                goto LABEL_223;
              }

LABEL_234:
              v223 = 0;
              if (!v222)
              {
                goto LABEL_235;
              }

LABEL_224:
              v224 = 0;
              v225 = 0;
              v226 = v34 & v221;
              v227 = v222 != 0;
              v228 = v223 != 0;
              v229 = 1;
              do
              {
                --v222;
                if (v227)
                {
                  v225 |= (v229 & v226) << v224++;
                }

                else
                {
                  v222 = 0;
                }

                --v223;
                if (v228)
                {
                  v225 |= (v229 & v16 & ((v69 >> 4) - 1)) << v224++;
                }

                else
                {
                  v223 = 0;
                }

                v229 *= 2;
                --v224;
                v228 = v223 != 0;
                v227 = v222 != 0;
              }

              while (v223 | v222);
              v230 = v225 << 9;
            }

            v52 = v230 + ((v37 / v65 + v254 / v69 * ((v65 + v232) / v65)) << 14);
            goto LABEL_55;
          }

          if (v247)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v48 = v245;
            v49 = BYTE4(v245);
            v51 = v246;
            v50 = HIDWORD(v246);
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v34) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v16) << v45++;
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

LABEL_55:
          v53 = *(v15 + 128) >> (*(v15 + 144) + a12);
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

          v56 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 15;
          if (v57 < 0x20)
          {
            v58 = 0;
            if (!v55)
            {
LABEL_80:
              v64 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
            if (!(v58 | v55))
            {
              goto LABEL_80;
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
              v60 |= (v63 & v34) << v59++;
            }

            else
            {
              v55 = 0;
            }

            --v58;
            if (v62)
            {
              v60 |= (v63 & v16) << v59++;
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
LABEL_81:
          v70 = (a3 + v52);
          if (v250)
          {
            memcpy(__dst, v70, sizeof(__dst));
            v70 = __dst;
          }

          v71 = (a4 + v64);
          v72 = (v253 + 2 * (v39 - v36));
          if (v43 & 1 | (v42 < 0x10u) || v258 <= 0xF)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v257;
            block[5] = v70;
            v267 = v42;
            v268 = v258;
            v263 = v244;
            v264 = v39 - v37;
            block[6] = v71;
            v261 = v72;
            v24 = a11;
            v262 = a11;
            v265 = v243;
            v266 = v41;
            if (v43)
            {
              dispatch_sync(*(*(v257 + 8) + 16552), block);
              v36 = a7;
              v15 = v257;
LABEL_145:
              v155 = v34 + 1;
              goto LABEL_29;
            }

            v80 = *v71;
            v36 = a7;
            if (v80 == 63)
            {
              v163 = v70[1];
              v164 = v70[2];
              v165 = v70[3];
              v166 = vuzp2q_s32(*v70, v164);
              v270 = vuzp1q_s32(*v70, v164);
              v272 = v166;
              v27 = vuzp1q_s32(v163, v165);
              v26 = vuzp2q_s32(v163, v165);
              v274 = v27;
              v276 = v26;
              v81 = 64;
            }

            else if (v80 == 1)
            {
              v27 = vld1q_dup_s16(v70->i16);
              v270 = v27;
              v272 = v27;
              v274 = v27;
              v276 = v27;
              v81 = 2;
            }

            else if (*v71)
            {
              v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v270, 32, v70, v80, *v27.i8, *v26.i8);
            }

            else
            {
              v81 = 0;
              v270 = 0uLL;
              v272 = 0uLL;
              v274 = 0uLL;
              v276 = 0uLL;
            }

            v167 = v70->i64 + v81;
            v168 = v71[1];
            if (v168 == 63)
            {
              v170 = *(v167 + 16);
              v171 = *(v167 + 32);
              v172 = *(v167 + 48);
              v173 = vuzp2q_s32(*v167, v171);
              v278 = vuzp1q_s32(*v167, v171);
              v280 = v173;
              v27 = vuzp1q_s32(v170, v172);
              v26 = vuzp2q_s32(v170, v172);
              v282 = v27;
              v284 = v26;
              v169 = 64;
            }

            else if (v168 == 1)
            {
              v27 = vld1q_dup_s16(v167);
              v278 = v27;
              v280 = v27;
              v282 = v27;
              v284 = v27;
              v169 = 2;
            }

            else if (v71[1])
            {
              v169 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v278, 32, v167, v168, *v27.i8, *v26.i8);
            }

            else
            {
              v169 = 0;
              v278 = 0uLL;
              v280 = 0uLL;
              v282 = 0uLL;
              v284 = 0uLL;
            }

            v174 = v167 + v169;
            v175 = v71[2];
            if (v175 == 63)
            {
              v177 = *(v174 + 16);
              v178 = *(v174 + 32);
              v179 = *(v174 + 48);
              v180 = vuzp2q_s32(*v174, v178);
              v271 = vuzp1q_s32(*v174, v178);
              v273 = v180;
              v27 = vuzp1q_s32(v177, v179);
              v26 = vuzp2q_s32(v177, v179);
              v275 = v27;
              v277 = v26;
              v176 = 64;
            }

            else if (v175 == 1)
            {
              v27 = vld1q_dup_s16(v174);
              v271 = v27;
              v273 = v27;
              v275 = v27;
              v277 = v27;
              v176 = 2;
            }

            else if (v71[2])
            {
              v176 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v271, 32, v174, v175, *v27.i8, *v26.i8);
            }

            else
            {
              v176 = 0;
              v271 = 0uLL;
              v273 = 0uLL;
              v275 = 0uLL;
              v277 = 0uLL;
            }

            v181 = v174 + v176;
            v182 = v71[3];
            if (v182 == 63)
            {
              v184 = *(v181 + 16);
              v185 = *(v181 + 32);
              v186 = *(v181 + 48);
              v187 = vuzp2q_s32(*v181, v185);
              v279 = vuzp1q_s32(*v181, v185);
              v281 = v187;
              v27 = vuzp1q_s32(v184, v186);
              v26 = vuzp2q_s32(v184, v186);
              v283 = v27;
              v285 = v26;
              v183 = 64;
            }

            else if (v182 == 1)
            {
              v27 = vld1q_dup_s16(v181);
              v279 = v27;
              v281 = v27;
              v283 = v27;
              v285 = v27;
              v183 = 2;
            }

            else if (v71[3])
            {
              v183 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v279, 32, v181, v182, *v27.i8, *v26.i8);
            }

            else
            {
              v183 = 0;
              v279 = 0uLL;
              v281 = 0uLL;
              v283 = 0uLL;
              v285 = 0uLL;
            }

            v188 = v181 + v183;
            v189 = v71[4];
            if (v189 == 63)
            {
              v191 = *(v188 + 16);
              v192 = *(v188 + 32);
              v193 = *(v188 + 48);
              v194 = vuzp2q_s32(*v188, v192);
              v286 = vuzp1q_s32(*v188, v192);
              v288 = v194;
              v27 = vuzp1q_s32(v191, v193);
              v26 = vuzp2q_s32(v191, v193);
              v290 = v27;
              v292 = v26;
              v190 = 64;
            }

            else if (v189 == 1)
            {
              v27 = vld1q_dup_s16(v188);
              v286 = v27;
              v288 = v27;
              v290 = v27;
              v292 = v27;
              v190 = 2;
            }

            else if (v71[4])
            {
              v190 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v286, 32, v188, v189, *v27.i8, *v26.i8);
            }

            else
            {
              v190 = 0;
              v286 = 0uLL;
              v288 = 0uLL;
              v290 = 0uLL;
              v292 = 0uLL;
            }

            v195 = v188 + v190;
            v196 = v71[5];
            if (v196 == 63)
            {
              v198 = *(v195 + 16);
              v199 = *(v195 + 32);
              v200 = *(v195 + 48);
              v201 = vuzp2q_s32(*v195, v199);
              v294 = vuzp1q_s32(*v195, v199);
              v296 = v201;
              v27 = vuzp1q_s32(v198, v200);
              v26 = vuzp2q_s32(v198, v200);
              v298 = v27;
              v300 = v26;
              v197 = 64;
            }

            else if (v196 == 1)
            {
              v27 = vld1q_dup_s16(v195);
              v294 = v27;
              v296 = v27;
              v298 = v27;
              v300 = v27;
              v197 = 2;
            }

            else if (v71[5])
            {
              v197 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v294, 32, v195, v196, *v27.i8, *v26.i8);
            }

            else
            {
              v197 = 0;
              v294 = 0uLL;
              v296 = 0uLL;
              v298 = 0uLL;
              v300 = 0uLL;
            }

            v202 = v195 + v197;
            v203 = v71[6];
            if (v203 == 63)
            {
              v205 = *(v202 + 16);
              v206 = *(v202 + 32);
              v207 = *(v202 + 48);
              v208 = vuzp2q_s32(*v202, v206);
              v287 = vuzp1q_s32(*v202, v206);
              v289 = v208;
              v27 = vuzp1q_s32(v205, v207);
              v26 = vuzp2q_s32(v205, v207);
              v291 = v27;
              v293 = v26;
              v204 = 64;
            }

            else if (v203 == 1)
            {
              v27 = vld1q_dup_s16(v202);
              v287 = v27;
              v289 = v27;
              v291 = v27;
              v293 = v27;
              v204 = 2;
            }

            else if (v71[6])
            {
              v204 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v287, 32, v202, v203, *v27.i8, *v26.i8);
            }

            else
            {
              v204 = 0;
              v287 = 0uLL;
              v289 = 0uLL;
              v291 = 0uLL;
              v293 = 0uLL;
            }

            v209 = v202 + v204;
            v210 = v71[7];
            if (v210 == 63)
            {
              v211 = *(v209 + 16);
              v212 = *(v209 + 32);
              v213 = *(v209 + 48);
              v214 = vuzp2q_s32(*v209, v212);
              v295 = vuzp1q_s32(*v209, v212);
              v297 = v214;
              v27 = vuzp1q_s32(v211, v213);
              v26 = vuzp2q_s32(v211, v213);
              v299 = v27;
              v301 = v26;
              v15 = v257;
              v155 = v34 + 1;
            }

            else
            {
              v15 = v257;
              v155 = v34 + 1;
              if (v210 == 1)
              {
                v27 = vld1q_dup_s16(v209);
                v295 = v27;
                v297 = v27;
                v299 = v27;
                v301 = v27;
              }

              else if (v210)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v295, 32, v209, v210, *v27.i8, *v26.i8);
              }

              else
              {
                v295 = 0uLL;
                v297 = 0uLL;
                v299 = 0uLL;
                v301 = 0uLL;
              }
            }

            v215 = v265;
            if (v265)
            {
              v216 = 0;
              v217 = &v270.i8[32 * v263 + 2 * v264];
              v218 = v266;
              do
              {
                if (v218)
                {
                  v219 = 0;
                  v220 = &v261->i8[v262 * v216];
                  do
                  {
                    v220[v219] = v217[v219];
                    ++v219;
                    v218 = v266;
                  }

                  while (2 * v266 > v219);
                  v215 = v265;
                }

                ++v216;
                v217 += 32;
              }

              while (v216 < v215);
            }
          }

          else
          {
            v73 = *v71;
            if (v73 == 63)
            {
              v82 = *v70;
              v26 = v70[1];
              v83 = v70[2];
              v84 = v70[3];
              *v72 = vuzp1q_s32(*v70, v83);
              v24 = a11;
              *(v72 + a11) = vuzp2q_s32(v82, v83);
              v75 = 3 * a11;
              v74 = 2 * a11;
              v85 = (v72 + v238);
              *v85 = vuzp1q_s32(v26, v84);
              v27 = vuzp2q_s32(v26, v84);
              *(v85 + a11) = v27;
              v76 = 64;
            }

            else
            {
              v24 = a11;
              v75 = 3 * a11;
              v74 = 2 * a11;
              if (v73 == 1)
              {
                v27 = vld1q_dup_s16(v70->i16);
                *v72 = v27;
                *(v72 + a11) = v27;
                *(v72 + 2 * a11) = v27;
                *(v72 + 3 * a11) = v27;
                v76 = 2;
              }

              else if (*v71)
              {
                v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v72, a11, v70, v73, *v27.i8, *v26.i8);
              }

              else
              {
                v76 = 0;
                v72->i64[0] = 0;
                v72->i64[1] = 0;
                v77 = (v72->i64 + a11);
                *v77 = 0;
                v77[1] = 0;
                v78 = (v72->i64 + v238);
                *v78 = 0;
                v78[1] = 0;
                v79 = (v72->i64 + 3 * a11);
                *v79 = 0;
                v79[1] = 0;
              }
            }

            v86 = v70->i64 + v76;
            v87 = (v72 + v240);
            v88 = v71[1];
            if (v88 == 63)
            {
              v93 = *v86;
              v26 = *(v86 + 16);
              v94 = *(v86 + 32);
              v95 = *(v86 + 48);
              *v87 = vuzp1q_s32(*v86, v94);
              *(v87 + v24) = vuzp2q_s32(v93, v94);
              v96 = (v87 + v74);
              *v96 = vuzp1q_s32(v26, v95);
              v27 = vuzp2q_s32(v26, v95);
              *(v96 + v24) = v27;
              v89 = 64;
            }

            else if (v88 == 1)
            {
              v27 = vld1q_dup_s16(v86);
              *v87 = v27;
              *(v87 + v24) = v27;
              *(v87 + v74) = v27;
              *(v87 + v75) = v27;
              v89 = 2;
            }

            else if (v71[1])
            {
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v240), v24, v86, v88, *v27.i8, *v26.i8);
            }

            else
            {
              v89 = 0;
              v87->i64[0] = 0;
              v87->i64[1] = 0;
              v90 = (v87->i64 + v24);
              *v90 = 0;
              v90[1] = 0;
              v91 = (v87->i64 + v74);
              *v91 = 0;
              v91[1] = 0;
              v92 = (v87->i64 + v75);
              *v92 = 0;
              v92[1] = 0;
            }

            v97 = v86 + v89;
            v98 = v72 + 1;
            v99 = v71[2];
            if (v99 == 63)
            {
              v104 = *v97;
              v26 = *(v97 + 16);
              v105 = *(v97 + 32);
              v106 = *(v97 + 48);
              *v98 = vuzp1q_s32(*v97, v105);
              *(v98 + v24) = vuzp2q_s32(v104, v105);
              v107 = (v98 + v74);
              *v107 = vuzp1q_s32(v26, v106);
              v27 = vuzp2q_s32(v26, v106);
              *(v107 + v24) = v27;
              v100 = 64;
            }

            else if (v99 == 1)
            {
              v27 = vld1q_dup_s16(v97);
              *v98 = v27;
              *(v98 + v24) = v27;
              *(v98 + v74) = v27;
              *(v98 + v75) = v27;
              v100 = 2;
            }

            else if (v71[2])
            {
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v98, v24, v97, v99, *v27.i8, *v26.i8);
            }

            else
            {
              v100 = 0;
              v98->i64[0] = 0;
              v72[1].i64[1] = 0;
              v101 = (v98->i64 + v24);
              *v101 = 0;
              v101[1] = 0;
              v102 = (v98->i64 + v74);
              *v102 = 0;
              v102[1] = 0;
              v103 = (v98->i64 + v75);
              *v103 = 0;
              v103[1] = 0;
            }

            v108 = v97 + v100;
            v109 = v87 + 1;
            v110 = v71[3];
            if (v110 == 63)
            {
              v115 = *v108;
              v26 = *(v108 + 16);
              v116 = *(v108 + 32);
              v117 = *(v108 + 48);
              *v109 = vuzp1q_s32(*v108, v116);
              *(v109 + v24) = vuzp2q_s32(v115, v116);
              v118 = (v109 + v74);
              *v118 = vuzp1q_s32(v26, v117);
              v27 = vuzp2q_s32(v26, v117);
              *(v118 + v24) = v27;
              v111 = 64;
            }

            else if (v110 == 1)
            {
              v27 = vld1q_dup_s16(v108);
              *v109 = v27;
              *(v109 + v24) = v27;
              *(v109 + v74) = v27;
              *(v109 + v75) = v27;
              v111 = 2;
            }

            else if (v71[3])
            {
              v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v109, v24, v108, v110, *v27.i8, *v26.i8);
            }

            else
            {
              v111 = 0;
              v109->i64[0] = 0;
              v87[1].i64[1] = 0;
              v112 = (v109->i64 + v24);
              *v112 = 0;
              v112[1] = 0;
              v113 = (v109->i64 + v74);
              *v113 = 0;
              v113[1] = 0;
              v114 = (v109->i64 + v75);
              *v114 = 0;
              v114[1] = 0;
            }

            v119 = v108 + v111;
            v120 = (v72 + v239);
            v121 = v71[4];
            if (v121 == 63)
            {
              v126 = *v119;
              v26 = *(v119 + 16);
              v127 = *(v119 + 32);
              v128 = *(v119 + 48);
              *v120 = vuzp1q_s32(*v119, v127);
              *(v120 + v24) = vuzp2q_s32(v126, v127);
              v129 = (v120 + v74);
              *v129 = vuzp1q_s32(v26, v128);
              v27 = vuzp2q_s32(v26, v128);
              *(v129 + v24) = v27;
              v122 = 64;
            }

            else if (v121 == 1)
            {
              v27 = vld1q_dup_s16(v119);
              *v120 = v27;
              *(v120 + v24) = v27;
              *(v120 + v74) = v27;
              *(v120 + v75) = v27;
              v122 = 2;
            }

            else if (v71[4])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v239), v24, v119, v121, *v27.i8, *v26.i8);
            }

            else
            {
              v122 = 0;
              v120->i64[0] = 0;
              v120->i64[1] = 0;
              v123 = (v120->i64 + v24);
              *v123 = 0;
              v123[1] = 0;
              v124 = (v120->i64 + v74);
              *v124 = 0;
              v124[1] = 0;
              v125 = (v120->i64 + v75);
              *v125 = 0;
              v125[1] = 0;
            }

            v130 = v119 + v122;
            v131 = (v72 + 12 * a11);
            v132 = v71[5];
            if (v132 == 63)
            {
              v137 = *v130;
              v26 = *(v130 + 16);
              v138 = *(v130 + 32);
              v139 = *(v130 + 48);
              *v131 = vuzp1q_s32(*v130, v138);
              *(v131 + v24) = vuzp2q_s32(v137, v138);
              v140 = (v131 + v74);
              *v140 = vuzp1q_s32(v26, v139);
              v27 = vuzp2q_s32(v26, v139);
              *(v140 + v24) = v27;
              v133 = 64;
            }

            else if (v132 == 1)
            {
              v27 = vld1q_dup_s16(v130);
              *v131 = v27;
              *(v131 + v24) = v27;
              *(v131 + v74) = v27;
              *(v131 + v75) = v27;
              v133 = 2;
            }

            else if (v71[5])
            {
              v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v131, v24, v130, v132, *v27.i8, *v26.i8);
            }

            else
            {
              v133 = 0;
              v131->i64[0] = 0;
              v131->i64[1] = 0;
              v134 = (v131->i64 + v24);
              *v134 = 0;
              v134[1] = 0;
              v135 = (v131->i64 + v74);
              *v135 = 0;
              v135[1] = 0;
              v136 = (v131->i64 + v75);
              *v136 = 0;
              v136[1] = 0;
            }

            v141 = v130 + v133;
            v142 = v120 + 1;
            v143 = v71[6];
            if (v143 == 63)
            {
              v148 = *v141;
              v26 = *(v141 + 16);
              v149 = *(v141 + 32);
              v150 = *(v141 + 48);
              *v142 = vuzp1q_s32(*v141, v149);
              *(v142 + v24) = vuzp2q_s32(v148, v149);
              v151 = (v142 + v74);
              *v151 = vuzp1q_s32(v26, v150);
              v27 = vuzp2q_s32(v26, v150);
              *(v151 + v24) = v27;
              v144 = 64;
            }

            else if (v143 == 1)
            {
              v27 = vld1q_dup_s16(v141);
              *v142 = v27;
              *(v142 + v24) = v27;
              *(v142 + v74) = v27;
              *(v142 + v75) = v27;
              v144 = 2;
            }

            else if (v71[6])
            {
              v144 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v142, v24, v141, v143, *v27.i8, *v26.i8);
            }

            else
            {
              v144 = 0;
              v142->i64[0] = 0;
              v120[1].i64[1] = 0;
              v145 = (v142->i64 + v24);
              *v145 = 0;
              v145[1] = 0;
              v146 = (v142->i64 + v74);
              *v146 = 0;
              v146[1] = 0;
              v147 = (v142->i64 + v75);
              *v147 = 0;
              v147[1] = 0;
            }

            v152 = v141 + v144;
            v153 = v131 + 1;
            v154 = v71[7];
            if (v154 == 63)
            {
              v159 = *v152;
              v26 = *(v152 + 16);
              v160 = *(v152 + 32);
              v161 = *(v152 + 48);
              *v153 = vuzp1q_s32(*v152, v160);
              *(v153 + v24) = vuzp2q_s32(v159, v160);
              v162 = (v153 + v74);
              *v162 = vuzp1q_s32(v26, v161);
              v27 = vuzp2q_s32(v26, v161);
              *(v162 + v24) = v27;
              v36 = a7;
              v15 = v257;
              goto LABEL_145;
            }

            v36 = a7;
            v15 = v257;
            v155 = v34 + 1;
            if (v154 == 1)
            {
              v27 = vld1q_dup_s16(v152);
              *v153 = v27;
              *(v153 + v24) = v27;
              *(v153 + v74) = v27;
              *(v153 + v75) = v27;
            }

            else if (v154)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v153, v24, v152, v154, *v27.i8, *v26.i8);
            }

            else
            {
              v153->i64[0] = 0;
              v153->i64[1] = 0;
              v156 = (v153->i64 + v24);
              *v156 = 0;
              v156[1] = 0;
              v157 = (v153->i64 + v74);
              *v157 = 0;
              v157[1] = 0;
              v158 = (v153->i64 + v75);
              *v158 = 0;
              v158[1] = 0;
            }
          }

LABEL_29:
          v20 = v34 == v248 >> 4;
          v34 = v155;
        }

        while (!v20);
        v20 = v16++ == v237;
      }

      while (!v20);
    }
  }
}