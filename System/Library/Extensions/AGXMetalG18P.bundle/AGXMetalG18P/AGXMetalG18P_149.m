void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v446 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a1;
  v368 = a8;
  v18 = a8 >> 3;
  v348 = a8 + a10 - 1;
  v350 = v348 >> 3;
  v19 = *(*(v17 + 208) + 88);
  v20 = *(v17 + 112);
  v371 = v17;
  if (*(v17 + 168))
  {
    CacheMode = IOSurfaceGetCacheMode();
    v17 = v371;
    v22 = CacheMode & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v363 = v26;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v17, *(v17 + 144) + a12);
  v28 = v371;
  v362 = isLevelTiled;
  if (v18 <= v350)
  {
    v361 = a7 + a9 - 1;
    v347 = a7 >> 4;
    if (a7 >> 4 <= v361 >> 4)
    {
      v29 = a11;
      v370 = (a5 - 1) >> 4;
      v344 = a5 - 1;
      v354 = (a5 - 1) & 0xF;
      v345 = (a6 - 1) & 7;
      v346 = (a6 - 1) >> 3;
      v353 = 4 * a11;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v31 = vcgt_u32(v30, 0x1F0000000FLL);
      v359 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v30, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v31);
      v358 = v31;
      v343 = 8 * v20 * v19;
      v360 = a7;
      v351 = 3 * a11;
      v352 = 2 * a11;
      do
      {
        v32 = (8 * v18) | 7;
        if (8 * v18 <= v368)
        {
          v33 = v368;
        }

        else
        {
          v33 = 8 * v18;
        }

        if (v348 < v32)
        {
          v32 = v348;
        }

        v367 = 8 * v18;
        v357 = v33 - 8 * v18;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v345;
        v356 = v35;
        v37 = v35 != 8;
        v38 = v347;
        v39 = v345 + 1;
        if (v18 != v346)
        {
          v39 = 8;
        }

        v369 = v39;
        if (v18 != v346)
        {
          v36 = v37;
        }

        v355 = v36;
        v366 = a2 + (v33 - v368) * v29;
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

          if (v361 < v41)
          {
            v41 = v361;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v38 == v370)
          {
            v45 = v354 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (v367 >= v368 && v40 >= a7)
          {
            v47 = v43 != v354;
            if (v38 != v370)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v355;
          }

          if (v362)
          {
            v68 = 0;
            v69 = v343 >> (*(v28 + 57) != 0);
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
              v71 = 0;
              v72 = 16;
              v68 = 32;
            }

            else if (v69 == 512)
            {
              v71 = 0;
              v68 = 16;
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

            v331 = (v68 >> 4) - 1;
            if (v70)
            {
              v332 = 0;
            }

            else
            {
              v332 = 32 - __clz(~(-1 << -__clz(v331)));
            }

            v333 = (v72 >> 3) - 1;
            if (v71)
            {
              v334 = 0;
              if (v332)
              {
                goto LABEL_226;
              }
            }

            else
            {
              v334 = 32 - __clz(~(-1 << -__clz(v333)));
              if (v334 | v332)
              {
LABEL_226:
                v335 = 0;
                v336 = 0;
                v337 = v38 & v331;
                v338 = v18 & v333;
                v339 = v334 != 0;
                v340 = v332 != 0;
                v341 = 1;
                do
                {
                  --v334;
                  if (v339)
                  {
                    v336 |= (v341 & v338) << v335++;
                  }

                  else
                  {
                    v334 = 0;
                  }

                  --v332;
                  if (v340)
                  {
                    v336 |= (v341 & v337) << v335++;
                  }

                  else
                  {
                    v332 = 0;
                  }

                  v341 *= 2;
                  --v335;
                  v340 = v332 != 0;
                  v339 = v334 != 0;
                }

                while (v332 | v334);
                v342 = v336 << 10;
                goto LABEL_238;
              }
            }

            v342 = 0;
LABEL_238:
            v55 = v342 + ((v40 / v68 + v367 / v72 * ((v68 + v344) / v68)) << 14);
            goto LABEL_55;
          }

          if (v359)
          {
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v51 = v358.i8[0];
            v52 = v358.i8[4];
            v53 = v359.i32[0];
            v54 = v359.i32[1];
            do
            {
              --v53;
              if (v51)
              {
                v49 |= (v50 & v18) << v48++;
              }

              else
              {
                v53 = 0;
              }

              --v54;
              if (v52)
              {
                v49 |= (v50 & v38) << v48++;
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

          v60 = v59 + 7;
          if (v60 < 0x10)
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
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 3) - 1)));
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
          if (v363)
          {
            memcpy(__dst, v73, sizeof(__dst));
            v28 = v371;
            v73 = __dst;
          }

          v74 = (a4 + v67);
          v75 = v366 + 8 * (v42 - a7);
          if (!(v46 & 1 | (v45 < 0x10u)) && v369 > 7)
          {
            v76 = *v74;
            if (v76 == 127)
            {
              v88 = v73[1];
              v89 = v73[2];
              v90 = v73[3];
              v91 = v73[5];
              v92 = v73[6];
              v93 = v73[7];
              v94 = v73[4];
              v77 = 2 * a11;
              *v75 = *v73;
              *(v75 + 16) = v89;
              v95 = (v75 + v352);
              v29 = a11;
              v96 = (v75 + a11);
              *v96 = v88;
              v96[1] = v90;
              *v95 = v94;
              v95[1] = v92;
              v97 = (v75 + v352 + a11);
              *v97 = v91;
              v97[1] = v93;
              v78 = 128;
            }

            else
            {
              v29 = a11;
              v77 = 2 * a11;
              if (v76 == 3)
              {
                v84 = vld1q_dup_f32(v73->f32);
                *v75 = v84;
                *(v75 + 16) = v84;
                v85 = (v75 + a11);
                *v85 = v84;
                v85[1] = v84;
                v86 = (v75 + v352);
                *v86 = v84;
                v86[1] = v84;
                v87 = (v75 + v351);
                *v87 = v84;
                v87[1] = v84;
                v78 = 4;
              }

              else if (*v74)
              {
                v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75, a11, v73, v76);
              }

              else
              {
                v78 = 0;
                *v75 = 0u;
                *(v75 + 16) = 0u;
                v79 = (v75 + a11);
                *v79 = 0u;
                v79[1] = 0u;
                v80 = (v75 + v352);
                *v80 = 0u;
                v80[1] = 0u;
                v81 = (v75 + v351);
                *v81 = 0u;
                v81[1] = 0u;
              }
            }

            v98 = v73 + v78;
            v99 = (v75 + 32);
            v100 = v74[1];
            if (v100 == 127)
            {
              v109 = *(v98 + 16);
              v110 = *(v98 + 32);
              v111 = *(v98 + 48);
              v112 = *(v98 + 80);
              v113 = *(v98 + 96);
              v114 = *(v98 + 112);
              v115 = *(v98 + 64);
              *v99 = *v98;
              *(v75 + 48) = v110;
              v116 = &v99->i8[v77];
              v117 = &v99->i8[v29];
              *v117 = v109;
              *(v117 + 1) = v111;
              *v116 = v115;
              *(v116 + 1) = v113;
              v118 = &v99->i8[v77 + v29];
              *v118 = v112;
              *(v118 + 1) = v114;
              v101 = 128;
            }

            else if (v100 == 3)
            {
              v105 = vld1q_dup_f32(v98);
              *(v75 + 32) = v105;
              *(v75 + 48) = v105;
              v106 = &v99->i8[v29];
              *v106 = v105;
              v106[1] = v105;
              v107 = &v99->i8[v77];
              *v107 = v105;
              v107[1] = v105;
              v108 = &v99->i8[v351];
              *v108 = v105;
              v108[1] = v105;
              v101 = 4;
            }

            else if (v74[1])
            {
              v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v99, v29, v98, v100);
            }

            else
            {
              v101 = 0;
              *v99 = 0u;
              *(v75 + 48) = 0u;
              v102 = &v99->i8[v29];
              *v102 = 0u;
              *(v102 + 1) = 0u;
              v103 = &v99->i8[v77];
              *v103 = 0u;
              *(v103 + 1) = 0u;
              v104 = &v99->i8[v351];
              *v104 = 0u;
              *(v104 + 1) = 0u;
            }

            v119 = v98 + v101;
            v120 = (v75 + v353);
            v121 = v74[2];
            if (v121 == 127)
            {
              v130 = *(v119 + 16);
              v131 = *(v119 + 32);
              v132 = *(v119 + 48);
              v133 = *(v119 + 80);
              v134 = *(v119 + 96);
              v135 = *(v119 + 112);
              v136 = *(v119 + 64);
              *v120 = *v119;
              v120[1] = v131;
              v137 = &v120->i8[v77];
              v138 = &v120->i8[v29];
              *v138 = v130;
              *(v138 + 1) = v132;
              *v137 = v136;
              *(v137 + 1) = v134;
              v139 = &v120->i8[v77 + v29];
              *v139 = v133;
              *(v139 + 1) = v135;
              v122 = 128;
            }

            else if (v121 == 3)
            {
              v126 = vld1q_dup_f32(v119);
              *v120 = v126;
              v120[1] = v126;
              v127 = &v120->i8[v29];
              *v127 = v126;
              v127[1] = v126;
              v128 = &v120->i8[v77];
              *v128 = v126;
              v128[1] = v126;
              v129 = &v120->i8[v351];
              *v129 = v126;
              v129[1] = v126;
              v122 = 4;
            }

            else if (v74[2])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v75 + v353), v29, v119, v121);
            }

            else
            {
              v122 = 0;
              *v120 = 0u;
              v120[1] = 0u;
              v123 = &v120->i8[v29];
              *v123 = 0u;
              *(v123 + 1) = 0u;
              v124 = &v120->i8[v77];
              *v124 = 0u;
              *(v124 + 1) = 0u;
              v125 = &v120->i8[v351];
              *v125 = 0u;
              *(v125 + 1) = 0u;
            }

            v140 = v119 + v122;
            v141 = v120 + 2;
            v142 = v74[3];
            if (v142 == 127)
            {
              v151 = *(v140 + 16);
              v152 = *(v140 + 32);
              v153 = *(v140 + 48);
              v154 = *(v140 + 80);
              v155 = *(v140 + 96);
              v156 = *(v140 + 112);
              v157 = *(v140 + 64);
              *v141 = *v140;
              v120[3] = v152;
              v158 = &v141->i8[v77];
              v159 = &v141->i8[v29];
              *v159 = v151;
              *(v159 + 1) = v153;
              *v158 = v157;
              *(v158 + 1) = v155;
              v160 = &v141->i8[v77 + v29];
              *v160 = v154;
              *(v160 + 1) = v156;
              v143 = 128;
            }

            else if (v142 == 3)
            {
              v147 = vld1q_dup_f32(v140);
              v120[2] = v147;
              v120[3] = v147;
              v148 = &v141->i8[v29];
              *v148 = v147;
              v148[1] = v147;
              v149 = &v141->i8[v77];
              *v149 = v147;
              v149[1] = v147;
              v150 = &v141->i8[v351];
              *v150 = v147;
              v150[1] = v147;
              v143 = 4;
            }

            else if (v74[3])
            {
              v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, v29, v140, v142);
            }

            else
            {
              v143 = 0;
              *v141 = 0u;
              v120[3] = 0u;
              v144 = &v141->i8[v29];
              *v144 = 0u;
              *(v144 + 1) = 0u;
              v145 = &v141->i8[v77];
              *v145 = 0u;
              *(v145 + 1) = 0u;
              v146 = &v141->i8[v351];
              *v146 = 0u;
              *(v146 + 1) = 0u;
            }

            v161 = v140 + v143;
            v162 = (v75 + 64);
            v163 = v74[4];
            if (v163 == 127)
            {
              v172 = *(v161 + 16);
              v173 = *(v161 + 32);
              v174 = *(v161 + 48);
              v175 = *(v161 + 80);
              v176 = *(v161 + 96);
              v177 = *(v161 + 112);
              v178 = *(v161 + 64);
              *v162 = *v161;
              *(v75 + 80) = v173;
              v179 = &v162->i8[v77];
              v180 = &v162->i8[v29];
              *v180 = v172;
              *(v180 + 1) = v174;
              *v179 = v178;
              *(v179 + 1) = v176;
              v181 = &v162->i8[v77 + v29];
              *v181 = v175;
              *(v181 + 1) = v177;
              v164 = 128;
            }

            else if (v163 == 3)
            {
              v168 = vld1q_dup_f32(v161);
              *(v75 + 64) = v168;
              *(v75 + 80) = v168;
              v169 = &v162->i8[v29];
              *v169 = v168;
              v169[1] = v168;
              v170 = &v162->i8[v77];
              *v170 = v168;
              v170[1] = v168;
              v171 = &v162->i8[v351];
              *v171 = v168;
              v171[1] = v168;
              v164 = 4;
            }

            else if (v74[4])
            {
              v164 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v162, v29, v161, v163);
            }

            else
            {
              v164 = 0;
              *v162 = 0u;
              *(v75 + 80) = 0u;
              v165 = &v162->i8[v29];
              *v165 = 0u;
              *(v165 + 1) = 0u;
              v166 = &v162->i8[v77];
              *v166 = 0u;
              *(v166 + 1) = 0u;
              v167 = &v162->i8[v351];
              *v167 = 0u;
              *(v167 + 1) = 0u;
            }

            v182 = v161 + v164;
            v183 = (v75 + 96);
            v184 = v74[5];
            if (v184 == 127)
            {
              v193 = *(v182 + 16);
              v194 = *(v182 + 32);
              v195 = *(v182 + 48);
              v196 = *(v182 + 80);
              v197 = *(v182 + 96);
              v198 = *(v182 + 112);
              v199 = *(v182 + 64);
              *v183 = *v182;
              *(v75 + 112) = v194;
              v200 = &v183->i8[v77];
              v201 = &v183->i8[v29];
              *v201 = v193;
              *(v201 + 1) = v195;
              *v200 = v199;
              *(v200 + 1) = v197;
              v202 = &v183->i8[v77 + v29];
              *v202 = v196;
              *(v202 + 1) = v198;
              v185 = 128;
            }

            else if (v184 == 3)
            {
              v189 = vld1q_dup_f32(v182);
              *(v75 + 96) = v189;
              *(v75 + 112) = v189;
              v190 = &v183->i8[v29];
              *v190 = v189;
              v190[1] = v189;
              v191 = &v183->i8[v77];
              *v191 = v189;
              v191[1] = v189;
              v192 = &v183->i8[v351];
              *v192 = v189;
              v192[1] = v189;
              v185 = 4;
            }

            else if (v74[5])
            {
              v185 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v183, v29, v182, v184);
            }

            else
            {
              v185 = 0;
              *v183 = 0u;
              *(v75 + 112) = 0u;
              v186 = &v183->i8[v29];
              *v186 = 0u;
              *(v186 + 1) = 0u;
              v187 = &v183->i8[v77];
              *v187 = 0u;
              *(v187 + 1) = 0u;
              v188 = &v183->i8[v351];
              *v188 = 0u;
              *(v188 + 1) = 0u;
            }

            a7 = v360;
            v203 = v182 + v185;
            v204 = v120 + 4;
            v205 = v74[6];
            if (v205 == 127)
            {
              v214 = *(v203 + 16);
              v215 = *(v203 + 32);
              v216 = *(v203 + 48);
              v217 = *(v203 + 80);
              v218 = *(v203 + 96);
              v219 = *(v203 + 112);
              v220 = *(v203 + 64);
              *v204 = *v203;
              v120[5] = v215;
              v221 = &v204->i8[v77];
              v222 = &v204->i8[v29];
              *v222 = v214;
              *(v222 + 1) = v216;
              *v221 = v220;
              *(v221 + 1) = v218;
              v223 = &v204->i8[v77 + v29];
              *v223 = v217;
              *(v223 + 1) = v219;
              v206 = 128;
            }

            else if (v205 == 3)
            {
              v210 = vld1q_dup_f32(v203);
              v120[4] = v210;
              v120[5] = v210;
              v211 = &v204->i8[v29];
              *v211 = v210;
              v211[1] = v210;
              v212 = &v204->i8[v77];
              *v212 = v210;
              v212[1] = v210;
              v213 = &v204->i8[v351];
              *v213 = v210;
              v213[1] = v210;
              v206 = 4;
            }

            else if (v74[6])
            {
              v206 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v204, v29, v203, v205);
            }

            else
            {
              v206 = 0;
              *v204 = 0u;
              v120[5] = 0u;
              v207 = &v204->i8[v29];
              *v207 = 0u;
              *(v207 + 1) = 0u;
              v208 = &v204->i8[v77];
              *v208 = 0u;
              *(v208 + 1) = 0u;
              v209 = &v204->i8[v351];
              *v209 = 0u;
              *(v209 + 1) = 0u;
            }

            v224 = v203 + v206;
            v225 = v120 + 6;
            v226 = v74[7];
            if (v226 == 127)
            {
              v231 = *(v224 + 16);
              v232 = *(v224 + 32);
              v233 = *(v224 + 48);
              v234 = *(v224 + 64);
              v235 = *(v224 + 80);
              v236 = *(v224 + 96);
              v237 = *(v224 + 112);
              *v225 = *v224;
              v120[7] = v232;
              v238 = &v225->i8[v77];
              v239 = &v225->i8[v29];
              *v239 = v231;
              *(v239 + 1) = v233;
              *v238 = v234;
              *(v238 + 1) = v236;
              v240 = &v225->i8[v77 + v29];
              *v240 = v235;
              *(v240 + 1) = v237;
            }

            else if (v226 == 3)
            {
              v227 = vld1q_dup_f32(v224);
              v120[6] = v227;
              v120[7] = v227;
LABEL_144:
              v228 = &v225->i8[v29];
              *v228 = v227;
              v228[1] = v227;
              v229 = &v225->i8[v77];
              *v229 = v227;
              v229[1] = v227;
              v230 = &v225->i8[v351];
              *v230 = v227;
              v230[1] = v227;
            }

            else
            {
              if (!v74[7])
              {
                v227 = 0uLL;
                *v225 = 0u;
                v120[7] = 0u;
                goto LABEL_144;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v225, v29, v224, v226);
            }

            v28 = v371;
            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v28;
          block[5] = v73;
          v379 = v45;
          v380 = v369;
          v375 = v357;
          v376 = v42 - v40;
          block[6] = v74;
          v373 = v75;
          v29 = a11;
          v374 = a11;
          v377 = v356;
          v378 = v44;
          if (v46)
          {
            dispatch_sync(*(*(v28 + 8) + 16552), block);
            v28 = v371;
            a7 = v360;
          }

          else
          {
            v82 = *v74;
            a7 = v360;
            if (v82 == 127)
            {
              v242 = v73[1];
              v243 = v73[2];
              v244 = v73[3];
              v245 = v73[4];
              v246 = v73[5];
              v247 = v73[6];
              v248 = v73[7];
              v382 = *v73;
              v383 = v243;
              v390 = v242;
              v391 = v244;
              v398 = v245;
              v399 = v247;
              v406 = v246;
              v407 = v248;
              v83 = 128;
            }

            else if (v82 == 3)
            {
              v241 = vld1q_dup_f32(v73->f32);
              v382 = v241;
              v383 = v241;
              v390 = v241;
              v391 = v241;
              v398 = v241;
              v399 = v241;
              v406 = v241;
              v407 = v241;
              v83 = 4;
            }

            else if (*v74)
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v382, 128, v73, v82);
            }

            else
            {
              v83 = 0;
              v383 = 0u;
              v382 = 0u;
              v390 = 0u;
              v391 = 0u;
              v398 = 0u;
              v399 = 0u;
              v406 = 0u;
              v407 = 0u;
            }

            v249 = v73 + v83;
            v250 = v74[1];
            if (v250 == 127)
            {
              v253 = *(v249 + 16);
              v254 = *(v249 + 32);
              v255 = *(v249 + 48);
              v256 = *(v249 + 64);
              v257 = *(v249 + 80);
              v258 = *(v249 + 96);
              v259 = *(v249 + 112);
              v384 = *v249;
              v385 = v254;
              v392 = v253;
              v393 = v255;
              v400 = v256;
              v401 = v258;
              v408 = v257;
              v409 = v259;
              v251 = 128;
            }

            else if (v250 == 3)
            {
              v252 = vld1q_dup_f32(v249);
              v384 = v252;
              v385 = v252;
              v392 = v252;
              v393 = v252;
              v400 = v252;
              v401 = v252;
              v408 = v252;
              v409 = v252;
              v251 = 4;
            }

            else if (v74[1])
            {
              v251 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v384, 128, v249, v250);
            }

            else
            {
              v251 = 0;
              v384 = 0u;
              v385 = 0u;
              v392 = 0u;
              v393 = 0u;
              v400 = 0u;
              v401 = 0u;
              v408 = 0u;
              v409 = 0u;
            }

            v260 = v249 + v251;
            v261 = v74[2];
            if (v261 == 127)
            {
              v264 = *(v260 + 16);
              v265 = *(v260 + 32);
              v266 = *(v260 + 48);
              v267 = *(v260 + 64);
              v268 = *(v260 + 80);
              v269 = *(v260 + 96);
              v270 = *(v260 + 112);
              v414 = *v260;
              v415 = v265;
              v422 = v264;
              v423 = v266;
              v430 = v267;
              v431 = v269;
              v438 = v268;
              v439 = v270;
              v262 = 128;
            }

            else if (v261 == 3)
            {
              v263 = vld1q_dup_f32(v260);
              v414 = v263;
              v415 = v263;
              v422 = v263;
              v423 = v263;
              v430 = v263;
              v431 = v263;
              v438 = v263;
              v439 = v263;
              v262 = 4;
            }

            else if (v74[2])
            {
              v262 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v414, 128, v260, v261);
            }

            else
            {
              v262 = 0;
              v414 = 0u;
              v415 = 0u;
              v422 = 0u;
              v423 = 0u;
              v430 = 0u;
              v431 = 0u;
              v438 = 0u;
              v439 = 0u;
            }

            v271 = v260 + v262;
            v272 = v74[3];
            if (v272 == 127)
            {
              v275 = *(v271 + 16);
              v276 = *(v271 + 32);
              v277 = *(v271 + 48);
              v278 = *(v271 + 64);
              v279 = *(v271 + 80);
              v280 = *(v271 + 96);
              v281 = *(v271 + 112);
              v416 = *v271;
              v417 = v276;
              v424 = v275;
              v425 = v277;
              v432 = v278;
              v433 = v280;
              v440 = v279;
              v441 = v281;
              v273 = 128;
            }

            else if (v272 == 3)
            {
              v274 = vld1q_dup_f32(v271);
              v416 = v274;
              v417 = v274;
              v424 = v274;
              v425 = v274;
              v432 = v274;
              v433 = v274;
              v440 = v274;
              v441 = v274;
              v273 = 4;
            }

            else if (v74[3])
            {
              v273 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v416, 128, v271, v272);
            }

            else
            {
              v273 = 0;
              v416 = 0u;
              v417 = 0u;
              v424 = 0u;
              v425 = 0u;
              v432 = 0u;
              v433 = 0u;
              v440 = 0u;
              v441 = 0u;
            }

            v282 = v271 + v273;
            v283 = v74[4];
            if (v283 == 127)
            {
              v286 = *(v282 + 16);
              v287 = *(v282 + 32);
              v288 = *(v282 + 48);
              v289 = *(v282 + 64);
              v290 = *(v282 + 80);
              v291 = *(v282 + 96);
              v292 = *(v282 + 112);
              v386 = *v282;
              v387 = v287;
              v394 = v286;
              v395 = v288;
              v402 = v289;
              v403 = v291;
              v410 = v290;
              v411 = v292;
              v284 = 128;
            }

            else if (v283 == 3)
            {
              v285 = vld1q_dup_f32(v282);
              v386 = v285;
              v387 = v285;
              v394 = v285;
              v395 = v285;
              v402 = v285;
              v403 = v285;
              v410 = v285;
              v411 = v285;
              v284 = 4;
            }

            else if (v74[4])
            {
              v284 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v386, 128, v282, v283);
            }

            else
            {
              v284 = 0;
              v386 = 0u;
              v387 = 0u;
              v394 = 0u;
              v395 = 0u;
              v402 = 0u;
              v403 = 0u;
              v410 = 0u;
              v411 = 0u;
            }

            v293 = v282 + v284;
            v294 = v74[5];
            if (v294 == 127)
            {
              v297 = *(v293 + 16);
              v298 = *(v293 + 32);
              v299 = *(v293 + 48);
              v300 = *(v293 + 64);
              v301 = *(v293 + 80);
              v302 = *(v293 + 96);
              v303 = *(v293 + 112);
              v388 = *v293;
              v389 = v298;
              v396 = v297;
              v397 = v299;
              v404 = v300;
              v405 = v302;
              v412 = v301;
              v413 = v303;
              v295 = 128;
            }

            else if (v294 == 3)
            {
              v296 = vld1q_dup_f32(v293);
              v388 = v296;
              v389 = v296;
              v396 = v296;
              v397 = v296;
              v404 = v296;
              v405 = v296;
              v412 = v296;
              v413 = v296;
              v295 = 4;
            }

            else if (v74[5])
            {
              v295 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v388, 128, v293, v294);
            }

            else
            {
              v295 = 0;
              v388 = 0u;
              v389 = 0u;
              v396 = 0u;
              v397 = 0u;
              v404 = 0u;
              v405 = 0u;
              v412 = 0u;
              v413 = 0u;
            }

            v304 = v293 + v295;
            v305 = v74[6];
            if (v305 == 127)
            {
              v308 = *(v304 + 16);
              v309 = *(v304 + 32);
              v310 = *(v304 + 48);
              v311 = *(v304 + 64);
              v312 = *(v304 + 80);
              v313 = *(v304 + 96);
              v314 = *(v304 + 112);
              v418 = *v304;
              v419 = v309;
              v426 = v308;
              v427 = v310;
              v434 = v311;
              v435 = v313;
              v442 = v312;
              v443 = v314;
              v306 = 128;
            }

            else if (v305 == 3)
            {
              v307 = vld1q_dup_f32(v304);
              v418 = v307;
              v419 = v307;
              v426 = v307;
              v427 = v307;
              v434 = v307;
              v435 = v307;
              v442 = v307;
              v443 = v307;
              v306 = 4;
            }

            else if (v74[6])
            {
              v306 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v418, 128, v304, v305);
            }

            else
            {
              v306 = 0;
              v418 = 0u;
              v419 = 0u;
              v426 = 0u;
              v427 = 0u;
              v434 = 0u;
              v435 = 0u;
              v442 = 0u;
              v443 = 0u;
            }

            v315 = v304 + v306;
            v316 = v74[7];
            if (v316 == 127)
            {
              v318 = *(v315 + 16);
              v319 = *(v315 + 32);
              v320 = *(v315 + 48);
              v321 = *(v315 + 80);
              v322 = *(v315 + 96);
              v323 = *(v315 + 112);
              v324 = *(v315 + 64);
              v420 = *v315;
              v421 = v319;
              v428 = v318;
              v429 = v320;
              v436 = v324;
              v437 = v322;
              v444 = v321;
              v445 = v323;
            }

            else if (v316 == 3)
            {
              v317 = vld1q_dup_f32(v315);
              v420 = v317;
              v421 = v317;
              v428 = v317;
              v429 = v317;
              v436 = v317;
              v437 = v317;
              v444 = v317;
              v445 = v317;
            }

            else if (v74[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v420, 128, v315, v316);
            }

            else
            {
              v420 = 0u;
              v421 = 0u;
              v428 = 0u;
              v429 = 0u;
              v436 = 0u;
              v437 = 0u;
              v444 = 0u;
              v445 = 0u;
            }

            v325 = v377;
            v28 = v371;
            if (v377)
            {
              v326 = 0;
              v327 = &v382.i8[128 * v375 + 8 * v376];
              v328 = v378;
              do
              {
                if (v328)
                {
                  v329 = 0;
                  v330 = v373 + v374 * v326;
                  do
                  {
                    *(v330 + v329) = v327[v329];
                    ++v329;
                    v328 = v378;
                  }

                  while (8 * v378 > v329);
                  v325 = v377;
                }

                ++v326;
                v327 += 128;
              }

              while (v326 < v325);
            }
          }

