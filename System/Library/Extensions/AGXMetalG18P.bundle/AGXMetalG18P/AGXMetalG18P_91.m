uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v177 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v151 = a8;
  v134 = a8 + a10 - 1;
  v152 = a1;
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
  v133 = v134 >> 4;
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
      v145 = 0;
LABEL_32:
      v142 = v27 - 4;
      v137 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v131 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v145 = v32 >= v26;
    goto LABEL_32;
  }

  v145 = 0;
  v131 = 0;
  v137 = 0;
  v142 = 0;
LABEL_33:
  if (v18 <= v133)
  {
    v144 = a7 + a9 - 1;
    v130 = a7 >> 4;
    if (a7 >> 4 <= v144 >> 4)
    {
      v154 = v19 >> 4;
      v138 = v19 & 0xF;
      v128 = v20 & 0xF;
      v129 = v20 >> 4;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v136 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v135 = v35;
      v143 = a7;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v151)
        {
          v37 = v151;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v134 < v36)
        {
          v36 = v134;
        }

        v141 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v128;
        v140 = v39;
        v41 = v39 != 16;
        v42 = v128 + 1;
        if (v18 != v129)
        {
          v42 = 16;
          v40 = v41;
        }

        v139 = v40;
        v43 = v130;
        v149 = a3 + (v37 - v151) * a11;
        v150 = v42;
        v148 = v42;
        do
        {
          v44 = 16 * v43;
          v45 = 16 * (v43 + 1) - 1;
          if (16 * v43 <= a7)
          {
            v46 = a7;
          }

          else
          {
            v46 = 16 * v43;
          }

          if (v144 < v45)
          {
            v45 = v144;
          }

          v47 = v45 - v46;
          v48 = v47 + 1;
          if (v43 == v154)
          {
            v49 = v138 + 1;
          }

          else
          {
            v49 = 16;
          }

          v50 = 1;
          if (16 * v18 >= v151 && v44 >= a7)
          {
            v51 = v47 != v138;
            if (v43 != v154)
            {
              v51 = v48 != 16;
            }

            v50 = v51 || v139;
          }

          if (v145)
          {
            if (v142 | v137)
            {
              v52 = 0;
              v53 = 0;
              v54 = v137 != 0;
              v55 = 1;
              v57 = v142 != 0;
              v56 = v137;
              v58 = v142;
              do
              {
                --v58;
                if (v57)
                {
                  v53 |= (v43 & ~(-1 << v142) & v55) << v52++;
                }

                else
                {
                  v58 = 0;
                }

                --v56;
                if (v54)
                {
                  v53 |= (v18 & ~(-1 << v137) & v55) << v52++;
                }

                else
                {
                  v56 = 0;
                }

                v55 *= 2;
                --v52;
                v54 = v56 != 0;
                v57 = v58 != 0;
              }

              while (v56 | v58);
              v59 = v53 << 10;
            }

            else
            {
              v59 = 0;
            }

            v67 = v59 + *(result + 336) * ((v43 >> v142) + (v18 >> v137) * v131);
          }

          else if (v136)
          {
            v60 = 0;
            v61 = 0;
            v62 = 1;
            v63 = v135.i8[0];
            v64 = v135.i8[4];
            v66 = v136.i32[0];
            v65 = v136.i32[1];
            do
            {
              --v65;
              if (v64)
              {
                v61 |= (v62 & v43) << v60++;
              }

              else
              {
                v65 = 0;
              }

              --v66;
              if (v63)
              {
                v61 |= (v62 & v18) << v60++;
              }

              else
              {
                v66 = 0;
              }

              v62 *= 2;
              --v60;
              v63 = v66 != 0;
              v64 = v65 != 0;
            }

            while (v66 | v65);
            v67 = v61 << 10;
          }

          else
          {
            v67 = 0;
          }

          v68 = *(result + 128) >> (*(result + 144) + a12);
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

          v71 = *(result + 132) >> (*(result + 144) + a12);
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

          if (v73 | v70)
          {
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
          }

          else
          {
            v79 = 0;
          }

          v80 = (a4 + v79);
          v81 = v149 + 4 * (v46 - a7);
          v155 = (a2 + v67);
          if (v156)
          {
            if (!(v50 & 1 | (v49 < 0x10u) | (v148 < 0x10)))
            {
              v83 = __dst;
LABEL_110:
              __src = v83;
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v81, a11, v83, v80, v49, v150);
LABEL_111:
              a7 = v143;
              v84 = v43 + 1;
              goto LABEL_145;
            }

            v82 = v49;
            memcpy(__dst, (a2 + v67), sizeof(__dst));
            LOBYTE(v49) = v82;
            v83 = __dst;
            result = v152;
          }

          else
          {
            v83 = (a2 + v67);
            if (!(v50 & 1 | (v49 < 0x10u) | (v148 < 0x10)))
            {
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v158 = v83;
          v166 = v49;
          v167 = v150;
          v162 = v141;
          v163 = v46 - v44;
          v159 = v80;
          v160 = v81;
          v161 = a11;
          v164 = v140;
          v165 = v48;
          __src = v83;
          if (v50)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_111;
          }

          v85 = (v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 64, v83, *v80));
          v86 = (v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 64, v85, v80[1]));
          v87 = (v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 64, v86, v80[2]));
          v88 = (v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 64, v87, v80[3]));
          v89 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 64, v88, v80[4]));
          v90 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 64, v89, v80[5]));
          v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 64, v90, v80[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 64, (v90 + v91), v80[7]);
          v92 = v164;
          a7 = v143;
          v84 = v43 + 1;
          if (v164)
          {
            v93 = v165;
            if (v165)
            {
              v94 = 0;
              v95 = v162 << 6;
              v96 = 4 * v163;
              v97 = &v169[0].i8[v95 + v96];
              v98 = v160;
              v99 = v161;
              v100 = 4 * v165;
              if (4 * v165)
              {
                v101 = (4 * v165 - 1) >> 32 == 0;
              }

              else
              {
                v101 = 0;
              }

              v102 = !v101;
              v104 = v97 < v160 + v161 * (v164 - 1) + 4 * v165 && v160 < &__dst[64 * v164 + 960 + 64 * v162 + 4 * v165 + v96];
              v105 = v104 || v161 < 0;
              v106 = v100 & 0x1FFFFFFE0;
              v107 = v100 & 0x1FFFFFFF8;
              v108 = (v165 == 1) | v102 | v105;
              v109 = &v169[1].i8[v95 + v96];
              v110 = (v160 + 16);
              v111 = v97;
              v112 = v160;
              do
              {
                v113 = (v98 + v94 * v99);
                v114 = &v97[64 * v94];
                if (v108)
                {
                  v115 = 0;
                  goto LABEL_141;
                }

                if (v93 >= 8)
                {
                  v117 = v110;
                  v118 = v109;
                  v119 = v100 & 0x1FFFFFFE0;
                  do
                  {
                    v120 = *v117;
                    *(v118 - 1) = *(v117 - 1);
                    *v118 = v120;
                    v118 += 32;
                    v117 += 2;
                    v119 -= 32;
                  }

                  while (v119);
                  if (v100 == v106)
                  {
                    goto LABEL_127;
                  }

                  v116 = v100 & 0x1FFFFFFE0;
                  if ((v93 & 6) == 0)
                  {
                    v113 += v106;
                    v114 += v106;
                    v115 = v100 & 0xFFFFFFE0;
                    goto LABEL_141;
                  }
                }

                else
                {
                  v116 = 0;
                }

                v114 += v107;
                v121 = -8 * ((v93 >> 1) & 0x3FFFFFFF) + v116;
                v122 = (v112 + v116);
                v123 = &v111[v116];
                do
                {
                  v124 = *v122++;
                  *v123 = v124;
                  v123 += 8;
                  v121 += 8;
                }

                while (v121);
                if (v100 == v107)
                {
                  goto LABEL_127;
                }

                v113 += v107;
                v115 = v100 & 0xFFFFFFF8;
LABEL_141:
                v125 = v115 + 1;
                do
                {
                  v126 = *v113++;
                  *v114++ = v126;
                }

                while (v100 > v125++);
LABEL_127:
                ++v94;
                v109 += 64;
                v110 = (v110 + v99);
                v112 += v99;
                v111 += 64;
              }

              while (v94 != v92);
            }
          }

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v169, 64, v158, v159, v166, v167);
LABEL_145:
          if (v156)
          {
            memcpy(v155, __src, 0x400uLL);
          }

          v21 = v43 == v144 >> 4;
          v43 = v84;
          result = v152;
        }

        while (!v21);
        v21 = v18++ == v133;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v232 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v208 = a8;
  v189 = a8 + a10 - 1;
  v209 = a1;
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
  v188 = v189 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v211 = v24;
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
      v203 = 0;
LABEL_32:
      v199 = v27 - 4;
      v193 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v186 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v203 = v32 >= v26;
    goto LABEL_32;
  }

  v203 = 0;
  v186 = 0;
  v193 = 0;
  v199 = 0;
LABEL_33:
  if (v18 <= v188)
  {
    v202 = a7 + a9 - 1;
    v185 = a7 >> 4;
    if (a7 >> 4 <= v202 >> 4)
    {
      v34 = a11;
      v210 = v19 >> 4;
      v195 = v19 & 0xF;
      v183 = v20 & 0xF;
      v184 = v20 >> 4;
      v182 = ~(-1 << v193);
      v35 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v36 = vcgt_u32(v35, 0x1F0000001FLL);
      v192 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v35, 4uLL))))))), v36);
      v191 = v36;
      v37 = 4 * a11;
      v38 = 2 * a11;
      v201 = a7;
      do
      {
        v39 = (16 * v18) | 0xF;
        if (16 * v18 <= v208)
        {
          v40 = v208;
        }

        else
        {
          v40 = 16 * v18;
        }

        if (v189 < v39)
        {
          v39 = v189;
        }

        v198 = v40 - 16 * v18;
        v41 = v39 - v40;
        v42 = v41 + 1;
        v43 = v41 != v183;
        v197 = v42;
        v44 = v185;
        if (v18 == v184)
        {
          v45 = v183 + 1;
        }

        else
        {
          v45 = 16;
        }

        if (v18 != v184)
        {
          v43 = v42 != 16;
        }

        v196 = v43;
        v46 = v18 & v182;
        v207 = a3 + (v40 - v208) * v34;
        v206 = v45;
        v190 = v45;
        do
        {
          v47 = 16 * v44;
          v48 = 16 * (v44 + 1) - 1;
          if (16 * v44 <= a7)
          {
            v49 = a7;
          }

          else
          {
            v49 = 16 * v44;
          }

          if (v202 < v48)
          {
            v48 = v202;
          }

          v50 = v48 - v49;
          v51 = v50 + 1;
          if (v44 == v210)
          {
            v52 = v195 + 1;
          }

          else
          {
            v52 = 16;
          }

          v53 = 1;
          if (16 * v18 >= v208 && v47 >= a7)
          {
            v54 = v50 != v195;
            if (v44 != v210)
            {
              v54 = v51 != 16;
            }

            v53 = v54 || v196;
          }

          if (v203)
          {
            if (v199 | v193)
            {
              v55 = 0;
              v56 = 0;
              v57 = v193 != 0;
              v58 = 1;
              v60 = v199 != 0;
              v59 = v193;
              v61 = v199;
              do
              {
                --v61;
                if (v60)
                {
                  v56 |= (v44 & ~(-1 << v199) & v58) << v55++;
                }

                else
                {
                  v61 = 0;
                }

                --v59;
                if (v57)
                {
                  v56 |= (v46 & v58) << v55++;
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
              v62 = v56 << 10;
            }

            else
            {
              v62 = 0;
            }

            v70 = v62 + *(result + 336) * ((v44 >> v199) + (v18 >> v193) * v186);
          }

          else if (v192)
          {
            v63 = 0;
            v64 = 0;
            v65 = 1;
            v66 = v191.i8[0];
            v67 = v191.i8[4];
            v69 = v192.i32[0];
            v68 = v192.i32[1];
            do
            {
              --v68;
              if (v67)
              {
                v64 |= (v65 & v44) << v63++;
              }

              else
              {
                v68 = 0;
              }

              --v69;
              if (v66)
              {
                v64 |= (v65 & v18) << v63++;
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
            v70 = v64 << 10;
          }

          else
          {
            v70 = 0;
          }

          v71 = *(result + 128) >> (*(result + 144) + a12);
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

          v74 = *(result + 132) >> (*(result + 144) + a12);
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
              v78 |= (v81 & v44) << v77++;
            }

            else
            {
              v73 = 0;
            }

            --v76;
            if (v80)
            {
              v78 |= (v81 & v18) << v77++;
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
          v83 = (a4 + v82);
          v84 = v207 + 4 * (v49 - a7);
          v85 = (a2 + v70);
          if (v211)
          {
            if (v53 & 1 | (v52 < 0x10u) | (v206 < 0x10))
            {
              v86 = (a2 + v70);
              v87 = v51;
              v88 = v53;
              memcpy(v223, v85, sizeof(v223));
              v47 = 16 * v44;
              v53 = v88;
              v34 = a11;
              v51 = v87;
              v46 = v18 & v182;
              v45 = v190;
              v89 = v223;
              v85 = v86;
              result = v209;
LABEL_112:
              __dst = v85;
              block[0] = MEMORY[0x29EDCA5F8];
              block[1] = 3221225472;
              block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
              block[3] = &__block_descriptor_90_e5_v8__0l;
              block[4] = result;
              v213 = v89;
              v221 = v52;
              v222 = v45;
              v217 = v198;
              v218 = v49 - v47;
              v214 = v83;
              v215 = v84;
              v216 = v34;
              v219 = v197;
              v220 = v51;
              if (v53)
              {
                v90 = v89;
                dispatch_sync(*(*(result + 8) + 16552), block);
                v89 = v90;
                result = v209;
                a7 = v201;
                v38 = 2 * a11;
                v37 = 4 * a11;
                v91 = v44 + 1;
                goto LABEL_114;
              }

              v194 = v89;
              v115 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v224, 64, v89, *v83));
              v116 = (v115 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v226, 64, v115, v83[1]));
              v117 = (v116 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v225, 64, v116, v83[2]));
              v118 = (v117 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v227, 64, v117, v83[3]));
              v119 = (v118 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v228, 64, v118, v83[4]));
              v120 = (v119 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v230, 64, v119, v83[5]));
              v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v229, 64, v120, v83[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v231, 64, (v120 + v121), v83[7]);
              v122 = v219;
              if (!v219 || (v123 = v220) == 0)
              {
LABEL_159:
                v159 = v213;
                v160 = v214;
                v161 = v221;
                v162 = &byte_29D2F2FD5;
                v163 = 16;
                v164 = v222;
                a7 = v201;
                result = v209;
                v38 = 2 * a11;
                v37 = 4 * a11;
                v91 = v44 + 1;
                v89 = v194;
                do
                {
                  v179 = *v162;
                  v180 = *(v162 - 1);
                  if (v161 <= 8 * v180 || 4 * v179 >= v164)
                  {
                    v178 = 0;
                  }

                  else
                  {
                    v165 = &v224[16 * v179 + 2 * v180];
                    v166 = v165[1];
                    v167 = v165[4];
                    v168 = v165[5];
                    v169 = vzip1q_s64(*v165, v167);
                    v170 = vzip2q_s64(*v165, v167);
                    v171 = vzip1q_s64(v166, v168);
                    v172 = vzip2q_s64(v166, v168);
                    v173 = v165[8];
                    v174 = v165[9];
                    v165 += 12;
                    v175 = v165[1];
                    v176 = vzip1q_s64(v173, *v165);
                    v177 = vzip2q_s64(v173, *v165);
                    *v159 = v169;
                    v159[1] = v170;
                    v159[2] = v176;
                    v159[3] = v177;
                    v159[4] = v171;
                    v159[5] = v172;
                    v159[6] = vzip1q_s64(v174, v175);
                    v159[7] = vzip2q_s64(v174, v175);
                    v159 += 8;
                    v178 = 127;
                  }

                  *v160++ = v178;
                  v162 += 2;
                  v163 -= 2;
                }

                while (v163);
LABEL_114:
                v85 = __dst;
                if (v211)
                {
                  goto LABEL_49;
                }

                goto LABEL_50;
              }

              v124 = 0;
              v125 = v217 << 6;
              v126 = 4 * v218;
              v127 = &v224[0].i8[v125 + v126];
              v128 = v215;
              v129 = v216;
              v130 = 4 * v220;
              if (4 * v220)
              {
                v131 = (4 * v220 - 1) >> 32 == 0;
              }

              else
              {
                v131 = 0;
              }

              v132 = !v131;
              v134 = v127 < v215 + v216 * (v219 - 1) + 4 * v220 && v215 < &v223[64 * v219 + 960 + 64 * v217 + 4 * v220 + v126];
              v135 = v134 || v216 < 0;
              v136 = v130 & 0x1FFFFFFE0;
              v137 = v130 & 0x1FFFFFFF8;
              v138 = (v220 == 1) | v132 | v135;
              v139 = &v224[1].i8[v125 + v126];
              v140 = (v215 + 16);
              v141 = -8 * ((v220 >> 1) & 0x3FFFFFFF);
              v142 = v127;
              v143 = v215;
              while (2)
              {
                v144 = (v128 + v124 * v129);
                v145 = &v127[64 * v124];
                if (v138)
                {
                  v146 = 0;
LABEL_156:
                  v156 = v146 + 1;
                  do
                  {
                    v157 = *v144++;
                    *v145++ = v157;
                  }

                  while (v130 > v156++);
                }

                else
                {
                  if (v123 >= 8)
                  {
                    v148 = v140;
                    v149 = v139;
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
                    if (v130 == v136)
                    {
                      goto LABEL_142;
                    }

                    v147 = v130 & 0x1FFFFFFE0;
                    if ((v123 & 6) == 0)
                    {
                      v144 += v136;
                      v145 += v136;
                      v146 = v130 & 0xFFFFFFE0;
                      goto LABEL_156;
                    }
                  }

                  else
                  {
                    v147 = 0;
                  }

                  v145 += v137;
                  v152 = v141 + v147;
                  v153 = (v143 + v147);
                  v154 = &v142[v147];
                  do
                  {
                    v155 = *v153++;
                    *v154 = v155;
                    v154 += 8;
                    v152 += 8;
                  }

                  while (v152);
                  if (v130 != v137)
                  {
                    v144 += v137;
                    v146 = v130 & 0xFFFFFFF8;
                    goto LABEL_156;
                  }
                }

LABEL_142:
                ++v124;
                v139 += 64;
                v140 = (v140 + v129);
                v143 += v129;
                v142 += 64;
                if (v124 == v122)
                {
                  goto LABEL_159;
                }

                continue;
              }
            }

            v89 = v223;
          }

          else
          {
            v89 = (a2 + v70);
            if (v53 & 1 | (v52 < 0x10u) | (v206 < 0x10))
            {
              goto LABEL_112;
            }
          }

          v92 = &byte_29D2F2FD5;
          v93 = 16;
          v94 = v89;
          do
          {
            v112 = *v92;
            v113 = *(v92 - 1);
            if (v52 <= 8 * v113 || 4 * v112 >= v45)
            {
              v111 = 0;
            }

            else
            {
              v95 = (v84 + v37 * v112 + 32 * v113);
              v96 = (v95 + v34);
              v98 = *v95;
              v99 = v95[1];
              v97 = (v95 + v38);
              v100 = v96[1];
              v101 = vzip1q_s64(v98, *v96);
              v102 = vzip2q_s64(v98, *v96);
              v103 = vzip1q_s64(v99, v100);
              v104 = vzip2q_s64(v99, v100);
              v106 = *v97;
              v107 = v97[1];
              v105 = (v97 + v34);
              v108 = v105[1];
              v109 = vzip1q_s64(v106, *v105);
              v110 = vzip2q_s64(v106, *v105);
              *v94 = v101;
              v94[1] = v102;
              v94[2] = v109;
              v94[3] = v110;
              v94[4] = v103;
              v94[5] = v104;
              v94[6] = vzip1q_s64(v107, v108);
              v94[7] = vzip2q_s64(v107, v108);
              v94 += 8;
              v111 = 127;
            }

            *v83++ = v111;
            v92 += 2;
            v93 -= 2;
          }

          while (v93);
          a7 = v201;
          v91 = v44 + 1;
          if (v211)
          {
LABEL_49:
            memcpy(v85, v89, 0x400uLL);
            v38 = 2 * a11;
            v37 = 4 * a11;
            result = v209;
          }

