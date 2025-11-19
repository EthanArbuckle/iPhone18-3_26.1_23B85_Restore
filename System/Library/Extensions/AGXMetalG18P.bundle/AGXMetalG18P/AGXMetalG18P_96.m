uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v81, a11, v83, v80, v49, v150);
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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

          v85 = (v83 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 64, v83, *v80));
          v86 = (v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 64, v85, v80[1]));
          v87 = (v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 64, v86, v80[2]));
          v88 = (v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 64, v87, v80[3]));
          v89 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 64, v88, v80[4]));
          v90 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 64, v89, v80[5]));
          v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 64, v90, v80[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v176, 64, (v90 + v91), v80[7]);
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

          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v169, 64, v158, v159, v166, v167);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
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
              block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
              v115 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v224, 64, v89, *v83));
              v116 = (v115 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v226, 64, v115, v83[1]));
              v117 = (v116 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v225, 64, v116, v83[2]));
              v118 = (v117 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v227, 64, v117, v83[3]));
              v119 = (v118 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v228, 64, v118, v83[4]));
              v120 = (v119 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v230, 64, v119, v83[5]));
              v121 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v229, 64, v120, v83[6]);
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v231, 64, (v120 + v121), v83[7]);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v70, a11, v75, v69, v41, v150);
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
            v76 = (v75 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v168, 64, v75, *v69));
            v77 = (v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v170, 64, v76, v69[1]));
            v78 = (v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v169, 64, v77, v69[2]));
            v79 = (v78 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v171, 64, v78, v69[3]));
            v80 = (v79 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v172, 64, v79, v69[4]));
            v81 = (v80 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v174, 64, v80, v69[5]));
            v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v173, 64, v81, v69[6]);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v175, 64, (v81 + v82), v69[7]);
            v83 = v163;
            a7 = v143;
            if (!v163 || (v84 = v164) == 0)
            {
LABEL_120:
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v168, 64, v157, v158, v165, v166);
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

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
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
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
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
          v102 = (v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v217, 64, v77, *v71));
          v103 = (v102 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v219, 64, v102, v71[1]));
          v104 = (v103 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v218, 64, v103, v71[2]));
          v105 = (v104 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v220, 64, v104, v71[3]));
          v106 = (v105 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v221, 64, v105, v71[4]));
          v107 = (v106 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v223, 64, v106, v71[5]));
          v108 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v222, 64, v107, v71[6]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(v224, 64, (v107 + v108), v71[7]);
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

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v161 = v21;
  v162 = v22;
  v144 = v23;
  v24 = v12;
  v186 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v165 = v14;
  v146 = v14 + a10 - 1;
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
  v145 = v146 >> 3;
  v30 = (v26 & 0xD00) == 0 || v26 == 768;
  v31 = v26 & 0xE00;
  v33 = !v30 && v31 != 1024;
  v169 = v33;
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
      v160 = 0;
LABEL_32:
      v156 = v35 - 4;
      v149 = v34 - 3;
      v41 = -1 << *(*(v24 + 208) + 48);
      v143 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v160 = v40 >= v34;
    goto LABEL_32;
  }

  v160 = 0;
  v143 = 0;
  v149 = 0;
  v156 = 0;
LABEL_33:
  if (v27 <= v145)
  {
    v159 = v16 + a9 - 1;
    v142 = v16 >> 4;
    if (v16 >> 4 <= v159 >> 4)
    {
      v167 = v28 >> 4;
      v151 = v28 & 0xF;
      v157 = (v28 & 0xF) + 1;
      v140 = v29 & 7;
      v141 = v29 >> 3;
      v139 = (v29 & 7) + 1;
      v150 = 4 * a11;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v43 = vcgt_u32(v42, 0x1F0000000FLL);
      v148 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v42, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v43);
      v147 = v43;
      v166 = v24;
      v158 = v16;
      do
      {
        v44 = (8 * v27) | 7;
        if (8 * v27 <= v165)
        {
          v45 = v165;
        }

        else
        {
          v45 = 8 * v27;
        }

        if (v146 < v44)
        {
          v44 = v146;
        }

        v155 = v45 - 8 * v27;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v140;
        v154 = v47;
        v49 = v47 != 8;
        v50 = v139;
        if (v27 != v141)
        {
          v50 = 8;
          v48 = v49;
        }

        v152 = v48;
        v153 = v50;
        v51 = v142;
        v164 = v144 + (v45 - v165) * a11;
        v163 = v50;
        do
        {
          v52 = 16 * v51;
          v53 = 16 * (v51 + 1) - 1;
          if (16 * v51 <= v16)
          {
            v54 = v16;
          }

          else
          {
            v54 = 16 * v51;
          }

          if (v159 < v53)
          {
            v53 = v159;
          }

          v55 = v53 - v54;
          v56 = v55 + 1;
          if (v51 == v167)
          {
            v57 = v157;
          }

          else
          {
            v57 = 16;
          }

          v58 = 1;
          if (8 * v27 >= v165 && v52 >= v16)
          {
            v59 = v55 != v151;
            if (v51 != v167)
            {
              v59 = v56 != 16;
            }

            v58 = v59 || v152;
          }

          if (v160)
          {
            if (v156 | v149)
            {
              v60 = 0;
              v61 = 0;
              v62 = v156 != 0;
              v63 = 1;
              v65 = v149 != 0;
              v64 = v149;
              v66 = v156;
              do
              {
                --v64;
                if (v65)
                {
                  v61 |= (v27 & ~(-1 << v149) & v63) << v60++;
                }

                else
                {
                  v64 = 0;
                }

                --v66;
                if (v62)
                {
                  v61 |= (v51 & ~(-1 << v156) & v63) << v60++;
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
              v67 = v61 << 11;
            }

            else
            {
              v67 = 0;
            }

            v75 = v67 + *(v24 + 336) * ((v51 >> v156) + (v27 >> v149) * v143);
          }

          else if (v148)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v72 = v147.i8[0];
            v71 = v147.i8[4];
            v73 = v148.i32[0];
            v74 = v148.i32[1];
            do
            {
              --v73;
              if (v72)
              {
                v69 |= (v70 & v27) << v68++;
              }

              else
              {
                v73 = 0;
              }

              --v74;
              if (v71)
              {
                v69 |= (v70 & v51) << v68++;
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

          v77 = v76 + 15;
          if (v77 < 0x20)
          {
            v78 = 0;
          }

          else
          {
            v78 = 32 - __clz(~(-1 << -__clz((v77 >> 4) - 1)));
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
          v88 = (v162 + v87);
          v89 = (v164 + 16 * (v54 - v16));
          v168 = (v161 + v75);
          if (v169)
          {
            if (!(v58 & 1 | (v57 < 0x10u) | (v163 < 8)))
            {
              v91 = __dst;
LABEL_111:
              v92 = (v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v91, v88, v89, a11));
              v93 = (v92 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v92, v88 + 1, (v89 + v150), a11));
              v94 = (v93 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v93, v88 + 2, v89 + 8, a11));
              v95 = v88 + 3;
              v96 = (v89 + v150 + 128);
              v97 = a11;
              goto LABEL_112;
            }

            v90 = v56;
            memcpy(__dst, (v161 + v75), sizeof(__dst));
            v56 = v90;
            v91 = __dst;
          }

          else
          {
            v91 = (v161 + v75);
            if (!(v58 & 1 | (v57 < 0x10u) | (v163 < 8)))
            {
              goto LABEL_111;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v166;
          v171 = v91;
          v179 = v57;
          v180 = v153;
          v175 = v155;
          v176 = v54 - v52;
          v172 = v88;
          v173 = v89;
          v174 = a11;
          v177 = v154;
          v178 = v56;
          if (v58)
          {
            dispatch_sync(*(*(v166 + 8) + 16552), block);
            v24 = v166;
            goto LABEL_114;
          }

          v98 = v91->u64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v182, 256, v91, *v88);
          v99 = v98 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v184, 256, v98, v88[1]);
          v100 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v183, 256, v99, v88[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v185, 256, v99 + v100, v88[3]);
          v101 = v177;
          if (v177)
          {
            v102 = v178;
            if (v178)
            {
              v103 = 0;
              v104 = v175 << 8;
              v105 = 16 * v176;
              v106 = &v182[0].i8[v104 + v105];
              v107 = v173;
              v108 = v174;
              v109 = 16 * v178;
              if (16 * v178)
              {
                v110 = (16 * v178 - 1) >> 32 == 0;
              }

              else
              {
                v110 = 0;
              }

              v111 = !v110;
              v113 = v106 < &v173[v178].i8[v174 * (v177 - 1)] && v173 < &__dst[256 * v177 + 1792 + 256 * v175 + 16 * v178 + v105];
              v114 = v109 & 0x1FFFFFFE0;
              v115 = v111 | (v174 < 0) | v113;
              v116 = (&v182[1] + v104 + v105);
              v117 = v173 + 1;
              v118 = v106;
              v119 = v173;
              do
              {
                v120 = &v107->i8[v103 * v108];
                v121 = &v106[256 * v103];
                if (v115)
                {
                  v122 = 0;
                }

                else
                {
                  if (v102 == 1)
                  {
                    v126 = 0;
LABEL_139:
                    v127 = -16 * v102 + v126;
                    v128 = &v119->i8[v126];
                    v129 = &v118[v126];
                    do
                    {
                      v130 = *v128;
                      v128 += 16;
                      *v129 = v130;
                      v129 += 16;
                      v127 += 16;
                    }

                    while (v127);
                    goto LABEL_131;
                  }

                  v131 = v117;
                  v132 = v116;
                  v133 = v109 & 0x1FFFFFFE0;
                  do
                  {
                    v134 = *v131;
                    v132[-1] = v131[-1];
                    *v132 = v134;
                    v132 += 2;
                    v131 += 2;
                    v133 -= 32;
                  }

                  while (v133);
                  if (v109 == v114)
                  {
                    goto LABEL_131;
                  }

                  v126 = v109 & 0x1FFFFFFE0;
                  if (v102)
                  {
                    goto LABEL_139;
                  }

                  v120 += v114;
                  v121 += v114;
                  v122 = v109 & 0xFFFFFFE0;
                }

                v123 = v122 + 1;
                do
                {
                  v124 = *v120++;
                  *v121++ = v124;
                }

                while (v109 > v123++);
LABEL_131:
                ++v103;
                v116 += 16;
                v117 = (v117 + v108);
                v119 = (v119 + v108);
                v118 += 256;
              }

              while (v103 != v101);
            }
          }

          v136 = v171;
          v135 = v172;
          v137 = v179;
          v138 = v180;
          if (v179 && v180)
          {
            v136 = (v136 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v171, v172, v182, 256));
            if (!v137)
            {
              goto LABEL_155;
            }
          }

          else
          {
            *v172 = 0;
            if (!v137)
            {
              goto LABEL_155;
            }
          }

          if (v138 >= 5)
          {
            v136 = (v136 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v136, v135 + 1, v184, 256));
            if (v137 < 9)
            {
              goto LABEL_158;
            }

            goto LABEL_156;
          }

LABEL_155:
          v135[1] = 0;
          if (v137 < 9)
          {
            goto LABEL_158;
          }

LABEL_156:
          if (!v138)
          {
LABEL_158:
            v135[2] = 0;
            if (v137 < 9)
            {
              goto LABEL_161;
            }

            goto LABEL_159;
          }

          v136 = (v136 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v136, v135 + 2, v183, 256));
LABEL_159:
          if (v138 < 5)
          {
LABEL_161:
            v135[3] = 0;
            goto LABEL_113;
          }

          v95 = v135 + 3;
          v96 = v185;
          v94 = v136;
          v97 = 256;
LABEL_112:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v94, v95, v96, v97);
LABEL_113:
          v24 = v166;
LABEL_114:
          result = v168;
          v16 = v158;
          if (v169)
          {
            result = memcpy(v168, v91, 0x800uLL);
          }

          v30 = v51++ == v159 >> 4;
        }

        while (!v30);
        v30 = v27++ == v145;
      }

      while (!v30);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v419 = v21;
  v359 = v22;
  v418 = v23;
  v24 = v12;
  v455 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v422 = v14;
  v361 = v14 + a10 - 1;
  v423 = v24;
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
  v360 = v361 >> 3;
  v29 = (v25 & 0xD00) == 0 || v25 == 768;
  v30 = v25 & 0xE00;
  v32 = !v29 && v30 != 1024;
  v437 = v32;
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
      v417 = 0;
LABEL_32:
      v372 = v35 - 4;
      v364 = v34 - 3;
      v41 = -1 << *(*(v24 + 208) + 48);
      v358 = (((~v41 + v20) & v41) + ~(-1 << v35)) >> v35;
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

    v417 = v40 >= v34;
    goto LABEL_32;
  }

  v417 = 0;
  v358 = 0;
  v364 = 0;
  v372 = 0;