LABEL_29:
          v23 = v38++ == v361 >> 4;
        }

        while (!v23);
        v23 = v18++ == v350;
      }

      while (!v23);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v446 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a1;
  v368 = a8;
  v18 = a8 >> 3;
  v348 = a8 + a10 - 1;
  v350 = v348 >> 3;
  v19 = *(*(v17 + 208) + 88);
  v20 = *(v17 + 112);
  v371 = v17;
  if (*(v17 + 168))
  {
    CacheMode = IOSurfaceGetCacheMode();
    v17 = v371;
    v22 = CacheMode & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v363 = v26;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v17, *(v17 + 144) + a12);
  v28 = v371;
  v362 = isLevelTiled;
  if (v18 <= v350)
  {
    v361 = a7 + a9 - 1;
    v347 = a7 >> 4;
    if (a7 >> 4 <= v361 >> 4)
    {
      v29 = a11;
      v370 = (a5 - 1) >> 4;
      v344 = a5 - 1;
      v354 = (a5 - 1) & 0xF;
      v345 = (a6 - 1) & 7;
      v346 = (a6 - 1) >> 3;
      v353 = 4 * a11;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v31 = vcgt_u32(v30, 0x1F0000000FLL);
      v359 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v30, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v31);
      v358 = v31;
      v343 = 8 * v20 * v19;
      v360 = a7;
      v351 = 3 * a11;
      v352 = 2 * a11;
      do
      {
        v32 = (8 * v18) | 7;
        if (8 * v18 <= v368)
        {
          v33 = v368;
        }

        else
        {
          v33 = 8 * v18;
        }

        if (v348 < v32)
        {
          v32 = v348;
        }

        v367 = 8 * v18;
        v357 = v33 - 8 * v18;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v345;
        v356 = v35;
        v37 = v35 != 8;
        v38 = v347;
        v39 = v345 + 1;
        if (v18 != v346)
        {
          v39 = 8;
        }

        v369 = v39;
        if (v18 != v346)
        {
          v36 = v37;
        }

        v355 = v36;
        v366 = a2 + (v33 - v368) * v29;
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

          if (v361 < v41)
          {
            v41 = v361;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v38 == v370)
          {
            v45 = v354 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (v367 >= v368 && v40 >= a7)
          {
            v47 = v43 != v354;
            if (v38 != v370)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v355;
          }

          if (v362)
          {
            v68 = 0;
            v69 = v343 >> (*(v28 + 57) != 0);
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
              v71 = 0;
              v72 = 16;
              v68 = 32;
            }

            else if (v69 == 512)
            {
              v71 = 0;
              v68 = 16;
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

            v331 = (v68 >> 4) - 1;
            if (v70)
            {
              v332 = 0;
            }

            else
            {
              v332 = 32 - __clz(~(-1 << -__clz(v331)));
            }

            v333 = (v72 >> 3) - 1;
            if (v71)
            {
              v334 = 0;
              if (v332)
              {
                goto LABEL_226;
              }
            }

            else
            {
              v334 = 32 - __clz(~(-1 << -__clz(v333)));
              if (v334 | v332)
              {
LABEL_226:
                v335 = 0;
                v336 = 0;
                v337 = v38 & v331;
                v338 = v18 & v333;
                v339 = v334 != 0;
                v340 = v332 != 0;
                v341 = 1;
                do
                {
                  --v334;
                  if (v339)
                  {
                    v336 |= (v341 & v338) << v335++;
                  }

                  else
                  {
                    v334 = 0;
                  }

                  --v332;
                  if (v340)
                  {
                    v336 |= (v341 & v337) << v335++;
                  }

                  else
                  {
                    v332 = 0;
                  }

                  v341 *= 2;
                  --v335;
                  v340 = v332 != 0;
                  v339 = v334 != 0;
                }

                while (v332 | v334);
                v342 = v336 << 10;
                goto LABEL_238;
              }
            }

            v342 = 0;
LABEL_238:
            v55 = v342 + ((v40 / v68 + v367 / v72 * ((v68 + v344) / v68)) << 14);
            goto LABEL_55;
          }

          if (v359)
          {
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v51 = v358.i8[0];
            v52 = v358.i8[4];
            v53 = v359.i32[0];
            v54 = v359.i32[1];
            do
            {
              --v53;
              if (v51)
              {
                v49 |= (v50 & v18) << v48++;
              }

              else
              {
                v53 = 0;
              }

              --v54;
              if (v52)
              {
                v49 |= (v50 & v38) << v48++;
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

          v60 = v59 + 7;
          if (v60 < 0x10)
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
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 3) - 1)));
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
          if (v363)
          {
            memcpy(__dst, v73, sizeof(__dst));
            v28 = v371;
            v73 = __dst;
          }

          v74 = (a4 + v67);
          v75 = v366 + 8 * (v42 - a7);
          if (!(v46 & 1 | (v45 < 0x10u)) && v369 > 7)
          {
            v76 = *v74;
            if (v76 == 127)
            {
              v88 = v73[1];
              v89 = v73[2];
              v90 = v73[3];
              v91 = v73[5];
              v92 = v73[6];
              v93 = v73[7];
              v94 = v73[4];
              v77 = 2 * a11;
              *v75 = *v73;
              *(v75 + 16) = v89;
              v95 = (v75 + v352);
              v29 = a11;
              v96 = (v75 + a11);
              *v96 = v88;
              v96[1] = v90;
              *v95 = v94;
              v95[1] = v92;
              v97 = (v75 + v352 + a11);
              *v97 = v91;
              v97[1] = v93;
              v78 = 128;
            }

            else
            {
              v29 = a11;
              v77 = 2 * a11;
              if (v76 == 3)
              {
                v84 = vld1q_dup_f32(v73->f32);
                *v75 = v84;
                *(v75 + 16) = v84;
                v85 = (v75 + a11);
                *v85 = v84;
                v85[1] = v84;
                v86 = (v75 + v352);
                *v86 = v84;
                v86[1] = v84;
                v87 = (v75 + v351);
                *v87 = v84;
                v87[1] = v84;
                v78 = 4;
              }

              else if (*v74)
              {
                v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75, a11, v73, v76);
              }

              else
              {
                v78 = 0;
                *v75 = 0u;
                *(v75 + 16) = 0u;
                v79 = (v75 + a11);
                *v79 = 0u;
                v79[1] = 0u;
                v80 = (v75 + v352);
                *v80 = 0u;
                v80[1] = 0u;
                v81 = (v75 + v351);
                *v81 = 0u;
                v81[1] = 0u;
              }
            }

            v98 = v73 + v78;
            v99 = (v75 + 32);
            v100 = v74[1];
            if (v100 == 127)
            {
              v109 = *(v98 + 16);
              v110 = *(v98 + 32);
              v111 = *(v98 + 48);
              v112 = *(v98 + 80);
              v113 = *(v98 + 96);
              v114 = *(v98 + 112);
              v115 = *(v98 + 64);
              *v99 = *v98;
              *(v75 + 48) = v110;
              v116 = &v99->i8[v77];
              v117 = &v99->i8[v29];
              *v117 = v109;
              *(v117 + 1) = v111;
              *v116 = v115;
              *(v116 + 1) = v113;
              v118 = &v99->i8[v77 + v29];
              *v118 = v112;
              *(v118 + 1) = v114;
              v101 = 128;
            }

            else if (v100 == 3)
            {
              v105 = vld1q_dup_f32(v98);
              *(v75 + 32) = v105;
              *(v75 + 48) = v105;
              v106 = &v99->i8[v29];
              *v106 = v105;
              v106[1] = v105;
              v107 = &v99->i8[v77];
              *v107 = v105;
              v107[1] = v105;
              v108 = &v99->i8[v351];
              *v108 = v105;
              v108[1] = v105;
              v101 = 4;
            }

            else if (v74[1])
            {
              v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v99, v29, v98, v100);
            }

            else
            {
              v101 = 0;
              *v99 = 0u;
              *(v75 + 48) = 0u;
              v102 = &v99->i8[v29];
              *v102 = 0u;
              *(v102 + 1) = 0u;
              v103 = &v99->i8[v77];
              *v103 = 0u;
              *(v103 + 1) = 0u;
              v104 = &v99->i8[v351];
              *v104 = 0u;
              *(v104 + 1) = 0u;
            }

            v119 = v98 + v101;
            v120 = (v75 + v353);
            v121 = v74[2];
            if (v121 == 127)
            {
              v130 = *(v119 + 16);
              v131 = *(v119 + 32);
              v132 = *(v119 + 48);
              v133 = *(v119 + 80);
              v134 = *(v119 + 96);
              v135 = *(v119 + 112);
              v136 = *(v119 + 64);
              *v120 = *v119;
              v120[1] = v131;
              v137 = &v120->i8[v77];
              v138 = &v120->i8[v29];
              *v138 = v130;
              *(v138 + 1) = v132;
              *v137 = v136;
              *(v137 + 1) = v134;
              v139 = &v120->i8[v77 + v29];
              *v139 = v133;
              *(v139 + 1) = v135;
              v122 = 128;
            }

            else if (v121 == 3)
            {
              v126 = vld1q_dup_f32(v119);
              *v120 = v126;
              v120[1] = v126;
              v127 = &v120->i8[v29];
              *v127 = v126;
              v127[1] = v126;
              v128 = &v120->i8[v77];
              *v128 = v126;
              v128[1] = v126;
              v129 = &v120->i8[v351];
              *v129 = v126;
              v129[1] = v126;
              v122 = 4;
            }

            else if (v74[2])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v75 + v353), v29, v119, v121);
            }

            else
            {
              v122 = 0;
              *v120 = 0u;
              v120[1] = 0u;
              v123 = &v120->i8[v29];
              *v123 = 0u;
              *(v123 + 1) = 0u;
              v124 = &v120->i8[v77];
              *v124 = 0u;
              *(v124 + 1) = 0u;
              v125 = &v120->i8[v351];
              *v125 = 0u;
              *(v125 + 1) = 0u;
            }

            v140 = v119 + v122;
            v141 = v120 + 2;
            v142 = v74[3];
            if (v142 == 127)
            {
              v151 = *(v140 + 16);
              v152 = *(v140 + 32);
              v153 = *(v140 + 48);
              v154 = *(v140 + 80);
              v155 = *(v140 + 96);
              v156 = *(v140 + 112);
              v157 = *(v140 + 64);
              *v141 = *v140;
              v120[3] = v152;
              v158 = &v141->i8[v77];
              v159 = &v141->i8[v29];
              *v159 = v151;
              *(v159 + 1) = v153;
              *v158 = v157;
              *(v158 + 1) = v155;
              v160 = &v141->i8[v77 + v29];
              *v160 = v154;
              *(v160 + 1) = v156;
              v143 = 128;
            }

            else if (v142 == 3)
            {
              v147 = vld1q_dup_f32(v140);
              v120[2] = v147;
              v120[3] = v147;
              v148 = &v141->i8[v29];
              *v148 = v147;
              v148[1] = v147;
              v149 = &v141->i8[v77];
              *v149 = v147;
              v149[1] = v147;
              v150 = &v141->i8[v351];
              *v150 = v147;
              v150[1] = v147;
              v143 = 4;
            }

            else if (v74[3])
            {
              v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, v29, v140, v142);
            }

            else
            {
              v143 = 0;
              *v141 = 0u;
              v120[3] = 0u;
              v144 = &v141->i8[v29];
              *v144 = 0u;
              *(v144 + 1) = 0u;
              v145 = &v141->i8[v77];
              *v145 = 0u;
              *(v145 + 1) = 0u;
              v146 = &v141->i8[v351];
              *v146 = 0u;
              *(v146 + 1) = 0u;
            }

            v161 = v140 + v143;
            v162 = (v75 + 64);
            v163 = v74[4];
            if (v163 == 127)
            {
              v172 = *(v161 + 16);
              v173 = *(v161 + 32);
              v174 = *(v161 + 48);
              v175 = *(v161 + 80);
              v176 = *(v161 + 96);
              v177 = *(v161 + 112);
              v178 = *(v161 + 64);
              *v162 = *v161;
              *(v75 + 80) = v173;
              v179 = &v162->i8[v77];
              v180 = &v162->i8[v29];
              *v180 = v172;
              *(v180 + 1) = v174;
              *v179 = v178;
              *(v179 + 1) = v176;
              v181 = &v162->i8[v77 + v29];
              *v181 = v175;
              *(v181 + 1) = v177;
              v164 = 128;
            }

            else if (v163 == 3)
            {
              v168 = vld1q_dup_f32(v161);
              *(v75 + 64) = v168;
              *(v75 + 80) = v168;
              v169 = &v162->i8[v29];
              *v169 = v168;
              v169[1] = v168;
              v170 = &v162->i8[v77];
              *v170 = v168;
              v170[1] = v168;
              v171 = &v162->i8[v351];
              *v171 = v168;
              v171[1] = v168;
              v164 = 4;
            }

            else if (v74[4])
            {
              v164 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v162, v29, v161, v163);
            }

            else
            {
              v164 = 0;
              *v162 = 0u;
              *(v75 + 80) = 0u;
              v165 = &v162->i8[v29];
              *v165 = 0u;
              *(v165 + 1) = 0u;
              v166 = &v162->i8[v77];
              *v166 = 0u;
              *(v166 + 1) = 0u;
              v167 = &v162->i8[v351];
              *v167 = 0u;
              *(v167 + 1) = 0u;
            }

            v182 = v161 + v164;
            v183 = (v75 + 96);
            v184 = v74[5];
            if (v184 == 127)
            {
              v193 = *(v182 + 16);
              v194 = *(v182 + 32);
              v195 = *(v182 + 48);
              v196 = *(v182 + 80);
              v197 = *(v182 + 96);
              v198 = *(v182 + 112);
              v199 = *(v182 + 64);
              *v183 = *v182;
              *(v75 + 112) = v194;
              v200 = &v183->i8[v77];
              v201 = &v183->i8[v29];
              *v201 = v193;
              *(v201 + 1) = v195;
              *v200 = v199;
              *(v200 + 1) = v197;
              v202 = &v183->i8[v77 + v29];
              *v202 = v196;
              *(v202 + 1) = v198;
              v185 = 128;
            }

            else if (v184 == 3)
            {
              v189 = vld1q_dup_f32(v182);
              *(v75 + 96) = v189;
              *(v75 + 112) = v189;
              v190 = &v183->i8[v29];
              *v190 = v189;
              v190[1] = v189;
              v191 = &v183->i8[v77];
              *v191 = v189;
              v191[1] = v189;
              v192 = &v183->i8[v351];
              *v192 = v189;
              v192[1] = v189;
              v185 = 4;
            }

            else if (v74[5])
            {
              v185 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v183, v29, v182, v184);
            }

            else
            {
              v185 = 0;
              *v183 = 0u;
              *(v75 + 112) = 0u;
              v186 = &v183->i8[v29];
              *v186 = 0u;
              *(v186 + 1) = 0u;
              v187 = &v183->i8[v77];
              *v187 = 0u;
              *(v187 + 1) = 0u;
              v188 = &v183->i8[v351];
              *v188 = 0u;
              *(v188 + 1) = 0u;
            }

            a7 = v360;
            v203 = v182 + v185;
            v204 = v120 + 4;
            v205 = v74[6];
            if (v205 == 127)
            {
              v214 = *(v203 + 16);
              v215 = *(v203 + 32);
              v216 = *(v203 + 48);
              v217 = *(v203 + 80);
              v218 = *(v203 + 96);
              v219 = *(v203 + 112);
              v220 = *(v203 + 64);
              *v204 = *v203;
              v120[5] = v215;
              v221 = &v204->i8[v77];
              v222 = &v204->i8[v29];
              *v222 = v214;
              *(v222 + 1) = v216;
              *v221 = v220;
              *(v221 + 1) = v218;
              v223 = &v204->i8[v77 + v29];
              *v223 = v217;
              *(v223 + 1) = v219;
              v206 = 128;
            }

            else if (v205 == 3)
            {
              v210 = vld1q_dup_f32(v203);
              v120[4] = v210;
              v120[5] = v210;
              v211 = &v204->i8[v29];
              *v211 = v210;
              v211[1] = v210;
              v212 = &v204->i8[v77];
              *v212 = v210;
              v212[1] = v210;
              v213 = &v204->i8[v351];
              *v213 = v210;
              v213[1] = v210;
              v206 = 4;
            }

            else if (v74[6])
            {
              v206 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v204, v29, v203, v205);
            }

            else
            {
              v206 = 0;
              *v204 = 0u;
              v120[5] = 0u;
              v207 = &v204->i8[v29];
              *v207 = 0u;
              *(v207 + 1) = 0u;
              v208 = &v204->i8[v77];
              *v208 = 0u;
              *(v208 + 1) = 0u;
              v209 = &v204->i8[v351];
              *v209 = 0u;
              *(v209 + 1) = 0u;
            }

            v224 = v203 + v206;
            v225 = v120 + 6;
            v226 = v74[7];
            if (v226 == 127)
            {
              v231 = *(v224 + 16);
              v232 = *(v224 + 32);
              v233 = *(v224 + 48);
              v234 = *(v224 + 64);
              v235 = *(v224 + 80);
              v236 = *(v224 + 96);
              v237 = *(v224 + 112);
              *v225 = *v224;
              v120[7] = v232;
              v238 = &v225->i8[v77];
              v239 = &v225->i8[v29];
              *v239 = v231;
              *(v239 + 1) = v233;
              *v238 = v234;
              *(v238 + 1) = v236;
              v240 = &v225->i8[v77 + v29];
              *v240 = v235;
              *(v240 + 1) = v237;
            }

            else if (v226 == 3)
            {
              v227 = vld1q_dup_f32(v224);
              v120[6] = v227;
              v120[7] = v227;
LABEL_144:
              v228 = &v225->i8[v29];
              *v228 = v227;
              v228[1] = v227;
              v229 = &v225->i8[v77];
              *v229 = v227;
              v229[1] = v227;
              v230 = &v225->i8[v351];
              *v230 = v227;
              v230[1] = v227;
            }

            else
            {
              if (!v74[7])
              {
                v227 = 0uLL;
                *v225 = 0u;
                v120[7] = 0u;
                goto LABEL_144;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v225, v29, v224, v226);
            }

            v28 = v371;
            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v28;
          block[5] = v73;
          v379 = v45;
          v380 = v369;
          v375 = v357;
          v376 = v42 - v40;
          block[6] = v74;
          v373 = v75;
          v29 = a11;
          v374 = a11;
          v377 = v356;
          v378 = v44;
          if (v46)
          {
            dispatch_sync(*(*(v28 + 8) + 16552), block);
            v28 = v371;
            a7 = v360;
          }

          else
          {
            v82 = *v74;
            a7 = v360;
            if (v82 == 127)
            {
              v242 = v73[1];
              v243 = v73[2];
              v244 = v73[3];
              v245 = v73[4];
              v246 = v73[5];
              v247 = v73[6];
              v248 = v73[7];
              v382 = *v73;
              v383 = v243;
              v390 = v242;
              v391 = v244;
              v398 = v245;
              v399 = v247;
              v406 = v246;
              v407 = v248;
              v83 = 128;
            }

            else if (v82 == 3)
            {
              v241 = vld1q_dup_f32(v73->f32);
              v382 = v241;
              v383 = v241;
              v390 = v241;
              v391 = v241;
              v398 = v241;
              v399 = v241;
              v406 = v241;
              v407 = v241;
              v83 = 4;
            }

            else if (*v74)
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v382, 128, v73, v82);
            }

            else
            {
              v83 = 0;
              v383 = 0u;
              v382 = 0u;
              v390 = 0u;
              v391 = 0u;
              v398 = 0u;
              v399 = 0u;
              v406 = 0u;
              v407 = 0u;
            }

            v249 = v73 + v83;
            v250 = v74[1];
            if (v250 == 127)
            {
              v253 = *(v249 + 16);
              v254 = *(v249 + 32);
              v255 = *(v249 + 48);
              v256 = *(v249 + 64);
              v257 = *(v249 + 80);
              v258 = *(v249 + 96);
              v259 = *(v249 + 112);
              v384 = *v249;
              v385 = v254;
              v392 = v253;
              v393 = v255;
              v400 = v256;
              v401 = v258;
              v408 = v257;
              v409 = v259;
              v251 = 128;
            }

            else if (v250 == 3)
            {
              v252 = vld1q_dup_f32(v249);
              v384 = v252;
              v385 = v252;
              v392 = v252;
              v393 = v252;
              v400 = v252;
              v401 = v252;
              v408 = v252;
              v409 = v252;
              v251 = 4;
            }

            else if (v74[1])
            {
              v251 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v384, 128, v249, v250);
            }

            else
            {
              v251 = 0;
              v384 = 0u;
              v385 = 0u;
              v392 = 0u;
              v393 = 0u;
              v400 = 0u;
              v401 = 0u;
              v408 = 0u;
              v409 = 0u;
            }

            v260 = v249 + v251;
            v261 = v74[2];
            if (v261 == 127)
            {
              v264 = *(v260 + 16);
              v265 = *(v260 + 32);
              v266 = *(v260 + 48);
              v267 = *(v260 + 64);
              v268 = *(v260 + 80);
              v269 = *(v260 + 96);
              v270 = *(v260 + 112);
              v414 = *v260;
              v415 = v265;
              v422 = v264;
              v423 = v266;
              v430 = v267;
              v431 = v269;
              v438 = v268;
              v439 = v270;
              v262 = 128;
            }

            else if (v261 == 3)
            {
              v263 = vld1q_dup_f32(v260);
              v414 = v263;
              v415 = v263;
              v422 = v263;
              v423 = v263;
              v430 = v263;
              v431 = v263;
              v438 = v263;
              v439 = v263;
              v262 = 4;
            }

            else if (v74[2])
            {
              v262 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v414, 128, v260, v261);
            }

            else
            {
              v262 = 0;
              v414 = 0u;
              v415 = 0u;
              v422 = 0u;
              v423 = 0u;
              v430 = 0u;
              v431 = 0u;
              v438 = 0u;
              v439 = 0u;
            }

            v271 = v260 + v262;
            v272 = v74[3];
            if (v272 == 127)
            {
              v275 = *(v271 + 16);
              v276 = *(v271 + 32);
              v277 = *(v271 + 48);
              v278 = *(v271 + 64);
              v279 = *(v271 + 80);
              v280 = *(v271 + 96);
              v281 = *(v271 + 112);
              v416 = *v271;
              v417 = v276;
              v424 = v275;
              v425 = v277;
              v432 = v278;
              v433 = v280;
              v440 = v279;
              v441 = v281;
              v273 = 128;
            }

            else if (v272 == 3)
            {
              v274 = vld1q_dup_f32(v271);
              v416 = v274;
              v417 = v274;
              v424 = v274;
              v425 = v274;
              v432 = v274;
              v433 = v274;
              v440 = v274;
              v441 = v274;
              v273 = 4;
            }

            else if (v74[3])
            {
              v273 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v416, 128, v271, v272);
            }

            else
            {
              v273 = 0;
              v416 = 0u;
              v417 = 0u;
              v424 = 0u;
              v425 = 0u;
              v432 = 0u;
              v433 = 0u;
              v440 = 0u;
              v441 = 0u;
            }

            v282 = v271 + v273;
            v283 = v74[4];
            if (v283 == 127)
            {
              v286 = *(v282 + 16);
              v287 = *(v282 + 32);
              v288 = *(v282 + 48);
              v289 = *(v282 + 64);
              v290 = *(v282 + 80);
              v291 = *(v282 + 96);
              v292 = *(v282 + 112);
              v386 = *v282;
              v387 = v287;
              v394 = v286;
              v395 = v288;
              v402 = v289;
              v403 = v291;
              v410 = v290;
              v411 = v292;
              v284 = 128;
            }

            else if (v283 == 3)
            {
              v285 = vld1q_dup_f32(v282);
              v386 = v285;
              v387 = v285;
              v394 = v285;
              v395 = v285;
              v402 = v285;
              v403 = v285;
              v410 = v285;
              v411 = v285;
              v284 = 4;
            }

            else if (v74[4])
            {
              v284 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v386, 128, v282, v283);
            }

            else
            {
              v284 = 0;
              v386 = 0u;
              v387 = 0u;
              v394 = 0u;
              v395 = 0u;
              v402 = 0u;
              v403 = 0u;
              v410 = 0u;
              v411 = 0u;
            }

            v293 = v282 + v284;
            v294 = v74[5];
            if (v294 == 127)
            {
              v297 = *(v293 + 16);
              v298 = *(v293 + 32);
              v299 = *(v293 + 48);
              v300 = *(v293 + 64);
              v301 = *(v293 + 80);
              v302 = *(v293 + 96);
              v303 = *(v293 + 112);
              v388 = *v293;
              v389 = v298;
              v396 = v297;
              v397 = v299;
              v404 = v300;
              v405 = v302;
              v412 = v301;
              v413 = v303;
              v295 = 128;
            }

            else if (v294 == 3)
            {
              v296 = vld1q_dup_f32(v293);
              v388 = v296;
              v389 = v296;
              v396 = v296;
              v397 = v296;
              v404 = v296;
              v405 = v296;
              v412 = v296;
              v413 = v296;
              v295 = 4;
            }

            else if (v74[5])
            {
              v295 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v388, 128, v293, v294);
            }

            else
            {
              v295 = 0;
              v388 = 0u;
              v389 = 0u;
              v396 = 0u;
              v397 = 0u;
              v404 = 0u;
              v405 = 0u;
              v412 = 0u;
              v413 = 0u;
            }

            v304 = v293 + v295;
            v305 = v74[6];
            if (v305 == 127)
            {
              v308 = *(v304 + 16);
              v309 = *(v304 + 32);
              v310 = *(v304 + 48);
              v311 = *(v304 + 64);
              v312 = *(v304 + 80);
              v313 = *(v304 + 96);
              v314 = *(v304 + 112);
              v418 = *v304;
              v419 = v309;
              v426 = v308;
              v427 = v310;
              v434 = v311;
              v435 = v313;
              v442 = v312;
              v443 = v314;
              v306 = 128;
            }

            else if (v305 == 3)
            {
              v307 = vld1q_dup_f32(v304);
              v418 = v307;
              v419 = v307;
              v426 = v307;
              v427 = v307;
              v434 = v307;
              v435 = v307;
              v442 = v307;
              v443 = v307;
              v306 = 4;
            }

            else if (v74[6])
            {
              v306 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v418, 128, v304, v305);
            }

            else
            {
              v306 = 0;
              v418 = 0u;
              v419 = 0u;
              v426 = 0u;
              v427 = 0u;
              v434 = 0u;
              v435 = 0u;
              v442 = 0u;
              v443 = 0u;
            }

            v315 = v304 + v306;
            v316 = v74[7];
            if (v316 == 127)
            {
              v318 = *(v315 + 16);
              v319 = *(v315 + 32);
              v320 = *(v315 + 48);
              v321 = *(v315 + 80);
              v322 = *(v315 + 96);
              v323 = *(v315 + 112);
              v324 = *(v315 + 64);
              v420 = *v315;
              v421 = v319;
              v428 = v318;
              v429 = v320;
              v436 = v324;
              v437 = v322;
              v444 = v321;
              v445 = v323;
            }

            else if (v316 == 3)
            {
              v317 = vld1q_dup_f32(v315);
              v420 = v317;
              v421 = v317;
              v428 = v317;
              v429 = v317;
              v436 = v317;
              v437 = v317;
              v444 = v317;
              v445 = v317;
            }

            else if (v74[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v420, 128, v315, v316);
            }

            else
            {
              v420 = 0u;
              v421 = 0u;
              v428 = 0u;
              v429 = 0u;
              v436 = 0u;
              v437 = 0u;
              v444 = 0u;
              v445 = 0u;
            }

            v325 = v377;
            v28 = v371;
            if (v377)
            {
              v326 = 0;
              v327 = &v382.i8[128 * v375 + 8 * v376];
              v328 = v378;
              do
              {
                if (v328)
                {
                  v329 = 0;
                  v330 = v373 + v374 * v326;
                  do
                  {
                    *(v330 + v329) = v327[v329];
                    ++v329;
                    v328 = v378;
                  }

                  while (8 * v378 > v329);
                  v325 = v377;
                }

                ++v326;
                v327 += 128;
              }

              while (v326 < v325);
            }
          }