LABEL_50:
          v21 = v44 == v202 >> 4;
          v44 = v91;
        }

        while (!v21);
        v21 = v18++ == v188;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v176 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v152 = a8;
  v17 = a8 >> 4;
  v134 = a8 + a10 - 1;
  v136 = v134 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v153 = a1;
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
  v155 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v145 = result;
  if (v17 <= v136)
  {
    v144 = a7 + a9 - 1;
    v133 = a7 >> 4;
    if (a7 >> 4 <= v144 >> 4)
    {
      result = a1;
      v154 = (a5 - 1) >> 4;
      v130 = a5 - 1;
      v137 = (a5 - 1) & 0xF;
      v131 = (a6 - 1) & 0xF;
      v132 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v142 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v141 = v27;
      v129 = 8 * v19 * v18;
      v143 = a7;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v152)
        {
          v29 = v152;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v134 < v28)
        {
          v28 = v134;
        }

        v151 = 16 * v17;
        v140 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v131;
        v139 = v31;
        v33 = v31 != 16;
        v34 = v133;
        v35 = v131 + 1;
        if (v17 != v132)
        {
          v35 = 16;
          v32 = v33;
        }

        v138 = v32;
        v149 = a3 + (v29 - v152) * a11;
        v150 = v35;
        v148 = v35;
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

          if (v144 < v37)
          {
            v37 = v144;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v154)
          {
            v41 = v137 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v151 >= v152 && v36 >= a7)
          {
            v43 = v39 != v137;
            if (v34 != v154)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v138;
          }

          if (v145)
          {
            v64 = 0;
            v65 = v129 >> (*(result + 57) != 0);
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

            v119 = (v64 >> 4) - 1;
            if (v66)
            {
              v120 = 0;
              if (v67)
              {
                goto LABEL_150;
              }

LABEL_139:
              v121 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v121 | v120)
              {
                goto LABEL_140;
              }

LABEL_151:
              v128 = 0;
            }

            else
            {
              v120 = 32 - __clz(~(-1 << -__clz(v119)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_139;
              }

LABEL_150:
              v121 = 0;
              if (!v120)
              {
                goto LABEL_151;
              }

LABEL_140:
              v122 = 0;
              v123 = 0;
              v124 = v34 & v119;
              v125 = v120 != 0;
              v126 = v121 != 0;
              v127 = 1;
              do
              {
                --v120;
                if (v125)
                {
                  v123 |= (v127 & v124) << v122++;
                }

                else
                {
                  v120 = 0;
                }

                --v121;
                if (v126)
                {
                  v123 |= (v127 & v17 & ((v68 >> 4) - 1)) << v122++;
                }

                else
                {
                  v121 = 0;
                }

                v127 *= 2;
                --v122;
                v126 = v121 != 0;
                v125 = v120 != 0;
              }

              while (v121 | v120);
              v128 = v123 << 10;
              result = v153;
            }

            v51 = v128 + ((v36 / v64 + v151 / v68 * ((v64 + v130) / v64)) << 14);
            goto LABEL_52;
          }

          if (v142)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v141.i8[0];
            v48 = v141.i8[4];
            v50 = v142.i32[0];
            v49 = v142.i32[1];
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
          v70 = v149 + 4 * (v38 - a7);
          v71 = (a2 + v51);
          if (v155)
          {
            if (!(v42 & 1 | (v41 < 0x10u) | (v148 < 0x10)))
            {
              v75 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v70, a11, v75, v69, v41, v150);
              goto LABEL_86;
            }

            v72 = v41;
            v73 = (a2 + v51);
            v74 = v40;
            memcpy(__dst, (a2 + v51), sizeof(__dst));
            v36 = 16 * v34;
            v75 = __dst;
            v40 = v74;
            v71 = v73;
            LOBYTE(v41) = v72;
            result = v153;
          }

          else
          {
            v75 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 0x10u) | (v148 < 0x10)))
            {
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v157 = v75;
          v165 = v41;
          v166 = v150;
          v161 = v140;
          v162 = v38 - v36;
          v158 = v69;
          v159 = v70;
          v160 = a11;
          v163 = v139;
          v164 = v40;
          if ((v42 & 1) == 0)
          {
            v76 = (v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 64, v75, *v69));
            v77 = (v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 64, v76, v69[1]));
            v78 = (v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 64, v77, v69[2]));
            v79 = (v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 64, v78, v69[3]));
            v80 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 64, v79, v69[4]));
            v81 = (v80 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 64, v80, v69[5]));
            v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 64, v81, v69[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 64, (v81 + v82), v69[7]);
            v83 = v163;
            a7 = v143;
            if (!v163 || (v84 = v164) == 0)
            {
LABEL_120:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v168, 64, v157, v158, v165, v166);
              if (!v155)
              {
                goto LABEL_26;
              }

              goto LABEL_121;
            }

            v85 = 0;
            v86 = v161 << 6;
            v87 = 4 * v162;
            v88 = &v168[0].i8[v86 + v87];
            v89 = v159;
            v90 = v160;
            v91 = 4 * v164;
            if (4 * v164)
            {
              v92 = (4 * v164 - 1) >> 32 == 0;
            }

            else
            {
              v92 = 0;
            }

            v93 = !v92;
            v95 = v88 < v159 + v160 * (v163 - 1) + 4 * v164 && v159 < &__dst[64 * v163 + 960 + 64 * v161 + 4 * v164 + v87];
            v96 = v95 || v160 < 0;
            v97 = v91 & 0x1FFFFFFE0;
            v98 = v91 & 0x1FFFFFFF8;
            v99 = (v164 == 1) | v93 | v96;
            v100 = &v168[1].i8[v86 + v87];
            v101 = (v159 + 16);
            v102 = v88;
            v103 = v159;
            while (2)
            {
              v104 = (v89 + v85 * v90);
              v105 = &v88[64 * v85];
              if (v99)
              {
                v106 = 0;
LABEL_117:
                v116 = v106 + 1;
                do
                {
                  v117 = *v104++;
                  *v105++ = v117;
                }

                while (v91 > v116++);
              }

              else
              {
                if (v84 >= 8)
                {
                  v108 = v101;
                  v109 = v100;
                  v110 = v91 & 0x1FFFFFFE0;
                  do
                  {
                    v111 = *v108;
                    *(v109 - 1) = *(v108 - 1);
                    *v109 = v111;
                    v109 += 32;
                    v108 += 2;
                    v110 -= 32;
                  }

                  while (v110);
                  if (v91 == v97)
                  {
                    goto LABEL_103;
                  }

                  v107 = v91 & 0x1FFFFFFE0;
                  if ((v84 & 6) == 0)
                  {
                    v104 += v97;
                    v105 += v97;
                    v106 = v91 & 0xFFFFFFE0;
                    goto LABEL_117;
                  }
                }

                else
                {
                  v107 = 0;
                }

                v105 += v98;
                v112 = -8 * ((v84 >> 1) & 0x3FFFFFFF) + v107;
                v113 = (v103 + v107);
                v114 = &v102[v107];
                do
                {
                  v115 = *v113++;
                  *v114 = v115;
                  v114 += 8;
                  v112 += 8;
                }

                while (v112);
                if (v91 != v98)
                {
                  v104 += v98;
                  v106 = v91 & 0xFFFFFFF8;
                  goto LABEL_117;
                }
              }

LABEL_103:
              ++v85;
              v100 += 64;
              v101 = (v101 + v90);
              v103 += v90;
              v102 += 64;
              if (v85 == v83)
              {
                goto LABEL_120;
              }

              continue;
            }
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v143;
          if (!v155)
          {
            goto LABEL_26;
          }

LABEL_121:
          memcpy(v71, v75, 0x400uLL);
LABEL_26:
          v21 = v34++ == v144 >> 4;
          result = v153;
        }

        while (!v21);
        v21 = v17++ == v136;
      }

      while (!v21);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v225 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v201 = a8;
  v16 = a8 >> 4;
  v182 = a8 + a10 - 1;
  v184 = v182 >> 4;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v202 = a1;
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
  v204 = v23;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v25 = a1;
  v194 = isLevelTiled;
  v26 = a7;
  if (v16 <= v184)
  {
    v193 = a7 + a9 - 1;
    if (a7 >> 4 <= v193 >> 4)
    {
      v27 = a11;
      v203 = (a5 - 1) >> 4;
      v179 = a5 - 1;
      v187 = (a5 - 1) & 0xF;
      v180 = (a6 - 1) & 0xF;
      v181 = (a6 - 1) >> 4;
      v28 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v29 = vcgt_u32(v28, 0x1F0000001FLL);
      v192 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v28, 4uLL))))))), v29);
      v191 = v29;
      v178 = 8 * v18 * v17;
      v30 = 2 * a11;
      do
      {
        v31 = (16 * v16) | 0xF;
        if (16 * v16 <= v201)
        {
          v32 = v201;
        }

        else
        {
          v32 = 16 * v16;
        }

        if (v182 < v31)
        {
          v31 = v182;
        }

        v200 = 16 * v16;
        v190 = v32 - 16 * v16;
        v33 = v31 - v32;
        v34 = v33 + 1;
        v35 = v33 != v180;
        v189 = v34;
        v36 = a7 >> 4;
        if (v16 == v181)
        {
          v37 = v180 + 1;
        }

        else
        {
          v37 = 16;
        }

        if (v16 != v181)
        {
          v35 = v34 != 16;
        }

        v188 = v35;
        v199 = a3 + (v32 - v201) * v27;
        v198 = v37;
        v185 = v37;
        do
        {
          v38 = 16 * v36;
          v39 = 16 * (v36 + 1) - 1;
          if (16 * v36 <= v26)
          {
            v40 = v26;
          }

          else
          {
            v40 = 16 * v36;
          }

          if (v193 < v39)
          {
            v39 = a7 + a9 - 1;
          }

          v41 = v39 - v40;
          v42 = v41 + 1;
          if (v36 == v203)
          {
            v43 = v187 + 1;
          }

          else
          {
            v43 = 16;
          }

          v44 = 1;
          if (v200 >= v201 && v38 >= v26)
          {
            v45 = v41 != v187;
            if (v36 != v203)
            {
              v45 = v42 != 16;
            }

            v44 = v45 || v188;
          }

          if (v194)
          {
            v66 = 0;
            v67 = v178 >> (*(v25 + 57) != 0);
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
              v70 = 16;
              v69 = 1;
              v66 = 32;
            }

            else if (v67 == 512)
            {
              v66 = 16;
              v69 = 1;
              v70 = 16;
            }

            else
            {
              v69 = 1;
              v70 = 0;
              if (v67 == 1024)
              {
                v70 = 8;
                v66 = 16;
              }
            }

            v168 = (v66 >> 4) - 1;
            if (v68)
            {
              v169 = 0;
              if (v69)
              {
                goto LABEL_168;
              }

LABEL_157:
              v170 = 32 - __clz(~(-1 << -__clz(((v70 + 15) >> 4) - 1)));
              if (v170 | v169)
              {
                goto LABEL_158;
              }

LABEL_169:
              v177 = 0;
            }

            else
            {
              v169 = 32 - __clz(~(-1 << -__clz(v168)));
              if ((v69 & 1) == 0)
              {
                goto LABEL_157;
              }

LABEL_168:
              v170 = 0;
              if (!v169)
              {
                goto LABEL_169;
              }

LABEL_158:
              v171 = 0;
              v172 = 0;
              v173 = v36 & v168;
              v174 = v169 != 0;
              v175 = v170 != 0;
              v176 = 1;
              do
              {
                --v169;
                if (v174)
                {
                  v172 |= (v176 & v173) << v171++;
                }

                else
                {
                  v169 = 0;
                }

                --v170;
                if (v175)
                {
                  v172 |= (v176 & v16 & ((v70 >> 4) - 1)) << v171++;
                }

                else
                {
                  v170 = 0;
                }

                v176 *= 2;
                --v171;
                v175 = v170 != 0;
                v174 = v169 != 0;
              }

              while (v170 | v169);
              v177 = v172 << 10;
            }

            v53 = v177 + ((v38 / v66 + v200 / v70 * ((v66 + v179) / v66)) << 14);
            goto LABEL_55;
          }

          if (v192)
          {
            v46 = 0;
            v47 = 0;
            v48 = 1;
            v49 = v191.i8[0];
            v50 = v191.i8[4];
            v52 = v192.i32[0];
            v51 = v192.i32[1];
            do
            {
              --v51;
              if (v50)
              {
                v47 |= (v48 & v36) << v46++;
              }

              else
              {
                v51 = 0;
              }

              --v52;
              if (v49)
              {
                v47 |= (v48 & v16) << v46++;
              }

              else
              {
                v52 = 0;
              }

              v48 *= 2;
              --v46;
              v49 = v52 != 0;
              v50 = v51 != 0;
            }

            while (v52 | v51);
            v53 = v47 << 10;
          }

          else
          {
            v53 = 0;
          }

LABEL_55:
          v54 = *(v25 + 128) >> (*(v25 + 144) + a12);
          if (v54 <= 1)
          {
            v54 = 1;
          }

          v55 = v54 + 15;
          if (v55 < 0x20)
          {
            v56 = 0;
          }

          else
          {
            v56 = 32 - __clz(~(-1 << -__clz((v55 >> 4) - 1)));
          }

          v57 = *(v25 + 132) >> (*(v25 + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 15;
          if (v58 < 0x20)
          {
            v59 = 0;
            if (!v56)
            {
LABEL_80:
              v65 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 4) - 1)));
            if (!(v59 | v56))
            {
              goto LABEL_80;
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
              v61 |= (v64 & v16) << v60++;
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
LABEL_81:
          v71 = (a4 + v65);
          v72 = v199 + 4 * (v40 - v26);
          v73 = (a2 + v53);
          if (v204)
          {
            if (!(v44 & 1 | (v43 < 0x10u) | (v198 < 0x10)))
            {
              v77 = __dst;
LABEL_90:
              v79 = &byte_29D2F2FD5;
              v80 = 16;
              v81 = v77;
              do
              {
                v99 = *v79;
                v100 = *(v79 - 1);
                if (v43 <= 8 * v100 || 4 * v99 >= v37)
                {
                  v98 = 0;
                }

                else
                {
                  v82 = (v72 + 4 * a11 * v99 + 32 * v100);
                  v83 = (v82 + v27);
                  v85 = *v82;
                  v86 = v82[1];
                  v84 = (v82 + v30);
                  v87 = v83[1];
                  v88 = vzip1q_s64(v85, *v83);
                  v89 = vzip2q_s64(v85, *v83);
                  v90 = vzip1q_s64(v86, v87);
                  v91 = vzip2q_s64(v86, v87);
                  v93 = *v84;
                  v94 = v84[1];
                  v92 = (v84 + v27);
                  v95 = v92[1];
                  v96 = vzip1q_s64(v93, *v92);
                  v97 = vzip2q_s64(v93, *v92);
                  *v81 = v88;
                  v81[1] = v89;
                  v81[2] = v96;
                  v81[3] = v97;
                  v81[4] = v90;
                  v81[5] = v91;
                  v81[6] = vzip1q_s64(v94, v95);
                  v81[7] = vzip2q_s64(v94, v95);
                  v81 += 8;
                  v98 = 127;
                }

                *v71++ = v98;
                v79 += 2;
                v80 -= 2;
              }

              while (v80);
              goto LABEL_87;
            }

            v74 = v42;
            v75 = v44;
            v76 = v40;
            memcpy(__dst, v73, sizeof(__dst));
            v77 = __dst;
            v40 = v76;
            v44 = v75;
            v37 = v185;
            v42 = v74;
            v27 = a11;
            v30 = 2 * a11;
            v25 = v202;
          }

          else
          {
            v77 = (a2 + v53);
            if (!(v44 & 1 | (v43 < 0x10u) | (v198 < 0x10)))
            {
              goto LABEL_90;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v25;
          v206 = v77;
          v214 = v43;
          v215 = v37;
          v210 = v190;
          v211 = v40 - v38;
          v207 = v71;
          v208 = v72;
          v209 = v27;
          v212 = v189;
          v213 = v42;
          if (v44)
          {
            v78 = v77;
            dispatch_sync(*(*(v25 + 8) + 16552), block);
            v77 = v78;
            v25 = v202;
            v26 = a7;
LABEL_87:
            if (!v204)
            {
              goto LABEL_29;
            }

LABEL_139:
            memcpy(v73, v77, 0x400uLL);
            v25 = v202;
            v26 = a7;
            goto LABEL_29;
          }

          v186 = v77;
          v102 = (v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v217, 64, v77, *v71));
          v103 = (v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v219, 64, v102, v71[1]));
          v104 = (v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v218, 64, v103, v71[2]));
          v105 = (v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v220, 64, v104, v71[3]));
          v106 = (v105 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v221, 64, v105, v71[4]));
          v107 = (v106 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v223, 64, v106, v71[5]));
          v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v222, 64, v107, v71[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v224, 64, (v107 + v108), v71[7]);
          v109 = v212;
          if (v212)
          {
            v110 = v213;
            if (v213)
            {
              v111 = 0;
              v112 = v210 << 6;
              v113 = 4 * v211;
              v114 = &v217[0].i8[v112 + v113];
              v115 = v208;
              v116 = v209;
              v117 = 4 * v213;
              if (4 * v213)
              {
                v118 = (4 * v213 - 1) >> 32 == 0;
              }

              else
              {
                v118 = 0;
              }

              v119 = !v118;
              v121 = v114 < v208 + v209 * (v212 - 1) + 4 * v213 && v208 < &__dst[64 * v212 + 960 + 64 * v210 + 4 * v213 + v113];
              v122 = v121 || v209 < 0;
              v123 = v117 & 0x1FFFFFFE0;
              v124 = v117 & 0x1FFFFFFF8;
              v125 = (v213 == 1) | v119 | v122;
              v126 = &v217[1].i8[v112 + v113];
              v127 = (v208 + 16);
              v128 = v114;
              v129 = v208;
              do
              {
                v130 = (v115 + v111 * v116);
                v131 = &v114[64 * v111];
                if (v125)
                {
                  v132 = 0;
                  goto LABEL_127;
                }

                if (v110 >= 8)
                {
                  v134 = v127;
                  v135 = v126;
                  v136 = v117 & 0x1FFFFFFE0;
                  do
                  {
                    v137 = *v134;
                    *(v135 - 1) = *(v134 - 1);
                    *v135 = v137;
                    v135 += 32;
                    v134 += 2;
                    v136 -= 32;
                  }

                  while (v136);
                  if (v117 == v123)
                  {
                    goto LABEL_113;
                  }

                  v133 = v117 & 0x1FFFFFFE0;
                  if ((v110 & 6) == 0)
                  {
                    v130 += v123;
                    v131 += v123;
                    v132 = v117 & 0xFFFFFFE0;
                    goto LABEL_127;
                  }
                }

                else
                {
                  v133 = 0;
                }

                v131 += v124;
                v138 = -8 * ((v110 >> 1) & 0x3FFFFFFF) + v133;
                v139 = (v129 + v133);
                v140 = &v128[v133];
                do
                {
                  v141 = *v139++;
                  *v140 = v141;
                  v140 += 8;
                  v138 += 8;
                }

                while (v138);
                if (v117 == v124)
                {
                  goto LABEL_113;
                }

                v130 += v124;
                v132 = v117 & 0xFFFFFFF8;
LABEL_127:
                v142 = v132 + 1;
                do
                {
                  v143 = *v130++;
                  *v131++ = v143;
                }

                while (v117 > v142++);
LABEL_113:
                ++v111;
                v126 += 64;
                v127 = (v127 + v116);
                v129 += v116;
                v128 += 64;
              }

              while (v111 != v109);
            }
          }

          v145 = v206;
          v146 = v207;
          v147 = v214;
          v148 = &byte_29D2F2FD5;
          v149 = 16;
          v150 = v215;
          v26 = a7;
          v25 = v202;
          do
          {
            v165 = *v148;
            v166 = *(v148 - 1);
            if (v147 <= 8 * v166 || 4 * v165 >= v150)
            {
              v164 = 0;
            }

            else
            {
              v151 = &v217[16 * v165 + 2 * v166];
              v152 = v151[1];
              v153 = v151[4];
              v154 = v151[5];
              v155 = vzip1q_s64(*v151, v153);
              v156 = vzip2q_s64(*v151, v153);
              v157 = vzip1q_s64(v152, v154);
              v158 = vzip2q_s64(v152, v154);
              v159 = v151[8];
              v160 = v151[9];
              v151 += 12;
              v161 = v151[1];
              v162 = vzip1q_s64(v159, *v151);
              v163 = vzip2q_s64(v159, *v151);
              *v145 = v155;
              v145[1] = v156;
              v145[2] = v162;
              v145[3] = v163;
              v145[4] = v157;
              v145[5] = v158;
              v145[6] = vzip1q_s64(v160, v161);
              v145[7] = vzip2q_s64(v160, v161);
              v145 += 8;
              v164 = 127;
            }

            *v146++ = v164;
            v148 += 2;
            v149 -= 2;
          }

          while (v149);
          v77 = v186;
          if (v204)
          {
            goto LABEL_139;
          }

LABEL_29:
          v20 = v36++ == v193 >> 4;
        }

        while (!v20);
        v20 = v16++ == v184;
      }

      while (!v20);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v333 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v252 = a8;
  v232 = a8 + a10 - 1;
  v253 = a1;
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
  v231 = v232 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v256 = v24;
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
      v244 = 0;
