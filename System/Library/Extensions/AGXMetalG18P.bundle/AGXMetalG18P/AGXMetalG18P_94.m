uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v154 = v21;
  v155 = v22;
  v139 = v23;
  v24 = v12;
  v183 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v159 = v14;
  v141 = v14 + a10 - 1;
  v160 = v24;
  if (*(v24 + 168))
  {
    v27 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v27 = 0;
  }

  v28 = v14 >> 4;
  v29 = v20 - 1;
  v30 = v18 - 1;
  v140 = v141 >> 4;
  v31 = (v27 & 0xD00) == 0 || v27 == 768;
  v32 = v27 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v162 = v34;
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
      v153 = 0;
LABEL_32:
      v150 = v37 - 4;
      v144 = v36 - 4;
      v43 = -1 << *(*(v24 + 208) + 48);
      v138 = (((~v43 + v20) & v43) + ~(-1 << v37)) >> v37;
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

    v153 = v42 >= v36;
    goto LABEL_32;
  }

  v153 = 0;
  v138 = 0;
  v144 = 0;
  v150 = 0;
LABEL_33:
  if (v28 <= v140)
  {
    v152 = v16 + a9 - 1;
    v137 = v16 >> 4;
    if (v16 >> 4 <= v152 >> 4)
    {
      v161 = v29 >> 4;
      v146 = v29 & 0xF;
      v135 = v30 & 0xF;
      v136 = v30 >> 4;
      v44 = vadd_s32(__PAIR64__(v20, v18), 0xF0000000FLL);
      v45 = vcgt_u32(v44, 0x1F0000001FLL);
      v143 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v44, 4uLL))))))), v45);
      v142 = v45;
      v151 = v16;
      do
      {
        v46 = (16 * v28) | 0xF;
        if (16 * v28 <= v159)
        {
          v47 = v159;
        }

        else
        {
          v47 = 16 * v28;
        }

        if (v141 < v46)
        {
          v46 = v141;
        }

        v149 = v47 - 16 * v28;
        v48 = v46 - v47;
        v49 = v48 + 1;
        v50 = v48 != v135;
        v148 = v49;
        v51 = v49 != 16;
        v52 = v135 + 1;
        if (v28 != v136)
        {
          v52 = 16;
          v50 = v51;
        }

        v147 = v50;
        v53 = v137;
        v157 = v139 + (v47 - v159) * a11;
        v158 = v52;
        v156 = v52;
        do
        {
          v54 = 16 * v53;
          v55 = 16 * (v53 + 1) - 1;
          if (16 * v53 <= v16)
          {
            v56 = v16;
          }

          else
          {
            v56 = 16 * v53;
          }

          if (v152 < v55)
          {
            v55 = v152;
          }

          v57 = v55 - v56;
          v58 = v57 + 1;
          if (v53 == v161)
          {
            v59 = (v146 + 1);
          }

          else
          {
            v59 = 16;
          }

          v60 = 1;
          if (16 * v28 >= v159 && v54 >= v16)
          {
            v61 = v57 != v146;
            if (v53 != v161)
            {
              v61 = v58 != 16;
            }

            v60 = v61 || v147;
          }

          if (v153)
          {
            if (v150 | v144)
            {
              v62 = 0;
              v63 = 0;
              v64 = v144 != 0;
              v65 = 1;
              v67 = v150 != 0;
              v66 = v144;
              v68 = v150;
              do
              {
                --v68;
                if (v67)
                {
                  v63 |= (v53 & ~(-1 << v150) & v65) << v62++;
                }

                else
                {
                  v68 = 0;
                }

                --v66;
                if (v64)
                {
                  v63 |= (v28 & ~(-1 << v144) & v65) << v62++;
                }

                else
                {
                  v66 = 0;
                }

                v65 *= 2;
                --v62;
                v64 = v66 != 0;
                v67 = v68 != 0;
              }

              while (v66 | v68);
              v69 = v63 << 11;
            }

            else
            {
              v69 = 0;
            }

            v77 = v69 + *(result + 336) * ((v53 >> v150) + (v28 >> v144) * v138);
          }

          else if (v143)
          {
            v70 = 0;
            v71 = 0;
            v72 = 1;
            v73 = v142.i8[0];
            v74 = v142.i8[4];
            v76 = v143.i32[0];
            v75 = v143.i32[1];
            do
            {
              --v75;
              if (v74)
              {
                v71 |= (v72 & v53) << v70++;
              }

              else
              {
                v75 = 0;
              }

              --v76;
              if (v73)
              {
                v71 |= (v72 & v28) << v70++;
              }

              else
              {
                v76 = 0;
              }

              v72 *= 2;
              --v70;
              v73 = v76 != 0;
              v74 = v75 != 0;
            }

            while (v76 | v75);
            v77 = v71 << 11;
          }

          else
          {
            v77 = 0;
          }

          v78 = *(result + 128) >> (*(result + 144) + a12);
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

          v81 = *(result + 132) >> (*(result + 144) + a12);
          if (v81 <= 1)
          {
            v81 = 1;
          }

          v82 = v81 + 15;
          if (v82 < 0x20)
          {
            v83 = 0;
            if (!v80)
            {
LABEL_104:
              v89 = 0;
              goto LABEL_105;
            }
          }

          else
          {
            v83 = 32 - __clz(~(-1 << -__clz((v82 >> 4) - 1)));
            if (!(v83 | v80))
            {
              goto LABEL_104;
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
              v85 |= (v88 & v53) << v84++;
            }

            else
            {
              v80 = 0;
            }

            --v83;
            if (v87)
            {
              v85 |= (v88 & v28) << v84++;
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
LABEL_105:
          v90 = (v155 + v89);
          v91 = v157 + 8 * (v56 - v16);
          v92 = (v154 + v77);
          if (v162)
          {
            if (!(v60 & 1 | (v59 < 0x10u) | (v156 < 0x10)))
            {
              v96 = __dst;
LABEL_112:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v91, a11, v96, v90, v59, v158, v25, v26);
LABEL_113:
              v16 = v151;
              if (v162)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            v145 = v58;
            v93 = v60;
            v94 = v59;
            v95 = v56;
            memcpy(__dst, v92, sizeof(__dst));
            v56 = v95;
            v60 = v93;
            v96 = __dst;
            v58 = v145;
            LOBYTE(v59) = v94;
            result = v160;
          }

          else
          {
            v96 = (v154 + v77);
            if (!(v60 & 1 | (v59 < 0x10u) | (v156 < 0x10)))
            {
              goto LABEL_112;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v164 = v96;
          v172 = v59;
          v173 = v158;
          v168 = v149;
          v169 = v56 - v54;
          v165 = v90;
          v166 = v91;
          v167 = a11;
          v170 = v148;
          v171 = v58;
          if (v60)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_113;
          }

          v97 = &v96[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 128, v96, *v90)];
          v98 = v97 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v177, 128, v97, v90[1]);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 128, v98, v90[2]);
          v100 = v99 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v178, 128, v99, v90[3]);
          v101 = v100 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v179, 128, v100, v90[4]);
          v102 = v101 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v181, 128, v101, v90[5]);
          v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v180, 128, v102, v90[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v182, 128, v102 + v103, v90[7]);
          v106 = v170;
          v16 = v151;
          if (v170)
          {
            v107 = v171;
            if (v171)
            {
              v108 = 0;
              v109 = v168 << 7;
              v110 = 8 * v169;
              v111 = &v175[0].i8[v109 + v110];
              v112 = v166;
              v113 = v167;
              v114 = 8 * v171;
              if (8 * v171)
              {
                v115 = (8 * v171 - 1) >> 32 == 0;
              }

              else
              {
                v115 = 0;
              }

              v116 = !v115;
              v118 = v111 < v166 + v167 * (v170 - 1) + 8 * v171 && v166 < &__dst[128 * v170 + 1920 + 128 * v168 + 8 * v171 + v110];
              v119 = v114 & 0x1FFFFFFE0;
              v120 = v116 | (v167 < 0) | v118;
              v121 = &v175[1].i8[v109 + v110];
              v122 = v166 + 16;
              v123 = v111;
              v124 = v166;
              do
              {
                v125 = (v112 + v108 * v113);
                v104 = &v111[128 * v108];
                if (v120)
                {
                  v126 = 0;
                }

                else
                {
                  if (v107 < 4)
                  {
                    v129 = 0;
LABEL_142:
                    v133 = -8 * v107 + v129;
                    v104 = (v124 + v129);
                    v105 = &v123[v129];
                    do
                    {
                      v134 = *v104;
                      v104 += 8;
                      *v105 = v134;
                      v105 += 8;
                      v133 += 8;
                    }

                    while (v133);
                    goto LABEL_130;
                  }

                  v105 = v122;
                  v130 = v121;
                  v131 = v114 & 0x1FFFFFFE0;
                  do
                  {
                    v132 = *v105;
                    *(v130 - 1) = *(v105 - 16);
                    *v130 = v132;
                    v130 += 32;
                    v105 += 32;
                    v131 -= 32;
                  }

                  while (v131);
                  if (v114 == v119)
                  {
                    goto LABEL_130;
                  }

                  v129 = v114 & 0x1FFFFFFE0;
                  if ((v107 & 3) != 0)
                  {
                    goto LABEL_142;
                  }

                  v125 += v119;
                  v104 += v119;
                  v126 = v114 & 0xFFFFFFE0;
                }

                LODWORD(v105) = v126 + 1;
                do
                {
                  v127 = *v125++;
                  *v104++ = v127;
                  v128 = v114 > v105;
                  v105 = (v105 + 1);
                }

                while (v128);
LABEL_130:
                ++v108;
                v121 += 128;
                v122 += v113;
                v124 += v113;
                v123 += 128;
              }

              while (v108 != v106);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v175, 128, v164, v165, v172, v173, v104, v105);
          if (v162)
          {
LABEL_46:
            memcpy(v92, v96, 0x800uLL);
          }

LABEL_47:
          v31 = v53++ == v152 >> 4;
          result = v160;
        }

        while (!v31);
        v31 = v28++ == v140;
      }

      while (!v31);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v217 = v21;
  v218 = v22;
  v199 = v23;
  v24 = v12;
  v245 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v221 = v14;
  v201 = v14 + a10 - 1;
  v222 = v24;
  if (*(v24 + 168))
  {
    v25 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v25 = 0;
  }

  v26 = v14 >> 4;
  v27 = v20 - 1;
  v28 = v18 - 1;
  v200 = v201 >> 4;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v224 = v32;
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
      v216 = 0;
LABEL_32:
      v212 = v35 - 4;
      v205 = v34 - 4;
      v41 = -1 << *(*(v24 + 208) + 48);
      v198 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v216 = v40 >= v34;
    goto LABEL_32;
  }

  v216 = 0;
  v198 = 0;
  v205 = 0;
  v212 = 0;
LABEL_33:
  if (v26 <= v200)
  {
    v215 = v16 + a9 - 1;
    v197 = v16 >> 4;
    if (v16 >> 4 <= v215 >> 4)
    {
      v42 = a11;
      v223 = v27 >> 4;
      v208 = v27 & 0xF;
      v195 = v28 & 0xF;
      v196 = v28 >> 4;
      v194 = ~(-1 << v205);
      v43 = vadd_s32(__PAIR64__(v20, v18), 0xF0000000FLL);
      v44 = vcgt_u32(v43, 0x1F0000001FLL);
      v204 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v43, 4uLL))))))), v44);
      v203 = v44;
      v214 = v16;
      do
      {
        v45 = (16 * v26) | 0xF;
        if (16 * v26 <= v221)
        {
          v46 = v221;
        }

        else
        {
          v46 = 16 * v26;
        }

        if (v201 < v45)
        {
          v45 = v201;
        }

        v211 = v46 - 16 * v26;
        v47 = v45 - v46;
        v48 = v47 + 1;
        v49 = v47 != v195;
        v210 = v48;
        v50 = v197;
        if (v26 == v196)
        {
          v51 = v195 + 1;
        }

        else
        {
          v51 = 16;
        }

        if (v26 != v196)
        {
          v49 = v48 != 16;
        }

        v209 = v49;
        v52 = v26 & v194;
        v220 = v199 + (v46 - v221) * v42;
        v219 = v51;
        v202 = v51;
        do
        {
          v53 = 16 * v50;
          v54 = 16 * (v50 + 1) - 1;
          if (16 * v50 <= v16)
          {
            v55 = v16;
          }

          else
          {
            v55 = 16 * v50;
          }

          if (v215 < v54)
          {
            v54 = v215;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v50 == v223)
          {
            v58 = v208 + 1;
          }

          else
          {
            v58 = 16;
          }

          v59 = 1;
          if (16 * v26 >= v221 && v53 >= v16)
          {
            v60 = v56 != v208;
            if (v50 != v223)
            {
              v60 = v57 != 16;
            }

            v59 = v60 || v209;
          }

          if (v216)
          {
            if (v212 | v205)
            {
              v61 = 0;
              v62 = 0;
              v63 = v205 != 0;
              v64 = 1;
              v66 = v212 != 0;
              v65 = v205;
              v67 = v212;
              do
              {
                --v67;
                if (v66)
                {
                  v62 |= (v50 & ~(-1 << v212) & v64) << v61++;
                }

                else
                {
                  v67 = 0;
                }

                --v65;
                if (v63)
                {
                  v62 |= (v52 & v64) << v61++;
                }

                else
                {
                  v65 = 0;
                }

                v64 *= 2;
                --v61;
                v63 = v65 != 0;
                v66 = v67 != 0;
              }

              while (v65 | v67);
              v68 = v62 << 11;
            }

            else
            {
              v68 = 0;
            }

            v76 = v68 + *(result + 336) * ((v50 >> v212) + (v26 >> v205) * v198);
          }

          else if (v204)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v203.i8[0];
            v73 = v203.i8[4];
            v75 = v204.i32[0];
            v74 = v204.i32[1];
            do
            {
              --v74;
              if (v73)
              {
                v70 |= (v71 & v50) << v69++;
              }

              else
              {
                v74 = 0;
              }

              --v75;
              if (v72)
              {
                v70 |= (v71 & v26) << v69++;
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

          v78 = v77 + 15;
          if (v78 < 0x20)
          {
            v79 = 0;
          }

          else
          {
            v79 = 32 - __clz(~(-1 << -__clz((v78 >> 4) - 1)));
          }

          v80 = *(result + 132) >> (*(result + 144) + a12);
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = v80 + 15;
          if (v81 < 0x20)
          {
            v82 = 0;
            if (!v79)
            {
LABEL_106:
              v88 = 0;
              goto LABEL_107;
            }
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 4) - 1)));
            if (!(v82 | v79))
            {
              goto LABEL_106;
            }
          }

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
              v84 |= (v87 & v50) << v83++;
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
LABEL_107:
          v89 = (v218 + v88);
          v90 = v220 + 8 * (v55 - v16);
          v91 = (v217 + v76);
          if (v224)
          {
            if (!(v59 & 1 | (v58 < 0x10u) | (v219 < 0x10)))
            {
              v95 = __dst;
LABEL_114:
              v97 = &byte_29D2F2FD5;
              v98 = 16;
              v99 = v95;
              do
              {
                v122 = *v97;
                v123 = *(v97 - 1);
                if (v58 <= 8 * v123 || 4 * v122 >= v51)
                {
                  v121 = 0;
                }

                else
                {
                  v100 = (v90 + 4 * a11 * v122 + (v123 << 6));
                  v101 = (v100 + v42);
                  v103 = *v100;
                  v104 = v100[1];
                  v105 = v100[2];
                  v106 = v100[3];
                  v102 = (v100 + 2 * a11);
                  v107 = v101[2];
                  v108 = v101[3];
                  v109 = *v101;
                  v111 = *v102;
                  v112 = v102[1];
                  v113 = v102[2];
                  v114 = v102[3];
                  v110 = (v102 + v42);
                  v115 = v104;
                  v116 = v101[1];
                  v117 = v110[1];
                  v118 = v110[2];
                  v119 = v110[3];
                  v120 = *v110;
                  *v99 = v103;
                  v99[1] = v109;
                  v99[2] = v115;
                  v99[3] = v116;
                  v99[4] = v111;
                  v99[5] = v120;
                  v99[6] = v112;
                  v99[7] = v117;
                  v99[8] = v105;
                  v99[9] = v107;
                  v99[10] = v106;
                  v99[11] = v108;
                  v99[12] = v113;
                  v99[13] = v118;
                  v99[14] = v114;
                  v99[15] = v119;
                  v99 += 16;
                  v121 = -1;
                }

                *v89++ = v121;
                v97 += 2;
                v98 -= 2;
              }

              while (v98);
              v16 = v214;
              goto LABEL_123;
            }

            v92 = (v217 + v76);
            v206 = v57;
            v93 = v42;
            v94 = v59;
            memcpy(__dst, v91, sizeof(__dst));
            v53 = 16 * v50;
            v59 = v94;
            v42 = v93;
            v51 = v202;
            v52 = v26 & v194;
            v57 = v206;
            v95 = __dst;
            v91 = v92;
            result = v222;
          }

          else
          {
            v95 = (v217 + v76);
            if (!(v59 & 1 | (v58 < 0x10u) | (v219 < 0x10)))
            {
              goto LABEL_114;
            }
          }

          v213 = v91;
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v226 = v95;
          v234 = v58;
          v235 = v51;
          v230 = v211;
          v231 = v55 - v53;
          v227 = v89;
          v228 = v90;
          v229 = v42;
          v232 = v210;
          v233 = v57;
          if (v59)
          {
            v96 = v95;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v95 = v96;
            result = v222;
            v16 = v214;
            v91 = v213;
            goto LABEL_123;
          }

          v207 = v95;
          v125 = &v95[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v237, 128, v95, *v89)];
          v126 = v125 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v239, 128, v125, v89[1]);
          v127 = v126 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v238, 128, v126, v89[2]);
          v128 = v127 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v240, 128, v127, v89[3]);
          v129 = v128 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v241, 128, v128, v89[4]);
          v130 = v129 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v243, 128, v129, v89[5]);
          v131 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v242, 128, v130, v89[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v244, 128, v130 + v131, v89[7]);
          v132 = v232;
          if (v232)
          {
            v133 = v233;
            if (v233)
            {
              v134 = 0;
              v135 = v230 << 7;
              v136 = 8 * v231;
              v137 = &v237[0].i8[v135 + v136];
              v138 = v228;
              v139 = v229;
              v140 = 8 * v233;
              if (8 * v233)
              {
                v141 = (8 * v233 - 1) >> 32 == 0;
              }

              else
              {
                v141 = 0;
              }

              v142 = !v141;
              v144 = v137 < v228 + v229 * (v232 - 1) + 8 * v233 && v228 < &__dst[128 * v232 + 1920 + 128 * v230 + 8 * v233 + v136];
              v145 = v140 & 0x1FFFFFFE0;
              v146 = v142 | (v229 < 0) | v144;
              v147 = &v237[1].i8[v135 + v136];
              v148 = (v228 + 16);
              v149 = v137;
              v150 = v228;
              do
              {
                v151 = (v138 + v134 * v139);
                v152 = &v137[128 * v134];
                if (v146)
                {
                  v153 = 0;
                }

                else
                {
                  if (v133 < 4)
                  {
                    v157 = 0;
LABEL_152:
                    v162 = -8 * v133 + v157;
                    v163 = (v150 + v157);
                    v164 = &v149[v157];
                    do
                    {
                      v165 = *v163++;
                      *v164 = v165;
                      v164 += 8;
                      v162 += 8;
                    }

                    while (v162);
                    goto LABEL_140;
                  }

                  v158 = v148;
                  v159 = v147;
                  v160 = v140 & 0x1FFFFFFE0;
                  do
                  {
                    v161 = *v158;
                    *(v159 - 1) = *(v158 - 1);
                    *v159 = v161;
                    v159 += 32;
                    v158 += 2;
                    v160 -= 32;
                  }

                  while (v160);
                  if (v140 == v145)
                  {
                    goto LABEL_140;
                  }

                  v157 = v140 & 0x1FFFFFFE0;
                  if ((v133 & 3) != 0)
                  {
                    goto LABEL_152;
                  }

                  v151 += v145;
                  v152 += v145;
                  v153 = v140 & 0xFFFFFFE0;
                }

                v154 = v153 + 1;
                do
                {
                  v155 = *v151++;
                  *v152++ = v155;
                }

                while (v140 > v154++);
LABEL_140:
                ++v134;
                v147 += 128;
                v148 = (v148 + v139);
                v150 += v139;
                v149 += 128;
              }

              while (v134 != v132);
            }
          }

          v166 = v226;
          v167 = v227;
          v168 = v234;
          v169 = &byte_29D2F2FD5;
          v170 = 16;
          v171 = v235;
          v16 = v214;
          result = v222;
          v91 = v213;
          v95 = v207;
          do
          {
            v191 = *v169;
            v192 = *(v169 - 1);
            if (v168 <= 8 * v192 || 4 * v191 >= v171)
            {
              v190 = 0;
            }

            else
            {
              v172 = &v237[32 * v191 + 4 * v192];
              v173 = v172[2];
              v174 = v172[10];
              v175 = v172[3];
              v176 = v172[11];
              v177 = *v172;
              v178 = v172[8];
              v179 = v172[1];
              v180 = v172[16];
              v181 = v172[17];
              v182 = v172[18];
              v183 = v172[19];
              v184 = v172[9];
              v172 += 24;
              v185 = v172[1];
              v186 = v172[2];
              v187 = v172[3];
              v188 = *v172;
              *v166 = v177;
              v166[1] = v178;
              v166[2] = v179;
              v166[3] = v184;
              v166[4] = v180;
              v166[5] = v188;
              v166[6] = v181;
              v166[7] = v185;
              v166[8] = v173;
              v166[9] = v174;
              v166[10] = v175;
              v166[11] = v176;
              v189 = v166 + 12;
              v166 += 16;
              v190 = -1;
              *v189 = v182;
              v189[1] = v186;
              v189[2] = v183;
              v189[3] = v187;
            }

            *v167++ = v190;
            v169 += 2;
            v170 -= 2;
          }

          while (v170);