LABEL_29:
          v23 = v38++ == v361 >> 4;
        }

        while (!v23);
        v23 = v18++ == v350;
      }

      while (!v23);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
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
            v51 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99, a11, v96, *v98)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 4, a11, v51, v98[1]);
            v53 = (v99 + v122);
            v54 = v52 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v99 + v122), a11, v52, v98[2]);
            v55 = v54 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v99 + v122 + 64), a11, v54, v98[3]);
            v56 = v55 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 8, a11, v55, v98[4]);
            v57 = v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 12, a11, v56, v98[5]);
            v58 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v53 + 8, a11, v57, v98[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v53 + 12, a11, v57 + v58, v98[7]);
            v50 = v136;
            v23 = v129;
LABEL_49:
            v59 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v100 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 256, v96, *v98)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 256, v100, v98[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 256, v101, v98[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 256, v102, v98[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 256, v103, v98[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 256, v104, v98[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v105, v98[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v105 + v106, v98[7]);
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
                v112 = v141 + v142 * v108;
                do
                {
                  v112[v111] = *(v109->f64 + v111);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
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
            v51 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99, a11, v96, *v98)];
            v52 = v51 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 4, a11, v51, v98[1]);
            v53 = (v99 + v122);
            v54 = v52 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v99 + v122), a11, v52, v98[2]);
            v55 = v54 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v99 + v122 + 64), a11, v54, v98[3]);
            v56 = v55 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 8, a11, v55, v98[4]);
            v57 = v56 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v99 + 12, a11, v56, v98[5]);
            v58 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v53 + 8, a11, v57, v98[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v53 + 12, a11, v57 + v58, v98[7]);
            v50 = v136;
            v23 = v129;