LABEL_32:
      v241 = v27 - 4;
      v235 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v229 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v244 = v32 >= v26;
    goto LABEL_32;
  }

  v244 = 0;
  v229 = 0;
  v235 = 0;
  v241 = 0;
LABEL_33:
  if (v18 <= v231)
  {
    v243 = a7 + a9 - 1;
    v228 = a7 >> 4;
    if (a7 >> 4 <= v243 >> 4)
    {
      v254 = v19 >> 4;
      v236 = v19 & 0xF;
      v226 = v20 & 0xF;
      v227 = v20 >> 4;
      v225 = ~(-1 << v235);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v234 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v233 = v35;
      v242 = a7;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v252)
        {
          v37 = v252;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v232 < v36)
        {
          v36 = v232;
        }

        v251 = 16 * v18;
        v240 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v226;
        v239 = v39;
        v41 = v39 != 16;
        v42 = v226 + 1;
        if (v18 != v227)
        {
          v42 = 16;
          v40 = v41;
        }

        v238 = v40;
        v43 = v228;
        v237 = (v18 >> v235) * v229;
        v44 = v18 & v225;
        v249 = a3 + (v37 - v252) * a11;
        v250 = v42;
        v248 = v42;
        v247 = v18 & v225;
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

          if (v243 < v46)
          {
            v46 = v243;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v254)
          {
            v50 = v236 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (v251 >= v252 && v45 >= a7)
          {
            v52 = v48 != v236;
            if (v43 != v254)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v238;
          }

          if (v244)
          {
            if (v241 | v235)
            {
              v53 = 0;
              v54 = 0;
              v55 = 1;
              v56 = v241 != 0;
              v57 = v235 != 0;
              v58 = v241;
              v59 = v235;
              do
              {
                --v58;
                if (v56)
                {
                  v54 |= (v43 & ~(-1 << v241) & v55) << v53++;
                }

                else
                {
                  v58 = 0;
                }

                --v59;
                if (v57)
                {
                  v54 |= (v44 & v55) << v53++;
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

            v68 = v60 + *(result + 336) * ((v43 >> v241) + v237);
          }

          else if (v234)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v233.i8[4];
            v65 = v233.i8[0];
            v66 = v234.i32[1];
            v67 = v234.i32[0];
            do
            {
              --v66;
              if (v64)
              {
                v62 |= (v63 & v43) << v61++;
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
          v82 = v249 + 4 * (v47 - a7);
          v255 = (a2 + v68);
          if (v256)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v248 < 0x10)))
            {
              goto LABEL_109;
            }

            v84 = (a4 + v80);
            v85 = v50;
            v86 = v18;
            v87 = v47;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v47 = v87;
            v18 = v86;
            LOBYTE(v50) = v85;
            v81 = v84;
            result = v253;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v248 < 0x10)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v250);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v258 = v83;
          v266 = v50;
          v267 = v250;
          v262 = v240;
          v263 = v47 - v45;
          v259 = v81;
          v260 = v82;
          v261 = a11;
          v264 = v239;
          v265 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v242;
            v88 = v43 + 1;
            v44 = v247;
            goto LABEL_202;
          }

          v89 = *v81;
          a7 = v242;
          if (v89 == 127)
          {
            v92 = *v83;
            v93 = v83[1];
            v94 = v83[2];
            v95 = v83[3];
            v96 = v83[4];
            v97 = v83[5];
            v98 = v83[6];
            v99 = v83[7];
            v269 = vzip1q_s64(*v83, v93);
            v270 = vzip1q_s64(v96, v97);
            v273 = vzip2q_s64(v92, v93);
            v274 = vzip2q_s64(v96, v97);
            v277 = vzip1q_s64(v94, v95);
            v278 = vzip1q_s64(v98, v99);
            v281 = vzip2q_s64(v94, v95);
            v282 = vzip2q_s64(v98, v99);
            v90 = 128;
            v88 = v43 + 1;
            v44 = v247;
          }

          else
          {
            v88 = v43 + 1;
            v44 = v247;
            if (v89 == 3)
            {
              v91 = vld1q_dup_f32(v83->i32);
              v269 = v91;
              v270 = v91;
              v273 = v91;
              v274 = v91;
              v277 = v91;
              v278 = v91;
              v281 = v91;
              v282 = v91;
              v90 = 4;
            }

            else if (*v81)
            {
              v100 = v81;
              v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v269, 64, v83, v89);
              v81 = v100;
            }

            else
            {
              v90 = 0;
              v270 = 0u;
              v269 = 0u;
              v273 = 0u;
              v274 = 0u;
              v277 = 0u;
              v278 = 0u;
              v281 = 0u;
              v282 = 0u;
            }
          }

          v101 = v83->i64 + v90;
          v102 = v81[1];
          if (v102 == 127)
          {
            v105 = *v101;
            v106 = *(v101 + 16);
            v107 = *(v101 + 32);
            v108 = *(v101 + 48);
            v109 = *(v101 + 64);
            v110 = *(v101 + 80);
            v111 = *(v101 + 96);
            v112 = *(v101 + 112);
            v285 = vzip1q_s64(*v101, v106);
            v286 = vzip1q_s64(v109, v110);
            v289 = vzip2q_s64(v105, v106);
            v290 = vzip2q_s64(v109, v110);
            v293 = vzip1q_s64(v107, v108);
            v294 = vzip1q_s64(v111, v112);
            v297 = vzip2q_s64(v107, v108);
            v298 = vzip2q_s64(v111, v112);
            v103 = 128;
          }

          else if (v102 == 3)
          {
            v104 = vld1q_dup_f32(v101);
            v285 = v104;
            v286 = v104;
            v289 = v104;
            v290 = v104;
            v293 = v104;
            v294 = v104;
            v297 = v104;
            v298 = v104;
            v103 = 4;
          }

          else if (v81[1])
          {
            v113 = v81;
            v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v285, 64, v101, v102);
            v81 = v113;
          }

          else
          {
            v103 = 0;
            v285 = 0u;
            v286 = 0u;
            v289 = 0u;
            v290 = 0u;
            v293 = 0u;
            v294 = 0u;
            v297 = 0u;
            v298 = 0u;
          }

          v114 = v101 + v103;
          v115 = v81[2];
          if (v115 == 127)
          {
            v118 = *v114;
            v119 = *(v114 + 16);
            v120 = *(v114 + 32);
            v121 = *(v114 + 48);
            v122 = *(v114 + 64);
            v123 = *(v114 + 80);
            v124 = *(v114 + 96);
            v125 = *(v114 + 112);
            v271 = vzip1q_s64(*v114, v119);
            v272 = vzip1q_s64(v122, v123);
            v275 = vzip2q_s64(v118, v119);
            v276 = vzip2q_s64(v122, v123);
            v279 = vzip1q_s64(v120, v121);
            v280 = vzip1q_s64(v124, v125);
            v283 = vzip2q_s64(v120, v121);
            v284 = vzip2q_s64(v124, v125);
            v116 = 128;
          }

          else if (v115 == 3)
          {
            v117 = vld1q_dup_f32(v114);
            v271 = v117;
            v272 = v117;
            v275 = v117;
            v276 = v117;
            v279 = v117;
            v280 = v117;
            v283 = v117;
            v284 = v117;
            v116 = 4;
          }

          else if (v81[2])
          {
            v126 = v81;
            v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v271, 64, v114, v115);
            v81 = v126;
          }

          else
          {
            v116 = 0;
            v271 = 0u;
            v272 = 0u;
            v275 = 0u;
            v276 = 0u;
            v279 = 0u;
            v280 = 0u;
            v283 = 0u;
            v284 = 0u;
          }

          v127 = v114 + v116;
          v128 = v81[3];
          if (v128 == 127)
          {
            v131 = *v127;
            v132 = *(v127 + 16);
            v133 = *(v127 + 32);
            v134 = *(v127 + 48);
            v135 = *(v127 + 64);
            v136 = *(v127 + 80);
            v137 = *(v127 + 96);
            v138 = *(v127 + 112);
            v287 = vzip1q_s64(*v127, v132);
            v288 = vzip1q_s64(v135, v136);
            v291 = vzip2q_s64(v131, v132);
            v292 = vzip2q_s64(v135, v136);
            v295 = vzip1q_s64(v133, v134);
            v296 = vzip1q_s64(v137, v138);
            v299 = vzip2q_s64(v133, v134);
            v300 = vzip2q_s64(v137, v138);
            v129 = 128;
          }

          else if (v128 == 3)
          {
            v130 = vld1q_dup_f32(v127);
            v287 = v130;
            v288 = v130;
            v291 = v130;
            v292 = v130;
            v295 = v130;
            v296 = v130;
            v299 = v130;
            v300 = v130;
            v129 = 4;
          }

          else if (v81[3])
          {
            v139 = v81;
            v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v287, 64, v127, v128);
            v81 = v139;
          }

          else
          {
            v129 = 0;
            v287 = 0u;
            v288 = 0u;
            v291 = 0u;
            v292 = 0u;
            v295 = 0u;
            v296 = 0u;
            v299 = 0u;
            v300 = 0u;
          }

          v140 = v127 + v129;
          v141 = v81[4];
          if (v141 == 127)
          {
            v144 = *v140;
            v145 = *(v140 + 16);
            v146 = *(v140 + 32);
            v147 = *(v140 + 48);
            v148 = *(v140 + 64);
            v149 = *(v140 + 80);
            v150 = *(v140 + 96);
            v151 = *(v140 + 112);
            v301 = vzip1q_s64(*v140, v145);
            v302 = vzip1q_s64(v148, v149);
            v305 = vzip2q_s64(v144, v145);
            v306 = vzip2q_s64(v148, v149);
            v309 = vzip1q_s64(v146, v147);
            v310 = vzip1q_s64(v150, v151);
            v313 = vzip2q_s64(v146, v147);
            v314 = vzip2q_s64(v150, v151);
            v142 = 128;
          }

          else if (v141 == 3)
          {
            v143 = vld1q_dup_f32(v140);
            v301 = v143;
            v302 = v143;
            v305 = v143;
            v306 = v143;
            v309 = v143;
            v310 = v143;
            v313 = v143;
            v314 = v143;
            v142 = 4;
          }

          else if (v81[4])
          {
            v152 = v81;
            v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v301, 64, v140, v141);
            v81 = v152;
          }

          else
          {
            v142 = 0;
            v301 = 0u;
            v302 = 0u;
            v305 = 0u;
            v306 = 0u;
            v309 = 0u;
            v310 = 0u;
            v313 = 0u;
            v314 = 0u;
          }

          v153 = v140 + v142;
          v154 = v81[5];
          if (v154 == 127)
          {
            v157 = *v153;
            v158 = *(v153 + 16);
            v159 = *(v153 + 32);
            v160 = *(v153 + 48);
            v161 = *(v153 + 64);
            v162 = *(v153 + 80);
            v163 = *(v153 + 96);
            v164 = *(v153 + 112);
            v317 = vzip1q_s64(*v153, v158);
            v318 = vzip1q_s64(v161, v162);
            v321 = vzip2q_s64(v157, v158);
            v322 = vzip2q_s64(v161, v162);
            v325 = vzip1q_s64(v159, v160);
            v326 = vzip1q_s64(v163, v164);
            v329 = vzip2q_s64(v159, v160);
            v330 = vzip2q_s64(v163, v164);
            v155 = 128;
          }

          else if (v154 == 3)
          {
            v156 = vld1q_dup_f32(v153);
            v317 = v156;
            v318 = v156;
            v321 = v156;
            v322 = v156;
            v325 = v156;
            v326 = v156;
            v329 = v156;
            v330 = v156;
            v155 = 4;
          }

          else if (v81[5])
          {
            v165 = v81;
            v155 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v317, 64, v153, v154);
            v81 = v165;
          }

          else
          {
            v155 = 0;
            v317 = 0u;
            v318 = 0u;
            v321 = 0u;
            v322 = 0u;
            v325 = 0u;
            v326 = 0u;
            v329 = 0u;
            v330 = 0u;
          }

          v166 = v153 + v155;
          v167 = v81[6];
          if (v167 == 127)
          {
            v170 = *v166;
            v171 = *(v166 + 16);
            v172 = *(v166 + 32);
            v173 = *(v166 + 48);
            v174 = *(v166 + 64);
            v175 = *(v166 + 80);
            v176 = *(v166 + 96);
            v177 = *(v166 + 112);
            v303 = vzip1q_s64(*v166, v171);
            v304 = vzip1q_s64(v174, v175);
            v307 = vzip2q_s64(v170, v171);
            v308 = vzip2q_s64(v174, v175);
            v311 = vzip1q_s64(v172, v173);
            v312 = vzip1q_s64(v176, v177);
            v315 = vzip2q_s64(v172, v173);
            v316 = vzip2q_s64(v176, v177);
            v168 = 128;
          }

          else if (v167 == 3)
          {
            v169 = vld1q_dup_f32(v166);
            v303 = v169;
            v304 = v169;
            v307 = v169;
            v308 = v169;
            v311 = v169;
            v312 = v169;
            v315 = v169;
            v316 = v169;
            v168 = 4;
          }

          else if (v81[6])
          {
            v178 = v81;
            v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v303, 64, v166, v167);
            v81 = v178;
          }

          else
          {
            v168 = 0;
            v303 = 0u;
            v304 = 0u;
            v307 = 0u;
            v308 = 0u;
            v311 = 0u;
            v312 = 0u;
            v315 = 0u;
            v316 = 0u;
          }

          v179 = v166 + v168;
          v180 = v81[7];
          if (v180 == 127)
          {
            v183 = *v179;
            v184 = *(v179 + 16);
            v185 = *(v179 + 32);
            v186 = *(v179 + 48);
            v187 = *(v179 + 64);
            v188 = *(v179 + 80);
            v189 = *(v179 + 96);
            v190 = *(v179 + 112);
            v319 = vzip1q_s64(*v179, v184);
            v320 = vzip1q_s64(v187, v188);
            v323 = vzip2q_s64(v183, v184);
            v324 = vzip2q_s64(v187, v188);
            v327 = vzip1q_s64(v185, v186);
            v328 = vzip1q_s64(v189, v190);
            v331 = vzip2q_s64(v185, v186);
            v332 = vzip2q_s64(v189, v190);
            v181 = v264;
            if (!v264)
            {
              goto LABEL_201;
            }
          }

          else if (v180 == 3)
          {
            v182 = vld1q_dup_f32(v179);
            v319 = v182;
            v320 = v182;
            v323 = v182;
            v324 = v182;
            v327 = v182;
            v328 = v182;
            v331 = v182;
            v332 = v182;
            v181 = v264;
            if (!v264)
            {
              goto LABEL_201;
            }
          }

          else if (v81[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v319, 64, v179, v180);
            v181 = v264;
            if (!v264)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v319 = 0u;
            v320 = 0u;
            v323 = 0u;
            v324 = 0u;
            v327 = 0u;
            v328 = 0u;
            v331 = 0u;
            v332 = 0u;
            v181 = v264;
            if (!v264)
            {
              goto LABEL_201;
            }
          }

          v191 = v265;
          if (v265)
          {
            v192 = 0;
            v193 = 4 * v263;
            v194 = &v269.i8[64 * v262 + v193];
            v195 = v260;
            v196 = v261;
            v197 = 4 * v265;
            if (4 * v265)
            {
              v198 = (4 * v265 - 1) >> 32 == 0;
            }

            else
            {
              v198 = 0;
            }

            v199 = !v198;
            v201 = v194 < v260 + v261 * (v181 - 1) + 4 * v265 && v260 < &__dst[64 * v181 + 960 + 64 * v262 + 4 * v265 + v193];
            v202 = v201 || v261 < 0;
            v203 = v197 & 0x1FFFFFFE0;
            v204 = v197 & 0x1FFFFFFF8;
            v205 = (v265 == 1) | v199 | v202;
            v206 = &v270.i8[64 * v262 + v193];
            v207 = (v260 + 16);
            v208 = v194;
            v209 = v260;
            do
            {
              v210 = (v195 + v192 * v196);
              v211 = &v194[64 * v192];
              if (v205)
              {
                v212 = 0;
                goto LABEL_198;
              }

              if (v191 >= 8)
              {
                v214 = v207;
                v215 = v206;
                v216 = v197 & 0x1FFFFFFE0;
                do
                {
                  v217 = *v214;
                  *(v215 - 1) = *(v214 - 1);
                  *v215 = v217;
                  v215 += 32;
                  v214 += 2;
                  v216 -= 32;
                }

                while (v216);
                if (v197 == v203)
                {
                  goto LABEL_184;
                }

                v213 = v197 & 0x1FFFFFFE0;
                if ((v191 & 6) == 0)
                {
                  v210 += v203;
                  v211 += v203;
                  v212 = v197 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v213 = 0;
              }

              v211 += v204;
              v218 = -8 * ((v191 >> 1) & 0x3FFFFFFF) + v213;
              v219 = (v209 + v213);
              v220 = &v208[v213];
              do
              {
                v221 = *v219++;
                *v220 = v221;
                v220 += 8;
                v218 += 8;
              }

              while (v218);
              if (v197 == v204)
              {
                goto LABEL_184;
              }

              v210 += v204;
              v212 = v197 & 0xFFFFFFF8;
LABEL_198:
              v222 = v212 + 1;
              do
              {
                v223 = *v210++;
                *v211++ = v223;
              }

              while (v197 > v222++);
LABEL_184:
              ++v192;
              v206 += 64;
              v207 = (v207 + v196);
              v209 += v196;
              v208 += 64;
            }

            while (v192 != v181);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v269, 64, v258, v259, v266, v267);
LABEL_202:
          if (v256)
          {
            memcpy(v255, v83, 0x400uLL);
          }

          v21 = v43 == v243 >> 4;
          v43 = v88;
          result = v253;
        }

        while (!v21);
        v21 = v18 == v231;
        v18 = (v18 + 1);
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v333 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v252 = a8;
  v232 = a8 + a10 - 1;
  v253 = a1;
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
  v231 = v232 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v256 = v24;
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
      v244 = 0;
LABEL_32:
      v241 = v27 - 4;
      v235 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v229 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v244 = v32 >= v26;
    goto LABEL_32;
  }

  v244 = 0;
  v229 = 0;
  v235 = 0;
  v241 = 0;