LABEL_33:
  if (v26 <= v360)
  {
    v416 = v16 + a9 - 1;
    v357 = v16 >> 4;
    if (v16 >> 4 <= v416 >> 4)
    {
      v424 = v27 >> 4;
      v367 = v27 & 0xF;
      v414 = (v27 & 0xF) + 1;
      v355 = v28 & 7;
      v356 = v28 >> 3;
      v354 = (v28 & 7) + 1;
      v353 = ~(-1 << v364);
      v366 = 4 * a11;
      v42 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v43 = vcgt_u32(v42, 0x1F0000000FLL);
      v363 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v42, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v43);
      v362 = v43;
      v365 = 2 * a11;
      v415 = v16;
      do
      {
        v44 = (8 * v26) | 7;
        if (8 * v26 <= v422)
        {
          v45 = v422;
        }

        else
        {
          v45 = 8 * v26;
        }

        if (v361 < v44)
        {
          v44 = v361;
        }

        v371 = v45 - 8 * v26;
        v46 = v44 - v45;
        v47 = v46 + 1;
        v48 = v46 != v355;
        v370 = v47;
        v49 = v47 != 8;
        v50 = v354;
        if (v26 != v356)
        {
          v50 = 8;
          v48 = v49;
        }

        v368 = v48;
        v51 = v357;
        v52 = v26 & v353;
        v421 = v359 + (v45 - v422) * a11;
        v369 = v50;
        v420 = v50;
        do
        {
          v53 = 16 * v51;
          v54 = 16 * (v51 + 1) - 1;
          if (16 * v51 <= v16)
          {
            v55 = v16;
          }

          else
          {
            v55 = 16 * v51;
          }

          if (v416 < v54)
          {
            v54 = v416;
          }

          v56 = v54 - v55;
          v57 = v56 + 1;
          if (v51 == v424)
          {
            v58 = v414;
          }

          else
          {
            v58 = 16;
          }

          v59 = 1;
          if (8 * v26 >= v422 && v53 >= v16)
          {
            v60 = v56 != v367;
            if (v51 != v424)
            {
              v60 = v57 != 16;
            }

            v59 = v60 || v368;
          }

          if (v417)
          {
            if (v372 | v364)
            {
              v61 = 0;
              v62 = 0;
              v63 = 1;
              v64 = v364 != 0;
              v65 = v372 != 0;
              v66 = v364;
              v67 = v372;
              do
              {
                --v66;
                if (v64)
                {
                  v62 |= (v52 & v63) << v61++;
                }

                else
                {
                  v66 = 0;
                }

                --v67;
                if (v65)
                {
                  v62 |= (v51 & ~(-1 << v372) & v63) << v61++;
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

            v76 = v68 + *(result + 336) * ((v51 >> v372) + (v26 >> v364) * v358);
          }

          else if (v363)
          {
            v69 = 0;
            v70 = 0;
            v71 = 1;
            v72 = v362.i8[0];
            v73 = v362.i8[4];
            v74 = v363.i32[0];
            v75 = v363.i32[1];
            do
            {
              --v74;
              if (v72)
              {
                v70 |= (v71 & v26) << v69++;
              }

              else
              {
                v74 = 0;
              }

              --v75;
              if (v73)
              {
                v70 |= (v71 & v51) << v69++;
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

          v81 = v80 + 7;
          if (v81 < 0x10)
          {
            v82 = 0;
            if (!v79)
            {
LABEL_103:
              v88 = 0;
              goto LABEL_104;
            }
          }

          else
          {
            v82 = 32 - __clz(~(-1 << -__clz((v81 >> 3) - 1)));
            if (!(v82 | v79))
            {
              goto LABEL_103;
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
LABEL_104:
          v89 = (v419 + v88);
          v90 = (v421 + 16 * (v55 - v16));
          v91 = (v418 + v76);
          if (v437)
          {
            if (!(v59 & 1 | (v58 < 0x10u) | (v420 < 8)))
            {
              v95 = __dst;
LABEL_112:
              v98 = v90[1];
              v99 = v90[2];
              v100 = v90[3];
              v101 = *(v90 + a11);
              v102 = *(v90 + a11 + 16);
              v103 = *(v90 + a11 + 32);
              v104 = *(v90 + a11 + 48);
              v105 = v90[4];
              v106 = v90[5];
              v107 = v90[6];
              v108 = v90[7];
              v393 = *(v90 + a11 + 64);
              v397 = *(v90 + a11 + 80);
              v401 = *(v90 + a11 + 96);
              v407 = *(v90 + a11 + 112);
              v110 = *(v90 + 2 * a11);
              v111 = *(v90 + v365 + 16);
              v112 = *(v90 + v365 + 32);
              v113 = *(v90 + v365 + 48);
              v109 = (v90 + v365 + a11);
              v114 = *v109;
              v115 = v109[1];
              v116 = v109[2];
              v117 = v109[3];
              v109 += 4;
              v118 = *(v90 + v365 + 64);
              v119 = *(v90 + v365 + 80);
              v120 = *(v90 + v365 + 96);
              v121 = *(v90 + v365 + 112);
              v377 = *v109;
              v381 = v109[1];
              v385 = v109[2];
              v389 = v109[3];
              *v95 = *v90;
              v95[1] = v98;
              v95[2] = v101;
              v95[3] = v102;
              v95[4] = v99;
              v95[5] = v100;
              v95[6] = v103;
              v95[7] = v104;
              v95[8] = v110;
              v95[9] = v111;
              v95[10] = v114;
              v95[11] = v115;
              v95[12] = v112;
              v95[13] = v113;
              v95[14] = v116;
              v95[15] = v117;
              v95[16] = v105;
              v95[17] = v106;
              v95[18] = v393;
              v95[19] = v397;
              v95[20] = v107;
              v95[21] = v108;
              v95[22] = v401;
              v95[23] = v407;
              v95[24] = v118;
              v95[25] = v119;
              v95[26] = v377;
              v95[27] = v381;
              v95[28] = v120;
              v95[29] = v121;
              v95[30] = v385;
              v95[31] = v389;
              *v89 = -1;
              v122 = *(v90 + v366 + 32);
              v123 = *(v90 + v366 + 48);
              v124 = *(v90 + v366 + a11 + 32);
              v125 = *(v90 + v366 + a11 + 48);
              v126 = *(v90 + v366 + 96);
              v128 = *(v90 + 2 * a11 + v366);
              v129 = *(v90 + v366 + v365 + 16);
              v127 = (v90 + v366 + v365 + a11);
              v130 = *(v90 + v366 + 112);
              v131 = *v127;
              v132 = v127[1];
              v133 = v127[2];
              v134 = v127[3];
              v127 += 4;
              v135 = *(v90 + v366 + a11 + 96);
              v136 = *(v90 + v366 + a11 + 112);
              v378 = *(v90 + v366 + 64);
              v382 = *(v90 + v366 + 80);
              v386 = *(v90 + v366 + a11 + 64);
              v390 = *(v90 + v366 + a11 + 80);
              v137 = *(v90 + v366 + v365 + 32);
              v138 = *(v90 + v366 + v365 + 48);
              v139 = v133;
              v140 = *(v90 + v366 + v365 + 64);
              v141 = *(v90 + v366 + v365 + 80);
              v142 = *(v90 + v366 + v365 + 96);
              v143 = *(v90 + v366 + v365 + 112);
              v144 = v131;
              v145 = v132;
              v146 = *v127;
              v147 = v127[1];
              v148 = v127[2];
              v149 = v127[3];
              v150 = *(v90 + v366 + 16);
              v151 = *(v90 + v366 + a11);
              v152 = *(v90 + v366 + a11 + 16);
              v95[32] = *(v90 + 4 * a11);
              v95[33] = v150;
              v95[34] = v151;
              v95[35] = v152;
              v95[36] = v122;
              v95[37] = v123;
              v95[38] = v124;
              v95[39] = v125;
              v95[40] = v128;
              v95[41] = v129;
              v95[42] = v144;
              v95[43] = v145;
              v95[44] = v137;
              v95[45] = v138;
              v95[46] = v139;
              v95[47] = v134;
              v95[48] = v378;
              v95[49] = v382;
              v95[50] = v386;
              v95[51] = v390;
              v95[52] = v126;
              v95[53] = v130;
              v95[54] = v135;
              v95[55] = v136;
              v95[56] = v140;
              v95[57] = v141;
              v95[58] = v146;
              v95[59] = v147;
              v95[60] = v142;
              v95[61] = v143;
              v95[62] = v148;
              v95[63] = v149;
              v89[1] = -1;
              v153 = (v90 + a11 + 128);
              v154 = (v90 + v365 + 128);
              v155 = *v153;
              v156 = v153[1];
              v157 = v153[2];
              v158 = v153[3];
              v153 += 4;
              v394 = v90[10];
              v398 = v90[11];
              v408 = v158;
              v159 = v156;
              v160 = v90[9];
              v161 = v159;
              v162 = *v153;
              v163 = v153[1];
              v164 = v153[2];
              v165 = v153[3];
              v166 = v90[14];
              v167 = v154 + 4;
              v169 = *v154;
              v170 = v154[1];
              v171 = v154[2];
              v172 = v154[3];
              v168 = (v154 + a11);
              v173 = v90[15];
              v174 = *v168;
              v175 = v168[1];
              v176 = v168[2];
              v177 = v168[3];
              v168 += 4;
              v379 = v90[12];
              v383 = v90[13];
              v178 = *v167;
              v179 = v167[1];
              v180 = v167[2];
              v181 = v167[3];
              v182 = *v168;
              v183 = v168[1];
              v184 = v168[2];
              v185 = v168[3];
              v95[64] = v90[8];
              v95[65] = v160;
              v95[66] = v155;
              v95[67] = v161;
              v95[68] = v394;
              v95[69] = v398;
              v95[70] = v157;
              v95[71] = v408;
              v95[72] = v169;
              v95[73] = v170;
              v95[74] = v174;
              v95[75] = v175;
              v95[76] = v171;
              v95[77] = v172;
              v95[78] = v176;
              v95[79] = v177;
              v95[80] = v379;
              v95[81] = v383;
              v95[82] = v162;
              v95[83] = v163;
              v95[84] = v166;
              v95[85] = v173;
              v95[86] = v164;
              v95[87] = v165;
              v95[88] = v178;
              v95[89] = v179;
              v95[90] = v182;
              v95[91] = v183;
              v95[92] = v180;
              v95[93] = v181;
              v95[94] = v184;
              v95[95] = v185;
              v89[2] = -1;
              v186 = (v90 + v366 + a11 + 128);
              v188 = *(v90 + v366 + 144);
              v187 = (v90 + v366 + v365 + 128);
              v189 = *v186;
              v190 = v186[1];
              v191 = v186[2];
              v192 = v186[3];
              v186 += 4;
              v373 = *(v90 + v366 + 192);
              v374 = *(v90 + v366 + 208);
              v375 = *(v90 + v366 + 224);
              v376 = *(v90 + v366 + 240);
              v395 = *v186;
              v399 = v186[1];
              v402 = v186[2];
              v409 = v186[3];
              v194 = *v187;
              v195 = v187[1];
              v196 = v187[2];
              v197 = v187[3];
              v193 = (v187 + a11);
              v187 += 4;
              v198 = *v193;
              v199 = v193[1];
              v200 = v193[2];
              v201 = v193[3];
              v193 += 4;
              v202 = *(v90 + v366 + 160);
              v203 = *v187;
              v204 = v187[1];
              v205 = v187[2];
              v206 = v187[3];
              v207 = *(v90 + v366 + 176);
              v380 = *v193;
              v384 = v193[1];
              v387 = v193[2];
              v391 = v193[3];
              v95[96] = *(v90 + v366 + 128);
              v95[97] = v188;
              v95[98] = v189;
              v95[99] = v190;
              v95[100] = v202;
              v95[101] = v207;
              v95[102] = v191;
              v95[103] = v192;
              v95[104] = v194;
              v95[105] = v195;
              v95[106] = v198;
              v95[107] = v199;
              v95[108] = v196;
              v95[109] = v197;
              v95[110] = v200;
              v95[111] = v201;
              v95[112] = v373;
              v95[113] = v374;
              v95[114] = v395;
              v95[115] = v399;
              v95[116] = v375;
              v95[117] = v376;
              v95[118] = v402;
              v95[119] = v409;
              v95[120] = v203;
              v95[121] = v204;
              v95[122] = v380;
              v95[123] = v384;
              v95[124] = v205;
              v95[125] = v206;
              v95[126] = v387;
              v95[127] = v391;
              v89[3] = -1;
              v97 = v51 + 1;
              if (!v437)
              {
                goto LABEL_46;
              }

LABEL_160:
              memcpy(v91, v95, 0x800uLL);
              result = v423;
              goto LABEL_46;
            }

            v92 = (v418 + v76);
            v93 = (v419 + v88);
            v94 = v58;
            memcpy(__dst, v91, sizeof(__dst));
            v58 = v94;
            v89 = v93;
            v95 = __dst;
            v91 = v92;
            result = v423;
          }

          else
          {
            v95 = (v418 + v76);
            if (!(v59 & 1 | (v58 < 0x10u) | (v420 < 8)))
            {
              goto LABEL_112;
            }
          }

          v96 = v91;
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v439 = v95;
          v447 = v58;
          v448 = v369;
          v443 = v371;
          v444 = v55 - v53;
          v440 = v89;
          v441 = v90;
          v442 = a11;
          v445 = v370;
          v446 = v57;
          if (v59)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v423;
            v97 = v51 + 1;
            v91 = v96;
            v52 = v26 & v353;
            if (!v437)
            {
              goto LABEL_46;
            }

            goto LABEL_160;
          }

          v208 = v95->n128_u64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v450, 256, v95, *v89);
          v209 = v208 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v453, 256, v208, v89[1]);
          v210 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v452, 256, v209, v89[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v454, 256, v209 + v210, v89[3]);
          v211 = v445;
          if (v445)
          {
            v212 = v446;
            if (v446)
            {
              v213 = 0;
              v214 = v444;
              v215 = &v450[16 * v443 + v214];
              v216 = v441;
              v217 = v442;
              v218 = 16 * v446;
              if (16 * v446)
              {
                v219 = (16 * v446 - 1) >> 32 == 0;
              }

              else
              {
                v219 = 0;
              }

              v220 = !v219;
              v222 = v215 < (&v441[v446] + v442 * (v445 - 1)) && v441 < &__dst[256 * v445 + 1792 + 256 * v443 + 16 * v446 + v214 * 16];
              v223 = v218 & 0x1FFFFFFE0;
              v224 = v220 | (v442 < 0) | v222;
              v225 = &v451[16 * v443 + v214];
              v226 = &v441[1];
              v227 = v215;
              v228 = v441;
              do
              {
                v229 = v216 + v213 * v217;
                v230 = &v215[16 * v213];
                if (v224)
                {
                  v231 = 0;
                }

                else
                {
                  if (v212 == 1)
                  {
                    v235 = 0;
LABEL_137:
                    v236 = -16 * v212 + v235;
                    v237 = (v228 + v235);
                    v238 = (v227->n128_u64 + v235);
                    do
                    {
                      v239 = *v237++;
                      *v238++ = v239;
                      v236 += 16;
                    }

                    while (v236);
                    goto LABEL_129;
                  }

                  v240 = v226;
                  v241 = v225;
                  v242 = v218 & 0x1FFFFFFE0;
                  do
                  {
                    v243 = *v240;
                    *(v241 - 1) = *(v240 - 1);
                    *v241 = v243;
                    v241 += 2;
                    v240 += 2;
                    v242 -= 32;
                  }

                  while (v242);
                  if (v218 == v223)
                  {
                    goto LABEL_129;
                  }

                  v235 = v218 & 0x1FFFFFFE0;
                  if (v212)
                  {
                    goto LABEL_137;
                  }

                  v229 += v223;
                  v230 = (v230 + v223);
                  v231 = v218 & 0xFFFFFFE0;
                }

                v232 = v231 + 1;
                do
                {
                  v233 = *v229++;
                  v230->n128_u8[0] = v233;
                  v230 = (v230 + 1);
                }

                while (v218 > v232++);
LABEL_129:
                ++v213;
                v225 += 16;
                v226 = (v226 + v217);
                v228 = (v228 + v217);
                v227 += 16;
              }

              while (v213 != v211);
            }
          }

          v244 = 0;
          v245 = v439;
          v246 = v440;
          v247 = v447;
          v248 = v448;
          if (v447)
          {
            result = v423;
            v91 = v96;
            if (v448)
            {
              v249 = v451[0];
              v250 = v451[3];
              v251 = v451[4];
              v252 = v451[5];
              v253 = v451[6];
              v396 = v452[12];
              v400 = v452[13];
              v403 = v452[14];
              v410 = v452[15];
              v254 = v452[24];
              v255 = v452[25];
              v256 = v452[26];
              v257 = v452[27];
              v258 = v452[40];
              v259 = v452[41];
              v260 = v452[42];
              v261 = v452[43];
              v262 = v451[1];
              v263 = v451[2];
              v264 = v452[28];
              v265 = v452[29];
              v266 = v452[30];
              v267 = v452[31];
              v388 = v452[10];
              v392 = v452[11];
              v268 = v452[8];
              v269 = v452[9];
              v270 = v452[44];
              v271 = v452[45];
              v272 = v452[46];
              v273 = v452[47];
              *v439 = v450[0];
              v245[1] = v249;
              v245[2] = v268;
              v245[3] = v269;
              v245[4] = v262;
              v245[5] = v263;
              v245[6] = v388;
              v245[7] = v392;
              v245[8] = v254;
              v245[9] = v255;
              v245[10] = v258;
              v245[11] = v259;
              v245[12] = v256;
              v245[13] = v257;
              v245[14] = v260;
              v245[15] = v261;
              v245[16] = v250;
              v245[17] = v251;
              v245[18] = v396;
              v245[19] = v400;
              v245[20] = v252;
              v245[21] = v253;
              v245[22] = v403;
              v245[23] = v410;
              v245[24] = v264;
              v245[25] = v265;
              v245[26] = v270;
              v245[27] = v271;
              v245[28] = v266;
              v245[29] = v267;
              v245[30] = v272;
              v245[31] = v273;
              v245 += 32;
              v244 = -1;
            }

            v97 = v51 + 1;
          }

          else
          {
            result = v423;
            v97 = v51 + 1;
            v91 = v96;
          }

          v52 = v26 & v353;
          v274 = 0;
          *v246 = v244;
          if (v247 && v248 >= 5)
          {
            v275 = v453[1];
            v276 = v453[4];
            v277 = v453[5];
            v278 = v453[6];
            v279 = v453[7];
            v425 = v454[12];
            v428 = v454[13];
            v431 = v454[14];
            v434 = v454[15];
            v280 = v454[24];
            v281 = v454[25];
            v282 = v454[26];
            v283 = v454[27];
            v284 = v454[40];
            v285 = v454[41];
            v286 = v454[42];
            v287 = v454[43];
            v288 = v453[2];
            v289 = v453[3];
            v290 = v454[28];
            v291 = v454[29];
            v292 = v454[30];
            v293 = v454[31];
            v404 = v454[10];
            v411 = v454[11];
            v294 = v454[8];
            v295 = v454[9];
            v296 = v454[44];
            v297 = v454[45];
            v298 = v454[46];
            v299 = v454[47];
            *v245 = v453[0];
            v245[1] = v275;
            v245[2] = v294;
            v245[3] = v295;
            v245[4] = v288;
            v245[5] = v289;
            v245[6] = v404;
            v245[7] = v411;
            v245[8] = v280;
            v245[9] = v281;
            v245[10] = v284;
            v245[11] = v285;
            v245[12] = v282;
            v245[13] = v283;
            v245[14] = v286;
            v245[15] = v287;
            v245[16] = v276;
            v245[17] = v277;
            v245[18] = v425;
            v245[19] = v428;
            v245[20] = v278;
            v245[21] = v279;
            v245[22] = v431;
            v245[23] = v434;
            v245[24] = v290;
            v245[25] = v291;
            v245[26] = v296;
            v245[27] = v297;
            v245[28] = v292;
            v245[29] = v293;
            v245[30] = v298;
            v245[31] = v299;
            v245 += 32;
            v274 = -1;
          }

          v300 = 0;
          v246[1] = v274;
          if (v247 >= 9 && v248)
          {
            v301 = v452[1];
            v302 = v452[4];
            v303 = v452[5];
            v304 = v452[6];
            v305 = v452[7];
            v426 = v452[20];
            v429 = v452[21];
            v432 = v452[22];
            v435 = v452[23];
            v306 = v452[32];
            v307 = v452[33];
            v308 = v452[34];
            v309 = v452[35];
            v310 = v452[48];
            v311 = v452[49];
            v312 = v452[50];
            v313 = v452[51];
            v314 = v452[2];
            v315 = v452[3];
            v316 = v452[36];
            v317 = v452[37];
            v318 = v452[38];
            v319 = v452[39];
            v405 = v452[18];
            v412 = v452[19];
            v320 = v452[16];
            v321 = v452[17];
            v322 = v452[52];
            v323 = v452[53];
            v324 = v452[54];
            v325 = v452[55];
            *v245 = v452[0];
            v245[1] = v301;
            v245[2] = v320;
            v245[3] = v321;
            v245[4] = v314;
            v245[5] = v315;
            v245[6] = v405;
            v245[7] = v412;
            v245[8] = v306;
            v245[9] = v307;
            v245[10] = v310;
            v245[11] = v311;
            v245[12] = v308;
            v245[13] = v309;
            v245[14] = v312;
            v245[15] = v313;
            v245[16] = v302;
            v245[17] = v303;
            v245[18] = v426;
            v245[19] = v429;
            v245[20] = v304;
            v245[21] = v305;
            v245[22] = v432;
            v245[23] = v435;
            v245[24] = v316;
            v245[25] = v317;
            v245[26] = v322;
            v245[27] = v323;
            v245[28] = v318;
            v245[29] = v319;
            v245[30] = v324;
            v245[31] = v325;
            v245 += 32;
            v300 = -1;
          }

          v326 = 0;
          v246[2] = v300;
          if (v247 >= 9 && v248 >= 5)
          {
            v327 = v454[1];
            v328 = v454[4];
            v329 = v454[5];
            v330 = v454[6];
            v331 = v454[7];
            v427 = v454[20];
            v430 = v454[21];
            v433 = v454[22];
            v436 = v454[23];
            v332 = v454[32];
            v333 = v454[33];
            v334 = v454[34];
            v335 = v454[35];
            v336 = v454[48];
            v337 = v454[49];
            v338 = v454[50];
            v339 = v454[51];
            v340 = v454[2];
            v341 = v454[3];
            v342 = v454[36];
            v343 = v454[37];
            v344 = v454[38];
            v345 = v454[39];
            v406 = v454[18];
            v413 = v454[19];
            v346 = v454[16];
            v347 = v454[17];
            v348 = v454[52];
            v349 = v454[53];
            v350 = v454[54];
            v351 = v454[55];
            *v245 = v454[0];
            v245[1] = v327;
            v245[2] = v346;
            v245[3] = v347;
            v245[4] = v340;
            v245[5] = v341;
            v245[6] = v406;
            v245[7] = v413;
            v245[8] = v332;
            v245[9] = v333;
            v245[10] = v336;
            v245[11] = v337;
            v245[12] = v334;
            v245[13] = v335;
            v245[14] = v338;
            v245[15] = v339;
            v245[16] = v328;
            v245[17] = v329;
            v245[18] = v427;
            v245[19] = v430;
            v245[20] = v330;
            v245[21] = v331;
            v245[22] = v433;
            v245[23] = v436;
            v245[24] = v342;
            v245[25] = v343;
            v245[26] = v348;
            v245[27] = v349;
            v352 = v245 + 28;
            *v352 = v344;
            v352[1] = v345;
            v352[2] = v350;
            v352[3] = v351;
            v326 = -1;
          }

          v246[3] = v326;
          if (v437)
          {
            goto LABEL_160;
          }

LABEL_46:
          v29 = v51 == v416 >> 4;
          v51 = v97;
          v16 = v415;
        }

        while (!v29);
        v29 = v26++ == v360;
      }

      while (!v29);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v167 = v21;
  v168 = v22;
  v154 = v23;
  v24 = v12;
  v192 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v25 = v24;
  v172 = v14;
  v26 = v14 >> 3;
  v153 = v14 + a10 - 1;
  v155 = v153 >> 3;
  v27 = *(*(v24 + 208) + 88);
  v28 = *(v24 + 112);
  v174 = v25;
  if (*(v25 + 168))
  {
    CacheMode = IOSurfaceGetCacheMode();
    v25 = v174;
    v30 = CacheMode & 0xF00;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 0xD00) == 0 || v30 == 768;
  v32 = v30 & 0xE00;
  v34 = !v31 && v32 != 1024;
  v175 = v34;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v25, *(v25 + 144) + a12);
  v36 = v174;
  v166 = isLevelTiled;
  if (v26 <= v155)
  {
    v165 = v16 + a9 - 1;
    v152 = v16 >> 4;
    if (v16 >> 4 <= v165 >> 4)
    {
      v173 = (v20 - 1) >> 4;
      v151 = (v18 - 1) >> 3;
      v148 = v20 - 1;
      v157 = (v20 - 1) & 0xF;
      v149 = ((v18 - 1) & 7) + 1;
      v150 = (v18 - 1) & 7;
      v156 = 4 * a11;
      v37 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v38 = vcgt_u32(v37, 0x1F0000000FLL);
      v163 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v37, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v38);
      v162 = v38;
      v147 = 8 * v28 * v27;
      v164 = v16;
      do
      {
        v39 = (8 * v26) | 7;
        if (8 * v26 <= v172)
        {
          v40 = v172;
        }

        else
        {
          v40 = 8 * v26;
        }

        if (v153 < v39)
        {
          v39 = v153;
        }

        v171 = 8 * v26;
        v161 = v40 - 8 * v26;
        v41 = v39 - v40;
        v42 = v41 + 1;
        v43 = v41 != v150;
        v160 = v42;
        v44 = v42 != 8;
        v45 = v152;
        v46 = v149;
        if (v26 != v151)
        {
          v46 = 8;
          v43 = v44;
        }

        v158 = v43;
        v159 = v46;
        v170 = v154 + (v40 - v172) * a11;
        v169 = v46;
        do
        {
          v47 = 16 * v45;
          v48 = 16 * (v45 + 1) - 1;
          if (16 * v45 <= v16)
          {
            v49 = v16;
          }

          else
          {
            v49 = 16 * v45;
          }

          if (v165 < v48)
          {
            v48 = v165;
          }

          v50 = v48 - v49;
          v51 = v50 + 1;
          if (v45 == v173)
          {
            v52 = v157 + 1;
          }

          else
          {
            v52 = 16;
          }

          v53 = 1;
          if (v171 >= v172 && v47 >= v16)
          {
            v54 = v50 != v157;
            if (v45 != v173)
            {
              v54 = v51 != 16;
            }

            v53 = v54 || v158;
          }

          if (v166)
          {
            v75 = 0;
            v76 = v147 >> (*(v36 + 57) != 0);
            v77 = 1;
            if (v76 <= 63)
            {
              if (v76 > 15)
              {
                if (v76 == 16)
                {
                  v77 = 0;
                  v78 = 0;
                  v79 = 64;
                  v75 = 128;
                }

                else
                {
                  v78 = 1;
                  v79 = 0;
                  if (v76 == 32)
                  {
                    v77 = 0;
                    v78 = 0;
                    v75 = 64;
                    v79 = 64;
                  }
                }
              }

              else if (v76 == 4)
              {
                v77 = 0;
                v78 = 0;
                v79 = 128;
                v75 = 256;
              }

              else
              {
                v78 = 1;
                v79 = 0;
                if (v76 == 8)
                {
                  v77 = 0;
                  v78 = 0;
                  v75 = 128;
                  v79 = 128;
                }
              }
            }

            else if (v76 <= 255)
            {
              if (v76 == 64)
              {
                v77 = 0;
                v78 = 0;
                v79 = 32;
                v75 = 64;
              }

              else
              {
                v78 = 1;
                v79 = 0;
                if (v76 == 128)
                {
                  v77 = 0;
                  v78 = 0;
                  v75 = 32;
                  v79 = 32;
                }
              }
            }

            else if (v76 == 256)
            {
              v77 = 0;
              v78 = 0;
              v79 = 16;
              v75 = 32;
            }

            else if (v76 == 512)
            {
              v78 = 0;
              v75 = 16;
              v79 = 16;
            }

            else
            {
              v78 = 1;
              v79 = 0;
              if (v76 == 1024)
              {
                v79 = 8;
                v75 = 16;
              }
            }

            v135 = (v75 >> 4) - 1;
            if (v77)
            {
              v136 = 0;
            }

            else
            {
              v136 = 32 - __clz(~(-1 << -__clz(v135)));
            }

            v137 = (v79 >> 3) - 1;
            if (v78)
            {
              v138 = 0;
              if (v136)
              {
                goto LABEL_155;
              }
            }

            else
            {
              v138 = 32 - __clz(~(-1 << -__clz(v137)));
              if (v138 | v136)
              {
LABEL_155:
                v139 = 0;
                v140 = 0;
                v141 = v45 & v135;
                v142 = v26 & v137;
                v143 = v138 != 0;
                v144 = v136 != 0;
                v145 = 1;
                do
                {
                  --v138;
                  if (v143)
                  {
                    v140 |= (v145 & v142) << v139++;
                  }

                  else
                  {
                    v138 = 0;
                  }

                  --v136;
                  if (v144)
                  {
                    v140 |= (v145 & v141) << v139++;
                  }

                  else
                  {
                    v136 = 0;
                  }

                  v145 *= 2;
                  --v139;
                  v144 = v136 != 0;
                  v143 = v138 != 0;
                }

                while (v136 | v138);
                v146 = v140 << 11;
                v36 = v174;
                goto LABEL_167;
              }
            }

            v146 = 0;
LABEL_167:
            v62 = v146 + ((v47 / v75 + v171 / v79 * ((v75 + v148) / v75)) << 14);
            goto LABEL_52;
          }

          if (v163)
          {
            v55 = 0;
            v56 = 0;
            v57 = 1;
            v59 = v162.i8[0];
            v58 = v162.i8[4];
            v60 = v163.i32[0];
            v61 = v163.i32[1];
            do
            {
              --v60;
              if (v59)
              {
                v56 |= (v57 & v26) << v55++;
              }

              else
              {
                v60 = 0;
              }

              --v61;
              if (v58)
              {
                v56 |= (v57 & v45) << v55++;
              }

              else
              {
                v61 = 0;
              }

              v57 *= 2;
              --v55;
              v58 = v61 != 0;
              v59 = v60 != 0;
            }

            while (v61 | v60);
            v62 = v56 << 11;
          }

          else
          {
            v62 = 0;
          }

LABEL_52:
          v63 = *(v36 + 128) >> (*(v36 + 144) + a12);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v63 + 15;
          if (v64 < 0x20)
          {
            v65 = 0;
          }

          else
          {
            v65 = 32 - __clz(~(-1 << -__clz((v64 >> 4) - 1)));
          }

          v66 = *(v36 + 132) >> (*(v36 + 144) + a12);
          if (v66 <= 1)
          {
            v66 = 1;
          }

          v67 = v66 + 7;
          if (v67 < 0x10)
          {
            v68 = 0;
            if (!v65)
            {
LABEL_77:
              v74 = 0;
              goto LABEL_78;
            }
          }

          else
          {
            v68 = 32 - __clz(~(-1 << -__clz((v67 >> 3) - 1)));
            if (!(v68 | v65))
            {
              goto LABEL_77;
            }
          }

          v69 = 0;
          v70 = 0;
          v71 = v65 != 0;
          v72 = v68 != 0;
          v73 = 1;
          do
          {
            --v65;
            if (v71)
            {
              v70 |= (v73 & v45) << v69++;
            }

            else
            {
              v65 = 0;
            }

            --v68;
            if (v72)
            {
              v70 |= (v73 & v26) << v69++;
            }

            else
            {
              v68 = 0;
            }

            v73 *= 2;
            --v69;
            v72 = v68 != 0;
            v71 = v65 != 0;
          }

          while (v68 | v65);
          v74 = 8 * v70;
LABEL_78:
          v80 = (v168 + v74);
          v81 = (v170 + 16 * (v49 - v16));
          v82 = (v167 + v62);
          if (v175)
          {
            if (!(v53 & 1 | (v52 < 0x10u) | (v169 < 8)))
            {
              v86 = __dst;
LABEL_86:
              v88 = (v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v86, v80, v81, a11));
              v89 = (v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v88, v80 + 1, (v81 + v156), a11));
              v90 = (v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v89, v80 + 2, v81 + 8, a11));
              v91 = v80 + 3;
              v92 = (v81 + v156 + 128);
              v93 = a11;
              goto LABEL_87;
            }

            v83 = (v167 + v62);
            v84 = v52;
            v85 = v49;
            memcpy(__dst, (v167 + v62), sizeof(__dst));
            v49 = v85;
            v47 = 16 * v45;
            v86 = __dst;
            v52 = v84;
            v82 = v83;
          }

          else
          {
            v86 = (v167 + v62);
            if (!(v53 & 1 | (v52 < 0x10u) | (v169 < 8)))
            {
              goto LABEL_86;
            }
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v174;
          v177 = v86;
          v185 = v52;
          v186 = v159;
          v181 = v161;
          v182 = v49 - v47;
          v178 = v80;
          v179 = v81;
          v180 = a11;
          v183 = v160;
          v184 = v51;
          if (v53)
          {
            dispatch_sync(*(*(v174 + 8) + 16552), block);
            v87 = v45 + 1;
            if (!v175)
            {
              goto LABEL_26;
            }

LABEL_88:
            memcpy(v82, v86, 0x800uLL);
            goto LABEL_26;
          }

          v94 = v86->u64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v188, 256, v86, *v80);
          v95 = v94 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v190, 256, v94, v80[1]);
          v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v189, 256, v95, v80[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v191, 256, v95 + v96, v80[3]);
          v97 = v183;
          if (v183)
          {
            v98 = v184;
            if (v184)
            {
              v99 = 0;
              v100 = v181 << 8;
              v101 = 16 * v182;
              v102 = &v188[0].i8[v100 + v101];
              v103 = v179;
              v104 = v180;
              v105 = 16 * v184;
              if (16 * v184)
              {
                v106 = (16 * v184 - 1) >> 32 == 0;
              }

              else
              {
                v106 = 0;
              }

              v107 = !v106;
              v109 = v102 < &v179[v184].i8[v180 * (v183 - 1)] && v179 < &__dst[256 * v183 + 1792 + 256 * v181 + 16 * v184 + v101];
              v110 = v105 & 0x1FFFFFFE0;
              v111 = v107 | (v180 < 0) | v109;
              v112 = (&v188[1] + v100 + v101);
              v113 = v179 + 1;
              v114 = v102;
              v115 = v179;
              do
              {
                v116 = &v103->i8[v99 * v104];
                v117 = &v102[256 * v99];
                if (v111)
                {
                  v118 = 0;
                }

                else
                {
                  if (v98 == 1)
                  {
                    v122 = 0;
LABEL_112:
                    v123 = -16 * v98 + v122;
                    v124 = &v115->i8[v122];
                    v125 = &v114[v122];
                    do
                    {
                      v126 = *v124;
                      v124 += 16;
                      *v125 = v126;
                      v125 += 16;
                      v123 += 16;
                    }

                    while (v123);
                    goto LABEL_104;
                  }

                  v127 = v113;
                  v128 = v112;
                  v129 = v105 & 0x1FFFFFFE0;
                  do
                  {
                    v130 = *v127;
                    v128[-1] = v127[-1];
                    *v128 = v130;
                    v128 += 2;
                    v127 += 2;
                    v129 -= 32;
                  }

                  while (v129);
                  if (v105 == v110)
                  {
                    goto LABEL_104;
                  }

                  v122 = v105 & 0x1FFFFFFE0;
                  if (v98)
                  {
                    goto LABEL_112;
                  }

                  v116 += v110;
                  v117 += v110;
                  v118 = v105 & 0xFFFFFFE0;
                }

                v119 = v118 + 1;
                do
                {
                  v120 = *v116++;
                  *v117++ = v120;
                }

                while (v105 > v119++);
LABEL_104:
                ++v99;
                v112 += 16;
                v113 = (v113 + v104);
                v115 = (v115 + v104);
                v114 += 256;
              }

              while (v99 != v97);
            }
          }

          v132 = v177;
          v131 = v178;
          v133 = v185;
          v134 = v186;
          if (v185 && v186)
          {
            v132 = (v132 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v177, v178, v188, 256));
            if (!v133)
            {
              goto LABEL_128;
            }
          }

          else
          {
            *v178 = 0;
            if (!v133)
            {
              goto LABEL_128;
            }
          }

          if (v134 >= 5)
          {
            v132 = (v132 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v132, v131 + 1, v190, 256));
            if (v133 < 9)
            {
              goto LABEL_131;
            }

            goto LABEL_129;
          }

LABEL_128:
          v131[1] = 0;
          if (v133 < 9)
          {
            goto LABEL_131;
          }

LABEL_129:
          if (!v134)
          {
LABEL_131:
            v131[2] = 0;
            if (v133 < 9)
            {
              goto LABEL_134;
            }

            goto LABEL_132;
          }

          v132 = (v132 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v132, v131 + 2, v189, 256));
LABEL_132:
          if (v134 >= 5)
          {
            v91 = v131 + 3;
            v92 = v191;
            v90 = v132;
            v93 = 256;
LABEL_87:
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v90, v91, v92, v93);
            v87 = v45 + 1;
            if (!v175)
            {
              goto LABEL_26;
            }

            goto LABEL_88;
          }