LABEL_49:
            v59 = v48 + 1;
            goto LABEL_50;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v100 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v150, 256, v96, *v98)];
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v151, 256, v100, v98[1]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 256, v101, v98[2]);
          v103 = v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 256, v102, v98[3]);
          v104 = v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v152, 256, v103, v98[4]);
          v105 = v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v153, 256, v104, v98[5]);
          v106 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v105, v98[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v105 + v106, v98[7]);
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
                v112 = v141 + v142 * v108;
                do
                {
                  v112[v111] = *(v109->f64 + v111);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
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
            v44 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v138 + 16 * (v55 - v43)), v32, v86, *v91)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 4, v32, v44, v91[1]);
            v46 = (v92 + v125);
            v47 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v125), v32, v45, v91[2]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v125 + 64), v32, v47, v91[3]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 8, v32, v48, v91[4]);
            v50 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 12, v32, v49, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v46 + 8, v32, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v46 + 12, v32, v50 + v51, v91[7]);
            v43 = v141;
            v23 = v132;
LABEL_29:
            v52 = v41 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 256, v86, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 256, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 256, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 256, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 256, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 256, v98 + v99, v91[7]);
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
                  *(v105 + v104) = *(v102->f64 + v104);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
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
            v44 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v138 + 16 * (v55 - v43)), v32, v86, *v91)];
            v45 = v44 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 4, v32, v44, v91[1]);
            v46 = (v92 + v125);
            v47 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v125), v32, v45, v91[2]);
            v48 = v47 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock((v92 + v125 + 64), v32, v47, v91[3]);
            v49 = v48 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 8, v32, v48, v91[4]);
            v50 = v49 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v92 + 12, v32, v49, v91[5]);
            v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v46 + 8, v32, v50, v91[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v46 + 12, v32, v50 + v51, v91[7]);
            v43 = v141;
            v23 = v132;
LABEL_29:
            v52 = v41 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v93 = &v86[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v154, 256, v86, *v91)];
          v94 = v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v155, 256, v93, v91[1]);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v158, 256, v94, v91[2]);
          v96 = v95 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v159, 256, v95, v91[3]);
          v97 = v96 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v156, 256, v96, v91[4]);
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v157, 256, v97, v91[5]);
          v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v160, 256, v98, v91[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v161, 256, v98 + v99, v91[7]);
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
                  *(v105 + v104) = *(v102->f64 + v104);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v283 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v237 = a8;
  v217 = a8 + a10 - 1;
  if (*(v15 + 168))
  {
    v16 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v16 = 0;
  }

  v17 = a8 >> 3;
  v18 = a5 - 1;
  v19 = a6 - 1;
  v216 = v217 >> 3;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v232 = v23;
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
      v231 = 0;
LABEL_32:
      v228 = v25 - 4;
      v220 = v24 - 3;
      v31 = -1 << *(*(v15 + 208) + 48);
      v214 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v231 = v30 >= v24;
    goto LABEL_32;
  }

  v231 = 0;
  v214 = 0;
  v220 = 0;
  v228 = 0;