LABEL_33:
  if (v18 <= v231)
  {
    v243 = a7 + a9 - 1;
    v228 = a7 >> 4;
    if (a7 >> 4 <= v243 >> 4)
    {
      v254 = v19 >> 4;
      v236 = v19 & 0xF;
      v226 = v20 & 0xF;
      v227 = v20 >> 4;
      v225 = ~(-1 << v235);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v35 = vcgt_u32(v34, 0x1F0000001FLL);
      v234 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), v35);
      v233 = v35;
      v242 = a7;
      do
      {
        v36 = (16 * v18) | 0xF;
        if (16 * v18 <= v252)
        {
          v37 = v252;
        }

        else
        {
          v37 = 16 * v18;
        }

        if (v232 < v36)
        {
          v36 = v232;
        }

        v251 = 16 * v18;
        v240 = v37 - 16 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v226;
        v239 = v39;
        v41 = v39 != 16;
        v42 = v226 + 1;
        if (v18 != v227)
        {
          v42 = 16;
          v40 = v41;
        }

        v238 = v40;
        v43 = v228;
        v237 = (v18 >> v235) * v229;
        v44 = v18 & v225;
        v249 = a3 + (v37 - v252) * a11;
        v250 = v42;
        v248 = v42;
        v247 = v18 & v225;
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

          if (v243 < v46)
          {
            v46 = v243;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v254)
          {
            v50 = v236 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (v251 >= v252 && v45 >= a7)
          {
            v52 = v48 != v236;
            if (v43 != v254)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v238;
          }

          if (v244)
          {
            if (v241 | v235)
            {
              v53 = 0;
              v54 = 0;
              v55 = 1;
              v56 = v241 != 0;
              v57 = v235 != 0;
              v58 = v241;
              v59 = v235;
              do
              {
                --v58;
                if (v56)
                {
                  v54 |= (v43 & ~(-1 << v241) & v55) << v53++;
                }

                else
                {
                  v58 = 0;
                }

                --v59;
                if (v57)
                {
                  v54 |= (v44 & v55) << v53++;
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

            v68 = v60 + *(result + 336) * ((v43 >> v241) + v237);
          }

          else if (v234)
          {
            v61 = 0;
            v62 = 0;
            v63 = 1;
            v64 = v233.i8[4];
            v65 = v233.i8[0];
            v66 = v234.i32[1];
            v67 = v234.i32[0];
            do
            {
              --v66;
              if (v64)
              {
                v62 |= (v63 & v43) << v61++;
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
          v82 = (v249 + 4 * (v47 - a7));
          v255 = (a2 + v68);
          if (v256)
          {
            v83 = __dst;
            if (!(v51 & 1 | (v50 < 0x10u) | (v248 < 0x10)))
            {
              goto LABEL_109;
            }

            v84 = (a4 + v80);
            v85 = v50;
            v86 = v18;
            v87 = v47;
            memcpy(__dst, (a2 + v68), sizeof(__dst));
            v47 = v87;
            v18 = v86;
            LOBYTE(v50) = v85;
            v81 = v84;
            result = v253;
          }

          else
          {
            v83 = (a2 + v68);
            if (!(v51 & 1 | (v50 < 0x10u) | (v248 < 0x10)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v82, a11, v83, v81, v50, v250);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v258 = v83;
          v266 = v50;
          v267 = v250;
          v262 = v240;
          v263 = v47 - v45;
          v259 = v81;
          v260 = v82;
          v261 = a11;
          v264 = v239;
          v265 = v49;
          if (v51)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v242;
            v88 = v43 + 1;
            v44 = v247;
            goto LABEL_202;
          }

          v89 = *v81;
          a7 = v242;
          if (v89 == 127)
          {
            v92 = *v83;
            v93 = v83[1];
            v94 = v83[2];
            v95 = v83[3];
            v96 = v83[4];
            v97 = v83[5];
            v98 = v83[6];
            v99 = v83[7];
            v269 = vzip1q_s64(*v83, v93);
            v270 = vzip1q_s64(v96, v97);
            v273 = vzip2q_s64(v92, v93);
            v274 = vzip2q_s64(v96, v97);
            v277 = vzip1q_s64(v94, v95);
            v278 = vzip1q_s64(v98, v99);
            v281 = vzip2q_s64(v94, v95);
            v282 = vzip2q_s64(v98, v99);
            v90 = 128;
            v88 = v43 + 1;
            v44 = v247;
          }

          else
          {
            v88 = v43 + 1;
            v44 = v247;
            if (v89 == 3)
            {
              v91 = vld1q_dup_f32(v83->i32);
              v269 = v91;
              v270 = v91;
              v273 = v91;
              v274 = v91;
              v277 = v91;
              v278 = v91;
              v281 = v91;
              v282 = v91;
              v90 = 4;
            }

            else if (*v81)
            {
              v100 = v81;
              v90 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v269, 64, v83, v89);
              v81 = v100;
            }

            else
            {
              v90 = 0;
              v270 = 0u;
              v269 = 0u;
              v273 = 0u;
              v274 = 0u;
              v277 = 0u;
              v278 = 0u;
              v281 = 0u;
              v282 = 0u;
            }
          }

          v101 = v83->i64 + v90;
          v102 = v81[1];
          if (v102 == 127)
          {
            v105 = *v101;
            v106 = *(v101 + 16);
            v107 = *(v101 + 32);
            v108 = *(v101 + 48);
            v109 = *(v101 + 64);
            v110 = *(v101 + 80);
            v111 = *(v101 + 96);
            v112 = *(v101 + 112);
            v285 = vzip1q_s64(*v101, v106);
            v286 = vzip1q_s64(v109, v110);
            v289 = vzip2q_s64(v105, v106);
            v290 = vzip2q_s64(v109, v110);
            v293 = vzip1q_s64(v107, v108);
            v294 = vzip1q_s64(v111, v112);
            v297 = vzip2q_s64(v107, v108);
            v298 = vzip2q_s64(v111, v112);
            v103 = 128;
          }

          else if (v102 == 3)
          {
            v104 = vld1q_dup_f32(v101);
            v285 = v104;
            v286 = v104;
            v289 = v104;
            v290 = v104;
            v293 = v104;
            v294 = v104;
            v297 = v104;
            v298 = v104;
            v103 = 4;
          }

          else if (v81[1])
          {
            v113 = v81;
            v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v285, 64, v101, v102);
            v81 = v113;
          }

          else
          {
            v103 = 0;
            v285 = 0u;
            v286 = 0u;
            v289 = 0u;
            v290 = 0u;
            v293 = 0u;
            v294 = 0u;
            v297 = 0u;
            v298 = 0u;
          }

          v114 = v101 + v103;
          v115 = v81[2];
          if (v115 == 127)
          {
            v118 = *v114;
            v119 = *(v114 + 16);
            v120 = *(v114 + 32);
            v121 = *(v114 + 48);
            v122 = *(v114 + 64);
            v123 = *(v114 + 80);
            v124 = *(v114 + 96);
            v125 = *(v114 + 112);
            v271 = vzip1q_s64(*v114, v119);
            v272 = vzip1q_s64(v122, v123);
            v275 = vzip2q_s64(v118, v119);
            v276 = vzip2q_s64(v122, v123);
            v279 = vzip1q_s64(v120, v121);
            v280 = vzip1q_s64(v124, v125);
            v283 = vzip2q_s64(v120, v121);
            v284 = vzip2q_s64(v124, v125);
            v116 = 128;
          }

          else if (v115 == 3)
          {
            v117 = vld1q_dup_f32(v114);
            v271 = v117;
            v272 = v117;
            v275 = v117;
            v276 = v117;
            v279 = v117;
            v280 = v117;
            v283 = v117;
            v284 = v117;
            v116 = 4;
          }

          else if (v81[2])
          {
            v126 = v81;
            v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v271, 64, v114, v115);
            v81 = v126;
          }

          else
          {
            v116 = 0;
            v271 = 0u;
            v272 = 0u;
            v275 = 0u;
            v276 = 0u;
            v279 = 0u;
            v280 = 0u;
            v283 = 0u;
            v284 = 0u;
          }

          v127 = v114 + v116;
          v128 = v81[3];
          if (v128 == 127)
          {
            v131 = *v127;
            v132 = *(v127 + 16);
            v133 = *(v127 + 32);
            v134 = *(v127 + 48);
            v135 = *(v127 + 64);
            v136 = *(v127 + 80);
            v137 = *(v127 + 96);
            v138 = *(v127 + 112);
            v287 = vzip1q_s64(*v127, v132);
            v288 = vzip1q_s64(v135, v136);
            v291 = vzip2q_s64(v131, v132);
            v292 = vzip2q_s64(v135, v136);
            v295 = vzip1q_s64(v133, v134);
            v296 = vzip1q_s64(v137, v138);
            v299 = vzip2q_s64(v133, v134);
            v300 = vzip2q_s64(v137, v138);
            v129 = 128;
          }

          else if (v128 == 3)
          {
            v130 = vld1q_dup_f32(v127);
            v287 = v130;
            v288 = v130;
            v291 = v130;
            v292 = v130;
            v295 = v130;
            v296 = v130;
            v299 = v130;
            v300 = v130;
            v129 = 4;
          }

          else if (v81[3])
          {
            v139 = v81;
            v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v287, 64, v127, v128);
            v81 = v139;
          }

          else
          {
            v129 = 0;
            v287 = 0u;
            v288 = 0u;
            v291 = 0u;
            v292 = 0u;
            v295 = 0u;
            v296 = 0u;
            v299 = 0u;
            v300 = 0u;
          }

          v140 = v127 + v129;
          v141 = v81[4];
          if (v141 == 127)
          {
            v144 = *v140;
            v145 = *(v140 + 16);
            v146 = *(v140 + 32);
            v147 = *(v140 + 48);
            v148 = *(v140 + 64);
            v149 = *(v140 + 80);
            v150 = *(v140 + 96);
            v151 = *(v140 + 112);
            v301 = vzip1q_s64(*v140, v145);
            v302 = vzip1q_s64(v148, v149);
            v305 = vzip2q_s64(v144, v145);
            v306 = vzip2q_s64(v148, v149);
            v309 = vzip1q_s64(v146, v147);
            v310 = vzip1q_s64(v150, v151);
            v313 = vzip2q_s64(v146, v147);
            v314 = vzip2q_s64(v150, v151);
            v142 = 128;
          }

          else if (v141 == 3)
          {
            v143 = vld1q_dup_f32(v140);
            v301 = v143;
            v302 = v143;
            v305 = v143;
            v306 = v143;
            v309 = v143;
            v310 = v143;
            v313 = v143;
            v314 = v143;
            v142 = 4;
          }

          else if (v81[4])
          {
            v152 = v81;
            v142 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v301, 64, v140, v141);
            v81 = v152;
          }

          else
          {
            v142 = 0;
            v301 = 0u;
            v302 = 0u;
            v305 = 0u;
            v306 = 0u;
            v309 = 0u;
            v310 = 0u;
            v313 = 0u;
            v314 = 0u;
          }

          v153 = v140 + v142;
          v154 = v81[5];
          if (v154 == 127)
          {
            v157 = *v153;
            v158 = *(v153 + 16);
            v159 = *(v153 + 32);
            v160 = *(v153 + 48);
            v161 = *(v153 + 64);
            v162 = *(v153 + 80);
            v163 = *(v153 + 96);
            v164 = *(v153 + 112);
            v317 = vzip1q_s64(*v153, v158);
            v318 = vzip1q_s64(v161, v162);
            v321 = vzip2q_s64(v157, v158);
            v322 = vzip2q_s64(v161, v162);
            v325 = vzip1q_s64(v159, v160);
            v326 = vzip1q_s64(v163, v164);
            v329 = vzip2q_s64(v159, v160);
            v330 = vzip2q_s64(v163, v164);
            v155 = 128;
          }

          else if (v154 == 3)
          {
            v156 = vld1q_dup_f32(v153);
            v317 = v156;
            v318 = v156;
            v321 = v156;
            v322 = v156;
            v325 = v156;
            v326 = v156;
            v329 = v156;
            v330 = v156;
            v155 = 4;
          }

          else if (v81[5])
          {
            v165 = v81;
            v155 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v317, 64, v153, v154);
            v81 = v165;
          }

          else
          {
            v155 = 0;
            v317 = 0u;
            v318 = 0u;
            v321 = 0u;
            v322 = 0u;
            v325 = 0u;
            v326 = 0u;
            v329 = 0u;
            v330 = 0u;
          }

          v166 = v153 + v155;
          v167 = v81[6];
          if (v167 == 127)
          {
            v170 = *v166;
            v171 = *(v166 + 16);
            v172 = *(v166 + 32);
            v173 = *(v166 + 48);
            v174 = *(v166 + 64);
            v175 = *(v166 + 80);
            v176 = *(v166 + 96);
            v177 = *(v166 + 112);
            v303 = vzip1q_s64(*v166, v171);
            v304 = vzip1q_s64(v174, v175);
            v307 = vzip2q_s64(v170, v171);
            v308 = vzip2q_s64(v174, v175);
            v311 = vzip1q_s64(v172, v173);
            v312 = vzip1q_s64(v176, v177);
            v315 = vzip2q_s64(v172, v173);
            v316 = vzip2q_s64(v176, v177);
            v168 = 128;
          }

          else if (v167 == 3)
          {
            v169 = vld1q_dup_f32(v166);
            v303 = v169;
            v304 = v169;
            v307 = v169;
            v308 = v169;
            v311 = v169;
            v312 = v169;
            v315 = v169;
            v316 = v169;
            v168 = 4;
          }

          else if (v81[6])
          {
            v178 = v81;
            v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v303, 64, v166, v167);
            v81 = v178;
          }

          else
          {
            v168 = 0;
            v303 = 0u;
            v304 = 0u;
            v307 = 0u;
            v308 = 0u;
            v311 = 0u;
            v312 = 0u;
            v315 = 0u;
            v316 = 0u;
          }

          v179 = v166 + v168;
          v180 = v81[7];
          if (v180 == 127)
          {
            v183 = *v179;
            v184 = *(v179 + 16);
            v185 = *(v179 + 32);
            v186 = *(v179 + 48);
            v187 = *(v179 + 64);
            v188 = *(v179 + 80);
            v189 = *(v179 + 96);
            v190 = *(v179 + 112);
            v319 = vzip1q_s64(*v179, v184);
            v320 = vzip1q_s64(v187, v188);
            v323 = vzip2q_s64(v183, v184);
            v324 = vzip2q_s64(v187, v188);
            v327 = vzip1q_s64(v185, v186);
            v328 = vzip1q_s64(v189, v190);
            v331 = vzip2q_s64(v185, v186);
            v332 = vzip2q_s64(v189, v190);
            v181 = v264;
            if (!v264)
            {
              goto LABEL_201;
            }
          }

          else if (v180 == 3)
          {
            v182 = vld1q_dup_f32(v179);
            v319 = v182;
            v320 = v182;
            v323 = v182;
            v324 = v182;
            v327 = v182;
            v328 = v182;
            v331 = v182;
            v332 = v182;
            v181 = v264;
            if (!v264)
            {
              goto LABEL_201;
            }
          }

          else if (v81[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v319, 64, v179, v180);
            v181 = v264;
            if (!v264)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v319 = 0u;
            v320 = 0u;
            v323 = 0u;
            v324 = 0u;
            v327 = 0u;
            v328 = 0u;
            v331 = 0u;
            v332 = 0u;
            v181 = v264;
            if (!v264)
            {
              goto LABEL_201;
            }
          }

          v191 = v265;
          if (v265)
          {
            v192 = 0;
            v193 = 4 * v263;
            v194 = &v269.i8[64 * v262 + v193];
            v195 = v260;
            v196 = v261;
            v197 = 4 * v265;
            if (4 * v265)
            {
              v198 = (4 * v265 - 1) >> 32 == 0;
            }

            else
            {
              v198 = 0;
            }

            v199 = !v198;
            v201 = v194 < &v260->i8[4 * v265 + v261 * (v181 - 1)] && v260 < &__dst[64 * v181 + 960 + 64 * v262 + 4 * v265 + v193];
            v202 = v201 || v261 < 0;
            v203 = v197 & 0x1FFFFFFE0;
            v204 = v197 & 0x1FFFFFFF8;
            v205 = (v265 == 1) | v199 | v202;
            v206 = &v270.i8[64 * v262 + v193];
            v207 = v260 + 1;
            v208 = v194;
            v209 = v260;
            do
            {
              v210 = &v195->i8[v192 * v196];
              v211 = &v194[64 * v192];
              if (v205)
              {
                v212 = 0;
                goto LABEL_198;
              }

              if (v191 >= 8)
              {
                v214 = v207;
                v215 = v206;
                v216 = v197 & 0x1FFFFFFE0;
                do
                {
                  v217 = *v214;
                  *(v215 - 1) = v214[-1];
                  *v215 = v217;
                  v215 += 32;
                  v214 += 2;
                  v216 -= 32;
                }

                while (v216);
                if (v197 == v203)
                {
                  goto LABEL_184;
                }

                v213 = v197 & 0x1FFFFFFE0;
                if ((v191 & 6) == 0)
                {
                  v210 += v203;
                  v211 += v203;
                  v212 = v197 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v213 = 0;
              }

              v211 += v204;
              v218 = -8 * ((v191 >> 1) & 0x3FFFFFFF) + v213;
              v219 = (v209->i64 + v213);
              v220 = &v208[v213];
              do
              {
                v221 = *v219++;
                *v220 = v221;
                v220 += 8;
                v218 += 8;
              }

              while (v218);
              if (v197 == v204)
              {
                goto LABEL_184;
              }

              v210 += v204;
              v212 = v197 & 0xFFFFFFF8;
LABEL_198:
              v222 = v212 + 1;
              do
              {
                v223 = *v210++;
                *v211++ = v223;
              }

              while (v197 > v222++);
LABEL_184:
              ++v192;
              v206 += 64;
              v207 = (v207 + v196);
              v209 = (v209 + v196);
              v208 += 64;
            }

            while (v192 != v181);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v269, 64, v258, v259, v266, v267);
LABEL_202:
          if (v256)
          {
            memcpy(v255, v83, 0x400uLL);
          }

          v21 = v43 == v243 >> 4;
          v43 = v88;
          result = v253;
        }

        while (!v21);
        v21 = v18 == v231;
        v18 = (v18 + 1);
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v316 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v235 = a8;
  v17 = a8 >> 4;
  v217 = a8 + a10 - 1;
  v219 = v217 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v236 = a1;
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
  v239 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v228 = result;
  if (v17 <= v219)
  {
    v227 = a7 + a9 - 1;
    v216 = a7 >> 4;
    if (a7 >> 4 <= v227 >> 4)
    {
      result = a1;
      v237 = (a5 - 1) >> 4;
      v213 = a5 - 1;
      v220 = (a5 - 1) & 0xF;
      v214 = (a6 - 1) & 0xF;
      v215 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v225 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v224 = v27;
      v212 = 8 * v19 * v18;
      v226 = a7;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v235)
        {
          v29 = v235;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v217 < v28)
        {
          v28 = v217;
        }

        v234 = 16 * v17;
        v223 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v214;
        v222 = v31;
        v33 = v31 != 16;
        v34 = v216;
        v35 = v214 + 1;
        if (v17 != v215)
        {
          v35 = 16;
          v32 = v33;
        }

        v221 = v32;
        v232 = a3 + (v29 - v235) * a11;
        v233 = v35;
        v231 = v35;
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

          if (v227 < v37)
          {
            v37 = v227;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v237)
          {
            v41 = v220 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v234 >= v235 && v36 >= a7)
          {
            v43 = v39 != v220;
            if (v34 != v237)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v221;
          }

          if (v228)
          {
            v64 = 0;
            v65 = v212 >> (*(result + 57) != 0);
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

            v202 = (v64 >> 4) - 1;
            if (v66)
            {
              v203 = 0;
              if (v67)
              {
                goto LABEL_207;
              }

LABEL_196:
              v204 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v204 | v203)
              {
                goto LABEL_197;
              }

LABEL_208:
              v211 = 0;
            }

            else
            {
              v203 = 32 - __clz(~(-1 << -__clz(v202)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_196;
              }

LABEL_207:
              v204 = 0;
              if (!v203)
              {
                goto LABEL_208;
              }

LABEL_197:
              v205 = 0;
              v206 = 0;
              v207 = v34 & v202;
              v208 = v203 != 0;
              v209 = v204 != 0;
              v210 = 1;
              do
              {
                --v203;
                if (v208)
                {
                  v206 |= (v210 & v207) << v205++;
                }

                else
                {
                  v203 = 0;
                }

                --v204;
                if (v209)
                {
                  v206 |= (v210 & v17 & ((v68 >> 4) - 1)) << v205++;
                }

                else
                {
                  v204 = 0;
                }

                v210 *= 2;
                --v205;
                v209 = v204 != 0;
                v208 = v203 != 0;
              }

              while (v204 | v203);
              v211 = v206 << 10;
              result = v236;
            }

            v51 = v211 + ((v36 / v64 + v234 / v68 * ((v64 + v213) / v64)) << 14);
            goto LABEL_52;
          }

          if (v225)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v224.i8[4];
            v48 = v224.i8[0];
            v49 = v225.i32[1];
            v50 = v225.i32[0];
            do
            {
              --v49;
              if (v47)
              {
                v45 |= (v46 & v34) << v44++;
              }

              else
              {
                v49 = 0;
              }

              --v50;
              if (v48)
              {
                v45 |= (v46 & v17) << v44++;
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
          v70 = v232 + 4 * (v38 - a7);
          v238 = (a2 + v51);
          if (v239)
          {
            v71 = __dst;
            if (!(v42 & 1 | (v41 < 0x10u) | (v231 < 0x10)))
            {
              goto LABEL_84;
            }

            v72 = v41;
            memcpy(__dst, (a2 + v51), sizeof(__dst));
            v36 = 16 * v34;
            LOBYTE(v41) = v72;
            result = v236;
          }

          else
          {
            v71 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 0x10u) | (v231 < 0x10)))
            {
LABEL_84:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v70, a11, v71, v69, v41, v233);
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v241 = v71;
          v249 = v41;
          v250 = v233;
          v245 = v223;
          v246 = v38 - v36;
          v242 = v69;
          v243 = v70;
          v244 = a11;
          v247 = v222;
          v248 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_85:
            a7 = v226;
            goto LABEL_177;
          }

          v73 = *v69;
          a7 = v226;
          if (v73 == 127)
          {
            v76 = *v71;
            v77 = v71[1];
            v78 = v71[2];
            v79 = v71[3];
            v80 = v71[4];
            v81 = v71[5];
            v82 = v71[6];
            v83 = v71[7];
            v252 = vzip1q_s64(*v71, v77);
            v253 = vzip1q_s64(v80, v81);
            v256 = vzip2q_s64(v76, v77);
            v257 = vzip2q_s64(v80, v81);
            v260 = vzip1q_s64(v78, v79);
            v261 = vzip1q_s64(v82, v83);
            v264 = vzip2q_s64(v78, v79);
            v265 = vzip2q_s64(v82, v83);
            v74 = 128;
          }

          else if (v73 == 3)
          {
            v75 = vld1q_dup_f32(v71->i32);
            v252 = v75;
            v253 = v75;
            v256 = v75;
            v257 = v75;
            v260 = v75;
            v261 = v75;
            v264 = v75;
            v265 = v75;
            v74 = 4;
          }

          else if (*v69)
          {
            v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 64, v71, v73);
          }

          else
          {
            v74 = 0;
            v253 = 0u;
            v252 = 0u;
            v256 = 0u;
            v257 = 0u;
            v260 = 0u;
            v261 = 0u;
            v264 = 0u;
            v265 = 0u;
          }

          v84 = v71->i64 + v74;
          v85 = v69[1];
          if (v85 == 127)
          {
            v88 = *v84;
            v89 = *(v84 + 16);
            v90 = *(v84 + 32);
            v91 = *(v84 + 48);
            v92 = *(v84 + 64);
            v93 = *(v84 + 80);
            v94 = *(v84 + 96);
            v95 = *(v84 + 112);
            v268 = vzip1q_s64(*v84, v89);
            v269 = vzip1q_s64(v92, v93);
            v272 = vzip2q_s64(v88, v89);
            v273 = vzip2q_s64(v92, v93);
            v276 = vzip1q_s64(v90, v91);
            v277 = vzip1q_s64(v94, v95);
            v280 = vzip2q_s64(v90, v91);
            v281 = vzip2q_s64(v94, v95);
            v86 = 128;
          }

          else if (v85 == 3)
          {
            v87 = vld1q_dup_f32(v84);
            v268 = v87;
            v269 = v87;
            v272 = v87;
            v273 = v87;
            v276 = v87;
            v277 = v87;
            v280 = v87;
            v281 = v87;
            v86 = 4;
          }

          else if (v69[1])
          {
            v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v268, 64, v84, v85);
          }

          else
          {
            v86 = 0;
            v268 = 0u;
            v269 = 0u;
            v272 = 0u;
            v273 = 0u;
            v276 = 0u;
            v277 = 0u;
            v280 = 0u;
            v281 = 0u;
          }

          v96 = v84 + v86;
          v97 = v69[2];
          if (v97 == 127)
          {
            v100 = *v96;
            v101 = *(v96 + 16);
            v102 = *(v96 + 32);
            v103 = *(v96 + 48);
            v104 = *(v96 + 64);
            v105 = *(v96 + 80);
            v106 = *(v96 + 96);
            v107 = *(v96 + 112);
            v254 = vzip1q_s64(*v96, v101);
            v255 = vzip1q_s64(v104, v105);
            v258 = vzip2q_s64(v100, v101);
            v259 = vzip2q_s64(v104, v105);
            v262 = vzip1q_s64(v102, v103);
            v263 = vzip1q_s64(v106, v107);
            v266 = vzip2q_s64(v102, v103);
            v267 = vzip2q_s64(v106, v107);
            v98 = 128;
          }

          else if (v97 == 3)
          {
            v99 = vld1q_dup_f32(v96);
            v254 = v99;
            v255 = v99;
            v258 = v99;
            v259 = v99;
            v262 = v99;
            v263 = v99;
            v266 = v99;
            v267 = v99;
            v98 = 4;
          }

          else if (v69[2])
          {
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 64, v96, v97);
          }

          else
          {
            v98 = 0;
            v254 = 0u;
            v255 = 0u;
            v258 = 0u;
            v259 = 0u;
            v262 = 0u;
            v263 = 0u;
            v266 = 0u;
            v267 = 0u;
          }

          v108 = v96 + v98;
          v109 = v69[3];
          if (v109 == 127)
          {
            v112 = *v108;
            v113 = *(v108 + 16);
            v114 = *(v108 + 32);
            v115 = *(v108 + 48);
            v116 = *(v108 + 64);
            v117 = *(v108 + 80);
            v118 = *(v108 + 96);
            v119 = *(v108 + 112);
            v270 = vzip1q_s64(*v108, v113);
            v271 = vzip1q_s64(v116, v117);
            v274 = vzip2q_s64(v112, v113);
            v275 = vzip2q_s64(v116, v117);
            v278 = vzip1q_s64(v114, v115);
            v279 = vzip1q_s64(v118, v119);
            v282 = vzip2q_s64(v114, v115);
            v283 = vzip2q_s64(v118, v119);
            v110 = 128;
          }

          else if (v109 == 3)
          {
            v111 = vld1q_dup_f32(v108);
            v270 = v111;
            v271 = v111;
            v274 = v111;
            v275 = v111;
            v278 = v111;
            v279 = v111;
            v282 = v111;
            v283 = v111;
            v110 = 4;
          }

          else if (v69[3])
          {
            v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v270, 64, v108, v109);
          }

          else
          {
            v110 = 0;
            v270 = 0u;
            v271 = 0u;
            v274 = 0u;
            v275 = 0u;
            v278 = 0u;
            v279 = 0u;
            v282 = 0u;
            v283 = 0u;
          }

          v120 = v108 + v110;
          v121 = v69[4];
          if (v121 == 127)
          {
            v124 = *v120;
            v125 = *(v120 + 16);
            v126 = *(v120 + 32);
            v127 = *(v120 + 48);
            v128 = *(v120 + 64);
            v129 = *(v120 + 80);
            v130 = *(v120 + 96);
            v131 = *(v120 + 112);
            v284 = vzip1q_s64(*v120, v125);
            v285 = vzip1q_s64(v128, v129);
            v288 = vzip2q_s64(v124, v125);
            v289 = vzip2q_s64(v128, v129);
            v292 = vzip1q_s64(v126, v127);
            v293 = vzip1q_s64(v130, v131);
            v296 = vzip2q_s64(v126, v127);
            v297 = vzip2q_s64(v130, v131);
            v122 = 128;
          }

          else if (v121 == 3)
          {
            v123 = vld1q_dup_f32(v120);
            v284 = v123;
            v285 = v123;
            v288 = v123;
            v289 = v123;
            v292 = v123;
            v293 = v123;
            v296 = v123;
            v297 = v123;
            v122 = 4;
          }

          else if (v69[4])
          {
            v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v284, 64, v120, v121);
          }

          else
          {
            v122 = 0;
            v284 = 0u;
            v285 = 0u;
            v288 = 0u;
            v289 = 0u;
            v292 = 0u;
            v293 = 0u;
            v296 = 0u;
            v297 = 0u;
          }

          v132 = v120 + v122;
          v133 = v69[5];
          if (v133 == 127)
          {
            v136 = *v132;
            v137 = *(v132 + 16);
            v138 = *(v132 + 32);
            v139 = *(v132 + 48);
            v140 = *(v132 + 64);
            v141 = *(v132 + 80);
            v142 = *(v132 + 96);
            v143 = *(v132 + 112);
            v300 = vzip1q_s64(*v132, v137);
            v301 = vzip1q_s64(v140, v141);
            v304 = vzip2q_s64(v136, v137);
            v305 = vzip2q_s64(v140, v141);
            v308 = vzip1q_s64(v138, v139);
            v309 = vzip1q_s64(v142, v143);
            v312 = vzip2q_s64(v138, v139);
            v313 = vzip2q_s64(v142, v143);
            v134 = 128;
          }

          else if (v133 == 3)
          {
            v135 = vld1q_dup_f32(v132);
            v300 = v135;
            v301 = v135;
            v304 = v135;
            v305 = v135;
            v308 = v135;
            v309 = v135;
            v312 = v135;
            v313 = v135;
            v134 = 4;
          }

          else if (v69[5])
          {
            v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v300, 64, v132, v133);
          }

          else
          {
            v134 = 0;
            v300 = 0u;
            v301 = 0u;
            v304 = 0u;
            v305 = 0u;
            v308 = 0u;
            v309 = 0u;
            v312 = 0u;
            v313 = 0u;
          }

          v144 = v132 + v134;
          v145 = v69[6];
          if (v145 == 127)
          {
            v148 = *v144;
            v149 = *(v144 + 16);
            v150 = *(v144 + 32);
            v151 = *(v144 + 48);
            v152 = *(v144 + 64);
            v153 = *(v144 + 80);
            v154 = *(v144 + 96);
            v155 = *(v144 + 112);
            v286 = vzip1q_s64(*v144, v149);
            v287 = vzip1q_s64(v152, v153);
            v290 = vzip2q_s64(v148, v149);
            v291 = vzip2q_s64(v152, v153);
            v294 = vzip1q_s64(v150, v151);
            v295 = vzip1q_s64(v154, v155);
            v298 = vzip2q_s64(v150, v151);
            v299 = vzip2q_s64(v154, v155);
            v146 = 128;
          }

          else if (v145 == 3)
          {
            v147 = vld1q_dup_f32(v144);
            v286 = v147;
            v287 = v147;
            v290 = v147;
            v291 = v147;
            v294 = v147;
            v295 = v147;
            v298 = v147;
            v299 = v147;
            v146 = 4;
          }

          else if (v69[6])
          {
            v146 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v286, 64, v144, v145);
          }

          else
          {
            v146 = 0;
            v286 = 0u;
            v287 = 0u;
            v290 = 0u;
            v291 = 0u;
            v294 = 0u;
            v295 = 0u;
            v298 = 0u;
            v299 = 0u;
          }

          v156 = v144 + v146;
          v157 = v69[7];
          if (v157 == 127)
          {
            v160 = *v156;
            v161 = *(v156 + 16);
            v162 = *(v156 + 32);
            v163 = *(v156 + 48);
            v164 = *(v156 + 64);
            v165 = *(v156 + 80);
            v166 = *(v156 + 96);
            v167 = *(v156 + 112);
            v302 = vzip1q_s64(*v156, v161);
            v303 = vzip1q_s64(v164, v165);
            v306 = vzip2q_s64(v160, v161);
            v307 = vzip2q_s64(v164, v165);
            v310 = vzip1q_s64(v162, v163);
            v311 = vzip1q_s64(v166, v167);
            v314 = vzip2q_s64(v162, v163);
            v315 = vzip2q_s64(v166, v167);
            v158 = v247;
            if (!v247)
            {
              goto LABEL_176;
            }
          }

          else if (v157 == 3)
          {
            v159 = vld1q_dup_f32(v156);
            v302 = v159;
            v303 = v159;
            v306 = v159;
            v307 = v159;
            v310 = v159;
            v311 = v159;
            v314 = v159;
            v315 = v159;
            v158 = v247;
            if (!v247)
            {
              goto LABEL_176;
            }
          }

          else if (v69[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v302, 64, v156, v157);
            v158 = v247;
            if (!v247)
            {
              goto LABEL_176;
            }
          }

          else
          {
            v302 = 0u;
            v303 = 0u;
            v306 = 0u;
            v307 = 0u;
            v310 = 0u;
            v311 = 0u;
            v314 = 0u;
            v315 = 0u;
            v158 = v247;
            if (!v247)
            {
              goto LABEL_176;
            }
          }

          v168 = v248;
          if (v248)
          {
            v169 = 0;
            v170 = 4 * v246;
            v171 = &v252.i8[64 * v245 + v170];
            v172 = v243;
            v173 = v244;
            v174 = 4 * v248;
            if (4 * v248)
            {
              v175 = (4 * v248 - 1) >> 32 == 0;
            }

            else
            {
              v175 = 0;
            }

            v176 = !v175;
            v178 = v171 < v243 + v244 * (v158 - 1) + 4 * v248 && v243 < &__dst[64 * v158 + 960 + 64 * v245 + 4 * v248 + v170];
            v179 = v178 || v244 < 0;
            v180 = v174 & 0x1FFFFFFE0;
            v181 = v174 & 0x1FFFFFFF8;
            v182 = (v248 == 1) | v176 | v179;
            v183 = &v253.i8[64 * v245 + v170];
            v184 = (v243 + 16);
            v185 = v171;
            v186 = v243;
            do
            {
              v187 = (v172 + v169 * v173);
              v188 = &v171[64 * v169];
              if (v182)
              {
                v189 = 0;
                goto LABEL_173;
              }

              if (v168 >= 8)
              {
                v191 = v184;
                v192 = v183;
                v193 = v174 & 0x1FFFFFFE0;
                do
                {
                  v194 = *v191;
                  *(v192 - 1) = *(v191 - 1);
                  *v192 = v194;
                  v192 += 32;
                  v191 += 2;
                  v193 -= 32;
                }

                while (v193);
                if (v174 == v180)
                {
                  goto LABEL_159;
                }

                v190 = v174 & 0x1FFFFFFE0;
                if ((v168 & 6) == 0)
                {
                  v187 += v180;
                  v188 += v180;
                  v189 = v174 & 0xFFFFFFE0;
                  goto LABEL_173;
                }
              }

              else
              {
                v190 = 0;
              }

              v188 += v181;
              v195 = -8 * ((v168 >> 1) & 0x3FFFFFFF) + v190;
              v196 = (v186 + v190);
              v197 = &v185[v190];
              do
              {
                v198 = *v196++;
                *v197 = v198;
                v197 += 8;
                v195 += 8;
              }

              while (v195);
              if (v174 == v181)
              {
                goto LABEL_159;
              }

              v187 += v181;
              v189 = v174 & 0xFFFFFFF8;
LABEL_173:
              v199 = v189 + 1;
              do
              {
                v200 = *v187++;
                *v188++ = v200;
              }

              while (v174 > v199++);
LABEL_159:
              ++v169;
              v183 += 64;
              v184 = (v184 + v173);
              v186 += v173;
              v185 += 64;
            }

            while (v169 != v158);
          }