LABEL_134:
          v131[3] = 0;
          v87 = v45 + 1;
          if (v175)
          {
            goto LABEL_88;
          }

LABEL_26:
          v16 = v164;
          v31 = v45 == v165 >> 4;
          v45 = v87;
          v36 = v174;
        }

        while (!v31);
        v31 = v26++ == v155;
      }

      while (!v31);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v418 = v21;
  v361 = v22;
  v417 = v23;
  v24 = v12;
  v455 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v422 = v14;
  v25 = v14 >> 3;
  v360 = v14 + a10 - 1;
  v362 = v360 >> 3;
  v26 = *(*(v24 + 208) + 88);
  v27 = *(v24 + 112);
  v423 = v24;
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
  v437 = v32;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v24, *(v24 + 144) + a12);
  v34 = v24;
  v416 = isLevelTiled;
  if (v25 <= v362)
  {
    v415 = v16 + a9 - 1;
    v359 = v16 >> 4;
    if (v16 >> 4 <= v415 >> 4)
    {
      v424 = (v20 - 1) >> 4;
      v358 = (v18 - 1) >> 3;
      v355 = v20 - 1;
      v365 = (v20 - 1) & 0xF;
      v356 = ((v18 - 1) & 7) + 1;
      v357 = (v18 - 1) & 7;
      v364 = 4 * a11;
      v35 = vadd_s32(__PAIR64__(v20, v18), 0xF00000007);
      v36 = vcgt_u32(v35, 0x1F0000000FLL);
      v371 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v35, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v36);
      v370 = v36;
      v354 = 8 * v27 * v26;
      v363 = 2 * a11;
      v414 = v16;
      do
      {
        v37 = (8 * v25) | 7;
        if (8 * v25 <= v422)
        {
          v38 = v422;
        }

        else
        {
          v38 = 8 * v25;
        }

        if (v360 < v37)
        {
          v37 = v360;
        }

        v421 = 8 * v25;
        v369 = v38 - 8 * v25;
        v39 = v37 - v38;
        v40 = v39 + 1;
        v41 = v39 != v357;
        v368 = v40;
        v42 = v40 != 8;
        v43 = v359;
        v44 = v356;
        if (v25 != v358)
        {
          v44 = 8;
          v41 = v42;
        }

        v366 = v41;
        v420 = v361 + (v38 - v422) * a11;
        v367 = v44;
        v419 = v44;
        do
        {
          v45 = 16 * v43;
          v46 = 16 * (v43 + 1) - 1;
          if (16 * v43 <= v16)
          {
            v47 = v16;
          }

          else
          {
            v47 = 16 * v43;
          }

          if (v415 < v46)
          {
            v46 = v415;
          }

          v48 = v46 - v47;
          v49 = v48 + 1;
          if (v43 == v424)
          {
            v50 = v365 + 1;
          }

          else
          {
            v50 = 16;
          }

          v51 = 1;
          if (v421 >= v422 && v45 >= v16)
          {
            v52 = v48 != v365;
            if (v43 != v424)
            {
              v52 = v49 != 16;
            }

            v51 = v52 || v366;
          }

          if (v416)
          {
            v73 = 0;
            v74 = v354 >> (*(v34 + 57) != 0);
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
                v77 = 8;
                v73 = 16;
              }
            }

            v342 = (v73 >> 4) - 1;
            if (v75)
            {
              v343 = 0;
            }

            else
            {
              v343 = 32 - __clz(~(-1 << -__clz(v342)));
            }

            v344 = (v77 >> 3) - 1;
            if (v76)
            {
              v345 = 0;
              if (v343)
              {
                goto LABEL_154;
              }
            }

            else
            {
              v345 = 32 - __clz(~(-1 << -__clz(v344)));
              if (v345 | v343)
              {
LABEL_154:
                v346 = 0;
                v347 = 0;
                v348 = v43 & v342;
                v349 = v25 & v344;
                v350 = v345 != 0;
                v351 = v343 != 0;
                v352 = 1;
                do
                {
                  --v345;
                  if (v350)
                  {
                    v347 |= (v352 & v349) << v346++;
                  }

                  else
                  {
                    v345 = 0;
                  }

                  --v343;
                  if (v351)
                  {
                    v347 |= (v352 & v348) << v346++;
                  }

                  else
                  {
                    v343 = 0;
                  }

                  v352 *= 2;
                  --v346;
                  v351 = v343 != 0;
                  v350 = v345 != 0;
                }

                while (v343 | v345);
                v353 = v347 << 11;
                goto LABEL_166;
              }
            }

            v353 = 0;
LABEL_166:
            v60 = v353 + ((v45 / v73 + v421 / v77 * ((v73 + v355) / v73)) << 14);
            goto LABEL_52;
          }

          if (v371)
          {
            v53 = 0;
            v54 = 0;
            v55 = 1;
            v56 = v370.i8[0];
            v57 = v370.i8[4];
            v58 = v371.i32[0];
            v59 = v371.i32[1];
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
                v54 |= (v55 & v43) << v53++;
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

          v62 = v61 + 15;
          if (v62 < 0x20)
          {
            v63 = 0;
          }

          else
          {
            v63 = 32 - __clz(~(-1 << -__clz((v62 >> 4) - 1)));
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
          v78 = (v418 + v72);
          v79 = (v420 + 16 * (v47 - v16));
          v80 = (v417 + v60);
          if (v437)
          {
            if (!(v51 & 1 | (v50 < 0x10u) | (v419 < 8)))
            {
              v85 = __dst;
LABEL_86:
              v87 = v79[1];
              v88 = v79[2];
              v89 = v79[3];
              v90 = *(v79 + a11);
              v91 = *(v79 + a11 + 16);
              v92 = *(v79 + a11 + 32);
              v93 = *(v79 + a11 + 48);
              v94 = v79[4];
              v95 = v79[5];
              v96 = v79[6];
              v97 = v79[7];
              v392 = *(v79 + a11 + 64);
              v396 = *(v79 + a11 + 80);
              v400 = *(v79 + a11 + 96);
              v406 = *(v79 + a11 + 112);
              v99 = *(v79 + 2 * a11);
              v100 = *(v79 + v363 + 16);
              v101 = *(v79 + v363 + 32);
              v102 = *(v79 + v363 + 48);
              v98 = (v79 + v363 + a11);
              v103 = *v98;
              v104 = v98[1];
              v105 = v98[2];
              v106 = v98[3];
              v98 += 4;
              v107 = *(v79 + v363 + 64);
              v108 = *(v79 + v363 + 80);
              v109 = *(v79 + v363 + 96);
              v110 = *(v79 + v363 + 112);
              v376 = *v98;
              v380 = v98[1];
              v384 = v98[2];
              v388 = v98[3];
              *v85 = *v79;
              v85[1] = v87;
              v85[2] = v90;
              v85[3] = v91;
              v85[4] = v88;
              v85[5] = v89;
              v85[6] = v92;
              v85[7] = v93;
              v85[8] = v99;
              v85[9] = v100;
              v85[10] = v103;
              v85[11] = v104;
              v85[12] = v101;
              v85[13] = v102;
              v85[14] = v105;
              v85[15] = v106;
              v85[16] = v94;
              v85[17] = v95;
              v85[18] = v392;
              v85[19] = v396;
              v85[20] = v96;
              v85[21] = v97;
              v85[22] = v400;
              v85[23] = v406;
              v85[24] = v107;
              v85[25] = v108;
              v85[26] = v376;
              v85[27] = v380;
              v85[28] = v109;
              v85[29] = v110;
              v85[30] = v384;
              v85[31] = v388;
              *v78 = -1;
              v111 = *(v79 + v364 + 32);
              v112 = *(v79 + v364 + 48);
              v113 = *(v79 + v364 + a11 + 32);
              v114 = *(v79 + v364 + a11 + 48);
              v115 = *(v79 + v364 + 96);
              v117 = *(v79 + 2 * a11 + v364);
              v118 = *(v79 + v364 + v363 + 16);
              v116 = (v79 + v364 + v363 + a11);
              v119 = *(v79 + v364 + 112);
              v120 = *v116;
              v121 = v116[1];
              v122 = v116[2];
              v123 = v116[3];
              v116 += 4;
              v124 = *(v79 + v364 + a11 + 96);
              v125 = *(v79 + v364 + a11 + 112);
              v377 = *(v79 + v364 + 64);
              v381 = *(v79 + v364 + 80);
              v385 = *(v79 + v364 + a11 + 64);
              v389 = *(v79 + v364 + a11 + 80);
              v126 = *(v79 + v364 + v363 + 32);
              v127 = *(v79 + v364 + v363 + 48);
              v128 = v122;
              v129 = *(v79 + v364 + v363 + 64);
              v130 = *(v79 + v364 + v363 + 80);
              v131 = *(v79 + v364 + v363 + 96);
              v132 = *(v79 + v364 + v363 + 112);
              v133 = v120;
              v134 = v121;
              v135 = *v116;
              v136 = v116[1];
              v137 = v116[2];
              v138 = v116[3];
              v139 = *(v79 + v364 + 16);
              v140 = *(v79 + v364 + a11);
              v141 = *(v79 + v364 + a11 + 16);
              v85[32] = *(v79 + 4 * a11);
              v85[33] = v139;
              v85[34] = v140;
              v85[35] = v141;
              v85[36] = v111;
              v85[37] = v112;
              v85[38] = v113;
              v85[39] = v114;
              v85[40] = v117;
              v85[41] = v118;
              v85[42] = v133;
              v85[43] = v134;
              v85[44] = v126;
              v85[45] = v127;
              v85[46] = v128;
              v85[47] = v123;
              v85[48] = v377;
              v85[49] = v381;
              v85[50] = v385;
              v85[51] = v389;
              v85[52] = v115;
              v85[53] = v119;
              v85[54] = v124;
              v85[55] = v125;
              v85[56] = v129;
              v85[57] = v130;
              v85[58] = v135;
              v85[59] = v136;
              v85[60] = v131;
              v85[61] = v132;
              v85[62] = v137;
              v85[63] = v138;
              v78[1] = -1;
              v142 = (v79 + a11 + 128);
              v143 = (v79 + v363 + 128);
              v144 = *v142;
              v145 = v142[1];
              v146 = v142[2];
              v147 = v142[3];
              v142 += 4;
              v393 = v79[10];
              v397 = v79[11];
              v407 = v147;
              v148 = v145;
              v149 = v79[9];
              v150 = v148;
              v151 = *v142;
              v152 = v142[1];
              v153 = v142[2];
              v154 = v142[3];
              v155 = v79[14];
              v156 = v143 + 4;
              v158 = *v143;
              v159 = v143[1];
              v160 = v143[2];
              v161 = v143[3];
              v157 = (v143 + a11);
              v162 = v79[15];
              v163 = *v157;
              v164 = v157[1];
              v165 = v157[2];
              v166 = v157[3];
              v157 += 4;
              v378 = v79[12];
              v382 = v79[13];
              v167 = *v156;
              v168 = v156[1];
              v169 = v156[2];
              v170 = v156[3];
              v171 = *v157;
              v172 = v157[1];
              v173 = v157[2];
              v174 = v157[3];
              v85[64] = v79[8];
              v85[65] = v149;
              v85[66] = v144;
              v85[67] = v150;
              v85[68] = v393;
              v85[69] = v397;
              v85[70] = v146;
              v85[71] = v407;
              v85[72] = v158;
              v85[73] = v159;
              v85[74] = v163;
              v85[75] = v164;
              v85[76] = v160;
              v85[77] = v161;
              v85[78] = v165;
              v85[79] = v166;
              v85[80] = v378;
              v85[81] = v382;
              v85[82] = v151;
              v85[83] = v152;
              v85[84] = v155;
              v85[85] = v162;
              v85[86] = v153;
              v85[87] = v154;
              v85[88] = v167;
              v85[89] = v168;
              v85[90] = v171;
              v85[91] = v172;
              v85[92] = v169;
              v85[93] = v170;
              v85[94] = v173;
              v85[95] = v174;
              v78[2] = -1;
              v175 = (v79 + v364 + a11 + 128);
              v177 = *(v79 + v364 + 144);
              v176 = (v79 + v364 + v363 + 128);
              v178 = *v175;
              v179 = v175[1];
              v180 = v175[2];
              v181 = v175[3];
              v175 += 4;
              v372 = *(v79 + v364 + 192);
              v373 = *(v79 + v364 + 208);
              v374 = *(v79 + v364 + 224);
              v375 = *(v79 + v364 + 240);
              v394 = *v175;
              v398 = v175[1];
              v401 = v175[2];
              v408 = v175[3];
              v183 = *v176;
              v184 = v176[1];
              v185 = v176[2];
              v186 = v176[3];
              v182 = (v176 + a11);
              v176 += 4;
              v187 = *v182;
              v188 = v182[1];
              v189 = v182[2];
              v190 = v182[3];
              v182 += 4;
              v191 = *(v79 + v364 + 160);
              v192 = *v176;
              v193 = v176[1];
              v194 = v176[2];
              v195 = v176[3];
              v196 = *(v79 + v364 + 176);
              v379 = *v182;
              v383 = v182[1];
              v386 = v182[2];
              v390 = v182[3];
              v85[96] = *(v79 + v364 + 128);
              v85[97] = v177;
              v85[98] = v178;
              v85[99] = v179;
              v85[100] = v191;
              v85[101] = v196;
              v85[102] = v180;
              v85[103] = v181;
              v85[104] = v183;
              v85[105] = v184;
              v85[106] = v187;
              v85[107] = v188;
              v85[108] = v185;
              v85[109] = v186;
              v85[110] = v189;
              v85[111] = v190;
              v85[112] = v372;
              v85[113] = v373;
              v85[114] = v394;
              v85[115] = v398;
              v85[116] = v374;
              v85[117] = v375;
              v85[118] = v401;
              v85[119] = v408;
              v85[120] = v192;
              v85[121] = v193;
              v85[122] = v379;
              v85[123] = v383;
              v85[124] = v194;
              v85[125] = v195;
              v85[126] = v386;
              v85[127] = v390;
              v78[3] = -1;
              v16 = v414;
              v86 = v43 + 1;
              if (!v437)
              {
                goto LABEL_26;
              }

LABEL_134:
              memcpy(v80, v85, 0x800uLL);
              v34 = v423;
              goto LABEL_26;
            }

            v81 = v50;
            v82 = (v418 + v72);
            v83 = v51;
            v84 = v79;
            memcpy(__dst, v80, sizeof(__dst));
            v79 = v84;
            v85 = __dst;
            v51 = v83;
            v78 = v82;
            v50 = v81;
            v45 = 16 * v43;
            v34 = v423;
          }

          else
          {
            v85 = (v417 + v60);
            if (!(v51 & 1 | (v50 < 0x10u) | (v419 < 8)))
            {
              goto LABEL_86;
            }
          }

          v413 = v80;
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v34;
          v439 = v85;
          v447 = v50;
          v448 = v367;
          v443 = v369;
          v444 = v47 - v45;
          v440 = v78;
          v441 = v79;
          v442 = a11;
          v445 = v368;
          v446 = v49;
          if (v51)
          {
            dispatch_sync(*(*(v34 + 8) + 16552), block);
            v34 = v423;
            v16 = v414;
            v86 = v43 + 1;
            if (!v437)
            {
              goto LABEL_26;
            }

            goto LABEL_134;
          }

          v197 = v85->n128_u64 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v450, 256, v85, *v78);
          v198 = v197 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v453, 256, v197, v78[1]);
          v199 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v452, 256, v198, v78[2]);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v454, 256, v198 + v199, v78[3]);
          v200 = v445;
          v16 = v414;
          if (v445)
          {
            v201 = v446;
            if (v446)
            {
              v202 = 0;
              v203 = v444;
              v204 = &v450[16 * v443 + v203];
              v205 = v441;
              v206 = v442;
              v207 = 16 * v446;
              if (16 * v446)
              {
                v208 = (16 * v446 - 1) >> 32 == 0;
              }

              else
              {
                v208 = 0;
              }

              v209 = !v208;
              v211 = v204 < (&v441[v446] + v442 * (v445 - 1)) && v441 < &__dst[256 * v445 + 1792 + 256 * v443 + 16 * v446 + v203 * 16];
              v212 = v207 & 0x1FFFFFFE0;
              v213 = v209 | (v442 < 0) | v211;
              v214 = &v451[16 * v443 + v203];
              v215 = &v441[1];
              v216 = v204;
              v217 = v441;
              do
              {
                v218 = v205 + v202 * v206;
                v219 = &v204[16 * v202];
                if (v213)
                {
                  v220 = 0;
                }

                else
                {
                  if (v201 == 1)
                  {
                    v224 = 0;
LABEL_111:
                    v225 = -16 * v201 + v224;
                    v226 = (v217 + v224);
                    v227 = (v216->n128_u64 + v224);
                    do
                    {
                      v228 = *v226++;
                      *v227++ = v228;
                      v225 += 16;
                    }

                    while (v225);
                    goto LABEL_103;
                  }

                  v229 = v215;
                  v230 = v214;
                  v231 = v207 & 0x1FFFFFFE0;
                  do
                  {
                    v232 = *v229;
                    *(v230 - 1) = *(v229 - 1);
                    *v230 = v232;
                    v230 += 2;
                    v229 += 2;
                    v231 -= 32;
                  }

                  while (v231);
                  if (v207 == v212)
                  {
                    goto LABEL_103;
                  }

                  v224 = v207 & 0x1FFFFFFE0;
                  if (v201)
                  {
                    goto LABEL_111;
                  }

                  v218 += v212;
                  v219 = (v219 + v212);
                  v220 = v207 & 0xFFFFFFE0;
                }

                v221 = v220 + 1;
                do
                {
                  v222 = *v218++;
                  v219->n128_u8[0] = v222;
                  v219 = (v219 + 1);
                }

                while (v207 > v221++);
LABEL_103:
                ++v202;
                v214 += 16;
                v215 = (v215 + v206);
                v217 = (v217 + v206);
                v216 += 16;
              }

              while (v202 != v200);
            }
          }

          v233 = 0;
          v234 = v439;
          v235 = v440;
          v236 = v447;
          v237 = v448;
          if (v447)
          {
            v34 = v423;
            v80 = v413;
            if (v448)
            {
              v238 = v451[0];
              v239 = v451[3];
              v240 = v451[4];
              v241 = v451[5];
              v242 = v451[6];
              v395 = v452[12];
              v399 = v452[13];
              v402 = v452[14];
              v409 = v452[15];
              v243 = v452[24];
              v244 = v452[25];
              v245 = v452[26];
              v246 = v452[27];
              v247 = v452[40];
              v248 = v452[41];
              v249 = v452[42];
              v250 = v452[43];
              v251 = v451[1];
              v252 = v451[2];
              v253 = v452[28];
              v254 = v452[29];
              v255 = v452[30];
              v256 = v452[31];
              v387 = v452[10];
              v391 = v452[11];
              v257 = v452[8];
              v258 = v452[9];
              v259 = v452[44];
              v260 = v452[45];
              v261 = v452[46];
              v262 = v452[47];
              *v439 = v450[0];
              v234[1] = v238;
              v234[2] = v257;
              v234[3] = v258;
              v234[4] = v251;
              v234[5] = v252;
              v234[6] = v387;
              v234[7] = v391;
              v234[8] = v243;
              v234[9] = v244;
              v234[10] = v247;
              v234[11] = v248;
              v234[12] = v245;
              v234[13] = v246;
              v234[14] = v249;
              v234[15] = v250;
              v234[16] = v239;
              v234[17] = v240;
              v234[18] = v395;
              v234[19] = v399;
              v234[20] = v241;
              v234[21] = v242;
              v234[22] = v402;
              v234[23] = v409;
              v234[24] = v253;
              v234[25] = v254;
              v234[26] = v259;
              v234[27] = v260;
              v234[28] = v255;
              v234[29] = v256;
              v234[30] = v261;
              v234[31] = v262;
              v234 += 32;
              v233 = -1;
            }

            v86 = v43 + 1;
          }

          else
          {
            v34 = v423;
            v86 = v43 + 1;
            v80 = v413;
          }

          v263 = 0;
          *v235 = v233;
          if (v236 && v237 >= 5)
          {
            v264 = v453[1];
            v265 = v453[4];
            v266 = v453[5];
            v267 = v453[6];
            v268 = v453[7];
            v425 = v454[12];
            v428 = v454[13];
            v431 = v454[14];
            v434 = v454[15];
            v269 = v454[24];
            v270 = v454[25];
            v271 = v454[26];
            v272 = v454[27];
            v273 = v454[40];
            v274 = v454[41];
            v275 = v454[42];
            v276 = v454[43];
            v277 = v453[2];
            v278 = v453[3];
            v279 = v454[28];
            v280 = v454[29];
            v281 = v454[30];
            v282 = v454[31];
            v403 = v454[10];
            v410 = v454[11];
            v283 = v454[8];
            v284 = v454[9];
            v285 = v454[44];
            v286 = v454[45];
            v287 = v454[46];
            v288 = v454[47];
            *v234 = v453[0];
            v234[1] = v264;
            v234[2] = v283;
            v234[3] = v284;
            v234[4] = v277;
            v234[5] = v278;
            v234[6] = v403;
            v234[7] = v410;
            v234[8] = v269;
            v234[9] = v270;
            v234[10] = v273;
            v234[11] = v274;
            v234[12] = v271;
            v234[13] = v272;
            v234[14] = v275;
            v234[15] = v276;
            v234[16] = v265;
            v234[17] = v266;
            v234[18] = v425;
            v234[19] = v428;
            v234[20] = v267;
            v234[21] = v268;
            v234[22] = v431;
            v234[23] = v434;
            v234[24] = v279;
            v234[25] = v280;
            v234[26] = v285;
            v234[27] = v286;
            v234[28] = v281;
            v234[29] = v282;
            v234[30] = v287;
            v234[31] = v288;
            v234 += 32;
            v263 = -1;
          }

          v289 = 0;
          v235[1] = v263;
          if (v236 >= 9 && v237)
          {
            v290 = v452[1];
            v291 = v452[4];
            v292 = v452[5];
            v293 = v452[6];
            v294 = v452[7];
            v426 = v452[20];
            v429 = v452[21];
            v432 = v452[22];
            v435 = v452[23];
            v295 = v452[32];
            v296 = v452[33];
            v297 = v452[34];
            v298 = v452[35];
            v299 = v452[48];
            v300 = v452[49];
            v301 = v452[50];
            v302 = v452[51];
            v303 = v452[2];
            v304 = v452[3];
            v305 = v452[36];
            v306 = v452[37];
            v307 = v452[38];
            v308 = v452[39];
            v404 = v452[18];
            v411 = v452[19];
            v309 = v452[16];
            v310 = v452[17];
            v311 = v452[52];
            v312 = v452[53];
            v313 = v452[54];
            v314 = v452[55];
            *v234 = v452[0];
            v234[1] = v290;
            v234[2] = v309;
            v234[3] = v310;
            v234[4] = v303;
            v234[5] = v304;
            v234[6] = v404;
            v234[7] = v411;
            v234[8] = v295;
            v234[9] = v296;
            v234[10] = v299;
            v234[11] = v300;
            v234[12] = v297;
            v234[13] = v298;
            v234[14] = v301;
            v234[15] = v302;
            v234[16] = v291;
            v234[17] = v292;
            v234[18] = v426;
            v234[19] = v429;
            v234[20] = v293;
            v234[21] = v294;
            v234[22] = v432;
            v234[23] = v435;
            v234[24] = v305;
            v234[25] = v306;
            v234[26] = v311;
            v234[27] = v312;
            v234[28] = v307;
            v234[29] = v308;
            v234[30] = v313;
            v234[31] = v314;
            v234 += 32;
            v289 = -1;
          }

          v315 = 0;
          v235[2] = v289;
          if (v236 >= 9 && v237 >= 5)
          {
            v316 = v454[1];
            v317 = v454[4];
            v318 = v454[5];
            v319 = v454[6];
            v320 = v454[7];
            v427 = v454[20];
            v430 = v454[21];
            v433 = v454[22];
            v436 = v454[23];
            v321 = v454[32];
            v322 = v454[33];
            v323 = v454[34];
            v324 = v454[35];
            v325 = v454[48];
            v326 = v454[49];
            v327 = v454[50];
            v328 = v454[51];
            v329 = v454[2];
            v330 = v454[3];
            v331 = v454[36];
            v332 = v454[37];
            v333 = v454[38];
            v334 = v454[39];
            v405 = v454[18];
            v412 = v454[19];
            v335 = v454[16];
            v336 = v454[17];
            v337 = v454[52];
            v338 = v454[53];
            v339 = v454[54];
            v340 = v454[55];
            *v234 = v454[0];
            v234[1] = v316;
            v234[2] = v335;
            v234[3] = v336;
            v234[4] = v329;
            v234[5] = v330;
            v234[6] = v405;
            v234[7] = v412;
            v234[8] = v321;
            v234[9] = v322;
            v234[10] = v325;
            v234[11] = v326;
            v234[12] = v323;
            v234[13] = v324;
            v234[14] = v327;
            v234[15] = v328;
            v234[16] = v317;
            v234[17] = v318;
            v234[18] = v427;
            v234[19] = v430;
            v234[20] = v319;
            v234[21] = v320;
            v234[22] = v433;
            v234[23] = v436;
            v234[24] = v331;
            v234[25] = v332;
            v234[26] = v337;
            v234[27] = v338;
            v341 = v234 + 28;
            *v341 = v333;
            v341[1] = v334;
            v341[2] = v339;
            v341[3] = v340;
            v315 = -1;
          }

          v235[3] = v315;
          if (v437)
          {
            goto LABEL_134;
          }