LABEL_33:
  if (v17 <= v216)
  {
    v230 = a7 + a9 - 1;
    if (a7 >> 4 <= v230 >> 4)
    {
      v32 = a11;
      v240 = v18 >> 4;
      v224 = v18 & 0xF;
      v229 = (v18 & 0xF) + 1;
      v212 = v19 & 7;
      v213 = v19 >> 3;
      v223 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v34.i8 = vcgt_u32(v33, 0x1F0000000FLL);
      *v35.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v34.i8);
      v219 = v35.i64[0];
      v222 = v35.i32[0] | v35.i32[1];
      v218 = v34.i64[0];
      v238 = v15;
      v221 = 2 * a11;
      do
      {
        v36 = (8 * v17) | 7;
        if (8 * v17 <= v237)
        {
          v37 = v237;
        }

        else
        {
          v37 = 8 * v17;
        }

        if (v217 < v36)
        {
          v36 = v217;
        }

        v227 = v37 - 8 * v17;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v212;
        v226 = v39;
        v41 = v39 != 8;
        v42 = a7 >> 4;
        v43 = v212 + 1;
        if (v17 != v213)
        {
          v43 = 8;
        }

        v239 = v43;
        if (v17 != v213)
        {
          v40 = v41;
        }

        v225 = v40;
        v44 = v17 & ~(-1 << v220);
        v235 = a2 + (v37 - v237) * v32;
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

          if (v230 < v48)
          {
            v48 = a7 + a9 - 1;
          }

          v50 = v48 - v49;
          v51 = v50 + 1;
          if (v42 == v240)
          {
            v52 = v229;
          }

          else
          {
            v52 = 16;
          }

          v53 = 1;
          if (8 * v17 >= v237 && v47 >= v45)
          {
            v54 = v50 != v224;
            if (v42 != v240)
            {
              v54 = v51 != 16;
            }

            v53 = v54 || v225;
          }

          if (v231)
          {
            if (v228 | v220)
            {
              v55 = 0;
              v56 = 0;
              v57 = v228 != 0;
              v58 = 1;
              v60 = v220 != 0;
              v59 = v220;
              v61 = v228;
              do
              {
                --v59;
                if (v60)
                {
                  v56 |= (v44 & v58) << v55++;
                }

                else
                {
                  v59 = 0;
                }

                --v61;
                if (v57)
                {
                  v56 |= (v42 & ~(-1 << v228) & v58) << v55++;
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

            v70 = v62 + *(v15 + 336) * ((v42 >> v228) + (v17 >> v220) * v214);
          }

          else if (v222)
          {
            v63 = 0;
            v64 = 0;
            v65 = 1;
            v67 = v218;
            v66 = BYTE4(v218);
            v68 = v219;
            v69 = HIDWORD(v219);
            do
            {
              --v68;
              if (v67)
              {
                v64 |= (v65 & v17) << v63++;
              }

              else
              {
                v68 = 0;
              }

              --v69;
              if (v66)
              {
                v64 |= (v65 & v42) << v63++;
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

          v75 = v74 + 7;
          if (v75 < 0x10)
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
            v76 = 32 - __clz(~(-1 << -__clz((v75 >> 3) - 1)));
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
          if (v232)
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
          v88 = (v235 + 4 * (v49 - v45));
          if (!(v53 & 1 | (v52 < 0x10u)) && v239 > 7)
          {
            v89 = *v87;
            if (v89 == 63)
            {
              v98 = (v83 + 32);
              *v35.i8 = vld2q_f64(v98);
              v99 = *v83;
              v100 = *(v83 + 1);
              *v88 = vzip1q_s64(*v83, v100);
              v32 = a11;
              *(v88 + a11) = vzip2q_s64(v99, v100);
              v91 = 3 * a11;
              v90 = 2 * a11;
              v101 = &v88->i8[v221];
              *v101 = v35;
              *(v101 + a11) = v34;
              v92 = 64;
            }

            else
            {
              v32 = a11;
              v91 = 3 * a11;
              v90 = 2 * a11;
              if (v89 == 1)
              {
                v35 = vld1q_dup_s16(v83);
                *v88 = v35;
                *(v88 + a11) = v35;
                *(v88 + 2 * a11) = v35;
                *(v88 + 3 * a11) = v35;
                v92 = 2;
              }

              else if (*v87)
              {
                v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v88, a11, v83, v89, *v35.i8, *v34.i8);
              }

              else
              {
                v92 = 0;
                v88->i64[0] = 0;
                v88->i64[1] = 0;
                v93 = (v88->i64 + a11);
                *v93 = 0;
                v93[1] = 0;
                v94 = (v88->i64 + v221);
                *v94 = 0;
                v94[1] = 0;
                v95 = (v88->i64 + 3 * a11);
                *v95 = 0;
                v95[1] = 0;
              }
            }

            v102 = &v83[v92];
            v103 = v88 + 1;
            v104 = v87[1];
            if (v104 == 63)
            {
              v109 = (v102 + 32);
              *v35.i8 = vld2q_f64(v109);
              v110 = *v102;
              v111 = *(v102 + 16);
              *v103 = vzip1q_s64(*v102, v111);
              *(v103 + v32) = vzip2q_s64(v110, v111);
              v112 = &v103->i8[v90];
              *v112 = v35;
              *(v112 + v32) = v34;
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
              v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v103, v32, v102, v104, *v35.i8, *v34.i8);
            }

            else
            {
              v105 = 0;
              v103->i64[0] = 0;
              v88[1].i64[1] = 0;
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
            v114 = (v88 + v223);
            v115 = v87[2];
            if (v115 == 63)
            {
              v120 = (v113 + 32);
              *v35.i8 = vld2q_f64(v120);
              v121 = *v113;
              v122 = *(v113 + 16);
              *v114 = vzip1q_s64(*v113, v122);
              *(v114 + v32) = vzip2q_s64(v121, v122);
              v123 = &v114->i8[v90];
              *v123 = v35;
              *(v123 + v32) = v34;
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
              v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v88 + v223), v32, v113, v115, *v35.i8, *v34.i8);
            }

            else
            {
              v116 = 0;
              v114->i64[0] = 0;
              v114->i64[1] = 0;
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
            v125 = v114 + 1;
            v126 = v87[3];
            if (v126 == 63)
            {
              v131 = (v124 + 32);
              *v35.i8 = vld2q_f64(v131);
              v132 = *v124;
              v133 = *(v124 + 16);
              *v125 = vzip1q_s64(*v124, v133);
              *(v125 + v32) = vzip2q_s64(v132, v133);
              v134 = &v125->i8[v90];
              *v134 = v35;
              *(v134 + v32) = v34;
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
              v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v125, v32, v124, v126, *v35.i8, *v34.i8);
            }

            else
            {
              v127 = 0;
              v125->i64[0] = 0;
              v114[1].i64[1] = 0;
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
            v136 = v88 + 2;
            v137 = v87[4];
            if (v137 == 63)
            {
              v142 = (v135 + 32);
              *v35.i8 = vld2q_f64(v142);
              v143 = *v135;
              v144 = *(v135 + 16);
              *v136 = vzip1q_s64(*v135, v144);
              *(v136 + v32) = vzip2q_s64(v143, v144);
              v145 = &v136->i8[v90];
              *v145 = v35;
              *(v145 + v32) = v34;
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
              v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v136, v32, v135, v137, *v35.i8, *v34.i8);
            }

            else
            {
              v138 = 0;
              v136->i64[0] = 0;
              v88[2].i64[1] = 0;
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
            v147 = v88 + 3;
            v148 = v87[5];
            if (v148 == 63)
            {
              v153 = (v146 + 32);
              *v35.i8 = vld2q_f64(v153);
              v154 = *v146;
              v155 = *(v146 + 16);
              *v147 = vzip1q_s64(*v146, v155);
              *(v147 + v32) = vzip2q_s64(v154, v155);
              v156 = &v147->i8[v90];
              *v156 = v35;
              *(v156 + v32) = v34;
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
              v149 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v147, v32, v146, v148, *v35.i8, *v34.i8);
            }

            else
            {
              v149 = 0;
              v147->i64[0] = 0;
              v88[3].i64[1] = 0;
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
            v158 = v114 + 2;
            v159 = v87[6];
            if (v159 == 63)
            {
              v164 = (v157 + 32);
              *v35.i8 = vld2q_f64(v164);
              v165 = *v157;
              v166 = *(v157 + 16);
              *v158 = vzip1q_s64(*v157, v166);
              *(v158 + v32) = vzip2q_s64(v165, v166);
              v167 = &v158->i8[v90];
              *v167 = v35;
              *(v167 + v32) = v34;
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
              v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v158, v32, v146 + v149, v159, *v35.i8, *v34.i8);
            }

            else
            {
              v160 = 0;
              v158->i64[0] = 0;
              v114[2].i64[1] = 0;
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
            v169 = v114 + 3;
            v170 = v87[7];
            if (v170 == 63)
            {
              v174 = (v168 + 32);
              *v35.i8 = vld2q_f64(v174);
              v175 = *v168;
              v176 = *(v168 + 16);
              *v169 = vzip1q_s64(*v168, v176);
              *(v169 + v32) = vzip2q_s64(v175, v176);
              v177 = &v169->i8[v90];
              *v177 = v35;
              *(v177 + v32) = v34;
              v45 = a7;
              v15 = v238;
            }

            else
            {
              v45 = a7;
              v15 = v238;
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
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v169, v32, v168, v170, *v35.i8, *v34.i8);
              }

              else
              {
                v169->i64[0] = 0;
                v114[3].i64[1] = 0;
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v238;
          block[5] = v83;
          v248 = v52;
          v249 = v239;
          v244 = v227;
          v245 = v49 - v47;
          block[6] = v87;
          v242 = v88;
          v32 = a11;
          v243 = a11;
          v246 = v226;
          v247 = v51;
          if (v53)
          {
            dispatch_sync(*(*(v238 + 8) + 16552), block);
            v45 = a7;
            v15 = v238;
LABEL_49:
            v46 = v42 + 1;
            goto LABEL_50;
          }

          v96 = *v87;
          if (v96 == 63)
          {
            v34 = *(v83 + 1);
            v178 = (v83 + 32);
            v284 = vld2q_f64(v178);
            v35 = vzip2q_s64(*v83, v34);
            v251 = vzip1q_s64(*v83, v34);
            v255 = v35;
            v259 = v284.val[0];
            v263 = v284.val[1];
            v97 = 64;
          }

          else if (v96 == 1)
          {
            v35 = vld1q_dup_s16(v83);
            v251 = v35;
            v255 = v35;
            v259 = v35;
            v263 = v35;
            v97 = 2;
          }

          else if (*v87)
          {
            v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 64, v83, v96, *v35.i8, *v34.i8);
          }

          else
          {
            v97 = 0;
            v251 = 0uLL;
            v255 = 0uLL;
            v259 = 0uLL;
            v263 = 0uLL;
          }

          v179 = &v83[v97];
          v180 = v87[1];
          if (v180 == 63)
          {
            v34 = *(v179 + 16);
            v182 = (v179 + 32);
            v285 = vld2q_f64(v182);
            v35 = vzip2q_s64(*v179, v34);
            v252 = vzip1q_s64(*v179, v34);
            v256 = v35;
            v260 = v285.val[0];
            v264 = v285.val[1];
            v181 = 64;
          }

          else if (v180 == 1)
          {
            v35 = vld1q_dup_s16(v179);
            v252 = v35;
            v256 = v35;
            v260 = v35;
            v264 = v35;
            v181 = 2;
          }

          else if (v87[1])
          {
            v181 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 64, v179, v180, *v35.i8, *v34.i8);
          }

          else
          {
            v181 = 0;
            v252 = 0uLL;
            v256 = 0uLL;
            v260 = 0uLL;
            v264 = 0uLL;
          }

          v183 = v179 + v181;
          v184 = v87[2];
          if (v184 == 63)
          {
            v34 = *(v183 + 16);
            v186 = (v183 + 32);
            v286 = vld2q_f64(v186);
            v35 = vzip2q_s64(*v183, v34);
            v267 = vzip1q_s64(*v183, v34);
            v271 = v35;
            v275 = v286.val[0];
            v279 = v286.val[1];
            v185 = 64;
          }

          else if (v184 == 1)
          {
            v35 = vld1q_dup_s16(v183);
            v267 = v35;
            v271 = v35;
            v275 = v35;
            v279 = v35;
            v185 = 2;
          }

          else if (v87[2])
          {
            v185 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v267, 64, v183, v184, *v35.i8, *v34.i8);
          }

          else
          {
            v185 = 0;
            v267 = 0uLL;
            v271 = 0uLL;
            v275 = 0uLL;
            v279 = 0uLL;
          }

          v187 = v183 + v185;
          v188 = v87[3];
          if (v188 == 63)
          {
            v34 = *(v187 + 16);
            v190 = (v187 + 32);
            v287 = vld2q_f64(v190);
            v35 = vzip2q_s64(*v187, v34);
            v268 = vzip1q_s64(*v187, v34);
            v272 = v35;
            v276 = v287.val[0];
            v280 = v287.val[1];
            v189 = 64;
          }

          else if (v188 == 1)
          {
            v35 = vld1q_dup_s16(v187);
            v268 = v35;
            v272 = v35;
            v276 = v35;
            v280 = v35;
            v189 = 2;
          }

          else if (v87[3])
          {
            v189 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v268, 64, v187, v188, *v35.i8, *v34.i8);
          }

          else
          {
            v189 = 0;
            v268 = 0uLL;
            v272 = 0uLL;
            v276 = 0uLL;
            v280 = 0uLL;
          }

          v191 = v187 + v189;
          v192 = v87[4];
          if (v192 == 63)
          {
            v34 = *(v191 + 16);
            v194 = (v191 + 32);
            v288 = vld2q_f64(v194);
            v35 = vzip2q_s64(*v191, v34);
            v253 = vzip1q_s64(*v191, v34);
            v257 = v35;
            v261 = v288.val[0];
            v265 = v288.val[1];
            v193 = 64;
          }

          else if (v192 == 1)
          {
            v35 = vld1q_dup_s16(v191);
            v253 = v35;
            v257 = v35;
            v261 = v35;
            v265 = v35;
            v193 = 2;
          }

          else if (v87[4])
          {
            v193 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v253, 64, v191, v192, *v35.i8, *v34.i8);
          }

          else
          {
            v193 = 0;
            v253 = 0uLL;
            v257 = 0uLL;
            v261 = 0uLL;
            v265 = 0uLL;
          }

          v195 = v191 + v193;
          v196 = v87[5];
          if (v196 == 63)
          {
            v34 = *(v195 + 16);
            v198 = (v195 + 32);
            v289 = vld2q_f64(v198);
            v35 = vzip2q_s64(*v195, v34);
            v254 = vzip1q_s64(*v195, v34);
            v258 = v35;
            v262 = v289.val[0];
            v266 = v289.val[1];
            v197 = 64;
          }

          else if (v196 == 1)
          {
            v35 = vld1q_dup_s16(v195);
            v254 = v35;
            v258 = v35;
            v262 = v35;
            v266 = v35;
            v197 = 2;
          }

          else if (v87[5])
          {
            v197 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 64, v195, v196, *v35.i8, *v34.i8);
          }

          else
          {
            v197 = 0;
            v254 = 0uLL;
            v258 = 0uLL;
            v262 = 0uLL;
            v266 = 0uLL;
          }

          v199 = v195 + v197;
          v200 = v87[6];
          if (v200 == 63)
          {
            v34 = *(v199 + 16);
            v202 = (v199 + 32);
            v290 = vld2q_f64(v202);
            v35 = vzip2q_s64(*v199, v34);
            v269 = vzip1q_s64(*v199, v34);
            v273 = v35;
            v277 = v290.val[0];
            v281 = v290.val[1];
            v201 = 64;
          }

          else if (v200 == 1)
          {
            v35 = vld1q_dup_s16(v199);
            v269 = v35;
            v273 = v35;
            v277 = v35;
            v281 = v35;
            v201 = 2;
          }

          else if (v87[6])
          {
            v201 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v269, 64, v199, v200, *v35.i8, *v34.i8);
          }

          else
          {
            v201 = 0;
            v269 = 0uLL;
            v273 = 0uLL;
            v277 = 0uLL;
            v281 = 0uLL;
          }

          v203 = v199 + v201;
          v204 = v87[7];
          if (v204 == 63)
          {
            v34 = *(v203 + 16);
            v205 = (v203 + 32);
            v291 = vld2q_f64(v205);
            v35 = vzip2q_s64(*v203, v34);
            v270 = vzip1q_s64(*v203, v34);
            v274 = v35;
            v278 = v291.val[0];
            v282 = v291.val[1];
            v45 = a7;
            v15 = v238;
          }

          else
          {
            v45 = a7;
            v15 = v238;
            if (v204 == 1)
            {
              v35 = vld1q_dup_s16(v203);
              v270 = v35;
              v274 = v35;
              v278 = v35;
              v282 = v35;
            }

            else if (v204)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v270, 64, v203, v204, *v35.i8, *v34.i8);
            }

            else
            {
              v270 = 0uLL;
              v274 = 0uLL;
              v278 = 0uLL;
              v282 = 0uLL;
            }
          }

          v206 = v246;
          v46 = v42 + 1;
          if (v246)
          {
            v207 = 0;
            v208 = &v251.i8[64 * v244 + 4 * v245];
            v209 = v247;
            do
            {
              if (v209)
              {
                v210 = 0;
                v211 = &v242->i8[v243 * v207];
                do
                {
                  v211[v210] = v208[v210];
                  ++v210;
                  v209 = v247;
                }

                while (4 * v247 > v210);
                v206 = v246;
              }

              ++v207;
              v208 += 64;
            }

            while (v207 < v206);
          }

LABEL_50:
          v20 = v42 == v230 >> 4;
          v42 = v46;
        }

        while (!v20);
        v20 = v17++ == v216;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v283 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v237 = a8;
  v217 = a8 + a10 - 1;
  if (*(v15 + 168))
  {
    v16 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v16 = 0;
  }

  v17 = a8 >> 3;
  v18 = a5 - 1;
  v19 = a6 - 1;
  v216 = v217 >> 3;
  v20 = (v16 & 0xD00) == 0 || v16 == 768;
  v21 = v16 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v232 = v23;
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
      v231 = 0;
LABEL_32:
      v228 = v25 - 4;
      v220 = v24 - 3;
      v31 = -1 << *(*(v15 + 208) + 48);
      v214 = (((~v31 + a5) & v31) + ~(-1 << v25)) >> v25;
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

    v231 = v30 >= v24;
    goto LABEL_32;
  }

  v231 = 0;
  v214 = 0;
  v220 = 0;
  v228 = 0;