LABEL_123:
          if (v224)
          {
            memcpy(v91, v95, 0x800uLL);
            result = v222;
          }

          v29 = v50++ == v215 >> 4;
        }

        while (!v29);
        v29 = v26++ == v200;
      }

      while (!v29);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v148 = v21;
  v149 = v22;
  v137 = v23;
  v24 = v12;
  v178 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v154 = v14;
  v25 = v14 >> 4;
  v136 = v14 + a10 - 1;
  v138 = v136 >> 4;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v155 = v24;
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
  v157 = v32;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v147 = result;
  if (v25 <= v138)
  {
    v146 = v16 + a9 - 1;
    v135 = v16 >> 4;
    if (v16 >> 4 <= v146 >> 4)
    {
      result = v24;
      v156 = (v20 - 1) >> 4;
      v132 = v20 - 1;
      v139 = (v20 - 1) & 0xF;
      v133 = (v18 - 1) & 0xF;
      v134 = (v18 - 1) >> 4;
      v34 = vadd_s32(__PAIR64__(v20, v18), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v144 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v143 = v35;
      v131 = 8 * v27 * v26;
      v145 = v16;
      do
      {
        v36 = (16 * v25) | 0xF;
        if (16 * v25 <= v154)
        {
          v37 = v154;
        }

        else
        {
          v37 = 16 * v25;
        }

        if (v136 < v36)
        {
          v36 = v136;
        }

        v153 = 16 * v25;
        v142 = v37 - 16 * v25;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v133;
        v141 = v39;
        v41 = v39 != 16;
        v42 = v135;
        v43 = v133 + 1;
        if (v25 != v134)
        {
          v43 = 16;
          v40 = v41;
        }

        v140 = v40;
        v151 = v137 + (v37 - v154) * a11;
        v152 = v43;
        v150 = v43;
        do
        {
          v44 = 16 * v42;
          v45 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= v16)
          {
            v46 = v16;
          }

          else
          {
            v46 = v44;
          }

          if (v146 < v45)
          {
            v45 = v146;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v42 == v156)
          {
            v49 = (v139 + 1);
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (v153 >= v154 && v44 >= v16)
          {
            v51 = v47 != v139;
            if (v42 != v156)
            {
              v51 = v48 != 16;
            }

            v50 = v51 | v140;
          }

          if (v147)
          {
            v72 = 0;
            v73 = v131 >> (*(result + 57) != 0);
            v74 = 1;
            if (v73 <= 63)
            {
              if (v73 > 15)
              {
                if (v73 == 16)
                {
                  v74 = 0;
                  v75 = 0;
                  v76 = 64;
                  v72 = 128;
                }

                else
                {
                  v75 = 1;
                  v76 = 0;
                  if (v73 == 32)
                  {
                    v74 = 0;
                    v75 = 0;
                    v72 = 64;
                    v76 = 64;
                  }
                }
              }

              else if (v73 == 4)
              {
                v74 = 0;
                v75 = 0;
                v76 = 128;
                v72 = 256;
              }

              else
              {
                v75 = 1;
                v76 = 0;
                if (v73 == 8)
                {
                  v74 = 0;
                  v75 = 0;
                  v72 = 128;
                  v76 = 128;
                }
              }
            }

            else if (v73 <= 255)
            {
              if (v73 == 64)
              {
                v74 = 0;
                v75 = 0;
                v76 = 32;
                v72 = 64;
              }

              else
              {
                v75 = 1;
                v76 = 0;
                if (v73 == 128)
                {
                  v74 = 0;
                  v75 = 0;
                  v72 = 32;
                  v76 = 32;
                }
              }
            }

            else if (v73 == 256)
            {
              v74 = 0;
              v76 = 16;
              v75 = 1;
              v72 = 32;
            }

            else if (v73 == 512)
            {
              v72 = 16;
              v75 = 1;
              v76 = 16;
            }

            else
            {
              v75 = 1;
              v76 = 0;
              if (v73 == 1024)
              {
                v76 = 8;
                v72 = 16;
              }
            }

            v121 = (v72 >> 4) - 1;
            if (v74)
            {
              v122 = 0;
              if (v75)
              {
                goto LABEL_150;
              }

LABEL_139:
              v123 = 32 - __clz(~(-1 << -__clz(((v76 + 15) >> 4) - 1)));
              if (v123 | v122)
              {
                goto LABEL_140;
              }

LABEL_151:
              v130 = 0;
            }

            else
            {
              v122 = 32 - __clz(~(-1 << -__clz(v121)));
              if ((v75 & 1) == 0)
              {
                goto LABEL_139;
              }

LABEL_150:
              v123 = 0;
              if (!v122)
              {
                goto LABEL_151;
              }

LABEL_140:
              v124 = 0;
              v125 = 0;
              v126 = v42 & v121;
              v127 = v122 != 0;
              v128 = v123 != 0;
              v129 = 1;
              do
              {
                --v122;
                if (v127)
                {
                  v125 |= (v129 & v126) << v124++;
                }

                else
                {
                  v122 = 0;
                }

                --v123;
                if (v128)
                {
                  v125 |= (v129 & v25 & ((v76 >> 4) - 1)) << v124++;
                }

                else
                {
                  v123 = 0;
                }

                v129 *= 2;
                --v124;
                v128 = v123 != 0;
                v127 = v122 != 0;
              }

              while (v123 | v122);
              v130 = v125 << 11;
              result = v155;
            }

            v59 = v130 + ((v44 / v72 + v153 / v76 * ((v72 + v132) / v72)) << 14);
            goto LABEL_53;
          }

          if (v144)
          {
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v55 = v143.i8[0];
            v56 = v143.i8[4];
            v58 = v144.i32[0];
            v57 = v144.i32[1];
            do
            {
              --v57;
              if (v56)
              {
                v53 |= (v54 & v42) << v52++;
              }

              else
              {
                v57 = 0;
              }

              --v58;
              if (v55)
              {
                v53 |= (v54 & v25) << v52++;
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

LABEL_53:
          v60 = *(result + 128) >> (*(result + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 15;
          if (v61 < 0x20)
          {
            v62 = 0;
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 4) - 1)));
          }

          v63 = *(result + 132) >> (*(result + 144) + a12);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v63 + 15;
          if (v64 < 0x20)
          {
            v65 = 0;
            if (!v62)
            {
LABEL_78:
              v71 = 0;
              goto LABEL_79;
            }
          }

          else
          {
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 4) - 1)));
            if (!(v65 | v62))
            {
              goto LABEL_78;
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
LABEL_79:
          v77 = (v149 + v71);
          v78 = v151 + 8 * (v46 - v16);
          v79 = (v148 + v59);
          if (v157)
          {
            if (!(v50 & 1 | (v49 < 0x10u) | (v150 < 0x10)))
            {
              v82 = __dst;
LABEL_86:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v78, a11, v82, v77, v49, v152, v50, v46);
LABEL_87:
              v16 = v145;
              if (v157)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v80 = v50;
            v81 = v46;
            memcpy(__dst, v79, sizeof(__dst));
            LODWORD(v46) = v81;
            v44 = 16 * v42;
            v82 = __dst;
            LOBYTE(v50) = v80;
            result = v155;
          }

          else
          {
            v82 = (v148 + v59);
            if (!(v50 & 1 | (v49 < 0x10u) | (v150 < 0x10)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v159 = v82;
          v167 = v49;
          v168 = v152;
          v163 = v142;
          v164 = v46 - v44;
          v160 = v77;
          v161 = v78;
          v162 = a11;
          v165 = v141;
          v166 = v48;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_87;
          }

          v83 = &v82[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 128, v82, *v77)];
          v84 = v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 128, v83, v77[1]);
          v85 = v84 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 128, v84, v77[2]);
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 128, v85, v77[3]);
          v87 = v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 128, v86, v77[4]);
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 128, v87, v77[5]);
          v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 128, v88, v77[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v177, 128, v88 + v89, v77[7]);
          v92 = v165;
          v16 = v145;
          if (v165)
          {
            v93 = v166;
            if (v166)
            {
              v94 = 0;
              v95 = v163 << 7;
              v96 = 8 * v164;
              v97 = &v170[0].i8[v95 + v96];
              v98 = v161;
              v99 = v162;
              v100 = 8 * v166;
              if (8 * v166)
              {
                v101 = (8 * v166 - 1) >> 32 == 0;
              }

              else
              {
                v101 = 0;
              }

              v102 = !v101;
              v104 = v97 < v161 + v162 * (v165 - 1) + 8 * v166 && v161 < &__dst[128 * v165 + 1920 + 128 * v163 + 8 * v166 + v96];
              v105 = v100 & 0x1FFFFFFE0;
              v106 = v102 | (v162 < 0) | v104;
              v107 = &v170[1].i8[v95 + v96];
              v108 = v161 + 16;
              v109 = v97;
              v110 = v161;
              do
              {
                v111 = (v98 + v94 * v99);
                v90 = &v97[128 * v94];
                if (v106)
                {
                  v112 = 0;
                }

                else
                {
                  if (v93 < 4)
                  {
                    v115 = 0;
LABEL_116:
                    v119 = -8 * v93 + v115;
                    v90 = (v110 + v115);
                    v91 = &v109[v115];
                    do
                    {
                      v120 = *v90;
                      v90 += 8;
                      *v91 = v120;
                      v91 += 8;
                      v119 += 8;
                    }

                    while (v119);
                    goto LABEL_104;
                  }

                  v91 = v108;
                  v116 = v107;
                  v117 = v100 & 0x1FFFFFFE0;
                  do
                  {
                    v118 = *v91;
                    *(v116 - 1) = *(v91 - 16);
                    *v116 = v118;
                    v116 += 32;
                    v91 += 32;
                    v117 -= 32;
                  }

                  while (v117);
                  if (v100 == v105)
                  {
                    goto LABEL_104;
                  }

                  v115 = v100 & 0x1FFFFFFE0;
                  if ((v93 & 3) != 0)
                  {
                    goto LABEL_116;
                  }

                  v111 += v105;
                  v90 += v105;
                  v112 = v100 & 0xFFFFFFE0;
                }

                LODWORD(v91) = v112 + 1;
                do
                {
                  v113 = *v111++;
                  *v90++ = v113;
                  v114 = v100 > v91;
                  v91 = (v91 + 1);
                }

                while (v114);
LABEL_104:
                ++v94;
                v107 += 128;
                v108 += v99;
                v110 += v99;
                v109 += 128;
              }

              while (v94 != v92);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v170, 128, v159, v160, v167, v168, v90, v91);
          if (v157)
          {
LABEL_26:
            memcpy(v79, v82, 0x800uLL);
          }

LABEL_27:
          v29 = v42++ == v146 >> 4;
          result = v155;
        }

        while (!v29);
        v29 = v25++ == v138;
      }

      while (!v29);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v213 = v15;
  v17 = v16;
  v19 = v18;
  v211 = v20;
  v212 = v21;
  v199 = v22;
  v23 = v12;
  v241 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v217 = v14;
  v24 = v14 >> 4;
  v198 = v14 + a10 - 1;
  v200 = v198 >> 4;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v218 = v23;
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
  v220 = v31;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v33 = v23;
  v210 = isLevelTiled;
  v34 = v213;
  if (v24 <= v200)
  {
    v209 = v213 + a9 - 1;
    if (v213 >> 4 <= v209 >> 4)
    {
      v35 = a11;
      v219 = (v19 - 1) >> 4;
      v195 = v19 - 1;
      v203 = (v19 - 1) & 0xF;
      v196 = (v17 - 1) & 0xF;
      v197 = (v17 - 1) >> 4;
      v36 = vadd_s32(__PAIR64__(v19, v17), 0xF0000000FLL);
      v37 = vcgt_u32(v36, 0x1F0000001FLL);
      v208 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v36, 4uLL))))))), v37);
      v207 = v37;
      v194 = 8 * v26 * v25;
      v38 = 2 * a11;
      do
      {
        v39 = (16 * v24) | 0xF;
        if (16 * v24 <= v217)
        {
          v40 = v217;
        }

        else
        {
          v40 = 16 * v24;
        }

        if (v198 < v39)
        {
          v39 = v198;
        }

        v216 = 16 * v24;
        v206 = v40 - 16 * v24;
        v41 = v39 - v40;
        v42 = v41 + 1;
        v43 = v41 != v196;
        v205 = v42;
        v44 = v213 >> 4;
        if (v24 == v197)
        {
          v45 = v196 + 1;
        }

        else
        {
          v45 = 16;
        }

        if (v24 != v197)
        {
          v43 = v42 != 16;
        }

        v204 = v43;
        v215 = v199 + (v40 - v217) * v35;
        v214 = v45;
        v201 = v45;
        do
        {
          v46 = 16 * v44;
          v47 = 16 * (v44 + 1) - 1;
          if (16 * v44 <= v34)
          {
            v48 = v34;
          }

          else
          {
            v48 = 16 * v44;
          }

          if (v209 < v47)
          {
            v47 = v213 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v44 == v219)
          {
            v51 = v203 + 1;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (v216 >= v217 && v46 >= v34)
          {
            v53 = v49 != v203;
            if (v44 != v219)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v204;
          }

          if (v210)
          {
            v74 = 0;
            v75 = v194 >> (*(v33 + 57) != 0);
            v76 = 1;
            if (v75 <= 63)
            {
              if (v75 > 15)
              {
                if (v75 == 16)
                {
                  v76 = 0;
                  v77 = 0;
                  v78 = 64;
                  v74 = 128;
                }

                else
                {
                  v77 = 1;
                  v78 = 0;
                  if (v75 == 32)
                  {
                    v76 = 0;
                    v77 = 0;
                    v74 = 64;
                    v78 = 64;
                  }
                }
              }

              else if (v75 == 4)
              {
                v76 = 0;
                v77 = 0;
                v78 = 128;
                v74 = 256;
              }

              else
              {
                v77 = 1;
                v78 = 0;
                if (v75 == 8)
                {
                  v76 = 0;
                  v77 = 0;
                  v74 = 128;
                  v78 = 128;
                }
              }
            }

            else if (v75 <= 255)
            {
              if (v75 == 64)
              {
                v76 = 0;
                v77 = 0;
                v78 = 32;
                v74 = 64;
              }

              else
              {
                v77 = 1;
                v78 = 0;
                if (v75 == 128)
                {
                  v76 = 0;
                  v77 = 0;
                  v74 = 32;
                  v78 = 32;
                }
              }
            }

            else if (v75 == 256)
            {
              v76 = 0;
              v78 = 16;
              v77 = 1;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v74 = 16;
              v77 = 1;
              v78 = 16;
            }

            else
            {
              v77 = 1;
              v78 = 0;
              if (v75 == 1024)
              {
                v78 = 8;
                v74 = 16;
              }
            }

            v184 = (v74 >> 4) - 1;
            if (v76)
            {
              v185 = 0;
              if (v77)
              {
                goto LABEL_167;
              }

LABEL_156:
              v186 = 32 - __clz(~(-1 << -__clz(((v78 + 15) >> 4) - 1)));
              if (v186 | v185)
              {
                goto LABEL_157;
              }

LABEL_168:
              v193 = 0;
            }

            else
            {
              v185 = 32 - __clz(~(-1 << -__clz(v184)));
              if ((v77 & 1) == 0)
              {
                goto LABEL_156;
              }

LABEL_167:
              v186 = 0;
              if (!v185)
              {
                goto LABEL_168;
              }

LABEL_157:
              v187 = 0;
              v188 = 0;
              v189 = v44 & v184;
              v190 = v185 != 0;
              v191 = v186 != 0;
              v192 = 1;
              do
              {
                --v185;
                if (v190)
                {
                  v188 |= (v192 & v189) << v187++;
                }

                else
                {
                  v185 = 0;
                }

                --v186;
                if (v191)
                {
                  v188 |= (v192 & v24 & ((v78 >> 4) - 1)) << v187++;
                }

                else
                {
                  v186 = 0;
                }

                v192 *= 2;
                --v187;
                v191 = v186 != 0;
                v190 = v185 != 0;
              }

              while (v186 | v185);
              v193 = v188 << 11;
            }

            v61 = v193 + ((v46 / v74 + v216 / v78 * ((v74 + v195) / v74)) << 14);
            goto LABEL_55;
          }

          if (v208)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v57 = v207.i8[0];
            v58 = v207.i8[4];
            v60 = v208.i32[0];
            v59 = v208.i32[1];
            do
            {
              --v59;
              if (v58)
              {
                v55 |= (v56 & v44) << v54++;
              }

              else
              {
                v59 = 0;
              }

              --v60;
              if (v57)
              {
                v55 |= (v56 & v24) << v54++;
              }

              else
              {
                v60 = 0;
              }

              v56 *= 2;
              --v54;
              v57 = v60 != 0;
              v58 = v59 != 0;
            }

            while (v60 | v59);
            v61 = v55 << 11;
          }

          else
          {
            v61 = 0;
          }

LABEL_55:
          v62 = *(v33 + 128) >> (*(v33 + 144) + a12);
          if (v62 <= 1)
          {
            v62 = 1;
          }

          v63 = v62 + 15;
          if (v63 < 0x20)
          {
            v64 = 0;
          }

          else
          {
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 4) - 1)));
          }

          v65 = *(v33 + 132) >> (*(v33 + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 15;
          if (v66 < 0x20)
          {
            v67 = 0;
            if (!v64)
            {
LABEL_80:
              v73 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 4) - 1)));
            if (!(v67 | v64))
            {
              goto LABEL_80;
            }
          }

          v68 = 0;
          v69 = 0;
          v70 = v64 != 0;
          v71 = v67 != 0;
          v72 = 1;
          do
          {
            --v64;
            if (v70)
            {
              v69 |= (v72 & v44) << v68++;
            }

            else
            {
              v64 = 0;
            }

            --v67;
            if (v71)
            {
              v69 |= (v72 & v24) << v68++;
            }

            else
            {
              v67 = 0;
            }

            v72 *= 2;
            --v68;
            v71 = v67 != 0;
            v70 = v64 != 0;
          }

          while (v67 | v64);
          v73 = 8 * v69;