LABEL_176:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v252, 64, v241, v242, v249, v250);
LABEL_177:
          if (v239)
          {
            memcpy(v238, v71, 0x400uLL);
          }

          v21 = v34++ == v227 >> 4;
          result = v236;
        }

        while (!v21);
        v21 = v17++ == v219;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v316 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v235 = a8;
  v17 = a8 >> 4;
  v217 = a8 + a10 - 1;
  v219 = v217 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v236 = a1;
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
  v239 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v228 = result;
  if (v17 <= v219)
  {
    v227 = a7 + a9 - 1;
    v216 = a7 >> 4;
    if (a7 >> 4 <= v227 >> 4)
    {
      result = a1;
      v237 = (a5 - 1) >> 4;
      v213 = a5 - 1;
      v220 = (a5 - 1) & 0xF;
      v214 = (a6 - 1) & 0xF;
      v215 = (a6 - 1) >> 4;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      v27 = vcgt_u32(v26, 0x1F0000001FLL);
      v225 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v26, 4uLL))))))), v27);
      v224 = v27;
      v212 = 8 * v19 * v18;
      v226 = a7;
      do
      {
        v28 = (16 * v17) | 0xF;
        if (16 * v17 <= v235)
        {
          v29 = v235;
        }

        else
        {
          v29 = 16 * v17;
        }

        if (v217 < v28)
        {
          v28 = v217;
        }

        v234 = 16 * v17;
        v223 = v29 - 16 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v214;
        v222 = v31;
        v33 = v31 != 16;
        v34 = v216;
        v35 = v214 + 1;
        if (v17 != v215)
        {
          v35 = 16;
          v32 = v33;
        }

        v221 = v32;
        v232 = a3 + (v29 - v235) * a11;
        v233 = v35;
        v231 = v35;
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

          if (v227 < v37)
          {
            v37 = v227;
          }

          v39 = v37 - v38;
          v40 = v39 + 1;
          if (v34 == v237)
          {
            v41 = v220 + 1;
          }

          else
          {
            v41 = 16;
          }

          v42 = 1;
          if (v234 >= v235 && v36 >= a7)
          {
            v43 = v39 != v220;
            if (v34 != v237)
            {
              v43 = v40 != 16;
            }

            v42 = v43 || v221;
          }

          if (v228)
          {
            v64 = 0;
            v65 = v212 >> (*(result + 57) != 0);
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

            v202 = (v64 >> 4) - 1;
            if (v66)
            {
              v203 = 0;
              if (v67)
              {
                goto LABEL_207;
              }

LABEL_196:
              v204 = 32 - __clz(~(-1 << -__clz(((v68 + 15) >> 4) - 1)));
              if (v204 | v203)
              {
                goto LABEL_197;
              }

LABEL_208:
              v211 = 0;
            }

            else
            {
              v203 = 32 - __clz(~(-1 << -__clz(v202)));
              if ((v67 & 1) == 0)
              {
                goto LABEL_196;
              }

LABEL_207:
              v204 = 0;
              if (!v203)
              {
                goto LABEL_208;
              }

LABEL_197:
              v205 = 0;
              v206 = 0;
              v207 = v34 & v202;
              v208 = v203 != 0;
              v209 = v204 != 0;
              v210 = 1;
              do
              {
                --v203;
                if (v208)
                {
                  v206 |= (v210 & v207) << v205++;
                }

                else
                {
                  v203 = 0;
                }

                --v204;
                if (v209)
                {
                  v206 |= (v210 & v17 & ((v68 >> 4) - 1)) << v205++;
                }

                else
                {
                  v204 = 0;
                }

                v210 *= 2;
                --v205;
                v209 = v204 != 0;
                v208 = v203 != 0;
              }

              while (v204 | v203);
              v211 = v206 << 10;
              result = v236;
            }

            v51 = v211 + ((v36 / v64 + v234 / v68 * ((v64 + v213) / v64)) << 14);
            goto LABEL_52;
          }

          if (v225)
          {
            v44 = 0;
            v45 = 0;
            v46 = 1;
            v47 = v224.i8[4];
            v48 = v224.i8[0];
            v49 = v225.i32[1];
            v50 = v225.i32[0];
            do
            {
              --v49;
              if (v47)
              {
                v45 |= (v46 & v34) << v44++;
              }

              else
              {
                v49 = 0;
              }

              --v50;
              if (v48)
              {
                v45 |= (v46 & v17) << v44++;
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
          v70 = (v232 + 4 * (v38 - a7));
          v238 = (a2 + v51);
          if (v239)
          {
            v71 = __dst;
            if (!(v42 & 1 | (v41 < 0x10u) | (v231 < 0x10)))
            {
              goto LABEL_84;
            }

            v72 = v41;
            memcpy(__dst, (a2 + v51), sizeof(__dst));
            v36 = 16 * v34;
            LOBYTE(v41) = v72;
            result = v236;
          }

          else
          {
            v71 = (a2 + v51);
            if (!(v42 & 1 | (v41 < 0x10u) | (v231 < 0x10)))
            {
LABEL_84:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v70, a11, v71, v69, v41, v233);
              goto LABEL_85;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v241 = v71;
          v249 = v41;
          v250 = v233;
          v245 = v223;
          v246 = v38 - v36;
          v242 = v69;
          v243 = v70;
          v244 = a11;
          v247 = v222;
          v248 = v40;
          if (v42)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_85:
            a7 = v226;
            goto LABEL_177;
          }

          v73 = *v69;
          a7 = v226;
          if (v73 == 127)
          {
            v76 = *v71;
            v77 = v71[1];
            v78 = v71[2];
            v79 = v71[3];
            v80 = v71[4];
            v81 = v71[5];
            v82 = v71[6];
            v83 = v71[7];
            v252 = vzip1q_s64(*v71, v77);
            v253 = vzip1q_s64(v80, v81);
            v256 = vzip2q_s64(v76, v77);
            v257 = vzip2q_s64(v80, v81);
            v260 = vzip1q_s64(v78, v79);
            v261 = vzip1q_s64(v82, v83);
            v264 = vzip2q_s64(v78, v79);
            v265 = vzip2q_s64(v82, v83);
            v74 = 128;
          }

          else if (v73 == 3)
          {
            v75 = vld1q_dup_f32(v71->i32);
            v252 = v75;
            v253 = v75;
            v256 = v75;
            v257 = v75;
            v260 = v75;
            v261 = v75;
            v264 = v75;
            v265 = v75;
            v74 = 4;
          }

          else if (*v69)
          {
            v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v252, 64, v71, v73);
          }

          else
          {
            v74 = 0;
            v253 = 0u;
            v252 = 0u;
            v256 = 0u;
            v257 = 0u;
            v260 = 0u;
            v261 = 0u;
            v264 = 0u;
            v265 = 0u;
          }

          v84 = v71->i64 + v74;
          v85 = v69[1];
          if (v85 == 127)
          {
            v88 = *v84;
            v89 = *(v84 + 16);
            v90 = *(v84 + 32);
            v91 = *(v84 + 48);
            v92 = *(v84 + 64);
            v93 = *(v84 + 80);
            v94 = *(v84 + 96);
            v95 = *(v84 + 112);
            v268 = vzip1q_s64(*v84, v89);
            v269 = vzip1q_s64(v92, v93);
            v272 = vzip2q_s64(v88, v89);
            v273 = vzip2q_s64(v92, v93);
            v276 = vzip1q_s64(v90, v91);
            v277 = vzip1q_s64(v94, v95);
            v280 = vzip2q_s64(v90, v91);
            v281 = vzip2q_s64(v94, v95);
            v86 = 128;
          }

          else if (v85 == 3)
          {
            v87 = vld1q_dup_f32(v84);
            v268 = v87;
            v269 = v87;
            v272 = v87;
            v273 = v87;
            v276 = v87;
            v277 = v87;
            v280 = v87;
            v281 = v87;
            v86 = 4;
          }

          else if (v69[1])
          {
            v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v268, 64, v84, v85);
          }

          else
          {
            v86 = 0;
            v268 = 0u;
            v269 = 0u;
            v272 = 0u;
            v273 = 0u;
            v276 = 0u;
            v277 = 0u;
            v280 = 0u;
            v281 = 0u;
          }

          v96 = v84 + v86;
          v97 = v69[2];
          if (v97 == 127)
          {
            v100 = *v96;
            v101 = *(v96 + 16);
            v102 = *(v96 + 32);
            v103 = *(v96 + 48);
            v104 = *(v96 + 64);
            v105 = *(v96 + 80);
            v106 = *(v96 + 96);
            v107 = *(v96 + 112);
            v254 = vzip1q_s64(*v96, v101);
            v255 = vzip1q_s64(v104, v105);
            v258 = vzip2q_s64(v100, v101);
            v259 = vzip2q_s64(v104, v105);
            v262 = vzip1q_s64(v102, v103);
            v263 = vzip1q_s64(v106, v107);
            v266 = vzip2q_s64(v102, v103);
            v267 = vzip2q_s64(v106, v107);
            v98 = 128;
          }

          else if (v97 == 3)
          {
            v99 = vld1q_dup_f32(v96);
            v254 = v99;
            v255 = v99;
            v258 = v99;
            v259 = v99;
            v262 = v99;
            v263 = v99;
            v266 = v99;
            v267 = v99;
            v98 = 4;
          }

          else if (v69[2])
          {
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v254, 64, v96, v97);
          }

          else
          {
            v98 = 0;
            v254 = 0u;
            v255 = 0u;
            v258 = 0u;
            v259 = 0u;
            v262 = 0u;
            v263 = 0u;
            v266 = 0u;
            v267 = 0u;
          }

          v108 = v96 + v98;
          v109 = v69[3];
          if (v109 == 127)
          {
            v112 = *v108;
            v113 = *(v108 + 16);
            v114 = *(v108 + 32);
            v115 = *(v108 + 48);
            v116 = *(v108 + 64);
            v117 = *(v108 + 80);
            v118 = *(v108 + 96);
            v119 = *(v108 + 112);
            v270 = vzip1q_s64(*v108, v113);
            v271 = vzip1q_s64(v116, v117);
            v274 = vzip2q_s64(v112, v113);
            v275 = vzip2q_s64(v116, v117);
            v278 = vzip1q_s64(v114, v115);
            v279 = vzip1q_s64(v118, v119);
            v282 = vzip2q_s64(v114, v115);
            v283 = vzip2q_s64(v118, v119);
            v110 = 128;
          }

          else if (v109 == 3)
          {
            v111 = vld1q_dup_f32(v108);
            v270 = v111;
            v271 = v111;
            v274 = v111;
            v275 = v111;
            v278 = v111;
            v279 = v111;
            v282 = v111;
            v283 = v111;
            v110 = 4;
          }

          else if (v69[3])
          {
            v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v270, 64, v108, v109);
          }

          else
          {
            v110 = 0;
            v270 = 0u;
            v271 = 0u;
            v274 = 0u;
            v275 = 0u;
            v278 = 0u;
            v279 = 0u;
            v282 = 0u;
            v283 = 0u;
          }

          v120 = v108 + v110;
          v121 = v69[4];
          if (v121 == 127)
          {
            v124 = *v120;
            v125 = *(v120 + 16);
            v126 = *(v120 + 32);
            v127 = *(v120 + 48);
            v128 = *(v120 + 64);
            v129 = *(v120 + 80);
            v130 = *(v120 + 96);
            v131 = *(v120 + 112);
            v284 = vzip1q_s64(*v120, v125);
            v285 = vzip1q_s64(v128, v129);
            v288 = vzip2q_s64(v124, v125);
            v289 = vzip2q_s64(v128, v129);
            v292 = vzip1q_s64(v126, v127);
            v293 = vzip1q_s64(v130, v131);
            v296 = vzip2q_s64(v126, v127);
            v297 = vzip2q_s64(v130, v131);
            v122 = 128;
          }

          else if (v121 == 3)
          {
            v123 = vld1q_dup_f32(v120);
            v284 = v123;
            v285 = v123;
            v288 = v123;
            v289 = v123;
            v292 = v123;
            v293 = v123;
            v296 = v123;
            v297 = v123;
            v122 = 4;
          }

          else if (v69[4])
          {
            v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v284, 64, v120, v121);
          }

          else
          {
            v122 = 0;
            v284 = 0u;
            v285 = 0u;
            v288 = 0u;
            v289 = 0u;
            v292 = 0u;
            v293 = 0u;
            v296 = 0u;
            v297 = 0u;
          }

          v132 = v120 + v122;
          v133 = v69[5];
          if (v133 == 127)
          {
            v136 = *v132;
            v137 = *(v132 + 16);
            v138 = *(v132 + 32);
            v139 = *(v132 + 48);
            v140 = *(v132 + 64);
            v141 = *(v132 + 80);
            v142 = *(v132 + 96);
            v143 = *(v132 + 112);
            v300 = vzip1q_s64(*v132, v137);
            v301 = vzip1q_s64(v140, v141);
            v304 = vzip2q_s64(v136, v137);
            v305 = vzip2q_s64(v140, v141);
            v308 = vzip1q_s64(v138, v139);
            v309 = vzip1q_s64(v142, v143);
            v312 = vzip2q_s64(v138, v139);
            v313 = vzip2q_s64(v142, v143);
            v134 = 128;
          }

          else if (v133 == 3)
          {
            v135 = vld1q_dup_f32(v132);
            v300 = v135;
            v301 = v135;
            v304 = v135;
            v305 = v135;
            v308 = v135;
            v309 = v135;
            v312 = v135;
            v313 = v135;
            v134 = 4;
          }

          else if (v69[5])
          {
            v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v300, 64, v132, v133);
          }

          else
          {
            v134 = 0;
            v300 = 0u;
            v301 = 0u;
            v304 = 0u;
            v305 = 0u;
            v308 = 0u;
            v309 = 0u;
            v312 = 0u;
            v313 = 0u;
          }

          v144 = v132 + v134;
          v145 = v69[6];
          if (v145 == 127)
          {
            v148 = *v144;
            v149 = *(v144 + 16);
            v150 = *(v144 + 32);
            v151 = *(v144 + 48);
            v152 = *(v144 + 64);
            v153 = *(v144 + 80);
            v154 = *(v144 + 96);
            v155 = *(v144 + 112);
            v286 = vzip1q_s64(*v144, v149);
            v287 = vzip1q_s64(v152, v153);
            v290 = vzip2q_s64(v148, v149);
            v291 = vzip2q_s64(v152, v153);
            v294 = vzip1q_s64(v150, v151);
            v295 = vzip1q_s64(v154, v155);
            v298 = vzip2q_s64(v150, v151);
            v299 = vzip2q_s64(v154, v155);
            v146 = 128;
          }

          else if (v145 == 3)
          {
            v147 = vld1q_dup_f32(v144);
            v286 = v147;
            v287 = v147;
            v290 = v147;
            v291 = v147;
            v294 = v147;
            v295 = v147;
            v298 = v147;
            v299 = v147;
            v146 = 4;
          }

          else if (v69[6])
          {
            v146 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v286, 64, v144, v145);
          }

          else
          {
            v146 = 0;
            v286 = 0u;
            v287 = 0u;
            v290 = 0u;
            v291 = 0u;
            v294 = 0u;
            v295 = 0u;
            v298 = 0u;
            v299 = 0u;
          }

          v156 = v144 + v146;
          v157 = v69[7];
          if (v157 == 127)
          {
            v160 = *v156;
            v161 = *(v156 + 16);
            v162 = *(v156 + 32);
            v163 = *(v156 + 48);
            v164 = *(v156 + 64);
            v165 = *(v156 + 80);
            v166 = *(v156 + 96);
            v167 = *(v156 + 112);
            v302 = vzip1q_s64(*v156, v161);
            v303 = vzip1q_s64(v164, v165);
            v306 = vzip2q_s64(v160, v161);
            v307 = vzip2q_s64(v164, v165);
            v310 = vzip1q_s64(v162, v163);
            v311 = vzip1q_s64(v166, v167);
            v314 = vzip2q_s64(v162, v163);
            v315 = vzip2q_s64(v166, v167);
            v158 = v247;
            if (!v247)
            {
              goto LABEL_176;
            }
          }

          else if (v157 == 3)
          {
            v159 = vld1q_dup_f32(v156);
            v302 = v159;
            v303 = v159;
            v306 = v159;
            v307 = v159;
            v310 = v159;
            v311 = v159;
            v314 = v159;
            v315 = v159;
            v158 = v247;
            if (!v247)
            {
              goto LABEL_176;
            }
          }

          else if (v69[7])
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v302, 64, v156, v157);
            v158 = v247;
            if (!v247)
            {
              goto LABEL_176;
            }
          }

          else
          {
            v302 = 0u;
            v303 = 0u;
            v306 = 0u;
            v307 = 0u;
            v310 = 0u;
            v311 = 0u;
            v314 = 0u;
            v315 = 0u;
            v158 = v247;
            if (!v247)
            {
              goto LABEL_176;
            }
          }

          v168 = v248;
          if (v248)
          {
            v169 = 0;
            v170 = 4 * v246;
            v171 = &v252.i8[64 * v245 + v170];
            v172 = v243;
            v173 = v244;
            v174 = 4 * v248;
            if (4 * v248)
            {
              v175 = (4 * v248 - 1) >> 32 == 0;
            }

            else
            {
              v175 = 0;
            }

            v176 = !v175;
            v178 = v171 < &v243->i8[4 * v248 + v244 * (v158 - 1)] && v243 < &__dst[64 * v158 + 960 + 64 * v245 + 4 * v248 + v170];
            v179 = v178 || v244 < 0;
            v180 = v174 & 0x1FFFFFFE0;
            v181 = v174 & 0x1FFFFFFF8;
            v182 = (v248 == 1) | v176 | v179;
            v183 = &v253.i8[64 * v245 + v170];
            v184 = v243 + 1;
            v185 = v171;
            v186 = v243;
            do
            {
              v187 = &v172->i8[v169 * v173];
              v188 = &v171[64 * v169];
              if (v182)
              {
                v189 = 0;
                goto LABEL_173;
              }

              if (v168 >= 8)
              {
                v191 = v184;
                v192 = v183;
                v193 = v174 & 0x1FFFFFFE0;
                do
                {
                  v194 = *v191;
                  *(v192 - 1) = v191[-1];
                  *v192 = v194;
                  v192 += 32;
                  v191 += 2;
                  v193 -= 32;
                }

                while (v193);
                if (v174 == v180)
                {
                  goto LABEL_159;
                }

                v190 = v174 & 0x1FFFFFFE0;
                if ((v168 & 6) == 0)
                {
                  v187 += v180;
                  v188 += v180;
                  v189 = v174 & 0xFFFFFFE0;
                  goto LABEL_173;
                }
              }

              else
              {
                v190 = 0;
              }

              v188 += v181;
              v195 = -8 * ((v168 >> 1) & 0x3FFFFFFF) + v190;
              v196 = (v186->i64 + v190);
              v197 = &v185[v190];
              do
              {
                v198 = *v196++;
                *v197 = v198;
                v197 += 8;
                v195 += 8;
              }

              while (v195);
              if (v174 == v181)
              {
                goto LABEL_159;
              }

              v187 += v181;
              v189 = v174 & 0xFFFFFFF8;
LABEL_173:
              v199 = v189 + 1;
              do
              {
                v200 = *v187++;
                *v188++ = v200;
              }

              while (v174 > v199++);
LABEL_159:
              ++v169;
              v183 += 64;
              v184 = (v184 + v173);
              v186 = (v186 + v173);
              v185 += 64;
            }

            while (v169 != v158);
          }