LABEL_33:
  if (v17 <= v216)
  {
    v230 = a7 + a9 - 1;
    if (a7 >> 4 <= v230 >> 4)
    {
      v32 = a11;
      v240 = v18 >> 4;
      v224 = v18 & 0xF;
      v229 = (v18 & 0xF) + 1;
      v212 = v19 & 7;
      v213 = v19 >> 3;
      v223 = 4 * a11;
      v33 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v34.i8 = vcgt_u32(v33, 0x1F0000000FLL);
      *v35.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v34.i8);
      v219 = v35.i64[0];
      v222 = v35.i32[0] | v35.i32[1];
      v218 = v34.i64[0];
      v238 = v15;
      v221 = 2 * a11;
      do
      {
        v36 = (8 * v17) | 7;
        if (8 * v17 <= v237)
        {
          v37 = v237;
        }

        else
        {
          v37 = 8 * v17;
        }

        if (v217 < v36)
        {
          v36 = v217;
        }

        v227 = v37 - 8 * v17;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v212;
        v226 = v39;
        v41 = v39 != 8;
        v42 = a7 >> 4;
        v43 = v212 + 1;
        if (v17 != v213)
        {
          v43 = 8;
        }

        v239 = v43;
        if (v17 != v213)
        {
          v40 = v41;
        }

        v225 = v40;
        v44 = v17 & ~(-1 << v220);
        v235 = a2 + (v37 - v237) * v32;
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

          if (v230 < v48)
          {
            v48 = a7 + a9 - 1;
          }

          v50 = v48 - v49;
          v51 = v50 + 1;
          if (v42 == v240)
          {
            v52 = v229;
          }

          else
          {
            v52 = 16;
          }

          v53 = 1;
          if (8 * v17 >= v237 && v47 >= v45)
          {
            v54 = v50 != v224;
            if (v42 != v240)
            {
              v54 = v51 != 16;
            }

            v53 = v54 || v225;
          }

          if (v231)
          {
            if (v228 | v220)
            {
              v55 = 0;
              v56 = 0;
              v57 = v228 != 0;
              v58 = 1;
              v60 = v220 != 0;
              v59 = v220;
              v61 = v228;
              do
              {
                --v59;
                if (v60)
                {
                  v56 |= (v44 & v58) << v55++;
                }

                else
                {
                  v59 = 0;
                }

                --v61;
                if (v57)
                {
                  v56 |= (v42 & ~(-1 << v228) & v58) << v55++;
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

            v70 = v62 + *(v15 + 336) * ((v42 >> v228) + (v17 >> v220) * v214);
          }

          else if (v222)
          {
            v63 = 0;
            v64 = 0;
            v65 = 1;
            v67 = v218;
            v66 = BYTE4(v218);
            v68 = v219;
            v69 = HIDWORD(v219);
            do
            {
              --v68;
              if (v67)
              {
                v64 |= (v65 & v17) << v63++;
              }

              else
              {
                v68 = 0;
              }

              --v69;
              if (v66)
              {
                v64 |= (v65 & v42) << v63++;
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

          v75 = v74 + 7;
          if (v75 < 0x10)
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
            v76 = 32 - __clz(~(-1 << -__clz((v75 >> 3) - 1)));
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
          if (v232)
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
          v88 = (v235 + 4 * (v49 - v45));
          if (!(v53 & 1 | (v52 < 0x10u)) && v239 > 7)
          {
            v89 = *v87;
            if (v89 == 63)
            {
              v98 = (v83 + 32);
              *v35.i8 = vld2q_f64(v98);
              v99 = *v83;
              v100 = *(v83 + 1);
              *v88 = vzip1q_s64(*v83, v100);
              v32 = a11;
              *(v88 + a11) = vzip2q_s64(v99, v100);
              v91 = 3 * a11;
              v90 = 2 * a11;
              v101 = &v88->i8[v221];
              *v101 = v35;
              *(v101 + a11) = v34;
              v92 = 64;
            }

            else
            {
              v32 = a11;
              v91 = 3 * a11;
              v90 = 2 * a11;
              if (v89 == 1)
              {
                v35 = vld1q_dup_s16(v83);
                *v88 = v35;
                *(v88 + a11) = v35;
                *(v88 + 2 * a11) = v35;
                *(v88 + 3 * a11) = v35;
                v92 = 2;
              }

              else if (*v87)
              {
                v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v88, a11, v83, v89, *v35.i8, *v34.i8);
              }

              else
              {
                v92 = 0;
                v88->i64[0] = 0;
                v88->i64[1] = 0;
                v93 = (v88->i64 + a11);
                *v93 = 0;
                v93[1] = 0;
                v94 = (v88->i64 + v221);
                *v94 = 0;
                v94[1] = 0;
                v95 = (v88->i64 + 3 * a11);
                *v95 = 0;
                v95[1] = 0;
              }
            }

            v102 = &v83[v92];
            v103 = v88 + 1;
            v104 = v87[1];
            if (v104 == 63)
            {
              v109 = (v102 + 32);
              *v35.i8 = vld2q_f64(v109);
              v110 = *v102;
              v111 = *(v102 + 16);
              *v103 = vzip1q_s64(*v102, v111);
              *(v103 + v32) = vzip2q_s64(v110, v111);
              v112 = &v103->i8[v90];
              *v112 = v35;
              *(v112 + v32) = v34;
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
              v105 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v103, v32, v102, v104, *v35.i8, *v34.i8);
            }

            else
            {
              v105 = 0;
              v103->i64[0] = 0;
              v88[1].i64[1] = 0;
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
            v114 = (v88 + v223);
            v115 = v87[2];
            if (v115 == 63)
            {
              v120 = (v113 + 32);
              *v35.i8 = vld2q_f64(v120);
              v121 = *v113;
              v122 = *(v113 + 16);
              *v114 = vzip1q_s64(*v113, v122);
              *(v114 + v32) = vzip2q_s64(v121, v122);
              v123 = &v114->i8[v90];
              *v123 = v35;
              *(v123 + v32) = v34;
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
              v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v88 + v223), v32, v113, v115, *v35.i8, *v34.i8);
            }

            else
            {
              v116 = 0;
              v114->i64[0] = 0;
              v114->i64[1] = 0;
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
            v125 = v114 + 1;
            v126 = v87[3];
            if (v126 == 63)
            {
              v131 = (v124 + 32);
              *v35.i8 = vld2q_f64(v131);
              v132 = *v124;
              v133 = *(v124 + 16);
              *v125 = vzip1q_s64(*v124, v133);
              *(v125 + v32) = vzip2q_s64(v132, v133);
              v134 = &v125->i8[v90];
              *v134 = v35;
              *(v134 + v32) = v34;
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
              v127 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v125, v32, v124, v126, *v35.i8, *v34.i8);
            }

            else
            {
              v127 = 0;
              v125->i64[0] = 0;
              v114[1].i64[1] = 0;
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
            v136 = v88 + 2;
            v137 = v87[4];
            if (v137 == 63)
            {
              v142 = (v135 + 32);
              *v35.i8 = vld2q_f64(v142);
              v143 = *v135;
              v144 = *(v135 + 16);
              *v136 = vzip1q_s64(*v135, v144);
              *(v136 + v32) = vzip2q_s64(v143, v144);
              v145 = &v136->i8[v90];
              *v145 = v35;
              *(v145 + v32) = v34;
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
              v138 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v136, v32, v135, v137, *v35.i8, *v34.i8);
            }

            else
            {
              v138 = 0;
              v136->i64[0] = 0;
              v88[2].i64[1] = 0;
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
            v147 = v88 + 3;
            v148 = v87[5];
            if (v148 == 63)
            {
              v153 = (v146 + 32);
              *v35.i8 = vld2q_f64(v153);
              v154 = *v146;
              v155 = *(v146 + 16);
              *v147 = vzip1q_s64(*v146, v155);
              *(v147 + v32) = vzip2q_s64(v154, v155);
              v156 = &v147->i8[v90];
              *v156 = v35;
              *(v156 + v32) = v34;
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
              v149 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v147, v32, v146, v148, *v35.i8, *v34.i8);
            }

            else
            {
              v149 = 0;
              v147->i64[0] = 0;
              v88[3].i64[1] = 0;
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
            v158 = v114 + 2;
            v159 = v87[6];
            if (v159 == 63)
            {
              v164 = (v157 + 32);
              *v35.i8 = vld2q_f64(v164);
              v165 = *v157;
              v166 = *(v157 + 16);
              *v158 = vzip1q_s64(*v157, v166);
              *(v158 + v32) = vzip2q_s64(v165, v166);
              v167 = &v158->i8[v90];
              *v167 = v35;
              *(v167 + v32) = v34;
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
              v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v158, v32, v146 + v149, v159, *v35.i8, *v34.i8);
            }

            else
            {
              v160 = 0;
              v158->i64[0] = 0;
              v114[2].i64[1] = 0;
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
            v169 = v114 + 3;
            v170 = v87[7];
            if (v170 == 63)
            {
              v174 = (v168 + 32);
              *v35.i8 = vld2q_f64(v174);
              v175 = *v168;
              v176 = *(v168 + 16);
              *v169 = vzip1q_s64(*v168, v176);
              *(v169 + v32) = vzip2q_s64(v175, v176);
              v177 = &v169->i8[v90];
              *v177 = v35;
              *(v177 + v32) = v34;
              v45 = a7;
              v15 = v238;
            }

            else
            {
              v45 = a7;
              v15 = v238;
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
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v169, v32, v168, v170, *v35.i8, *v34.i8);
              }

              else
              {
                v169->i64[0] = 0;
                v114[3].i64[1] = 0;
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v238;
          block[5] = v83;
          v248 = v52;
          v249 = v239;
          v244 = v227;
          v245 = v49 - v47;
          block[6] = v87;
          v242 = v88;
          v32 = a11;
          v243 = a11;
          v246 = v226;
          v247 = v51;
          if (v53)
          {
            dispatch_sync(*(*(v238 + 8) + 16552), block);
            v45 = a7;
            v15 = v238;
LABEL_49:
            v46 = v42 + 1;
            goto LABEL_50;
          }

          v96 = *v87;
          if (v96 == 63)
          {
            v34 = *(v83 + 1);
            v178 = (v83 + 32);
            v284 = vld2q_f64(v178);
            v35 = vzip2q_s64(*v83, v34);
            v251 = vzip1q_s64(*v83, v34);
            v255 = v35;
            v259 = v284.val[0];
            v263 = v284.val[1];
            v97 = 64;
          }

          else if (v96 == 1)
          {
            v35 = vld1q_dup_s16(v83);
            v251 = v35;
            v255 = v35;
            v259 = v35;
            v263 = v35;
            v97 = 2;
          }

          else if (*v87)
          {
            v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 64, v83, v96, *v35.i8, *v34.i8);
          }

          else
          {
            v97 = 0;
            v251 = 0uLL;
            v255 = 0uLL;
            v259 = 0uLL;
            v263 = 0uLL;
          }

          v179 = &v83[v97];
          v180 = v87[1];
          if (v180 == 63)
          {
            v34 = *(v179 + 16);
            v182 = (v179 + 32);
            v285 = vld2q_f64(v182);
            v35 = vzip2q_s64(*v179, v34);
            v252 = vzip1q_s64(*v179, v34);
            v256 = v35;
            v260 = v285.val[0];
            v264 = v285.val[1];
            v181 = 64;
          }

          else if (v180 == 1)
          {
            v35 = vld1q_dup_s16(v179);
            v252 = v35;
            v256 = v35;
            v260 = v35;
            v264 = v35;
            v181 = 2;
          }

          else if (v87[1])
          {
            v181 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 64, v179, v180, *v35.i8, *v34.i8);
          }

          else
          {
            v181 = 0;
            v252 = 0uLL;
            v256 = 0uLL;
            v260 = 0uLL;
            v264 = 0uLL;
          }

          v183 = v179 + v181;
          v184 = v87[2];
          if (v184 == 63)
          {
            v34 = *(v183 + 16);
            v186 = (v183 + 32);
            v286 = vld2q_f64(v186);
            v35 = vzip2q_s64(*v183, v34);
            v267 = vzip1q_s64(*v183, v34);
            v271 = v35;
            v275 = v286.val[0];
            v279 = v286.val[1];
            v185 = 64;
          }

          else if (v184 == 1)
          {
            v35 = vld1q_dup_s16(v183);
            v267 = v35;
            v271 = v35;
            v275 = v35;
            v279 = v35;
            v185 = 2;
          }

          else if (v87[2])
          {
            v185 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v267, 64, v183, v184, *v35.i8, *v34.i8);
          }

          else
          {
            v185 = 0;
            v267 = 0uLL;
            v271 = 0uLL;
            v275 = 0uLL;
            v279 = 0uLL;
          }

          v187 = v183 + v185;
          v188 = v87[3];
          if (v188 == 63)
          {
            v34 = *(v187 + 16);
            v190 = (v187 + 32);
            v287 = vld2q_f64(v190);
            v35 = vzip2q_s64(*v187, v34);
            v268 = vzip1q_s64(*v187, v34);
            v272 = v35;
            v276 = v287.val[0];
            v280 = v287.val[1];
            v189 = 64;
          }

          else if (v188 == 1)
          {
            v35 = vld1q_dup_s16(v187);
            v268 = v35;
            v272 = v35;
            v276 = v35;
            v280 = v35;
            v189 = 2;
          }

          else if (v87[3])
          {
            v189 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v268, 64, v187, v188, *v35.i8, *v34.i8);
          }

          else
          {
            v189 = 0;
            v268 = 0uLL;
            v272 = 0uLL;
            v276 = 0uLL;
            v280 = 0uLL;
          }

          v191 = v187 + v189;
          v192 = v87[4];
          if (v192 == 63)
          {
            v34 = *(v191 + 16);
            v194 = (v191 + 32);
            v288 = vld2q_f64(v194);
            v35 = vzip2q_s64(*v191, v34);
            v253 = vzip1q_s64(*v191, v34);
            v257 = v35;
            v261 = v288.val[0];
            v265 = v288.val[1];
            v193 = 64;
          }

          else if (v192 == 1)
          {
            v35 = vld1q_dup_s16(v191);
            v253 = v35;
            v257 = v35;
            v261 = v35;
            v265 = v35;
            v193 = 2;
          }

          else if (v87[4])
          {
            v193 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v253, 64, v191, v192, *v35.i8, *v34.i8);
          }

          else
          {
            v193 = 0;
            v253 = 0uLL;
            v257 = 0uLL;
            v261 = 0uLL;
            v265 = 0uLL;
          }

          v195 = v191 + v193;
          v196 = v87[5];
          if (v196 == 63)
          {
            v34 = *(v195 + 16);
            v198 = (v195 + 32);
            v289 = vld2q_f64(v198);
            v35 = vzip2q_s64(*v195, v34);
            v254 = vzip1q_s64(*v195, v34);
            v258 = v35;
            v262 = v289.val[0];
            v266 = v289.val[1];
            v197 = 64;
          }

          else if (v196 == 1)
          {
            v35 = vld1q_dup_s16(v195);
            v254 = v35;
            v258 = v35;
            v262 = v35;
            v266 = v35;
            v197 = 2;
          }

          else if (v87[5])
          {
            v197 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 64, v195, v196, *v35.i8, *v34.i8);
          }

          else
          {
            v197 = 0;
            v254 = 0uLL;
            v258 = 0uLL;
            v262 = 0uLL;
            v266 = 0uLL;
          }

          v199 = v195 + v197;
          v200 = v87[6];
          if (v200 == 63)
          {
            v34 = *(v199 + 16);
            v202 = (v199 + 32);
            v290 = vld2q_f64(v202);
            v35 = vzip2q_s64(*v199, v34);
            v269 = vzip1q_s64(*v199, v34);
            v273 = v35;
            v277 = v290.val[0];
            v281 = v290.val[1];
            v201 = 64;
          }

          else if (v200 == 1)
          {
            v35 = vld1q_dup_s16(v199);
            v269 = v35;
            v273 = v35;
            v277 = v35;
            v281 = v35;
            v201 = 2;
          }

          else if (v87[6])
          {
            v201 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v269, 64, v199, v200, *v35.i8, *v34.i8);
          }

          else
          {
            v201 = 0;
            v269 = 0uLL;
            v273 = 0uLL;
            v277 = 0uLL;
            v281 = 0uLL;
          }

          v203 = v199 + v201;
          v204 = v87[7];
          if (v204 == 63)
          {
            v34 = *(v203 + 16);
            v205 = (v203 + 32);
            v291 = vld2q_f64(v205);
            v35 = vzip2q_s64(*v203, v34);
            v270 = vzip1q_s64(*v203, v34);
            v274 = v35;
            v278 = v291.val[0];
            v282 = v291.val[1];
            v45 = a7;
            v15 = v238;
          }

          else
          {
            v45 = a7;
            v15 = v238;
            if (v204 == 1)
            {
              v35 = vld1q_dup_s16(v203);
              v270 = v35;
              v274 = v35;
              v278 = v35;
              v282 = v35;
            }

            else if (v204)
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v270, 64, v203, v204, *v35.i8, *v34.i8);
            }

            else
            {
              v270 = 0uLL;
              v274 = 0uLL;
              v278 = 0uLL;
              v282 = 0uLL;
            }
          }

          v206 = v246;
          v46 = v42 + 1;
          if (v246)
          {
            v207 = 0;
            v208 = &v251.i8[64 * v244 + 4 * v245];
            v209 = v247;
            do
            {
              if (v209)
              {
                v210 = 0;
                v211 = &v242->i8[v243 * v207];
                do
                {
                  v211[v210] = v208[v210];
                  ++v210;
                  v209 = v247;
                }

                while (4 * v247 > v210);
                v206 = v246;
              }

              ++v207;
              v208 += 64;
            }

            while (v207 < v206);
          }