LABEL_81:
          v79 = (v212 + v73);
          v80 = v215 + 8 * (v48 - v34);
          v81 = (v211 + v61);
          if (v220)
          {
            if (!(v52 & 1 | (v51 < 0x10u) | (v214 < 0x10)))
            {
              v85 = __dst;
LABEL_89:
              v87 = &byte_29D2F2FD5;
              v88 = 16;
              v89 = v85;
              do
              {
                v112 = *v87;
                v113 = *(v87 - 1);
                if (v51 <= 8 * v113 || 4 * v112 >= v45)
                {
                  v111 = 0;
                }

                else
                {
                  v90 = (v80 + 4 * a11 * v112 + (v113 << 6));
                  v91 = (v90 + v35);
                  v93 = *v90;
                  v94 = v90[1];
                  v95 = v90[2];
                  v96 = v90[3];
                  v92 = (v90 + v38);
                  v97 = v91[2];
                  v98 = v91[3];
                  v99 = *v91;
                  v101 = *v92;
                  v102 = v92[1];
                  v103 = v92[2];
                  v104 = v92[3];
                  v100 = (v92 + v35);
                  v105 = v94;
                  v106 = v91[1];
                  v107 = v100[1];
                  v108 = v100[2];
                  v109 = v100[3];
                  v110 = *v100;
                  *v89 = v93;
                  v89[1] = v99;
                  v89[2] = v105;
                  v89[3] = v106;
                  v89[4] = v101;
                  v89[5] = v110;
                  v89[6] = v102;
                  v89[7] = v107;
                  v89[8] = v95;
                  v89[9] = v97;
                  v89[10] = v96;
                  v89[11] = v98;
                  v89[12] = v103;
                  v89[13] = v108;
                  v89[14] = v104;
                  v89[15] = v109;
                  v89 += 16;
                  v111 = -1;
                }

                *v79++ = v111;
                v87 += 2;
                v88 -= 2;
              }

              while (v88);
              goto LABEL_137;
            }

            v82 = v50;
            v83 = v52;
            v84 = v48;
            memcpy(__dst, v81, sizeof(__dst));
            v85 = __dst;
            v48 = v84;
            v52 = v83;
            v45 = v201;
            v50 = v82;
            v35 = a11;
            v38 = 2 * a11;
            v33 = v218;
          }

          else
          {
            v85 = (v211 + v61);
            if (!(v52 & 1 | (v51 < 0x10u) | (v214 < 0x10)))
            {
              goto LABEL_89;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v33;
          v222 = v85;
          v230 = v51;
          v231 = v45;
          v226 = v206;
          v227 = v48 - v46;
          v223 = v79;
          v224 = v80;
          v225 = v35;
          v228 = v205;
          v229 = v50;
          if (v52)
          {
            v86 = v85;
            dispatch_sync(*(*(v33 + 8) + 16552), block);
            v85 = v86;
            v33 = v218;
            v34 = v213;
            goto LABEL_137;
          }

          v202 = v85;
          v115 = &v85[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v233, 128, v85, *v79)];
          v116 = v115 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v235, 128, v115, v79[1]);
          v117 = v116 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v234, 128, v116, v79[2]);
          v118 = v117 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v236, 128, v117, v79[3]);
          v119 = v118 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v237, 128, v118, v79[4]);
          v120 = v119 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v239, 128, v119, v79[5]);
          v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v238, 128, v120, v79[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v240, 128, v120 + v121, v79[7]);
          v122 = v228;
          if (v228)
          {
            v123 = v229;
            if (v229)
            {
              v124 = 0;
              v125 = v226 << 7;
              v126 = 8 * v227;
              v127 = &v233[0].i8[v125 + v126];
              v128 = v224;
              v129 = v225;
              v130 = 8 * v229;
              if (8 * v229)
              {
                v131 = (8 * v229 - 1) >> 32 == 0;
              }

              else
              {
                v131 = 0;
              }

              v132 = !v131;
              v134 = v127 < v224 + v225 * (v228 - 1) + 8 * v229 && v224 < &__dst[128 * v228 + 1920 + 128 * v226 + 8 * v229 + v126];
              v135 = v130 & 0x1FFFFFFE0;
              v136 = v132 | (v225 < 0) | v134;
              v137 = &v233[1].i8[v125 + v126];
              v138 = (v224 + 16);
              v139 = v127;
              v140 = v224;
              do
              {
                v141 = (v128 + v124 * v129);
                v142 = &v127[128 * v124];
                if (v136)
                {
                  v143 = 0;
                }

                else
                {
                  if (v123 < 4)
                  {
                    v147 = 0;
LABEL_124:
                    v152 = -8 * v123 + v147;
                    v153 = (v140 + v147);
                    v154 = &v139[v147];
                    do
                    {
                      v155 = *v153++;
                      *v154 = v155;
                      v154 += 8;
                      v152 += 8;
                    }

                    while (v152);
                    goto LABEL_112;
                  }

                  v148 = v138;
                  v149 = v137;
                  v150 = v130 & 0x1FFFFFFE0;
                  do
                  {
                    v151 = *v148;
                    *(v149 - 1) = *(v148 - 1);
                    *v149 = v151;
                    v149 += 32;
                    v148 += 2;
                    v150 -= 32;
                  }

                  while (v150);
                  if (v130 == v135)
                  {
                    goto LABEL_112;
                  }

                  v147 = v130 & 0x1FFFFFFE0;
                  if ((v123 & 3) != 0)
                  {
                    goto LABEL_124;
                  }

                  v141 += v135;
                  v142 += v135;
                  v143 = v130 & 0xFFFFFFE0;
                }

                v144 = v143 + 1;
                do
                {
                  v145 = *v141++;
                  *v142++ = v145;
                }

                while (v130 > v144++);
LABEL_112:
                ++v124;
                v137 += 128;
                v138 = (v138 + v129);
                v140 += v129;
                v139 += 128;
              }

              while (v124 != v122);
            }
          }

          v156 = v222;
          v157 = v223;
          v158 = v230;
          v159 = &byte_29D2F2FD5;
          v160 = 16;
          v161 = v231;
          v34 = v213;
          v33 = v218;
          do
          {
            v181 = *v159;
            v182 = *(v159 - 1);
            if (v158 <= 8 * v182 || 4 * v181 >= v161)
            {
              v180 = 0;
            }

            else
            {
              v162 = &v233[32 * v181 + 4 * v182];
              v163 = v162[2];
              v164 = v162[10];
              v165 = v162[3];
              v166 = v162[11];
              v167 = *v162;
              v168 = v162[8];
              v169 = v162[1];
              v170 = v162[16];
              v171 = v162[17];
              v172 = v162[18];
              v173 = v162[19];
              v174 = v162[9];
              v162 += 24;
              v175 = v162[1];
              v176 = v162[2];
              v177 = v162[3];
              v178 = *v162;
              *v156 = v167;
              v156[1] = v168;
              v156[2] = v169;
              v156[3] = v174;
              v156[4] = v170;
              v156[5] = v178;
              v156[6] = v171;
              v156[7] = v175;
              v156[8] = v163;
              v156[9] = v164;
              v156[10] = v165;
              v156[11] = v166;
              v179 = v156 + 12;
              v156 += 16;
              v180 = -1;
              *v179 = v172;
              v179[1] = v176;
              v179[2] = v173;
              v179[3] = v177;
            }

            *v157++ = v180;
            v159 += 2;
            v160 -= 2;
          }

          while (v160);
          v85 = v202;
LABEL_137:
          if (v220)
          {
            memcpy(v81, v85, 0x800uLL);
            v33 = v218;
            v34 = v213;
          }

          v28 = v44++ == v209 >> 4;
        }

        while (!v28);
        v28 = v24++ == v200;
      }

      while (!v28);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v266 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v217 = a8;
  v200 = a8 + a10 - 1;
  v218 = a1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 4;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v199 = v200 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v221 = v24;
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
      v211 = 0;
LABEL_32:
      v208 = v27 - 4;
      v203 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v197 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v211 = v32 >= v26;
    goto LABEL_32;
  }

  v211 = 0;
  v197 = 0;
  v203 = 0;
  v208 = 0;
LABEL_33:
  if (v18 <= v199)
  {
    v210 = a7 + a9 - 1;
    v196 = a7 >> 4;
    if (a7 >> 4 <= v210 >> 4)
    {
      v219 = v19 >> 4;
      v204 = v19 & 0xF;
      v194 = v20 & 0xF;
      v195 = v20 >> 4;
      v193 = ~(-1 << v203);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v202 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v201 = v35;
      v209 = a7;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v217)
        {
          v37 = v217;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v200 < v36)
        {
          v36 = v200;
        }

        v207 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v194;
        v206 = v39;
        v41 = v39 != 16;
        v42 = v194 + 1;
        if (v18 != v195)
        {
          v42 = 16;
          v40 = v41;
        }

        v205 = v40;
        v43 = v196;
        v44 = v18 & v193;
        v215 = a3 + (v37 - v217) * a11;
        v216 = v42;
        v214 = v42;
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

          if (v210 < v46)
          {
            v46 = v210;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v219)
          {
            v50 = v204 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (16 * v18 >= v217 && v45 >= a7)
          {
            v52 = v48 != v204;
            if (v43 != v219)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v205;
          }

          if (v211)
          {
            if (v208 | v203)
            {
              v53 = 0;
              v54 = 0;
              v55 = v203 != 0;
              v56 = 1;
              v58 = v208 != 0;
              v57 = v203;
              v59 = v208;
              do
              {
                --v59;
                if (v58)
                {
                  v54 |= (v43 & ~(-1 << v208) & v56) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                --v57;
                if (v55)
                {
                  v54 |= (v44 & v56) << v53++;
                }

                else
                {
                  v57 = 0;
                }

                v56 *= 2;
                --v53;
                v55 = v57 != 0;
                v58 = v59 != 0;
              }

              while (v57 | v59);
              v60 = v54 << 9;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v208) + (v18 >> v203) * v197);
          }

          else if (v202)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v201.i8[0];
            v65 = v201.i8[4];
            v67 = v202.i32[0];
            v66 = v202.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v43) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v18) << v61++;
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

          v73 = v72 + 15;
          if (v73 < 0x20)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 4) - 1)));
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
          v82 = v215 + 2 * (v47 - a7);
          v220 = (a2 + v68);
          if (v221)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v214 < 0x10)))
            {
              goto LABEL_109;
            }

            v84 = v49;
            v85 = (a4 + v80);
            v86 = v50;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v49 = v84;
            v44 = v18 & v193;
            LOBYTE(v50) = v86;
            v81 = v85;
            result = v218;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v214 < 0x10)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v216);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v223 = v83;
          v231 = v50;
          v232 = v216;
          v227 = v207;
          v228 = v47 - v45;
          v224 = v81;
          v225 = v82;
          v226 = a11;
          v229 = v206;
          v230 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v209;
            v87 = v43 + 1;
            goto LABEL_202;
          }

          v88 = *v81;
          a7 = v209;
          if (v88 == 63)
          {
            v91 = *(v83 + 1);
            v92 = *(v83 + 2);
            v93 = *(v83 + 3);
            v94 = vuzp2q_s32(*v83, v92);
            v234 = vuzp1q_s32(*v83, v92);
            v236 = v94;
            v238 = vuzp1q_s32(v91, v93);
            v240 = vuzp2q_s32(v91, v93);
            v89 = 64;
          }

          else if (v88 == 1)
          {
            v90 = vld1q_dup_s16(v83);
            v234 = v90;
            v236 = v90;
            v238 = v90;
            v240 = v90;
            v89 = 2;
          }

          else if (*v81)
          {
            v95 = v81;
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 32, v83, v88);
            v81 = v95;
          }

          else
          {
            v89 = 0;
            v234 = 0uLL;
            v236 = 0uLL;
            v238 = 0uLL;
            v240 = 0uLL;
          }

          v96 = v83 + v89;
          v97 = v81[1];
          if (v97 == 63)
          {
            v100 = *(v96 + 16);
            v101 = *(v96 + 32);
            v102 = *(v96 + 48);
            v103 = vuzp2q_s32(*v96, v101);
            v242 = vuzp1q_s32(*v96, v101);
            v244 = v103;
            v246 = vuzp1q_s32(v100, v102);
            v248 = vuzp2q_s32(v100, v102);
            v98 = 64;
          }

          else if (v97 == 1)
          {
            v99 = vld1q_dup_s16(v96);
            v242 = v99;
            v244 = v99;
            v246 = v99;
            v248 = v99;
            v98 = 2;
          }

          else if (v81[1])
          {
            v104 = v81;
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 32, v96, v97);
            v81 = v104;
          }

          else
          {
            v98 = 0;
            v242 = 0uLL;
            v244 = 0uLL;
            v246 = 0uLL;
            v248 = 0uLL;
          }

          v105 = v96 + v98;
          v106 = v81[2];
          if (v106 == 63)
          {
            v109 = *(v105 + 16);
            v110 = *(v105 + 32);
            v111 = *(v105 + 48);
            v112 = vuzp2q_s32(*v105, v110);
            v235 = vuzp1q_s32(*v105, v110);
            v237 = v112;
            v239 = vuzp1q_s32(v109, v111);
            v241 = vuzp2q_s32(v109, v111);
            v107 = 64;
          }

          else if (v106 == 1)
          {
            v108 = vld1q_dup_s16(v105);
            v235 = v108;
            v237 = v108;
            v239 = v108;
            v241 = v108;
            v107 = 2;
          }

          else if (v81[2])
          {
            v113 = v81;
            v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 32, v105, v106);
            v81 = v113;
          }

          else
          {
            v107 = 0;
            v235 = 0uLL;
            v237 = 0uLL;
            v239 = 0uLL;
            v241 = 0uLL;
          }

          v114 = v105 + v107;
          v115 = v81[3];
          if (v115 == 63)
          {
            v118 = *(v114 + 16);
            v119 = *(v114 + 32);
            v120 = *(v114 + 48);
            v121 = vuzp2q_s32(*v114, v119);
            v243 = vuzp1q_s32(*v114, v119);
            v245 = v121;
            v247 = vuzp1q_s32(v118, v120);
            v249 = vuzp2q_s32(v118, v120);
            v116 = 64;
          }

          else if (v115 == 1)
          {
            v117 = vld1q_dup_s16(v114);
            v243 = v117;
            v245 = v117;
            v247 = v117;
            v249 = v117;
            v116 = 2;
          }

          else if (v81[3])
          {
            v122 = v81;
            v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 32, v114, v115);
            v81 = v122;
          }

          else
          {
            v116 = 0;
            v243 = 0uLL;
            v245 = 0uLL;
            v247 = 0uLL;
            v249 = 0uLL;
          }

          v123 = v114 + v116;
          v124 = v81[4];
          if (v124 == 63)
          {
            v127 = *(v123 + 16);
            v128 = *(v123 + 32);
            v129 = *(v123 + 48);
            v130 = vuzp2q_s32(*v123, v128);
            v250 = vuzp1q_s32(*v123, v128);
            v252 = v130;
            v254 = vuzp1q_s32(v127, v129);
            v256 = vuzp2q_s32(v127, v129);
            v125 = 64;
          }

          else if (v124 == 1)
          {
            v126 = vld1q_dup_s16(v123);
            v250 = v126;
            v252 = v126;
            v254 = v126;
            v256 = v126;
            v125 = 2;
          }

          else if (v81[4])
          {
            v131 = v81;
            v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 32, v123, v124);
            v81 = v131;
          }

          else
          {
            v125 = 0;
            v250 = 0uLL;
            v252 = 0uLL;
            v254 = 0uLL;
            v256 = 0uLL;
          }

          v132 = v123 + v125;
          v133 = v81[5];
          if (v133 == 63)
          {
            v136 = *(v132 + 16);
            v137 = *(v132 + 32);
            v138 = *(v132 + 48);
            v139 = vuzp2q_s32(*v132, v137);
            v258 = vuzp1q_s32(*v132, v137);
            v260 = v139;
            v262 = vuzp1q_s32(v136, v138);
            v264 = vuzp2q_s32(v136, v138);
            v134 = 64;
          }

          else if (v133 == 1)
          {
            v135 = vld1q_dup_s16(v132);
            v258 = v135;
            v260 = v135;
            v262 = v135;
            v264 = v135;
            v134 = 2;
          }

          else if (v81[5])
          {
            v140 = v81;
            v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 32, v132, v133);
            v81 = v140;
          }

          else
          {
            v134 = 0;
            v258 = 0uLL;
            v260 = 0uLL;
            v262 = 0uLL;
            v264 = 0uLL;
          }

          v141 = v132 + v134;
          v142 = v81[6];
          if (v142 == 63)
          {
            v145 = *(v141 + 16);
            v146 = *(v141 + 32);
            v147 = *(v141 + 48);
            v148 = vuzp2q_s32(*v141, v146);
            v251 = vuzp1q_s32(*v141, v146);
            v253 = v148;
            v255 = vuzp1q_s32(v145, v147);
            v257 = vuzp2q_s32(v145, v147);
            v143 = 64;
          }

          else if (v142 == 1)
          {
            v144 = vld1q_dup_s16(v141);
            v251 = v144;
            v253 = v144;
            v255 = v144;
            v257 = v144;
            v143 = 2;
          }

          else if (v81[6])
          {
            v149 = v81;
            v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 32, v141, v142);
            v81 = v149;
          }

          else
          {
            v143 = 0;
            v251 = 0uLL;
            v253 = 0uLL;
            v255 = 0uLL;
            v257 = 0uLL;
          }

          v150 = v141 + v143;
          v151 = v81[7];
          if (v151 == 63)
          {
            v154 = *(v150 + 16);
            v155 = *(v150 + 32);
            v156 = *(v150 + 48);
            v157 = vuzp2q_s32(*v150, v155);
            v259 = vuzp1q_s32(*v150, v155);
            v261 = v157;
            v263 = vuzp1q_s32(v154, v156);
            v265 = vuzp2q_s32(v154, v156);
            v87 = v43 + 1;
            v152 = v229;
            if (!v229)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v87 = v43 + 1;
            if (v151 == 1)
            {
              v153 = vld1q_dup_s16(v150);
              v259 = v153;
              v261 = v153;
              v263 = v153;
              v265 = v153;
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }

            else if (v81[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v259, 32, v150, v151);
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v259 = 0uLL;
              v261 = 0uLL;
              v263 = 0uLL;
              v265 = 0uLL;
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }
          }

          v158 = v230;
          if (v230)
          {
            v159 = 0;
            v160 = 32 * v227;
            v161 = 2 * v228;
            v162 = &v234.i8[v160 + v161];
            v163 = v225;
            v164 = v226;
            v165 = 2 * v230;
            if (2 * v230)
            {
              v166 = (2 * v230 - 1) >> 32 == 0;
            }

            else
            {
              v166 = 0;
            }

            v167 = !v166;
            v169 = v162 < v225 + v226 * (v152 - 1) + 2 * v230 && v225 < &__dst[2 * v152 + 30 + 2 * v227] + 2 * v230 + v161;
            v170 = v169 || v226 < 0;
            v171 = v165 & 0x1FFFFFFE0;
            v172 = v165 & 0x1FFFFFFF8;
            v173 = (v230 < 4) | v167 | v170;
            v174 = &v235.i8[v160 + v161];
            v175 = (v225 + 16);
            v176 = v162;
            v177 = v225;
            do
            {
              v178 = (v163 + v159 * v164);
              v179 = &v162[32 * v159];
              if (v173)
              {
                v180 = 0;
                goto LABEL_198;
              }

              if (v158 >= 0x10)
              {
                v182 = v175;
                v183 = v174;
                v184 = v165 & 0x1FFFFFFE0;
                do
                {
                  v185 = *v182;
                  *(v183 - 1) = *(v182 - 1);
                  *v183 = v185;
                  v183 += 32;
                  v182 += 2;
                  v184 -= 32;
                }

                while (v184);
                if (v165 == v171)
                {
                  goto LABEL_184;
                }

                v181 = v165 & 0x1FFFFFFE0;
                if ((v158 & 0xC) == 0)
                {
                  v178 += v171;
                  v179 += v171;
                  v180 = v165 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v181 = 0;
              }

              v179 += v172;
              v186 = v181 - (v165 & 0x1FFFFFFF8);
              v187 = (v177 + v181);
              v188 = &v176[v181];
              do
              {
                v189 = *v187++;
                *v188 = v189;
                v188 += 8;
                v186 += 8;
              }

              while (v186);
              if (v165 == v172)
              {
                goto LABEL_184;
              }

              v178 += v172;
              v180 = v165 & 0xFFFFFFF8;
LABEL_198:
              v190 = v180 + 1;
              do
              {
                v191 = *v178++;
                *v179++ = v191;
              }

              while (v165 > v190++);
LABEL_184:
              ++v159;
              v174 += 32;
              v175 = (v175 + v164);
              v177 += v164;
              v176 += 32;
            }

            while (v159 != v152);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v234, 32, v223, v224, v231, v232);
LABEL_202:
          if (v221)
          {
            memcpy(v220, v83, 0x200uLL);
          }

          v21 = v43 == v210 >> 4;
          v43 = v87;
          result = v218;
        }

        while (!v21);
        v21 = v18++ == v199;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v266 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v217 = a8;
  v200 = a8 + a10 - 1;
  v218 = a1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 4;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v199 = v200 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v221 = v24;
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
      v211 = 0;