LABEL_176:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v252, 64, v241, v242, v249, v250);
LABEL_177:
          if (v239)
          {
            memcpy(v238, v71, 0x400uLL);
          }

          v21 = v34++ == v227 >> 4;
          result = v236;
        }

        while (!v21);
        v21 = v17++ == v219;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v249 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v200 = a8;
  v182 = a8 + a10 - 1;
  v201 = a1;
  if (*(a1 + 168))
  {
    v21 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v21 = 0;
  }

  v22 = a8 >> 4;
  v23 = a5 - 1;
  v24 = a6 - 1;
  v181 = v182 >> 4;
  v25 = (v21 & 0xD00) == 0 || v21 == 768;
  v26 = v21 & 0xE00;
  v28 = !v25 && v26 != 1024;
  v204 = v28;
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
      v194 = 0;
LABEL_32:
      v191 = v31 - 4;
      v185 = v30 - 4;
      v37 = -1 << *(*(a1 + 208) + 48);
      v179 = (((~v37 + a5) & v37) + ~(-1 << v31)) >> v31;
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

    v194 = v36 >= v30;
    goto LABEL_32;
  }

  v194 = 0;
  v179 = 0;
  v185 = 0;
  v191 = 0;
LABEL_33:
  if (v22 <= v181)
  {
    v193 = a7 + a9 - 1;
    v178 = a7 >> 4;
    if (a7 >> 4 <= v193 >> 4)
    {
      v202 = v23 >> 4;
      v187 = v23 & 0xF;
      v176 = v24 & 0xF;
      v177 = v24 >> 4;
      v175 = ~(-1 << v185);
      v38 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v39.i8 = vcgt_u32(v38, 0x1F0000001FLL);
      v40.i64[0] = -1;
      v41.i64[0] = 0x2000000020;
      *v42.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v38, 4uLL))))))), *v39.i8);
      v184 = v42.i64[0];
      v186 = v42.i32[0] | v42.i32[1];
      v183 = v39.i64[0];
      v192 = a7;
      do
      {
        v43 = (16 * v22) | 0xF;
        if (16 * v22 <= v200)
        {
          v44 = v200;
        }

        else
        {
          v44 = 16 * v22;
        }

        if (v182 < v43)
        {
          v43 = v182;
        }

        v190 = v44 - 16 * v22;
        v45 = v43 - v44;
        v46 = v45 + 1;
        v47 = v45 != v176;
        v189 = v46;
        v48 = v46 != 16;
        v49 = v176 + 1;
        if (v22 != v177)
        {
          v49 = 16;
          v47 = v48;
        }

        v188 = v47;
        v50 = v178;
        v51 = v22 & v175;
        v198 = a3 + (v44 - v200) * a11;
        v199 = v49;
        v197 = v49;
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

          if (v193 < v53)
          {
            v53 = v193;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v50 == v202)
          {
            v57 = v187 + 1;
          }

          else
          {
            v57 = 16;
          }

          v58 = 1;
          if (16 * v22 >= v200 && v52 >= a7)
          {
            v59 = v55 != v187;
            if (v50 != v202)
            {
              v59 = v56 != 16;
            }

            v58 = v59 || v188;
          }

          if (v194)
          {
            if (v191 | v185)
            {
              v60 = 0;
              v61 = 0;
              v62 = v185 != 0;
              v63 = 1;
              v65 = v191 != 0;
              v64 = v185;
              v66 = v191;
              do
              {
                --v66;
                if (v65)
                {
                  v61 |= (v50 & ~(-1 << v191) & v63) << v60++;
                }

                else
                {
                  v66 = 0;
                }

                --v64;
                if (v62)
                {
                  v61 |= (v51 & v63) << v60++;
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
              v67 = v61 << 9;
            }

            else
            {
              v67 = 0;
            }

            v75 = v67 + *(result + 336) * ((v50 >> v191) + (v22 >> v185) * v179);
          }

          else if (v186)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v71 = v183;
            v72 = BYTE4(v183);
            v74 = v184;
            v73 = HIDWORD(v184);
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v50) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v22) << v68++;
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

          v80 = v79 + 15;
          if (v80 < 0x20)
          {
            v81 = 0;
          }

          else
          {
            v81 = 32 - __clz(~(-1 << -__clz((v80 >> 4) - 1)));
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
          v89 = v198 + 2 * (v54 - a7);
          v203 = (a2 + v75);
          if (v204)
          {
            v90 = __dst;
            if (!(v58 & 1 | (v57 < 0x10u) | (v197 < 0x10)))
            {
              goto LABEL_109;
            }

            v91 = v56;
            v92 = (a4 + v87);
            v93 = v57;
            memcpy(__dst, (a2 + v75), sizeof(__dst));
            v56 = v91;
            v51 = v22 & v175;
            LOBYTE(v57) = v93;
            v88 = v92;
            result = v201;
          }

          else
          {
            v90 = (a2 + v75);
            if (!(v58 & 1 | (v57 < 0x10u) | (v197 < 0x10)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v89, a11, v90, v88, v57, v199, *v42.i64, *v39.i64, *v40.i64, *v41.i64, *v17.i64, v18, v19, v20);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v206 = v90;
          v214 = v57;
          v215 = v199;
          v210 = v190;
          v211 = v54 - v52;
          v207 = v88;
          v208 = v89;
          v209 = a11;
          v212 = v189;
          v213 = v56;
          if (v58)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v192;
            v94 = v50 + 1;
            goto LABEL_202;
          }

          v95 = *v88;
          a7 = v192;
          if (v95 == 63)
          {
            v97 = *(v90 + 1);
            v40 = *(v90 + 2);
            v41 = *(v90 + 3);
            v17 = vuzp1q_s32(*v90, v40);
            v98 = vuzp2q_s32(*v90, v40);
            v217 = v17;
            v219 = v98;
            v42 = vuzp1q_s32(v97, v41);
            v39 = vuzp2q_s32(v97, v41);
            v221 = v42;
            v223 = v39;
            v96 = 64;
          }

          else if (v95 == 1)
          {
            v42 = vld1q_dup_s16(v90);
            v217 = v42;
            v219 = v42;
            v221 = v42;
            v223 = v42;
            v96 = 2;
          }

          else if (*v88)
          {
            v99 = v88;
            v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 32, v90, v95, *v42.i64, *v39.i64, *v40.i64, *v41.i8);
            v88 = v99;
          }

          else
          {
            v96 = 0;
            v217 = 0uLL;
            v219 = 0uLL;
            v221 = 0uLL;
            v223 = 0uLL;
          }

          v100 = v90 + v96;
          v101 = v88[1];
          if (v101 == 63)
          {
            v103 = *(v100 + 16);
            v40 = *(v100 + 32);
            v41 = *(v100 + 48);
            v17 = vuzp1q_s32(*v100, v40);
            v104 = vuzp2q_s32(*v100, v40);
            v225 = v17;
            v227 = v104;
            v42 = vuzp1q_s32(v103, v41);
            v39 = vuzp2q_s32(v103, v41);
            v229 = v42;
            v231 = v39;
            v102 = 64;
          }

          else if (v101 == 1)
          {
            v42 = vld1q_dup_s16(v100);
            v225 = v42;
            v227 = v42;
            v229 = v42;
            v231 = v42;
            v102 = 2;
          }

          else if (v88[1])
          {
            v105 = v88;
            v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v225, 32, v100, v101, *v42.i64, *v39.i64, *v40.i64, *v41.i8);
            v88 = v105;
          }

          else
          {
            v102 = 0;
            v225 = 0uLL;
            v227 = 0uLL;
            v229 = 0uLL;
            v231 = 0uLL;
          }

          v106 = v100 + v102;
          v107 = v88[2];
          if (v107 == 63)
          {
            v109 = *(v106 + 16);
            v40 = *(v106 + 32);
            v41 = *(v106 + 48);
            v17 = vuzp1q_s32(*v106, v40);
            v110 = vuzp2q_s32(*v106, v40);
            v218 = v17;
            v220 = v110;
            v42 = vuzp1q_s32(v109, v41);
            v39 = vuzp2q_s32(v109, v41);
            v222 = v42;
            v224 = v39;
            v108 = 64;
          }

          else if (v107 == 1)
          {
            v42 = vld1q_dup_s16(v106);
            v218 = v42;
            v220 = v42;
            v222 = v42;
            v224 = v42;
            v108 = 2;
          }

          else if (v88[2])
          {
            v111 = v88;
            v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v218, 32, v106, v107, *v42.i64, *v39.i64, *v40.i64, *v41.i8);
            v88 = v111;
          }

          else
          {
            v108 = 0;
            v218 = 0uLL;
            v220 = 0uLL;
            v222 = 0uLL;
            v224 = 0uLL;
          }

          v112 = v106 + v108;
          v113 = v88[3];
          if (v113 == 63)
          {
            v115 = *(v112 + 16);
            v40 = *(v112 + 32);
            v41 = *(v112 + 48);
            v17 = vuzp1q_s32(*v112, v40);
            v116 = vuzp2q_s32(*v112, v40);
            v226 = v17;
            v228 = v116;
            v42 = vuzp1q_s32(v115, v41);
            v39 = vuzp2q_s32(v115, v41);
            v230 = v42;
            v232 = v39;
            v114 = 64;
          }

          else if (v113 == 1)
          {
            v42 = vld1q_dup_s16(v112);
            v226 = v42;
            v228 = v42;
            v230 = v42;
            v232 = v42;
            v114 = 2;
          }

          else if (v88[3])
          {
            v117 = v88;
            v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 32, v112, v113, *v42.i64, *v39.i64, *v40.i64, *v41.i8);
            v88 = v117;
          }

          else
          {
            v114 = 0;
            v226 = 0uLL;
            v228 = 0uLL;
            v230 = 0uLL;
            v232 = 0uLL;
          }

          v118 = v112 + v114;
          v119 = v88[4];
          if (v119 == 63)
          {
            v121 = *(v118 + 16);
            v40 = *(v118 + 32);
            v41 = *(v118 + 48);
            v17 = vuzp1q_s32(*v118, v40);
            v122 = vuzp2q_s32(*v118, v40);
            v233 = v17;
            v235 = v122;
            v42 = vuzp1q_s32(v121, v41);
            v39 = vuzp2q_s32(v121, v41);
            v237 = v42;
            v239 = v39;
            v120 = 64;
          }

          else if (v119 == 1)
          {
            v42 = vld1q_dup_s16(v118);
            v233 = v42;
            v235 = v42;
            v237 = v42;
            v239 = v42;
            v120 = 2;
          }

          else if (v88[4])
          {
            v123 = v88;
            v120 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 32, v118, v119, *v42.i64, *v39.i64, *v40.i64, *v41.i8);
            v88 = v123;
          }

          else
          {
            v120 = 0;
            v233 = 0uLL;
            v235 = 0uLL;
            v237 = 0uLL;
            v239 = 0uLL;
          }

          v124 = v118 + v120;
          v125 = v88[5];
          if (v125 == 63)
          {
            v127 = *(v124 + 16);
            v40 = *(v124 + 32);
            v41 = *(v124 + 48);
            v17 = vuzp1q_s32(*v124, v40);
            v128 = vuzp2q_s32(*v124, v40);
            v241 = v17;
            v243 = v128;
            v42 = vuzp1q_s32(v127, v41);
            v39 = vuzp2q_s32(v127, v41);
            v245 = v42;
            v247 = v39;
            v126 = 64;
          }

          else if (v125 == 1)
          {
            v42 = vld1q_dup_s16(v124);
            v241 = v42;
            v243 = v42;
            v245 = v42;
            v247 = v42;
            v126 = 2;
          }

          else if (v88[5])
          {
            v129 = v88;
            v126 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v241, 32, v124, v125, *v42.i64, *v39.i64, *v40.i64, *v41.i8);
            v88 = v129;
          }

          else
          {
            v126 = 0;
            v241 = 0uLL;
            v243 = 0uLL;
            v245 = 0uLL;
            v247 = 0uLL;
          }

          v130 = v124 + v126;
          v131 = v88[6];
          if (v131 == 63)
          {
            v133 = *(v130 + 16);
            v40 = *(v130 + 32);
            v41 = *(v130 + 48);
            v17 = vuzp1q_s32(*v130, v40);
            v134 = vuzp2q_s32(*v130, v40);
            v234 = v17;
            v236 = v134;
            v42 = vuzp1q_s32(v133, v41);
            v39 = vuzp2q_s32(v133, v41);
            v238 = v42;
            v240 = v39;
            v132 = 64;
          }

          else if (v131 == 1)
          {
            v42 = vld1q_dup_s16(v130);
            v234 = v42;
            v236 = v42;
            v238 = v42;
            v240 = v42;
            v132 = 2;
          }

          else if (v88[6])
          {
            v135 = v88;
            v132 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 32, v130, v131, *v42.i64, *v39.i64, *v40.i64, *v41.i8);
            v88 = v135;
          }

          else
          {
            v132 = 0;
            v234 = 0uLL;
            v236 = 0uLL;
            v238 = 0uLL;
            v240 = 0uLL;
          }

          v136 = v130 + v132;
          v137 = v88[7];
          if (v137 == 63)
          {
            v139 = *(v136 + 16);
            v40 = *(v136 + 32);
            v41 = *(v136 + 48);
            v17 = vuzp1q_s32(*v136, v40);
            v140 = vuzp2q_s32(*v136, v40);
            v242 = v17;
            v244 = v140;
            v42 = vuzp1q_s32(v139, v41);
            v39 = vuzp2q_s32(v139, v41);
            v246 = v42;
            v248 = v39;
            v94 = v50 + 1;
            v138 = v212;
            if (!v212)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v94 = v50 + 1;
            if (v137 == 1)
            {
              v42 = vld1q_dup_s16(v136);
              v242 = v42;
              v244 = v42;
              v246 = v42;
              v248 = v42;
              v138 = v212;
              if (!v212)
              {
                goto LABEL_201;
              }
            }

            else if (v88[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 32, v136, v137, *v42.i64, *v39.i64, *v40.i64, *v41.i8);
              v138 = v212;
              if (!v212)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v242 = 0uLL;
              v244 = 0uLL;
              v246 = 0uLL;
              v248 = 0uLL;
              v138 = v212;
              if (!v212)
              {
                goto LABEL_201;
              }
            }
          }

          v141 = v213;
          if (v213)
          {
            v142 = 0;
            v143 = 32 * v210;
            v144 = 2 * v211;
            v145 = &v217.i8[v143 + v144];
            v146 = v208;
            v147 = v209;
            v148 = 2 * v213;
            if (2 * v213)
            {
              v149 = (2 * v213 - 1) >> 32 == 0;
            }

            else
            {
              v149 = 0;
            }

            v150 = !v149;
            v152 = v145 < v208 + v209 * (v138 - 1) + 2 * v213 && v208 < &__dst[2 * v138 + 30 + 2 * v210] + 2 * v213 + v144;
            v153 = v152 || v209 < 0;
            v154 = v148 & 0x1FFFFFFE0;
            v155 = v148 & 0x1FFFFFFF8;
            v156 = (v213 < 4) | v150 | v153;
            v157 = &v218.i8[v143 + v144];
            v158 = (v208 + 16);
            v159 = v145;
            v160 = v208;
            do
            {
              v161 = (v146 + v142 * v147);
              v162 = &v145[32 * v142];
              if (v156)
              {
                v163 = 0;
                goto LABEL_198;
              }

              if (v141 >= 0x10)
              {
                v165 = v158;
                v166 = v157;
                v167 = v148 & 0x1FFFFFFE0;
                do
                {
                  v42 = v165[-1];
                  v39 = *v165;
                  v166[-1] = v42;
                  *v166 = v39;
                  v166 += 2;
                  v165 += 2;
                  v167 -= 32;
                }

                while (v167);
                if (v148 == v154)
                {
                  goto LABEL_184;
                }

                v164 = v148 & 0x1FFFFFFE0;
                if ((v141 & 0xC) == 0)
                {
                  v161 += v154;
                  v162 += v154;
                  v163 = v148 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v164 = 0;
              }

              v162 += v155;
              v168 = v164 - (v148 & 0x1FFFFFFF8);
              v169 = (v160 + v164);
              v170 = &v159[v164];
              do
              {
                v171 = *v169++;
                v42.i64[0] = v171;
                *v170++ = v171;
                v168 += 8;
              }

              while (v168);
              if (v148 == v155)
              {
                goto LABEL_184;
              }

              v161 += v155;
              v163 = v148 & 0xFFFFFFF8;
LABEL_198:
              v172 = v163 + 1;
              do
              {
                v173 = *v161++;
                *v162++ = v173;
              }

              while (v148 > v172++);
LABEL_184:
              ++v142;
              v157 += 32;
              v158 = (v158 + v147);
              v160 += v147;
              v159 += 32;
            }

            while (v142 != v138);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v217, 32, v206, v207, v214, v215, *v42.i64, *v39.i64, *v40.i64, *v41.i64, *v17.i64, v18, v19, v20);
LABEL_202:
          if (v204)
          {
            memcpy(v203, v90, 0x200uLL);
          }

          v25 = v50 == v193 >> 4;
          v50 = v94;
          result = v201;
        }

        while (!v25);
        v25 = v22++ == v181;
      }

      while (!v25);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v249 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v200 = a8;
  v182 = a8 + a10 - 1;
  v201 = a1;
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
  v181 = v182 >> 4;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v204 = v24;
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
      v194 = 0;