LABEL_50:
          v20 = v42 == v230 >> 4;
          v42 = v46;
        }

        while (!v20);
        v20 = v17++ == v216;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v279 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v232 = a8;
  v16 = a8 >> 3;
  v213 = a8 + a10 - 1;
  v215 = v213 >> 3;
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
  v227 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v215)
  {
    v225 = a7 + a9 - 1;
    if (a7 >> 4 <= v225 >> 4)
    {
      v24 = a11;
      v236 = (a5 - 1) >> 4;
      v210 = a5 - 1;
      v218 = (a5 - 1) & 0xF;
      v211 = (a6 - 1) & 7;
      v212 = (a6 - 1) >> 3;
      v217 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v26.i8 = vcgt_u32(v25, 0x1F0000000FLL);
      *v27.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v26.i8);
      v223 = v27.i64[0];
      v224 = v27.i32[0] | v27.i32[1];
      v222 = v26.i64[0];
      v209 = 8 * v18 * v17;
      v234 = v15;
      v216 = 2 * a11;
      do
      {
        v28 = (8 * v16) | 7;
        if (8 * v16 <= v232)
        {
          v29 = v232;
        }

        else
        {
          v29 = 8 * v16;
        }

        if (v213 < v28)
        {
          v28 = v213;
        }

        v231 = 8 * v16;
        v221 = v29 - 8 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v211;
        v220 = v31;
        v33 = v31 != 8;
        v34 = a7 >> 4;
        v35 = v211 + 1;
        if (v16 != v212)
        {
          v35 = 8;
        }

        v235 = v35;
        if (v16 != v212)
        {
          v32 = v33;
        }

        v219 = v32;
        v230 = a2 + (v29 - v232) * v24;
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

          if (v225 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v34 == v236)
          {
            v42 = v218 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v231 >= v232 && v37 >= v36)
          {
            v44 = v40 != v218;
            if (v34 != v236)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v219;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v209 >> (*(v15 + 57) != 0);
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
              v68 = 0;
              v69 = 16;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v68 = 0;
              v65 = 16;
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

            v197 = (v65 >> 4) - 1;
            if (v67)
            {
              v198 = 0;
            }

            else
            {
              v198 = 32 - __clz(~(-1 << -__clz(v197)));
            }

            v199 = (v69 >> 3) - 1;
            if (v68)
            {
              v200 = 0;
              if (v198)
              {
                goto LABEL_225;
              }
            }

            else
            {
              v200 = 32 - __clz(~(-1 << -__clz(v199)));
              if (v200 | v198)
              {
LABEL_225:
                v201 = 0;
                v202 = 0;
                v203 = v34 & v197;
                v204 = v16 & v199;
                v205 = v200 != 0;
                v206 = v198 != 0;
                v207 = 1;
                do
                {
                  --v200;
                  if (v205)
                  {
                    v202 |= (v207 & v204) << v201++;
                  }

                  else
                  {
                    v200 = 0;
                  }

                  --v198;
                  if (v206)
                  {
                    v202 |= (v207 & v203) << v201++;
                  }

                  else
                  {
                    v198 = 0;
                  }

                  v207 *= 2;
                  --v201;
                  v206 = v198 != 0;
                  v205 = v200 != 0;
                }

                while (v198 | v200);
                v208 = v202 << 9;
                goto LABEL_237;
              }
            }

            v208 = 0;
LABEL_237:
            v52 = v208 + ((v37 / v65 + v231 / v69 * ((v65 + v210) / v65)) << 14);
            goto LABEL_55;
          }

          if (v224)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v49 = v222;
            v48 = BYTE4(v222);
            v50 = v223;
            v51 = HIDWORD(v223);
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v16) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v34) << v45++;
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

          v57 = v56 + 7;
          if (v57 < 0x10)
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
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 3) - 1)));
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
          if (v227)
          {
            memcpy(__dst, v70, sizeof(__dst));
            v70 = __dst;
          }

          v71 = (a4 + v64);
          v72 = (v230 + 4 * (v39 - v36));
          if (v43 & 1 | (v42 < 0x10u) || v235 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v234;
            block[5] = v70;
            v244 = v42;
            v245 = v235;
            v240 = v221;
            v241 = v39 - v37;
            block[6] = v71;
            v238 = v72;
            v24 = a11;
            v239 = a11;
            v242 = v220;
            v243 = v41;
            if (v43)
            {
              dispatch_sync(*(*(v234 + 8) + 16552), block);
              v36 = a7;
              v15 = v234;
LABEL_145:
              v155 = v34 + 1;
              goto LABEL_29;
            }

            v80 = *v71;
            v36 = a7;
            if (v80 == 63)
            {
              v26 = *(v70 + 1);
              v163 = (v70 + 32);
              v280 = vld2q_f64(v163);
              v27 = vzip2q_s64(*v70, v26);
              v247 = vzip1q_s64(*v70, v26);
              v251 = v27;
              v255 = v280.val[0];
              v259 = v280.val[1];
              v81 = 64;
            }

            else if (v80 == 1)
            {
              v27 = vld1q_dup_s16(v70);
              v247 = v27;
              v251 = v27;
              v255 = v27;
              v259 = v27;
              v81 = 2;
            }

            else if (*v71)
            {
              v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v247, 64, v70, v80, *v27.i8, *v26.i8);
            }

            else
            {
              v81 = 0;
              v247 = 0uLL;
              v251 = 0uLL;
              v255 = 0uLL;
              v259 = 0uLL;
            }

            v164 = &v70[v81];
            v165 = v71[1];
            if (v165 == 63)
            {
              v26 = *(v164 + 16);
              v167 = (v164 + 32);
              v281 = vld2q_f64(v167);
              v27 = vzip2q_s64(*v164, v26);
              v248 = vzip1q_s64(*v164, v26);
              v252 = v27;
              v256 = v281.val[0];
              v260 = v281.val[1];
              v166 = 64;
            }

            else if (v165 == 1)
            {
              v27 = vld1q_dup_s16(v164);
              v248 = v27;
              v252 = v27;
              v256 = v27;
              v260 = v27;
              v166 = 2;
            }

            else if (v71[1])
            {
              v166 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 64, v164, v165, *v27.i8, *v26.i8);
            }

            else
            {
              v166 = 0;
              v248 = 0uLL;
              v252 = 0uLL;
              v256 = 0uLL;
              v260 = 0uLL;
            }

            v168 = v164 + v166;
            v169 = v71[2];
            if (v169 == 63)
            {
              v26 = *(v168 + 16);
              v171 = (v168 + 32);
              v282 = vld2q_f64(v171);
              v27 = vzip2q_s64(*v168, v26);
              v263 = vzip1q_s64(*v168, v26);
              v267 = v27;
              v271 = v282.val[0];
              v275 = v282.val[1];
              v170 = 64;
            }

            else if (v169 == 1)
            {
              v27 = vld1q_dup_s16(v168);
              v263 = v27;
              v267 = v27;
              v271 = v27;
              v275 = v27;
              v170 = 2;
            }

            else if (v71[2])
            {
              v170 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v263, 64, v168, v169, *v27.i8, *v26.i8);
            }

            else
            {
              v170 = 0;
              v263 = 0uLL;
              v267 = 0uLL;
              v271 = 0uLL;
              v275 = 0uLL;
            }

            v172 = v168 + v170;
            v173 = v71[3];
            if (v173 == 63)
            {
              v26 = *(v172 + 16);
              v175 = (v172 + 32);
              v283 = vld2q_f64(v175);
              v27 = vzip2q_s64(*v172, v26);
              v264 = vzip1q_s64(*v172, v26);
              v268 = v27;
              v272 = v283.val[0];
              v276 = v283.val[1];
              v174 = 64;
            }

            else if (v173 == 1)
            {
              v27 = vld1q_dup_s16(v172);
              v264 = v27;
              v268 = v27;
              v272 = v27;
              v276 = v27;
              v174 = 2;
            }

            else if (v71[3])
            {
              v174 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v264, 64, v172, v173, *v27.i8, *v26.i8);
            }

            else
            {
              v174 = 0;
              v264 = 0uLL;
              v268 = 0uLL;
              v272 = 0uLL;
              v276 = 0uLL;
            }

            v176 = v172 + v174;
            v177 = v71[4];
            if (v177 == 63)
            {
              v26 = *(v176 + 16);
              v179 = (v176 + 32);
              v284 = vld2q_f64(v179);
              v27 = vzip2q_s64(*v176, v26);
              v249 = vzip1q_s64(*v176, v26);
              v253 = v27;
              v257 = v284.val[0];
              v261 = v284.val[1];
              v178 = 64;
            }

            else if (v177 == 1)
            {
              v27 = vld1q_dup_s16(v176);
              v249 = v27;
              v253 = v27;
              v257 = v27;
              v261 = v27;
              v178 = 2;
            }

            else if (v71[4])
            {
              v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v249, 64, v176, v177, *v27.i8, *v26.i8);
            }

            else
            {
              v178 = 0;
              v249 = 0uLL;
              v253 = 0uLL;
              v257 = 0uLL;
              v261 = 0uLL;
            }

            v180 = v176 + v178;
            v181 = v71[5];
            if (v181 == 63)
            {
              v26 = *(v180 + 16);
              v183 = (v180 + 32);
              v285 = vld2q_f64(v183);
              v27 = vzip2q_s64(*v180, v26);
              v250 = vzip1q_s64(*v180, v26);
              v254 = v27;
              v258 = v285.val[0];
              v262 = v285.val[1];
              v182 = 64;
            }

            else if (v181 == 1)
            {
              v27 = vld1q_dup_s16(v180);
              v250 = v27;
              v254 = v27;
              v258 = v27;
              v262 = v27;
              v182 = 2;
            }

            else if (v71[5])
            {
              v182 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 64, v180, v181, *v27.i8, *v26.i8);
            }

            else
            {
              v182 = 0;
              v250 = 0uLL;
              v254 = 0uLL;
              v258 = 0uLL;
              v262 = 0uLL;
            }

            v184 = v180 + v182;
            v185 = v71[6];
            if (v185 == 63)
            {
              v26 = *(v184 + 16);
              v187 = (v184 + 32);
              v286 = vld2q_f64(v187);
              v27 = vzip2q_s64(*v184, v26);
              v265 = vzip1q_s64(*v184, v26);
              v269 = v27;
              v273 = v286.val[0];
              v277 = v286.val[1];
              v186 = 64;
            }

            else if (v185 == 1)
            {
              v27 = vld1q_dup_s16(v184);
              v265 = v27;
              v269 = v27;
              v273 = v27;
              v277 = v27;
              v186 = 2;
            }

            else if (v71[6])
            {
              v186 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v265, 64, v184, v185, *v27.i8, *v26.i8);
            }

            else
            {
              v186 = 0;
              v265 = 0uLL;
              v269 = 0uLL;
              v273 = 0uLL;
              v277 = 0uLL;
            }

            v188 = v184 + v186;
            v189 = v71[7];
            if (v189 == 63)
            {
              v26 = *(v188 + 16);
              v190 = (v188 + 32);
              v287 = vld2q_f64(v190);
              v27 = vzip2q_s64(*v188, v26);
              v266 = vzip1q_s64(*v188, v26);
              v270 = v27;
              v274 = v287.val[0];
              v278 = v287.val[1];
              v15 = v234;
              v155 = v34 + 1;
            }

            else
            {
              v15 = v234;
              v155 = v34 + 1;
              if (v189 == 1)
              {
                v27 = vld1q_dup_s16(v188);
                v266 = v27;
                v270 = v27;
                v274 = v27;
                v278 = v27;
              }

              else if (v189)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v266, 64, v188, v189, *v27.i8, *v26.i8);
              }

              else
              {
                v266 = 0uLL;
                v270 = 0uLL;
                v274 = 0uLL;
                v278 = 0uLL;
              }
            }

            v191 = v242;
            if (v242)
            {
              v192 = 0;
              v193 = &v247.i8[64 * v240 + 4 * v241];
              v194 = v243;
              do
              {
                if (v194)
                {
                  v195 = 0;
                  v196 = &v238->i8[v239 * v192];
                  do
                  {
                    v196[v195] = v193[v195];
                    ++v195;
                    v194 = v243;
                  }

                  while (4 * v243 > v195);
                  v191 = v242;
                }

                ++v192;
                v193 += 64;
              }

              while (v192 < v191);
            }
          }

          else
          {
            v73 = *v71;
            if (v73 == 63)
            {
              v82 = (v70 + 32);
              *v27.i8 = vld2q_f64(v82);
              v83 = *v70;
              v84 = *(v70 + 1);
              *v72 = vzip1q_s64(*v70, v84);
              v24 = a11;
              *(v72 + a11) = vzip2q_s64(v83, v84);
              v75 = 3 * a11;
              v74 = 2 * a11;
              v85 = &v72->i8[v216];
              *v85 = v27;
              *(v85 + a11) = v26;
              v76 = 64;
            }

            else
            {
              v24 = a11;
              v75 = 3 * a11;
              v74 = 2 * a11;
              if (v73 == 1)
              {
                v27 = vld1q_dup_s16(v70);
                *v72 = v27;
                *(v72 + a11) = v27;
                *(v72 + 2 * a11) = v27;
                *(v72 + 3 * a11) = v27;
                v76 = 2;
              }

              else if (*v71)
              {
                v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v72, a11, v70, v73, *v27.i8, *v26.i8);
              }

              else
              {
                v76 = 0;
                v72->i64[0] = 0;
                v72->i64[1] = 0;
                v77 = (v72->i64 + a11);
                *v77 = 0;
                v77[1] = 0;
                v78 = (v72->i64 + v216);
                *v78 = 0;
                v78[1] = 0;
                v79 = (v72->i64 + 3 * a11);
                *v79 = 0;
                v79[1] = 0;
              }
            }

            v86 = &v70[v76];
            v87 = v72 + 1;
            v88 = v71[1];
            if (v88 == 63)
            {
              v93 = (v86 + 32);
              *v27.i8 = vld2q_f64(v93);
              v94 = *v86;
              v95 = *(v86 + 16);
              *v87 = vzip1q_s64(*v86, v95);
              *(v87 + v24) = vzip2q_s64(v94, v95);
              v96 = &v87->i8[v74];
              *v96 = v27;
              *(v96 + v24) = v26;
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
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, v24, v86, v88, *v27.i8, *v26.i8);
            }

            else
            {
              v89 = 0;
              v87->i64[0] = 0;
              v72[1].i64[1] = 0;
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
            v98 = (v72 + v217);
            v99 = v71[2];
            if (v99 == 63)
            {
              v104 = (v97 + 32);
              *v27.i8 = vld2q_f64(v104);
              v105 = *v97;
              v106 = *(v97 + 16);
              *v98 = vzip1q_s64(*v97, v106);
              *(v98 + v24) = vzip2q_s64(v105, v106);
              v107 = &v98->i8[v74];
              *v107 = v27;
              *(v107 + v24) = v26;
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
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v217), v24, v97, v99, *v27.i8, *v26.i8);
            }

            else
            {
              v100 = 0;
              v98->i64[0] = 0;
              v98->i64[1] = 0;
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
            v109 = v98 + 1;
            v110 = v71[3];
            if (v110 == 63)
            {
              v115 = (v108 + 32);
              *v27.i8 = vld2q_f64(v115);
              v116 = *v108;
              v117 = *(v108 + 16);
              *v109 = vzip1q_s64(*v108, v117);
              *(v109 + v24) = vzip2q_s64(v116, v117);
              v118 = &v109->i8[v74];
              *v118 = v27;
              *(v118 + v24) = v26;
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
              v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v109, v24, v108, v110, *v27.i8, *v26.i8);
            }

            else
            {
              v111 = 0;
              v109->i64[0] = 0;
              v98[1].i64[1] = 0;
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
            v120 = v72 + 2;
            v121 = v71[4];
            if (v121 == 63)
            {
              v126 = (v119 + 32);
              *v27.i8 = vld2q_f64(v126);
              v127 = *v119;
              v128 = *(v119 + 16);
              *v120 = vzip1q_s64(*v119, v128);
              *(v120 + v24) = vzip2q_s64(v127, v128);
              v129 = &v120->i8[v74];
              *v129 = v27;
              *(v129 + v24) = v26;
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
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v120, v24, v119, v121, *v27.i8, *v26.i8);
            }

            else
            {
              v122 = 0;
              v120->i64[0] = 0;
              v72[2].i64[1] = 0;
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
            v131 = v72 + 3;
            v132 = v71[5];
            if (v132 == 63)
            {
              v137 = (v130 + 32);
              *v27.i8 = vld2q_f64(v137);
              v138 = *v130;
              v139 = *(v130 + 16);
              *v131 = vzip1q_s64(*v130, v139);
              *(v131 + v24) = vzip2q_s64(v138, v139);
              v140 = &v131->i8[v74];
              *v140 = v27;
              *(v140 + v24) = v26;
              v133 = 64;
              v36 = a7;
            }

            else
            {
              v36 = a7;
              if (v132 == 1)
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
                v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v131, v24, v130, v132, *v27.i8, *v26.i8);
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
            }

            v141 = v130 + v133;
            v142 = v98 + 2;
            v143 = v71[6];
            if (v143 == 63)
            {
              v148 = (v141 + 32);
              *v27.i8 = vld2q_f64(v148);
              v149 = *v141;
              v150 = *(v141 + 16);
              *v142 = vzip1q_s64(*v141, v150);
              *(v142 + v24) = vzip2q_s64(v149, v150);
              v151 = &v142->i8[v74];
              *v151 = v27;
              *(v151 + v24) = v26;
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
              v144 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v142, v24, v141, v143, *v27.i8, *v26.i8);
            }

            else
            {
              v144 = 0;
              v142->i64[0] = 0;
              v98[2].i64[1] = 0;
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
            v153 = v98 + 3;
            v154 = v71[7];
            if (v154 == 63)
            {
              v159 = (v152 + 32);
              *v27.i8 = vld2q_f64(v159);
              v160 = *v152;
              v161 = *(v152 + 16);
              *v153 = vzip1q_s64(*v152, v161);
              *(v153 + v24) = vzip2q_s64(v160, v161);
              v162 = &v153->i8[v74];
              *v162 = v27;
              *(v162 + v24) = v26;
              v15 = v234;
              goto LABEL_145;
            }

            v15 = v234;
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v153, v24, v152, v154, *v27.i8, *v26.i8);
            }

            else
            {
              v153->i64[0] = 0;
              v98[3].i64[1] = 0;
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
          v20 = v34 == v225 >> 4;
          v34 = v155;
        }

        while (!v20);
        v20 = v16++ == v215;
      }

      while (!v20);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v15 = a1;
  v279 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v232 = a8;
  v16 = a8 >> 3;
  v213 = a8 + a10 - 1;
  v215 = v213 >> 3;
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
  v227 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v15, *(v15 + 144) + a12);
  if (v16 <= v215)
  {
    v225 = a7 + a9 - 1;
    if (a7 >> 4 <= v225 >> 4)
    {
      v24 = a11;
      v236 = (a5 - 1) >> 4;
      v210 = a5 - 1;
      v218 = (a5 - 1) & 0xF;
      v211 = (a6 - 1) & 7;
      v212 = (a6 - 1) >> 3;
      v217 = 4 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      *v26.i8 = vcgt_u32(v25, 0x1F0000000FLL);
      *v27.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFCFFFFFFFDLL), -1))))))), *v26.i8);
      v223 = v27.i64[0];
      v224 = v27.i32[0] | v27.i32[1];
      v222 = v26.i64[0];
      v209 = 8 * v18 * v17;
      v234 = v15;
      v216 = 2 * a11;
      do
      {
        v28 = (8 * v16) | 7;
        if (8 * v16 <= v232)
        {
          v29 = v232;
        }

        else
        {
          v29 = 8 * v16;
        }

        if (v213 < v28)
        {
          v28 = v213;
        }

        v231 = 8 * v16;
        v221 = v29 - 8 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v211;
        v220 = v31;
        v33 = v31 != 8;
        v34 = a7 >> 4;
        v35 = v211 + 1;
        if (v16 != v212)
        {
          v35 = 8;
        }

        v235 = v35;
        if (v16 != v212)
        {
          v32 = v33;
        }

        v219 = v32;
        v230 = a2 + (v29 - v232) * v24;
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

          if (v225 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v40 + 1;
          if (v34 == v236)
          {
            v42 = v218 + 1;
          }

          else
          {
            v42 = 16;
          }

          v43 = 1;
          if (v231 >= v232 && v37 >= v36)
          {
            v44 = v40 != v218;
            if (v34 != v236)
            {
              v44 = v41 != 16;
            }

            v43 = v44 || v219;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v209 >> (*(v15 + 57) != 0);
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
              v68 = 0;
              v69 = 16;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v68 = 0;
              v65 = 16;
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

            v197 = (v65 >> 4) - 1;
            if (v67)
            {
              v198 = 0;
            }

            else
            {
              v198 = 32 - __clz(~(-1 << -__clz(v197)));
            }

            v199 = (v69 >> 3) - 1;
            if (v68)
            {
              v200 = 0;
              if (v198)
              {
                goto LABEL_225;
              }
            }

            else
            {
              v200 = 32 - __clz(~(-1 << -__clz(v199)));
              if (v200 | v198)
              {
LABEL_225:
                v201 = 0;
                v202 = 0;
                v203 = v34 & v197;
                v204 = v16 & v199;
                v205 = v200 != 0;
                v206 = v198 != 0;
                v207 = 1;
                do
                {
                  --v200;
                  if (v205)
                  {
                    v202 |= (v207 & v204) << v201++;
                  }

                  else
                  {
                    v200 = 0;
                  }

                  --v198;
                  if (v206)
                  {
                    v202 |= (v207 & v203) << v201++;
                  }

                  else
                  {
                    v198 = 0;
                  }

                  v207 *= 2;
                  --v201;
                  v206 = v198 != 0;
                  v205 = v200 != 0;
                }

                while (v198 | v200);
                v208 = v202 << 9;
                goto LABEL_237;
              }
            }

            v208 = 0;
LABEL_237:
            v52 = v208 + ((v37 / v65 + v231 / v69 * ((v65 + v210) / v65)) << 14);
            goto LABEL_55;
          }

          if (v224)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v49 = v222;
            v48 = BYTE4(v222);
            v50 = v223;
            v51 = HIDWORD(v223);
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v16) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v34) << v45++;
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

          v57 = v56 + 7;
          if (v57 < 0x10)
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
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 3) - 1)));
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
          if (v227)
          {
            memcpy(__dst, v70, sizeof(__dst));
            v70 = __dst;
          }

          v71 = (a4 + v64);
          v72 = (v230 + 4 * (v39 - v36));
          if (v43 & 1 | (v42 < 0x10u) || v235 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v234;
            block[5] = v70;
            v244 = v42;
            v245 = v235;
            v240 = v221;
            v241 = v39 - v37;
            block[6] = v71;
            v238 = v72;
            v24 = a11;
            v239 = a11;
            v242 = v220;
            v243 = v41;
            if (v43)
            {
              dispatch_sync(*(*(v234 + 8) + 16552), block);
              v36 = a7;
              v15 = v234;
LABEL_145:
              v155 = v34 + 1;
              goto LABEL_29;
            }

            v80 = *v71;
            v36 = a7;
            if (v80 == 63)
            {
              v26 = *(v70 + 1);
              v163 = (v70 + 32);
              v280 = vld2q_f64(v163);
              v27 = vzip2q_s64(*v70, v26);
              v247 = vzip1q_s64(*v70, v26);
              v251 = v27;
              v255 = v280.val[0];
              v259 = v280.val[1];
              v81 = 64;
            }

            else if (v80 == 1)
            {
              v27 = vld1q_dup_s16(v70);
              v247 = v27;
              v251 = v27;
              v255 = v27;
              v259 = v27;
              v81 = 2;
            }

            else if (*v71)
            {
              v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v247, 64, v70, v80, *v27.i8, *v26.i8);
            }

            else
            {
              v81 = 0;
              v247 = 0uLL;
              v251 = 0uLL;
              v255 = 0uLL;
              v259 = 0uLL;
            }

            v164 = &v70[v81];
            v165 = v71[1];
            if (v165 == 63)
            {
              v26 = *(v164 + 16);
              v167 = (v164 + 32);
              v281 = vld2q_f64(v167);
              v27 = vzip2q_s64(*v164, v26);
              v248 = vzip1q_s64(*v164, v26);
              v252 = v27;
              v256 = v281.val[0];
              v260 = v281.val[1];
              v166 = 64;
            }

            else if (v165 == 1)
            {
              v27 = vld1q_dup_s16(v164);
              v248 = v27;
              v252 = v27;
              v256 = v27;
              v260 = v27;
              v166 = 2;
            }

            else if (v71[1])
            {
              v166 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v248, 64, v164, v165, *v27.i8, *v26.i8);
            }

            else
            {
              v166 = 0;
              v248 = 0uLL;
              v252 = 0uLL;
              v256 = 0uLL;
              v260 = 0uLL;
            }

            v168 = v164 + v166;
            v169 = v71[2];
            if (v169 == 63)
            {
              v26 = *(v168 + 16);
              v171 = (v168 + 32);
              v282 = vld2q_f64(v171);
              v27 = vzip2q_s64(*v168, v26);
              v263 = vzip1q_s64(*v168, v26);
              v267 = v27;
              v271 = v282.val[0];
              v275 = v282.val[1];
              v170 = 64;
            }

            else if (v169 == 1)
            {
              v27 = vld1q_dup_s16(v168);
              v263 = v27;
              v267 = v27;
              v271 = v27;
              v275 = v27;
              v170 = 2;
            }

            else if (v71[2])
            {
              v170 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v263, 64, v168, v169, *v27.i8, *v26.i8);
            }

            else
            {
              v170 = 0;
              v263 = 0uLL;
              v267 = 0uLL;
              v271 = 0uLL;
              v275 = 0uLL;
            }

            v172 = v168 + v170;
            v173 = v71[3];
            if (v173 == 63)
            {
              v26 = *(v172 + 16);
              v175 = (v172 + 32);
              v283 = vld2q_f64(v175);
              v27 = vzip2q_s64(*v172, v26);
              v264 = vzip1q_s64(*v172, v26);
              v268 = v27;
              v272 = v283.val[0];
              v276 = v283.val[1];
              v174 = 64;
            }

            else if (v173 == 1)
            {
              v27 = vld1q_dup_s16(v172);
              v264 = v27;
              v268 = v27;
              v272 = v27;
              v276 = v27;
              v174 = 2;
            }

            else if (v71[3])
            {
              v174 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v264, 64, v172, v173, *v27.i8, *v26.i8);
            }

            else
            {
              v174 = 0;
              v264 = 0uLL;
              v268 = 0uLL;
              v272 = 0uLL;
              v276 = 0uLL;
            }

            v176 = v172 + v174;
            v177 = v71[4];
            if (v177 == 63)
            {
              v26 = *(v176 + 16);
              v179 = (v176 + 32);
              v284 = vld2q_f64(v179);
              v27 = vzip2q_s64(*v176, v26);
              v249 = vzip1q_s64(*v176, v26);
              v253 = v27;
              v257 = v284.val[0];
              v261 = v284.val[1];
              v178 = 64;
            }

            else if (v177 == 1)
            {
              v27 = vld1q_dup_s16(v176);
              v249 = v27;
              v253 = v27;
              v257 = v27;
              v261 = v27;
              v178 = 2;
            }

            else if (v71[4])
            {
              v178 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v249, 64, v176, v177, *v27.i8, *v26.i8);
            }

            else
            {
              v178 = 0;
              v249 = 0uLL;
              v253 = 0uLL;
              v257 = 0uLL;
              v261 = 0uLL;
            }

            v180 = v176 + v178;
            v181 = v71[5];
            if (v181 == 63)
            {
              v26 = *(v180 + 16);
              v183 = (v180 + 32);
              v285 = vld2q_f64(v183);
              v27 = vzip2q_s64(*v180, v26);
              v250 = vzip1q_s64(*v180, v26);
              v254 = v27;
              v258 = v285.val[0];
              v262 = v285.val[1];
              v182 = 64;
            }

            else if (v181 == 1)
            {
              v27 = vld1q_dup_s16(v180);
              v250 = v27;
              v254 = v27;
              v258 = v27;
              v262 = v27;
              v182 = 2;
            }

            else if (v71[5])
            {
              v182 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 64, v180, v181, *v27.i8, *v26.i8);
            }

            else
            {
              v182 = 0;
              v250 = 0uLL;
              v254 = 0uLL;
              v258 = 0uLL;
              v262 = 0uLL;
            }

            v184 = v180 + v182;
            v185 = v71[6];
            if (v185 == 63)
            {
              v26 = *(v184 + 16);
              v187 = (v184 + 32);
              v286 = vld2q_f64(v187);
              v27 = vzip2q_s64(*v184, v26);
              v265 = vzip1q_s64(*v184, v26);
              v269 = v27;
              v273 = v286.val[0];
              v277 = v286.val[1];
              v186 = 64;
            }

            else if (v185 == 1)
            {
              v27 = vld1q_dup_s16(v184);
              v265 = v27;
              v269 = v27;
              v273 = v27;
              v277 = v27;
              v186 = 2;
            }

            else if (v71[6])
            {
              v186 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v265, 64, v184, v185, *v27.i8, *v26.i8);
            }

            else
            {
              v186 = 0;
              v265 = 0uLL;
              v269 = 0uLL;
              v273 = 0uLL;
              v277 = 0uLL;
            }

            v188 = v184 + v186;
            v189 = v71[7];
            if (v189 == 63)
            {
              v26 = *(v188 + 16);
              v190 = (v188 + 32);
              v287 = vld2q_f64(v190);
              v27 = vzip2q_s64(*v188, v26);
              v266 = vzip1q_s64(*v188, v26);
              v270 = v27;
              v274 = v287.val[0];
              v278 = v287.val[1];
              v15 = v234;
              v155 = v34 + 1;
            }

            else
            {
              v15 = v234;
              v155 = v34 + 1;
              if (v189 == 1)
              {
                v27 = vld1q_dup_s16(v188);
                v266 = v27;
                v270 = v27;
                v274 = v27;
                v278 = v27;
              }

              else if (v189)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v266, 64, v188, v189, *v27.i8, *v26.i8);
              }

              else
              {
                v266 = 0uLL;
                v270 = 0uLL;
                v274 = 0uLL;
                v278 = 0uLL;
              }
            }

            v191 = v242;
            if (v242)
            {
              v192 = 0;
              v193 = &v247.i8[64 * v240 + 4 * v241];
              v194 = v243;
              do
              {
                if (v194)
                {
                  v195 = 0;
                  v196 = &v238->i8[v239 * v192];
                  do
                  {
                    v196[v195] = v193[v195];
                    ++v195;
                    v194 = v243;
                  }

                  while (4 * v243 > v195);
                  v191 = v242;
                }

                ++v192;
                v193 += 64;
              }

              while (v192 < v191);
            }
          }

          else
          {
            v73 = *v71;
            if (v73 == 63)
            {
              v82 = (v70 + 32);
              *v27.i8 = vld2q_f64(v82);
              v83 = *v70;
              v84 = *(v70 + 1);
              *v72 = vzip1q_s64(*v70, v84);
              v24 = a11;
              *(v72 + a11) = vzip2q_s64(v83, v84);
              v75 = 3 * a11;
              v74 = 2 * a11;
              v85 = &v72->i8[v216];
              *v85 = v27;
              *(v85 + a11) = v26;
              v76 = 64;
            }

            else
            {
              v24 = a11;
              v75 = 3 * a11;
              v74 = 2 * a11;
              if (v73 == 1)
              {
                v27 = vld1q_dup_s16(v70);
                *v72 = v27;
                *(v72 + a11) = v27;
                *(v72 + 2 * a11) = v27;
                *(v72 + 3 * a11) = v27;
                v76 = 2;
              }

              else if (*v71)
              {
                v76 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v72, a11, v70, v73, *v27.i8, *v26.i8);
              }

              else
              {
                v76 = 0;
                v72->i64[0] = 0;
                v72->i64[1] = 0;
                v77 = (v72->i64 + a11);
                *v77 = 0;
                v77[1] = 0;
                v78 = (v72->i64 + v216);
                *v78 = 0;
                v78[1] = 0;
                v79 = (v72->i64 + 3 * a11);
                *v79 = 0;
                v79[1] = 0;
              }
            }

            v86 = &v70[v76];
            v87 = v72 + 1;
            v88 = v71[1];
            if (v88 == 63)
            {
              v93 = (v86 + 32);
              *v27.i8 = vld2q_f64(v93);
              v94 = *v86;
              v95 = *(v86 + 16);
              *v87 = vzip1q_s64(*v86, v95);
              *(v87 + v24) = vzip2q_s64(v94, v95);
              v96 = &v87->i8[v74];
              *v96 = v27;
              *(v96 + v24) = v26;
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
              v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, v24, v86, v88, *v27.i8, *v26.i8);
            }

            else
            {
              v89 = 0;
              v87->i64[0] = 0;
              v72[1].i64[1] = 0;
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
            v98 = (v72 + v217);
            v99 = v71[2];
            if (v99 == 63)
            {
              v104 = (v97 + 32);
              *v27.i8 = vld2q_f64(v104);
              v105 = *v97;
              v106 = *(v97 + 16);
              *v98 = vzip1q_s64(*v97, v106);
              *(v98 + v24) = vzip2q_s64(v105, v106);
              v107 = &v98->i8[v74];
              *v107 = v27;
              *(v107 + v24) = v26;
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
              v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v72 + v217), v24, v97, v99, *v27.i8, *v26.i8);
            }

            else
            {
              v100 = 0;
              v98->i64[0] = 0;
              v98->i64[1] = 0;
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
            v109 = v98 + 1;
            v110 = v71[3];
            if (v110 == 63)
            {
              v115 = (v108 + 32);
              *v27.i8 = vld2q_f64(v115);
              v116 = *v108;
              v117 = *(v108 + 16);
              *v109 = vzip1q_s64(*v108, v117);
              *(v109 + v24) = vzip2q_s64(v116, v117);
              v118 = &v109->i8[v74];
              *v118 = v27;
              *(v118 + v24) = v26;
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
              v111 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v109, v24, v108, v110, *v27.i8, *v26.i8);
            }

            else
            {
              v111 = 0;
              v109->i64[0] = 0;
              v98[1].i64[1] = 0;
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
            v120 = v72 + 2;
            v121 = v71[4];
            if (v121 == 63)
            {
              v126 = (v119 + 32);
              *v27.i8 = vld2q_f64(v126);
              v127 = *v119;
              v128 = *(v119 + 16);
              *v120 = vzip1q_s64(*v119, v128);
              *(v120 + v24) = vzip2q_s64(v127, v128);
              v129 = &v120->i8[v74];
              *v129 = v27;
              *(v129 + v24) = v26;
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
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v120, v24, v119, v121, *v27.i8, *v26.i8);
            }

            else
            {
              v122 = 0;
              v120->i64[0] = 0;
              v72[2].i64[1] = 0;
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
            v131 = v72 + 3;
            v132 = v71[5];
            if (v132 == 63)
            {
              v137 = (v130 + 32);
              *v27.i8 = vld2q_f64(v137);
              v138 = *v130;
              v139 = *(v130 + 16);
              *v131 = vzip1q_s64(*v130, v139);
              *(v131 + v24) = vzip2q_s64(v138, v139);
              v140 = &v131->i8[v74];
              *v140 = v27;
              *(v140 + v24) = v26;
              v133 = 64;
              v36 = a7;
            }

            else
            {
              v36 = a7;
              if (v132 == 1)
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
                v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v131, v24, v130, v132, *v27.i8, *v26.i8);
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
            }

            v141 = v130 + v133;
            v142 = v98 + 2;
            v143 = v71[6];
            if (v143 == 63)
            {
              v148 = (v141 + 32);
              *v27.i8 = vld2q_f64(v148);
              v149 = *v141;
              v150 = *(v141 + 16);
              *v142 = vzip1q_s64(*v141, v150);
              *(v142 + v24) = vzip2q_s64(v149, v150);
              v151 = &v142->i8[v74];
              *v151 = v27;
              *(v151 + v24) = v26;
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
              v144 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v142, v24, v141, v143, *v27.i8, *v26.i8);
            }

            else
            {
              v144 = 0;
              v142->i64[0] = 0;
              v98[2].i64[1] = 0;
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
            v153 = v98 + 3;
            v154 = v71[7];
            if (v154 == 63)
            {
              v159 = (v152 + 32);
              *v27.i8 = vld2q_f64(v159);
              v160 = *v152;
              v161 = *(v152 + 16);
              *v153 = vzip1q_s64(*v152, v161);
              *(v153 + v24) = vzip2q_s64(v160, v161);
              v162 = &v153->i8[v74];
              *v162 = v27;
              *(v162 + v24) = v26;
              v15 = v234;
              goto LABEL_145;
            }

            v15 = v234;
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v153, v24, v152, v154, *v27.i8, *v26.i8);
            }

            else
            {
              v153->i64[0] = 0;
              v98[3].i64[1] = 0;
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
          v20 = v34 == v225 >> 4;
          v34 = v155;
        }

        while (!v20);
        v20 = v16++ == v215;
      }

      while (!v20);
    }
  }
}