LABEL_26:
          v29 = v43 == v415 >> 4;
          v43 = v86;
        }

        while (!v29);
        v29 = v25++ == v362;
      }

      while (!v29);
    }
  }
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v41, 256, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v43, 256, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v42, 256, v5, v3[2]);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v44, 256, v5 + v6, v3[3]);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = v9 << 8;
      v11 = *(a1 + 76);
      v12 = &v41[16 * v9 + v11];
      v14 = *(a1 + 56);
      v13 = *(a1 + 64);
      v15 = 16 * *(a1 + 84);
      if ((v15 - 1) >> 32)
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
            v12->n128_u8[v18] = v14->n128_u8[v18];
            ++v18;
          }

          while (v15 > v18);
          v12 += 16;
          v14 = (v14 + v13);
        }
      }

      else if (v14 < &v41[16 * v7 - 16 + 16 * v9 + v15 / 0x10 + v11] && v12 < (v14 + v13 * (v7 - 1) + v15) || v13 < 0)
      {
        for (j = 0; j != v7; ++j)
        {
          v22 = 0;
          do
          {
            v12->n128_u8[v22] = v14->n128_u8[v22];
            ++v22;
          }

          while (v15 > v22);
          v12 += 16;
          v14 = (v14 + v13);
        }
      }

      else if (v8 == 1)
      {
        do
        {
          *v12 = *v14;
          v14 = (v14 + v13);
          v12 += 16;
          --v7;
        }

        while (v7);
      }

      else
      {
        v24 = 0;
        v25 = v41 + v10 + v11 * 16;
        v26 = (&v41[1] + v10 + v11 * 16);
        v27 = v14 + 1;
        v28 = (v14 + (v15 & 0x1FFFFFFE0));
        v29 = &v25[v15 & 0x1FFFFFFE0];
        do
        {
          v30 = v27;
          v31 = v26;
          v32 = v15 & 0x1FFFFFFE0;
          do
          {
            v33 = *v30;
            v31[-1] = v30[-1];
            *v31 = v33;
            v31 += 2;
            v30 += 2;
            v32 -= 32;
          }

          while (v32);
          if (v15 != (v15 & 0x1FFFFFFE0))
          {
            v34 = v29;
            v35 = v28;
            v36 = v15 - (v15 & 0x1FFFFFFE0);
            if (v8)
            {
              do
              {
                v40 = *v35++;
                *v34 = v40;
                v34 += 16;
                v36 -= 16;
              }

              while (v36);
            }

            else
            {
              v37 = 0;
              v38 = (v15 & 0xFFFFFFE0) + 1;
              do
              {
                v29[v37] = *(v28 + v37);
                v39 = v15 > v38++;
                ++v37;
              }

              while (v39);
            }
          }

          ++v24;
          v26 += 16;
          v27 = (v27 + v13);
          v28 = (v28 + v13);
          v29 += 256;
        }

        while (v24 != v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(v41, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v41, 256, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v43, 256, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v42, 256, v5, v3[2]);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v44, 256, v5 + v6, v3[3]);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = v9 << 8;
      v11 = *(a1 + 76);
      v12 = &v41[16 * v9 + v11];
      v14 = *(a1 + 56);
      v13 = *(a1 + 64);
      v15 = 16 * *(a1 + 84);
      if ((v15 - 1) >> 32)
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
            v12->n128_u8[v18] = v14->n128_u8[v18];
            ++v18;
          }

          while (v15 > v18);
          v12 += 16;
          v14 = (v14 + v13);
        }
      }

      else if (v14 < &v41[16 * v7 - 16 + 16 * v9 + v15 / 0x10 + v11] && v12 < (v14 + v13 * (v7 - 1) + v15) || v13 < 0)
      {
        for (j = 0; j != v7; ++j)
        {
          v22 = 0;
          do
          {
            v12->n128_u8[v22] = v14->n128_u8[v22];
            ++v22;
          }

          while (v15 > v22);
          v12 += 16;
          v14 = (v14 + v13);
        }
      }

      else if (v8 == 1)
      {
        do
        {
          *v12 = *v14;
          v14 = (v14 + v13);
          v12 += 16;
          --v7;
        }

        while (v7);
      }

      else
      {
        v24 = 0;
        v25 = v41 + v10 + v11 * 16;
        v26 = (&v41[1] + v10 + v11 * 16);
        v27 = v14 + 1;
        v28 = (v14 + (v15 & 0x1FFFFFFE0));
        v29 = &v25[v15 & 0x1FFFFFFE0];
        do
        {
          v30 = v27;
          v31 = v26;
          v32 = v15 & 0x1FFFFFFE0;
          do
          {
            v33 = *v30;
            v31[-1] = v30[-1];
            *v31 = v33;
            v31 += 2;
            v30 += 2;
            v32 -= 32;
          }

          while (v32);
          if (v15 != (v15 & 0x1FFFFFFE0))
          {
            v34 = v29;
            v35 = v28;
            v36 = v15 - (v15 & 0x1FFFFFFE0);
            if (v8)
            {
              do
              {
                v40 = *v35++;
                *v34 = v40;
                v34 += 16;
                v36 -= 16;
              }

              while (v36);
            }

            else
            {
              v37 = 0;
              v38 = (v15 & 0xFFFFFFE0) + 1;
              do
              {
                v29[v37] = *(v28 + v37);
                v39 = v15 > v38++;
                ++v37;
              }

              while (v39);
            }
          }

          ++v24;
          v26 += 16;
          v27 = (v27 + v13);
          v28 = (v28 + v13);
          v29 += 256;
        }

        while (v24 != v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(v41, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v41, 256, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v43, 256, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v42, 256, v5, v3[2]);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v44, 256, v5 + v6, v3[3]);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = v9 << 8;
      v11 = *(a1 + 76);
      v12 = &v41[16 * v9 + v11];
      v14 = *(a1 + 56);
      v13 = *(a1 + 64);
      v15 = 16 * *(a1 + 84);
      if ((v15 - 1) >> 32)
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
            v12->n128_u8[v18] = v14->n128_u8[v18];
            ++v18;
          }

          while (v15 > v18);
          v12 += 16;
          v14 = (v14 + v13);
        }
      }

      else if (v14 < &v41[16 * v7 - 16 + 16 * v9 + v15 / 0x10 + v11] && v12 < (v14 + v13 * (v7 - 1) + v15) || v13 < 0)
      {
        for (j = 0; j != v7; ++j)
        {
          v22 = 0;
          do
          {
            v12->n128_u8[v22] = v14->n128_u8[v22];
            ++v22;
          }

          while (v15 > v22);
          v12 += 16;
          v14 = (v14 + v13);
        }
      }

      else if (v8 == 1)
      {
        do
        {
          *v12 = *v14;
          v14 = (v14 + v13);
          v12 += 16;
          --v7;
        }

        while (v7);
      }

      else
      {
        v24 = 0;
        v25 = v41 + v10 + v11 * 16;
        v26 = (&v41[1] + v10 + v11 * 16);
        v27 = v14 + 1;
        v28 = (v14 + (v15 & 0x1FFFFFFE0));
        v29 = &v25[v15 & 0x1FFFFFFE0];
        do
        {
          v30 = v27;
          v31 = v26;
          v32 = v15 & 0x1FFFFFFE0;
          do
          {
            v33 = *v30;
            v31[-1] = v30[-1];
            *v31 = v33;
            v31 += 2;
            v30 += 2;
            v32 -= 32;
          }

          while (v32);
          if (v15 != (v15 & 0x1FFFFFFE0))
          {
            v34 = v29;
            v35 = v28;
            v36 = v15 - (v15 & 0x1FFFFFFE0);
            if (v8)
            {
              do
              {
                v40 = *v35++;
                *v34 = v40;
                v34 += 16;
                v36 -= 16;
              }

              while (v36);
            }

            else
            {
              v37 = 0;
              v38 = (v15 & 0xFFFFFFE0) + 1;
              do
              {
                v29[v37] = *(v28 + v37);
                v39 = v15 > v38++;
                ++v37;
              }

              while (v39);
            }
          }

          ++v24;
          v26 += 16;
          v27 = (v27 + v13);
          v28 = (v28 + v13);
          v29 += 256;
        }

        while (v24 != v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(v41, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v41, 256, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v43, 256, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v42, 256, v5, v3[2]);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v44, 256, v5 + v6, v3[3]);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = v9 << 8;
      v11 = *(a1 + 76);
      v12 = &v41[16 * v9 + v11];
      v14 = *(a1 + 56);
      v13 = *(a1 + 64);
      v15 = 16 * *(a1 + 84);
      if ((v15 - 1) >> 32)
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
            v12->n128_u8[v18] = v14->n128_u8[v18];
            ++v18;
          }

          while (v15 > v18);
          v12 += 16;
          v14 = (v14 + v13);
        }
      }

      else if (v14 < &v41[16 * v7 - 16 + 16 * v9 + v15 / 0x10 + v11] && v12 < (v14 + v13 * (v7 - 1) + v15) || v13 < 0)
      {
        for (j = 0; j != v7; ++j)
        {
          v22 = 0;
          do
          {
            v12->n128_u8[v22] = v14->n128_u8[v22];
            ++v22;
          }

          while (v15 > v22);
          v12 += 16;
          v14 = (v14 + v13);
        }
      }

      else if (v8 == 1)
      {
        do
        {
          *v12 = *v14;
          v14 = (v14 + v13);
          v12 += 16;
          --v7;
        }

        while (v7);
      }

      else
      {
        v24 = 0;
        v25 = v41 + v10 + v11 * 16;
        v26 = (&v41[1] + v10 + v11 * 16);
        v27 = v14 + 1;
        v28 = (v14 + (v15 & 0x1FFFFFFE0));
        v29 = &v25[v15 & 0x1FFFFFFE0];
        do
        {
          v30 = v27;
          v31 = v26;
          v32 = v15 & 0x1FFFFFFE0;
          do
          {
            v33 = *v30;
            v31[-1] = v30[-1];
            *v31 = v33;
            v31 += 2;
            v30 += 2;
            v32 -= 32;
          }

          while (v32);
          if (v15 != (v15 & 0x1FFFFFFE0))
          {
            v34 = v29;
            v35 = v28;
            v36 = v15 - (v15 & 0x1FFFFFFE0);
            if (v8)
            {
              do
              {
                v40 = *v35++;
                *v34 = v40;
                v34 += 16;
                v36 -= 16;
              }

              while (v36);
            }

            else
            {
              v37 = 0;
              v38 = (v15 & 0xFFFFFFE0) + 1;
              do
              {
                v29[v37] = *(v28 + v37);
                v39 = v15 > v38++;
                ++v37;
              }

              while (v39);
            }
          }

          ++v24;
          v26 += 16;
          v27 = (v27 + v13);
          v28 = (v28 + v13);
          v29 += 256;
        }

        while (v24 != v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(v41, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v84, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      result = 4 * *(a1 + 76);
      v7 = &v84[4 * v5].i8[result];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 4 * v4;
      v11 = &v84[4 * v3 - 4 + 4 * v5].i8[4 * v4 + result];
      v14 = v7 < &v9[4 * v4 + v8 * (v3 - 1)] && v9 < v11 || v8 < 0;
      if (v4 == 1)
      {
        for (i = 0; i != v3; ++i)
        {
          v16 = &v9[v8 * i];
          v17 = &v7[64 * i];
          v18 = -1;
          do
          {
            v19 = *v16++;
            *v17++ = v19;
            ++v18;
          }

          while (v18 < 3);
        }
      }

      else if (!v10 || (v10 - 1) >> 32)
      {
        for (j = 0; j != v3; ++j)
        {
          v23 = 0;
          do
          {
            v7[v23] = v9[v23];
            ++v23;
          }

          while (v10 > v23);
          v7 += 64;
          v9 += v8;
        }
      }

      else if (v14)
      {
        for (k = 0; k != v3; ++k)
        {
          v21 = 0;
          do
          {
            v7[v21] = v9[v21];
            ++v21;
          }

          while (v10 > v21);
          v7 += 64;
          v9 += v8;
        }
      }

      else
      {
        v47 = v10 & 0x1FFFFFFF8;
        if (v4 > 7)
        {
          v53 = v10 & 0x1FFFFFFE0;
          if (v10 == (v10 & 0x1FFFFFFE0))
          {
            v54 = 0;
            v55 = &v84[1].i8[v6 + result];
            v56 = (v9 + 16);
            do
            {
              v57 = v56;
              v58 = v55;
              v59 = v10;
              do
              {
                v60 = *v57;
                *(v58 - 1) = *(v57 - 1);
                *v58 = v60;
                v58 += 32;
                v57 += 2;
                v59 -= 32;
              }

              while (v59);
              ++v54;
              v55 += 64;
              v56 = (v56 + v8);
            }

            while (v54 != v3);
          }

          else
          {
            v69 = 0;
            v70 = v4 & 6;
            v71 = &v84[0].i8[v6 + result];
            v72 = &v84[1].i8[v6 + result];
            result = (v9 + 16);
            v73 = &v9[v53];
            v74 = &v71[v53];
            do
            {
              v75 = result;
              v76 = v72;
              v77 = v10 & 0x1FFFFFFE0;
              do
              {
                v78 = *v75;
                *(v76 - 1) = *(v75 - 1);
                *v76 = v78;
                v76 += 32;
                v75 += 2;
                v77 -= 32;
              }

              while (v77);
              v79 = v10 & 0x1FFFFFFE0;
              if (!v70)
              {
                goto LABEL_71;
              }

              v80 = v74;
              v81 = v73;
              v82 = v47 - v53;
              do
              {
                v83 = *v81++;
                *v80 = v83;
                v80 += 8;
                v82 -= 8;
              }

              while (v82);
              v79 = v10 & 0x1FFFFFFF8;
              if (v10 != v47)
              {
LABEL_71:
                do
                {
                  v7[v79] = v9[v79];
                  ++v79;
                }

                while (v10 > v79);
              }

              ++v69;
              v72 += 64;
              result += v8;
              v73 += v8;
              v74 += 64;
              v7 += 64;
              v9 += v8;
            }

            while (v69 != v3);
          }
        }

        else if (v10 == v47)
        {
          for (m = 0; m != v3; ++m)
          {
            v49 = v7;
            v50 = v9;
            v51 = v10;
            do
            {
              v52 = *v50;
              v50 += 8;
              *v49 = v52;
              v49 += 8;
              v51 -= 8;
            }

            while (v51);
            v9 += v8;
            v7 += 64;
          }
        }

        else
        {
          v61 = 0;
          v62 = v7;
          do
          {
            v63 = &v7[64 * v61 + v47];
            v64 = v62;
            v65 = v9;
            v66 = v10 & 0x1FFFFFFF8;
            do
            {
              v67 = *v65;
              v65 += 8;
              *v64 = v67;
              v64 += 8;
              v66 -= 8;
            }

            while (v66);
            v68 = v10 & 0x1FFFFFFF8;
            do
            {
              result = v9[v68];
              *v63++ = result;
              ++v68;
            }

            while (v10 > v68);
            ++v61;
            v9 += v8;
            v62 += 64;
          }

          while (v61 != v3);
        }
      }
    }
  }

  v24 = *(a1 + 40);
  v25 = *(a1 + 48);
  v26 = *(a1 + 88);
  v27 = &byte_29D2F2FD5;
  v28 = 16;
  v29 = *(a1 + 89);
  do
  {
    v44 = *v27;
    v45 = *(v27 - 1);
    if (v26 <= 8 * v45 || 4 * v44 >= v29)
    {
      v43 = 0;
    }

    else
    {
      v30 = &v84[16 * v44 + 2 * v45];
      v31 = v30[1];
      v32 = v30[4];
      v33 = v30[5];
      v34 = vzip1q_s64(*v30, v32);
      v35 = vzip2q_s64(*v30, v32);
      v36 = vzip1q_s64(v31, v33);
      v37 = vzip2q_s64(v31, v33);
      v38 = v30[8];
      v39 = v30[9];
      v30 += 12;
      v40 = v30[1];
      v41 = vzip1q_s64(v38, *v30);
      v42 = vzip2q_s64(v38, *v30);
      *v24 = v34;
      v24[1] = v35;
      v24[2] = v41;
      v24[3] = v42;
      v24[4] = v36;
      v24[5] = v37;
      v24[6] = vzip1q_s64(v39, v40);
      v24[7] = vzip2q_s64(v39, v40);
      v24 += 8;
      v43 = 127;
    }

    *v25++ = v43;
    v27 += 2;
    v28 -= 2;
  }

  while (v28);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v63, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 6;
      v6 = 4 * *(a1 + 76);
      v7 = &v63[4 * v4].i8[v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 4 * v3;
      v11 = &v63[4 * v2 - 4 + 4 * v4].i8[4 * v3 + v6];
      v14 = v7 < &v9[4 * v3 + v8 * (v2 - 1)] && v9 < v11 || v8 < 0;
      if (v3 == 1)
      {
        for (i = 0; i != v2; ++i)
        {
          v16 = &v9[v8 * i];
          v17 = &v7[64 * i];
          v18 = -1;
          do
          {
            v19 = *v16++;
            *v17++ = v19;
            ++v18;
          }

          while (v18 < 3);
        }
      }

      else if (!v10 || (v10 - 1) >> 32)
      {
        for (j = 0; j != v2; ++j)
        {
          v23 = 0;
          do
          {
            v7[v23] = v9[v23];
            ++v23;
          }

          while (v10 > v23);
          v7 += 64;
          v9 += v8;
        }
      }

      else if (v14)
      {
        for (k = 0; k != v2; ++k)
        {
          v21 = 0;
          do
          {
            v7[v21] = v9[v21];
            ++v21;
          }

          while (v10 > v21);
          v7 += 64;
          v9 += v8;
        }
      }

      else
      {
        v25 = v10 & 0x1FFFFFFF8;
        if (v3 > 7)
        {
          v31 = v10 & 0x1FFFFFFE0;
          if (v10 == (v10 & 0x1FFFFFFE0))
          {
            v32 = 0;
            v33 = &v63[1].i8[v5 + v6];
            v34 = (v9 + 16);
            do
            {
              v35 = v34;
              v36 = v33;
              v37 = v10;
              do
              {
                v38 = *v35;
                *(v36 - 1) = *(v35 - 1);
                *v36 = v38;
                v36 += 32;
                v35 += 2;
                v37 -= 32;
              }

              while (v37);
              ++v32;
              v33 += 64;
              v34 = (v34 + v8);
            }

            while (v32 != v2);
          }

          else
          {
            v47 = 0;
            v48 = v3 & 6;
            v49 = &v63[0].i8[v5 + v6];
            v50 = &v63[1].i8[v5 + v6];
            v51 = (v9 + 16);
            v52 = &v9[v31];
            v53 = &v49[v31];
            do
            {
              v54 = v51;
              v55 = v50;
              v56 = v10 & 0x1FFFFFFE0;
              do
              {
                v57 = *v54;
                *(v55 - 1) = *(v54 - 1);
                *v55 = v57;
                v55 += 32;
                v54 += 2;
                v56 -= 32;
              }

              while (v56);
              v58 = v10 & 0x1FFFFFFE0;
              if (!v48)
              {
                goto LABEL_63;
              }

              v59 = v53;
              v60 = v52;
              v61 = v25 - v31;
              do
              {
                v62 = *v60++;
                *v59 = v62;
                v59 += 8;
                v61 -= 8;
              }

              while (v61);
              v58 = v10 & 0x1FFFFFFF8;
              if (v10 != v25)
              {
LABEL_63:
                do
                {
                  v7[v58] = v9[v58];
                  ++v58;
                }

                while (v10 > v58);
              }

              ++v47;
              v50 += 64;
              v51 = (v51 + v8);
              v52 += v8;
              v53 += 64;
              v7 += 64;
              v9 += v8;
            }

            while (v47 != v2);
          }
        }

        else if (v10 == v25)
        {
          for (m = 0; m != v2; ++m)
          {
            v27 = v7;
            v28 = v9;
            v29 = v10;
            do
            {
              v30 = *v28;
              v28 += 8;
              *v27 = v30;
              v27 += 8;
              v29 -= 8;
            }

            while (v29);
            v9 += v8;
            v7 += 64;
          }
        }

        else
        {
          v39 = 0;
          v40 = v7;
          do
          {
            v41 = &v7[64 * v39 + v25];
            v42 = v40;
            v43 = v9;
            v44 = v10 & 0x1FFFFFFF8;
            do
            {
              v45 = *v43;
              v43 += 8;
              *v42 = v45;
              v42 += 8;
              v44 -= 8;
            }

            while (v44);
            v46 = v10 & 0x1FFFFFFF8;
            do
            {
              *v41++ = v9[v46++];
            }

            while (v10 > v46);
            ++v39;
            v9 += v8;
            v40 += 64;
          }

          while (v39 != v2);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v63, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v84, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      result = 4 * *(a1 + 76);
      v7 = &v84[4 * v5].i8[result];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 4 * v4;
      v11 = &v84[4 * v3 - 4 + 4 * v5].i8[4 * v4 + result];
      v14 = v7 < &v9[4 * v4 + v8 * (v3 - 1)] && v9 < v11 || v8 < 0;
      if (v4 == 1)
      {
        for (i = 0; i != v3; ++i)
        {
          v16 = &v9[v8 * i];
          v17 = &v7[64 * i];
          v18 = -1;
          do
          {
            v19 = *v16++;
            *v17++ = v19;
            ++v18;
          }

          while (v18 < 3);
        }
      }

      else if (!v10 || (v10 - 1) >> 32)
      {
        for (j = 0; j != v3; ++j)
        {
          v23 = 0;
          do
          {
            v7[v23] = v9[v23];
            ++v23;
          }

          while (v10 > v23);
          v7 += 64;
          v9 += v8;
        }
      }

      else if (v14)
      {
        for (k = 0; k != v3; ++k)
        {
          v21 = 0;
          do
          {
            v7[v21] = v9[v21];
            ++v21;
          }

          while (v10 > v21);
          v7 += 64;
          v9 += v8;
        }
      }

      else
      {
        v47 = v10 & 0x1FFFFFFF8;
        if (v4 > 7)
        {
          v53 = v10 & 0x1FFFFFFE0;
          if (v10 == (v10 & 0x1FFFFFFE0))
          {
            v54 = 0;
            v55 = &v84[1].i8[v6 + result];
            v56 = (v9 + 16);
            do
            {
              v57 = v56;
              v58 = v55;
              v59 = v10;
              do
              {
                v60 = *v57;
                *(v58 - 1) = *(v57 - 1);
                *v58 = v60;
                v58 += 32;
                v57 += 2;
                v59 -= 32;
              }

              while (v59);
              ++v54;
              v55 += 64;
              v56 = (v56 + v8);
            }

            while (v54 != v3);
          }

          else
          {
            v69 = 0;
            v70 = v4 & 6;
            v71 = &v84[0].i8[v6 + result];
            v72 = &v84[1].i8[v6 + result];
            result = (v9 + 16);
            v73 = &v9[v53];
            v74 = &v71[v53];
            do
            {
              v75 = result;
              v76 = v72;
              v77 = v10 & 0x1FFFFFFE0;
              do
              {
                v78 = *v75;
                *(v76 - 1) = *(v75 - 1);
                *v76 = v78;
                v76 += 32;
                v75 += 2;
                v77 -= 32;
              }

              while (v77);
              v79 = v10 & 0x1FFFFFFE0;
              if (!v70)
              {
                goto LABEL_71;
              }

              v80 = v74;
              v81 = v73;
              v82 = v47 - v53;
              do
              {
                v83 = *v81++;
                *v80 = v83;
                v80 += 8;
                v82 -= 8;
              }

              while (v82);
              v79 = v10 & 0x1FFFFFFF8;
              if (v10 != v47)
              {
LABEL_71:
                do
                {
                  v7[v79] = v9[v79];
                  ++v79;
                }

                while (v10 > v79);
              }

              ++v69;
              v72 += 64;
              result += v8;
              v73 += v8;
              v74 += 64;
              v7 += 64;
              v9 += v8;
            }

            while (v69 != v3);
          }
        }

        else if (v10 == v47)
        {
          for (m = 0; m != v3; ++m)
          {
            v49 = v7;
            v50 = v9;
            v51 = v10;
            do
            {
              v52 = *v50;
              v50 += 8;
              *v49 = v52;
              v49 += 8;
              v51 -= 8;
            }

            while (v51);
            v9 += v8;
            v7 += 64;
          }
        }

        else
        {
          v61 = 0;
          v62 = v7;
          do
          {
            v63 = &v7[64 * v61 + v47];
            v64 = v62;
            v65 = v9;
            v66 = v10 & 0x1FFFFFFF8;
            do
            {
              v67 = *v65;
              v65 += 8;
              *v64 = v67;
              v64 += 8;
              v66 -= 8;
            }

            while (v66);
            v68 = v10 & 0x1FFFFFFF8;
            do
            {
              result = v9[v68];
              *v63++ = result;
              ++v68;
            }

            while (v10 > v68);
            ++v61;
            v9 += v8;
            v62 += 64;
          }

          while (v61 != v3);
        }
      }
    }
  }

  v24 = *(a1 + 40);
  v25 = *(a1 + 48);
  v26 = *(a1 + 88);
  v27 = &byte_29D2F2FD5;
  v28 = 16;
  v29 = *(a1 + 89);
  do
  {
    v44 = *v27;
    v45 = *(v27 - 1);
    if (v26 <= 8 * v45 || 4 * v44 >= v29)
    {
      v43 = 0;
    }

    else
    {
      v30 = &v84[16 * v44 + 2 * v45];
      v31 = v30[1];
      v32 = v30[4];
      v33 = v30[5];
      v34 = vzip1q_s64(*v30, v32);
      v35 = vzip2q_s64(*v30, v32);
      v36 = vzip1q_s64(v31, v33);
      v37 = vzip2q_s64(v31, v33);
      v38 = v30[8];
      v39 = v30[9];
      v30 += 12;
      v40 = v30[1];
      v41 = vzip1q_s64(v38, *v30);
      v42 = vzip2q_s64(v38, *v30);
      *v24 = v34;
      v24[1] = v35;
      v24[2] = v41;
      v24[3] = v42;
      v24[4] = v36;
      v24[5] = v37;
      v24[6] = vzip1q_s64(v39, v40);
      v24[7] = vzip2q_s64(v39, v40);
      v24 += 8;
      v43 = 127;
    }

    *v25++ = v43;
    v27 += 2;
    v28 -= 2;
  }

  while (v28);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v63, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 6;
      v6 = 4 * *(a1 + 76);
      v7 = &v63[4 * v4].i8[v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 4 * v3;
      v11 = &v63[4 * v2 - 4 + 4 * v4].i8[4 * v3 + v6];
      v14 = v7 < &v9[4 * v3 + v8 * (v2 - 1)] && v9 < v11 || v8 < 0;
      if (v3 == 1)
      {
        for (i = 0; i != v2; ++i)
        {
          v16 = &v9[v8 * i];
          v17 = &v7[64 * i];
          v18 = -1;
          do
          {
            v19 = *v16++;
            *v17++ = v19;
            ++v18;
          }

          while (v18 < 3);
        }
      }

      else if (!v10 || (v10 - 1) >> 32)
      {
        for (j = 0; j != v2; ++j)
        {
          v23 = 0;
          do
          {
            v7[v23] = v9[v23];
            ++v23;
          }

          while (v10 > v23);
          v7 += 64;
          v9 += v8;
        }
      }

      else if (v14)
      {
        for (k = 0; k != v2; ++k)
        {
          v21 = 0;
          do
          {
            v7[v21] = v9[v21];
            ++v21;
          }

          while (v10 > v21);
          v7 += 64;
          v9 += v8;
        }
      }

      else
      {
        v25 = v10 & 0x1FFFFFFF8;
        if (v3 > 7)
        {
          v31 = v10 & 0x1FFFFFFE0;
          if (v10 == (v10 & 0x1FFFFFFE0))
          {
            v32 = 0;
            v33 = &v63[1].i8[v5 + v6];
            v34 = (v9 + 16);
            do
            {
              v35 = v34;
              v36 = v33;
              v37 = v10;
              do
              {
                v38 = *v35;
                *(v36 - 1) = *(v35 - 1);
                *v36 = v38;
                v36 += 32;
                v35 += 2;
                v37 -= 32;
              }

              while (v37);
              ++v32;
              v33 += 64;
              v34 = (v34 + v8);
            }

            while (v32 != v2);
          }

          else
          {
            v47 = 0;
            v48 = v3 & 6;
            v49 = &v63[0].i8[v5 + v6];
            v50 = &v63[1].i8[v5 + v6];
            v51 = (v9 + 16);
            v52 = &v9[v31];
            v53 = &v49[v31];
            do
            {
              v54 = v51;
              v55 = v50;
              v56 = v10 & 0x1FFFFFFE0;
              do
              {
                v57 = *v54;
                *(v55 - 1) = *(v54 - 1);
                *v55 = v57;
                v55 += 32;
                v54 += 2;
                v56 -= 32;
              }

              while (v56);
              v58 = v10 & 0x1FFFFFFE0;
              if (!v48)
              {
                goto LABEL_63;
              }

              v59 = v53;
              v60 = v52;
              v61 = v25 - v31;
              do
              {
                v62 = *v60++;
                *v59 = v62;
                v59 += 8;
                v61 -= 8;
              }

              while (v61);
              v58 = v10 & 0x1FFFFFFF8;
              if (v10 != v25)
              {
LABEL_63:
                do
                {
                  v7[v58] = v9[v58];
                  ++v58;
                }

                while (v10 > v58);
              }

              ++v47;
              v50 += 64;
              v51 = (v51 + v8);
              v52 += v8;
              v53 += 64;
              v7 += 64;
              v9 += v8;
            }

            while (v47 != v2);
          }
        }

        else if (v10 == v25)
        {
          for (m = 0; m != v2; ++m)
          {
            v27 = v7;
            v28 = v9;
            v29 = v10;
            do
            {
              v30 = *v28;
              v28 += 8;
              *v27 = v30;
              v27 += 8;
              v29 -= 8;
            }

            while (v29);
            v9 += v8;
            v7 += 64;
          }
        }

        else
        {
          v39 = 0;
          v40 = v7;
          do
          {
            v41 = &v7[64 * v39 + v25];
            v42 = v40;
            v43 = v9;
            v44 = v10 & 0x1FFFFFFF8;
            do
            {
              v45 = *v43;
              v43 += 8;
              *v42 = v45;
              v42 += 8;
              v44 -= 8;
            }

            while (v44);
            v46 = v10 & 0x1FFFFFFF8;
            do
            {
              *v41++ = v9[v46++];
            }

            while (v10 > v46);
            ++v39;
            v9 += v8;
            v40 += 64;
          }

          while (v39 != v2);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v63, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v84, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      result = 4 * *(a1 + 76);
      v7 = &v84[64 * v5 + result];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 4 * v4;
      v11 = &v84[64 * v3 - 64 + 64 * v5 + 4 * v4 + result];
      v14 = v7 < v9 + 4 * v4 + v8 * (v3 - 1) && v9 < v11 || v8 < 0;
      if (v4 == 1)
      {
        for (i = 0; i != v3; ++i)
        {
          v16 = v9 + v8 * i;
          v17 = &v7[64 * i];
          v18 = -1;
          do
          {
            v19 = *v16++;
            *v17++ = v19;
            ++v18;
          }

          while (v18 < 3);
        }
      }

      else if (!v10 || (v10 - 1) >> 32)
      {
        for (j = 0; j != v3; ++j)
        {
          v23 = 0;
          do
          {
            v7[v23] = *(v9 + v23);
            ++v23;
          }

          while (v10 > v23);
          v7 += 64;
          v9 = (v9 + v8);
        }
      }

      else if (v14)
      {
        for (k = 0; k != v3; ++k)
        {
          v21 = 0;
          do
          {
            v7[v21] = *(v9 + v21);
            ++v21;
          }

          while (v10 > v21);
          v7 += 64;
          v9 = (v9 + v8);
        }
      }

      else
      {
        v47 = v10 & 0x1FFFFFFF8;
        if (v4 > 7)
        {
          v53 = v10 & 0x1FFFFFFE0;
          if (v10 == (v10 & 0x1FFFFFFE0))
          {
            v54 = 0;
            v55 = &v84[v6 + 16 + result];
            v56 = (v9 + 2);
            do
            {
              v57 = v56;
              v58 = v55;
              v59 = v10;
              do
              {
                v60 = *v57;
                *(v58 - 1) = *(v57 - 1);
                *v58 = v60;
                v58 += 2;
                v57 += 2;
                v59 -= 32;
              }

              while (v59);
              ++v54;
              v55 += 64;
              v56 = (v56 + v8);
            }

            while (v54 != v3);
          }

          else
          {
            v69 = 0;
            v70 = v4 & 6;
            v71 = &v84[v6 + result];
            v72 = &v84[v6 + 16 + result];
            result = (v9 + 2);
            v73 = (v9 + v53);
            v74 = &v71[v53];
            do
            {
              v75 = result;
              v76 = v72;
              v77 = v10 & 0x1FFFFFFE0;
              do
              {
                v78 = *v75;
                *(v76 - 1) = *(v75 - 1);
                *v76 = v78;
                v76 += 2;
                v75 += 2;
                v77 -= 32;
              }

              while (v77);
              v79 = v10 & 0x1FFFFFFE0;
              if (!v70)
              {
                goto LABEL_71;
              }

              v80 = v74;
              v81 = v73;
              v82 = v47 - v53;
              do
              {
                v83 = *v81++;
                *v80++ = v83;
                v82 -= 8;
              }

              while (v82);
              v79 = v10 & 0x1FFFFFFF8;
              if (v10 != v47)
              {
LABEL_71:
                do
                {
                  v7[v79] = *(v9 + v79);
                  ++v79;
                }

                while (v10 > v79);
              }

              ++v69;
              v72 += 64;
              result += v8;
              v73 = (v73 + v8);
              v74 += 8;
              v7 += 64;
              v9 = (v9 + v8);
            }

            while (v69 != v3);
          }
        }

        else if (v10 == v47)
        {
          for (m = 0; m != v3; ++m)
          {
            v49 = v7;
            v50 = v9;
            v51 = v10;
            do
            {
              v52 = *v50++;
              *v49++ = v52;
              v51 -= 8;
            }

            while (v51);
            v9 = (v9 + v8);
            v7 += 64;
          }
        }

        else
        {
          v61 = 0;
          v62 = v7;
          do
          {
            v63 = &v7[64 * v61 + v47];
            v64 = v62;
            v65 = v9;
            v66 = v10 & 0x1FFFFFFF8;
            do
            {
              v67 = *v65++;
              *v64++ = v67;
              v66 -= 8;
            }

            while (v66);
            v68 = v10 & 0x1FFFFFFF8;
            do
            {
              result = *(v9 + v68);
              *v63++ = result;
              ++v68;
            }

            while (v10 > v68);
            ++v61;
            v9 = (v9 + v8);
            v62 += 8;
          }

          while (v61 != v3);
        }
      }
    }
  }

  v24 = *(a1 + 40);
  v25 = *(a1 + 48);
  v26 = *(a1 + 88);
  v27 = &byte_29D2F2FD5;
  v28 = 16;
  v29 = *(a1 + 89);
  do
  {
    v44 = *v27;
    v45 = *(v27 - 1);
    if (v26 <= 8 * v45 || 4 * v44 >= v29)
    {
      v43 = 0;
    }

    else
    {
      v30 = &v84[256 * v44 + 32 * v45];
      v31 = v30[1];
      v32 = v30[4];
      v33 = v30[5];
      v34 = vzip1q_s64(*v30, v32);
      v35 = vzip2q_s64(*v30, v32);
      v36 = vzip1q_s64(v31, v33);
      v37 = vzip2q_s64(v31, v33);
      v38 = v30[8];
      v39 = v30[9];
      v30 += 12;
      v40 = v30[1];
      v41 = vzip1q_s64(v38, *v30);
      v42 = vzip2q_s64(v38, *v30);
      *v24 = v34;
      v24[1] = v35;
      v24[2] = v41;
      v24[3] = v42;
      v24[4] = v36;
      v24[5] = v37;
      v24[6] = vzip1q_s64(v39, v40);
      v24[7] = vzip2q_s64(v39, v40);
      v24 += 8;
      v43 = 127;
    }

    *v25++ = v43;
    v27 += 2;
    v28 -= 2;
  }

  while (v28);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v63, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 6;
      v6 = 4 * *(a1 + 76);
      v7 = &v63[64 * v4 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 4 * v3;
      v11 = &v63[64 * v2 - 64 + 64 * v4 + 4 * v3 + v6];
      v14 = v7 < v9 + 4 * v3 + v8 * (v2 - 1) && v9 < v11 || v8 < 0;
      if (v3 == 1)
      {
        for (i = 0; i != v2; ++i)
        {
          v16 = v9 + v8 * i;
          v17 = &v7[64 * i];
          v18 = -1;
          do
          {
            v19 = *v16++;
            *v17++ = v19;
            ++v18;
          }

          while (v18 < 3);
        }
      }

      else if (!v10 || (v10 - 1) >> 32)
      {
        for (j = 0; j != v2; ++j)
        {
          v23 = 0;
          do
          {
            v7[v23] = *(v9 + v23);
            ++v23;
          }

          while (v10 > v23);
          v7 += 64;
          v9 = (v9 + v8);
        }
      }

      else if (v14)
      {
        for (k = 0; k != v2; ++k)
        {
          v21 = 0;
          do
          {
            v7[v21] = *(v9 + v21);
            ++v21;
          }

          while (v10 > v21);
          v7 += 64;
          v9 = (v9 + v8);
        }
      }

      else
      {
        v25 = v10 & 0x1FFFFFFF8;
        if (v3 > 7)
        {
          v31 = v10 & 0x1FFFFFFE0;
          if (v10 == (v10 & 0x1FFFFFFE0))
          {
            v32 = 0;
            v33 = &v63[v5 + 16 + v6];
            v34 = (v9 + 2);
            do
            {
              v35 = v34;
              v36 = v33;
              v37 = v10;
              do
              {
                v38 = *v35;
                *(v36 - 1) = *(v35 - 1);
                *v36 = v38;
                v36 += 2;
                v35 += 2;
                v37 -= 32;
              }

              while (v37);
              ++v32;
              v33 += 64;
              v34 = (v34 + v8);
            }

            while (v32 != v2);
          }

          else
          {
            v47 = 0;
            v48 = v3 & 6;
            v49 = &v63[v5 + v6];
            v50 = &v63[v5 + 16 + v6];
            v51 = (v9 + 2);
            v52 = (v9 + v31);
            v53 = &v49[v31];
            do
            {
              v54 = v51;
              v55 = v50;
              v56 = v10 & 0x1FFFFFFE0;
              do
              {
                v57 = *v54;
                *(v55 - 1) = *(v54 - 1);
                *v55 = v57;
                v55 += 2;
                v54 += 2;
                v56 -= 32;
              }

              while (v56);
              v58 = v10 & 0x1FFFFFFE0;
              if (!v48)
              {
                goto LABEL_63;
              }

              v59 = v53;
              v60 = v52;
              v61 = v25 - v31;
              do
              {
                v62 = *v60++;
                *v59++ = v62;
                v61 -= 8;
              }

              while (v61);
              v58 = v10 & 0x1FFFFFFF8;
              if (v10 != v25)
              {
LABEL_63:
                do
                {
                  v7[v58] = *(v9 + v58);
                  ++v58;
                }

                while (v10 > v58);
              }

              ++v47;
              v50 += 64;
              v51 = (v51 + v8);
              v52 = (v52 + v8);
              v53 += 8;
              v7 += 64;
              v9 = (v9 + v8);
            }

            while (v47 != v2);
          }
        }

        else if (v10 == v25)
        {
          for (m = 0; m != v2; ++m)
          {
            v27 = v7;
            v28 = v9;
            v29 = v10;
            do
            {
              v30 = *v28++;
              *v27++ = v30;
              v29 -= 8;
            }

            while (v29);
            v9 = (v9 + v8);
            v7 += 64;
          }
        }

        else
        {
          v39 = 0;
          v40 = v7;
          do
          {
            v41 = &v7[64 * v39 + v25];
            v42 = v40;
            v43 = v9;
            v44 = v10 & 0x1FFFFFFF8;
            do
            {
              v45 = *v43++;
              *v42++ = v45;
              v44 -= 8;
            }

            while (v44);
            v46 = v10 & 0x1FFFFFFF8;
            do
            {
              *v41++ = *(v9 + v46++);
            }

            while (v10 > v46);
            ++v39;
            v9 = (v9 + v8);
            v40 += 8;
          }

          while (v39 != v2);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v63, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v84, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      result = 4 * *(a1 + 76);
      v7 = &v84[64 * v5 + result];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 4 * v4;
      v11 = &v84[64 * v3 - 64 + 64 * v5 + 4 * v4 + result];
      v14 = v7 < v9 + 4 * v4 + v8 * (v3 - 1) && v9 < v11 || v8 < 0;
      if (v4 == 1)
      {
        for (i = 0; i != v3; ++i)
        {
          v16 = v9 + v8 * i;
          v17 = &v7[64 * i];
          v18 = -1;
          do
          {
            v19 = *v16++;
            *v17++ = v19;
            ++v18;
          }

          while (v18 < 3);
        }
      }

      else if (!v10 || (v10 - 1) >> 32)
      {
        for (j = 0; j != v3; ++j)
        {
          v23 = 0;
          do
          {
            v7[v23] = *(v9 + v23);
            ++v23;
          }

          while (v10 > v23);
          v7 += 64;
          v9 = (v9 + v8);
        }
      }

      else if (v14)
      {
        for (k = 0; k != v3; ++k)
        {
          v21 = 0;
          do
          {
            v7[v21] = *(v9 + v21);
            ++v21;
          }

          while (v10 > v21);
          v7 += 64;
          v9 = (v9 + v8);
        }
      }

      else
      {
        v47 = v10 & 0x1FFFFFFF8;
        if (v4 > 7)
        {
          v53 = v10 & 0x1FFFFFFE0;
          if (v10 == (v10 & 0x1FFFFFFE0))
          {
            v54 = 0;
            v55 = &v84[v6 + 16 + result];
            v56 = (v9 + 2);
            do
            {
              v57 = v56;
              v58 = v55;
              v59 = v10;
              do
              {
                v60 = *v57;
                *(v58 - 1) = *(v57 - 1);
                *v58 = v60;
                v58 += 2;
                v57 += 2;
                v59 -= 32;
              }

              while (v59);
              ++v54;
              v55 += 64;
              v56 = (v56 + v8);
            }

            while (v54 != v3);
          }

          else
          {
            v69 = 0;
            v70 = v4 & 6;
            v71 = &v84[v6 + result];
            v72 = &v84[v6 + 16 + result];
            result = (v9 + 2);
            v73 = (v9 + v53);
            v74 = &v71[v53];
            do
            {
              v75 = result;
              v76 = v72;
              v77 = v10 & 0x1FFFFFFE0;
              do
              {
                v78 = *v75;
                *(v76 - 1) = *(v75 - 1);
                *v76 = v78;
                v76 += 2;
                v75 += 2;
                v77 -= 32;
              }

              while (v77);
              v79 = v10 & 0x1FFFFFFE0;
              if (!v70)
              {
                goto LABEL_71;
              }

              v80 = v74;
              v81 = v73;
              v82 = v47 - v53;
              do
              {
                v83 = *v81++;
                *v80++ = v83;
                v82 -= 8;
              }

              while (v82);
              v79 = v10 & 0x1FFFFFFF8;
              if (v10 != v47)
              {
LABEL_71:
                do
                {
                  v7[v79] = *(v9 + v79);
                  ++v79;
                }

                while (v10 > v79);
              }

              ++v69;
              v72 += 64;
              result += v8;
              v73 = (v73 + v8);
              v74 += 8;
              v7 += 64;
              v9 = (v9 + v8);
            }

            while (v69 != v3);
          }
        }

        else if (v10 == v47)
        {
          for (m = 0; m != v3; ++m)
          {
            v49 = v7;
            v50 = v9;
            v51 = v10;
            do
            {
              v52 = *v50++;
              *v49++ = v52;
              v51 -= 8;
            }

            while (v51);
            v9 = (v9 + v8);
            v7 += 64;
          }
        }

        else
        {
          v61 = 0;
          v62 = v7;
          do
          {
            v63 = &v7[64 * v61 + v47];
            v64 = v62;
            v65 = v9;
            v66 = v10 & 0x1FFFFFFF8;
            do
            {
              v67 = *v65++;
              *v64++ = v67;
              v66 -= 8;
            }

            while (v66);
            v68 = v10 & 0x1FFFFFFF8;
            do
            {
              result = *(v9 + v68);
              *v63++ = result;
              ++v68;
            }

            while (v10 > v68);
            ++v61;
            v9 = (v9 + v8);
            v62 += 8;
          }

          while (v61 != v3);
        }
      }
    }
  }

  v24 = *(a1 + 40);
  v25 = *(a1 + 48);
  v26 = *(a1 + 88);
  v27 = &byte_29D2F2FD5;
  v28 = 16;
  v29 = *(a1 + 89);
  do
  {
    v44 = *v27;
    v45 = *(v27 - 1);
    if (v26 <= 8 * v45 || 4 * v44 >= v29)
    {
      v43 = 0;
    }

    else
    {
      v30 = &v84[256 * v44 + 32 * v45];
      v31 = v30[1];
      v32 = v30[4];
      v33 = v30[5];
      v34 = vzip1q_s64(*v30, v32);
      v35 = vzip2q_s64(*v30, v32);
      v36 = vzip1q_s64(v31, v33);
      v37 = vzip2q_s64(v31, v33);
      v38 = v30[8];
      v39 = v30[9];
      v30 += 12;
      v40 = v30[1];
      v41 = vzip1q_s64(v38, *v30);
      v42 = vzip2q_s64(v38, *v30);
      *v24 = v34;
      v24[1] = v35;
      v24[2] = v41;
      v24[3] = v42;
      v24[4] = v36;
      v24[5] = v37;
      v24[6] = vzip1q_s64(v39, v40);
      v24[7] = vzip2q_s64(v39, v40);
      v24 += 8;
      v43 = 127;
    }

    *v25++ = v43;
    v27 += 2;
    v28 -= 2;
  }

  while (v28);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v63, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 6;
      v6 = 4 * *(a1 + 76);
      v7 = &v63[64 * v4 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 4 * v3;
      v11 = &v63[64 * v2 - 64 + 64 * v4 + 4 * v3 + v6];
      v14 = v7 < v9 + 4 * v3 + v8 * (v2 - 1) && v9 < v11 || v8 < 0;
      if (v3 == 1)
      {
        for (i = 0; i != v2; ++i)
        {
          v16 = v9 + v8 * i;
          v17 = &v7[64 * i];
          v18 = -1;
          do
          {
            v19 = *v16++;
            *v17++ = v19;
            ++v18;
          }

          while (v18 < 3);
        }
      }

      else if (!v10 || (v10 - 1) >> 32)
      {
        for (j = 0; j != v2; ++j)
        {
          v23 = 0;
          do
          {
            v7[v23] = *(v9 + v23);
            ++v23;
          }

          while (v10 > v23);
          v7 += 64;
          v9 = (v9 + v8);
        }
      }

      else if (v14)
      {
        for (k = 0; k != v2; ++k)
        {
          v21 = 0;
          do
          {
            v7[v21] = *(v9 + v21);
            ++v21;
          }

          while (v10 > v21);
          v7 += 64;
          v9 = (v9 + v8);
        }
      }

      else
      {
        v25 = v10 & 0x1FFFFFFF8;
        if (v3 > 7)
        {
          v31 = v10 & 0x1FFFFFFE0;
          if (v10 == (v10 & 0x1FFFFFFE0))
          {
            v32 = 0;
            v33 = &v63[v5 + 16 + v6];
            v34 = (v9 + 2);
            do
            {
              v35 = v34;
              v36 = v33;
              v37 = v10;
              do
              {
                v38 = *v35;
                *(v36 - 1) = *(v35 - 1);
                *v36 = v38;
                v36 += 2;
                v35 += 2;
                v37 -= 32;
              }

              while (v37);
              ++v32;
              v33 += 64;
              v34 = (v34 + v8);
            }

            while (v32 != v2);
          }

          else
          {
            v47 = 0;
            v48 = v3 & 6;
            v49 = &v63[v5 + v6];
            v50 = &v63[v5 + 16 + v6];
            v51 = (v9 + 2);
            v52 = (v9 + v31);
            v53 = &v49[v31];
            do
            {
              v54 = v51;
              v55 = v50;
              v56 = v10 & 0x1FFFFFFE0;
              do
              {
                v57 = *v54;
                *(v55 - 1) = *(v54 - 1);
                *v55 = v57;
                v55 += 2;
                v54 += 2;
                v56 -= 32;
              }

              while (v56);
              v58 = v10 & 0x1FFFFFFE0;
              if (!v48)
              {
                goto LABEL_63;
              }

              v59 = v53;
              v60 = v52;
              v61 = v25 - v31;
              do
              {
                v62 = *v60++;
                *v59++ = v62;
                v61 -= 8;
              }

              while (v61);
              v58 = v10 & 0x1FFFFFFF8;
              if (v10 != v25)
              {
LABEL_63:
                do
                {
                  v7[v58] = *(v9 + v58);
                  ++v58;
                }

                while (v10 > v58);
              }

              ++v47;
              v50 += 64;
              v51 = (v51 + v8);
              v52 = (v52 + v8);
              v53 += 8;
              v7 += 64;
              v9 = (v9 + v8);
            }

            while (v47 != v2);
          }
        }

        else if (v10 == v25)
        {
          for (m = 0; m != v2; ++m)
          {
            v27 = v7;
            v28 = v9;
            v29 = v10;
            do
            {
              v30 = *v28++;
              *v27++ = v30;
              v29 -= 8;
            }

            while (v29);
            v9 = (v9 + v8);
            v7 += 64;
          }
        }

        else
        {
          v39 = 0;
          v40 = v7;
          do
          {
            v41 = &v7[64 * v39 + v25];
            v42 = v40;
            v43 = v9;
            v44 = v10 & 0x1FFFFFFF8;
            do
            {
              v45 = *v43++;
              *v42++ = v45;
              v44 -= 8;
            }

            while (v44);
            v46 = v10 & 0x1FFFFFFF8;
            do
            {
              *v41++ = *(v9 + v46++);
            }

            while (v10 > v46);
            ++v39;
            v9 = (v9 + v8);
            v40 += 8;
          }

          while (v39 != v2);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v63, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

float32x2x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v68[8 * *v4 + *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *v8 = vuzp1q_s32(*v2, v12);
      v8[2] = vuzp2q_s32(v10, v12);
      v8[4] = vuzp1q_s32(v11, v13);
      v8[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[2] = v6;
      v8[4] = v6;
      v8[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 32, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[2].i64[0] = 0;
      v8[2].i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[6].i64[0] = 0;
      v8[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 2 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v68[2 * v16] + v18;
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v68[2 * v14 - 2 + 2 * v16] + 2 * v15 + v18;
      v26 = v19 < v21 + v20 * (v14 - 1) + 2 * v15 && v21 < v23 || v20 < 0;
      if (v15 > 3)
      {
        if (!v22 || (v22 - 1) >> 32)
        {
          for (i = 0; i != v14; ++i)
          {
            v32 = 0;
            do
            {
              v19[v32] = *(v21 + v32);
              ++v32;
            }

            while (v22 > v32);
            v19 += 32;
            v21 += v20;
          }
        }

        else if (v26)
        {
          for (j = 0; j != v14; ++j)
          {
            v30 = 0;
            do
            {
              v19[v30] = *(v21 + v30);
              ++v30;
            }

            while (v22 > v30);
            v19 += 32;
            v21 += v20;
          }
        }

        else
        {
          v34 = v22 & 0x1FFFFFFF8;
          if (v15 > 0xF)
          {
            v37 = v22 & 0x1FFFFFFE0;
            if (v22 == (v22 & 0x1FFFFFFE0))
            {
              v38 = 0;
              v39 = &v68[v17 + 1] + v18;
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
                do
                {
                  v44 = *v41;
                  *(v42 - 1) = *(v41 - 1);
                  *v42 = v44;
                  v42 += 2;
                  v41 += 2;
                  v43 -= 32;
                }

                while (v43);
                ++v38;
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v52 = 0;
              v53 = v15 & 0xC;
              v54 = &v68[v17] + v18;
              v55 = &v68[v17 + 1] + v18;
              v56 = (v21 + 16);
              v57 = (v21 + v37);
              v58 = &v54[v37];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v22 & 0x1FFFFFFE0;
                do
                {
                  v62 = *v59;
                  *(v60 - 1) = *(v59 - 1);
                  *v60 = v62;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v63 = v22 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_73;
                }

                v64 = v58;
                v65 = v57;
                v66 = v34 - v37;
                do
                {
                  v67 = *v65++;
                  *v64 = v67;
                  v64 += 8;
                  v66 -= 8;
                }

                while (v66);
                v63 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_73:
                  do
                  {
                    v19[v63] = *(v21 + v63);
                    ++v63;
                  }

                  while (v22 > v63);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v20);
                v57 = (v57 + v20);
                v58 += 32;
                v19 += 32;
                v21 += v20;
              }

              while (v52 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = (&v68[v17 + 1] + v18);
            do
            {
              v36[-1].val[0] = v35[-2];
              if (v15 != 4)
              {
                v36[-1].val[1] = v35[-1];
                if (v15 != 8)
                {
                  v36->val[0] = *v35;
                }
              }

              v35 = (v35 + v20);
              v36 += 2;
              --v14;
            }

            while (v14);
          }

          else
          {
            for (k = 0; k != v14; ++k)
            {
              v46 = (v21 + v20 * k);
              v47 = &v19[32 * k];
              *v47 = *v46;
              if (v34 != 8)
              {
                *(v47 + 1) = v46[1];
                if (v34 != 16)
                {
                  *(v47 + 2) = v46[2];
                }
              }

              v48 = &v47[v34];
              v49 = v46 + v34;
              v50 = v22 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v22 > v50);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v14; ++m)
        {
          v28 = 0;
          do
          {
            v19[v28] = *(v21 + v28);
            ++v28;
          }

          while (v28 < v22);
          v19 += 32;
          v21 += v20;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v68[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *v8 = vuzp1q_s32(*v2, v12);
      v8[2] = vuzp2q_s32(v10, v12);
      v8[4] = vuzp1q_s32(v11, v13);
      v8[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[2] = v6;
      v8[4] = v6;
      v8[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 32, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[2].i64[0] = 0;
      v8[2].i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[6].i64[0] = 0;
      v8[6].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 32 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v68[32 * v16 + v18];
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v68[32 * v14 - 32 + 32 * v16 + 2 * v15 + v18];
      v26 = v19 < v21 + v20 * (v14 - 1) + 2 * v15 && v21 < v23 || v20 < 0;
      if (v15 > 3)
      {
        if (!v22 || (v22 - 1) >> 32)
        {
          for (i = 0; i != v14; ++i)
          {
            v32 = 0;
            do
            {
              v19[v32] = *(v21 + v32);
              ++v32;
            }

            while (v22 > v32);
            v19 += 32;
            v21 += v20;
          }
        }

        else if (v26)
        {
          for (j = 0; j != v14; ++j)
          {
            v30 = 0;
            do
            {
              v19[v30] = *(v21 + v30);
              ++v30;
            }

            while (v22 > v30);
            v19 += 32;
            v21 += v20;
          }
        }

        else
        {
          v34 = v22 & 0x1FFFFFFF8;
          if (v15 > 0xF)
          {
            v37 = v22 & 0x1FFFFFFE0;
            if (v22 == (v22 & 0x1FFFFFFE0))
            {
              v38 = 0;
              v39 = &v68[v17 + 16 + v18];
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
                do
                {
                  v44 = *v41;
                  *(v42 - 1) = *(v41 - 1);
                  *v42 = v44;
                  v42 += 2;
                  v41 += 2;
                  v43 -= 32;
                }

                while (v43);
                ++v38;
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v52 = 0;
              v53 = v15 & 0xC;
              v54 = &v68[v17 + v18];
              v55 = &v68[v17 + 16 + v18];
              v56 = (v21 + 16);
              v57 = (v21 + v37);
              v58 = &v54[v37];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v22 & 0x1FFFFFFE0;
                do
                {
                  v62 = *v59;
                  *(v60 - 1) = *(v59 - 1);
                  *v60 = v62;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v63 = v22 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_73;
                }

                v64 = v58;
                v65 = v57;
                v66 = v34 - v37;
                do
                {
                  v67 = *v65++;
                  *v64++ = v67;
                  v66 -= 8;
                }

                while (v66);
                v63 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_73:
                  do
                  {
                    v19[v63] = *(v21 + v63);
                    ++v63;
                  }

                  while (v22 > v63);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v20);
                v57 = (v57 + v20);
                v58 += 4;
                v19 += 32;
                v21 += v20;
              }

              while (v52 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = &v68[v17 + 16 + v18];
            do
            {
              *(v36 - 2) = *(v35 - 2);
              if (v15 != 4)
              {
                *(v36 - 1) = *(v35 - 1);
                if (v15 != 8)
                {
                  *v36 = *v35;
                }
              }

              v35 = (v35 + v20);
              v36 += 4;
              --v14;
            }

            while (v14);
          }

          else
          {
            for (k = 0; k != v14; ++k)
            {
              v46 = (v21 + v20 * k);
              v47 = &v19[32 * k];
              *v47 = *v46;
              if (v34 != 8)
              {
                v47[1] = v46[1];
                if (v34 != 16)
                {
                  v47[2] = v46[2];
                }
              }

              v48 = v47 + v34;
              v49 = v46 + v34;
              v50 = v22 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v22 > v50);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v14; ++m)
        {
          v28 = 0;
          do
          {
            v19[v28] = *(v21 + v28);
            ++v28;
          }

          while (v28 < v22);
          v19 += 32;
          v21 += v20;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}