LABEL_32:
      v208 = v27 - 4;
      v203 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v197 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v211 = v32 >= v26;
    goto LABEL_32;
  }

  v211 = 0;
  v197 = 0;
  v203 = 0;
  v208 = 0;
LABEL_33:
  if (v18 <= v199)
  {
    v210 = a7 + a9 - 1;
    v196 = a7 >> 4;
    if (a7 >> 4 <= v210 >> 4)
    {
      v219 = v19 >> 4;
      v204 = v19 & 0xF;
      v194 = v20 & 0xF;
      v195 = v20 >> 4;
      v193 = ~(-1 << v203);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v202 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v201 = v35;
      v209 = a7;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v217)
        {
          v37 = v217;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v200 < v36)
        {
          v36 = v200;
        }

        v207 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v194;
        v206 = v39;
        v41 = v39 != 16;
        v42 = v194 + 1;
        if (v18 != v195)
        {
          v42 = 16;
          v40 = v41;
        }

        v205 = v40;
        v43 = v196;
        v44 = v18 & v193;
        v215 = a3 + (v37 - v217) * a11;
        v216 = v42;
        v214 = v42;
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

          if (v210 < v46)
          {
            v46 = v210;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v219)
          {
            v50 = v204 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (16 * v18 >= v217 && v45 >= a7)
          {
            v52 = v48 != v204;
            if (v43 != v219)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v205;
          }

          if (v211)
          {
            if (v208 | v203)
            {
              v53 = 0;
              v54 = 0;
              v55 = v203 != 0;
              v56 = 1;
              v58 = v208 != 0;
              v57 = v203;
              v59 = v208;
              do
              {
                --v59;
                if (v58)
                {
                  v54 |= (v43 & ~(-1 << v208) & v56) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                --v57;
                if (v55)
                {
                  v54 |= (v44 & v56) << v53++;
                }

                else
                {
                  v57 = 0;
                }

                v56 *= 2;
                --v53;
                v55 = v57 != 0;
                v58 = v59 != 0;
              }

              while (v57 | v59);
              v60 = v54 << 9;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v208) + (v18 >> v203) * v197);
          }

          else if (v202)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v201.i8[0];
            v65 = v201.i8[4];
            v67 = v202.i32[0];
            v66 = v202.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v43) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v18) << v61++;
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

          v73 = v72 + 15;
          if (v73 < 0x20)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 4) - 1)));
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
          v82 = (v215 + 2 * (v47 - a7));
          v220 = (a2 + v68);
          if (v221)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v214 < 0x10)))
            {
              goto LABEL_109;
            }

            v84 = v49;
            v85 = (a4 + v80);
            v86 = v50;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v49 = v84;
            v44 = v18 & v193;
            LOBYTE(v50) = v86;
            v81 = v85;
            result = v218;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v214 < 0x10)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v216);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v223 = v83;
          v231 = v50;
          v232 = v216;
          v227 = v207;
          v228 = v47 - v45;
          v224 = v81;
          v225 = v82;
          v226 = a11;
          v229 = v206;
          v230 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v209;
            v87 = v43 + 1;
            goto LABEL_202;
          }

          v88 = *v81;
          a7 = v209;
          if (v88 == 63)
          {
            v91 = v83[1];
            v92 = v83[2];
            v93 = v83[3];
            v94 = vuzp2q_s32(*v83, v92);
            v234 = vuzp1q_s32(*v83, v92);
            v236 = v94;
            v238 = vuzp1q_s32(v91, v93);
            v240 = vuzp2q_s32(v91, v93);
            v89 = 64;
          }

          else if (v88 == 1)
          {
            v90 = vld1q_dup_s16(v83->i16);
            v234 = v90;
            v236 = v90;
            v238 = v90;
            v240 = v90;
            v89 = 2;
          }

          else if (*v81)
          {
            v95 = v81;
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 32, v83, v88);
            v81 = v95;
          }

          else
          {
            v89 = 0;
            v234 = 0uLL;
            v236 = 0uLL;
            v238 = 0uLL;
            v240 = 0uLL;
          }

          v96 = v83->i64 + v89;
          v97 = v81[1];
          if (v97 == 63)
          {
            v100 = *(v96 + 16);
            v101 = *(v96 + 32);
            v102 = *(v96 + 48);
            v103 = vuzp2q_s32(*v96, v101);
            v242 = vuzp1q_s32(*v96, v101);
            v244 = v103;
            v246 = vuzp1q_s32(v100, v102);
            v248 = vuzp2q_s32(v100, v102);
            v98 = 64;
          }

          else if (v97 == 1)
          {
            v99 = vld1q_dup_s16(v96);
            v242 = v99;
            v244 = v99;
            v246 = v99;
            v248 = v99;
            v98 = 2;
          }

          else if (v81[1])
          {
            v104 = v81;
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 32, v96, v97);
            v81 = v104;
          }

          else
          {
            v98 = 0;
            v242 = 0uLL;
            v244 = 0uLL;
            v246 = 0uLL;
            v248 = 0uLL;
          }

          v105 = v96 + v98;
          v106 = v81[2];
          if (v106 == 63)
          {
            v109 = *(v105 + 16);
            v110 = *(v105 + 32);
            v111 = *(v105 + 48);
            v112 = vuzp2q_s32(*v105, v110);
            v235 = vuzp1q_s32(*v105, v110);
            v237 = v112;
            v239 = vuzp1q_s32(v109, v111);
            v241 = vuzp2q_s32(v109, v111);
            v107 = 64;
          }

          else if (v106 == 1)
          {
            v108 = vld1q_dup_s16(v105);
            v235 = v108;
            v237 = v108;
            v239 = v108;
            v241 = v108;
            v107 = 2;
          }

          else if (v81[2])
          {
            v113 = v81;
            v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 32, v105, v106);
            v81 = v113;
          }

          else
          {
            v107 = 0;
            v235 = 0uLL;
            v237 = 0uLL;
            v239 = 0uLL;
            v241 = 0uLL;
          }

          v114 = v105 + v107;
          v115 = v81[3];
          if (v115 == 63)
          {
            v118 = *(v114 + 16);
            v119 = *(v114 + 32);
            v120 = *(v114 + 48);
            v121 = vuzp2q_s32(*v114, v119);
            v243 = vuzp1q_s32(*v114, v119);
            v245 = v121;
            v247 = vuzp1q_s32(v118, v120);
            v249 = vuzp2q_s32(v118, v120);
            v116 = 64;
          }

          else if (v115 == 1)
          {
            v117 = vld1q_dup_s16(v114);
            v243 = v117;
            v245 = v117;
            v247 = v117;
            v249 = v117;
            v116 = 2;
          }

          else if (v81[3])
          {
            v122 = v81;
            v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 32, v114, v115);
            v81 = v122;
          }

          else
          {
            v116 = 0;
            v243 = 0uLL;
            v245 = 0uLL;
            v247 = 0uLL;
            v249 = 0uLL;
          }

          v123 = v114 + v116;
          v124 = v81[4];
          if (v124 == 63)
          {
            v127 = *(v123 + 16);
            v128 = *(v123 + 32);
            v129 = *(v123 + 48);
            v130 = vuzp2q_s32(*v123, v128);
            v250 = vuzp1q_s32(*v123, v128);
            v252 = v130;
            v254 = vuzp1q_s32(v127, v129);
            v256 = vuzp2q_s32(v127, v129);
            v125 = 64;
          }

          else if (v124 == 1)
          {
            v126 = vld1q_dup_s16(v123);
            v250 = v126;
            v252 = v126;
            v254 = v126;
            v256 = v126;
            v125 = 2;
          }

          else if (v81[4])
          {
            v131 = v81;
            v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 32, v123, v124);
            v81 = v131;
          }

          else
          {
            v125 = 0;
            v250 = 0uLL;
            v252 = 0uLL;
            v254 = 0uLL;
            v256 = 0uLL;
          }

          v132 = v123 + v125;
          v133 = v81[5];
          if (v133 == 63)
          {
            v136 = *(v132 + 16);
            v137 = *(v132 + 32);
            v138 = *(v132 + 48);
            v139 = vuzp2q_s32(*v132, v137);
            v258 = vuzp1q_s32(*v132, v137);
            v260 = v139;
            v262 = vuzp1q_s32(v136, v138);
            v264 = vuzp2q_s32(v136, v138);
            v134 = 64;
          }

          else if (v133 == 1)
          {
            v135 = vld1q_dup_s16(v132);
            v258 = v135;
            v260 = v135;
            v262 = v135;
            v264 = v135;
            v134 = 2;
          }

          else if (v81[5])
          {
            v140 = v81;
            v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 32, v132, v133);
            v81 = v140;
          }

          else
          {
            v134 = 0;
            v258 = 0uLL;
            v260 = 0uLL;
            v262 = 0uLL;
            v264 = 0uLL;
          }

          v141 = v132 + v134;
          v142 = v81[6];
          if (v142 == 63)
          {
            v145 = *(v141 + 16);
            v146 = *(v141 + 32);
            v147 = *(v141 + 48);
            v148 = vuzp2q_s32(*v141, v146);
            v251 = vuzp1q_s32(*v141, v146);
            v253 = v148;
            v255 = vuzp1q_s32(v145, v147);
            v257 = vuzp2q_s32(v145, v147);
            v143 = 64;
          }

          else if (v142 == 1)
          {
            v144 = vld1q_dup_s16(v141);
            v251 = v144;
            v253 = v144;
            v255 = v144;
            v257 = v144;
            v143 = 2;
          }

          else if (v81[6])
          {
            v149 = v81;
            v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 32, v141, v142);
            v81 = v149;
          }

          else
          {
            v143 = 0;
            v251 = 0uLL;
            v253 = 0uLL;
            v255 = 0uLL;
            v257 = 0uLL;
          }

          v150 = v141 + v143;
          v151 = v81[7];
          if (v151 == 63)
          {
            v154 = *(v150 + 16);
            v155 = *(v150 + 32);
            v156 = *(v150 + 48);
            v157 = vuzp2q_s32(*v150, v155);
            v259 = vuzp1q_s32(*v150, v155);
            v261 = v157;
            v263 = vuzp1q_s32(v154, v156);
            v265 = vuzp2q_s32(v154, v156);
            v87 = v43 + 1;
            v152 = v229;
            if (!v229)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v87 = v43 + 1;
            if (v151 == 1)
            {
              v153 = vld1q_dup_s16(v150);
              v259 = v153;
              v261 = v153;
              v263 = v153;
              v265 = v153;
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }

            else if (v81[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v259, 32, v150, v151);
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v259 = 0uLL;
              v261 = 0uLL;
              v263 = 0uLL;
              v265 = 0uLL;
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }
          }

          v158 = v230;
          if (v230)
          {
            v159 = 0;
            v160 = 32 * v227;
            v161 = 2 * v228;
            v162 = &v234 + v160 + v161;
            v163 = v225;
            v164 = v226;
            v165 = 2 * v230;
            if (2 * v230)
            {
              v166 = (2 * v230 - 1) >> 32 == 0;
            }

            else
            {
              v166 = 0;
            }

            v167 = !v166;
            v169 = v162 < v225 + 2 * v230 + v226 * (v152 - 1) && v225 < (&__dst[2 * v152 + 30 + 2 * v227] + 2 * v230 + v161);
            v170 = v169 || v226 < 0;
            v171 = v165 & 0x1FFFFFFE0;
            v172 = v165 & 0x1FFFFFFF8;
            v173 = (v230 < 4) | v167 | v170;
            v174 = &v235.i8[v160 + v161];
            v175 = v225 + 1;
            v176 = v162;
            v177 = v225;
            do
            {
              v178 = v163 + v159 * v164;
              v179 = &v162[32 * v159];
              if (v173)
              {
                v180 = 0;
                goto LABEL_198;
              }

              if (v158 >= 0x10)
              {
                v182 = v175;
                v183 = v174;
                v184 = v165 & 0x1FFFFFFE0;
                do
                {
                  v185 = *v182;
                  *(v183 - 1) = v182[-1];
                  *v183 = v185;
                  v183 += 32;
                  v182 += 2;
                  v184 -= 32;
                }

                while (v184);
                if (v165 == v171)
                {
                  goto LABEL_184;
                }

                v181 = v165 & 0x1FFFFFFE0;
                if ((v158 & 0xC) == 0)
                {
                  v178 += v171;
                  v179 += v171;
                  v180 = v165 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v181 = 0;
              }

              v179 += v172;
              v186 = v181 - (v165 & 0x1FFFFFFF8);
              v187 = (v177 + v181);
              v188 = &v176[v181];
              do
              {
                v189 = *v187++;
                *v188 = v189;
                v188 += 8;
                v186 += 8;
              }

              while (v186);
              if (v165 == v172)
              {
                goto LABEL_184;
              }

              v178 += v172;
              v180 = v165 & 0xFFFFFFF8;
LABEL_198:
              v190 = v180 + 1;
              do
              {
                v191 = *v178++;
                *v179++ = v191;
              }

              while (v165 > v190++);
LABEL_184:
              ++v159;
              v174 += 32;
              v175 = (v175 + v164);
              v177 = (v177 + v164);
              v176 += 32;
            }

            while (v159 != v152);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v234, 32, v223, v224, v231, v232);
LABEL_202:
          if (v221)
          {
            memcpy(v220, v83, 0x200uLL);
          }

          v21 = v43 == v210 >> 4;
          v43 = v87;
          result = v218;
        }

        while (!v21);
        v21 = v18++ == v199;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v253 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v204 = a8;
  v17 = a8 >> 4;
  v187 = a8 + a10 - 1;
  v189 = v187 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v205 = a1;
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
  v208 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v197 = result;
  if (v17 <= v189)
  {
    v196 = a7 + a9 - 1;
    v186 = a7 >> 4;
    if (a7 >> 4 <= v196 >> 4)
    {
      result = a1;
      v206 = (a5 - 1) >> 4;
      v183 = a5 - 1;
      v190 = (a5 - 1) & 0xF;
      v184 = (a6 - 1) & 0xF;
      v185 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v195 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v194 = v27;
      v182 = 8 * v19 * v18;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v204)
        {
          v29 = v204;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v187 < v28)
        {
          v28 = v187;
        }

        v203 = 16 * v17;
        v193 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v184;
        v192 = v31;
        v33 = v31 != 16;
        v34 = v186;
        v35 = v184 + 1;
        if (v17 != v185)
        {
          v35 = 16;
          v32 = v33;
        }

        v191 = v32;
        v201 = a3 + (v29 - v204) * a11;
        v202 = v35;
        v200 = v35;
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

          if (v196 < v37)
          {
            v37 = v196;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v206)
          {
            v41 = v190 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v203 >= v204 && v36 >= a7)
          {
            v43 = v39 != v190;
            if (v34 != v206)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v191;
          }

          if (v197)
          {
            v64 = 0;
            v65 = v182 >> (*(result + 57) != 0);
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
              v68 = 16;
              v67 = 1;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v64 = 16;
              v67 = 1;
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

            v172 = (v64 >> 4) - 1;
            if (v66)
            {
              v173 = 0;
              if (v67)
              {
                goto LABEL_208;
              }

LABEL_197:
              v174 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v174 | v173)
              {
                goto LABEL_198;
              }

LABEL_209:
              v181 = 0;
            }

            else
            {
              v173 = 32 - __clz(~(-1 << -__clz(v172)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_197;
              }

LABEL_208:
              v174 = 0;
              if (!v173)
              {
                goto LABEL_209;
              }

LABEL_198:
              v175 = 0;
              v176 = 0;
              v177 = v34 & v172;
              v178 = v173 != 0;
              v179 = v174 != 0;
              v180 = 1;
              do
              {
                --v173;
                if (v178)
                {
                  v176 |= (v180 & v177) << v175++;
                }

                else
                {
                  v173 = 0;
                }

                --v174;
                if (v179)
                {
                  v176 |= (v180 & v17 & ((v68 >> 4) - 1)) << v175++;
                }

                else
                {
                  v174 = 0;
                }

                v180 *= 2;
                --v175;
                v179 = v174 != 0;
                v178 = v173 != 0;
              }

              while (v174 | v173);
              v181 = v176 << 9;
              result = v205;
            }

            v51 = v181 + ((v36 / v64 + v203 / v68 * ((v64 + v183) / v64)) << 14);
            goto LABEL_52;
          }

          if (v195)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v194.i8[0];
            v48 = v194.i8[4];
            v50 = v195.i32[0];
            v49 = v195.i32[1];
            do
            {
              --v49;
              if (v48)
              {
                v45 |= (v46 & v34) << v44++;
              }

              else
              {
                v49 = 0;
              }

              --v50;
              if (v47)
              {
                v45 |= (v46 & v17) << v44++;
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

          v56 = v55 + 15;
          if (v56 < 0x20)
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
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 4) - 1)));
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
          v71 = v201 + 2 * (v38 - a7);
          v72 = (a2 + v51);
          __src = (a2 + v51);
          if (v208)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v200 < 0x10)))
            {
              v72 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v202);
              goto LABEL_86;
            }

            v73 = v40;
            memcpy(__dst, __src, sizeof(__dst));
            v40 = v73;
            v72 = __dst;
            result = v205;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v200 < 0x10)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v210 = v72;
          v218 = v41;
          v219 = v202;
          v214 = v193;
          v215 = v38 - v36;
          v211 = v69;
          v212 = v71;
          v213 = a11;
          v216 = v192;
          v217 = v40;
          if ((v42 & 1) == 0)
          {
            v74 = *v69;
            a7 = v70;
            if (v74 == 63)
            {
              v77 = *(v72 + 1);
              v78 = *(v72 + 2);
              v79 = *(v72 + 3);
              v80 = vuzp2q_s32(*v72, v78);
              v221 = vuzp1q_s32(*v72, v78);
              v223 = v80;
              v225 = vuzp1q_s32(v77, v79);
              v227 = vuzp2q_s32(v77, v79);
              v75 = 64;
            }

            else if (v74 == 1)
            {
              v76 = vld1q_dup_s16(v72);
              v221 = v76;
              v223 = v76;
              v225 = v76;
              v227 = v76;
              v75 = 2;
            }

            else if (*v69)
            {
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v221, 32, v72, v74);
            }

            else
            {
              v75 = 0;
              v221 = 0uLL;
              v223 = 0uLL;
              v225 = 0uLL;
              v227 = 0uLL;
            }

            v81 = v72 + v75;
            v82 = v69[1];
            if (v82 == 63)
            {
              v85 = *(v81 + 16);
              v86 = *(v81 + 32);
              v87 = *(v81 + 48);
              v88 = vuzp2q_s32(*v81, v86);
              v229 = vuzp1q_s32(*v81, v86);
              v231 = v88;
              v233 = vuzp1q_s32(v85, v87);
              v235 = vuzp2q_s32(v85, v87);
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v84 = vld1q_dup_s16(v81);
              v229 = v84;
              v231 = v84;
              v233 = v84;
              v235 = v84;
              v83 = 2;
            }

            else if (v69[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 32, v81, v82);
            }

            else
            {
              v83 = 0;
              v229 = 0uLL;
              v231 = 0uLL;
              v233 = 0uLL;
              v235 = 0uLL;
            }

            v89 = v81 + v83;
            v90 = v69[2];
            if (v90 == 63)
            {
              v93 = *(v89 + 16);
              v94 = *(v89 + 32);
              v95 = *(v89 + 48);
              v96 = vuzp2q_s32(*v89, v94);
              v222 = vuzp1q_s32(*v89, v94);
              v224 = v96;
              v226 = vuzp1q_s32(v93, v95);
              v228 = vuzp2q_s32(v93, v95);
              v91 = 64;
            }

            else if (v90 == 1)
            {
              v92 = vld1q_dup_s16(v89);
              v222 = v92;
              v224 = v92;
              v226 = v92;
              v228 = v92;
              v91 = 2;
            }

            else if (v69[2])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v222, 32, v89, v90);
            }

            else
            {
              v91 = 0;
              v222 = 0uLL;
              v224 = 0uLL;
              v226 = 0uLL;
              v228 = 0uLL;
            }

            v97 = v89 + v91;
            v98 = v69[3];
            if (v98 == 63)
            {
              v101 = *(v97 + 16);
              v102 = *(v97 + 32);
              v103 = *(v97 + 48);
              v104 = vuzp2q_s32(*v97, v102);
              v230 = vuzp1q_s32(*v97, v102);
              v232 = v104;
              v234 = vuzp1q_s32(v101, v103);
              v236 = vuzp2q_s32(v101, v103);
              v99 = 64;
            }

            else if (v98 == 1)
            {
              v100 = vld1q_dup_s16(v97);
              v230 = v100;
              v232 = v100;
              v234 = v100;
              v236 = v100;
              v99 = 2;
            }

            else if (v69[3])
            {
              v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 32, v97, v98);
            }

            else
            {
              v99 = 0;
              v230 = 0uLL;
              v232 = 0uLL;
              v234 = 0uLL;
              v236 = 0uLL;
            }

            v105 = v97 + v99;
            v106 = v69[4];
            if (v106 == 63)
            {
              v109 = *(v105 + 16);
              v110 = *(v105 + 32);
              v111 = *(v105 + 48);
              v112 = vuzp2q_s32(*v105, v110);
              v237 = vuzp1q_s32(*v105, v110);
              v239 = v112;
              v241 = vuzp1q_s32(v109, v111);
              v243 = vuzp2q_s32(v109, v111);
              v107 = 64;
            }

            else if (v106 == 1)
            {
              v108 = vld1q_dup_s16(v105);
              v237 = v108;
              v239 = v108;
              v241 = v108;
              v243 = v108;
              v107 = 2;
            }

            else if (v69[4])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 32, v105, v106);
            }

            else
            {
              v107 = 0;
              v237 = 0uLL;
              v239 = 0uLL;
              v241 = 0uLL;
              v243 = 0uLL;
            }

            v113 = v105 + v107;
            v114 = v69[5];
            if (v114 == 63)
            {
              v117 = *(v113 + 16);
              v118 = *(v113 + 32);
              v119 = *(v113 + 48);
              v120 = vuzp2q_s32(*v113, v118);
              v245 = vuzp1q_s32(*v113, v118);
              v247 = v120;
              v249 = vuzp1q_s32(v117, v119);
              v251 = vuzp2q_s32(v117, v119);
              v115 = 64;
            }

            else if (v114 == 1)
            {
              v116 = vld1q_dup_s16(v113);
              v245 = v116;
              v247 = v116;
              v249 = v116;
              v251 = v116;
              v115 = 2;
            }

            else if (v69[5])
            {
              v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 32, v113, v114);
            }

            else
            {
              v115 = 0;
              v245 = 0uLL;
              v247 = 0uLL;
              v249 = 0uLL;
              v251 = 0uLL;
            }

            v121 = v113 + v115;
            v122 = v69[6];
            if (v122 == 63)
            {
              v125 = *(v121 + 16);
              v126 = *(v121 + 32);
              v127 = *(v121 + 48);
              v128 = vuzp2q_s32(*v121, v126);
              v238 = vuzp1q_s32(*v121, v126);
              v240 = v128;
              v242 = vuzp1q_s32(v125, v127);
              v244 = vuzp2q_s32(v125, v127);
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v124 = vld1q_dup_s16(v121);
              v238 = v124;
              v240 = v124;
              v242 = v124;
              v244 = v124;
              v123 = 2;
            }

            else if (v69[6])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 32, v121, v122);
            }

            else
            {
              v123 = 0;
              v238 = 0uLL;
              v240 = 0uLL;
              v242 = 0uLL;
              v244 = 0uLL;
            }

            v129 = v121 + v123;
            v130 = v69[7];
            if (v130 == 63)
            {
              v133 = *(v129 + 16);
              v134 = *(v129 + 32);
              v135 = *(v129 + 48);
              v136 = vuzp2q_s32(*v129, v134);
              v246 = vuzp1q_s32(*v129, v134);
              v248 = v136;
              v250 = vuzp1q_s32(v133, v135);
              v252 = vuzp2q_s32(v133, v135);
              v131 = v216;
              if (v216)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v130 != 1)
              {
                if (v69[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v129, v130);
                  v131 = v216;
                  if (!v216)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v246 = 0uLL;
                  v248 = 0uLL;
                  v250 = 0uLL;
                  v252 = 0uLL;
                  v131 = v216;
                  if (!v216)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v137 = v217;
                if (!v217)
                {
                  goto LABEL_178;
                }

                v138 = 0;
                v139 = 32 * v214;
                v140 = 2 * v215;
                v141 = &v221.i8[v139 + v140];
                v142 = v212;
                v143 = v213;
                v144 = 2 * v217;
                if (2 * v217)
                {
                  v145 = (2 * v217 - 1) >> 32 == 0;
                }

                else
                {
                  v145 = 0;
                }

                v146 = !v145;
                v148 = v141 < v212 + v213 * (v131 - 1) + 2 * v217 && v212 < &__dst[2 * v131 + 30 + 2 * v214] + 2 * v217 + v140;
                v149 = v148 || v213 < 0;
                v150 = v144 & 0x1FFFFFFE0;
                v151 = v144 & 0x1FFFFFFF8;
                v152 = (v217 < 4) | v146 | v149;
                v153 = &v222.i8[v139 + v140];
                v154 = (v212 + 16);
                v155 = v141;
                v156 = v212;
                while (2)
                {
                  v157 = (v142 + v138 * v143);
                  v158 = &v141[32 * v138];
                  if (v152)
                  {
                    v159 = 0;
LABEL_175:
                    v169 = v159 + 1;
                    do
                    {
                      v170 = *v157++;
                      *v158++ = v170;
                    }

                    while (v144 > v169++);
                  }

                  else
                  {
                    if (v137 >= 0x10)
                    {
                      v161 = v154;
                      v162 = v153;
                      v163 = v144 & 0x1FFFFFFE0;
                      do
                      {
                        v164 = *v161;
                        *(v162 - 1) = *(v161 - 1);
                        *v162 = v164;
                        v162 += 32;
                        v161 += 2;
                        v163 -= 32;
                      }

                      while (v163);
                      if (v144 == v150)
                      {
                        goto LABEL_161;
                      }

                      v160 = v144 & 0x1FFFFFFE0;
                      if ((v137 & 0xC) == 0)
                      {
                        v157 += v150;
                        v158 += v150;
                        v159 = v144 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v160 = 0;
                    }

                    v158 += v151;
                    v165 = v160 - (v144 & 0x1FFFFFFF8);
                    v166 = (v156 + v160);
                    v167 = &v155[v160];
                    do
                    {
                      v168 = *v166++;
                      *v167 = v168;
                      v167 += 8;
                      v165 += 8;
                    }

                    while (v165);
                    if (v144 != v151)
                    {
                      v157 += v151;
                      v159 = v144 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v138;
                  v153 += 32;
                  v154 = (v154 + v143);
                  v156 += v143;
                  v155 += 32;
                  if (v138 == v131)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v132 = vld1q_dup_s16(v129);
              v246 = v132;
              v248 = v132;
              v250 = v132;
              v252 = v132;
              v131 = v216;
              if (v216)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v221, 32, v210, v211, v218, v219);
            if (!v208)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v70;
          if (!v208)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v72, 0x200uLL);
LABEL_26:
          v21 = v34++ == v196 >> 4;
          result = v205;
        }

        while (!v21);
        v21 = v17++ == v189;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v253 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v204 = a8;
  v17 = a8 >> 4;
  v187 = a8 + a10 - 1;
  v189 = v187 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v205 = a1;
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
  v208 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v197 = result;
  if (v17 <= v189)
  {
    v196 = a7 + a9 - 1;
    v186 = a7 >> 4;
    if (a7 >> 4 <= v196 >> 4)
    {
      result = a1;
      v206 = (a5 - 1) >> 4;
      v183 = a5 - 1;
      v190 = (a5 - 1) & 0xF;
      v184 = (a6 - 1) & 0xF;
      v185 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v195 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v194 = v27;
      v182 = 8 * v19 * v18;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v204)
        {
          v29 = v204;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v187 < v28)
        {
          v28 = v187;
        }

        v203 = 16 * v17;
        v193 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v184;
        v192 = v31;
        v33 = v31 != 16;
        v34 = v186;
        v35 = v184 + 1;
        if (v17 != v185)
        {
          v35 = 16;
          v32 = v33;
        }

        v191 = v32;
        v201 = a3 + (v29 - v204) * a11;
        v202 = v35;
        v200 = v35;
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

          if (v196 < v37)
          {
            v37 = v196;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v206)
          {
            v41 = v190 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v203 >= v204 && v36 >= a7)
          {
            v43 = v39 != v190;
            if (v34 != v206)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v191;
          }

          if (v197)
          {
            v64 = 0;
            v65 = v182 >> (*(result + 57) != 0);
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
              v68 = 16;
              v67 = 1;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v64 = 16;
              v67 = 1;
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

            v172 = (v64 >> 4) - 1;
            if (v66)
            {
              v173 = 0;
              if (v67)
              {
                goto LABEL_208;
              }

LABEL_197:
              v174 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v174 | v173)
              {
                goto LABEL_198;
              }

LABEL_209:
              v181 = 0;
            }

            else
            {
              v173 = 32 - __clz(~(-1 << -__clz(v172)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_197;
              }

LABEL_208:
              v174 = 0;
              if (!v173)
              {
                goto LABEL_209;
              }

LABEL_198:
              v175 = 0;
              v176 = 0;
              v177 = v34 & v172;
              v178 = v173 != 0;
              v179 = v174 != 0;
              v180 = 1;
              do
              {
                --v173;
                if (v178)
                {
                  v176 |= (v180 & v177) << v175++;
                }

                else
                {
                  v173 = 0;
                }

                --v174;
                if (v179)
                {
                  v176 |= (v180 & v17 & ((v68 >> 4) - 1)) << v175++;
                }

                else
                {
                  v174 = 0;
                }

                v180 *= 2;
                --v175;
                v179 = v174 != 0;
                v178 = v173 != 0;
              }

              while (v174 | v173);
              v181 = v176 << 9;
              result = v205;
            }

            v51 = v181 + ((v36 / v64 + v203 / v68 * ((v64 + v183) / v64)) << 14);
            goto LABEL_52;
          }

          if (v195)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v194.i8[0];
            v48 = v194.i8[4];
            v50 = v195.i32[0];
            v49 = v195.i32[1];
            do
            {
              --v49;
              if (v48)
              {
                v45 |= (v46 & v34) << v44++;
              }

              else
              {
                v49 = 0;
              }

              --v50;
              if (v47)
              {
                v45 |= (v46 & v17) << v44++;
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

          v56 = v55 + 15;
          if (v56 < 0x20)
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
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 4) - 1)));
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
          v71 = (v201 + 2 * (v38 - a7));
          v72 = (a2 + v51);
          __src = (a2 + v51);
          if (v208)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v200 < 0x10)))
            {
              v72 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v202);
              goto LABEL_86;
            }

            v73 = v40;
            memcpy(__dst, __src, sizeof(__dst));
            v40 = v73;
            v72 = __dst;
            result = v205;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v200 < 0x10)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v210 = v72;
          v218 = v41;
          v219 = v202;
          v214 = v193;
          v215 = v38 - v36;
          v211 = v69;
          v212 = v71;
          v213 = a11;
          v216 = v192;
          v217 = v40;
          if ((v42 & 1) == 0)
          {
            v74 = *v69;
            a7 = v70;
            if (v74 == 63)
            {
              v77 = v72[1];
              v78 = v72[2];
              v79 = v72[3];
              v80 = vuzp2q_s32(*v72, v78);
              v221 = vuzp1q_s32(*v72, v78);
              v223 = v80;
              v225 = vuzp1q_s32(v77, v79);
              v227 = vuzp2q_s32(v77, v79);
              v75 = 64;
            }

            else if (v74 == 1)
            {
              v76 = vld1q_dup_s16(v72->i16);
              v221 = v76;
              v223 = v76;
              v225 = v76;
              v227 = v76;
              v75 = 2;
            }

            else if (*v69)
            {
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v221, 32, v72, v74);
            }

            else
            {
              v75 = 0;
              v221 = 0uLL;
              v223 = 0uLL;
              v225 = 0uLL;
              v227 = 0uLL;
            }

            v81 = v72->i64 + v75;
            v82 = v69[1];
            if (v82 == 63)
            {
              v85 = *(v81 + 16);
              v86 = *(v81 + 32);
              v87 = *(v81 + 48);
              v88 = vuzp2q_s32(*v81, v86);
              v229 = vuzp1q_s32(*v81, v86);
              v231 = v88;
              v233 = vuzp1q_s32(v85, v87);
              v235 = vuzp2q_s32(v85, v87);
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v84 = vld1q_dup_s16(v81);
              v229 = v84;
              v231 = v84;
              v233 = v84;
              v235 = v84;
              v83 = 2;
            }

            else if (v69[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 32, v81, v82);
            }

            else
            {
              v83 = 0;
              v229 = 0uLL;
              v231 = 0uLL;
              v233 = 0uLL;
              v235 = 0uLL;
            }

            v89 = v81 + v83;
            v90 = v69[2];
            if (v90 == 63)
            {
              v93 = *(v89 + 16);
              v94 = *(v89 + 32);
              v95 = *(v89 + 48);
              v96 = vuzp2q_s32(*v89, v94);
              v222 = vuzp1q_s32(*v89, v94);
              v224 = v96;
              v226 = vuzp1q_s32(v93, v95);
              v228 = vuzp2q_s32(v93, v95);
              v91 = 64;
            }

            else if (v90 == 1)
            {
              v92 = vld1q_dup_s16(v89);
              v222 = v92;
              v224 = v92;
              v226 = v92;
              v228 = v92;
              v91 = 2;
            }

            else if (v69[2])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v222, 32, v89, v90);
            }

            else
            {
              v91 = 0;
              v222 = 0uLL;
              v224 = 0uLL;
              v226 = 0uLL;
              v228 = 0uLL;
            }

            v97 = v89 + v91;
            v98 = v69[3];
            if (v98 == 63)
            {
              v101 = *(v97 + 16);
              v102 = *(v97 + 32);
              v103 = *(v97 + 48);
              v104 = vuzp2q_s32(*v97, v102);
              v230 = vuzp1q_s32(*v97, v102);
              v232 = v104;
              v234 = vuzp1q_s32(v101, v103);
              v236 = vuzp2q_s32(v101, v103);
              v99 = 64;
            }

            else if (v98 == 1)
            {
              v100 = vld1q_dup_s16(v97);
              v230 = v100;
              v232 = v100;
              v234 = v100;
              v236 = v100;
              v99 = 2;
            }

            else if (v69[3])
            {
              v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 32, v97, v98);
            }

            else
            {
              v99 = 0;
              v230 = 0uLL;
              v232 = 0uLL;
              v234 = 0uLL;
              v236 = 0uLL;
            }

            v105 = v97 + v99;
            v106 = v69[4];
            if (v106 == 63)
            {
              v109 = *(v105 + 16);
              v110 = *(v105 + 32);
              v111 = *(v105 + 48);
              v112 = vuzp2q_s32(*v105, v110);
              v237 = vuzp1q_s32(*v105, v110);
              v239 = v112;
              v241 = vuzp1q_s32(v109, v111);
              v243 = vuzp2q_s32(v109, v111);
              v107 = 64;
            }

            else if (v106 == 1)
            {
              v108 = vld1q_dup_s16(v105);
              v237 = v108;
              v239 = v108;
              v241 = v108;
              v243 = v108;
              v107 = 2;
            }

            else if (v69[4])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 32, v105, v106);
            }

            else
            {
              v107 = 0;
              v237 = 0uLL;
              v239 = 0uLL;
              v241 = 0uLL;
              v243 = 0uLL;
            }

            v113 = v105 + v107;
            v114 = v69[5];
            if (v114 == 63)
            {
              v117 = *(v113 + 16);
              v118 = *(v113 + 32);
              v119 = *(v113 + 48);
              v120 = vuzp2q_s32(*v113, v118);
              v245 = vuzp1q_s32(*v113, v118);
              v247 = v120;
              v249 = vuzp1q_s32(v117, v119);
              v251 = vuzp2q_s32(v117, v119);
              v115 = 64;
            }

            else if (v114 == 1)
            {
              v116 = vld1q_dup_s16(v113);
              v245 = v116;
              v247 = v116;
              v249 = v116;
              v251 = v116;
              v115 = 2;
            }

            else if (v69[5])
            {
              v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 32, v113, v114);
            }

            else
            {
              v115 = 0;
              v245 = 0uLL;
              v247 = 0uLL;
              v249 = 0uLL;
              v251 = 0uLL;
            }

            v121 = v113 + v115;
            v122 = v69[6];
            if (v122 == 63)
            {
              v125 = *(v121 + 16);
              v126 = *(v121 + 32);
              v127 = *(v121 + 48);
              v128 = vuzp2q_s32(*v121, v126);
              v238 = vuzp1q_s32(*v121, v126);
              v240 = v128;
              v242 = vuzp1q_s32(v125, v127);
              v244 = vuzp2q_s32(v125, v127);
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v124 = vld1q_dup_s16(v121);
              v238 = v124;
              v240 = v124;
              v242 = v124;
              v244 = v124;
              v123 = 2;
            }

            else if (v69[6])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 32, v121, v122);
            }

            else
            {
              v123 = 0;
              v238 = 0uLL;
              v240 = 0uLL;
              v242 = 0uLL;
              v244 = 0uLL;
            }

            v129 = v121 + v123;
            v130 = v69[7];
            if (v130 == 63)
            {
              v133 = *(v129 + 16);
              v134 = *(v129 + 32);
              v135 = *(v129 + 48);
              v136 = vuzp2q_s32(*v129, v134);
              v246 = vuzp1q_s32(*v129, v134);
              v248 = v136;
              v250 = vuzp1q_s32(v133, v135);
              v252 = vuzp2q_s32(v133, v135);
              v131 = v216;
              if (v216)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v130 != 1)
              {
                if (v69[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v129, v130);
                  v131 = v216;
                  if (!v216)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v246 = 0uLL;
                  v248 = 0uLL;
                  v250 = 0uLL;
                  v252 = 0uLL;
                  v131 = v216;
                  if (!v216)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v137 = v217;
                if (!v217)
                {
                  goto LABEL_178;
                }

                v138 = 0;
                v139 = 32 * v214;
                v140 = 2 * v215;
                v141 = &v221 + v139 + v140;
                v142 = v212;
                v143 = v213;
                v144 = 2 * v217;
                if (2 * v217)
                {
                  v145 = (2 * v217 - 1) >> 32 == 0;
                }

                else
                {
                  v145 = 0;
                }

                v146 = !v145;
                v148 = v141 < v212 + 2 * v217 + v213 * (v131 - 1) && v212 < (&__dst[2 * v131 + 30 + 2 * v214] + 2 * v217 + v140);
                v149 = v148 || v213 < 0;
                v150 = v144 & 0x1FFFFFFE0;
                v151 = v144 & 0x1FFFFFFF8;
                v152 = (v217 < 4) | v146 | v149;
                v153 = &v222.i8[v139 + v140];
                v154 = v212 + 1;
                v155 = v141;
                v156 = v212;
                while (2)
                {
                  v157 = v142 + v138 * v143;
                  v158 = &v141[32 * v138];
                  if (v152)
                  {
                    v159 = 0;
LABEL_175:
                    v169 = v159 + 1;
                    do
                    {
                      v170 = *v157++;
                      *v158++ = v170;
                    }

                    while (v144 > v169++);
                  }

                  else
                  {
                    if (v137 >= 0x10)
                    {
                      v161 = v154;
                      v162 = v153;
                      v163 = v144 & 0x1FFFFFFE0;
                      do
                      {
                        v164 = *v161;
                        *(v162 - 1) = v161[-1];
                        *v162 = v164;
                        v162 += 32;
                        v161 += 2;
                        v163 -= 32;
                      }

                      while (v163);
                      if (v144 == v150)
                      {
                        goto LABEL_161;
                      }

                      v160 = v144 & 0x1FFFFFFE0;
                      if ((v137 & 0xC) == 0)
                      {
                        v157 += v150;
                        v158 += v150;
                        v159 = v144 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v160 = 0;
                    }

                    v158 += v151;
                    v165 = v160 - (v144 & 0x1FFFFFFF8);
                    v166 = (v156 + v160);
                    v167 = &v155[v160];
                    do
                    {
                      v168 = *v166++;
                      *v167 = v168;
                      v167 += 8;
                      v165 += 8;
                    }

                    while (v165);
                    if (v144 != v151)
                    {
                      v157 += v151;
                      v159 = v144 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v138;
                  v153 += 32;
                  v154 = (v154 + v143);
                  v156 = (v156 + v143);
                  v155 += 32;
                  if (v138 == v131)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v132 = vld1q_dup_s16(v129);
              v246 = v132;
              v248 = v132;
              v250 = v132;
              v252 = v132;
              v131 = v216;
              if (v216)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v221, 32, v210, v211, v218, v219);
            if (!v208)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v70;
          if (!v208)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v72, 0x200uLL);
LABEL_26:
          v21 = v34++ == v196 >> 4;
          result = v205;
        }

        while (!v21);
        v21 = v17++ == v189;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v266 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v217 = a8;
  v200 = a8 + a10 - 1;
  v218 = a1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 4;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v199 = v200 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v221 = v24;
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
      v211 = 0;
LABEL_32:
      v208 = v27 - 4;
      v203 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v197 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v211 = v32 >= v26;
    goto LABEL_32;
  }

  v211 = 0;
  v197 = 0;
  v203 = 0;
  v208 = 0;
LABEL_33:
  if (v18 <= v199)
  {
    v210 = a7 + a9 - 1;
    v196 = a7 >> 4;
    if (a7 >> 4 <= v210 >> 4)
    {
      v219 = v19 >> 4;
      v204 = v19 & 0xF;
      v194 = v20 & 0xF;
      v195 = v20 >> 4;
      v193 = ~(-1 << v203);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v202 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v201 = v35;
      v209 = a7;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v217)
        {
          v37 = v217;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v200 < v36)
        {
          v36 = v200;
        }

        v207 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v194;
        v206 = v39;
        v41 = v39 != 16;
        v42 = v194 + 1;
        if (v18 != v195)
        {
          v42 = 16;
          v40 = v41;
        }

        v205 = v40;
        v43 = v196;
        v44 = v18 & v193;
        v215 = a3 + (v37 - v217) * a11;
        v216 = v42;
        v214 = v42;
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

          if (v210 < v46)
          {
            v46 = v210;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v219)
          {
            v50 = v204 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (16 * v18 >= v217 && v45 >= a7)
          {
            v52 = v48 != v204;
            if (v43 != v219)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v205;
          }

          if (v211)
          {
            if (v208 | v203)
            {
              v53 = 0;
              v54 = 0;
              v55 = v203 != 0;
              v56 = 1;
              v58 = v208 != 0;
              v57 = v203;
              v59 = v208;
              do
              {
                --v59;
                if (v58)
                {
                  v54 |= (v43 & ~(-1 << v208) & v56) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                --v57;
                if (v55)
                {
                  v54 |= (v44 & v56) << v53++;
                }

                else
                {
                  v57 = 0;
                }

                v56 *= 2;
                --v53;
                v55 = v57 != 0;
                v58 = v59 != 0;
              }

              while (v57 | v59);
              v60 = v54 << 9;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v208) + (v18 >> v203) * v197);
          }

          else if (v202)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v201.i8[0];
            v65 = v201.i8[4];
            v67 = v202.i32[0];
            v66 = v202.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v43) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v18) << v61++;
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

          v73 = v72 + 15;
          if (v73 < 0x20)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 4) - 1)));
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
          v82 = v215 + 2 * (v47 - a7);
          v220 = (a2 + v68);
          if (v221)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v214 < 0x10)))
            {
              goto LABEL_109;
            }

            v84 = v49;
            v85 = (a4 + v80);
            v86 = v50;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v49 = v84;
            v44 = v18 & v193;
            LOBYTE(v50) = v86;
            v81 = v85;
            result = v218;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v214 < 0x10)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v216);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v223 = v83;
          v231 = v50;
          v232 = v216;
          v227 = v207;
          v228 = v47 - v45;
          v224 = v81;
          v225 = v82;
          v226 = a11;
          v229 = v206;
          v230 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v209;
            v87 = v43 + 1;
            goto LABEL_202;
          }

          v88 = *v81;
          a7 = v209;
          if (v88 == 63)
          {
            v91 = *(v83 + 1);
            v92 = *(v83 + 2);
            v93 = *(v83 + 3);
            v94 = vuzp2q_s32(*v83, v92);
            v234 = vuzp1q_s32(*v83, v92);
            v236 = v94;
            v238 = vuzp1q_s32(v91, v93);
            v240 = vuzp2q_s32(v91, v93);
            v89 = 64;
          }

          else if (v88 == 1)
          {
            v90 = vld1q_dup_s16(v83);
            v234 = v90;
            v236 = v90;
            v238 = v90;
            v240 = v90;
            v89 = 2;
          }

          else if (*v81)
          {
            v95 = v81;
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 32, v83, v88);
            v81 = v95;
          }

          else
          {
            v89 = 0;
            v234 = 0uLL;
            v236 = 0uLL;
            v238 = 0uLL;
            v240 = 0uLL;
          }

          v96 = v83 + v89;
          v97 = v81[1];
          if (v97 == 63)
          {
            v100 = *(v96 + 16);
            v101 = *(v96 + 32);
            v102 = *(v96 + 48);
            v103 = vuzp2q_s32(*v96, v101);
            v242 = vuzp1q_s32(*v96, v101);
            v244 = v103;
            v246 = vuzp1q_s32(v100, v102);
            v248 = vuzp2q_s32(v100, v102);
            v98 = 64;
          }

          else if (v97 == 1)
          {
            v99 = vld1q_dup_s16(v96);
            v242 = v99;
            v244 = v99;
            v246 = v99;
            v248 = v99;
            v98 = 2;
          }

          else if (v81[1])
          {
            v104 = v81;
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 32, v96, v97);
            v81 = v104;
          }

          else
          {
            v98 = 0;
            v242 = 0uLL;
            v244 = 0uLL;
            v246 = 0uLL;
            v248 = 0uLL;
          }

          v105 = v96 + v98;
          v106 = v81[2];
          if (v106 == 63)
          {
            v109 = *(v105 + 16);
            v110 = *(v105 + 32);
            v111 = *(v105 + 48);
            v112 = vuzp2q_s32(*v105, v110);
            v235 = vuzp1q_s32(*v105, v110);
            v237 = v112;
            v239 = vuzp1q_s32(v109, v111);
            v241 = vuzp2q_s32(v109, v111);
            v107 = 64;
          }

          else if (v106 == 1)
          {
            v108 = vld1q_dup_s16(v105);
            v235 = v108;
            v237 = v108;
            v239 = v108;
            v241 = v108;
            v107 = 2;
          }

          else if (v81[2])
          {
            v113 = v81;
            v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 32, v105, v106);
            v81 = v113;
          }

          else
          {
            v107 = 0;
            v235 = 0uLL;
            v237 = 0uLL;
            v239 = 0uLL;
            v241 = 0uLL;
          }

          v114 = v105 + v107;
          v115 = v81[3];
          if (v115 == 63)
          {
            v118 = *(v114 + 16);
            v119 = *(v114 + 32);
            v120 = *(v114 + 48);
            v121 = vuzp2q_s32(*v114, v119);
            v243 = vuzp1q_s32(*v114, v119);
            v245 = v121;
            v247 = vuzp1q_s32(v118, v120);
            v249 = vuzp2q_s32(v118, v120);
            v116 = 64;
          }

          else if (v115 == 1)
          {
            v117 = vld1q_dup_s16(v114);
            v243 = v117;
            v245 = v117;
            v247 = v117;
            v249 = v117;
            v116 = 2;
          }

          else if (v81[3])
          {
            v122 = v81;
            v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 32, v114, v115);
            v81 = v122;
          }

          else
          {
            v116 = 0;
            v243 = 0uLL;
            v245 = 0uLL;
            v247 = 0uLL;
            v249 = 0uLL;
          }

          v123 = v114 + v116;
          v124 = v81[4];
          if (v124 == 63)
          {
            v127 = *(v123 + 16);
            v128 = *(v123 + 32);
            v129 = *(v123 + 48);
            v130 = vuzp2q_s32(*v123, v128);
            v250 = vuzp1q_s32(*v123, v128);
            v252 = v130;
            v254 = vuzp1q_s32(v127, v129);
            v256 = vuzp2q_s32(v127, v129);
            v125 = 64;
          }

          else if (v124 == 1)
          {
            v126 = vld1q_dup_s16(v123);
            v250 = v126;
            v252 = v126;
            v254 = v126;
            v256 = v126;
            v125 = 2;
          }

          else if (v81[4])
          {
            v131 = v81;
            v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 32, v123, v124);
            v81 = v131;
          }

          else
          {
            v125 = 0;
            v250 = 0uLL;
            v252 = 0uLL;
            v254 = 0uLL;
            v256 = 0uLL;
          }

          v132 = v123 + v125;
          v133 = v81[5];
          if (v133 == 63)
          {
            v136 = *(v132 + 16);
            v137 = *(v132 + 32);
            v138 = *(v132 + 48);
            v139 = vuzp2q_s32(*v132, v137);
            v258 = vuzp1q_s32(*v132, v137);
            v260 = v139;
            v262 = vuzp1q_s32(v136, v138);
            v264 = vuzp2q_s32(v136, v138);
            v134 = 64;
          }

          else if (v133 == 1)
          {
            v135 = vld1q_dup_s16(v132);
            v258 = v135;
            v260 = v135;
            v262 = v135;
            v264 = v135;
            v134 = 2;
          }

          else if (v81[5])
          {
            v140 = v81;
            v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 32, v132, v133);
            v81 = v140;
          }

          else
          {
            v134 = 0;
            v258 = 0uLL;
            v260 = 0uLL;
            v262 = 0uLL;
            v264 = 0uLL;
          }

          v141 = v132 + v134;
          v142 = v81[6];
          if (v142 == 63)
          {
            v145 = *(v141 + 16);
            v146 = *(v141 + 32);
            v147 = *(v141 + 48);
            v148 = vuzp2q_s32(*v141, v146);
            v251 = vuzp1q_s32(*v141, v146);
            v253 = v148;
            v255 = vuzp1q_s32(v145, v147);
            v257 = vuzp2q_s32(v145, v147);
            v143 = 64;
          }

          else if (v142 == 1)
          {
            v144 = vld1q_dup_s16(v141);
            v251 = v144;
            v253 = v144;
            v255 = v144;
            v257 = v144;
            v143 = 2;
          }

          else if (v81[6])
          {
            v149 = v81;
            v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 32, v141, v142);
            v81 = v149;
          }

          else
          {
            v143 = 0;
            v251 = 0uLL;
            v253 = 0uLL;
            v255 = 0uLL;
            v257 = 0uLL;
          }

          v150 = v141 + v143;
          v151 = v81[7];
          if (v151 == 63)
          {
            v154 = *(v150 + 16);
            v155 = *(v150 + 32);
            v156 = *(v150 + 48);
            v157 = vuzp2q_s32(*v150, v155);
            v259 = vuzp1q_s32(*v150, v155);
            v261 = v157;
            v263 = vuzp1q_s32(v154, v156);
            v265 = vuzp2q_s32(v154, v156);
            v87 = v43 + 1;
            v152 = v229;
            if (!v229)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v87 = v43 + 1;
            if (v151 == 1)
            {
              v153 = vld1q_dup_s16(v150);
              v259 = v153;
              v261 = v153;
              v263 = v153;
              v265 = v153;
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }

            else if (v81[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v259, 32, v150, v151);
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v259 = 0uLL;
              v261 = 0uLL;
              v263 = 0uLL;
              v265 = 0uLL;
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }
          }

          v158 = v230;
          if (v230)
          {
            v159 = 0;
            v160 = 32 * v227;
            v161 = 2 * v228;
            v162 = &v234.i8[v160 + v161];
            v163 = v225;
            v164 = v226;
            v165 = 2 * v230;
            if (2 * v230)
            {
              v166 = (2 * v230 - 1) >> 32 == 0;
            }

            else
            {
              v166 = 0;
            }

            v167 = !v166;
            v169 = v162 < v225 + v226 * (v152 - 1) + 2 * v230 && v225 < &__dst[2 * v152 + 30 + 2 * v227] + 2 * v230 + v161;
            v170 = v169 || v226 < 0;
            v171 = v165 & 0x1FFFFFFE0;
            v172 = v165 & 0x1FFFFFFF8;
            v173 = (v230 < 4) | v167 | v170;
            v174 = &v235.i8[v160 + v161];
            v175 = (v225 + 16);
            v176 = v162;
            v177 = v225;
            do
            {
              v178 = (v163 + v159 * v164);
              v179 = &v162[32 * v159];
              if (v173)
              {
                v180 = 0;
                goto LABEL_198;
              }

              if (v158 >= 0x10)
              {
                v182 = v175;
                v183 = v174;
                v184 = v165 & 0x1FFFFFFE0;
                do
                {
                  v185 = *v182;
                  *(v183 - 1) = *(v182 - 1);
                  *v183 = v185;
                  v183 += 32;
                  v182 += 2;
                  v184 -= 32;
                }

                while (v184);
                if (v165 == v171)
                {
                  goto LABEL_184;
                }

                v181 = v165 & 0x1FFFFFFE0;
                if ((v158 & 0xC) == 0)
                {
                  v178 += v171;
                  v179 += v171;
                  v180 = v165 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v181 = 0;
              }

              v179 += v172;
              v186 = v181 - (v165 & 0x1FFFFFFF8);
              v187 = (v177 + v181);
              v188 = &v176[v181];
              do
              {
                v189 = *v187++;
                *v188 = v189;
                v188 += 8;
                v186 += 8;
              }

              while (v186);
              if (v165 == v172)
              {
                goto LABEL_184;
              }

              v178 += v172;
              v180 = v165 & 0xFFFFFFF8;
LABEL_198:
              v190 = v180 + 1;
              do
              {
                v191 = *v178++;
                *v179++ = v191;
              }

              while (v165 > v190++);
LABEL_184:
              ++v159;
              v174 += 32;
              v175 = (v175 + v164);
              v177 += v164;
              v176 += 32;
            }

            while (v159 != v152);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v234, 32, v223, v224, v231, v232);
LABEL_202:
          if (v221)
          {
            memcpy(v220, v83, 0x200uLL);
          }

          v21 = v43 == v210 >> 4;
          v43 = v87;
          result = v218;
        }

        while (!v21);
        v21 = v18++ == v199;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v266 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v217 = a8;
  v200 = a8 + a10 - 1;
  v218 = a1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 4;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v199 = v200 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v221 = v24;
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
      v211 = 0;