LABEL_32:
      v191 = v27 - 4;
      v185 = v26 - 4;
      v33 = -1 << *(*(a1 + 208) + 48);
      v179 = (((~v33 + a5) & v33) + ~(-1 << v27)) >> v27;
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

    v194 = v32 >= v26;
    goto LABEL_32;
  }

  v194 = 0;
  v179 = 0;
  v185 = 0;
  v191 = 0;
LABEL_33:
  if (v18 <= v181)
  {
    v193 = a7 + a9 - 1;
    v178 = a7 >> 4;
    if (a7 >> 4 <= v193 >> 4)
    {
      v202 = v19 >> 4;
      v187 = v19 & 0xF;
      v176 = v20 & 0xF;
      v177 = v20 >> 4;
      v175 = ~(-1 << v185);
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v35.i8 = vcgt_u32(v34, 0x1F0000001FLL);
      v36.i64[0] = -1;
      v37.i64[0] = 0x2000000020;
      *v38.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v34, 4uLL))))))), *v35.i8);
      v184 = v38.i64[0];
      v186 = v38.i32[0] | v38.i32[1];
      v183 = v35.i64[0];
      v192 = a7;
      do
      {
        v39 = (16 * v18) | 0xF;
        if (16 * v18 <= v200)
        {
          v40 = v200;
        }

        else
        {
          v40 = 16 * v18;
        }

        if (v182 < v39)
        {
          v39 = v182;
        }

        v190 = v40 - 16 * v18;
        v41 = v39 - v40;
        v42 = v41 + 1;
        v43 = v41 != v176;
        v189 = v42;
        v44 = v42 != 16;
        v45 = v176 + 1;
        if (v18 != v177)
        {
          v45 = 16;
          v43 = v44;
        }

        v188 = v43;
        v46 = v178;
        v47 = v18 & v175;
        v198 = a3 + (v40 - v200) * a11;
        v199 = v45;
        v197 = v45;
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

          if (v193 < v49)
          {
            v49 = v193;
          }

          v51 = v49 - v50;
          v52 = v51 + 1;
          if (v46 == v202)
          {
            v53 = v187 + 1;
          }

          else
          {
            v53 = 16;
          }

          v54 = 1;
          if (16 * v18 >= v200 && v48 >= a7)
          {
            v55 = v51 != v187;
            if (v46 != v202)
            {
              v55 = v52 != 16;
            }

            v54 = v55 || v188;
          }

          if (v194)
          {
            if (v191 | v185)
            {
              v56 = 0;
              v57 = 0;
              v58 = v185 != 0;
              v59 = 1;
              v61 = v191 != 0;
              v60 = v185;
              v62 = v191;
              do
              {
                --v62;
                if (v61)
                {
                  v57 |= (v46 & ~(-1 << v191) & v59) << v56++;
                }

                else
                {
                  v62 = 0;
                }

                --v60;
                if (v58)
                {
                  v57 |= (v47 & v59) << v56++;
                }

                else
                {
                  v60 = 0;
                }

                v59 *= 2;
                --v56;
                v58 = v60 != 0;
                v61 = v62 != 0;
              }

              while (v60 | v62);
              v63 = v57 << 9;
            }

            else
            {
              v63 = 0;
            }

            v71 = v63 + *(result + 336) * ((v46 >> v191) + (v18 >> v185) * v179);
          }

          else if (v186)
          {
            v64 = 0;
            v65 = 0;
            v66 = 1;
            v67 = v183;
            v68 = BYTE4(v183);
            v70 = v184;
            v69 = HIDWORD(v184);
            do
            {
              --v69;
              if (v68)
              {
                v65 |= (v66 & v46) << v64++;
              }

              else
              {
                v69 = 0;
              }

              --v70;
              if (v67)
              {
                v65 |= (v66 & v18) << v64++;
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

          v76 = v75 + 15;
          if (v76 < 0x20)
          {
            v77 = 0;
          }

          else
          {
            v77 = 32 - __clz(~(-1 << -__clz((v76 >> 4) - 1)));
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
          v85 = (v198 + 2 * (v50 - a7));
          v203 = (a2 + v71);
          if (v204)
          {
            v86 = __dst;
            if (!(v54 & 1 | (v53 < 0x10u) | (v197 < 0x10)))
            {
              goto LABEL_109;
            }

            v87 = v52;
            v88 = (a4 + v83);
            v89 = v53;
            memcpy(__dst, (a2 + v71), sizeof(__dst));
            v52 = v87;
            v47 = v18 & v175;
            LOBYTE(v53) = v89;
            v84 = v88;
            result = v201;
          }

          else
          {
            v86 = (a2 + v71);
            if (!(v54 & 1 | (v53 < 0x10u) | (v197 < 0x10)))
            {
LABEL_109:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v85, a11, v86, v84, v53, v199);
              goto LABEL_110;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v206 = v86;
          v214 = v53;
          v215 = v199;
          v210 = v190;
          v211 = v50 - v48;
          v207 = v84;
          v208 = v85;
          v209 = a11;
          v212 = v189;
          v213 = v52;
          if (v54)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_110:
            a7 = v192;
            v90 = v46 + 1;
            goto LABEL_202;
          }

          v91 = *v84;
          a7 = v192;
          if (v91 == 63)
          {
            v93 = v86[1];
            v36 = v86[2];
            v37 = v86[3];
            v94 = vuzp2q_s32(*v86, v36);
            v217 = vuzp1q_s32(*v86, v36);
            v219 = v94;
            v38 = vuzp1q_s32(v93, v37);
            v35 = vuzp2q_s32(v93, v37);
            v221 = v38;
            v223 = v35;
            v92 = 64;
          }

          else if (v91 == 1)
          {
            v38 = vld1q_dup_s16(v86->i16);
            v217 = v38;
            v219 = v38;
            v221 = v38;
            v223 = v38;
            v92 = 2;
          }

          else if (*v84)
          {
            v95 = v84;
            v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v217, 32, v86, v91, *v38.i64, *v35.i64, *v36.i64, *v37.i8);
            v84 = v95;
          }

          else
          {
            v92 = 0;
            v217 = 0uLL;
            v219 = 0uLL;
            v221 = 0uLL;
            v223 = 0uLL;
          }

          v96 = v86->i64 + v92;
          v97 = v84[1];
          if (v97 == 63)
          {
            v99 = *(v96 + 16);
            v36 = *(v96 + 32);
            v37 = *(v96 + 48);
            v100 = vuzp2q_s32(*v96, v36);
            v225 = vuzp1q_s32(*v96, v36);
            v227 = v100;
            v38 = vuzp1q_s32(v99, v37);
            v35 = vuzp2q_s32(v99, v37);
            v229 = v38;
            v231 = v35;
            v98 = 64;
          }

          else if (v97 == 1)
          {
            v38 = vld1q_dup_s16(v96);
            v225 = v38;
            v227 = v38;
            v229 = v38;
            v231 = v38;
            v98 = 2;
          }

          else if (v84[1])
          {
            v101 = v84;
            v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v225, 32, v96, v97, *v38.i64, *v35.i64, *v36.i64, *v37.i8);
            v84 = v101;
          }

          else
          {
            v98 = 0;
            v225 = 0uLL;
            v227 = 0uLL;
            v229 = 0uLL;
            v231 = 0uLL;
          }

          v102 = v96 + v98;
          v103 = v84[2];
          if (v103 == 63)
          {
            v105 = *(v102 + 16);
            v36 = *(v102 + 32);
            v37 = *(v102 + 48);
            v106 = vuzp2q_s32(*v102, v36);
            v218 = vuzp1q_s32(*v102, v36);
            v220 = v106;
            v38 = vuzp1q_s32(v105, v37);
            v35 = vuzp2q_s32(v105, v37);
            v222 = v38;
            v224 = v35;
            v104 = 64;
          }

          else if (v103 == 1)
          {
            v38 = vld1q_dup_s16(v102);
            v218 = v38;
            v220 = v38;
            v222 = v38;
            v224 = v38;
            v104 = 2;
          }

          else if (v84[2])
          {
            v107 = v84;
            v104 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v218, 32, v102, v103, *v38.i64, *v35.i64, *v36.i64, *v37.i8);
            v84 = v107;
          }

          else
          {
            v104 = 0;
            v218 = 0uLL;
            v220 = 0uLL;
            v222 = 0uLL;
            v224 = 0uLL;
          }

          v108 = v102 + v104;
          v109 = v84[3];
          if (v109 == 63)
          {
            v111 = *(v108 + 16);
            v36 = *(v108 + 32);
            v37 = *(v108 + 48);
            v112 = vuzp2q_s32(*v108, v36);
            v226 = vuzp1q_s32(*v108, v36);
            v228 = v112;
            v38 = vuzp1q_s32(v111, v37);
            v35 = vuzp2q_s32(v111, v37);
            v230 = v38;
            v232 = v35;
            v110 = 64;
          }

          else if (v109 == 1)
          {
            v38 = vld1q_dup_s16(v108);
            v226 = v38;
            v228 = v38;
            v230 = v38;
            v232 = v38;
            v110 = 2;
          }

          else if (v84[3])
          {
            v113 = v84;
            v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v226, 32, v108, v109, *v38.i64, *v35.i64, *v36.i64, *v37.i8);
            v84 = v113;
          }

          else
          {
            v110 = 0;
            v226 = 0uLL;
            v228 = 0uLL;
            v230 = 0uLL;
            v232 = 0uLL;
          }

          v114 = v108 + v110;
          v115 = v84[4];
          if (v115 == 63)
          {
            v117 = *(v114 + 16);
            v36 = *(v114 + 32);
            v37 = *(v114 + 48);
            v118 = vuzp2q_s32(*v114, v36);
            v233 = vuzp1q_s32(*v114, v36);
            v235 = v118;
            v38 = vuzp1q_s32(v117, v37);
            v35 = vuzp2q_s32(v117, v37);
            v237 = v38;
            v239 = v35;
            v116 = 64;
          }

          else if (v115 == 1)
          {
            v38 = vld1q_dup_s16(v114);
            v233 = v38;
            v235 = v38;
            v237 = v38;
            v239 = v38;
            v116 = 2;
          }

          else if (v84[4])
          {
            v119 = v84;
            v116 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v233, 32, v114, v115, *v38.i64, *v35.i64, *v36.i64, *v37.i8);
            v84 = v119;
          }

          else
          {
            v116 = 0;
            v233 = 0uLL;
            v235 = 0uLL;
            v237 = 0uLL;
            v239 = 0uLL;
          }

          v120 = v114 + v116;
          v121 = v84[5];
          if (v121 == 63)
          {
            v123 = *(v120 + 16);
            v36 = *(v120 + 32);
            v37 = *(v120 + 48);
            v124 = vuzp2q_s32(*v120, v36);
            v241 = vuzp1q_s32(*v120, v36);
            v243 = v124;
            v38 = vuzp1q_s32(v123, v37);
            v35 = vuzp2q_s32(v123, v37);
            v245 = v38;
            v247 = v35;
            v122 = 64;
          }

          else if (v121 == 1)
          {
            v38 = vld1q_dup_s16(v120);
            v241 = v38;
            v243 = v38;
            v245 = v38;
            v247 = v38;
            v122 = 2;
          }

          else if (v84[5])
          {
            v125 = v84;
            v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v241, 32, v120, v121, *v38.i64, *v35.i64, *v36.i64, *v37.i8);
            v84 = v125;
          }

          else
          {
            v122 = 0;
            v241 = 0uLL;
            v243 = 0uLL;
            v245 = 0uLL;
            v247 = 0uLL;
          }

          v126 = v120 + v122;
          v127 = v84[6];
          if (v127 == 63)
          {
            v129 = *(v126 + 16);
            v36 = *(v126 + 32);
            v37 = *(v126 + 48);
            v130 = vuzp2q_s32(*v126, v36);
            v234 = vuzp1q_s32(*v126, v36);
            v236 = v130;
            v38 = vuzp1q_s32(v129, v37);
            v35 = vuzp2q_s32(v129, v37);
            v238 = v38;
            v240 = v35;
            v128 = 64;
          }

          else if (v127 == 1)
          {
            v38 = vld1q_dup_s16(v126);
            v234 = v38;
            v236 = v38;
            v238 = v38;
            v240 = v38;
            v128 = 2;
          }

          else if (v84[6])
          {
            v131 = v84;
            v128 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v234, 32, v126, v127, *v38.i64, *v35.i64, *v36.i64, *v37.i8);
            v84 = v131;
          }

          else
          {
            v128 = 0;
            v234 = 0uLL;
            v236 = 0uLL;
            v238 = 0uLL;
            v240 = 0uLL;
          }

          v132 = v126 + v128;
          v133 = v84[7];
          if (v133 == 63)
          {
            v136 = *(v132 + 16);
            v137 = *(v132 + 32);
            v138 = *(v132 + 48);
            v139 = vuzp2q_s32(*v132, v137);
            v242 = vuzp1q_s32(*v132, v137);
            v244 = v139;
            v246 = vuzp1q_s32(v136, v138);
            v248 = vuzp2q_s32(v136, v138);
            v90 = v46 + 1;
            v134 = v212;
            if (!v212)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v90 = v46 + 1;
            if (v133 == 1)
            {
              v135 = vld1q_dup_s16(v132);
              v242 = v135;
              v244 = v135;
              v246 = v135;
              v248 = v135;
              v134 = v212;
              if (!v212)
              {
                goto LABEL_201;
              }
            }

            else if (v84[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v242, 32, v132, v133, *v38.i64, *v35.i64, *v36.i64, *v37.i8);
              v134 = v212;
              if (!v212)
              {
                goto LABEL_201;
              }
            }

            else
            {
              v242 = 0uLL;
              v244 = 0uLL;
              v246 = 0uLL;
              v248 = 0uLL;
              v134 = v212;
              if (!v212)
              {
                goto LABEL_201;
              }
            }
          }

          v140 = v213;
          if (v213)
          {
            v141 = 0;
            v142 = 32 * v210;
            v143 = 2 * v211;
            v144 = &v217 + v142 + v143;
            v145 = v208;
            v146 = v209;
            v147 = 2 * v213;
            if (2 * v213)
            {
              v148 = (2 * v213 - 1) >> 32 == 0;
            }

            else
            {
              v148 = 0;
            }

            v149 = !v148;
            v151 = v144 < v208 + 2 * v213 + v209 * (v134 - 1) && v208 < (&__dst[2 * v134 + 30 + 2 * v210] + 2 * v213 + v143);
            v152 = v151 || v209 < 0;
            v153 = v147 & 0x1FFFFFFE0;
            v154 = v147 & 0x1FFFFFFF8;
            v155 = (v213 < 4) | v149 | v152;
            v156 = &v218.i8[v142 + v143];
            v157 = v208 + 1;
            v158 = v144;
            v159 = v208;
            do
            {
              v160 = v145 + v141 * v146;
              v161 = &v144[32 * v141];
              if (v155)
              {
                v162 = 0;
                goto LABEL_198;
              }

              if (v140 >= 0x10)
              {
                v164 = v157;
                v165 = v156;
                v166 = v147 & 0x1FFFFFFE0;
                do
                {
                  v167 = *v164;
                  *(v165 - 1) = v164[-1];
                  *v165 = v167;
                  v165 += 32;
                  v164 += 2;
                  v166 -= 32;
                }

                while (v166);
                if (v147 == v153)
                {
                  goto LABEL_184;
                }

                v163 = v147 & 0x1FFFFFFE0;
                if ((v140 & 0xC) == 0)
                {
                  v160 += v153;
                  v161 += v153;
                  v162 = v147 & 0xFFFFFFE0;
                  goto LABEL_198;
                }
              }

              else
              {
                v163 = 0;
              }

              v161 += v154;
              v168 = v163 - (v147 & 0x1FFFFFFF8);
              v169 = (v159 + v163);
              v170 = &v158[v163];
              do
              {
                v171 = *v169++;
                *v170 = v171;
                v170 += 8;
                v168 += 8;
              }

              while (v168);
              if (v147 == v154)
              {
                goto LABEL_184;
              }

              v160 += v154;
              v162 = v147 & 0xFFFFFFF8;
LABEL_198:
              v172 = v162 + 1;
              do
              {
                v173 = *v160++;
                *v161++ = v173;
              }

              while (v147 > v172++);
LABEL_184:
              ++v141;
              v156 += 32;
              v157 = (v157 + v146);
              v159 = (v159 + v146);
              v158 += 32;
            }

            while (v141 != v134);
          }