LABEL_32:
      v208 = v27 - 4;
      v203 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v197 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v211 = v32 >= v26;
    goto LABEL_32;
  }

  v211 = 0;
  v197 = 0;
  v203 = 0;
  v208 = 0;
LABEL_33:
  if (v18 <= v199)
  {
    v210 = a7 + a9 - 1;
    v196 = a7 >> 4;
    if (a7 >> 4 <= v210 >> 4)
    {
      v219 = v19 >> 4;
      v204 = v19 & 0xF;
      v194 = v20 & 0xF;
      v195 = v20 >> 4;
      v193 = ~(-1 << v203);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v202 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v201 = v35;
      v209 = a7;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v217)
        {
          v37 = v217;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v200 < v36)
        {
          v36 = v200;
        }

        v207 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v194;
        v206 = v39;
        v41 = v39 != 16;
        v42 = v194 + 1;
        if (v18 != v195)
        {
          v42 = 16;
          v40 = v41;
        }

        v205 = v40;
        v43 = v196;
        v44 = v18 & v193;
        v215 = a3 + (v37 - v217) * a11;
        v216 = v42;
        v214 = v42;
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

          if (v210 < v46)
          {
            v46 = v210;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v219)
          {
            v50 = v204 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (16 * v18 >= v217 && v45 >= a7)
          {
            v52 = v48 != v204;
            if (v43 != v219)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v205;
          }

          if (v211)
          {
            if (v208 | v203)
            {
              v53 = 0;
              v54 = 0;
              v55 = v203 != 0;
              v56 = 1;
              v58 = v208 != 0;
              v57 = v203;
              v59 = v208;
              do
              {
                --v59;
                if (v58)
                {
                  v54 |= (v43 & ~(-1 << v208) & v56) << v53++;
                }

                else
                {
                  v59 = 0;
                }

                --v57;
                if (v55)
                {
                  v54 |= (v44 & v56) << v53++;
                }

                else
                {
                  v57 = 0;
                }

                v56 *= 2;
                --v53;
                v55 = v57 != 0;
                v58 = v59 != 0;
              }

              while (v57 | v59);
              v60 = v54 << 9;
            }

            else
            {
              v60 = 0;
            }

            v68 = v60 + *(result + 336) * ((v43 >> v208) + (v18 >> v203) * v197);
          }

          else if (v202)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v201.i8[0];
            v65 = v201.i8[4];
            v67 = v202.i32[0];
            v66 = v202.i32[1];
            do
            {
              --v66;
              if (v65)
              {
                v62 |= (v63 & v43) << v61++;
              }

              else
              {
                v66 = 0;
              }

              --v67;
              if (v64)
              {
                v62 |= (v63 & v18) << v61++;
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

          v73 = v72 + 15;
          if (v73 < 0x20)
          {
            v74 = 0;
          }

          else
          {
            v74 = 32 - __clz(~(-1 << -__clz((v73 >> 4) - 1)));
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
          v82 = (v215 + 2 * (v47 - a7));
          v220 = (a2 + v68);
          if (v221)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v214 < 0x10)))
            {
              goto LABEL_109;
            }

            v84 = v49;
            v85 = (a4 + v80);
            v86 = v50;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v49 = v84;
            v44 = v18 & v193;
            LOBYTE(v50) = v86;
            v81 = v85;
            result = v218;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v214 < 0x10)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v216);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v223 = v83;
          v231 = v50;
          v232 = v216;
          v227 = v207;
          v228 = v47 - v45;
          v224 = v81;
          v225 = v82;
          v226 = a11;
          v229 = v206;
          v230 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v209;
            v87 = v43 + 1;
            goto LABEL_202;
          }

          v88 = *v81;
          a7 = v209;
          if (v88 == 63)
          {
            v91 = v83[1];
            v92 = v83[2];
            v93 = v83[3];
            v94 = vuzp2q_s32(*v83, v92);
            v234 = vuzp1q_s32(*v83, v92);
            v236 = v94;
            v238 = vuzp1q_s32(v91, v93);
            v240 = vuzp2q_s32(v91, v93);
            v89 = 64;
          }

          else if (v88 == 1)
          {
            v90 = vld1q_dup_s16(v83->i16);
            v234 = v90;
            v236 = v90;
            v238 = v90;
            v240 = v90;
            v89 = 2;
          }

          else if (*v81)
          {
            v95 = v81;
            v89 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 32, v83, v88);
            v81 = v95;
          }

          else
          {
            v89 = 0;
            v234 = 0uLL;
            v236 = 0uLL;
            v238 = 0uLL;
            v240 = 0uLL;
          }

          v96 = v83->i64 + v89;
          v97 = v81[1];
          if (v97 == 63)
          {
            v100 = *(v96 + 16);
            v101 = *(v96 + 32);
            v102 = *(v96 + 48);
            v103 = vuzp2q_s32(*v96, v101);
            v242 = vuzp1q_s32(*v96, v101);
            v244 = v103;
            v246 = vuzp1q_s32(v100, v102);
            v248 = vuzp2q_s32(v100, v102);
            v98 = 64;
          }

          else if (v97 == 1)
          {
            v99 = vld1q_dup_s16(v96);
            v242 = v99;
            v244 = v99;
            v246 = v99;
            v248 = v99;
            v98 = 2;
          }

          else if (v81[1])
          {
            v104 = v81;
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 32, v96, v97);
            v81 = v104;
          }

          else
          {
            v98 = 0;
            v242 = 0uLL;
            v244 = 0uLL;
            v246 = 0uLL;
            v248 = 0uLL;
          }

          v105 = v96 + v98;
          v106 = v81[2];
          if (v106 == 63)
          {
            v109 = *(v105 + 16);
            v110 = *(v105 + 32);
            v111 = *(v105 + 48);
            v112 = vuzp2q_s32(*v105, v110);
            v235 = vuzp1q_s32(*v105, v110);
            v237 = v112;
            v239 = vuzp1q_s32(v109, v111);
            v241 = vuzp2q_s32(v109, v111);
            v107 = 64;
          }

          else if (v106 == 1)
          {
            v108 = vld1q_dup_s16(v105);
            v235 = v108;
            v237 = v108;
            v239 = v108;
            v241 = v108;
            v107 = 2;
          }

          else if (v81[2])
          {
            v113 = v81;
            v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v235, 32, v105, v106);
            v81 = v113;
          }

          else
          {
            v107 = 0;
            v235 = 0uLL;
            v237 = 0uLL;
            v239 = 0uLL;
            v241 = 0uLL;
          }

          v114 = v105 + v107;
          v115 = v81[3];
          if (v115 == 63)
          {
            v118 = *(v114 + 16);
            v119 = *(v114 + 32);
            v120 = *(v114 + 48);
            v121 = vuzp2q_s32(*v114, v119);
            v243 = vuzp1q_s32(*v114, v119);
            v245 = v121;
            v247 = vuzp1q_s32(v118, v120);
            v249 = vuzp2q_s32(v118, v120);
            v116 = 64;
          }

          else if (v115 == 1)
          {
            v117 = vld1q_dup_s16(v114);
            v243 = v117;
            v245 = v117;
            v247 = v117;
            v249 = v117;
            v116 = 2;
          }

          else if (v81[3])
          {
            v122 = v81;
            v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v243, 32, v114, v115);
            v81 = v122;
          }

          else
          {
            v116 = 0;
            v243 = 0uLL;
            v245 = 0uLL;
            v247 = 0uLL;
            v249 = 0uLL;
          }

          v123 = v114 + v116;
          v124 = v81[4];
          if (v124 == 63)
          {
            v127 = *(v123 + 16);
            v128 = *(v123 + 32);
            v129 = *(v123 + 48);
            v130 = vuzp2q_s32(*v123, v128);
            v250 = vuzp1q_s32(*v123, v128);
            v252 = v130;
            v254 = vuzp1q_s32(v127, v129);
            v256 = vuzp2q_s32(v127, v129);
            v125 = 64;
          }

          else if (v124 == 1)
          {
            v126 = vld1q_dup_s16(v123);
            v250 = v126;
            v252 = v126;
            v254 = v126;
            v256 = v126;
            v125 = 2;
          }

          else if (v81[4])
          {
            v131 = v81;
            v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v250, 32, v123, v124);
            v81 = v131;
          }

          else
          {
            v125 = 0;
            v250 = 0uLL;
            v252 = 0uLL;
            v254 = 0uLL;
            v256 = 0uLL;
          }

          v132 = v123 + v125;
          v133 = v81[5];
          if (v133 == 63)
          {
            v136 = *(v132 + 16);
            v137 = *(v132 + 32);
            v138 = *(v132 + 48);
            v139 = vuzp2q_s32(*v132, v137);
            v258 = vuzp1q_s32(*v132, v137);
            v260 = v139;
            v262 = vuzp1q_s32(v136, v138);
            v264 = vuzp2q_s32(v136, v138);
            v134 = 64;
          }

          else if (v133 == 1)
          {
            v135 = vld1q_dup_s16(v132);
            v258 = v135;
            v260 = v135;
            v262 = v135;
            v264 = v135;
            v134 = 2;
          }

          else if (v81[5])
          {
            v140 = v81;
            v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v258, 32, v132, v133);
            v81 = v140;
          }

          else
          {
            v134 = 0;
            v258 = 0uLL;
            v260 = 0uLL;
            v262 = 0uLL;
            v264 = 0uLL;
          }

          v141 = v132 + v134;
          v142 = v81[6];
          if (v142 == 63)
          {
            v145 = *(v141 + 16);
            v146 = *(v141 + 32);
            v147 = *(v141 + 48);
            v148 = vuzp2q_s32(*v141, v146);
            v251 = vuzp1q_s32(*v141, v146);
            v253 = v148;
            v255 = vuzp1q_s32(v145, v147);
            v257 = vuzp2q_s32(v145, v147);
            v143 = 64;
          }

          else if (v142 == 1)
          {
            v144 = vld1q_dup_s16(v141);
            v251 = v144;
            v253 = v144;
            v255 = v144;
            v257 = v144;
            v143 = 2;
          }

          else if (v81[6])
          {
            v149 = v81;
            v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v251, 32, v141, v142);
            v81 = v149;
          }

          else
          {
            v143 = 0;
            v251 = 0uLL;
            v253 = 0uLL;
            v255 = 0uLL;
            v257 = 0uLL;
          }

          v150 = v141 + v143;
          v151 = v81[7];
          if (v151 == 63)
          {
            v154 = *(v150 + 16);
            v155 = *(v150 + 32);
            v156 = *(v150 + 48);
            v157 = vuzp2q_s32(*v150, v155);
            v259 = vuzp1q_s32(*v150, v155);
            v261 = v157;
            v263 = vuzp1q_s32(v154, v156);
            v265 = vuzp2q_s32(v154, v156);
            v87 = v43 + 1;
            v152 = v229;
            if (!v229)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v87 = v43 + 1;
            if (v151 == 1)
            {
              v153 = vld1q_dup_s16(v150);
              v259 = v153;
              v261 = v153;
              v263 = v153;
              v265 = v153;
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }

            else if (v81[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v259, 32, v150, v151);
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v259 = 0uLL;
              v261 = 0uLL;
              v263 = 0uLL;
              v265 = 0uLL;
              v152 = v229;
              if (!v229)
              {
                goto LABEL_201;
              }
            }
          }

          v158 = v230;
          if (v230)
          {
            v159 = 0;
            v160 = 32 * v227;
            v161 = 2 * v228;
            v162 = &v234 + v160 + v161;
            v163 = v225;
            v164 = v226;
            v165 = 2 * v230;
            if (2 * v230)
            {
              v166 = (2 * v230 - 1) >> 32 == 0;
            }

            else
            {
              v166 = 0;
            }

            v167 = !v166;
            v169 = v162 < v225 + 2 * v230 + v226 * (v152 - 1) && v225 < (&__dst[2 * v152 + 30 + 2 * v227] + 2 * v230 + v161);
            v170 = v169 || v226 < 0;
            v171 = v165 & 0x1FFFFFFE0;
            v172 = v165 & 0x1FFFFFFF8;
            v173 = (v230 < 4) | v167 | v170;
            v174 = &v235.i8[v160 + v161];
            v175 = v225 + 1;
            v176 = v162;
            v177 = v225;
            do
            {
              v178 = v163 + v159 * v164;
              v179 = &v162[32 * v159];
              if (v173)
              {
                v180 = 0;
                goto LABEL_198;
              }

              if (v158 >= 0x10)
              {
                v182 = v175;
                v183 = v174;
                v184 = v165 & 0x1FFFFFFE0;
                do
                {
                  v185 = *v182;
                  *(v183 - 1) = v182[-1];
                  *v183 = v185;
                  v183 += 32;
                  v182 += 2;
                  v184 -= 32;
                }

                while (v184);
                if (v165 == v171)
                {
                  goto LABEL_184;
                }

                v181 = v165 & 0x1FFFFFFE0;
                if ((v158 & 0xC) == 0)
                {
                  v178 += v171;
                  v179 += v171;
                  v180 = v165 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v181 = 0;
              }

              v179 += v172;
              v186 = v181 - (v165 & 0x1FFFFFFF8);
              v187 = (v177 + v181);
              v188 = &v176[v181];
              do
              {
                v189 = *v187++;
                *v188 = v189;
                v188 += 8;
                v186 += 8;
              }

              while (v186);
              if (v165 == v172)
              {
                goto LABEL_184;
              }

              v178 += v172;
              v180 = v165 & 0xFFFFFFF8;
LABEL_198:
              v190 = v180 + 1;
              do
              {
                v191 = *v178++;
                *v179++ = v191;
              }

              while (v165 > v190++);
LABEL_184:
              ++v159;
              v174 += 32;
              v175 = (v175 + v164);
              v177 = (v177 + v164);
              v176 += 32;
            }

            while (v159 != v152);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v234, 32, v223, v224, v231, v232);
LABEL_202:
          if (v221)
          {
            memcpy(v220, v83, 0x200uLL);
          }

          v21 = v43 == v210 >> 4;
          v43 = v87;
          result = v218;
        }

        while (!v21);
        v21 = v18++ == v199;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v253 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v204 = a8;
  v17 = a8 >> 4;
  v187 = a8 + a10 - 1;
  v189 = v187 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v205 = a1;
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
  v208 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v197 = result;
  if (v17 <= v189)
  {
    v196 = a7 + a9 - 1;
    v186 = a7 >> 4;
    if (a7 >> 4 <= v196 >> 4)
    {
      result = a1;
      v206 = (a5 - 1) >> 4;
      v183 = a5 - 1;
      v190 = (a5 - 1) & 0xF;
      v184 = (a6 - 1) & 0xF;
      v185 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v195 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v194 = v27;
      v182 = 8 * v19 * v18;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v204)
        {
          v29 = v204;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v187 < v28)
        {
          v28 = v187;
        }

        v203 = 16 * v17;
        v193 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v184;
        v192 = v31;
        v33 = v31 != 16;
        v34 = v186;
        v35 = v184 + 1;
        if (v17 != v185)
        {
          v35 = 16;
          v32 = v33;
        }

        v191 = v32;
        v201 = a3 + (v29 - v204) * a11;
        v202 = v35;
        v200 = v35;
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

          if (v196 < v37)
          {
            v37 = v196;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v206)
          {
            v41 = v190 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v203 >= v204 && v36 >= a7)
          {
            v43 = v39 != v190;
            if (v34 != v206)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v191;
          }

          if (v197)
          {
            v64 = 0;
            v65 = v182 >> (*(result + 57) != 0);
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
              v68 = 16;
              v67 = 1;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v64 = 16;
              v67 = 1;
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

            v172 = (v64 >> 4) - 1;
            if (v66)
            {
              v173 = 0;
              if (v67)
              {
                goto LABEL_208;
              }

LABEL_197:
              v174 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v174 | v173)
              {
                goto LABEL_198;
              }

LABEL_209:
              v181 = 0;
            }

            else
            {
              v173 = 32 - __clz(~(-1 << -__clz(v172)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_197;
              }

LABEL_208:
              v174 = 0;
              if (!v173)
              {
                goto LABEL_209;
              }

LABEL_198:
              v175 = 0;
              v176 = 0;
              v177 = v34 & v172;
              v178 = v173 != 0;
              v179 = v174 != 0;
              v180 = 1;
              do
              {
                --v173;
                if (v178)
                {
                  v176 |= (v180 & v177) << v175++;
                }

                else
                {
                  v173 = 0;
                }

                --v174;
                if (v179)
                {
                  v176 |= (v180 & v17 & ((v68 >> 4) - 1)) << v175++;
                }

                else
                {
                  v174 = 0;
                }

                v180 *= 2;
                --v175;
                v179 = v174 != 0;
                v178 = v173 != 0;
              }

              while (v174 | v173);
              v181 = v176 << 9;
              result = v205;
            }

            v51 = v181 + ((v36 / v64 + v203 / v68 * ((v64 + v183) / v64)) << 14);
            goto LABEL_52;
          }

          if (v195)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v194.i8[0];
            v48 = v194.i8[4];
            v50 = v195.i32[0];
            v49 = v195.i32[1];
            do
            {
              --v49;
              if (v48)
              {
                v45 |= (v46 & v34) << v44++;
              }

              else
              {
                v49 = 0;
              }

              --v50;
              if (v47)
              {
                v45 |= (v46 & v17) << v44++;
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

          v56 = v55 + 15;
          if (v56 < 0x20)
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
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 4) - 1)));
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
          v71 = v201 + 2 * (v38 - a7);
          v72 = (a2 + v51);
          __src = (a2 + v51);
          if (v208)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v200 < 0x10)))
            {
              v72 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v202);
              goto LABEL_86;
            }

            v73 = v40;
            memcpy(__dst, __src, sizeof(__dst));
            v40 = v73;
            v72 = __dst;
            result = v205;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v200 < 0x10)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v210 = v72;
          v218 = v41;
          v219 = v202;
          v214 = v193;
          v215 = v38 - v36;
          v211 = v69;
          v212 = v71;
          v213 = a11;
          v216 = v192;
          v217 = v40;
          if ((v42 & 1) == 0)
          {
            v74 = *v69;
            a7 = v70;
            if (v74 == 63)
            {
              v77 = *(v72 + 1);
              v78 = *(v72 + 2);
              v79 = *(v72 + 3);
              v80 = vuzp2q_s32(*v72, v78);
              v221 = vuzp1q_s32(*v72, v78);
              v223 = v80;
              v225 = vuzp1q_s32(v77, v79);
              v227 = vuzp2q_s32(v77, v79);
              v75 = 64;
            }

            else if (v74 == 1)
            {
              v76 = vld1q_dup_s16(v72);
              v221 = v76;
              v223 = v76;
              v225 = v76;
              v227 = v76;
              v75 = 2;
            }

            else if (*v69)
            {
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v221, 32, v72, v74);
            }

            else
            {
              v75 = 0;
              v221 = 0uLL;
              v223 = 0uLL;
              v225 = 0uLL;
              v227 = 0uLL;
            }

            v81 = v72 + v75;
            v82 = v69[1];
            if (v82 == 63)
            {
              v85 = *(v81 + 16);
              v86 = *(v81 + 32);
              v87 = *(v81 + 48);
              v88 = vuzp2q_s32(*v81, v86);
              v229 = vuzp1q_s32(*v81, v86);
              v231 = v88;
              v233 = vuzp1q_s32(v85, v87);
              v235 = vuzp2q_s32(v85, v87);
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v84 = vld1q_dup_s16(v81);
              v229 = v84;
              v231 = v84;
              v233 = v84;
              v235 = v84;
              v83 = 2;
            }

            else if (v69[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 32, v81, v82);
            }

            else
            {
              v83 = 0;
              v229 = 0uLL;
              v231 = 0uLL;
              v233 = 0uLL;
              v235 = 0uLL;
            }

            v89 = v81 + v83;
            v90 = v69[2];
            if (v90 == 63)
            {
              v93 = *(v89 + 16);
              v94 = *(v89 + 32);
              v95 = *(v89 + 48);
              v96 = vuzp2q_s32(*v89, v94);
              v222 = vuzp1q_s32(*v89, v94);
              v224 = v96;
              v226 = vuzp1q_s32(v93, v95);
              v228 = vuzp2q_s32(v93, v95);
              v91 = 64;
            }

            else if (v90 == 1)
            {
              v92 = vld1q_dup_s16(v89);
              v222 = v92;
              v224 = v92;
              v226 = v92;
              v228 = v92;
              v91 = 2;
            }

            else if (v69[2])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v222, 32, v89, v90);
            }

            else
            {
              v91 = 0;
              v222 = 0uLL;
              v224 = 0uLL;
              v226 = 0uLL;
              v228 = 0uLL;
            }

            v97 = v89 + v91;
            v98 = v69[3];
            if (v98 == 63)
            {
              v101 = *(v97 + 16);
              v102 = *(v97 + 32);
              v103 = *(v97 + 48);
              v104 = vuzp2q_s32(*v97, v102);
              v230 = vuzp1q_s32(*v97, v102);
              v232 = v104;
              v234 = vuzp1q_s32(v101, v103);
              v236 = vuzp2q_s32(v101, v103);
              v99 = 64;
            }

            else if (v98 == 1)
            {
              v100 = vld1q_dup_s16(v97);
              v230 = v100;
              v232 = v100;
              v234 = v100;
              v236 = v100;
              v99 = 2;
            }

            else if (v69[3])
            {
              v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 32, v97, v98);
            }

            else
            {
              v99 = 0;
              v230 = 0uLL;
              v232 = 0uLL;
              v234 = 0uLL;
              v236 = 0uLL;
            }

            v105 = v97 + v99;
            v106 = v69[4];
            if (v106 == 63)
            {
              v109 = *(v105 + 16);
              v110 = *(v105 + 32);
              v111 = *(v105 + 48);
              v112 = vuzp2q_s32(*v105, v110);
              v237 = vuzp1q_s32(*v105, v110);
              v239 = v112;
              v241 = vuzp1q_s32(v109, v111);
              v243 = vuzp2q_s32(v109, v111);
              v107 = 64;
            }

            else if (v106 == 1)
            {
              v108 = vld1q_dup_s16(v105);
              v237 = v108;
              v239 = v108;
              v241 = v108;
              v243 = v108;
              v107 = 2;
            }

            else if (v69[4])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 32, v105, v106);
            }

            else
            {
              v107 = 0;
              v237 = 0uLL;
              v239 = 0uLL;
              v241 = 0uLL;
              v243 = 0uLL;
            }

            v113 = v105 + v107;
            v114 = v69[5];
            if (v114 == 63)
            {
              v117 = *(v113 + 16);
              v118 = *(v113 + 32);
              v119 = *(v113 + 48);
              v120 = vuzp2q_s32(*v113, v118);
              v245 = vuzp1q_s32(*v113, v118);
              v247 = v120;
              v249 = vuzp1q_s32(v117, v119);
              v251 = vuzp2q_s32(v117, v119);
              v115 = 64;
            }

            else if (v114 == 1)
            {
              v116 = vld1q_dup_s16(v113);
              v245 = v116;
              v247 = v116;
              v249 = v116;
              v251 = v116;
              v115 = 2;
            }

            else if (v69[5])
            {
              v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 32, v113, v114);
            }

            else
            {
              v115 = 0;
              v245 = 0uLL;
              v247 = 0uLL;
              v249 = 0uLL;
              v251 = 0uLL;
            }

            v121 = v113 + v115;
            v122 = v69[6];
            if (v122 == 63)
            {
              v125 = *(v121 + 16);
              v126 = *(v121 + 32);
              v127 = *(v121 + 48);
              v128 = vuzp2q_s32(*v121, v126);
              v238 = vuzp1q_s32(*v121, v126);
              v240 = v128;
              v242 = vuzp1q_s32(v125, v127);
              v244 = vuzp2q_s32(v125, v127);
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v124 = vld1q_dup_s16(v121);
              v238 = v124;
              v240 = v124;
              v242 = v124;
              v244 = v124;
              v123 = 2;
            }

            else if (v69[6])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 32, v121, v122);
            }

            else
            {
              v123 = 0;
              v238 = 0uLL;
              v240 = 0uLL;
              v242 = 0uLL;
              v244 = 0uLL;
            }

            v129 = v121 + v123;
            v130 = v69[7];
            if (v130 == 63)
            {
              v133 = *(v129 + 16);
              v134 = *(v129 + 32);
              v135 = *(v129 + 48);
              v136 = vuzp2q_s32(*v129, v134);
              v246 = vuzp1q_s32(*v129, v134);
              v248 = v136;
              v250 = vuzp1q_s32(v133, v135);
              v252 = vuzp2q_s32(v133, v135);
              v131 = v216;
              if (v216)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v130 != 1)
              {
                if (v69[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v129, v130);
                  v131 = v216;
                  if (!v216)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v246 = 0uLL;
                  v248 = 0uLL;
                  v250 = 0uLL;
                  v252 = 0uLL;
                  v131 = v216;
                  if (!v216)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v137 = v217;
                if (!v217)
                {
                  goto LABEL_178;
                }

                v138 = 0;
                v139 = 32 * v214;
                v140 = 2 * v215;
                v141 = &v221.i8[v139 + v140];
                v142 = v212;
                v143 = v213;
                v144 = 2 * v217;
                if (2 * v217)
                {
                  v145 = (2 * v217 - 1) >> 32 == 0;
                }

                else
                {
                  v145 = 0;
                }

                v146 = !v145;
                v148 = v141 < v212 + v213 * (v131 - 1) + 2 * v217 && v212 < &__dst[2 * v131 + 30 + 2 * v214] + 2 * v217 + v140;
                v149 = v148 || v213 < 0;
                v150 = v144 & 0x1FFFFFFE0;
                v151 = v144 & 0x1FFFFFFF8;
                v152 = (v217 < 4) | v146 | v149;
                v153 = &v222.i8[v139 + v140];
                v154 = (v212 + 16);
                v155 = v141;
                v156 = v212;
                while (2)
                {
                  v157 = (v142 + v138 * v143);
                  v158 = &v141[32 * v138];
                  if (v152)
                  {
                    v159 = 0;
LABEL_175:
                    v169 = v159 + 1;
                    do
                    {
                      v170 = *v157++;
                      *v158++ = v170;
                    }

                    while (v144 > v169++);
                  }

                  else
                  {
                    if (v137 >= 0x10)
                    {
                      v161 = v154;
                      v162 = v153;
                      v163 = v144 & 0x1FFFFFFE0;
                      do
                      {
                        v164 = *v161;
                        *(v162 - 1) = *(v161 - 1);
                        *v162 = v164;
                        v162 += 32;
                        v161 += 2;
                        v163 -= 32;
                      }

                      while (v163);
                      if (v144 == v150)
                      {
                        goto LABEL_161;
                      }

                      v160 = v144 & 0x1FFFFFFE0;
                      if ((v137 & 0xC) == 0)
                      {
                        v157 += v150;
                        v158 += v150;
                        v159 = v144 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v160 = 0;
                    }

                    v158 += v151;
                    v165 = v160 - (v144 & 0x1FFFFFFF8);
                    v166 = (v156 + v160);
                    v167 = &v155[v160];
                    do
                    {
                      v168 = *v166++;
                      *v167 = v168;
                      v167 += 8;
                      v165 += 8;
                    }

                    while (v165);
                    if (v144 != v151)
                    {
                      v157 += v151;
                      v159 = v144 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v138;
                  v153 += 32;
                  v154 = (v154 + v143);
                  v156 += v143;
                  v155 += 32;
                  if (v138 == v131)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v132 = vld1q_dup_s16(v129);
              v246 = v132;
              v248 = v132;
              v250 = v132;
              v252 = v132;
              v131 = v216;
              if (v216)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v221, 32, v210, v211, v218, v219);
            if (!v208)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v70;
          if (!v208)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v72, 0x200uLL);
LABEL_26:
          v21 = v34++ == v196 >> 4;
          result = v205;
        }

        while (!v21);
        v21 = v17++ == v189;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v253 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v204 = a8;
  v17 = a8 >> 4;
  v187 = a8 + a10 - 1;
  v189 = v187 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v205 = a1;
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
  v208 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v197 = result;
  if (v17 <= v189)
  {
    v196 = a7 + a9 - 1;
    v186 = a7 >> 4;
    if (a7 >> 4 <= v196 >> 4)
    {
      result = a1;
      v206 = (a5 - 1) >> 4;
      v183 = a5 - 1;
      v190 = (a5 - 1) & 0xF;
      v184 = (a6 - 1) & 0xF;
      v185 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v195 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v194 = v27;
      v182 = 8 * v19 * v18;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v204)
        {
          v29 = v204;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v187 < v28)
        {
          v28 = v187;
        }

        v203 = 16 * v17;
        v193 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v184;
        v192 = v31;
        v33 = v31 != 16;
        v34 = v186;
        v35 = v184 + 1;
        if (v17 != v185)
        {
          v35 = 16;
          v32 = v33;
        }

        v191 = v32;
        v201 = a3 + (v29 - v204) * a11;
        v202 = v35;
        v200 = v35;
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

          if (v196 < v37)
          {
            v37 = v196;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v206)
          {
            v41 = v190 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v203 >= v204 && v36 >= a7)
          {
            v43 = v39 != v190;
            if (v34 != v206)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v191;
          }

          if (v197)
          {
            v64 = 0;
            v65 = v182 >> (*(result + 57) != 0);
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
              v68 = 16;
              v67 = 1;
              v64 = 32;
            }

            else if (v65 == 512)
            {
              v64 = 16;
              v67 = 1;
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

            v172 = (v64 >> 4) - 1;
            if (v66)
            {
              v173 = 0;
              if (v67)
              {
                goto LABEL_208;
              }

LABEL_197:
              v174 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v174 | v173)
              {
                goto LABEL_198;
              }

LABEL_209:
              v181 = 0;
            }

            else
            {
              v173 = 32 - __clz(~(-1 << -__clz(v172)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_197;
              }

LABEL_208:
              v174 = 0;
              if (!v173)
              {
                goto LABEL_209;
              }

LABEL_198:
              v175 = 0;
              v176 = 0;
              v177 = v34 & v172;
              v178 = v173 != 0;
              v179 = v174 != 0;
              v180 = 1;
              do
              {
                --v173;
                if (v178)
                {
                  v176 |= (v180 & v177) << v175++;
                }

                else
                {
                  v173 = 0;
                }

                --v174;
                if (v179)
                {
                  v176 |= (v180 & v17 & ((v68 >> 4) - 1)) << v175++;
                }

                else
                {
                  v174 = 0;
                }

                v180 *= 2;
                --v175;
                v179 = v174 != 0;
                v178 = v173 != 0;
              }

              while (v174 | v173);
              v181 = v176 << 9;
              result = v205;
            }

            v51 = v181 + ((v36 / v64 + v203 / v68 * ((v64 + v183) / v64)) << 14);
            goto LABEL_52;
          }

          if (v195)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v194.i8[0];
            v48 = v194.i8[4];
            v50 = v195.i32[0];
            v49 = v195.i32[1];
            do
            {
              --v49;
              if (v48)
              {
                v45 |= (v46 & v34) << v44++;
              }

              else
              {
                v49 = 0;
              }

              --v50;
              if (v47)
              {
                v45 |= (v46 & v17) << v44++;
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

          v56 = v55 + 15;
          if (v56 < 0x20)
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
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 4) - 1)));
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
          v71 = (v201 + 2 * (v38 - a7));
          v72 = (a2 + v51);
          __src = (a2 + v51);
          if (v208)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v200 < 0x10)))
            {
              v72 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v71, a11, v72, v69, v41, v202);
              goto LABEL_86;
            }

            v73 = v40;
            memcpy(__dst, __src, sizeof(__dst));
            v40 = v73;
            v72 = __dst;
            result = v205;
          }

          else if (!(v42 & 1 | (v41 < 0x10u) | (v200 < 0x10)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v210 = v72;
          v218 = v41;
          v219 = v202;
          v214 = v193;
          v215 = v38 - v36;
          v211 = v69;
          v212 = v71;
          v213 = a11;
          v216 = v192;
          v217 = v40;
          if ((v42 & 1) == 0)
          {
            v74 = *v69;
            a7 = v70;
            if (v74 == 63)
            {
              v77 = v72[1];
              v78 = v72[2];
              v79 = v72[3];
              v80 = vuzp2q_s32(*v72, v78);
              v221 = vuzp1q_s32(*v72, v78);
              v223 = v80;
              v225 = vuzp1q_s32(v77, v79);
              v227 = vuzp2q_s32(v77, v79);
              v75 = 64;
            }

            else if (v74 == 1)
            {
              v76 = vld1q_dup_s16(v72->i16);
              v221 = v76;
              v223 = v76;
              v225 = v76;
              v227 = v76;
              v75 = 2;
            }

            else if (*v69)
            {
              v75 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v221, 32, v72, v74);
            }

            else
            {
              v75 = 0;
              v221 = 0uLL;
              v223 = 0uLL;
              v225 = 0uLL;
              v227 = 0uLL;
            }

            v81 = v72->i64 + v75;
            v82 = v69[1];
            if (v82 == 63)
            {
              v85 = *(v81 + 16);
              v86 = *(v81 + 32);
              v87 = *(v81 + 48);
              v88 = vuzp2q_s32(*v81, v86);
              v229 = vuzp1q_s32(*v81, v86);
              v231 = v88;
              v233 = vuzp1q_s32(v85, v87);
              v235 = vuzp2q_s32(v85, v87);
              v83 = 64;
            }

            else if (v82 == 1)
            {
              v84 = vld1q_dup_s16(v81);
              v229 = v84;
              v231 = v84;
              v233 = v84;
              v235 = v84;
              v83 = 2;
            }

            else if (v69[1])
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 32, v81, v82);
            }

            else
            {
              v83 = 0;
              v229 = 0uLL;
              v231 = 0uLL;
              v233 = 0uLL;
              v235 = 0uLL;
            }

            v89 = v81 + v83;
            v90 = v69[2];
            if (v90 == 63)
            {
              v93 = *(v89 + 16);
              v94 = *(v89 + 32);
              v95 = *(v89 + 48);
              v96 = vuzp2q_s32(*v89, v94);
              v222 = vuzp1q_s32(*v89, v94);
              v224 = v96;
              v226 = vuzp1q_s32(v93, v95);
              v228 = vuzp2q_s32(v93, v95);
              v91 = 64;
            }

            else if (v90 == 1)
            {
              v92 = vld1q_dup_s16(v89);
              v222 = v92;
              v224 = v92;
              v226 = v92;
              v228 = v92;
              v91 = 2;
            }

            else if (v69[2])
            {
              v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v222, 32, v89, v90);
            }

            else
            {
              v91 = 0;
              v222 = 0uLL;
              v224 = 0uLL;
              v226 = 0uLL;
              v228 = 0uLL;
            }

            v97 = v89 + v91;
            v98 = v69[3];
            if (v98 == 63)
            {
              v101 = *(v97 + 16);
              v102 = *(v97 + 32);
              v103 = *(v97 + 48);
              v104 = vuzp2q_s32(*v97, v102);
              v230 = vuzp1q_s32(*v97, v102);
              v232 = v104;
              v234 = vuzp1q_s32(v101, v103);
              v236 = vuzp2q_s32(v101, v103);
              v99 = 64;
            }

            else if (v98 == 1)
            {
              v100 = vld1q_dup_s16(v97);
              v230 = v100;
              v232 = v100;
              v234 = v100;
              v236 = v100;
              v99 = 2;
            }

            else if (v69[3])
            {
              v99 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v230, 32, v97, v98);
            }

            else
            {
              v99 = 0;
              v230 = 0uLL;
              v232 = 0uLL;
              v234 = 0uLL;
              v236 = 0uLL;
            }

            v105 = v97 + v99;
            v106 = v69[4];
            if (v106 == 63)
            {
              v109 = *(v105 + 16);
              v110 = *(v105 + 32);
              v111 = *(v105 + 48);
              v112 = vuzp2q_s32(*v105, v110);
              v237 = vuzp1q_s32(*v105, v110);
              v239 = v112;
              v241 = vuzp1q_s32(v109, v111);
              v243 = vuzp2q_s32(v109, v111);
              v107 = 64;
            }

            else if (v106 == 1)
            {
              v108 = vld1q_dup_s16(v105);
              v237 = v108;
              v239 = v108;
              v241 = v108;
              v243 = v108;
              v107 = 2;
            }

            else if (v69[4])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v237, 32, v105, v106);
            }

            else
            {
              v107 = 0;
              v237 = 0uLL;
              v239 = 0uLL;
              v241 = 0uLL;
              v243 = 0uLL;
            }

            v113 = v105 + v107;
            v114 = v69[5];
            if (v114 == 63)
            {
              v117 = *(v113 + 16);
              v118 = *(v113 + 32);
              v119 = *(v113 + 48);
              v120 = vuzp2q_s32(*v113, v118);
              v245 = vuzp1q_s32(*v113, v118);
              v247 = v120;
              v249 = vuzp1q_s32(v117, v119);
              v251 = vuzp2q_s32(v117, v119);
              v115 = 64;
            }

            else if (v114 == 1)
            {
              v116 = vld1q_dup_s16(v113);
              v245 = v116;
              v247 = v116;
              v249 = v116;
              v251 = v116;
              v115 = 2;
            }

            else if (v69[5])
            {
              v115 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v245, 32, v113, v114);
            }

            else
            {
              v115 = 0;
              v245 = 0uLL;
              v247 = 0uLL;
              v249 = 0uLL;
              v251 = 0uLL;
            }

            v121 = v113 + v115;
            v122 = v69[6];
            if (v122 == 63)
            {
              v125 = *(v121 + 16);
              v126 = *(v121 + 32);
              v127 = *(v121 + 48);
              v128 = vuzp2q_s32(*v121, v126);
              v238 = vuzp1q_s32(*v121, v126);
              v240 = v128;
              v242 = vuzp1q_s32(v125, v127);
              v244 = vuzp2q_s32(v125, v127);
              v123 = 64;
            }

            else if (v122 == 1)
            {
              v124 = vld1q_dup_s16(v121);
              v238 = v124;
              v240 = v124;
              v242 = v124;
              v244 = v124;
              v123 = 2;
            }

            else if (v69[6])
            {
              v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v238, 32, v121, v122);
            }

            else
            {
              v123 = 0;
              v238 = 0uLL;
              v240 = 0uLL;
              v242 = 0uLL;
              v244 = 0uLL;
            }

            v129 = v121 + v123;
            v130 = v69[7];
            if (v130 == 63)
            {
              v133 = *(v129 + 16);
              v134 = *(v129 + 32);
              v135 = *(v129 + 48);
              v136 = vuzp2q_s32(*v129, v134);
              v246 = vuzp1q_s32(*v129, v134);
              v248 = v136;
              v250 = vuzp1q_s32(v133, v135);
              v252 = vuzp2q_s32(v133, v135);
              v131 = v216;
              if (v216)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v130 != 1)
              {
                if (v69[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v246, 32, v129, v130);
                  v131 = v216;
                  if (!v216)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v246 = 0uLL;
                  v248 = 0uLL;
                  v250 = 0uLL;
                  v252 = 0uLL;
                  v131 = v216;
                  if (!v216)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v137 = v217;
                if (!v217)
                {
                  goto LABEL_178;
                }

                v138 = 0;
                v139 = 32 * v214;
                v140 = 2 * v215;
                v141 = &v221 + v139 + v140;
                v142 = v212;
                v143 = v213;
                v144 = 2 * v217;
                if (2 * v217)
                {
                  v145 = (2 * v217 - 1) >> 32 == 0;
                }

                else
                {
                  v145 = 0;
                }

                v146 = !v145;
                v148 = v141 < v212 + 2 * v217 + v213 * (v131 - 1) && v212 < (&__dst[2 * v131 + 30 + 2 * v214] + 2 * v217 + v140);
                v149 = v148 || v213 < 0;
                v150 = v144 & 0x1FFFFFFE0;
                v151 = v144 & 0x1FFFFFFF8;
                v152 = (v217 < 4) | v146 | v149;
                v153 = &v222.i8[v139 + v140];
                v154 = v212 + 1;
                v155 = v141;
                v156 = v212;
                while (2)
                {
                  v157 = v142 + v138 * v143;
                  v158 = &v141[32 * v138];
                  if (v152)
                  {
                    v159 = 0;
LABEL_175:
                    v169 = v159 + 1;
                    do
                    {
                      v170 = *v157++;
                      *v158++ = v170;
                    }

                    while (v144 > v169++);
                  }

                  else
                  {
                    if (v137 >= 0x10)
                    {
                      v161 = v154;
                      v162 = v153;
                      v163 = v144 & 0x1FFFFFFE0;
                      do
                      {
                        v164 = *v161;
                        *(v162 - 1) = v161[-1];
                        *v162 = v164;
                        v162 += 32;
                        v161 += 2;
                        v163 -= 32;
                      }

                      while (v163);
                      if (v144 == v150)
                      {
                        goto LABEL_161;
                      }

                      v160 = v144 & 0x1FFFFFFE0;
                      if ((v137 & 0xC) == 0)
                      {
                        v157 += v150;
                        v158 += v150;
                        v159 = v144 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v160 = 0;
                    }

                    v158 += v151;
                    v165 = v160 - (v144 & 0x1FFFFFFF8);
                    v166 = (v156 + v160);
                    v167 = &v155[v160];
                    do
                    {
                      v168 = *v166++;
                      *v167 = v168;
                      v167 += 8;
                      v165 += 8;
                    }

                    while (v165);
                    if (v144 != v151)
                    {
                      v157 += v151;
                      v159 = v144 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v138;
                  v153 += 32;
                  v154 = (v154 + v143);
                  v156 = (v156 + v143);
                  v155 += 32;
                  if (v138 == v131)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v132 = vld1q_dup_s16(v129);
              v246 = v132;
              v248 = v132;
              v250 = v132;
              v252 = v132;
              v131 = v216;
              if (v216)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v221, 32, v210, v211, v218, v219);
            if (!v208)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v70;
          if (!v208)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v72, 0x200uLL);
LABEL_26:
          v21 = v34++ == v196 >> 4;
          result = v205;
        }

        while (!v21);
        v21 = v17++ == v189;
      }

      while (!v21);
    }
  }

  return result;
}