LABEL_201:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v217, 32, v206, v207, v214, v215);
LABEL_202:
          if (v204)
          {
            memcpy(v203, v86, 0x200uLL);
          }

          v21 = v46 == v193 >> 4;
          v46 = v90;
          result = v201;
        }

        while (!v21);
        v21 = v18++ == v181;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v236 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v187 = a8;
  v17 = a8 >> 4;
  v169 = a8 + a10 - 1;
  v171 = v169 >> 4;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v188 = a1;
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
  v191 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v180 = result;
  if (v17 <= v171)
  {
    v179 = a7 + a9 - 1;
    v168 = a7 >> 4;
    if (a7 >> 4 <= v179 >> 4)
    {
      result = a1;
      v189 = (a5 - 1) >> 4;
      v165 = a5 - 1;
      v172 = (a5 - 1) & 0xF;
      v166 = (a6 - 1) & 0xF;
      v167 = (a6 - 1) >> 4;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0xF0000000FLL);
      *v31.i8 = vcgt_u32(v30, 0x1F0000001FLL);
      v32.i64[0] = -1;
      v33.i64[0] = 0x2000000020;
      *v34.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v30, 4uLL))))))), *v31.i8);
      v177 = v34.i64[0];
      v178 = v34.i32[0] | v34.i32[1];
      v176 = v31.i64[0];
      v164 = 8 * v19 * v18;
      do
      {
        v35 = (16 * v17) | 0xF;
        if (16 * v17 <= v187)
        {
          v36 = v187;
        }

        else
        {
          v36 = 16 * v17;
        }

        if (v169 < v35)
        {
          v35 = v169;
        }

        v186 = 16 * v17;
        v175 = v36 - 16 * v17;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v166;
        v174 = v38;
        v40 = v38 != 16;
        v41 = v168;
        v42 = v166 + 1;
        if (v17 != v167)
        {
          v42 = 16;
          v39 = v40;
        }

        v173 = v39;
        v184 = a3 + (v36 - v187) * a11;
        v185 = v42;
        v183 = v42;
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

          if (v179 < v44)
          {
            v44 = v179;
          }

          v46 = v44 - v45;
          v47 = v46 + 1;
          if (v41 == v189)
          {
            v48 = v172 + 1;
          }

          else
          {
            v48 = 16;
          }

          v49 = 1;
          if (v186 >= v187 && v43 >= a7)
          {
            v50 = v46 != v172;
            if (v41 != v189)
            {
              v50 = v47 != 16;
            }

            v49 = v50 || v173;
          }

          if (v180)
          {
            v71 = 0;
            v72 = v164 >> (*(result + 57) != 0);
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
              v75 = 16;
              v74 = 1;
              v71 = 32;
            }

            else if (v72 == 512)
            {
              v71 = 16;
              v74 = 1;
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

            v154 = (v71 >> 4) - 1;
            if (v73)
            {
              v155 = 0;
              if (v74)
              {
                goto LABEL_208;
              }

LABEL_197:
              v156 = 32 - __clz(~(-1 << -__clz(((v75 + 15) >> 4) - 1)));
              if (v156 | v155)
              {
                goto LABEL_198;
              }

LABEL_209:
              v163 = 0;
            }

            else
            {
              v155 = 32 - __clz(~(-1 << -__clz(v154)));
              if ((v74 & 1) == 0)
              {
                goto LABEL_197;
              }

LABEL_208:
              v156 = 0;
              if (!v155)
              {
                goto LABEL_209;
              }

LABEL_198:
              v157 = 0;
              v158 = 0;
              v159 = v41 & v154;
              v160 = v155 != 0;
              v161 = v156 != 0;
              v162 = 1;
              do
              {
                --v155;
                if (v160)
                {
                  v158 |= (v162 & v159) << v157++;
                }

                else
                {
                  v155 = 0;
                }

                --v156;
                if (v161)
                {
                  v158 |= (v162 & v17 & ((v75 >> 4) - 1)) << v157++;
                }

                else
                {
                  v156 = 0;
                }

                v162 *= 2;
                --v157;
                v161 = v156 != 0;
                v160 = v155 != 0;
              }

              while (v156 | v155);
              v163 = v158 << 9;
              result = v188;
            }

            v58 = v163 + ((v43 / v71 + v186 / v75 * ((v71 + v165) / v71)) << 14);
            goto LABEL_52;
          }

          if (v178)
          {
            v51 = 0;
            v52 = 0;
            v53 = 1;
            v54 = v176;
            v55 = BYTE4(v176);
            v57 = v177;
            v56 = HIDWORD(v177);
            do
            {
              --v56;
              if (v55)
              {
                v52 |= (v53 & v41) << v51++;
              }

              else
              {
                v56 = 0;
              }

              --v57;
              if (v54)
              {
                v52 |= (v53 & v17) << v51++;
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

          v63 = v62 + 15;
          if (v63 < 0x20)
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
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 4) - 1)));
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
          v78 = v184 + 2 * (v45 - a7);
          v79 = (a2 + v58);
          __src = (a2 + v58);
          if (v191)
          {
            if (!(v49 & 1 | (v48 < 0x10u) | (v183 < 0x10)))
            {
              v79 = __dst;
LABEL_85:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v78, a11, v79, v76, v48, v185, *v34.i64, *v31.i64, *v32.i64, *v33.i64, *v26.i64, v27, v28, v29);
              goto LABEL_86;
            }

            v80 = v47;
            memcpy(__dst, __src, sizeof(__dst));
            v47 = v80;
            v79 = __dst;
            result = v188;
          }

          else if (!(v49 & 1 | (v48 < 0x10u) | (v183 < 0x10)))
          {
            goto LABEL_85;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v193 = v79;
          v201 = v48;
          v202 = v185;
          v197 = v175;
          v198 = v45 - v43;
          v194 = v76;
          v195 = v78;
          v196 = a11;
          v199 = v174;
          v200 = v47;
          if ((v49 & 1) == 0)
          {
            v81 = *v76;
            a7 = v77;
            if (v81 == 63)
            {
              v83 = *(v79 + 1);
              v32 = *(v79 + 2);
              v33 = *(v79 + 3);
              v26 = vuzp1q_s32(*v79, v32);
              v84 = vuzp2q_s32(*v79, v32);
              v204 = v26;
              v206 = v84;
              v34 = vuzp1q_s32(v83, v33);
              v31 = vuzp2q_s32(v83, v33);
              v208 = v34;
              v210 = v31;
              v82 = 64;
            }

            else if (v81 == 1)
            {
              v34 = vld1q_dup_s16(v79);
              v204 = v34;
              v206 = v34;
              v208 = v34;
              v210 = v34;
              v82 = 2;
            }

            else if (*v76)
            {
              v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v204, 32, v79, v81, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v82 = 0;
              v204 = 0uLL;
              v206 = 0uLL;
              v208 = 0uLL;
              v210 = 0uLL;
            }

            v85 = v79 + v82;
            v86 = v76[1];
            if (v86 == 63)
            {
              v88 = *(v85 + 16);
              v32 = *(v85 + 32);
              v33 = *(v85 + 48);
              v26 = vuzp1q_s32(*v85, v32);
              v89 = vuzp2q_s32(*v85, v32);
              v212 = v26;
              v214 = v89;
              v34 = vuzp1q_s32(v88, v33);
              v31 = vuzp2q_s32(v88, v33);
              v216 = v34;
              v218 = v31;
              v87 = 64;
            }

            else if (v86 == 1)
            {
              v34 = vld1q_dup_s16(v85);
              v212 = v34;
              v214 = v34;
              v216 = v34;
              v218 = v34;
              v87 = 2;
            }

            else if (v76[1])
            {
              v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v212, 32, v85, v86, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v87 = 0;
              v212 = 0uLL;
              v214 = 0uLL;
              v216 = 0uLL;
              v218 = 0uLL;
            }

            v90 = v85 + v87;
            v91 = v76[2];
            if (v91 == 63)
            {
              v93 = *(v90 + 16);
              v32 = *(v90 + 32);
              v33 = *(v90 + 48);
              v26 = vuzp1q_s32(*v90, v32);
              v94 = vuzp2q_s32(*v90, v32);
              v205 = v26;
              v207 = v94;
              v34 = vuzp1q_s32(v93, v33);
              v31 = vuzp2q_s32(v93, v33);
              v209 = v34;
              v211 = v31;
              v92 = 64;
            }

            else if (v91 == 1)
            {
              v34 = vld1q_dup_s16(v90);
              v205 = v34;
              v207 = v34;
              v209 = v34;
              v211 = v34;
              v92 = 2;
            }

            else if (v76[2])
            {
              v92 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v205, 32, v90, v91, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v92 = 0;
              v205 = 0uLL;
              v207 = 0uLL;
              v209 = 0uLL;
              v211 = 0uLL;
            }

            v95 = v90 + v92;
            v96 = v76[3];
            if (v96 == 63)
            {
              v98 = *(v95 + 16);
              v32 = *(v95 + 32);
              v33 = *(v95 + 48);
              v26 = vuzp1q_s32(*v95, v32);
              v99 = vuzp2q_s32(*v95, v32);
              v213 = v26;
              v215 = v99;
              v34 = vuzp1q_s32(v98, v33);
              v31 = vuzp2q_s32(v98, v33);
              v217 = v34;
              v219 = v31;
              v97 = 64;
            }

            else if (v96 == 1)
            {
              v34 = vld1q_dup_s16(v95);
              v213 = v34;
              v215 = v34;
              v217 = v34;
              v219 = v34;
              v97 = 2;
            }

            else if (v76[3])
            {
              v97 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v213, 32, v95, v96, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v97 = 0;
              v213 = 0uLL;
              v215 = 0uLL;
              v217 = 0uLL;
              v219 = 0uLL;
            }

            v100 = v95 + v97;
            v101 = v76[4];
            if (v101 == 63)
            {
              v103 = *(v100 + 16);
              v32 = *(v100 + 32);
              v33 = *(v100 + 48);
              v26 = vuzp1q_s32(*v100, v32);
              v104 = vuzp2q_s32(*v100, v32);
              v220 = v26;
              v222 = v104;
              v34 = vuzp1q_s32(v103, v33);
              v31 = vuzp2q_s32(v103, v33);
              v224 = v34;
              v226 = v31;
              v102 = 64;
            }

            else if (v101 == 1)
            {
              v34 = vld1q_dup_s16(v100);
              v220 = v34;
              v222 = v34;
              v224 = v34;
              v226 = v34;
              v102 = 2;
            }

            else if (v76[4])
            {
              v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v220, 32, v100, v101, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v102 = 0;
              v220 = 0uLL;
              v222 = 0uLL;
              v224 = 0uLL;
              v226 = 0uLL;
            }

            v105 = v100 + v102;
            v106 = v76[5];
            if (v106 == 63)
            {
              v108 = *(v105 + 16);
              v32 = *(v105 + 32);
              v33 = *(v105 + 48);
              v26 = vuzp1q_s32(*v105, v32);
              v109 = vuzp2q_s32(*v105, v32);
              v228 = v26;
              v230 = v109;
              v34 = vuzp1q_s32(v108, v33);
              v31 = vuzp2q_s32(v108, v33);
              v232 = v34;
              v234 = v31;
              v107 = 64;
            }

            else if (v106 == 1)
            {
              v34 = vld1q_dup_s16(v105);
              v228 = v34;
              v230 = v34;
              v232 = v34;
              v234 = v34;
              v107 = 2;
            }

            else if (v76[5])
            {
              v107 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v228, 32, v105, v106, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v107 = 0;
              v228 = 0uLL;
              v230 = 0uLL;
              v232 = 0uLL;
              v234 = 0uLL;
            }

            v110 = v105 + v107;
            v111 = v76[6];
            if (v111 == 63)
            {
              v113 = *(v110 + 16);
              v32 = *(v110 + 32);
              v33 = *(v110 + 48);
              v26 = vuzp1q_s32(*v110, v32);
              v114 = vuzp2q_s32(*v110, v32);
              v221 = v26;
              v223 = v114;
              v34 = vuzp1q_s32(v113, v33);
              v31 = vuzp2q_s32(v113, v33);
              v225 = v34;
              v227 = v31;
              v112 = 64;
            }

            else if (v111 == 1)
            {
              v34 = vld1q_dup_s16(v110);
              v221 = v34;
              v223 = v34;
              v225 = v34;
              v227 = v34;
              v112 = 2;
            }

            else if (v76[6])
            {
              v112 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v221, 32, v110, v111, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
            }

            else
            {
              v112 = 0;
              v221 = 0uLL;
              v223 = 0uLL;
              v225 = 0uLL;
              v227 = 0uLL;
            }

            v115 = v110 + v112;
            v116 = v76[7];
            if (v116 == 63)
            {
              v118 = *(v115 + 16);
              v32 = *(v115 + 32);
              v33 = *(v115 + 48);
              v26 = vuzp1q_s32(*v115, v32);
              v119 = vuzp2q_s32(*v115, v32);
              v229 = v26;
              v231 = v119;
              v34 = vuzp1q_s32(v118, v33);
              v31 = vuzp2q_s32(v118, v33);
              v233 = v34;
              v235 = v31;
              v117 = v199;
              if (v199)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (v116 != 1)
              {
                if (v76[7])
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v229, 32, v115, v116, *v34.i64, *v31.i64, *v32.i64, *v33.i8);
                  v117 = v199;
                  if (!v199)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v229 = 0uLL;
                  v231 = 0uLL;
                  v233 = 0uLL;
                  v235 = 0uLL;
                  v117 = v199;
                  if (!v199)
                  {
                    goto LABEL_178;
                  }
                }

LABEL_147:
                v120 = v200;
                if (!v200)
                {
                  goto LABEL_178;
                }

                v121 = 0;
                v122 = 32 * v197;
                v123 = 2 * v198;
                v124 = &v204.i8[v122 + v123];
                v125 = v195;
                v126 = v196;
                v127 = 2 * v200;
                if (2 * v200)
                {
                  v128 = (2 * v200 - 1) >> 32 == 0;
                }

                else
                {
                  v128 = 0;
                }

                v129 = !v128;
                v131 = v124 < v195 + v196 * (v117 - 1) + 2 * v200 && v195 < &__dst[2 * v117 + 30 + 2 * v197] + 2 * v200 + v123;
                v132 = v131 || v196 < 0;
                v133 = v127 & 0x1FFFFFFE0;
                v134 = v127 & 0x1FFFFFFF8;
                v135 = (v200 < 4) | v129 | v132;
                v136 = &v205.i8[v122 + v123];
                v137 = (v195 + 16);
                v138 = v124;
                v139 = v195;
                while (2)
                {
                  v140 = (v125 + v121 * v126);
                  v141 = &v124[32 * v121];
                  if (v135)
                  {
                    v142 = 0;
LABEL_175:
                    v151 = v142 + 1;
                    do
                    {
                      v152 = *v140++;
                      *v141++ = v152;
                    }

                    while (v127 > v151++);
                  }

                  else
                  {
                    if (v120 >= 0x10)
                    {
                      v144 = v137;
                      v145 = v136;
                      v146 = v127 & 0x1FFFFFFE0;
                      do
                      {
                        v34 = v144[-1];
                        v31 = *v144;
                        v145[-1] = v34;
                        *v145 = v31;
                        v145 += 2;
                        v144 += 2;
                        v146 -= 32;
                      }

                      while (v146);
                      if (v127 == v133)
                      {
                        goto LABEL_161;
                      }

                      v143 = v127 & 0x1FFFFFFE0;
                      if ((v120 & 0xC) == 0)
                      {
                        v140 += v133;
                        v141 += v133;
                        v142 = v127 & 0xFFFFFFE0;
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v143 = 0;
                    }

                    v141 += v134;
                    v147 = v143 - (v127 & 0x1FFFFFFF8);
                    v148 = (v139 + v143);
                    v149 = &v138[v143];
                    do
                    {
                      v150 = *v148++;
                      v34.i64[0] = v150;
                      *v149++ = v150;
                      v147 += 8;
                    }

                    while (v147);
                    if (v127 != v134)
                    {
                      v140 += v134;
                      v142 = v127 & 0xFFFFFFF8;
                      goto LABEL_175;
                    }
                  }

LABEL_161:
                  ++v121;
                  v136 += 32;
                  v137 = (v137 + v126);
                  v139 += v126;
                  v138 += 32;
                  if (v121 == v117)
                  {
                    goto LABEL_178;
                  }

                  continue;
                }
              }

              v34 = vld1q_dup_s16(v115);
              v229 = v34;
              v231 = v34;
              v233 = v34;
              v235 = v34;
              v117 = v199;
              if (v199)
              {
                goto LABEL_147;
              }
            }

LABEL_178:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(&v204, 32, v193, v194, v201, v202, *v34.i64, *v31.i64, *v32.i64, *v33.i64, *v26.i64, v27, v28, v29);
            if (!v191)
            {
              goto LABEL_26;
            }

            goto LABEL_179;
          }

          dispatch_sync(*(*(result + 8) + 16552), block);
LABEL_86:
          a7 = v77;
          if (!v191)
          {
            goto LABEL_26;
          }

LABEL_179:
          memcpy(__src, v79, 0x200uLL);
LABEL_26:
          v21 = v41++ == v179 >> 4;
          result = v188;
        }

        while (!v21);
        v21 = v17++ == v171;
      }

      while (!v21);
    }
  }

  return result;
}